const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xbc.h");
});

// From T_Snnn_xbc.c:13651:13669
// struct  Vp_C  {
//   void *v1;
//   char v2;
// };

test "Vp_C" {
    var lv: c.Vp_C = undefined;
    try testing.expectSize(c.Vp_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_C(.{ .v1 = null, .v2 = 24 }));
}
// From T_Snnn_xbc.c:14398:14418
// struct  Vp_C_C  {
//   void *v1;
//   char v2;
//   char v3;
// };

test "Vp_C_C" {
    var lv: c.Vp_C_C = undefined;
    try testing.expectSize(c.Vp_C_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
    try testing.expectOk(c.recv_Vp_C_C(.{ .v1 = null, .v2 = 39, .v3 = 11 }));
}
// From T_Snnn_xbc.c:14423:14443
// struct  Vp_C_D  {
//   void *v1;
//   char v2;
//   double v3;
// };

test "Vp_C_D" {
    var lv: c.Vp_C_D = undefined;
    try testing.expectSize(c.Vp_C_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_C_D(.{ .v1 = null, .v2 = 106, .v3 = 11293 }));
}
// From T_Snnn_xbc.c:14448:14468
// struct  Vp_C_F  {
//   void *v1;
//   char v2;
//   float v3;
// };

test "Vp_C_F" {
    var lv: c.Vp_C_F = undefined;
    try testing.expectSize(c.Vp_C_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_C_F(.{ .v1 = null, .v2 = 57, .v3 = 0.860122 }));
}
// From T_Snnn_xbc.c:14473:14493
// struct  Vp_C_I  {
//   void *v1;
//   char v2;
//   int v3;
// };

test "Vp_C_I" {
    var lv: c.Vp_C_I = undefined;
    try testing.expectSize(c.Vp_C_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_C_I(.{ .v1 = null, .v2 = 62, .v3 = 22912 }));
}
// From T_Snnn_xbc.c:14498:14518
// struct  Vp_C_Ip  {
//   void *v1;
//   char v2;
//   int *v3;
// };

test "Vp_C_Ip" {
    var lv: c.Vp_C_Ip = undefined;
    try testing.expectSize(c.Vp_C_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_C_Ip(.{ .v1 = null, .v2 = 0, .v3 = null }));
}
// From T_Snnn_xbc.c:14523:14543
// struct  Vp_C_L  {
//   void *v1;
//   char v2;
//   __tsi64 v3;
// };

test "Vp_C_L" {
    var lv: c.Vp_C_L = undefined;
    try testing.expectSize(c.Vp_C_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_C_L(.{ .v1 = null, .v2 = 16, .v3 = 18116 }));
}
// From T_Snnn_xbc.c:14548:14568
// struct  Vp_C_S  {
//   void *v1;
//   char v2;
//   short v3;
// };

test "Vp_C_S" {
    var lv: c.Vp_C_S = undefined;
    try testing.expectSize(c.Vp_C_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_C_S(.{ .v1 = null, .v2 = 81, .v3 = 27635 }));
}
// From T_Snnn_xbc.c:14573:14593
// struct  Vp_C_Uc  {
//   void *v1;
//   char v2;
//   unsigned char v3;
// };

test "Vp_C_Uc" {
    var lv: c.Vp_C_Uc = undefined;
    try testing.expectSize(c.Vp_C_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
    try testing.expectOk(c.recv_Vp_C_Uc(.{ .v1 = null, .v2 = 20, .v3 = 98 }));
}
// From T_Snnn_xbc.c:14598:14618
// struct  Vp_C_Ui  {
//   void *v1;
//   char v2;
//   unsigned int v3;
// };

test "Vp_C_Ui" {
    var lv: c.Vp_C_Ui = undefined;
    try testing.expectSize(c.Vp_C_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_C_Ui(.{ .v1 = null, .v2 = 65, .v3 = 13797 }));
}
// From T_Snnn_xbc.c:14623:14643
// struct  Vp_C_Ul  {
//   void *v1;
//   char v2;
//   __tsu64 v3;
// };

test "Vp_C_Ul" {
    var lv: c.Vp_C_Ul = undefined;
    try testing.expectSize(c.Vp_C_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_C_Ul(.{ .v1 = null, .v2 = 96, .v3 = 18622 }));
}
// From T_Snnn_xbc.c:14648:14668
// struct  Vp_C_Us  {
//   void *v1;
//   char v2;
//   unsigned short v3;
// };

test "Vp_C_Us" {
    var lv: c.Vp_C_Us = undefined;
    try testing.expectSize(c.Vp_C_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_C_Us(.{ .v1 = null, .v2 = 109, .v3 = 24720 }));
}
// From T_Snnn_xbc.c:14673:14693
// struct  Vp_C_Vp  {
//   void *v1;
//   char v2;
//   void *v3;
// };

test "Vp_C_Vp" {
    var lv: c.Vp_C_Vp = undefined;
    try testing.expectSize(c.Vp_C_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_C_Vp(.{ .v1 = null, .v2 = 16, .v3 = null }));
}
// From T_Snnn_xbc.c:14698:14716
// struct  Vp_D  {
//   void *v1;
//   double v2;
// };

test "Vp_D" {
    var lv: c.Vp_D = undefined;
    try testing.expectSize(c.Vp_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_D(.{ .v1 = null, .v2 = 18145 }));
}
// From T_Snnn_xbc.c:15445:15465
// struct  Vp_D_C  {
//   void *v1;
//   double v2;
//   char v3;
// };

test "Vp_D_C" {
    var lv: c.Vp_D_C = undefined;
    try testing.expectSize(c.Vp_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_C(.{ .v1 = null, .v2 = 14011, .v3 = 3 }));
}
// From T_Snnn_xbc.c:15470:15490
// struct  Vp_D_D  {
//   void *v1;
//   double v2;
//   double v3;
// };

test "Vp_D_D" {
    var lv: c.Vp_D_D = undefined;
    try testing.expectSize(c.Vp_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_D(.{ .v1 = null, .v2 = 5585, .v3 = 22732 }));
}
// From T_Snnn_xbc.c:15495:15515
// struct  Vp_D_F  {
//   void *v1;
//   double v2;
//   float v3;
// };

test "Vp_D_F" {
    var lv: c.Vp_D_F = undefined;
    try testing.expectSize(c.Vp_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_F(.{ .v1 = null, .v2 = 10230, .v3 = 0.336638 }));
}
// From T_Snnn_xbc.c:15520:15540
// struct  Vp_D_I  {
//   void *v1;
//   double v2;
//   int v3;
// };

test "Vp_D_I" {
    var lv: c.Vp_D_I = undefined;
    try testing.expectSize(c.Vp_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_I(.{ .v1 = null, .v2 = 1793, .v3 = 9961 }));
}
// From T_Snnn_xbc.c:15545:15565
// struct  Vp_D_Ip  {
//   void *v1;
//   double v2;
//   int *v3;
// };

test "Vp_D_Ip" {
    var lv: c.Vp_D_Ip = undefined;
    try testing.expectSize(c.Vp_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_Ip(.{ .v1 = null, .v2 = 14990, .v3 = null }));
}
// From T_Snnn_xbc.c:15570:15590
// struct  Vp_D_L  {
//   void *v1;
//   double v2;
//   __tsi64 v3;
// };

test "Vp_D_L" {
    var lv: c.Vp_D_L = undefined;
    try testing.expectSize(c.Vp_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_L(.{ .v1 = null, .v2 = 5361, .v3 = 17787 }));
}
// From T_Snnn_xbc.c:15595:15615
// struct  Vp_D_S  {
//   void *v1;
//   double v2;
//   short v3;
// };

test "Vp_D_S" {
    var lv: c.Vp_D_S = undefined;
    try testing.expectSize(c.Vp_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_S(.{ .v1 = null, .v2 = 9285, .v3 = 29276 }));
}
// From T_Snnn_xbc.c:15620:15640
// struct  Vp_D_Uc  {
//   void *v1;
//   double v2;
//   unsigned char v3;
// };

test "Vp_D_Uc" {
    var lv: c.Vp_D_Uc = undefined;
    try testing.expectSize(c.Vp_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_Uc(.{ .v1 = null, .v2 = 6503, .v3 = 26 }));
}
// From T_Snnn_xbc.c:15645:15665
// struct  Vp_D_Ui  {
//   void *v1;
//   double v2;
//   unsigned int v3;
// };

test "Vp_D_Ui" {
    var lv: c.Vp_D_Ui = undefined;
    try testing.expectSize(c.Vp_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_Ui(.{ .v1 = null, .v2 = 1017, .v3 = 6197 }));
}
// From T_Snnn_xbc.c:15670:15690
// struct  Vp_D_Ul  {
//   void *v1;
//   double v2;
//   __tsu64 v3;
// };

test "Vp_D_Ul" {
    var lv: c.Vp_D_Ul = undefined;
    try testing.expectSize(c.Vp_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_Ul(.{ .v1 = null, .v2 = 18055, .v3 = 15147 }));
}
// From T_Snnn_xbc.c:15695:15715
// struct  Vp_D_Us  {
//   void *v1;
//   double v2;
//   unsigned short v3;
// };

test "Vp_D_Us" {
    var lv: c.Vp_D_Us = undefined;
    try testing.expectSize(c.Vp_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_Us(.{ .v1 = null, .v2 = 28989, .v3 = 13068 }));
}
// From T_Snnn_xbc.c:15720:15740
// struct  Vp_D_Vp  {
//   void *v1;
//   double v2;
//   void *v3;
// };

test "Vp_D_Vp" {
    var lv: c.Vp_D_Vp = undefined;
    try testing.expectSize(c.Vp_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_D_Vp(.{ .v1 = null, .v2 = 9626, .v3 = null }));
}
// From T_Snnn_xbc.c:15745:15763
// struct  Vp_F  {
//   void *v1;
//   float v2;
// };

test "Vp_F" {
    var lv: c.Vp_F = undefined;
    try testing.expectSize(c.Vp_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_F(.{ .v1 = null, .v2 = 0.533414 }));
}
// From T_Snnn_xbc.c:16492:16512
// struct  Vp_F_C  {
//   void *v1;
//   float v2;
//   char v3;
// };

test "Vp_F_C" {
    var lv: c.Vp_F_C = undefined;
    try testing.expectSize(c.Vp_F_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_F_C(.{ .v1 = null, .v2 = 0.011388, .v3 = 35 }));
}
// From T_Snnn_xbc.c:16517:16537
// struct  Vp_F_D  {
//   void *v1;
//   float v2;
//   double v3;
// };

test "Vp_F_D" {
    var lv: c.Vp_F_D = undefined;
    try testing.expectSize(c.Vp_F_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_F_D(.{ .v1 = null, .v2 = 0.599087, .v3 = 11859 }));
}
// From T_Snnn_xbc.c:16542:16562
// struct  Vp_F_F  {
//   void *v1;
//   float v2;
//   float v3;
// };

test "Vp_F_F" {
    var lv: c.Vp_F_F = undefined;
    try testing.expectSize(c.Vp_F_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_F_F(.{ .v1 = null, .v2 = 0.805429, .v3 = 0.191817 }));
}
// From T_Snnn_xbc.c:16567:16587
// struct  Vp_F_I  {
//   void *v1;
//   float v2;
//   int v3;
// };

test "Vp_F_I" {
    var lv: c.Vp_F_I = undefined;
    try testing.expectSize(c.Vp_F_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_F_I(.{ .v1 = null, .v2 = 0.482520, .v3 = 23844 }));
}
// From T_Snnn_xbc.c:16592:16612
// struct  Vp_F_Ip  {
//   void *v1;
//   float v2;
//   int *v3;
// };

test "Vp_F_Ip" {
    var lv: c.Vp_F_Ip = undefined;
    try testing.expectSize(c.Vp_F_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_F_Ip(.{ .v1 = null, .v2 = 0.725104, .v3 = null }));
}
// From T_Snnn_xbc.c:16617:16637
// struct  Vp_F_L  {
//   void *v1;
//   float v2;
//   __tsi64 v3;
// };

test "Vp_F_L" {
    var lv: c.Vp_F_L = undefined;
    try testing.expectSize(c.Vp_F_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_F_L(.{ .v1 = null, .v2 = 0.091348, .v3 = 13732 }));
}
// From T_Snnn_xbc.c:16642:16662
// struct  Vp_F_S  {
//   void *v1;
//   float v2;
//   short v3;
// };

test "Vp_F_S" {
    var lv: c.Vp_F_S = undefined;
    try testing.expectSize(c.Vp_F_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_F_S(.{ .v1 = null, .v2 = 0.692628, .v3 = 23153 }));
}
// From T_Snnn_xbc.c:16667:16687
// struct  Vp_F_Uc  {
//   void *v1;
//   float v2;
//   unsigned char v3;
// };

test "Vp_F_Uc" {
    var lv: c.Vp_F_Uc = undefined;
    try testing.expectSize(c.Vp_F_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_F_Uc(.{ .v1 = null, .v2 = 0.837607, .v3 = 103 }));
}
// From T_Snnn_xbc.c:16692:16712
// struct  Vp_F_Ui  {
//   void *v1;
//   float v2;
//   unsigned int v3;
// };

test "Vp_F_Ui" {
    var lv: c.Vp_F_Ui = undefined;
    try testing.expectSize(c.Vp_F_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_F_Ui(.{ .v1 = null, .v2 = 0.929196, .v3 = 30633 }));
}
// From T_Snnn_xbc.c:16717:16737
// struct  Vp_F_Ul  {
//   void *v1;
//   float v2;
//   __tsu64 v3;
// };

test "Vp_F_Ul" {
    var lv: c.Vp_F_Ul = undefined;
    try testing.expectSize(c.Vp_F_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_F_Ul(.{ .v1 = null, .v2 = 0.158487, .v3 = 18628 }));
}
// From T_Snnn_xbc.c:16742:16762
// struct  Vp_F_Us  {
//   void *v1;
//   float v2;
//   unsigned short v3;
// };

test "Vp_F_Us" {
    var lv: c.Vp_F_Us = undefined;
    try testing.expectSize(c.Vp_F_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_F_Us(.{ .v1 = null, .v2 = 0.003791, .v3 = 6210 }));
}
// From T_Snnn_xbc.c:16767:16787
// struct  Vp_F_Vp  {
//   void *v1;
//   float v2;
//   void *v3;
// };

test "Vp_F_Vp" {
    var lv: c.Vp_F_Vp = undefined;
    try testing.expectSize(c.Vp_F_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_F_Vp(.{ .v1 = null, .v2 = 0.027160, .v3 = null }));
}
// From T_Snnn_xbc.c:16792:16810
// struct  Vp_I  {
//   void *v1;
//   int v2;
// };

test "Vp_I" {
    var lv: c.Vp_I = undefined;
    try testing.expectSize(c.Vp_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_I(.{ .v1 = null, .v2 = 23393 }));
}
// From T_Snnn_xbc.c:17539:17559
// struct  Vp_I_C  {
//   void *v1;
//   int v2;
//   char v3;
// };

test "Vp_I_C" {
    var lv: c.Vp_I_C = undefined;
    try testing.expectSize(c.Vp_I_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_I_C(.{ .v1 = null, .v2 = 1637, .v3 = 114 }));
}
// From T_Snnn_xbc.c:17564:17584
// struct  Vp_I_D  {
//   void *v1;
//   int v2;
//   double v3;
// };

test "Vp_I_D" {
    var lv: c.Vp_I_D = undefined;
    try testing.expectSize(c.Vp_I_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_I_D(.{ .v1 = null, .v2 = 1972, .v3 = 12471 }));
}
// From T_Snnn_xbc.c:17589:17609
// struct  Vp_I_F  {
//   void *v1;
//   int v2;
//   float v3;
// };

test "Vp_I_F" {
    var lv: c.Vp_I_F = undefined;
    try testing.expectSize(c.Vp_I_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_I_F(.{ .v1 = null, .v2 = 27881, .v3 = 0.959156 }));
}
// From T_Snnn_xbc.c:17614:17634
// struct  Vp_I_I  {
//   void *v1;
//   int v2;
//   int v3;
// };

test "Vp_I_I" {
    var lv: c.Vp_I_I = undefined;
    try testing.expectSize(c.Vp_I_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_I_I(.{ .v1 = null, .v2 = 10924, .v3 = 24474 }));
}
// From T_Snnn_xbc.c:17639:17659
// struct  Vp_I_Ip  {
//   void *v1;
//   int v2;
//   int *v3;
// };

test "Vp_I_Ip" {
    var lv: c.Vp_I_Ip = undefined;
    try testing.expectSize(c.Vp_I_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_I_Ip(.{ .v1 = null, .v2 = 16922, .v3 = null }));
}
// From T_Snnn_xbc.c:17664:17684
// struct  Vp_I_L  {
//   void *v1;
//   int v2;
//   __tsi64 v3;
// };

test "Vp_I_L" {
    var lv: c.Vp_I_L = undefined;
    try testing.expectSize(c.Vp_I_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_I_L(.{ .v1 = null, .v2 = 6583, .v3 = 21965 }));
}
// From T_Snnn_xbc.c:17689:17709
// struct  Vp_I_S  {
//   void *v1;
//   int v2;
//   short v3;
// };

test "Vp_I_S" {
    var lv: c.Vp_I_S = undefined;
    try testing.expectSize(c.Vp_I_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_I_S(.{ .v1 = null, .v2 = 21480, .v3 = 25061 }));
}
// From T_Snnn_xbc.c:17714:17734
// struct  Vp_I_Uc  {
//   void *v1;
//   int v2;
//   unsigned char v3;
// };

test "Vp_I_Uc" {
    var lv: c.Vp_I_Uc = undefined;
    try testing.expectSize(c.Vp_I_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_I_Uc(.{ .v1 = null, .v2 = 16553, .v3 = 97 }));
}
// From T_Snnn_xbc.c:17739:17759
// struct  Vp_I_Ui  {
//   void *v1;
//   int v2;
//   unsigned int v3;
// };

test "Vp_I_Ui" {
    var lv: c.Vp_I_Ui = undefined;
    try testing.expectSize(c.Vp_I_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_I_Ui(.{ .v1 = null, .v2 = 19921, .v3 = 1267 }));
}
// From T_Snnn_xbc.c:17764:17784
// struct  Vp_I_Ul  {
//   void *v1;
//   int v2;
//   __tsu64 v3;
// };

test "Vp_I_Ul" {
    var lv: c.Vp_I_Ul = undefined;
    try testing.expectSize(c.Vp_I_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_I_Ul(.{ .v1 = null, .v2 = 20058, .v3 = 6949 }));
}
// From T_Snnn_xbc.c:17789:17809
// struct  Vp_I_Us  {
//   void *v1;
//   int v2;
//   unsigned short v3;
// };

test "Vp_I_Us" {
    var lv: c.Vp_I_Us = undefined;
    try testing.expectSize(c.Vp_I_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_I_Us(.{ .v1 = null, .v2 = 11156, .v3 = 2529 }));
}
// From T_Snnn_xbc.c:17814:17834
// struct  Vp_I_Vp  {
//   void *v1;
//   int v2;
//   void *v3;
// };

test "Vp_I_Vp" {
    var lv: c.Vp_I_Vp = undefined;
    try testing.expectSize(c.Vp_I_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_I_Vp(.{ .v1 = null, .v2 = 15788, .v3 = null }));
}
// From T_Snnn_xbc.c:17839:17857
// struct  Vp_Ip  {
//   void *v1;
//   int *v2;
// };

test "Vp_Ip" {
    var lv: c.Vp_Ip = undefined;
    try testing.expectSize(c.Vp_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_Ip(.{ .v1 = null, .v2 = null }));
}
// From T_Snnn_xbc.c:18586:18606
// struct  Vp_Ip_C  {
//   void *v1;
//   int *v2;
//   char v3;
// };

test "Vp_Ip_C" {
    var lv: c.Vp_Ip_C = undefined;
    try testing.expectSize(c.Vp_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_C(.{ .v1 = null, .v2 = null, .v3 = 53 }));
}
// From T_Snnn_xbc.c:18611:18631
// struct  Vp_Ip_D  {
//   void *v1;
//   int *v2;
//   double v3;
// };

test "Vp_Ip_D" {
    var lv: c.Vp_Ip_D = undefined;
    try testing.expectSize(c.Vp_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_D(.{ .v1 = null, .v2 = null, .v3 = 10040 }));
}
// From T_Snnn_xbc.c:18636:18656
// struct  Vp_Ip_F  {
//   void *v1;
//   int *v2;
//   float v3;
// };

test "Vp_Ip_F" {
    var lv: c.Vp_Ip_F = undefined;
    try testing.expectSize(c.Vp_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_F(.{ .v1 = null, .v2 = null, .v3 = 0.489681 }));
}
// From T_Snnn_xbc.c:18661:18681
// struct  Vp_Ip_I  {
//   void *v1;
//   int *v2;
//   int v3;
// };

test "Vp_Ip_I" {
    var lv: c.Vp_Ip_I = undefined;
    try testing.expectSize(c.Vp_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_I(.{ .v1 = null, .v2 = null, .v3 = 21941 }));
}
// From T_Snnn_xbc.c:18686:18706
// struct  Vp_Ip_Ip  {
//   void *v1;
//   int *v2;
//   int *v3;
// };

test "Vp_Ip_Ip" {
    var lv: c.Vp_Ip_Ip = undefined;
    try testing.expectSize(c.Vp_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_Ip(.{ .v1 = null, .v2 = null, .v3 = null }));
}
// From T_Snnn_xbc.c:18711:18731
// struct  Vp_Ip_L  {
//   void *v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Vp_Ip_L" {
    var lv: c.Vp_Ip_L = undefined;
    try testing.expectSize(c.Vp_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_L(.{ .v1 = null, .v2 = null, .v3 = 18116 }));
}
// From T_Snnn_xbc.c:18736:18756
// struct  Vp_Ip_S  {
//   void *v1;
//   int *v2;
//   short v3;
// };

test "Vp_Ip_S" {
    var lv: c.Vp_Ip_S = undefined;
    try testing.expectSize(c.Vp_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_S(.{ .v1 = null, .v2 = null, .v3 = 31632 }));
}
// From T_Snnn_xbc.c:18761:18781
// struct  Vp_Ip_Uc  {
//   void *v1;
//   int *v2;
//   unsigned char v3;
// };

test "Vp_Ip_Uc" {
    var lv: c.Vp_Ip_Uc = undefined;
    try testing.expectSize(c.Vp_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_Uc(.{ .v1 = null, .v2 = null, .v3 = 107 }));
}
// From T_Snnn_xbc.c:18786:18806
// struct  Vp_Ip_Ui  {
//   void *v1;
//   int *v2;
//   unsigned int v3;
// };

test "Vp_Ip_Ui" {
    var lv: c.Vp_Ip_Ui = undefined;
    try testing.expectSize(c.Vp_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_Ui(.{ .v1 = null, .v2 = null, .v3 = 30947 }));
}
// From T_Snnn_xbc.c:18811:18831
// struct  Vp_Ip_Ul  {
//   void *v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Vp_Ip_Ul" {
    var lv: c.Vp_Ip_Ul = undefined;
    try testing.expectSize(c.Vp_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_Ul(.{ .v1 = null, .v2 = null, .v3 = 10704 }));
}
// From T_Snnn_xbc.c:18836:18856
// struct  Vp_Ip_Us  {
//   void *v1;
//   int *v2;
//   unsigned short v3;
// };

