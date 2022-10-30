const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xaz.h");
});

// From T_Snnn_xaz.c:659:679
// struct  L_Ui_C  {
//   __tsi64 v1;
//   unsigned int v2;
//   char v3;
// };

test "L_Ui_C" {
    var lv: c.L_Ui_C = undefined;
    try testing.expectSize(c.L_Ui_C, 16);
    try testing.expectAlign(c.L_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
    try testing.expectOk(c.recv_L_Ui_C(.{ .v1 = 22229, .v2 = 18392, .v3 = 126 }));
}
// From T_Snnn_xaz.c:684:704
// struct  L_Ui_D  {
//   __tsi64 v1;
//   unsigned int v2;
//   double v3;
// };

test "L_Ui_D" {
    var lv: c.L_Ui_D = undefined;
    try testing.expectSize(c.L_Ui_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Ui_D(.{ .v1 = 4364, .v2 = 4043, .v3 = 27370 }));
}
// From T_Snnn_xaz.c:709:729
// struct  L_Ui_F  {
//   __tsi64 v1;
//   unsigned int v2;
//   float v3;
// };

test "L_Ui_F" {
    var lv: c.L_Ui_F = undefined;
    try testing.expectSize(c.L_Ui_F, 16);
    try testing.expectAlign(c.L_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
    try testing.expectOk(c.recv_L_Ui_F(.{ .v1 = 15560, .v2 = 31105, .v3 = 0.283399 }));
}
// From T_Snnn_xaz.c:734:754
// struct  L_Ui_I  {
//   __tsi64 v1;
//   unsigned int v2;
//   int v3;
// };

test "L_Ui_I" {
    var lv: c.L_Ui_I = undefined;
    try testing.expectSize(c.L_Ui_I, 16);
    try testing.expectAlign(c.L_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
    try testing.expectOk(c.recv_L_Ui_I(.{ .v1 = 18807, .v2 = 29443, .v3 = 31384 }));
}
// From T_Snnn_xaz.c:759:779
// struct  L_Ui_Ip  {
//   __tsi64 v1;
//   unsigned int v2;
//   int *v3;
// };

test "L_Ui_Ip" {
    var lv: c.L_Ui_Ip = undefined;
    try testing.expectSize(c.L_Ui_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Ui_Ip(.{ .v1 = 21683, .v2 = 6694, .v3 = null }));
}
// From T_Snnn_xaz.c:784:804
// struct  L_Ui_L  {
//   __tsi64 v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "L_Ui_L" {
    var lv: c.L_Ui_L = undefined;
    try testing.expectSize(c.L_Ui_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Ui_L(.{ .v1 = 30784, .v2 = 20862, .v3 = 22931 }));
}
// From T_Snnn_xaz.c:809:829
// struct  L_Ui_S  {
//   __tsi64 v1;
//   unsigned int v2;
//   short v3;
// };

test "L_Ui_S" {
    var lv: c.L_Ui_S = undefined;
    try testing.expectSize(c.L_Ui_S, 16);
    try testing.expectAlign(c.L_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
    try testing.expectOk(c.recv_L_Ui_S(.{ .v1 = 854, .v2 = 17586, .v3 = 6140 }));
}
// From T_Snnn_xaz.c:834:854
// struct  L_Ui_Uc  {
//   __tsi64 v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "L_Ui_Uc" {
    var lv: c.L_Ui_Uc = undefined;
    try testing.expectSize(c.L_Ui_Uc, 16);
    try testing.expectAlign(c.L_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
    try testing.expectOk(c.recv_L_Ui_Uc(.{ .v1 = 3456, .v2 = 23186, .v3 = 19 }));
}
// From T_Snnn_xaz.c:859:879
// struct  L_Ui_Ui  {
//   __tsi64 v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "L_Ui_Ui" {
    var lv: c.L_Ui_Ui = undefined;
    try testing.expectSize(c.L_Ui_Ui, 16);
    try testing.expectAlign(c.L_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
    try testing.expectOk(c.recv_L_Ui_Ui(.{ .v1 = 32273, .v2 = 8038, .v3 = 21388 }));
}
// From T_Snnn_xaz.c:884:904
// struct  L_Ui_Ul  {
//   __tsi64 v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "L_Ui_Ul" {
    var lv: c.L_Ui_Ul = undefined;
    try testing.expectSize(c.L_Ui_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Ui_Ul(.{ .v1 = 8766, .v2 = 5102, .v3 = 22976 }));
}
// From T_Snnn_xaz.c:909:929
// struct  L_Ui_Us  {
//   __tsi64 v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "L_Ui_Us" {
    var lv: c.L_Ui_Us = undefined;
    try testing.expectSize(c.L_Ui_Us, 16);
    try testing.expectAlign(c.L_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
    try testing.expectOk(c.recv_L_Ui_Us(.{ .v1 = 9990, .v2 = 27090, .v3 = 3983 }));
}
// From T_Snnn_xaz.c:934:954
// struct  L_Ui_Vp  {
//   __tsi64 v1;
//   unsigned int v2;
//   void *v3;
// };

test "L_Ui_Vp" {
    var lv: c.L_Ui_Vp = undefined;
    try testing.expectSize(c.L_Ui_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Ui_Vp(.{ .v1 = 9177, .v2 = 3, .v3 = null }));
}
// From T_Snnn_xaz.c:959:977
// struct  L_Ul  {
//   __tsi64 v1;
//   __tsu64 v2;
// };

test "L_Ul" {
    var lv: c.L_Ul = undefined;
    try testing.expectSize(c.L_Ul, 16);
    try testing.expectAlign(c.L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectOk(c.recv_L_Ul(.{ .v1 = 17256, .v2 = 28277 }));
}
// From T_Snnn_xaz.c:1706:1726
// struct  L_Ul_C  {
//   __tsi64 v1;
//   __tsu64 v2;
//   char v3;
// };

test "L_Ul_C" {
    var lv: c.L_Ul_C = undefined;
    try testing.expectSize(c.L_Ul_C, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_C(.{ .v1 = 11968, .v2 = 8997, .v3 = 36 }));
}
// From T_Snnn_xaz.c:1731:1751
// struct  L_Ul_D  {
//   __tsi64 v1;
//   __tsu64 v2;
//   double v3;
// };

test "L_Ul_D" {
    var lv: c.L_Ul_D = undefined;
    try testing.expectSize(c.L_Ul_D, 24);
    try testing.expectAlign(c.L_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_D(.{ .v1 = 7306, .v2 = 19278, .v3 = 2984 }));
}
// From T_Snnn_xaz.c:1756:1776
// struct  L_Ul_F  {
//   __tsi64 v1;
//   __tsu64 v2;
//   float v3;
// };

test "L_Ul_F" {
    var lv: c.L_Ul_F = undefined;
    try testing.expectSize(c.L_Ul_F, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_F(.{ .v1 = 1649, .v2 = 17697, .v3 = 0.942136 }));
}
// From T_Snnn_xaz.c:1781:1801
// struct  L_Ul_I  {
//   __tsi64 v1;
//   __tsu64 v2;
//   int v3;
// };

test "L_Ul_I" {
    var lv: c.L_Ul_I = undefined;
    try testing.expectSize(c.L_Ul_I, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_I(.{ .v1 = 21587, .v2 = 3617, .v3 = 29303 }));
}
// From T_Snnn_xaz.c:1806:1826
// struct  L_Ul_Ip  {
//   __tsi64 v1;
//   __tsu64 v2;
//   int *v3;
// };

test "L_Ul_Ip" {
    var lv: c.L_Ul_Ip = undefined;
    try testing.expectSize(c.L_Ul_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_Ip(.{ .v1 = 31055, .v2 = 7464, .v3 = null }));
}
// From T_Snnn_xaz.c:1831:1851
// struct  L_Ul_L  {
//   __tsi64 v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "L_Ul_L" {
    var lv: c.L_Ul_L = undefined;
    try testing.expectSize(c.L_Ul_L, 24);
    try testing.expectAlign(c.L_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_L(.{ .v1 = 29152, .v2 = 21630, .v3 = 3748 }));
}
// From T_Snnn_xaz.c:1856:1876
// struct  L_Ul_S  {
//   __tsi64 v1;
//   __tsu64 v2;
//   short v3;
// };

test "L_Ul_S" {
    var lv: c.L_Ul_S = undefined;
    try testing.expectSize(c.L_Ul_S, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_S(.{ .v1 = 9311, .v2 = 669, .v3 = 23564 }));
}
// From T_Snnn_xaz.c:1881:1901
// struct  L_Ul_Uc  {
//   __tsi64 v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "L_Ul_Uc" {
    var lv: c.L_Ul_Uc = undefined;
    try testing.expectSize(c.L_Ul_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_Uc(.{ .v1 = 23049, .v2 = 12157, .v3 = 42 }));
}
// From T_Snnn_xaz.c:1906:1926
// struct  L_Ul_Ui  {
//   __tsi64 v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "L_Ul_Ui" {
    var lv: c.L_Ul_Ui = undefined;
    try testing.expectSize(c.L_Ul_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_Ui(.{ .v1 = 20457, .v2 = 8644, .v3 = 22485 }));
}
// From T_Snnn_xaz.c:1931:1951
// struct  L_Ul_Ul  {
//   __tsi64 v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "L_Ul_Ul" {
    var lv: c.L_Ul_Ul = undefined;
    try testing.expectSize(c.L_Ul_Ul, 24);
    try testing.expectAlign(c.L_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_Ul(.{ .v1 = 18808, .v2 = 30770, .v3 = 20216 }));
}
// From T_Snnn_xaz.c:1956:1976
// struct  L_Ul_Us  {
//   __tsi64 v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "L_Ul_Us" {
    var lv: c.L_Ul_Us = undefined;
    try testing.expectSize(c.L_Ul_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_Us(.{ .v1 = 19157, .v2 = 2550, .v3 = 22220 }));
}
// From T_Snnn_xaz.c:1981:2001
// struct  L_Ul_Vp  {
//   __tsi64 v1;
//   __tsu64 v2;
//   void *v3;
// };

