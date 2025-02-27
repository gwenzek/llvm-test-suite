import collections
import functools
import logging
import random
import re
import subprocess
import sys
import platform
from enum import Enum
from pathlib import Path
from typing import Any, Dict, Iterable, Iterator, List, NamedTuple, Optional, Tuple

log = logging.getLogger("cabi_tests")

ROOT = Path(__file__).parent
STRUCT_LAYOUT_TESTS = ROOT / "test" / "struct_layout_tests"
ZIG_TESTS = ROOT / "zig_test"

# Relevant test files. Remove this if you want to change the translation algorithm
KNOWN_TESTS = [
    "CT_Snen_xaa.c",
    "CT_Snen_xab.c",
    "T_Snnn_xav.c",
    "T_Snnn_xaw.c",
    "T_Snnn_xax.c",
    "T_Snnn_xay.c",
    "T_Snnn_xaz.c",
    "T_Snnn_xba.c",
    "T_Snnn_xbb.c",
    "T_Snnn_xbc.c",
]

# List of tests expected to fail.
_FAILING_TESTS = {"x86_64-linux": "", "aarch64-linux": ""}
FAILING_TARGET: Dict[str, List[str]] = collections.defaultdict(list)
for target, _failing in _FAILING_TESTS.items():
    for failing in _failing.strip().split(","):
        FAILING_TARGET[failing].append(target)


StructFields = Dict[str, Any]


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


def gen_test_file(
    file: Path, outdir: Path, allow_empty: bool = False, struct_filter: str = ""
) -> Tuple[Optional[Path], Progress]:
    """Reads a .c test file, splits it into a Zig test file and a .h for the struct definitions."""
    stats: Progress = collections.defaultdict(int)
    structs = {}
    with file.open("r") as f:
        for struct in parse_structs(f):
            if struct_filter and not re.match(struct_filter, struct.name):
                continue
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
    # Note: we are using default zig. Those cmd just validates the generated code,
    # they should succeed with any zig version.
    # If that fails we could also pass zig here.
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


def generate_c_calls_test(struct: Struct, field_values: StructFields) -> str:

    ret_guards = ""
    struct_suffix = struct.name.split("_", 1)[-1]

    # TODO: handle pointers, Zig doesn't allow implicit int to ptr casting.
    struct_lit = gen_zig_struct_lit(field_values)

    int_field = False
    for v in range(len(field_values), 0, -1):
        try:
            v = len(field_values)
            val = int(field_values[f"v{v}"])
            int_field = True and val != 0
            break
        except Exception:
            continue

    check_corrupted, check_corrupted2 = "", ""
    if int_field and False:
        corrupted_val = dict(field_values)
        corrupted_val[f"v{v}"] = "0"
        corrupted = gen_zig_struct_lit(corrupted_val)
        check_corrupted = (
            f"\ntry testing.expectEqual(c.assert_{struct.name}({corrupted}), {v});"
        )
        check_corrupted2 = (
            f"\ntry testing.expectEqual(zig_assert_{struct.name}({corrupted}), {v});"
        )

    return f"""
test "{struct.name}: Zig passes to C" {{
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;{check_corrupted}
    try testing.expectOk(c.assert_{struct.name}({struct_lit}));
}}
test "{struct.name}: Zig returns to C" {{
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_{struct.name}());
}}
test "{struct.name}: C passes to Zig" {{
    try testing.expectOk(c.send_{struct.name}());
}}
test "{struct.name}: C returns to Zig" {{
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;{ret_guards}{check_corrupted2}
    try testing.expectOk(zig_assert_{struct.name}(c.ret_{struct.name}()));
}}
""".strip()


def generate_c_recv(struct: Struct, fields: StructFields) -> str:
    """C function that receives a struct from Zig, and match it against comptime values."""
    lines = [f"int assert_{struct.name}(struct {struct.name} lv){{", "    int err = 0;"]

    for i, (field, val) in enumerate(fields.items(), start=1):
        if val == "null":
            val = 0
        if val == ".{}":
            continue
        asser = f"  if (lv.{field} != {val}) err = {i};"
        lines.append(asser)
    lines.extend(["  return err;", "}"])
    return "\n".join(lines)


