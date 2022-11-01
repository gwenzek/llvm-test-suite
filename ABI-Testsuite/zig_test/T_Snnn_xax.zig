const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xax.h");
});

// From T_Snnn_xax.c:19690:19708
// struct  F_C  {
//   float v1;
//   char v2;
// };

test "F_C" {
    var lv: c.F_C = undefined;
    try testing.expectSize(c.F_C, 8);
    try testing.expectAlign(c.F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_F_C(.{ .v1 = 0.5, .v2 = 105 }));
}
// From T_Snnn_xax.c:20437:20457
// struct  F_C_C  {
//   float v1;
//   char v2;
//   char v3;
// };

test "F_C_C" {
    var lv: c.F_C_C = undefined;
    try testing.expectSize(c.F_C_C, 8);
    try testing.expectAlign(c.F_C_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
    try testing.expectOk(c.recv_F_C_C(.{ .v1 = -2.125, .v2 = 111, .v3 = 18 }));
}
// From T_Snnn_xax.c:20462:20482
// struct  F_C_D  {
//   float v1;
//   char v2;
//   double v3;
// };

test "F_C_D" {
    var lv: c.F_C_D = undefined;
    try testing.expectSize(c.F_C_D, 16);
    try testing.expectAlign(c.F_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_C_D(.{ .v1 = 0.5, .v2 = 57, .v3 = 0.5 }));
}
// From T_Snnn_xax.c:20487:20507
// struct  F_C_F  {
//   float v1;
//   char v2;
//   float v3;
// };

test "F_C_F" {
    var lv: c.F_C_F = undefined;
    try testing.expectSize(c.F_C_F, 12);
    try testing.expectAlign(c.F_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_C_F(.{ .v1 = 1.0, .v2 = 101, .v3 = 1.0 }));
}
// From T_Snnn_xax.c:20512:20532
// struct  F_C_I  {
//   float v1;
//   char v2;
//   int v3;
// };

test "F_C_I" {
    var lv: c.F_C_I = undefined;
    try testing.expectSize(c.F_C_I, 12);
    try testing.expectAlign(c.F_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_C_I(.{ .v1 = 1.0, .v2 = 112, .v3 = 2332 }));
}
// From T_Snnn_xax.c:20537:20557
// struct  F_C_Ip  {
//   float v1;
//   char v2;
//   int *v3;
// };

test "F_C_Ip" {
    var lv: c.F_C_Ip = undefined;
    try testing.expectSize(c.F_C_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_C_Ip(.{ .v1 = -0.25, .v2 = 70, .v3 = null }));
}
// From T_Snnn_xax.c:20562:20582
// struct  F_C_L  {
//   float v1;
//   char v2;
//   __tsi64 v3;
// };

test "F_C_L" {
    var lv: c.F_C_L = undefined;
    try testing.expectSize(c.F_C_L, 16);
    try testing.expectAlign(c.F_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_C_L(.{ .v1 = 0.875, .v2 = 121, .v3 = 18229 }));
}
// From T_Snnn_xax.c:20587:20607
// struct  F_C_S  {
//   float v1;
//   char v2;
//   short v3;
// };

test "F_C_S" {
    var lv: c.F_C_S = undefined;
    try testing.expectSize(c.F_C_S, 8);
    try testing.expectAlign(c.F_C_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_C_S(.{ .v1 = 0.875, .v2 = 31, .v3 = 31175 }));
}
// From T_Snnn_xax.c:20612:20632
// struct  F_C_Uc  {
//   float v1;
//   char v2;
//   unsigned char v3;
// };

test "F_C_Uc" {
    var lv: c.F_C_Uc = undefined;
    try testing.expectSize(c.F_C_Uc, 8);
    try testing.expectAlign(c.F_C_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
    try testing.expectOk(c.recv_F_C_Uc(.{ .v1 = 1.0, .v2 = 69, .v3 = 62 }));
}
// From T_Snnn_xax.c:20637:20657
// struct  F_C_Ui  {
//   float v1;
//   char v2;
//   unsigned int v3;
// };

test "F_C_Ui" {
    var lv: c.F_C_Ui = undefined;
    try testing.expectSize(c.F_C_Ui, 12);
    try testing.expectAlign(c.F_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_C_Ui(.{ .v1 = 7.0, .v2 = 36, .v3 = 24845 }));
}
// From T_Snnn_xax.c:20662:20682
// struct  F_C_Ul  {
//   float v1;
//   char v2;
//   __tsu64 v3;
// };

test "F_C_Ul" {
    var lv: c.F_C_Ul = undefined;
    try testing.expectSize(c.F_C_Ul, 16);
    try testing.expectAlign(c.F_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_C_Ul(.{ .v1 = 7.0, .v2 = 124, .v3 = 11914 }));
}
// From T_Snnn_xax.c:20687:20707
// struct  F_C_Us  {
//   float v1;
//   char v2;
//   unsigned short v3;
// };

test "F_C_Us" {
    var lv: c.F_C_Us = undefined;
    try testing.expectSize(c.F_C_Us, 8);
    try testing.expectAlign(c.F_C_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_C_Us(.{ .v1 = -2.125, .v2 = 81, .v3 = 25724 }));
}
// From T_Snnn_xax.c:20712:20732
// struct  F_C_Vp  {
//   float v1;
//   char v2;
//   void *v3;
// };

test "F_C_Vp" {
    var lv: c.F_C_Vp = undefined;
    try testing.expectSize(c.F_C_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_C_Vp(.{ .v1 = 0.875, .v2 = 52, .v3 = null }));
}
// From T_Snnn_xax.c:20737:20755
// struct  F_D  {
//   float v1;
//   double v2;
// };

test "F_D" {
    var lv: c.F_D = undefined;
    try testing.expectSize(c.F_D, ABISELECT(16, 12));
    try testing.expectAlign(c.F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_F_D(.{ .v1 = 0.875, .v2 = 4.5 }));
}
// From T_Snnn_xax.c:21484:21504
// struct  F_D_C  {
//   float v1;
//   double v2;
//   char v3;
// };

test "F_D_C" {
    var lv: c.F_D_C = undefined;
    try testing.expectSize(c.F_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_C(.{ .v1 = -2.125, .v2 = 0.5, .v3 = 36 }));
}
// From T_Snnn_xax.c:21509:21529
// struct  F_D_D  {
//   float v1;
//   double v2;
//   double v3;
// };

test "F_D_D" {
    var lv: c.F_D_D = undefined;
    try testing.expectSize(c.F_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_D(.{ .v1 = 1.0, .v2 = -0.25, .v3 = -2.125 }));
}
// From T_Snnn_xax.c:21534:21554
// struct  F_D_F  {
//   float v1;
//   double v2;
//   float v3;
// };

test "F_D_F" {
    var lv: c.F_D_F = undefined;
    try testing.expectSize(c.F_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_F(.{ .v1 = 0.5, .v2 = -0.25, .v3 = -0.25 }));
}
// From T_Snnn_xax.c:21559:21579
// struct  F_D_I  {
//   float v1;
//   double v2;
//   int v3;
// };

test "F_D_I" {
    var lv: c.F_D_I = undefined;
    try testing.expectSize(c.F_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_I(.{ .v1 = 0.5, .v2 = 4.5, .v3 = 2184 }));
}
// From T_Snnn_xax.c:21584:21604
// struct  F_D_Ip  {
//   float v1;
//   double v2;
//   int *v3;
// };

test "F_D_Ip" {
    var lv: c.F_D_Ip = undefined;
    try testing.expectSize(c.F_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_Ip(.{ .v1 = 7.0, .v2 = 7.0, .v3 = null }));
}
// From T_Snnn_xax.c:21609:21629
// struct  F_D_L  {
//   float v1;
//   double v2;
//   __tsi64 v3;
// };

test "F_D_L" {
    var lv: c.F_D_L = undefined;
    try testing.expectSize(c.F_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_L(.{ .v1 = -0.25, .v2 = 0.875, .v3 = 13946 }));
}
// From T_Snnn_xax.c:21634:21654
// struct  F_D_S  {
//   float v1;
//   double v2;
//   short v3;
// };

test "F_D_S" {
    var lv: c.F_D_S = undefined;
    try testing.expectSize(c.F_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_S(.{ .v1 = 0.5, .v2 = 0.875, .v3 = 10845 }));
}
// From T_Snnn_xax.c:21659:21679
// struct  F_D_Uc  {
//   float v1;
//   double v2;
//   unsigned char v3;
// };

test "F_D_Uc" {
    var lv: c.F_D_Uc = undefined;
    try testing.expectSize(c.F_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_Uc(.{ .v1 = 0.5, .v2 = 7.0, .v3 = 85 }));
}
// From T_Snnn_xax.c:21684:21704
// struct  F_D_Ui  {
//   float v1;
//   double v2;
//   unsigned int v3;
// };

test "F_D_Ui" {
    var lv: c.F_D_Ui = undefined;
    try testing.expectSize(c.F_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_Ui(.{ .v1 = 7.0, .v2 = 0.875, .v3 = 19194 }));
}
// From T_Snnn_xax.c:21709:21729
// struct  F_D_Ul  {
//   float v1;
//   double v2;
//   __tsu64 v3;
// };

test "F_D_Ul" {
    var lv: c.F_D_Ul = undefined;
    try testing.expectSize(c.F_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_Ul(.{ .v1 = 4.5, .v2 = 0.875, .v3 = 20762 }));
}
// From T_Snnn_xax.c:21734:21754
// struct  F_D_Us  {
//   float v1;
//   double v2;
//   unsigned short v3;
// };

test "F_D_Us" {
    var lv: c.F_D_Us = undefined;
    try testing.expectSize(c.F_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_Us(.{ .v1 = 4.5, .v2 = -2.125, .v3 = 447 }));
}
// From T_Snnn_xax.c:21759:21779
// struct  F_D_Vp  {
//   float v1;
//   double v2;
//   void *v3;
// };

test "F_D_Vp" {
    var lv: c.F_D_Vp = undefined;
    try testing.expectSize(c.F_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_D_Vp(.{ .v1 = 1.0, .v2 = 7.0, .v3 = null }));
}
// From T_Snnn_xax.c:21784:21802
// struct  F_F  {
//   float v1;
//   float v2;
// };

test "F_F" {
    var lv: c.F_F = undefined;
    try testing.expectSize(c.F_F, 8);
    try testing.expectAlign(c.F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_F_F(.{ .v1 = 1.0, .v2 = 4.5 }));
}
// From T_Snnn_xax.c:22531:22551
// struct  F_F_C  {
//   float v1;
//   float v2;
//   char v3;
// };

test "F_F_C" {
    var lv: c.F_F_C = undefined;
    try testing.expectSize(c.F_F_C, 12);
    try testing.expectAlign(c.F_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_C(.{ .v1 = 4.5, .v2 = -2.125, .v3 = 24 }));
}
// From T_Snnn_xax.c:22556:22576
// struct  F_F_D  {
//   float v1;
//   float v2;
//   double v3;
// };

test "F_F_D" {
    var lv: c.F_F_D = undefined;
    try testing.expectSize(c.F_F_D, 16);
    try testing.expectAlign(c.F_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_D(.{ .v1 = 1.0, .v2 = 1.0, .v3 = -2.125 }));
}
// From T_Snnn_xax.c:22581:22601
// struct  F_F_F  {
//   float v1;
//   float v2;
//   float v3;
// };

test "F_F_F" {
    var lv: c.F_F_F = undefined;
    try testing.expectSize(c.F_F_F, 12);
    try testing.expectAlign(c.F_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_F(.{ .v1 = 1.0, .v2 = 4.5, .v3 = -2.125 }));
}
// From T_Snnn_xax.c:22606:22626
// struct  F_F_I  {
//   float v1;
//   float v2;
//   int v3;
// };

test "F_F_I" {
    var lv: c.F_F_I = undefined;
    try testing.expectSize(c.F_F_I, 12);
    try testing.expectAlign(c.F_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_I(.{ .v1 = -2.125, .v2 = 0.875, .v3 = 30673 }));
}
// From T_Snnn_xax.c:22631:22651
// struct  F_F_Ip  {
//   float v1;
//   float v2;
//   int *v3;
// };

test "F_F_Ip" {
    var lv: c.F_F_Ip = undefined;
    try testing.expectSize(c.F_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_Ip(.{ .v1 = -2.125, .v2 = 7.0, .v3 = null }));
}
// From T_Snnn_xax.c:22656:22676
// struct  F_F_L  {
//   float v1;
//   float v2;
//   __tsi64 v3;
// };

test "F_F_L" {
    var lv: c.F_F_L = undefined;
    try testing.expectSize(c.F_F_L, 16);
    try testing.expectAlign(c.F_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_L(.{ .v1 = 0.875, .v2 = 0.875, .v3 = 12916 }));
}
// From T_Snnn_xax.c:22681:22701
// struct  F_F_S  {
//   float v1;
//   float v2;
//   short v3;
// };

test "F_F_S" {
    var lv: c.F_F_S = undefined;
    try testing.expectSize(c.F_F_S, 12);
    try testing.expectAlign(c.F_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_S(.{ .v1 = 0.5, .v2 = -2.125, .v3 = 24001 }));
}
// From T_Snnn_xax.c:22706:22726
// struct  F_F_Uc  {
//   float v1;
//   float v2;
//   unsigned char v3;
// };

test "F_F_Uc" {
    var lv: c.F_F_Uc = undefined;
    try testing.expectSize(c.F_F_Uc, 12);
    try testing.expectAlign(c.F_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_Uc(.{ .v1 = 0.5, .v2 = -0.25, .v3 = 36 }));
}
// From T_Snnn_xax.c:22731:22751
// struct  F_F_Ui  {
//   float v1;
//   float v2;
//   unsigned int v3;
// };

test "F_F_Ui" {
    var lv: c.F_F_Ui = undefined;
    try testing.expectSize(c.F_F_Ui, 12);
    try testing.expectAlign(c.F_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_Ui(.{ .v1 = 1.0, .v2 = 7.0, .v3 = 18540 }));
}
// From T_Snnn_xax.c:22756:22776
// struct  F_F_Ul  {
//   float v1;
//   float v2;
//   __tsu64 v3;
// };

test "F_F_Ul" {
    var lv: c.F_F_Ul = undefined;
    try testing.expectSize(c.F_F_Ul, 16);
    try testing.expectAlign(c.F_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_Ul(.{ .v1 = -0.25, .v2 = 0.875, .v3 = 3966 }));
}
// From T_Snnn_xax.c:22781:22801
// struct  F_F_Us  {
//   float v1;
//   float v2;
//   unsigned short v3;
// };

test "F_F_Us" {
    var lv: c.F_F_Us = undefined;
    try testing.expectSize(c.F_F_Us, 12);
    try testing.expectAlign(c.F_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_Us(.{ .v1 = -0.25, .v2 = 1.0, .v3 = 27558 }));
}
// From T_Snnn_xax.c:22806:22826
// struct  F_F_Vp  {
//   float v1;
//   float v2;
//   void *v3;
// };

test "F_F_Vp" {
    var lv: c.F_F_Vp = undefined;
    try testing.expectSize(c.F_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_F_Vp(.{ .v1 = 0.875, .v2 = 1.0, .v3 = null }));
}
// From T_Snnn_xax.c:22831:22849
// struct  F_I  {
//   float v1;
//   int v2;
// };

test "F_I" {
    var lv: c.F_I = undefined;
    try testing.expectSize(c.F_I, 8);
    try testing.expectAlign(c.F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_F_I(.{ .v1 = -0.25, .v2 = 2673 }));
}
// From T_Snnn_xax.c:23578:23598
// struct  F_I_C  {
//   float v1;
//   int v2;
//   char v3;
// };

test "F_I_C" {
    var lv: c.F_I_C = undefined;
    try testing.expectSize(c.F_I_C, 12);
    try testing.expectAlign(c.F_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_C(.{ .v1 = 7.0, .v2 = 9062, .v3 = 42 }));
}
// From T_Snnn_xax.c:23603:23623
// struct  F_I_D  {
//   float v1;
//   int v2;
//   double v3;
// };

test "F_I_D" {
    var lv: c.F_I_D = undefined;
    try testing.expectSize(c.F_I_D, 16);
    try testing.expectAlign(c.F_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_D(.{ .v1 = -2.125, .v2 = 31457, .v3 = -0.25 }));
}
// From T_Snnn_xax.c:23628:23648
// struct  F_I_F  {
//   float v1;
//   int v2;
//   float v3;
// };

test "F_I_F" {
    var lv: c.F_I_F = undefined;
    try testing.expectSize(c.F_I_F, 12);
    try testing.expectAlign(c.F_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_F(.{ .v1 = 4.5, .v2 = 29585, .v3 = -2.125 }));
}
// From T_Snnn_xax.c:23653:23673
// struct  F_I_I  {
//   float v1;
//   int v2;
//   int v3;
// };

test "F_I_I" {
    var lv: c.F_I_I = undefined;
    try testing.expectSize(c.F_I_I, 12);
    try testing.expectAlign(c.F_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_I(.{ .v1 = 7.0, .v2 = 32140, .v3 = 26057 }));
}
// From T_Snnn_xax.c:23678:23698
// struct  F_I_Ip  {
//   float v1;
//   int v2;
//   int *v3;
// };

test "F_I_Ip" {
    var lv: c.F_I_Ip = undefined;
    try testing.expectSize(c.F_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_Ip(.{ .v1 = 0.875, .v2 = 15202, .v3 = null }));
}
// From T_Snnn_xax.c:23703:23723
// struct  F_I_L  {
//   float v1;
//   int v2;
//   __tsi64 v3;
// };

test "F_I_L" {
    var lv: c.F_I_L = undefined;
    try testing.expectSize(c.F_I_L, 16);
    try testing.expectAlign(c.F_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_L(.{ .v1 = 0.5, .v2 = 6979, .v3 = 3920 }));
}
// From T_Snnn_xax.c:23728:23748
// struct  F_I_S  {
//   float v1;
//   int v2;
//   short v3;
// };

test "F_I_S" {
    var lv: c.F_I_S = undefined;
    try testing.expectSize(c.F_I_S, 12);
    try testing.expectAlign(c.F_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_S(.{ .v1 = -2.125, .v2 = 4337, .v3 = 955 }));
}
// From T_Snnn_xax.c:23753:23773
// struct  F_I_Uc  {
//   float v1;
//   int v2;
//   unsigned char v3;
// };

test "F_I_Uc" {
    var lv: c.F_I_Uc = undefined;
    try testing.expectSize(c.F_I_Uc, 12);
    try testing.expectAlign(c.F_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_Uc(.{ .v1 = 4.5, .v2 = 24794, .v3 = 1 }));
}
// From T_Snnn_xax.c:23778:23798
// struct  F_I_Ui  {
//   float v1;
//   int v2;
//   unsigned int v3;
// };

test "F_I_Ui" {
    var lv: c.F_I_Ui = undefined;
    try testing.expectSize(c.F_I_Ui, 12);
    try testing.expectAlign(c.F_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_Ui(.{ .v1 = 0.5, .v2 = 12911, .v3 = 9581 }));
}
// From T_Snnn_xax.c:23803:23823
// struct  F_I_Ul  {
//   float v1;
//   int v2;
//   __tsu64 v3;
// };

test "F_I_Ul" {
    var lv: c.F_I_Ul = undefined;
    try testing.expectSize(c.F_I_Ul, 16);
    try testing.expectAlign(c.F_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_Ul(.{ .v1 = -2.125, .v2 = 8607, .v3 = 1051 }));
}
// From T_Snnn_xax.c:23828:23848
// struct  F_I_Us  {
//   float v1;
//   int v2;
//   unsigned short v3;
// };

test "F_I_Us" {
    var lv: c.F_I_Us = undefined;
    try testing.expectSize(c.F_I_Us, 12);
    try testing.expectAlign(c.F_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_Us(.{ .v1 = 0.5, .v2 = 23512, .v3 = 5539 }));
}
// From T_Snnn_xax.c:23853:23873
// struct  F_I_Vp  {
//   float v1;
//   int v2;
//   void *v3;
// };

test "F_I_Vp" {
    var lv: c.F_I_Vp = undefined;
    try testing.expectSize(c.F_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_I_Vp(.{ .v1 = 0.875, .v2 = 1023, .v3 = null }));
}
// From T_Snnn_xax.c:23878:23896
// struct  F_Ip  {
//   float v1;
//   int *v2;
// };

test "F_Ip" {
    var lv: c.F_Ip = undefined;
    try testing.expectSize(c.F_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_F_Ip(.{ .v1 = 4.5, .v2 = null }));
}
// From T_Snnn_xax.c:24625:24645
// struct  F_Ip_C  {
//   float v1;
//   int *v2;
//   char v3;
// };

test "F_Ip_C" {
    var lv: c.F_Ip_C = undefined;
    try testing.expectSize(c.F_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_C(.{ .v1 = -2.125, .v2 = null, .v3 = 88 }));
}
// From T_Snnn_xax.c:24650:24670
// struct  F_Ip_D  {
//   float v1;
//   int *v2;
//   double v3;
// };

test "F_Ip_D" {
    var lv: c.F_Ip_D = undefined;
    try testing.expectSize(c.F_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_D(.{ .v1 = 4.5, .v2 = null, .v3 = 7.0 }));
}
// From T_Snnn_xax.c:24675:24695
// struct  F_Ip_F  {
//   float v1;
//   int *v2;
//   float v3;
// };

test "F_Ip_F" {
    var lv: c.F_Ip_F = undefined;
    try testing.expectSize(c.F_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_F(.{ .v1 = -2.125, .v2 = null, .v3 = 1.0 }));
}
// From T_Snnn_xax.c:24700:24720
// struct  F_Ip_I  {
//   float v1;
//   int *v2;
//   int v3;
// };

test "F_Ip_I" {
    var lv: c.F_Ip_I = undefined;
    try testing.expectSize(c.F_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_I(.{ .v1 = 1.0, .v2 = null, .v3 = 25911 }));
}
// From T_Snnn_xax.c:24725:24745
// struct  F_Ip_Ip  {
//   float v1;
//   int *v2;
//   int *v3;
// };

test "F_Ip_Ip" {
    var lv: c.F_Ip_Ip = undefined;
    try testing.expectSize(c.F_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_Ip(.{ .v1 = -0.25, .v2 = null, .v3 = null }));
}
// From T_Snnn_xax.c:24750:24770
// struct  F_Ip_L  {
//   float v1;
//   int *v2;
//   __tsi64 v3;
// };

test "F_Ip_L" {
    var lv: c.F_Ip_L = undefined;
    try testing.expectSize(c.F_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_L(.{ .v1 = 7.0, .v2 = null, .v3 = 20726 }));
}
// From T_Snnn_xax.c:24775:24795
// struct  F_Ip_S  {
//   float v1;
//   int *v2;
//   short v3;
// };

test "F_Ip_S" {
    var lv: c.F_Ip_S = undefined;
    try testing.expectSize(c.F_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_S(.{ .v1 = 0.5, .v2 = null, .v3 = 17278 }));
}
// From T_Snnn_xax.c:24800:24820
// struct  F_Ip_Uc  {
//   float v1;
//   int *v2;
//   unsigned char v3;
// };

test "F_Ip_Uc" {
    var lv: c.F_Ip_Uc = undefined;
    try testing.expectSize(c.F_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_Uc(.{ .v1 = 7.0, .v2 = null, .v3 = 24 }));
}
// From T_Snnn_xax.c:24825:24845
// struct  F_Ip_Ui  {
//   float v1;
//   int *v2;
//   unsigned int v3;
// };

test "F_Ip_Ui" {
    var lv: c.F_Ip_Ui = undefined;
    try testing.expectSize(c.F_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_Ui(.{ .v1 = 0.5, .v2 = null, .v3 = 28681 }));
}
// From T_Snnn_xax.c:24850:24870
// struct  F_Ip_Ul  {
//   float v1;
//   int *v2;
//   __tsu64 v3;
// };

test "F_Ip_Ul" {
    var lv: c.F_Ip_Ul = undefined;
    try testing.expectSize(c.F_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_Ul(.{ .v1 = 0.875, .v2 = null, .v3 = 20410 }));
}
// From T_Snnn_xax.c:24875:24895
// struct  F_Ip_Us  {
//   float v1;
//   int *v2;
//   unsigned short v3;
// };

test "F_Ip_Us" {
    var lv: c.F_Ip_Us = undefined;
    try testing.expectSize(c.F_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_Us(.{ .v1 = -2.125, .v2 = null, .v3 = 21682 }));
}
// From T_Snnn_xax.c:24900:24920
// struct  F_Ip_Vp  {
//   float v1;
//   int *v2;
//   void *v3;
// };

test "F_Ip_Vp" {
    var lv: c.F_Ip_Vp = undefined;
    try testing.expectSize(c.F_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Ip_Vp(.{ .v1 = 0.875, .v2 = null, .v3 = null }));
}
// From T_Snnn_xax.c:24925:24943
// struct  F_L  {
//   float v1;
//   __tsi64 v2;
// };

test "F_L" {
    var lv: c.F_L = undefined;
    try testing.expectSize(c.F_L, ABISELECT(16, 12));
    try testing.expectAlign(c.F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_F_L(.{ .v1 = -2.125, .v2 = 11017 }));
}
// From T_Snnn_xax.c:25672:25692
// struct  F_L_C  {
//   float v1;
//   __tsi64 v2;
//   char v3;
// };

test "F_L_C" {
    var lv: c.F_L_C = undefined;
    try testing.expectSize(c.F_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_C(.{ .v1 = 0.5, .v2 = 26491, .v3 = 72 }));
}
// From T_Snnn_xax.c:25697:25717
// struct  F_L_D  {
//   float v1;
//   __tsi64 v2;
//   double v3;
// };

test "F_L_D" {
    var lv: c.F_L_D = undefined;
    try testing.expectSize(c.F_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_D(.{ .v1 = 4.5, .v2 = 6010, .v3 = -2.125 }));
}
// From T_Snnn_xax.c:25722:25742
// struct  F_L_F  {
//   float v1;
//   __tsi64 v2;
//   float v3;
// };

test "F_L_F" {
    var lv: c.F_L_F = undefined;
    try testing.expectSize(c.F_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_F(.{ .v1 = 4.5, .v2 = 1339, .v3 = 4.5 }));
}
// From T_Snnn_xax.c:25747:25767
// struct  F_L_I  {
//   float v1;
//   __tsi64 v2;
//   int v3;
// };

test "F_L_I" {
    var lv: c.F_L_I = undefined;
    try testing.expectSize(c.F_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_I(.{ .v1 = -0.25, .v2 = 5595, .v3 = 27088 }));
}
// From T_Snnn_xax.c:25772:25792
// struct  F_L_Ip  {
//   float v1;
//   __tsi64 v2;
//   int *v3;
// };

test "F_L_Ip" {
    var lv: c.F_L_Ip = undefined;
    try testing.expectSize(c.F_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_Ip(.{ .v1 = 0.875, .v2 = 30167, .v3 = null }));
}
// From T_Snnn_xax.c:25797:25817
// struct  F_L_L  {
//   float v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "F_L_L" {
    var lv: c.F_L_L = undefined;
    try testing.expectSize(c.F_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_L(.{ .v1 = 0.875, .v2 = 31661, .v3 = 592 }));
}
// From T_Snnn_xax.c:25822:25842
// struct  F_L_S  {
//   float v1;
//   __tsi64 v2;
//   short v3;
// };

test "F_L_S" {
    var lv: c.F_L_S = undefined;
    try testing.expectSize(c.F_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_S(.{ .v1 = 0.875, .v2 = 29218, .v3 = 27604 }));
}
// From T_Snnn_xax.c:25847:25867
// struct  F_L_Uc  {
//   float v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "F_L_Uc" {
    var lv: c.F_L_Uc = undefined;
    try testing.expectSize(c.F_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_Uc(.{ .v1 = 4.5, .v2 = 31405, .v3 = 5 }));
}
// From T_Snnn_xax.c:25872:25892
// struct  F_L_Ui  {
//   float v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "F_L_Ui" {
    var lv: c.F_L_Ui = undefined;
    try testing.expectSize(c.F_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_Ui(.{ .v1 = 0.5, .v2 = 9274, .v3 = 21311 }));
}
// From T_Snnn_xax.c:25897:25917
// struct  F_L_Ul  {
//   float v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "F_L_Ul" {
    var lv: c.F_L_Ul = undefined;
    try testing.expectSize(c.F_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_Ul(.{ .v1 = 4.5, .v2 = 9453, .v3 = 27799 }));
}
// From T_Snnn_xax.c:25922:25942
// struct  F_L_Us  {
//   float v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "F_L_Us" {
    var lv: c.F_L_Us = undefined;
    try testing.expectSize(c.F_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_Us(.{ .v1 = 0.5, .v2 = 6123, .v3 = 22927 }));
}
// From T_Snnn_xax.c:25947:25967
// struct  F_L_Vp  {
//   float v1;
//   __tsi64 v2;
//   void *v3;
// };