test "L_Ul_Vp" {
    var lv: c.L_Ul_Vp = undefined;
    try testing.expectSize(c.L_Ul_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
    try testing.expectOk(c.recv_L_Ul_Vp(.{ .v1 = 27157, .v2 = 30310, .v3 = null }));
}
// From T_Snnn_xaz.c:2006:2024
// struct  L_Us  {
//   __tsi64 v1;
//   unsigned short v2;
// };

test "L_Us" {
    var lv: c.L_Us = undefined;
    try testing.expectSize(c.L_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectOk(c.recv_L_Us(.{ .v1 = 5907, .v2 = 28729 }));
}
// From T_Snnn_xaz.c:2753:2773
// struct  L_Us_C  {
//   __tsi64 v1;
//   unsigned short v2;
//   char v3;
// };

test "L_Us_C" {
    var lv: c.L_Us_C = undefined;
    try testing.expectSize(c.L_Us_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
    try testing.expectOk(c.recv_L_Us_C(.{ .v1 = 28519, .v2 = 1409, .v3 = 28 }));
}
// From T_Snnn_xaz.c:2778:2798
// struct  L_Us_D  {
//   __tsi64 v1;
//   unsigned short v2;
//   double v3;
// };

test "L_Us_D" {
    var lv: c.L_Us_D = undefined;
    try testing.expectSize(c.L_Us_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Us_D(.{ .v1 = 31807, .v2 = 27910, .v3 = 10888 }));
}
// From T_Snnn_xaz.c:2803:2823
// struct  L_Us_F  {
//   __tsi64 v1;
//   unsigned short v2;
//   float v3;
// };

test "L_Us_F" {
    var lv: c.L_Us_F = undefined;
    try testing.expectSize(c.L_Us_F, 16);
    try testing.expectAlign(c.L_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
    try testing.expectOk(c.recv_L_Us_F(.{ .v1 = 11891, .v2 = 17537, .v3 = 0.354137 }));
}
// From T_Snnn_xaz.c:2828:2848
// struct  L_Us_I  {
//   __tsi64 v1;
//   unsigned short v2;
//   int v3;
// };

test "L_Us_I" {
    var lv: c.L_Us_I = undefined;
    try testing.expectSize(c.L_Us_I, 16);
    try testing.expectAlign(c.L_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
    try testing.expectOk(c.recv_L_Us_I(.{ .v1 = 29179, .v2 = 29384, .v3 = 6758 }));
}
// From T_Snnn_xaz.c:2853:2873
// struct  L_Us_Ip  {
//   __tsi64 v1;
//   unsigned short v2;
//   int *v3;
// };

test "L_Us_Ip" {
    var lv: c.L_Us_Ip = undefined;
    try testing.expectSize(c.L_Us_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Us_Ip(.{ .v1 = 26415, .v2 = 30514, .v3 = null }));
}
// From T_Snnn_xaz.c:2878:2898
// struct  L_Us_L  {
//   __tsi64 v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "L_Us_L" {
    var lv: c.L_Us_L = undefined;
    try testing.expectSize(c.L_Us_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Us_L(.{ .v1 = 16528, .v2 = 20020, .v3 = 10302 }));
}
// From T_Snnn_xaz.c:2903:2923
// struct  L_Us_S  {
//   __tsi64 v1;
//   unsigned short v2;
//   short v3;
// };

test "L_Us_S" {
    var lv: c.L_Us_S = undefined;
    try testing.expectSize(c.L_Us_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
    try testing.expectOk(c.recv_L_Us_S(.{ .v1 = 23024, .v2 = 26739, .v3 = 11991 }));
}
// From T_Snnn_xaz.c:2928:2948
// struct  L_Us_Uc  {
//   __tsi64 v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "L_Us_Uc" {
    var lv: c.L_Us_Uc = undefined;
    try testing.expectSize(c.L_Us_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
    try testing.expectOk(c.recv_L_Us_Uc(.{ .v1 = 8423, .v2 = 26054, .v3 = 29 }));
}
// From T_Snnn_xaz.c:2953:2973
// struct  L_Us_Ui  {
//   __tsi64 v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "L_Us_Ui" {
    var lv: c.L_Us_Ui = undefined;
    try testing.expectSize(c.L_Us_Ui, 16);
    try testing.expectAlign(c.L_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
    try testing.expectOk(c.recv_L_Us_Ui(.{ .v1 = 8434, .v2 = 21731, .v3 = 32633 }));
}
// From T_Snnn_xaz.c:2978:2998
// struct  L_Us_Ul  {
//   __tsi64 v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "L_Us_Ul" {
    var lv: c.L_Us_Ul = undefined;
    try testing.expectSize(c.L_Us_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Us_Ul(.{ .v1 = 28279, .v2 = 29535, .v3 = 18832 }));
}
// From T_Snnn_xaz.c:3003:3023
// struct  L_Us_Us  {
//   __tsi64 v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "L_Us_Us" {
    var lv: c.L_Us_Us = undefined;
    try testing.expectSize(c.L_Us_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
    try testing.expectOk(c.recv_L_Us_Us(.{ .v1 = 2582, .v2 = 26820, .v3 = 32507 }));
}
// From T_Snnn_xaz.c:3028:3048
// struct  L_Us_Vp  {
//   __tsi64 v1;
//   unsigned short v2;
//   void *v3;
// };

test "L_Us_Vp" {
    var lv: c.L_Us_Vp = undefined;
    try testing.expectSize(c.L_Us_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Us_Vp(.{ .v1 = 4984, .v2 = 31334, .v3 = null }));
}
// From T_Snnn_xaz.c:3053:3071
// struct  L_Vp  {
//   __tsi64 v1;
//   void *v2;
// };

test "L_Vp" {
    var lv: c.L_Vp = undefined;
    try testing.expectSize(c.L_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectOk(c.recv_L_Vp(.{ .v1 = 13130, .v2 = null }));
}
// From T_Snnn_xaz.c:3800:3820
// struct  L_Vp_C  {
//   __tsi64 v1;
//   void *v2;
//   char v3;
// };

test "L_Vp_C" {
    var lv: c.L_Vp_C = undefined;
    try testing.expectSize(c.L_Vp_C, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_C(.{ .v1 = 18374, .v2 = null, .v3 = 59 }));
}
// From T_Snnn_xaz.c:3825:3845
// struct  L_Vp_D  {
//   __tsi64 v1;
//   void *v2;
//   double v3;
// };

test "L_Vp_D" {
    var lv: c.L_Vp_D = undefined;
    try testing.expectSize(c.L_Vp_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_D(.{ .v1 = 2644, .v2 = null, .v3 = 15900 }));
}
// From T_Snnn_xaz.c:3850:3870
// struct  L_Vp_F  {
//   __tsi64 v1;
//   void *v2;
//   float v3;
// };

test "L_Vp_F" {
    var lv: c.L_Vp_F = undefined;
    try testing.expectSize(c.L_Vp_F, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_F(.{ .v1 = 5066, .v2 = null, .v3 = 0.051080 }));
}
// From T_Snnn_xaz.c:3875:3895
// struct  L_Vp_I  {
//   __tsi64 v1;
//   void *v2;
//   int v3;
// };

test "L_Vp_I" {
    var lv: c.L_Vp_I = undefined;
    try testing.expectSize(c.L_Vp_I, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_I(.{ .v1 = 7437, .v2 = null, .v3 = 2600 }));
}
// From T_Snnn_xaz.c:3900:3920
// struct  L_Vp_Ip  {
//   __tsi64 v1;
//   void *v2;
//   int *v3;
// };

test "L_Vp_Ip" {
    var lv: c.L_Vp_Ip = undefined;
    try testing.expectSize(c.L_Vp_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_Ip(.{ .v1 = 8227, .v2 = null, .v3 = null }));
}
// From T_Snnn_xaz.c:3925:3945
// struct  L_Vp_L  {
//   __tsi64 v1;
//   void *v2;
//   __tsi64 v3;
// };

test "L_Vp_L" {
    var lv: c.L_Vp_L = undefined;
    try testing.expectSize(c.L_Vp_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_L(.{ .v1 = 26762, .v2 = null, .v3 = 4187 }));
}
// From T_Snnn_xaz.c:3950:3970
// struct  L_Vp_S  {
//   __tsi64 v1;
//   void *v2;
//   short v3;
// };

test "L_Vp_S" {
    var lv: c.L_Vp_S = undefined;
    try testing.expectSize(c.L_Vp_S, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_S(.{ .v1 = 32517, .v2 = null, .v3 = 5751 }));
}
// From T_Snnn_xaz.c:3975:3995
// struct  L_Vp_Uc  {
//   __tsi64 v1;
//   void *v2;
//   unsigned char v3;
// };

test "L_Vp_Uc" {
    var lv: c.L_Vp_Uc = undefined;
    try testing.expectSize(c.L_Vp_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_Uc(.{ .v1 = 20175, .v2 = null, .v3 = 51 }));
}
// From T_Snnn_xaz.c:4000:4020
// struct  L_Vp_Ui  {
//   __tsi64 v1;
//   void *v2;
//   unsigned int v3;
// };

test "L_Vp_Ui" {
    var lv: c.L_Vp_Ui = undefined;
    try testing.expectSize(c.L_Vp_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_Ui(.{ .v1 = 9705, .v2 = null, .v3 = 9735 }));
}
// From T_Snnn_xaz.c:4025:4045
// struct  L_Vp_Ul  {
//   __tsi64 v1;
//   void *v2;
//   __tsu64 v3;
// };

test "L_Vp_Ul" {
    var lv: c.L_Vp_Ul = undefined;
    try testing.expectSize(c.L_Vp_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_Ul(.{ .v1 = 2235, .v2 = null, .v3 = 3438 }));
}
// From T_Snnn_xaz.c:4050:4070
// struct  L_Vp_Us  {
//   __tsi64 v1;
//   void *v2;
//   unsigned short v3;
// };

test "L_Vp_Us" {
    var lv: c.L_Vp_Us = undefined;
    try testing.expectSize(c.L_Vp_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_Us(.{ .v1 = 24213, .v2 = null, .v3 = 8236 }));
}
// From T_Snnn_xaz.c:4075:4095
// struct  L_Vp_Vp  {
//   __tsi64 v1;
//   void *v2;
//   void *v3;
// };

test "L_Vp_Vp" {
    var lv: c.L_Vp_Vp = undefined;
    try testing.expectSize(c.L_Vp_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_L_Vp_Vp(.{ .v1 = 15058, .v2 = null, .v3 = null }));
}
// From T_Snnn_xaz.c:4100:4116
// struct  S  {
//   short v1;
// };

test "S" {
    var lv: c.S = undefined;
    try testing.expectSize(c.S, 2);
    try testing.expectAlign(c.S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectOk(c.recv_S(.{ .v1 = 28439 }));
}
// From T_Snnn_xaz.c:34421:34439
// struct  S_C  {
//   short v1;
//   char v2;
// };

test "S_C" {
    var lv: c.S_C = undefined;
    try testing.expectSize(c.S_C, 4);
    try testing.expectAlign(c.S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectOk(c.recv_S_C(.{ .v1 = 13593, .v2 = 30 }));
}
// From T_Snnn_xaz.c:35168:35188
// struct  S_C_C  {
//   short v1;
//   char v2;
//   char v3;
// };

test "S_C_C" {
    var lv: c.S_C_C = undefined;
    try testing.expectSize(c.S_C_C, 4);
    try testing.expectAlign(c.S_C_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
    try testing.expectOk(c.recv_S_C_C(.{ .v1 = 2444, .v2 = 93, .v3 = 77 }));
}
// From T_Snnn_xaz.c:35193:35213
// struct  S_C_D  {
//   short v1;
//   char v2;
//   double v3;
// };

test "S_C_D" {
    var lv: c.S_C_D = undefined;
    try testing.expectSize(c.S_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_C_D(.{ .v1 = 28466, .v2 = 4, .v3 = 20301 }));
}
// From T_Snnn_xaz.c:35218:35238
// struct  S_C_F  {
//   short v1;
//   char v2;
//   float v3;
// };

test "S_C_F" {
    var lv: c.S_C_F = undefined;
    try testing.expectSize(c.S_C_F, 8);
    try testing.expectAlign(c.S_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_C_F(.{ .v1 = 27944, .v2 = 27, .v3 = 0.847960 }));
}
// From T_Snnn_xaz.c:35243:35263
// struct  S_C_I  {
//   short v1;
//   char v2;
//   int v3;
// };

test "S_C_I" {
    var lv: c.S_C_I = undefined;
    try testing.expectSize(c.S_C_I, 8);
    try testing.expectAlign(c.S_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_C_I(.{ .v1 = 18200, .v2 = 26, .v3 = 29651 }));
}
// From T_Snnn_xaz.c:35268:35288
// struct  S_C_Ip  {
//   short v1;
//   char v2;
//   int *v3;
// };

test "S_C_Ip" {
    var lv: c.S_C_Ip = undefined;
    try testing.expectSize(c.S_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_C_Ip(.{ .v1 = 20090, .v2 = 12, .v3 = null }));
}
// From T_Snnn_xaz.c:35293:35313
// struct  S_C_L  {
//   short v1;
//   char v2;
//   __tsi64 v3;
// };

test "S_C_L" {
    var lv: c.S_C_L = undefined;
    try testing.expectSize(c.S_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_C_L(.{ .v1 = 23527, .v2 = 35, .v3 = 6495 }));
}
// From T_Snnn_xaz.c:35318:35338
// struct  S_C_S  {
//   short v1;
//   char v2;
//   short v3;
// };

test "S_C_S" {
    var lv: c.S_C_S = undefined;
    try testing.expectSize(c.S_C_S, 6);
    try testing.expectAlign(c.S_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_C_S(.{ .v1 = 18343, .v2 = 109, .v3 = 22346 }));
}
// From T_Snnn_xaz.c:35343:35363
// struct  S_C_Uc  {
//   short v1;
//   char v2;
//   unsigned char v3;
// };

test "S_C_Uc" {
    var lv: c.S_C_Uc = undefined;
    try testing.expectSize(c.S_C_Uc, 4);
    try testing.expectAlign(c.S_C_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
    try testing.expectOk(c.recv_S_C_Uc(.{ .v1 = 14516, .v2 = 18, .v3 = 45 }));
}
// From T_Snnn_xaz.c:35368:35388
// struct  S_C_Ui  {
//   short v1;
//   char v2;
//   unsigned int v3;
// };

test "S_C_Ui" {
    var lv: c.S_C_Ui = undefined;
    try testing.expectSize(c.S_C_Ui, 8);
    try testing.expectAlign(c.S_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_C_Ui(.{ .v1 = 17804, .v2 = 18, .v3 = 32107 }));
}
// From T_Snnn_xaz.c:35393:35413
// struct  S_C_Ul  {
//   short v1;
//   char v2;
//   __tsu64 v3;
// };

test "S_C_Ul" {
    var lv: c.S_C_Ul = undefined;
    try testing.expectSize(c.S_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_C_Ul(.{ .v1 = 24230, .v2 = 27, .v3 = 1102 }));
}
// From T_Snnn_xaz.c:35418:35438
// struct  S_C_Us  {
//   short v1;
//   char v2;
//   unsigned short v3;
// };

test "S_C_Us" {
    var lv: c.S_C_Us = undefined;
    try testing.expectSize(c.S_C_Us, 6);
    try testing.expectAlign(c.S_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_C_Us(.{ .v1 = 13745, .v2 = 61, .v3 = 8507 }));
}
// From T_Snnn_xaz.c:35443:35463
// struct  S_C_Vp  {
//   short v1;
//   char v2;
//   void *v3;
// };

test "S_C_Vp" {
    var lv: c.S_C_Vp = undefined;
    try testing.expectSize(c.S_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_C_Vp(.{ .v1 = 5894, .v2 = 62, .v3 = null }));
}
// From T_Snnn_xaz.c:35468:35486
// struct  S_D  {
//   short v1;
//   double v2;
// };

test "S_D" {
    var lv: c.S_D = undefined;
    try testing.expectSize(c.S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_D(.{ .v1 = 26258, .v2 = 24540 }));
}
// From T_Snnn_xaz.c:36215:36235
// struct  S_D_C  {
//   short v1;
//   double v2;
//   char v3;
// };

test "S_D_C" {
    var lv: c.S_D_C = undefined;
    try testing.expectSize(c.S_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_C(.{ .v1 = 24907, .v2 = 20806, .v3 = 125 }));
}
// From T_Snnn_xaz.c:36240:36260
// struct  S_D_D  {
//   short v1;
//   double v2;
//   double v3;
// };

test "S_D_D" {
    var lv: c.S_D_D = undefined;
    try testing.expectSize(c.S_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.S_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_D(.{ .v1 = 17013, .v2 = 22220, .v3 = 7331 }));
}
// From T_Snnn_xaz.c:36265:36285
// struct  S_D_F  {
//   short v1;
//   double v2;
//   float v3;
// };

test "S_D_F" {
    var lv: c.S_D_F = undefined;
    try testing.expectSize(c.S_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_F(.{ .v1 = 8325, .v2 = 8283, .v3 = 0.568255 }));
}
// From T_Snnn_xaz.c:36290:36310
// struct  S_D_I  {
//   short v1;
//   double v2;
//   int v3;
// };

test "S_D_I" {
    var lv: c.S_D_I = undefined;
    try testing.expectSize(c.S_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_I(.{ .v1 = 8248, .v2 = 20494, .v3 = 20127 }));
}
// From T_Snnn_xaz.c:36315:36335
// struct  S_D_Ip  {
//   short v1;
//   double v2;
//   int *v3;
// };

test "S_D_Ip" {
    var lv: c.S_D_Ip = undefined;
    try testing.expectSize(c.S_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_Ip(.{ .v1 = 5574, .v2 = 7431, .v3 = null }));
}
// From T_Snnn_xaz.c:36340:36360
// struct  S_D_L  {
//   short v1;
//   double v2;
//   __tsi64 v3;
// };

test "S_D_L" {
    var lv: c.S_D_L = undefined;
    try testing.expectSize(c.S_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.S_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_L(.{ .v1 = 16019, .v2 = 2270, .v3 = 15328 }));
}
// From T_Snnn_xaz.c:36365:36385
// struct  S_D_S  {
//   short v1;
//   double v2;
//   short v3;
// };

test "S_D_S" {
    var lv: c.S_D_S = undefined;
    try testing.expectSize(c.S_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_S(.{ .v1 = 19770, .v2 = 5434, .v3 = 27668 }));
}
// From T_Snnn_xaz.c:36390:36410
// struct  S_D_Uc  {
//   short v1;
//   double v2;
//   unsigned char v3;
// };

test "S_D_Uc" {
    var lv: c.S_D_Uc = undefined;
    try testing.expectSize(c.S_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_Uc(.{ .v1 = 18628, .v2 = 14132, .v3 = 121 }));
}
// From T_Snnn_xaz.c:36415:36435
// struct  S_D_Ui  {
//   short v1;
//   double v2;
//   unsigned int v3;
// };

test "S_D_Ui" {
    var lv: c.S_D_Ui = undefined;
    try testing.expectSize(c.S_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_Ui(.{ .v1 = 2017, .v2 = 22747, .v3 = 4105 }));
}
// From T_Snnn_xaz.c:36440:36460
// struct  S_D_Ul  {
//   short v1;
//   double v2;
//   __tsu64 v3;
// };

test "S_D_Ul" {
    var lv: c.S_D_Ul = undefined;
    try testing.expectSize(c.S_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.S_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_Ul(.{ .v1 = 26647, .v2 = 4212, .v3 = 22833 }));
}
// From T_Snnn_xaz.c:36465:36485
// struct  S_D_Us  {
//   short v1;
//   double v2;
//   unsigned short v3;
// };

test "S_D_Us" {
    var lv: c.S_D_Us = undefined;
    try testing.expectSize(c.S_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_Us(.{ .v1 = 10915, .v2 = 10350, .v3 = 24757 }));
}
// From T_Snnn_xaz.c:36490:36510
// struct  S_D_Vp  {
//   short v1;
//   double v2;
//   void *v3;
// };

test "S_D_Vp" {
    var lv: c.S_D_Vp = undefined;
    try testing.expectSize(c.S_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_D_Vp(.{ .v1 = 14823, .v2 = 19299, .v3 = null }));
}
// From T_Snnn_xaz.c:36515:36533
// struct  S_F  {
//   short v1;
//   float v2;
// };

test "S_F" {
    var lv: c.S_F = undefined;
    try testing.expectSize(c.S_F, 8);
    try testing.expectAlign(c.S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_S_F(.{ .v1 = 24924, .v2 = 0.261066 }));
}
// From T_Snnn_xaz.c:37262:37282
// struct  S_F_C  {
//   short v1;
//   float v2;
//   char v3;
// };

test "S_F_C" {
    var lv: c.S_F_C = undefined;
    try testing.expectSize(c.S_F_C, 12);
    try testing.expectAlign(c.S_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_C(.{ .v1 = 8723, .v2 = 0.193479, .v3 = 57 }));
}
// From T_Snnn_xaz.c:37287:37307
// struct  S_F_D  {
//   short v1;
//   float v2;
//   double v3;
// };

test "S_F_D" {
    var lv: c.S_F_D = undefined;
    try testing.expectSize(c.S_F_D, 16);
    try testing.expectAlign(c.S_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_D(.{ .v1 = 5239, .v2 = 0.558413, .v3 = 6400 }));
}
// From T_Snnn_xaz.c:37312:37332
// struct  S_F_F  {
//   short v1;
//   float v2;
//   float v3;
// };

test "S_F_F" {
    var lv: c.S_F_F = undefined;
    try testing.expectSize(c.S_F_F, 12);
    try testing.expectAlign(c.S_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_F(.{ .v1 = 20532, .v2 = 0.551764, .v3 = 0.329028 }));
}
// From T_Snnn_xaz.c:37337:37357
// struct  S_F_I  {
//   short v1;
//   float v2;
//   int v3;
// };

test "S_F_I" {
    var lv: c.S_F_I = undefined;
    try testing.expectSize(c.S_F_I, 12);
    try testing.expectAlign(c.S_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_I(.{ .v1 = 21641, .v2 = 0.396112, .v3 = 10287 }));
}
// From T_Snnn_xaz.c:37362:37382
// struct  S_F_Ip  {
//   short v1;
//   float v2;
//   int *v3;
// };

test "S_F_Ip" {
    var lv: c.S_F_Ip = undefined;
    try testing.expectSize(c.S_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.S_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_Ip(.{ .v1 = 682, .v2 = 0.660483, .v3 = null }));
}
// From T_Snnn_xaz.c:37387:37407
// struct  S_F_L  {
//   short v1;
//   float v2;
//   __tsi64 v3;
// };

test "S_F_L" {
    var lv: c.S_F_L = undefined;
    try testing.expectSize(c.S_F_L, 16);
    try testing.expectAlign(c.S_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_L(.{ .v1 = 29613, .v2 = 0.815433, .v3 = 10239 }));
}
// From T_Snnn_xaz.c:37412:37432
// struct  S_F_S  {
//   short v1;
//   float v2;
//   short v3;
// };

test "S_F_S" {
    var lv: c.S_F_S = undefined;
    try testing.expectSize(c.S_F_S, 12);
    try testing.expectAlign(c.S_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_S(.{ .v1 = 5493, .v2 = 0.447741, .v3 = 26031 }));
}
// From T_Snnn_xaz.c:37437:37457
// struct  S_F_Uc  {
//   short v1;
//   float v2;
//   unsigned char v3;
// };

test "S_F_Uc" {
    var lv: c.S_F_Uc = undefined;
    try testing.expectSize(c.S_F_Uc, 12);
    try testing.expectAlign(c.S_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_Uc(.{ .v1 = 16127, .v2 = 0.334742, .v3 = 12 }));
}
// From T_Snnn_xaz.c:37462:37482
// struct  S_F_Ui  {
//   short v1;
//   float v2;
//   unsigned int v3;
// };

test "S_F_Ui" {
    var lv: c.S_F_Ui = undefined;
    try testing.expectSize(c.S_F_Ui, 12);
    try testing.expectAlign(c.S_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_Ui(.{ .v1 = 24945, .v2 = 0.750063, .v3 = 11333 }));
}
// From T_Snnn_xaz.c:37487:37507
// struct  S_F_Ul  {
//   short v1;
//   float v2;
//   __tsu64 v3;
// };

test "S_F_Ul" {
    var lv: c.S_F_Ul = undefined;
    try testing.expectSize(c.S_F_Ul, 16);
    try testing.expectAlign(c.S_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_Ul(.{ .v1 = 6677, .v2 = 0.093090, .v3 = 16822 }));
}
// From T_Snnn_xaz.c:37512:37532
// struct  S_F_Us  {
//   short v1;
//   float v2;
//   unsigned short v3;
// };

test "S_F_Us" {
    var lv: c.S_F_Us = undefined;
    try testing.expectSize(c.S_F_Us, 12);
    try testing.expectAlign(c.S_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_Us(.{ .v1 = 8511, .v2 = 0.315056, .v3 = 32196 }));
}
// From T_Snnn_xaz.c:37537:37557
// struct  S_F_Vp  {
//   short v1;
//   float v2;
//   void *v3;
// };

test "S_F_Vp" {
    var lv: c.S_F_Vp = undefined;
    try testing.expectSize(c.S_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.S_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_F_Vp(.{ .v1 = 17475, .v2 = 0.281258, .v3 = null }));
}
// From T_Snnn_xaz.c:37562:37580
// struct  S_I  {
//   short v1;
//   int v2;
// };

test "S_I" {
    var lv: c.S_I = undefined;
    try testing.expectSize(c.S_I, 8);
    try testing.expectAlign(c.S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_S_I(.{ .v1 = 2897, .v2 = 15011 }));
}
// From T_Snnn_xaz.c:38309:38329
// struct  S_I_C  {
//   short v1;
//   int v2;
//   char v3;
// };

test "S_I_C" {
    var lv: c.S_I_C = undefined;
    try testing.expectSize(c.S_I_C, 12);
    try testing.expectAlign(c.S_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_C(.{ .v1 = 8966, .v2 = 235, .v3 = 12 }));
}
// From T_Snnn_xaz.c:38334:38354
// struct  S_I_D  {
//   short v1;
//   int v2;
//   double v3;
// };

test "S_I_D" {
    var lv: c.S_I_D = undefined;
    try testing.expectSize(c.S_I_D, 16);
    try testing.expectAlign(c.S_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_D(.{ .v1 = 4450, .v2 = 11100, .v3 = 1278 }));
}
// From T_Snnn_xaz.c:38359:38379
// struct  S_I_F  {
//   short v1;
//   int v2;
//   float v3;
// };

test "S_I_F" {
    var lv: c.S_I_F = undefined;
    try testing.expectSize(c.S_I_F, 12);
    try testing.expectAlign(c.S_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_F(.{ .v1 = 9162, .v2 = 6436, .v3 = 0.464137 }));
}
// From T_Snnn_xaz.c:38384:38404
// struct  S_I_I  {
//   short v1;
//   int v2;
//   int v3;
// };

test "S_I_I" {
    var lv: c.S_I_I = undefined;
    try testing.expectSize(c.S_I_I, 12);
    try testing.expectAlign(c.S_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_I(.{ .v1 = 5966, .v2 = 11791, .v3 = 12649 }));
}
// From T_Snnn_xaz.c:38409:38429
// struct  S_I_Ip  {
//   short v1;
//   int v2;
//   int *v3;
// };

test "S_I_Ip" {
    var lv: c.S_I_Ip = undefined;
    try testing.expectSize(c.S_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.S_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_Ip(.{ .v1 = 5466, .v2 = 13905, .v3 = null }));
}
// From T_Snnn_xaz.c:38434:38454
// struct  S_I_L  {
//   short v1;
//   int v2;
//   __tsi64 v3;
// };

test "S_I_L" {
    var lv: c.S_I_L = undefined;
    try testing.expectSize(c.S_I_L, 16);
    try testing.expectAlign(c.S_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_L(.{ .v1 = 9496, .v2 = 6304, .v3 = 4198 }));
}
// From T_Snnn_xaz.c:38459:38479
// struct  S_I_S  {
//   short v1;
//   int v2;
//   short v3;
// };

test "S_I_S" {
    var lv: c.S_I_S = undefined;
    try testing.expectSize(c.S_I_S, 12);
    try testing.expectAlign(c.S_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_S(.{ .v1 = 5209, .v2 = 18809, .v3 = 12499 }));
}
// From T_Snnn_xaz.c:38484:38504
// struct  S_I_Uc  {
//   short v1;
//   int v2;
//   unsigned char v3;
// };

test "S_I_Uc" {
    var lv: c.S_I_Uc = undefined;
    try testing.expectSize(c.S_I_Uc, 12);
    try testing.expectAlign(c.S_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_Uc(.{ .v1 = 14755, .v2 = 22762, .v3 = 26 }));
}
// From T_Snnn_xaz.c:38509:38529
// struct  S_I_Ui  {
//   short v1;
//   int v2;
//   unsigned int v3;
// };

test "S_I_Ui" {
    var lv: c.S_I_Ui = undefined;
    try testing.expectSize(c.S_I_Ui, 12);
    try testing.expectAlign(c.S_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_Ui(.{ .v1 = 28377, .v2 = 8192, .v3 = 12908 }));
}
// From T_Snnn_xaz.c:38534:38554
// struct  S_I_Ul  {
//   short v1;
//   int v2;
//   __tsu64 v3;
// };

test "S_I_Ul" {
    var lv: c.S_I_Ul = undefined;
    try testing.expectSize(c.S_I_Ul, 16);
    try testing.expectAlign(c.S_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_Ul(.{ .v1 = 24955, .v2 = 2544, .v3 = 29114 }));
}
// From T_Snnn_xaz.c:38559:38579
// struct  S_I_Us  {
//   short v1;
//   int v2;
//   unsigned short v3;
// };

test "S_I_Us" {
    var lv: c.S_I_Us = undefined;
    try testing.expectSize(c.S_I_Us, 12);
    try testing.expectAlign(c.S_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_Us(.{ .v1 = 26409, .v2 = 6684, .v3 = 19200 }));
}
// From T_Snnn_xaz.c:38584:38604
// struct  S_I_Vp  {
//   short v1;
//   int v2;
//   void *v3;
// };

test "S_I_Vp" {
    var lv: c.S_I_Vp = undefined;
    try testing.expectSize(c.S_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.S_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_I_Vp(.{ .v1 = 12997, .v2 = 10954, .v3 = null }));
}
// From T_Snnn_xaz.c:38609:38627
// struct  S_Ip  {
//   short v1;
//   int *v2;
// };

test "S_Ip" {
    var lv: c.S_Ip = undefined;
    try testing.expectSize(c.S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Ip(.{ .v1 = 12037, .v2 = null }));
}
// From T_Snnn_xaz.c:39356:39376
// struct  S_Ip_C  {
//   short v1;
//   int *v2;
//   char v3;
// };

test "S_Ip_C" {
    var lv: c.S_Ip_C = undefined;
    try testing.expectSize(c.S_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_C(.{ .v1 = 13013, .v2 = null, .v3 = 62 }));
}
// From T_Snnn_xaz.c:39381:39401
// struct  S_Ip_D  {
//   short v1;
//   int *v2;
//   double v3;
// };

test "S_Ip_D" {
    var lv: c.S_Ip_D = undefined;
    try testing.expectSize(c.S_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_D(.{ .v1 = 14362, .v2 = null, .v3 = 9520 }));
}
// From T_Snnn_xaz.c:39406:39426
// struct  S_Ip_F  {
//   short v1;
//   int *v2;
//   float v3;
// };

test "S_Ip_F" {
    var lv: c.S_Ip_F = undefined;
    try testing.expectSize(c.S_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_F(.{ .v1 = 17556, .v2 = null, .v3 = 0.165992 }));
}
// From T_Snnn_xaz.c:39431:39451
// struct  S_Ip_I  {
//   short v1;
//   int *v2;
//   int v3;
// };

test "S_Ip_I" {
    var lv: c.S_Ip_I = undefined;
    try testing.expectSize(c.S_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_I(.{ .v1 = 12399, .v2 = null, .v3 = 22491 }));
}
// From T_Snnn_xaz.c:39456:39476
// struct  S_Ip_Ip  {
//   short v1;
//   int *v2;
//   int *v3;
// };

test "S_Ip_Ip" {
    var lv: c.S_Ip_Ip = undefined;
    try testing.expectSize(c.S_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_Ip(.{ .v1 = 30185, .v2 = null, .v3 = null }));
}
// From T_Snnn_xaz.c:39481:39501
// struct  S_Ip_L  {
//   short v1;
//   int *v2;
//   __tsi64 v3;
// };

test "S_Ip_L" {
    var lv: c.S_Ip_L = undefined;
    try testing.expectSize(c.S_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_L(.{ .v1 = 20259, .v2 = null, .v3 = 13657 }));
}
// From T_Snnn_xaz.c:39506:39526
// struct  S_Ip_S  {
//   short v1;
//   int *v2;
//   short v3;
// };

test "S_Ip_S" {
    var lv: c.S_Ip_S = undefined;
    try testing.expectSize(c.S_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_S(.{ .v1 = 14829, .v2 = null, .v3 = 5005 }));
}
// From T_Snnn_xaz.c:39531:39551
// struct  S_Ip_Uc  {
//   short v1;
//   int *v2;
//   unsigned char v3;
// };

test "S_Ip_Uc" {
    var lv: c.S_Ip_Uc = undefined;
    try testing.expectSize(c.S_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_Uc(.{ .v1 = 6340, .v2 = null, .v3 = 85 }));
}
// From T_Snnn_xaz.c:39556:39576
// struct  S_Ip_Ui  {
//   short v1;
//   int *v2;
//   unsigned int v3;
// };

test "S_Ip_Ui" {
    var lv: c.S_Ip_Ui = undefined;
    try testing.expectSize(c.S_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_Ui(.{ .v1 = 11335, .v2 = null, .v3 = 4538 }));
}
// From T_Snnn_xaz.c:39581:39601
// struct  S_Ip_Ul  {
//   short v1;
//   int *v2;
//   __tsu64 v3;
// };

test "S_Ip_Ul" {
    var lv: c.S_Ip_Ul = undefined;
    try testing.expectSize(c.S_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_Ul(.{ .v1 = 8170, .v2 = null, .v3 = 26208 }));
}
// From T_Snnn_xaz.c:39606:39626
// struct  S_Ip_Us  {
//   short v1;
//   int *v2;
//   unsigned short v3;
// };

test "S_Ip_Us" {
    var lv: c.S_Ip_Us = undefined;
    try testing.expectSize(c.S_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_Us(.{ .v1 = 3739, .v2 = null, .v3 = 1651 }));
}
// From T_Snnn_xaz.c:39631:39651
// struct  S_Ip_Vp  {
//   short v1;
//   int *v2;
//   void *v3;
// };

test "S_Ip_Vp" {
    var lv: c.S_Ip_Vp = undefined;
    try testing.expectSize(c.S_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Ip_Vp(.{ .v1 = 14683, .v2 = null, .v3 = null }));
}
// From T_Snnn_xaz.c:39656:39674
// struct  S_L  {
//   short v1;
//   __tsi64 v2;
// };

test "S_L" {
    var lv: c.S_L = undefined;
    try testing.expectSize(c.S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_L(.{ .v1 = 13312, .v2 = 25781 }));
}
// From T_Snnn_xaz.c:40403:40423
// struct  S_L_C  {
//   short v1;
//   __tsi64 v2;
//   char v3;
// };

test "S_L_C" {
    var lv: c.S_L_C = undefined;
    try testing.expectSize(c.S_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_C(.{ .v1 = 10505, .v2 = 16042, .v3 = 7 }));
}
// From T_Snnn_xaz.c:40428:40448
// struct  S_L_D  {
//   short v1;
//   __tsi64 v2;
//   double v3;
// };

test "S_L_D" {
    var lv: c.S_L_D = undefined;
    try testing.expectSize(c.S_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.S_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_D(.{ .v1 = 22646, .v2 = 24863, .v3 = 8807 }));
}
// From T_Snnn_xaz.c:40453:40473
// struct  S_L_F  {
//   short v1;
//   __tsi64 v2;
//   float v3;
// };

test "S_L_F" {
    var lv: c.S_L_F = undefined;
    try testing.expectSize(c.S_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_F(.{ .v1 = 13211, .v2 = 31897, .v3 = 0.162767 }));
}
// From T_Snnn_xaz.c:40478:40498
// struct  S_L_I  {
//   short v1;
//   __tsi64 v2;
//   int v3;
// };

test "S_L_I" {
    var lv: c.S_L_I = undefined;
    try testing.expectSize(c.S_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_I(.{ .v1 = 9621, .v2 = 7334, .v3 = 21830 }));
}
// From T_Snnn_xaz.c:40503:40523
// struct  S_L_Ip  {
//   short v1;
//   __tsi64 v2;
//   int *v3;
// };

test "S_L_Ip" {
    var lv: c.S_L_Ip = undefined;
    try testing.expectSize(c.S_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_Ip(.{ .v1 = 13540, .v2 = 19625, .v3 = null }));
}
// From T_Snnn_xaz.c:40528:40548
// struct  S_L_L  {
//   short v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "S_L_L" {
    var lv: c.S_L_L = undefined;
    try testing.expectSize(c.S_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.S_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_L(.{ .v1 = 20472, .v2 = 32042, .v3 = 11187 }));
}
// From T_Snnn_xaz.c:40553:40573
// struct  S_L_S  {
//   short v1;
//   __tsi64 v2;
//   short v3;
// };

test "S_L_S" {
    var lv: c.S_L_S = undefined;
    try testing.expectSize(c.S_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_S(.{ .v1 = 24980, .v2 = 13189, .v3 = 19542 }));
}
// From T_Snnn_xaz.c:40578:40598
// struct  S_L_Uc  {
//   short v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "S_L_Uc" {
    var lv: c.S_L_Uc = undefined;
    try testing.expectSize(c.S_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_Uc(.{ .v1 = 25895, .v2 = 31666, .v3 = 50 }));
}
// From T_Snnn_xaz.c:40603:40623
// struct  S_L_Ui  {
//   short v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "S_L_Ui" {
    var lv: c.S_L_Ui = undefined;
    try testing.expectSize(c.S_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_Ui(.{ .v1 = 25332, .v2 = 32427, .v3 = 2118 }));
}
// From T_Snnn_xaz.c:40628:40648
// struct  S_L_Ul  {
//   short v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "S_L_Ul" {
    var lv: c.S_L_Ul = undefined;
    try testing.expectSize(c.S_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.S_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_Ul(.{ .v1 = 13547, .v2 = 22029, .v3 = 22931 }));
}
// From T_Snnn_xaz.c:40653:40673
// struct  S_L_Us  {
//   short v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "S_L_Us" {
    var lv: c.S_L_Us = undefined;
    try testing.expectSize(c.S_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_Us(.{ .v1 = 20443, .v2 = 12563, .v3 = 22189 }));
}
// From T_Snnn_xaz.c:40678:40698
// struct  S_L_Vp  {
//   short v1;
//   __tsi64 v2;
//   void *v3;
// };

test "S_L_Vp" {
    var lv: c.S_L_Vp = undefined;
    try testing.expectSize(c.S_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_L_Vp(.{ .v1 = 21924, .v2 = 20218, .v3 = null }));
}
// From T_Snnn_xaz.c:40703:40721
// struct  S_S  {
//   short v1;
//   short v2;
// };

test "S_S" {
    var lv: c.S_S = undefined;
    try testing.expectSize(c.S_S, 4);
    try testing.expectAlign(c.S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectOk(c.recv_S_S(.{ .v1 = 11096, .v2 = 27328 }));
}
// From T_Snnn_xaz.c:41450:41470
// struct  S_S_C  {
//   short v1;
//   short v2;
//   char v3;
// };

test "S_S_C" {
    var lv: c.S_S_C = undefined;
    try testing.expectSize(c.S_S_C, 6);
    try testing.expectAlign(c.S_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_S_C(.{ .v1 = 5329, .v2 = 19856, .v3 = 80 }));
}
// From T_Snnn_xaz.c:41475:41495
// struct  S_S_D  {
//   short v1;
//   short v2;
//   double v3;
// };

test "S_S_D" {
    var lv: c.S_S_D = undefined;
    try testing.expectSize(c.S_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_S_D(.{ .v1 = 9780, .v2 = 6520, .v3 = 12512 }));
}
// From T_Snnn_xaz.c:41500:41520
// struct  S_S_F  {
//   short v1;
//   short v2;
//   float v3;
// };

test "S_S_F" {
    var lv: c.S_S_F = undefined;
    try testing.expectSize(c.S_S_F, 8);
    try testing.expectAlign(c.S_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_S_F(.{ .v1 = 3759, .v2 = 17098, .v3 = 0.729391 }));
}
// From T_Snnn_xaz.c:41525:41545
// struct  S_S_I  {
//   short v1;
//   short v2;
//   int v3;
// };

test "S_S_I" {
    var lv: c.S_S_I = undefined;
    try testing.expectSize(c.S_S_I, 8);
    try testing.expectAlign(c.S_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_S_I(.{ .v1 = 21322, .v2 = 10630, .v3 = 25351 }));
}
// From T_Snnn_xaz.c:41550:41570
// struct  S_S_Ip  {
//   short v1;
//   short v2;
//   int *v3;
// };

test "S_S_Ip" {
    var lv: c.S_S_Ip = undefined;
    try testing.expectSize(c.S_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_S_Ip(.{ .v1 = 8900, .v2 = 26402, .v3 = null }));
}
// From T_Snnn_xaz.c:41575:41595
// struct  S_S_L  {
//   short v1;
//   short v2;
//   __tsi64 v3;
// };

test "S_S_L" {
    var lv: c.S_S_L = undefined;
    try testing.expectSize(c.S_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_S_L(.{ .v1 = 11004, .v2 = 11972, .v3 = 21868 }));
}
// From T_Snnn_xaz.c:41600:41620
// struct  S_S_S  {
//   short v1;
//   short v2;
//   short v3;
// };

test "S_S_S" {
    var lv: c.S_S_S = undefined;
    try testing.expectSize(c.S_S_S, 6);
    try testing.expectAlign(c.S_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_S_S(.{ .v1 = 704, .v2 = 11304, .v3 = 18734 }));
}
// From T_Snnn_xaz.c:41625:41645
// struct  S_S_Uc  {
//   short v1;
//   short v2;
//   unsigned char v3;
// };

test "S_S_Uc" {
    var lv: c.S_S_Uc = undefined;
    try testing.expectSize(c.S_S_Uc, 6);
    try testing.expectAlign(c.S_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_S_Uc(.{ .v1 = 10132, .v2 = 23348, .v3 = 32 }));
}
// From T_Snnn_xaz.c:41650:41670
// struct  S_S_Ui  {
//   short v1;
//   short v2;
//   unsigned int v3;
// };

test "S_S_Ui" {
    var lv: c.S_S_Ui = undefined;
    try testing.expectSize(c.S_S_Ui, 8);
    try testing.expectAlign(c.S_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_S_Ui(.{ .v1 = 10920, .v2 = 21755, .v3 = 28352 }));
}
// From T_Snnn_xaz.c:41675:41695
// struct  S_S_Ul  {
//   short v1;
//   short v2;
//   __tsu64 v3;
// };

test "S_S_Ul" {
    var lv: c.S_S_Ul = undefined;
    try testing.expectSize(c.S_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_S_Ul(.{ .v1 = 634, .v2 = 947, .v3 = 13556 }));
}
// From T_Snnn_xaz.c:41700:41720
// struct  S_S_Us  {
//   short v1;
//   short v2;
//   unsigned short v3;
// };

test "S_S_Us" {
    var lv: c.S_S_Us = undefined;
    try testing.expectSize(c.S_S_Us, 6);
    try testing.expectAlign(c.S_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_S_Us(.{ .v1 = 236, .v2 = 22850, .v3 = 13691 }));
}
// From T_Snnn_xaz.c:41725:41745
// struct  S_S_Vp  {
//   short v1;
//   short v2;
//   void *v3;
// };

test "S_S_Vp" {
    var lv: c.S_S_Vp = undefined;
    try testing.expectSize(c.S_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_S_Vp(.{ .v1 = 12577, .v2 = 13548, .v3 = null }));
}
// From T_Snnn_xaz.c:41750:41768
// struct  S_Uc  {
//   short v1;
//   unsigned char v2;
// };

test "S_Uc" {
    var lv: c.S_Uc = undefined;
    try testing.expectSize(c.S_Uc, 4);
    try testing.expectAlign(c.S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectOk(c.recv_S_Uc(.{ .v1 = 3861, .v2 = 109 }));
}
// From T_Snnn_xaz.c:42497:42517
// struct  S_Uc_C  {
//   short v1;
//   unsigned char v2;
//   char v3;
// };

test "S_Uc_C" {
    var lv: c.S_Uc_C = undefined;
    try testing.expectSize(c.S_Uc_C, 4);
    try testing.expectAlign(c.S_Uc_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
    try testing.expectOk(c.recv_S_Uc_C(.{ .v1 = 10425, .v2 = 80, .v3 = 112 }));
}
// From T_Snnn_xaz.c:42522:42542
// struct  S_Uc_D  {
//   short v1;
//   unsigned char v2;
//   double v3;
// };

test "S_Uc_D" {
    var lv: c.S_Uc_D = undefined;
    try testing.expectSize(c.S_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Uc_D(.{ .v1 = 30365, .v2 = 12, .v3 = 17758 }));
}
// From T_Snnn_xaz.c:42547:42567
// struct  S_Uc_F  {
//   short v1;
//   unsigned char v2;
//   float v3;
// };

test "S_Uc_F" {
    var lv: c.S_Uc_F = undefined;
    try testing.expectSize(c.S_Uc_F, 8);
    try testing.expectAlign(c.S_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Uc_F(.{ .v1 = 7273, .v2 = 122, .v3 = 0.810860 }));
}
// From T_Snnn_xaz.c:42572:42592
// struct  S_Uc_I  {
//   short v1;
//   unsigned char v2;
//   int v3;
// };

test "S_Uc_I" {
    var lv: c.S_Uc_I = undefined;
    try testing.expectSize(c.S_Uc_I, 8);
    try testing.expectAlign(c.S_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Uc_I(.{ .v1 = 17362, .v2 = 100, .v3 = 27177 }));
}
// From T_Snnn_xaz.c:42597:42617
// struct  S_Uc_Ip  {
//   short v1;
//   unsigned char v2;
//   int *v3;
// };

test "S_Uc_Ip" {
    var lv: c.S_Uc_Ip = undefined;
    try testing.expectSize(c.S_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Uc_Ip(.{ .v1 = 29292, .v2 = 31, .v3 = null }));
}
// From T_Snnn_xaz.c:42622:42642
// struct  S_Uc_L  {
//   short v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "S_Uc_L" {
    var lv: c.S_Uc_L = undefined;
    try testing.expectSize(c.S_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Uc_L(.{ .v1 = 32250, .v2 = 63, .v3 = 22690 }));
}
// From T_Snnn_xaz.c:42647:42667
// struct  S_Uc_S  {
//   short v1;
//   unsigned char v2;
//   short v3;
// };

test "S_Uc_S" {
    var lv: c.S_Uc_S = undefined;
    try testing.expectSize(c.S_Uc_S, 6);
    try testing.expectAlign(c.S_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Uc_S(.{ .v1 = 24741, .v2 = 1, .v3 = 17911 }));
}
// From T_Snnn_xaz.c:42672:42692
// struct  S_Uc_Uc  {
//   short v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "S_Uc_Uc" {
    var lv: c.S_Uc_Uc = undefined;
    try testing.expectSize(c.S_Uc_Uc, 4);
    try testing.expectAlign(c.S_Uc_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
    try testing.expectOk(c.recv_S_Uc_Uc(.{ .v1 = 10761, .v2 = 91, .v3 = 85 }));
}
// From T_Snnn_xaz.c:42697:42717
// struct  S_Uc_Ui  {
//   short v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "S_Uc_Ui" {
    var lv: c.S_Uc_Ui = undefined;
    try testing.expectSize(c.S_Uc_Ui, 8);
    try testing.expectAlign(c.S_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Uc_Ui(.{ .v1 = 20164, .v2 = 73, .v3 = 10990 }));
}
// From T_Snnn_xaz.c:42722:42742
// struct  S_Uc_Ul  {
//   short v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "S_Uc_Ul" {
    var lv: c.S_Uc_Ul = undefined;
    try testing.expectSize(c.S_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Uc_Ul(.{ .v1 = 26412, .v2 = 74, .v3 = 11990 }));
}
// From T_Snnn_xaz.c:42747:42767
// struct  S_Uc_Us  {
//   short v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "S_Uc_Us" {
    var lv: c.S_Uc_Us = undefined;
    try testing.expectSize(c.S_Uc_Us, 6);
    try testing.expectAlign(c.S_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Uc_Us(.{ .v1 = 29060, .v2 = 68, .v3 = 10911 }));
}
// From T_Snnn_xaz.c:42772:42792
// struct  S_Uc_Vp  {
//   short v1;
//   unsigned char v2;
//   void *v3;
// };

test "S_Uc_Vp" {
    var lv: c.S_Uc_Vp = undefined;
    try testing.expectSize(c.S_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Uc_Vp(.{ .v1 = 22923, .v2 = 118, .v3 = null }));
}
// From T_Snnn_xaz.c:42797:42815
// struct  S_Ui  {
//   short v1;
//   unsigned int v2;
// };

test "S_Ui" {
    var lv: c.S_Ui = undefined;
    try testing.expectSize(c.S_Ui, 8);
    try testing.expectAlign(c.S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_S_Ui(.{ .v1 = 22316, .v2 = 1494 }));
}
// From T_Snnn_xaz.c:43544:43564
// struct  S_Ui_C  {
//   short v1;
//   unsigned int v2;
//   char v3;
// };

test "S_Ui_C" {
    var lv: c.S_Ui_C = undefined;
    try testing.expectSize(c.S_Ui_C, 12);
    try testing.expectAlign(c.S_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_C(.{ .v1 = 27010, .v2 = 4867, .v3 = 101 }));
}
// From T_Snnn_xaz.c:43569:43589
// struct  S_Ui_D  {
//   short v1;
//   unsigned int v2;
//   double v3;
// };

test "S_Ui_D" {
    var lv: c.S_Ui_D = undefined;
    try testing.expectSize(c.S_Ui_D, 16);
    try testing.expectAlign(c.S_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_D(.{ .v1 = 4514, .v2 = 25148, .v3 = 6536 }));
}
// From T_Snnn_xaz.c:43594:43614
// struct  S_Ui_F  {
//   short v1;
//   unsigned int v2;
//   float v3;
// };

test "S_Ui_F" {
    var lv: c.S_Ui_F = undefined;
    try testing.expectSize(c.S_Ui_F, 12);
    try testing.expectAlign(c.S_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_F(.{ .v1 = 22677, .v2 = 7579, .v3 = 0.370597 }));
}
// From T_Snnn_xaz.c:43619:43639
// struct  S_Ui_I  {
//   short v1;
//   unsigned int v2;
//   int v3;
// };

test "S_Ui_I" {
    var lv: c.S_Ui_I = undefined;
    try testing.expectSize(c.S_Ui_I, 12);
    try testing.expectAlign(c.S_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_I(.{ .v1 = 14762, .v2 = 27633, .v3 = 27073 }));
}
// From T_Snnn_xaz.c:43644:43664
// struct  S_Ui_Ip  {
//   short v1;
//   unsigned int v2;
//   int *v3;
// };

test "S_Ui_Ip" {
    var lv: c.S_Ui_Ip = undefined;
    try testing.expectSize(c.S_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_Ip(.{ .v1 = 7247, .v2 = 12387, .v3 = null }));
}
// From T_Snnn_xaz.c:43669:43689
// struct  S_Ui_L  {
//   short v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "S_Ui_L" {
    var lv: c.S_Ui_L = undefined;
    try testing.expectSize(c.S_Ui_L, 16);
    try testing.expectAlign(c.S_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_L(.{ .v1 = 25625, .v2 = 21589, .v3 = 28079 }));
}
// From T_Snnn_xaz.c:43694:43714
// struct  S_Ui_S  {
//   short v1;
//   unsigned int v2;
//   short v3;
// };

test "S_Ui_S" {
    var lv: c.S_Ui_S = undefined;
    try testing.expectSize(c.S_Ui_S, 12);
    try testing.expectAlign(c.S_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_S(.{ .v1 = 29152, .v2 = 15405, .v3 = 13886 }));
}
// From T_Snnn_xaz.c:43719:43739
// struct  S_Ui_Uc  {
//   short v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "S_Ui_Uc" {
    var lv: c.S_Ui_Uc = undefined;
    try testing.expectSize(c.S_Ui_Uc, 12);
    try testing.expectAlign(c.S_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_Uc(.{ .v1 = 16333, .v2 = 28670, .v3 = 24 }));
}
// From T_Snnn_xaz.c:43744:43764
// struct  S_Ui_Ui  {
//   short v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "S_Ui_Ui" {
    var lv: c.S_Ui_Ui = undefined;
    try testing.expectSize(c.S_Ui_Ui, 12);
    try testing.expectAlign(c.S_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_Ui(.{ .v1 = 22899, .v2 = 29265, .v3 = 27146 }));
}
// From T_Snnn_xaz.c:43769:43789
// struct  S_Ui_Ul  {
//   short v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "S_Ui_Ul" {
    var lv: c.S_Ui_Ul = undefined;
    try testing.expectSize(c.S_Ui_Ul, 16);
    try testing.expectAlign(c.S_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_Ul(.{ .v1 = 4262, .v2 = 10146, .v3 = 19964 }));
}
// From T_Snnn_xaz.c:43794:43814
// struct  S_Ui_Us  {
//   short v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "S_Ui_Us" {
    var lv: c.S_Ui_Us = undefined;
    try testing.expectSize(c.S_Ui_Us, 12);
    try testing.expectAlign(c.S_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_Us(.{ .v1 = 14948, .v2 = 19472, .v3 = 4932 }));
}
// From T_Snnn_xaz.c:43819:43839
// struct  S_Ui_Vp  {
//   short v1;
//   unsigned int v2;
//   void *v3;
// };