test "Vp_Ip_Us" {
    var lv: c.Vp_Ip_Us = undefined;
    try testing.expectSize(c.Vp_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_Us(.{ .v1 = null, .v2 = null, .v3 = 8391 }));
}
// From T_Snnn_xbc.c:18861:18881
// struct  Vp_Ip_Vp  {
//   void *v1;
//   int *v2;
//   void *v3;
// };

test "Vp_Ip_Vp" {
    var lv: c.Vp_Ip_Vp = undefined;
    try testing.expectSize(c.Vp_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ip_Vp(.{ .v1 = null, .v2 = null, .v3 = null }));
}
// From T_Snnn_xbc.c:18886:18904
// struct  Vp_L  {
//   void *v1;
//   __tsi64 v2;
// };

test "Vp_L" {
    var lv: c.Vp_L = undefined;
    try testing.expectSize(c.Vp_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_L(.{ .v1 = null, .v2 = 15055 }));
}
// From T_Snnn_xbc.c:19633:19653
// struct  Vp_L_C  {
//   void *v1;
//   __tsi64 v2;
//   char v3;
// };

test "Vp_L_C" {
    var lv: c.Vp_L_C = undefined;
    try testing.expectSize(c.Vp_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_C(.{ .v1 = null, .v2 = 28354, .v3 = 25 }));
}
// From T_Snnn_xbc.c:19658:19678
// struct  Vp_L_D  {
//   void *v1;
//   __tsi64 v2;
//   double v3;
// };

