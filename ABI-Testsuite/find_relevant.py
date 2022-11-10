import collections
import functools
import logging
import random
import re
import subprocess
import sys
from enum import Enum
from pathlib import Path
from typing import Dict, Iterable, Iterator, List, NamedTuple, Optional, Tuple

log = logging.getLogger("cabi_tests")

# List of tests expected to fail.
# This will generate an "expectFail" and mark the test as "skipped" instead of "failed".
# This is needed to allow to put failing tests as "TODOs"
_FAILING_TESTS = {
    "x86_64": "C_F_F,D_C,F_L,C_C_D,C_D,C_F_D,C_I_D,C_I_F,C_S_D,C_Uc_D,C_Ui_D,C_Ui_F,C_Us_D,D_C_C,D_C_F,D_C_I,D_C_S,D_C_Uc,D_C_Ui,D_C_Us,D_F_C,D_F_I,D_F_S,D_F_Uc,D_F_Ui,D_F_Us,D_I,D_I_C,D_I_F,D_I_I,D_I_S,D_I_Uc,D_I_Ui,D_I_Us,D_Ip,D_L,D_S,D_S_C,D_S_F,D_S_I,D_S_S,D_S_Uc,D_S_Ui,D_S_Us,D_Uc,D_Uc_C,D_Uc_F,D_Uc_I,D_Uc_S,D_Uc_Uc,D_Uc_Ui,D_Uc_Us,D_Ui,D_Ui_C,D_Ui_F,D_Ui_I,D_Ui_S,D_Ui_Uc,D_Ui_Ui,D_Ui_Us,D_Ul,D_Us,D_Us_C,D_Us_F,D_Us_I,D_Us_S,D_Us_Uc,D_Us_Ui,D_Us_Us,D_Vp,F_C_D,F_C_F,F_F_C,F_F_I,F_F_Ip,F_F_L,F_F_S,F_F_Uc,F_F_Ui,F_F_Ul,F_F_Us,F_F_Vp,F_I_D,F_I_F,F_Ip,F_S_D,F_S_F,F_Uc_D,F_Uc_F,F_Ui_D,F_Ui_F,F_Ul,F_Us_D,F_Us_F,F_Vp,I_C_D,I_C_F,I_D,I_F_D,I_F_F,I_I_D,I_I_F,I_S_D,I_S_F,I_Uc_D,I_Uc_F,I_Ui_D,I_Ui_F,I_Us_D,I_Us_F,Ip_D,Ip_F,Ip_F_F,L_D,L_F,L_F_F,S_C_D,S_D,S_F_D,S_F_F,S_I_D,S_I_F,S_S_D,S_Uc_D,S_Ui_D,S_Ui_F,S_Us_D,Uc_C_D,Uc_D,Uc_F_D,Uc_F_F,Uc_I_D,Uc_I_F,Uc_S_D,Uc_Uc_D,Uc_Ui_D,Uc_Ui_F,Uc_Us_D,Ui_C_D,Ui_C_F,Ui_D,Ui_F_D,Ui_F_F,Ui_I_D,Ui_I_F,Ui_S_D,Ui_S_F,Ui_Uc_D,Ui_Uc_F,Ui_Ui_D,Ui_Ui_F,Ui_Us_D,Ui_Us_F,Ul_D,Ul_F,Ul_F_F,Us_C_D,Us_D,Us_F_D,Us_F_F,Us_I_D,Us_I_F,Us_S_D,Us_Uc_D,Us_Ui_D,Us_Ui_F,Us_Us_D,Vp_D,Vp_F,Vp_F_F"
}
FAILING_ARCHS: Dict[str, List[str]] = collections.defaultdict(list)
for arch, _failing in _FAILING_TESTS.items():
    for failing in _failing.strip().split(","):
        FAILING_ARCHS[failing].append(arch)

AARCH64_SEGFAULT = "F_C,F_F,F_I,F_S,F_Uc,F_Ui,F_Us,C_F,I_F,I_C,I_I,I_S,I_Uc".split(",")

class Struct(NamedTuple):
    name: str
    code: List[str]
    line_start: int
    line_end: int

    def location(self, file: Path) -> str:
        return f"{file.name}:{self.line_start}:{self.line_end}"

    def has_empty_field(self) -> bool:
        return any("struct empty " in line for line in self.code)

    def fields(self) -> List[Tuple[str, str]]:
        res = []
        for line in self.code:
            if "{" in line or "}" in line:
                continue
            line = line.strip("\n ;")
            type, name = line.rsplit(" ", 1)
            if name.startswith("*"):
                res.append((name[1:], type + "*"))
                continue
            res.append((name, type))
        return res