test "F_L_Vp" {
    var lv: c.F_L_Vp = undefined;
    try testing.expectSize(c.F_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_L_Vp(.{ .v1 = -0.25, .v2 = 29255, .v3 = null }));
}
// From T_Snnn_xax.c:25972:25990
// struct  F_S  {
//   float v1;
//   short v2;
// };

test "F_S" {
    var lv: c.F_S = undefined;
    try testing.expectSize(c.F_S, 8);
    try testing.expectAlign(c.F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_F_S(.{ .v1 = 7.0, .v2 = 28164 }));
}
// From T_Snnn_xax.c:26719:26739
// struct  F_S_C  {
//   float v1;
//   short v2;
//   char v3;
// };

test "F_S_C" {
    var lv: c.F_S_C = undefined;
    try testing.expectSize(c.F_S_C, 8);
    try testing.expectAlign(c.F_S_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_S_C(.{ .v1 = 7.0, .v2 = 29744, .v3 = 119 }));
}
// From T_Snnn_xax.c:26744:26764
// struct  F_S_D  {
//   float v1;
//   short v2;
//   double v3;
// };

test "F_S_D" {
    var lv: c.F_S_D = undefined;
    try testing.expectSize(c.F_S_D, 16);
    try testing.expectAlign(c.F_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_S_D(.{ .v1 = -2.125, .v2 = 18960, .v3 = 1.0 }));
}
// From T_Snnn_xax.c:26769:26789
// struct  F_S_F  {
//   float v1;
//   short v2;
//   float v3;
// };

