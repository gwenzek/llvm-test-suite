const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xba.h");
});

// From T_Snnn_xba.c:529:549
// struct  Uc_D_C  {
//   unsigned char v1;
//   double v2;
//   char v3;
// };

test "Uc_D_C" {
    var lv: c.Uc_D_C = undefined;
    try testing.expectSize(c.Uc_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:554:574
// struct  Uc_D_D  {
//   unsigned char v1;
//   double v2;
//   double v3;
// };

test "Uc_D_D" {
    var lv: c.Uc_D_D = undefined;
    try testing.expectSize(c.Uc_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:579:599
// struct  Uc_D_F  {
//   unsigned char v1;
//   double v2;
//   float v3;
// };

test "Uc_D_F" {
    var lv: c.Uc_D_F = undefined;
    try testing.expectSize(c.Uc_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:604:624
// struct  Uc_D_I  {
//   unsigned char v1;
//   double v2;
//   int v3;
// };

test "Uc_D_I" {
    var lv: c.Uc_D_I = undefined;
    try testing.expectSize(c.Uc_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:629:649
// struct  Uc_D_Ip  {
//   unsigned char v1;
//   double v2;
//   int *v3;
// };

test "Uc_D_Ip" {
    var lv: c.Uc_D_Ip = undefined;
    try testing.expectSize(c.Uc_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:654:674
// struct  Uc_D_L  {
//   unsigned char v1;
//   double v2;
//   __tsi64 v3;
// };

test "Uc_D_L" {
    var lv: c.Uc_D_L = undefined;
    try testing.expectSize(c.Uc_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:679:699
// struct  Uc_D_S  {
//   unsigned char v1;
//   double v2;
//   short v3;
// };

test "Uc_D_S" {
    var lv: c.Uc_D_S = undefined;
    try testing.expectSize(c.Uc_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:704:724
// struct  Uc_D_Uc  {
//   unsigned char v1;
//   double v2;
//   unsigned char v3;
// };

test "Uc_D_Uc" {
    var lv: c.Uc_D_Uc = undefined;
    try testing.expectSize(c.Uc_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:729:749
// struct  Uc_D_Ui  {
//   unsigned char v1;
//   double v2;
//   unsigned int v3;
// };

test "Uc_D_Ui" {
    var lv: c.Uc_D_Ui = undefined;
    try testing.expectSize(c.Uc_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:754:774
// struct  Uc_D_Ul  {
//   unsigned char v1;
//   double v2;
//   __tsu64 v3;
// };

test "Uc_D_Ul" {
    var lv: c.Uc_D_Ul = undefined;
    try testing.expectSize(c.Uc_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:779:799
// struct  Uc_D_Us  {
//   unsigned char v1;
//   double v2;
//   unsigned short v3;
// };

test "Uc_D_Us" {
    var lv: c.Uc_D_Us = undefined;
    try testing.expectSize(c.Uc_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:804:824
// struct  Uc_D_Vp  {
//   unsigned char v1;
//   double v2;
//   void *v3;
// };

test "Uc_D_Vp" {
    var lv: c.Uc_D_Vp = undefined;
    try testing.expectSize(c.Uc_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:829:847
// struct  Uc_F  {
//   unsigned char v1;
//   float v2;
// };

test "Uc_F" {
    var lv: c.Uc_F = undefined;
    try testing.expectSize(c.Uc_F, 8);
    try testing.expectAlign(c.Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:1576:1596
// struct  Uc_F_C  {
//   unsigned char v1;
//   float v2;
//   char v3;
// };

test "Uc_F_C" {
    var lv: c.Uc_F_C = undefined;
    try testing.expectSize(c.Uc_F_C, 12);
    try testing.expectAlign(c.Uc_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1601:1621
// struct  Uc_F_D  {
//   unsigned char v1;
//   float v2;
//   double v3;
// };

test "Uc_F_D" {
    var lv: c.Uc_F_D = undefined;
    try testing.expectSize(c.Uc_F_D, 16);
    try testing.expectAlign(c.Uc_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1626:1646
// struct  Uc_F_F  {
//   unsigned char v1;
//   float v2;
//   float v3;
// };

test "Uc_F_F" {
    var lv: c.Uc_F_F = undefined;
    try testing.expectSize(c.Uc_F_F, 12);
    try testing.expectAlign(c.Uc_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1651:1671
// struct  Uc_F_I  {
//   unsigned char v1;
//   float v2;
//   int v3;
// };

test "Uc_F_I" {
    var lv: c.Uc_F_I = undefined;
    try testing.expectSize(c.Uc_F_I, 12);
    try testing.expectAlign(c.Uc_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1676:1696
// struct  Uc_F_Ip  {
//   unsigned char v1;
//   float v2;
//   int *v3;
// };

test "Uc_F_Ip" {
    var lv: c.Uc_F_Ip = undefined;
    try testing.expectSize(c.Uc_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1701:1721
// struct  Uc_F_L  {
//   unsigned char v1;
//   float v2;
//   __tsi64 v3;
// };

test "Uc_F_L" {
    var lv: c.Uc_F_L = undefined;
    try testing.expectSize(c.Uc_F_L, 16);
    try testing.expectAlign(c.Uc_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1726:1746
// struct  Uc_F_S  {
//   unsigned char v1;
//   float v2;
//   short v3;
// };

test "Uc_F_S" {
    var lv: c.Uc_F_S = undefined;
    try testing.expectSize(c.Uc_F_S, 12);
    try testing.expectAlign(c.Uc_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1751:1771
// struct  Uc_F_Uc  {
//   unsigned char v1;
//   float v2;
//   unsigned char v3;
// };

test "Uc_F_Uc" {
    var lv: c.Uc_F_Uc = undefined;
    try testing.expectSize(c.Uc_F_Uc, 12);
    try testing.expectAlign(c.Uc_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1776:1796
// struct  Uc_F_Ui  {
//   unsigned char v1;
//   float v2;
//   unsigned int v3;
// };

test "Uc_F_Ui" {
    var lv: c.Uc_F_Ui = undefined;
    try testing.expectSize(c.Uc_F_Ui, 12);
    try testing.expectAlign(c.Uc_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1801:1821
// struct  Uc_F_Ul  {
//   unsigned char v1;
//   float v2;
//   __tsu64 v3;
// };

test "Uc_F_Ul" {
    var lv: c.Uc_F_Ul = undefined;
    try testing.expectSize(c.Uc_F_Ul, 16);
    try testing.expectAlign(c.Uc_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1826:1846
// struct  Uc_F_Us  {
//   unsigned char v1;
//   float v2;
//   unsigned short v3;
// };

test "Uc_F_Us" {
    var lv: c.Uc_F_Us = undefined;
    try testing.expectSize(c.Uc_F_Us, 12);
    try testing.expectAlign(c.Uc_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1851:1871
// struct  Uc_F_Vp  {
//   unsigned char v1;
//   float v2;
//   void *v3;
// };

test "Uc_F_Vp" {
    var lv: c.Uc_F_Vp = undefined;
    try testing.expectSize(c.Uc_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1876:1894
// struct  Uc_I  {
//   unsigned char v1;
//   int v2;
// };

test "Uc_I" {
    var lv: c.Uc_I = undefined;
    try testing.expectSize(c.Uc_I, 8);
    try testing.expectAlign(c.Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:2623:2643
// struct  Uc_I_C  {
//   unsigned char v1;
//   int v2;
//   char v3;
// };

test "Uc_I_C" {
    var lv: c.Uc_I_C = undefined;
    try testing.expectSize(c.Uc_I_C, 12);
    try testing.expectAlign(c.Uc_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2648:2668
// struct  Uc_I_D  {
//   unsigned char v1;
//   int v2;
//   double v3;
// };

test "Uc_I_D" {
    var lv: c.Uc_I_D = undefined;
    try testing.expectSize(c.Uc_I_D, 16);
    try testing.expectAlign(c.Uc_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2673:2693
// struct  Uc_I_F  {
//   unsigned char v1;
//   int v2;
//   float v3;
// };

test "Uc_I_F" {
    var lv: c.Uc_I_F = undefined;
    try testing.expectSize(c.Uc_I_F, 12);
    try testing.expectAlign(c.Uc_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2698:2718
// struct  Uc_I_I  {
//   unsigned char v1;
//   int v2;
//   int v3;
// };

test "Uc_I_I" {
    var lv: c.Uc_I_I = undefined;
    try testing.expectSize(c.Uc_I_I, 12);
    try testing.expectAlign(c.Uc_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2723:2743
// struct  Uc_I_Ip  {
//   unsigned char v1;
//   int v2;
//   int *v3;
// };

test "Uc_I_Ip" {
    var lv: c.Uc_I_Ip = undefined;
    try testing.expectSize(c.Uc_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2748:2768
// struct  Uc_I_L  {
//   unsigned char v1;
//   int v2;
//   __tsi64 v3;
// };

test "Uc_I_L" {
    var lv: c.Uc_I_L = undefined;
    try testing.expectSize(c.Uc_I_L, 16);
    try testing.expectAlign(c.Uc_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2773:2793
// struct  Uc_I_S  {
//   unsigned char v1;
//   int v2;
//   short v3;
// };

test "Uc_I_S" {
    var lv: c.Uc_I_S = undefined;
    try testing.expectSize(c.Uc_I_S, 12);
    try testing.expectAlign(c.Uc_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2798:2818
// struct  Uc_I_Uc  {
//   unsigned char v1;
//   int v2;
//   unsigned char v3;
// };

test "Uc_I_Uc" {
    var lv: c.Uc_I_Uc = undefined;
    try testing.expectSize(c.Uc_I_Uc, 12);
    try testing.expectAlign(c.Uc_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2823:2843
// struct  Uc_I_Ui  {
//   unsigned char v1;
//   int v2;
//   unsigned int v3;
// };

test "Uc_I_Ui" {
    var lv: c.Uc_I_Ui = undefined;
    try testing.expectSize(c.Uc_I_Ui, 12);
    try testing.expectAlign(c.Uc_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2848:2868
// struct  Uc_I_Ul  {
//   unsigned char v1;
//   int v2;
//   __tsu64 v3;
// };

test "Uc_I_Ul" {
    var lv: c.Uc_I_Ul = undefined;
    try testing.expectSize(c.Uc_I_Ul, 16);
    try testing.expectAlign(c.Uc_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2873:2893
// struct  Uc_I_Us  {
//   unsigned char v1;
//   int v2;
//   unsigned short v3;
// };

test "Uc_I_Us" {
    var lv: c.Uc_I_Us = undefined;
    try testing.expectSize(c.Uc_I_Us, 12);
    try testing.expectAlign(c.Uc_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2898:2918
// struct  Uc_I_Vp  {
//   unsigned char v1;
//   int v2;
//   void *v3;
// };

test "Uc_I_Vp" {
    var lv: c.Uc_I_Vp = undefined;
    try testing.expectSize(c.Uc_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2923:2941
// struct  Uc_Ip  {
//   unsigned char v1;
//   int *v2;
// };

test "Uc_Ip" {
    var lv: c.Uc_Ip = undefined;
    try testing.expectSize(c.Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:3670:3690
// struct  Uc_Ip_C  {
//   unsigned char v1;
//   int *v2;
//   char v3;
// };

test "Uc_Ip_C" {
    var lv: c.Uc_Ip_C = undefined;
    try testing.expectSize(c.Uc_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3695:3715
// struct  Uc_Ip_D  {
//   unsigned char v1;
//   int *v2;
//   double v3;
// };

test "Uc_Ip_D" {
    var lv: c.Uc_Ip_D = undefined;
    try testing.expectSize(c.Uc_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3720:3740
// struct  Uc_Ip_F  {
//   unsigned char v1;
//   int *v2;
//   float v3;
// };

test "Uc_Ip_F" {
    var lv: c.Uc_Ip_F = undefined;
    try testing.expectSize(c.Uc_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3745:3765
// struct  Uc_Ip_I  {
//   unsigned char v1;
//   int *v2;
//   int v3;
// };

test "Uc_Ip_I" {
    var lv: c.Uc_Ip_I = undefined;
    try testing.expectSize(c.Uc_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3770:3790
// struct  Uc_Ip_Ip  {
//   unsigned char v1;
//   int *v2;
//   int *v3;
// };

test "Uc_Ip_Ip" {
    var lv: c.Uc_Ip_Ip = undefined;
    try testing.expectSize(c.Uc_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3795:3815
// struct  Uc_Ip_L  {
//   unsigned char v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Uc_Ip_L" {
    var lv: c.Uc_Ip_L = undefined;
    try testing.expectSize(c.Uc_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3820:3840
// struct  Uc_Ip_S  {
//   unsigned char v1;
//   int *v2;
//   short v3;
// };

test "Uc_Ip_S" {
    var lv: c.Uc_Ip_S = undefined;
    try testing.expectSize(c.Uc_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3845:3865
// struct  Uc_Ip_Uc  {
//   unsigned char v1;
//   int *v2;
//   unsigned char v3;
// };

test "Uc_Ip_Uc" {
    var lv: c.Uc_Ip_Uc = undefined;
    try testing.expectSize(c.Uc_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3870:3890
// struct  Uc_Ip_Ui  {
//   unsigned char v1;
//   int *v2;
//   unsigned int v3;
// };

test "Uc_Ip_Ui" {
    var lv: c.Uc_Ip_Ui = undefined;
    try testing.expectSize(c.Uc_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3895:3915
// struct  Uc_Ip_Ul  {
//   unsigned char v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Uc_Ip_Ul" {
    var lv: c.Uc_Ip_Ul = undefined;
    try testing.expectSize(c.Uc_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3920:3940
// struct  Uc_Ip_Us  {
//   unsigned char v1;
//   int *v2;
//   unsigned short v3;
// };

test "Uc_Ip_Us" {
    var lv: c.Uc_Ip_Us = undefined;
    try testing.expectSize(c.Uc_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3945:3965
// struct  Uc_Ip_Vp  {
//   unsigned char v1;
//   int *v2;
//   void *v3;
// };

test "Uc_Ip_Vp" {
    var lv: c.Uc_Ip_Vp = undefined;
    try testing.expectSize(c.Uc_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3970:3988
// struct  Uc_L  {
//   unsigned char v1;
//   __tsi64 v2;
// };

test "Uc_L" {
    var lv: c.Uc_L = undefined;
    try testing.expectSize(c.Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:4717:4737
// struct  Uc_L_C  {
//   unsigned char v1;
//   __tsi64 v2;
//   char v3;
// };

test "Uc_L_C" {
    var lv: c.Uc_L_C = undefined;
    try testing.expectSize(c.Uc_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4742:4762
// struct  Uc_L_D  {
//   unsigned char v1;
//   __tsi64 v2;
//   double v3;
// };

test "Uc_L_D" {
    var lv: c.Uc_L_D = undefined;
    try testing.expectSize(c.Uc_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4767:4787
// struct  Uc_L_F  {
//   unsigned char v1;
//   __tsi64 v2;
//   float v3;
// };

test "Uc_L_F" {
    var lv: c.Uc_L_F = undefined;
    try testing.expectSize(c.Uc_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4792:4812
// struct  Uc_L_I  {
//   unsigned char v1;
//   __tsi64 v2;
//   int v3;
// };

test "Uc_L_I" {
    var lv: c.Uc_L_I = undefined;
    try testing.expectSize(c.Uc_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4817:4837
// struct  Uc_L_Ip  {
//   unsigned char v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Uc_L_Ip" {
    var lv: c.Uc_L_Ip = undefined;
    try testing.expectSize(c.Uc_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4842:4862
// struct  Uc_L_L  {
//   unsigned char v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Uc_L_L" {
    var lv: c.Uc_L_L = undefined;
    try testing.expectSize(c.Uc_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4867:4887
// struct  Uc_L_S  {
//   unsigned char v1;
//   __tsi64 v2;
//   short v3;
// };

test "Uc_L_S" {
    var lv: c.Uc_L_S = undefined;
    try testing.expectSize(c.Uc_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4892:4912
// struct  Uc_L_Uc  {
//   unsigned char v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Uc_L_Uc" {
    var lv: c.Uc_L_Uc = undefined;
    try testing.expectSize(c.Uc_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4917:4937
// struct  Uc_L_Ui  {
//   unsigned char v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Uc_L_Ui" {
    var lv: c.Uc_L_Ui = undefined;
    try testing.expectSize(c.Uc_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4942:4962
// struct  Uc_L_Ul  {
//   unsigned char v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Uc_L_Ul" {
    var lv: c.Uc_L_Ul = undefined;
    try testing.expectSize(c.Uc_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4967:4987
// struct  Uc_L_Us  {
//   unsigned char v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Uc_L_Us" {
    var lv: c.Uc_L_Us = undefined;
    try testing.expectSize(c.Uc_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4992:5012
// struct  Uc_L_Vp  {
//   unsigned char v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Uc_L_Vp" {
    var lv: c.Uc_L_Vp = undefined;
    try testing.expectSize(c.Uc_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:5017:5035
// struct  Uc_S  {
//   unsigned char v1;
//   short v2;
// };

test "Uc_S" {
    var lv: c.Uc_S = undefined;
    try testing.expectSize(c.Uc_S, 4);
    try testing.expectAlign(c.Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xba.c:5764:5784
// struct  Uc_S_C  {
//   unsigned char v1;
//   short v2;
//   char v3;
// };

test "Uc_S_C" {
    var lv: c.Uc_S_C = undefined;
    try testing.expectSize(c.Uc_S_C, 6);
    try testing.expectAlign(c.Uc_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:5789:5809
// struct  Uc_S_D  {
//   unsigned char v1;
//   short v2;
//   double v3;
// };

test "Uc_S_D" {
    var lv: c.Uc_S_D = undefined;
    try testing.expectSize(c.Uc_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:5814:5834
// struct  Uc_S_F  {
//   unsigned char v1;
//   short v2;
//   float v3;
// };

test "Uc_S_F" {
    var lv: c.Uc_S_F = undefined;
    try testing.expectSize(c.Uc_S_F, 8);
    try testing.expectAlign(c.Uc_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:5839:5859
// struct  Uc_S_I  {
//   unsigned char v1;
//   short v2;
//   int v3;
// };

test "Uc_S_I" {
    var lv: c.Uc_S_I = undefined;
    try testing.expectSize(c.Uc_S_I, 8);
    try testing.expectAlign(c.Uc_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:5864:5884
// struct  Uc_S_Ip  {
//   unsigned char v1;
//   short v2;
//   int *v3;
// };

test "Uc_S_Ip" {
    var lv: c.Uc_S_Ip = undefined;
    try testing.expectSize(c.Uc_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:5889:5909
// struct  Uc_S_L  {
//   unsigned char v1;
//   short v2;
//   __tsi64 v3;
// };

test "Uc_S_L" {
    var lv: c.Uc_S_L = undefined;
    try testing.expectSize(c.Uc_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:5914:5934
// struct  Uc_S_S  {
//   unsigned char v1;
//   short v2;
//   short v3;
// };

test "Uc_S_S" {
    var lv: c.Uc_S_S = undefined;
    try testing.expectSize(c.Uc_S_S, 6);
    try testing.expectAlign(c.Uc_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:5939:5959
// struct  Uc_S_Uc  {
//   unsigned char v1;
//   short v2;
//   unsigned char v3;
// };

test "Uc_S_Uc" {
    var lv: c.Uc_S_Uc = undefined;
    try testing.expectSize(c.Uc_S_Uc, 6);
    try testing.expectAlign(c.Uc_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:5964:5984
// struct  Uc_S_Ui  {
//   unsigned char v1;
//   short v2;
//   unsigned int v3;
// };

test "Uc_S_Ui" {
    var lv: c.Uc_S_Ui = undefined;
    try testing.expectSize(c.Uc_S_Ui, 8);
    try testing.expectAlign(c.Uc_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:5989:6009
// struct  Uc_S_Ul  {
//   unsigned char v1;
//   short v2;
//   __tsu64 v3;
// };

test "Uc_S_Ul" {
    var lv: c.Uc_S_Ul = undefined;
    try testing.expectSize(c.Uc_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:6014:6034
// struct  Uc_S_Us  {
//   unsigned char v1;
//   short v2;
//   unsigned short v3;
// };

test "Uc_S_Us" {
    var lv: c.Uc_S_Us = undefined;
    try testing.expectSize(c.Uc_S_Us, 6);
    try testing.expectAlign(c.Uc_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:6039:6059
// struct  Uc_S_Vp  {
//   unsigned char v1;
//   short v2;
//   void *v3;
// };

test "Uc_S_Vp" {
    var lv: c.Uc_S_Vp = undefined;
    try testing.expectSize(c.Uc_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:6064:6082
// struct  Uc_Uc  {
//   unsigned char v1;
//   unsigned char v2;
// };

test "Uc_Uc" {
    var lv: c.Uc_Uc = undefined;
    try testing.expectSize(c.Uc_Uc, 2);
    try testing.expectAlign(c.Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Snnn_xba.c:6811:6831
// struct  Uc_Uc_C  {
//   unsigned char v1;
//   unsigned char v2;
//   char v3;
// };

test "Uc_Uc_C" {
    var lv: c.Uc_Uc_C = undefined;
    try testing.expectSize(c.Uc_Uc_C, 3);
    try testing.expectAlign(c.Uc_Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xba.c:6836:6856
// struct  Uc_Uc_D  {
//   unsigned char v1;
//   unsigned char v2;
//   double v3;
// };

test "Uc_Uc_D" {
    var lv: c.Uc_Uc_D = undefined;
    try testing.expectSize(c.Uc_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:6861:6881
// struct  Uc_Uc_F  {
//   unsigned char v1;
//   unsigned char v2;
//   float v3;
// };

test "Uc_Uc_F" {
    var lv: c.Uc_Uc_F = undefined;
    try testing.expectSize(c.Uc_Uc_F, 8);
    try testing.expectAlign(c.Uc_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:6886:6906
// struct  Uc_Uc_I  {
//   unsigned char v1;
//   unsigned char v2;
//   int v3;
// };

test "Uc_Uc_I" {
    var lv: c.Uc_Uc_I = undefined;
    try testing.expectSize(c.Uc_Uc_I, 8);
    try testing.expectAlign(c.Uc_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:6911:6931
// struct  Uc_Uc_Ip  {
//   unsigned char v1;
//   unsigned char v2;
//   int *v3;
// };

test "Uc_Uc_Ip" {
    var lv: c.Uc_Uc_Ip = undefined;
    try testing.expectSize(c.Uc_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:6936:6956
// struct  Uc_Uc_L  {
//   unsigned char v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Uc_Uc_L" {
    var lv: c.Uc_Uc_L = undefined;
    try testing.expectSize(c.Uc_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:6961:6981
// struct  Uc_Uc_S  {
//   unsigned char v1;
//   unsigned char v2;
//   short v3;
// };

test "Uc_Uc_S" {
    var lv: c.Uc_Uc_S = undefined;
    try testing.expectSize(c.Uc_Uc_S, 4);
    try testing.expectAlign(c.Uc_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xba.c:6986:7006
// struct  Uc_Uc_Uc  {
//   unsigned char v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Uc_Uc_Uc" {
    var lv: c.Uc_Uc_Uc = undefined;
    try testing.expectSize(c.Uc_Uc_Uc, 3);
    try testing.expectAlign(c.Uc_Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xba.c:7011:7031
// struct  Uc_Uc_Ui  {
//   unsigned char v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Uc_Uc_Ui" {
    var lv: c.Uc_Uc_Ui = undefined;
    try testing.expectSize(c.Uc_Uc_Ui, 8);
    try testing.expectAlign(c.Uc_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:7036:7056
// struct  Uc_Uc_Ul  {
//   unsigned char v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Uc_Uc_Ul" {
    var lv: c.Uc_Uc_Ul = undefined;
    try testing.expectSize(c.Uc_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:7061:7081
// struct  Uc_Uc_Us  {
//   unsigned char v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Uc_Uc_Us" {
    var lv: c.Uc_Uc_Us = undefined;
    try testing.expectSize(c.Uc_Uc_Us, 4);
    try testing.expectAlign(c.Uc_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xba.c:7086:7106
// struct  Uc_Uc_Vp  {
//   unsigned char v1;
//   unsigned char v2;
//   void *v3;
// };

test "Uc_Uc_Vp" {
    var lv: c.Uc_Uc_Vp = undefined;
    try testing.expectSize(c.Uc_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:7111:7129
// struct  Uc_Ui  {
//   unsigned char v1;
//   unsigned int v2;
// };

test "Uc_Ui" {
    var lv: c.Uc_Ui = undefined;
    try testing.expectSize(c.Uc_Ui, 8);
    try testing.expectAlign(c.Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:7858:7878
// struct  Uc_Ui_C  {
//   unsigned char v1;
//   unsigned int v2;
//   char v3;
// };

test "Uc_Ui_C" {
    var lv: c.Uc_Ui_C = undefined;
    try testing.expectSize(c.Uc_Ui_C, 12);
    try testing.expectAlign(c.Uc_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:7883:7903
// struct  Uc_Ui_D  {
//   unsigned char v1;
//   unsigned int v2;
//   double v3;
// };

test "Uc_Ui_D" {
    var lv: c.Uc_Ui_D = undefined;
    try testing.expectSize(c.Uc_Ui_D, 16);
    try testing.expectAlign(c.Uc_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:7908:7928
// struct  Uc_Ui_F  {
//   unsigned char v1;
//   unsigned int v2;
//   float v3;
// };

test "Uc_Ui_F" {
    var lv: c.Uc_Ui_F = undefined;
    try testing.expectSize(c.Uc_Ui_F, 12);
    try testing.expectAlign(c.Uc_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:7933:7953
// struct  Uc_Ui_I  {
//   unsigned char v1;
//   unsigned int v2;
//   int v3;
// };

test "Uc_Ui_I" {
    var lv: c.Uc_Ui_I = undefined;
    try testing.expectSize(c.Uc_Ui_I, 12);
    try testing.expectAlign(c.Uc_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:7958:7978
// struct  Uc_Ui_Ip  {
//   unsigned char v1;
//   unsigned int v2;
//   int *v3;
// };

test "Uc_Ui_Ip" {
    var lv: c.Uc_Ui_Ip = undefined;
    try testing.expectSize(c.Uc_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:7983:8003
// struct  Uc_Ui_L  {
//   unsigned char v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Uc_Ui_L" {
    var lv: c.Uc_Ui_L = undefined;
    try testing.expectSize(c.Uc_Ui_L, 16);
    try testing.expectAlign(c.Uc_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8008:8028
// struct  Uc_Ui_S  {
//   unsigned char v1;
//   unsigned int v2;
//   short v3;
// };

test "Uc_Ui_S" {
    var lv: c.Uc_Ui_S = undefined;
    try testing.expectSize(c.Uc_Ui_S, 12);
    try testing.expectAlign(c.Uc_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8033:8053
// struct  Uc_Ui_Uc  {
//   unsigned char v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Uc_Ui_Uc" {
    var lv: c.Uc_Ui_Uc = undefined;
    try testing.expectSize(c.Uc_Ui_Uc, 12);
    try testing.expectAlign(c.Uc_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8058:8078
// struct  Uc_Ui_Ui  {
//   unsigned char v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Uc_Ui_Ui" {
    var lv: c.Uc_Ui_Ui = undefined;
    try testing.expectSize(c.Uc_Ui_Ui, 12);
    try testing.expectAlign(c.Uc_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8083:8103
// struct  Uc_Ui_Ul  {
//   unsigned char v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Uc_Ui_Ul" {
    var lv: c.Uc_Ui_Ul = undefined;
    try testing.expectSize(c.Uc_Ui_Ul, 16);
    try testing.expectAlign(c.Uc_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8108:8128
// struct  Uc_Ui_Us  {
//   unsigned char v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Uc_Ui_Us" {
    var lv: c.Uc_Ui_Us = undefined;
    try testing.expectSize(c.Uc_Ui_Us, 12);
    try testing.expectAlign(c.Uc_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8133:8153
// struct  Uc_Ui_Vp  {
//   unsigned char v1;
//   unsigned int v2;
//   void *v3;
// };

test "Uc_Ui_Vp" {
    var lv: c.Uc_Ui_Vp = undefined;
    try testing.expectSize(c.Uc_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8158:8176
// struct  Uc_Ul  {
//   unsigned char v1;
//   __tsu64 v2;
// };

test "Uc_Ul" {
    var lv: c.Uc_Ul = undefined;
    try testing.expectSize(c.Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:8905:8925
// struct  Uc_Ul_C  {
//   unsigned char v1;
//   __tsu64 v2;
//   char v3;
// };

test "Uc_Ul_C" {
    var lv: c.Uc_Ul_C = undefined;
    try testing.expectSize(c.Uc_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:8930:8950
// struct  Uc_Ul_D  {
//   unsigned char v1;
//   __tsu64 v2;
//   double v3;
// };

test "Uc_Ul_D" {
    var lv: c.Uc_Ul_D = undefined;
    try testing.expectSize(c.Uc_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:8955:8975
// struct  Uc_Ul_F  {
//   unsigned char v1;
//   __tsu64 v2;
//   float v3;
// };

test "Uc_Ul_F" {
    var lv: c.Uc_Ul_F = undefined;
    try testing.expectSize(c.Uc_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:8980:9000
// struct  Uc_Ul_I  {
//   unsigned char v1;
//   __tsu64 v2;
//   int v3;
// };

test "Uc_Ul_I" {
    var lv: c.Uc_Ul_I = undefined;
    try testing.expectSize(c.Uc_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9005:9025
// struct  Uc_Ul_Ip  {
//   unsigned char v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Uc_Ul_Ip" {
    var lv: c.Uc_Ul_Ip = undefined;
    try testing.expectSize(c.Uc_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9030:9050
// struct  Uc_Ul_L  {
//   unsigned char v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Uc_Ul_L" {
    var lv: c.Uc_Ul_L = undefined;
    try testing.expectSize(c.Uc_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9055:9075
// struct  Uc_Ul_S  {
//   unsigned char v1;
//   __tsu64 v2;
//   short v3;
// };

test "Uc_Ul_S" {
    var lv: c.Uc_Ul_S = undefined;
    try testing.expectSize(c.Uc_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9080:9100
// struct  Uc_Ul_Uc  {
//   unsigned char v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Uc_Ul_Uc" {
    var lv: c.Uc_Ul_Uc = undefined;
    try testing.expectSize(c.Uc_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9105:9125
// struct  Uc_Ul_Ui  {
//   unsigned char v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Uc_Ul_Ui" {
    var lv: c.Uc_Ul_Ui = undefined;
    try testing.expectSize(c.Uc_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9130:9150
// struct  Uc_Ul_Ul  {
//   unsigned char v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Uc_Ul_Ul" {
    var lv: c.Uc_Ul_Ul = undefined;
    try testing.expectSize(c.Uc_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9155:9175
// struct  Uc_Ul_Us  {
//   unsigned char v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Uc_Ul_Us" {
    var lv: c.Uc_Ul_Us = undefined;
    try testing.expectSize(c.Uc_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9180:9200
// struct  Uc_Ul_Vp  {
//   unsigned char v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Uc_Ul_Vp" {
    var lv: c.Uc_Ul_Vp = undefined;
    try testing.expectSize(c.Uc_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9205:9223
// struct  Uc_Us  {
//   unsigned char v1;
//   unsigned short v2;
// };

test "Uc_Us" {
    var lv: c.Uc_Us = undefined;
    try testing.expectSize(c.Uc_Us, 4);
    try testing.expectAlign(c.Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xba.c:9952:9972
// struct  Uc_Us_C  {
//   unsigned char v1;
//   unsigned short v2;
//   char v3;
// };

test "Uc_Us_C" {
    var lv: c.Uc_Us_C = undefined;
    try testing.expectSize(c.Uc_Us_C, 6);
    try testing.expectAlign(c.Uc_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:9977:9997
// struct  Uc_Us_D  {
//   unsigned char v1;
//   unsigned short v2;
//   double v3;
// };

test "Uc_Us_D" {
    var lv: c.Uc_Us_D = undefined;
    try testing.expectSize(c.Uc_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:10002:10022
// struct  Uc_Us_F  {
//   unsigned char v1;
//   unsigned short v2;
//   float v3;
// };

test "Uc_Us_F" {
    var lv: c.Uc_Us_F = undefined;
    try testing.expectSize(c.Uc_Us_F, 8);
    try testing.expectAlign(c.Uc_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10027:10047
// struct  Uc_Us_I  {
//   unsigned char v1;
//   unsigned short v2;
//   int v3;
// };

test "Uc_Us_I" {
    var lv: c.Uc_Us_I = undefined;
    try testing.expectSize(c.Uc_Us_I, 8);
    try testing.expectAlign(c.Uc_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10052:10072
// struct  Uc_Us_Ip  {
//   unsigned char v1;
//   unsigned short v2;
//   int *v3;
// };

test "Uc_Us_Ip" {
    var lv: c.Uc_Us_Ip = undefined;
    try testing.expectSize(c.Uc_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:10077:10097
// struct  Uc_Us_L  {
//   unsigned char v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Uc_Us_L" {
    var lv: c.Uc_Us_L = undefined;
    try testing.expectSize(c.Uc_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:10102:10122
// struct  Uc_Us_S  {
//   unsigned char v1;
//   unsigned short v2;
//   short v3;
// };

test "Uc_Us_S" {
    var lv: c.Uc_Us_S = undefined;
    try testing.expectSize(c.Uc_Us_S, 6);
    try testing.expectAlign(c.Uc_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10127:10147
// struct  Uc_Us_Uc  {
//   unsigned char v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Uc_Us_Uc" {
    var lv: c.Uc_Us_Uc = undefined;
    try testing.expectSize(c.Uc_Us_Uc, 6);
    try testing.expectAlign(c.Uc_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10152:10172
// struct  Uc_Us_Ui  {
//   unsigned char v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Uc_Us_Ui" {
    var lv: c.Uc_Us_Ui = undefined;
    try testing.expectSize(c.Uc_Us_Ui, 8);
    try testing.expectAlign(c.Uc_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10177:10197
// struct  Uc_Us_Ul  {
//   unsigned char v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Uc_Us_Ul" {
    var lv: c.Uc_Us_Ul = undefined;
    try testing.expectSize(c.Uc_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:10202:10222
// struct  Uc_Us_Us  {
//   unsigned char v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Uc_Us_Us" {
    var lv: c.Uc_Us_Us = undefined;
    try testing.expectSize(c.Uc_Us_Us, 6);
    try testing.expectAlign(c.Uc_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10227:10247
// struct  Uc_Us_Vp  {
//   unsigned char v1;
//   unsigned short v2;
//   void *v3;
// };

test "Uc_Us_Vp" {
    var lv: c.Uc_Us_Vp = undefined;
    try testing.expectSize(c.Uc_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:10252:10270
// struct  Uc_Vp  {
//   unsigned char v1;
//   void *v2;
// };

test "Uc_Vp" {
    var lv: c.Uc_Vp = undefined;
    try testing.expectSize(c.Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:10999:11019
// struct  Uc_Vp_C  {
//   unsigned char v1;
//   void *v2;
//   char v3;
// };

test "Uc_Vp_C" {
    var lv: c.Uc_Vp_C = undefined;
    try testing.expectSize(c.Uc_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11024:11044
// struct  Uc_Vp_D  {
//   unsigned char v1;
//   void *v2;
//   double v3;
// };

test "Uc_Vp_D" {
    var lv: c.Uc_Vp_D = undefined;
    try testing.expectSize(c.Uc_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11049:11069
// struct  Uc_Vp_F  {
//   unsigned char v1;
//   void *v2;
//   float v3;
// };

test "Uc_Vp_F" {
    var lv: c.Uc_Vp_F = undefined;
    try testing.expectSize(c.Uc_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11074:11094
// struct  Uc_Vp_I  {
//   unsigned char v1;
//   void *v2;
//   int v3;
// };

test "Uc_Vp_I" {
    var lv: c.Uc_Vp_I = undefined;
    try testing.expectSize(c.Uc_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11099:11119
// struct  Uc_Vp_Ip  {
//   unsigned char v1;
//   void *v2;
//   int *v3;
// };

test "Uc_Vp_Ip" {
    var lv: c.Uc_Vp_Ip = undefined;
    try testing.expectSize(c.Uc_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11124:11144
// struct  Uc_Vp_L  {
//   unsigned char v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Uc_Vp_L" {
    var lv: c.Uc_Vp_L = undefined;
    try testing.expectSize(c.Uc_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11149:11169
// struct  Uc_Vp_S  {
//   unsigned char v1;
//   void *v2;
//   short v3;
// };

test "Uc_Vp_S" {
    var lv: c.Uc_Vp_S = undefined;
    try testing.expectSize(c.Uc_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11174:11194
// struct  Uc_Vp_Uc  {
//   unsigned char v1;
//   void *v2;
//   unsigned char v3;
// };

test "Uc_Vp_Uc" {
    var lv: c.Uc_Vp_Uc = undefined;
    try testing.expectSize(c.Uc_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11199:11219
// struct  Uc_Vp_Ui  {
//   unsigned char v1;
//   void *v2;
//   unsigned int v3;
// };

test "Uc_Vp_Ui" {
    var lv: c.Uc_Vp_Ui = undefined;
    try testing.expectSize(c.Uc_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11224:11244
// struct  Uc_Vp_Ul  {
//   unsigned char v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Uc_Vp_Ul" {
    var lv: c.Uc_Vp_Ul = undefined;
    try testing.expectSize(c.Uc_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11249:11269
// struct  Uc_Vp_Us  {
//   unsigned char v1;
//   void *v2;
//   unsigned short v3;
// };

test "Uc_Vp_Us" {
    var lv: c.Uc_Vp_Us = undefined;
    try testing.expectSize(c.Uc_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11274:11294
// struct  Uc_Vp_Vp  {
//   unsigned char v1;
//   void *v2;
//   void *v3;
// };

test "Uc_Vp_Vp" {
    var lv: c.Uc_Vp_Vp = undefined;
    try testing.expectSize(c.Uc_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11299:11315
// struct  Ui  {
//   unsigned int v1;
// };

test "Ui" {
    var lv: c.Ui = undefined;
    try testing.expectSize(c.Ui, 4);
    try testing.expectAlign(c.Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Snnn_xba.c:41620:41638
// struct  Ui_C  {
//   unsigned int v1;
//   char v2;
// };

test "Ui_C" {
    var lv: c.Ui_C = undefined;
    try testing.expectSize(c.Ui_C, 8);
    try testing.expectAlign(c.Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:42367:42387
// struct  Ui_C_C  {
//   unsigned int v1;
//   char v2;
//   char v3;
// };

test "Ui_C_C" {
    var lv: c.Ui_C_C = undefined;
    try testing.expectSize(c.Ui_C_C, 8);
    try testing.expectAlign(c.Ui_C_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xba.c:42392:42412
// struct  Ui_C_D  {
//   unsigned int v1;
//   char v2;
//   double v3;
// };

test "Ui_C_D" {
    var lv: c.Ui_C_D = undefined;
    try testing.expectSize(c.Ui_C_D, 16);
    try testing.expectAlign(c.Ui_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42417:42437
// struct  Ui_C_F  {
//   unsigned int v1;
//   char v2;
//   float v3;
// };

test "Ui_C_F" {
    var lv: c.Ui_C_F = undefined;
    try testing.expectSize(c.Ui_C_F, 12);
    try testing.expectAlign(c.Ui_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42442:42462
// struct  Ui_C_I  {
//   unsigned int v1;
//   char v2;
//   int v3;
// };

test "Ui_C_I" {
    var lv: c.Ui_C_I = undefined;
    try testing.expectSize(c.Ui_C_I, 12);
    try testing.expectAlign(c.Ui_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42467:42487
// struct  Ui_C_Ip  {
//   unsigned int v1;
//   char v2;
//   int *v3;
// };

test "Ui_C_Ip" {
    var lv: c.Ui_C_Ip = undefined;
    try testing.expectSize(c.Ui_C_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42492:42512
// struct  Ui_C_L  {
//   unsigned int v1;
//   char v2;
//   __tsi64 v3;
// };

test "Ui_C_L" {
    var lv: c.Ui_C_L = undefined;
    try testing.expectSize(c.Ui_C_L, 16);
    try testing.expectAlign(c.Ui_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42517:42537
// struct  Ui_C_S  {
//   unsigned int v1;
//   char v2;
//   short v3;
// };

test "Ui_C_S" {
    var lv: c.Ui_C_S = undefined;
    try testing.expectSize(c.Ui_C_S, 8);
    try testing.expectAlign(c.Ui_C_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:42542:42562
// struct  Ui_C_Uc  {
//   unsigned int v1;
//   char v2;
//   unsigned char v3;
// };

test "Ui_C_Uc" {
    var lv: c.Ui_C_Uc = undefined;
    try testing.expectSize(c.Ui_C_Uc, 8);
    try testing.expectAlign(c.Ui_C_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xba.c:42567:42587
// struct  Ui_C_Ui  {
//   unsigned int v1;
//   char v2;
//   unsigned int v3;
// };

test "Ui_C_Ui" {
    var lv: c.Ui_C_Ui = undefined;
    try testing.expectSize(c.Ui_C_Ui, 12);
    try testing.expectAlign(c.Ui_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42592:42612
// struct  Ui_C_Ul  {
//   unsigned int v1;
//   char v2;
//   __tsu64 v3;
// };

test "Ui_C_Ul" {
    var lv: c.Ui_C_Ul = undefined;
    try testing.expectSize(c.Ui_C_Ul, 16);
    try testing.expectAlign(c.Ui_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42617:42637
// struct  Ui_C_Us  {
//   unsigned int v1;
//   char v2;
//   unsigned short v3;
// };

test "Ui_C_Us" {
    var lv: c.Ui_C_Us = undefined;
    try testing.expectSize(c.Ui_C_Us, 8);
    try testing.expectAlign(c.Ui_C_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:42642:42662
// struct  Ui_C_Vp  {
//   unsigned int v1;
//   char v2;
//   void *v3;
// };

test "Ui_C_Vp" {
    var lv: c.Ui_C_Vp = undefined;
    try testing.expectSize(c.Ui_C_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42667:42685
// struct  Ui_D  {
//   unsigned int v1;
//   double v2;
// };

test "Ui_D" {
    var lv: c.Ui_D = undefined;
    try testing.expectSize(c.Ui_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:43414:43434
// struct  Ui_D_C  {
//   unsigned int v1;
//   double v2;
//   char v3;
// };

test "Ui_D_C" {
    var lv: c.Ui_D_C = undefined;
    try testing.expectSize(c.Ui_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43439:43459
// struct  Ui_D_D  {
//   unsigned int v1;
//   double v2;
//   double v3;
// };

test "Ui_D_D" {
    var lv: c.Ui_D_D = undefined;
    try testing.expectSize(c.Ui_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43464:43484
// struct  Ui_D_F  {
//   unsigned int v1;
//   double v2;
//   float v3;
// };

test "Ui_D_F" {
    var lv: c.Ui_D_F = undefined;
    try testing.expectSize(c.Ui_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43489:43509
// struct  Ui_D_I  {
//   unsigned int v1;
//   double v2;
//   int v3;
// };

test "Ui_D_I" {
    var lv: c.Ui_D_I = undefined;
    try testing.expectSize(c.Ui_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43514:43534
// struct  Ui_D_Ip  {
//   unsigned int v1;
//   double v2;
//   int *v3;
// };

test "Ui_D_Ip" {
    var lv: c.Ui_D_Ip = undefined;
    try testing.expectSize(c.Ui_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43539:43559
// struct  Ui_D_L  {
//   unsigned int v1;
//   double v2;
//   __tsi64 v3;
// };

test "Ui_D_L" {
    var lv: c.Ui_D_L = undefined;
    try testing.expectSize(c.Ui_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43564:43584
// struct  Ui_D_S  {
//   unsigned int v1;
//   double v2;
//   short v3;
// };

test "Ui_D_S" {
    var lv: c.Ui_D_S = undefined;
    try testing.expectSize(c.Ui_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43589:43609
// struct  Ui_D_Uc  {
//   unsigned int v1;
//   double v2;
//   unsigned char v3;
// };

test "Ui_D_Uc" {
    var lv: c.Ui_D_Uc = undefined;
    try testing.expectSize(c.Ui_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43614:43634
// struct  Ui_D_Ui  {
//   unsigned int v1;
//   double v2;
//   unsigned int v3;
// };

test "Ui_D_Ui" {
    var lv: c.Ui_D_Ui = undefined;
    try testing.expectSize(c.Ui_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43639:43659
// struct  Ui_D_Ul  {
//   unsigned int v1;
//   double v2;
//   __tsu64 v3;
// };

test "Ui_D_Ul" {
    var lv: c.Ui_D_Ul = undefined;
    try testing.expectSize(c.Ui_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43664:43684
// struct  Ui_D_Us  {
//   unsigned int v1;
//   double v2;
//   unsigned short v3;
// };

test "Ui_D_Us" {
    var lv: c.Ui_D_Us = undefined;
    try testing.expectSize(c.Ui_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43689:43709
// struct  Ui_D_Vp  {
//   unsigned int v1;
//   double v2;
//   void *v3;
// };

test "Ui_D_Vp" {
    var lv: c.Ui_D_Vp = undefined;
    try testing.expectSize(c.Ui_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43714:43732
// struct  Ui_F  {
//   unsigned int v1;
//   float v2;
// };

test "Ui_F" {
    var lv: c.Ui_F = undefined;
    try testing.expectSize(c.Ui_F, 8);
    try testing.expectAlign(c.Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:44461:44481
// struct  Ui_F_C  {
//   unsigned int v1;
//   float v2;
//   char v3;
// };

test "Ui_F_C" {
    var lv: c.Ui_F_C = undefined;
    try testing.expectSize(c.Ui_F_C, 12);
    try testing.expectAlign(c.Ui_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44486:44506
// struct  Ui_F_D  {
//   unsigned int v1;
//   float v2;
//   double v3;
// };

test "Ui_F_D" {
    var lv: c.Ui_F_D = undefined;
    try testing.expectSize(c.Ui_F_D, 16);
    try testing.expectAlign(c.Ui_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44511:44531
// struct  Ui_F_F  {
//   unsigned int v1;
//   float v2;
//   float v3;
// };

test "Ui_F_F" {
    var lv: c.Ui_F_F = undefined;
    try testing.expectSize(c.Ui_F_F, 12);
    try testing.expectAlign(c.Ui_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44536:44556
// struct  Ui_F_I  {
//   unsigned int v1;
//   float v2;
//   int v3;
// };

test "Ui_F_I" {
    var lv: c.Ui_F_I = undefined;
    try testing.expectSize(c.Ui_F_I, 12);
    try testing.expectAlign(c.Ui_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44561:44581
// struct  Ui_F_Ip  {
//   unsigned int v1;
//   float v2;
//   int *v3;
// };

test "Ui_F_Ip" {
    var lv: c.Ui_F_Ip = undefined;
    try testing.expectSize(c.Ui_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44586:44606
// struct  Ui_F_L  {
//   unsigned int v1;
//   float v2;
//   __tsi64 v3;
// };

test "Ui_F_L" {
    var lv: c.Ui_F_L = undefined;
    try testing.expectSize(c.Ui_F_L, 16);
    try testing.expectAlign(c.Ui_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44611:44631
// struct  Ui_F_S  {
//   unsigned int v1;
//   float v2;
//   short v3;
// };

test "Ui_F_S" {
    var lv: c.Ui_F_S = undefined;
    try testing.expectSize(c.Ui_F_S, 12);
    try testing.expectAlign(c.Ui_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44636:44656
// struct  Ui_F_Uc  {
//   unsigned int v1;
//   float v2;
//   unsigned char v3;
// };

test "Ui_F_Uc" {
    var lv: c.Ui_F_Uc = undefined;
    try testing.expectSize(c.Ui_F_Uc, 12);
    try testing.expectAlign(c.Ui_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44661:44681
// struct  Ui_F_Ui  {
//   unsigned int v1;
//   float v2;
//   unsigned int v3;
// };

test "Ui_F_Ui" {
    var lv: c.Ui_F_Ui = undefined;
    try testing.expectSize(c.Ui_F_Ui, 12);
    try testing.expectAlign(c.Ui_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44686:44706
// struct  Ui_F_Ul  {
//   unsigned int v1;
//   float v2;
//   __tsu64 v3;
// };

test "Ui_F_Ul" {
    var lv: c.Ui_F_Ul = undefined;
    try testing.expectSize(c.Ui_F_Ul, 16);
    try testing.expectAlign(c.Ui_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44711:44731
// struct  Ui_F_Us  {
//   unsigned int v1;
//   float v2;
//   unsigned short v3;
// };

test "Ui_F_Us" {
    var lv: c.Ui_F_Us = undefined;
    try testing.expectSize(c.Ui_F_Us, 12);
    try testing.expectAlign(c.Ui_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44736:44756
// struct  Ui_F_Vp  {
//   unsigned int v1;
//   float v2;
//   void *v3;
// };

test "Ui_F_Vp" {
    var lv: c.Ui_F_Vp = undefined;
    try testing.expectSize(c.Ui_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44761:44779
// struct  Ui_I  {
//   unsigned int v1;
//   int v2;
// };

test "Ui_I" {
    var lv: c.Ui_I = undefined;
    try testing.expectSize(c.Ui_I, 8);
    try testing.expectAlign(c.Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:45508:45528
// struct  Ui_I_C  {
//   unsigned int v1;
//   int v2;
//   char v3;
// };

test "Ui_I_C" {
    var lv: c.Ui_I_C = undefined;
    try testing.expectSize(c.Ui_I_C, 12);
    try testing.expectAlign(c.Ui_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45533:45553
// struct  Ui_I_D  {
//   unsigned int v1;
//   int v2;
//   double v3;
// };

test "Ui_I_D" {
    var lv: c.Ui_I_D = undefined;
    try testing.expectSize(c.Ui_I_D, 16);
    try testing.expectAlign(c.Ui_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45558:45578
// struct  Ui_I_F  {
//   unsigned int v1;
//   int v2;
//   float v3;
// };

test "Ui_I_F" {
    var lv: c.Ui_I_F = undefined;
    try testing.expectSize(c.Ui_I_F, 12);
    try testing.expectAlign(c.Ui_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45583:45603
// struct  Ui_I_I  {
//   unsigned int v1;
//   int v2;
//   int v3;
// };

test "Ui_I_I" {
    var lv: c.Ui_I_I = undefined;
    try testing.expectSize(c.Ui_I_I, 12);
    try testing.expectAlign(c.Ui_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45608:45628
// struct  Ui_I_Ip  {
//   unsigned int v1;
//   int v2;
//   int *v3;
// };

test "Ui_I_Ip" {
    var lv: c.Ui_I_Ip = undefined;
    try testing.expectSize(c.Ui_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45633:45653
// struct  Ui_I_L  {
//   unsigned int v1;
//   int v2;
//   __tsi64 v3;
// };

test "Ui_I_L" {
    var lv: c.Ui_I_L = undefined;
    try testing.expectSize(c.Ui_I_L, 16);
    try testing.expectAlign(c.Ui_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45658:45678
// struct  Ui_I_S  {
//   unsigned int v1;
//   int v2;
//   short v3;
// };

test "Ui_I_S" {
    var lv: c.Ui_I_S = undefined;
    try testing.expectSize(c.Ui_I_S, 12);
    try testing.expectAlign(c.Ui_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45683:45703
// struct  Ui_I_Uc  {
//   unsigned int v1;
//   int v2;
//   unsigned char v3;
// };

test "Ui_I_Uc" {
    var lv: c.Ui_I_Uc = undefined;
    try testing.expectSize(c.Ui_I_Uc, 12);
    try testing.expectAlign(c.Ui_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45708:45728
// struct  Ui_I_Ui  {
//   unsigned int v1;
//   int v2;
//   unsigned int v3;
// };

test "Ui_I_Ui" {
    var lv: c.Ui_I_Ui = undefined;
    try testing.expectSize(c.Ui_I_Ui, 12);
    try testing.expectAlign(c.Ui_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45733:45753
// struct  Ui_I_Ul  {
//   unsigned int v1;
//   int v2;
//   __tsu64 v3;
// };

test "Ui_I_Ul" {
    var lv: c.Ui_I_Ul = undefined;
    try testing.expectSize(c.Ui_I_Ul, 16);
    try testing.expectAlign(c.Ui_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45758:45778
// struct  Ui_I_Us  {
//   unsigned int v1;
//   int v2;
//   unsigned short v3;
// };

test "Ui_I_Us" {
    var lv: c.Ui_I_Us = undefined;
    try testing.expectSize(c.Ui_I_Us, 12);
    try testing.expectAlign(c.Ui_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45783:45803
// struct  Ui_I_Vp  {
//   unsigned int v1;
//   int v2;
//   void *v3;
// };

test "Ui_I_Vp" {
    var lv: c.Ui_I_Vp = undefined;
    try testing.expectSize(c.Ui_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45808:45826
// struct  Ui_Ip  {
//   unsigned int v1;
//   int *v2;
// };

test "Ui_Ip" {
    var lv: c.Ui_Ip = undefined;
    try testing.expectSize(c.Ui_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:46555:46575
// struct  Ui_Ip_C  {
//   unsigned int v1;
//   int *v2;
//   char v3;
// };

test "Ui_Ip_C" {
    var lv: c.Ui_Ip_C = undefined;
    try testing.expectSize(c.Ui_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46580:46600
// struct  Ui_Ip_D  {
//   unsigned int v1;
//   int *v2;
//   double v3;
// };

test "Ui_Ip_D" {
    var lv: c.Ui_Ip_D = undefined;
    try testing.expectSize(c.Ui_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46605:46625
// struct  Ui_Ip_F  {
//   unsigned int v1;
//   int *v2;
//   float v3;
// };

test "Ui_Ip_F" {
    var lv: c.Ui_Ip_F = undefined;
    try testing.expectSize(c.Ui_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46630:46650
// struct  Ui_Ip_I  {
//   unsigned int v1;
//   int *v2;
//   int v3;
// };

test "Ui_Ip_I" {
    var lv: c.Ui_Ip_I = undefined;
    try testing.expectSize(c.Ui_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46655:46675
// struct  Ui_Ip_Ip  {
//   unsigned int v1;
//   int *v2;
//   int *v3;
// };

test "Ui_Ip_Ip" {
    var lv: c.Ui_Ip_Ip = undefined;
    try testing.expectSize(c.Ui_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46680:46700
// struct  Ui_Ip_L  {
//   unsigned int v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Ui_Ip_L" {
    var lv: c.Ui_Ip_L = undefined;
    try testing.expectSize(c.Ui_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46705:46725
// struct  Ui_Ip_S  {
//   unsigned int v1;
//   int *v2;
//   short v3;
// };

test "Ui_Ip_S" {
    var lv: c.Ui_Ip_S = undefined;
    try testing.expectSize(c.Ui_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46730:46750
// struct  Ui_Ip_Uc  {
//   unsigned int v1;
//   int *v2;
//   unsigned char v3;
// };

test "Ui_Ip_Uc" {
    var lv: c.Ui_Ip_Uc = undefined;
    try testing.expectSize(c.Ui_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46755:46775
// struct  Ui_Ip_Ui  {
//   unsigned int v1;
//   int *v2;
//   unsigned int v3;
// };

test "Ui_Ip_Ui" {
    var lv: c.Ui_Ip_Ui = undefined;
    try testing.expectSize(c.Ui_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46780:46800
// struct  Ui_Ip_Ul  {
//   unsigned int v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Ui_Ip_Ul" {
    var lv: c.Ui_Ip_Ul = undefined;
    try testing.expectSize(c.Ui_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46805:46825
// struct  Ui_Ip_Us  {
//   unsigned int v1;
//   int *v2;
//   unsigned short v3;
// };

test "Ui_Ip_Us" {
    var lv: c.Ui_Ip_Us = undefined;
    try testing.expectSize(c.Ui_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46830:46850
// struct  Ui_Ip_Vp  {
//   unsigned int v1;
//   int *v2;
//   void *v3;
// };

test "Ui_Ip_Vp" {
    var lv: c.Ui_Ip_Vp = undefined;
    try testing.expectSize(c.Ui_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46855:46873
// struct  Ui_L  {
//   unsigned int v1;
//   __tsi64 v2;
// };

test "Ui_L" {
    var lv: c.Ui_L = undefined;
    try testing.expectSize(c.Ui_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:47602:47622
// struct  Ui_L_C  {
//   unsigned int v1;
//   __tsi64 v2;
//   char v3;
// };

test "Ui_L_C" {
    var lv: c.Ui_L_C = undefined;
    try testing.expectSize(c.Ui_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47627:47647
// struct  Ui_L_D  {
//   unsigned int v1;
//   __tsi64 v2;
//   double v3;
// };

test "Ui_L_D" {
    var lv: c.Ui_L_D = undefined;
    try testing.expectSize(c.Ui_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47652:47672
// struct  Ui_L_F  {
//   unsigned int v1;
//   __tsi64 v2;
//   float v3;
// };

test "Ui_L_F" {
    var lv: c.Ui_L_F = undefined;
    try testing.expectSize(c.Ui_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47677:47697
// struct  Ui_L_I  {
//   unsigned int v1;
//   __tsi64 v2;
//   int v3;
// };

test "Ui_L_I" {
    var lv: c.Ui_L_I = undefined;
    try testing.expectSize(c.Ui_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47702:47722
// struct  Ui_L_Ip  {
//   unsigned int v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Ui_L_Ip" {
    var lv: c.Ui_L_Ip = undefined;
    try testing.expectSize(c.Ui_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47727:47747
// struct  Ui_L_L  {
//   unsigned int v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Ui_L_L" {
    var lv: c.Ui_L_L = undefined;
    try testing.expectSize(c.Ui_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47752:47772
// struct  Ui_L_S  {
//   unsigned int v1;
//   __tsi64 v2;
//   short v3;
// };

test "Ui_L_S" {
    var lv: c.Ui_L_S = undefined;
    try testing.expectSize(c.Ui_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47777:47797
// struct  Ui_L_Uc  {
//   unsigned int v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Ui_L_Uc" {
    var lv: c.Ui_L_Uc = undefined;
    try testing.expectSize(c.Ui_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47802:47822
// struct  Ui_L_Ui  {
//   unsigned int v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Ui_L_Ui" {
    var lv: c.Ui_L_Ui = undefined;
    try testing.expectSize(c.Ui_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47827:47847
// struct  Ui_L_Ul  {
//   unsigned int v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Ui_L_Ul" {
    var lv: c.Ui_L_Ul = undefined;
    try testing.expectSize(c.Ui_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47852:47872
// struct  Ui_L_Us  {
//   unsigned int v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Ui_L_Us" {
    var lv: c.Ui_L_Us = undefined;
    try testing.expectSize(c.Ui_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47877:47897
// struct  Ui_L_Vp  {
//   unsigned int v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Ui_L_Vp" {
    var lv: c.Ui_L_Vp = undefined;
    try testing.expectSize(c.Ui_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47902:47920
// struct  Ui_S  {
//   unsigned int v1;
//   short v2;
// };

test "Ui_S" {
    var lv: c.Ui_S = undefined;
    try testing.expectSize(c.Ui_S, 8);
    try testing.expectAlign(c.Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:48649:48669
// struct  Ui_S_C  {
//   unsigned int v1;
//   short v2;
//   char v3;
// };

test "Ui_S_C" {
    var lv: c.Ui_S_C = undefined;
    try testing.expectSize(c.Ui_S_C, 8);
    try testing.expectAlign(c.Ui_S_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:48674:48694
// struct  Ui_S_D  {
//   unsigned int v1;
//   short v2;
//   double v3;
// };

test "Ui_S_D" {
    var lv: c.Ui_S_D = undefined;
    try testing.expectSize(c.Ui_S_D, 16);
    try testing.expectAlign(c.Ui_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48699:48719
// struct  Ui_S_F  {
//   unsigned int v1;
//   short v2;
//   float v3;
// };

test "Ui_S_F" {
    var lv: c.Ui_S_F = undefined;
    try testing.expectSize(c.Ui_S_F, 12);
    try testing.expectAlign(c.Ui_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48724:48744
// struct  Ui_S_I  {
//   unsigned int v1;
//   short v2;
//   int v3;
// };

test "Ui_S_I" {
    var lv: c.Ui_S_I = undefined;
    try testing.expectSize(c.Ui_S_I, 12);
    try testing.expectAlign(c.Ui_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48749:48769
// struct  Ui_S_Ip  {
//   unsigned int v1;
//   short v2;
//   int *v3;
// };

test "Ui_S_Ip" {
    var lv: c.Ui_S_Ip = undefined;
    try testing.expectSize(c.Ui_S_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48774:48794
// struct  Ui_S_L  {
//   unsigned int v1;
//   short v2;
//   __tsi64 v3;
// };

test "Ui_S_L" {
    var lv: c.Ui_S_L = undefined;
    try testing.expectSize(c.Ui_S_L, 16);
    try testing.expectAlign(c.Ui_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48799:48819
// struct  Ui_S_S  {
//   unsigned int v1;
//   short v2;
//   short v3;
// };

test "Ui_S_S" {
    var lv: c.Ui_S_S = undefined;
    try testing.expectSize(c.Ui_S_S, 8);
    try testing.expectAlign(c.Ui_S_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:48824:48844
// struct  Ui_S_Uc  {
//   unsigned int v1;
//   short v2;
//   unsigned char v3;
// };

test "Ui_S_Uc" {
    var lv: c.Ui_S_Uc = undefined;
    try testing.expectSize(c.Ui_S_Uc, 8);
    try testing.expectAlign(c.Ui_S_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:48849:48869
// struct  Ui_S_Ui  {
//   unsigned int v1;
//   short v2;
//   unsigned int v3;
// };

test "Ui_S_Ui" {
    var lv: c.Ui_S_Ui = undefined;
    try testing.expectSize(c.Ui_S_Ui, 12);
    try testing.expectAlign(c.Ui_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48874:48894
// struct  Ui_S_Ul  {
//   unsigned int v1;
//   short v2;
//   __tsu64 v3;
// };

test "Ui_S_Ul" {
    var lv: c.Ui_S_Ul = undefined;
    try testing.expectSize(c.Ui_S_Ul, 16);
    try testing.expectAlign(c.Ui_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48899:48919
// struct  Ui_S_Us  {
//   unsigned int v1;
//   short v2;
//   unsigned short v3;
// };

test "Ui_S_Us" {
    var lv: c.Ui_S_Us = undefined;
    try testing.expectSize(c.Ui_S_Us, 8);
    try testing.expectAlign(c.Ui_S_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:48924:48944
// struct  Ui_S_Vp  {
//   unsigned int v1;
//   short v2;
//   void *v3;
// };

test "Ui_S_Vp" {
    var lv: c.Ui_S_Vp = undefined;
    try testing.expectSize(c.Ui_S_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48949:48967
// struct  Ui_Uc  {
//   unsigned int v1;
//   unsigned char v2;
// };

test "Ui_Uc" {
    var lv: c.Ui_Uc = undefined;
    try testing.expectSize(c.Ui_Uc, 8);
    try testing.expectAlign(c.Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:49696:49716
// struct  Ui_Uc_C  {
//   unsigned int v1;
//   unsigned char v2;
//   char v3;
// };

test "Ui_Uc_C" {
    var lv: c.Ui_Uc_C = undefined;
    try testing.expectSize(c.Ui_Uc_C, 8);
    try testing.expectAlign(c.Ui_Uc_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xba.c:49721:49741
// struct  Ui_Uc_D  {
//   unsigned int v1;
//   unsigned char v2;
//   double v3;
// };

test "Ui_Uc_D" {
    var lv: c.Ui_Uc_D = undefined;
    try testing.expectSize(c.Ui_Uc_D, 16);
    try testing.expectAlign(c.Ui_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49746:49766
// struct  Ui_Uc_F  {
//   unsigned int v1;
//   unsigned char v2;
//   float v3;
// };

test "Ui_Uc_F" {
    var lv: c.Ui_Uc_F = undefined;
    try testing.expectSize(c.Ui_Uc_F, 12);
    try testing.expectAlign(c.Ui_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49771:49791
// struct  Ui_Uc_I  {
//   unsigned int v1;
//   unsigned char v2;
//   int v3;
// };

test "Ui_Uc_I" {
    var lv: c.Ui_Uc_I = undefined;
    try testing.expectSize(c.Ui_Uc_I, 12);
    try testing.expectAlign(c.Ui_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49796:49816
// struct  Ui_Uc_Ip  {
//   unsigned int v1;
//   unsigned char v2;
//   int *v3;
// };

test "Ui_Uc_Ip" {
    var lv: c.Ui_Uc_Ip = undefined;
    try testing.expectSize(c.Ui_Uc_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49821:49841
// struct  Ui_Uc_L  {
//   unsigned int v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Ui_Uc_L" {
    var lv: c.Ui_Uc_L = undefined;
    try testing.expectSize(c.Ui_Uc_L, 16);
    try testing.expectAlign(c.Ui_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49846:49866
// struct  Ui_Uc_S  {
//   unsigned int v1;
//   unsigned char v2;
//   short v3;
// };

test "Ui_Uc_S" {
    var lv: c.Ui_Uc_S = undefined;
    try testing.expectSize(c.Ui_Uc_S, 8);
    try testing.expectAlign(c.Ui_Uc_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:49871:49891
// struct  Ui_Uc_Uc  {
//   unsigned int v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Ui_Uc_Uc" {
    var lv: c.Ui_Uc_Uc = undefined;
    try testing.expectSize(c.Ui_Uc_Uc, 8);
    try testing.expectAlign(c.Ui_Uc_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xba.c:49896:49916
// struct  Ui_Uc_Ui  {
//   unsigned int v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Ui_Uc_Ui" {
    var lv: c.Ui_Uc_Ui = undefined;
    try testing.expectSize(c.Ui_Uc_Ui, 12);
    try testing.expectAlign(c.Ui_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49921:49941
// struct  Ui_Uc_Ul  {
//   unsigned int v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Ui_Uc_Ul" {
    var lv: c.Ui_Uc_Ul = undefined;
    try testing.expectSize(c.Ui_Uc_Ul, 16);
    try testing.expectAlign(c.Ui_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49946:49966
// struct  Ui_Uc_Us  {
//   unsigned int v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Ui_Uc_Us" {
    var lv: c.Ui_Uc_Us = undefined;
    try testing.expectSize(c.Ui_Uc_Us, 8);
    try testing.expectAlign(c.Ui_Uc_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:49971:49991
// struct  Ui_Uc_Vp  {
//   unsigned int v1;
//   unsigned char v2;
//   void *v3;
// };

test "Ui_Uc_Vp" {
    var lv: c.Ui_Uc_Vp = undefined;
    try testing.expectSize(c.Ui_Uc_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49996:50014
// struct  Ui_Ui  {
//   unsigned int v1;
//   unsigned int v2;
// };

test "Ui_Ui" {
    var lv: c.Ui_Ui = undefined;
    try testing.expectSize(c.Ui_Ui, 8);
    try testing.expectAlign(c.Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:50743:50763
// struct  Ui_Ui_C  {
//   unsigned int v1;
//   unsigned int v2;
//   char v3;
// };

test "Ui_Ui_C" {
    var lv: c.Ui_Ui_C = undefined;
    try testing.expectSize(c.Ui_Ui_C, 12);
    try testing.expectAlign(c.Ui_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50768:50788
// struct  Ui_Ui_D  {
//   unsigned int v1;
//   unsigned int v2;
//   double v3;
// };

test "Ui_Ui_D" {
    var lv: c.Ui_Ui_D = undefined;
    try testing.expectSize(c.Ui_Ui_D, 16);
    try testing.expectAlign(c.Ui_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50793:50813
// struct  Ui_Ui_F  {
//   unsigned int v1;
//   unsigned int v2;
//   float v3;
// };

test "Ui_Ui_F" {
    var lv: c.Ui_Ui_F = undefined;
    try testing.expectSize(c.Ui_Ui_F, 12);
    try testing.expectAlign(c.Ui_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50818:50838
// struct  Ui_Ui_I  {
//   unsigned int v1;
//   unsigned int v2;
//   int v3;
// };

test "Ui_Ui_I" {
    var lv: c.Ui_Ui_I = undefined;
    try testing.expectSize(c.Ui_Ui_I, 12);
    try testing.expectAlign(c.Ui_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50843:50863
// struct  Ui_Ui_Ip  {
//   unsigned int v1;
//   unsigned int v2;
//   int *v3;
// };

test "Ui_Ui_Ip" {
    var lv: c.Ui_Ui_Ip = undefined;
    try testing.expectSize(c.Ui_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50868:50888
// struct  Ui_Ui_L  {
//   unsigned int v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Ui_Ui_L" {
    var lv: c.Ui_Ui_L = undefined;
    try testing.expectSize(c.Ui_Ui_L, 16);
    try testing.expectAlign(c.Ui_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50893:50913
// struct  Ui_Ui_S  {
//   unsigned int v1;
//   unsigned int v2;
//   short v3;
// };

test "Ui_Ui_S" {
    var lv: c.Ui_Ui_S = undefined;
    try testing.expectSize(c.Ui_Ui_S, 12);
    try testing.expectAlign(c.Ui_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50918:50938
// struct  Ui_Ui_Uc  {
//   unsigned int v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Ui_Ui_Uc" {
    var lv: c.Ui_Ui_Uc = undefined;
    try testing.expectSize(c.Ui_Ui_Uc, 12);
    try testing.expectAlign(c.Ui_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50943:50963
// struct  Ui_Ui_Ui  {
//   unsigned int v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Ui_Ui_Ui" {
    var lv: c.Ui_Ui_Ui = undefined;
    try testing.expectSize(c.Ui_Ui_Ui, 12);
    try testing.expectAlign(c.Ui_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50968:50988
// struct  Ui_Ui_Ul  {
//   unsigned int v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Ui_Ui_Ul" {
    var lv: c.Ui_Ui_Ul = undefined;
    try testing.expectSize(c.Ui_Ui_Ul, 16);
    try testing.expectAlign(c.Ui_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50993:51013
// struct  Ui_Ui_Us  {
//   unsigned int v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Ui_Ui_Us" {
    var lv: c.Ui_Ui_Us = undefined;
    try testing.expectSize(c.Ui_Ui_Us, 12);
    try testing.expectAlign(c.Ui_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:51018:51038
// struct  Ui_Ui_Vp  {
//   unsigned int v1;
//   unsigned int v2;
//   void *v3;
// };

test "Ui_Ui_Vp" {
    var lv: c.Ui_Ui_Vp = undefined;
    try testing.expectSize(c.Ui_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:51043:51061
// struct  Ui_Ul  {
//   unsigned int v1;
//   __tsu64 v2;
// };

test "Ui_Ul" {
    var lv: c.Ui_Ul = undefined;
    try testing.expectSize(c.Ui_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:51790:51810
// struct  Ui_Ul_C  {
//   unsigned int v1;
//   __tsu64 v2;
//   char v3;
// };

test "Ui_Ul_C" {
    var lv: c.Ui_Ul_C = undefined;
    try testing.expectSize(c.Ui_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51815:51835
// struct  Ui_Ul_D  {
//   unsigned int v1;
//   __tsu64 v2;
//   double v3;
// };

test "Ui_Ul_D" {
    var lv: c.Ui_Ul_D = undefined;
    try testing.expectSize(c.Ui_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51840:51860
// struct  Ui_Ul_F  {
//   unsigned int v1;
//   __tsu64 v2;
//   float v3;
// };

test "Ui_Ul_F" {
    var lv: c.Ui_Ul_F = undefined;
    try testing.expectSize(c.Ui_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51865:51885
// struct  Ui_Ul_I  {
//   unsigned int v1;
//   __tsu64 v2;
//   int v3;
// };

test "Ui_Ul_I" {
    var lv: c.Ui_Ul_I = undefined;
    try testing.expectSize(c.Ui_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51890:51910
// struct  Ui_Ul_Ip  {
//   unsigned int v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Ui_Ul_Ip" {
    var lv: c.Ui_Ul_Ip = undefined;
    try testing.expectSize(c.Ui_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51915:51935
// struct  Ui_Ul_L  {
//   unsigned int v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Ui_Ul_L" {
    var lv: c.Ui_Ul_L = undefined;
    try testing.expectSize(c.Ui_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51940:51960
// struct  Ui_Ul_S  {
//   unsigned int v1;
//   __tsu64 v2;
//   short v3;
// };

test "Ui_Ul_S" {
    var lv: c.Ui_Ul_S = undefined;
    try testing.expectSize(c.Ui_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51965:51985
// struct  Ui_Ul_Uc  {
//   unsigned int v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Ui_Ul_Uc" {
    var lv: c.Ui_Ul_Uc = undefined;
    try testing.expectSize(c.Ui_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51990:52010
// struct  Ui_Ul_Ui  {
//   unsigned int v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Ui_Ul_Ui" {
    var lv: c.Ui_Ul_Ui = undefined;
    try testing.expectSize(c.Ui_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:52015:52035
// struct  Ui_Ul_Ul  {
//   unsigned int v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Ui_Ul_Ul" {
    var lv: c.Ui_Ul_Ul = undefined;
    try testing.expectSize(c.Ui_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:52040:52060
// struct  Ui_Ul_Us  {
//   unsigned int v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Ui_Ul_Us" {
    var lv: c.Ui_Ul_Us = undefined;
    try testing.expectSize(c.Ui_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:52065:52085
// struct  Ui_Ul_Vp  {
//   unsigned int v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Ui_Ul_Vp" {
    var lv: c.Ui_Ul_Vp = undefined;
    try testing.expectSize(c.Ui_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:52090:52108
// struct  Ui_Us  {
//   unsigned int v1;
//   unsigned short v2;
// };

test "Ui_Us" {
    var lv: c.Ui_Us = undefined;
    try testing.expectSize(c.Ui_Us, 8);
    try testing.expectAlign(c.Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:52837:52857
// struct  Ui_Us_C  {
//   unsigned int v1;
//   unsigned short v2;
//   char v3;
// };

test "Ui_Us_C" {
    var lv: c.Ui_Us_C = undefined;
    try testing.expectSize(c.Ui_Us_C, 8);
    try testing.expectAlign(c.Ui_Us_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:52862:52882
// struct  Ui_Us_D  {
//   unsigned int v1;
//   unsigned short v2;
//   double v3;
// };

test "Ui_Us_D" {
    var lv: c.Ui_Us_D = undefined;
    try testing.expectSize(c.Ui_Us_D, 16);
    try testing.expectAlign(c.Ui_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:52887:52907
// struct  Ui_Us_F  {
//   unsigned int v1;
//   unsigned short v2;
//   float v3;
// };

test "Ui_Us_F" {
    var lv: c.Ui_Us_F = undefined;
    try testing.expectSize(c.Ui_Us_F, 12);
    try testing.expectAlign(c.Ui_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:52912:52932
// struct  Ui_Us_I  {
//   unsigned int v1;
//   unsigned short v2;
//   int v3;
// };

test "Ui_Us_I" {
    var lv: c.Ui_Us_I = undefined;
    try testing.expectSize(c.Ui_Us_I, 12);
    try testing.expectAlign(c.Ui_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:52937:52957
// struct  Ui_Us_Ip  {
//   unsigned int v1;
//   unsigned short v2;
//   int *v3;
// };

test "Ui_Us_Ip" {
    var lv: c.Ui_Us_Ip = undefined;
    try testing.expectSize(c.Ui_Us_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:52962:52982
// struct  Ui_Us_L  {
//   unsigned int v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Ui_Us_L" {
    var lv: c.Ui_Us_L = undefined;
    try testing.expectSize(c.Ui_Us_L, 16);
    try testing.expectAlign(c.Ui_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:52987:53007
// struct  Ui_Us_S  {
//   unsigned int v1;
//   unsigned short v2;
//   short v3;
// };

test "Ui_Us_S" {
    var lv: c.Ui_Us_S = undefined;
    try testing.expectSize(c.Ui_Us_S, 8);
    try testing.expectAlign(c.Ui_Us_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:53012:53032
// struct  Ui_Us_Uc  {
//   unsigned int v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Ui_Us_Uc" {
    var lv: c.Ui_Us_Uc = undefined;
    try testing.expectSize(c.Ui_Us_Uc, 8);
    try testing.expectAlign(c.Ui_Us_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:53037:53057
// struct  Ui_Us_Ui  {
//   unsigned int v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Ui_Us_Ui" {
    var lv: c.Ui_Us_Ui = undefined;
    try testing.expectSize(c.Ui_Us_Ui, 12);
    try testing.expectAlign(c.Ui_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:53062:53082
// struct  Ui_Us_Ul  {
//   unsigned int v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Ui_Us_Ul" {
    var lv: c.Ui_Us_Ul = undefined;
    try testing.expectSize(c.Ui_Us_Ul, 16);
    try testing.expectAlign(c.Ui_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:53087:53107
// struct  Ui_Us_Us  {
//   unsigned int v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Ui_Us_Us" {
    var lv: c.Ui_Us_Us = undefined;
    try testing.expectSize(c.Ui_Us_Us, 8);
    try testing.expectAlign(c.Ui_Us_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:53112:53132
// struct  Ui_Us_Vp  {
//   unsigned int v1;
//   unsigned short v2;
//   void *v3;
// };

test "Ui_Us_Vp" {
    var lv: c.Ui_Us_Vp = undefined;
    try testing.expectSize(c.Ui_Us_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:53137:53155
// struct  Ui_Vp  {
//   unsigned int v1;
//   void *v2;
// };

test "Ui_Vp" {
    var lv: c.Ui_Vp = undefined;
    try testing.expectSize(c.Ui_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:53884:53904
// struct  Ui_Vp_C  {
//   unsigned int v1;
//   void *v2;
//   char v3;
// };

test "Ui_Vp_C" {
    var lv: c.Ui_Vp_C = undefined;
    try testing.expectSize(c.Ui_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:53909:53929
// struct  Ui_Vp_D  {
//   unsigned int v1;
//   void *v2;
//   double v3;
// };

test "Ui_Vp_D" {
    var lv: c.Ui_Vp_D = undefined;
    try testing.expectSize(c.Ui_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:53934:53954
// struct  Ui_Vp_F  {
//   unsigned int v1;
//   void *v2;
//   float v3;
// };

test "Ui_Vp_F" {
    var lv: c.Ui_Vp_F = undefined;
    try testing.expectSize(c.Ui_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:53959:53979
// struct  Ui_Vp_I  {
//   unsigned int v1;
//   void *v2;
//   int v3;
// };

test "Ui_Vp_I" {
    var lv: c.Ui_Vp_I = undefined;
    try testing.expectSize(c.Ui_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:53984:54004
// struct  Ui_Vp_Ip  {
//   unsigned int v1;
//   void *v2;
//   int *v3;
// };

test "Ui_Vp_Ip" {
    var lv: c.Ui_Vp_Ip = undefined;
    try testing.expectSize(c.Ui_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54009:54029
// struct  Ui_Vp_L  {
//   unsigned int v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Ui_Vp_L" {
    var lv: c.Ui_Vp_L = undefined;
    try testing.expectSize(c.Ui_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54034:54054
// struct  Ui_Vp_S  {
//   unsigned int v1;
//   void *v2;
//   short v3;
// };

test "Ui_Vp_S" {
    var lv: c.Ui_Vp_S = undefined;
    try testing.expectSize(c.Ui_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54059:54079
// struct  Ui_Vp_Uc  {
//   unsigned int v1;
//   void *v2;
//   unsigned char v3;
// };

test "Ui_Vp_Uc" {
    var lv: c.Ui_Vp_Uc = undefined;
    try testing.expectSize(c.Ui_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54084:54104
// struct  Ui_Vp_Ui  {
//   unsigned int v1;
//   void *v2;
//   unsigned int v3;
// };

test "Ui_Vp_Ui" {
    var lv: c.Ui_Vp_Ui = undefined;
    try testing.expectSize(c.Ui_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54109:54129
// struct  Ui_Vp_Ul  {
//   unsigned int v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Ui_Vp_Ul" {
    var lv: c.Ui_Vp_Ul = undefined;
    try testing.expectSize(c.Ui_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54134:54154
// struct  Ui_Vp_Us  {
//   unsigned int v1;
//   void *v2;
//   unsigned short v3;
// };

test "Ui_Vp_Us" {
    var lv: c.Ui_Vp_Us = undefined;
    try testing.expectSize(c.Ui_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54159:54179
// struct  Ui_Vp_Vp  {
//   unsigned int v1;
//   void *v2;
//   void *v3;
// };

test "Ui_Vp_Vp" {
    var lv: c.Ui_Vp_Vp = undefined;
    try testing.expectSize(c.Ui_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54184:54200
// struct  Ul  {
//   __tsu64 v1;
// };

test "Ul" {
    var lv: c.Ul = undefined;
    try testing.expectSize(c.Ul, 8);
    try testing.expectAlign(c.Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