test "S_Ui_Vp" {
    var lv: c.S_Ui_Vp = undefined;
    try testing.expectSize(c.S_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_S_Ui_Vp(.{ .v1 = 6577, .v2 = 18393, .v3 = null }));
}
// From T_Snnn_xaz.c:43844:43862
// struct  S_Ul  {
//   short v1;
//   __tsu64 v2;
// };

test "S_Ul" {
    var lv: c.S_Ul = undefined;
    try testing.expectSize(c.S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Ul(.{ .v1 = 23494, .v2 = 28281 }));
}
// From T_Snnn_xaz.c:44591:44611
// struct  S_Ul_C  {
//   short v1;
//   __tsu64 v2;
//   char v3;
// };

test "S_Ul_C" {
    var lv: c.S_Ul_C = undefined;
    try testing.expectSize(c.S_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_C(.{ .v1 = 8646, .v2 = 19716, .v3 = 64 }));
}
// From T_Snnn_xaz.c:44616:44636
// struct  S_Ul_D  {
//   short v1;
//   __tsu64 v2;
//   double v3;
// };

test "S_Ul_D" {
    var lv: c.S_Ul_D = undefined;
    try testing.expectSize(c.S_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.S_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_D(.{ .v1 = 8751, .v2 = 28983, .v3 = 28343 }));
}
// From T_Snnn_xaz.c:44641:44661
// struct  S_Ul_F  {
//   short v1;
//   __tsu64 v2;
//   float v3;
// };