test "Vp_L_D" {
    var lv: c.Vp_L_D = undefined;
    try testing.expectSize(c.Vp_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_D(.{ .v1 = null, .v2 = 32669, .v3 = 4753 }));
}
// From T_Snnn_xbc.c:19683:19703
// struct  Vp_L_F  {
//   void *v1;
//   __tsi64 v2;
//   float v3;
// };

test "Vp_L_F" {
    var lv: c.Vp_L_F = undefined;
    try testing.expectSize(c.Vp_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_F(.{ .v1 = null, .v2 = 19722, .v3 = 0.038247 }));
}
// From T_Snnn_xbc.c:19708:19728
// struct  Vp_L_I  {
//   void *v1;
//   __tsi64 v2;
//   int v3;
// };

test "Vp_L_I" {
    var lv: c.Vp_L_I = undefined;
    try testing.expectSize(c.Vp_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_I(.{ .v1 = null, .v2 = 22785, .v3 = 20916 }));
}
// From T_Snnn_xbc.c:19733:19753
// struct  Vp_L_Ip  {
//   void *v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Vp_L_Ip" {
    var lv: c.Vp_L_Ip = undefined;
    try testing.expectSize(c.Vp_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_Ip(.{ .v1 = null, .v2 = 28290, .v3 = null }));
}
// From T_Snnn_xbc.c:19758:19778
// struct  Vp_L_L  {
//   void *v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Vp_L_L" {
    var lv: c.Vp_L_L = undefined;
    try testing.expectSize(c.Vp_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_L(.{ .v1 = null, .v2 = 28192, .v3 = 6050 }));
}
// From T_Snnn_xbc.c:19783:19803
// struct  Vp_L_S  {
//   void *v1;
//   __tsi64 v2;
//   short v3;
// };

