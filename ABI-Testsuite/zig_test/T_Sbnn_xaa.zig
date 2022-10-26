const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Sbnn_xaa.h");
});

// From T_Sbnn_xaa.c:20:26
test "B" {
    var lv: c.B = undefined;
    try testing.expectSize(c.B, 1);
    try testing.expectAlign(c.B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Sbnn_xaa.c:48:55
test "B_B" {
    var lv: c.B_B = undefined;
    try testing.expectSize(c.B_B, 2);
    try testing.expectAlign(c.B_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Sbnn_xaa.c:78:86
test "B_B_B" {
    var lv: c.B_B_B = undefined;
    try testing.expectSize(c.B_B_B, 3);
    try testing.expectAlign(c.B_B_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:1001:1009
test "B_B_C" {
    var lv: c.B_B_C = undefined;
    try testing.expectSize(c.B_B_C, 3);
    try testing.expectAlign(c.B_B_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:1032:1040
test "B_B_D" {
    var lv: c.B_B_D = undefined;
    try testing.expectSize(c.B_B_D, ABISELECT(16, 12));
    try testing.expectAlign(c.B_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:1063:1071
test "B_B_F" {
    var lv: c.B_B_F = undefined;
    try testing.expectSize(c.B_B_F, 8);
    try testing.expectAlign(c.B_B_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:1094:1102
test "B_B_I" {
    var lv: c.B_B_I = undefined;
    try testing.expectSize(c.B_B_I, 8);
    try testing.expectAlign(c.B_B_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:1125:1133
test "B_B_Ip" {
    var lv: c.B_B_Ip = undefined;
    try testing.expectSize(c.B_B_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.B_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:1156:1164
test "B_B_L" {
    var lv: c.B_B_L = undefined;
    try testing.expectSize(c.B_B_L, ABISELECT(16, 12));
    try testing.expectAlign(c.B_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:1187:1195
test "B_B_S" {
    var lv: c.B_B_S = undefined;
    try testing.expectSize(c.B_B_S, 4);
    try testing.expectAlign(c.B_B_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:1218:1226
test "B_B_Uc" {
    var lv: c.B_B_Uc = undefined;
    try testing.expectSize(c.B_B_Uc, 3);
    try testing.expectAlign(c.B_B_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:1249:1257
test "B_B_Ui" {
    var lv: c.B_B_Ui = undefined;
    try testing.expectSize(c.B_B_Ui, 8);
    try testing.expectAlign(c.B_B_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:1280:1288
test "B_B_Ul" {
    var lv: c.B_B_Ul = undefined;
    try testing.expectSize(c.B_B_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.B_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:1311:1319
test "B_B_Us" {
    var lv: c.B_B_Us = undefined;
    try testing.expectSize(c.B_B_Us, 4);
    try testing.expectAlign(c.B_B_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:1342:1350
test "B_B_Vp" {
    var lv: c.B_B_Vp = undefined;
    try testing.expectSize(c.B_B_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.B_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:39452:39459
test "B_C" {
    var lv: c.B_C = undefined;
    try testing.expectSize(c.B_C, 2);
    try testing.expectAlign(c.B_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Sbnn_xaa.c:39482:39490
test "B_C_B" {
    var lv: c.B_C_B = undefined;
    try testing.expectSize(c.B_C_B, 3);
    try testing.expectAlign(c.B_C_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:40405:40413
test "B_C_C" {
    var lv: c.B_C_C = undefined;
    try testing.expectSize(c.B_C_C, 3);
    try testing.expectAlign(c.B_C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:40436:40444
test "B_C_D" {
    var lv: c.B_C_D = undefined;
    try testing.expectSize(c.B_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.B_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:40467:40475
test "B_C_F" {
    var lv: c.B_C_F = undefined;
    try testing.expectSize(c.B_C_F, 8);
    try testing.expectAlign(c.B_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:40498:40506
test "B_C_I" {
    var lv: c.B_C_I = undefined;
    try testing.expectSize(c.B_C_I, 8);
    try testing.expectAlign(c.B_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:40529:40537
test "B_C_Ip" {
    var lv: c.B_C_Ip = undefined;
    try testing.expectSize(c.B_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.B_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:40560:40568
test "B_C_L" {
    var lv: c.B_C_L = undefined;
    try testing.expectSize(c.B_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.B_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:40591:40599
test "B_C_S" {
    var lv: c.B_C_S = undefined;
    try testing.expectSize(c.B_C_S, 4);
    try testing.expectAlign(c.B_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:40622:40630
test "B_C_Uc" {
    var lv: c.B_C_Uc = undefined;
    try testing.expectSize(c.B_C_Uc, 3);
    try testing.expectAlign(c.B_C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:40653:40661
test "B_C_Ui" {
    var lv: c.B_C_Ui = undefined;
    try testing.expectSize(c.B_C_Ui, 8);
    try testing.expectAlign(c.B_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:40684:40692
test "B_C_Ul" {
    var lv: c.B_C_Ul = undefined;
    try testing.expectSize(c.B_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.B_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:40715:40723
test "B_C_Us" {
    var lv: c.B_C_Us = undefined;
    try testing.expectSize(c.B_C_Us, 4);
    try testing.expectAlign(c.B_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:40746:40754
test "B_C_Vp" {
    var lv: c.B_C_Vp = undefined;
    try testing.expectSize(c.B_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.B_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:40776:40783
test "B_D" {
    var lv: c.B_D = undefined;
    try testing.expectSize(c.B_D, ABISELECT(16, 12));
    try testing.expectAlign(c.B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:40806:40814
test "B_D_B" {
    var lv: c.B_D_B = undefined;
    try testing.expectSize(c.B_D_B, ABISELECT(24, 16));
    try testing.expectAlign(c.B_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:41729:41737
test "B_D_C" {
    var lv: c.B_D_C = undefined;
    try testing.expectSize(c.B_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.B_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:41760:41768
test "B_D_D" {
    var lv: c.B_D_D = undefined;
    try testing.expectSize(c.B_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.B_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:41791:41799
test "B_D_F" {
    var lv: c.B_D_F = undefined;
    try testing.expectSize(c.B_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.B_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:41822:41830
test "B_D_I" {
    var lv: c.B_D_I = undefined;
    try testing.expectSize(c.B_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.B_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:41853:41861
test "B_D_Ip" {
    var lv: c.B_D_Ip = undefined;
    try testing.expectSize(c.B_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.B_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:41884:41892
test "B_D_L" {
    var lv: c.B_D_L = undefined;
    try testing.expectSize(c.B_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.B_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:41915:41923
test "B_D_S" {
    var lv: c.B_D_S = undefined;
    try testing.expectSize(c.B_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.B_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:41946:41954
test "B_D_Uc" {
    var lv: c.B_D_Uc = undefined;
    try testing.expectSize(c.B_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.B_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:41977:41985
test "B_D_Ui" {
    var lv: c.B_D_Ui = undefined;
    try testing.expectSize(c.B_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.B_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:42008:42016
test "B_D_Ul" {
    var lv: c.B_D_Ul = undefined;
    try testing.expectSize(c.B_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.B_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:42039:42047
test "B_D_Us" {
    var lv: c.B_D_Us = undefined;
    try testing.expectSize(c.B_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.B_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:42070:42078
test "B_D_Vp" {
    var lv: c.B_D_Vp = undefined;
    try testing.expectSize(c.B_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.B_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:42100:42107
test "B_F" {
    var lv: c.B_F = undefined;
    try testing.expectSize(c.B_F, 8);
    try testing.expectAlign(c.B_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Sbnn_xaa.c:42130:42138
test "B_F_B" {
    var lv: c.B_F_B = undefined;
    try testing.expectSize(c.B_F_B, 12);
    try testing.expectAlign(c.B_F_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43053:43061
test "B_F_C" {
    var lv: c.B_F_C = undefined;
    try testing.expectSize(c.B_F_C, 12);
    try testing.expectAlign(c.B_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43084:43092
test "B_F_D" {
    var lv: c.B_F_D = undefined;
    try testing.expectSize(c.B_F_D, 16);
    try testing.expectAlign(c.B_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43115:43123
test "B_F_F" {
    var lv: c.B_F_F = undefined;
    try testing.expectSize(c.B_F_F, 12);
    try testing.expectAlign(c.B_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43146:43154
test "B_F_I" {
    var lv: c.B_F_I = undefined;
    try testing.expectSize(c.B_F_I, 12);
    try testing.expectAlign(c.B_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43177:43185
test "B_F_Ip" {
    var lv: c.B_F_Ip = undefined;
    try testing.expectSize(c.B_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.B_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43208:43216
test "B_F_L" {
    var lv: c.B_F_L = undefined;
    try testing.expectSize(c.B_F_L, 16);
    try testing.expectAlign(c.B_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43239:43247
test "B_F_S" {
    var lv: c.B_F_S = undefined;
    try testing.expectSize(c.B_F_S, 12);
    try testing.expectAlign(c.B_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43270:43278
test "B_F_Uc" {
    var lv: c.B_F_Uc = undefined;
    try testing.expectSize(c.B_F_Uc, 12);
    try testing.expectAlign(c.B_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43301:43309
test "B_F_Ui" {
    var lv: c.B_F_Ui = undefined;
    try testing.expectSize(c.B_F_Ui, 12);
    try testing.expectAlign(c.B_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43332:43340
test "B_F_Ul" {
    var lv: c.B_F_Ul = undefined;
    try testing.expectSize(c.B_F_Ul, 16);
    try testing.expectAlign(c.B_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43363:43371
test "B_F_Us" {
    var lv: c.B_F_Us = undefined;
    try testing.expectSize(c.B_F_Us, 12);
    try testing.expectAlign(c.B_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43394:43402
test "B_F_Vp" {
    var lv: c.B_F_Vp = undefined;
    try testing.expectSize(c.B_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.B_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:43424:43431
test "B_I" {
    var lv: c.B_I = undefined;
    try testing.expectSize(c.B_I, 8);
    try testing.expectAlign(c.B_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Sbnn_xaa.c:43454:43462
test "B_I_B" {
    var lv: c.B_I_B = undefined;
    try testing.expectSize(c.B_I_B, 12);
    try testing.expectAlign(c.B_I_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44377:44385
test "B_I_C" {
    var lv: c.B_I_C = undefined;
    try testing.expectSize(c.B_I_C, 12);
    try testing.expectAlign(c.B_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44408:44416
test "B_I_D" {
    var lv: c.B_I_D = undefined;
    try testing.expectSize(c.B_I_D, 16);
    try testing.expectAlign(c.B_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44439:44447
test "B_I_F" {
    var lv: c.B_I_F = undefined;
    try testing.expectSize(c.B_I_F, 12);
    try testing.expectAlign(c.B_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44470:44478
test "B_I_I" {
    var lv: c.B_I_I = undefined;
    try testing.expectSize(c.B_I_I, 12);
    try testing.expectAlign(c.B_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44501:44509
test "B_I_Ip" {
    var lv: c.B_I_Ip = undefined;
    try testing.expectSize(c.B_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.B_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44532:44540
test "B_I_L" {
    var lv: c.B_I_L = undefined;
    try testing.expectSize(c.B_I_L, 16);
    try testing.expectAlign(c.B_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44563:44571
test "B_I_S" {
    var lv: c.B_I_S = undefined;
    try testing.expectSize(c.B_I_S, 12);
    try testing.expectAlign(c.B_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44594:44602
test "B_I_Uc" {
    var lv: c.B_I_Uc = undefined;
    try testing.expectSize(c.B_I_Uc, 12);
    try testing.expectAlign(c.B_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44625:44633
test "B_I_Ui" {
    var lv: c.B_I_Ui = undefined;
    try testing.expectSize(c.B_I_Ui, 12);
    try testing.expectAlign(c.B_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44656:44664
test "B_I_Ul" {
    var lv: c.B_I_Ul = undefined;
    try testing.expectSize(c.B_I_Ul, 16);
    try testing.expectAlign(c.B_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44687:44695
test "B_I_Us" {
    var lv: c.B_I_Us = undefined;
    try testing.expectSize(c.B_I_Us, 12);
    try testing.expectAlign(c.B_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44718:44726
test "B_I_Vp" {
    var lv: c.B_I_Vp = undefined;
    try testing.expectSize(c.B_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.B_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:44748:44755
test "B_Ip" {
    var lv: c.B_Ip = undefined;
    try testing.expectSize(c.B_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:44778:44786
test "B_Ip_B" {
    var lv: c.B_Ip_B = undefined;
    try testing.expectSize(c.B_Ip_B, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:45701:45709
test "B_Ip_C" {
    var lv: c.B_Ip_C = undefined;
    try testing.expectSize(c.B_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:45732:45740
test "B_Ip_D" {
    var lv: c.B_Ip_D = undefined;
    try testing.expectSize(c.B_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:45763:45771
test "B_Ip_F" {
    var lv: c.B_Ip_F = undefined;
    try testing.expectSize(c.B_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:45794:45802
test "B_Ip_I" {
    var lv: c.B_Ip_I = undefined;
    try testing.expectSize(c.B_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:45825:45833
test "B_Ip_Ip" {
    var lv: c.B_Ip_Ip = undefined;
    try testing.expectSize(c.B_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:45856:45864
test "B_Ip_L" {
    var lv: c.B_Ip_L = undefined;
    try testing.expectSize(c.B_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:45887:45895
test "B_Ip_S" {
    var lv: c.B_Ip_S = undefined;
    try testing.expectSize(c.B_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:45918:45926
test "B_Ip_Uc" {
    var lv: c.B_Ip_Uc = undefined;
    try testing.expectSize(c.B_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:45949:45957
test "B_Ip_Ui" {
    var lv: c.B_Ip_Ui = undefined;
    try testing.expectSize(c.B_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:45980:45988
test "B_Ip_Ul" {
    var lv: c.B_Ip_Ul = undefined;
    try testing.expectSize(c.B_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:46011:46019
test "B_Ip_Us" {
    var lv: c.B_Ip_Us = undefined;
    try testing.expectSize(c.B_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:46042:46050
test "B_Ip_Vp" {
    var lv: c.B_Ip_Vp = undefined;
    try testing.expectSize(c.B_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:46072:46079
test "B_L" {
    var lv: c.B_L = undefined;
    try testing.expectSize(c.B_L, ABISELECT(16, 12));
    try testing.expectAlign(c.B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:46102:46110
test "B_L_B" {
    var lv: c.B_L_B = undefined;
    try testing.expectSize(c.B_L_B, ABISELECT(24, 16));
    try testing.expectAlign(c.B_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47025:47033
test "B_L_C" {
    var lv: c.B_L_C = undefined;
    try testing.expectSize(c.B_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.B_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47056:47064
test "B_L_D" {
    var lv: c.B_L_D = undefined;
    try testing.expectSize(c.B_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.B_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47087:47095
test "B_L_F" {
    var lv: c.B_L_F = undefined;
    try testing.expectSize(c.B_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.B_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47118:47126
test "B_L_I" {
    var lv: c.B_L_I = undefined;
    try testing.expectSize(c.B_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.B_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47149:47157
test "B_L_Ip" {
    var lv: c.B_L_Ip = undefined;
    try testing.expectSize(c.B_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.B_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47180:47188
test "B_L_L" {
    var lv: c.B_L_L = undefined;
    try testing.expectSize(c.B_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.B_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47211:47219
test "B_L_S" {
    var lv: c.B_L_S = undefined;
    try testing.expectSize(c.B_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.B_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47242:47250
test "B_L_Uc" {
    var lv: c.B_L_Uc = undefined;
    try testing.expectSize(c.B_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.B_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47273:47281
test "B_L_Ui" {
    var lv: c.B_L_Ui = undefined;
    try testing.expectSize(c.B_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.B_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47304:47312
test "B_L_Ul" {
    var lv: c.B_L_Ul = undefined;
    try testing.expectSize(c.B_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.B_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47335:47343
test "B_L_Us" {
    var lv: c.B_L_Us = undefined;
    try testing.expectSize(c.B_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.B_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47366:47374
test "B_L_Vp" {
    var lv: c.B_L_Vp = undefined;
    try testing.expectSize(c.B_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.B_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:47396:47403
test "B_S" {
    var lv: c.B_S = undefined;
    try testing.expectSize(c.B_S, 4);
    try testing.expectAlign(c.B_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Sbnn_xaa.c:47426:47434
test "B_S_B" {
    var lv: c.B_S_B = undefined;
    try testing.expectSize(c.B_S_B, 6);
    try testing.expectAlign(c.B_S_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:48349:48357
test "B_S_C" {
    var lv: c.B_S_C = undefined;
    try testing.expectSize(c.B_S_C, 6);
    try testing.expectAlign(c.B_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:48380:48388
test "B_S_D" {
    var lv: c.B_S_D = undefined;
    try testing.expectSize(c.B_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.B_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:48411:48419
test "B_S_F" {
    var lv: c.B_S_F = undefined;
    try testing.expectSize(c.B_S_F, 8);
    try testing.expectAlign(c.B_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:48442:48450
test "B_S_I" {
    var lv: c.B_S_I = undefined;
    try testing.expectSize(c.B_S_I, 8);
    try testing.expectAlign(c.B_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:48473:48481
test "B_S_Ip" {
    var lv: c.B_S_Ip = undefined;
    try testing.expectSize(c.B_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.B_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:48504:48512
test "B_S_L" {
    var lv: c.B_S_L = undefined;
    try testing.expectSize(c.B_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.B_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:48535:48543
test "B_S_S" {
    var lv: c.B_S_S = undefined;
    try testing.expectSize(c.B_S_S, 6);
    try testing.expectAlign(c.B_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:48566:48574
test "B_S_Uc" {
    var lv: c.B_S_Uc = undefined;
    try testing.expectSize(c.B_S_Uc, 6);
    try testing.expectAlign(c.B_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:48597:48605
test "B_S_Ui" {
    var lv: c.B_S_Ui = undefined;
    try testing.expectSize(c.B_S_Ui, 8);
    try testing.expectAlign(c.B_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:48628:48636
test "B_S_Ul" {
    var lv: c.B_S_Ul = undefined;
    try testing.expectSize(c.B_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.B_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:48659:48667
test "B_S_Us" {
    var lv: c.B_S_Us = undefined;
    try testing.expectSize(c.B_S_Us, 6);
    try testing.expectAlign(c.B_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:48690:48698
test "B_S_Vp" {
    var lv: c.B_S_Vp = undefined;
    try testing.expectSize(c.B_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.B_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:48720:48727
test "B_Uc" {
    var lv: c.B_Uc = undefined;
    try testing.expectSize(c.B_Uc, 2);
    try testing.expectAlign(c.B_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Sbnn_xaa.c:48750:48758
test "B_Uc_B" {
    var lv: c.B_Uc_B = undefined;
    try testing.expectSize(c.B_Uc_B, 3);
    try testing.expectAlign(c.B_Uc_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:49673:49681
test "B_Uc_C" {
    var lv: c.B_Uc_C = undefined;
    try testing.expectSize(c.B_Uc_C, 3);
    try testing.expectAlign(c.B_Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:49704:49712
test "B_Uc_D" {
    var lv: c.B_Uc_D = undefined;
    try testing.expectSize(c.B_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.B_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:49735:49743
test "B_Uc_F" {
    var lv: c.B_Uc_F = undefined;
    try testing.expectSize(c.B_Uc_F, 8);
    try testing.expectAlign(c.B_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:49766:49774
test "B_Uc_I" {
    var lv: c.B_Uc_I = undefined;
    try testing.expectSize(c.B_Uc_I, 8);
    try testing.expectAlign(c.B_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:49797:49805
test "B_Uc_Ip" {
    var lv: c.B_Uc_Ip = undefined;
    try testing.expectSize(c.B_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.B_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:49828:49836
test "B_Uc_L" {
    var lv: c.B_Uc_L = undefined;
    try testing.expectSize(c.B_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.B_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:49859:49867
test "B_Uc_S" {
    var lv: c.B_Uc_S = undefined;
    try testing.expectSize(c.B_Uc_S, 4);
    try testing.expectAlign(c.B_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:49890:49898
test "B_Uc_Uc" {
    var lv: c.B_Uc_Uc = undefined;
    try testing.expectSize(c.B_Uc_Uc, 3);
    try testing.expectAlign(c.B_Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:49921:49929
test "B_Uc_Ui" {
    var lv: c.B_Uc_Ui = undefined;
    try testing.expectSize(c.B_Uc_Ui, 8);
    try testing.expectAlign(c.B_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:49952:49960
test "B_Uc_Ul" {
    var lv: c.B_Uc_Ul = undefined;
    try testing.expectSize(c.B_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.B_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:49983:49991
test "B_Uc_Us" {
    var lv: c.B_Uc_Us = undefined;
    try testing.expectSize(c.B_Uc_Us, 4);
    try testing.expectAlign(c.B_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xaa.c:50014:50022
test "B_Uc_Vp" {
    var lv: c.B_Uc_Vp = undefined;
    try testing.expectSize(c.B_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.B_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:50044:50051
test "B_Ui" {
    var lv: c.B_Ui = undefined;
    try testing.expectSize(c.B_Ui, 8);
    try testing.expectAlign(c.B_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Sbnn_xaa.c:50074:50082
test "B_Ui_B" {
    var lv: c.B_Ui_B = undefined;
    try testing.expectSize(c.B_Ui_B, 12);
    try testing.expectAlign(c.B_Ui_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:50997:51005
test "B_Ui_C" {
    var lv: c.B_Ui_C = undefined;
    try testing.expectSize(c.B_Ui_C, 12);
    try testing.expectAlign(c.B_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51028:51036
test "B_Ui_D" {
    var lv: c.B_Ui_D = undefined;
    try testing.expectSize(c.B_Ui_D, 16);
    try testing.expectAlign(c.B_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51059:51067
test "B_Ui_F" {
    var lv: c.B_Ui_F = undefined;
    try testing.expectSize(c.B_Ui_F, 12);
    try testing.expectAlign(c.B_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51090:51098
test "B_Ui_I" {
    var lv: c.B_Ui_I = undefined;
    try testing.expectSize(c.B_Ui_I, 12);
    try testing.expectAlign(c.B_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51121:51129
test "B_Ui_Ip" {
    var lv: c.B_Ui_Ip = undefined;
    try testing.expectSize(c.B_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.B_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51152:51160
test "B_Ui_L" {
    var lv: c.B_Ui_L = undefined;
    try testing.expectSize(c.B_Ui_L, 16);
    try testing.expectAlign(c.B_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51183:51191
test "B_Ui_S" {
    var lv: c.B_Ui_S = undefined;
    try testing.expectSize(c.B_Ui_S, 12);
    try testing.expectAlign(c.B_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51214:51222
test "B_Ui_Uc" {
    var lv: c.B_Ui_Uc = undefined;
    try testing.expectSize(c.B_Ui_Uc, 12);
    try testing.expectAlign(c.B_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51245:51253
test "B_Ui_Ui" {
    var lv: c.B_Ui_Ui = undefined;
    try testing.expectSize(c.B_Ui_Ui, 12);
    try testing.expectAlign(c.B_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51276:51284
test "B_Ui_Ul" {
    var lv: c.B_Ui_Ul = undefined;
    try testing.expectSize(c.B_Ui_Ul, 16);
    try testing.expectAlign(c.B_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51307:51315
test "B_Ui_Us" {
    var lv: c.B_Ui_Us = undefined;
    try testing.expectSize(c.B_Ui_Us, 12);
    try testing.expectAlign(c.B_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51338:51346
test "B_Ui_Vp" {
    var lv: c.B_Ui_Vp = undefined;
    try testing.expectSize(c.B_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.B_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xaa.c:51368:51375
test "B_Ul" {
    var lv: c.B_Ul = undefined;
    try testing.expectSize(c.B_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:51398:51406
test "B_Ul_B" {
    var lv: c.B_Ul_B = undefined;
    try testing.expectSize(c.B_Ul_B, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52321:52329
test "B_Ul_C" {
    var lv: c.B_Ul_C = undefined;
    try testing.expectSize(c.B_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52352:52360
test "B_Ul_D" {
    var lv: c.B_Ul_D = undefined;
    try testing.expectSize(c.B_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.B_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52383:52391
test "B_Ul_F" {
    var lv: c.B_Ul_F = undefined;
    try testing.expectSize(c.B_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52414:52422
test "B_Ul_I" {
    var lv: c.B_Ul_I = undefined;
    try testing.expectSize(c.B_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52445:52453
test "B_Ul_Ip" {
    var lv: c.B_Ul_Ip = undefined;
    try testing.expectSize(c.B_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52476:52484
test "B_Ul_L" {
    var lv: c.B_Ul_L = undefined;
    try testing.expectSize(c.B_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.B_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52507:52515
test "B_Ul_S" {
    var lv: c.B_Ul_S = undefined;
    try testing.expectSize(c.B_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52538:52546
test "B_Ul_Uc" {
    var lv: c.B_Ul_Uc = undefined;
    try testing.expectSize(c.B_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52569:52577
test "B_Ul_Ui" {
    var lv: c.B_Ul_Ui = undefined;
    try testing.expectSize(c.B_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52600:52608
test "B_Ul_Ul" {
    var lv: c.B_Ul_Ul = undefined;
    try testing.expectSize(c.B_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.B_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52631:52639
test "B_Ul_Us" {
    var lv: c.B_Ul_Us = undefined;
    try testing.expectSize(c.B_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52662:52670
test "B_Ul_Vp" {
    var lv: c.B_Ul_Vp = undefined;
    try testing.expectSize(c.B_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xaa.c:52692:52699
test "B_Us" {
    var lv: c.B_Us = undefined;
    try testing.expectSize(c.B_Us, 4);
    try testing.expectAlign(c.B_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Sbnn_xaa.c:52722:52730
test "B_Us_B" {
    var lv: c.B_Us_B = undefined;
    try testing.expectSize(c.B_Us_B, 6);
    try testing.expectAlign(c.B_Us_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:53645:53653
test "B_Us_C" {
    var lv: c.B_Us_C = undefined;
    try testing.expectSize(c.B_Us_C, 6);
    try testing.expectAlign(c.B_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:53676:53684
test "B_Us_D" {
    var lv: c.B_Us_D = undefined;
    try testing.expectSize(c.B_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.B_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:53707:53715
test "B_Us_F" {
    var lv: c.B_Us_F = undefined;
    try testing.expectSize(c.B_Us_F, 8);
    try testing.expectAlign(c.B_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:53738:53746
test "B_Us_I" {
    var lv: c.B_Us_I = undefined;
    try testing.expectSize(c.B_Us_I, 8);
    try testing.expectAlign(c.B_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:53769:53777
test "B_Us_Ip" {
    var lv: c.B_Us_Ip = undefined;
    try testing.expectSize(c.B_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.B_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:53800:53808
test "B_Us_L" {
    var lv: c.B_Us_L = undefined;
    try testing.expectSize(c.B_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.B_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:53831:53839
test "B_Us_S" {
    var lv: c.B_Us_S = undefined;
    try testing.expectSize(c.B_Us_S, 6);
    try testing.expectAlign(c.B_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:53862:53870
test "B_Us_Uc" {
    var lv: c.B_Us_Uc = undefined;
    try testing.expectSize(c.B_Us_Uc, 6);
    try testing.expectAlign(c.B_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:53893:53901
test "B_Us_Ui" {
    var lv: c.B_Us_Ui = undefined;
    try testing.expectSize(c.B_Us_Ui, 8);
    try testing.expectAlign(c.B_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:53924:53932
test "B_Us_Ul" {
    var lv: c.B_Us_Ul = undefined;
    try testing.expectSize(c.B_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.B_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:53955:53963
test "B_Us_Us" {
    var lv: c.B_Us_Us = undefined;
    try testing.expectSize(c.B_Us_Us, 6);
    try testing.expectAlign(c.B_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xaa.c:53986:53994
test "B_Us_Vp" {
    var lv: c.B_Us_Vp = undefined;
    try testing.expectSize(c.B_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.B_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:54016:54023
test "B_Vp" {
    var lv: c.B_Vp = undefined;
    try testing.expectSize(c.B_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Sbnn_xaa.c:54046:54054
test "B_Vp_B" {
    var lv: c.B_Vp_B = undefined;
    try testing.expectSize(c.B_Vp_B, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:54969:54977
test "B_Vp_C" {
    var lv: c.B_Vp_C = undefined;
    try testing.expectSize(c.B_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:55000:55008
test "B_Vp_D" {
    var lv: c.B_Vp_D = undefined;
    try testing.expectSize(c.B_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:55031:55039
test "B_Vp_F" {
    var lv: c.B_Vp_F = undefined;
    try testing.expectSize(c.B_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:55062:55070
test "B_Vp_I" {
    var lv: c.B_Vp_I = undefined;
    try testing.expectSize(c.B_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:55093:55101
test "B_Vp_Ip" {
    var lv: c.B_Vp_Ip = undefined;
    try testing.expectSize(c.B_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:55124:55132
test "B_Vp_L" {
    var lv: c.B_Vp_L = undefined;
    try testing.expectSize(c.B_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:55155:55163
test "B_Vp_S" {
    var lv: c.B_Vp_S = undefined;
    try testing.expectSize(c.B_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:55186:55194
test "B_Vp_Uc" {
    var lv: c.B_Vp_Uc = undefined;
    try testing.expectSize(c.B_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:55217:55225
test "B_Vp_Ui" {
    var lv: c.B_Vp_Ui = undefined;
    try testing.expectSize(c.B_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:55248:55256
test "B_Vp_Ul" {
    var lv: c.B_Vp_Ul = undefined;
    try testing.expectSize(c.B_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.B_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:55279:55287
test "B_Vp_Us" {
    var lv: c.B_Vp_Us = undefined;
    try testing.expectSize(c.B_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xaa.c:55310:55318
test "B_Vp_Vp" {
    var lv: c.B_Vp_Vp = undefined;
    try testing.expectSize(c.B_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.B_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