test "S_Ul_F" {
    var lv: c.S_Ul_F = undefined;
    try testing.expectSize(c.S_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_F(.{ .v1 = 12972, .v2 = 18724, .v3 = 0.628687 }));
}
// From T_Snnn_xaz.c:44666:44686
// struct  S_Ul_I  {
//   short v1;
//   __tsu64 v2;
//   int v3;
// };

test "S_Ul_I" {
    var lv: c.S_Ul_I = undefined;
    try testing.expectSize(c.S_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_I(.{ .v1 = 11746, .v2 = 13702, .v3 = 15167 }));
}
// From T_Snnn_xaz.c:44691:44711
// struct  S_Ul_Ip  {
//   short v1;
//   __tsu64 v2;
//   int *v3;
// };

test "S_Ul_Ip" {
    var lv: c.S_Ul_Ip = undefined;
    try testing.expectSize(c.S_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_Ip(.{ .v1 = 15991, .v2 = 4017, .v3 = null }));
}
// From T_Snnn_xaz.c:44716:44736
// struct  S_Ul_L  {
//   short v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "S_Ul_L" {
    var lv: c.S_Ul_L = undefined;
    try testing.expectSize(c.S_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.S_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_L(.{ .v1 = 27882, .v2 = 18288, .v3 = 17458 }));
}
// From T_Snnn_xaz.c:44741:44761
// struct  S_Ul_S  {
//   short v1;
//   __tsu64 v2;
//   short v3;
// };