test "F_S_F" {
    var lv: c.F_S_F = undefined;
    try testing.expectSize(c.F_S_F, 12);
    try testing.expectAlign(c.F_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_S_F(.{ .v1 = 7.0, .v2 = 14516, .v3 = -2.125 }));
}
// From T_Snnn_xax.c:26794:26814
// struct  F_S_I  {
//   float v1;
//   short v2;
//   int v3;
// };

test "F_S_I" {
    var lv: c.F_S_I = undefined;
    try testing.expectSize(c.F_S_I, 12);
    try testing.expectAlign(c.F_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_S_I(.{ .v1 = 7.0, .v2 = 24764, .v3 = 23226 }));
}
// From T_Snnn_xax.c:26819:26839
// struct  F_S_Ip  {
//   float v1;
//   short v2;
//   int *v3;
// };

test "F_S_Ip" {
    var lv: c.F_S_Ip = undefined;
    try testing.expectSize(c.F_S_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_S_Ip(.{ .v1 = 1.0, .v2 = 5176, .v3 = null }));
}
// From T_Snnn_xax.c:26844:26864
// struct  F_S_L  {
//   float v1;
//   short v2;
//   __tsi64 v3;
// };

test "F_S_L" {
    var lv: c.F_S_L = undefined;
    try testing.expectSize(c.F_S_L, 16);
    try testing.expectAlign(c.F_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_S_L(.{ .v1 = -2.125, .v2 = 11860, .v3 = 24497 }));
}
// From T_Snnn_xax.c:26869:26889
// struct  F_S_S  {
//   float v1;
//   short v2;
//   short v3;
// };

test "F_S_S" {
    var lv: c.F_S_S = undefined;
    try testing.expectSize(c.F_S_S, 8);
    try testing.expectAlign(c.F_S_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_S_S(.{ .v1 = 1.0, .v2 = 7971, .v3 = 12118 }));
}
// From T_Snnn_xax.c:26894:26914
// struct  F_S_Uc  {
//   float v1;
//   short v2;
//   unsigned char v3;
// };

test "F_S_Uc" {
    var lv: c.F_S_Uc = undefined;
    try testing.expectSize(c.F_S_Uc, 8);
    try testing.expectAlign(c.F_S_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_S_Uc(.{ .v1 = 7.0, .v2 = 30467, .v3 = 22 }));
}
// From T_Snnn_xax.c:26919:26939
// struct  F_S_Ui  {
//   float v1;
//   short v2;
//   unsigned int v3;
// };

test "F_S_Ui" {
    var lv: c.F_S_Ui = undefined;
    try testing.expectSize(c.F_S_Ui, 12);
    try testing.expectAlign(c.F_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_S_Ui(.{ .v1 = 0.875, .v2 = 4283, .v3 = 12381 }));
}
// From T_Snnn_xax.c:26944:26964
// struct  F_S_Ul  {
//   float v1;
//   short v2;
//   __tsu64 v3;
// };

test "F_S_Ul" {
    var lv: c.F_S_Ul = undefined;
    try testing.expectSize(c.F_S_Ul, 16);
    try testing.expectAlign(c.F_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_S_Ul(.{ .v1 = -0.25, .v2 = 12799, .v3 = 20298 }));
}
// From T_Snnn_xax.c:26969:26989
// struct  F_S_Us  {
//   float v1;
//   short v2;
//   unsigned short v3;
// };

test "F_S_Us" {
    var lv: c.F_S_Us = undefined;
    try testing.expectSize(c.F_S_Us, 8);
    try testing.expectAlign(c.F_S_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_S_Us(.{ .v1 = -2.125, .v2 = 29977, .v3 = 6734 }));
}
// From T_Snnn_xax.c:26994:27014
// struct  F_S_Vp  {
//   float v1;
//   short v2;
//   void *v3;
// };

test "F_S_Vp" {
    var lv: c.F_S_Vp = undefined;
    try testing.expectSize(c.F_S_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_S_Vp(.{ .v1 = 4.5, .v2 = 23368, .v3 = null }));
}
// From T_Snnn_xax.c:27019:27037
// struct  F_Uc  {
//   float v1;
//   unsigned char v2;
// };

test "F_Uc" {
    var lv: c.F_Uc = undefined;
    try testing.expectSize(c.F_Uc, 8);
    try testing.expectAlign(c.F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_F_Uc(.{ .v1 = -0.25, .v2 = 118 }));
}
// From T_Snnn_xax.c:27766:27786
// struct  F_Uc_C  {
//   float v1;
//   unsigned char v2;
//   char v3;
// };

test "F_Uc_C" {
    var lv: c.F_Uc_C = undefined;
    try testing.expectSize(c.F_Uc_C, 8);
    try testing.expectAlign(c.F_Uc_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
    try testing.expectOk(c.recv_F_Uc_C(.{ .v1 = -2.125, .v2 = 96, .v3 = 48 }));
}
// From T_Snnn_xax.c:27791:27811
// struct  F_Uc_D  {
//   float v1;
//   unsigned char v2;
//   double v3;
// };

test "F_Uc_D" {
    var lv: c.F_Uc_D = undefined;
    try testing.expectSize(c.F_Uc_D, 16);
    try testing.expectAlign(c.F_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Uc_D(.{ .v1 = 7.0, .v2 = 109, .v3 = 0.5 }));
}
// From T_Snnn_xax.c:27816:27836
// struct  F_Uc_F  {
//   float v1;
//   unsigned char v2;
//   float v3;
// };

test "F_Uc_F" {
    var lv: c.F_Uc_F = undefined;
    try testing.expectSize(c.F_Uc_F, 12);
    try testing.expectAlign(c.F_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Uc_F(.{ .v1 = -2.125, .v2 = 84, .v3 = 4.5 }));
}
// From T_Snnn_xax.c:27841:27861
// struct  F_Uc_I  {
//   float v1;
//   unsigned char v2;
//   int v3;
// };

test "F_Uc_I" {
    var lv: c.F_Uc_I = undefined;
    try testing.expectSize(c.F_Uc_I, 12);
    try testing.expectAlign(c.F_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Uc_I(.{ .v1 = 7.0, .v2 = 127, .v3 = 20842 }));
}
// From T_Snnn_xax.c:27866:27886
// struct  F_Uc_Ip  {
//   float v1;
//   unsigned char v2;
//   int *v3;
// };

test "F_Uc_Ip" {
    var lv: c.F_Uc_Ip = undefined;
    try testing.expectSize(c.F_Uc_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Uc_Ip(.{ .v1 = 0.875, .v2 = 40, .v3 = null }));
}
// From T_Snnn_xax.c:27891:27911
// struct  F_Uc_L  {
//   float v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "F_Uc_L" {
    var lv: c.F_Uc_L = undefined;
    try testing.expectSize(c.F_Uc_L, 16);
    try testing.expectAlign(c.F_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Uc_L(.{ .v1 = 7.0, .v2 = 64, .v3 = 26076 }));
}
// From T_Snnn_xax.c:27916:27936
// struct  F_Uc_S  {
//   float v1;
//   unsigned char v2;
//   short v3;
// };

test "F_Uc_S" {
    var lv: c.F_Uc_S = undefined;
    try testing.expectSize(c.F_Uc_S, 8);
    try testing.expectAlign(c.F_Uc_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_Uc_S(.{ .v1 = 4.5, .v2 = 115, .v3 = 32111 }));
}
// From T_Snnn_xax.c:27941:27961
// struct  F_Uc_Uc  {
//   float v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "F_Uc_Uc" {
    var lv: c.F_Uc_Uc = undefined;
    try testing.expectSize(c.F_Uc_Uc, 8);
    try testing.expectAlign(c.F_Uc_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
    try testing.expectOk(c.recv_F_Uc_Uc(.{ .v1 = -2.125, .v2 = 2, .v3 = 27 }));
}
// From T_Snnn_xax.c:27966:27986
// struct  F_Uc_Ui  {
//   float v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "F_Uc_Ui" {
    var lv: c.F_Uc_Ui = undefined;
    try testing.expectSize(c.F_Uc_Ui, 12);
    try testing.expectAlign(c.F_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Uc_Ui(.{ .v1 = 1.0, .v2 = 12, .v3 = 25869 }));
}
// From T_Snnn_xax.c:27991:28011
// struct  F_Uc_Ul  {
//   float v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "F_Uc_Ul" {
    var lv: c.F_Uc_Ul = undefined;
    try testing.expectSize(c.F_Uc_Ul, 16);
    try testing.expectAlign(c.F_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Uc_Ul(.{ .v1 = 7.0, .v2 = 92, .v3 = 22425 }));
}
// From T_Snnn_xax.c:28016:28036
// struct  F_Uc_Us  {
//   float v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "F_Uc_Us" {
    var lv: c.F_Uc_Us = undefined;
    try testing.expectSize(c.F_Uc_Us, 8);
    try testing.expectAlign(c.F_Uc_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_Uc_Us(.{ .v1 = 0.5, .v2 = 45, .v3 = 2721 }));
}
// From T_Snnn_xax.c:28041:28061
// struct  F_Uc_Vp  {
//   float v1;
//   unsigned char v2;
//   void *v3;
// };

test "F_Uc_Vp" {
    var lv: c.F_Uc_Vp = undefined;
    try testing.expectSize(c.F_Uc_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Uc_Vp(.{ .v1 = -0.25, .v2 = 68, .v3 = null }));
}
// From T_Snnn_xax.c:28066:28084
// struct  F_Ui  {
//   float v1;
//   unsigned int v2;
// };

test "F_Ui" {
    var lv: c.F_Ui = undefined;
    try testing.expectSize(c.F_Ui, 8);
    try testing.expectAlign(c.F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_F_Ui(.{ .v1 = 4.5, .v2 = 27782 }));
}
// From T_Snnn_xax.c:28813:28833
// struct  F_Ui_C  {
//   float v1;
//   unsigned int v2;
//   char v3;
// };

test "F_Ui_C" {
    var lv: c.F_Ui_C = undefined;
    try testing.expectSize(c.F_Ui_C, 12);
    try testing.expectAlign(c.F_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_C(.{ .v1 = 4.5, .v2 = 26810, .v3 = 15 }));
}
// From T_Snnn_xax.c:28838:28858
// struct  F_Ui_D  {
//   float v1;
//   unsigned int v2;
//   double v3;
// };

test "F_Ui_D" {
    var lv: c.F_Ui_D = undefined;
    try testing.expectSize(c.F_Ui_D, 16);
    try testing.expectAlign(c.F_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_D(.{ .v1 = 7.0, .v2 = 18724, .v3 = 1.0 }));
}
// From T_Snnn_xax.c:28863:28883
// struct  F_Ui_F  {
//   float v1;
//   unsigned int v2;
//   float v3;
// };

test "F_Ui_F" {
    var lv: c.F_Ui_F = undefined;
    try testing.expectSize(c.F_Ui_F, 12);
    try testing.expectAlign(c.F_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_F(.{ .v1 = -0.25, .v2 = 5603, .v3 = 0.5 }));
}
// From T_Snnn_xax.c:28888:28908
// struct  F_Ui_I  {
//   float v1;
//   unsigned int v2;
//   int v3;
// };

test "F_Ui_I" {
    var lv: c.F_Ui_I = undefined;
    try testing.expectSize(c.F_Ui_I, 12);
    try testing.expectAlign(c.F_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_I(.{ .v1 = -2.125, .v2 = 7194, .v3 = 6964 }));
}
// From T_Snnn_xax.c:28913:28933
// struct  F_Ui_Ip  {
//   float v1;
//   unsigned int v2;
//   int *v3;
// };

test "F_Ui_Ip" {
    var lv: c.F_Ui_Ip = undefined;
    try testing.expectSize(c.F_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_Ip(.{ .v1 = -2.125, .v2 = 25159, .v3 = null }));
}
// From T_Snnn_xax.c:28938:28958
// struct  F_Ui_L  {
//   float v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "F_Ui_L" {
    var lv: c.F_Ui_L = undefined;
    try testing.expectSize(c.F_Ui_L, 16);
    try testing.expectAlign(c.F_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_L(.{ .v1 = 0.5, .v2 = 6394, .v3 = 24104 }));
}
// From T_Snnn_xax.c:28963:28983
// struct  F_Ui_S  {
//   float v1;
//   unsigned int v2;
//   short v3;
// };

test "F_Ui_S" {
    var lv: c.F_Ui_S = undefined;
    try testing.expectSize(c.F_Ui_S, 12);
    try testing.expectAlign(c.F_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_S(.{ .v1 = 7.0, .v2 = 16310, .v3 = 2152 }));
}
// From T_Snnn_xax.c:28988:29008
// struct  F_Ui_Uc  {
//   float v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "F_Ui_Uc" {
    var lv: c.F_Ui_Uc = undefined;
    try testing.expectSize(c.F_Ui_Uc, 12);
    try testing.expectAlign(c.F_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_Uc(.{ .v1 = 0.5, .v2 = 31933, .v3 = 84 }));
}
// From T_Snnn_xax.c:29013:29033
// struct  F_Ui_Ui  {
//   float v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "F_Ui_Ui" {
    var lv: c.F_Ui_Ui = undefined;
    try testing.expectSize(c.F_Ui_Ui, 12);
    try testing.expectAlign(c.F_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_Ui(.{ .v1 = 1.0, .v2 = 21258, .v3 = 27470 }));
}
// From T_Snnn_xax.c:29038:29058
// struct  F_Ui_Ul  {
//   float v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "F_Ui_Ul" {
    var lv: c.F_Ui_Ul = undefined;
    try testing.expectSize(c.F_Ui_Ul, 16);
    try testing.expectAlign(c.F_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_Ul(.{ .v1 = -2.125, .v2 = 2270, .v3 = 24341 }));
}
// From T_Snnn_xax.c:29063:29083
// struct  F_Ui_Us  {
//   float v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "F_Ui_Us" {
    var lv: c.F_Ui_Us = undefined;
    try testing.expectSize(c.F_Ui_Us, 12);
    try testing.expectAlign(c.F_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_Us(.{ .v1 = -2.125, .v2 = 26884, .v3 = 20081 }));
}
// From T_Snnn_xax.c:29088:29108
// struct  F_Ui_Vp  {
//   float v1;
//   unsigned int v2;
//   void *v3;
// };

