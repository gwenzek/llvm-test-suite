import collections
import re
import subprocess
import sys
from enum import Enum
from pathlib import Path
from typing import Dict, Iterable, Iterator, List, NamedTuple, Optional, Tuple


class Struct(NamedTuple):
    name: str
    code: List[str]
    line_start: int
    line_end: int

    def location(self, file: Path) -> str:
        return f"{file.name}:{self.line_start}:{self.line_end}"

    def has_empty_field(self) -> bool:
        return any("struct empty " in line for line in self.code)


def skip_cpp(lines: Iterable[str]) -> Iterator[Tuple[int, str]]:
    if_cpp = 0
    else_cpp = 0

    for line_no, line in enumerate(lines, start=1):
        if line.startswith("#ifdef __cplusplus"):
            if if_cpp:
                raise ValueError(f"Nested '#ifdef __cplusplus' at lines {if_cpp} and {line_no}")
            if_cpp = line_no
            continue

        if line.startswith("#else"):
            if not if_cpp:
                raise ValueError(f"Unexpected '#else' at line {line_no}: {line}")
            if else_cpp:
                raise ValueError(f"Nested '#else' at lines {else_cpp} and {line_no}")
            else_cpp = line_no
            continue

        if line.startswith("#endif"):
            if not else_cpp:
                raise ValueError(f"Unexpected '#endif' at line {line_no}: {line}")
            if_cpp, else_cpp = 0, 0
            continue

        if if_cpp and not else_cpp:
            continue

        yield line_no, line


def parse_structs(lines: Iterable[str]) -> Iterator[Struct]:
    _lines = skip_cpp(lines)
    line_no = 0
    try:
        for line_no, line in _lines:
            if not line.startswith("struct "):
                continue

            assert "{" in line
            struct = Struct(line[7:].strip(" {\n"), [line], line_no, line_no)
            for line_no, line in _lines:
                struct.code.append(line)
                if line.startswith("};"):
                    yield struct._replace(line_end=line_no)
                    break
            else:
                raise ValueError(
                    f"Unexpected end of file, while parsing struct {struct.name}"
                )

    except Exception as e:
        print(f"parsing error at line {line_no}: {e}")
        raise


def parse_tests(lines: Iterable[str]) -> Iterator[Struct]:
    _lines = skip_cpp(lines)
    try:
        for line_no, line in _lines:
            if " init_simple_test(" not in line:
                continue

            assert ");" in line
            struct = Struct(line.strip()[16:].strip('()";'), [line], line_no, line_no)
            for line_no, line in _lines:
                if line.startswith("}"):
                    yield struct._replace(line_end=line_no)
                    break
                struct.code.append(line)
            else:
                raise ValueError(
                    f"Unexpected end of file, while parsing testcase {struct.name}"
                )

    except Exception as e:
        print(f"parsing error at line {line_no}: {e}")
        raise


BITFIELD = re.compile(r"^.*:\d+;\n?$")
CPP_EMPTY_FIELD = re.compile(r"^\s*::empty [a-zA-Z_0-9]+;\n?$")


class Status(Enum):
    STRUCT_OK = 0
    EMPTY_STRUCT = 1
    CPP_STRUCT = 2
    BITFIELD = 3
    EMPTY_FIELD = 4
    TRANSLATION_OK = 5
    TRANSLATION_ERROR = 6


Progress = Dict[Status, int]


def check_struct(struct: Struct) -> Status:
    fields = struct.code[1:-1]
    if not fields:
        return Status.EMPTY_STRUCT

    if any(BITFIELD.match(field) for field in fields):
        return Status.BITFIELD

    # Only removing the C++ test with ::empty struct
    # Normaly I should parse the #ifdef __cplusplus, but this will do for now.
    if any(CPP_EMPTY_FIELD.match(field) for field in fields):
        return Status.CPP_STRUCT

    if struct.has_empty_field():
        return Status.EMPTY_FIELD

    return Status.STRUCT_OK