test "Vp_L_S" {
    var lv: c.Vp_L_S = undefined;
    try testing.expectSize(c.Vp_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_S(.{ .v1 = null, .v2 = 56, .v3 = 14166 }));
}
// From T_Snnn_xbc.c:19808:19828
// struct  Vp_L_Uc  {
//   void *v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Vp_L_Uc" {
    var lv: c.Vp_L_Uc = undefined;
    try testing.expectSize(c.Vp_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_Uc(.{ .v1 = null, .v2 = 26724, .v3 = 65 }));
}
// From T_Snnn_xbc.c:19833:19853
// struct  Vp_L_Ui  {
//   void *v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Vp_L_Ui" {
    var lv: c.Vp_L_Ui = undefined;
    try testing.expectSize(c.Vp_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_Ui(.{ .v1 = null, .v2 = 17745, .v3 = 25100 }));
}
// From T_Snnn_xbc.c:19858:19878
// struct  Vp_L_Ul  {
//   void *v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Vp_L_Ul" {
    var lv: c.Vp_L_Ul = undefined;
    try testing.expectSize(c.Vp_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_Ul(.{ .v1 = null, .v2 = 28818, .v3 = 28707 }));
}
// From T_Snnn_xbc.c:19883:19903
// struct  Vp_L_Us  {
//   void *v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Vp_L_Us" {
    var lv: c.Vp_L_Us = undefined;
    try testing.expectSize(c.Vp_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_Us(.{ .v1 = null, .v2 = 23192, .v3 = 1547 }));
}
// From T_Snnn_xbc.c:19908:19928
// struct  Vp_L_Vp  {
//   void *v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Vp_L_Vp" {
    var lv: c.Vp_L_Vp = undefined;
    try testing.expectSize(c.Vp_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_L_Vp(.{ .v1 = null, .v2 = 2020, .v3 = null }));
}
// From T_Snnn_xbc.c:19933:19951
// struct  Vp_S  {
//   void *v1;
//   short v2;
// };