test "F_Ui_Vp" {
    var lv: c.F_Ui_Vp = undefined;
    try testing.expectSize(c.F_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Ui_Vp(.{ .v1 = 0.875, .v2 = 29111, .v3 = null }));
}
// From T_Snnn_xax.c:29113:29131
// struct  F_Ul  {
//   float v1;
//   __tsu64 v2;
// };

test "F_Ul" {
    var lv: c.F_Ul = undefined;
    try testing.expectSize(c.F_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_F_Ul(.{ .v1 = 7.0, .v2 = 502 }));
}
// From T_Snnn_xax.c:29860:29880
// struct  F_Ul_C  {
//   float v1;
//   __tsu64 v2;
//   char v3;
// };

test "F_Ul_C" {
    var lv: c.F_Ul_C = undefined;
    try testing.expectSize(c.F_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_C(.{ .v1 = 1.0, .v2 = 16763, .v3 = 7 }));
}
// From T_Snnn_xax.c:29885:29905
// struct  F_Ul_D  {
//   float v1;
//   __tsu64 v2;
//   double v3;
// };

test "F_Ul_D" {
    var lv: c.F_Ul_D = undefined;
    try testing.expectSize(c.F_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_D(.{ .v1 = 0.875, .v2 = 5788, .v3 = 7.0 }));
}
// From T_Snnn_xax.c:29910:29930
// struct  F_Ul_F  {
//   float v1;
//   __tsu64 v2;
//   float v3;
// };

test "F_Ul_F" {
    var lv: c.F_Ul_F = undefined;
    try testing.expectSize(c.F_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_F(.{ .v1 = -0.25, .v2 = 13617, .v3 = 0.875 }));
}
// From T_Snnn_xax.c:29935:29955
// struct  F_Ul_I  {
//   float v1;
//   __tsu64 v2;
//   int v3;
// };

test "F_Ul_I" {
    var lv: c.F_Ul_I = undefined;
    try testing.expectSize(c.F_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_I(.{ .v1 = 7.0, .v2 = 4234, .v3 = 27107 }));
}
// From T_Snnn_xax.c:29960:29980
// struct  F_Ul_Ip  {
//   float v1;
//   __tsu64 v2;
//   int *v3;
// };

test "F_Ul_Ip" {
    var lv: c.F_Ul_Ip = undefined;
    try testing.expectSize(c.F_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_Ip(.{ .v1 = -2.125, .v2 = 18940, .v3 = null }));
}
// From T_Snnn_xax.c:29985:30005
// struct  F_Ul_L  {
//   float v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "F_Ul_L" {
    var lv: c.F_Ul_L = undefined;
    try testing.expectSize(c.F_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_L(.{ .v1 = 7.0, .v2 = 2524, .v3 = 1186 }));
}
// From T_Snnn_xax.c:30010:30030
// struct  F_Ul_S  {
//   float v1;
//   __tsu64 v2;
//   short v3;
// };

test "F_Ul_S" {
    var lv: c.F_Ul_S = undefined;
    try testing.expectSize(c.F_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_S(.{ .v1 = 0.5, .v2 = 21773, .v3 = 17719 }));
}
// From T_Snnn_xax.c:30035:30055
// struct  F_Ul_Uc  {
//   float v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "F_Ul_Uc" {
    var lv: c.F_Ul_Uc = undefined;
    try testing.expectSize(c.F_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_Uc(.{ .v1 = 7.0, .v2 = 25283, .v3 = 93 }));
}
// From T_Snnn_xax.c:30060:30080
// struct  F_Ul_Ui  {
//   float v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "F_Ul_Ui" {
    var lv: c.F_Ul_Ui = undefined;
    try testing.expectSize(c.F_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_Ui(.{ .v1 = 7.0, .v2 = 24342, .v3 = 20594 }));
}
// From T_Snnn_xax.c:30085:30105
// struct  F_Ul_Ul  {
//   float v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "F_Ul_Ul" {
    var lv: c.F_Ul_Ul = undefined;
    try testing.expectSize(c.F_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_Ul(.{ .v1 = -2.125, .v2 = 31964, .v3 = 4612 }));
}
// From T_Snnn_xax.c:30110:30130
// struct  F_Ul_Us  {
//   float v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "F_Ul_Us" {
    var lv: c.F_Ul_Us = undefined;
    try testing.expectSize(c.F_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_Us(.{ .v1 = 1.0, .v2 = 4378, .v3 = 28649 }));
}
// From T_Snnn_xax.c:30135:30155
// struct  F_Ul_Vp  {
//   float v1;
//   __tsu64 v2;
//   void *v3;
// };

test "F_Ul_Vp" {
    var lv: c.F_Ul_Vp = undefined;
    try testing.expectSize(c.F_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_F_Ul_Vp(.{ .v1 = 0.5, .v2 = 16097, .v3 = null }));
}
// From T_Snnn_xax.c:30160:30178
// struct  F_Us  {
//   float v1;
//   unsigned short v2;
// };

test "F_Us" {
    var lv: c.F_Us = undefined;
    try testing.expectSize(c.F_Us, 8);
    try testing.expectAlign(c.F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_F_Us(.{ .v1 = 4.5, .v2 = 27623 }));
}
// From T_Snnn_xax.c:30907:30927
// struct  F_Us_C  {
//   float v1;
//   unsigned short v2;
//   char v3;
// };

test "F_Us_C" {
    var lv: c.F_Us_C = undefined;
    try testing.expectSize(c.F_Us_C, 8);
    try testing.expectAlign(c.F_Us_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_Us_C(.{ .v1 = 0.5, .v2 = 9824, .v3 = 22 }));
}
// From T_Snnn_xax.c:30932:30952
// struct  F_Us_D  {
//   float v1;
//   unsigned short v2;
//   double v3;
// };

test "F_Us_D" {
    var lv: c.F_Us_D = undefined;
    try testing.expectSize(c.F_Us_D, 16);
    try testing.expectAlign(c.F_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Us_D(.{ .v1 = 7.0, .v2 = 17509, .v3 = 0.5 }));
}
// From T_Snnn_xax.c:30957:30977
// struct  F_Us_F  {
//   float v1;
//   unsigned short v2;
//   float v3;
// };

test "F_Us_F" {
    var lv: c.F_Us_F = undefined;
    try testing.expectSize(c.F_Us_F, 12);
    try testing.expectAlign(c.F_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Us_F(.{ .v1 = 4.5, .v2 = 32668, .v3 = 4.5 }));
}
// From T_Snnn_xax.c:30982:31002
// struct  F_Us_I  {
//   float v1;
//   unsigned short v2;
//   int v3;
// };

test "F_Us_I" {
    var lv: c.F_Us_I = undefined;
    try testing.expectSize(c.F_Us_I, 12);
    try testing.expectAlign(c.F_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Us_I(.{ .v1 = 0.5, .v2 = 25895, .v3 = 32572 }));
}
// From T_Snnn_xax.c:31007:31027
// struct  F_Us_Ip  {
//   float v1;
//   unsigned short v2;
//   int *v3;
// };

test "F_Us_Ip" {
    var lv: c.F_Us_Ip = undefined;
    try testing.expectSize(c.F_Us_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Us_Ip(.{ .v1 = 0.875, .v2 = 31390, .v3 = null }));
}
// From T_Snnn_xax.c:31032:31052
// struct  F_Us_L  {
//   float v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "F_Us_L" {
    var lv: c.F_Us_L = undefined;
    try testing.expectSize(c.F_Us_L, 16);
    try testing.expectAlign(c.F_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Us_L(.{ .v1 = 7.0, .v2 = 13124, .v3 = 14055 }));
}
// From T_Snnn_xax.c:31057:31077
// struct  F_Us_S  {
//   float v1;
//   unsigned short v2;
//   short v3;
// };

test "F_Us_S" {
    var lv: c.F_Us_S = undefined;
    try testing.expectSize(c.F_Us_S, 8);
    try testing.expectAlign(c.F_Us_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_Us_S(.{ .v1 = 7.0, .v2 = 26736, .v3 = 24374 }));
}
// From T_Snnn_xax.c:31082:31102
// struct  F_Us_Uc  {
//   float v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "F_Us_Uc" {
    var lv: c.F_Us_Uc = undefined;
    try testing.expectSize(c.F_Us_Uc, 8);
    try testing.expectAlign(c.F_Us_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_Us_Uc(.{ .v1 = 0.875, .v2 = 1879, .v3 = 8 }));
}
// From T_Snnn_xax.c:31107:31127
// struct  F_Us_Ui  {
//   float v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "F_Us_Ui" {
    var lv: c.F_Us_Ui = undefined;
    try testing.expectSize(c.F_Us_Ui, 12);
    try testing.expectAlign(c.F_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Us_Ui(.{ .v1 = 0.875, .v2 = 15041, .v3 = 1344 }));
}
// From T_Snnn_xax.c:31132:31152
// struct  F_Us_Ul  {
//   float v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "F_Us_Ul" {
    var lv: c.F_Us_Ul = undefined;
    try testing.expectSize(c.F_Us_Ul, 16);
    try testing.expectAlign(c.F_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Us_Ul(.{ .v1 = 1.0, .v2 = 15873, .v3 = 13395 }));
}
// From T_Snnn_xax.c:31157:31177
// struct  F_Us_Us  {
//   float v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "F_Us_Us" {
    var lv: c.F_Us_Us = undefined;
    try testing.expectSize(c.F_Us_Us, 8);
    try testing.expectAlign(c.F_Us_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_F_Us_Us(.{ .v1 = 4.5, .v2 = 19507, .v3 = 32357 }));
}
// From T_Snnn_xax.c:31182:31202
// struct  F_Us_Vp  {
//   float v1;
//   unsigned short v2;
//   void *v3;
// };

test "F_Us_Vp" {
    var lv: c.F_Us_Vp = undefined;
    try testing.expectSize(c.F_Us_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_F_Us_Vp(.{ .v1 = -2.125, .v2 = 14866, .v3 = null }));
}
// From T_Snnn_xax.c:31207:31225
// struct  F_Vp  {
//   float v1;
//   void *v2;
// };

test "F_Vp" {
    var lv: c.F_Vp = undefined;
    try testing.expectSize(c.F_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_F_Vp(.{ .v1 = -2.125, .v2 = null }));
}
// From T_Snnn_xax.c:31954:31974
// struct  F_Vp_C  {
//   float v1;
//   void *v2;
//   char v3;
// };

test "F_Vp_C" {
    var lv: c.F_Vp_C = undefined;
    try testing.expectSize(c.F_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_C(.{ .v1 = 0.875, .v2 = null, .v3 = 77 }));
}
// From T_Snnn_xax.c:31979:31999
// struct  F_Vp_D  {
//   float v1;
//   void *v2;
//   double v3;
// };

test "F_Vp_D" {
    var lv: c.F_Vp_D = undefined;
    try testing.expectSize(c.F_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_D(.{ .v1 = -0.25, .v2 = null, .v3 = 7.0 }));
}
// From T_Snnn_xax.c:32004:32024
// struct  F_Vp_F  {
//   float v1;
//   void *v2;
//   float v3;
// };

test "F_Vp_F" {
    var lv: c.F_Vp_F = undefined;
    try testing.expectSize(c.F_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_F(.{ .v1 = -0.25, .v2 = null, .v3 = 7.0 }));
}
// From T_Snnn_xax.c:32029:32049
// struct  F_Vp_I  {
//   float v1;
//   void *v2;
//   int v3;
// };

test "F_Vp_I" {
    var lv: c.F_Vp_I = undefined;
    try testing.expectSize(c.F_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_I(.{ .v1 = 0.875, .v2 = null, .v3 = 5405 }));
}
// From T_Snnn_xax.c:32054:32074
// struct  F_Vp_Ip  {
//   float v1;
//   void *v2;
//   int *v3;
// };

test "F_Vp_Ip" {
    var lv: c.F_Vp_Ip = undefined;
    try testing.expectSize(c.F_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_Ip(.{ .v1 = 1.0, .v2 = null, .v3 = null }));
}
// From T_Snnn_xax.c:32079:32099
// struct  F_Vp_L  {
//   float v1;
//   void *v2;
//   __tsi64 v3;
// };

test "F_Vp_L" {
    var lv: c.F_Vp_L = undefined;
    try testing.expectSize(c.F_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_L(.{ .v1 = 7.0, .v2 = null, .v3 = 4556 }));
}
// From T_Snnn_xax.c:32104:32124
// struct  F_Vp_S  {
//   float v1;
//   void *v2;
//   short v3;
// };

test "F_Vp_S" {
    var lv: c.F_Vp_S = undefined;
    try testing.expectSize(c.F_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_S(.{ .v1 = 1.0, .v2 = null, .v3 = 22690 }));
}
// From T_Snnn_xax.c:32129:32149
// struct  F_Vp_Uc  {
//   float v1;
//   void *v2;
//   unsigned char v3;
// };

test "F_Vp_Uc" {
    var lv: c.F_Vp_Uc = undefined;
    try testing.expectSize(c.F_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_Uc(.{ .v1 = 4.5, .v2 = null, .v3 = 6 }));
}
// From T_Snnn_xax.c:32154:32174
// struct  F_Vp_Ui  {
//   float v1;
//   void *v2;
//   unsigned int v3;
// };

test "F_Vp_Ui" {
    var lv: c.F_Vp_Ui = undefined;
    try testing.expectSize(c.F_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_Ui(.{ .v1 = -2.125, .v2 = null, .v3 = 3327 }));
}
// From T_Snnn_xax.c:32179:32199
// struct  F_Vp_Ul  {
//   float v1;
//   void *v2;
//   __tsu64 v3;
// };

test "F_Vp_Ul" {
    var lv: c.F_Vp_Ul = undefined;
    try testing.expectSize(c.F_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_Ul(.{ .v1 = 0.875, .v2 = null, .v3 = 21417 }));
}
// From T_Snnn_xax.c:32204:32224
// struct  F_Vp_Us  {
//   float v1;
//   void *v2;
//   unsigned short v3;
// };

test "F_Vp_Us" {
    var lv: c.F_Vp_Us = undefined;
    try testing.expectSize(c.F_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_Us(.{ .v1 = -2.125, .v2 = null, .v3 = 10303 }));
}
// From T_Snnn_xax.c:32229:32249
// struct  F_Vp_Vp  {
//   float v1;
//   void *v2;
//   void *v3;
// };

test "F_Vp_Vp" {
    var lv: c.F_Vp_Vp = undefined;
    try testing.expectSize(c.F_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_F_Vp_Vp(.{ .v1 = 4.5, .v2 = null, .v3 = null }));
}
// From T_Snnn_xax.c:32254:32270
// struct  I  {
//   int v1;
// };

