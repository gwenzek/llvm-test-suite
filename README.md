# LLVM "test-suite" Repository for Zig


The goal of this fork is to adapt the ABI-Testsuite from LLVM to Zig.
Can Zig pass the test suite ?
Part of the suite is specifically for the C++ ABI, which we aren't intersted.
I'm focusing on the ABI-Testsuite/test/struct_layout_tests that tests the C ABI.
Each test case defines a C struct,
set some value in a field and look at the bits to check they have been correctly written too.

Strategy:
* rewrite common/testsuite.h, common/testsuite.c to Zig
* translate on the fly all test cases to Zig

`zig translate-c` doesn't quite work because most of the struct in test cases
have bitfields which aren't supported by `zig` in general.
I'll probably have to write a specialized translation.
Since all the test cases seems to have been machine generated,
and follow a pattern,
it shouldn't be too hard to rewrite them.

What the translated could look like:

```zig
const BFu1s_C_Uc = extern struct { v1: c_ushort, v2: u8, v3: u8 };

test "BFu1s_C_Uc" {
    var lv: BFu1s_C_Uc = undefined;
    try utils.expectSizeOf(lv, 4);
    try utils.expectAlignOf(lv, 2);
    try utils.set_bf_and_test(&lv, &lv.v1, 0, 0, 1, 1);
    try utils.expectFieldOffset(&lv, &lv.v2, 1);
    try utils.expectFieldOffset(&lv, &lv.v3, 2);
}
```

To run the manually translated tests:

```bash
cd ABI-Testsuite
zig build test
```

Current output:

```
s/3 test.empty... expected 1, found 0
FAIL (TestExpectedEqual)
~/github/llvm-test-suite/ABI-Testsuite/zig_test/test_BFu1s_C_Uc.zig:8:5: 0x214d39 in test.empty (test)
    try std.testing.expectEqual(1, @alignOf(Empty));
    ^
2/3 test.BFu1s_C_Uc... OK
3/3 test.Sf_BFu16i_BFu15s... expected 4, found 8
FAIL (TestExpectedEqual)
~/github/llvm-test-suite/ABI-Testsuite/zig_test/test_BFu1s_C_Uc.zig:8:5: 0x214d39 in test.empty (test)
    try std.testing.expectEqual(1, @alignOf(Empty));
    ^
~/github/zig-bootstrap/out/zig-x86_64-linux-gnu-native/lib/zig/std/testing.zig:79:17: 0x214f80 in expectEqual__anon_2150 (test)
                return error.TestExpectedEqual;
                ^
~/github/llvm-test-suite/ABI-Testsuite/zig_test/test_BFu1s_C_Uc.zig:26:5: 0x2155f7 in test.Sf_BFu16i_BFu15s (test)
    try utils.expectSizeOf(lv, 4);
    ^
1 passed; 0 skipped; 2 failed.
```

Zig thinks that empty struct have an alignment of 0, while the test suite expects 1.