test "S_Ul_S" {
    var lv: c.S_Ul_S = undefined;
    try testing.expectSize(c.S_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_S(.{ .v1 = 32530, .v2 = 29265, .v3 = 10096 }));
}
// From T_Snnn_xaz.c:44766:44786
// struct  S_Ul_Uc  {
//   short v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "S_Ul_Uc" {
    var lv: c.S_Ul_Uc = undefined;
    try testing.expectSize(c.S_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_Uc(.{ .v1 = 6982, .v2 = 10576, .v3 = 118 }));
}
// From T_Snnn_xaz.c:44791:44811
// struct  S_Ul_Ui  {
//   short v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "S_Ul_Ui" {
    var lv: c.S_Ul_Ui = undefined;
    try testing.expectSize(c.S_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_Ui(.{ .v1 = 30721, .v2 = 4703, .v3 = 19408 }));
}
// From T_Snnn_xaz.c:44816:44836
// struct  S_Ul_Ul  {
//   short v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "S_Ul_Ul" {
    var lv: c.S_Ul_Ul = undefined;
    try testing.expectSize(c.S_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.S_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_Ul(.{ .v1 = 17537, .v2 = 32132, .v3 = 9730 }));
}
// From T_Snnn_xaz.c:44841:44861
// struct  S_Ul_Us  {
//   short v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "S_Ul_Us" {
    var lv: c.S_Ul_Us = undefined;
    try testing.expectSize(c.S_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_Us(.{ .v1 = 10662, .v2 = 30069, .v3 = 24462 }));
}
// From T_Snnn_xaz.c:44866:44886
// struct  S_Ul_Vp  {
//   short v1;
//   __tsu64 v2;
//   void *v3;
// };