def skip_cpp(lines: Iterable[str]) -> Iterator[Tuple[int, str]]:
    if_cpp = 0
    else_cpp = 0

    for line_no, line in enumerate(lines, start=1):
        if line.startswith("#ifdef __cplusplus"):
            if if_cpp:
                raise ValueError(
                    f"Nested '#ifdef __cplusplus' at lines {if_cpp} and {line_no}"
                )
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

    zig_test = outdir / file.with_suffix(".zig").name
    header = zig_test.with_suffix(".h")
    c_test = zig_test.with_suffix(".aux.c")

    with header.open("w") as h, c_test.open("w") as c, zig_test.open("w") as z:
        print(ZIG_HEADER.replace("HEADER_FILE", header.name), file=z)
        print(H_HEADER, file=h)
        print(f'#include "{header.name}"\n', file=c)

        for struct in structs.values():
            print(f"// From {struct.location(file)}", file=h)
            print("".join(struct.code), file=h)

            test = tests[struct.name]
            print(f"// From {file.name}:{struct.line_start}:{test.line_end}", file=z)
            print("// ", end="", file=z)
            print("// ".join(struct.code), file=z)
            try:
                for line in test.code[:-1]:
                    print(translate_test_line(test.name, line), file=z)
                stats[Status.TRANSLATION_OK] += 1
            except Exception as e:
                breakpoint()
                print(f"Error while translating testcase: {test.location(file)}")
                print("".join(test.code))
                print("//", line, file=z)
                stats[Status.TRANSLATION_ERROR] += 1
            finally:
                print("}", file=z)

            field_values = generate_struct_vals(struct)
            print(generate_c_calls_test(struct, field_values), file=z)
            print(f"int assert_{struct.name}(struct {struct.name} lv);", file=h)
            print(generate_c_recv(struct, field_values), file=c)
            print(f"struct {struct.name} ret_{struct.name}();", file=h)
            print(generate_c_ret(struct, field_values), file=c)
            print(f"int send_{struct.name}();", file=h)
            print(generate_c_send(struct, field_values), file=c)
            print(generate_zig_recv(struct, field_values), file=z)
            print(f"int assert_ret_{struct.name}();", file=h)
            print(generate_c_assert_ret(struct, field_values), file=c)
            print(generate_zig_ret(struct, field_values), file=z)

            print("", file=h)
            print("", file=c)
            print("", file=z)

    if c_test.with_suffix(".o").exists():
        c_test.with_suffix(".o").unlink()
    subprocess.check_call(["zig", "build-obj", c_test.name], cwd=c_test.parent),
    assert c_test.with_suffix(".o").exists()
    subprocess.check_call(["zig", "fmt", zig_test]),
    return zig_test, stats


H_HEADER = """
#define __tsi64 long long
#define __tsu64 unsigned long long
#define __tsulong unsigned long

#define bool    _Bool
struct empty {};
struct empty EMPTY = {};
"""

ZIG_HEADER = """const std = @import("std");
const testing = @import("testing.zig");
const builtin = @import("builtin");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("HEADER_FILE");
});
"""


def translate_test_line(struct_name: str, line: str) -> str:
    line_ = line
    line = line.strip()
    if line.startswith("init_simple_test"):
        return f'test "{struct_name}: layout" {{'

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
        # C tests are passing the struct name everywhere to get nice test errors,
        # but this is built-in Zig test runner.
        line = _debug_string.sub(")", line)
        return line

    if line == "}":
        return line_

    raise NotImplementedError(line)


# Matches a struct name passed as a string argument.
_debug_string = re.compile(r',\s*"[a-zA-Z0-9()\._]+"\)')