test "I" {
    var lv: c.I = undefined;
    try testing.expectSize(c.I, 4);
    try testing.expectAlign(c.I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectOk(c.recv_I(.{ .v1 = 17446 }));
}
// From T_Snnn_xax.c:62575:62593
// struct  I_C  {
//   int v1;
//   char v2;
// };

test "I_C" {
    var lv: c.I_C = undefined;
    try testing.expectSize(c.I_C, 8);
    try testing.expectAlign(c.I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_I_C(.{ .v1 = 27188, .v2 = 109 }));
}
// From T_Snnn_xax.c:63322:63342
// struct  I_C_C  {
//   int v1;
//   char v2;
//   char v3;
// };

test "I_C_C" {
    var lv: c.I_C_C = undefined;
    try testing.expectSize(c.I_C_C, 8);
    try testing.expectAlign(c.I_C_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
    try testing.expectOk(c.recv_I_C_C(.{ .v1 = 9281, .v2 = 5, .v3 = 27 }));
}
// From T_Snnn_xax.c:63347:63367
// struct  I_C_D  {
//   int v1;
//   char v2;
//   double v3;
// };

test "I_C_D" {
    var lv: c.I_C_D = undefined;
    try testing.expectSize(c.I_C_D, 16);
    try testing.expectAlign(c.I_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_C_D(.{ .v1 = 11, .v2 = 124, .v3 = -2.125 }));
}
// From T_Snnn_xax.c:63372:63392
// struct  I_C_F  {
//   int v1;
//   char v2;
//   float v3;
// };

test "I_C_F" {
    var lv: c.I_C_F = undefined;
    try testing.expectSize(c.I_C_F, 12);
    try testing.expectAlign(c.I_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_C_F(.{ .v1 = 22444, .v2 = 7, .v3 = 0.5 }));
}
// From T_Snnn_xax.c:63397:63417
// struct  I_C_I  {
//   int v1;
//   char v2;
//   int v3;
// };

test "I_C_I" {
    var lv: c.I_C_I = undefined;
    try testing.expectSize(c.I_C_I, 12);
    try testing.expectAlign(c.I_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_C_I(.{ .v1 = 3062, .v2 = 32, .v3 = 3299 }));
}
// From T_Snnn_xax.c:63422:63442
// struct  I_C_Ip  {
//   int v1;
//   char v2;
//   int *v3;
// };

test "I_C_Ip" {
    var lv: c.I_C_Ip = undefined;
    try testing.expectSize(c.I_C_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_C_Ip(.{ .v1 = 1006, .v2 = 27, .v3 = null }));
}
// From T_Snnn_xax.c:63447:63467
// struct  I_C_L  {
//   int v1;
//   char v2;
//   __tsi64 v3;
// };

test "I_C_L" {
    var lv: c.I_C_L = undefined;
    try testing.expectSize(c.I_C_L, 16);
    try testing.expectAlign(c.I_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_C_L(.{ .v1 = 2698, .v2 = 125, .v3 = 27877 }));
}
// From T_Snnn_xax.c:63472:63492
// struct  I_C_S  {
//   int v1;
//   char v2;
//   short v3;
// };

test "I_C_S" {
    var lv: c.I_C_S = undefined;
    try testing.expectSize(c.I_C_S, 8);
    try testing.expectAlign(c.I_C_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_C_S(.{ .v1 = 8815, .v2 = 126, .v3 = 10343 }));
}
// From T_Snnn_xax.c:63497:63517
// struct  I_C_Uc  {
//   int v1;
//   char v2;
//   unsigned char v3;
// };

test "I_C_Uc" {
    var lv: c.I_C_Uc = undefined;
    try testing.expectSize(c.I_C_Uc, 8);
    try testing.expectAlign(c.I_C_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
    try testing.expectOk(c.recv_I_C_Uc(.{ .v1 = 9659, .v2 = 11, .v3 = 95 }));
}
// From T_Snnn_xax.c:63522:63542
// struct  I_C_Ui  {
//   int v1;
//   char v2;
//   unsigned int v3;
// };

test "I_C_Ui" {
    var lv: c.I_C_Ui = undefined;
    try testing.expectSize(c.I_C_Ui, 12);
    try testing.expectAlign(c.I_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_C_Ui(.{ .v1 = 12781, .v2 = 106, .v3 = 4108 }));
}
// From T_Snnn_xax.c:63547:63567
// struct  I_C_Ul  {
//   int v1;
//   char v2;
//   __tsu64 v3;
// };

test "I_C_Ul" {
    var lv: c.I_C_Ul = undefined;
    try testing.expectSize(c.I_C_Ul, 16);
    try testing.expectAlign(c.I_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_C_Ul(.{ .v1 = 6776, .v2 = 16, .v3 = 8336 }));
}
// From T_Snnn_xax.c:63572:63592
// struct  I_C_Us  {
//   int v1;
//   char v2;
//   unsigned short v3;
// };

test "I_C_Us" {
    var lv: c.I_C_Us = undefined;
    try testing.expectSize(c.I_C_Us, 8);
    try testing.expectAlign(c.I_C_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_C_Us(.{ .v1 = 9679, .v2 = 50, .v3 = 19135 }));
}
// From T_Snnn_xax.c:63597:63617
// struct  I_C_Vp  {
//   int v1;
//   char v2;
//   void *v3;
// };

test "I_C_Vp" {
    var lv: c.I_C_Vp = undefined;
    try testing.expectSize(c.I_C_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_C_Vp(.{ .v1 = 5526, .v2 = 73, .v3 = null }));
}
// From T_Snnn_xax.c:63622:63640
// struct  I_D  {
//   int v1;
//   double v2;
// };

test "I_D" {
    var lv: c.I_D = undefined;
    try testing.expectSize(c.I_D, ABISELECT(16, 12));
    try testing.expectAlign(c.I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_I_D(.{ .v1 = 20372, .v2 = -2.125 }));
}
// From T_Snnn_xax.c:64369:64389
// struct  I_D_C  {
//   int v1;
//   double v2;
//   char v3;
// };

test "I_D_C" {
    var lv: c.I_D_C = undefined;
    try testing.expectSize(c.I_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_C(.{ .v1 = 12641, .v2 = 0.875, .v3 = 101 }));
}
// From T_Snnn_xax.c:64394:64414
// struct  I_D_D  {
//   int v1;
//   double v2;
//   double v3;
// };

test "I_D_D" {
    var lv: c.I_D_D = undefined;
    try testing.expectSize(c.I_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_D(.{ .v1 = 2553, .v2 = 0.875, .v3 = 0.875 }));
}
// From T_Snnn_xax.c:64419:64439
// struct  I_D_F  {
//   int v1;
//   double v2;
//   float v3;
// };

test "I_D_F" {
    var lv: c.I_D_F = undefined;
    try testing.expectSize(c.I_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_F(.{ .v1 = 27668, .v2 = -0.25, .v3 = 7.0 }));
}
// From T_Snnn_xax.c:64444:64464
// struct  I_D_I  {
//   int v1;
//   double v2;
//   int v3;
// };

test "I_D_I" {
    var lv: c.I_D_I = undefined;
    try testing.expectSize(c.I_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_I(.{ .v1 = 1093, .v2 = 7.0, .v3 = 17976 }));
}
// From T_Snnn_xax.c:64469:64489
// struct  I_D_Ip  {
//   int v1;
//   double v2;
//   int *v3;
// };

test "I_D_Ip" {
    var lv: c.I_D_Ip = undefined;
    try testing.expectSize(c.I_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_Ip(.{ .v1 = 1902, .v2 = 7.0, .v3 = null }));
}
// From T_Snnn_xax.c:64494:64514
// struct  I_D_L  {
//   int v1;
//   double v2;
//   __tsi64 v3;
// };

test "I_D_L" {
    var lv: c.I_D_L = undefined;
    try testing.expectSize(c.I_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_L(.{ .v1 = 29, .v2 = 0.875, .v3 = 10866 }));
}
// From T_Snnn_xax.c:64519:64539
// struct  I_D_S  {
//   int v1;
//   double v2;
//   short v3;
// };

test "I_D_S" {
    var lv: c.I_D_S = undefined;
    try testing.expectSize(c.I_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_S(.{ .v1 = 21029, .v2 = 0.5, .v3 = 12193 }));
}
// From T_Snnn_xax.c:64544:64564
// struct  I_D_Uc  {
//   int v1;
//   double v2;
//   unsigned char v3;
// };

test "I_D_Uc" {
    var lv: c.I_D_Uc = undefined;
    try testing.expectSize(c.I_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_Uc(.{ .v1 = 26572, .v2 = 0.875, .v3 = 77 }));
}
// From T_Snnn_xax.c:64569:64589
// struct  I_D_Ui  {
//   int v1;
//   double v2;
//   unsigned int v3;
// };

test "I_D_Ui" {
    var lv: c.I_D_Ui = undefined;
    try testing.expectSize(c.I_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_Ui(.{ .v1 = 17463, .v2 = 0.5, .v3 = 30633 }));
}
// From T_Snnn_xax.c:64594:64614
// struct  I_D_Ul  {
//   int v1;
//   double v2;
//   __tsu64 v3;
// };

test "I_D_Ul" {
    var lv: c.I_D_Ul = undefined;
    try testing.expectSize(c.I_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_Ul(.{ .v1 = 23110, .v2 = 0.875, .v3 = 5933 }));
}
// From T_Snnn_xax.c:64619:64639
// struct  I_D_Us  {
//   int v1;
//   double v2;
//   unsigned short v3;
// };

test "I_D_Us" {
    var lv: c.I_D_Us = undefined;
    try testing.expectSize(c.I_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_Us(.{ .v1 = 10730, .v2 = 7.0, .v3 = 2491 }));
}
// From T_Snnn_xax.c:64644:64664
// struct  I_D_Vp  {
//   int v1;
//   double v2;
//   void *v3;
// };

test "I_D_Vp" {
    var lv: c.I_D_Vp = undefined;
    try testing.expectSize(c.I_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_D_Vp(.{ .v1 = 16938, .v2 = -0.25, .v3 = null }));
}
// From T_Snnn_xax.c:64669:64687
// struct  I_F  {
//   int v1;
//   float v2;
// };

test "I_F" {
    var lv: c.I_F = undefined;
    try testing.expectSize(c.I_F, 8);
    try testing.expectAlign(c.I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_I_F(.{ .v1 = 18073, .v2 = 7.0 }));
}
// From T_Snnn_xax.c:65416:65436
// struct  I_F_C  {
//   int v1;
//   float v2;
//   char v3;
// };

test "I_F_C" {
    var lv: c.I_F_C = undefined;
    try testing.expectSize(c.I_F_C, 12);
    try testing.expectAlign(c.I_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_C(.{ .v1 = 22692, .v2 = 4.5, .v3 = 92 }));
}
// From T_Snnn_xax.c:65441:65461
// struct  I_F_D  {
//   int v1;
//   float v2;
//   double v3;
// };

test "I_F_D" {
    var lv: c.I_F_D = undefined;
    try testing.expectSize(c.I_F_D, 16);
    try testing.expectAlign(c.I_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_D(.{ .v1 = 12941, .v2 = 0.875, .v3 = 0.5 }));
}
// From T_Snnn_xax.c:65466:65486
// struct  I_F_F  {
//   int v1;
//   float v2;
//   float v3;
// };

test "I_F_F" {
    var lv: c.I_F_F = undefined;
    try testing.expectSize(c.I_F_F, 12);
    try testing.expectAlign(c.I_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_F(.{ .v1 = 2124, .v2 = -0.25, .v3 = 7.0 }));
}
// From T_Snnn_xax.c:65491:65511
// struct  I_F_I  {
//   int v1;
//   float v2;
//   int v3;
// };

test "I_F_I" {
    var lv: c.I_F_I = undefined;
    try testing.expectSize(c.I_F_I, 12);
    try testing.expectAlign(c.I_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_I(.{ .v1 = 1040, .v2 = -2.125, .v3 = 3590 }));
}
// From T_Snnn_xax.c:65516:65536
// struct  I_F_Ip  {
//   int v1;
//   float v2;
//   int *v3;
// };

test "I_F_Ip" {
    var lv: c.I_F_Ip = undefined;
    try testing.expectSize(c.I_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_Ip(.{ .v1 = 5132, .v2 = 0.5, .v3 = null }));
}
// From T_Snnn_xax.c:65541:65561
// struct  I_F_L  {
//   int v1;
//   float v2;
//   __tsi64 v3;
// };

test "I_F_L" {
    var lv: c.I_F_L = undefined;
    try testing.expectSize(c.I_F_L, 16);
    try testing.expectAlign(c.I_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_L(.{ .v1 = 9972, .v2 = 7.0, .v3 = 27944 }));
}
// From T_Snnn_xax.c:65566:65586
// struct  I_F_S  {
//   int v1;
//   float v2;
//   short v3;
// };

test "I_F_S" {
    var lv: c.I_F_S = undefined;
    try testing.expectSize(c.I_F_S, 12);
    try testing.expectAlign(c.I_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_S(.{ .v1 = 22732, .v2 = 4.5, .v3 = 27757 }));
}
// From T_Snnn_xax.c:65591:65611
// struct  I_F_Uc  {
//   int v1;
//   float v2;
//   unsigned char v3;
// };

test "I_F_Uc" {
    var lv: c.I_F_Uc = undefined;
    try testing.expectSize(c.I_F_Uc, 12);
    try testing.expectAlign(c.I_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_Uc(.{ .v1 = 2422, .v2 = -0.25, .v3 = 125 }));
}
// From T_Snnn_xax.c:65616:65636
// struct  I_F_Ui  {
//   int v1;
//   float v2;
//   unsigned int v3;
// };

test "I_F_Ui" {
    var lv: c.I_F_Ui = undefined;
    try testing.expectSize(c.I_F_Ui, 12);
    try testing.expectAlign(c.I_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_Ui(.{ .v1 = 2378, .v2 = 4.5, .v3 = 16314 }));
}
// From T_Snnn_xax.c:65641:65661
// struct  I_F_Ul  {
//   int v1;
//   float v2;
//   __tsu64 v3;
// };

test "I_F_Ul" {
    var lv: c.I_F_Ul = undefined;
    try testing.expectSize(c.I_F_Ul, 16);
    try testing.expectAlign(c.I_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_Ul(.{ .v1 = 32591, .v2 = 7.0, .v3 = 2455 }));
}
// From T_Snnn_xax.c:65666:65686
// struct  I_F_Us  {
//   int v1;
//   float v2;
//   unsigned short v3;
// };

test "I_F_Us" {
    var lv: c.I_F_Us = undefined;
    try testing.expectSize(c.I_F_Us, 12);
    try testing.expectAlign(c.I_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_Us(.{ .v1 = 24697, .v2 = -0.25, .v3 = 26553 }));
}
// From T_Snnn_xax.c:65691:65711
// struct  I_F_Vp  {
//   int v1;
//   float v2;
//   void *v3;
// };

test "I_F_Vp" {
    var lv: c.I_F_Vp = undefined;
    try testing.expectSize(c.I_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_F_Vp(.{ .v1 = 9459, .v2 = 4.5, .v3 = null }));
}
// From T_Snnn_xax.c:65716:65734
// struct  I_I  {
//   int v1;
//   int v2;
// };

test "I_I" {
    var lv: c.I_I = undefined;
    try testing.expectSize(c.I_I, 8);
    try testing.expectAlign(c.I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_I_I(.{ .v1 = 25696, .v2 = 22162 }));
}
// From T_Snnn_xax.c:66463:66483
// struct  I_I_C  {
//   int v1;
//   int v2;
//   char v3;
// };

test "I_I_C" {
    var lv: c.I_I_C = undefined;
    try testing.expectSize(c.I_I_C, 12);
    try testing.expectAlign(c.I_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_C(.{ .v1 = 10622, .v2 = 26317, .v3 = 54 }));
}
// From T_Snnn_xax.c:66488:66508
// struct  I_I_D  {
//   int v1;
//   int v2;
//   double v3;
// };

test "I_I_D" {
    var lv: c.I_I_D = undefined;
    try testing.expectSize(c.I_I_D, 16);
    try testing.expectAlign(c.I_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_D(.{ .v1 = 26453, .v2 = 22783, .v3 = 4.5 }));
}
// From T_Snnn_xax.c:66513:66533
// struct  I_I_F  {
//   int v1;
//   int v2;
//   float v3;
// };

test "I_I_F" {
    var lv: c.I_I_F = undefined;
    try testing.expectSize(c.I_I_F, 12);
    try testing.expectAlign(c.I_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_F(.{ .v1 = 25300, .v2 = 31232, .v3 = -0.25 }));
}
// From T_Snnn_xax.c:66538:66558
// struct  I_I_I  {
//   int v1;
//   int v2;
//   int v3;
// };

test "I_I_I" {
    var lv: c.I_I_I = undefined;
    try testing.expectSize(c.I_I_I, 12);
    try testing.expectAlign(c.I_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_I(.{ .v1 = 27961, .v2 = 24345, .v3 = 24769 }));
}
// From T_Snnn_xax.c:66563:66583
// struct  I_I_Ip  {
//   int v1;
//   int v2;
//   int *v3;
// };

test "I_I_Ip" {
    var lv: c.I_I_Ip = undefined;
    try testing.expectSize(c.I_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_Ip(.{ .v1 = 115, .v2 = 29069, .v3 = null }));
}
// From T_Snnn_xax.c:66588:66608
// struct  I_I_L  {
//   int v1;
//   int v2;
//   __tsi64 v3;
// };

test "I_I_L" {
    var lv: c.I_I_L = undefined;
    try testing.expectSize(c.I_I_L, 16);
    try testing.expectAlign(c.I_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_L(.{ .v1 = 31682, .v2 = 7411, .v3 = 18481 }));
}
// From T_Snnn_xax.c:66613:66633
// struct  I_I_S  {
//   int v1;
//   int v2;
//   short v3;
// };

test "I_I_S" {
    var lv: c.I_I_S = undefined;
    try testing.expectSize(c.I_I_S, 12);
    try testing.expectAlign(c.I_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_S(.{ .v1 = 23632, .v2 = 31412, .v3 = 28557 }));
}
// From T_Snnn_xax.c:66638:66658
// struct  I_I_Uc  {
//   int v1;
//   int v2;
//   unsigned char v3;
// };

test "I_I_Uc" {
    var lv: c.I_I_Uc = undefined;
    try testing.expectSize(c.I_I_Uc, 12);
    try testing.expectAlign(c.I_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_Uc(.{ .v1 = 10669, .v2 = 23177, .v3 = 84 }));
}
// From T_Snnn_xax.c:66663:66683
// struct  I_I_Ui  {
//   int v1;
//   int v2;
//   unsigned int v3;
// };

test "I_I_Ui" {
    var lv: c.I_I_Ui = undefined;
    try testing.expectSize(c.I_I_Ui, 12);
    try testing.expectAlign(c.I_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_Ui(.{ .v1 = 19858, .v2 = 31111, .v3 = 266 }));
}
// From T_Snnn_xax.c:66688:66708
// struct  I_I_Ul  {
//   int v1;
//   int v2;
//   __tsu64 v3;
// };

test "I_I_Ul" {
    var lv: c.I_I_Ul = undefined;
    try testing.expectSize(c.I_I_Ul, 16);
    try testing.expectAlign(c.I_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_Ul(.{ .v1 = 6762, .v2 = 13697, .v3 = 16792 }));
}
// From T_Snnn_xax.c:66713:66733
// struct  I_I_Us  {
//   int v1;
//   int v2;
//   unsigned short v3;
// };

test "I_I_Us" {
    var lv: c.I_I_Us = undefined;
    try testing.expectSize(c.I_I_Us, 12);
    try testing.expectAlign(c.I_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_Us(.{ .v1 = 24170, .v2 = 32025, .v3 = 8080 }));
}
// From T_Snnn_xax.c:66738:66758
// struct  I_I_Vp  {
//   int v1;
//   int v2;
//   void *v3;
// };

test "I_I_Vp" {
    var lv: c.I_I_Vp = undefined;
    try testing.expectSize(c.I_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_I_Vp(.{ .v1 = 25106, .v2 = 21604, .v3 = null }));
}
// From T_Snnn_xax.c:66763:66781
// struct  I_Ip  {
//   int v1;
//   int *v2;
// };

test "I_Ip" {
    var lv: c.I_Ip = undefined;
    try testing.expectSize(c.I_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_I_Ip(.{ .v1 = 1345, .v2 = null }));
}
// From T_Snnn_xax.c:67510:67530
// struct  I_Ip_C  {
//   int v1;
//   int *v2;
//   char v3;
// };

test "I_Ip_C" {
    var lv: c.I_Ip_C = undefined;
    try testing.expectSize(c.I_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_C(.{ .v1 = 1373, .v2 = null, .v3 = 14 }));
}
// From T_Snnn_xax.c:67535:67555
// struct  I_Ip_D  {
//   int v1;
//   int *v2;
//   double v3;
// };

test "I_Ip_D" {
    var lv: c.I_Ip_D = undefined;
    try testing.expectSize(c.I_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_D(.{ .v1 = 10474, .v2 = null, .v3 = 7.0 }));
}
// From T_Snnn_xax.c:67560:67580
// struct  I_Ip_F  {
//   int v1;
//   int *v2;
//   float v3;
// };

test "I_Ip_F" {
    var lv: c.I_Ip_F = undefined;
    try testing.expectSize(c.I_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_F(.{ .v1 = 5032, .v2 = null, .v3 = -0.25 }));
}
// From T_Snnn_xax.c:67585:67605
// struct  I_Ip_I  {
//   int v1;
//   int *v2;
//   int v3;
// };

test "I_Ip_I" {
    var lv: c.I_Ip_I = undefined;
    try testing.expectSize(c.I_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_I(.{ .v1 = 9003, .v2 = null, .v3 = 11875 }));
}
// From T_Snnn_xax.c:67610:67630
// struct  I_Ip_Ip  {
//   int v1;
//   int *v2;
//   int *v3;
// };

test "I_Ip_Ip" {
    var lv: c.I_Ip_Ip = undefined;
    try testing.expectSize(c.I_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_Ip(.{ .v1 = 11522, .v2 = null, .v3 = null }));
}
// From T_Snnn_xax.c:67635:67655
// struct  I_Ip_L  {
//   int v1;
//   int *v2;
//   __tsi64 v3;
// };

test "I_Ip_L" {
    var lv: c.I_Ip_L = undefined;
    try testing.expectSize(c.I_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_L(.{ .v1 = 12609, .v2 = null, .v3 = 30005 }));
}
// From T_Snnn_xax.c:67660:67680
// struct  I_Ip_S  {
//   int v1;
//   int *v2;
//   short v3;
// };

test "I_Ip_S" {
    var lv: c.I_Ip_S = undefined;
    try testing.expectSize(c.I_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_S(.{ .v1 = 1059, .v2 = null, .v3 = 12558 }));
}
// From T_Snnn_xax.c:67685:67705
// struct  I_Ip_Uc  {
//   int v1;
//   int *v2;
//   unsigned char v3;
// };

test "I_Ip_Uc" {
    var lv: c.I_Ip_Uc = undefined;
    try testing.expectSize(c.I_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_Uc(.{ .v1 = 19459, .v2 = null, .v3 = 5 }));
}
// From T_Snnn_xax.c:67710:67730
// struct  I_Ip_Ui  {
//   int v1;
//   int *v2;
//   unsigned int v3;
// };

test "I_Ip_Ui" {
    var lv: c.I_Ip_Ui = undefined;
    try testing.expectSize(c.I_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_Ui(.{ .v1 = 6589, .v2 = null, .v3 = 18101 }));
}
// From T_Snnn_xax.c:67735:67755
// struct  I_Ip_Ul  {
//   int v1;
//   int *v2;
//   __tsu64 v3;
// };

test "I_Ip_Ul" {
    var lv: c.I_Ip_Ul = undefined;
    try testing.expectSize(c.I_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_Ul(.{ .v1 = 7, .v2 = null, .v3 = 6657 }));
}
// From T_Snnn_xax.c:67760:67780
// struct  I_Ip_Us  {
//   int v1;
//   int *v2;
//   unsigned short v3;
// };

test "I_Ip_Us" {
    var lv: c.I_Ip_Us = undefined;
    try testing.expectSize(c.I_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_Us(.{ .v1 = 12797, .v2 = null, .v3 = 13372 }));
}
// From T_Snnn_xax.c:67785:67805
// struct  I_Ip_Vp  {
//   int v1;
//   int *v2;
//   void *v3;
// };

test "I_Ip_Vp" {
    var lv: c.I_Ip_Vp = undefined;
    try testing.expectSize(c.I_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Ip_Vp(.{ .v1 = 23149, .v2 = null, .v3 = null }));
}
// From T_Snnn_xax.c:67810:67828
// struct  I_L  {
//   int v1;
//   __tsi64 v2;
// };

test "I_L" {
    var lv: c.I_L = undefined;
    try testing.expectSize(c.I_L, ABISELECT(16, 12));
    try testing.expectAlign(c.I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_I_L(.{ .v1 = 11062, .v2 = 25927 }));
}
// From T_Snnn_xax.c:68557:68577
// struct  I_L_C  {
//   int v1;
//   __tsi64 v2;
//   char v3;
// };

test "I_L_C" {
    var lv: c.I_L_C = undefined;
    try testing.expectSize(c.I_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_C(.{ .v1 = 3285, .v2 = 26260, .v3 = 38 }));
}
// From T_Snnn_xax.c:68582:68602
// struct  I_L_D  {
//   int v1;
//   __tsi64 v2;
//   double v3;
// };

test "I_L_D" {
    var lv: c.I_L_D = undefined;
    try testing.expectSize(c.I_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_D(.{ .v1 = 6996, .v2 = 15320, .v3 = -0.25 }));
}
// From T_Snnn_xax.c:68607:68627
// struct  I_L_F  {
//   int v1;
//   __tsi64 v2;
//   float v3;
// };

test "I_L_F" {
    var lv: c.I_L_F = undefined;
    try testing.expectSize(c.I_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_F(.{ .v1 = 3417, .v2 = 5705, .v3 = 7.0 }));
}
// From T_Snnn_xax.c:68632:68652
// struct  I_L_I  {
//   int v1;
//   __tsi64 v2;
//   int v3;
// };

test "I_L_I" {
    var lv: c.I_L_I = undefined;
    try testing.expectSize(c.I_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_I(.{ .v1 = 2878, .v2 = 28742, .v3 = 27089 }));
}
// From T_Snnn_xax.c:68657:68677
// struct  I_L_Ip  {
//   int v1;
//   __tsi64 v2;
//   int *v3;
// };

test "I_L_Ip" {
    var lv: c.I_L_Ip = undefined;
    try testing.expectSize(c.I_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_Ip(.{ .v1 = 14448, .v2 = 27305, .v3 = null }));
}
// From T_Snnn_xax.c:68682:68702
// struct  I_L_L  {
//   int v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "I_L_L" {
    var lv: c.I_L_L = undefined;
    try testing.expectSize(c.I_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_L(.{ .v1 = 16994, .v2 = 26074, .v3 = 1517 }));
}
// From T_Snnn_xax.c:68707:68727
// struct  I_L_S  {
//   int v1;
//   __tsi64 v2;
//   short v3;
// };

test "I_L_S" {
    var lv: c.I_L_S = undefined;
    try testing.expectSize(c.I_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_S(.{ .v1 = 20300, .v2 = 20165, .v3 = 29078 }));
}
// From T_Snnn_xax.c:68732:68752
// struct  I_L_Uc  {
//   int v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "I_L_Uc" {
    var lv: c.I_L_Uc = undefined;
    try testing.expectSize(c.I_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_Uc(.{ .v1 = 17820, .v2 = 24592, .v3 = 125 }));
}
// From T_Snnn_xax.c:68757:68777
// struct  I_L_Ui  {
//   int v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "I_L_Ui" {
    var lv: c.I_L_Ui = undefined;
    try testing.expectSize(c.I_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_Ui(.{ .v1 = 2268, .v2 = 14982, .v3 = 1284 }));
}
// From T_Snnn_xax.c:68782:68802
// struct  I_L_Ul  {
//   int v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "I_L_Ul" {
    var lv: c.I_L_Ul = undefined;
    try testing.expectSize(c.I_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_Ul(.{ .v1 = 25117, .v2 = 28257, .v3 = 12345 }));
}
// From T_Snnn_xax.c:68807:68827
// struct  I_L_Us  {
//   int v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "I_L_Us" {
    var lv: c.I_L_Us = undefined;
    try testing.expectSize(c.I_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_Us(.{ .v1 = 6112, .v2 = 1636, .v3 = 20956 }));
}
// From T_Snnn_xax.c:68832:68852
// struct  I_L_Vp  {
//   int v1;
//   __tsi64 v2;
//   void *v3;
// };

