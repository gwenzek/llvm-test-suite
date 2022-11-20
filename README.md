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
Zig seems to also handle empty structs but I'm not sure if it's an oversight or an actual feature.
 
If you remove the C++ tests,
the tests that uses bitfields (117,174) or empty structs field (495),
you aren't left with a lot of test cases (1884).

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

All the 1884 collected tests works.

## Empty fields

Supporting empty fields wasn't much effort, so I also tried Zig compiler on them.
You can run them with `python find_relevant.py --allow_empty`
or directly 
The tests with empty structs are located in the following files:

``` 
zig_test/CT_Snen_xaa.zig: 67 passed; 0 skipped; 116 failed.
zig_test/CT_Snen_xab.zig: 50 passed; 0 skipped; 262 failed.
```

Here is a successful test

```
// From CT_Snen_xaa.c:61584:61602
// struct  C_Sf  {
//   char v1;
//   struct empty v2;
// };

test "C_Sf" {
    var lv: c.C_Sf = undefined;
    try testing.expectSize(c.C_Sf, 1);
    try testing.expectAlign(c.C_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}
```

And here is a failing one.

```
// From CT_Snen_xaa.c:62331:62351
// struct  C_Sf_C  {
//   char v1;
//   struct empty v2;
//   char v3;
// };

test "C_Sf_C" {
    var lv: c.C_Sf_C = undefined;
    try testing.expectSize(c.C_Sf_C, 2);
    try testing.expectAlign(c.C_Sf_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

zig_test/CT_Snen_xaa.zig:147:5: 0x21a6b2 in test.C_Sf_C (test)
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    ^
10/183 test.C_Sf_D... expected 1, found 16
```

AFAICT Zig doesn't agree with gcc of what to do when there is an empty field in the middle of a struct and tends to insert too many padding.


## Passing structs through the C ABI

Topolarity suggested generating more tests than just layout test.
So for each struct I pass it through arguments and return it,
both C to Zig and Zig to C.

```
// .h
struct  C_C_D  {
  char v1;
  char v2;
  double v3;
};

int recv_C_C_D(struct C_C_D lv);
struct C_C_D ret_C_C_D();


// .c
int recv_C_C_D(struct C_C_D lv){
  if (lv.v1 != 88) return 1;
  if (lv.v2 != 39) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct C_C_D ret_C_C_D(){
  struct C_C_D lv;
  lv.v1 = 88;
  lv.v2 = 39;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_C_C_D(struct C_C_D);
int send_C_C_D(){
  struct C_C_D lv;
  lv.v1 = 88;
  lv.v2 = 39;
  lv.v3 = -2.125;
  return zig_recv_C_C_D(lv);
}
struct C_C_D zig_ret_C_C_D();
int assert_ret_C_C_D(){
  struct C_C_D lv = zig_ret_C_C_D();
  if (lv.v1 != 88) return 1;
  if (lv.v2 != 39) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}

// .zig
test "C_C_D layout" {
    var lv: c.C_C_D = undefined;
    try testing.expectSize(c.C_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_C_D C calls" {
    try testing.expectEqual(c.ret_C_C_D(), .{ .v1 = 88, .v2 = 39, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_C_C_D());
    try testing.expectOk(c.send_C_C_D());
    try testing.expectOk(c.recv_C_C_D(.{ .v1 = 88, .v2 = 39, .v3 = -2.125 }));
}
pub export fn zig_recv_C_C_D(lv: c.C_C_D) c_int {
    if (lv.v1 != 88) return 1;
    if (lv.v2 != 39) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}
pub export fn zig_ret_C_C_D() c.C_C_D {
    return .{ .v1 = 88, .v2 = 39, .v3 = -2.125 };
}

```

Using qemu I can run the above tests on different platforms.
I found a number of failing tests.
Note that crashes indicate that not all 8 test suites were able to finish,
resulting in non counted test cases.

| Target          | passed  | skipped | failed | crashes |
| --------------- | --------| --------| -------| --------|
| i386-linux      | 3725    | 3768    |   1927 |       0 |
| x86_64-linux    | 9080    |       0 |    340 |       0 |
| aarch64-linux   | 5       |       0 |      0 |   **7** |
| riscv64-linux   | 8494    |       0 |    146 |   **1** |
| --------------- | --------| --------| -------| --------|


Obtained with `python find_relevant.py --target all`.
Note that I could easily add more targets supported by qemu,
and it would be interesting to run the tests on windows because
x86_64 uses a different calling convention on Windows and will behave differently.


## Diffing LLVM IR

For the `C_C_D = extern struct { v1: i8, v2: i8, v3: f64 }` struct
Clang generates the following IR:

```
; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assert_C_C_D(i64 %0, double %1) #0 !dbg !10 {
  %3 = alloca %struct.C_C_D, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds { i64, double }, ptr %3, i32 0, i32 0
  store i64 %0, ptr %5, align 8
  %6 = getelementptr inbounds { i64, double }, ptr %3, i32 0, i32 1
  store double %1, ptr %6, align 8
```

Zig:

```
%struct.C_C_D = type { i8, i8, [6 x i8], double }

; Function Attrs: nounwind
define dso_local i32 @zig_assert_C_C_D(i64 %0, i64 %1) #0 !dbg !32 {
Entry:
  %2 = alloca i32, align 4
  %3 = alloca %example.C_C_D, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 0
  store i64 %0, ptr %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 1
  store i64 %1, ptr %5, align 8

}
```

The main difference is that the Clang reads the arguments with a `load {i64, double}` which reads from an integer register and a float register, while Zig reads with `load {i64, i64}` which reads from two integer registers.

https://zigbin.io/0cc641


I was first looking into the `classifySystemV` Zig function that tells the compiler
how to read arguments for different calling convention.
But I came under the impression the logic there was correct.
@Vexu pointed me to the llvm backend where the codegen for function call is using `.multiple_llvm_ints` and `.multiple_llvm_ints` to handle complex struct.
Which doesn't work for struct with mixed floats and ints.

With https://github.com/ziglang/zig/pull/13592:

x86_64-linux: Test success: 8 / 8 (0 crashes)
x86_64-linux: Test results: 9420 passed; 0 skipped; 0 failed.
