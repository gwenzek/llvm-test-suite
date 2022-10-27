const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("CT_Snen_xab.h");
});

// From CT_Snen_xab.c:27633:27651
// struct  Sf_C  {
//   struct empty v1;
//   char v2;
// };

test "Sf_C" {
    var lv: c.Sf_C = undefined;
    try testing.expectSize(c.Sf_C, 1);
    try testing.expectAlign(c.Sf_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:28380:28400
// struct  Sf_C_C  {
//   struct empty v1;
//   char v2;
//   char v3;
// };

test "Sf_C_C" {
    var lv: c.Sf_C_C = undefined;
    try testing.expectSize(c.Sf_C_C, 2);
    try testing.expectAlign(c.Sf_C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

// From CT_Snen_xab.c:28405:28425
// struct  Sf_C_D  {
//   struct empty v1;
//   char v2;
//   double v3;
// };

test "Sf_C_D" {
    var lv: c.Sf_C_D = undefined;
    try testing.expectSize(c.Sf_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:28430:28450
// struct  Sf_C_F  {
//   struct empty v1;
//   char v2;
//   float v3;
// };

test "Sf_C_F" {
    var lv: c.Sf_C_F = undefined;
    try testing.expectSize(c.Sf_C_F, 8);
    try testing.expectAlign(c.Sf_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:28455:28475
// struct  Sf_C_I  {
//   struct empty v1;
//   char v2;
//   int v3;
// };

test "Sf_C_I" {
    var lv: c.Sf_C_I = undefined;
    try testing.expectSize(c.Sf_C_I, 8);
    try testing.expectAlign(c.Sf_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:28480:28500
// struct  Sf_C_Ip  {
//   struct empty v1;
//   char v2;
//   int *v3;
// };

test "Sf_C_Ip" {
    var lv: c.Sf_C_Ip = undefined;
    try testing.expectSize(c.Sf_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:28505:28525
// struct  Sf_C_L  {
//   struct empty v1;
//   char v2;
//   __tsi64 v3;
// };

test "Sf_C_L" {
    var lv: c.Sf_C_L = undefined;
    try testing.expectSize(c.Sf_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:28530:28550
// struct  Sf_C_S  {
//   struct empty v1;
//   char v2;
//   short v3;
// };

test "Sf_C_S" {
    var lv: c.Sf_C_S = undefined;
    try testing.expectSize(c.Sf_C_S, 4);
    try testing.expectAlign(c.Sf_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:28555:28575
// struct  Sf_C_Sf  {
//   struct empty v1;
//   char v2;
//   struct empty v3;
// };

test "Sf_C_Sf" {
    var lv: c.Sf_C_Sf = undefined;
    try testing.expectSize(c.Sf_C_Sf, 1);
    try testing.expectAlign(c.Sf_C_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

// From CT_Snen_xab.c:28580:28600
// struct  Sf_C_Uc  {
//   struct empty v1;
//   char v2;
//   unsigned char v3;
// };

test "Sf_C_Uc" {
    var lv: c.Sf_C_Uc = undefined;
    try testing.expectSize(c.Sf_C_Uc, 2);
    try testing.expectAlign(c.Sf_C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

// From CT_Snen_xab.c:28605:28625
// struct  Sf_C_Ui  {
//   struct empty v1;
//   char v2;
//   unsigned int v3;
// };

test "Sf_C_Ui" {
    var lv: c.Sf_C_Ui = undefined;
    try testing.expectSize(c.Sf_C_Ui, 8);
    try testing.expectAlign(c.Sf_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:28630:28650
// struct  Sf_C_Ul  {
//   struct empty v1;
//   char v2;
//   __tsu64 v3;
// };

test "Sf_C_Ul" {
    var lv: c.Sf_C_Ul = undefined;
    try testing.expectSize(c.Sf_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:28655:28675
// struct  Sf_C_Us  {
//   struct empty v1;
//   char v2;
//   unsigned short v3;
// };

test "Sf_C_Us" {
    var lv: c.Sf_C_Us = undefined;
    try testing.expectSize(c.Sf_C_Us, 4);
    try testing.expectAlign(c.Sf_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:28680:28700
// struct  Sf_C_Vp  {
//   struct empty v1;
//   char v2;
//   void *v3;
// };

test "Sf_C_Vp" {
    var lv: c.Sf_C_Vp = undefined;
    try testing.expectSize(c.Sf_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:28705:28723
// struct  Sf_D  {
//   struct empty v1;
//   double v2;
// };

test "Sf_D" {
    var lv: c.Sf_D = undefined;
    try testing.expectSize(c.Sf_D, 8);
    try testing.expectAlign(c.Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:29452:29472
// struct  Sf_D_C  {
//   struct empty v1;
//   double v2;
//   char v3;
// };

test "Sf_D_C" {
    var lv: c.Sf_D_C = undefined;
    try testing.expectSize(c.Sf_D_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29477:29497
// struct  Sf_D_D  {
//   struct empty v1;
//   double v2;
//   double v3;
// };

test "Sf_D_D" {
    var lv: c.Sf_D_D = undefined;
    try testing.expectSize(c.Sf_D_D, 16);
    try testing.expectAlign(c.Sf_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29502:29522
// struct  Sf_D_F  {
//   struct empty v1;
//   double v2;
//   float v3;
// };

test "Sf_D_F" {
    var lv: c.Sf_D_F = undefined;
    try testing.expectSize(c.Sf_D_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29527:29547
// struct  Sf_D_I  {
//   struct empty v1;
//   double v2;
//   int v3;
// };

test "Sf_D_I" {
    var lv: c.Sf_D_I = undefined;
    try testing.expectSize(c.Sf_D_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29552:29572
// struct  Sf_D_Ip  {
//   struct empty v1;
//   double v2;
//   int *v3;
// };

test "Sf_D_Ip" {
    var lv: c.Sf_D_Ip = undefined;
    try testing.expectSize(c.Sf_D_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29577:29597
// struct  Sf_D_L  {
//   struct empty v1;
//   double v2;
//   __tsi64 v3;
// };

test "Sf_D_L" {
    var lv: c.Sf_D_L = undefined;
    try testing.expectSize(c.Sf_D_L, 16);
    try testing.expectAlign(c.Sf_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29602:29622
// struct  Sf_D_S  {
//   struct empty v1;
//   double v2;
//   short v3;
// };

test "Sf_D_S" {
    var lv: c.Sf_D_S = undefined;
    try testing.expectSize(c.Sf_D_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29627:29647
// struct  Sf_D_Sf  {
//   struct empty v1;
//   double v2;
//   struct empty v3;
// };

test "Sf_D_Sf" {
    var lv: c.Sf_D_Sf = undefined;
    try testing.expectSize(c.Sf_D_Sf, 8);
    try testing.expectAlign(c.Sf_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29652:29672
// struct  Sf_D_Uc  {
//   struct empty v1;
//   double v2;
//   unsigned char v3;
// };

test "Sf_D_Uc" {
    var lv: c.Sf_D_Uc = undefined;
    try testing.expectSize(c.Sf_D_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29677:29697
// struct  Sf_D_Ui  {
//   struct empty v1;
//   double v2;
//   unsigned int v3;
// };

test "Sf_D_Ui" {
    var lv: c.Sf_D_Ui = undefined;
    try testing.expectSize(c.Sf_D_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29702:29722
// struct  Sf_D_Ul  {
//   struct empty v1;
//   double v2;
//   __tsu64 v3;
// };

test "Sf_D_Ul" {
    var lv: c.Sf_D_Ul = undefined;
    try testing.expectSize(c.Sf_D_Ul, 16);
    try testing.expectAlign(c.Sf_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29727:29747
// struct  Sf_D_Us  {
//   struct empty v1;
//   double v2;
//   unsigned short v3;
// };

test "Sf_D_Us" {
    var lv: c.Sf_D_Us = undefined;
    try testing.expectSize(c.Sf_D_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29752:29772
// struct  Sf_D_Vp  {
//   struct empty v1;
//   double v2;
//   void *v3;
// };

test "Sf_D_Vp" {
    var lv: c.Sf_D_Vp = undefined;
    try testing.expectSize(c.Sf_D_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:29777:29795
// struct  Sf_F  {
//   struct empty v1;
//   float v2;
// };

test "Sf_F" {
    var lv: c.Sf_F = undefined;
    try testing.expectSize(c.Sf_F, 4);
    try testing.expectAlign(c.Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:30524:30544
// struct  Sf_F_C  {
//   struct empty v1;
//   float v2;
//   char v3;
// };

test "Sf_F_C" {
    var lv: c.Sf_F_C = undefined;
    try testing.expectSize(c.Sf_F_C, 8);
    try testing.expectAlign(c.Sf_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:30549:30569
// struct  Sf_F_D  {
//   struct empty v1;
//   float v2;
//   double v3;
// };

test "Sf_F_D" {
    var lv: c.Sf_F_D = undefined;
    try testing.expectSize(c.Sf_F_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:30574:30594
// struct  Sf_F_F  {
//   struct empty v1;
//   float v2;
//   float v3;
// };

test "Sf_F_F" {
    var lv: c.Sf_F_F = undefined;
    try testing.expectSize(c.Sf_F_F, 8);
    try testing.expectAlign(c.Sf_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:30599:30619
// struct  Sf_F_I  {
//   struct empty v1;
//   float v2;
//   int v3;
// };

test "Sf_F_I" {
    var lv: c.Sf_F_I = undefined;
    try testing.expectSize(c.Sf_F_I, 8);
    try testing.expectAlign(c.Sf_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:30624:30644
// struct  Sf_F_Ip  {
//   struct empty v1;
//   float v2;
//   int *v3;
// };

test "Sf_F_Ip" {
    var lv: c.Sf_F_Ip = undefined;
    try testing.expectSize(c.Sf_F_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:30649:30669
// struct  Sf_F_L  {
//   struct empty v1;
//   float v2;
//   __tsi64 v3;
// };

test "Sf_F_L" {
    var lv: c.Sf_F_L = undefined;
    try testing.expectSize(c.Sf_F_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:30674:30694
// struct  Sf_F_S  {
//   struct empty v1;
//   float v2;
//   short v3;
// };

test "Sf_F_S" {
    var lv: c.Sf_F_S = undefined;
    try testing.expectSize(c.Sf_F_S, 8);
    try testing.expectAlign(c.Sf_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:30699:30719
// struct  Sf_F_Sf  {
//   struct empty v1;
//   float v2;
//   struct empty v3;
// };

test "Sf_F_Sf" {
    var lv: c.Sf_F_Sf = undefined;
    try testing.expectSize(c.Sf_F_Sf, 4);
    try testing.expectAlign(c.Sf_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:30724:30744
// struct  Sf_F_Uc  {
//   struct empty v1;
//   float v2;
//   unsigned char v3;
// };

test "Sf_F_Uc" {
    var lv: c.Sf_F_Uc = undefined;
    try testing.expectSize(c.Sf_F_Uc, 8);
    try testing.expectAlign(c.Sf_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:30749:30769
// struct  Sf_F_Ui  {
//   struct empty v1;
//   float v2;
//   unsigned int v3;
// };

test "Sf_F_Ui" {
    var lv: c.Sf_F_Ui = undefined;
    try testing.expectSize(c.Sf_F_Ui, 8);
    try testing.expectAlign(c.Sf_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:30774:30794
// struct  Sf_F_Ul  {
//   struct empty v1;
//   float v2;
//   __tsu64 v3;
// };

test "Sf_F_Ul" {
    var lv: c.Sf_F_Ul = undefined;
    try testing.expectSize(c.Sf_F_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:30799:30819
// struct  Sf_F_Us  {
//   struct empty v1;
//   float v2;
//   unsigned short v3;
// };

test "Sf_F_Us" {
    var lv: c.Sf_F_Us = undefined;
    try testing.expectSize(c.Sf_F_Us, 8);
    try testing.expectAlign(c.Sf_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:30824:30844
// struct  Sf_F_Vp  {
//   struct empty v1;
//   float v2;
//   void *v3;
// };

test "Sf_F_Vp" {
    var lv: c.Sf_F_Vp = undefined;
    try testing.expectSize(c.Sf_F_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:30849:30867
// struct  Sf_I  {
//   struct empty v1;
//   int v2;
// };

test "Sf_I" {
    var lv: c.Sf_I = undefined;
    try testing.expectSize(c.Sf_I, 4);
    try testing.expectAlign(c.Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:31596:31616
// struct  Sf_I_C  {
//   struct empty v1;
//   int v2;
//   char v3;
// };

test "Sf_I_C" {
    var lv: c.Sf_I_C = undefined;
    try testing.expectSize(c.Sf_I_C, 8);
    try testing.expectAlign(c.Sf_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:31621:31641
// struct  Sf_I_D  {
//   struct empty v1;
//   int v2;
//   double v3;
// };

test "Sf_I_D" {
    var lv: c.Sf_I_D = undefined;
    try testing.expectSize(c.Sf_I_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:31646:31666
// struct  Sf_I_F  {
//   struct empty v1;
//   int v2;
//   float v3;
// };

test "Sf_I_F" {
    var lv: c.Sf_I_F = undefined;
    try testing.expectSize(c.Sf_I_F, 8);
    try testing.expectAlign(c.Sf_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:31671:31691
// struct  Sf_I_I  {
//   struct empty v1;
//   int v2;
//   int v3;
// };

test "Sf_I_I" {
    var lv: c.Sf_I_I = undefined;
    try testing.expectSize(c.Sf_I_I, 8);
    try testing.expectAlign(c.Sf_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:31696:31716
// struct  Sf_I_Ip  {
//   struct empty v1;
//   int v2;
//   int *v3;
// };

test "Sf_I_Ip" {
    var lv: c.Sf_I_Ip = undefined;
    try testing.expectSize(c.Sf_I_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:31721:31741
// struct  Sf_I_L  {
//   struct empty v1;
//   int v2;
//   __tsi64 v3;
// };

test "Sf_I_L" {
    var lv: c.Sf_I_L = undefined;
    try testing.expectSize(c.Sf_I_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:31746:31766
// struct  Sf_I_S  {
//   struct empty v1;
//   int v2;
//   short v3;
// };

test "Sf_I_S" {
    var lv: c.Sf_I_S = undefined;
    try testing.expectSize(c.Sf_I_S, 8);
    try testing.expectAlign(c.Sf_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:31771:31791
// struct  Sf_I_Sf  {
//   struct empty v1;
//   int v2;
//   struct empty v3;
// };

test "Sf_I_Sf" {
    var lv: c.Sf_I_Sf = undefined;
    try testing.expectSize(c.Sf_I_Sf, 4);
    try testing.expectAlign(c.Sf_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:31796:31816
// struct  Sf_I_Uc  {
//   struct empty v1;
//   int v2;
//   unsigned char v3;
// };

test "Sf_I_Uc" {
    var lv: c.Sf_I_Uc = undefined;
    try testing.expectSize(c.Sf_I_Uc, 8);
    try testing.expectAlign(c.Sf_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:31821:31841
// struct  Sf_I_Ui  {
//   struct empty v1;
//   int v2;
//   unsigned int v3;
// };

test "Sf_I_Ui" {
    var lv: c.Sf_I_Ui = undefined;
    try testing.expectSize(c.Sf_I_Ui, 8);
    try testing.expectAlign(c.Sf_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:31846:31866
// struct  Sf_I_Ul  {
//   struct empty v1;
//   int v2;
//   __tsu64 v3;
// };

test "Sf_I_Ul" {
    var lv: c.Sf_I_Ul = undefined;
    try testing.expectSize(c.Sf_I_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:31871:31891
// struct  Sf_I_Us  {
//   struct empty v1;
//   int v2;
//   unsigned short v3;
// };

test "Sf_I_Us" {
    var lv: c.Sf_I_Us = undefined;
    try testing.expectSize(c.Sf_I_Us, 8);
    try testing.expectAlign(c.Sf_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:31896:31916
// struct  Sf_I_Vp  {
//   struct empty v1;
//   int v2;
//   void *v3;
// };

test "Sf_I_Vp" {
    var lv: c.Sf_I_Vp = undefined;
    try testing.expectSize(c.Sf_I_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:31921:31939
// struct  Sf_Ip  {
//   struct empty v1;
//   int *v2;
// };

test "Sf_Ip" {
    var lv: c.Sf_Ip = undefined;
    try testing.expectSize(c.Sf_Ip, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:32668:32688
// struct  Sf_Ip_C  {
//   struct empty v1;
//   int *v2;
//   char v3;
// };

test "Sf_Ip_C" {
    var lv: c.Sf_Ip_C = undefined;
    try testing.expectSize(c.Sf_Ip_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32693:32713
// struct  Sf_Ip_D  {
//   struct empty v1;
//   int *v2;
//   double v3;
// };

test "Sf_Ip_D" {
    var lv: c.Sf_Ip_D = undefined;
    try testing.expectSize(c.Sf_Ip_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32718:32738
// struct  Sf_Ip_F  {
//   struct empty v1;
//   int *v2;
//   float v3;
// };

test "Sf_Ip_F" {
    var lv: c.Sf_Ip_F = undefined;
    try testing.expectSize(c.Sf_Ip_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32743:32763
// struct  Sf_Ip_I  {
//   struct empty v1;
//   int *v2;
//   int v3;
// };

test "Sf_Ip_I" {
    var lv: c.Sf_Ip_I = undefined;
    try testing.expectSize(c.Sf_Ip_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32768:32788
// struct  Sf_Ip_Ip  {
//   struct empty v1;
//   int *v2;
//   int *v3;
// };

test "Sf_Ip_Ip" {
    var lv: c.Sf_Ip_Ip = undefined;
    try testing.expectSize(c.Sf_Ip_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32793:32813
// struct  Sf_Ip_L  {
//   struct empty v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Sf_Ip_L" {
    var lv: c.Sf_Ip_L = undefined;
    try testing.expectSize(c.Sf_Ip_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32818:32838
// struct  Sf_Ip_S  {
//   struct empty v1;
//   int *v2;
//   short v3;
// };

test "Sf_Ip_S" {
    var lv: c.Sf_Ip_S = undefined;
    try testing.expectSize(c.Sf_Ip_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32843:32863
// struct  Sf_Ip_Sf  {
//   struct empty v1;
//   int *v2;
//   struct empty v3;
// };

test "Sf_Ip_Sf" {
    var lv: c.Sf_Ip_Sf = undefined;
    try testing.expectSize(c.Sf_Ip_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32868:32888
// struct  Sf_Ip_Uc  {
//   struct empty v1;
//   int *v2;
//   unsigned char v3;
// };

test "Sf_Ip_Uc" {
    var lv: c.Sf_Ip_Uc = undefined;
    try testing.expectSize(c.Sf_Ip_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32893:32913
// struct  Sf_Ip_Ui  {
//   struct empty v1;
//   int *v2;
//   unsigned int v3;
// };

test "Sf_Ip_Ui" {
    var lv: c.Sf_Ip_Ui = undefined;
    try testing.expectSize(c.Sf_Ip_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32918:32938
// struct  Sf_Ip_Ul  {
//   struct empty v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Sf_Ip_Ul" {
    var lv: c.Sf_Ip_Ul = undefined;
    try testing.expectSize(c.Sf_Ip_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32943:32963
// struct  Sf_Ip_Us  {
//   struct empty v1;
//   int *v2;
//   unsigned short v3;
// };

test "Sf_Ip_Us" {
    var lv: c.Sf_Ip_Us = undefined;
    try testing.expectSize(c.Sf_Ip_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32968:32988
// struct  Sf_Ip_Vp  {
//   struct empty v1;
//   int *v2;
//   void *v3;
// };

test "Sf_Ip_Vp" {
    var lv: c.Sf_Ip_Vp = undefined;
    try testing.expectSize(c.Sf_Ip_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:32993:33011
// struct  Sf_L  {
//   struct empty v1;
//   __tsi64 v2;
// };

test "Sf_L" {
    var lv: c.Sf_L = undefined;
    try testing.expectSize(c.Sf_L, 8);
    try testing.expectAlign(c.Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:33740:33760
// struct  Sf_L_C  {
//   struct empty v1;
//   __tsi64 v2;
//   char v3;
// };

test "Sf_L_C" {
    var lv: c.Sf_L_C = undefined;
    try testing.expectSize(c.Sf_L_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:33765:33785
// struct  Sf_L_D  {
//   struct empty v1;
//   __tsi64 v2;
//   double v3;
// };

test "Sf_L_D" {
    var lv: c.Sf_L_D = undefined;
    try testing.expectSize(c.Sf_L_D, 16);
    try testing.expectAlign(c.Sf_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:33790:33810
// struct  Sf_L_F  {
//   struct empty v1;
//   __tsi64 v2;
//   float v3;
// };

test "Sf_L_F" {
    var lv: c.Sf_L_F = undefined;
    try testing.expectSize(c.Sf_L_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:33815:33835
// struct  Sf_L_I  {
//   struct empty v1;
//   __tsi64 v2;
//   int v3;
// };

test "Sf_L_I" {
    var lv: c.Sf_L_I = undefined;
    try testing.expectSize(c.Sf_L_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:33840:33860
// struct  Sf_L_Ip  {
//   struct empty v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Sf_L_Ip" {
    var lv: c.Sf_L_Ip = undefined;
    try testing.expectSize(c.Sf_L_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:33865:33885
// struct  Sf_L_L  {
//   struct empty v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Sf_L_L" {
    var lv: c.Sf_L_L = undefined;
    try testing.expectSize(c.Sf_L_L, 16);
    try testing.expectAlign(c.Sf_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:33890:33910
// struct  Sf_L_S  {
//   struct empty v1;
//   __tsi64 v2;
//   short v3;
// };

test "Sf_L_S" {
    var lv: c.Sf_L_S = undefined;
    try testing.expectSize(c.Sf_L_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:33915:33935
// struct  Sf_L_Sf  {
//   struct empty v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Sf_L_Sf" {
    var lv: c.Sf_L_Sf = undefined;
    try testing.expectSize(c.Sf_L_Sf, 8);
    try testing.expectAlign(c.Sf_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:33940:33960
// struct  Sf_L_Uc  {
//   struct empty v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Sf_L_Uc" {
    var lv: c.Sf_L_Uc = undefined;
    try testing.expectSize(c.Sf_L_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:33965:33985
// struct  Sf_L_Ui  {
//   struct empty v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Sf_L_Ui" {
    var lv: c.Sf_L_Ui = undefined;
    try testing.expectSize(c.Sf_L_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:33990:34010
// struct  Sf_L_Ul  {
//   struct empty v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Sf_L_Ul" {
    var lv: c.Sf_L_Ul = undefined;
    try testing.expectSize(c.Sf_L_Ul, 16);
    try testing.expectAlign(c.Sf_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:34015:34035
// struct  Sf_L_Us  {
//   struct empty v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Sf_L_Us" {
    var lv: c.Sf_L_Us = undefined;
    try testing.expectSize(c.Sf_L_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:34040:34060
// struct  Sf_L_Vp  {
//   struct empty v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Sf_L_Vp" {
    var lv: c.Sf_L_Vp = undefined;
    try testing.expectSize(c.Sf_L_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:34065:34083
// struct  Sf_S  {
//   struct empty v1;
//   short v2;
// };

test "Sf_S" {
    var lv: c.Sf_S = undefined;
    try testing.expectSize(c.Sf_S, 2);
    try testing.expectAlign(c.Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:34812:34832
// struct  Sf_S_C  {
//   struct empty v1;
//   short v2;
//   char v3;
// };

test "Sf_S_C" {
    var lv: c.Sf_S_C = undefined;
    try testing.expectSize(c.Sf_S_C, 4);
    try testing.expectAlign(c.Sf_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:34837:34857
// struct  Sf_S_D  {
//   struct empty v1;
//   short v2;
//   double v3;
// };

test "Sf_S_D" {
    var lv: c.Sf_S_D = undefined;
    try testing.expectSize(c.Sf_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:34862:34882
// struct  Sf_S_F  {
//   struct empty v1;
//   short v2;
//   float v3;
// };

test "Sf_S_F" {
    var lv: c.Sf_S_F = undefined;
    try testing.expectSize(c.Sf_S_F, 8);
    try testing.expectAlign(c.Sf_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:34887:34907
// struct  Sf_S_I  {
//   struct empty v1;
//   short v2;
//   int v3;
// };

test "Sf_S_I" {
    var lv: c.Sf_S_I = undefined;
    try testing.expectSize(c.Sf_S_I, 8);
    try testing.expectAlign(c.Sf_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:34912:34932
// struct  Sf_S_Ip  {
//   struct empty v1;
//   short v2;
//   int *v3;
// };

test "Sf_S_Ip" {
    var lv: c.Sf_S_Ip = undefined;
    try testing.expectSize(c.Sf_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:34937:34957
// struct  Sf_S_L  {
//   struct empty v1;
//   short v2;
//   __tsi64 v3;
// };

test "Sf_S_L" {
    var lv: c.Sf_S_L = undefined;
    try testing.expectSize(c.Sf_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:34962:34982
// struct  Sf_S_S  {
//   struct empty v1;
//   short v2;
//   short v3;
// };

test "Sf_S_S" {
    var lv: c.Sf_S_S = undefined;
    try testing.expectSize(c.Sf_S_S, 4);
    try testing.expectAlign(c.Sf_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:34987:35007
// struct  Sf_S_Sf  {
//   struct empty v1;
//   short v2;
//   struct empty v3;
// };

test "Sf_S_Sf" {
    var lv: c.Sf_S_Sf = undefined;
    try testing.expectSize(c.Sf_S_Sf, 2);
    try testing.expectAlign(c.Sf_S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:35012:35032
// struct  Sf_S_Uc  {
//   struct empty v1;
//   short v2;
//   unsigned char v3;
// };

test "Sf_S_Uc" {
    var lv: c.Sf_S_Uc = undefined;
    try testing.expectSize(c.Sf_S_Uc, 4);
    try testing.expectAlign(c.Sf_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:35037:35057
// struct  Sf_S_Ui  {
//   struct empty v1;
//   short v2;
//   unsigned int v3;
// };

test "Sf_S_Ui" {
    var lv: c.Sf_S_Ui = undefined;
    try testing.expectSize(c.Sf_S_Ui, 8);
    try testing.expectAlign(c.Sf_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:35062:35082
// struct  Sf_S_Ul  {
//   struct empty v1;
//   short v2;
//   __tsu64 v3;
// };

test "Sf_S_Ul" {
    var lv: c.Sf_S_Ul = undefined;
    try testing.expectSize(c.Sf_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:35087:35107
// struct  Sf_S_Us  {
//   struct empty v1;
//   short v2;
//   unsigned short v3;
// };

test "Sf_S_Us" {
    var lv: c.Sf_S_Us = undefined;
    try testing.expectSize(c.Sf_S_Us, 4);
    try testing.expectAlign(c.Sf_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:35112:35132
// struct  Sf_S_Vp  {
//   struct empty v1;
//   short v2;
//   void *v3;
// };

test "Sf_S_Vp" {
    var lv: c.Sf_S_Vp = undefined;
    try testing.expectSize(c.Sf_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:35137:35155
// struct  Sf_Sf  {
//   struct empty v1;
//   struct empty v2;
// };

test "Sf_Sf" {
    var lv: c.Sf_Sf = undefined;
    try testing.expectSize(c.Sf_Sf, 0);
    try testing.expectAlign(c.Sf_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:35884:35904
// struct  Sf_Sf_C  {
//   struct empty v1;
//   struct empty v2;
//   char v3;
// };

test "Sf_Sf_C" {
    var lv: c.Sf_Sf_C = undefined;
    try testing.expectSize(c.Sf_Sf_C, 1);
    try testing.expectAlign(c.Sf_Sf_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:35909:35929
// struct  Sf_Sf_D  {
//   struct empty v1;
//   struct empty v2;
//   double v3;
// };

test "Sf_Sf_D" {
    var lv: c.Sf_Sf_D = undefined;
    try testing.expectSize(c.Sf_Sf_D, 8);
    try testing.expectAlign(c.Sf_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:35934:35954
// struct  Sf_Sf_F  {
//   struct empty v1;
//   struct empty v2;
//   float v3;
// };

test "Sf_Sf_F" {
    var lv: c.Sf_Sf_F = undefined;
    try testing.expectSize(c.Sf_Sf_F, 4);
    try testing.expectAlign(c.Sf_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:35959:35979
// struct  Sf_Sf_I  {
//   struct empty v1;
//   struct empty v2;
//   int v3;
// };

test "Sf_Sf_I" {
    var lv: c.Sf_Sf_I = undefined;
    try testing.expectSize(c.Sf_Sf_I, 4);
    try testing.expectAlign(c.Sf_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:35984:36004
// struct  Sf_Sf_Ip  {
//   struct empty v1;
//   struct empty v2;
//   int *v3;
// };

test "Sf_Sf_Ip" {
    var lv: c.Sf_Sf_Ip = undefined;
    try testing.expectSize(c.Sf_Sf_Ip, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:36009:36029
// struct  Sf_Sf_L  {
//   struct empty v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Sf_Sf_L" {
    var lv: c.Sf_Sf_L = undefined;
    try testing.expectSize(c.Sf_Sf_L, 8);
    try testing.expectAlign(c.Sf_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:36034:36054
// struct  Sf_Sf_S  {
//   struct empty v1;
//   struct empty v2;
//   short v3;
// };

test "Sf_Sf_S" {
    var lv: c.Sf_Sf_S = undefined;
    try testing.expectSize(c.Sf_Sf_S, 2);
    try testing.expectAlign(c.Sf_Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:36059:36079
// struct  Sf_Sf_Sf  {
//   struct empty v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Sf_Sf_Sf" {
    var lv: c.Sf_Sf_Sf = undefined;
    try testing.expectSize(c.Sf_Sf_Sf, 0);
    try testing.expectAlign(c.Sf_Sf_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:36084:36104
// struct  Sf_Sf_Uc  {
//   struct empty v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Sf_Sf_Uc" {
    var lv: c.Sf_Sf_Uc = undefined;
    try testing.expectSize(c.Sf_Sf_Uc, 1);
    try testing.expectAlign(c.Sf_Sf_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:36109:36129
// struct  Sf_Sf_Ui  {
//   struct empty v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Sf_Sf_Ui" {
    var lv: c.Sf_Sf_Ui = undefined;
    try testing.expectSize(c.Sf_Sf_Ui, 4);
    try testing.expectAlign(c.Sf_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:36134:36154
// struct  Sf_Sf_Ul  {
//   struct empty v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Sf_Sf_Ul" {
    var lv: c.Sf_Sf_Ul = undefined;
    try testing.expectSize(c.Sf_Sf_Ul, 8);
    try testing.expectAlign(c.Sf_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:36159:36179
// struct  Sf_Sf_Us  {
//   struct empty v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Sf_Sf_Us" {
    var lv: c.Sf_Sf_Us = undefined;
    try testing.expectSize(c.Sf_Sf_Us, 2);
    try testing.expectAlign(c.Sf_Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:36184:36204
// struct  Sf_Sf_Vp  {
//   struct empty v1;
//   struct empty v2;
//   void *v3;
// };

test "Sf_Sf_Vp" {
    var lv: c.Sf_Sf_Vp = undefined;
    try testing.expectSize(c.Sf_Sf_Vp, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}

// From CT_Snen_xab.c:36209:36227
// struct  Sf_Uc  {
//   struct empty v1;
//   unsigned char v2;
// };

test "Sf_Uc" {
    var lv: c.Sf_Uc = undefined;
    try testing.expectSize(c.Sf_Uc, 1);
    try testing.expectAlign(c.Sf_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:36956:36976
// struct  Sf_Uc_C  {
//   struct empty v1;
//   unsigned char v2;
//   char v3;
// };

test "Sf_Uc_C" {
    var lv: c.Sf_Uc_C = undefined;
    try testing.expectSize(c.Sf_Uc_C, 2);
    try testing.expectAlign(c.Sf_Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

// From CT_Snen_xab.c:36981:37001
// struct  Sf_Uc_D  {
//   struct empty v1;
//   unsigned char v2;
//   double v3;
// };

test "Sf_Uc_D" {
    var lv: c.Sf_Uc_D = undefined;
    try testing.expectSize(c.Sf_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:37006:37026
// struct  Sf_Uc_F  {
//   struct empty v1;
//   unsigned char v2;
//   float v3;
// };

test "Sf_Uc_F" {
    var lv: c.Sf_Uc_F = undefined;
    try testing.expectSize(c.Sf_Uc_F, 8);
    try testing.expectAlign(c.Sf_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:37031:37051
// struct  Sf_Uc_I  {
//   struct empty v1;
//   unsigned char v2;
//   int v3;
// };

test "Sf_Uc_I" {
    var lv: c.Sf_Uc_I = undefined;
    try testing.expectSize(c.Sf_Uc_I, 8);
    try testing.expectAlign(c.Sf_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:37056:37076
// struct  Sf_Uc_Ip  {
//   struct empty v1;
//   unsigned char v2;
//   int *v3;
// };

test "Sf_Uc_Ip" {
    var lv: c.Sf_Uc_Ip = undefined;
    try testing.expectSize(c.Sf_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:37081:37101
// struct  Sf_Uc_L  {
//   struct empty v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Sf_Uc_L" {
    var lv: c.Sf_Uc_L = undefined;
    try testing.expectSize(c.Sf_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:37106:37126
// struct  Sf_Uc_S  {
//   struct empty v1;
//   unsigned char v2;
//   short v3;
// };

test "Sf_Uc_S" {
    var lv: c.Sf_Uc_S = undefined;
    try testing.expectSize(c.Sf_Uc_S, 4);
    try testing.expectAlign(c.Sf_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:37131:37151
// struct  Sf_Uc_Sf  {
//   struct empty v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Sf_Uc_Sf" {
    var lv: c.Sf_Uc_Sf = undefined;
    try testing.expectSize(c.Sf_Uc_Sf, 1);
    try testing.expectAlign(c.Sf_Uc_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

// From CT_Snen_xab.c:37156:37176
// struct  Sf_Uc_Uc  {
//   struct empty v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Sf_Uc_Uc" {
    var lv: c.Sf_Uc_Uc = undefined;
    try testing.expectSize(c.Sf_Uc_Uc, 2);
    try testing.expectAlign(c.Sf_Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

// From CT_Snen_xab.c:37181:37201
// struct  Sf_Uc_Ui  {
//   struct empty v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Sf_Uc_Ui" {
    var lv: c.Sf_Uc_Ui = undefined;
    try testing.expectSize(c.Sf_Uc_Ui, 8);
    try testing.expectAlign(c.Sf_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:37206:37226
// struct  Sf_Uc_Ul  {
//   struct empty v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Sf_Uc_Ul" {
    var lv: c.Sf_Uc_Ul = undefined;
    try testing.expectSize(c.Sf_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:37231:37251
// struct  Sf_Uc_Us  {
//   struct empty v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Sf_Uc_Us" {
    var lv: c.Sf_Uc_Us = undefined;
    try testing.expectSize(c.Sf_Uc_Us, 4);
    try testing.expectAlign(c.Sf_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:37256:37276
// struct  Sf_Uc_Vp  {
//   struct empty v1;
//   unsigned char v2;
//   void *v3;
// };

test "Sf_Uc_Vp" {
    var lv: c.Sf_Uc_Vp = undefined;
    try testing.expectSize(c.Sf_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:37281:37299
// struct  Sf_Ui  {
//   struct empty v1;
//   unsigned int v2;
// };

test "Sf_Ui" {
    var lv: c.Sf_Ui = undefined;
    try testing.expectSize(c.Sf_Ui, 4);
    try testing.expectAlign(c.Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:38028:38048
// struct  Sf_Ui_C  {
//   struct empty v1;
//   unsigned int v2;
//   char v3;
// };

test "Sf_Ui_C" {
    var lv: c.Sf_Ui_C = undefined;
    try testing.expectSize(c.Sf_Ui_C, 8);
    try testing.expectAlign(c.Sf_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:38053:38073
// struct  Sf_Ui_D  {
//   struct empty v1;
//   unsigned int v2;
//   double v3;
// };

test "Sf_Ui_D" {
    var lv: c.Sf_Ui_D = undefined;
    try testing.expectSize(c.Sf_Ui_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:38078:38098
// struct  Sf_Ui_F  {
//   struct empty v1;
//   unsigned int v2;
//   float v3;
// };

test "Sf_Ui_F" {
    var lv: c.Sf_Ui_F = undefined;
    try testing.expectSize(c.Sf_Ui_F, 8);
    try testing.expectAlign(c.Sf_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:38103:38123
// struct  Sf_Ui_I  {
//   struct empty v1;
//   unsigned int v2;
//   int v3;
// };

test "Sf_Ui_I" {
    var lv: c.Sf_Ui_I = undefined;
    try testing.expectSize(c.Sf_Ui_I, 8);
    try testing.expectAlign(c.Sf_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:38128:38148
// struct  Sf_Ui_Ip  {
//   struct empty v1;
//   unsigned int v2;
//   int *v3;
// };

test "Sf_Ui_Ip" {
    var lv: c.Sf_Ui_Ip = undefined;
    try testing.expectSize(c.Sf_Ui_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:38153:38173
// struct  Sf_Ui_L  {
//   struct empty v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Sf_Ui_L" {
    var lv: c.Sf_Ui_L = undefined;
    try testing.expectSize(c.Sf_Ui_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:38178:38198
// struct  Sf_Ui_S  {
//   struct empty v1;
//   unsigned int v2;
//   short v3;
// };

test "Sf_Ui_S" {
    var lv: c.Sf_Ui_S = undefined;
    try testing.expectSize(c.Sf_Ui_S, 8);
    try testing.expectAlign(c.Sf_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:38203:38223
// struct  Sf_Ui_Sf  {
//   struct empty v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Sf_Ui_Sf" {
    var lv: c.Sf_Ui_Sf = undefined;
    try testing.expectSize(c.Sf_Ui_Sf, 4);
    try testing.expectAlign(c.Sf_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:38228:38248
// struct  Sf_Ui_Uc  {
//   struct empty v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Sf_Ui_Uc" {
    var lv: c.Sf_Ui_Uc = undefined;
    try testing.expectSize(c.Sf_Ui_Uc, 8);
    try testing.expectAlign(c.Sf_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:38253:38273
// struct  Sf_Ui_Ui  {
//   struct empty v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Sf_Ui_Ui" {
    var lv: c.Sf_Ui_Ui = undefined;
    try testing.expectSize(c.Sf_Ui_Ui, 8);
    try testing.expectAlign(c.Sf_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:38278:38298
// struct  Sf_Ui_Ul  {
//   struct empty v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Sf_Ui_Ul" {
    var lv: c.Sf_Ui_Ul = undefined;
    try testing.expectSize(c.Sf_Ui_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:38303:38323
// struct  Sf_Ui_Us  {
//   struct empty v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Sf_Ui_Us" {
    var lv: c.Sf_Ui_Us = undefined;
    try testing.expectSize(c.Sf_Ui_Us, 8);
    try testing.expectAlign(c.Sf_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:38328:38348
// struct  Sf_Ui_Vp  {
//   struct empty v1;
//   unsigned int v2;
//   void *v3;
// };

test "Sf_Ui_Vp" {
    var lv: c.Sf_Ui_Vp = undefined;
    try testing.expectSize(c.Sf_Ui_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:38353:38371
// struct  Sf_Ul  {
//   struct empty v1;
//   __tsu64 v2;
// };

test "Sf_Ul" {
    var lv: c.Sf_Ul = undefined;
    try testing.expectSize(c.Sf_Ul, 8);
    try testing.expectAlign(c.Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:39100:39120
// struct  Sf_Ul_C  {
//   struct empty v1;
//   __tsu64 v2;
//   char v3;
// };

test "Sf_Ul_C" {
    var lv: c.Sf_Ul_C = undefined;
    try testing.expectSize(c.Sf_Ul_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39125:39145
// struct  Sf_Ul_D  {
//   struct empty v1;
//   __tsu64 v2;
//   double v3;
// };

test "Sf_Ul_D" {
    var lv: c.Sf_Ul_D = undefined;
    try testing.expectSize(c.Sf_Ul_D, 16);
    try testing.expectAlign(c.Sf_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39150:39170
// struct  Sf_Ul_F  {
//   struct empty v1;
//   __tsu64 v2;
//   float v3;
// };

test "Sf_Ul_F" {
    var lv: c.Sf_Ul_F = undefined;
    try testing.expectSize(c.Sf_Ul_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39175:39195
// struct  Sf_Ul_I  {
//   struct empty v1;
//   __tsu64 v2;
//   int v3;
// };

test "Sf_Ul_I" {
    var lv: c.Sf_Ul_I = undefined;
    try testing.expectSize(c.Sf_Ul_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39200:39220
// struct  Sf_Ul_Ip  {
//   struct empty v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Sf_Ul_Ip" {
    var lv: c.Sf_Ul_Ip = undefined;
    try testing.expectSize(c.Sf_Ul_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39225:39245
// struct  Sf_Ul_L  {
//   struct empty v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Sf_Ul_L" {
    var lv: c.Sf_Ul_L = undefined;
    try testing.expectSize(c.Sf_Ul_L, 16);
    try testing.expectAlign(c.Sf_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39250:39270
// struct  Sf_Ul_S  {
//   struct empty v1;
//   __tsu64 v2;
//   short v3;
// };

test "Sf_Ul_S" {
    var lv: c.Sf_Ul_S = undefined;
    try testing.expectSize(c.Sf_Ul_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39275:39295
// struct  Sf_Ul_Sf  {
//   struct empty v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Sf_Ul_Sf" {
    var lv: c.Sf_Ul_Sf = undefined;
    try testing.expectSize(c.Sf_Ul_Sf, 8);
    try testing.expectAlign(c.Sf_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39300:39320
// struct  Sf_Ul_Uc  {
//   struct empty v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Sf_Ul_Uc" {
    var lv: c.Sf_Ul_Uc = undefined;
    try testing.expectSize(c.Sf_Ul_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39325:39345
// struct  Sf_Ul_Ui  {
//   struct empty v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Sf_Ul_Ui" {
    var lv: c.Sf_Ul_Ui = undefined;
    try testing.expectSize(c.Sf_Ul_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39350:39370
// struct  Sf_Ul_Ul  {
//   struct empty v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Sf_Ul_Ul" {
    var lv: c.Sf_Ul_Ul = undefined;
    try testing.expectSize(c.Sf_Ul_Ul, 16);
    try testing.expectAlign(c.Sf_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39375:39395
// struct  Sf_Ul_Us  {
//   struct empty v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Sf_Ul_Us" {
    var lv: c.Sf_Ul_Us = undefined;
    try testing.expectSize(c.Sf_Ul_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39400:39420
// struct  Sf_Ul_Vp  {
//   struct empty v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Sf_Ul_Vp" {
    var lv: c.Sf_Ul_Vp = undefined;
    try testing.expectSize(c.Sf_Ul_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:39425:39443
// struct  Sf_Us  {
//   struct empty v1;
//   unsigned short v2;
// };

test "Sf_Us" {
    var lv: c.Sf_Us = undefined;
    try testing.expectSize(c.Sf_Us, 2);
    try testing.expectAlign(c.Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:40172:40192
// struct  Sf_Us_C  {
//   struct empty v1;
//   unsigned short v2;
//   char v3;
// };

test "Sf_Us_C" {
    var lv: c.Sf_Us_C = undefined;
    try testing.expectSize(c.Sf_Us_C, 4);
    try testing.expectAlign(c.Sf_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:40197:40217
// struct  Sf_Us_D  {
//   struct empty v1;
//   unsigned short v2;
//   double v3;
// };

test "Sf_Us_D" {
    var lv: c.Sf_Us_D = undefined;
    try testing.expectSize(c.Sf_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:40222:40242
// struct  Sf_Us_F  {
//   struct empty v1;
//   unsigned short v2;
//   float v3;
// };

test "Sf_Us_F" {
    var lv: c.Sf_Us_F = undefined;
    try testing.expectSize(c.Sf_Us_F, 8);
    try testing.expectAlign(c.Sf_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:40247:40267
// struct  Sf_Us_I  {
//   struct empty v1;
//   unsigned short v2;
//   int v3;
// };

test "Sf_Us_I" {
    var lv: c.Sf_Us_I = undefined;
    try testing.expectSize(c.Sf_Us_I, 8);
    try testing.expectAlign(c.Sf_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:40272:40292
// struct  Sf_Us_Ip  {
//   struct empty v1;
//   unsigned short v2;
//   int *v3;
// };

test "Sf_Us_Ip" {
    var lv: c.Sf_Us_Ip = undefined;
    try testing.expectSize(c.Sf_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:40297:40317
// struct  Sf_Us_L  {
//   struct empty v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Sf_Us_L" {
    var lv: c.Sf_Us_L = undefined;
    try testing.expectSize(c.Sf_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:40322:40342
// struct  Sf_Us_S  {
//   struct empty v1;
//   unsigned short v2;
//   short v3;
// };

test "Sf_Us_S" {
    var lv: c.Sf_Us_S = undefined;
    try testing.expectSize(c.Sf_Us_S, 4);
    try testing.expectAlign(c.Sf_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:40347:40367
// struct  Sf_Us_Sf  {
//   struct empty v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Sf_Us_Sf" {
    var lv: c.Sf_Us_Sf = undefined;
    try testing.expectSize(c.Sf_Us_Sf, 2);
    try testing.expectAlign(c.Sf_Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:40372:40392
// struct  Sf_Us_Uc  {
//   struct empty v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Sf_Us_Uc" {
    var lv: c.Sf_Us_Uc = undefined;
    try testing.expectSize(c.Sf_Us_Uc, 4);
    try testing.expectAlign(c.Sf_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:40397:40417
// struct  Sf_Us_Ui  {
//   struct empty v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Sf_Us_Ui" {
    var lv: c.Sf_Us_Ui = undefined;
    try testing.expectSize(c.Sf_Us_Ui, 8);
    try testing.expectAlign(c.Sf_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:40422:40442
// struct  Sf_Us_Ul  {
//   struct empty v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Sf_Us_Ul" {
    var lv: c.Sf_Us_Ul = undefined;
    try testing.expectSize(c.Sf_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:40447:40467
// struct  Sf_Us_Us  {
//   struct empty v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Sf_Us_Us" {
    var lv: c.Sf_Us_Us = undefined;
    try testing.expectSize(c.Sf_Us_Us, 4);
    try testing.expectAlign(c.Sf_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:40472:40492
// struct  Sf_Us_Vp  {
//   struct empty v1;
//   unsigned short v2;
//   void *v3;
// };

test "Sf_Us_Vp" {
    var lv: c.Sf_Us_Vp = undefined;
    try testing.expectSize(c.Sf_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:40497:40515
// struct  Sf_Vp  {
//   struct empty v1;
//   void *v2;
// };

test "Sf_Vp" {
    var lv: c.Sf_Vp = undefined;
    try testing.expectSize(c.Sf_Vp, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}

// From CT_Snen_xab.c:41244:41264
// struct  Sf_Vp_C  {
//   struct empty v1;
//   void *v2;
//   char v3;
// };

test "Sf_Vp_C" {
    var lv: c.Sf_Vp_C = undefined;
    try testing.expectSize(c.Sf_Vp_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41269:41289
// struct  Sf_Vp_D  {
//   struct empty v1;
//   void *v2;
//   double v3;
// };

test "Sf_Vp_D" {
    var lv: c.Sf_Vp_D = undefined;
    try testing.expectSize(c.Sf_Vp_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41294:41314
// struct  Sf_Vp_F  {
//   struct empty v1;
//   void *v2;
//   float v3;
// };

test "Sf_Vp_F" {
    var lv: c.Sf_Vp_F = undefined;
    try testing.expectSize(c.Sf_Vp_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41319:41339
// struct  Sf_Vp_I  {
//   struct empty v1;
//   void *v2;
//   int v3;
// };

test "Sf_Vp_I" {
    var lv: c.Sf_Vp_I = undefined;
    try testing.expectSize(c.Sf_Vp_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41344:41364
// struct  Sf_Vp_Ip  {
//   struct empty v1;
//   void *v2;
//   int *v3;
// };

test "Sf_Vp_Ip" {
    var lv: c.Sf_Vp_Ip = undefined;
    try testing.expectSize(c.Sf_Vp_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41369:41389
// struct  Sf_Vp_L  {
//   struct empty v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Sf_Vp_L" {
    var lv: c.Sf_Vp_L = undefined;
    try testing.expectSize(c.Sf_Vp_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41394:41414
// struct  Sf_Vp_S  {
//   struct empty v1;
//   void *v2;
//   short v3;
// };

test "Sf_Vp_S" {
    var lv: c.Sf_Vp_S = undefined;
    try testing.expectSize(c.Sf_Vp_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41419:41439
// struct  Sf_Vp_Sf  {
//   struct empty v1;
//   void *v2;
//   struct empty v3;
// };

test "Sf_Vp_Sf" {
    var lv: c.Sf_Vp_Sf = undefined;
    try testing.expectSize(c.Sf_Vp_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41444:41464
// struct  Sf_Vp_Uc  {
//   struct empty v1;
//   void *v2;
//   unsigned char v3;
// };

test "Sf_Vp_Uc" {
    var lv: c.Sf_Vp_Uc = undefined;
    try testing.expectSize(c.Sf_Vp_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41469:41489
// struct  Sf_Vp_Ui  {
//   struct empty v1;
//   void *v2;
//   unsigned int v3;
// };

test "Sf_Vp_Ui" {
    var lv: c.Sf_Vp_Ui = undefined;
    try testing.expectSize(c.Sf_Vp_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41494:41514
// struct  Sf_Vp_Ul  {
//   struct empty v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Sf_Vp_Ul" {
    var lv: c.Sf_Vp_Ul = undefined;
    try testing.expectSize(c.Sf_Vp_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41519:41539
// struct  Sf_Vp_Us  {
//   struct empty v1;
//   void *v2;
//   unsigned short v3;
// };

test "Sf_Vp_Us" {
    var lv: c.Sf_Vp_Us = undefined;
    try testing.expectSize(c.Sf_Vp_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:41544:41564
// struct  Sf_Vp_Vp  {
//   struct empty v1;
//   void *v2;
//   void *v3;
// };

test "Sf_Vp_Vp" {
    var lv: c.Sf_Vp_Vp = undefined;
    try testing.expectSize(c.Sf_Vp_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:42293:42313
// struct  Uc_C_Sf  {
//   unsigned char v1;
//   char v2;
//   struct empty v3;
// };

test "Uc_C_Sf" {
    var lv: c.Uc_C_Sf = undefined;
    try testing.expectSize(c.Uc_C_Sf, 2);
    try testing.expectAlign(c.Uc_C_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:42318:42338
// struct  Uc_D_Sf  {
//   unsigned char v1;
//   double v2;
//   struct empty v3;
// };

test "Uc_D_Sf" {
    var lv: c.Uc_D_Sf = undefined;
    try testing.expectSize(c.Uc_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:42343:42363
// struct  Uc_F_Sf  {
//   unsigned char v1;
//   float v2;
//   struct empty v3;
// };

test "Uc_F_Sf" {
    var lv: c.Uc_F_Sf = undefined;
    try testing.expectSize(c.Uc_F_Sf, 8);
    try testing.expectAlign(c.Uc_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:42368:42388
// struct  Uc_I_Sf  {
//   unsigned char v1;
//   int v2;
//   struct empty v3;
// };

test "Uc_I_Sf" {
    var lv: c.Uc_I_Sf = undefined;
    try testing.expectSize(c.Uc_I_Sf, 8);
    try testing.expectAlign(c.Uc_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:42393:42413
// struct  Uc_Ip_Sf  {
//   unsigned char v1;
//   int *v2;
//   struct empty v3;
// };

test "Uc_Ip_Sf" {
    var lv: c.Uc_Ip_Sf = undefined;
    try testing.expectSize(c.Uc_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xab.c:42418:42438
// struct  Uc_L_Sf  {
//   unsigned char v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Uc_L_Sf" {
    var lv: c.Uc_L_Sf = undefined;
    try testing.expectSize(c.Uc_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:42443:42463
// struct  Uc_S_Sf  {
//   unsigned char v1;
//   short v2;
//   struct empty v3;
// };

test "Uc_S_Sf" {
    var lv: c.Uc_S_Sf = undefined;
    try testing.expectSize(c.Uc_S_Sf, 4);
    try testing.expectAlign(c.Uc_S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:42468:42486
// struct  Uc_Sf  {
//   unsigned char v1;
//   struct empty v2;
// };

test "Uc_Sf" {
    var lv: c.Uc_Sf = undefined;
    try testing.expectSize(c.Uc_Sf, 1);
    try testing.expectAlign(c.Uc_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From CT_Snen_xab.c:43215:43235
// struct  Uc_Sf_C  {
//   unsigned char v1;
//   struct empty v2;
//   char v3;
// };

test "Uc_Sf_C" {
    var lv: c.Uc_Sf_C = undefined;
    try testing.expectSize(c.Uc_Sf_C, 2);
    try testing.expectAlign(c.Uc_Sf_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

// From CT_Snen_xab.c:43240:43260
// struct  Uc_Sf_D  {
//   unsigned char v1;
//   struct empty v2;
//   double v3;
// };

test "Uc_Sf_D" {
    var lv: c.Uc_Sf_D = undefined;
    try testing.expectSize(c.Uc_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:43265:43285
// struct  Uc_Sf_F  {
//   unsigned char v1;
//   struct empty v2;
//   float v3;
// };

test "Uc_Sf_F" {
    var lv: c.Uc_Sf_F = undefined;
    try testing.expectSize(c.Uc_Sf_F, 8);
    try testing.expectAlign(c.Uc_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:43290:43310
// struct  Uc_Sf_I  {
//   unsigned char v1;
//   struct empty v2;
//   int v3;
// };

test "Uc_Sf_I" {
    var lv: c.Uc_Sf_I = undefined;
    try testing.expectSize(c.Uc_Sf_I, 8);
    try testing.expectAlign(c.Uc_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:43315:43335
// struct  Uc_Sf_Ip  {
//   unsigned char v1;
//   struct empty v2;
//   int *v3;
// };

test "Uc_Sf_Ip" {
    var lv: c.Uc_Sf_Ip = undefined;
    try testing.expectSize(c.Uc_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:43340:43360
// struct  Uc_Sf_L  {
//   unsigned char v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Uc_Sf_L" {
    var lv: c.Uc_Sf_L = undefined;
    try testing.expectSize(c.Uc_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:43365:43385
// struct  Uc_Sf_S  {
//   unsigned char v1;
//   struct empty v2;
//   short v3;
// };

test "Uc_Sf_S" {
    var lv: c.Uc_Sf_S = undefined;
    try testing.expectSize(c.Uc_Sf_S, 4);
    try testing.expectAlign(c.Uc_Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:43390:43410
// struct  Uc_Sf_Sf  {
//   unsigned char v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Uc_Sf_Sf" {
    var lv: c.Uc_Sf_Sf = undefined;
    try testing.expectSize(c.Uc_Sf_Sf, 1);
    try testing.expectAlign(c.Uc_Sf_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

// From CT_Snen_xab.c:43415:43435
// struct  Uc_Sf_Uc  {
//   unsigned char v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Uc_Sf_Uc" {
    var lv: c.Uc_Sf_Uc = undefined;
    try testing.expectSize(c.Uc_Sf_Uc, 2);
    try testing.expectAlign(c.Uc_Sf_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}

// From CT_Snen_xab.c:43440:43460
// struct  Uc_Sf_Ui  {
//   unsigned char v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Uc_Sf_Ui" {
    var lv: c.Uc_Sf_Ui = undefined;
    try testing.expectSize(c.Uc_Sf_Ui, 8);
    try testing.expectAlign(c.Uc_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:43465:43485
// struct  Uc_Sf_Ul  {
//   unsigned char v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Uc_Sf_Ul" {
    var lv: c.Uc_Sf_Ul = undefined;
    try testing.expectSize(c.Uc_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:43490:43510
// struct  Uc_Sf_Us  {
//   unsigned char v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Uc_Sf_Us" {
    var lv: c.Uc_Sf_Us = undefined;
    try testing.expectSize(c.Uc_Sf_Us, 4);
    try testing.expectAlign(c.Uc_Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:43515:43535
// struct  Uc_Sf_Vp  {
//   unsigned char v1;
//   struct empty v2;
//   void *v3;
// };

test "Uc_Sf_Vp" {
    var lv: c.Uc_Sf_Vp = undefined;
    try testing.expectSize(c.Uc_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:43540:43560
// struct  Uc_Uc_Sf  {
//   unsigned char v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Uc_Uc_Sf" {
    var lv: c.Uc_Uc_Sf = undefined;
    try testing.expectSize(c.Uc_Uc_Sf, 2);
    try testing.expectAlign(c.Uc_Uc_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:43565:43585
// struct  Uc_Ui_Sf  {
//   unsigned char v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Uc_Ui_Sf" {
    var lv: c.Uc_Ui_Sf = undefined;
    try testing.expectSize(c.Uc_Ui_Sf, 8);
    try testing.expectAlign(c.Uc_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:43590:43610
// struct  Uc_Ul_Sf  {
//   unsigned char v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Uc_Ul_Sf" {
    var lv: c.Uc_Ul_Sf = undefined;
    try testing.expectSize(c.Uc_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:43615:43635
// struct  Uc_Us_Sf  {
//   unsigned char v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Uc_Us_Sf" {
    var lv: c.Uc_Us_Sf = undefined;
    try testing.expectSize(c.Uc_Us_Sf, 4);
    try testing.expectAlign(c.Uc_Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:43640:43660
// struct  Uc_Vp_Sf  {
//   unsigned char v1;
//   void *v2;
//   struct empty v3;
// };

test "Uc_Vp_Sf" {
    var lv: c.Uc_Vp_Sf = undefined;
    try testing.expectSize(c.Uc_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xab.c:44389:44409
// struct  Ui_C_Sf  {
//   unsigned int v1;
//   char v2;
//   struct empty v3;
// };

test "Ui_C_Sf" {
    var lv: c.Ui_C_Sf = undefined;
    try testing.expectSize(c.Ui_C_Sf, 8);
    try testing.expectAlign(c.Ui_C_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From CT_Snen_xab.c:44414:44434
// struct  Ui_D_Sf  {
//   unsigned int v1;
//   double v2;
//   struct empty v3;
// };

test "Ui_D_Sf" {
    var lv: c.Ui_D_Sf = undefined;
    try testing.expectSize(c.Ui_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:44439:44459
// struct  Ui_F_Sf  {
//   unsigned int v1;
//   float v2;
//   struct empty v3;
// };

test "Ui_F_Sf" {
    var lv: c.Ui_F_Sf = undefined;
    try testing.expectSize(c.Ui_F_Sf, 8);
    try testing.expectAlign(c.Ui_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:44464:44484
// struct  Ui_I_Sf  {
//   unsigned int v1;
//   int v2;
//   struct empty v3;
// };

test "Ui_I_Sf" {
    var lv: c.Ui_I_Sf = undefined;
    try testing.expectSize(c.Ui_I_Sf, 8);
    try testing.expectAlign(c.Ui_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:44489:44509
// struct  Ui_Ip_Sf  {
//   unsigned int v1;
//   int *v2;
//   struct empty v3;
// };

test "Ui_Ip_Sf" {
    var lv: c.Ui_Ip_Sf = undefined;
    try testing.expectSize(c.Ui_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xab.c:44514:44534
// struct  Ui_L_Sf  {
//   unsigned int v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Ui_L_Sf" {
    var lv: c.Ui_L_Sf = undefined;
    try testing.expectSize(c.Ui_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:44539:44559
// struct  Ui_S_Sf  {
//   unsigned int v1;
//   short v2;
//   struct empty v3;
// };

test "Ui_S_Sf" {
    var lv: c.Ui_S_Sf = undefined;
    try testing.expectSize(c.Ui_S_Sf, 8);
    try testing.expectAlign(c.Ui_S_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From CT_Snen_xab.c:44564:44582
// struct  Ui_Sf  {
//   unsigned int v1;
//   struct empty v2;
// };

test "Ui_Sf" {
    var lv: c.Ui_Sf = undefined;
    try testing.expectSize(c.Ui_Sf, 4);
    try testing.expectAlign(c.Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From CT_Snen_xab.c:45311:45331
// struct  Ui_Sf_C  {
//   unsigned int v1;
//   struct empty v2;
//   char v3;
// };

test "Ui_Sf_C" {
    var lv: c.Ui_Sf_C = undefined;
    try testing.expectSize(c.Ui_Sf_C, 8);
    try testing.expectAlign(c.Ui_Sf_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:45336:45356
// struct  Ui_Sf_D  {
//   unsigned int v1;
//   struct empty v2;
//   double v3;
// };

test "Ui_Sf_D" {
    var lv: c.Ui_Sf_D = undefined;
    try testing.expectSize(c.Ui_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:45361:45381
// struct  Ui_Sf_F  {
//   unsigned int v1;
//   struct empty v2;
//   float v3;
// };

test "Ui_Sf_F" {
    var lv: c.Ui_Sf_F = undefined;
    try testing.expectSize(c.Ui_Sf_F, 8);
    try testing.expectAlign(c.Ui_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:45386:45406
// struct  Ui_Sf_I  {
//   unsigned int v1;
//   struct empty v2;
//   int v3;
// };

test "Ui_Sf_I" {
    var lv: c.Ui_Sf_I = undefined;
    try testing.expectSize(c.Ui_Sf_I, 8);
    try testing.expectAlign(c.Ui_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:45411:45431
// struct  Ui_Sf_Ip  {
//   unsigned int v1;
//   struct empty v2;
//   int *v3;
// };

test "Ui_Sf_Ip" {
    var lv: c.Ui_Sf_Ip = undefined;
    try testing.expectSize(c.Ui_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:45436:45456
// struct  Ui_Sf_L  {
//   unsigned int v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Ui_Sf_L" {
    var lv: c.Ui_Sf_L = undefined;
    try testing.expectSize(c.Ui_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:45461:45481
// struct  Ui_Sf_S  {
//   unsigned int v1;
//   struct empty v2;
//   short v3;
// };

test "Ui_Sf_S" {
    var lv: c.Ui_Sf_S = undefined;
    try testing.expectSize(c.Ui_Sf_S, 8);
    try testing.expectAlign(c.Ui_Sf_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:45486:45506
// struct  Ui_Sf_Sf  {
//   unsigned int v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Ui_Sf_Sf" {
    var lv: c.Ui_Sf_Sf = undefined;
    try testing.expectSize(c.Ui_Sf_Sf, 4);
    try testing.expectAlign(c.Ui_Sf_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:45511:45531
// struct  Ui_Sf_Uc  {
//   unsigned int v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Ui_Sf_Uc" {
    var lv: c.Ui_Sf_Uc = undefined;
    try testing.expectSize(c.Ui_Sf_Uc, 8);
    try testing.expectAlign(c.Ui_Sf_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:45536:45556
// struct  Ui_Sf_Ui  {
//   unsigned int v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Ui_Sf_Ui" {
    var lv: c.Ui_Sf_Ui = undefined;
    try testing.expectSize(c.Ui_Sf_Ui, 8);
    try testing.expectAlign(c.Ui_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:45561:45581
// struct  Ui_Sf_Ul  {
//   unsigned int v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Ui_Sf_Ul" {
    var lv: c.Ui_Sf_Ul = undefined;
    try testing.expectSize(c.Ui_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:45586:45606
// struct  Ui_Sf_Us  {
//   unsigned int v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Ui_Sf_Us" {
    var lv: c.Ui_Sf_Us = undefined;
    try testing.expectSize(c.Ui_Sf_Us, 8);
    try testing.expectAlign(c.Ui_Sf_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:45611:45631
// struct  Ui_Sf_Vp  {
//   unsigned int v1;
//   struct empty v2;
//   void *v3;
// };

test "Ui_Sf_Vp" {
    var lv: c.Ui_Sf_Vp = undefined;
    try testing.expectSize(c.Ui_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:45636:45656
// struct  Ui_Uc_Sf  {
//   unsigned int v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Ui_Uc_Sf" {
    var lv: c.Ui_Uc_Sf = undefined;
    try testing.expectSize(c.Ui_Uc_Sf, 8);
    try testing.expectAlign(c.Ui_Uc_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From CT_Snen_xab.c:45661:45681
// struct  Ui_Ui_Sf  {
//   unsigned int v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Ui_Ui_Sf" {
    var lv: c.Ui_Ui_Sf = undefined;
    try testing.expectSize(c.Ui_Ui_Sf, 8);
    try testing.expectAlign(c.Ui_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:45686:45706
// struct  Ui_Ul_Sf  {
//   unsigned int v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Ui_Ul_Sf" {
    var lv: c.Ui_Ul_Sf = undefined;
    try testing.expectSize(c.Ui_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:45711:45731
// struct  Ui_Us_Sf  {
//   unsigned int v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Ui_Us_Sf" {
    var lv: c.Ui_Us_Sf = undefined;
    try testing.expectSize(c.Ui_Us_Sf, 8);
    try testing.expectAlign(c.Ui_Us_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From CT_Snen_xab.c:45736:45756
// struct  Ui_Vp_Sf  {
//   unsigned int v1;
//   void *v2;
//   struct empty v3;
// };

test "Ui_Vp_Sf" {
    var lv: c.Ui_Vp_Sf = undefined;
    try testing.expectSize(c.Ui_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xab.c:46485:46505
// struct  Ul_C_Sf  {
//   __tsu64 v1;
//   char v2;
//   struct empty v3;
// };

test "Ul_C_Sf" {
    var lv: c.Ul_C_Sf = undefined;
    try testing.expectSize(c.Ul_C_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From CT_Snen_xab.c:46510:46530
// struct  Ul_D_Sf  {
//   __tsu64 v1;
//   double v2;
//   struct empty v3;
// };

test "Ul_D_Sf" {
    var lv: c.Ul_D_Sf = undefined;
    try testing.expectSize(c.Ul_D_Sf, 16);
    try testing.expectAlign(c.Ul_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From CT_Snen_xab.c:46535:46555
// struct  Ul_F_Sf  {
//   __tsu64 v1;
//   float v2;
//   struct empty v3;
// };

test "Ul_F_Sf" {
    var lv: c.Ul_F_Sf = undefined;
    try testing.expectSize(c.Ul_F_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_F_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From CT_Snen_xab.c:46560:46580
// struct  Ul_I_Sf  {
//   __tsu64 v1;
//   int v2;
//   struct empty v3;
// };

test "Ul_I_Sf" {
    var lv: c.Ul_I_Sf = undefined;
    try testing.expectSize(c.Ul_I_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_I_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From CT_Snen_xab.c:46585:46605
// struct  Ul_Ip_Sf  {
//   __tsu64 v1;
//   int *v2;
//   struct empty v3;
// };

test "Ul_Ip_Sf" {
    var lv: c.Ul_Ip_Sf = undefined;
    try testing.expectSize(c.Ul_Ip_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:46610:46630
// struct  Ul_L_Sf  {
//   __tsu64 v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Ul_L_Sf" {
    var lv: c.Ul_L_Sf = undefined;
    try testing.expectSize(c.Ul_L_Sf, 16);
    try testing.expectAlign(c.Ul_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From CT_Snen_xab.c:46635:46655
// struct  Ul_S_Sf  {
//   __tsu64 v1;
//   short v2;
//   struct empty v3;
// };

test "Ul_S_Sf" {
    var lv: c.Ul_S_Sf = undefined;
    try testing.expectSize(c.Ul_S_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From CT_Snen_xab.c:46660:46678
// struct  Ul_Sf  {
//   __tsu64 v1;
//   struct empty v2;
// };

test "Ul_Sf" {
    var lv: c.Ul_Sf = undefined;
    try testing.expectSize(c.Ul_Sf, 8);
    try testing.expectAlign(c.Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From CT_Snen_xab.c:47407:47427
// struct  Ul_Sf_C  {
//   __tsu64 v1;
//   struct empty v2;
//   char v3;
// };

test "Ul_Sf_C" {
    var lv: c.Ul_Sf_C = undefined;
    try testing.expectSize(c.Ul_Sf_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47432:47452
// struct  Ul_Sf_D  {
//   __tsu64 v1;
//   struct empty v2;
//   double v3;
// };

test "Ul_Sf_D" {
    var lv: c.Ul_Sf_D = undefined;
    try testing.expectSize(c.Ul_Sf_D, 16);
    try testing.expectAlign(c.Ul_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47457:47477
// struct  Ul_Sf_F  {
//   __tsu64 v1;
//   struct empty v2;
//   float v3;
// };

test "Ul_Sf_F" {
    var lv: c.Ul_Sf_F = undefined;
    try testing.expectSize(c.Ul_Sf_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47482:47502
// struct  Ul_Sf_I  {
//   __tsu64 v1;
//   struct empty v2;
//   int v3;
// };

test "Ul_Sf_I" {
    var lv: c.Ul_Sf_I = undefined;
    try testing.expectSize(c.Ul_Sf_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47507:47527
// struct  Ul_Sf_Ip  {
//   __tsu64 v1;
//   struct empty v2;
//   int *v3;
// };

test "Ul_Sf_Ip" {
    var lv: c.Ul_Sf_Ip = undefined;
    try testing.expectSize(c.Ul_Sf_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47532:47552
// struct  Ul_Sf_L  {
//   __tsu64 v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Ul_Sf_L" {
    var lv: c.Ul_Sf_L = undefined;
    try testing.expectSize(c.Ul_Sf_L, 16);
    try testing.expectAlign(c.Ul_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47557:47577
// struct  Ul_Sf_S  {
//   __tsu64 v1;
//   struct empty v2;
//   short v3;
// };

test "Ul_Sf_S" {
    var lv: c.Ul_Sf_S = undefined;
    try testing.expectSize(c.Ul_Sf_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47582:47602
// struct  Ul_Sf_Sf  {
//   __tsu64 v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Ul_Sf_Sf" {
    var lv: c.Ul_Sf_Sf = undefined;
    try testing.expectSize(c.Ul_Sf_Sf, 8);
    try testing.expectAlign(c.Ul_Sf_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47607:47627
// struct  Ul_Sf_Uc  {
//   __tsu64 v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Ul_Sf_Uc" {
    var lv: c.Ul_Sf_Uc = undefined;
    try testing.expectSize(c.Ul_Sf_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47632:47652
// struct  Ul_Sf_Ui  {
//   __tsu64 v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Ul_Sf_Ui" {
    var lv: c.Ul_Sf_Ui = undefined;
    try testing.expectSize(c.Ul_Sf_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47657:47677
// struct  Ul_Sf_Ul  {
//   __tsu64 v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Ul_Sf_Ul" {
    var lv: c.Ul_Sf_Ul = undefined;
    try testing.expectSize(c.Ul_Sf_Ul, 16);
    try testing.expectAlign(c.Ul_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47682:47702
// struct  Ul_Sf_Us  {
//   __tsu64 v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Ul_Sf_Us" {
    var lv: c.Ul_Sf_Us = undefined;
    try testing.expectSize(c.Ul_Sf_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47707:47727
// struct  Ul_Sf_Vp  {
//   __tsu64 v1;
//   struct empty v2;
//   void *v3;
// };

test "Ul_Sf_Vp" {
    var lv: c.Ul_Sf_Vp = undefined;
    try testing.expectSize(c.Ul_Sf_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:47732:47752
// struct  Ul_Uc_Sf  {
//   __tsu64 v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Ul_Uc_Sf" {
    var lv: c.Ul_Uc_Sf = undefined;
    try testing.expectSize(c.Ul_Uc_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From CT_Snen_xab.c:47757:47777
// struct  Ul_Ui_Sf  {
//   __tsu64 v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Ul_Ui_Sf" {
    var lv: c.Ul_Ui_Sf = undefined;
    try testing.expectSize(c.Ul_Ui_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Ui_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From CT_Snen_xab.c:47782:47802
// struct  Ul_Ul_Sf  {
//   __tsu64 v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Ul_Ul_Sf" {
    var lv: c.Ul_Ul_Sf = undefined;
    try testing.expectSize(c.Ul_Ul_Sf, 16);
    try testing.expectAlign(c.Ul_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From CT_Snen_xab.c:47807:47827
// struct  Ul_Us_Sf  {
//   __tsu64 v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Ul_Us_Sf" {
    var lv: c.Ul_Us_Sf = undefined;
    try testing.expectSize(c.Ul_Us_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From CT_Snen_xab.c:47832:47852
// struct  Ul_Vp_Sf  {
//   __tsu64 v1;
//   void *v2;
//   struct empty v3;
// };

test "Ul_Vp_Sf" {
    var lv: c.Ul_Vp_Sf = undefined;
    try testing.expectSize(c.Ul_Vp_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:48581:48601
// struct  Us_C_Sf  {
//   unsigned short v1;
//   char v2;
//   struct empty v3;
// };

test "Us_C_Sf" {
    var lv: c.Us_C_Sf = undefined;
    try testing.expectSize(c.Us_C_Sf, 4);
    try testing.expectAlign(c.Us_C_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From CT_Snen_xab.c:48606:48626
// struct  Us_D_Sf  {
//   unsigned short v1;
//   double v2;
//   struct empty v3;
// };

test "Us_D_Sf" {
    var lv: c.Us_D_Sf = undefined;
    try testing.expectSize(c.Us_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:48631:48651
// struct  Us_F_Sf  {
//   unsigned short v1;
//   float v2;
//   struct empty v3;
// };

test "Us_F_Sf" {
    var lv: c.Us_F_Sf = undefined;
    try testing.expectSize(c.Us_F_Sf, 8);
    try testing.expectAlign(c.Us_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:48656:48676
// struct  Us_I_Sf  {
//   unsigned short v1;
//   int v2;
//   struct empty v3;
// };

test "Us_I_Sf" {
    var lv: c.Us_I_Sf = undefined;
    try testing.expectSize(c.Us_I_Sf, 8);
    try testing.expectAlign(c.Us_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:48681:48701
// struct  Us_Ip_Sf  {
//   unsigned short v1;
//   int *v2;
//   struct empty v3;
// };

test "Us_Ip_Sf" {
    var lv: c.Us_Ip_Sf = undefined;
    try testing.expectSize(c.Us_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xab.c:48706:48726
// struct  Us_L_Sf  {
//   unsigned short v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Us_L_Sf" {
    var lv: c.Us_L_Sf = undefined;
    try testing.expectSize(c.Us_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:48731:48751
// struct  Us_S_Sf  {
//   unsigned short v1;
//   short v2;
//   struct empty v3;
// };

test "Us_S_Sf" {
    var lv: c.Us_S_Sf = undefined;
    try testing.expectSize(c.Us_S_Sf, 4);
    try testing.expectAlign(c.Us_S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:48756:48774
// struct  Us_Sf  {
//   unsigned short v1;
//   struct empty v2;
// };

test "Us_Sf" {
    var lv: c.Us_Sf = undefined;
    try testing.expectSize(c.Us_Sf, 2);
    try testing.expectAlign(c.Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From CT_Snen_xab.c:49503:49523
// struct  Us_Sf_C  {
//   unsigned short v1;
//   struct empty v2;
//   char v3;
// };

test "Us_Sf_C" {
    var lv: c.Us_Sf_C = undefined;
    try testing.expectSize(c.Us_Sf_C, 4);
    try testing.expectAlign(c.Us_Sf_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:49528:49548
// struct  Us_Sf_D  {
//   unsigned short v1;
//   struct empty v2;
//   double v3;
// };

test "Us_Sf_D" {
    var lv: c.Us_Sf_D = undefined;
    try testing.expectSize(c.Us_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:49553:49573
// struct  Us_Sf_F  {
//   unsigned short v1;
//   struct empty v2;
//   float v3;
// };

test "Us_Sf_F" {
    var lv: c.Us_Sf_F = undefined;
    try testing.expectSize(c.Us_Sf_F, 8);
    try testing.expectAlign(c.Us_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:49578:49598
// struct  Us_Sf_I  {
//   unsigned short v1;
//   struct empty v2;
//   int v3;
// };

test "Us_Sf_I" {
    var lv: c.Us_Sf_I = undefined;
    try testing.expectSize(c.Us_Sf_I, 8);
    try testing.expectAlign(c.Us_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:49603:49623
// struct  Us_Sf_Ip  {
//   unsigned short v1;
//   struct empty v2;
//   int *v3;
// };

test "Us_Sf_Ip" {
    var lv: c.Us_Sf_Ip = undefined;
    try testing.expectSize(c.Us_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:49628:49648
// struct  Us_Sf_L  {
//   unsigned short v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Us_Sf_L" {
    var lv: c.Us_Sf_L = undefined;
    try testing.expectSize(c.Us_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:49653:49673
// struct  Us_Sf_S  {
//   unsigned short v1;
//   struct empty v2;
//   short v3;
// };

test "Us_Sf_S" {
    var lv: c.Us_Sf_S = undefined;
    try testing.expectSize(c.Us_Sf_S, 4);
    try testing.expectAlign(c.Us_Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:49678:49698
// struct  Us_Sf_Sf  {
//   unsigned short v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Us_Sf_Sf" {
    var lv: c.Us_Sf_Sf = undefined;
    try testing.expectSize(c.Us_Sf_Sf, 2);
    try testing.expectAlign(c.Us_Sf_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:49703:49723
// struct  Us_Sf_Uc  {
//   unsigned short v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Us_Sf_Uc" {
    var lv: c.Us_Sf_Uc = undefined;
    try testing.expectSize(c.Us_Sf_Uc, 4);
    try testing.expectAlign(c.Us_Sf_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:49728:49748
// struct  Us_Sf_Ui  {
//   unsigned short v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Us_Sf_Ui" {
    var lv: c.Us_Sf_Ui = undefined;
    try testing.expectSize(c.Us_Sf_Ui, 8);
    try testing.expectAlign(c.Us_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:49753:49773
// struct  Us_Sf_Ul  {
//   unsigned short v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Us_Sf_Ul" {
    var lv: c.Us_Sf_Ul = undefined;
    try testing.expectSize(c.Us_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:49778:49798
// struct  Us_Sf_Us  {
//   unsigned short v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Us_Sf_Us" {
    var lv: c.Us_Sf_Us = undefined;
    try testing.expectSize(c.Us_Sf_Us, 4);
    try testing.expectAlign(c.Us_Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From CT_Snen_xab.c:49803:49823
// struct  Us_Sf_Vp  {
//   unsigned short v1;
//   struct empty v2;
//   void *v3;
// };

test "Us_Sf_Vp" {
    var lv: c.Us_Sf_Vp = undefined;
    try testing.expectSize(c.Us_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:49828:49848
// struct  Us_Uc_Sf  {
//   unsigned short v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Us_Uc_Sf" {
    var lv: c.Us_Uc_Sf = undefined;
    try testing.expectSize(c.Us_Uc_Sf, 4);
    try testing.expectAlign(c.Us_Uc_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From CT_Snen_xab.c:49853:49873
// struct  Us_Ui_Sf  {
//   unsigned short v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Us_Ui_Sf" {
    var lv: c.Us_Ui_Sf = undefined;
    try testing.expectSize(c.Us_Ui_Sf, 8);
    try testing.expectAlign(c.Us_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From CT_Snen_xab.c:49878:49898
// struct  Us_Ul_Sf  {
//   unsigned short v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Us_Ul_Sf" {
    var lv: c.Us_Ul_Sf = undefined;
    try testing.expectSize(c.Us_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:49903:49923
// struct  Us_Us_Sf  {
//   unsigned short v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Us_Us_Sf" {
    var lv: c.Us_Us_Sf = undefined;
    try testing.expectSize(c.Us_Us_Sf, 4);
    try testing.expectAlign(c.Us_Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From CT_Snen_xab.c:49928:49948
// struct  Us_Vp_Sf  {
//   unsigned short v1;
//   void *v2;
//   struct empty v3;
// };

test "Us_Vp_Sf" {
    var lv: c.Us_Vp_Sf = undefined;
    try testing.expectSize(c.Us_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xab.c:50677:50697
// struct  Vp_C_Sf  {
//   void *v1;
//   char v2;
//   struct empty v3;
// };

test "Vp_C_Sf" {
    var lv: c.Vp_C_Sf = undefined;
    try testing.expectSize(c.Vp_C_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From CT_Snen_xab.c:50702:50722
// struct  Vp_D_Sf  {
//   void *v1;
//   double v2;
//   struct empty v3;
// };

test "Vp_D_Sf" {
    var lv: c.Vp_D_Sf = undefined;
    try testing.expectSize(c.Vp_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:50727:50747
// struct  Vp_F_Sf  {
//   void *v1;
//   float v2;
//   struct empty v3;
// };

test "Vp_F_Sf" {
    var lv: c.Vp_F_Sf = undefined;
    try testing.expectSize(c.Vp_F_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_F_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From CT_Snen_xab.c:50752:50772
// struct  Vp_I_Sf  {
//   void *v1;
//   int v2;
//   struct empty v3;
// };

test "Vp_I_Sf" {
    var lv: c.Vp_I_Sf = undefined;
    try testing.expectSize(c.Vp_I_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_I_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From CT_Snen_xab.c:50777:50797
// struct  Vp_Ip_Sf  {
//   void *v1;
//   int *v2;
//   struct empty v3;
// };

test "Vp_Ip_Sf" {
    var lv: c.Vp_Ip_Sf = undefined;
    try testing.expectSize(c.Vp_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From CT_Snen_xab.c:50802:50822
// struct  Vp_L_Sf  {
//   void *v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Vp_L_Sf" {
    var lv: c.Vp_L_Sf = undefined;
    try testing.expectSize(c.Vp_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:50827:50847
// struct  Vp_S_Sf  {
//   void *v1;
//   short v2;
//   struct empty v3;
// };

test "Vp_S_Sf" {
    var lv: c.Vp_S_Sf = undefined;
    try testing.expectSize(c.Vp_S_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From CT_Snen_xab.c:50852:50870
// struct  Vp_Sf  {
//   void *v1;
//   struct empty v2;
// };

test "Vp_Sf" {
    var lv: c.Vp_Sf = undefined;
    try testing.expectSize(c.Vp_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51599:51619
// struct  Vp_Sf_C  {
//   void *v1;
//   struct empty v2;
//   char v3;
// };

test "Vp_Sf_C" {
    var lv: c.Vp_Sf_C = undefined;
    try testing.expectSize(c.Vp_Sf_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51624:51644
// struct  Vp_Sf_D  {
//   void *v1;
//   struct empty v2;
//   double v3;
// };

test "Vp_Sf_D" {
    var lv: c.Vp_Sf_D = undefined;
    try testing.expectSize(c.Vp_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51649:51669
// struct  Vp_Sf_F  {
//   void *v1;
//   struct empty v2;
//   float v3;
// };

test "Vp_Sf_F" {
    var lv: c.Vp_Sf_F = undefined;
    try testing.expectSize(c.Vp_Sf_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51674:51694
// struct  Vp_Sf_I  {
//   void *v1;
//   struct empty v2;
//   int v3;
// };

test "Vp_Sf_I" {
    var lv: c.Vp_Sf_I = undefined;
    try testing.expectSize(c.Vp_Sf_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51699:51719
// struct  Vp_Sf_Ip  {
//   void *v1;
//   struct empty v2;
//   int *v3;
// };

test "Vp_Sf_Ip" {
    var lv: c.Vp_Sf_Ip = undefined;
    try testing.expectSize(c.Vp_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51724:51744
// struct  Vp_Sf_L  {
//   void *v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Vp_Sf_L" {
    var lv: c.Vp_Sf_L = undefined;
    try testing.expectSize(c.Vp_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51749:51769
// struct  Vp_Sf_S  {
//   void *v1;
//   struct empty v2;
//   short v3;
// };

test "Vp_Sf_S" {
    var lv: c.Vp_Sf_S = undefined;
    try testing.expectSize(c.Vp_Sf_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51774:51794
// struct  Vp_Sf_Sf  {
//   void *v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Vp_Sf_Sf" {
    var lv: c.Vp_Sf_Sf = undefined;
    try testing.expectSize(c.Vp_Sf_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Vp_Sf_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51799:51819
// struct  Vp_Sf_Uc  {
//   void *v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Vp_Sf_Uc" {
    var lv: c.Vp_Sf_Uc = undefined;
    try testing.expectSize(c.Vp_Sf_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51824:51844
// struct  Vp_Sf_Ui  {
//   void *v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Vp_Sf_Ui" {
    var lv: c.Vp_Sf_Ui = undefined;
    try testing.expectSize(c.Vp_Sf_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51849:51869
// struct  Vp_Sf_Ul  {
//   void *v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Vp_Sf_Ul" {
    var lv: c.Vp_Sf_Ul = undefined;
    try testing.expectSize(c.Vp_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51874:51894
// struct  Vp_Sf_Us  {
//   void *v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Vp_Sf_Us" {
    var lv: c.Vp_Sf_Us = undefined;
    try testing.expectSize(c.Vp_Sf_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51899:51919
// struct  Vp_Sf_Vp  {
//   void *v1;
//   struct empty v2;
//   void *v3;
// };

test "Vp_Sf_Vp" {
    var lv: c.Vp_Sf_Vp = undefined;
    try testing.expectSize(c.Vp_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From CT_Snen_xab.c:51924:51944
// struct  Vp_Uc_Sf  {
//   void *v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Vp_Uc_Sf" {
    var lv: c.Vp_Uc_Sf = undefined;
    try testing.expectSize(c.Vp_Uc_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From CT_Snen_xab.c:51949:51969
// struct  Vp_Ui_Sf  {
//   void *v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Vp_Ui_Sf" {
    var lv: c.Vp_Ui_Sf = undefined;
    try testing.expectSize(c.Vp_Ui_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ui_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From CT_Snen_xab.c:51974:51994
// struct  Vp_Ul_Sf  {
//   void *v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Vp_Ul_Sf" {
    var lv: c.Vp_Ul_Sf = undefined;
    try testing.expectSize(c.Vp_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From CT_Snen_xab.c:51999:52019
// struct  Vp_Us_Sf  {
//   void *v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Vp_Us_Sf" {
    var lv: c.Vp_Us_Sf = undefined;
    try testing.expectSize(c.Vp_Us_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From CT_Snen_xab.c:52024:52044
// struct  Vp_Vp_Sf  {
//   void *v1;
//   void *v2;
//   struct empty v3;
// };

test "Vp_Vp_Sf" {
    var lv: c.Vp_Vp_Sf = undefined;
    try testing.expectSize(c.Vp_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
