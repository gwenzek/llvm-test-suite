const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xay.h");
});

// From T_Snnn_xay.c:27111:27118
test "Ip_C" {
    var lv: c.Ip_C = undefined;
    try testing.expectSize(c.Ip_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:27859:27867
test "Ip_C_C" {
    var lv: c.Ip_C_C = undefined;
    try testing.expectSize(c.Ip_C_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xay.c:27884:27892
test "Ip_C_D" {
    var lv: c.Ip_C_D = undefined;
    try testing.expectSize(c.Ip_C_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:27909:27917
test "Ip_C_F" {
    var lv: c.Ip_C_F = undefined;
    try testing.expectSize(c.Ip_C_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:27934:27942
test "Ip_C_I" {
    var lv: c.Ip_C_I = undefined;
    try testing.expectSize(c.Ip_C_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:27959:27967
test "Ip_C_Ip" {
    var lv: c.Ip_C_Ip = undefined;
    try testing.expectSize(c.Ip_C_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:27984:27992
test "Ip_C_L" {
    var lv: c.Ip_C_L = undefined;
    try testing.expectSize(c.Ip_C_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:28009:28017
test "Ip_C_S" {
    var lv: c.Ip_C_S = undefined;
    try testing.expectSize(c.Ip_C_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:28034:28042
test "Ip_C_Uc" {
    var lv: c.Ip_C_Uc = undefined;
    try testing.expectSize(c.Ip_C_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xay.c:28059:28067
test "Ip_C_Ui" {
    var lv: c.Ip_C_Ui = undefined;
    try testing.expectSize(c.Ip_C_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:28084:28092
test "Ip_C_Ul" {
    var lv: c.Ip_C_Ul = undefined;
    try testing.expectSize(c.Ip_C_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:28109:28117
test "Ip_C_Us" {
    var lv: c.Ip_C_Us = undefined;
    try testing.expectSize(c.Ip_C_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:28134:28142
test "Ip_C_Vp" {
    var lv: c.Ip_C_Vp = undefined;
    try testing.expectSize(c.Ip_C_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:28158:28165
test "Ip_D" {
    var lv: c.Ip_D = undefined;
    try testing.expectSize(c.Ip_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:28906:28914
test "Ip_D_C" {
    var lv: c.Ip_D_C = undefined;
    try testing.expectSize(c.Ip_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:28931:28939
test "Ip_D_D" {
    var lv: c.Ip_D_D = undefined;
    try testing.expectSize(c.Ip_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:28956:28964
test "Ip_D_F" {
    var lv: c.Ip_D_F = undefined;
    try testing.expectSize(c.Ip_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:28981:28989
test "Ip_D_I" {
    var lv: c.Ip_D_I = undefined;
    try testing.expectSize(c.Ip_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29006:29014
test "Ip_D_Ip" {
    var lv: c.Ip_D_Ip = undefined;
    try testing.expectSize(c.Ip_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29031:29039
test "Ip_D_L" {
    var lv: c.Ip_D_L = undefined;
    try testing.expectSize(c.Ip_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29056:29064
test "Ip_D_S" {
    var lv: c.Ip_D_S = undefined;
    try testing.expectSize(c.Ip_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29081:29089
test "Ip_D_Uc" {
    var lv: c.Ip_D_Uc = undefined;
    try testing.expectSize(c.Ip_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29106:29114
test "Ip_D_Ui" {
    var lv: c.Ip_D_Ui = undefined;
    try testing.expectSize(c.Ip_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29131:29139
test "Ip_D_Ul" {
    var lv: c.Ip_D_Ul = undefined;
    try testing.expectSize(c.Ip_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29156:29164
test "Ip_D_Us" {
    var lv: c.Ip_D_Us = undefined;
    try testing.expectSize(c.Ip_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29181:29189
test "Ip_D_Vp" {
    var lv: c.Ip_D_Vp = undefined;
    try testing.expectSize(c.Ip_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29205:29212
test "Ip_F" {
    var lv: c.Ip_F = undefined;
    try testing.expectSize(c.Ip_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:29953:29961
test "Ip_F_C" {
    var lv: c.Ip_F_C = undefined;
    try testing.expectSize(c.Ip_F_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:29978:29986
test "Ip_F_D" {
    var lv: c.Ip_F_D = undefined;
    try testing.expectSize(c.Ip_F_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:30003:30011
test "Ip_F_F" {
    var lv: c.Ip_F_F = undefined;
    try testing.expectSize(c.Ip_F_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30028:30036
test "Ip_F_I" {
    var lv: c.Ip_F_I = undefined;
    try testing.expectSize(c.Ip_F_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30053:30061
test "Ip_F_Ip" {
    var lv: c.Ip_F_Ip = undefined;
    try testing.expectSize(c.Ip_F_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:30078:30086
test "Ip_F_L" {
    var lv: c.Ip_F_L = undefined;
    try testing.expectSize(c.Ip_F_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:30103:30111
test "Ip_F_S" {
    var lv: c.Ip_F_S = undefined;
    try testing.expectSize(c.Ip_F_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30128:30136
test "Ip_F_Uc" {
    var lv: c.Ip_F_Uc = undefined;
    try testing.expectSize(c.Ip_F_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30153:30161
test "Ip_F_Ui" {
    var lv: c.Ip_F_Ui = undefined;
    try testing.expectSize(c.Ip_F_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30178:30186
test "Ip_F_Ul" {
    var lv: c.Ip_F_Ul = undefined;
    try testing.expectSize(c.Ip_F_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:30203:30211
test "Ip_F_Us" {
    var lv: c.Ip_F_Us = undefined;
    try testing.expectSize(c.Ip_F_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30228:30236
test "Ip_F_Vp" {
    var lv: c.Ip_F_Vp = undefined;
    try testing.expectSize(c.Ip_F_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:30252:30259
test "Ip_I" {
    var lv: c.Ip_I = undefined;
    try testing.expectSize(c.Ip_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:31000:31008
test "Ip_I_C" {
    var lv: c.Ip_I_C = undefined;
    try testing.expectSize(c.Ip_I_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31025:31033
test "Ip_I_D" {
    var lv: c.Ip_I_D = undefined;
    try testing.expectSize(c.Ip_I_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:31050:31058
test "Ip_I_F" {
    var lv: c.Ip_I_F = undefined;
    try testing.expectSize(c.Ip_I_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31075:31083
test "Ip_I_I" {
    var lv: c.Ip_I_I = undefined;
    try testing.expectSize(c.Ip_I_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31100:31108
test "Ip_I_Ip" {
    var lv: c.Ip_I_Ip = undefined;
    try testing.expectSize(c.Ip_I_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:31125:31133
test "Ip_I_L" {
    var lv: c.Ip_I_L = undefined;
    try testing.expectSize(c.Ip_I_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:31150:31158
test "Ip_I_S" {
    var lv: c.Ip_I_S = undefined;
    try testing.expectSize(c.Ip_I_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31175:31183
test "Ip_I_Uc" {
    var lv: c.Ip_I_Uc = undefined;
    try testing.expectSize(c.Ip_I_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31200:31208
test "Ip_I_Ui" {
    var lv: c.Ip_I_Ui = undefined;
    try testing.expectSize(c.Ip_I_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31225:31233
test "Ip_I_Ul" {
    var lv: c.Ip_I_Ul = undefined;
    try testing.expectSize(c.Ip_I_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:31250:31258
test "Ip_I_Us" {
    var lv: c.Ip_I_Us = undefined;
    try testing.expectSize(c.Ip_I_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31275:31283
test "Ip_I_Vp" {
    var lv: c.Ip_I_Vp = undefined;
    try testing.expectSize(c.Ip_I_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:31299:31306
test "Ip_Ip" {
    var lv: c.Ip_Ip = undefined;
    try testing.expectSize(c.Ip_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:32047:32055
test "Ip_Ip_C" {
    var lv: c.Ip_Ip_C = undefined;
    try testing.expectSize(c.Ip_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32072:32080
test "Ip_Ip_D" {
    var lv: c.Ip_Ip_D = undefined;
    try testing.expectSize(c.Ip_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32097:32105
test "Ip_Ip_F" {
    var lv: c.Ip_Ip_F = undefined;
    try testing.expectSize(c.Ip_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32122:32130
test "Ip_Ip_I" {
    var lv: c.Ip_Ip_I = undefined;
    try testing.expectSize(c.Ip_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32147:32155
test "Ip_Ip_Ip" {
    var lv: c.Ip_Ip_Ip = undefined;
    try testing.expectSize(c.Ip_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32172:32180
test "Ip_Ip_L" {
    var lv: c.Ip_Ip_L = undefined;
    try testing.expectSize(c.Ip_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32197:32205
test "Ip_Ip_S" {
    var lv: c.Ip_Ip_S = undefined;
    try testing.expectSize(c.Ip_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32222:32230
test "Ip_Ip_Uc" {
    var lv: c.Ip_Ip_Uc = undefined;
    try testing.expectSize(c.Ip_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32247:32255
test "Ip_Ip_Ui" {
    var lv: c.Ip_Ip_Ui = undefined;
    try testing.expectSize(c.Ip_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32272:32280
test "Ip_Ip_Ul" {
    var lv: c.Ip_Ip_Ul = undefined;
    try testing.expectSize(c.Ip_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32297:32305
test "Ip_Ip_Us" {
    var lv: c.Ip_Ip_Us = undefined;
    try testing.expectSize(c.Ip_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32322:32330
test "Ip_Ip_Vp" {
    var lv: c.Ip_Ip_Vp = undefined;
    try testing.expectSize(c.Ip_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32346:32353
test "Ip_L" {
    var lv: c.Ip_L = undefined;
    try testing.expectSize(c.Ip_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:33094:33102
test "Ip_L_C" {
    var lv: c.Ip_L_C = undefined;
    try testing.expectSize(c.Ip_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33119:33127
test "Ip_L_D" {
    var lv: c.Ip_L_D = undefined;
    try testing.expectSize(c.Ip_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33144:33152
test "Ip_L_F" {
    var lv: c.Ip_L_F = undefined;
    try testing.expectSize(c.Ip_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33169:33177
test "Ip_L_I" {
    var lv: c.Ip_L_I = undefined;
    try testing.expectSize(c.Ip_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33194:33202
test "Ip_L_Ip" {
    var lv: c.Ip_L_Ip = undefined;
    try testing.expectSize(c.Ip_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33219:33227
test "Ip_L_L" {
    var lv: c.Ip_L_L = undefined;
    try testing.expectSize(c.Ip_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33244:33252
test "Ip_L_S" {
    var lv: c.Ip_L_S = undefined;
    try testing.expectSize(c.Ip_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33269:33277
test "Ip_L_Uc" {
    var lv: c.Ip_L_Uc = undefined;
    try testing.expectSize(c.Ip_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33294:33302
test "Ip_L_Ui" {
    var lv: c.Ip_L_Ui = undefined;
    try testing.expectSize(c.Ip_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33319:33327
test "Ip_L_Ul" {
    var lv: c.Ip_L_Ul = undefined;
    try testing.expectSize(c.Ip_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33344:33352
test "Ip_L_Us" {
    var lv: c.Ip_L_Us = undefined;
    try testing.expectSize(c.Ip_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33369:33377
test "Ip_L_Vp" {
    var lv: c.Ip_L_Vp = undefined;
    try testing.expectSize(c.Ip_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33393:33400
test "Ip_S" {
    var lv: c.Ip_S = undefined;
    try testing.expectSize(c.Ip_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:34141:34149
test "Ip_S_C" {
    var lv: c.Ip_S_C = undefined;
    try testing.expectSize(c.Ip_S_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:34166:34174
test "Ip_S_D" {
    var lv: c.Ip_S_D = undefined;
    try testing.expectSize(c.Ip_S_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:34191:34199
test "Ip_S_F" {
    var lv: c.Ip_S_F = undefined;
    try testing.expectSize(c.Ip_S_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:34216:34224
test "Ip_S_I" {
    var lv: c.Ip_S_I = undefined;
    try testing.expectSize(c.Ip_S_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:34241:34249
test "Ip_S_Ip" {
    var lv: c.Ip_S_Ip = undefined;
    try testing.expectSize(c.Ip_S_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:34266:34274
test "Ip_S_L" {
    var lv: c.Ip_S_L = undefined;
    try testing.expectSize(c.Ip_S_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:34291:34299
test "Ip_S_S" {
    var lv: c.Ip_S_S = undefined;
    try testing.expectSize(c.Ip_S_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:34316:34324
test "Ip_S_Uc" {
    var lv: c.Ip_S_Uc = undefined;
    try testing.expectSize(c.Ip_S_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:34341:34349
test "Ip_S_Ui" {
    var lv: c.Ip_S_Ui = undefined;
    try testing.expectSize(c.Ip_S_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:34366:34374
test "Ip_S_Ul" {
    var lv: c.Ip_S_Ul = undefined;
    try testing.expectSize(c.Ip_S_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:34391:34399
test "Ip_S_Us" {
    var lv: c.Ip_S_Us = undefined;
    try testing.expectSize(c.Ip_S_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:34416:34424
test "Ip_S_Vp" {
    var lv: c.Ip_S_Vp = undefined;
    try testing.expectSize(c.Ip_S_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:34440:34447
test "Ip_Uc" {
    var lv: c.Ip_Uc = undefined;
    try testing.expectSize(c.Ip_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:35188:35196
test "Ip_Uc_C" {
    var lv: c.Ip_Uc_C = undefined;
    try testing.expectSize(c.Ip_Uc_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xay.c:35213:35221
test "Ip_Uc_D" {
    var lv: c.Ip_Uc_D = undefined;
    try testing.expectSize(c.Ip_Uc_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:35238:35246
test "Ip_Uc_F" {
    var lv: c.Ip_Uc_F = undefined;
    try testing.expectSize(c.Ip_Uc_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:35263:35271
test "Ip_Uc_I" {
    var lv: c.Ip_Uc_I = undefined;
    try testing.expectSize(c.Ip_Uc_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:35288:35296
test "Ip_Uc_Ip" {
    var lv: c.Ip_Uc_Ip = undefined;
    try testing.expectSize(c.Ip_Uc_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:35313:35321
test "Ip_Uc_L" {
    var lv: c.Ip_Uc_L = undefined;
    try testing.expectSize(c.Ip_Uc_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:35338:35346
test "Ip_Uc_S" {
    var lv: c.Ip_Uc_S = undefined;
    try testing.expectSize(c.Ip_Uc_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:35363:35371
test "Ip_Uc_Uc" {
    var lv: c.Ip_Uc_Uc = undefined;
    try testing.expectSize(c.Ip_Uc_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xay.c:35388:35396
test "Ip_Uc_Ui" {
    var lv: c.Ip_Uc_Ui = undefined;
    try testing.expectSize(c.Ip_Uc_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:35413:35421
test "Ip_Uc_Ul" {
    var lv: c.Ip_Uc_Ul = undefined;
    try testing.expectSize(c.Ip_Uc_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:35438:35446
test "Ip_Uc_Us" {
    var lv: c.Ip_Uc_Us = undefined;
    try testing.expectSize(c.Ip_Uc_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:35463:35471
test "Ip_Uc_Vp" {
    var lv: c.Ip_Uc_Vp = undefined;
    try testing.expectSize(c.Ip_Uc_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:35487:35494
test "Ip_Ui" {
    var lv: c.Ip_Ui = undefined;
    try testing.expectSize(c.Ip_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:36235:36243
test "Ip_Ui_C" {
    var lv: c.Ip_Ui_C = undefined;
    try testing.expectSize(c.Ip_Ui_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36260:36268
test "Ip_Ui_D" {
    var lv: c.Ip_Ui_D = undefined;
    try testing.expectSize(c.Ip_Ui_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:36285:36293
test "Ip_Ui_F" {
    var lv: c.Ip_Ui_F = undefined;
    try testing.expectSize(c.Ip_Ui_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36310:36318
test "Ip_Ui_I" {
    var lv: c.Ip_Ui_I = undefined;
    try testing.expectSize(c.Ip_Ui_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36335:36343
test "Ip_Ui_Ip" {
    var lv: c.Ip_Ui_Ip = undefined;
    try testing.expectSize(c.Ip_Ui_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:36360:36368
test "Ip_Ui_L" {
    var lv: c.Ip_Ui_L = undefined;
    try testing.expectSize(c.Ip_Ui_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:36385:36393
test "Ip_Ui_S" {
    var lv: c.Ip_Ui_S = undefined;
    try testing.expectSize(c.Ip_Ui_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36410:36418
test "Ip_Ui_Uc" {
    var lv: c.Ip_Ui_Uc = undefined;
    try testing.expectSize(c.Ip_Ui_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36435:36443
test "Ip_Ui_Ui" {
    var lv: c.Ip_Ui_Ui = undefined;
    try testing.expectSize(c.Ip_Ui_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36460:36468
test "Ip_Ui_Ul" {
    var lv: c.Ip_Ui_Ul = undefined;
    try testing.expectSize(c.Ip_Ui_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:36485:36493
test "Ip_Ui_Us" {
    var lv: c.Ip_Ui_Us = undefined;
    try testing.expectSize(c.Ip_Ui_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36510:36518
test "Ip_Ui_Vp" {
    var lv: c.Ip_Ui_Vp = undefined;
    try testing.expectSize(c.Ip_Ui_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:36534:36541
test "Ip_Ul" {
    var lv: c.Ip_Ul = undefined;
    try testing.expectSize(c.Ip_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:37282:37290
test "Ip_Ul_C" {
    var lv: c.Ip_Ul_C = undefined;
    try testing.expectSize(c.Ip_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37307:37315
test "Ip_Ul_D" {
    var lv: c.Ip_Ul_D = undefined;
    try testing.expectSize(c.Ip_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37332:37340
test "Ip_Ul_F" {
    var lv: c.Ip_Ul_F = undefined;
    try testing.expectSize(c.Ip_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37357:37365
test "Ip_Ul_I" {
    var lv: c.Ip_Ul_I = undefined;
    try testing.expectSize(c.Ip_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37382:37390
test "Ip_Ul_Ip" {
    var lv: c.Ip_Ul_Ip = undefined;
    try testing.expectSize(c.Ip_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37407:37415
test "Ip_Ul_L" {
    var lv: c.Ip_Ul_L = undefined;
    try testing.expectSize(c.Ip_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37432:37440
test "Ip_Ul_S" {
    var lv: c.Ip_Ul_S = undefined;
    try testing.expectSize(c.Ip_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37457:37465
test "Ip_Ul_Uc" {
    var lv: c.Ip_Ul_Uc = undefined;
    try testing.expectSize(c.Ip_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37482:37490
test "Ip_Ul_Ui" {
    var lv: c.Ip_Ul_Ui = undefined;
    try testing.expectSize(c.Ip_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37507:37515
test "Ip_Ul_Ul" {
    var lv: c.Ip_Ul_Ul = undefined;
    try testing.expectSize(c.Ip_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37532:37540
test "Ip_Ul_Us" {
    var lv: c.Ip_Ul_Us = undefined;
    try testing.expectSize(c.Ip_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37557:37565
test "Ip_Ul_Vp" {
    var lv: c.Ip_Ul_Vp = undefined;
    try testing.expectSize(c.Ip_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37581:37588
test "Ip_Us" {
    var lv: c.Ip_Us = undefined;
    try testing.expectSize(c.Ip_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:38329:38337
test "Ip_Us_C" {
    var lv: c.Ip_Us_C = undefined;
    try testing.expectSize(c.Ip_Us_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:38354:38362
test "Ip_Us_D" {
    var lv: c.Ip_Us_D = undefined;
    try testing.expectSize(c.Ip_Us_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:38379:38387
test "Ip_Us_F" {
    var lv: c.Ip_Us_F = undefined;
    try testing.expectSize(c.Ip_Us_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:38404:38412
test "Ip_Us_I" {
    var lv: c.Ip_Us_I = undefined;
    try testing.expectSize(c.Ip_Us_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:38429:38437
test "Ip_Us_Ip" {
    var lv: c.Ip_Us_Ip = undefined;
    try testing.expectSize(c.Ip_Us_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:38454:38462
test "Ip_Us_L" {
    var lv: c.Ip_Us_L = undefined;
    try testing.expectSize(c.Ip_Us_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:38479:38487
test "Ip_Us_S" {
    var lv: c.Ip_Us_S = undefined;
    try testing.expectSize(c.Ip_Us_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:38504:38512
test "Ip_Us_Uc" {
    var lv: c.Ip_Us_Uc = undefined;
    try testing.expectSize(c.Ip_Us_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:38529:38537
test "Ip_Us_Ui" {
    var lv: c.Ip_Us_Ui = undefined;
    try testing.expectSize(c.Ip_Us_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:38554:38562
test "Ip_Us_Ul" {
    var lv: c.Ip_Us_Ul = undefined;
    try testing.expectSize(c.Ip_Us_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:38579:38587
test "Ip_Us_Us" {
    var lv: c.Ip_Us_Us = undefined;
    try testing.expectSize(c.Ip_Us_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:38604:38612
test "Ip_Us_Vp" {
    var lv: c.Ip_Us_Vp = undefined;
    try testing.expectSize(c.Ip_Us_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:38628:38635
test "Ip_Vp" {
    var lv: c.Ip_Vp = undefined;
    try testing.expectSize(c.Ip_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:39376:39384
test "Ip_Vp_C" {
    var lv: c.Ip_Vp_C = undefined;
    try testing.expectSize(c.Ip_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39401:39409
test "Ip_Vp_D" {
    var lv: c.Ip_Vp_D = undefined;
    try testing.expectSize(c.Ip_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39426:39434
test "Ip_Vp_F" {
    var lv: c.Ip_Vp_F = undefined;
    try testing.expectSize(c.Ip_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39451:39459
test "Ip_Vp_I" {
    var lv: c.Ip_Vp_I = undefined;
    try testing.expectSize(c.Ip_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39476:39484
test "Ip_Vp_Ip" {
    var lv: c.Ip_Vp_Ip = undefined;
    try testing.expectSize(c.Ip_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39501:39509
test "Ip_Vp_L" {
    var lv: c.Ip_Vp_L = undefined;
    try testing.expectSize(c.Ip_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39526:39534
test "Ip_Vp_S" {
    var lv: c.Ip_Vp_S = undefined;
    try testing.expectSize(c.Ip_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39551:39559
test "Ip_Vp_Uc" {
    var lv: c.Ip_Vp_Uc = undefined;
    try testing.expectSize(c.Ip_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39576:39584
test "Ip_Vp_Ui" {
    var lv: c.Ip_Vp_Ui = undefined;
    try testing.expectSize(c.Ip_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39601:39609
test "Ip_Vp_Ul" {
    var lv: c.Ip_Vp_Ul = undefined;
    try testing.expectSize(c.Ip_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39626:39634
test "Ip_Vp_Us" {
    var lv: c.Ip_Vp_Us = undefined;
    try testing.expectSize(c.Ip_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39651:39659
test "Ip_Vp_Vp" {
    var lv: c.Ip_Vp_Vp = undefined;
    try testing.expectSize(c.Ip_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39674:39680
test "L" {
    var lv: c.L = undefined;
    try testing.expectSize(c.L, 8);
    try testing.expectAlign(c.L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Snnn_xay.c:69996:70003
test "L_C" {
    var lv: c.L_C = undefined;
    try testing.expectSize(c.L_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:70744:70752
test "L_C_C" {
    var lv: c.L_C_C = undefined;
    try testing.expectSize(c.L_C_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xay.c:70769:70777
test "L_C_D" {
    var lv: c.L_C_D = undefined;
    try testing.expectSize(c.L_C_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:70794:70802
test "L_C_F" {
    var lv: c.L_C_F = undefined;
    try testing.expectSize(c.L_C_F, 16);
    try testing.expectAlign(c.L_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:70819:70827
test "L_C_I" {
    var lv: c.L_C_I = undefined;
    try testing.expectSize(c.L_C_I, 16);
    try testing.expectAlign(c.L_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:70844:70852
test "L_C_Ip" {
    var lv: c.L_C_Ip = undefined;
    try testing.expectSize(c.L_C_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:70869:70877
test "L_C_L" {
    var lv: c.L_C_L = undefined;
    try testing.expectSize(c.L_C_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:70894:70902
test "L_C_S" {
    var lv: c.L_C_S = undefined;
    try testing.expectSize(c.L_C_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:70919:70927
test "L_C_Uc" {
    var lv: c.L_C_Uc = undefined;
    try testing.expectSize(c.L_C_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xay.c:70944:70952
test "L_C_Ui" {
    var lv: c.L_C_Ui = undefined;
    try testing.expectSize(c.L_C_Ui, 16);
    try testing.expectAlign(c.L_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:70969:70977
test "L_C_Ul" {
    var lv: c.L_C_Ul = undefined;
    try testing.expectSize(c.L_C_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:70994:71002
test "L_C_Us" {
    var lv: c.L_C_Us = undefined;
    try testing.expectSize(c.L_C_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:71019:71027
test "L_C_Vp" {
    var lv: c.L_C_Vp = undefined;
    try testing.expectSize(c.L_C_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:71043:71050
test "L_D" {
    var lv: c.L_D = undefined;
    try testing.expectSize(c.L_D, 16);
    try testing.expectAlign(c.L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:71791:71799
test "L_D_C" {
    var lv: c.L_D_C = undefined;
    try testing.expectSize(c.L_D_C, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71816:71824
test "L_D_D" {
    var lv: c.L_D_D = undefined;
    try testing.expectSize(c.L_D_D, 24);
    try testing.expectAlign(c.L_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71841:71849
test "L_D_F" {
    var lv: c.L_D_F = undefined;
    try testing.expectSize(c.L_D_F, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71866:71874
test "L_D_I" {
    var lv: c.L_D_I = undefined;
    try testing.expectSize(c.L_D_I, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71891:71899
test "L_D_Ip" {
    var lv: c.L_D_Ip = undefined;
    try testing.expectSize(c.L_D_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71916:71924
test "L_D_L" {
    var lv: c.L_D_L = undefined;
    try testing.expectSize(c.L_D_L, 24);
    try testing.expectAlign(c.L_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71941:71949
test "L_D_S" {
    var lv: c.L_D_S = undefined;
    try testing.expectSize(c.L_D_S, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71966:71974
test "L_D_Uc" {
    var lv: c.L_D_Uc = undefined;
    try testing.expectSize(c.L_D_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71991:71999
test "L_D_Ui" {
    var lv: c.L_D_Ui = undefined;
    try testing.expectSize(c.L_D_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:72016:72024
test "L_D_Ul" {
    var lv: c.L_D_Ul = undefined;
    try testing.expectSize(c.L_D_Ul, 24);
    try testing.expectAlign(c.L_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:72041:72049
test "L_D_Us" {
    var lv: c.L_D_Us = undefined;
    try testing.expectSize(c.L_D_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:72066:72074
test "L_D_Vp" {
    var lv: c.L_D_Vp = undefined;
    try testing.expectSize(c.L_D_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:72090:72097
test "L_F" {
    var lv: c.L_F = undefined;
    try testing.expectSize(c.L_F, ABISELECT(16, 12));
    try testing.expectAlign(c.L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:72838:72846
test "L_F_C" {
    var lv: c.L_F_C = undefined;
    try testing.expectSize(c.L_F_C, 16);
    try testing.expectAlign(c.L_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:72863:72871
test "L_F_D" {
    var lv: c.L_F_D = undefined;
    try testing.expectSize(c.L_F_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:72888:72896
test "L_F_F" {
    var lv: c.L_F_F = undefined;
    try testing.expectSize(c.L_F_F, 16);
    try testing.expectAlign(c.L_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:72913:72921
test "L_F_I" {
    var lv: c.L_F_I = undefined;
    try testing.expectSize(c.L_F_I, 16);
    try testing.expectAlign(c.L_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:72938:72946
test "L_F_Ip" {
    var lv: c.L_F_Ip = undefined;
    try testing.expectSize(c.L_F_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:72963:72971
test "L_F_L" {
    var lv: c.L_F_L = undefined;
    try testing.expectSize(c.L_F_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:72988:72996
test "L_F_S" {
    var lv: c.L_F_S = undefined;
    try testing.expectSize(c.L_F_S, 16);
    try testing.expectAlign(c.L_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73013:73021
test "L_F_Uc" {
    var lv: c.L_F_Uc = undefined;
    try testing.expectSize(c.L_F_Uc, 16);
    try testing.expectAlign(c.L_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73038:73046
test "L_F_Ui" {
    var lv: c.L_F_Ui = undefined;
    try testing.expectSize(c.L_F_Ui, 16);
    try testing.expectAlign(c.L_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73063:73071
test "L_F_Ul" {
    var lv: c.L_F_Ul = undefined;
    try testing.expectSize(c.L_F_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:73088:73096
test "L_F_Us" {
    var lv: c.L_F_Us = undefined;
    try testing.expectSize(c.L_F_Us, 16);
    try testing.expectAlign(c.L_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73113:73121
test "L_F_Vp" {
    var lv: c.L_F_Vp = undefined;
    try testing.expectSize(c.L_F_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:73137:73144
test "L_I" {
    var lv: c.L_I = undefined;
    try testing.expectSize(c.L_I, ABISELECT(16, 12));
    try testing.expectAlign(c.L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:73885:73893
test "L_I_C" {
    var lv: c.L_I_C = undefined;
    try testing.expectSize(c.L_I_C, 16);
    try testing.expectAlign(c.L_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73910:73918
test "L_I_D" {
    var lv: c.L_I_D = undefined;
    try testing.expectSize(c.L_I_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:73935:73943
test "L_I_F" {
    var lv: c.L_I_F = undefined;
    try testing.expectSize(c.L_I_F, 16);
    try testing.expectAlign(c.L_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73960:73968
test "L_I_I" {
    var lv: c.L_I_I = undefined;
    try testing.expectSize(c.L_I_I, 16);
    try testing.expectAlign(c.L_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73985:73993
test "L_I_Ip" {
    var lv: c.L_I_Ip = undefined;
    try testing.expectSize(c.L_I_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74010:74018
test "L_I_L" {
    var lv: c.L_I_L = undefined;
    try testing.expectSize(c.L_I_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74035:74043
test "L_I_S" {
    var lv: c.L_I_S = undefined;
    try testing.expectSize(c.L_I_S, 16);
    try testing.expectAlign(c.L_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:74060:74068
test "L_I_Uc" {
    var lv: c.L_I_Uc = undefined;
    try testing.expectSize(c.L_I_Uc, 16);
    try testing.expectAlign(c.L_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:74085:74093
test "L_I_Ui" {
    var lv: c.L_I_Ui = undefined;
    try testing.expectSize(c.L_I_Ui, 16);
    try testing.expectAlign(c.L_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:74110:74118
test "L_I_Ul" {
    var lv: c.L_I_Ul = undefined;
    try testing.expectSize(c.L_I_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74135:74143
test "L_I_Us" {
    var lv: c.L_I_Us = undefined;
    try testing.expectSize(c.L_I_Us, 16);
    try testing.expectAlign(c.L_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:74160:74168
test "L_I_Vp" {
    var lv: c.L_I_Vp = undefined;
    try testing.expectSize(c.L_I_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74184:74191
test "L_Ip" {
    var lv: c.L_Ip = undefined;
    try testing.expectSize(c.L_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:74932:74940
test "L_Ip_C" {
    var lv: c.L_Ip_C = undefined;
    try testing.expectSize(c.L_Ip_C, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74957:74965
test "L_Ip_D" {
    var lv: c.L_Ip_D = undefined;
    try testing.expectSize(c.L_Ip_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74982:74990
test "L_Ip_F" {
    var lv: c.L_Ip_F = undefined;
    try testing.expectSize(c.L_Ip_F, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75007:75015
test "L_Ip_I" {
    var lv: c.L_Ip_I = undefined;
    try testing.expectSize(c.L_Ip_I, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75032:75040
test "L_Ip_Ip" {
    var lv: c.L_Ip_Ip = undefined;
    try testing.expectSize(c.L_Ip_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75057:75065
test "L_Ip_L" {
    var lv: c.L_Ip_L = undefined;
    try testing.expectSize(c.L_Ip_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75082:75090
test "L_Ip_S" {
    var lv: c.L_Ip_S = undefined;
    try testing.expectSize(c.L_Ip_S, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75107:75115
test "L_Ip_Uc" {
    var lv: c.L_Ip_Uc = undefined;
    try testing.expectSize(c.L_Ip_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75132:75140
test "L_Ip_Ui" {
    var lv: c.L_Ip_Ui = undefined;
    try testing.expectSize(c.L_Ip_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75157:75165
test "L_Ip_Ul" {
    var lv: c.L_Ip_Ul = undefined;
    try testing.expectSize(c.L_Ip_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75182:75190
test "L_Ip_Us" {
    var lv: c.L_Ip_Us = undefined;
    try testing.expectSize(c.L_Ip_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75207:75215
test "L_Ip_Vp" {
    var lv: c.L_Ip_Vp = undefined;
    try testing.expectSize(c.L_Ip_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75231:75238
test "L_L" {
    var lv: c.L_L = undefined;
    try testing.expectSize(c.L_L, 16);
    try testing.expectAlign(c.L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:75979:75987
test "L_L_C" {
    var lv: c.L_L_C = undefined;
    try testing.expectSize(c.L_L_C, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76004:76012
test "L_L_D" {
    var lv: c.L_L_D = undefined;
    try testing.expectSize(c.L_L_D, 24);
    try testing.expectAlign(c.L_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76029:76037
test "L_L_F" {
    var lv: c.L_L_F = undefined;
    try testing.expectSize(c.L_L_F, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76054:76062
test "L_L_I" {
    var lv: c.L_L_I = undefined;
    try testing.expectSize(c.L_L_I, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76079:76087
test "L_L_Ip" {
    var lv: c.L_L_Ip = undefined;
    try testing.expectSize(c.L_L_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76104:76112
test "L_L_L" {
    var lv: c.L_L_L = undefined;
    try testing.expectSize(c.L_L_L, 24);
    try testing.expectAlign(c.L_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76129:76137
test "L_L_S" {
    var lv: c.L_L_S = undefined;
    try testing.expectSize(c.L_L_S, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76154:76162
test "L_L_Uc" {
    var lv: c.L_L_Uc = undefined;
    try testing.expectSize(c.L_L_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76179:76187
test "L_L_Ui" {
    var lv: c.L_L_Ui = undefined;
    try testing.expectSize(c.L_L_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76204:76212
test "L_L_Ul" {
    var lv: c.L_L_Ul = undefined;
    try testing.expectSize(c.L_L_Ul, 24);
    try testing.expectAlign(c.L_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76229:76237
test "L_L_Us" {
    var lv: c.L_L_Us = undefined;
    try testing.expectSize(c.L_L_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76254:76262
test "L_L_Vp" {
    var lv: c.L_L_Vp = undefined;
    try testing.expectSize(c.L_L_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76278:76285
test "L_S" {
    var lv: c.L_S = undefined;
    try testing.expectSize(c.L_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:77026:77034
test "L_S_C" {
    var lv: c.L_S_C = undefined;
    try testing.expectSize(c.L_S_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:77051:77059
test "L_S_D" {
    var lv: c.L_S_D = undefined;
    try testing.expectSize(c.L_S_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:77076:77084
test "L_S_F" {
    var lv: c.L_S_F = undefined;
    try testing.expectSize(c.L_S_F, 16);
    try testing.expectAlign(c.L_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:77101:77109
test "L_S_I" {
    var lv: c.L_S_I = undefined;
    try testing.expectSize(c.L_S_I, 16);
    try testing.expectAlign(c.L_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:77126:77134
test "L_S_Ip" {
    var lv: c.L_S_Ip = undefined;
    try testing.expectSize(c.L_S_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:77151:77159
test "L_S_L" {
    var lv: c.L_S_L = undefined;
    try testing.expectSize(c.L_S_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:77176:77184
test "L_S_S" {
    var lv: c.L_S_S = undefined;
    try testing.expectSize(c.L_S_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:77201:77209
test "L_S_Uc" {
    var lv: c.L_S_Uc = undefined;
    try testing.expectSize(c.L_S_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:77226:77234
test "L_S_Ui" {
    var lv: c.L_S_Ui = undefined;
    try testing.expectSize(c.L_S_Ui, 16);
    try testing.expectAlign(c.L_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:77251:77259
test "L_S_Ul" {
    var lv: c.L_S_Ul = undefined;
    try testing.expectSize(c.L_S_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:77276:77284
test "L_S_Us" {
    var lv: c.L_S_Us = undefined;
    try testing.expectSize(c.L_S_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:77301:77309
test "L_S_Vp" {
    var lv: c.L_S_Vp = undefined;
    try testing.expectSize(c.L_S_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:77325:77332
test "L_Uc" {
    var lv: c.L_Uc = undefined;
    try testing.expectSize(c.L_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:78073:78081
test "L_Uc_C" {
    var lv: c.L_Uc_C = undefined;
    try testing.expectSize(c.L_Uc_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xay.c:78098:78106
test "L_Uc_D" {
    var lv: c.L_Uc_D = undefined;
    try testing.expectSize(c.L_Uc_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:78123:78131
test "L_Uc_F" {
    var lv: c.L_Uc_F = undefined;
    try testing.expectSize(c.L_Uc_F, 16);
    try testing.expectAlign(c.L_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:78148:78156
test "L_Uc_I" {
    var lv: c.L_Uc_I = undefined;
    try testing.expectSize(c.L_Uc_I, 16);
    try testing.expectAlign(c.L_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:78173:78181
test "L_Uc_Ip" {
    var lv: c.L_Uc_Ip = undefined;
    try testing.expectSize(c.L_Uc_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:78198:78206
test "L_Uc_L" {
    var lv: c.L_Uc_L = undefined;
    try testing.expectSize(c.L_Uc_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:78223:78231
test "L_Uc_S" {
    var lv: c.L_Uc_S = undefined;
    try testing.expectSize(c.L_Uc_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:78248:78256
test "L_Uc_Uc" {
    var lv: c.L_Uc_Uc = undefined;
    try testing.expectSize(c.L_Uc_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xay.c:78273:78281
test "L_Uc_Ui" {
    var lv: c.L_Uc_Ui = undefined;
    try testing.expectSize(c.L_Uc_Ui, 16);
    try testing.expectAlign(c.L_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:78298:78306
test "L_Uc_Ul" {
    var lv: c.L_Uc_Ul = undefined;
    try testing.expectSize(c.L_Uc_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:78323:78331
test "L_Uc_Us" {
    var lv: c.L_Uc_Us = undefined;
    try testing.expectSize(c.L_Uc_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:78348:78356
test "L_Uc_Vp" {
    var lv: c.L_Uc_Vp = undefined;
    try testing.expectSize(c.L_Uc_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:78372:78379
test "L_Ui" {
    var lv: c.L_Ui = undefined;
    try testing.expectSize(c.L_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