def generate_c_calls_test(struct: Struct, field_values: dict) -> str:
    guard, guards = "", []
    for arch in FAILING_ARCHS[struct.name]:
        guards.append(f"if (builtin.cpu.arch == .{arch}) outcome = false;")

    if guards:
        guard = "\n    ".join(guards)

    ret_guards = ""
    struct_suffix = struct.name.split("_", 1)[-1]

    # TODO, find a better way to differentiate between failure and segfault
    # can we catch segfault in the test runner ?
    ret_guards = "if (builtin.cpu.arch == .i386) return error.SkipZigTest;"
    if struct_suffix in AARCH64_SEGFAULT:
        ret_guards += "if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;"

    # TODO: handle pointers, Zig doesn't allow implicit int to ptr casting.
    struct_lit = ", ".join(f".{field}={val}" for field, val in field_values.items())

    return f"""
test "{struct.name}: Zig passes to C" {{
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;{guard}
    try testing.expectOutcome(c.assert_{struct.name}(.{{{struct_lit}}}), outcome);
}}
test "{struct.name}: Zig returns to C" {{{ret_guards}
    try testing.expectOk(c.assert_ret_{struct.name}());
}}
test "{struct.name}: C passes to Zig" {{
    var outcome = true;
    {guard}
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_{struct.name}(), outcome);
}}
test "{struct.name}: C returns to Zig" {{
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    {ret_guards}
    try testing.expectEqual(c.ret_{struct.name}(), .{{{struct_lit}}});
}}
""".strip()


def generate_c_recv(struct: Struct, fields: dict) -> str:
    """C function that receives a struct from Zig, and match it against comptime values."""
    lines = [f"int assert_{struct.name}(struct {struct.name} lv){{"]

    for i, (field, val) in enumerate(fields.items(), start=1):
        if val == "null":
            val = 0
        if val == ".{}":
            continue
        asser = f"  if (lv.{field} != {val}) return {i};"
        lines.append(asser)
    lines.extend(["  return 0;", "}"])
    return "\n".join(lines)


def _to_c(val: str) -> str:
    if val == "null":
        return "0"
    if val == ".{}":
        return "EMPTY"
    return val


def generate_c_ret(struct: Struct, fields: dict) -> str:
    struct_lit = ", ".join(f".{field} = {_to_c(val)}" for field, val in fields.items())
    return f"""
struct {struct.name} ret_{struct.name}(){{
    struct {struct.name} lv = {{ {struct_lit} }};
    return lv;
}}""".strip()


def generate_c_send(struct: Struct, fields: dict) -> str:
    """C function that sends a struct to Zig. Returns the errcode."""
    return f"""
int zig_assert_{struct.name}(struct {struct.name});
int send_{struct.name}(){{
    return zig_assert_{struct.name}(ret_{struct.name}());
}}
""".strip()


def generate_c_assert_ret(struct: Struct, fields: dict) -> str:
    """C code that calls Zig to get a struct, then assert it."""
    return f"""
struct {struct.name} zig_ret_{struct.name}();
int assert_ret_{struct.name}(){{
    return assert_{struct.name}(zig_ret_{struct.name}());
}}
""".strip()


def generate_zig_ret(struct: Struct, fields: dict) -> str:
    """Zig function that returns a comptime struct."""
    struct_lit = ", ".join(f".{field}={val}" for field, val in fields.items())
    return f"""
    pub export fn zig_ret_{struct.name}() c.{struct.name} {{
        return .{{{struct_lit}}};
    }}
""".strip()


def generate_zig_recv(struct: Struct, fields: dict) -> str:
    lines = [
        f"pub export fn zig_assert_{struct.name}(lv: c.{struct.name}) c_int {{",
        "var err: c_int = 0;",
    ]
    for i, (field, val) in enumerate(fields.items(), start=1):
        if val == ".{}":
            continue
        asser = f"  if (lv.{field} != {val}) err = {i};"
        lines.append(asser)
    lines.extend(
        ['if (err != 0) std.debug.print("Received {}", .{lv});', "return err;", "}"]
    )
    return "\n".join(lines)


def generate_struct_vals(struct: Struct) -> dict:
    random.seed(struct.name)
    return {name: generate_field_val(ctype) for name, ctype in struct.fields()}


def generate_field_val(ctype: str) -> str:
    if "char" in ctype:
        return str(random.randint(0, 127))
    if "float" in ctype or "double" in ctype:
        # TODO: generate more floats that can be exactly represented.
        # https://float.exposed/0x40e00000
        return str(random.choice([0.875, -0.25, 0.5, 1.0, -2.125, 4.5, 7.0]))
    if "empty" in ctype:
        return ".{}"
    if "*" in ctype:
        return "null"
    # TODO: generate ints that use more bits
    return str(random.randint(0, 2**15 - 1))


