const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xbb.h");
});

// From T_Snnn_xbb.c:6180:6187
test "Ul_C" {
    var lv: c.Ul_C = undefined;
    try testing.expectSize(c.Ul_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:6928:6936
test "Ul_C_C" {
    var lv: c.Ul_C_C = undefined;
    try testing.expectSize(c.Ul_C_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xbb.c:6953:6961
test "Ul_C_D" {
    var lv: c.Ul_C_D = undefined;
    try testing.expectSize(c.Ul_C_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:6978:6986
test "Ul_C_F" {
    var lv: c.Ul_C_F = undefined;
    try testing.expectSize(c.Ul_C_F, 16);
    try testing.expectAlign(c.Ul_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:7003:7011
test "Ul_C_I" {
    var lv: c.Ul_C_I = undefined;
    try testing.expectSize(c.Ul_C_I, 16);
    try testing.expectAlign(c.Ul_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:7028:7036
test "Ul_C_Ip" {
    var lv: c.Ul_C_Ip = undefined;
    try testing.expectSize(c.Ul_C_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:7053:7061
test "Ul_C_L" {
    var lv: c.Ul_C_L = undefined;
    try testing.expectSize(c.Ul_C_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:7078:7086
test "Ul_C_S" {
    var lv: c.Ul_C_S = undefined;
    try testing.expectSize(c.Ul_C_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:7103:7111
test "Ul_C_Uc" {
    var lv: c.Ul_C_Uc = undefined;
    try testing.expectSize(c.Ul_C_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xbb.c:7128:7136
test "Ul_C_Ui" {
    var lv: c.Ul_C_Ui = undefined;
    try testing.expectSize(c.Ul_C_Ui, 16);
    try testing.expectAlign(c.Ul_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:7153:7161
test "Ul_C_Ul" {
    var lv: c.Ul_C_Ul = undefined;
    try testing.expectSize(c.Ul_C_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:7178:7186
test "Ul_C_Us" {
    var lv: c.Ul_C_Us = undefined;
    try testing.expectSize(c.Ul_C_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:7203:7211
test "Ul_C_Vp" {
    var lv: c.Ul_C_Vp = undefined;
    try testing.expectSize(c.Ul_C_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:7227:7234
test "Ul_D" {
    var lv: c.Ul_D = undefined;
    try testing.expectSize(c.Ul_D, 16);
    try testing.expectAlign(c.Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:7975:7983
test "Ul_D_C" {
    var lv: c.Ul_D_C = undefined;
    try testing.expectSize(c.Ul_D_C, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8000:8008
test "Ul_D_D" {
    var lv: c.Ul_D_D = undefined;
    try testing.expectSize(c.Ul_D_D, 24);
    try testing.expectAlign(c.Ul_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8025:8033
test "Ul_D_F" {
    var lv: c.Ul_D_F = undefined;
    try testing.expectSize(c.Ul_D_F, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8050:8058
test "Ul_D_I" {
    var lv: c.Ul_D_I = undefined;
    try testing.expectSize(c.Ul_D_I, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8075:8083
test "Ul_D_Ip" {
    var lv: c.Ul_D_Ip = undefined;
    try testing.expectSize(c.Ul_D_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8100:8108
test "Ul_D_L" {
    var lv: c.Ul_D_L = undefined;
    try testing.expectSize(c.Ul_D_L, 24);
    try testing.expectAlign(c.Ul_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8125:8133
test "Ul_D_S" {
    var lv: c.Ul_D_S = undefined;
    try testing.expectSize(c.Ul_D_S, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8150:8158
test "Ul_D_Uc" {
    var lv: c.Ul_D_Uc = undefined;
    try testing.expectSize(c.Ul_D_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8175:8183
test "Ul_D_Ui" {
    var lv: c.Ul_D_Ui = undefined;
    try testing.expectSize(c.Ul_D_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8200:8208
test "Ul_D_Ul" {
    var lv: c.Ul_D_Ul = undefined;
    try testing.expectSize(c.Ul_D_Ul, 24);
    try testing.expectAlign(c.Ul_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8225:8233
test "Ul_D_Us" {
    var lv: c.Ul_D_Us = undefined;
    try testing.expectSize(c.Ul_D_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8250:8258
test "Ul_D_Vp" {
    var lv: c.Ul_D_Vp = undefined;
    try testing.expectSize(c.Ul_D_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8274:8281
test "Ul_F" {
    var lv: c.Ul_F = undefined;
    try testing.expectSize(c.Ul_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:9022:9030
test "Ul_F_C" {
    var lv: c.Ul_F_C = undefined;
    try testing.expectSize(c.Ul_F_C, 16);
    try testing.expectAlign(c.Ul_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9047:9055
test "Ul_F_D" {
    var lv: c.Ul_F_D = undefined;
    try testing.expectSize(c.Ul_F_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:9072:9080
test "Ul_F_F" {
    var lv: c.Ul_F_F = undefined;
    try testing.expectSize(c.Ul_F_F, 16);
    try testing.expectAlign(c.Ul_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9097:9105
test "Ul_F_I" {
    var lv: c.Ul_F_I = undefined;
    try testing.expectSize(c.Ul_F_I, 16);
    try testing.expectAlign(c.Ul_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9122:9130
test "Ul_F_Ip" {
    var lv: c.Ul_F_Ip = undefined;
    try testing.expectSize(c.Ul_F_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:9147:9155
test "Ul_F_L" {
    var lv: c.Ul_F_L = undefined;
    try testing.expectSize(c.Ul_F_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:9172:9180
test "Ul_F_S" {
    var lv: c.Ul_F_S = undefined;
    try testing.expectSize(c.Ul_F_S, 16);
    try testing.expectAlign(c.Ul_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9197:9205
test "Ul_F_Uc" {
    var lv: c.Ul_F_Uc = undefined;
    try testing.expectSize(c.Ul_F_Uc, 16);
    try testing.expectAlign(c.Ul_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9222:9230
test "Ul_F_Ui" {
    var lv: c.Ul_F_Ui = undefined;
    try testing.expectSize(c.Ul_F_Ui, 16);
    try testing.expectAlign(c.Ul_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9247:9255
test "Ul_F_Ul" {
    var lv: c.Ul_F_Ul = undefined;
    try testing.expectSize(c.Ul_F_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:9272:9280
test "Ul_F_Us" {
    var lv: c.Ul_F_Us = undefined;
    try testing.expectSize(c.Ul_F_Us, 16);
    try testing.expectAlign(c.Ul_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9297:9305
test "Ul_F_Vp" {
    var lv: c.Ul_F_Vp = undefined;
    try testing.expectSize(c.Ul_F_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:9321:9328
test "Ul_I" {
    var lv: c.Ul_I = undefined;
    try testing.expectSize(c.Ul_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:10069:10077
test "Ul_I_C" {
    var lv: c.Ul_I_C = undefined;
    try testing.expectSize(c.Ul_I_C, 16);
    try testing.expectAlign(c.Ul_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10094:10102
test "Ul_I_D" {
    var lv: c.Ul_I_D = undefined;
    try testing.expectSize(c.Ul_I_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:10119:10127
test "Ul_I_F" {
    var lv: c.Ul_I_F = undefined;
    try testing.expectSize(c.Ul_I_F, 16);
    try testing.expectAlign(c.Ul_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10144:10152
test "Ul_I_I" {
    var lv: c.Ul_I_I = undefined;
    try testing.expectSize(c.Ul_I_I, 16);
    try testing.expectAlign(c.Ul_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10169:10177
test "Ul_I_Ip" {
    var lv: c.Ul_I_Ip = undefined;
    try testing.expectSize(c.Ul_I_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:10194:10202
test "Ul_I_L" {
    var lv: c.Ul_I_L = undefined;
    try testing.expectSize(c.Ul_I_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:10219:10227
test "Ul_I_S" {
    var lv: c.Ul_I_S = undefined;
    try testing.expectSize(c.Ul_I_S, 16);
    try testing.expectAlign(c.Ul_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10244:10252
test "Ul_I_Uc" {
    var lv: c.Ul_I_Uc = undefined;
    try testing.expectSize(c.Ul_I_Uc, 16);
    try testing.expectAlign(c.Ul_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10269:10277
test "Ul_I_Ui" {
    var lv: c.Ul_I_Ui = undefined;
    try testing.expectSize(c.Ul_I_Ui, 16);
    try testing.expectAlign(c.Ul_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10294:10302
test "Ul_I_Ul" {
    var lv: c.Ul_I_Ul = undefined;
    try testing.expectSize(c.Ul_I_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:10319:10327
test "Ul_I_Us" {
    var lv: c.Ul_I_Us = undefined;
    try testing.expectSize(c.Ul_I_Us, 16);
    try testing.expectAlign(c.Ul_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10344:10352
test "Ul_I_Vp" {
    var lv: c.Ul_I_Vp = undefined;
    try testing.expectSize(c.Ul_I_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:10368:10375
test "Ul_Ip" {
    var lv: c.Ul_Ip = undefined;
    try testing.expectSize(c.Ul_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:11116:11124
test "Ul_Ip_C" {
    var lv: c.Ul_Ip_C = undefined;
    try testing.expectSize(c.Ul_Ip_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11141:11149
test "Ul_Ip_D" {
    var lv: c.Ul_Ip_D = undefined;
    try testing.expectSize(c.Ul_Ip_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11166:11174
test "Ul_Ip_F" {
    var lv: c.Ul_Ip_F = undefined;
    try testing.expectSize(c.Ul_Ip_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11191:11199
test "Ul_Ip_I" {
    var lv: c.Ul_Ip_I = undefined;
    try testing.expectSize(c.Ul_Ip_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11216:11224
test "Ul_Ip_Ip" {
    var lv: c.Ul_Ip_Ip = undefined;
    try testing.expectSize(c.Ul_Ip_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11241:11249
test "Ul_Ip_L" {
    var lv: c.Ul_Ip_L = undefined;
    try testing.expectSize(c.Ul_Ip_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11266:11274
test "Ul_Ip_S" {
    var lv: c.Ul_Ip_S = undefined;
    try testing.expectSize(c.Ul_Ip_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11291:11299
test "Ul_Ip_Uc" {
    var lv: c.Ul_Ip_Uc = undefined;
    try testing.expectSize(c.Ul_Ip_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11316:11324
test "Ul_Ip_Ui" {
    var lv: c.Ul_Ip_Ui = undefined;
    try testing.expectSize(c.Ul_Ip_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11341:11349
test "Ul_Ip_Ul" {
    var lv: c.Ul_Ip_Ul = undefined;
    try testing.expectSize(c.Ul_Ip_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11366:11374
test "Ul_Ip_Us" {
    var lv: c.Ul_Ip_Us = undefined;
    try testing.expectSize(c.Ul_Ip_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11391:11399
test "Ul_Ip_Vp" {
    var lv: c.Ul_Ip_Vp = undefined;
    try testing.expectSize(c.Ul_Ip_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11415:11422
test "Ul_L" {
    var lv: c.Ul_L = undefined;
    try testing.expectSize(c.Ul_L, 16);
    try testing.expectAlign(c.Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:12163:12171
test "Ul_L_C" {
    var lv: c.Ul_L_C = undefined;
    try testing.expectSize(c.Ul_L_C, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12188:12196
test "Ul_L_D" {
    var lv: c.Ul_L_D = undefined;
    try testing.expectSize(c.Ul_L_D, 24);
    try testing.expectAlign(c.Ul_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12213:12221
test "Ul_L_F" {
    var lv: c.Ul_L_F = undefined;
    try testing.expectSize(c.Ul_L_F, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12238:12246
test "Ul_L_I" {
    var lv: c.Ul_L_I = undefined;
    try testing.expectSize(c.Ul_L_I, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12263:12271
test "Ul_L_Ip" {
    var lv: c.Ul_L_Ip = undefined;
    try testing.expectSize(c.Ul_L_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12288:12296
test "Ul_L_L" {
    var lv: c.Ul_L_L = undefined;
    try testing.expectSize(c.Ul_L_L, 24);
    try testing.expectAlign(c.Ul_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12313:12321
test "Ul_L_S" {
    var lv: c.Ul_L_S = undefined;
    try testing.expectSize(c.Ul_L_S, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12338:12346
test "Ul_L_Uc" {
    var lv: c.Ul_L_Uc = undefined;
    try testing.expectSize(c.Ul_L_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12363:12371
test "Ul_L_Ui" {
    var lv: c.Ul_L_Ui = undefined;
    try testing.expectSize(c.Ul_L_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12388:12396
test "Ul_L_Ul" {
    var lv: c.Ul_L_Ul = undefined;
    try testing.expectSize(c.Ul_L_Ul, 24);
    try testing.expectAlign(c.Ul_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12413:12421
test "Ul_L_Us" {
    var lv: c.Ul_L_Us = undefined;
    try testing.expectSize(c.Ul_L_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12438:12446
test "Ul_L_Vp" {
    var lv: c.Ul_L_Vp = undefined;
    try testing.expectSize(c.Ul_L_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12462:12469
test "Ul_S" {
    var lv: c.Ul_S = undefined;
    try testing.expectSize(c.Ul_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:13210:13218
test "Ul_S_C" {
    var lv: c.Ul_S_C = undefined;
    try testing.expectSize(c.Ul_S_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:13235:13243
test "Ul_S_D" {
    var lv: c.Ul_S_D = undefined;
    try testing.expectSize(c.Ul_S_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:13260:13268
test "Ul_S_F" {
    var lv: c.Ul_S_F = undefined;
    try testing.expectSize(c.Ul_S_F, 16);
    try testing.expectAlign(c.Ul_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:13285:13293
test "Ul_S_I" {
    var lv: c.Ul_S_I = undefined;
    try testing.expectSize(c.Ul_S_I, 16);
    try testing.expectAlign(c.Ul_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:13310:13318
test "Ul_S_Ip" {
    var lv: c.Ul_S_Ip = undefined;
    try testing.expectSize(c.Ul_S_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:13335:13343
test "Ul_S_L" {
    var lv: c.Ul_S_L = undefined;
    try testing.expectSize(c.Ul_S_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:13360:13368
test "Ul_S_S" {
    var lv: c.Ul_S_S = undefined;
    try testing.expectSize(c.Ul_S_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:13385:13393
test "Ul_S_Uc" {
    var lv: c.Ul_S_Uc = undefined;
    try testing.expectSize(c.Ul_S_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:13410:13418
test "Ul_S_Ui" {
    var lv: c.Ul_S_Ui = undefined;
    try testing.expectSize(c.Ul_S_Ui, 16);
    try testing.expectAlign(c.Ul_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:13435:13443
test "Ul_S_Ul" {
    var lv: c.Ul_S_Ul = undefined;
    try testing.expectSize(c.Ul_S_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:13460:13468
test "Ul_S_Us" {
    var lv: c.Ul_S_Us = undefined;
    try testing.expectSize(c.Ul_S_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:13485:13493
test "Ul_S_Vp" {
    var lv: c.Ul_S_Vp = undefined;
    try testing.expectSize(c.Ul_S_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:13509:13516
test "Ul_Uc" {
    var lv: c.Ul_Uc = undefined;
    try testing.expectSize(c.Ul_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:14257:14265
test "Ul_Uc_C" {
    var lv: c.Ul_Uc_C = undefined;
    try testing.expectSize(c.Ul_Uc_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xbb.c:14282:14290
test "Ul_Uc_D" {
    var lv: c.Ul_Uc_D = undefined;
    try testing.expectSize(c.Ul_Uc_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:14307:14315
test "Ul_Uc_F" {
    var lv: c.Ul_Uc_F = undefined;
    try testing.expectSize(c.Ul_Uc_F, 16);
    try testing.expectAlign(c.Ul_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:14332:14340
test "Ul_Uc_I" {
    var lv: c.Ul_Uc_I = undefined;
    try testing.expectSize(c.Ul_Uc_I, 16);
    try testing.expectAlign(c.Ul_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:14357:14365
test "Ul_Uc_Ip" {
    var lv: c.Ul_Uc_Ip = undefined;
    try testing.expectSize(c.Ul_Uc_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:14382:14390
test "Ul_Uc_L" {
    var lv: c.Ul_Uc_L = undefined;
    try testing.expectSize(c.Ul_Uc_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:14407:14415
test "Ul_Uc_S" {
    var lv: c.Ul_Uc_S = undefined;
    try testing.expectSize(c.Ul_Uc_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:14432:14440
test "Ul_Uc_Uc" {
    var lv: c.Ul_Uc_Uc = undefined;
    try testing.expectSize(c.Ul_Uc_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xbb.c:14457:14465
test "Ul_Uc_Ui" {
    var lv: c.Ul_Uc_Ui = undefined;
    try testing.expectSize(c.Ul_Uc_Ui, 16);
    try testing.expectAlign(c.Ul_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:14482:14490
test "Ul_Uc_Ul" {
    var lv: c.Ul_Uc_Ul = undefined;
    try testing.expectSize(c.Ul_Uc_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:14507:14515
test "Ul_Uc_Us" {
    var lv: c.Ul_Uc_Us = undefined;
    try testing.expectSize(c.Ul_Uc_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:14532:14540
test "Ul_Uc_Vp" {
    var lv: c.Ul_Uc_Vp = undefined;
    try testing.expectSize(c.Ul_Uc_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:14556:14563
test "Ul_Ui" {
    var lv: c.Ul_Ui = undefined;
    try testing.expectSize(c.Ul_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:15304:15312
test "Ul_Ui_C" {
    var lv: c.Ul_Ui_C = undefined;
    try testing.expectSize(c.Ul_Ui_C, 16);
    try testing.expectAlign(c.Ul_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15329:15337
test "Ul_Ui_D" {
    var lv: c.Ul_Ui_D = undefined;
    try testing.expectSize(c.Ul_Ui_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:15354:15362
test "Ul_Ui_F" {
    var lv: c.Ul_Ui_F = undefined;
    try testing.expectSize(c.Ul_Ui_F, 16);
    try testing.expectAlign(c.Ul_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15379:15387
test "Ul_Ui_I" {
    var lv: c.Ul_Ui_I = undefined;
    try testing.expectSize(c.Ul_Ui_I, 16);
    try testing.expectAlign(c.Ul_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15404:15412
test "Ul_Ui_Ip" {
    var lv: c.Ul_Ui_Ip = undefined;
    try testing.expectSize(c.Ul_Ui_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:15429:15437
test "Ul_Ui_L" {
    var lv: c.Ul_Ui_L = undefined;
    try testing.expectSize(c.Ul_Ui_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:15454:15462
test "Ul_Ui_S" {
    var lv: c.Ul_Ui_S = undefined;
    try testing.expectSize(c.Ul_Ui_S, 16);
    try testing.expectAlign(c.Ul_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15479:15487
test "Ul_Ui_Uc" {
    var lv: c.Ul_Ui_Uc = undefined;
    try testing.expectSize(c.Ul_Ui_Uc, 16);
    try testing.expectAlign(c.Ul_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15504:15512
test "Ul_Ui_Ui" {
    var lv: c.Ul_Ui_Ui = undefined;
    try testing.expectSize(c.Ul_Ui_Ui, 16);
    try testing.expectAlign(c.Ul_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15529:15537
test "Ul_Ui_Ul" {
    var lv: c.Ul_Ui_Ul = undefined;
    try testing.expectSize(c.Ul_Ui_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:15554:15562
test "Ul_Ui_Us" {
    var lv: c.Ul_Ui_Us = undefined;
    try testing.expectSize(c.Ul_Ui_Us, 16);
    try testing.expectAlign(c.Ul_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15579:15587
test "Ul_Ui_Vp" {
    var lv: c.Ul_Ui_Vp = undefined;
    try testing.expectSize(c.Ul_Ui_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:15603:15610
test "Ul_Ul" {
    var lv: c.Ul_Ul = undefined;
    try testing.expectSize(c.Ul_Ul, 16);
    try testing.expectAlign(c.Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:16351:16359
test "Ul_Ul_C" {
    var lv: c.Ul_Ul_C = undefined;
    try testing.expectSize(c.Ul_Ul_C, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16376:16384
test "Ul_Ul_D" {
    var lv: c.Ul_Ul_D = undefined;
    try testing.expectSize(c.Ul_Ul_D, 24);
    try testing.expectAlign(c.Ul_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16401:16409
test "Ul_Ul_F" {
    var lv: c.Ul_Ul_F = undefined;
    try testing.expectSize(c.Ul_Ul_F, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16426:16434
test "Ul_Ul_I" {
    var lv: c.Ul_Ul_I = undefined;
    try testing.expectSize(c.Ul_Ul_I, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16451:16459
test "Ul_Ul_Ip" {
    var lv: c.Ul_Ul_Ip = undefined;
    try testing.expectSize(c.Ul_Ul_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16476:16484
test "Ul_Ul_L" {
    var lv: c.Ul_Ul_L = undefined;
    try testing.expectSize(c.Ul_Ul_L, 24);
    try testing.expectAlign(c.Ul_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16501:16509
test "Ul_Ul_S" {
    var lv: c.Ul_Ul_S = undefined;
    try testing.expectSize(c.Ul_Ul_S, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16526:16534
test "Ul_Ul_Uc" {
    var lv: c.Ul_Ul_Uc = undefined;
    try testing.expectSize(c.Ul_Ul_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16551:16559
test "Ul_Ul_Ui" {
    var lv: c.Ul_Ul_Ui = undefined;
    try testing.expectSize(c.Ul_Ul_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16576:16584
test "Ul_Ul_Ul" {
    var lv: c.Ul_Ul_Ul = undefined;
    try testing.expectSize(c.Ul_Ul_Ul, 24);
    try testing.expectAlign(c.Ul_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16601:16609
test "Ul_Ul_Us" {
    var lv: c.Ul_Ul_Us = undefined;
    try testing.expectSize(c.Ul_Ul_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16626:16634
test "Ul_Ul_Vp" {
    var lv: c.Ul_Ul_Vp = undefined;
    try testing.expectSize(c.Ul_Ul_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16650:16657
test "Ul_Us" {
    var lv: c.Ul_Us = undefined;
    try testing.expectSize(c.Ul_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:17398:17406
test "Ul_Us_C" {
    var lv: c.Ul_Us_C = undefined;
    try testing.expectSize(c.Ul_Us_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:17423:17431
test "Ul_Us_D" {
    var lv: c.Ul_Us_D = undefined;
    try testing.expectSize(c.Ul_Us_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:17448:17456
test "Ul_Us_F" {
    var lv: c.Ul_Us_F = undefined;
    try testing.expectSize(c.Ul_Us_F, 16);
    try testing.expectAlign(c.Ul_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:17473:17481
test "Ul_Us_I" {
    var lv: c.Ul_Us_I = undefined;
    try testing.expectSize(c.Ul_Us_I, 16);
    try testing.expectAlign(c.Ul_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:17498:17506
test "Ul_Us_Ip" {
    var lv: c.Ul_Us_Ip = undefined;
    try testing.expectSize(c.Ul_Us_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:17523:17531
test "Ul_Us_L" {
    var lv: c.Ul_Us_L = undefined;
    try testing.expectSize(c.Ul_Us_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:17548:17556
test "Ul_Us_S" {
    var lv: c.Ul_Us_S = undefined;
    try testing.expectSize(c.Ul_Us_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:17573:17581
test "Ul_Us_Uc" {
    var lv: c.Ul_Us_Uc = undefined;
    try testing.expectSize(c.Ul_Us_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:17598:17606
test "Ul_Us_Ui" {
    var lv: c.Ul_Us_Ui = undefined;
    try testing.expectSize(c.Ul_Us_Ui, 16);
    try testing.expectAlign(c.Ul_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:17623:17631
test "Ul_Us_Ul" {
    var lv: c.Ul_Us_Ul = undefined;
    try testing.expectSize(c.Ul_Us_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:17648:17656
test "Ul_Us_Us" {
    var lv: c.Ul_Us_Us = undefined;
    try testing.expectSize(c.Ul_Us_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:17673:17681
test "Ul_Us_Vp" {
    var lv: c.Ul_Us_Vp = undefined;
    try testing.expectSize(c.Ul_Us_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:17697:17704
test "Ul_Vp" {
    var lv: c.Ul_Vp = undefined;
    try testing.expectSize(c.Ul_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:18445:18453
test "Ul_Vp_C" {
    var lv: c.Ul_Vp_C = undefined;
    try testing.expectSize(c.Ul_Vp_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18470:18478
test "Ul_Vp_D" {
    var lv: c.Ul_Vp_D = undefined;
    try testing.expectSize(c.Ul_Vp_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18495:18503
test "Ul_Vp_F" {
    var lv: c.Ul_Vp_F = undefined;
    try testing.expectSize(c.Ul_Vp_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18520:18528
test "Ul_Vp_I" {
    var lv: c.Ul_Vp_I = undefined;
    try testing.expectSize(c.Ul_Vp_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18545:18553
test "Ul_Vp_Ip" {
    var lv: c.Ul_Vp_Ip = undefined;
    try testing.expectSize(c.Ul_Vp_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18570:18578
test "Ul_Vp_L" {
    var lv: c.Ul_Vp_L = undefined;
    try testing.expectSize(c.Ul_Vp_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18595:18603
test "Ul_Vp_S" {
    var lv: c.Ul_Vp_S = undefined;
    try testing.expectSize(c.Ul_Vp_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18620:18628
test "Ul_Vp_Uc" {
    var lv: c.Ul_Vp_Uc = undefined;
    try testing.expectSize(c.Ul_Vp_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18645:18653
test "Ul_Vp_Ui" {
    var lv: c.Ul_Vp_Ui = undefined;
    try testing.expectSize(c.Ul_Vp_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18670:18678
test "Ul_Vp_Ul" {
    var lv: c.Ul_Vp_Ul = undefined;
    try testing.expectSize(c.Ul_Vp_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18695:18703
test "Ul_Vp_Us" {
    var lv: c.Ul_Vp_Us = undefined;
    try testing.expectSize(c.Ul_Vp_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18720:18728
test "Ul_Vp_Vp" {
    var lv: c.Ul_Vp_Vp = undefined;
    try testing.expectSize(c.Ul_Vp_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18743:18749
test "Us" {
    var lv: c.Us = undefined;
    try testing.expectSize(c.Us, 2);
    try testing.expectAlign(c.Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Snnn_xbb.c:49065:49072
test "Us_C" {
    var lv: c.Us_C = undefined;
    try testing.expectSize(c.Us_C, 4);
    try testing.expectAlign(c.Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xbb.c:49813:49821
test "Us_C_C" {
    var lv: c.Us_C_C = undefined;
    try testing.expectSize(c.Us_C_C, 4);
    try testing.expectAlign(c.Us_C_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xbb.c:49838:49846
test "Us_C_D" {
    var lv: c.Us_C_D = undefined;
    try testing.expectSize(c.Us_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:49863:49871
test "Us_C_F" {
    var lv: c.Us_C_F = undefined;
    try testing.expectSize(c.Us_C_F, 8);
    try testing.expectAlign(c.Us_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:49888:49896
test "Us_C_I" {
    var lv: c.Us_C_I = undefined;
    try testing.expectSize(c.Us_C_I, 8);
    try testing.expectAlign(c.Us_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:49913:49921
test "Us_C_Ip" {
    var lv: c.Us_C_Ip = undefined;
    try testing.expectSize(c.Us_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:49938:49946
test "Us_C_L" {
    var lv: c.Us_C_L = undefined;
    try testing.expectSize(c.Us_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:49963:49971
test "Us_C_S" {
    var lv: c.Us_C_S = undefined;
    try testing.expectSize(c.Us_C_S, 6);
    try testing.expectAlign(c.Us_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:49988:49996
test "Us_C_Uc" {
    var lv: c.Us_C_Uc = undefined;
    try testing.expectSize(c.Us_C_Uc, 4);
    try testing.expectAlign(c.Us_C_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xbb.c:50013:50021
test "Us_C_Ui" {
    var lv: c.Us_C_Ui = undefined;
    try testing.expectSize(c.Us_C_Ui, 8);
    try testing.expectAlign(c.Us_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:50038:50046
test "Us_C_Ul" {
    var lv: c.Us_C_Ul = undefined;
    try testing.expectSize(c.Us_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:50063:50071
test "Us_C_Us" {
    var lv: c.Us_C_Us = undefined;
    try testing.expectSize(c.Us_C_Us, 6);
    try testing.expectAlign(c.Us_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:50088:50096
test "Us_C_Vp" {
    var lv: c.Us_C_Vp = undefined;
    try testing.expectSize(c.Us_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:50112:50119
test "Us_D" {
    var lv: c.Us_D = undefined;
    try testing.expectSize(c.Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:50860:50868
test "Us_D_C" {
    var lv: c.Us_D_C = undefined;
    try testing.expectSize(c.Us_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:50885:50893
test "Us_D_D" {
    var lv: c.Us_D_D = undefined;
    try testing.expectSize(c.Us_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:50910:50918
test "Us_D_F" {
    var lv: c.Us_D_F = undefined;
    try testing.expectSize(c.Us_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:50935:50943
test "Us_D_I" {
    var lv: c.Us_D_I = undefined;
    try testing.expectSize(c.Us_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:50960:50968
test "Us_D_Ip" {
    var lv: c.Us_D_Ip = undefined;
    try testing.expectSize(c.Us_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:50985:50993
test "Us_D_L" {
    var lv: c.Us_D_L = undefined;
    try testing.expectSize(c.Us_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51010:51018
test "Us_D_S" {
    var lv: c.Us_D_S = undefined;
    try testing.expectSize(c.Us_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51035:51043
test "Us_D_Uc" {
    var lv: c.Us_D_Uc = undefined;
    try testing.expectSize(c.Us_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51060:51068
test "Us_D_Ui" {
    var lv: c.Us_D_Ui = undefined;
    try testing.expectSize(c.Us_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51085:51093
test "Us_D_Ul" {
    var lv: c.Us_D_Ul = undefined;
    try testing.expectSize(c.Us_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51110:51118
test "Us_D_Us" {
    var lv: c.Us_D_Us = undefined;
    try testing.expectSize(c.Us_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51135:51143
test "Us_D_Vp" {
    var lv: c.Us_D_Vp = undefined;
    try testing.expectSize(c.Us_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51159:51166
test "Us_F" {
    var lv: c.Us_F = undefined;
    try testing.expectSize(c.Us_F, 8);
    try testing.expectAlign(c.Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xbb.c:51907:51915
test "Us_F_C" {
    var lv: c.Us_F_C = undefined;
    try testing.expectSize(c.Us_F_C, 12);
    try testing.expectAlign(c.Us_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:51932:51940
test "Us_F_D" {
    var lv: c.Us_F_D = undefined;
    try testing.expectSize(c.Us_F_D, 16);
    try testing.expectAlign(c.Us_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:51957:51965
test "Us_F_F" {
    var lv: c.Us_F_F = undefined;
    try testing.expectSize(c.Us_F_F, 12);
    try testing.expectAlign(c.Us_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:51982:51990
test "Us_F_I" {
    var lv: c.Us_F_I = undefined;
    try testing.expectSize(c.Us_F_I, 12);
    try testing.expectAlign(c.Us_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52007:52015
test "Us_F_Ip" {
    var lv: c.Us_F_Ip = undefined;
    try testing.expectSize(c.Us_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52032:52040
test "Us_F_L" {
    var lv: c.Us_F_L = undefined;
    try testing.expectSize(c.Us_F_L, 16);
    try testing.expectAlign(c.Us_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52057:52065
test "Us_F_S" {
    var lv: c.Us_F_S = undefined;
    try testing.expectSize(c.Us_F_S, 12);
    try testing.expectAlign(c.Us_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52082:52090
test "Us_F_Uc" {
    var lv: c.Us_F_Uc = undefined;
    try testing.expectSize(c.Us_F_Uc, 12);
    try testing.expectAlign(c.Us_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52107:52115
test "Us_F_Ui" {
    var lv: c.Us_F_Ui = undefined;
    try testing.expectSize(c.Us_F_Ui, 12);
    try testing.expectAlign(c.Us_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52132:52140
test "Us_F_Ul" {
    var lv: c.Us_F_Ul = undefined;
    try testing.expectSize(c.Us_F_Ul, 16);
    try testing.expectAlign(c.Us_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52157:52165
test "Us_F_Us" {
    var lv: c.Us_F_Us = undefined;
    try testing.expectSize(c.Us_F_Us, 12);
    try testing.expectAlign(c.Us_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52182:52190
test "Us_F_Vp" {
    var lv: c.Us_F_Vp = undefined;
    try testing.expectSize(c.Us_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52206:52213
test "Us_I" {
    var lv: c.Us_I = undefined;
    try testing.expectSize(c.Us_I, 8);
    try testing.expectAlign(c.Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xbb.c:52954:52962
test "Us_I_C" {
    var lv: c.Us_I_C = undefined;
    try testing.expectSize(c.Us_I_C, 12);
    try testing.expectAlign(c.Us_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52979:52987
test "Us_I_D" {
    var lv: c.Us_I_D = undefined;
    try testing.expectSize(c.Us_I_D, 16);
    try testing.expectAlign(c.Us_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53004:53012
test "Us_I_F" {
    var lv: c.Us_I_F = undefined;
    try testing.expectSize(c.Us_I_F, 12);
    try testing.expectAlign(c.Us_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53029:53037
test "Us_I_I" {
    var lv: c.Us_I_I = undefined;
    try testing.expectSize(c.Us_I_I, 12);
    try testing.expectAlign(c.Us_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53054:53062
test "Us_I_Ip" {
    var lv: c.Us_I_Ip = undefined;
    try testing.expectSize(c.Us_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53079:53087
test "Us_I_L" {
    var lv: c.Us_I_L = undefined;
    try testing.expectSize(c.Us_I_L, 16);
    try testing.expectAlign(c.Us_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53104:53112
test "Us_I_S" {
    var lv: c.Us_I_S = undefined;
    try testing.expectSize(c.Us_I_S, 12);
    try testing.expectAlign(c.Us_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53129:53137
test "Us_I_Uc" {
    var lv: c.Us_I_Uc = undefined;
    try testing.expectSize(c.Us_I_Uc, 12);
    try testing.expectAlign(c.Us_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53154:53162
test "Us_I_Ui" {
    var lv: c.Us_I_Ui = undefined;
    try testing.expectSize(c.Us_I_Ui, 12);
    try testing.expectAlign(c.Us_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53179:53187
test "Us_I_Ul" {
    var lv: c.Us_I_Ul = undefined;
    try testing.expectSize(c.Us_I_Ul, 16);
    try testing.expectAlign(c.Us_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53204:53212
test "Us_I_Us" {
    var lv: c.Us_I_Us = undefined;
    try testing.expectSize(c.Us_I_Us, 12);
    try testing.expectAlign(c.Us_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53229:53237
test "Us_I_Vp" {
    var lv: c.Us_I_Vp = undefined;
    try testing.expectSize(c.Us_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53253:53260
test "Us_Ip" {
    var lv: c.Us_Ip = undefined;
    try testing.expectSize(c.Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:54001:54009
test "Us_Ip_C" {
    var lv: c.Us_Ip_C = undefined;
    try testing.expectSize(c.Us_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54026:54034
test "Us_Ip_D" {
    var lv: c.Us_Ip_D = undefined;
    try testing.expectSize(c.Us_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54051:54059
test "Us_Ip_F" {
    var lv: c.Us_Ip_F = undefined;
    try testing.expectSize(c.Us_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54076:54084
test "Us_Ip_I" {
    var lv: c.Us_Ip_I = undefined;
    try testing.expectSize(c.Us_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54101:54109
test "Us_Ip_Ip" {
    var lv: c.Us_Ip_Ip = undefined;
    try testing.expectSize(c.Us_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54126:54134
test "Us_Ip_L" {
    var lv: c.Us_Ip_L = undefined;
    try testing.expectSize(c.Us_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54151:54159
test "Us_Ip_S" {
    var lv: c.Us_Ip_S = undefined;
    try testing.expectSize(c.Us_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54176:54184
test "Us_Ip_Uc" {
    var lv: c.Us_Ip_Uc = undefined;
    try testing.expectSize(c.Us_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54201:54209
test "Us_Ip_Ui" {
    var lv: c.Us_Ip_Ui = undefined;
    try testing.expectSize(c.Us_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54226:54234
test "Us_Ip_Ul" {
    var lv: c.Us_Ip_Ul = undefined;
    try testing.expectSize(c.Us_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54251:54259
test "Us_Ip_Us" {
    var lv: c.Us_Ip_Us = undefined;
    try testing.expectSize(c.Us_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54276:54284
test "Us_Ip_Vp" {
    var lv: c.Us_Ip_Vp = undefined;
    try testing.expectSize(c.Us_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54300:54307
test "Us_L" {
    var lv: c.Us_L = undefined;
    try testing.expectSize(c.Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:55048:55056
test "Us_L_C" {
    var lv: c.Us_L_C = undefined;
    try testing.expectSize(c.Us_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55073:55081
test "Us_L_D" {
    var lv: c.Us_L_D = undefined;
    try testing.expectSize(c.Us_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55098:55106
test "Us_L_F" {
    var lv: c.Us_L_F = undefined;
    try testing.expectSize(c.Us_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55123:55131
test "Us_L_I" {
    var lv: c.Us_L_I = undefined;
    try testing.expectSize(c.Us_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55148:55156
test "Us_L_Ip" {
    var lv: c.Us_L_Ip = undefined;
    try testing.expectSize(c.Us_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55173:55181
test "Us_L_L" {
    var lv: c.Us_L_L = undefined;
    try testing.expectSize(c.Us_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55198:55206
test "Us_L_S" {
    var lv: c.Us_L_S = undefined;
    try testing.expectSize(c.Us_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55223:55231
test "Us_L_Uc" {
    var lv: c.Us_L_Uc = undefined;
    try testing.expectSize(c.Us_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55248:55256
test "Us_L_Ui" {
    var lv: c.Us_L_Ui = undefined;
    try testing.expectSize(c.Us_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55273:55281
test "Us_L_Ul" {
    var lv: c.Us_L_Ul = undefined;
    try testing.expectSize(c.Us_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55298:55306
test "Us_L_Us" {
    var lv: c.Us_L_Us = undefined;
    try testing.expectSize(c.Us_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55323:55331
test "Us_L_Vp" {
    var lv: c.Us_L_Vp = undefined;
    try testing.expectSize(c.Us_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55347:55354
test "Us_S" {
    var lv: c.Us_S = undefined;
    try testing.expectSize(c.Us_S, 4);
    try testing.expectAlign(c.Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xbb.c:56095:56103
test "Us_S_C" {
    var lv: c.Us_S_C = undefined;
    try testing.expectSize(c.Us_S_C, 6);
    try testing.expectAlign(c.Us_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56120:56128
test "Us_S_D" {
    var lv: c.Us_S_D = undefined;
    try testing.expectSize(c.Us_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:56145:56153
test "Us_S_F" {
    var lv: c.Us_S_F = undefined;
    try testing.expectSize(c.Us_S_F, 8);
    try testing.expectAlign(c.Us_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56170:56178
test "Us_S_I" {
    var lv: c.Us_S_I = undefined;
    try testing.expectSize(c.Us_S_I, 8);
    try testing.expectAlign(c.Us_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56195:56203
test "Us_S_Ip" {
    var lv: c.Us_S_Ip = undefined;
    try testing.expectSize(c.Us_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:56220:56228
test "Us_S_L" {
    var lv: c.Us_S_L = undefined;
    try testing.expectSize(c.Us_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:56245:56253
test "Us_S_S" {
    var lv: c.Us_S_S = undefined;
    try testing.expectSize(c.Us_S_S, 6);
    try testing.expectAlign(c.Us_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56270:56278
test "Us_S_Uc" {
    var lv: c.Us_S_Uc = undefined;
    try testing.expectSize(c.Us_S_Uc, 6);
    try testing.expectAlign(c.Us_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56295:56303
test "Us_S_Ui" {
    var lv: c.Us_S_Ui = undefined;
    try testing.expectSize(c.Us_S_Ui, 8);
    try testing.expectAlign(c.Us_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56320:56328
test "Us_S_Ul" {
    var lv: c.Us_S_Ul = undefined;
    try testing.expectSize(c.Us_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:56345:56353
test "Us_S_Us" {
    var lv: c.Us_S_Us = undefined;
    try testing.expectSize(c.Us_S_Us, 6);
    try testing.expectAlign(c.Us_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56370:56378
test "Us_S_Vp" {
    var lv: c.Us_S_Vp = undefined;
    try testing.expectSize(c.Us_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:56394:56401
test "Us_Uc" {
    var lv: c.Us_Uc = undefined;
    try testing.expectSize(c.Us_Uc, 4);
    try testing.expectAlign(c.Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xbb.c:57142:57150
test "Us_Uc_C" {
    var lv: c.Us_Uc_C = undefined;
    try testing.expectSize(c.Us_Uc_C, 4);
    try testing.expectAlign(c.Us_Uc_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xbb.c:57167:57175
test "Us_Uc_D" {
    var lv: c.Us_Uc_D = undefined;
    try testing.expectSize(c.Us_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:57192:57200
test "Us_Uc_F" {
    var lv: c.Us_Uc_F = undefined;
    try testing.expectSize(c.Us_Uc_F, 8);
    try testing.expectAlign(c.Us_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:57217:57225
test "Us_Uc_I" {
    var lv: c.Us_Uc_I = undefined;
    try testing.expectSize(c.Us_Uc_I, 8);
    try testing.expectAlign(c.Us_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:57242:57250
test "Us_Uc_Ip" {
    var lv: c.Us_Uc_Ip = undefined;
    try testing.expectSize(c.Us_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:57267:57275
test "Us_Uc_L" {
    var lv: c.Us_Uc_L = undefined;
    try testing.expectSize(c.Us_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:57292:57300
test "Us_Uc_S" {
    var lv: c.Us_Uc_S = undefined;
    try testing.expectSize(c.Us_Uc_S, 6);
    try testing.expectAlign(c.Us_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:57317:57325
test "Us_Uc_Uc" {
    var lv: c.Us_Uc_Uc = undefined;
    try testing.expectSize(c.Us_Uc_Uc, 4);
    try testing.expectAlign(c.Us_Uc_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xbb.c:57342:57350
test "Us_Uc_Ui" {
    var lv: c.Us_Uc_Ui = undefined;
    try testing.expectSize(c.Us_Uc_Ui, 8);
    try testing.expectAlign(c.Us_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:57367:57375
test "Us_Uc_Ul" {
    var lv: c.Us_Uc_Ul = undefined;
    try testing.expectSize(c.Us_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:57392:57400
test "Us_Uc_Us" {
    var lv: c.Us_Uc_Us = undefined;
    try testing.expectSize(c.Us_Uc_Us, 6);
    try testing.expectAlign(c.Us_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:57417:57425
test "Us_Uc_Vp" {
    var lv: c.Us_Uc_Vp = undefined;
    try testing.expectSize(c.Us_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:57441:57448
test "Us_Ui" {
    var lv: c.Us_Ui = undefined;
    try testing.expectSize(c.Us_Ui, 8);
    try testing.expectAlign(c.Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xbb.c:58189:58197
test "Us_Ui_C" {
    var lv: c.Us_Ui_C = undefined;
    try testing.expectSize(c.Us_Ui_C, 12);
    try testing.expectAlign(c.Us_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58214:58222
test "Us_Ui_D" {
    var lv: c.Us_Ui_D = undefined;
    try testing.expectSize(c.Us_Ui_D, 16);
    try testing.expectAlign(c.Us_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58239:58247
test "Us_Ui_F" {
    var lv: c.Us_Ui_F = undefined;
    try testing.expectSize(c.Us_Ui_F, 12);
    try testing.expectAlign(c.Us_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58264:58272
test "Us_Ui_I" {
    var lv: c.Us_Ui_I = undefined;
    try testing.expectSize(c.Us_Ui_I, 12);
    try testing.expectAlign(c.Us_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58289:58297
test "Us_Ui_Ip" {
    var lv: c.Us_Ui_Ip = undefined;
    try testing.expectSize(c.Us_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58314:58322
test "Us_Ui_L" {
    var lv: c.Us_Ui_L = undefined;
    try testing.expectSize(c.Us_Ui_L, 16);
    try testing.expectAlign(c.Us_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58339:58347
test "Us_Ui_S" {
    var lv: c.Us_Ui_S = undefined;
    try testing.expectSize(c.Us_Ui_S, 12);
    try testing.expectAlign(c.Us_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58364:58372
test "Us_Ui_Uc" {
    var lv: c.Us_Ui_Uc = undefined;
    try testing.expectSize(c.Us_Ui_Uc, 12);
    try testing.expectAlign(c.Us_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58389:58397
test "Us_Ui_Ui" {
    var lv: c.Us_Ui_Ui = undefined;
    try testing.expectSize(c.Us_Ui_Ui, 12);
    try testing.expectAlign(c.Us_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58414:58422
test "Us_Ui_Ul" {
    var lv: c.Us_Ui_Ul = undefined;
    try testing.expectSize(c.Us_Ui_Ul, 16);
    try testing.expectAlign(c.Us_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58439:58447
test "Us_Ui_Us" {
    var lv: c.Us_Ui_Us = undefined;
    try testing.expectSize(c.Us_Ui_Us, 12);
    try testing.expectAlign(c.Us_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58464:58472
test "Us_Ui_Vp" {
    var lv: c.Us_Ui_Vp = undefined;
    try testing.expectSize(c.Us_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58488:58495
test "Us_Ul" {
    var lv: c.Us_Ul = undefined;
    try testing.expectSize(c.Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:59236:59244
test "Us_Ul_C" {
    var lv: c.Us_Ul_C = undefined;
    try testing.expectSize(c.Us_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59261:59269
test "Us_Ul_D" {
    var lv: c.Us_Ul_D = undefined;
    try testing.expectSize(c.Us_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59286:59294
test "Us_Ul_F" {
    var lv: c.Us_Ul_F = undefined;
    try testing.expectSize(c.Us_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59311:59319
test "Us_Ul_I" {
    var lv: c.Us_Ul_I = undefined;
    try testing.expectSize(c.Us_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59336:59344
test "Us_Ul_Ip" {
    var lv: c.Us_Ul_Ip = undefined;
    try testing.expectSize(c.Us_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59361:59369
test "Us_Ul_L" {
    var lv: c.Us_Ul_L = undefined;
    try testing.expectSize(c.Us_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59386:59394
test "Us_Ul_S" {
    var lv: c.Us_Ul_S = undefined;
    try testing.expectSize(c.Us_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59411:59419
test "Us_Ul_Uc" {
    var lv: c.Us_Ul_Uc = undefined;
    try testing.expectSize(c.Us_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59436:59444
test "Us_Ul_Ui" {
    var lv: c.Us_Ul_Ui = undefined;
    try testing.expectSize(c.Us_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59461:59469
test "Us_Ul_Ul" {
    var lv: c.Us_Ul_Ul = undefined;
    try testing.expectSize(c.Us_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59486:59494
test "Us_Ul_Us" {
    var lv: c.Us_Ul_Us = undefined;
    try testing.expectSize(c.Us_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59511:59519
test "Us_Ul_Vp" {
    var lv: c.Us_Ul_Vp = undefined;
    try testing.expectSize(c.Us_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59535:59542
test "Us_Us" {
    var lv: c.Us_Us = undefined;
    try testing.expectSize(c.Us_Us, 4);
    try testing.expectAlign(c.Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xbb.c:60283:60291
test "Us_Us_C" {
    var lv: c.Us_Us_C = undefined;
    try testing.expectSize(c.Us_Us_C, 6);
    try testing.expectAlign(c.Us_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60308:60316
test "Us_Us_D" {
    var lv: c.Us_Us_D = undefined;
    try testing.expectSize(c.Us_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:60333:60341
test "Us_Us_F" {
    var lv: c.Us_Us_F = undefined;
    try testing.expectSize(c.Us_Us_F, 8);
    try testing.expectAlign(c.Us_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60358:60366
test "Us_Us_I" {
    var lv: c.Us_Us_I = undefined;
    try testing.expectSize(c.Us_Us_I, 8);
    try testing.expectAlign(c.Us_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60383:60391
test "Us_Us_Ip" {
    var lv: c.Us_Us_Ip = undefined;
    try testing.expectSize(c.Us_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:60408:60416
test "Us_Us_L" {
    var lv: c.Us_Us_L = undefined;
    try testing.expectSize(c.Us_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:60433:60441
test "Us_Us_S" {
    var lv: c.Us_Us_S = undefined;
    try testing.expectSize(c.Us_Us_S, 6);
    try testing.expectAlign(c.Us_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60458:60466
test "Us_Us_Uc" {
    var lv: c.Us_Us_Uc = undefined;
    try testing.expectSize(c.Us_Us_Uc, 6);
    try testing.expectAlign(c.Us_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60483:60491
test "Us_Us_Ui" {
    var lv: c.Us_Us_Ui = undefined;
    try testing.expectSize(c.Us_Us_Ui, 8);
    try testing.expectAlign(c.Us_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60508:60516
test "Us_Us_Ul" {
    var lv: c.Us_Us_Ul = undefined;
    try testing.expectSize(c.Us_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:60533:60541
test "Us_Us_Us" {
    var lv: c.Us_Us_Us = undefined;
    try testing.expectSize(c.Us_Us_Us, 6);
    try testing.expectAlign(c.Us_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60558:60566
test "Us_Us_Vp" {
    var lv: c.Us_Us_Vp = undefined;
    try testing.expectSize(c.Us_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:60582:60589
test "Us_Vp" {
    var lv: c.Us_Vp = undefined;
    try testing.expectSize(c.Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:61330:61338
test "Us_Vp_C" {
    var lv: c.Us_Vp_C = undefined;
    try testing.expectSize(c.Us_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61355:61363
test "Us_Vp_D" {
    var lv: c.Us_Vp_D = undefined;
    try testing.expectSize(c.Us_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61380:61388
test "Us_Vp_F" {
    var lv: c.Us_Vp_F = undefined;
    try testing.expectSize(c.Us_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61405:61413
test "Us_Vp_I" {
    var lv: c.Us_Vp_I = undefined;
    try testing.expectSize(c.Us_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61430:61438
test "Us_Vp_Ip" {
    var lv: c.Us_Vp_Ip = undefined;
    try testing.expectSize(c.Us_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61455:61463
test "Us_Vp_L" {
    var lv: c.Us_Vp_L = undefined;
    try testing.expectSize(c.Us_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61480:61488
test "Us_Vp_S" {
    var lv: c.Us_Vp_S = undefined;
    try testing.expectSize(c.Us_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61505:61513
test "Us_Vp_Uc" {
    var lv: c.Us_Vp_Uc = undefined;
    try testing.expectSize(c.Us_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61530:61538
test "Us_Vp_Ui" {
    var lv: c.Us_Vp_Ui = undefined;
    try testing.expectSize(c.Us_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61555:61563
test "Us_Vp_Ul" {
    var lv: c.Us_Vp_Ul = undefined;
    try testing.expectSize(c.Us_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61580:61588
test "Us_Vp_Us" {
    var lv: c.Us_Vp_Us = undefined;
    try testing.expectSize(c.Us_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61605:61613
test "Us_Vp_Vp" {
    var lv: c.Us_Vp_Vp = undefined;
    try testing.expectSize(c.Us_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61628:61634
test "Vp" {
    var lv: c.Vp = undefined;
    try testing.expectSize(c.Vp, ABISELECT(8, 4));
    try testing.expectAlign(c.Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
