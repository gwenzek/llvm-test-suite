# LLVM "test-suite" Repository for Zig


The idea of this fork was to adapt the ABI-Testsuite from LLVM to Zig.
Can Zig pass the test suite ?
Part of the suite is specifically for the C++ ABI, which I wasn't interested in.
I focused on the ABI-Testsuite/test/struct_layout_tests that tests the C ABI.
Each test case defines a C struct,
set some value in a field and look at the bits to check they have been correctly written too.

Strategy:
* rewrite common/testsuite.{h,c} to Zig (zig_test/testing.zig)
* translate on the fly all test cases to Zig

`zig translate-c` doesn't quite work because the testing code uses a lot of templates,
and also I didn't want to depend on libc and I wanted to generate readable tests.

## Limitations

The main thing I realized while working on this
is that the tests are not about enforcing the C-standard,
but making sure that `clang` behaves like `gcc`
when it comes to compiler specified behavior.
Typically C has bitfields but the alignement of struct containing bitfields
isn't fully specified.
C doesn't allow empty structs, but `gcc` do compile them to 0 byte structs,
with alignment of 1 (but it compile C++ empty structs to 1 byte structs). 
Zig is doing differently, an empty struct will get a size of 1 but an align of 0.
This means that an `empty` field in another structs uses 0 bits in Zig, but 8 in C.

If you remove the tests that uses bitfields (156,954) or empty structs field (1070),
you aren't left with a lot of test cases (2379).

## Extracted tests

I wrote a specialized translation tool
[find_relevant.py](ABI-Testsuite/find_relevant.py) for them.
Since all the test cases seems to have been machine generated,
and follow a pattern, it's not too hard to rewrite them in Zig.
For now I'm still leaving some job to `zig translate-c` by putting the struct
definitions inside a `.h` file.

Sample translated test case. Struct definition in T_Snnn_xbc.h file, test in T_Snnn_xbc.zig file:

```c
// From T_Snnn_xbc.c:16691:16695
struct  Vp_F_Ui  {
  void *v1;
  float v2;
  unsigned int v3;
};
```

```zig
// From T_Snnn_xbc.c:16703:16711
test "Vp_F_Ui" {
    var lv: c.Vp_F_Ui = undefined;
    try testing.expectSize(c.Vp_F_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
```

You can run all this using `python find_relevant.py` with a python 3.8 install.

The command to run a test file is:  `zig test -I zig_test <test_file>.zig`,
Ideally you should be able to run all the tests using `zig build test`,
but I haven't wrote a `build.zig`

## Next steps

I don't know if there is much left to learn from this.
The test suite is mostly here to help Clang follow `gcc` behavior.
As explained above Zig does thing differently.
If that were to change, I could update the repo to run more tests.