test "Vp_S" {
    var lv: c.Vp_S = undefined;
    try testing.expectSize(c.Vp_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_S(.{ .v1 = null, .v2 = 3165 }));
}
// From T_Snnn_xbc.c:20680:20700
// struct  Vp_S_C  {
//   void *v1;
//   short v2;
//   char v3;
// };

test "Vp_S_C" {
    var lv: c.Vp_S_C = undefined;
    try testing.expectSize(c.Vp_S_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_S_C(.{ .v1 = null, .v2 = 20726, .v3 = 47 }));
}
// From T_Snnn_xbc.c:20705:20725
// struct  Vp_S_D  {
//   void *v1;
//   short v2;
//   double v3;
// };

test "Vp_S_D" {
    var lv: c.Vp_S_D = undefined;
    try testing.expectSize(c.Vp_S_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_S_D(.{ .v1 = null, .v2 = 11541, .v3 = 10734 }));
}
// From T_Snnn_xbc.c:20730:20750
// struct  Vp_S_F  {
//   void *v1;
//   short v2;
//   float v3;
// };

test "Vp_S_F" {
    var lv: c.Vp_S_F = undefined;
    try testing.expectSize(c.Vp_S_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_S_F(.{ .v1 = null, .v2 = 29716, .v3 = 0.289858 }));
}
// From T_Snnn_xbc.c:20755:20775
// struct  Vp_S_I  {
//   void *v1;
//   short v2;
//   int v3;
// };

test "Vp_S_I" {
    var lv: c.Vp_S_I = undefined;
    try testing.expectSize(c.Vp_S_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_S_I(.{ .v1 = null, .v2 = 11380, .v3 = 937 }));
}
// From T_Snnn_xbc.c:20780:20800
// struct  Vp_S_Ip  {
//   void *v1;
//   short v2;
//   int *v3;
// };

test "Vp_S_Ip" {
    var lv: c.Vp_S_Ip = undefined;
    try testing.expectSize(c.Vp_S_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_S_Ip(.{ .v1 = null, .v2 = 7055, .v3 = null }));
}
// From T_Snnn_xbc.c:20805:20825
// struct  Vp_S_L  {
//   void *v1;
//   short v2;
//   __tsi64 v3;
// };

test "Vp_S_L" {
    var lv: c.Vp_S_L = undefined;
    try testing.expectSize(c.Vp_S_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_S_L(.{ .v1 = null, .v2 = 22604, .v3 = 30928 }));
}
// From T_Snnn_xbc.c:20830:20850
// struct  Vp_S_S  {
//   void *v1;
//   short v2;
//   short v3;
// };

test "Vp_S_S" {
    var lv: c.Vp_S_S = undefined;
    try testing.expectSize(c.Vp_S_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_S_S(.{ .v1 = null, .v2 = 7792, .v3 = 12301 }));
}
// From T_Snnn_xbc.c:20855:20875
// struct  Vp_S_Uc  {
//   void *v1;
//   short v2;
//   unsigned char v3;
// };

test "Vp_S_Uc" {
    var lv: c.Vp_S_Uc = undefined;
    try testing.expectSize(c.Vp_S_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_S_Uc(.{ .v1 = null, .v2 = 20598, .v3 = 41 }));
}
// From T_Snnn_xbc.c:20880:20900
// struct  Vp_S_Ui  {
//   void *v1;
//   short v2;
//   unsigned int v3;
// };

test "Vp_S_Ui" {
    var lv: c.Vp_S_Ui = undefined;
    try testing.expectSize(c.Vp_S_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_S_Ui(.{ .v1 = null, .v2 = 10315, .v3 = 28050 }));
}
// From T_Snnn_xbc.c:20905:20925
// struct  Vp_S_Ul  {
//   void *v1;
//   short v2;
//   __tsu64 v3;
// };

test "Vp_S_Ul" {
    var lv: c.Vp_S_Ul = undefined;
    try testing.expectSize(c.Vp_S_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_S_Ul(.{ .v1 = null, .v2 = 27563, .v3 = 25487 }));
}
// From T_Snnn_xbc.c:20930:20950
// struct  Vp_S_Us  {
//   void *v1;
//   short v2;
//   unsigned short v3;
// };

test "Vp_S_Us" {
    var lv: c.Vp_S_Us = undefined;
    try testing.expectSize(c.Vp_S_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_S_Us(.{ .v1 = null, .v2 = 25333, .v3 = 3161 }));
}
// From T_Snnn_xbc.c:20955:20975
// struct  Vp_S_Vp  {
//   void *v1;
//   short v2;
//   void *v3;
// };

test "Vp_S_Vp" {
    var lv: c.Vp_S_Vp = undefined;
    try testing.expectSize(c.Vp_S_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_S_Vp(.{ .v1 = null, .v2 = 19397, .v3 = null }));
}
// From T_Snnn_xbc.c:20980:20998
// struct  Vp_Uc  {
//   void *v1;
//   unsigned char v2;
// };

test "Vp_Uc" {
    var lv: c.Vp_Uc = undefined;
    try testing.expectSize(c.Vp_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_Uc(.{ .v1 = null, .v2 = 45 }));
}
// From T_Snnn_xbc.c:21727:21747
// struct  Vp_Uc_C  {
//   void *v1;
//   unsigned char v2;
//   char v3;
// };

test "Vp_Uc_C" {
    var lv: c.Vp_Uc_C = undefined;
    try testing.expectSize(c.Vp_Uc_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
    try testing.expectOk(c.recv_Vp_Uc_C(.{ .v1 = null, .v2 = 20, .v3 = 19 }));
}
// From T_Snnn_xbc.c:21752:21772
// struct  Vp_Uc_D  {
//   void *v1;
//   unsigned char v2;
//   double v3;
// };

test "Vp_Uc_D" {
    var lv: c.Vp_Uc_D = undefined;
    try testing.expectSize(c.Vp_Uc_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Uc_D(.{ .v1 = null, .v2 = 50, .v3 = 24198 }));
}
// From T_Snnn_xbc.c:21777:21797
// struct  Vp_Uc_F  {
//   void *v1;
//   unsigned char v2;
//   float v3;
// };

test "Vp_Uc_F" {
    var lv: c.Vp_Uc_F = undefined;
    try testing.expectSize(c.Vp_Uc_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Uc_F(.{ .v1 = null, .v2 = 123, .v3 = 0.987523 }));
}
// From T_Snnn_xbc.c:21802:21822
// struct  Vp_Uc_I  {
//   void *v1;
//   unsigned char v2;
//   int v3;
// };

test "Vp_Uc_I" {
    var lv: c.Vp_Uc_I = undefined;
    try testing.expectSize(c.Vp_Uc_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Uc_I(.{ .v1 = null, .v2 = 114, .v3 = 26429 }));
}
// From T_Snnn_xbc.c:21827:21847
// struct  Vp_Uc_Ip  {
//   void *v1;
//   unsigned char v2;
//   int *v3;
// };

test "Vp_Uc_Ip" {
    var lv: c.Vp_Uc_Ip = undefined;
    try testing.expectSize(c.Vp_Uc_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Uc_Ip(.{ .v1 = null, .v2 = 27, .v3 = null }));
}
// From T_Snnn_xbc.c:21852:21872
// struct  Vp_Uc_L  {
//   void *v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Vp_Uc_L" {
    var lv: c.Vp_Uc_L = undefined;
    try testing.expectSize(c.Vp_Uc_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Uc_L(.{ .v1 = null, .v2 = 122, .v3 = 7583 }));
}
// From T_Snnn_xbc.c:21877:21897
// struct  Vp_Uc_S  {
//   void *v1;
//   unsigned char v2;
//   short v3;
// };