test "S_Ul_Vp" {
    var lv: c.S_Ul_Vp = undefined;
    try testing.expectSize(c.S_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_S_Ul_Vp(.{ .v1 = 18989, .v2 = 16777, .v3 = null }));
}
// From T_Snnn_xaz.c:44891:44909
// struct  S_Us  {
//   short v1;
//   unsigned short v2;
// };

test "S_Us" {
    var lv: c.S_Us = undefined;
    try testing.expectSize(c.S_Us, 4);
    try testing.expectAlign(c.S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectOk(c.recv_S_Us(.{ .v1 = 13811, .v2 = 29262 }));
}
// From T_Snnn_xaz.c:45638:45658
// struct  S_Us_C  {
//   short v1;
//   unsigned short v2;
//   char v3;
// };

test "S_Us_C" {
    var lv: c.S_Us_C = undefined;
    try testing.expectSize(c.S_Us_C, 6);
    try testing.expectAlign(c.S_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Us_C(.{ .v1 = 31159, .v2 = 23983, .v3 = 41 }));
}
// From T_Snnn_xaz.c:45663:45683
// struct  S_Us_D  {
//   short v1;
//   unsigned short v2;
//   double v3;
// };

test "S_Us_D" {
    var lv: c.S_Us_D = undefined;
    try testing.expectSize(c.S_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Us_D(.{ .v1 = 16499, .v2 = 27492, .v3 = 24885 }));
}
// From T_Snnn_xaz.c:45688:45708
// struct  S_Us_F  {
//   short v1;
//   unsigned short v2;
//   float v3;
// };

test "S_Us_F" {
    var lv: c.S_Us_F = undefined;
    try testing.expectSize(c.S_Us_F, 8);
    try testing.expectAlign(c.S_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Us_F(.{ .v1 = 13266, .v2 = 27742, .v3 = 0.350213 }));
}
// From T_Snnn_xaz.c:45713:45733
// struct  S_Us_I  {
//   short v1;
//   unsigned short v2;
//   int v3;
// };

test "S_Us_I" {
    var lv: c.S_Us_I = undefined;
    try testing.expectSize(c.S_Us_I, 8);
    try testing.expectAlign(c.S_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Us_I(.{ .v1 = 15784, .v2 = 1905, .v3 = 28609 }));
}
// From T_Snnn_xaz.c:45738:45758
// struct  S_Us_Ip  {
//   short v1;
//   unsigned short v2;
//   int *v3;
// };

test "S_Us_Ip" {
    var lv: c.S_Us_Ip = undefined;
    try testing.expectSize(c.S_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Us_Ip(.{ .v1 = 28013, .v2 = 16205, .v3 = null }));
}
// From T_Snnn_xaz.c:45763:45783
// struct  S_Us_L  {
//   short v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "S_Us_L" {
    var lv: c.S_Us_L = undefined;
    try testing.expectSize(c.S_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Us_L(.{ .v1 = 27652, .v2 = 8858, .v3 = 18427 }));
}
// From T_Snnn_xaz.c:45788:45808
// struct  S_Us_S  {
//   short v1;
//   unsigned short v2;
//   short v3;
// };