def _to_c(val: str) -> str:
    if val == "null":
        return "0"
    if val == ".{}":
        return "EMPTY"
    return val


def generate_c_ret(struct: Struct, fields: StructFields) -> str:
    struct_lit = ", ".join(f".{field} = {_to_c(val)}" for field, val in fields.items())
    return f"""
struct {struct.name} ret_{struct.name}(){{
    struct {struct.name} lv = {{ {struct_lit} }};
    return lv;
}}""".strip()


def generate_c_send(struct: Struct, fields: StructFields) -> str:
    """C function that sends a struct to Zig. Returns the errcode."""
    return f"""
int zig_assert_{struct.name}(struct {struct.name});
int send_{struct.name}(){{
    return zig_assert_{struct.name}(ret_{struct.name}());
}}
""".strip()


def generate_c_assert_ret(struct: Struct, fields: StructFields) -> str:
    """C code that calls Zig to get a struct, then assert it."""
    return f"""
struct {struct.name} zig_ret_{struct.name}();
int assert_ret_{struct.name}(){{
    return assert_{struct.name}(zig_ret_{struct.name}());
}}
""".strip()


def generate_zig_ret(struct: Struct, fields: StructFields) -> str:
    """Zig function that returns a comptime struct."""
    struct_lit = ", ".join(f".{field}={val}" for field, val in fields.items())
    return f"""
    pub export fn zig_ret_{struct.name}() c.{struct.name} {{
        return .{{{struct_lit}}};
    }}
""".strip()


def generate_zig_recv(struct: Struct, fields: StructFields) -> str:
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
        [
            # 'if (err != 0) std.debug.print("Received {}", .{lv});',
            "return err;",
            "}",
        ]
    )
    return "\n".join(lines)


def generate_struct_vals(struct: Struct) -> StructFields:
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


def gen_zig_struct_lit(struct_fields: StructFields) -> str:
    struct_lit = ", ".join(f".{field}={val}" for field, val in struct_fields.items())
    return f".{{{struct_lit}}}"


def gen_tests(
    allow_empty: bool, lazy: bool = False, curious: bool = False
) -> List[Path]:
    last_change = Path(__file__).stat().st_mtime

    full_stats: Progress = collections.defaultdict(int)
    test_files = []
    if curious:
        test_candidates = list(STRUCT_LAYOUT_TESTS.glob("*.c"))
    else:
        test_candidates = [STRUCT_LAYOUT_TESTS / t for t in KNOWN_TESTS]

    for file in test_candidates:
        target_file = ZIG_TESTS / file.with_suffix(".zig").name
        if lazy and target_file.exists() and target_file.stat().st_mtime > last_change:
            test_files.append(target_file)
            continue

        test_file, stats = gen_test_file(file, ZIG_TESTS, allow_empty)
        assert (
            stats[Status.TRANSLATION_OK] + stats[Status.TRANSLATION_ERROR]
            == stats[Status.STRUCT_OK]
        )
        for k, v in stats.items():
            full_stats[k] += v
        if test_file is not None:
            test_files.append(test_file)
        # else:
        #     file.unlink()
    log.info(full_stats)
    return test_files


QEMU_ARCH = {"x86": "i386"}


