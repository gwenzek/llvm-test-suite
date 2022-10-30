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
    try testing.expectOk(c.recv_Uc_D_C(.{ .v1 = 3, .v2 = 15609, .v3 = 89 }));
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
    try testing.expectOk(c.recv_Uc_D_D(.{ .v1 = 9, .v2 = 26197, .v3 = 5986 }));
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
    try testing.expectOk(c.recv_Uc_D_F(.{ .v1 = 95, .v2 = 22112, .v3 = 0.014500 }));
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
    try testing.expectOk(c.recv_Uc_D_I(.{ .v1 = 26, .v2 = 22319, .v3 = 31966 }));
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
    try testing.expectOk(c.recv_Uc_D_Ip(.{ .v1 = 101, .v2 = 31612, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_D_L(.{ .v1 = 0, .v2 = 4136, .v3 = 30011 }));
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
    try testing.expectOk(c.recv_Uc_D_S(.{ .v1 = 1, .v2 = 2324, .v3 = 29141 }));
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
    try testing.expectOk(c.recv_Uc_D_Uc(.{ .v1 = 9, .v2 = 29076, .v3 = 63 }));
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
    try testing.expectOk(c.recv_Uc_D_Ui(.{ .v1 = 10, .v2 = 25058, .v3 = 27979 }));
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
    try testing.expectOk(c.recv_Uc_D_Ul(.{ .v1 = 9, .v2 = 7107, .v3 = 14598 }));
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
    try testing.expectOk(c.recv_Uc_D_Us(.{ .v1 = 61, .v2 = 24060, .v3 = 19037 }));
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
    try testing.expectOk(c.recv_Uc_D_Vp(.{ .v1 = 28, .v2 = 8394, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_F(.{ .v1 = 95, .v2 = 0.079689 }));
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
    try testing.expectOk(c.recv_Uc_F_C(.{ .v1 = 97, .v2 = 0.892191, .v3 = 83 }));
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
    try testing.expectOk(c.recv_Uc_F_D(.{ .v1 = 82, .v2 = 0.351423, .v3 = 725 }));
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
    try testing.expectOk(c.recv_Uc_F_F(.{ .v1 = 41, .v2 = 0.274452, .v3 = 0.543388 }));
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
    try testing.expectOk(c.recv_Uc_F_I(.{ .v1 = 91, .v2 = 0.474387, .v3 = 10292 }));
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
    try testing.expectOk(c.recv_Uc_F_Ip(.{ .v1 = 3, .v2 = 0.192453, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_F_L(.{ .v1 = 0, .v2 = 0.351829, .v3 = 8743 }));
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
    try testing.expectOk(c.recv_Uc_F_S(.{ .v1 = 103, .v2 = 0.478922, .v3 = 6011 }));
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
    try testing.expectOk(c.recv_Uc_F_Uc(.{ .v1 = 53, .v2 = 0.774600, .v3 = 42 }));
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
    try testing.expectOk(c.recv_Uc_F_Ui(.{ .v1 = 88, .v2 = 0.340948, .v3 = 25160 }));
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
    try testing.expectOk(c.recv_Uc_F_Ul(.{ .v1 = 96, .v2 = 0.945594, .v3 = 10992 }));
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
    try testing.expectOk(c.recv_Uc_F_Us(.{ .v1 = 59, .v2 = 0.069631, .v3 = 6216 }));
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
    try testing.expectOk(c.recv_Uc_F_Vp(.{ .v1 = 5, .v2 = 0.706114, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_I(.{ .v1 = 114, .v2 = 16216 }));
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
    try testing.expectOk(c.recv_Uc_I_C(.{ .v1 = 124, .v2 = 25853, .v3 = 104 }));
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
    try testing.expectOk(c.recv_Uc_I_D(.{ .v1 = 108, .v2 = 16942, .v3 = 5743 }));
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
    try testing.expectOk(c.recv_Uc_I_F(.{ .v1 = 29, .v2 = 12247, .v3 = 0.854229 }));
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
    try testing.expectOk(c.recv_Uc_I_I(.{ .v1 = 60, .v2 = 7544, .v3 = 6612 }));
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
    try testing.expectOk(c.recv_Uc_I_Ip(.{ .v1 = 18, .v2 = 32746, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_I_L(.{ .v1 = 113, .v2 = 36, .v3 = 32506 }));
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
    try testing.expectOk(c.recv_Uc_I_S(.{ .v1 = 58, .v2 = 28832, .v3 = 32618 }));
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
    try testing.expectOk(c.recv_Uc_I_Uc(.{ .v1 = 113, .v2 = 28710, .v3 = 106 }));
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
    try testing.expectOk(c.recv_Uc_I_Ui(.{ .v1 = 15, .v2 = 11634, .v3 = 8763 }));
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
    try testing.expectOk(c.recv_Uc_I_Ul(.{ .v1 = 105, .v2 = 18283, .v3 = 21389 }));
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
    try testing.expectOk(c.recv_Uc_I_Us(.{ .v1 = 75, .v2 = 2635, .v3 = 14892 }));
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
    try testing.expectOk(c.recv_Uc_I_Vp(.{ .v1 = 96, .v2 = 16481, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Ip(.{ .v1 = 12, .v2 = null }));
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
    try testing.expectOk(c.recv_Uc_Ip_C(.{ .v1 = 58, .v2 = null, .v3 = 120 }));
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
    try testing.expectOk(c.recv_Uc_Ip_D(.{ .v1 = 66, .v2 = null, .v3 = 2766 }));
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
    try testing.expectOk(c.recv_Uc_Ip_F(.{ .v1 = 103, .v2 = null, .v3 = 0.384967 }));
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
    try testing.expectOk(c.recv_Uc_Ip_I(.{ .v1 = 20, .v2 = null, .v3 = 13416 }));
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
    try testing.expectOk(c.recv_Uc_Ip_Ip(.{ .v1 = 117, .v2 = null, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Ip_L(.{ .v1 = 31, .v2 = null, .v3 = 30388 }));
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
    try testing.expectOk(c.recv_Uc_Ip_S(.{ .v1 = 104, .v2 = null, .v3 = 28603 }));
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
    try testing.expectOk(c.recv_Uc_Ip_Uc(.{ .v1 = 35, .v2 = null, .v3 = 13 }));
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
    try testing.expectOk(c.recv_Uc_Ip_Ui(.{ .v1 = 20, .v2 = null, .v3 = 16954 }));
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
    try testing.expectOk(c.recv_Uc_Ip_Ul(.{ .v1 = 89, .v2 = null, .v3 = 18772 }));
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
    try testing.expectOk(c.recv_Uc_Ip_Us(.{ .v1 = 48, .v2 = null, .v3 = 8281 }));
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
    try testing.expectOk(c.recv_Uc_Ip_Vp(.{ .v1 = 33, .v2 = null, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_L(.{ .v1 = 119, .v2 = 15974 }));
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
    try testing.expectOk(c.recv_Uc_L_C(.{ .v1 = 50, .v2 = 21453, .v3 = 112 }));
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
    try testing.expectOk(c.recv_Uc_L_D(.{ .v1 = 42, .v2 = 12771, .v3 = 31377 }));
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
    try testing.expectOk(c.recv_Uc_L_F(.{ .v1 = 39, .v2 = 19443, .v3 = 0.755533 }));
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
    try testing.expectOk(c.recv_Uc_L_I(.{ .v1 = 93, .v2 = 28305, .v3 = 18385 }));
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
    try testing.expectOk(c.recv_Uc_L_Ip(.{ .v1 = 10, .v2 = 8726, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_L_L(.{ .v1 = 112, .v2 = 7512, .v3 = 12279 }));
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
    try testing.expectOk(c.recv_Uc_L_S(.{ .v1 = 5, .v2 = 19826, .v3 = 20687 }));
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
    try testing.expectOk(c.recv_Uc_L_Uc(.{ .v1 = 14, .v2 = 18144, .v3 = 34 }));
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
    try testing.expectOk(c.recv_Uc_L_Ui(.{ .v1 = 42, .v2 = 2689, .v3 = 3812 }));
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
    try testing.expectOk(c.recv_Uc_L_Ul(.{ .v1 = 125, .v2 = 19855, .v3 = 32534 }));
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
    try testing.expectOk(c.recv_Uc_L_Us(.{ .v1 = 120, .v2 = 9826, .v3 = 1663 }));
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
    try testing.expectOk(c.recv_Uc_L_Vp(.{ .v1 = 112, .v2 = 14009, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_S(.{ .v1 = 34, .v2 = 19847 }));
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
    try testing.expectOk(c.recv_Uc_S_C(.{ .v1 = 74, .v2 = 21816, .v3 = 88 }));
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
    try testing.expectOk(c.recv_Uc_S_D(.{ .v1 = 87, .v2 = 14939, .v3 = 29628 }));
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
    try testing.expectOk(c.recv_Uc_S_F(.{ .v1 = 9, .v2 = 29623, .v3 = 0.356626 }));
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
    try testing.expectOk(c.recv_Uc_S_I(.{ .v1 = 9, .v2 = 6063, .v3 = 7793 }));
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
    try testing.expectOk(c.recv_Uc_S_Ip(.{ .v1 = 26, .v2 = 11164, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_S_L(.{ .v1 = 51, .v2 = 885, .v3 = 13093 }));
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
    try testing.expectOk(c.recv_Uc_S_S(.{ .v1 = 21, .v2 = 14367, .v3 = 8854 }));
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
    try testing.expectOk(c.recv_Uc_S_Uc(.{ .v1 = 121, .v2 = 32357, .v3 = 7 }));
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
    try testing.expectOk(c.recv_Uc_S_Ui(.{ .v1 = 114, .v2 = 18126, .v3 = 22022 }));
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
    try testing.expectOk(c.recv_Uc_S_Ul(.{ .v1 = 47, .v2 = 8185, .v3 = 28912 }));
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
    try testing.expectOk(c.recv_Uc_S_Us(.{ .v1 = 40, .v2 = 4200, .v3 = 29084 }));
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
    try testing.expectOk(c.recv_Uc_S_Vp(.{ .v1 = 43, .v2 = 4074, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Uc(.{ .v1 = 36, .v2 = 41 }));
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
    try testing.expectOk(c.recv_Uc_Uc_C(.{ .v1 = 61, .v2 = 123, .v3 = 32 }));
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
    try testing.expectOk(c.recv_Uc_Uc_D(.{ .v1 = 69, .v2 = 59, .v3 = 26416 }));
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
    try testing.expectOk(c.recv_Uc_Uc_F(.{ .v1 = 64, .v2 = 79, .v3 = 0.700270 }));
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
    try testing.expectOk(c.recv_Uc_Uc_I(.{ .v1 = 10, .v2 = 31, .v3 = 24178 }));
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
    try testing.expectOk(c.recv_Uc_Uc_Ip(.{ .v1 = 34, .v2 = 19, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Uc_L(.{ .v1 = 113, .v2 = 16, .v3 = 9440 }));
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
    try testing.expectOk(c.recv_Uc_Uc_S(.{ .v1 = 110, .v2 = 68, .v3 = 32149 }));
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
    try testing.expectOk(c.recv_Uc_Uc_Uc(.{ .v1 = 25, .v2 = 112, .v3 = 107 }));
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
    try testing.expectOk(c.recv_Uc_Uc_Ui(.{ .v1 = 79, .v2 = 65, .v3 = 18992 }));
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
    try testing.expectOk(c.recv_Uc_Uc_Ul(.{ .v1 = 119, .v2 = 105, .v3 = 14684 }));
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
    try testing.expectOk(c.recv_Uc_Uc_Us(.{ .v1 = 35, .v2 = 94, .v3 = 17513 }));
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
    try testing.expectOk(c.recv_Uc_Uc_Vp(.{ .v1 = 16, .v2 = 101, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Ui(.{ .v1 = 53, .v2 = 22835 }));
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
    try testing.expectOk(c.recv_Uc_Ui_C(.{ .v1 = 98, .v2 = 13999, .v3 = 1 }));
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
    try testing.expectOk(c.recv_Uc_Ui_D(.{ .v1 = 19, .v2 = 212, .v3 = 11 }));
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
    try testing.expectOk(c.recv_Uc_Ui_F(.{ .v1 = 109, .v2 = 22586, .v3 = 0.093384 }));
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
    try testing.expectOk(c.recv_Uc_Ui_I(.{ .v1 = 69, .v2 = 96, .v3 = 11656 }));
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
    try testing.expectOk(c.recv_Uc_Ui_Ip(.{ .v1 = 100, .v2 = 23903, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Ui_L(.{ .v1 = 13, .v2 = 17433, .v3 = 23126 }));
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
    try testing.expectOk(c.recv_Uc_Ui_S(.{ .v1 = 64, .v2 = 8972, .v3 = 23697 }));
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
    try testing.expectOk(c.recv_Uc_Ui_Uc(.{ .v1 = 64, .v2 = 20781, .v3 = 46 }));
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
    try testing.expectOk(c.recv_Uc_Ui_Ui(.{ .v1 = 12, .v2 = 30965, .v3 = 7658 }));
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
    try testing.expectOk(c.recv_Uc_Ui_Ul(.{ .v1 = 102, .v2 = 15727, .v3 = 6033 }));
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
    try testing.expectOk(c.recv_Uc_Ui_Us(.{ .v1 = 69, .v2 = 2117, .v3 = 24973 }));
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
    try testing.expectOk(c.recv_Uc_Ui_Vp(.{ .v1 = 79, .v2 = 1180, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Ul(.{ .v1 = 60, .v2 = 26383 }));
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
    try testing.expectOk(c.recv_Uc_Ul_C(.{ .v1 = 87, .v2 = 5320, .v3 = 119 }));
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
    try testing.expectOk(c.recv_Uc_Ul_D(.{ .v1 = 109, .v2 = 24058, .v3 = 9290 }));
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
    try testing.expectOk(c.recv_Uc_Ul_F(.{ .v1 = 89, .v2 = 570, .v3 = 0.184970 }));
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
    try testing.expectOk(c.recv_Uc_Ul_I(.{ .v1 = 20, .v2 = 18844, .v3 = 22972 }));
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
    try testing.expectOk(c.recv_Uc_Ul_Ip(.{ .v1 = 87, .v2 = 14218, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Ul_L(.{ .v1 = 99, .v2 = 23984, .v3 = 30703 }));
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
    try testing.expectOk(c.recv_Uc_Ul_S(.{ .v1 = 29, .v2 = 13746, .v3 = 28959 }));
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
    try testing.expectOk(c.recv_Uc_Ul_Uc(.{ .v1 = 2, .v2 = 27155, .v3 = 64 }));
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
    try testing.expectOk(c.recv_Uc_Ul_Ui(.{ .v1 = 44, .v2 = 8089, .v3 = 20884 }));
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
    try testing.expectOk(c.recv_Uc_Ul_Ul(.{ .v1 = 111, .v2 = 25364, .v3 = 414 }));
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
    try testing.expectOk(c.recv_Uc_Ul_Us(.{ .v1 = 45, .v2 = 30720, .v3 = 19132 }));
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
    try testing.expectOk(c.recv_Uc_Ul_Vp(.{ .v1 = 31, .v2 = 15881, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Us(.{ .v1 = 11, .v2 = 20664 }));
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
    try testing.expectOk(c.recv_Uc_Us_C(.{ .v1 = 66, .v2 = 16863, .v3 = 105 }));
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
    try testing.expectOk(c.recv_Uc_Us_D(.{ .v1 = 109, .v2 = 4777, .v3 = 187 }));
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
    try testing.expectOk(c.recv_Uc_Us_F(.{ .v1 = 56, .v2 = 24913, .v3 = 0.039996 }));
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
    try testing.expectOk(c.recv_Uc_Us_I(.{ .v1 = 68, .v2 = 16847, .v3 = 29863 }));
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
    try testing.expectOk(c.recv_Uc_Us_Ip(.{ .v1 = 104, .v2 = 19355, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Us_L(.{ .v1 = 118, .v2 = 31733, .v3 = 29196 }));
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
    try testing.expectOk(c.recv_Uc_Us_S(.{ .v1 = 58, .v2 = 1589, .v3 = 9859 }));
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
    try testing.expectOk(c.recv_Uc_Us_Uc(.{ .v1 = 25, .v2 = 20741, .v3 = 20 }));
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
    try testing.expectOk(c.recv_Uc_Us_Ui(.{ .v1 = 15, .v2 = 22487, .v3 = 26117 }));
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
    try testing.expectOk(c.recv_Uc_Us_Ul(.{ .v1 = 23, .v2 = 17738, .v3 = 19845 }));
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
    try testing.expectOk(c.recv_Uc_Us_Us(.{ .v1 = 100, .v2 = 4864, .v3 = 3212 }));
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
    try testing.expectOk(c.recv_Uc_Us_Vp(.{ .v1 = 63, .v2 = 3507, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Vp(.{ .v1 = 56, .v2 = null }));
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
    try testing.expectOk(c.recv_Uc_Vp_C(.{ .v1 = 76, .v2 = null, .v3 = 63 }));
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
    try testing.expectOk(c.recv_Uc_Vp_D(.{ .v1 = 111, .v2 = null, .v3 = 5301 }));
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
    try testing.expectOk(c.recv_Uc_Vp_F(.{ .v1 = 26, .v2 = null, .v3 = 0.528650 }));
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
    try testing.expectOk(c.recv_Uc_Vp_I(.{ .v1 = 69, .v2 = null, .v3 = 31332 }));
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
    try testing.expectOk(c.recv_Uc_Vp_Ip(.{ .v1 = 125, .v2 = null, .v3 = null }));
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
    try testing.expectOk(c.recv_Uc_Vp_L(.{ .v1 = 64, .v2 = null, .v3 = 243 }));
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
    try testing.expectOk(c.recv_Uc_Vp_S(.{ .v1 = 2, .v2 = null, .v3 = 25419 }));
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
    try testing.expectOk(c.recv_Uc_Vp_Uc(.{ .v1 = 113, .v2 = null, .v3 = 51 }));
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
    try testing.expectOk(c.recv_Uc_Vp_Ui(.{ .v1 = 126, .v2 = null, .v3 = 438 }));
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
    try testing.expectOk(c.recv_Uc_Vp_Ul(.{ .v1 = 42, .v2 = null, .v3 = 8304 }));
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
    try testing.expectOk(c.recv_Uc_Vp_Us(.{ .v1 = 67, .v2 = null, .v3 = 32011 }));
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
    try testing.expectOk(c.recv_Uc_Vp_Vp(.{ .v1 = 63, .v2 = null, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui(.{ .v1 = 21566 }));
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
    try testing.expectOk(c.recv_Ui_C(.{ .v1 = 5325, .v2 = 119 }));
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
    try testing.expectOk(c.recv_Ui_C_C(.{ .v1 = 2074, .v2 = 30, .v3 = 98 }));
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
    try testing.expectOk(c.recv_Ui_C_D(.{ .v1 = 20111, .v2 = 51, .v3 = 24685 }));
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
    try testing.expectOk(c.recv_Ui_C_F(.{ .v1 = 4499, .v2 = 63, .v3 = 0.295259 }));
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
    try testing.expectOk(c.recv_Ui_C_I(.{ .v1 = 4844, .v2 = 10, .v3 = 26553 }));
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
    try testing.expectOk(c.recv_Ui_C_Ip(.{ .v1 = 26337, .v2 = 121, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_C_L(.{ .v1 = 2961, .v2 = 67, .v3 = 151 }));
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
    try testing.expectOk(c.recv_Ui_C_S(.{ .v1 = 10462, .v2 = 51, .v3 = 15361 }));
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
    try testing.expectOk(c.recv_Ui_C_Uc(.{ .v1 = 2638, .v2 = 20, .v3 = 80 }));
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
    try testing.expectOk(c.recv_Ui_C_Ui(.{ .v1 = 29478, .v2 = 57, .v3 = 22998 }));
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
    try testing.expectOk(c.recv_Ui_C_Ul(.{ .v1 = 19449, .v2 = 47, .v3 = 7381 }));
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
    try testing.expectOk(c.recv_Ui_C_Us(.{ .v1 = 31946, .v2 = 14, .v3 = 8587 }));
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
    try testing.expectOk(c.recv_Ui_C_Vp(.{ .v1 = 29098, .v2 = 38, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_D(.{ .v1 = 315, .v2 = 9999 }));
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
    try testing.expectOk(c.recv_Ui_D_C(.{ .v1 = 16474, .v2 = 24211, .v3 = 96 }));
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
    try testing.expectOk(c.recv_Ui_D_D(.{ .v1 = 25546, .v2 = 25650, .v3 = 28765 }));
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
    try testing.expectOk(c.recv_Ui_D_F(.{ .v1 = 29141, .v2 = 16981, .v3 = 0.942039 }));
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
    try testing.expectOk(c.recv_Ui_D_I(.{ .v1 = 1975, .v2 = 5749, .v3 = 31530 }));
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
    try testing.expectOk(c.recv_Ui_D_Ip(.{ .v1 = 16414, .v2 = 16684, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_D_L(.{ .v1 = 4261, .v2 = 23565, .v3 = 28898 }));
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
    try testing.expectOk(c.recv_Ui_D_S(.{ .v1 = 15608, .v2 = 24610, .v3 = 13134 }));
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
    try testing.expectOk(c.recv_Ui_D_Uc(.{ .v1 = 24011, .v2 = 22305, .v3 = 44 }));
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
    try testing.expectOk(c.recv_Ui_D_Ui(.{ .v1 = 14071, .v2 = 15037, .v3 = 27266 }));
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
    try testing.expectOk(c.recv_Ui_D_Ul(.{ .v1 = 30134, .v2 = 14337, .v3 = 721 }));
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
    try testing.expectOk(c.recv_Ui_D_Us(.{ .v1 = 5768, .v2 = 15185, .v3 = 27856 }));
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
    try testing.expectOk(c.recv_Ui_D_Vp(.{ .v1 = 31578, .v2 = 20787, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_F(.{ .v1 = 14418, .v2 = 0.436916 }));
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
    try testing.expectOk(c.recv_Ui_F_C(.{ .v1 = 32003, .v2 = 0.000649, .v3 = 101 }));
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
    try testing.expectOk(c.recv_Ui_F_D(.{ .v1 = 26497, .v2 = 0.993113, .v3 = 23166 }));
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
    try testing.expectOk(c.recv_Ui_F_F(.{ .v1 = 11461, .v2 = 0.641289, .v3 = 0.531571 }));
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
    try testing.expectOk(c.recv_Ui_F_I(.{ .v1 = 6626, .v2 = 0.206872, .v3 = 6737 }));
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
    try testing.expectOk(c.recv_Ui_F_Ip(.{ .v1 = 23822, .v2 = 0.379784, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_F_L(.{ .v1 = 5702, .v2 = 0.393400, .v3 = 1235 }));
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
    try testing.expectOk(c.recv_Ui_F_S(.{ .v1 = 18801, .v2 = 0.598579, .v3 = 16 }));
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
    try testing.expectOk(c.recv_Ui_F_Uc(.{ .v1 = 6275, .v2 = 0.835436, .v3 = 13 }));
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
    try testing.expectOk(c.recv_Ui_F_Ui(.{ .v1 = 19572, .v2 = 0.427003, .v3 = 16111 }));
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
    try testing.expectOk(c.recv_Ui_F_Ul(.{ .v1 = 14594, .v2 = 0.027991, .v3 = 12629 }));
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
    try testing.expectOk(c.recv_Ui_F_Us(.{ .v1 = 5740, .v2 = 0.710621, .v3 = 28004 }));
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
    try testing.expectOk(c.recv_Ui_F_Vp(.{ .v1 = 7191, .v2 = 0.942881, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_I(.{ .v1 = 16186, .v2 = 17720 }));
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
    try testing.expectOk(c.recv_Ui_I_C(.{ .v1 = 12173, .v2 = 24063, .v3 = 17 }));
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
    try testing.expectOk(c.recv_Ui_I_D(.{ .v1 = 23097, .v2 = 29966, .v3 = 17651 }));
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
    try testing.expectOk(c.recv_Ui_I_F(.{ .v1 = 25881, .v2 = 8125, .v3 = 0.740053 }));
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
    try testing.expectOk(c.recv_Ui_I_I(.{ .v1 = 17320, .v2 = 21220, .v3 = 31002 }));
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
    try testing.expectOk(c.recv_Ui_I_Ip(.{ .v1 = 22775, .v2 = 11882, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_I_L(.{ .v1 = 27000, .v2 = 29131, .v3 = 17961 }));
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
    try testing.expectOk(c.recv_Ui_I_S(.{ .v1 = 5591, .v2 = 6137, .v3 = 15626 }));
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
    try testing.expectOk(c.recv_Ui_I_Uc(.{ .v1 = 22976, .v2 = 9458, .v3 = 15 }));
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
    try testing.expectOk(c.recv_Ui_I_Ui(.{ .v1 = 18558, .v2 = 4834, .v3 = 26727 }));
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
    try testing.expectOk(c.recv_Ui_I_Ul(.{ .v1 = 10972, .v2 = 16539, .v3 = 15979 }));
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
    try testing.expectOk(c.recv_Ui_I_Us(.{ .v1 = 2253, .v2 = 31488, .v3 = 9728 }));
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
    try testing.expectOk(c.recv_Ui_I_Vp(.{ .v1 = 29046, .v2 = 1341, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Ip(.{ .v1 = 15626, .v2 = null }));
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
    try testing.expectOk(c.recv_Ui_Ip_C(.{ .v1 = 27402, .v2 = null, .v3 = 92 }));
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
    try testing.expectOk(c.recv_Ui_Ip_D(.{ .v1 = 10612, .v2 = null, .v3 = 3055 }));
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
    try testing.expectOk(c.recv_Ui_Ip_F(.{ .v1 = 27180, .v2 = null, .v3 = 0.507258 }));
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
    try testing.expectOk(c.recv_Ui_Ip_I(.{ .v1 = 28768, .v2 = null, .v3 = 7763 }));
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
    try testing.expectOk(c.recv_Ui_Ip_Ip(.{ .v1 = 29433, .v2 = null, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Ip_L(.{ .v1 = 4514, .v2 = null, .v3 = 11287 }));
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
    try testing.expectOk(c.recv_Ui_Ip_S(.{ .v1 = 26737, .v2 = null, .v3 = 23696 }));
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
    try testing.expectOk(c.recv_Ui_Ip_Uc(.{ .v1 = 3439, .v2 = null, .v3 = 66 }));
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
    try testing.expectOk(c.recv_Ui_Ip_Ui(.{ .v1 = 12941, .v2 = null, .v3 = 4092 }));
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
    try testing.expectOk(c.recv_Ui_Ip_Ul(.{ .v1 = 23885, .v2 = null, .v3 = 27882 }));
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
    try testing.expectOk(c.recv_Ui_Ip_Us(.{ .v1 = 18464, .v2 = null, .v3 = 114 }));
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
    try testing.expectOk(c.recv_Ui_Ip_Vp(.{ .v1 = 18904, .v2 = null, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_L(.{ .v1 = 13252, .v2 = 1507 }));
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
    try testing.expectOk(c.recv_Ui_L_C(.{ .v1 = 26935, .v2 = 26745, .v3 = 98 }));
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
    try testing.expectOk(c.recv_Ui_L_D(.{ .v1 = 25341, .v2 = 30357, .v3 = 8765 }));
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
    try testing.expectOk(c.recv_Ui_L_F(.{ .v1 = 29079, .v2 = 3601, .v3 = 0.271372 }));
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
    try testing.expectOk(c.recv_Ui_L_I(.{ .v1 = 10351, .v2 = 18559, .v3 = 6276 }));
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
    try testing.expectOk(c.recv_Ui_L_Ip(.{ .v1 = 25585, .v2 = 20929, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_L_L(.{ .v1 = 24212, .v2 = 19798, .v3 = 593 }));
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
    try testing.expectOk(c.recv_Ui_L_S(.{ .v1 = 21162, .v2 = 4452, .v3 = 9615 }));
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
    try testing.expectOk(c.recv_Ui_L_Uc(.{ .v1 = 31091, .v2 = 18993, .v3 = 70 }));
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
    try testing.expectOk(c.recv_Ui_L_Ui(.{ .v1 = 13988, .v2 = 30930, .v3 = 19528 }));
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
    try testing.expectOk(c.recv_Ui_L_Ul(.{ .v1 = 20440, .v2 = 26384, .v3 = 9987 }));
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
    try testing.expectOk(c.recv_Ui_L_Us(.{ .v1 = 31980, .v2 = 25750, .v3 = 1055 }));
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
    try testing.expectOk(c.recv_Ui_L_Vp(.{ .v1 = 8968, .v2 = 24841, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_S(.{ .v1 = 28346, .v2 = 28443 }));
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
    try testing.expectOk(c.recv_Ui_S_C(.{ .v1 = 15538, .v2 = 21394, .v3 = 21 }));
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
    try testing.expectOk(c.recv_Ui_S_D(.{ .v1 = 4910, .v2 = 10310, .v3 = 417 }));
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
    try testing.expectOk(c.recv_Ui_S_F(.{ .v1 = 27139, .v2 = 32026, .v3 = 0.392248 }));
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
    try testing.expectOk(c.recv_Ui_S_I(.{ .v1 = 21625, .v2 = 11212, .v3 = 4579 }));
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
    try testing.expectOk(c.recv_Ui_S_Ip(.{ .v1 = 6672, .v2 = 23197, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_S_L(.{ .v1 = 5970, .v2 = 9549, .v3 = 25094 }));
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
    try testing.expectOk(c.recv_Ui_S_S(.{ .v1 = 17865, .v2 = 18599, .v3 = 23696 }));
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
    try testing.expectOk(c.recv_Ui_S_Uc(.{ .v1 = 28993, .v2 = 21813, .v3 = 77 }));
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
    try testing.expectOk(c.recv_Ui_S_Ui(.{ .v1 = 5185, .v2 = 30102, .v3 = 21541 }));
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
    try testing.expectOk(c.recv_Ui_S_Ul(.{ .v1 = 18781, .v2 = 20050, .v3 = 23141 }));
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
    try testing.expectOk(c.recv_Ui_S_Us(.{ .v1 = 5545, .v2 = 1579, .v3 = 32452 }));
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
    try testing.expectOk(c.recv_Ui_S_Vp(.{ .v1 = 24208, .v2 = 28727, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Uc(.{ .v1 = 157, .v2 = 12 }));
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
    try testing.expectOk(c.recv_Ui_Uc_C(.{ .v1 = 16841, .v2 = 67, .v3 = 116 }));
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
    try testing.expectOk(c.recv_Ui_Uc_D(.{ .v1 = 3973, .v2 = 85, .v3 = 1256 }));
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
    try testing.expectOk(c.recv_Ui_Uc_F(.{ .v1 = 28410, .v2 = 75, .v3 = 0.158874 }));
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
    try testing.expectOk(c.recv_Ui_Uc_I(.{ .v1 = 1867, .v2 = 123, .v3 = 10643 }));
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
    try testing.expectOk(c.recv_Ui_Uc_Ip(.{ .v1 = 5794, .v2 = 57, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Uc_L(.{ .v1 = 19180, .v2 = 58, .v3 = 11114 }));
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
    try testing.expectOk(c.recv_Ui_Uc_S(.{ .v1 = 22163, .v2 = 120, .v3 = 2678 }));
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
    try testing.expectOk(c.recv_Ui_Uc_Uc(.{ .v1 = 3867, .v2 = 87, .v3 = 16 }));
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
    try testing.expectOk(c.recv_Ui_Uc_Ui(.{ .v1 = 14918, .v2 = 101, .v3 = 9285 }));
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
    try testing.expectOk(c.recv_Ui_Uc_Ul(.{ .v1 = 7446, .v2 = 38, .v3 = 18825 }));
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
    try testing.expectOk(c.recv_Ui_Uc_Us(.{ .v1 = 1744, .v2 = 6, .v3 = 26082 }));
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
    try testing.expectOk(c.recv_Ui_Uc_Vp(.{ .v1 = 3316, .v2 = 48, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Ui(.{ .v1 = 8454, .v2 = 21904 }));
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
    try testing.expectOk(c.recv_Ui_Ui_C(.{ .v1 = 24893, .v2 = 7554, .v3 = 125 }));
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
    try testing.expectOk(c.recv_Ui_Ui_D(.{ .v1 = 11653, .v2 = 12325, .v3 = 29498 }));
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
    try testing.expectOk(c.recv_Ui_Ui_F(.{ .v1 = 11056, .v2 = 12323, .v3 = 0.063691 }));
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
    try testing.expectOk(c.recv_Ui_Ui_I(.{ .v1 = 24003, .v2 = 31766, .v3 = 9259 }));
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
    try testing.expectOk(c.recv_Ui_Ui_Ip(.{ .v1 = 4717, .v2 = 9398, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Ui_L(.{ .v1 = 5211, .v2 = 14887, .v3 = 10731 }));
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
    try testing.expectOk(c.recv_Ui_Ui_S(.{ .v1 = 8211, .v2 = 27366, .v3 = 700 }));
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
    try testing.expectOk(c.recv_Ui_Ui_Uc(.{ .v1 = 2757, .v2 = 21695, .v3 = 93 }));
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
    try testing.expectOk(c.recv_Ui_Ui_Ui(.{ .v1 = 9522, .v2 = 22368, .v3 = 18383 }));
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
    try testing.expectOk(c.recv_Ui_Ui_Ul(.{ .v1 = 17560, .v2 = 16595, .v3 = 621 }));
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
    try testing.expectOk(c.recv_Ui_Ui_Us(.{ .v1 = 11564, .v2 = 11476, .v3 = 1119 }));
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
    try testing.expectOk(c.recv_Ui_Ui_Vp(.{ .v1 = 6197, .v2 = 30374, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Ul(.{ .v1 = 6015, .v2 = 14187 }));
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
    try testing.expectOk(c.recv_Ui_Ul_C(.{ .v1 = 4633, .v2 = 28170, .v3 = 118 }));
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
    try testing.expectOk(c.recv_Ui_Ul_D(.{ .v1 = 26735, .v2 = 3946, .v3 = 10579 }));
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
    try testing.expectOk(c.recv_Ui_Ul_F(.{ .v1 = 28323, .v2 = 4257, .v3 = 0.854831 }));
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
    try testing.expectOk(c.recv_Ui_Ul_I(.{ .v1 = 25993, .v2 = 21218, .v3 = 10780 }));
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
    try testing.expectOk(c.recv_Ui_Ul_Ip(.{ .v1 = 4013, .v2 = 9159, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Ul_L(.{ .v1 = 612, .v2 = 2563, .v3 = 3634 }));
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
    try testing.expectOk(c.recv_Ui_Ul_S(.{ .v1 = 29897, .v2 = 28586, .v3 = 32630 }));
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
    try testing.expectOk(c.recv_Ui_Ul_Uc(.{ .v1 = 25723, .v2 = 5638, .v3 = 72 }));
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
    try testing.expectOk(c.recv_Ui_Ul_Ui(.{ .v1 = 21999, .v2 = 1833, .v3 = 27956 }));
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
    try testing.expectOk(c.recv_Ui_Ul_Ul(.{ .v1 = 21577, .v2 = 25353, .v3 = 519 }));
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
    try testing.expectOk(c.recv_Ui_Ul_Us(.{ .v1 = 2982, .v2 = 26174, .v3 = 30401 }));
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
    try testing.expectOk(c.recv_Ui_Ul_Vp(.{ .v1 = 80, .v2 = 21067, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Us(.{ .v1 = 30354, .v2 = 26657 }));
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
    try testing.expectOk(c.recv_Ui_Us_C(.{ .v1 = 21789, .v2 = 26918, .v3 = 102 }));
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
    try testing.expectOk(c.recv_Ui_Us_D(.{ .v1 = 25060, .v2 = 30168, .v3 = 334 }));
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
    try testing.expectOk(c.recv_Ui_Us_F(.{ .v1 = 26931, .v2 = 19984, .v3 = 0.349294 }));
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
    try testing.expectOk(c.recv_Ui_Us_I(.{ .v1 = 27580, .v2 = 4813, .v3 = 13953 }));
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
    try testing.expectOk(c.recv_Ui_Us_Ip(.{ .v1 = 3212, .v2 = 7801, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Us_L(.{ .v1 = 5564, .v2 = 2635, .v3 = 10175 }));
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
    try testing.expectOk(c.recv_Ui_Us_S(.{ .v1 = 26848, .v2 = 23938, .v3 = 12891 }));
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
    try testing.expectOk(c.recv_Ui_Us_Uc(.{ .v1 = 21533, .v2 = 13458, .v3 = 32 }));
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
    try testing.expectOk(c.recv_Ui_Us_Ui(.{ .v1 = 4359, .v2 = 7290, .v3 = 2824 }));
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
    try testing.expectOk(c.recv_Ui_Us_Ul(.{ .v1 = 10815, .v2 = 2476, .v3 = 15183 }));
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
    try testing.expectOk(c.recv_Ui_Us_Us(.{ .v1 = 28170, .v2 = 20814, .v3 = 14005 }));
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
    try testing.expectOk(c.recv_Ui_Us_Vp(.{ .v1 = 13993, .v2 = 22706, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Vp(.{ .v1 = 876, .v2 = null }));
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
    try testing.expectOk(c.recv_Ui_Vp_C(.{ .v1 = 15686, .v2 = null, .v3 = 90 }));
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
    try testing.expectOk(c.recv_Ui_Vp_D(.{ .v1 = 7177, .v2 = null, .v3 = 21760 }));
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
    try testing.expectOk(c.recv_Ui_Vp_F(.{ .v1 = 28047, .v2 = null, .v3 = 0.622060 }));
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
    try testing.expectOk(c.recv_Ui_Vp_I(.{ .v1 = 25781, .v2 = null, .v3 = 27067 }));
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
    try testing.expectOk(c.recv_Ui_Vp_Ip(.{ .v1 = 20737, .v2 = null, .v3 = null }));
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
    try testing.expectOk(c.recv_Ui_Vp_L(.{ .v1 = 19695, .v2 = null, .v3 = 2089 }));
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
    try testing.expectOk(c.recv_Ui_Vp_S(.{ .v1 = 22643, .v2 = null, .v3 = 3854 }));
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
    try testing.expectOk(c.recv_Ui_Vp_Uc(.{ .v1 = 2525, .v2 = null, .v3 = 89 }));
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
    try testing.expectOk(c.recv_Ui_Vp_Ui(.{ .v1 = 25903, .v2 = null, .v3 = 7407 }));
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
    try testing.expectOk(c.recv_Ui_Vp_Ul(.{ .v1 = 4962, .v2 = null, .v3 = 72 }));
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
    try testing.expectOk(c.recv_Ui_Vp_Us(.{ .v1 = 14228, .v2 = null, .v3 = 25551 }));
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
    try testing.expectOk(c.recv_Ui_Vp_Vp(.{ .v1 = 950, .v2 = null, .v3 = null }));
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
    try testing.expectOk(c.recv_Ul(.{ .v1 = 14013 }));
}