test "I_L_Vp" {
    var lv: c.I_L_Vp = undefined;
    try testing.expectSize(c.I_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_L_Vp(.{ .v1 = 17111, .v2 = 29128, .v3 = null }));
}
// From T_Snnn_xax.c:68857:68875
// struct  I_S  {
//   int v1;
//   short v2;
// };

test "I_S" {
    var lv: c.I_S = undefined;
    try testing.expectSize(c.I_S, 8);
    try testing.expectAlign(c.I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_I_S(.{ .v1 = 20472, .v2 = 19735 }));
}
// From T_Snnn_xax.c:69604:69624
// struct  I_S_C  {
//   int v1;
//   short v2;
//   char v3;
// };

test "I_S_C" {
    var lv: c.I_S_C = undefined;
    try testing.expectSize(c.I_S_C, 8);
    try testing.expectAlign(c.I_S_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_S_C(.{ .v1 = 30085, .v2 = 12535, .v3 = 68 }));
}
// From T_Snnn_xax.c:69629:69649
// struct  I_S_D  {
//   int v1;
//   short v2;
//   double v3;
// };

test "I_S_D" {
    var lv: c.I_S_D = undefined;
    try testing.expectSize(c.I_S_D, 16);
    try testing.expectAlign(c.I_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_S_D(.{ .v1 = 20790, .v2 = 12807, .v3 = 7.0 }));
}
// From T_Snnn_xax.c:69654:69674
// struct  I_S_F  {
//   int v1;
//   short v2;
//   float v3;
// };