test "Vp_Uc_S" {
    var lv: c.Vp_Uc_S = undefined;
    try testing.expectSize(c.Vp_Uc_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_Uc_S(.{ .v1 = null, .v2 = 14, .v3 = 22906 }));
}
// From T_Snnn_xbc.c:21902:21922
// struct  Vp_Uc_Uc  {
//   void *v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Vp_Uc_Uc" {
    var lv: c.Vp_Uc_Uc = undefined;
    try testing.expectSize(c.Vp_Uc_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
    try testing.expectOk(c.recv_Vp_Uc_Uc(.{ .v1 = null, .v2 = 61, .v3 = 71 }));
}
// From T_Snnn_xbc.c:21927:21947
// struct  Vp_Uc_Ui  {
//   void *v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Vp_Uc_Ui" {
    var lv: c.Vp_Uc_Ui = undefined;
    try testing.expectSize(c.Vp_Uc_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Uc_Ui(.{ .v1 = null, .v2 = 68, .v3 = 31148 }));
}
// From T_Snnn_xbc.c:21952:21972
// struct  Vp_Uc_Ul  {
//   void *v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Vp_Uc_Ul" {
    var lv: c.Vp_Uc_Ul = undefined;
    try testing.expectSize(c.Vp_Uc_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Uc_Ul(.{ .v1 = null, .v2 = 13, .v3 = 6117 }));
}
// From T_Snnn_xbc.c:21977:21997
// struct  Vp_Uc_Us  {
//   void *v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Vp_Uc_Us" {
    var lv: c.Vp_Uc_Us = undefined;
    try testing.expectSize(c.Vp_Uc_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_Uc_Us(.{ .v1 = null, .v2 = 38, .v3 = 12337 }));
}
// From T_Snnn_xbc.c:22002:22022
// struct  Vp_Uc_Vp  {
//   void *v1;
//   unsigned char v2;
//   void *v3;
// };

test "Vp_Uc_Vp" {
    var lv: c.Vp_Uc_Vp = undefined;
    try testing.expectSize(c.Vp_Uc_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Uc_Vp(.{ .v1 = null, .v2 = 39, .v3 = null }));
}
// From T_Snnn_xbc.c:22027:22045
// struct  Vp_Ui  {
//   void *v1;
//   unsigned int v2;
// };

test "Vp_Ui" {
    var lv: c.Vp_Ui = undefined;
    try testing.expectSize(c.Vp_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_Ui(.{ .v1 = null, .v2 = 819 }));
}
// From T_Snnn_xbc.c:22774:22794
// struct  Vp_Ui_C  {
//   void *v1;
//   unsigned int v2;
//   char v3;
// };

test "Vp_Ui_C" {
    var lv: c.Vp_Ui_C = undefined;
    try testing.expectSize(c.Vp_Ui_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Ui_C(.{ .v1 = null, .v2 = 14926, .v3 = 98 }));
}
// From T_Snnn_xbc.c:22799:22819
// struct  Vp_Ui_D  {
//   void *v1;
//   unsigned int v2;
//   double v3;
// };

test "Vp_Ui_D" {
    var lv: c.Vp_Ui_D = undefined;
    try testing.expectSize(c.Vp_Ui_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ui_D(.{ .v1 = null, .v2 = 13042, .v3 = 11331 }));
}
// From T_Snnn_xbc.c:22824:22844
// struct  Vp_Ui_F  {
//   void *v1;
//   unsigned int v2;
//   float v3;
// };

test "Vp_Ui_F" {
    var lv: c.Vp_Ui_F = undefined;
    try testing.expectSize(c.Vp_Ui_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Ui_F(.{ .v1 = null, .v2 = 6209, .v3 = 0.330525 }));
}
// From T_Snnn_xbc.c:22849:22869
// struct  Vp_Ui_I  {
//   void *v1;
//   unsigned int v2;
//   int v3;
// };

test "Vp_Ui_I" {
    var lv: c.Vp_Ui_I = undefined;
    try testing.expectSize(c.Vp_Ui_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Ui_I(.{ .v1 = null, .v2 = 15474, .v3 = 15360 }));
}
// From T_Snnn_xbc.c:22874:22894
// struct  Vp_Ui_Ip  {
//   void *v1;
//   unsigned int v2;
//   int *v3;
// };

test "Vp_Ui_Ip" {
    var lv: c.Vp_Ui_Ip = undefined;
    try testing.expectSize(c.Vp_Ui_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ui_Ip(.{ .v1 = null, .v2 = 14297, .v3 = null }));
}
// From T_Snnn_xbc.c:22899:22919
// struct  Vp_Ui_L  {
//   void *v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Vp_Ui_L" {
    var lv: c.Vp_Ui_L = undefined;
    try testing.expectSize(c.Vp_Ui_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ui_L(.{ .v1 = null, .v2 = 31410, .v3 = 14978 }));
}
// From T_Snnn_xbc.c:22924:22944
// struct  Vp_Ui_S  {
//   void *v1;
//   unsigned int v2;
//   short v3;
// };

test "Vp_Ui_S" {
    var lv: c.Vp_Ui_S = undefined;
    try testing.expectSize(c.Vp_Ui_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Ui_S(.{ .v1 = null, .v2 = 1025, .v3 = 14170 }));
}
// From T_Snnn_xbc.c:22949:22969
// struct  Vp_Ui_Uc  {
//   void *v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Vp_Ui_Uc" {
    var lv: c.Vp_Ui_Uc = undefined;
    try testing.expectSize(c.Vp_Ui_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Ui_Uc(.{ .v1 = null, .v2 = 23983, .v3 = 88 }));
}
// From T_Snnn_xbc.c:22974:22994
// struct  Vp_Ui_Ui  {
//   void *v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Vp_Ui_Ui" {
    var lv: c.Vp_Ui_Ui = undefined;
    try testing.expectSize(c.Vp_Ui_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Ui_Ui(.{ .v1 = null, .v2 = 99, .v3 = 30755 }));
}
// From T_Snnn_xbc.c:22999:23019
// struct  Vp_Ui_Ul  {
//   void *v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Vp_Ui_Ul" {
    var lv: c.Vp_Ui_Ul = undefined;
    try testing.expectSize(c.Vp_Ui_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ui_Ul(.{ .v1 = null, .v2 = 27055, .v3 = 7728 }));
}
// From T_Snnn_xbc.c:23024:23044
// struct  Vp_Ui_Us  {
//   void *v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Vp_Ui_Us" {
    var lv: c.Vp_Ui_Us = undefined;
    try testing.expectSize(c.Vp_Ui_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Ui_Us(.{ .v1 = null, .v2 = 21796, .v3 = 9331 }));
}
// From T_Snnn_xbc.c:23049:23069
// struct  Vp_Ui_Vp  {
//   void *v1;
//   unsigned int v2;
//   void *v3;
// };

