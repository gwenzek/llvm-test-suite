const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xaw.h");
});

// From T_Snnn_xaw.c:12303:12310
test "C_C" {
    var lv: c.C_C = undefined;
    try testing.expectSize(c.C_C, 2);
    try testing.expectAlign(c.C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Snnn_xaw.c:13051:13059
test "C_C_C" {
    var lv: c.C_C_C = undefined;
    try testing.expectSize(c.C_C_C, 3);
    try testing.expectAlign(c.C_C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:13076:13084
test "C_C_D" {
    var lv: c.C_C_D = undefined;
    try testing.expectSize(c.C_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:13101:13109
test "C_C_F" {
    var lv: c.C_C_F = undefined;
    try testing.expectSize(c.C_C_F, 8);
    try testing.expectAlign(c.C_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:13126:13134
test "C_C_I" {
    var lv: c.C_C_I = undefined;
    try testing.expectSize(c.C_C_I, 8);
    try testing.expectAlign(c.C_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:13151:13159
test "C_C_Ip" {
    var lv: c.C_C_Ip = undefined;
    try testing.expectSize(c.C_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:13176:13184
test "C_C_L" {
    var lv: c.C_C_L = undefined;
    try testing.expectSize(c.C_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:13201:13209
test "C_C_S" {
    var lv: c.C_C_S = undefined;
    try testing.expectSize(c.C_C_S, 4);
    try testing.expectAlign(c.C_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:13226:13234
test "C_C_Uc" {
    var lv: c.C_C_Uc = undefined;
    try testing.expectSize(c.C_C_Uc, 3);
    try testing.expectAlign(c.C_C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:13251:13259
test "C_C_Ui" {
    var lv: c.C_C_Ui = undefined;
    try testing.expectSize(c.C_C_Ui, 8);
    try testing.expectAlign(c.C_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:13276:13284
test "C_C_Ul" {
    var lv: c.C_C_Ul = undefined;
    try testing.expectSize(c.C_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:13301:13309
test "C_C_Us" {
    var lv: c.C_C_Us = undefined;
    try testing.expectSize(c.C_C_Us, 4);
    try testing.expectAlign(c.C_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:13326:13334
test "C_C_Vp" {
    var lv: c.C_C_Vp = undefined;
    try testing.expectSize(c.C_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:13350:13357
test "C_D" {
    var lv: c.C_D = undefined;
    try testing.expectSize(c.C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:14098:14106
test "C_D_C" {
    var lv: c.C_D_C = undefined;
    try testing.expectSize(c.C_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14123:14131
test "C_D_D" {
    var lv: c.C_D_D = undefined;
    try testing.expectSize(c.C_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.C_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14148:14156
test "C_D_F" {
    var lv: c.C_D_F = undefined;
    try testing.expectSize(c.C_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14173:14181
test "C_D_I" {
    var lv: c.C_D_I = undefined;
    try testing.expectSize(c.C_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14198:14206
test "C_D_Ip" {
    var lv: c.C_D_Ip = undefined;
    try testing.expectSize(c.C_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14223:14231
test "C_D_L" {
    var lv: c.C_D_L = undefined;
    try testing.expectSize(c.C_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.C_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14248:14256
test "C_D_S" {
    var lv: c.C_D_S = undefined;
    try testing.expectSize(c.C_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14273:14281
test "C_D_Uc" {
    var lv: c.C_D_Uc = undefined;
    try testing.expectSize(c.C_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14298:14306
test "C_D_Ui" {
    var lv: c.C_D_Ui = undefined;
    try testing.expectSize(c.C_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14323:14331
test "C_D_Ul" {
    var lv: c.C_D_Ul = undefined;
    try testing.expectSize(c.C_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.C_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14348:14356
test "C_D_Us" {
    var lv: c.C_D_Us = undefined;
    try testing.expectSize(c.C_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14373:14381
test "C_D_Vp" {
    var lv: c.C_D_Vp = undefined;
    try testing.expectSize(c.C_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14397:14404
test "C_F" {
    var lv: c.C_F = undefined;
    try testing.expectSize(c.C_F, 8);
    try testing.expectAlign(c.C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xaw.c:15145:15153
test "C_F_C" {
    var lv: c.C_F_C = undefined;
    try testing.expectSize(c.C_F_C, 12);
    try testing.expectAlign(c.C_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15170:15178
test "C_F_D" {
    var lv: c.C_F_D = undefined;
    try testing.expectSize(c.C_F_D, 16);
    try testing.expectAlign(c.C_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15195:15203
test "C_F_F" {
    var lv: c.C_F_F = undefined;
    try testing.expectSize(c.C_F_F, 12);
    try testing.expectAlign(c.C_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15220:15228
test "C_F_I" {
    var lv: c.C_F_I = undefined;
    try testing.expectSize(c.C_F_I, 12);
    try testing.expectAlign(c.C_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15245:15253
test "C_F_Ip" {
    var lv: c.C_F_Ip = undefined;
    try testing.expectSize(c.C_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.C_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15270:15278
test "C_F_L" {
    var lv: c.C_F_L = undefined;
    try testing.expectSize(c.C_F_L, 16);
    try testing.expectAlign(c.C_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15295:15303
test "C_F_S" {
    var lv: c.C_F_S = undefined;
    try testing.expectSize(c.C_F_S, 12);
    try testing.expectAlign(c.C_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15320:15328
test "C_F_Uc" {
    var lv: c.C_F_Uc = undefined;
    try testing.expectSize(c.C_F_Uc, 12);
    try testing.expectAlign(c.C_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15345:15353
test "C_F_Ui" {
    var lv: c.C_F_Ui = undefined;
    try testing.expectSize(c.C_F_Ui, 12);
    try testing.expectAlign(c.C_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15370:15378
test "C_F_Ul" {
    var lv: c.C_F_Ul = undefined;
    try testing.expectSize(c.C_F_Ul, 16);
    try testing.expectAlign(c.C_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15395:15403
test "C_F_Us" {
    var lv: c.C_F_Us = undefined;
    try testing.expectSize(c.C_F_Us, 12);
    try testing.expectAlign(c.C_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15420:15428
test "C_F_Vp" {
    var lv: c.C_F_Vp = undefined;
    try testing.expectSize(c.C_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.C_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15444:15451
test "C_I" {
    var lv: c.C_I = undefined;
    try testing.expectSize(c.C_I, 8);
    try testing.expectAlign(c.C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xaw.c:16192:16200
test "C_I_C" {
    var lv: c.C_I_C = undefined;
    try testing.expectSize(c.C_I_C, 12);
    try testing.expectAlign(c.C_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16217:16225
test "C_I_D" {
    var lv: c.C_I_D = undefined;
    try testing.expectSize(c.C_I_D, 16);
    try testing.expectAlign(c.C_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16242:16250
test "C_I_F" {
    var lv: c.C_I_F = undefined;
    try testing.expectSize(c.C_I_F, 12);
    try testing.expectAlign(c.C_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16267:16275
test "C_I_I" {
    var lv: c.C_I_I = undefined;
    try testing.expectSize(c.C_I_I, 12);
    try testing.expectAlign(c.C_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16292:16300
test "C_I_Ip" {
    var lv: c.C_I_Ip = undefined;
    try testing.expectSize(c.C_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.C_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16317:16325
test "C_I_L" {
    var lv: c.C_I_L = undefined;
    try testing.expectSize(c.C_I_L, 16);
    try testing.expectAlign(c.C_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16342:16350
test "C_I_S" {
    var lv: c.C_I_S = undefined;
    try testing.expectSize(c.C_I_S, 12);
    try testing.expectAlign(c.C_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16367:16375
test "C_I_Uc" {
    var lv: c.C_I_Uc = undefined;
    try testing.expectSize(c.C_I_Uc, 12);
    try testing.expectAlign(c.C_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16392:16400
test "C_I_Ui" {
    var lv: c.C_I_Ui = undefined;
    try testing.expectSize(c.C_I_Ui, 12);
    try testing.expectAlign(c.C_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16417:16425
test "C_I_Ul" {
    var lv: c.C_I_Ul = undefined;
    try testing.expectSize(c.C_I_Ul, 16);
    try testing.expectAlign(c.C_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16442:16450
test "C_I_Us" {
    var lv: c.C_I_Us = undefined;
    try testing.expectSize(c.C_I_Us, 12);
    try testing.expectAlign(c.C_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16467:16475
test "C_I_Vp" {
    var lv: c.C_I_Vp = undefined;
    try testing.expectSize(c.C_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.C_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16491:16498
test "C_Ip" {
    var lv: c.C_Ip = undefined;
    try testing.expectSize(c.C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:17239:17247
test "C_Ip_C" {
    var lv: c.C_Ip_C = undefined;
    try testing.expectSize(c.C_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17264:17272
test "C_Ip_D" {
    var lv: c.C_Ip_D = undefined;
    try testing.expectSize(c.C_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17289:17297
test "C_Ip_F" {
    var lv: c.C_Ip_F = undefined;
    try testing.expectSize(c.C_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17314:17322
test "C_Ip_I" {
    var lv: c.C_Ip_I = undefined;
    try testing.expectSize(c.C_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17339:17347
test "C_Ip_Ip" {
    var lv: c.C_Ip_Ip = undefined;
    try testing.expectSize(c.C_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17364:17372
test "C_Ip_L" {
    var lv: c.C_Ip_L = undefined;
    try testing.expectSize(c.C_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17389:17397
test "C_Ip_S" {
    var lv: c.C_Ip_S = undefined;
    try testing.expectSize(c.C_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17414:17422
test "C_Ip_Uc" {
    var lv: c.C_Ip_Uc = undefined;
    try testing.expectSize(c.C_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17439:17447
test "C_Ip_Ui" {
    var lv: c.C_Ip_Ui = undefined;
    try testing.expectSize(c.C_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17464:17472
test "C_Ip_Ul" {
    var lv: c.C_Ip_Ul = undefined;
    try testing.expectSize(c.C_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17489:17497
test "C_Ip_Us" {
    var lv: c.C_Ip_Us = undefined;
    try testing.expectSize(c.C_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17514:17522
test "C_Ip_Vp" {
    var lv: c.C_Ip_Vp = undefined;
    try testing.expectSize(c.C_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17538:17545
test "C_L" {
    var lv: c.C_L = undefined;
    try testing.expectSize(c.C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:18286:18294
test "C_L_C" {
    var lv: c.C_L_C = undefined;
    try testing.expectSize(c.C_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18311:18319
test "C_L_D" {
    var lv: c.C_L_D = undefined;
    try testing.expectSize(c.C_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.C_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18336:18344
test "C_L_F" {
    var lv: c.C_L_F = undefined;
    try testing.expectSize(c.C_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18361:18369
test "C_L_I" {
    var lv: c.C_L_I = undefined;
    try testing.expectSize(c.C_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18386:18394
test "C_L_Ip" {
    var lv: c.C_L_Ip = undefined;
    try testing.expectSize(c.C_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18411:18419
test "C_L_L" {
    var lv: c.C_L_L = undefined;
    try testing.expectSize(c.C_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.C_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18436:18444
test "C_L_S" {
    var lv: c.C_L_S = undefined;
    try testing.expectSize(c.C_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18461:18469
test "C_L_Uc" {
    var lv: c.C_L_Uc = undefined;
    try testing.expectSize(c.C_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18486:18494
test "C_L_Ui" {
    var lv: c.C_L_Ui = undefined;
    try testing.expectSize(c.C_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18511:18519
test "C_L_Ul" {
    var lv: c.C_L_Ul = undefined;
    try testing.expectSize(c.C_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.C_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18536:18544
test "C_L_Us" {
    var lv: c.C_L_Us = undefined;
    try testing.expectSize(c.C_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18561:18569
test "C_L_Vp" {
    var lv: c.C_L_Vp = undefined;
    try testing.expectSize(c.C_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18585:18592
test "C_S" {
    var lv: c.C_S = undefined;
    try testing.expectSize(c.C_S, 4);
    try testing.expectAlign(c.C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xaw.c:19333:19341
test "C_S_C" {
    var lv: c.C_S_C = undefined;
    try testing.expectSize(c.C_S_C, 6);
    try testing.expectAlign(c.C_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19358:19366
test "C_S_D" {
    var lv: c.C_S_D = undefined;
    try testing.expectSize(c.C_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:19383:19391
test "C_S_F" {
    var lv: c.C_S_F = undefined;
    try testing.expectSize(c.C_S_F, 8);
    try testing.expectAlign(c.C_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19408:19416
test "C_S_I" {
    var lv: c.C_S_I = undefined;
    try testing.expectSize(c.C_S_I, 8);
    try testing.expectAlign(c.C_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19433:19441
test "C_S_Ip" {
    var lv: c.C_S_Ip = undefined;
    try testing.expectSize(c.C_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:19458:19466
test "C_S_L" {
    var lv: c.C_S_L = undefined;
    try testing.expectSize(c.C_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:19483:19491
test "C_S_S" {
    var lv: c.C_S_S = undefined;
    try testing.expectSize(c.C_S_S, 6);
    try testing.expectAlign(c.C_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19508:19516
test "C_S_Uc" {
    var lv: c.C_S_Uc = undefined;
    try testing.expectSize(c.C_S_Uc, 6);
    try testing.expectAlign(c.C_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19533:19541
test "C_S_Ui" {
    var lv: c.C_S_Ui = undefined;
    try testing.expectSize(c.C_S_Ui, 8);
    try testing.expectAlign(c.C_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19558:19566
test "C_S_Ul" {
    var lv: c.C_S_Ul = undefined;
    try testing.expectSize(c.C_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:19583:19591
test "C_S_Us" {
    var lv: c.C_S_Us = undefined;
    try testing.expectSize(c.C_S_Us, 6);
    try testing.expectAlign(c.C_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19608:19616
test "C_S_Vp" {
    var lv: c.C_S_Vp = undefined;
    try testing.expectSize(c.C_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:19632:19639
test "C_Uc" {
    var lv: c.C_Uc = undefined;
    try testing.expectSize(c.C_Uc, 2);
    try testing.expectAlign(c.C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Snnn_xaw.c:20380:20388
test "C_Uc_C" {
    var lv: c.C_Uc_C = undefined;
    try testing.expectSize(c.C_Uc_C, 3);
    try testing.expectAlign(c.C_Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:20405:20413
test "C_Uc_D" {
    var lv: c.C_Uc_D = undefined;
    try testing.expectSize(c.C_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:20430:20438
test "C_Uc_F" {
    var lv: c.C_Uc_F = undefined;
    try testing.expectSize(c.C_Uc_F, 8);
    try testing.expectAlign(c.C_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:20455:20463
test "C_Uc_I" {
    var lv: c.C_Uc_I = undefined;
    try testing.expectSize(c.C_Uc_I, 8);
    try testing.expectAlign(c.C_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:20480:20488
test "C_Uc_Ip" {
    var lv: c.C_Uc_Ip = undefined;
    try testing.expectSize(c.C_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:20505:20513
test "C_Uc_L" {
    var lv: c.C_Uc_L = undefined;
    try testing.expectSize(c.C_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:20530:20538
test "C_Uc_S" {
    var lv: c.C_Uc_S = undefined;
    try testing.expectSize(c.C_Uc_S, 4);
    try testing.expectAlign(c.C_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:20555:20563
test "C_Uc_Uc" {
    var lv: c.C_Uc_Uc = undefined;
    try testing.expectSize(c.C_Uc_Uc, 3);
    try testing.expectAlign(c.C_Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:20580:20588
test "C_Uc_Ui" {
    var lv: c.C_Uc_Ui = undefined;
    try testing.expectSize(c.C_Uc_Ui, 8);
    try testing.expectAlign(c.C_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:20605:20613
test "C_Uc_Ul" {
    var lv: c.C_Uc_Ul = undefined;
    try testing.expectSize(c.C_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:20630:20638
test "C_Uc_Us" {
    var lv: c.C_Uc_Us = undefined;
    try testing.expectSize(c.C_Uc_Us, 4);
    try testing.expectAlign(c.C_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:20655:20663
test "C_Uc_Vp" {
    var lv: c.C_Uc_Vp = undefined;
    try testing.expectSize(c.C_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:20679:20686
test "C_Ui" {
    var lv: c.C_Ui = undefined;
    try testing.expectSize(c.C_Ui, 8);
    try testing.expectAlign(c.C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xaw.c:21427:21435
test "C_Ui_C" {
    var lv: c.C_Ui_C = undefined;
    try testing.expectSize(c.C_Ui_C, 12);
    try testing.expectAlign(c.C_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21452:21460
test "C_Ui_D" {
    var lv: c.C_Ui_D = undefined;
    try testing.expectSize(c.C_Ui_D, 16);
    try testing.expectAlign(c.C_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21477:21485
test "C_Ui_F" {
    var lv: c.C_Ui_F = undefined;
    try testing.expectSize(c.C_Ui_F, 12);
    try testing.expectAlign(c.C_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21502:21510
test "C_Ui_I" {
    var lv: c.C_Ui_I = undefined;
    try testing.expectSize(c.C_Ui_I, 12);
    try testing.expectAlign(c.C_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21527:21535
test "C_Ui_Ip" {
    var lv: c.C_Ui_Ip = undefined;
    try testing.expectSize(c.C_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21552:21560
test "C_Ui_L" {
    var lv: c.C_Ui_L = undefined;
    try testing.expectSize(c.C_Ui_L, 16);
    try testing.expectAlign(c.C_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21577:21585
test "C_Ui_S" {
    var lv: c.C_Ui_S = undefined;
    try testing.expectSize(c.C_Ui_S, 12);
    try testing.expectAlign(c.C_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21602:21610
test "C_Ui_Uc" {
    var lv: c.C_Ui_Uc = undefined;
    try testing.expectSize(c.C_Ui_Uc, 12);
    try testing.expectAlign(c.C_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21627:21635
test "C_Ui_Ui" {
    var lv: c.C_Ui_Ui = undefined;
    try testing.expectSize(c.C_Ui_Ui, 12);
    try testing.expectAlign(c.C_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21652:21660
test "C_Ui_Ul" {
    var lv: c.C_Ui_Ul = undefined;
    try testing.expectSize(c.C_Ui_Ul, 16);
    try testing.expectAlign(c.C_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21677:21685
test "C_Ui_Us" {
    var lv: c.C_Ui_Us = undefined;
    try testing.expectSize(c.C_Ui_Us, 12);
    try testing.expectAlign(c.C_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21702:21710
test "C_Ui_Vp" {
    var lv: c.C_Ui_Vp = undefined;
    try testing.expectSize(c.C_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21726:21733
test "C_Ul" {
    var lv: c.C_Ul = undefined;
    try testing.expectSize(c.C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:22474:22482
test "C_Ul_C" {
    var lv: c.C_Ul_C = undefined;
    try testing.expectSize(c.C_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22499:22507
test "C_Ul_D" {
    var lv: c.C_Ul_D = undefined;
    try testing.expectSize(c.C_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.C_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22524:22532
test "C_Ul_F" {
    var lv: c.C_Ul_F = undefined;
    try testing.expectSize(c.C_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22549:22557
test "C_Ul_I" {
    var lv: c.C_Ul_I = undefined;
    try testing.expectSize(c.C_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22574:22582
test "C_Ul_Ip" {
    var lv: c.C_Ul_Ip = undefined;
    try testing.expectSize(c.C_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22599:22607
test "C_Ul_L" {
    var lv: c.C_Ul_L = undefined;
    try testing.expectSize(c.C_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.C_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22624:22632
test "C_Ul_S" {
    var lv: c.C_Ul_S = undefined;
    try testing.expectSize(c.C_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22649:22657
test "C_Ul_Uc" {
    var lv: c.C_Ul_Uc = undefined;
    try testing.expectSize(c.C_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22674:22682
test "C_Ul_Ui" {
    var lv: c.C_Ul_Ui = undefined;
    try testing.expectSize(c.C_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22699:22707
test "C_Ul_Ul" {
    var lv: c.C_Ul_Ul = undefined;
    try testing.expectSize(c.C_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.C_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22724:22732
test "C_Ul_Us" {
    var lv: c.C_Ul_Us = undefined;
    try testing.expectSize(c.C_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22749:22757
test "C_Ul_Vp" {
    var lv: c.C_Ul_Vp = undefined;
    try testing.expectSize(c.C_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22773:22780
test "C_Us" {
    var lv: c.C_Us = undefined;
    try testing.expectSize(c.C_Us, 4);
    try testing.expectAlign(c.C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xaw.c:23521:23529
test "C_Us_C" {
    var lv: c.C_Us_C = undefined;
    try testing.expectSize(c.C_Us_C, 6);
    try testing.expectAlign(c.C_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23546:23554
test "C_Us_D" {
    var lv: c.C_Us_D = undefined;
    try testing.expectSize(c.C_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:23571:23579
test "C_Us_F" {
    var lv: c.C_Us_F = undefined;
    try testing.expectSize(c.C_Us_F, 8);
    try testing.expectAlign(c.C_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23596:23604
test "C_Us_I" {
    var lv: c.C_Us_I = undefined;
    try testing.expectSize(c.C_Us_I, 8);
    try testing.expectAlign(c.C_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23621:23629
test "C_Us_Ip" {
    var lv: c.C_Us_Ip = undefined;
    try testing.expectSize(c.C_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:23646:23654
test "C_Us_L" {
    var lv: c.C_Us_L = undefined;
    try testing.expectSize(c.C_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:23671:23679
test "C_Us_S" {
    var lv: c.C_Us_S = undefined;
    try testing.expectSize(c.C_Us_S, 6);
    try testing.expectAlign(c.C_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23696:23704
test "C_Us_Uc" {
    var lv: c.C_Us_Uc = undefined;
    try testing.expectSize(c.C_Us_Uc, 6);
    try testing.expectAlign(c.C_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23721:23729
test "C_Us_Ui" {
    var lv: c.C_Us_Ui = undefined;
    try testing.expectSize(c.C_Us_Ui, 8);
    try testing.expectAlign(c.C_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23746:23754
test "C_Us_Ul" {
    var lv: c.C_Us_Ul = undefined;
    try testing.expectSize(c.C_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:23771:23779
test "C_Us_Us" {
    var lv: c.C_Us_Us = undefined;
    try testing.expectSize(c.C_Us_Us, 6);
    try testing.expectAlign(c.C_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23796:23804
test "C_Us_Vp" {
    var lv: c.C_Us_Vp = undefined;
    try testing.expectSize(c.C_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:23820:23827
test "C_Vp" {
    var lv: c.C_Vp = undefined;
    try testing.expectSize(c.C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:24568:24576
test "C_Vp_C" {
    var lv: c.C_Vp_C = undefined;
    try testing.expectSize(c.C_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24593:24601
test "C_Vp_D" {
    var lv: c.C_Vp_D = undefined;
    try testing.expectSize(c.C_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24618:24626
test "C_Vp_F" {
    var lv: c.C_Vp_F = undefined;
    try testing.expectSize(c.C_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24643:24651
test "C_Vp_I" {
    var lv: c.C_Vp_I = undefined;
    try testing.expectSize(c.C_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24668:24676
test "C_Vp_Ip" {
    var lv: c.C_Vp_Ip = undefined;
    try testing.expectSize(c.C_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24693:24701
test "C_Vp_L" {
    var lv: c.C_Vp_L = undefined;
    try testing.expectSize(c.C_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24718:24726
test "C_Vp_S" {
    var lv: c.C_Vp_S = undefined;
    try testing.expectSize(c.C_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24743:24751
test "C_Vp_Uc" {
    var lv: c.C_Vp_Uc = undefined;
    try testing.expectSize(c.C_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24768:24776
test "C_Vp_Ui" {
    var lv: c.C_Vp_Ui = undefined;
    try testing.expectSize(c.C_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24793:24801
test "C_Vp_Ul" {
    var lv: c.C_Vp_Ul = undefined;
    try testing.expectSize(c.C_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24818:24826
test "C_Vp_Us" {
    var lv: c.C_Vp_Us = undefined;
    try testing.expectSize(c.C_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24843:24851
test "C_Vp_Vp" {
    var lv: c.C_Vp_Vp = undefined;
    try testing.expectSize(c.C_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24866:24872
test "D" {
    var lv: c.D = undefined;
    try testing.expectSize(c.D, 8);
    try testing.expectAlign(c.D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Snnn_xaw.c:55188:55195
test "D_C" {
    var lv: c.D_C = undefined;
    try testing.expectSize(c.D_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:55936:55944
test "D_C_C" {
    var lv: c.D_C_C = undefined;
    try testing.expectSize(c.D_C_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xaw.c:55961:55969
test "D_C_D" {
    var lv: c.D_C_D = undefined;
    try testing.expectSize(c.D_C_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:55986:55994
test "D_C_F" {
    var lv: c.D_C_F = undefined;
    try testing.expectSize(c.D_C_F, 16);
    try testing.expectAlign(c.D_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:56011:56019
test "D_C_I" {
    var lv: c.D_C_I = undefined;
    try testing.expectSize(c.D_C_I, 16);
    try testing.expectAlign(c.D_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:56036:56044
test "D_C_Ip" {
    var lv: c.D_C_Ip = undefined;
    try testing.expectSize(c.D_C_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:56061:56069
test "D_C_L" {
    var lv: c.D_C_L = undefined;
    try testing.expectSize(c.D_C_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:56086:56094
test "D_C_S" {
    var lv: c.D_C_S = undefined;
    try testing.expectSize(c.D_C_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:56111:56119
test "D_C_Uc" {
    var lv: c.D_C_Uc = undefined;
    try testing.expectSize(c.D_C_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xaw.c:56136:56144
test "D_C_Ui" {
    var lv: c.D_C_Ui = undefined;
    try testing.expectSize(c.D_C_Ui, 16);
    try testing.expectAlign(c.D_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:56161:56169
test "D_C_Ul" {
    var lv: c.D_C_Ul = undefined;
    try testing.expectSize(c.D_C_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:56186:56194
test "D_C_Us" {
    var lv: c.D_C_Us = undefined;
    try testing.expectSize(c.D_C_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:56211:56219
test "D_C_Vp" {
    var lv: c.D_C_Vp = undefined;
    try testing.expectSize(c.D_C_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:56235:56242
test "D_D" {
    var lv: c.D_D = undefined;
    try testing.expectSize(c.D_D, 16);
    try testing.expectAlign(c.D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:56983:56991
test "D_D_C" {
    var lv: c.D_D_C = undefined;
    try testing.expectSize(c.D_D_C, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57008:57016
test "D_D_D" {
    var lv: c.D_D_D = undefined;
    try testing.expectSize(c.D_D_D, 24);
    try testing.expectAlign(c.D_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57033:57041
test "D_D_F" {
    var lv: c.D_D_F = undefined;
    try testing.expectSize(c.D_D_F, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57058:57066
test "D_D_I" {
    var lv: c.D_D_I = undefined;
    try testing.expectSize(c.D_D_I, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57083:57091
test "D_D_Ip" {
    var lv: c.D_D_Ip = undefined;
    try testing.expectSize(c.D_D_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57108:57116
test "D_D_L" {
    var lv: c.D_D_L = undefined;
    try testing.expectSize(c.D_D_L, 24);
    try testing.expectAlign(c.D_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57133:57141
test "D_D_S" {
    var lv: c.D_D_S = undefined;
    try testing.expectSize(c.D_D_S, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57158:57166
test "D_D_Uc" {
    var lv: c.D_D_Uc = undefined;
    try testing.expectSize(c.D_D_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57183:57191
test "D_D_Ui" {
    var lv: c.D_D_Ui = undefined;
    try testing.expectSize(c.D_D_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57208:57216
test "D_D_Ul" {
    var lv: c.D_D_Ul = undefined;
    try testing.expectSize(c.D_D_Ul, 24);
    try testing.expectAlign(c.D_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57233:57241
test "D_D_Us" {
    var lv: c.D_D_Us = undefined;
    try testing.expectSize(c.D_D_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57258:57266
test "D_D_Vp" {
    var lv: c.D_D_Vp = undefined;
    try testing.expectSize(c.D_D_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57282:57289
test "D_F" {
    var lv: c.D_F = undefined;
    try testing.expectSize(c.D_F, ABISELECT(16, 12));
    try testing.expectAlign(c.D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:58030:58038
test "D_F_C" {
    var lv: c.D_F_C = undefined;
    try testing.expectSize(c.D_F_C, 16);
    try testing.expectAlign(c.D_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58055:58063
test "D_F_D" {
    var lv: c.D_F_D = undefined;
    try testing.expectSize(c.D_F_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:58080:58088
test "D_F_F" {
    var lv: c.D_F_F = undefined;
    try testing.expectSize(c.D_F_F, 16);
    try testing.expectAlign(c.D_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58105:58113
test "D_F_I" {
    var lv: c.D_F_I = undefined;
    try testing.expectSize(c.D_F_I, 16);
    try testing.expectAlign(c.D_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58130:58138
test "D_F_Ip" {
    var lv: c.D_F_Ip = undefined;
    try testing.expectSize(c.D_F_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:58155:58163
test "D_F_L" {
    var lv: c.D_F_L = undefined;
    try testing.expectSize(c.D_F_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:58180:58188
test "D_F_S" {
    var lv: c.D_F_S = undefined;
    try testing.expectSize(c.D_F_S, 16);
    try testing.expectAlign(c.D_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58205:58213
test "D_F_Uc" {
    var lv: c.D_F_Uc = undefined;
    try testing.expectSize(c.D_F_Uc, 16);
    try testing.expectAlign(c.D_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58230:58238
test "D_F_Ui" {
    var lv: c.D_F_Ui = undefined;
    try testing.expectSize(c.D_F_Ui, 16);
    try testing.expectAlign(c.D_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58255:58263
test "D_F_Ul" {
    var lv: c.D_F_Ul = undefined;
    try testing.expectSize(c.D_F_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:58280:58288
test "D_F_Us" {
    var lv: c.D_F_Us = undefined;
    try testing.expectSize(c.D_F_Us, 16);
    try testing.expectAlign(c.D_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58305:58313
test "D_F_Vp" {
    var lv: c.D_F_Vp = undefined;
    try testing.expectSize(c.D_F_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:58329:58336
test "D_I" {
    var lv: c.D_I = undefined;
    try testing.expectSize(c.D_I, ABISELECT(16, 12));
    try testing.expectAlign(c.D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:59077:59085
test "D_I_C" {
    var lv: c.D_I_C = undefined;
    try testing.expectSize(c.D_I_C, 16);
    try testing.expectAlign(c.D_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59102:59110
test "D_I_D" {
    var lv: c.D_I_D = undefined;
    try testing.expectSize(c.D_I_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:59127:59135
test "D_I_F" {
    var lv: c.D_I_F = undefined;
    try testing.expectSize(c.D_I_F, 16);
    try testing.expectAlign(c.D_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59152:59160
test "D_I_I" {
    var lv: c.D_I_I = undefined;
    try testing.expectSize(c.D_I_I, 16);
    try testing.expectAlign(c.D_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59177:59185
test "D_I_Ip" {
    var lv: c.D_I_Ip = undefined;
    try testing.expectSize(c.D_I_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:59202:59210
test "D_I_L" {
    var lv: c.D_I_L = undefined;
    try testing.expectSize(c.D_I_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:59227:59235
test "D_I_S" {
    var lv: c.D_I_S = undefined;
    try testing.expectSize(c.D_I_S, 16);
    try testing.expectAlign(c.D_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59252:59260
test "D_I_Uc" {
    var lv: c.D_I_Uc = undefined;
    try testing.expectSize(c.D_I_Uc, 16);
    try testing.expectAlign(c.D_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59277:59285
test "D_I_Ui" {
    var lv: c.D_I_Ui = undefined;
    try testing.expectSize(c.D_I_Ui, 16);
    try testing.expectAlign(c.D_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59302:59310
test "D_I_Ul" {
    var lv: c.D_I_Ul = undefined;
    try testing.expectSize(c.D_I_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:59327:59335
test "D_I_Us" {
    var lv: c.D_I_Us = undefined;
    try testing.expectSize(c.D_I_Us, 16);
    try testing.expectAlign(c.D_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59352:59360
test "D_I_Vp" {
    var lv: c.D_I_Vp = undefined;
    try testing.expectSize(c.D_I_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:59376:59383
test "D_Ip" {
    var lv: c.D_Ip = undefined;
    try testing.expectSize(c.D_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:60124:60132
test "D_Ip_C" {
    var lv: c.D_Ip_C = undefined;
    try testing.expectSize(c.D_Ip_C, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60149:60157
test "D_Ip_D" {
    var lv: c.D_Ip_D = undefined;
    try testing.expectSize(c.D_Ip_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60174:60182
test "D_Ip_F" {
    var lv: c.D_Ip_F = undefined;
    try testing.expectSize(c.D_Ip_F, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60199:60207
test "D_Ip_I" {
    var lv: c.D_Ip_I = undefined;
    try testing.expectSize(c.D_Ip_I, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60224:60232
test "D_Ip_Ip" {
    var lv: c.D_Ip_Ip = undefined;
    try testing.expectSize(c.D_Ip_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60249:60257
test "D_Ip_L" {
    var lv: c.D_Ip_L = undefined;
    try testing.expectSize(c.D_Ip_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60274:60282
test "D_Ip_S" {
    var lv: c.D_Ip_S = undefined;
    try testing.expectSize(c.D_Ip_S, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60299:60307
test "D_Ip_Uc" {
    var lv: c.D_Ip_Uc = undefined;
    try testing.expectSize(c.D_Ip_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60324:60332
test "D_Ip_Ui" {
    var lv: c.D_Ip_Ui = undefined;
    try testing.expectSize(c.D_Ip_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60349:60357
test "D_Ip_Ul" {
    var lv: c.D_Ip_Ul = undefined;
    try testing.expectSize(c.D_Ip_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60374:60382
test "D_Ip_Us" {
    var lv: c.D_Ip_Us = undefined;
    try testing.expectSize(c.D_Ip_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60399:60407
test "D_Ip_Vp" {
    var lv: c.D_Ip_Vp = undefined;
    try testing.expectSize(c.D_Ip_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60423:60430
test "D_L" {
    var lv: c.D_L = undefined;
    try testing.expectSize(c.D_L, 16);
    try testing.expectAlign(c.D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:61171:61179
test "D_L_C" {
    var lv: c.D_L_C = undefined;
    try testing.expectSize(c.D_L_C, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61196:61204
test "D_L_D" {
    var lv: c.D_L_D = undefined;
    try testing.expectSize(c.D_L_D, 24);
    try testing.expectAlign(c.D_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61221:61229
test "D_L_F" {
    var lv: c.D_L_F = undefined;
    try testing.expectSize(c.D_L_F, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61246:61254
test "D_L_I" {
    var lv: c.D_L_I = undefined;
    try testing.expectSize(c.D_L_I, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61271:61279
test "D_L_Ip" {
    var lv: c.D_L_Ip = undefined;
    try testing.expectSize(c.D_L_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61296:61304
test "D_L_L" {
    var lv: c.D_L_L = undefined;
    try testing.expectSize(c.D_L_L, 24);
    try testing.expectAlign(c.D_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61321:61329
test "D_L_S" {
    var lv: c.D_L_S = undefined;
    try testing.expectSize(c.D_L_S, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61346:61354
test "D_L_Uc" {
    var lv: c.D_L_Uc = undefined;
    try testing.expectSize(c.D_L_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61371:61379
test "D_L_Ui" {
    var lv: c.D_L_Ui = undefined;
    try testing.expectSize(c.D_L_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61396:61404
test "D_L_Ul" {
    var lv: c.D_L_Ul = undefined;
    try testing.expectSize(c.D_L_Ul, 24);
    try testing.expectAlign(c.D_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61421:61429
test "D_L_Us" {
    var lv: c.D_L_Us = undefined;
    try testing.expectSize(c.D_L_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61446:61454
test "D_L_Vp" {
    var lv: c.D_L_Vp = undefined;
    try testing.expectSize(c.D_L_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61470:61477
test "D_S" {
    var lv: c.D_S = undefined;
    try testing.expectSize(c.D_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:62218:62226
test "D_S_C" {
    var lv: c.D_S_C = undefined;
    try testing.expectSize(c.D_S_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:62243:62251
test "D_S_D" {
    var lv: c.D_S_D = undefined;
    try testing.expectSize(c.D_S_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:62268:62276
test "D_S_F" {
    var lv: c.D_S_F = undefined;
    try testing.expectSize(c.D_S_F, 16);
    try testing.expectAlign(c.D_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:62293:62301
test "D_S_I" {
    var lv: c.D_S_I = undefined;
    try testing.expectSize(c.D_S_I, 16);
    try testing.expectAlign(c.D_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:62318:62326
test "D_S_Ip" {
    var lv: c.D_S_Ip = undefined;
    try testing.expectSize(c.D_S_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:62343:62351
test "D_S_L" {
    var lv: c.D_S_L = undefined;
    try testing.expectSize(c.D_S_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:62368:62376
test "D_S_S" {
    var lv: c.D_S_S = undefined;
    try testing.expectSize(c.D_S_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:62393:62401
test "D_S_Uc" {
    var lv: c.D_S_Uc = undefined;
    try testing.expectSize(c.D_S_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:62418:62426
test "D_S_Ui" {
    var lv: c.D_S_Ui = undefined;
    try testing.expectSize(c.D_S_Ui, 16);
    try testing.expectAlign(c.D_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:62443:62451
test "D_S_Ul" {
    var lv: c.D_S_Ul = undefined;
    try testing.expectSize(c.D_S_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:62468:62476
test "D_S_Us" {
    var lv: c.D_S_Us = undefined;
    try testing.expectSize(c.D_S_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:62493:62501
test "D_S_Vp" {
    var lv: c.D_S_Vp = undefined;
    try testing.expectSize(c.D_S_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:62517:62524
test "D_Uc" {
    var lv: c.D_Uc = undefined;
    try testing.expectSize(c.D_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:63265:63273
test "D_Uc_C" {
    var lv: c.D_Uc_C = undefined;
    try testing.expectSize(c.D_Uc_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xaw.c:63290:63298
test "D_Uc_D" {
    var lv: c.D_Uc_D = undefined;
    try testing.expectSize(c.D_Uc_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:63315:63323
test "D_Uc_F" {
    var lv: c.D_Uc_F = undefined;
    try testing.expectSize(c.D_Uc_F, 16);
    try testing.expectAlign(c.D_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:63340:63348
test "D_Uc_I" {
    var lv: c.D_Uc_I = undefined;
    try testing.expectSize(c.D_Uc_I, 16);
    try testing.expectAlign(c.D_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:63365:63373
test "D_Uc_Ip" {
    var lv: c.D_Uc_Ip = undefined;
    try testing.expectSize(c.D_Uc_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:63390:63398
test "D_Uc_L" {
    var lv: c.D_Uc_L = undefined;
    try testing.expectSize(c.D_Uc_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:63415:63423
test "D_Uc_S" {
    var lv: c.D_Uc_S = undefined;
    try testing.expectSize(c.D_Uc_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:63440:63448
test "D_Uc_Uc" {
    var lv: c.D_Uc_Uc = undefined;
    try testing.expectSize(c.D_Uc_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xaw.c:63465:63473
test "D_Uc_Ui" {
    var lv: c.D_Uc_Ui = undefined;
    try testing.expectSize(c.D_Uc_Ui, 16);
    try testing.expectAlign(c.D_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:63490:63498
test "D_Uc_Ul" {
    var lv: c.D_Uc_Ul = undefined;
    try testing.expectSize(c.D_Uc_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:63515:63523
test "D_Uc_Us" {
    var lv: c.D_Uc_Us = undefined;
    try testing.expectSize(c.D_Uc_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:63540:63548
test "D_Uc_Vp" {
    var lv: c.D_Uc_Vp = undefined;
    try testing.expectSize(c.D_Uc_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:63564:63571
test "D_Ui" {
    var lv: c.D_Ui = undefined;
    try testing.expectSize(c.D_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:64312:64320
test "D_Ui_C" {
    var lv: c.D_Ui_C = undefined;
    try testing.expectSize(c.D_Ui_C, 16);
    try testing.expectAlign(c.D_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64337:64345
test "D_Ui_D" {
    var lv: c.D_Ui_D = undefined;
    try testing.expectSize(c.D_Ui_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:64362:64370
test "D_Ui_F" {
    var lv: c.D_Ui_F = undefined;
    try testing.expectSize(c.D_Ui_F, 16);
    try testing.expectAlign(c.D_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64387:64395
test "D_Ui_I" {
    var lv: c.D_Ui_I = undefined;
    try testing.expectSize(c.D_Ui_I, 16);
    try testing.expectAlign(c.D_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64412:64420
test "D_Ui_Ip" {
    var lv: c.D_Ui_Ip = undefined;
    try testing.expectSize(c.D_Ui_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:64437:64445
test "D_Ui_L" {
    var lv: c.D_Ui_L = undefined;
    try testing.expectSize(c.D_Ui_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:64462:64470
test "D_Ui_S" {
    var lv: c.D_Ui_S = undefined;
    try testing.expectSize(c.D_Ui_S, 16);
    try testing.expectAlign(c.D_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64487:64495
test "D_Ui_Uc" {
    var lv: c.D_Ui_Uc = undefined;
    try testing.expectSize(c.D_Ui_Uc, 16);
    try testing.expectAlign(c.D_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64512:64520
test "D_Ui_Ui" {
    var lv: c.D_Ui_Ui = undefined;
    try testing.expectSize(c.D_Ui_Ui, 16);
    try testing.expectAlign(c.D_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64537:64545
test "D_Ui_Ul" {
    var lv: c.D_Ui_Ul = undefined;
    try testing.expectSize(c.D_Ui_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:64562:64570
test "D_Ui_Us" {
    var lv: c.D_Ui_Us = undefined;
    try testing.expectSize(c.D_Ui_Us, 16);
    try testing.expectAlign(c.D_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64587:64595
test "D_Ui_Vp" {
    var lv: c.D_Ui_Vp = undefined;
    try testing.expectSize(c.D_Ui_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:64611:64618
test "D_Ul" {
    var lv: c.D_Ul = undefined;
    try testing.expectSize(c.D_Ul, 16);
    try testing.expectAlign(c.D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:65359:65367
test "D_Ul_C" {
    var lv: c.D_Ul_C = undefined;
    try testing.expectSize(c.D_Ul_C, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65384:65392
test "D_Ul_D" {
    var lv: c.D_Ul_D = undefined;
    try testing.expectSize(c.D_Ul_D, 24);
    try testing.expectAlign(c.D_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65409:65417
test "D_Ul_F" {
    var lv: c.D_Ul_F = undefined;
    try testing.expectSize(c.D_Ul_F, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65434:65442
test "D_Ul_I" {
    var lv: c.D_Ul_I = undefined;
    try testing.expectSize(c.D_Ul_I, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65459:65467
test "D_Ul_Ip" {
    var lv: c.D_Ul_Ip = undefined;
    try testing.expectSize(c.D_Ul_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65484:65492
test "D_Ul_L" {
    var lv: c.D_Ul_L = undefined;
    try testing.expectSize(c.D_Ul_L, 24);
    try testing.expectAlign(c.D_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65509:65517
test "D_Ul_S" {
    var lv: c.D_Ul_S = undefined;
    try testing.expectSize(c.D_Ul_S, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65534:65542
test "D_Ul_Uc" {
    var lv: c.D_Ul_Uc = undefined;
    try testing.expectSize(c.D_Ul_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65559:65567
test "D_Ul_Ui" {
    var lv: c.D_Ul_Ui = undefined;
    try testing.expectSize(c.D_Ul_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65584:65592
test "D_Ul_Ul" {
    var lv: c.D_Ul_Ul = undefined;
    try testing.expectSize(c.D_Ul_Ul, 24);
    try testing.expectAlign(c.D_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65609:65617
test "D_Ul_Us" {
    var lv: c.D_Ul_Us = undefined;
    try testing.expectSize(c.D_Ul_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65634:65642
test "D_Ul_Vp" {
    var lv: c.D_Ul_Vp = undefined;
    try testing.expectSize(c.D_Ul_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65658:65665
test "D_Us" {
    var lv: c.D_Us = undefined;
    try testing.expectSize(c.D_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:66406:66414
test "D_Us_C" {
    var lv: c.D_Us_C = undefined;
    try testing.expectSize(c.D_Us_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:66431:66439
test "D_Us_D" {
    var lv: c.D_Us_D = undefined;
    try testing.expectSize(c.D_Us_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:66456:66464
test "D_Us_F" {
    var lv: c.D_Us_F = undefined;
    try testing.expectSize(c.D_Us_F, 16);
    try testing.expectAlign(c.D_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:66481:66489
test "D_Us_I" {
    var lv: c.D_Us_I = undefined;
    try testing.expectSize(c.D_Us_I, 16);
    try testing.expectAlign(c.D_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:66506:66514
test "D_Us_Ip" {
    var lv: c.D_Us_Ip = undefined;
    try testing.expectSize(c.D_Us_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:66531:66539
test "D_Us_L" {
    var lv: c.D_Us_L = undefined;
    try testing.expectSize(c.D_Us_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:66556:66564
test "D_Us_S" {
    var lv: c.D_Us_S = undefined;
    try testing.expectSize(c.D_Us_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:66581:66589
test "D_Us_Uc" {
    var lv: c.D_Us_Uc = undefined;
    try testing.expectSize(c.D_Us_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:66606:66614
test "D_Us_Ui" {
    var lv: c.D_Us_Ui = undefined;
    try testing.expectSize(c.D_Us_Ui, 16);
    try testing.expectAlign(c.D_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:66631:66639
test "D_Us_Ul" {
    var lv: c.D_Us_Ul = undefined;
    try testing.expectSize(c.D_Us_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:66656:66664
test "D_Us_Us" {
    var lv: c.D_Us_Us = undefined;
    try testing.expectSize(c.D_Us_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:66681:66689
test "D_Us_Vp" {
    var lv: c.D_Us_Vp = undefined;
    try testing.expectSize(c.D_Us_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:66705:66712
test "D_Vp" {
    var lv: c.D_Vp = undefined;
    try testing.expectSize(c.D_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:67453:67461
test "D_Vp_C" {
    var lv: c.D_Vp_C = undefined;
    try testing.expectSize(c.D_Vp_C, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67478:67486
test "D_Vp_D" {
    var lv: c.D_Vp_D = undefined;
    try testing.expectSize(c.D_Vp_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67503:67511
test "D_Vp_F" {
    var lv: c.D_Vp_F = undefined;
    try testing.expectSize(c.D_Vp_F, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67528:67536
test "D_Vp_I" {
    var lv: c.D_Vp_I = undefined;
    try testing.expectSize(c.D_Vp_I, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67553:67561
test "D_Vp_Ip" {
    var lv: c.D_Vp_Ip = undefined;
    try testing.expectSize(c.D_Vp_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67578:67586
test "D_Vp_L" {
    var lv: c.D_Vp_L = undefined;
    try testing.expectSize(c.D_Vp_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67603:67611
test "D_Vp_S" {
    var lv: c.D_Vp_S = undefined;
    try testing.expectSize(c.D_Vp_S, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67628:67636
test "D_Vp_Uc" {
    var lv: c.D_Vp_Uc = undefined;
    try testing.expectSize(c.D_Vp_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67653:67661
test "D_Vp_Ui" {
    var lv: c.D_Vp_Ui = undefined;
    try testing.expectSize(c.D_Vp_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67678:67686
test "D_Vp_Ul" {
    var lv: c.D_Vp_Ul = undefined;
    try testing.expectSize(c.D_Vp_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67703:67711
test "D_Vp_Us" {
    var lv: c.D_Vp_Us = undefined;
    try testing.expectSize(c.D_Vp_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67728:67736
test "D_Vp_Vp" {
    var lv: c.D_Vp_Vp = undefined;
    try testing.expectSize(c.D_Vp_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67751:67757
test "F" {
    var lv: c.F = undefined;
    try testing.expectSize(c.F, 4);
    try testing.expectAlign(c.F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
