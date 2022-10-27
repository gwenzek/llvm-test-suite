const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("CT_Snen_xaa.h");
});

// From CT_Snen_xaa.c:61409:61429
// struct  C_C_Sf  {
//   char v1;
//   char v2;
//   struct empty v3;
// };

test "C_C_Sf" {
    var lv: c.C_C_Sf = undefined;
    try testing.expectSize(c.C_C_Sf, 2);
    try testing.expectAlign(c.C_C_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xaa.c:61434:61454
// struct  C_D_Sf  {
//   char v1;
//   double v2;
//   struct empty v3;
// };

test "C_D_Sf" {
    var lv: c.C_D_Sf = undefined;
    try testing.expectSize(c.C_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.C_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:61459:61479
// struct  C_F_Sf  {
//   char v1;
//   float v2;
//   struct empty v3;
// };

test "C_F_Sf" {
    var lv: c.C_F_Sf = undefined;
    try testing.expectSize(c.C_F_Sf, 8);
    try testing.expectAlign(c.C_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:61484:61504
// struct  C_I_Sf  {
//   char v1;
//   int v2;
//   struct empty v3;
// };

test "C_I_Sf" {
    var lv: c.C_I_Sf = undefined;
    try testing.expectSize(c.C_I_Sf, 8);
    try testing.expectAlign(c.C_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:61509:61529
// struct  C_Ip_Sf  {
//   char v1;
//   int *v2;
//   struct empty v3;
// };

test "C_Ip_Sf" {
    var lv: c.C_Ip_Sf = undefined;
    try testing.expectSize(c.C_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xaa.c:61534:61554
// struct  C_L_Sf  {
//   char v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "C_L_Sf" {
    var lv: c.C_L_Sf = undefined;
    try testing.expectSize(c.C_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.C_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:61559:61579
// struct  C_S_Sf  {
//   char v1;
//   short v2;
//   struct empty v3;
// };

test "C_S_Sf" {
    var lv: c.C_S_Sf = undefined;
    try testing.expectSize(c.C_S_Sf, 4);
    try testing.expectAlign(c.C_S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

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

// From CT_Snen_xaa.c:62356:62376
// struct  C_Sf_D  {
//   char v1;
//   struct empty v2;
//   double v3;
// };

test "C_Sf_D" {
    var lv: c.C_Sf_D = undefined;
    try testing.expectSize(c.C_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:62381:62401
// struct  C_Sf_F  {
//   char v1;
//   struct empty v2;
//   float v3;
// };

test "C_Sf_F" {
    var lv: c.C_Sf_F = undefined;
    try testing.expectSize(c.C_Sf_F, 8);
    try testing.expectAlign(c.C_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:62406:62426
// struct  C_Sf_I  {
//   char v1;
//   struct empty v2;
//   int v3;
// };

test "C_Sf_I" {
    var lv: c.C_Sf_I = undefined;
    try testing.expectSize(c.C_Sf_I, 8);
    try testing.expectAlign(c.C_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:62431:62451
// struct  C_Sf_Ip  {
//   char v1;
//   struct empty v2;
//   int *v3;
// };

test "C_Sf_Ip" {
    var lv: c.C_Sf_Ip = undefined;
    try testing.expectSize(c.C_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:62456:62476
// struct  C_Sf_L  {
//   char v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "C_Sf_L" {
    var lv: c.C_Sf_L = undefined;
    try testing.expectSize(c.C_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:62481:62501
// struct  C_Sf_S  {
//   char v1;
//   struct empty v2;
//   short v3;
// };

test "C_Sf_S" {
    var lv: c.C_Sf_S = undefined;
    try testing.expectSize(c.C_Sf_S, 4);
    try testing.expectAlign(c.C_Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xaa.c:62506:62526
// struct  C_Sf_Sf  {
//   char v1;
//   struct empty v2;
//   struct empty v3;
// };

test "C_Sf_Sf" {
    var lv: c.C_Sf_Sf = undefined;
    try testing.expectSize(c.C_Sf_Sf, 1);
    try testing.expectAlign(c.C_Sf_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

// From CT_Snen_xaa.c:62531:62551
// struct  C_Sf_Uc  {
//   char v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "C_Sf_Uc" {
    var lv: c.C_Sf_Uc = undefined;
    try testing.expectSize(c.C_Sf_Uc, 2);
    try testing.expectAlign(c.C_Sf_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

// From CT_Snen_xaa.c:62556:62576
// struct  C_Sf_Ui  {
//   char v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "C_Sf_Ui" {
    var lv: c.C_Sf_Ui = undefined;
    try testing.expectSize(c.C_Sf_Ui, 8);
    try testing.expectAlign(c.C_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:62581:62601
// struct  C_Sf_Ul  {
//   char v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "C_Sf_Ul" {
    var lv: c.C_Sf_Ul = undefined;
    try testing.expectSize(c.C_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:62606:62626
// struct  C_Sf_Us  {
//   char v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "C_Sf_Us" {
    var lv: c.C_Sf_Us = undefined;
    try testing.expectSize(c.C_Sf_Us, 4);
    try testing.expectAlign(c.C_Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xaa.c:62631:62651
// struct  C_Sf_Vp  {
//   char v1;
//   struct empty v2;
//   void *v3;
// };

test "C_Sf_Vp" {
    var lv: c.C_Sf_Vp = undefined;
    try testing.expectSize(c.C_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:62656:62676
// struct  C_Uc_Sf  {
//   char v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "C_Uc_Sf" {
    var lv: c.C_Uc_Sf = undefined;
    try testing.expectSize(c.C_Uc_Sf, 2);
    try testing.expectAlign(c.C_Uc_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xaa.c:62681:62701
// struct  C_Ui_Sf  {
//   char v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "C_Ui_Sf" {
    var lv: c.C_Ui_Sf = undefined;
    try testing.expectSize(c.C_Ui_Sf, 8);
    try testing.expectAlign(c.C_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:62706:62726
// struct  C_Ul_Sf  {
//   char v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "C_Ul_Sf" {
    var lv: c.C_Ul_Sf = undefined;
    try testing.expectSize(c.C_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:62731:62751
// struct  C_Us_Sf  {
//   char v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "C_Us_Sf" {
    var lv: c.C_Us_Sf = undefined;
    try testing.expectSize(c.C_Us_Sf, 4);
    try testing.expectAlign(c.C_Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:62756:62776
// struct  C_Vp_Sf  {
//   char v1;
//   void *v2;
//   struct empty v3;
// };

test "C_Vp_Sf" {
    var lv: c.C_Vp_Sf = undefined;
    try testing.expectSize(c.C_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xaa.c:63505:63525
// struct  D_C_Sf  {
//   double v1;
//   char v2;
//   struct empty v3;
// };

test "D_C_Sf" {
    var lv: c.D_C_Sf = undefined;
    try testing.expectSize(c.D_C_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From CT_Snen_xaa.c:63530:63550
// struct  D_D_Sf  {
//   double v1;
//   double v2;
//   struct empty v3;
// };

test "D_D_Sf" {
    var lv: c.D_D_Sf = undefined;
    try testing.expectSize(c.D_D_Sf, 16);
    try testing.expectAlign(c.D_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From CT_Snen_xaa.c:63555:63575
// struct  D_F_Sf  {
//   double v1;
//   float v2;
//   struct empty v3;
// };

test "D_F_Sf" {
    var lv: c.D_F_Sf = undefined;
    try testing.expectSize(c.D_F_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_F_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From CT_Snen_xaa.c:63580:63600
// struct  D_I_Sf  {
//   double v1;
//   int v2;
//   struct empty v3;
// };

test "D_I_Sf" {
    var lv: c.D_I_Sf = undefined;
    try testing.expectSize(c.D_I_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_I_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From CT_Snen_xaa.c:63605:63625
// struct  D_Ip_Sf  {
//   double v1;
//   int *v2;
//   struct empty v3;
// };

test "D_Ip_Sf" {
    var lv: c.D_Ip_Sf = undefined;
    try testing.expectSize(c.D_Ip_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:63630:63650
// struct  D_L_Sf  {
//   double v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "D_L_Sf" {
    var lv: c.D_L_Sf = undefined;
    try testing.expectSize(c.D_L_Sf, 16);
    try testing.expectAlign(c.D_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From CT_Snen_xaa.c:63655:63675
// struct  D_S_Sf  {
//   double v1;
//   short v2;
//   struct empty v3;
// };

test "D_S_Sf" {
    var lv: c.D_S_Sf = undefined;
    try testing.expectSize(c.D_S_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From CT_Snen_xaa.c:63680:63698
// struct  D_Sf  {
//   double v1;
//   struct empty v2;
// };

test "D_Sf" {
    var lv: c.D_Sf = undefined;
    try testing.expectSize(c.D_Sf, 8);
    try testing.expectAlign(c.D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From CT_Snen_xaa.c:64427:64447
// struct  D_Sf_C  {
//   double v1;
//   struct empty v2;
//   char v3;
// };

test "D_Sf_C" {
    var lv: c.D_Sf_C = undefined;
    try testing.expectSize(c.D_Sf_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64452:64472
// struct  D_Sf_D  {
//   double v1;
//   struct empty v2;
//   double v3;
// };

test "D_Sf_D" {
    var lv: c.D_Sf_D = undefined;
    try testing.expectSize(c.D_Sf_D, 16);
    try testing.expectAlign(c.D_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64477:64497
// struct  D_Sf_F  {
//   double v1;
//   struct empty v2;
//   float v3;
// };

test "D_Sf_F" {
    var lv: c.D_Sf_F = undefined;
    try testing.expectSize(c.D_Sf_F, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64502:64522
// struct  D_Sf_I  {
//   double v1;
//   struct empty v2;
//   int v3;
// };

test "D_Sf_I" {
    var lv: c.D_Sf_I = undefined;
    try testing.expectSize(c.D_Sf_I, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64527:64547
// struct  D_Sf_Ip  {
//   double v1;
//   struct empty v2;
//   int *v3;
// };

test "D_Sf_Ip" {
    var lv: c.D_Sf_Ip = undefined;
    try testing.expectSize(c.D_Sf_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64552:64572
// struct  D_Sf_L  {
//   double v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "D_Sf_L" {
    var lv: c.D_Sf_L = undefined;
    try testing.expectSize(c.D_Sf_L, 16);
    try testing.expectAlign(c.D_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64577:64597
// struct  D_Sf_S  {
//   double v1;
//   struct empty v2;
//   short v3;
// };

test "D_Sf_S" {
    var lv: c.D_Sf_S = undefined;
    try testing.expectSize(c.D_Sf_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64602:64622
// struct  D_Sf_Sf  {
//   double v1;
//   struct empty v2;
//   struct empty v3;
// };

test "D_Sf_Sf" {
    var lv: c.D_Sf_Sf = undefined;
    try testing.expectSize(c.D_Sf_Sf, 8);
    try testing.expectAlign(c.D_Sf_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64627:64647
// struct  D_Sf_Uc  {
//   double v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "D_Sf_Uc" {
    var lv: c.D_Sf_Uc = undefined;
    try testing.expectSize(c.D_Sf_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64652:64672
// struct  D_Sf_Ui  {
//   double v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "D_Sf_Ui" {
    var lv: c.D_Sf_Ui = undefined;
    try testing.expectSize(c.D_Sf_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64677:64697
// struct  D_Sf_Ul  {
//   double v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "D_Sf_Ul" {
    var lv: c.D_Sf_Ul = undefined;
    try testing.expectSize(c.D_Sf_Ul, 16);
    try testing.expectAlign(c.D_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64702:64722
// struct  D_Sf_Us  {
//   double v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "D_Sf_Us" {
    var lv: c.D_Sf_Us = undefined;
    try testing.expectSize(c.D_Sf_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64727:64747
// struct  D_Sf_Vp  {
//   double v1;
//   struct empty v2;
//   void *v3;
// };

test "D_Sf_Vp" {
    var lv: c.D_Sf_Vp = undefined;
    try testing.expectSize(c.D_Sf_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:64752:64772
// struct  D_Uc_Sf  {
//   double v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "D_Uc_Sf" {
    var lv: c.D_Uc_Sf = undefined;
    try testing.expectSize(c.D_Uc_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From CT_Snen_xaa.c:64777:64797
// struct  D_Ui_Sf  {
//   double v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "D_Ui_Sf" {
    var lv: c.D_Ui_Sf = undefined;
    try testing.expectSize(c.D_Ui_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Ui_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From CT_Snen_xaa.c:64802:64822
// struct  D_Ul_Sf  {
//   double v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "D_Ul_Sf" {
    var lv: c.D_Ul_Sf = undefined;
    try testing.expectSize(c.D_Ul_Sf, 16);
    try testing.expectAlign(c.D_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From CT_Snen_xaa.c:64827:64847
// struct  D_Us_Sf  {
//   double v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "D_Us_Sf" {
    var lv: c.D_Us_Sf = undefined;
    try testing.expectSize(c.D_Us_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From CT_Snen_xaa.c:64852:64872
// struct  D_Vp_Sf  {
//   double v1;
//   void *v2;
//   struct empty v3;
// };

test "D_Vp_Sf" {
    var lv: c.D_Vp_Sf = undefined;
    try testing.expectSize(c.D_Vp_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:65601:65621
// struct  F_C_Sf  {
//   float v1;
//   char v2;
//   struct empty v3;
// };

test "F_C_Sf" {
    var lv: c.F_C_Sf = undefined;
    try testing.expectSize(c.F_C_Sf, 8);
    try testing.expectAlign(c.F_C_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From CT_Snen_xaa.c:65626:65646
// struct  F_D_Sf  {
//   float v1;
//   double v2;
//   struct empty v3;
// };

test "F_D_Sf" {
    var lv: c.F_D_Sf = undefined;
    try testing.expectSize(c.F_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.F_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:65651:65671
// struct  F_F_Sf  {
//   float v1;
//   float v2;
//   struct empty v3;
// };

test "F_F_Sf" {
    var lv: c.F_F_Sf = undefined;
    try testing.expectSize(c.F_F_Sf, 8);
    try testing.expectAlign(c.F_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:65676:65696
// struct  F_I_Sf  {
//   float v1;
//   int v2;
//   struct empty v3;
// };

test "F_I_Sf" {
    var lv: c.F_I_Sf = undefined;
    try testing.expectSize(c.F_I_Sf, 8);
    try testing.expectAlign(c.F_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:65701:65721
// struct  F_Ip_Sf  {
//   float v1;
//   int *v2;
//   struct empty v3;
// };

test "F_Ip_Sf" {
    var lv: c.F_Ip_Sf = undefined;
    try testing.expectSize(c.F_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xaa.c:65726:65746
// struct  F_L_Sf  {
//   float v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "F_L_Sf" {
    var lv: c.F_L_Sf = undefined;
    try testing.expectSize(c.F_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.F_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:65751:65771
// struct  F_S_Sf  {
//   float v1;
//   short v2;
//   struct empty v3;
// };

test "F_S_Sf" {
    var lv: c.F_S_Sf = undefined;
    try testing.expectSize(c.F_S_Sf, 8);
    try testing.expectAlign(c.F_S_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From CT_Snen_xaa.c:65776:65794
// struct  F_Sf  {
//   float v1;
//   struct empty v2;
// };

test "F_Sf" {
    var lv: c.F_Sf = undefined;
    try testing.expectSize(c.F_Sf, 4);
    try testing.expectAlign(c.F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From CT_Snen_xaa.c:66523:66543
// struct  F_Sf_C  {
//   float v1;
//   struct empty v2;
//   char v3;
// };

test "F_Sf_C" {
    var lv: c.F_Sf_C = undefined;
    try testing.expectSize(c.F_Sf_C, 8);
    try testing.expectAlign(c.F_Sf_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:66548:66568
// struct  F_Sf_D  {
//   float v1;
//   struct empty v2;
//   double v3;
// };

test "F_Sf_D" {
    var lv: c.F_Sf_D = undefined;
    try testing.expectSize(c.F_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:66573:66593
// struct  F_Sf_F  {
//   float v1;
//   struct empty v2;
//   float v3;
// };

test "F_Sf_F" {
    var lv: c.F_Sf_F = undefined;
    try testing.expectSize(c.F_Sf_F, 8);
    try testing.expectAlign(c.F_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:66598:66618
// struct  F_Sf_I  {
//   float v1;
//   struct empty v2;
//   int v3;
// };

test "F_Sf_I" {
    var lv: c.F_Sf_I = undefined;
    try testing.expectSize(c.F_Sf_I, 8);
    try testing.expectAlign(c.F_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:66623:66643
// struct  F_Sf_Ip  {
//   float v1;
//   struct empty v2;
//   int *v3;
// };

test "F_Sf_Ip" {
    var lv: c.F_Sf_Ip = undefined;
    try testing.expectSize(c.F_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:66648:66668
// struct  F_Sf_L  {
//   float v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "F_Sf_L" {
    var lv: c.F_Sf_L = undefined;
    try testing.expectSize(c.F_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:66673:66693
// struct  F_Sf_S  {
//   float v1;
//   struct empty v2;
//   short v3;
// };

test "F_Sf_S" {
    var lv: c.F_Sf_S = undefined;
    try testing.expectSize(c.F_Sf_S, 8);
    try testing.expectAlign(c.F_Sf_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:66698:66718
// struct  F_Sf_Sf  {
//   float v1;
//   struct empty v2;
//   struct empty v3;
// };

test "F_Sf_Sf" {
    var lv: c.F_Sf_Sf = undefined;
    try testing.expectSize(c.F_Sf_Sf, 4);
    try testing.expectAlign(c.F_Sf_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:66723:66743
// struct  F_Sf_Uc  {
//   float v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "F_Sf_Uc" {
    var lv: c.F_Sf_Uc = undefined;
    try testing.expectSize(c.F_Sf_Uc, 8);
    try testing.expectAlign(c.F_Sf_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:66748:66768
// struct  F_Sf_Ui  {
//   float v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "F_Sf_Ui" {
    var lv: c.F_Sf_Ui = undefined;
    try testing.expectSize(c.F_Sf_Ui, 8);
    try testing.expectAlign(c.F_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:66773:66793
// struct  F_Sf_Ul  {
//   float v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "F_Sf_Ul" {
    var lv: c.F_Sf_Ul = undefined;
    try testing.expectSize(c.F_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:66798:66818
// struct  F_Sf_Us  {
//   float v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "F_Sf_Us" {
    var lv: c.F_Sf_Us = undefined;
    try testing.expectSize(c.F_Sf_Us, 8);
    try testing.expectAlign(c.F_Sf_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:66823:66843
// struct  F_Sf_Vp  {
//   float v1;
//   struct empty v2;
//   void *v3;
// };

test "F_Sf_Vp" {
    var lv: c.F_Sf_Vp = undefined;
    try testing.expectSize(c.F_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:66848:66868
// struct  F_Uc_Sf  {
//   float v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "F_Uc_Sf" {
    var lv: c.F_Uc_Sf = undefined;
    try testing.expectSize(c.F_Uc_Sf, 8);
    try testing.expectAlign(c.F_Uc_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From CT_Snen_xaa.c:66873:66893
// struct  F_Ui_Sf  {
//   float v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "F_Ui_Sf" {
    var lv: c.F_Ui_Sf = undefined;
    try testing.expectSize(c.F_Ui_Sf, 8);
    try testing.expectAlign(c.F_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:66898:66918
// struct  F_Ul_Sf  {
//   float v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "F_Ul_Sf" {
    var lv: c.F_Ul_Sf = undefined;
    try testing.expectSize(c.F_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:66923:66943
// struct  F_Us_Sf  {
//   float v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "F_Us_Sf" {
    var lv: c.F_Us_Sf = undefined;
    try testing.expectSize(c.F_Us_Sf, 8);
    try testing.expectAlign(c.F_Us_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From CT_Snen_xaa.c:66948:66968
// struct  F_Vp_Sf  {
//   float v1;
//   void *v2;
//   struct empty v3;
// };

test "F_Vp_Sf" {
    var lv: c.F_Vp_Sf = undefined;
    try testing.expectSize(c.F_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xaa.c:67697:67717
// struct  I_C_Sf  {
//   int v1;
//   char v2;
//   struct empty v3;
// };

test "I_C_Sf" {
    var lv: c.I_C_Sf = undefined;
    try testing.expectSize(c.I_C_Sf, 8);
    try testing.expectAlign(c.I_C_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From CT_Snen_xaa.c:67722:67742
// struct  I_D_Sf  {
//   int v1;
//   double v2;
//   struct empty v3;
// };

test "I_D_Sf" {
    var lv: c.I_D_Sf = undefined;
    try testing.expectSize(c.I_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.I_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:67747:67767
// struct  I_F_Sf  {
//   int v1;
//   float v2;
//   struct empty v3;
// };

test "I_F_Sf" {
    var lv: c.I_F_Sf = undefined;
    try testing.expectSize(c.I_F_Sf, 8);
    try testing.expectAlign(c.I_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:67772:67792
// struct  I_I_Sf  {
//   int v1;
//   int v2;
//   struct empty v3;
// };

test "I_I_Sf" {
    var lv: c.I_I_Sf = undefined;
    try testing.expectSize(c.I_I_Sf, 8);
    try testing.expectAlign(c.I_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:67797:67817
// struct  I_Ip_Sf  {
//   int v1;
//   int *v2;
//   struct empty v3;
// };

test "I_Ip_Sf" {
    var lv: c.I_Ip_Sf = undefined;
    try testing.expectSize(c.I_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xaa.c:67822:67842
// struct  I_L_Sf  {
//   int v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "I_L_Sf" {
    var lv: c.I_L_Sf = undefined;
    try testing.expectSize(c.I_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.I_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:67847:67867
// struct  I_S_Sf  {
//   int v1;
//   short v2;
//   struct empty v3;
// };

test "I_S_Sf" {
    var lv: c.I_S_Sf = undefined;
    try testing.expectSize(c.I_S_Sf, 8);
    try testing.expectAlign(c.I_S_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From CT_Snen_xaa.c:67872:67890
// struct  I_Sf  {
//   int v1;
//   struct empty v2;
// };

test "I_Sf" {
    var lv: c.I_Sf = undefined;
    try testing.expectSize(c.I_Sf, 4);
    try testing.expectAlign(c.I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From CT_Snen_xaa.c:68619:68639
// struct  I_Sf_C  {
//   int v1;
//   struct empty v2;
//   char v3;
// };

test "I_Sf_C" {
    var lv: c.I_Sf_C = undefined;
    try testing.expectSize(c.I_Sf_C, 8);
    try testing.expectAlign(c.I_Sf_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:68644:68664
// struct  I_Sf_D  {
//   int v1;
//   struct empty v2;
//   double v3;
// };

test "I_Sf_D" {
    var lv: c.I_Sf_D = undefined;
    try testing.expectSize(c.I_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:68669:68689
// struct  I_Sf_F  {
//   int v1;
//   struct empty v2;
//   float v3;
// };

test "I_Sf_F" {
    var lv: c.I_Sf_F = undefined;
    try testing.expectSize(c.I_Sf_F, 8);
    try testing.expectAlign(c.I_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:68694:68714
// struct  I_Sf_I  {
//   int v1;
//   struct empty v2;
//   int v3;
// };

test "I_Sf_I" {
    var lv: c.I_Sf_I = undefined;
    try testing.expectSize(c.I_Sf_I, 8);
    try testing.expectAlign(c.I_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:68719:68739
// struct  I_Sf_Ip  {
//   int v1;
//   struct empty v2;
//   int *v3;
// };

test "I_Sf_Ip" {
    var lv: c.I_Sf_Ip = undefined;
    try testing.expectSize(c.I_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:68744:68764
// struct  I_Sf_L  {
//   int v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "I_Sf_L" {
    var lv: c.I_Sf_L = undefined;
    try testing.expectSize(c.I_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:68769:68789
// struct  I_Sf_S  {
//   int v1;
//   struct empty v2;
//   short v3;
// };

test "I_Sf_S" {
    var lv: c.I_Sf_S = undefined;
    try testing.expectSize(c.I_Sf_S, 8);
    try testing.expectAlign(c.I_Sf_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:68794:68814
// struct  I_Sf_Sf  {
//   int v1;
//   struct empty v2;
//   struct empty v3;
// };

test "I_Sf_Sf" {
    var lv: c.I_Sf_Sf = undefined;
    try testing.expectSize(c.I_Sf_Sf, 4);
    try testing.expectAlign(c.I_Sf_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:68819:68839
// struct  I_Sf_Uc  {
//   int v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "I_Sf_Uc" {
    var lv: c.I_Sf_Uc = undefined;
    try testing.expectSize(c.I_Sf_Uc, 8);
    try testing.expectAlign(c.I_Sf_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:68844:68864
// struct  I_Sf_Ui  {
//   int v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "I_Sf_Ui" {
    var lv: c.I_Sf_Ui = undefined;
    try testing.expectSize(c.I_Sf_Ui, 8);
    try testing.expectAlign(c.I_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:68869:68889
// struct  I_Sf_Ul  {
//   int v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "I_Sf_Ul" {
    var lv: c.I_Sf_Ul = undefined;
    try testing.expectSize(c.I_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:68894:68914
// struct  I_Sf_Us  {
//   int v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "I_Sf_Us" {
    var lv: c.I_Sf_Us = undefined;
    try testing.expectSize(c.I_Sf_Us, 8);
    try testing.expectAlign(c.I_Sf_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:68919:68939
// struct  I_Sf_Vp  {
//   int v1;
//   struct empty v2;
//   void *v3;
// };

test "I_Sf_Vp" {
    var lv: c.I_Sf_Vp = undefined;
    try testing.expectSize(c.I_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:68944:68964
// struct  I_Uc_Sf  {
//   int v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "I_Uc_Sf" {
    var lv: c.I_Uc_Sf = undefined;
    try testing.expectSize(c.I_Uc_Sf, 8);
    try testing.expectAlign(c.I_Uc_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From CT_Snen_xaa.c:68969:68989
// struct  I_Ui_Sf  {
//   int v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "I_Ui_Sf" {
    var lv: c.I_Ui_Sf = undefined;
    try testing.expectSize(c.I_Ui_Sf, 8);
    try testing.expectAlign(c.I_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:68994:69014
// struct  I_Ul_Sf  {
//   int v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "I_Ul_Sf" {
    var lv: c.I_Ul_Sf = undefined;
    try testing.expectSize(c.I_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:69019:69039
// struct  I_Us_Sf  {
//   int v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "I_Us_Sf" {
    var lv: c.I_Us_Sf = undefined;
    try testing.expectSize(c.I_Us_Sf, 8);
    try testing.expectAlign(c.I_Us_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From CT_Snen_xaa.c:69044:69064
// struct  I_Vp_Sf  {
//   int v1;
//   void *v2;
//   struct empty v3;
// };

test "I_Vp_Sf" {
    var lv: c.I_Vp_Sf = undefined;
    try testing.expectSize(c.I_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xaa.c:69793:69813
// struct  Ip_C_Sf  {
//   int *v1;
//   char v2;
//   struct empty v3;
// };

test "Ip_C_Sf" {
    var lv: c.Ip_C_Sf = undefined;
    try testing.expectSize(c.Ip_C_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From CT_Snen_xaa.c:69818:69838
// struct  Ip_D_Sf  {
//   int *v1;
//   double v2;
//   struct empty v3;
// };

test "Ip_D_Sf" {
    var lv: c.Ip_D_Sf = undefined;
    try testing.expectSize(c.Ip_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:69843:69863
// struct  Ip_F_Sf  {
//   int *v1;
//   float v2;
//   struct empty v3;
// };

test "Ip_F_Sf" {
    var lv: c.Ip_F_Sf = undefined;
    try testing.expectSize(c.Ip_F_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_F_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From CT_Snen_xaa.c:69868:69888
// struct  Ip_I_Sf  {
//   int *v1;
//   int v2;
//   struct empty v3;
// };

test "Ip_I_Sf" {
    var lv: c.Ip_I_Sf = undefined;
    try testing.expectSize(c.Ip_I_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_I_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From CT_Snen_xaa.c:69893:69913
// struct  Ip_Ip_Sf  {
//   int *v1;
//   int *v2;
//   struct empty v3;
// };

test "Ip_Ip_Sf" {
    var lv: c.Ip_Ip_Sf = undefined;
    try testing.expectSize(c.Ip_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xaa.c:69918:69938
// struct  Ip_L_Sf  {
//   int *v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Ip_L_Sf" {
    var lv: c.Ip_L_Sf = undefined;
    try testing.expectSize(c.Ip_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:69943:69963
// struct  Ip_S_Sf  {
//   int *v1;
//   short v2;
//   struct empty v3;
// };

test "Ip_S_Sf" {
    var lv: c.Ip_S_Sf = undefined;
    try testing.expectSize(c.Ip_S_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From CT_Snen_xaa.c:69968:69986
// struct  Ip_Sf  {
//   int *v1;
//   struct empty v2;
// };

test "Ip_Sf" {
    var lv: c.Ip_Sf = undefined;
    try testing.expectSize(c.Ip_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70715:70735
// struct  Ip_Sf_C  {
//   int *v1;
//   struct empty v2;
//   char v3;
// };

test "Ip_Sf_C" {
    var lv: c.Ip_Sf_C = undefined;
    try testing.expectSize(c.Ip_Sf_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70740:70760
// struct  Ip_Sf_D  {
//   int *v1;
//   struct empty v2;
//   double v3;
// };

test "Ip_Sf_D" {
    var lv: c.Ip_Sf_D = undefined;
    try testing.expectSize(c.Ip_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70765:70785
// struct  Ip_Sf_F  {
//   int *v1;
//   struct empty v2;
//   float v3;
// };

test "Ip_Sf_F" {
    var lv: c.Ip_Sf_F = undefined;
    try testing.expectSize(c.Ip_Sf_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70790:70810
// struct  Ip_Sf_I  {
//   int *v1;
//   struct empty v2;
//   int v3;
// };

test "Ip_Sf_I" {
    var lv: c.Ip_Sf_I = undefined;
    try testing.expectSize(c.Ip_Sf_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70815:70835
// struct  Ip_Sf_Ip  {
//   int *v1;
//   struct empty v2;
//   int *v3;
// };

test "Ip_Sf_Ip" {
    var lv: c.Ip_Sf_Ip = undefined;
    try testing.expectSize(c.Ip_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70840:70860
// struct  Ip_Sf_L  {
//   int *v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Ip_Sf_L" {
    var lv: c.Ip_Sf_L = undefined;
    try testing.expectSize(c.Ip_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70865:70885
// struct  Ip_Sf_S  {
//   int *v1;
//   struct empty v2;
//   short v3;
// };

test "Ip_Sf_S" {
    var lv: c.Ip_Sf_S = undefined;
    try testing.expectSize(c.Ip_Sf_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70890:70910
// struct  Ip_Sf_Sf  {
//   int *v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Ip_Sf_Sf" {
    var lv: c.Ip_Sf_Sf = undefined;
    try testing.expectSize(c.Ip_Sf_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Ip_Sf_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70915:70935
// struct  Ip_Sf_Uc  {
//   int *v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Ip_Sf_Uc" {
    var lv: c.Ip_Sf_Uc = undefined;
    try testing.expectSize(c.Ip_Sf_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70940:70960
// struct  Ip_Sf_Ui  {
//   int *v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Ip_Sf_Ui" {
    var lv: c.Ip_Sf_Ui = undefined;
    try testing.expectSize(c.Ip_Sf_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70965:70985
// struct  Ip_Sf_Ul  {
//   int *v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Ip_Sf_Ul" {
    var lv: c.Ip_Sf_Ul = undefined;
    try testing.expectSize(c.Ip_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:70990:71010
// struct  Ip_Sf_Us  {
//   int *v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Ip_Sf_Us" {
    var lv: c.Ip_Sf_Us = undefined;
    try testing.expectSize(c.Ip_Sf_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:71015:71035
// struct  Ip_Sf_Vp  {
//   int *v1;
//   struct empty v2;
//   void *v3;
// };

test "Ip_Sf_Vp" {
    var lv: c.Ip_Sf_Vp = undefined;
    try testing.expectSize(c.Ip_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:71040:71060
// struct  Ip_Uc_Sf  {
//   int *v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Ip_Uc_Sf" {
    var lv: c.Ip_Uc_Sf = undefined;
    try testing.expectSize(c.Ip_Uc_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From CT_Snen_xaa.c:71065:71085
// struct  Ip_Ui_Sf  {
//   int *v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Ip_Ui_Sf" {
    var lv: c.Ip_Ui_Sf = undefined;
    try testing.expectSize(c.Ip_Ui_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Ui_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From CT_Snen_xaa.c:71090:71110
// struct  Ip_Ul_Sf  {
//   int *v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Ip_Ul_Sf" {
    var lv: c.Ip_Ul_Sf = undefined;
    try testing.expectSize(c.Ip_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:71115:71135
// struct  Ip_Us_Sf  {
//   int *v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Ip_Us_Sf" {
    var lv: c.Ip_Us_Sf = undefined;
    try testing.expectSize(c.Ip_Us_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From CT_Snen_xaa.c:71140:71160
// struct  Ip_Vp_Sf  {
//   int *v1;
//   void *v2;
//   struct empty v3;
// };

test "Ip_Vp_Sf" {
    var lv: c.Ip_Vp_Sf = undefined;
    try testing.expectSize(c.Ip_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xaa.c:71889:71909
// struct  L_C_Sf  {
//   __tsi64 v1;
//   char v2;
//   struct empty v3;
// };

test "L_C_Sf" {
    var lv: c.L_C_Sf = undefined;
    try testing.expectSize(c.L_C_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From CT_Snen_xaa.c:71914:71934
// struct  L_D_Sf  {
//   __tsi64 v1;
//   double v2;
//   struct empty v3;
// };

test "L_D_Sf" {
    var lv: c.L_D_Sf = undefined;
    try testing.expectSize(c.L_D_Sf, 16);
    try testing.expectAlign(c.L_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From CT_Snen_xaa.c:71939:71959
// struct  L_F_Sf  {
//   __tsi64 v1;
//   float v2;
//   struct empty v3;
// };

test "L_F_Sf" {
    var lv: c.L_F_Sf = undefined;
    try testing.expectSize(c.L_F_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_F_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From CT_Snen_xaa.c:71964:71984
// struct  L_I_Sf  {
//   __tsi64 v1;
//   int v2;
//   struct empty v3;
// };

test "L_I_Sf" {
    var lv: c.L_I_Sf = undefined;
    try testing.expectSize(c.L_I_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_I_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From CT_Snen_xaa.c:71989:72009
// struct  L_Ip_Sf  {
//   __tsi64 v1;
//   int *v2;
//   struct empty v3;
// };

test "L_Ip_Sf" {
    var lv: c.L_Ip_Sf = undefined;
    try testing.expectSize(c.L_Ip_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:72014:72034
// struct  L_L_Sf  {
//   __tsi64 v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "L_L_Sf" {
    var lv: c.L_L_Sf = undefined;
    try testing.expectSize(c.L_L_Sf, 16);
    try testing.expectAlign(c.L_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From CT_Snen_xaa.c:72039:72059
// struct  L_S_Sf  {
//   __tsi64 v1;
//   short v2;
//   struct empty v3;
// };

test "L_S_Sf" {
    var lv: c.L_S_Sf = undefined;
    try testing.expectSize(c.L_S_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From CT_Snen_xaa.c:72064:72082
// struct  L_Sf  {
//   __tsi64 v1;
//   struct empty v2;
// };

test "L_Sf" {
    var lv: c.L_Sf = undefined;
    try testing.expectSize(c.L_Sf, 8);
    try testing.expectAlign(c.L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From CT_Snen_xaa.c:72811:72831
// struct  L_Sf_C  {
//   __tsi64 v1;
//   struct empty v2;
//   char v3;
// };

test "L_Sf_C" {
    var lv: c.L_Sf_C = undefined;
    try testing.expectSize(c.L_Sf_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:72836:72856
// struct  L_Sf_D  {
//   __tsi64 v1;
//   struct empty v2;
//   double v3;
// };

test "L_Sf_D" {
    var lv: c.L_Sf_D = undefined;
    try testing.expectSize(c.L_Sf_D, 16);
    try testing.expectAlign(c.L_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:72861:72881
// struct  L_Sf_F  {
//   __tsi64 v1;
//   struct empty v2;
//   float v3;
// };

test "L_Sf_F" {
    var lv: c.L_Sf_F = undefined;
    try testing.expectSize(c.L_Sf_F, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:72886:72906
// struct  L_Sf_I  {
//   __tsi64 v1;
//   struct empty v2;
//   int v3;
// };

test "L_Sf_I" {
    var lv: c.L_Sf_I = undefined;
    try testing.expectSize(c.L_Sf_I, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:72911:72931
// struct  L_Sf_Ip  {
//   __tsi64 v1;
//   struct empty v2;
//   int *v3;
// };

test "L_Sf_Ip" {
    var lv: c.L_Sf_Ip = undefined;
    try testing.expectSize(c.L_Sf_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:72936:72956
// struct  L_Sf_L  {
//   __tsi64 v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "L_Sf_L" {
    var lv: c.L_Sf_L = undefined;
    try testing.expectSize(c.L_Sf_L, 16);
    try testing.expectAlign(c.L_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:72961:72981
// struct  L_Sf_S  {
//   __tsi64 v1;
//   struct empty v2;
//   short v3;
// };

test "L_Sf_S" {
    var lv: c.L_Sf_S = undefined;
    try testing.expectSize(c.L_Sf_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:72986:73006
// struct  L_Sf_Sf  {
//   __tsi64 v1;
//   struct empty v2;
//   struct empty v3;
// };

test "L_Sf_Sf" {
    var lv: c.L_Sf_Sf = undefined;
    try testing.expectSize(c.L_Sf_Sf, 8);
    try testing.expectAlign(c.L_Sf_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:73011:73031
// struct  L_Sf_Uc  {
//   __tsi64 v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "L_Sf_Uc" {
    var lv: c.L_Sf_Uc = undefined;
    try testing.expectSize(c.L_Sf_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:73036:73056
// struct  L_Sf_Ui  {
//   __tsi64 v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "L_Sf_Ui" {
    var lv: c.L_Sf_Ui = undefined;
    try testing.expectSize(c.L_Sf_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:73061:73081
// struct  L_Sf_Ul  {
//   __tsi64 v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "L_Sf_Ul" {
    var lv: c.L_Sf_Ul = undefined;
    try testing.expectSize(c.L_Sf_Ul, 16);
    try testing.expectAlign(c.L_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:73086:73106
// struct  L_Sf_Us  {
//   __tsi64 v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "L_Sf_Us" {
    var lv: c.L_Sf_Us = undefined;
    try testing.expectSize(c.L_Sf_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:73111:73131
// struct  L_Sf_Vp  {
//   __tsi64 v1;
//   struct empty v2;
//   void *v3;
// };

test "L_Sf_Vp" {
    var lv: c.L_Sf_Vp = undefined;
    try testing.expectSize(c.L_Sf_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:73136:73156
// struct  L_Uc_Sf  {
//   __tsi64 v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "L_Uc_Sf" {
    var lv: c.L_Uc_Sf = undefined;
    try testing.expectSize(c.L_Uc_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From CT_Snen_xaa.c:73161:73181
// struct  L_Ui_Sf  {
//   __tsi64 v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "L_Ui_Sf" {
    var lv: c.L_Ui_Sf = undefined;
    try testing.expectSize(c.L_Ui_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Ui_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From CT_Snen_xaa.c:73186:73206
// struct  L_Ul_Sf  {
//   __tsi64 v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "L_Ul_Sf" {
    var lv: c.L_Ul_Sf = undefined;
    try testing.expectSize(c.L_Ul_Sf, 16);
    try testing.expectAlign(c.L_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From CT_Snen_xaa.c:73211:73231
// struct  L_Us_Sf  {
//   __tsi64 v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "L_Us_Sf" {
    var lv: c.L_Us_Sf = undefined;
    try testing.expectSize(c.L_Us_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From CT_Snen_xaa.c:73236:73256
// struct  L_Vp_Sf  {
//   __tsi64 v1;
//   void *v2;
//   struct empty v3;
// };

test "L_Vp_Sf" {
    var lv: c.L_Vp_Sf = undefined;
    try testing.expectSize(c.L_Vp_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:73985:74005
// struct  S_C_Sf  {
//   short v1;
//   char v2;
//   struct empty v3;
// };

test "S_C_Sf" {
    var lv: c.S_C_Sf = undefined;
    try testing.expectSize(c.S_C_Sf, 4);
    try testing.expectAlign(c.S_C_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From CT_Snen_xaa.c:74010:74030
// struct  S_D_Sf  {
//   short v1;
//   double v2;
//   struct empty v3;
// };

test "S_D_Sf" {
    var lv: c.S_D_Sf = undefined;
    try testing.expectSize(c.S_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.S_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:74035:74055
// struct  S_F_Sf  {
//   short v1;
//   float v2;
//   struct empty v3;
// };

test "S_F_Sf" {
    var lv: c.S_F_Sf = undefined;
    try testing.expectSize(c.S_F_Sf, 8);
    try testing.expectAlign(c.S_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:74060:74080
// struct  S_I_Sf  {
//   short v1;
//   int v2;
//   struct empty v3;
// };

test "S_I_Sf" {
    var lv: c.S_I_Sf = undefined;
    try testing.expectSize(c.S_I_Sf, 8);
    try testing.expectAlign(c.S_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:74085:74105
// struct  S_Ip_Sf  {
//   short v1;
//   int *v2;
//   struct empty v3;
// };

test "S_Ip_Sf" {
    var lv: c.S_Ip_Sf = undefined;
    try testing.expectSize(c.S_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xaa.c:74110:74130
// struct  S_L_Sf  {
//   short v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "S_L_Sf" {
    var lv: c.S_L_Sf = undefined;
    try testing.expectSize(c.S_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.S_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:74135:74155
// struct  S_S_Sf  {
//   short v1;
//   short v2;
//   struct empty v3;
// };

test "S_S_Sf" {
    var lv: c.S_S_Sf = undefined;
    try testing.expectSize(c.S_S_Sf, 4);
    try testing.expectAlign(c.S_S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:74160:74178
// struct  S_Sf  {
//   short v1;
//   struct empty v2;
// };

test "S_Sf" {
    var lv: c.S_Sf = undefined;
    try testing.expectSize(c.S_Sf, 2);
    try testing.expectAlign(c.S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From CT_Snen_xaa.c:74907:74927
// struct  S_Sf_C  {
//   short v1;
//   struct empty v2;
//   char v3;
// };

test "S_Sf_C" {
    var lv: c.S_Sf_C = undefined;
    try testing.expectSize(c.S_Sf_C, 4);
    try testing.expectAlign(c.S_Sf_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xaa.c:74932:74952
// struct  S_Sf_D  {
//   short v1;
//   struct empty v2;
//   double v3;
// };

test "S_Sf_D" {
    var lv: c.S_Sf_D = undefined;
    try testing.expectSize(c.S_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:74957:74977
// struct  S_Sf_F  {
//   short v1;
//   struct empty v2;
//   float v3;
// };

test "S_Sf_F" {
    var lv: c.S_Sf_F = undefined;
    try testing.expectSize(c.S_Sf_F, 8);
    try testing.expectAlign(c.S_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:74982:75002
// struct  S_Sf_I  {
//   short v1;
//   struct empty v2;
//   int v3;
// };

test "S_Sf_I" {
    var lv: c.S_Sf_I = undefined;
    try testing.expectSize(c.S_Sf_I, 8);
    try testing.expectAlign(c.S_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:75007:75027
// struct  S_Sf_Ip  {
//   short v1;
//   struct empty v2;
//   int *v3;
// };

test "S_Sf_Ip" {
    var lv: c.S_Sf_Ip = undefined;
    try testing.expectSize(c.S_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:75032:75052
// struct  S_Sf_L  {
//   short v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "S_Sf_L" {
    var lv: c.S_Sf_L = undefined;
    try testing.expectSize(c.S_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:75057:75077
// struct  S_Sf_S  {
//   short v1;
//   struct empty v2;
//   short v3;
// };

test "S_Sf_S" {
    var lv: c.S_Sf_S = undefined;
    try testing.expectSize(c.S_Sf_S, 4);
    try testing.expectAlign(c.S_Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xaa.c:75082:75102
// struct  S_Sf_Sf  {
//   short v1;
//   struct empty v2;
//   struct empty v3;
// };

test "S_Sf_Sf" {
    var lv: c.S_Sf_Sf = undefined;
    try testing.expectSize(c.S_Sf_Sf, 2);
    try testing.expectAlign(c.S_Sf_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xaa.c:75107:75127
// struct  S_Sf_Uc  {
//   short v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "S_Sf_Uc" {
    var lv: c.S_Sf_Uc = undefined;
    try testing.expectSize(c.S_Sf_Uc, 4);
    try testing.expectAlign(c.S_Sf_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xaa.c:75132:75152
// struct  S_Sf_Ui  {
//   short v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "S_Sf_Ui" {
    var lv: c.S_Sf_Ui = undefined;
    try testing.expectSize(c.S_Sf_Ui, 8);
    try testing.expectAlign(c.S_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:75157:75177
// struct  S_Sf_Ul  {
//   short v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "S_Sf_Ul" {
    var lv: c.S_Sf_Ul = undefined;
    try testing.expectSize(c.S_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:75182:75202
// struct  S_Sf_Us  {
//   short v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "S_Sf_Us" {
    var lv: c.S_Sf_Us = undefined;
    try testing.expectSize(c.S_Sf_Us, 4);
    try testing.expectAlign(c.S_Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xaa.c:75207:75227
// struct  S_Sf_Vp  {
//   short v1;
//   struct empty v2;
//   void *v3;
// };

test "S_Sf_Vp" {
    var lv: c.S_Sf_Vp = undefined;
    try testing.expectSize(c.S_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xaa.c:75232:75252
// struct  S_Uc_Sf  {
//   short v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "S_Uc_Sf" {
    var lv: c.S_Uc_Sf = undefined;
    try testing.expectSize(c.S_Uc_Sf, 4);
    try testing.expectAlign(c.S_Uc_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From CT_Snen_xaa.c:75257:75277
// struct  S_Ui_Sf  {
//   short v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "S_Ui_Sf" {
    var lv: c.S_Ui_Sf = undefined;
    try testing.expectSize(c.S_Ui_Sf, 8);
    try testing.expectAlign(c.S_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xaa.c:75282:75302
// struct  S_Ul_Sf  {
//   short v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "S_Ul_Sf" {
    var lv: c.S_Ul_Sf = undefined;
    try testing.expectSize(c.S_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xaa.c:75307:75327
// struct  S_Us_Sf  {
//   short v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "S_Us_Sf" {
    var lv: c.S_Us_Sf = undefined;
    try testing.expectSize(c.S_Us_Sf, 4);
    try testing.expectAlign(c.S_Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xaa.c:75332:75352
// struct  S_Vp_Sf  {
//   short v1;
//   void *v2;
//   struct empty v3;
// };

test "S_Vp_Sf" {
    var lv: c.S_Vp_Sf = undefined;
    try testing.expectSize(c.S_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xaa.c:75357:75373
// struct  Sf  {
//   struct empty v1;
// };

test "Sf" {
    var lv: c.Sf = undefined;
    try testing.expectSize(c.Sf, 0);
    try testing.expectAlign(c.Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