test "I_S_F" {
    var lv: c.I_S_F = undefined;
    try testing.expectSize(c.I_S_F, 12);
    try testing.expectAlign(c.I_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_S_F(.{ .v1 = 21659, .v2 = 15482, .v3 = 1.0 }));
}
// From T_Snnn_xax.c:69679:69699
// struct  I_S_I  {
//   int v1;
//   short v2;
//   int v3;
// };

test "I_S_I" {
    var lv: c.I_S_I = undefined;
    try testing.expectSize(c.I_S_I, 12);
    try testing.expectAlign(c.I_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_S_I(.{ .v1 = 19770, .v2 = 17968, .v3 = 30797 }));
}
// From T_Snnn_xax.c:69704:69724
// struct  I_S_Ip  {
//   int v1;
//   short v2;
//   int *v3;
// };

test "I_S_Ip" {
    var lv: c.I_S_Ip = undefined;
    try testing.expectSize(c.I_S_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_S_Ip(.{ .v1 = 11156, .v2 = 459, .v3 = null }));
}
// From T_Snnn_xax.c:69729:69749
// struct  I_S_L  {
//   int v1;
//   short v2;
//   __tsi64 v3;
// };

test "I_S_L" {
    var lv: c.I_S_L = undefined;
    try testing.expectSize(c.I_S_L, 16);
    try testing.expectAlign(c.I_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_S_L(.{ .v1 = 20002, .v2 = 1407, .v3 = 28466 }));
}
// From T_Snnn_xax.c:69754:69774
// struct  I_S_S  {
//   int v1;
//   short v2;
//   short v3;
// };

test "I_S_S" {
    var lv: c.I_S_S = undefined;
    try testing.expectSize(c.I_S_S, 8);
    try testing.expectAlign(c.I_S_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_S_S(.{ .v1 = 23178, .v2 = 17246, .v3 = 30600 }));
}
// From T_Snnn_xax.c:69779:69799
// struct  I_S_Uc  {
//   int v1;
//   short v2;
//   unsigned char v3;
// };

test "I_S_Uc" {
    var lv: c.I_S_Uc = undefined;
    try testing.expectSize(c.I_S_Uc, 8);
    try testing.expectAlign(c.I_S_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_S_Uc(.{ .v1 = 29081, .v2 = 27093, .v3 = 104 }));
}
// From T_Snnn_xax.c:69804:69824
// struct  I_S_Ui  {
//   int v1;
//   short v2;
//   unsigned int v3;
// };

test "I_S_Ui" {
    var lv: c.I_S_Ui = undefined;
    try testing.expectSize(c.I_S_Ui, 12);
    try testing.expectAlign(c.I_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_S_Ui(.{ .v1 = 19804, .v2 = 17359, .v3 = 32650 }));
}
// From T_Snnn_xax.c:69829:69849
// struct  I_S_Ul  {
//   int v1;
//   short v2;
//   __tsu64 v3;
// };

test "I_S_Ul" {
    var lv: c.I_S_Ul = undefined;
    try testing.expectSize(c.I_S_Ul, 16);
    try testing.expectAlign(c.I_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_S_Ul(.{ .v1 = 16785, .v2 = 22570, .v3 = 20471 }));
}
// From T_Snnn_xax.c:69854:69874
// struct  I_S_Us  {
//   int v1;
//   short v2;
//   unsigned short v3;
// };

test "I_S_Us" {
    var lv: c.I_S_Us = undefined;
    try testing.expectSize(c.I_S_Us, 8);
    try testing.expectAlign(c.I_S_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_S_Us(.{ .v1 = 18528, .v2 = 17634, .v3 = 13815 }));
}
// From T_Snnn_xax.c:69879:69899
// struct  I_S_Vp  {
//   int v1;
//   short v2;
//   void *v3;
// };

test "I_S_Vp" {
    var lv: c.I_S_Vp = undefined;
    try testing.expectSize(c.I_S_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_S_Vp(.{ .v1 = 5046, .v2 = 3734, .v3 = null }));
}
// From T_Snnn_xax.c:69904:69922
// struct  I_Uc  {
//   int v1;
//   unsigned char v2;
// };

test "I_Uc" {
    var lv: c.I_Uc = undefined;
    try testing.expectSize(c.I_Uc, 8);
    try testing.expectAlign(c.I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_I_Uc(.{ .v1 = 9907, .v2 = 62 }));
}
// From T_Snnn_xax.c:70651:70671
// struct  I_Uc_C  {
//   int v1;
//   unsigned char v2;
//   char v3;
// };

test "I_Uc_C" {
    var lv: c.I_Uc_C = undefined;
    try testing.expectSize(c.I_Uc_C, 8);
    try testing.expectAlign(c.I_Uc_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
    try testing.expectOk(c.recv_I_Uc_C(.{ .v1 = 814, .v2 = 78, .v3 = 109 }));
}
// From T_Snnn_xax.c:70676:70696
// struct  I_Uc_D  {
//   int v1;
//   unsigned char v2;
//   double v3;
// };

test "I_Uc_D" {
    var lv: c.I_Uc_D = undefined;
    try testing.expectSize(c.I_Uc_D, 16);
    try testing.expectAlign(c.I_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Uc_D(.{ .v1 = 22054, .v2 = 100, .v3 = 4.5 }));
}
// From T_Snnn_xax.c:70701:70721
// struct  I_Uc_F  {
//   int v1;
//   unsigned char v2;
//   float v3;
// };

test "I_Uc_F" {
    var lv: c.I_Uc_F = undefined;
    try testing.expectSize(c.I_Uc_F, 12);
    try testing.expectAlign(c.I_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Uc_F(.{ .v1 = 4971, .v2 = 16, .v3 = 0.875 }));
}
// From T_Snnn_xax.c:70726:70746
// struct  I_Uc_I  {
//   int v1;
//   unsigned char v2;
//   int v3;
// };

test "I_Uc_I" {
    var lv: c.I_Uc_I = undefined;
    try testing.expectSize(c.I_Uc_I, 12);
    try testing.expectAlign(c.I_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Uc_I(.{ .v1 = 11510, .v2 = 113, .v3 = 9530 }));
}
// From T_Snnn_xax.c:70751:70771
// struct  I_Uc_Ip  {
//   int v1;
//   unsigned char v2;
//   int *v3;
// };

test "I_Uc_Ip" {
    var lv: c.I_Uc_Ip = undefined;
    try testing.expectSize(c.I_Uc_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Uc_Ip(.{ .v1 = 10563, .v2 = 11, .v3 = null }));
}
// From T_Snnn_xax.c:70776:70796
// struct  I_Uc_L  {
//   int v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "I_Uc_L" {
    var lv: c.I_Uc_L = undefined;
    try testing.expectSize(c.I_Uc_L, 16);
    try testing.expectAlign(c.I_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Uc_L(.{ .v1 = 28918, .v2 = 4, .v3 = 2052 }));
}
// From T_Snnn_xax.c:70801:70821
// struct  I_Uc_S  {
//   int v1;
//   unsigned char v2;
//   short v3;
// };

test "I_Uc_S" {
    var lv: c.I_Uc_S = undefined;
    try testing.expectSize(c.I_Uc_S, 8);
    try testing.expectAlign(c.I_Uc_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_Uc_S(.{ .v1 = 17185, .v2 = 74, .v3 = 22429 }));
}
// From T_Snnn_xax.c:70826:70846
// struct  I_Uc_Uc  {
//   int v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "I_Uc_Uc" {
    var lv: c.I_Uc_Uc = undefined;
    try testing.expectSize(c.I_Uc_Uc, 8);
    try testing.expectAlign(c.I_Uc_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
    try testing.expectOk(c.recv_I_Uc_Uc(.{ .v1 = 7894, .v2 = 53, .v3 = 84 }));
}
// From T_Snnn_xax.c:70851:70871
// struct  I_Uc_Ui  {
//   int v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "I_Uc_Ui" {
    var lv: c.I_Uc_Ui = undefined;
    try testing.expectSize(c.I_Uc_Ui, 12);
    try testing.expectAlign(c.I_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Uc_Ui(.{ .v1 = 29649, .v2 = 52, .v3 = 28628 }));
}
// From T_Snnn_xax.c:70876:70896
// struct  I_Uc_Ul  {
//   int v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "I_Uc_Ul" {
    var lv: c.I_Uc_Ul = undefined;
    try testing.expectSize(c.I_Uc_Ul, 16);
    try testing.expectAlign(c.I_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Uc_Ul(.{ .v1 = 13864, .v2 = 71, .v3 = 17139 }));
}
// From T_Snnn_xax.c:70901:70921
// struct  I_Uc_Us  {
//   int v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "I_Uc_Us" {
    var lv: c.I_Uc_Us = undefined;
    try testing.expectSize(c.I_Uc_Us, 8);
    try testing.expectAlign(c.I_Uc_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_Uc_Us(.{ .v1 = 621, .v2 = 24, .v3 = 87 }));
}
// From T_Snnn_xax.c:70926:70946
// struct  I_Uc_Vp  {
//   int v1;
//   unsigned char v2;
//   void *v3;
// };

test "I_Uc_Vp" {
    var lv: c.I_Uc_Vp = undefined;
    try testing.expectSize(c.I_Uc_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Uc_Vp(.{ .v1 = 15733, .v2 = 107, .v3 = null }));
}
// From T_Snnn_xax.c:70951:70969
// struct  I_Ui  {
//   int v1;
//   unsigned int v2;
// };

test "I_Ui" {
    var lv: c.I_Ui = undefined;
    try testing.expectSize(c.I_Ui, 8);
    try testing.expectAlign(c.I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_I_Ui(.{ .v1 = 7752, .v2 = 28087 }));
}
// From T_Snnn_xax.c:71698:71718
// struct  I_Ui_C  {
//   int v1;
//   unsigned int v2;
//   char v3;
// };

test "I_Ui_C" {
    var lv: c.I_Ui_C = undefined;
    try testing.expectSize(c.I_Ui_C, 12);
    try testing.expectAlign(c.I_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_C(.{ .v1 = 16981, .v2 = 17288, .v3 = 2 }));
}
// From T_Snnn_xax.c:71723:71743
// struct  I_Ui_D  {
//   int v1;
//   unsigned int v2;
//   double v3;
// };

test "I_Ui_D" {
    var lv: c.I_Ui_D = undefined;
    try testing.expectSize(c.I_Ui_D, 16);
    try testing.expectAlign(c.I_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_D(.{ .v1 = 23540, .v2 = 10678, .v3 = 0.5 }));
}
// From T_Snnn_xax.c:71748:71768
// struct  I_Ui_F  {
//   int v1;
//   unsigned int v2;
//   float v3;
// };

test "I_Ui_F" {
    var lv: c.I_Ui_F = undefined;
    try testing.expectSize(c.I_Ui_F, 12);
    try testing.expectAlign(c.I_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_F(.{ .v1 = 24642, .v2 = 26856, .v3 = 0.5 }));
}
// From T_Snnn_xax.c:71773:71793
// struct  I_Ui_I  {
//   int v1;
//   unsigned int v2;
//   int v3;
// };

test "I_Ui_I" {
    var lv: c.I_Ui_I = undefined;
    try testing.expectSize(c.I_Ui_I, 12);
    try testing.expectAlign(c.I_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_I(.{ .v1 = 8999, .v2 = 1538, .v3 = 10112 }));
}
// From T_Snnn_xax.c:71798:71818
// struct  I_Ui_Ip  {
//   int v1;
//   unsigned int v2;
//   int *v3;
// };

test "I_Ui_Ip" {
    var lv: c.I_Ui_Ip = undefined;
    try testing.expectSize(c.I_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_Ip(.{ .v1 = 12833, .v2 = 8536, .v3 = null }));
}
// From T_Snnn_xax.c:71823:71843
// struct  I_Ui_L  {
//   int v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "I_Ui_L" {
    var lv: c.I_Ui_L = undefined;
    try testing.expectSize(c.I_Ui_L, 16);
    try testing.expectAlign(c.I_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_L(.{ .v1 = 5275, .v2 = 28397, .v3 = 7892 }));
}
// From T_Snnn_xax.c:71848:71868
// struct  I_Ui_S  {
//   int v1;
//   unsigned int v2;
//   short v3;
// };

test "I_Ui_S" {
    var lv: c.I_Ui_S = undefined;
    try testing.expectSize(c.I_Ui_S, 12);
    try testing.expectAlign(c.I_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_S(.{ .v1 = 2988, .v2 = 13600, .v3 = 2866 }));
}
// From T_Snnn_xax.c:71873:71893
// struct  I_Ui_Uc  {
//   int v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "I_Ui_Uc" {
    var lv: c.I_Ui_Uc = undefined;
    try testing.expectSize(c.I_Ui_Uc, 12);
    try testing.expectAlign(c.I_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_Uc(.{ .v1 = 22817, .v2 = 14264, .v3 = 36 }));
}
// From T_Snnn_xax.c:71898:71918
// struct  I_Ui_Ui  {
//   int v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "I_Ui_Ui" {
    var lv: c.I_Ui_Ui = undefined;
    try testing.expectSize(c.I_Ui_Ui, 12);
    try testing.expectAlign(c.I_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_Ui(.{ .v1 = 24298, .v2 = 4517, .v3 = 19633 }));
}
// From T_Snnn_xax.c:71923:71943
// struct  I_Ui_Ul  {
//   int v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "I_Ui_Ul" {
    var lv: c.I_Ui_Ul = undefined;
    try testing.expectSize(c.I_Ui_Ul, 16);
    try testing.expectAlign(c.I_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_Ul(.{ .v1 = 14891, .v2 = 14320, .v3 = 17109 }));
}
// From T_Snnn_xax.c:71948:71968
// struct  I_Ui_Us  {
//   int v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "I_Ui_Us" {
    var lv: c.I_Ui_Us = undefined;
    try testing.expectSize(c.I_Ui_Us, 12);
    try testing.expectAlign(c.I_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_Us(.{ .v1 = 12774, .v2 = 30862, .v3 = 23839 }));
}
// From T_Snnn_xax.c:71973:71993
// struct  I_Ui_Vp  {
//   int v1;
//   unsigned int v2;
//   void *v3;
// };