def run_test(
    test_file: Path, target: str, zig: str, optimization: str
) -> subprocess.CompletedProcess[str]:
    cmd = [
        zig,
        "test",
        f"-O{optimization}",
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
        qemu_arch = qemu_arch.replace("powerpc", "ppc")
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
    test_files: List[Path],
    target: str,
    zig: str,
    optimization: str,
    verbose: bool = False,
) -> int:
    failed_tests, crashed_tests = [], []
    t_returncode = 0
    t_passed, t_skipped, t_failed = 0, 0, 0
    failing_structs = set()

    for test_file in test_files:
        test = run_test(test_file, target, zig, optimization)
        if test.returncode != 0:
            failed_tests.append(test_file)
            t_returncode = max(t_returncode, test.returncode)

        stderr = test.stderr.splitlines()
        if test.returncode == 0:
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
                error_lines = [
                    l for l in test.stderr.splitlines() if not l.endswith("... OK")
                ]
                for line in error_lines:
                    m = re.match(r"\d+/\d+ test\.([a-zA-Z_]+): .*", line)
                    if m:
                        failing_structs.add(m.group(1))
                if verbose:
                    log.error("\n".join(error_lines))
                # print(f"{target}: failed with the following structs {','.join(failing_structs)}")
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
        f"{target}: Test suite success: {success} / {len(test_files)} ({len(crashed_tests)} crashes)"
    )
    if len(crashed_tests) < len(test_files):
        print(
            f"{target}: Test results: {t_passed} passed; {t_skipped} skipped; {t_failed} failed."
        )
    print(
        f"{target}: failed with the following structs {','.join(sorted(failing_structs))}"
    )
    return t_returncode


def diff(
    file_name: str, struct_filter: str = "", zig: str = "zig", target: str = ""
) -> None:
    target = target or native_target()
    original_test_file = STRUCT_LAYOUT_TESTS / (file_name + ".c")
    assert original_test_file.exists(), f"File not found {original_test_file}"
    test_file, _ = gen_test_file(
        original_test_file, ZIG_TESTS, allow_empty=False, struct_filter=struct_filter
    )
    assert test_file, f"Structs '{struct_filter}' not found in {original_test_file}"
    structs = extract_structs(test_file)
    print(
        f"Found {len(structs)} structs in {test_file} matching filter '{struct_filter}'"
    )
    ll_diff = ZIG_TESTS / "ll_diff"
    raw_dir = ll_diff / "raw"
    raw_dir.mkdir(exist_ok=True, parents=True)

    out = file_name + "." + struct_filter if struct_filter else file_name
    zig_ll = raw_dir / (out + f".{target}.ll")
    subprocess.check_call(
        [
            zig,
            "build-lib",
            "-I",
            ZIG_TESTS,
            test_file,
            "-fstrip",
            "-target",
            target,
            f"-femit-llvm-ir={zig_ll}",
        ]
    )

    zig_ll_ = [cleanup_llvm_ir(l) for l in zig_ll.read_text().splitlines()]
    zig_ll.write_text("\n".join(zig_ll_))

    c_file = test_file.with_suffix(".aux.c")
    c_ll = raw_dir / f"{out}.c.{target}.ll"
    subprocess.check_call(
        # TODO: use clang 15
        [
            "clang",
            "-S",
            "-I",
            ".",
            "-emit-llvm",
            "-target",
            target,
            "-o",
            c_ll,
            "-c",
            c_file,
        ]
    )
    c_ll_ = c_ll.read_text().splitlines()

    # O(n2) perf ... TODO: make {zig,c}_ll_ iterators
    # Print all the .ll function decl in
    with (ll_diff / f"{out}.zig.ll").open("wt") as zig_ll_o, (
        ll_diff / f"{out}.clang.ll"
    ).open("wt") as c_ll_o:
        print(";Generated by Zig", file=zig_ll_o)
        print(";Generated by Clang", file=c_ll_o)
        for struct in structs:
            if struct in FAILING_TARGET and target in FAILING_TARGET[struct]:
                print(";Failing test", file=zig_ll_o)
                print(";Failing test", file=c_ll_o)

            print(extract_struct_decl(zig_ll_, struct), file=zig_ll_o)
            zig_ret = extract_fn(zig_ll_, f"ret_{struct}")
            print(zig_ret, file=zig_ll_o)
            (raw_dir / f"ret_{struct}.zig.ll").write_text(zig_ret)
            zig_assert = extract_fn(zig_ll_, f"assert_{struct}")
            print(zig_assert, file=zig_ll_o)
            (raw_dir / f"assert_{struct}.zig.ll").write_text(zig_assert)

            print(extract_struct_decl(c_ll_, struct), file=c_ll_o)
            c_ret = extract_fn(c_ll_, f"ret_{struct}")
            print(c_ret, file=c_ll_o)
            (raw_dir / f"ret_{struct}.c.ll").write_text(c_ret)
            c_assert = extract_fn(c_ll_, f"assert_{struct}")
            print(c_assert, file=c_ll_o)
            (raw_dir / f"assert_{struct}.c.ll").write_text(c_assert)