test "S_Us_S" {
    var lv: c.S_Us_S = undefined;
    try testing.expectSize(c.S_Us_S, 6);
    try testing.expectAlign(c.S_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Us_S(.{ .v1 = 264, .v2 = 9355, .v3 = 11871 }));
}
// From T_Snnn_xaz.c:45813:45833
// struct  S_Us_Uc  {
//   short v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "S_Us_Uc" {
    var lv: c.S_Us_Uc = undefined;
    try testing.expectSize(c.S_Us_Uc, 6);
    try testing.expectAlign(c.S_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Us_Uc(.{ .v1 = 15177, .v2 = 27331, .v3 = 76 }));
}
// From T_Snnn_xaz.c:45838:45858
// struct  S_Us_Ui  {
//   short v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "S_Us_Ui" {
    var lv: c.S_Us_Ui = undefined;
    try testing.expectSize(c.S_Us_Ui, 8);
    try testing.expectAlign(c.S_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Us_Ui(.{ .v1 = 3392, .v2 = 15735, .v3 = 10641 }));
}
// From T_Snnn_xaz.c:45863:45883
// struct  S_Us_Ul  {
//   short v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "S_Us_Ul" {
    var lv: c.S_Us_Ul = undefined;
    try testing.expectSize(c.S_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Us_Ul(.{ .v1 = 3461, .v2 = 17416, .v3 = 5110 }));
}
// From T_Snnn_xaz.c:45888:45908
// struct  S_Us_Us  {
//   short v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "S_Us_Us" {
    var lv: c.S_Us_Us = undefined;
    try testing.expectSize(c.S_Us_Us, 6);
    try testing.expectAlign(c.S_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_S_Us_Us(.{ .v1 = 32304, .v2 = 27609, .v3 = 23414 }));
}
// From T_Snnn_xaz.c:45913:45933
// struct  S_Us_Vp  {
//   short v1;
//   unsigned short v2;
//   void *v3;
// };

test "S_Us_Vp" {
    var lv: c.S_Us_Vp = undefined;
    try testing.expectSize(c.S_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Us_Vp(.{ .v1 = 13313, .v2 = 23232, .v3 = null }));
}
// From T_Snnn_xaz.c:45938:45956
// struct  S_Vp  {
//   short v1;
//   void *v2;
// };

test "S_Vp" {
    var lv: c.S_Vp = undefined;
    try testing.expectSize(c.S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_S_Vp(.{ .v1 = 569, .v2 = null }));
}
// From T_Snnn_xaz.c:46685:46705
// struct  S_Vp_C  {
//   short v1;
//   void *v2;
//   char v3;
// };