def gen_tests(allow_empty: bool) -> List[Path]:
    struct_layout_tests = Path("test") / "struct_layout_tests"
    zig_tests = Path("zig_test")

    full_stats: Progress = collections.defaultdict(int)
    test_files = []
    for file in struct_layout_tests.glob("*.c"):
        if file.name.startswith("PC_"):
            # Those are C++ tests only
            continue

        test_file, stats = extract_file(file, zig_tests, allow_empty)
        assert (
            stats[Status.TRANSLATION_OK] + stats[Status.TRANSLATION_ERROR]
            == stats[Status.STRUCT_OK]
        )
        for k, v in stats.items():
            full_stats[k] += v
        if test_file is not None:
            test_files.append(test_file)
            # break
    log.info(full_stats)
    return test_files


QEMU_ARCH = {"x86": "i386", "powerpc": "ppc"}


def run_test(test_file: Path, target: str) -> subprocess.CompletedProcess[str]:
    cmd = [
        "zig",
        "test",
        "-fno-stage1",
        "-cflags",
        "-std=c99",
        "--",
        "-I",
        test_file.parent,
        test_file,
        test_file.with_suffix(".aux.c"),
    ]

    if target:
        arch, os_variant = target.split("-", 1)
        qemu_arch = QEMU_ARCH.get(arch, arch)
        cmd.extend(
            [
                "-target",
                target,
                "--test-cmd",
                f"qemu-{qemu_arch}",
                "--test-cmd-bin",
            ]
        )

    return subprocess.run(cmd, check=False, capture_output=True, encoding="ascii")  # type: ignore


def test_and_parse_results(
    test_files: List[Path], target: str, verbose: bool = False
) -> int:
    failed_tests, crashed_tests = [], []
    returncode = 0
    t_passed, t_skipped, t_failed = 0, 0, 0
    for test_file in test_files:
        test = run_test(test_file, target)
        if test.returncode != 0:
            failed_tests.append(test_file)
            returncode = max(returncode, test.returncode)

        stderr = test.stderr.splitlines()
        if returncode == 0:
            status_line = stderr[-1]
        else:
            status_line = stderr[-3] if len(stderr) > 3 else ""
        match = re.match(r"All (\d+) tests passed\.", status_line)
        if match:
            passed, skipped, failed = int(match.group(1)), 0, 0
        else:
            match = re.match(r"(\d+) passed; (\d+) skipped; (\d+) failed.", status_line)
            if match:
                passed, skipped, failed = [int(match.group(i)) for i in range(1, 4)]
            else:
                # The test runner didn't exited correctly, probably a segfault
                log.error(
                    "Test runner crashed: %s", " ".join(str(x) for x in test.args)
                )
                if verbose:
                    log.error("\n".join(test.stderr.splitlines()[-10:]))
                crashed_tests.append(test_file)
                # TODO: we should be able to estimate the number of tests skipped by this crash
                continue
        t_passed += passed
        t_skipped += skipped
        t_failed += failed
        print(f"{test_file}: {passed} passed; {skipped} skipped; {failed} failed.")

    target = target or "native"
    success = len(test_files) - len(failed_tests)
    print(
        f"Test success ({target}): {success} / {len(test_files)} ({len(crashed_tests)} crashes)"
    )
    if len(crashed_tests) < len(test_files):
        print(
            f"Test results ({target}): {t_passed} passed; {t_skipped} skipped; {t_failed} failed."
        )
    return returncode


def main(allow_empty: bool, target: str = "", verbose: bool = False) -> None:
    """Parses all test/struct_layout_tests/*.c files for relevant test cases.
    Translate them to zig files in zig_test/*.zig.
    Then run `zig test` on them.

    Use --allow_empty to allow tests with empty field structs.
    """
    test_files = gen_tests(allow_empty)
    if target == "all":
        targets = [
            "i386-linux",
            "x86_64-linux",
            "aarch64-linux",
            "ppc-linux",
            "riscv64-linux",
            "mips-linux",
        ]
    else:
        targets = [target]

    returncode = 0
    for target in targets:
        print(f"--- C ABI testsuite for target {target or 'native'} ---")
        returncode = max(
            returncode, test_and_parse_results(test_files, target, verbose)
        )
    sys.exit(returncode)


if __name__ == "__main__":
    import func_argparse

    func_argparse.single_main(main)
