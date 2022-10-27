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
}