def extract_file(
    file: Path, outdir: Path, allow_empty: bool = False
) -> Tuple[Optional[Path], Progress]:
    """Reads a .c test file, splits it into a Zig test file and a .h for the struct definitions."""
    stats: Progress = collections.defaultdict(int)
    structs = {}
    with file.open("r") as f:
        for struct in parse_structs(f):
            res = check_struct(struct)
            stats[res] += 1
            if res == Status.STRUCT_OK:
                structs[struct.name] = struct
            if allow_empty and res == Status.EMPTY_FIELD:
                structs[struct.name] = struct

    num_struct = sum(stats.values())
    if num_struct == 0:
        print(f"Found only CPP tests in {file}")
        return None, stats

    if not structs:
        print(f"Found only irrelevant tests in {file}: {list(stats.items())}")
        # file.unlink()
        return None, stats

    print(f"Found {list(stats.items())} struct in {file}")
    if allow_empty:
        stats[Status.STRUCT_OK] += stats[Status.EMPTY_FIELD]

    tests = {}
    with file.open("r") as f:
        for test in parse_tests(f):
            if test.name not in structs:
                continue
            tests[test.name] = test
    missing_tests = structs.keys() - tests.keys()
    assert len(missing_tests) == 0, f"No tests found for {missing_tests}"

    header = outdir / file.with_suffix(".h").name

    with header.open("w") as h:
        print(H_HEADER, file=h)
        for struct in structs.values():
            print(f"// From {struct.location(file)}", file=h)
            print("".join(struct.code), file=h)

    test_file = outdir / file.with_suffix(".zig").name
    with test_file.open("w") as z:
        print(ZIG_HEADER.replace("HEADER_FILE", header.name), file=z)
        for struct in structs.values():
            test = tests[struct.name]
            print(f"// From {file.name}:{struct.line_start}:{test.line_end}", file=z)
            print("// ", end="", file=z)
            print("// ".join(struct.code), file=z)
            try:
                for line in test.code:
                    print(translate_test_line(test.name, line), file=z)
                stats[Status.TRANSLATION_OK] += 1
            except Exception as e:
                print(f"Error while translating testcase: {test.location(file)}")
                print("".join(test.code))
                print("//", line, file=z)
                print("}", file=z)
                stats[Status.TRANSLATION_ERROR] += 1
                continue
    subprocess.check_call(["zig", "fmt", test_file])
    return test_file, stats


H_HEADER = """
#define __tsi64 long long
#define __tsu64 unsigned long long
#define __tsulong unsigned long

#define bool    _Bool
struct empty {};
"""

ZIG_HEADER = """const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("HEADER_FILE");
});
"""


def translate_test_line(struct_name: str, line: str) -> str:
    line_ = line
    line = line.strip()
    if line.startswith("init_simple_test"):
        return f'test "{struct_name}" {{'

    if line.startswith("STRUCT_IF_C"):
        struct_if_c, type_, name = line.strip(";").split()
        return f"var {name}: c.{type_} = undefined;"

    if line.startswith(struct_name + " "):
        type_, name = line.strip(";").split()
        return f"var {name}: c.{type_} = undefined;"

    if line.startswith("check2(sizeof("):
        check, size, debug = line.split(", ")
        return f"try testing.expectSize(c.{struct_name}, {size});"

    if line.startswith("check2(__alignof__("):
        check, size, debug = line.split(", ")
        return f"try testing.expectAlign(c.{struct_name}, {size});"

    if line.startswith("check_field_offset"):
        line = line.replace("check_field_offset", "try testing.expectFieldOffset")
        line = line.replace("(lv, ", "(&lv, &lv.")
        line = rm_debug_string(line)
        return line

    if line == "}":
        return line_

    raise NotImplementedError(line)


debug_string = re.compile(r',\s*"[a-zA-Z0-9()\._]+"\)')


def rm_debug_string(line: str) -> str:
    return debug_string.sub(")", line)


def main(allow_empty: bool) -> None:
    """Parses all test/struct_layout_tests/*.c files for relevant test cases.
    Translate them to zig files in zig_test/*.zig.
    Then run `zig test` on them.

    Use --allow_empty to allow tests with empty field structs.
    """
    struct_layout_tests = Path("test") / "struct_layout_tests"
    zig_tests = Path("zig_test")
    # extract_file(struct_layout_tests / "T_Snnn_xbc.c", zig_tests)

    full_stats: Progress = collections.defaultdict(int)
    test_files = []
    for file in struct_layout_tests.glob("*.c"):
        # if file.name.startswith("PC_"):
        #     # Those are C++ tests only
        #     continue
        test_file, stats = extract_file(file, zig_tests, allow_empty)
        assert (
            stats[Status.TRANSLATION_OK] + stats[Status.TRANSLATION_ERROR]
            == stats[Status.STRUCT_OK]
        )
        for k, v in stats.items():
            full_stats[k] += v
        if test_file is not None:
            test_files.append(test_file)
    print(full_stats)
    failed_tests = []
    returncode = 0
    for test_file in test_files:
        print(test_file)
        test = subprocess.run(
            ["zig", "test", "-I", zig_tests, test_file],
            check=False,
            capture_output=False,
            encoding="ascii",
        )
        if test.returncode != 0:
            failed_tests.append(test_file)
            print(f"{test} failed !")
            print(test.stderr)
            returncode = test.returncode
        # else:
        # # Success
        # # TODO: parse test numbers
        # status_line = test.stderr.splitlines()[-1]
        # match = re.match(r"All (\d+) tests passed\.", status_line)
        # assert match and int(match.group(1)) ==

    success = len(test_files) - len(failed_tests)
    print(f"Test success: {success} / {len(test_files)}")
    sys.exit(returncode)


if __name__ == "__main__":
    import sys

    args = sys.argv[1:]
    if "-h" in args or "--help" in args:
        print(main.__doc__)
    else:
        main(allow_empty="--allow_empty" in args)