test "Vp_Ui_Vp" {
    var lv: c.Vp_Ui_Vp = undefined;
    try testing.expectSize(c.Vp_Ui_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Ui_Vp(.{ .v1 = null, .v2 = 4692, .v3 = null }));
}
// From T_Snnn_xbc.c:23074:23092
// struct  Vp_Ul  {
//   void *v1;
//   __tsu64 v2;
// };

test "Vp_Ul" {
    var lv: c.Vp_Ul = undefined;
    try testing.expectSize(c.Vp_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_Ul(.{ .v1 = null, .v2 = 5486 }));
}
// From T_Snnn_xbc.c:23821:23841
// struct  Vp_Ul_C  {
//   void *v1;
//   __tsu64 v2;
//   char v3;
// };

test "Vp_Ul_C" {
    var lv: c.Vp_Ul_C = undefined;
    try testing.expectSize(c.Vp_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_C(.{ .v1 = null, .v2 = 20933, .v3 = 118 }));
}
// From T_Snnn_xbc.c:23846:23866
// struct  Vp_Ul_D  {
//   void *v1;
//   __tsu64 v2;
//   double v3;
// };

test "Vp_Ul_D" {
    var lv: c.Vp_Ul_D = undefined;
    try testing.expectSize(c.Vp_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_D(.{ .v1 = null, .v2 = 27275, .v3 = 1911 }));
}
// From T_Snnn_xbc.c:23871:23891
// struct  Vp_Ul_F  {
//   void *v1;
//   __tsu64 v2;
//   float v3;
// };

test "Vp_Ul_F" {
    var lv: c.Vp_Ul_F = undefined;
    try testing.expectSize(c.Vp_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_F(.{ .v1 = null, .v2 = 19348, .v3 = 0.727542 }));
}
// From T_Snnn_xbc.c:23896:23916
// struct  Vp_Ul_I  {
//   void *v1;
//   __tsu64 v2;
//   int v3;
// };

test "Vp_Ul_I" {
    var lv: c.Vp_Ul_I = undefined;
    try testing.expectSize(c.Vp_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_I(.{ .v1 = null, .v2 = 6586, .v3 = 1397 }));
}
// From T_Snnn_xbc.c:23921:23941
// struct  Vp_Ul_Ip  {
//   void *v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Vp_Ul_Ip" {
    var lv: c.Vp_Ul_Ip = undefined;
    try testing.expectSize(c.Vp_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_Ip(.{ .v1 = null, .v2 = 3915, .v3 = null }));
}
// From T_Snnn_xbc.c:23946:23966
// struct  Vp_Ul_L  {
//   void *v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Vp_Ul_L" {
    var lv: c.Vp_Ul_L = undefined;
    try testing.expectSize(c.Vp_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_L(.{ .v1 = null, .v2 = 2122, .v3 = 2907 }));
}
// From T_Snnn_xbc.c:23971:23991
// struct  Vp_Ul_S  {
//   void *v1;
//   __tsu64 v2;
//   short v3;
// };

test "Vp_Ul_S" {
    var lv: c.Vp_Ul_S = undefined;
    try testing.expectSize(c.Vp_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_S(.{ .v1 = null, .v2 = 26049, .v3 = 9797 }));
}
// From T_Snnn_xbc.c:23996:24016
// struct  Vp_Ul_Uc  {
//   void *v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Vp_Ul_Uc" {
    var lv: c.Vp_Ul_Uc = undefined;
    try testing.expectSize(c.Vp_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_Uc(.{ .v1 = null, .v2 = 20602, .v3 = 11 }));
}
// From T_Snnn_xbc.c:24021:24041
// struct  Vp_Ul_Ui  {
//   void *v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Vp_Ul_Ui" {
    var lv: c.Vp_Ul_Ui = undefined;
    try testing.expectSize(c.Vp_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_Ui(.{ .v1 = null, .v2 = 4547, .v3 = 23948 }));
}
// From T_Snnn_xbc.c:24046:24066
// struct  Vp_Ul_Ul  {
//   void *v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Vp_Ul_Ul" {
    var lv: c.Vp_Ul_Ul = undefined;
    try testing.expectSize(c.Vp_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_Ul(.{ .v1 = null, .v2 = 17343, .v3 = 2118 }));
}
// From T_Snnn_xbc.c:24071:24091
// struct  Vp_Ul_Us  {
//   void *v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Vp_Ul_Us" {
    var lv: c.Vp_Ul_Us = undefined;
    try testing.expectSize(c.Vp_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_Us(.{ .v1 = null, .v2 = 20439, .v3 = 3748 }));
}
// From T_Snnn_xbc.c:24096:24116
// struct  Vp_Ul_Vp  {
//   void *v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Vp_Ul_Vp" {
    var lv: c.Vp_Ul_Vp = undefined;
    try testing.expectSize(c.Vp_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_Vp_Ul_Vp(.{ .v1 = null, .v2 = 29974, .v3 = null }));
}
// From T_Snnn_xbc.c:24121:24139
// struct  Vp_Us  {
//   void *v1;
//   unsigned short v2;
// };

test "Vp_Us" {
    var lv: c.Vp_Us = undefined;
    try testing.expectSize(c.Vp_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_Us(.{ .v1 = null, .v2 = 4604 }));
}
// From T_Snnn_xbc.c:24868:24888
// struct  Vp_Us_C  {
//   void *v1;
//   unsigned short v2;
//   char v3;
// };

test "Vp_Us_C" {
    var lv: c.Vp_Us_C = undefined;
    try testing.expectSize(c.Vp_Us_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_Us_C(.{ .v1 = null, .v2 = 27414, .v3 = 69 }));
}
// From T_Snnn_xbc.c:24893:24913
// struct  Vp_Us_D  {
//   void *v1;
//   unsigned short v2;
//   double v3;
// };

test "Vp_Us_D" {
    var lv: c.Vp_Us_D = undefined;
    try testing.expectSize(c.Vp_Us_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Us_D(.{ .v1 = null, .v2 = 1973, .v3 = 31957 }));
}
// From T_Snnn_xbc.c:24918:24938
// struct  Vp_Us_F  {
//   void *v1;
//   unsigned short v2;
//   float v3;
// };

test "Vp_Us_F" {
    var lv: c.Vp_Us_F = undefined;
    try testing.expectSize(c.Vp_Us_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Us_F(.{ .v1 = null, .v2 = 13536, .v3 = 0.631761 }));
}
// From T_Snnn_xbc.c:24943:24963
// struct  Vp_Us_I  {
//   void *v1;
//   unsigned short v2;
//   int v3;
// };

test "Vp_Us_I" {
    var lv: c.Vp_Us_I = undefined;
    try testing.expectSize(c.Vp_Us_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Us_I(.{ .v1 = null, .v2 = 19941, .v3 = 20835 }));
}
// From T_Snnn_xbc.c:24968:24988
// struct  Vp_Us_Ip  {
//   void *v1;
//   unsigned short v2;
//   int *v3;
// };

test "Vp_Us_Ip" {
    var lv: c.Vp_Us_Ip = undefined;
    try testing.expectSize(c.Vp_Us_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Us_Ip(.{ .v1 = null, .v2 = 21849, .v3 = null }));
}
// From T_Snnn_xbc.c:24993:25013
// struct  Vp_Us_L  {
//   void *v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Vp_Us_L" {
    var lv: c.Vp_Us_L = undefined;
    try testing.expectSize(c.Vp_Us_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Us_L(.{ .v1 = null, .v2 = 1972, .v3 = 3231 }));
}
// From T_Snnn_xbc.c:25018:25038
// struct  Vp_Us_S  {
//   void *v1;
//   unsigned short v2;
//   short v3;
// };