test "I_Ui_Vp" {
    var lv: c.I_Ui_Vp = undefined;
    try testing.expectSize(c.I_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Ui_Vp(.{ .v1 = 25010, .v2 = 12563, .v3 = null }));
}
// From T_Snnn_xax.c:71998:72016
// struct  I_Ul  {
//   int v1;
//   __tsu64 v2;
// };

test "I_Ul" {
    var lv: c.I_Ul = undefined;
    try testing.expectSize(c.I_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_I_Ul(.{ .v1 = 29320, .v2 = 9969 }));
}
// From T_Snnn_xax.c:72745:72765
// struct  I_Ul_C  {
//   int v1;
//   __tsu64 v2;
//   char v3;
// };

test "I_Ul_C" {
    var lv: c.I_Ul_C = undefined;
    try testing.expectSize(c.I_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_C(.{ .v1 = 20010, .v2 = 6864, .v3 = 53 }));
}
// From T_Snnn_xax.c:72770:72790
// struct  I_Ul_D  {
//   int v1;
//   __tsu64 v2;
//   double v3;
// };

test "I_Ul_D" {
    var lv: c.I_Ul_D = undefined;
    try testing.expectSize(c.I_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_D(.{ .v1 = 31184, .v2 = 21032, .v3 = 1.0 }));
}
// From T_Snnn_xax.c:72795:72815
// struct  I_Ul_F  {
//   int v1;
//   __tsu64 v2;
//   float v3;
// };

test "I_Ul_F" {
    var lv: c.I_Ul_F = undefined;
    try testing.expectSize(c.I_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_F(.{ .v1 = 13631, .v2 = 23584, .v3 = 0.5 }));
}
// From T_Snnn_xax.c:72820:72840
// struct  I_Ul_I  {
//   int v1;
//   __tsu64 v2;
//   int v3;
// };

test "I_Ul_I" {
    var lv: c.I_Ul_I = undefined;
    try testing.expectSize(c.I_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_I(.{ .v1 = 24693, .v2 = 10012, .v3 = 25520 }));
}
// From T_Snnn_xax.c:72845:72865
// struct  I_Ul_Ip  {
//   int v1;
//   __tsu64 v2;
//   int *v3;
// };

test "I_Ul_Ip" {
    var lv: c.I_Ul_Ip = undefined;
    try testing.expectSize(c.I_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_Ip(.{ .v1 = 24608, .v2 = 31825, .v3 = null }));
}
// From T_Snnn_xax.c:72870:72890
// struct  I_Ul_L  {
//   int v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "I_Ul_L" {
    var lv: c.I_Ul_L = undefined;
    try testing.expectSize(c.I_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_L(.{ .v1 = 2359, .v2 = 23401, .v3 = 32239 }));
}
// From T_Snnn_xax.c:72895:72915
// struct  I_Ul_S  {
//   int v1;
//   __tsu64 v2;
//   short v3;
// };

test "I_Ul_S" {
    var lv: c.I_Ul_S = undefined;
    try testing.expectSize(c.I_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_S(.{ .v1 = 29907, .v2 = 31008, .v3 = 28563 }));
}
// From T_Snnn_xax.c:72920:72940
// struct  I_Ul_Uc  {
//   int v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "I_Ul_Uc" {
    var lv: c.I_Ul_Uc = undefined;
    try testing.expectSize(c.I_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_Uc(.{ .v1 = 425, .v2 = 18214, .v3 = 121 }));
}
// From T_Snnn_xax.c:72945:72965
// struct  I_Ul_Ui  {
//   int v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "I_Ul_Ui" {
    var lv: c.I_Ul_Ui = undefined;
    try testing.expectSize(c.I_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_Ui(.{ .v1 = 19879, .v2 = 18445, .v3 = 2904 }));
}
// From T_Snnn_xax.c:72970:72990
// struct  I_Ul_Ul  {
//   int v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "I_Ul_Ul" {
    var lv: c.I_Ul_Ul = undefined;
    try testing.expectSize(c.I_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_Ul(.{ .v1 = 22126, .v2 = 4806, .v3 = 9350 }));
}
// From T_Snnn_xax.c:72995:73015
// struct  I_Ul_Us  {
//   int v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "I_Ul_Us" {
    var lv: c.I_Ul_Us = undefined;
    try testing.expectSize(c.I_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_Us(.{ .v1 = 23692, .v2 = 18615, .v3 = 3046 }));
}
// From T_Snnn_xax.c:73020:73040
// struct  I_Ul_Vp  {
//   int v1;
//   __tsu64 v2;
//   void *v3;
// };

test "I_Ul_Vp" {
    var lv: c.I_Ul_Vp = undefined;
    try testing.expectSize(c.I_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
    try testing.expectOk(c.recv_I_Ul_Vp(.{ .v1 = 7177, .v2 = 6432, .v3 = null }));
}
// From T_Snnn_xax.c:73045:73063
// struct  I_Us  {
//   int v1;
//   unsigned short v2;
// };

test "I_Us" {
    var lv: c.I_Us = undefined;
    try testing.expectSize(c.I_Us, 8);
    try testing.expectAlign(c.I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectOk(c.recv_I_Us(.{ .v1 = 2019, .v2 = 19027 }));
}
// From T_Snnn_xax.c:73792:73812
// struct  I_Us_C  {
//   int v1;
//   unsigned short v2;
//   char v3;
// };

test "I_Us_C" {
    var lv: c.I_Us_C = undefined;
    try testing.expectSize(c.I_Us_C, 8);
    try testing.expectAlign(c.I_Us_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_Us_C(.{ .v1 = 13272, .v2 = 23928, .v3 = 68 }));
}
// From T_Snnn_xax.c:73817:73837
// struct  I_Us_D  {
//   int v1;
//   unsigned short v2;
//   double v3;
// };

test "I_Us_D" {
    var lv: c.I_Us_D = undefined;
    try testing.expectSize(c.I_Us_D, 16);
    try testing.expectAlign(c.I_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Us_D(.{ .v1 = 29968, .v2 = 8541, .v3 = 0.875 }));
}
// From T_Snnn_xax.c:73842:73862
// struct  I_Us_F  {
//   int v1;
//   unsigned short v2;
//   float v3;
// };

test "I_Us_F" {
    var lv: c.I_Us_F = undefined;
    try testing.expectSize(c.I_Us_F, 12);
    try testing.expectAlign(c.I_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Us_F(.{ .v1 = 2365, .v2 = 20461, .v3 = 4.5 }));
}
// From T_Snnn_xax.c:73867:73887
// struct  I_Us_I  {
//   int v1;
//   unsigned short v2;
//   int v3;
// };

test "I_Us_I" {
    var lv: c.I_Us_I = undefined;
    try testing.expectSize(c.I_Us_I, 12);
    try testing.expectAlign(c.I_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Us_I(.{ .v1 = 10524, .v2 = 18897, .v3 = 1284 }));
}
// From T_Snnn_xax.c:73892:73912
// struct  I_Us_Ip  {
//   int v1;
//   unsigned short v2;
//   int *v3;
// };

test "I_Us_Ip" {
    var lv: c.I_Us_Ip = undefined;
    try testing.expectSize(c.I_Us_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Us_Ip(.{ .v1 = 17227, .v2 = 19352, .v3 = null }));
}
// From T_Snnn_xax.c:73917:73937
// struct  I_Us_L  {
//   int v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "I_Us_L" {
    var lv: c.I_Us_L = undefined;
    try testing.expectSize(c.I_Us_L, 16);
    try testing.expectAlign(c.I_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Us_L(.{ .v1 = 12034, .v2 = 21029, .v3 = 616 }));
}
// From T_Snnn_xax.c:73942:73962
// struct  I_Us_S  {
//   int v1;
//   unsigned short v2;
//   short v3;
// };

test "I_Us_S" {
    var lv: c.I_Us_S = undefined;
    try testing.expectSize(c.I_Us_S, 8);
    try testing.expectAlign(c.I_Us_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_Us_S(.{ .v1 = 19176, .v2 = 14442, .v3 = 1020 }));
}
// From T_Snnn_xax.c:73967:73987
// struct  I_Us_Uc  {
//   int v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "I_Us_Uc" {
    var lv: c.I_Us_Uc = undefined;
    try testing.expectSize(c.I_Us_Uc, 8);
    try testing.expectAlign(c.I_Us_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_Us_Uc(.{ .v1 = 8333, .v2 = 4402, .v3 = 66 }));
}
// From T_Snnn_xax.c:73992:74012
// struct  I_Us_Ui  {
//   int v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "I_Us_Ui" {
    var lv: c.I_Us_Ui = undefined;
    try testing.expectSize(c.I_Us_Ui, 12);
    try testing.expectAlign(c.I_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Us_Ui(.{ .v1 = 73, .v2 = 15233, .v3 = 28358 }));
}
// From T_Snnn_xax.c:74017:74037
// struct  I_Us_Ul  {
//   int v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "I_Us_Ul" {
    var lv: c.I_Us_Ul = undefined;
    try testing.expectSize(c.I_Us_Ul, 16);
    try testing.expectAlign(c.I_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Us_Ul(.{ .v1 = 27440, .v2 = 23695, .v3 = 21809 }));
}
// From T_Snnn_xax.c:74042:74062
// struct  I_Us_Us  {
//   int v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "I_Us_Us" {
    var lv: c.I_Us_Us = undefined;
    try testing.expectSize(c.I_Us_Us, 8);
    try testing.expectAlign(c.I_Us_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
    try testing.expectOk(c.recv_I_Us_Us(.{ .v1 = 343, .v2 = 3972, .v3 = 6185 }));
}
// From T_Snnn_xax.c:74067:74087
// struct  I_Us_Vp  {
//   int v1;
//   unsigned short v2;
//   void *v3;
// };

test "I_Us_Vp" {
    var lv: c.I_Us_Vp = undefined;
    try testing.expectSize(c.I_Us_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
    try testing.expectOk(c.recv_I_Us_Vp(.{ .v1 = 20872, .v2 = 4076, .v3 = null }));
}
// From T_Snnn_xax.c:74092:74110
// struct  I_Vp  {
//   int v1;
//   void *v2;
// };

test "I_Vp" {
    var lv: c.I_Vp = undefined;
    try testing.expectSize(c.I_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectOk(c.recv_I_Vp(.{ .v1 = 14125, .v2 = null }));
}
// From T_Snnn_xax.c:74839:74859
// struct  I_Vp_C  {
//   int v1;
//   void *v2;
//   char v3;
// };

test "I_Vp_C" {
    var lv: c.I_Vp_C = undefined;
    try testing.expectSize(c.I_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_C(.{ .v1 = 5602, .v2 = null, .v3 = 126 }));
}
// From T_Snnn_xax.c:74864:74884
// struct  I_Vp_D  {
//   int v1;
//   void *v2;
//   double v3;
// };

test "I_Vp_D" {
    var lv: c.I_Vp_D = undefined;
    try testing.expectSize(c.I_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_D(.{ .v1 = 4595, .v2 = null, .v3 = 1.0 }));
}
// From T_Snnn_xax.c:74889:74909
// struct  I_Vp_F  {
//   int v1;
//   void *v2;
//   float v3;
// };

test "I_Vp_F" {
    var lv: c.I_Vp_F = undefined;
    try testing.expectSize(c.I_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_F(.{ .v1 = 10132, .v2 = null, .v3 = 4.5 }));
}
// From T_Snnn_xax.c:74914:74934
// struct  I_Vp_I  {
//   int v1;
//   void *v2;
//   int v3;
// };

test "I_Vp_I" {
    var lv: c.I_Vp_I = undefined;
    try testing.expectSize(c.I_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_I(.{ .v1 = 105, .v2 = null, .v3 = 25037 }));
}
// From T_Snnn_xax.c:74939:74959
// struct  I_Vp_Ip  {
//   int v1;
//   void *v2;
//   int *v3;
// };

test "I_Vp_Ip" {
    var lv: c.I_Vp_Ip = undefined;
    try testing.expectSize(c.I_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_Ip(.{ .v1 = 30849, .v2 = null, .v3 = null }));
}
// From T_Snnn_xax.c:74964:74984
// struct  I_Vp_L  {
//   int v1;
//   void *v2;
//   __tsi64 v3;
// };

test "I_Vp_L" {
    var lv: c.I_Vp_L = undefined;
    try testing.expectSize(c.I_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_L(.{ .v1 = 30130, .v2 = null, .v3 = 7703 }));
}
// From T_Snnn_xax.c:74989:75009
// struct  I_Vp_S  {
//   int v1;
//   void *v2;
//   short v3;
// };

test "I_Vp_S" {
    var lv: c.I_Vp_S = undefined;
    try testing.expectSize(c.I_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_S(.{ .v1 = 7707, .v2 = null, .v3 = 4892 }));
}
// From T_Snnn_xax.c:75014:75034
// struct  I_Vp_Uc  {
//   int v1;
//   void *v2;
//   unsigned char v3;
// };

test "I_Vp_Uc" {
    var lv: c.I_Vp_Uc = undefined;
    try testing.expectSize(c.I_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_Uc(.{ .v1 = 2818, .v2 = null, .v3 = 85 }));
}
// From T_Snnn_xax.c:75039:75059
// struct  I_Vp_Ui  {
//   int v1;
//   void *v2;
//   unsigned int v3;
// };

test "I_Vp_Ui" {
    var lv: c.I_Vp_Ui = undefined;
    try testing.expectSize(c.I_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_Ui(.{ .v1 = 16364, .v2 = null, .v3 = 5730 }));
}
// From T_Snnn_xax.c:75064:75084
// struct  I_Vp_Ul  {
//   int v1;
//   void *v2;
//   __tsu64 v3;
// };

test "I_Vp_Ul" {
    var lv: c.I_Vp_Ul = undefined;
    try testing.expectSize(c.I_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_Ul(.{ .v1 = 12923, .v2 = null, .v3 = 21204 }));
}
// From T_Snnn_xax.c:75089:75109
// struct  I_Vp_Us  {
//   int v1;
//   void *v2;
//   unsigned short v3;
// };

test "I_Vp_Us" {
    var lv: c.I_Vp_Us = undefined;
    try testing.expectSize(c.I_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_Us(.{ .v1 = 19642, .v2 = null, .v3 = 20053 }));
}
// From T_Snnn_xax.c:75114:75134
// struct  I_Vp_Vp  {
//   int v1;
//   void *v2;
//   void *v3;
// };

test "I_Vp_Vp" {
    var lv: c.I_Vp_Vp = undefined;
    try testing.expectSize(c.I_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
    try testing.expectOk(c.recv_I_Vp_Vp(.{ .v1 = 9745, .v2 = null, .v3 = null }));
}
// From T_Snnn_xax.c:75139:75155
// struct  Ip  {
//   int *v1;
// };

test "Ip" {
    var lv: c.Ip = undefined;
    try testing.expectSize(c.Ip, ABISELECT(8, 4));
    try testing.expectAlign(c.Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectOk(c.recv_Ip(.{ .v1 = null }));
}
