import re
import collections
import subprocess
from enum import Enum
from pathlib import Path
from typing import Dict
from typing import List
from typing import NamedTuple
from typing import Iterator
from typing import Iterable


class Struct(NamedTuple):
    name: str
    code: List[str]
    line_start: int
    line_end: int


def parse_structs(lines: Iterable[str]) -> Iterator[Struct]:
    _lines = enumerate(lines)
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
    _lines = enumerate(lines)
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
EMPTY_FIELD = re.compile(r"^\s*(struct |::)empty [a-zA-Z_0-9]+;\n?$")

STATS: Dict[str, int] = collections.defaultdict(int)


class StructSuccess(Enum):
    OK = 0
    EMPTY_STRUCT = 1
    EMPTY_FIELD = 2
    BITFIELD = 3


def check_struct(struct: Struct) -> StructSuccess:
    fields = struct.code[1:-1]
    if not fields:
        return StructSuccess.EMPTY_STRUCT

    if any(BITFIELD.match(field) for field in fields):
        return StructSuccess.BITFIELD

    if any(EMPTY_FIELD.match(field) for field in fields):
        STATS["empty field"] += 1
        return StructSuccess.EMPTY_FIELD

    return StructSuccess.OK


def extract_file(file: Path, outdir: Path) -> None:
    stats: Dict[StructSuccess, int] = collections.defaultdict(int)
    structs = {}
    with file.open("r") as f:
        for struct in parse_structs(f):
            res = check_struct(struct)
            stats[res] += 1
            if res == StructSuccess.OK:
                structs[struct.name] = struct

    num_struct = sum(stats.values())
    assert num_struct > 0
    if not stats[StructSuccess.OK]:
        print(f"File {file} is trash")
        file.unlink()
    else:
        print(f"Found {list(stats.items())} struct in {file}")

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
            print(f"// From {file.name}:{struct.line_start}:{struct.line_end}", file=h)
            print("".join(struct.code), file=h)

    test_file = outdir / file.with_suffix(".zig").name
    with test_file.open("w") as z:
        print(ZIG_HEADER.replace("HEADER_FILE", header.name), file=z)
        for test in tests.values():
            print(f"// From {file.name}:{test.line_start}:{test.line_end}", file=z)
            for line in test.code:
                print(translate_test_line(test.name, line), file=z)
    subprocess.check_call(["zig", "fmt", test_file])
    subprocess.check_call(["zig", "test", test_file])

H_HEADER = """
#define __tsi64 long long
#define __tsu64 unsigned long long
#define __tsulong unsigned long
"""

ZIG_HEADER = """const std = @import("std");
const utils = @import("testsuite.zig");
const zeroes = std.mem.zeroes;
const ABISELECT = utils.ABISELECT;

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

    if line.startswith("check2(sizeof("):
        check, size, debug = line.split(", ")
        return f"try utils.expectSize(c.{struct_name}, {size});"

    if line.startswith("check2(__alignof__("):
        check, size, debug = line.split(", ")
        return f"try utils.expectAlign(c.{struct_name}, {size});"

    if line.startswith("check_field_offset"):
        line = line.replace("check_field_offset", "try utils.expectFieldOffset")
        line = line.replace("(lv, ", "(&lv, &lv.")
        line = rm_debug_string(line)
        return line

    if line == "}":
        return line_

    raise NotImplementedError(line)


debug_string = re.compile(r',\s*"[a-zA-Z0-9()\._]+"\)')


def rm_debug_string(line: str) -> str:
    return debug_string.sub(")", line)


def main() -> None:
    struct_layout_tests = Path("test") / "struct_layout_tests"
    zig_tests = Path("zig_test")
    extract_file(struct_layout_tests / "T_Snnn_xbc.c", zig_tests)

    # for file in struct_layout_tests.glob("*.c"):
    #     extract_file(file)


if __name__ == "__main__":
    main()