test "Vp_Us_S" {
    var lv: c.Vp_Us_S = undefined;
    try testing.expectSize(c.Vp_Us_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_Us_S(.{ .v1 = null, .v2 = 686, .v3 = 31896 }));
}
// From T_Snnn_xbc.c:25043:25063
// struct  Vp_Us_Uc  {
//   void *v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Vp_Us_Uc" {
    var lv: c.Vp_Us_Uc = undefined;
    try testing.expectSize(c.Vp_Us_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_Us_Uc(.{ .v1 = null, .v2 = 22668, .v3 = 101 }));
}
// From T_Snnn_xbc.c:25068:25088
// struct  Vp_Us_Ui  {
//   void *v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Vp_Us_Ui" {
    var lv: c.Vp_Us_Ui = undefined;
    try testing.expectSize(c.Vp_Us_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
    try testing.expectOk(c.recv_Vp_Us_Ui(.{ .v1 = null, .v2 = 15892, .v3 = 7824 }));
}
// From T_Snnn_xbc.c:25093:25113
// struct  Vp_Us_Ul  {
//   void *v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Vp_Us_Ul" {
    var lv: c.Vp_Us_Ul = undefined;
    try testing.expectSize(c.Vp_Us_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Us_Ul(.{ .v1 = null, .v2 = 31019, .v3 = 32184 }));
}
// From T_Snnn_xbc.c:25118:25138
// struct  Vp_Us_Us  {
//   void *v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Vp_Us_Us" {
    var lv: c.Vp_Us_Us = undefined;
    try testing.expectSize(c.Vp_Us_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
    try testing.expectOk(c.recv_Vp_Us_Us(.{ .v1 = null, .v2 = 21460, .v3 = 26681 }));
}
// From T_Snnn_xbc.c:25143:25163
// struct  Vp_Us_Vp  {
//   void *v1;
//   unsigned short v2;
//   void *v3;
// };

test "Vp_Us_Vp" {
    var lv: c.Vp_Us_Vp = undefined;
    try testing.expectSize(c.Vp_Us_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Us_Vp(.{ .v1 = null, .v2 = 30188, .v3 = null }));
}
// From T_Snnn_xbc.c:25168:25186
// struct  Vp_Vp  {
//   void *v1;
//   void *v2;
// };

test "Vp_Vp" {
    var lv: c.Vp_Vp = undefined;
    try testing.expectSize(c.Vp_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_Vp_Vp(.{ .v1 = null, .v2 = null }));
}
// From T_Snnn_xbc.c:25915:25935
// struct  Vp_Vp_C  {
//   void *v1;
//   void *v2;
//   char v3;
// };

test "Vp_Vp_C" {
    var lv: c.Vp_Vp_C = undefined;
    try testing.expectSize(c.Vp_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_C(.{ .v1 = null, .v2 = null, .v3 = 106 }));
}
// From T_Snnn_xbc.c:25940:25960
// struct  Vp_Vp_D  {
//   void *v1;
//   void *v2;
//   double v3;
// };

test "Vp_Vp_D" {
    var lv: c.Vp_Vp_D = undefined;
    try testing.expectSize(c.Vp_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_D(.{ .v1 = null, .v2 = null, .v3 = 16019 }));
}
// From T_Snnn_xbc.c:25965:25985
// struct  Vp_Vp_F  {
//   void *v1;
//   void *v2;
//   float v3;
// };

test "Vp_Vp_F" {
    var lv: c.Vp_Vp_F = undefined;
    try testing.expectSize(c.Vp_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_F(.{ .v1 = null, .v2 = null, .v3 = 0.350977 }));
}
// From T_Snnn_xbc.c:25990:26010
// struct  Vp_Vp_I  {
//   void *v1;
//   void *v2;
//   int v3;
// };

test "Vp_Vp_I" {
    var lv: c.Vp_Vp_I = undefined;
    try testing.expectSize(c.Vp_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_I(.{ .v1 = null, .v2 = null, .v3 = 18595 }));
}
// From T_Snnn_xbc.c:26015:26035
// struct  Vp_Vp_Ip  {
//   void *v1;
//   void *v2;
//   int *v3;
// };

test "Vp_Vp_Ip" {
    var lv: c.Vp_Vp_Ip = undefined;
    try testing.expectSize(c.Vp_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_Ip(.{ .v1 = null, .v2 = null, .v3 = null }));
}
// From T_Snnn_xbc.c:26040:26060
// struct  Vp_Vp_L  {
//   void *v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Vp_Vp_L" {
    var lv: c.Vp_Vp_L = undefined;
    try testing.expectSize(c.Vp_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_L(.{ .v1 = null, .v2 = null, .v3 = 7966 }));
}
// From T_Snnn_xbc.c:26065:26085
// struct  Vp_Vp_S  {
//   void *v1;
//   void *v2;
//   short v3;
// };

test "Vp_Vp_S" {
    var lv: c.Vp_Vp_S = undefined;
    try testing.expectSize(c.Vp_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_S(.{ .v1 = null, .v2 = null, .v3 = 15595 }));
}
// From T_Snnn_xbc.c:26090:26110
// struct  Vp_Vp_Uc  {
//   void *v1;
//   void *v2;
//   unsigned char v3;
// };

test "Vp_Vp_Uc" {
    var lv: c.Vp_Vp_Uc = undefined;
    try testing.expectSize(c.Vp_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_Uc(.{ .v1 = null, .v2 = null, .v3 = 17 }));
}
// From T_Snnn_xbc.c:26115:26135
// struct  Vp_Vp_Ui  {
//   void *v1;
//   void *v2;
//   unsigned int v3;
// };

test "Vp_Vp_Ui" {
    var lv: c.Vp_Vp_Ui = undefined;
    try testing.expectSize(c.Vp_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_Ui(.{ .v1 = null, .v2 = null, .v3 = 12780 }));
}
// From T_Snnn_xbc.c:26140:26160
// struct  Vp_Vp_Ul  {
//   void *v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Vp_Vp_Ul" {
    var lv: c.Vp_Vp_Ul = undefined;
    try testing.expectSize(c.Vp_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_Ul(.{ .v1 = null, .v2 = null, .v3 = 12179 }));
}
// From T_Snnn_xbc.c:26165:26185
// struct  Vp_Vp_Us  {
//   void *v1;
//   void *v2;
//   unsigned short v3;
// };

test "Vp_Vp_Us" {
    var lv: c.Vp_Vp_Us = undefined;
    try testing.expectSize(c.Vp_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_Us(.{ .v1 = null, .v2 = null, .v3 = 11303 }));
}
// From T_Snnn_xbc.c:26190:26210
// struct  Vp_Vp_Vp  {
//   void *v1;
//   void *v2;
//   void *v3;
// };

test "Vp_Vp_Vp" {
    var lv: c.Vp_Vp_Vp = undefined;
    try testing.expectSize(c.Vp_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_Vp_Vp_Vp(.{ .v1 = null, .v2 = null, .v3 = null }));
}
