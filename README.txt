LLVM "test-suite" Repository
----------------------------

Please see the LLVM testing infrastructure guide:

  https://llvm.org/docs/TestSuiteGuide.html

for more information on the contents of this repository.

To run zig tests:

```bash
cd ABI-Testsuite/test/
for file in struct_layout_tests/*.c; do echo $file; zig run -fno-stage1 -lc testsuite.zig -I common/ $file; done
```

Current output:

```
struct_layout_tests/CT_bf.c
TEST PASSED. 2400 classes. 11120 tests. 0 failures.
struct_layout_tests/CT_Snen_xaa.c
TEST PASSED. 3001 classes. 18812 tests. 0 failures.
struct_layout_tests/CT_Snen_xab.c
TEST PASSED. 2004 classes. 12004 tests. 0 failures.
struct_layout_tests/CT_Snez_xaa.c
TEST PASSED. 1029 classes. 4634 tests. 0 failures.
struct_layout_tests/CT_Snnz_xaa.c
TEST PASSED. 3000 classes. 6192 tests. 0 failures.
struct_layout_tests/CT_Snnz_xab.c
TEST PASSED. 3000 classes. 13023 tests. 0 failures.
struct_layout_tests/CT_Snnz_xac.c
TEST PASSED. 3000 classes. 13087 tests. 0 failures.
struct_layout_tests/CT_Snnz_xad.c
TEST PASSED. 3000 classes. 13232 tests. 0 failures.
struct_layout_tests/CT_Snnz_xae.c
TEST PASSED. 3000 classes. 15947 tests. 0 failures.
struct_layout_tests/CT_Snnz_xaf.c
TEST PASSED. 3000 classes. 15166 tests. 0 failures.
struct_layout_tests/CT_Snnz_xag.c
TEST PASSED. 3000 classes. 16529 tests. 0 failures.
struct_layout_tests/CT_Snnz_xah.c
TEST PASSED. 3000 classes. 14556 tests. 0 failures.
struct_layout_tests/CT_Snnz_xai.c
TEST PASSED. 2116 classes. 9524 tests. 0 failures.
struct_layout_tests/PT_bf.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snen_xaa.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snen_xab.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snez_xaa.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snnz_xaa.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snnz_xab.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snnz_xac.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snnz_xad.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snnz_xae.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snnz_xaf.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snnz_xag.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snnz_xah.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/PT_Snnz_xai.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/T_Sben_xaa.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/T_Sbez_xaa.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/T_Sbnn_xaa.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/T_Sbnn_xab.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/T_Sbnz_xaa.c
TEST FAILED. 0 classes. 0 tests. 0 failures.
struct_layout_tests/T_Snnn_xaa.c
TEST PASSED. 3000 classes. 24015 tests. 0 failures.
struct_layout_tests/T_Snnn_xab.c
Illegal instruction (core dumped)
struct_layout_tests/T_Snnn_xac.c
TEST PASSED. 3000 classes. 29178 tests. 0 failures.
struct_layout_tests/T_Snnn_xad.c
TEST PASSED. 3000 classes. 24786 tests. 0 failures.
struct_layout_tests/T_Snnn_xae.c
TEST PASSED. 3000 classes. 22520 tests. 0 failures.
struct_layout_tests/T_Snnn_xaf.c
TEST PASSED. 3000 classes. 22591 tests. 0 failures.
struct_layout_tests/T_Snnn_xag.c
TEST PASSED. 3000 classes. 22103 tests. 0 failures.
struct_layout_tests/T_Snnn_xah.c
TEST PASSED. 3000 classes. 21976 tests. 0 failures.
struct_layout_tests/T_Snnn_xai.c
TEST PASSED. 3000 classes. 18676 tests. 0 failures.
struct_layout_tests/T_Snnn_xaj.c
TEST PASSED. 3000 classes. 18304 tests. 0 failures.
struct_layout_tests/T_Snnn_xak.c
TEST PASSED. 3000 classes. 18541 tests. 0 failures.
struct_layout_tests/T_Snnn_xal.c
TEST PASSED. 3000 classes. 21259 tests. 0 failures.
struct_layout_tests/T_Snnn_xam.c
TEST PASSED. 3000 classes. 21748 tests. 0 failures.
struct_layout_tests/T_Snnn_xan.c
Illegal instruction (core dumped)
struct_layout_tests/T_Snnn_xao.c
Illegal instruction (core dumped)
struct_layout_tests/T_Snnn_xap.c
TEST PASSED. 3000 classes. 23920 tests. 0 failures.
struct_layout_tests/T_Snnn_xaq.c
TEST PASSED. 3000 classes. 23140 tests. 0 failures.
struct_layout_tests/T_Snnn_xar.c
TEST PASSED. 3000 classes. 23400 tests. 0 failures.
struct_layout_tests/T_Snnn_xas.c
TEST PASSED. 3000 classes. 23874 tests. 0 failures.
struct_layout_tests/T_Snnn_xat.c
TEST PASSED. 3000 classes. 23103 tests. 0 failures.
struct_layout_tests/T_Snnn_xau.c
TEST PASSED. 3000 classes. 22600 tests. 0 failures.
struct_layout_tests/T_Snnn_xav.c
TEST PASSED. 3000 classes. 21279 tests. 0 failures.
struct_layout_tests/T_Snnn_xaw.c
TEST PASSED. 3000 classes. 18450 tests. 0 failures.
struct_layout_tests/T_Snnn_xax.c
TEST PASSED. 3000 classes. 18436 tests. 0 failures.
struct_layout_tests/T_Snnn_xay.c
TEST PASSED. 3000 classes. 18526 tests. 0 failures.
struct_layout_tests/T_Snnn_xaz.c
TEST PASSED. 3000 classes. 18648 tests. 0 failures.
struct_layout_tests/T_Snnn_xba.c
TEST PASSED. 3000 classes. 18412 tests. 0 failures.
struct_layout_tests/T_Snnn_xbb.c
TEST PASSED. 3000 classes. 18366 tests. 0 failures.
struct_layout_tests/T_Snnn_xbc.c
TEST PASSED. 1006 classes. 6106 tests. 0 failures.
```


`struct_layout_tests/PT_*` contains C++ only tests.
`struct_layout_tests/T_Snnn_xab.c`, `struct_layout_tests/T_Snnn_xan.c`, `struct_layout_tests/T_Snnn_xao.c`
generate core dumps
