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
}