def extract_structs(test_file: Path) -> List[str]:
    structs = []

    for line in test_file.read_text().splitlines():
        if not line.startswith('test "'):
            continue
        line = line.split('"', 1)[-1]
        if not line.endswith(': layout" {'):
            continue
        line = line.split(":", 1)[0]
        structs.append(line)
    return structs


def extract_struct_decl(ll: List[str], struct: str) -> str:
    c_decl = f"%struct.{struct} = type "
    zig_decl = f".cimport.struct_{struct} = type "
    for line in ll:
        if line.startswith(c_decl):
            return line

        if zig_decl in line:
            return cleanup_llvm_ir(line)
    raise Exception(f"Struct {struct} not found in LLVM IR")


def extract_fn(ll: List[str], fn: str) -> str:
    fn_decl = f" @{fn}("
    for i, line in enumerate(ll):
        if not line.startswith("define dso_local "):
            continue
        if not fn_decl in line:
            continue

        fn_lines = [ll[i - 1], line]
        for line in ll[i + 1 :]:
            fn_lines.append(line)
            if line == "}":
                break
        assert fn_lines[-1] == "}"
        return cleanup_llvm_ir("\n".join(fn_lines))
    raise Exception(f"Fn {fn} not found in LLVM IR")


_VERBOSE_STRUCT_NAME = re.compile(r"%[^ ]*\.o\.[0-9a-f]+\.cimport\.struct_")


def cleanup_llvm_ir(ll: str) -> str:
    ll = _VERBOSE_STRUCT_NAME.sub("%struct.", ll)
    # strip all register ids
    # ll = re.sub(r"%\d+", "%x", ll)
    # replace zig function names by their c equivalent
    ll = re.sub(r"@zig_", "@", ll)
    return ll


def native_target() -> str:
    target = "-".join((platform.machine(), platform.system().lower()))
    target.replace("i386", "x86")
    return target


def run(
    allow_empty: bool,
    target: str = "",
    zig: str = "zig",
    Optimization: str = "Debug",
    verbose: bool = False,
    curious: bool = False,
    file_name: str = "",
) -> None:
    """Parses all test/struct_layout_tests/*.c files for relevant test cases.
    Translate them to zig files in zig_test/*.zig.
    Then run `zig test` on them.

    allow_empty: allow tests with empty field structs.
    target: target to run the test on (using Qemu). Default is "native".
    curious: if you modified the test generation algorithm
    """
    target = target or native_target()
    if target == "all":
        targets = [
            "x86-linux",
            "x86_64-linux",
            "aarch64-linux",
            "ppc-linux",
            "riscv64-linux",
            "mips-linux",
        ]
    else:
        targets = [target]
    if not file_name:
        test_files = gen_tests(allow_empty, lazy=True, curious=curious)
    elif Path(file_name).exists():
        test_files = [Path(file_name)]
    else:
        test_files = [ZIG_TESTS / (file_name + ".zig")]
        assert test_files[0].exists()

    returncode = 0
    for target in targets:
        print(f"--- C ABI testsuite for target {target or 'native'} ---")
        returncode = max(
            returncode,
            test_and_parse_results(test_files, target, zig, Optimization, verbose),
        )
    sys.exit(returncode)


if __name__ == "__main__":
    import func_argparse

    func_argparse.main(run, gen_tests, diff)