test "S_Vp_C" {
    var lv: c.S_Vp_C = undefined;
    try testing.expectSize(c.S_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_C(.{ .v1 = 25479, .v2 = null, .v3 = 109 }));
}
// From T_Snnn_xaz.c:46710:46730
// struct  S_Vp_D  {
//   short v1;
//   void *v2;
//   double v3;
// };

test "S_Vp_D" {
    var lv: c.S_Vp_D = undefined;
    try testing.expectSize(c.S_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_D(.{ .v1 = 30843, .v2 = null, .v3 = 17521 }));
}
// From T_Snnn_xaz.c:46735:46755
// struct  S_Vp_F  {
//   short v1;
//   void *v2;
//   float v3;
// };

test "S_Vp_F" {
    var lv: c.S_Vp_F = undefined;
    try testing.expectSize(c.S_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_F(.{ .v1 = 20007, .v2 = null, .v3 = 0.868092 }));
}
// From T_Snnn_xaz.c:46760:46780
// struct  S_Vp_I  {
//   short v1;
//   void *v2;
//   int v3;
// };

test "S_Vp_I" {
    var lv: c.S_Vp_I = undefined;
    try testing.expectSize(c.S_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_I(.{ .v1 = 26287, .v2 = null, .v3 = 6075 }));
}
// From T_Snnn_xaz.c:46785:46805
// struct  S_Vp_Ip  {
//   short v1;
//   void *v2;
//   int *v3;
// };

test "S_Vp_Ip" {
    var lv: c.S_Vp_Ip = undefined;
    try testing.expectSize(c.S_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_Ip(.{ .v1 = 26387, .v2 = null, .v3 = null }));
}
// From T_Snnn_xaz.c:46810:46830
// struct  S_Vp_L  {
//   short v1;
//   void *v2;
//   __tsi64 v3;
// };

test "S_Vp_L" {
    var lv: c.S_Vp_L = undefined;
    try testing.expectSize(c.S_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_L(.{ .v1 = 26484, .v2 = null, .v3 = 14952 }));
}
// From T_Snnn_xaz.c:46835:46855
// struct  S_Vp_S  {
//   short v1;
//   void *v2;
//   short v3;
// };

test "S_Vp_S" {
    var lv: c.S_Vp_S = undefined;
    try testing.expectSize(c.S_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_S(.{ .v1 = 12233, .v2 = null, .v3 = 29110 }));
}
// From T_Snnn_xaz.c:46860:46880
// struct  S_Vp_Uc  {
//   short v1;
//   void *v2;
//   unsigned char v3;
// };

test "S_Vp_Uc" {
    var lv: c.S_Vp_Uc = undefined;
    try testing.expectSize(c.S_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_Uc(.{ .v1 = 9581, .v2 = null, .v3 = 110 }));
}
// From T_Snnn_xaz.c:46885:46905
// struct  S_Vp_Ui  {
//   short v1;
//   void *v2;
//   unsigned int v3;
// };

test "S_Vp_Ui" {
    var lv: c.S_Vp_Ui = undefined;
    try testing.expectSize(c.S_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_Ui(.{ .v1 = 9149, .v2 = null, .v3 = 28184 }));
}
// From T_Snnn_xaz.c:46910:46930
// struct  S_Vp_Ul  {
//   short v1;
//   void *v2;
//   __tsu64 v3;
// };

test "S_Vp_Ul" {
    var lv: c.S_Vp_Ul = undefined;
    try testing.expectSize(c.S_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_Ul(.{ .v1 = 32074, .v2 = null, .v3 = 7586 }));
}
// From T_Snnn_xaz.c:46935:46955
// struct  S_Vp_Us  {
//   short v1;
//   void *v2;
//   unsigned short v3;
// };

test "S_Vp_Us" {
    var lv: c.S_Vp_Us = undefined;
    try testing.expectSize(c.S_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_Us(.{ .v1 = 4352, .v2 = null, .v3 = 30808 }));
}
// From T_Snnn_xaz.c:46960:46980
// struct  S_Vp_Vp  {
//   short v1;
//   void *v2;
//   void *v3;
// };

test "S_Vp_Vp" {
    var lv: c.S_Vp_Vp = undefined;
    try testing.expectSize(c.S_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_S_Vp_Vp(.{ .v1 = 29864, .v2 = null, .v3 = null }));
}
// From T_Snnn_xaz.c:46985:47001
// struct  Uc  {
//   unsigned char v1;
// };

test "Uc" {
    var lv: c.Uc = undefined;
    try testing.expectSize(c.Uc, 1);
    try testing.expectAlign(c.Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectOk(c.recv_Uc(.{ .v1 = 34 }));
}
// From T_Snnn_xaz.c:77306:77324
// struct  Uc_C  {
//   unsigned char v1;
//   char v2;
// };

test "Uc_C" {
    var lv: c.Uc_C = undefined;
    try testing.expectSize(c.Uc_C, 2);
    try testing.expectAlign(c.Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectOk(c.recv_Uc_C(.{ .v1 = 120, .v2 = 27 }));
}
// From T_Snnn_xaz.c:78053:78073
// struct  Uc_C_C  {
//   unsigned char v1;
//   char v2;
//   char v3;
// };

test "Uc_C_C" {
    var lv: c.Uc_C_C = undefined;
    try testing.expectSize(c.Uc_C_C, 3);
    try testing.expectAlign(c.Uc_C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
    try testing.expectOk(c.recv_Uc_C_C(.{ .v1 = 46, .v2 = 6, .v3 = 117 }));
}
// From T_Snnn_xaz.c:78078:78098
// struct  Uc_C_D  {
//   unsigned char v1;
//   char v2;
//   double v3;
// };

test "Uc_C_D" {
    var lv: c.Uc_C_D = undefined;
    try testing.expectSize(c.Uc_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Uc_C_D(.{ .v1 = 1, .v2 = 18, .v3 = 2502 }));
}
// From T_Snnn_xaz.c:78103:78123
// struct  Uc_C_F  {
//   unsigned char v1;
//   char v2;
//   float v3;
// };

test "Uc_C_F" {
    var lv: c.Uc_C_F = undefined;
    try testing.expectSize(c.Uc_C_F, 8);
    try testing.expectAlign(c.Uc_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_Uc_C_F(.{ .v1 = 64, .v2 = 18, .v3 = 0.475237 }));
}
// From T_Snnn_xaz.c:78128:78148
// struct  Uc_C_I  {
//   unsigned char v1;
//   char v2;
//   int v3;
// };

test "Uc_C_I" {
    var lv: c.Uc_C_I = undefined;
    try testing.expectSize(c.Uc_C_I, 8);
    try testing.expectAlign(c.Uc_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_Uc_C_I(.{ .v1 = 6, .v2 = 59, .v3 = 12321 }));
}
// From T_Snnn_xaz.c:78153:78173
// struct  Uc_C_Ip  {
//   unsigned char v1;
//   char v2;
//   int *v3;
// };

test "Uc_C_Ip" {
    var lv: c.Uc_C_Ip = undefined;
    try testing.expectSize(c.Uc_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Uc_C_Ip(.{ .v1 = 33, .v2 = 21, .v3 = null }));
}
// From T_Snnn_xaz.c:78178:78198
// struct  Uc_C_L  {
//   unsigned char v1;
//   char v2;
//   __tsi64 v3;
// };

test "Uc_C_L" {
    var lv: c.Uc_C_L = undefined;
    try testing.expectSize(c.Uc_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Uc_C_L(.{ .v1 = 99, .v2 = 14, .v3 = 17522 }));
}
// From T_Snnn_xaz.c:78203:78223
// struct  Uc_C_S  {
//   unsigned char v1;
//   char v2;
//   short v3;
// };

test "Uc_C_S" {
    var lv: c.Uc_C_S = undefined;
    try testing.expectSize(c.Uc_C_S, 4);
    try testing.expectAlign(c.Uc_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
    try testing.expectOk(c.recv_Uc_C_S(.{ .v1 = 114, .v2 = 99, .v3 = 5891 }));
}
// From T_Snnn_xaz.c:78228:78248
// struct  Uc_C_Uc  {
//   unsigned char v1;
//   char v2;
//   unsigned char v3;
// };

test "Uc_C_Uc" {
    var lv: c.Uc_C_Uc = undefined;
    try testing.expectSize(c.Uc_C_Uc, 3);
    try testing.expectAlign(c.Uc_C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
    try testing.expectOk(c.recv_Uc_C_Uc(.{ .v1 = 50, .v2 = 55, .v3 = 52 }));
}
// From T_Snnn_xaz.c:78253:78273
// struct  Uc_C_Ui  {
//   unsigned char v1;
//   char v2;
//   unsigned int v3;
// };

test "Uc_C_Ui" {
    var lv: c.Uc_C_Ui = undefined;
    try testing.expectSize(c.Uc_C_Ui, 8);
    try testing.expectAlign(c.Uc_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
    try testing.expectOk(c.recv_Uc_C_Ui(.{ .v1 = 125, .v2 = 48, .v3 = 18849 }));
}
// From T_Snnn_xaz.c:78278:78298
// struct  Uc_C_Ul  {
//   unsigned char v1;
//   char v2;
//   __tsu64 v3;
// };

test "Uc_C_Ul" {
    var lv: c.Uc_C_Ul = undefined;
    try testing.expectSize(c.Uc_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Uc_C_Ul(.{ .v1 = 1, .v2 = 86, .v3 = 23673 }));
}
// From T_Snnn_xaz.c:78303:78323
// struct  Uc_C_Us  {
//   unsigned char v1;
//   char v2;
//   unsigned short v3;
// };

test "Uc_C_Us" {
    var lv: c.Uc_C_Us = undefined;
    try testing.expectSize(c.Uc_C_Us, 4);
    try testing.expectAlign(c.Uc_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
    try testing.expectOk(c.recv_Uc_C_Us(.{ .v1 = 59, .v2 = 21, .v3 = 23319 }));
}
// From T_Snnn_xaz.c:78328:78348
// struct  Uc_C_Vp  {
//   unsigned char v1;
//   char v2;
//   void *v3;
// };

test "Uc_C_Vp" {
    var lv: c.Uc_C_Vp = undefined;
    try testing.expectSize(c.Uc_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Uc_C_Vp(.{ .v1 = 49, .v2 = 127, .v3 = null }));
}
// From T_Snnn_xaz.c:78353:78371
// struct  Uc_D  {
//   unsigned char v1;
//   double v2;
// };

test "Uc_D" {
    var lv: c.Uc_D = undefined;
    try testing.expectSize(c.Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Uc_D(.{ .v1 = 83, .v2 = 9632 }));
}
