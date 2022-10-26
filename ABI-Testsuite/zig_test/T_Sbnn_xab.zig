const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Sbnn_xab.h");
});

// From T_Sbnn_xab.c:33200:33207
test "C_B" {
    var lv: c.C_B = undefined;
    try testing.expectSize(c.C_B, 2);
    try testing.expectAlign(c.C_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Sbnn_xab.c:33230:33238
test "C_B_B" {
    var lv: c.C_B_B = undefined;
    try testing.expectSize(c.C_B_B, 3);
    try testing.expectAlign(c.C_B_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:34153:34161
test "C_B_C" {
    var lv: c.C_B_C = undefined;
    try testing.expectSize(c.C_B_C, 3);
    try testing.expectAlign(c.C_B_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:34184:34192
test "C_B_D" {
    var lv: c.C_B_D = undefined;
    try testing.expectSize(c.C_B_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:34215:34223
test "C_B_F" {
    var lv: c.C_B_F = undefined;
    try testing.expectSize(c.C_B_F, 8);
    try testing.expectAlign(c.C_B_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:34246:34254
test "C_B_I" {
    var lv: c.C_B_I = undefined;
    try testing.expectSize(c.C_B_I, 8);
    try testing.expectAlign(c.C_B_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:34277:34285
test "C_B_Ip" {
    var lv: c.C_B_Ip = undefined;
    try testing.expectSize(c.C_B_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:34308:34316
test "C_B_L" {
    var lv: c.C_B_L = undefined;
    try testing.expectSize(c.C_B_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:34339:34347
test "C_B_S" {
    var lv: c.C_B_S = undefined;
    try testing.expectSize(c.C_B_S, 4);
    try testing.expectAlign(c.C_B_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:34370:34378
test "C_B_Uc" {
    var lv: c.C_B_Uc = undefined;
    try testing.expectSize(c.C_B_Uc, 3);
    try testing.expectAlign(c.C_B_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:34401:34409
test "C_B_Ui" {
    var lv: c.C_B_Ui = undefined;
    try testing.expectSize(c.C_B_Ui, 8);
    try testing.expectAlign(c.C_B_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:34432:34440
test "C_B_Ul" {
    var lv: c.C_B_Ul = undefined;
    try testing.expectSize(c.C_B_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:34463:34471
test "C_B_Us" {
    var lv: c.C_B_Us = undefined;
    try testing.expectSize(c.C_B_Us, 4);
    try testing.expectAlign(c.C_B_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:34494:34502
test "C_B_Vp" {
    var lv: c.C_B_Vp = undefined;
    try testing.expectSize(c.C_B_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:35417:35425
test "C_C_B" {
    var lv: c.C_C_B = undefined;
    try testing.expectSize(c.C_C_B, 3);
    try testing.expectAlign(c.C_C_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:35448:35456
test "C_D_B" {
    var lv: c.C_D_B = undefined;
    try testing.expectSize(c.C_D_B, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:35479:35487
test "C_F_B" {
    var lv: c.C_F_B = undefined;
    try testing.expectSize(c.C_F_B, 12);
    try testing.expectAlign(c.C_F_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:35510:35518
test "C_I_B" {
    var lv: c.C_I_B = undefined;
    try testing.expectSize(c.C_I_B, 12);
    try testing.expectAlign(c.C_I_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:35541:35549
test "C_Ip_B" {
    var lv: c.C_Ip_B = undefined;
    try testing.expectSize(c.C_Ip_B, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:35572:35580
test "C_L_B" {
    var lv: c.C_L_B = undefined;
    try testing.expectSize(c.C_L_B, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:35603:35611
test "C_S_B" {
    var lv: c.C_S_B = undefined;
    try testing.expectSize(c.C_S_B, 6);
    try testing.expectAlign(c.C_S_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:35634:35642
test "C_Uc_B" {
    var lv: c.C_Uc_B = undefined;
    try testing.expectSize(c.C_Uc_B, 3);
    try testing.expectAlign(c.C_Uc_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:35665:35673
test "C_Ui_B" {
    var lv: c.C_Ui_B = undefined;
    try testing.expectSize(c.C_Ui_B, 12);
    try testing.expectAlign(c.C_Ui_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:35696:35704
test "C_Ul_B" {
    var lv: c.C_Ul_B = undefined;
    try testing.expectSize(c.C_Ul_B, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:35727:35735
test "C_Us_B" {
    var lv: c.C_Us_B = undefined;
    try testing.expectSize(c.C_Us_B, 6);
    try testing.expectAlign(c.C_Us_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:35758:35766
test "C_Vp_B" {
    var lv: c.C_Vp_B = undefined;
    try testing.expectSize(c.C_Vp_B, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:35788:35795
test "D_B" {
    var lv: c.D_B = undefined;
    try testing.expectSize(c.D_B, ABISELECT(16, 12));
    try testing.expectAlign(c.D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Sbnn_xab.c:35818:35826
test "D_B_B" {
    var lv: c.D_B_B = undefined;
    try testing.expectSize(c.D_B_B, ABISELECT(16, 12));
    try testing.expectAlign(c.D_B_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:36741:36749
test "D_B_C" {
    var lv: c.D_B_C = undefined;
    try testing.expectSize(c.D_B_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_B_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:36772:36780
test "D_B_D" {
    var lv: c.D_B_D = undefined;
    try testing.expectSize(c.D_B_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:36803:36811
test "D_B_F" {
    var lv: c.D_B_F = undefined;
    try testing.expectSize(c.D_B_F, 16);
    try testing.expectAlign(c.D_B_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:36834:36842
test "D_B_I" {
    var lv: c.D_B_I = undefined;
    try testing.expectSize(c.D_B_I, 16);
    try testing.expectAlign(c.D_B_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:36865:36873
test "D_B_Ip" {
    var lv: c.D_B_Ip = undefined;
    try testing.expectSize(c.D_B_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:36896:36904
test "D_B_L" {
    var lv: c.D_B_L = undefined;
    try testing.expectSize(c.D_B_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:36927:36935
test "D_B_S" {
    var lv: c.D_B_S = undefined;
    try testing.expectSize(c.D_B_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_B_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:36958:36966
test "D_B_Uc" {
    var lv: c.D_B_Uc = undefined;
    try testing.expectSize(c.D_B_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_B_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:36989:36997
test "D_B_Ui" {
    var lv: c.D_B_Ui = undefined;
    try testing.expectSize(c.D_B_Ui, 16);
    try testing.expectAlign(c.D_B_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:37020:37028
test "D_B_Ul" {
    var lv: c.D_B_Ul = undefined;
    try testing.expectSize(c.D_B_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:37051:37059
test "D_B_Us" {
    var lv: c.D_B_Us = undefined;
    try testing.expectSize(c.D_B_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_B_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:37082:37090
test "D_B_Vp" {
    var lv: c.D_B_Vp = undefined;
    try testing.expectSize(c.D_B_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:38005:38013
test "D_C_B" {
    var lv: c.D_C_B = undefined;
    try testing.expectSize(c.D_C_B, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:38036:38044
test "D_D_B" {
    var lv: c.D_D_B = undefined;
    try testing.expectSize(c.D_D_B, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Sbnn_xab.c:38067:38075
test "D_F_B" {
    var lv: c.D_F_B = undefined;
    try testing.expectSize(c.D_F_B, 16);
    try testing.expectAlign(c.D_F_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:38098:38106
test "D_I_B" {
    var lv: c.D_I_B = undefined;
    try testing.expectSize(c.D_I_B, 16);
    try testing.expectAlign(c.D_I_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:38129:38137
test "D_Ip_B" {
    var lv: c.D_Ip_B = undefined;
    try testing.expectSize(c.D_Ip_B, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:38160:38168
test "D_L_B" {
    var lv: c.D_L_B = undefined;
    try testing.expectSize(c.D_L_B, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Sbnn_xab.c:38191:38199
test "D_S_B" {
    var lv: c.D_S_B = undefined;
    try testing.expectSize(c.D_S_B, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:38222:38230
test "D_Uc_B" {
    var lv: c.D_Uc_B = undefined;
    try testing.expectSize(c.D_Uc_B, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:38253:38261
test "D_Ui_B" {
    var lv: c.D_Ui_B = undefined;
    try testing.expectSize(c.D_Ui_B, 16);
    try testing.expectAlign(c.D_Ui_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:38284:38292
test "D_Ul_B" {
    var lv: c.D_Ul_B = undefined;
    try testing.expectSize(c.D_Ul_B, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Sbnn_xab.c:38315:38323
test "D_Us_B" {
    var lv: c.D_Us_B = undefined;
    try testing.expectSize(c.D_Us_B, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:38346:38354
test "D_Vp_B" {
    var lv: c.D_Vp_B = undefined;
    try testing.expectSize(c.D_Vp_B, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:38376:38383
test "F_B" {
    var lv: c.F_B = undefined;
    try testing.expectSize(c.F_B, 8);
    try testing.expectAlign(c.F_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Sbnn_xab.c:38406:38414
test "F_B_B" {
    var lv: c.F_B_B = undefined;
    try testing.expectSize(c.F_B_B, 8);
    try testing.expectAlign(c.F_B_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:39329:39337
test "F_B_C" {
    var lv: c.F_B_C = undefined;
    try testing.expectSize(c.F_B_C, 8);
    try testing.expectAlign(c.F_B_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:39360:39368
test "F_B_D" {
    var lv: c.F_B_D = undefined;
    try testing.expectSize(c.F_B_D, 16);
    try testing.expectAlign(c.F_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:39391:39399
test "F_B_F" {
    var lv: c.F_B_F = undefined;
    try testing.expectSize(c.F_B_F, 12);
    try testing.expectAlign(c.F_B_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:39422:39430
test "F_B_I" {
    var lv: c.F_B_I = undefined;
    try testing.expectSize(c.F_B_I, 12);
    try testing.expectAlign(c.F_B_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:39453:39461
test "F_B_Ip" {
    var lv: c.F_B_Ip = undefined;
    try testing.expectSize(c.F_B_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:39484:39492
test "F_B_L" {
    var lv: c.F_B_L = undefined;
    try testing.expectSize(c.F_B_L, 16);
    try testing.expectAlign(c.F_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:39515:39523
test "F_B_S" {
    var lv: c.F_B_S = undefined;
    try testing.expectSize(c.F_B_S, 8);
    try testing.expectAlign(c.F_B_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:39546:39554
test "F_B_Uc" {
    var lv: c.F_B_Uc = undefined;
    try testing.expectSize(c.F_B_Uc, 8);
    try testing.expectAlign(c.F_B_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:39577:39585
test "F_B_Ui" {
    var lv: c.F_B_Ui = undefined;
    try testing.expectSize(c.F_B_Ui, 12);
    try testing.expectAlign(c.F_B_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:39608:39616
test "F_B_Ul" {
    var lv: c.F_B_Ul = undefined;
    try testing.expectSize(c.F_B_Ul, 16);
    try testing.expectAlign(c.F_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:39639:39647
test "F_B_Us" {
    var lv: c.F_B_Us = undefined;
    try testing.expectSize(c.F_B_Us, 8);
    try testing.expectAlign(c.F_B_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:39670:39678
test "F_B_Vp" {
    var lv: c.F_B_Vp = undefined;
    try testing.expectSize(c.F_B_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:40593:40601
test "F_C_B" {
    var lv: c.F_C_B = undefined;
    try testing.expectSize(c.F_C_B, 8);
    try testing.expectAlign(c.F_C_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:40624:40632
test "F_D_B" {
    var lv: c.F_D_B = undefined;
    try testing.expectSize(c.F_D_B, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:40655:40663
test "F_F_B" {
    var lv: c.F_F_B = undefined;
    try testing.expectSize(c.F_F_B, 12);
    try testing.expectAlign(c.F_F_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:40686:40694
test "F_I_B" {
    var lv: c.F_I_B = undefined;
    try testing.expectSize(c.F_I_B, 12);
    try testing.expectAlign(c.F_I_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:40717:40725
test "F_Ip_B" {
    var lv: c.F_Ip_B = undefined;
    try testing.expectSize(c.F_Ip_B, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:40748:40756
test "F_L_B" {
    var lv: c.F_L_B = undefined;
    try testing.expectSize(c.F_L_B, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:40779:40787
test "F_S_B" {
    var lv: c.F_S_B = undefined;
    try testing.expectSize(c.F_S_B, 8);
    try testing.expectAlign(c.F_S_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:40810:40818
test "F_Uc_B" {
    var lv: c.F_Uc_B = undefined;
    try testing.expectSize(c.F_Uc_B, 8);
    try testing.expectAlign(c.F_Uc_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:40841:40849
test "F_Ui_B" {
    var lv: c.F_Ui_B = undefined;
    try testing.expectSize(c.F_Ui_B, 12);
    try testing.expectAlign(c.F_Ui_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:40872:40880
test "F_Ul_B" {
    var lv: c.F_Ul_B = undefined;
    try testing.expectSize(c.F_Ul_B, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:40903:40911
test "F_Us_B" {
    var lv: c.F_Us_B = undefined;
    try testing.expectSize(c.F_Us_B, 8);
    try testing.expectAlign(c.F_Us_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:40934:40942
test "F_Vp_B" {
    var lv: c.F_Vp_B = undefined;
    try testing.expectSize(c.F_Vp_B, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:40964:40971
test "I_B" {
    var lv: c.I_B = undefined;
    try testing.expectSize(c.I_B, 8);
    try testing.expectAlign(c.I_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Sbnn_xab.c:40994:41002
test "I_B_B" {
    var lv: c.I_B_B = undefined;
    try testing.expectSize(c.I_B_B, 8);
    try testing.expectAlign(c.I_B_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:41917:41925
test "I_B_C" {
    var lv: c.I_B_C = undefined;
    try testing.expectSize(c.I_B_C, 8);
    try testing.expectAlign(c.I_B_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:41948:41956
test "I_B_D" {
    var lv: c.I_B_D = undefined;
    try testing.expectSize(c.I_B_D, 16);
    try testing.expectAlign(c.I_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:41979:41987
test "I_B_F" {
    var lv: c.I_B_F = undefined;
    try testing.expectSize(c.I_B_F, 12);
    try testing.expectAlign(c.I_B_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:42010:42018
test "I_B_I" {
    var lv: c.I_B_I = undefined;
    try testing.expectSize(c.I_B_I, 12);
    try testing.expectAlign(c.I_B_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:42041:42049
test "I_B_Ip" {
    var lv: c.I_B_Ip = undefined;
    try testing.expectSize(c.I_B_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:42072:42080
test "I_B_L" {
    var lv: c.I_B_L = undefined;
    try testing.expectSize(c.I_B_L, 16);
    try testing.expectAlign(c.I_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:42103:42111
test "I_B_S" {
    var lv: c.I_B_S = undefined;
    try testing.expectSize(c.I_B_S, 8);
    try testing.expectAlign(c.I_B_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:42134:42142
test "I_B_Uc" {
    var lv: c.I_B_Uc = undefined;
    try testing.expectSize(c.I_B_Uc, 8);
    try testing.expectAlign(c.I_B_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:42165:42173
test "I_B_Ui" {
    var lv: c.I_B_Ui = undefined;
    try testing.expectSize(c.I_B_Ui, 12);
    try testing.expectAlign(c.I_B_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:42196:42204
test "I_B_Ul" {
    var lv: c.I_B_Ul = undefined;
    try testing.expectSize(c.I_B_Ul, 16);
    try testing.expectAlign(c.I_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:42227:42235
test "I_B_Us" {
    var lv: c.I_B_Us = undefined;
    try testing.expectSize(c.I_B_Us, 8);
    try testing.expectAlign(c.I_B_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:42258:42266
test "I_B_Vp" {
    var lv: c.I_B_Vp = undefined;
    try testing.expectSize(c.I_B_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:43181:43189
test "I_C_B" {
    var lv: c.I_C_B = undefined;
    try testing.expectSize(c.I_C_B, 8);
    try testing.expectAlign(c.I_C_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:43212:43220
test "I_D_B" {
    var lv: c.I_D_B = undefined;
    try testing.expectSize(c.I_D_B, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:43243:43251
test "I_F_B" {
    var lv: c.I_F_B = undefined;
    try testing.expectSize(c.I_F_B, 12);
    try testing.expectAlign(c.I_F_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:43274:43282
test "I_I_B" {
    var lv: c.I_I_B = undefined;
    try testing.expectSize(c.I_I_B, 12);
    try testing.expectAlign(c.I_I_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:43305:43313
test "I_Ip_B" {
    var lv: c.I_Ip_B = undefined;
    try testing.expectSize(c.I_Ip_B, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:43336:43344
test "I_L_B" {
    var lv: c.I_L_B = undefined;
    try testing.expectSize(c.I_L_B, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:43367:43375
test "I_S_B" {
    var lv: c.I_S_B = undefined;
    try testing.expectSize(c.I_S_B, 8);
    try testing.expectAlign(c.I_S_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:43398:43406
test "I_Uc_B" {
    var lv: c.I_Uc_B = undefined;
    try testing.expectSize(c.I_Uc_B, 8);
    try testing.expectAlign(c.I_Uc_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:43429:43437
test "I_Ui_B" {
    var lv: c.I_Ui_B = undefined;
    try testing.expectSize(c.I_Ui_B, 12);
    try testing.expectAlign(c.I_Ui_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:43460:43468
test "I_Ul_B" {
    var lv: c.I_Ul_B = undefined;
    try testing.expectSize(c.I_Ul_B, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:43491:43499
test "I_Us_B" {
    var lv: c.I_Us_B = undefined;
    try testing.expectSize(c.I_Us_B, 8);
    try testing.expectAlign(c.I_Us_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:43522:43530
test "I_Vp_B" {
    var lv: c.I_Vp_B = undefined;
    try testing.expectSize(c.I_Vp_B, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:43552:43559
test "Ip_B" {
    var lv: c.Ip_B = undefined;
    try testing.expectSize(c.Ip_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:43582:43590
test "Ip_B_B" {
    var lv: c.Ip_B_B = undefined;
    try testing.expectSize(c.Ip_B_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_B_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Sbnn_xab.c:44505:44513
test "Ip_B_C" {
    var lv: c.Ip_B_C = undefined;
    try testing.expectSize(c.Ip_B_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_B_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Sbnn_xab.c:44536:44544
test "Ip_B_D" {
    var lv: c.Ip_B_D = undefined;
    try testing.expectSize(c.Ip_B_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:44567:44575
test "Ip_B_F" {
    var lv: c.Ip_B_F = undefined;
    try testing.expectSize(c.Ip_B_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_B_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:44598:44606
test "Ip_B_I" {
    var lv: c.Ip_B_I = undefined;
    try testing.expectSize(c.Ip_B_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_B_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:44629:44637
test "Ip_B_Ip" {
    var lv: c.Ip_B_Ip = undefined;
    try testing.expectSize(c.Ip_B_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:44660:44668
test "Ip_B_L" {
    var lv: c.Ip_B_L = undefined;
    try testing.expectSize(c.Ip_B_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:44691:44699
test "Ip_B_S" {
    var lv: c.Ip_B_S = undefined;
    try testing.expectSize(c.Ip_B_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_B_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Sbnn_xab.c:44722:44730
test "Ip_B_Uc" {
    var lv: c.Ip_B_Uc = undefined;
    try testing.expectSize(c.Ip_B_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_B_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Sbnn_xab.c:44753:44761
test "Ip_B_Ui" {
    var lv: c.Ip_B_Ui = undefined;
    try testing.expectSize(c.Ip_B_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_B_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:44784:44792
test "Ip_B_Ul" {
    var lv: c.Ip_B_Ul = undefined;
    try testing.expectSize(c.Ip_B_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:44815:44823
test "Ip_B_Us" {
    var lv: c.Ip_B_Us = undefined;
    try testing.expectSize(c.Ip_B_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_B_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Sbnn_xab.c:44846:44854
test "Ip_B_Vp" {
    var lv: c.Ip_B_Vp = undefined;
    try testing.expectSize(c.Ip_B_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:45769:45777
test "Ip_C_B" {
    var lv: c.Ip_C_B = undefined;
    try testing.expectSize(c.Ip_C_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Sbnn_xab.c:45800:45808
test "Ip_D_B" {
    var lv: c.Ip_D_B = undefined;
    try testing.expectSize(c.Ip_D_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:45831:45839
test "Ip_F_B" {
    var lv: c.Ip_F_B = undefined;
    try testing.expectSize(c.Ip_F_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:45862:45870
test "Ip_I_B" {
    var lv: c.Ip_I_B = undefined;
    try testing.expectSize(c.Ip_I_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:45893:45901
test "Ip_Ip_B" {
    var lv: c.Ip_Ip_B = undefined;
    try testing.expectSize(c.Ip_Ip_B, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:45924:45932
test "Ip_L_B" {
    var lv: c.Ip_L_B = undefined;
    try testing.expectSize(c.Ip_L_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:45955:45963
test "Ip_S_B" {
    var lv: c.Ip_S_B = undefined;
    try testing.expectSize(c.Ip_S_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Sbnn_xab.c:45986:45994
test "Ip_Uc_B" {
    var lv: c.Ip_Uc_B = undefined;
    try testing.expectSize(c.Ip_Uc_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Sbnn_xab.c:46017:46025
test "Ip_Ui_B" {
    var lv: c.Ip_Ui_B = undefined;
    try testing.expectSize(c.Ip_Ui_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:46048:46056
test "Ip_Ul_B" {
    var lv: c.Ip_Ul_B = undefined;
    try testing.expectSize(c.Ip_Ul_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:46079:46087
test "Ip_Us_B" {
    var lv: c.Ip_Us_B = undefined;
    try testing.expectSize(c.Ip_Us_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Sbnn_xab.c:46110:46118
test "Ip_Vp_B" {
    var lv: c.Ip_Vp_B = undefined;
    try testing.expectSize(c.Ip_Vp_B, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:46140:46147
test "L_B" {
    var lv: c.L_B = undefined;
    try testing.expectSize(c.L_B, ABISELECT(16, 12));
    try testing.expectAlign(c.L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Sbnn_xab.c:46170:46178
test "L_B_B" {
    var lv: c.L_B_B = undefined;
    try testing.expectSize(c.L_B_B, ABISELECT(16, 12));
    try testing.expectAlign(c.L_B_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:47093:47101
test "L_B_C" {
    var lv: c.L_B_C = undefined;
    try testing.expectSize(c.L_B_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_B_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:47124:47132
test "L_B_D" {
    var lv: c.L_B_D = undefined;
    try testing.expectSize(c.L_B_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:47155:47163
test "L_B_F" {
    var lv: c.L_B_F = undefined;
    try testing.expectSize(c.L_B_F, 16);
    try testing.expectAlign(c.L_B_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:47186:47194
test "L_B_I" {
    var lv: c.L_B_I = undefined;
    try testing.expectSize(c.L_B_I, 16);
    try testing.expectAlign(c.L_B_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:47217:47225
test "L_B_Ip" {
    var lv: c.L_B_Ip = undefined;
    try testing.expectSize(c.L_B_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:47248:47256
test "L_B_L" {
    var lv: c.L_B_L = undefined;
    try testing.expectSize(c.L_B_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:47279:47287
test "L_B_S" {
    var lv: c.L_B_S = undefined;
    try testing.expectSize(c.L_B_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_B_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:47310:47318
test "L_B_Uc" {
    var lv: c.L_B_Uc = undefined;
    try testing.expectSize(c.L_B_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_B_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:47341:47349
test "L_B_Ui" {
    var lv: c.L_B_Ui = undefined;
    try testing.expectSize(c.L_B_Ui, 16);
    try testing.expectAlign(c.L_B_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:47372:47380
test "L_B_Ul" {
    var lv: c.L_B_Ul = undefined;
    try testing.expectSize(c.L_B_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:47403:47411
test "L_B_Us" {
    var lv: c.L_B_Us = undefined;
    try testing.expectSize(c.L_B_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_B_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:47434:47442
test "L_B_Vp" {
    var lv: c.L_B_Vp = undefined;
    try testing.expectSize(c.L_B_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:48357:48365
test "L_C_B" {
    var lv: c.L_C_B = undefined;
    try testing.expectSize(c.L_C_B, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:48388:48396
test "L_D_B" {
    var lv: c.L_D_B = undefined;
    try testing.expectSize(c.L_D_B, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Sbnn_xab.c:48419:48427
test "L_F_B" {
    var lv: c.L_F_B = undefined;
    try testing.expectSize(c.L_F_B, 16);
    try testing.expectAlign(c.L_F_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:48450:48458
test "L_I_B" {
    var lv: c.L_I_B = undefined;
    try testing.expectSize(c.L_I_B, 16);
    try testing.expectAlign(c.L_I_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:48481:48489
test "L_Ip_B" {
    var lv: c.L_Ip_B = undefined;
    try testing.expectSize(c.L_Ip_B, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:48512:48520
test "L_L_B" {
    var lv: c.L_L_B = undefined;
    try testing.expectSize(c.L_L_B, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Sbnn_xab.c:48543:48551
test "L_S_B" {
    var lv: c.L_S_B = undefined;
    try testing.expectSize(c.L_S_B, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:48574:48582
test "L_Uc_B" {
    var lv: c.L_Uc_B = undefined;
    try testing.expectSize(c.L_Uc_B, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:48605:48613
test "L_Ui_B" {
    var lv: c.L_Ui_B = undefined;
    try testing.expectSize(c.L_Ui_B, 16);
    try testing.expectAlign(c.L_Ui_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:48636:48644
test "L_Ul_B" {
    var lv: c.L_Ul_B = undefined;
    try testing.expectSize(c.L_Ul_B, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Sbnn_xab.c:48667:48675
test "L_Us_B" {
    var lv: c.L_Us_B = undefined;
    try testing.expectSize(c.L_Us_B, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:48698:48706
test "L_Vp_B" {
    var lv: c.L_Vp_B = undefined;
    try testing.expectSize(c.L_Vp_B, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:48728:48735
test "S_B" {
    var lv: c.S_B = undefined;
    try testing.expectSize(c.S_B, 4);
    try testing.expectAlign(c.S_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Sbnn_xab.c:48758:48766
test "S_B_B" {
    var lv: c.S_B_B = undefined;
    try testing.expectSize(c.S_B_B, 4);
    try testing.expectAlign(c.S_B_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Sbnn_xab.c:49681:49689
test "S_B_C" {
    var lv: c.S_B_C = undefined;
    try testing.expectSize(c.S_B_C, 4);
    try testing.expectAlign(c.S_B_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Sbnn_xab.c:49712:49720
test "S_B_D" {
    var lv: c.S_B_D = undefined;
    try testing.expectSize(c.S_B_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:49743:49751
test "S_B_F" {
    var lv: c.S_B_F = undefined;
    try testing.expectSize(c.S_B_F, 8);
    try testing.expectAlign(c.S_B_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:49774:49782
test "S_B_I" {
    var lv: c.S_B_I = undefined;
    try testing.expectSize(c.S_B_I, 8);
    try testing.expectAlign(c.S_B_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:49805:49813
test "S_B_Ip" {
    var lv: c.S_B_Ip = undefined;
    try testing.expectSize(c.S_B_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:49836:49844
test "S_B_L" {
    var lv: c.S_B_L = undefined;
    try testing.expectSize(c.S_B_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:49867:49875
test "S_B_S" {
    var lv: c.S_B_S = undefined;
    try testing.expectSize(c.S_B_S, 6);
    try testing.expectAlign(c.S_B_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:49898:49906
test "S_B_Uc" {
    var lv: c.S_B_Uc = undefined;
    try testing.expectSize(c.S_B_Uc, 4);
    try testing.expectAlign(c.S_B_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Sbnn_xab.c:49929:49937
test "S_B_Ui" {
    var lv: c.S_B_Ui = undefined;
    try testing.expectSize(c.S_B_Ui, 8);
    try testing.expectAlign(c.S_B_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:49960:49968
test "S_B_Ul" {
    var lv: c.S_B_Ul = undefined;
    try testing.expectSize(c.S_B_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:49991:49999
test "S_B_Us" {
    var lv: c.S_B_Us = undefined;
    try testing.expectSize(c.S_B_Us, 6);
    try testing.expectAlign(c.S_B_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:50022:50030
test "S_B_Vp" {
    var lv: c.S_B_Vp = undefined;
    try testing.expectSize(c.S_B_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:50945:50953
test "S_C_B" {
    var lv: c.S_C_B = undefined;
    try testing.expectSize(c.S_C_B, 4);
    try testing.expectAlign(c.S_C_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Sbnn_xab.c:50976:50984
test "S_D_B" {
    var lv: c.S_D_B = undefined;
    try testing.expectSize(c.S_D_B, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:51007:51015
test "S_F_B" {
    var lv: c.S_F_B = undefined;
    try testing.expectSize(c.S_F_B, 12);
    try testing.expectAlign(c.S_F_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:51038:51046
test "S_I_B" {
    var lv: c.S_I_B = undefined;
    try testing.expectSize(c.S_I_B, 12);
    try testing.expectAlign(c.S_I_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:51069:51077
test "S_Ip_B" {
    var lv: c.S_Ip_B = undefined;
    try testing.expectSize(c.S_Ip_B, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:51100:51108
test "S_L_B" {
    var lv: c.S_L_B = undefined;
    try testing.expectSize(c.S_L_B, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:51131:51139
test "S_S_B" {
    var lv: c.S_S_B = undefined;
    try testing.expectSize(c.S_S_B, 6);
    try testing.expectAlign(c.S_S_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:51162:51170
test "S_Uc_B" {
    var lv: c.S_Uc_B = undefined;
    try testing.expectSize(c.S_Uc_B, 4);
    try testing.expectAlign(c.S_Uc_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Sbnn_xab.c:51193:51201
test "S_Ui_B" {
    var lv: c.S_Ui_B = undefined;
    try testing.expectSize(c.S_Ui_B, 12);
    try testing.expectAlign(c.S_Ui_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:51224:51232
test "S_Ul_B" {
    var lv: c.S_Ul_B = undefined;
    try testing.expectSize(c.S_Ul_B, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:51255:51263
test "S_Us_B" {
    var lv: c.S_Us_B = undefined;
    try testing.expectSize(c.S_Us_B, 6);
    try testing.expectAlign(c.S_Us_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:51286:51294
test "S_Vp_B" {
    var lv: c.S_Vp_B = undefined;
    try testing.expectSize(c.S_Vp_B, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:51316:51323
test "Uc_B" {
    var lv: c.Uc_B = undefined;
    try testing.expectSize(c.Uc_B, 2);
    try testing.expectAlign(c.Uc_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Sbnn_xab.c:51346:51354
test "Uc_B_B" {
    var lv: c.Uc_B_B = undefined;
    try testing.expectSize(c.Uc_B_B, 3);
    try testing.expectAlign(c.Uc_B_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:52269:52277
test "Uc_B_C" {
    var lv: c.Uc_B_C = undefined;
    try testing.expectSize(c.Uc_B_C, 3);
    try testing.expectAlign(c.Uc_B_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:52300:52308
test "Uc_B_D" {
    var lv: c.Uc_B_D = undefined;
    try testing.expectSize(c.Uc_B_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:52331:52339
test "Uc_B_F" {
    var lv: c.Uc_B_F = undefined;
    try testing.expectSize(c.Uc_B_F, 8);
    try testing.expectAlign(c.Uc_B_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:52362:52370
test "Uc_B_I" {
    var lv: c.Uc_B_I = undefined;
    try testing.expectSize(c.Uc_B_I, 8);
    try testing.expectAlign(c.Uc_B_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:52393:52401
test "Uc_B_Ip" {
    var lv: c.Uc_B_Ip = undefined;
    try testing.expectSize(c.Uc_B_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:52424:52432
test "Uc_B_L" {
    var lv: c.Uc_B_L = undefined;
    try testing.expectSize(c.Uc_B_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:52455:52463
test "Uc_B_S" {
    var lv: c.Uc_B_S = undefined;
    try testing.expectSize(c.Uc_B_S, 4);
    try testing.expectAlign(c.Uc_B_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:52486:52494
test "Uc_B_Uc" {
    var lv: c.Uc_B_Uc = undefined;
    try testing.expectSize(c.Uc_B_Uc, 3);
    try testing.expectAlign(c.Uc_B_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:52517:52525
test "Uc_B_Ui" {
    var lv: c.Uc_B_Ui = undefined;
    try testing.expectSize(c.Uc_B_Ui, 8);
    try testing.expectAlign(c.Uc_B_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:52548:52556
test "Uc_B_Ul" {
    var lv: c.Uc_B_Ul = undefined;
    try testing.expectSize(c.Uc_B_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:52579:52587
test "Uc_B_Us" {
    var lv: c.Uc_B_Us = undefined;
    try testing.expectSize(c.Uc_B_Us, 4);
    try testing.expectAlign(c.Uc_B_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:52610:52618
test "Uc_B_Vp" {
    var lv: c.Uc_B_Vp = undefined;
    try testing.expectSize(c.Uc_B_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:53533:53541
test "Uc_C_B" {
    var lv: c.Uc_C_B = undefined;
    try testing.expectSize(c.Uc_C_B, 3);
    try testing.expectAlign(c.Uc_C_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:53564:53572
test "Uc_D_B" {
    var lv: c.Uc_D_B = undefined;
    try testing.expectSize(c.Uc_D_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:53595:53603
test "Uc_F_B" {
    var lv: c.Uc_F_B = undefined;
    try testing.expectSize(c.Uc_F_B, 12);
    try testing.expectAlign(c.Uc_F_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:53626:53634
test "Uc_I_B" {
    var lv: c.Uc_I_B = undefined;
    try testing.expectSize(c.Uc_I_B, 12);
    try testing.expectAlign(c.Uc_I_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:53657:53665
test "Uc_Ip_B" {
    var lv: c.Uc_Ip_B = undefined;
    try testing.expectSize(c.Uc_Ip_B, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:53688:53696
test "Uc_L_B" {
    var lv: c.Uc_L_B = undefined;
    try testing.expectSize(c.Uc_L_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:53719:53727
test "Uc_S_B" {
    var lv: c.Uc_S_B = undefined;
    try testing.expectSize(c.Uc_S_B, 6);
    try testing.expectAlign(c.Uc_S_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:53750:53758
test "Uc_Uc_B" {
    var lv: c.Uc_Uc_B = undefined;
    try testing.expectSize(c.Uc_Uc_B, 3);
    try testing.expectAlign(c.Uc_Uc_B, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Sbnn_xab.c:53781:53789
test "Uc_Ui_B" {
    var lv: c.Uc_Ui_B = undefined;
    try testing.expectSize(c.Uc_Ui_B, 12);
    try testing.expectAlign(c.Uc_Ui_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:53812:53820
test "Uc_Ul_B" {
    var lv: c.Uc_Ul_B = undefined;
    try testing.expectSize(c.Uc_Ul_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:53843:53851
test "Uc_Us_B" {
    var lv: c.Uc_Us_B = undefined;
    try testing.expectSize(c.Uc_Us_B, 6);
    try testing.expectAlign(c.Uc_Us_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:53874:53882
test "Uc_Vp_B" {
    var lv: c.Uc_Vp_B = undefined;
    try testing.expectSize(c.Uc_Vp_B, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:53904:53911
test "Ui_B" {
    var lv: c.Ui_B = undefined;
    try testing.expectSize(c.Ui_B, 8);
    try testing.expectAlign(c.Ui_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Sbnn_xab.c:53934:53942
test "Ui_B_B" {
    var lv: c.Ui_B_B = undefined;
    try testing.expectSize(c.Ui_B_B, 8);
    try testing.expectAlign(c.Ui_B_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:54857:54865
test "Ui_B_C" {
    var lv: c.Ui_B_C = undefined;
    try testing.expectSize(c.Ui_B_C, 8);
    try testing.expectAlign(c.Ui_B_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:54888:54896
test "Ui_B_D" {
    var lv: c.Ui_B_D = undefined;
    try testing.expectSize(c.Ui_B_D, 16);
    try testing.expectAlign(c.Ui_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:54919:54927
test "Ui_B_F" {
    var lv: c.Ui_B_F = undefined;
    try testing.expectSize(c.Ui_B_F, 12);
    try testing.expectAlign(c.Ui_B_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:54950:54958
test "Ui_B_I" {
    var lv: c.Ui_B_I = undefined;
    try testing.expectSize(c.Ui_B_I, 12);
    try testing.expectAlign(c.Ui_B_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:54981:54989
test "Ui_B_Ip" {
    var lv: c.Ui_B_Ip = undefined;
    try testing.expectSize(c.Ui_B_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:55012:55020
test "Ui_B_L" {
    var lv: c.Ui_B_L = undefined;
    try testing.expectSize(c.Ui_B_L, 16);
    try testing.expectAlign(c.Ui_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:55043:55051
test "Ui_B_S" {
    var lv: c.Ui_B_S = undefined;
    try testing.expectSize(c.Ui_B_S, 8);
    try testing.expectAlign(c.Ui_B_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:55074:55082
test "Ui_B_Uc" {
    var lv: c.Ui_B_Uc = undefined;
    try testing.expectSize(c.Ui_B_Uc, 8);
    try testing.expectAlign(c.Ui_B_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:55105:55113
test "Ui_B_Ui" {
    var lv: c.Ui_B_Ui = undefined;
    try testing.expectSize(c.Ui_B_Ui, 12);
    try testing.expectAlign(c.Ui_B_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:55136:55144
test "Ui_B_Ul" {
    var lv: c.Ui_B_Ul = undefined;
    try testing.expectSize(c.Ui_B_Ul, 16);
    try testing.expectAlign(c.Ui_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:55167:55175
test "Ui_B_Us" {
    var lv: c.Ui_B_Us = undefined;
    try testing.expectSize(c.Ui_B_Us, 8);
    try testing.expectAlign(c.Ui_B_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:55198:55206
test "Ui_B_Vp" {
    var lv: c.Ui_B_Vp = undefined;
    try testing.expectSize(c.Ui_B_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:56121:56129
test "Ui_C_B" {
    var lv: c.Ui_C_B = undefined;
    try testing.expectSize(c.Ui_C_B, 8);
    try testing.expectAlign(c.Ui_C_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:56152:56160
test "Ui_D_B" {
    var lv: c.Ui_D_B = undefined;
    try testing.expectSize(c.Ui_D_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:56183:56191
test "Ui_F_B" {
    var lv: c.Ui_F_B = undefined;
    try testing.expectSize(c.Ui_F_B, 12);
    try testing.expectAlign(c.Ui_F_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:56214:56222
test "Ui_I_B" {
    var lv: c.Ui_I_B = undefined;
    try testing.expectSize(c.Ui_I_B, 12);
    try testing.expectAlign(c.Ui_I_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:56245:56253
test "Ui_Ip_B" {
    var lv: c.Ui_Ip_B = undefined;
    try testing.expectSize(c.Ui_Ip_B, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:56276:56284
test "Ui_L_B" {
    var lv: c.Ui_L_B = undefined;
    try testing.expectSize(c.Ui_L_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:56307:56315
test "Ui_S_B" {
    var lv: c.Ui_S_B = undefined;
    try testing.expectSize(c.Ui_S_B, 8);
    try testing.expectAlign(c.Ui_S_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:56338:56346
test "Ui_Uc_B" {
    var lv: c.Ui_Uc_B = undefined;
    try testing.expectSize(c.Ui_Uc_B, 8);
    try testing.expectAlign(c.Ui_Uc_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Sbnn_xab.c:56369:56377
test "Ui_Ui_B" {
    var lv: c.Ui_Ui_B = undefined;
    try testing.expectSize(c.Ui_Ui_B, 12);
    try testing.expectAlign(c.Ui_Ui_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:56400:56408
test "Ui_Ul_B" {
    var lv: c.Ui_Ul_B = undefined;
    try testing.expectSize(c.Ui_Ul_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:56431:56439
test "Ui_Us_B" {
    var lv: c.Ui_Us_B = undefined;
    try testing.expectSize(c.Ui_Us_B, 8);
    try testing.expectAlign(c.Ui_Us_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Sbnn_xab.c:56462:56470
test "Ui_Vp_B" {
    var lv: c.Ui_Vp_B = undefined;
    try testing.expectSize(c.Ui_Vp_B, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:56492:56499
test "Ul_B" {
    var lv: c.Ul_B = undefined;
    try testing.expectSize(c.Ul_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Sbnn_xab.c:56522:56530
test "Ul_B_B" {
    var lv: c.Ul_B_B = undefined;
    try testing.expectSize(c.Ul_B_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_B_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:57445:57453
test "Ul_B_C" {
    var lv: c.Ul_B_C = undefined;
    try testing.expectSize(c.Ul_B_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_B_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:57476:57484
test "Ul_B_D" {
    var lv: c.Ul_B_D = undefined;
    try testing.expectSize(c.Ul_B_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:57507:57515
test "Ul_B_F" {
    var lv: c.Ul_B_F = undefined;
    try testing.expectSize(c.Ul_B_F, 16);
    try testing.expectAlign(c.Ul_B_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:57538:57546
test "Ul_B_I" {
    var lv: c.Ul_B_I = undefined;
    try testing.expectSize(c.Ul_B_I, 16);
    try testing.expectAlign(c.Ul_B_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:57569:57577
test "Ul_B_Ip" {
    var lv: c.Ul_B_Ip = undefined;
    try testing.expectSize(c.Ul_B_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:57600:57608
test "Ul_B_L" {
    var lv: c.Ul_B_L = undefined;
    try testing.expectSize(c.Ul_B_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:57631:57639
test "Ul_B_S" {
    var lv: c.Ul_B_S = undefined;
    try testing.expectSize(c.Ul_B_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_B_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:57662:57670
test "Ul_B_Uc" {
    var lv: c.Ul_B_Uc = undefined;
    try testing.expectSize(c.Ul_B_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_B_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:57693:57701
test "Ul_B_Ui" {
    var lv: c.Ul_B_Ui = undefined;
    try testing.expectSize(c.Ul_B_Ui, 16);
    try testing.expectAlign(c.Ul_B_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:57724:57732
test "Ul_B_Ul" {
    var lv: c.Ul_B_Ul = undefined;
    try testing.expectSize(c.Ul_B_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:57755:57763
test "Ul_B_Us" {
    var lv: c.Ul_B_Us = undefined;
    try testing.expectSize(c.Ul_B_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_B_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:57786:57794
test "Ul_B_Vp" {
    var lv: c.Ul_B_Vp = undefined;
    try testing.expectSize(c.Ul_B_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:58709:58717
test "Ul_C_B" {
    var lv: c.Ul_C_B = undefined;
    try testing.expectSize(c.Ul_C_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:58740:58748
test "Ul_D_B" {
    var lv: c.Ul_D_B = undefined;
    try testing.expectSize(c.Ul_D_B, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Sbnn_xab.c:58771:58779
test "Ul_F_B" {
    var lv: c.Ul_F_B = undefined;
    try testing.expectSize(c.Ul_F_B, 16);
    try testing.expectAlign(c.Ul_F_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:58802:58810
test "Ul_I_B" {
    var lv: c.Ul_I_B = undefined;
    try testing.expectSize(c.Ul_I_B, 16);
    try testing.expectAlign(c.Ul_I_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:58833:58841
test "Ul_Ip_B" {
    var lv: c.Ul_Ip_B = undefined;
    try testing.expectSize(c.Ul_Ip_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:58864:58872
test "Ul_L_B" {
    var lv: c.Ul_L_B = undefined;
    try testing.expectSize(c.Ul_L_B, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Sbnn_xab.c:58895:58903
test "Ul_S_B" {
    var lv: c.Ul_S_B = undefined;
    try testing.expectSize(c.Ul_S_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:58926:58934
test "Ul_Uc_B" {
    var lv: c.Ul_Uc_B = undefined;
    try testing.expectSize(c.Ul_Uc_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Sbnn_xab.c:58957:58965
test "Ul_Ui_B" {
    var lv: c.Ul_Ui_B = undefined;
    try testing.expectSize(c.Ul_Ui_B, 16);
    try testing.expectAlign(c.Ul_Ui_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Sbnn_xab.c:58988:58996
test "Ul_Ul_B" {
    var lv: c.Ul_Ul_B = undefined;
    try testing.expectSize(c.Ul_Ul_B, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Sbnn_xab.c:59019:59027
test "Ul_Us_B" {
    var lv: c.Ul_Us_B = undefined;
    try testing.expectSize(c.Ul_Us_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Sbnn_xab.c:59050:59058
test "Ul_Vp_B" {
    var lv: c.Ul_Vp_B = undefined;
    try testing.expectSize(c.Ul_Vp_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:59080:59087
test "Us_B" {
    var lv: c.Us_B = undefined;
    try testing.expectSize(c.Us_B, 4);
    try testing.expectAlign(c.Us_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Sbnn_xab.c:59110:59118
test "Us_B_B" {
    var lv: c.Us_B_B = undefined;
    try testing.expectSize(c.Us_B_B, 4);
    try testing.expectAlign(c.Us_B_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Sbnn_xab.c:60033:60041
test "Us_B_C" {
    var lv: c.Us_B_C = undefined;
    try testing.expectSize(c.Us_B_C, 4);
    try testing.expectAlign(c.Us_B_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Sbnn_xab.c:60064:60072
test "Us_B_D" {
    var lv: c.Us_B_D = undefined;
    try testing.expectSize(c.Us_B_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:60095:60103
test "Us_B_F" {
    var lv: c.Us_B_F = undefined;
    try testing.expectSize(c.Us_B_F, 8);
    try testing.expectAlign(c.Us_B_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:60126:60134
test "Us_B_I" {
    var lv: c.Us_B_I = undefined;
    try testing.expectSize(c.Us_B_I, 8);
    try testing.expectAlign(c.Us_B_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:60157:60165
test "Us_B_Ip" {
    var lv: c.Us_B_Ip = undefined;
    try testing.expectSize(c.Us_B_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:60188:60196
test "Us_B_L" {
    var lv: c.Us_B_L = undefined;
    try testing.expectSize(c.Us_B_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:60219:60227
test "Us_B_S" {
    var lv: c.Us_B_S = undefined;
    try testing.expectSize(c.Us_B_S, 6);
    try testing.expectAlign(c.Us_B_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:60250:60258
test "Us_B_Uc" {
    var lv: c.Us_B_Uc = undefined;
    try testing.expectSize(c.Us_B_Uc, 4);
    try testing.expectAlign(c.Us_B_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Sbnn_xab.c:60281:60289
test "Us_B_Ui" {
    var lv: c.Us_B_Ui = undefined;
    try testing.expectSize(c.Us_B_Ui, 8);
    try testing.expectAlign(c.Us_B_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:60312:60320
test "Us_B_Ul" {
    var lv: c.Us_B_Ul = undefined;
    try testing.expectSize(c.Us_B_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:60343:60351
test "Us_B_Us" {
    var lv: c.Us_B_Us = undefined;
    try testing.expectSize(c.Us_B_Us, 6);
    try testing.expectAlign(c.Us_B_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:60374:60382
test "Us_B_Vp" {
    var lv: c.Us_B_Vp = undefined;
    try testing.expectSize(c.Us_B_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:61297:61305
test "Us_C_B" {
    var lv: c.Us_C_B = undefined;
    try testing.expectSize(c.Us_C_B, 4);
    try testing.expectAlign(c.Us_C_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Sbnn_xab.c:61328:61336
test "Us_D_B" {
    var lv: c.Us_D_B = undefined;
    try testing.expectSize(c.Us_D_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:61359:61367
test "Us_F_B" {
    var lv: c.Us_F_B = undefined;
    try testing.expectSize(c.Us_F_B, 12);
    try testing.expectAlign(c.Us_F_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:61390:61398
test "Us_I_B" {
    var lv: c.Us_I_B = undefined;
    try testing.expectSize(c.Us_I_B, 12);
    try testing.expectAlign(c.Us_I_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:61421:61429
test "Us_Ip_B" {
    var lv: c.Us_Ip_B = undefined;
    try testing.expectSize(c.Us_Ip_B, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:61452:61460
test "Us_L_B" {
    var lv: c.Us_L_B = undefined;
    try testing.expectSize(c.Us_L_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:61483:61491
test "Us_S_B" {
    var lv: c.Us_S_B = undefined;
    try testing.expectSize(c.Us_S_B, 6);
    try testing.expectAlign(c.Us_S_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:61514:61522
test "Us_Uc_B" {
    var lv: c.Us_Uc_B = undefined;
    try testing.expectSize(c.Us_Uc_B, 4);
    try testing.expectAlign(c.Us_Uc_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Sbnn_xab.c:61545:61553
test "Us_Ui_B" {
    var lv: c.Us_Ui_B = undefined;
    try testing.expectSize(c.Us_Ui_B, 12);
    try testing.expectAlign(c.Us_Ui_B, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Sbnn_xab.c:61576:61584
test "Us_Ul_B" {
    var lv: c.Us_Ul_B = undefined;
    try testing.expectSize(c.Us_Ul_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:61607:61615
test "Us_Us_B" {
    var lv: c.Us_Us_B = undefined;
    try testing.expectSize(c.Us_Us_B, 6);
    try testing.expectAlign(c.Us_Us_B, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Sbnn_xab.c:61638:61646
test "Us_Vp_B" {
    var lv: c.Us_Vp_B = undefined;
    try testing.expectSize(c.Us_Vp_B, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:61668:61675
test "Vp_B" {
    var lv: c.Vp_B = undefined;
    try testing.expectSize(c.Vp_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Sbnn_xab.c:61698:61706
test "Vp_B_B" {
    var lv: c.Vp_B_B = undefined;
    try testing.expectSize(c.Vp_B_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_B_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Sbnn_xab.c:62621:62629
test "Vp_B_C" {
    var lv: c.Vp_B_C = undefined;
    try testing.expectSize(c.Vp_B_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_B_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Sbnn_xab.c:62652:62660
test "Vp_B_D" {
    var lv: c.Vp_B_D = undefined;
    try testing.expectSize(c.Vp_B_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_B_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:62683:62691
test "Vp_B_F" {
    var lv: c.Vp_B_F = undefined;
    try testing.expectSize(c.Vp_B_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_B_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:62714:62722
test "Vp_B_I" {
    var lv: c.Vp_B_I = undefined;
    try testing.expectSize(c.Vp_B_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_B_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:62745:62753
test "Vp_B_Ip" {
    var lv: c.Vp_B_Ip = undefined;
    try testing.expectSize(c.Vp_B_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_B_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:62776:62784
test "Vp_B_L" {
    var lv: c.Vp_B_L = undefined;
    try testing.expectSize(c.Vp_B_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_B_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:62807:62815
test "Vp_B_S" {
    var lv: c.Vp_B_S = undefined;
    try testing.expectSize(c.Vp_B_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_B_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Sbnn_xab.c:62838:62846
test "Vp_B_Uc" {
    var lv: c.Vp_B_Uc = undefined;
    try testing.expectSize(c.Vp_B_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_B_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Sbnn_xab.c:62869:62877
test "Vp_B_Ui" {
    var lv: c.Vp_B_Ui = undefined;
    try testing.expectSize(c.Vp_B_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_B_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:62900:62908
test "Vp_B_Ul" {
    var lv: c.Vp_B_Ul = undefined;
    try testing.expectSize(c.Vp_B_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_B_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:62931:62939
test "Vp_B_Us" {
    var lv: c.Vp_B_Us = undefined;
    try testing.expectSize(c.Vp_B_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_B_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Sbnn_xab.c:62962:62970
test "Vp_B_Vp" {
    var lv: c.Vp_B_Vp = undefined;
    try testing.expectSize(c.Vp_B_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_B_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:63885:63893
test "Vp_C_B" {
    var lv: c.Vp_C_B = undefined;
    try testing.expectSize(c.Vp_C_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Sbnn_xab.c:63916:63924
test "Vp_D_B" {
    var lv: c.Vp_D_B = undefined;
    try testing.expectSize(c.Vp_D_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:63947:63955
test "Vp_F_B" {
    var lv: c.Vp_F_B = undefined;
    try testing.expectSize(c.Vp_F_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:63978:63986
test "Vp_I_B" {
    var lv: c.Vp_I_B = undefined;
    try testing.expectSize(c.Vp_I_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:64009:64017
test "Vp_Ip_B" {
    var lv: c.Vp_Ip_B = undefined;
    try testing.expectSize(c.Vp_Ip_B, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Sbnn_xab.c:64040:64048
test "Vp_L_B" {
    var lv: c.Vp_L_B = undefined;
    try testing.expectSize(c.Vp_L_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:64071:64079
test "Vp_S_B" {
    var lv: c.Vp_S_B = undefined;
    try testing.expectSize(c.Vp_S_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Sbnn_xab.c:64102:64110
test "Vp_Uc_B" {
    var lv: c.Vp_Uc_B = undefined;
    try testing.expectSize(c.Vp_Uc_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Sbnn_xab.c:64133:64141
test "Vp_Ui_B" {
    var lv: c.Vp_Ui_B = undefined;
    try testing.expectSize(c.Vp_Ui_B, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Sbnn_xab.c:64164:64172
test "Vp_Ul_B" {
    var lv: c.Vp_Ul_B = undefined;
    try testing.expectSize(c.Vp_Ul_B, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Sbnn_xab.c:64195:64203
test "Vp_Us_B" {
    var lv: c.Vp_Us_B = undefined;
    try testing.expectSize(c.Vp_Us_B, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Sbnn_xab.c:64226:64234
test "Vp_Vp_B" {
    var lv: c.Vp_Vp_B = undefined;
    try testing.expectSize(c.Vp_Vp_B, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_B, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
