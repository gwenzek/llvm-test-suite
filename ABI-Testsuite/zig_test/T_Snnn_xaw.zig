const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xaw.h");
});

// From T_Snnn_xaw.c:12293:12311
// struct  C_C  {
//   char v1;
//   char v2;
// };

test "C_C layout" {
    var lv: c.C_C = undefined;
    try testing.expectSize(c.C_C, 2);
    try testing.expectAlign(c.C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}
test "C_C C calls" {
    try testing.expectOk(c.recv_C_C(.{ .v1 = 93, .v2 = 58 }));
    try testing.expectEqual(c.ret_C_C(), .{ .v1 = 93, .v2 = 58 });
    try testing.expectOk(c.send_C_C());
}
pub export fn zig_recv_C_C(lv: c.C_C) c_int {
    if (lv.v1 != 93) return 1;
    if (lv.v2 != 58) return 2;
    return 0;
}

// From T_Snnn_xaw.c:13040:13060
// struct  C_C_C  {
//   char v1;
//   char v2;
//   char v3;
// };

test "C_C_C layout" {
    var lv: c.C_C_C = undefined;
    try testing.expectSize(c.C_C_C, 3);
    try testing.expectAlign(c.C_C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_C_C C calls" {
    try testing.expectOk(c.recv_C_C_C(.{ .v1 = 4, .v2 = 51, .v3 = 111 }));
    try testing.expectEqual(c.ret_C_C_C(), .{ .v1 = 4, .v2 = 51, .v3 = 111 });
    try testing.expectOk(c.send_C_C_C());
}
pub export fn zig_recv_C_C_C(lv: c.C_C_C) c_int {
    if (lv.v1 != 4) return 1;
    if (lv.v2 != 51) return 2;
    if (lv.v3 != 111) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13065:13085
// struct  C_C_D  {
//   char v1;
//   char v2;
//   double v3;
// };

test "C_C_D layout" {
    var lv: c.C_C_D = undefined;
    try testing.expectSize(c.C_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_C_D C calls" {
    try testing.expectOk(c.recv_C_C_D(.{ .v1 = 88, .v2 = 39, .v3 = -2.125 }));
    try testing.expectEqual(c.ret_C_C_D(), .{ .v1 = 88, .v2 = 39, .v3 = -2.125 });
    try testing.expectOk(c.send_C_C_D());
}
pub export fn zig_recv_C_C_D(lv: c.C_C_D) c_int {
    if (lv.v1 != 88) return 1;
    if (lv.v2 != 39) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13090:13110
// struct  C_C_F  {
//   char v1;
//   char v2;
//   float v3;
// };

test "C_C_F layout" {
    var lv: c.C_C_F = undefined;
    try testing.expectSize(c.C_C_F, 8);
    try testing.expectAlign(c.C_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_C_F C calls" {
    try testing.expectOk(c.recv_C_C_F(.{ .v1 = 33, .v2 = 7, .v3 = -2.125 }));
    try testing.expectEqual(c.ret_C_C_F(), .{ .v1 = 33, .v2 = 7, .v3 = -2.125 });
    try testing.expectOk(c.send_C_C_F());
}
pub export fn zig_recv_C_C_F(lv: c.C_C_F) c_int {
    if (lv.v1 != 33) return 1;
    if (lv.v2 != 7) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13115:13135
// struct  C_C_I  {
//   char v1;
//   char v2;
//   int v3;
// };

test "C_C_I layout" {
    var lv: c.C_C_I = undefined;
    try testing.expectSize(c.C_C_I, 8);
    try testing.expectAlign(c.C_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_C_I C calls" {
    try testing.expectOk(c.recv_C_C_I(.{ .v1 = 13, .v2 = 54, .v3 = 29336 }));
    try testing.expectEqual(c.ret_C_C_I(), .{ .v1 = 13, .v2 = 54, .v3 = 29336 });
    try testing.expectOk(c.send_C_C_I());
}
pub export fn zig_recv_C_C_I(lv: c.C_C_I) c_int {
    if (lv.v1 != 13) return 1;
    if (lv.v2 != 54) return 2;
    if (lv.v3 != 29336) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13140:13160
// struct  C_C_Ip  {
//   char v1;
//   char v2;
//   int *v3;
// };

test "C_C_Ip layout" {
    var lv: c.C_C_Ip = undefined;
    try testing.expectSize(c.C_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_C_Ip C calls" {
    try testing.expectOk(c.recv_C_C_Ip(.{ .v1 = 106, .v2 = 36, .v3 = null }));
    try testing.expectEqual(c.ret_C_C_Ip(), .{ .v1 = 106, .v2 = 36, .v3 = null });
    try testing.expectOk(c.send_C_C_Ip());
}
pub export fn zig_recv_C_C_Ip(lv: c.C_C_Ip) c_int {
    if (lv.v1 != 106) return 1;
    if (lv.v2 != 36) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13165:13185
// struct  C_C_L  {
//   char v1;
//   char v2;
//   __tsi64 v3;
// };

test "C_C_L layout" {
    var lv: c.C_C_L = undefined;
    try testing.expectSize(c.C_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_C_L C calls" {
    try testing.expectOk(c.recv_C_C_L(.{ .v1 = 47, .v2 = 56, .v3 = 32374 }));
    try testing.expectEqual(c.ret_C_C_L(), .{ .v1 = 47, .v2 = 56, .v3 = 32374 });
    try testing.expectOk(c.send_C_C_L());
}
pub export fn zig_recv_C_C_L(lv: c.C_C_L) c_int {
    if (lv.v1 != 47) return 1;
    if (lv.v2 != 56) return 2;
    if (lv.v3 != 32374) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13190:13210
// struct  C_C_S  {
//   char v1;
//   char v2;
//   short v3;
// };

test "C_C_S layout" {
    var lv: c.C_C_S = undefined;
    try testing.expectSize(c.C_C_S, 4);
    try testing.expectAlign(c.C_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_C_S C calls" {
    try testing.expectOk(c.recv_C_C_S(.{ .v1 = 25, .v2 = 8, .v3 = 265 }));
    try testing.expectEqual(c.ret_C_C_S(), .{ .v1 = 25, .v2 = 8, .v3 = 265 });
    try testing.expectOk(c.send_C_C_S());
}
pub export fn zig_recv_C_C_S(lv: c.C_C_S) c_int {
    if (lv.v1 != 25) return 1;
    if (lv.v2 != 8) return 2;
    if (lv.v3 != 265) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13215:13235
// struct  C_C_Uc  {
//   char v1;
//   char v2;
//   unsigned char v3;
// };

test "C_C_Uc layout" {
    var lv: c.C_C_Uc = undefined;
    try testing.expectSize(c.C_C_Uc, 3);
    try testing.expectAlign(c.C_C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_C_Uc C calls" {
    try testing.expectOk(c.recv_C_C_Uc(.{ .v1 = 38, .v2 = 42, .v3 = 110 }));
    try testing.expectEqual(c.ret_C_C_Uc(), .{ .v1 = 38, .v2 = 42, .v3 = 110 });
    try testing.expectOk(c.send_C_C_Uc());
}
pub export fn zig_recv_C_C_Uc(lv: c.C_C_Uc) c_int {
    if (lv.v1 != 38) return 1;
    if (lv.v2 != 42) return 2;
    if (lv.v3 != 110) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13240:13260
// struct  C_C_Ui  {
//   char v1;
//   char v2;
//   unsigned int v3;
// };

test "C_C_Ui layout" {
    var lv: c.C_C_Ui = undefined;
    try testing.expectSize(c.C_C_Ui, 8);
    try testing.expectAlign(c.C_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_C_Ui C calls" {
    try testing.expectOk(c.recv_C_C_Ui(.{ .v1 = 126, .v2 = 33, .v3 = 8231 }));
    try testing.expectEqual(c.ret_C_C_Ui(), .{ .v1 = 126, .v2 = 33, .v3 = 8231 });
    try testing.expectOk(c.send_C_C_Ui());
}
pub export fn zig_recv_C_C_Ui(lv: c.C_C_Ui) c_int {
    if (lv.v1 != 126) return 1;
    if (lv.v2 != 33) return 2;
    if (lv.v3 != 8231) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13265:13285
// struct  C_C_Ul  {
//   char v1;
//   char v2;
//   __tsu64 v3;
// };

test "C_C_Ul layout" {
    var lv: c.C_C_Ul = undefined;
    try testing.expectSize(c.C_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_C_Ul C calls" {
    try testing.expectOk(c.recv_C_C_Ul(.{ .v1 = 89, .v2 = 41, .v3 = 1425 }));
    try testing.expectEqual(c.ret_C_C_Ul(), .{ .v1 = 89, .v2 = 41, .v3 = 1425 });
    try testing.expectOk(c.send_C_C_Ul());
}
pub export fn zig_recv_C_C_Ul(lv: c.C_C_Ul) c_int {
    if (lv.v1 != 89) return 1;
    if (lv.v2 != 41) return 2;
    if (lv.v3 != 1425) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13290:13310
// struct  C_C_Us  {
//   char v1;
//   char v2;
//   unsigned short v3;
// };

test "C_C_Us layout" {
    var lv: c.C_C_Us = undefined;
    try testing.expectSize(c.C_C_Us, 4);
    try testing.expectAlign(c.C_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_C_Us C calls" {
    try testing.expectOk(c.recv_C_C_Us(.{ .v1 = 64, .v2 = 25, .v3 = 3643 }));
    try testing.expectEqual(c.ret_C_C_Us(), .{ .v1 = 64, .v2 = 25, .v3 = 3643 });
    try testing.expectOk(c.send_C_C_Us());
}
pub export fn zig_recv_C_C_Us(lv: c.C_C_Us) c_int {
    if (lv.v1 != 64) return 1;
    if (lv.v2 != 25) return 2;
    if (lv.v3 != 3643) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13315:13335
// struct  C_C_Vp  {
//   char v1;
//   char v2;
//   void *v3;
// };

test "C_C_Vp layout" {
    var lv: c.C_C_Vp = undefined;
    try testing.expectSize(c.C_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_C_Vp C calls" {
    try testing.expectOk(c.recv_C_C_Vp(.{ .v1 = 104, .v2 = 122, .v3 = null }));
    try testing.expectEqual(c.ret_C_C_Vp(), .{ .v1 = 104, .v2 = 122, .v3 = null });
    try testing.expectOk(c.send_C_C_Vp());
}
pub export fn zig_recv_C_C_Vp(lv: c.C_C_Vp) c_int {
    if (lv.v1 != 104) return 1;
    if (lv.v2 != 122) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:13340:13358
// struct  C_D  {
//   char v1;
//   double v2;
// };

test "C_D layout" {
    var lv: c.C_D = undefined;
    try testing.expectSize(c.C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "C_D C calls" {
    try testing.expectOk(c.recv_C_D(.{ .v1 = 97, .v2 = -2.125 }));
    try testing.expectEqual(c.ret_C_D(), .{ .v1 = 97, .v2 = -2.125 });
    try testing.expectOk(c.send_C_D());
}
pub export fn zig_recv_C_D(lv: c.C_D) c_int {
    if (lv.v1 != 97) return 1;
    if (lv.v2 != -2.125) return 2;
    return 0;
}

// From T_Snnn_xaw.c:14087:14107
// struct  C_D_C  {
//   char v1;
//   double v2;
//   char v3;
// };

test "C_D_C layout" {
    var lv: c.C_D_C = undefined;
    try testing.expectSize(c.C_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_C C calls" {
    try testing.expectOk(c.recv_C_D_C(.{ .v1 = 2, .v2 = 0.5, .v3 = 100 }));
    try testing.expectEqual(c.ret_C_D_C(), .{ .v1 = 2, .v2 = 0.5, .v3 = 100 });
    try testing.expectOk(c.send_C_D_C());
}
pub export fn zig_recv_C_D_C(lv: c.C_D_C) c_int {
    if (lv.v1 != 2) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != 100) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14112:14132
// struct  C_D_D  {
//   char v1;
//   double v2;
//   double v3;
// };

test "C_D_D layout" {
    var lv: c.C_D_D = undefined;
    try testing.expectSize(c.C_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.C_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_D C calls" {
    try testing.expectOk(c.recv_C_D_D(.{ .v1 = 56, .v2 = -0.25, .v3 = 0.5 }));
    try testing.expectEqual(c.ret_C_D_D(), .{ .v1 = 56, .v2 = -0.25, .v3 = 0.5 });
    try testing.expectOk(c.send_C_D_D());
}
pub export fn zig_recv_C_D_D(lv: c.C_D_D) c_int {
    if (lv.v1 != 56) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14137:14157
// struct  C_D_F  {
//   char v1;
//   double v2;
//   float v3;
// };

test "C_D_F layout" {
    var lv: c.C_D_F = undefined;
    try testing.expectSize(c.C_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_F C calls" {
    try testing.expectOk(c.recv_C_D_F(.{ .v1 = 127, .v2 = -0.25, .v3 = 1.0 }));
    try testing.expectEqual(c.ret_C_D_F(), .{ .v1 = 127, .v2 = -0.25, .v3 = 1.0 });
    try testing.expectOk(c.send_C_D_F());
}
pub export fn zig_recv_C_D_F(lv: c.C_D_F) c_int {
    if (lv.v1 != 127) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14162:14182
// struct  C_D_I  {
//   char v1;
//   double v2;
//   int v3;
// };

test "C_D_I layout" {
    var lv: c.C_D_I = undefined;
    try testing.expectSize(c.C_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_I C calls" {
    try testing.expectOk(c.recv_C_D_I(.{ .v1 = 3, .v2 = 4.5, .v3 = 19706 }));
    try testing.expectEqual(c.ret_C_D_I(), .{ .v1 = 3, .v2 = 4.5, .v3 = 19706 });
    try testing.expectOk(c.send_C_D_I());
}
pub export fn zig_recv_C_D_I(lv: c.C_D_I) c_int {
    if (lv.v1 != 3) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 19706) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14187:14207
// struct  C_D_Ip  {
//   char v1;
//   double v2;
//   int *v3;
// };

test "C_D_Ip layout" {
    var lv: c.C_D_Ip = undefined;
    try testing.expectSize(c.C_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_Ip C calls" {
    try testing.expectOk(c.recv_C_D_Ip(.{ .v1 = 9, .v2 = 0.875, .v3 = null }));
    try testing.expectEqual(c.ret_C_D_Ip(), .{ .v1 = 9, .v2 = 0.875, .v3 = null });
    try testing.expectOk(c.send_C_D_Ip());
}
pub export fn zig_recv_C_D_Ip(lv: c.C_D_Ip) c_int {
    if (lv.v1 != 9) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14212:14232
// struct  C_D_L  {
//   char v1;
//   double v2;
//   __tsi64 v3;
// };

test "C_D_L layout" {
    var lv: c.C_D_L = undefined;
    try testing.expectSize(c.C_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.C_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_L C calls" {
    try testing.expectOk(c.recv_C_D_L(.{ .v1 = 78, .v2 = 7.0, .v3 = 23713 }));
    try testing.expectEqual(c.ret_C_D_L(), .{ .v1 = 78, .v2 = 7.0, .v3 = 23713 });
    try testing.expectOk(c.send_C_D_L());
}
pub export fn zig_recv_C_D_L(lv: c.C_D_L) c_int {
    if (lv.v1 != 78) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 23713) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14237:14257
// struct  C_D_S  {
//   char v1;
//   double v2;
//   short v3;
// };

test "C_D_S layout" {
    var lv: c.C_D_S = undefined;
    try testing.expectSize(c.C_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_S C calls" {
    try testing.expectOk(c.recv_C_D_S(.{ .v1 = 90, .v2 = 7.0, .v3 = 24730 }));
    try testing.expectEqual(c.ret_C_D_S(), .{ .v1 = 90, .v2 = 7.0, .v3 = 24730 });
    try testing.expectOk(c.send_C_D_S());
}
pub export fn zig_recv_C_D_S(lv: c.C_D_S) c_int {
    if (lv.v1 != 90) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 24730) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14262:14282
// struct  C_D_Uc  {
//   char v1;
//   double v2;
//   unsigned char v3;
// };

test "C_D_Uc layout" {
    var lv: c.C_D_Uc = undefined;
    try testing.expectSize(c.C_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_Uc C calls" {
    try testing.expectOk(c.recv_C_D_Uc(.{ .v1 = 75, .v2 = 4.5, .v3 = 33 }));
    try testing.expectEqual(c.ret_C_D_Uc(), .{ .v1 = 75, .v2 = 4.5, .v3 = 33 });
    try testing.expectOk(c.send_C_D_Uc());
}
pub export fn zig_recv_C_D_Uc(lv: c.C_D_Uc) c_int {
    if (lv.v1 != 75) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 33) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14287:14307
// struct  C_D_Ui  {
//   char v1;
//   double v2;
//   unsigned int v3;
// };

test "C_D_Ui layout" {
    var lv: c.C_D_Ui = undefined;
    try testing.expectSize(c.C_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_Ui C calls" {
    try testing.expectOk(c.recv_C_D_Ui(.{ .v1 = 77, .v2 = 1.0, .v3 = 4531 }));
    try testing.expectEqual(c.ret_C_D_Ui(), .{ .v1 = 77, .v2 = 1.0, .v3 = 4531 });
    try testing.expectOk(c.send_C_D_Ui());
}
pub export fn zig_recv_C_D_Ui(lv: c.C_D_Ui) c_int {
    if (lv.v1 != 77) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 4531) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14312:14332
// struct  C_D_Ul  {
//   char v1;
//   double v2;
//   __tsu64 v3;
// };

test "C_D_Ul layout" {
    var lv: c.C_D_Ul = undefined;
    try testing.expectSize(c.C_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.C_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_Ul C calls" {
    try testing.expectOk(c.recv_C_D_Ul(.{ .v1 = 19, .v2 = 7.0, .v3 = 23467 }));
    try testing.expectEqual(c.ret_C_D_Ul(), .{ .v1 = 19, .v2 = 7.0, .v3 = 23467 });
    try testing.expectOk(c.send_C_D_Ul());
}
pub export fn zig_recv_C_D_Ul(lv: c.C_D_Ul) c_int {
    if (lv.v1 != 19) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 23467) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14337:14357
// struct  C_D_Us  {
//   char v1;
//   double v2;
//   unsigned short v3;
// };

test "C_D_Us layout" {
    var lv: c.C_D_Us = undefined;
    try testing.expectSize(c.C_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_Us C calls" {
    try testing.expectOk(c.recv_C_D_Us(.{ .v1 = 103, .v2 = 0.875, .v3 = 5008 }));
    try testing.expectEqual(c.ret_C_D_Us(), .{ .v1 = 103, .v2 = 0.875, .v3 = 5008 });
    try testing.expectOk(c.send_C_D_Us());
}
pub export fn zig_recv_C_D_Us(lv: c.C_D_Us) c_int {
    if (lv.v1 != 103) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 5008) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14362:14382
// struct  C_D_Vp  {
//   char v1;
//   double v2;
//   void *v3;
// };

test "C_D_Vp layout" {
    var lv: c.C_D_Vp = undefined;
    try testing.expectSize(c.C_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_Vp C calls" {
    try testing.expectOk(c.recv_C_D_Vp(.{ .v1 = 77, .v2 = -0.25, .v3 = null }));
    try testing.expectEqual(c.ret_C_D_Vp(), .{ .v1 = 77, .v2 = -0.25, .v3 = null });
    try testing.expectOk(c.send_C_D_Vp());
}
pub export fn zig_recv_C_D_Vp(lv: c.C_D_Vp) c_int {
    if (lv.v1 != 77) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:14387:14405
// struct  C_F  {
//   char v1;
//   float v2;
// };

test "C_F layout" {
    var lv: c.C_F = undefined;
    try testing.expectSize(c.C_F, 8);
    try testing.expectAlign(c.C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "C_F C calls" {
    try testing.expectOk(c.recv_C_F(.{ .v1 = 14, .v2 = -0.25 }));
    try testing.expectEqual(c.ret_C_F(), .{ .v1 = 14, .v2 = -0.25 });
    try testing.expectOk(c.send_C_F());
}
pub export fn zig_recv_C_F(lv: c.C_F) c_int {
    if (lv.v1 != 14) return 1;
    if (lv.v2 != -0.25) return 2;
    return 0;
}

// From T_Snnn_xaw.c:15134:15154
// struct  C_F_C  {
//   char v1;
//   float v2;
//   char v3;
// };

test "C_F_C layout" {
    var lv: c.C_F_C = undefined;
    try testing.expectSize(c.C_F_C, 12);
    try testing.expectAlign(c.C_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_C C calls" {
    try testing.expectOk(c.recv_C_F_C(.{ .v1 = 99, .v2 = -2.125, .v3 = 40 }));
    try testing.expectEqual(c.ret_C_F_C(), .{ .v1 = 99, .v2 = -2.125, .v3 = 40 });
    try testing.expectOk(c.send_C_F_C());
}
pub export fn zig_recv_C_F_C(lv: c.C_F_C) c_int {
    if (lv.v1 != 99) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 40) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15159:15179
// struct  C_F_D  {
//   char v1;
//   float v2;
//   double v3;
// };

test "C_F_D layout" {
    var lv: c.C_F_D = undefined;
    try testing.expectSize(c.C_F_D, 16);
    try testing.expectAlign(c.C_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_D C calls" {
    try testing.expectOk(c.recv_C_F_D(.{ .v1 = 90, .v2 = -0.25, .v3 = -2.125 }));
    try testing.expectEqual(c.ret_C_F_D(), .{ .v1 = 90, .v2 = -0.25, .v3 = -2.125 });
    try testing.expectOk(c.send_C_F_D());
}
pub export fn zig_recv_C_F_D(lv: c.C_F_D) c_int {
    if (lv.v1 != 90) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15184:15204
// struct  C_F_F  {
//   char v1;
//   float v2;
//   float v3;
// };

test "C_F_F layout" {
    var lv: c.C_F_F = undefined;
    try testing.expectSize(c.C_F_F, 12);
    try testing.expectAlign(c.C_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_F C calls" {
    try testing.expectOk(c.recv_C_F_F(.{ .v1 = 39, .v2 = 0.875, .v3 = 1.0 }));
    try testing.expectEqual(c.ret_C_F_F(), .{ .v1 = 39, .v2 = 0.875, .v3 = 1.0 });
    try testing.expectOk(c.send_C_F_F());
}
pub export fn zig_recv_C_F_F(lv: c.C_F_F) c_int {
    if (lv.v1 != 39) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15209:15229
// struct  C_F_I  {
//   char v1;
//   float v2;
//   int v3;
// };

test "C_F_I layout" {
    var lv: c.C_F_I = undefined;
    try testing.expectSize(c.C_F_I, 12);
    try testing.expectAlign(c.C_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_I C calls" {
    try testing.expectOk(c.recv_C_F_I(.{ .v1 = 88, .v2 = 1.0, .v3 = 18203 }));
    try testing.expectEqual(c.ret_C_F_I(), .{ .v1 = 88, .v2 = 1.0, .v3 = 18203 });
    try testing.expectOk(c.send_C_F_I());
}
pub export fn zig_recv_C_F_I(lv: c.C_F_I) c_int {
    if (lv.v1 != 88) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 18203) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15234:15254
// struct  C_F_Ip  {
//   char v1;
//   float v2;
//   int *v3;
// };

test "C_F_Ip layout" {
    var lv: c.C_F_Ip = undefined;
    try testing.expectSize(c.C_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.C_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_Ip C calls" {
    try testing.expectOk(c.recv_C_F_Ip(.{ .v1 = 2, .v2 = -0.25, .v3 = null }));
    try testing.expectEqual(c.ret_C_F_Ip(), .{ .v1 = 2, .v2 = -0.25, .v3 = null });
    try testing.expectOk(c.send_C_F_Ip());
}
pub export fn zig_recv_C_F_Ip(lv: c.C_F_Ip) c_int {
    if (lv.v1 != 2) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15259:15279
// struct  C_F_L  {
//   char v1;
//   float v2;
//   __tsi64 v3;
// };

test "C_F_L layout" {
    var lv: c.C_F_L = undefined;
    try testing.expectSize(c.C_F_L, 16);
    try testing.expectAlign(c.C_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_L C calls" {
    try testing.expectOk(c.recv_C_F_L(.{ .v1 = 125, .v2 = -0.25, .v3 = 12277 }));
    try testing.expectEqual(c.ret_C_F_L(), .{ .v1 = 125, .v2 = -0.25, .v3 = 12277 });
    try testing.expectOk(c.send_C_F_L());
}
pub export fn zig_recv_C_F_L(lv: c.C_F_L) c_int {
    if (lv.v1 != 125) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 12277) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15284:15304
// struct  C_F_S  {
//   char v1;
//   float v2;
//   short v3;
// };

test "C_F_S layout" {
    var lv: c.C_F_S = undefined;
    try testing.expectSize(c.C_F_S, 12);
    try testing.expectAlign(c.C_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_S C calls" {
    try testing.expectOk(c.recv_C_F_S(.{ .v1 = 52, .v2 = 1.0, .v3 = 13569 }));
    try testing.expectEqual(c.ret_C_F_S(), .{ .v1 = 52, .v2 = 1.0, .v3 = 13569 });
    try testing.expectOk(c.send_C_F_S());
}
pub export fn zig_recv_C_F_S(lv: c.C_F_S) c_int {
    if (lv.v1 != 52) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 13569) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15309:15329
// struct  C_F_Uc  {
//   char v1;
//   float v2;
//   unsigned char v3;
// };

test "C_F_Uc layout" {
    var lv: c.C_F_Uc = undefined;
    try testing.expectSize(c.C_F_Uc, 12);
    try testing.expectAlign(c.C_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_Uc C calls" {
    try testing.expectOk(c.recv_C_F_Uc(.{ .v1 = 115, .v2 = 0.5, .v3 = 41 }));
    try testing.expectEqual(c.ret_C_F_Uc(), .{ .v1 = 115, .v2 = 0.5, .v3 = 41 });
    try testing.expectOk(c.send_C_F_Uc());
}
pub export fn zig_recv_C_F_Uc(lv: c.C_F_Uc) c_int {
    if (lv.v1 != 115) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != 41) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15334:15354
// struct  C_F_Ui  {
//   char v1;
//   float v2;
//   unsigned int v3;
// };

test "C_F_Ui layout" {
    var lv: c.C_F_Ui = undefined;
    try testing.expectSize(c.C_F_Ui, 12);
    try testing.expectAlign(c.C_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_Ui C calls" {
    try testing.expectOk(c.recv_C_F_Ui(.{ .v1 = 11, .v2 = 0.875, .v3 = 15064 }));
    try testing.expectEqual(c.ret_C_F_Ui(), .{ .v1 = 11, .v2 = 0.875, .v3 = 15064 });
    try testing.expectOk(c.send_C_F_Ui());
}
pub export fn zig_recv_C_F_Ui(lv: c.C_F_Ui) c_int {
    if (lv.v1 != 11) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 15064) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15359:15379
// struct  C_F_Ul  {
//   char v1;
//   float v2;
//   __tsu64 v3;
// };

test "C_F_Ul layout" {
    var lv: c.C_F_Ul = undefined;
    try testing.expectSize(c.C_F_Ul, 16);
    try testing.expectAlign(c.C_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_Ul C calls" {
    try testing.expectOk(c.recv_C_F_Ul(.{ .v1 = 39, .v2 = 7.0, .v3 = 20182 }));
    try testing.expectEqual(c.ret_C_F_Ul(), .{ .v1 = 39, .v2 = 7.0, .v3 = 20182 });
    try testing.expectOk(c.send_C_F_Ul());
}
pub export fn zig_recv_C_F_Ul(lv: c.C_F_Ul) c_int {
    if (lv.v1 != 39) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 20182) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15384:15404
// struct  C_F_Us  {
//   char v1;
//   float v2;
//   unsigned short v3;
// };

test "C_F_Us layout" {
    var lv: c.C_F_Us = undefined;
    try testing.expectSize(c.C_F_Us, 12);
    try testing.expectAlign(c.C_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_Us C calls" {
    try testing.expectOk(c.recv_C_F_Us(.{ .v1 = 89, .v2 = 1.0, .v3 = 1739 }));
    try testing.expectEqual(c.ret_C_F_Us(), .{ .v1 = 89, .v2 = 1.0, .v3 = 1739 });
    try testing.expectOk(c.send_C_F_Us());
}
pub export fn zig_recv_C_F_Us(lv: c.C_F_Us) c_int {
    if (lv.v1 != 89) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 1739) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15409:15429
// struct  C_F_Vp  {
//   char v1;
//   float v2;
//   void *v3;
// };

test "C_F_Vp layout" {
    var lv: c.C_F_Vp = undefined;
    try testing.expectSize(c.C_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.C_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_Vp C calls" {
    try testing.expectOk(c.recv_C_F_Vp(.{ .v1 = 110, .v2 = 0.875, .v3 = null }));
    try testing.expectEqual(c.ret_C_F_Vp(), .{ .v1 = 110, .v2 = 0.875, .v3 = null });
    try testing.expectOk(c.send_C_F_Vp());
}
pub export fn zig_recv_C_F_Vp(lv: c.C_F_Vp) c_int {
    if (lv.v1 != 110) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:15434:15452
// struct  C_I  {
//   char v1;
//   int v2;
// };

test "C_I layout" {
    var lv: c.C_I = undefined;
    try testing.expectSize(c.C_I, 8);
    try testing.expectAlign(c.C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "C_I C calls" {
    try testing.expectOk(c.recv_C_I(.{ .v1 = 46, .v2 = 3018 }));
    try testing.expectEqual(c.ret_C_I(), .{ .v1 = 46, .v2 = 3018 });
    try testing.expectOk(c.send_C_I());
}
pub export fn zig_recv_C_I(lv: c.C_I) c_int {
    if (lv.v1 != 46) return 1;
    if (lv.v2 != 3018) return 2;
    return 0;
}

// From T_Snnn_xaw.c:16181:16201
// struct  C_I_C  {
//   char v1;
//   int v2;
//   char v3;
// };

test "C_I_C layout" {
    var lv: c.C_I_C = undefined;
    try testing.expectSize(c.C_I_C, 12);
    try testing.expectAlign(c.C_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_C C calls" {
    try testing.expectOk(c.recv_C_I_C(.{ .v1 = 38, .v2 = 18674, .v3 = 26 }));
    try testing.expectEqual(c.ret_C_I_C(), .{ .v1 = 38, .v2 = 18674, .v3 = 26 });
    try testing.expectOk(c.send_C_I_C());
}
pub export fn zig_recv_C_I_C(lv: c.C_I_C) c_int {
    if (lv.v1 != 38) return 1;
    if (lv.v2 != 18674) return 2;
    if (lv.v3 != 26) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16206:16226
// struct  C_I_D  {
//   char v1;
//   int v2;
//   double v3;
// };

test "C_I_D layout" {
    var lv: c.C_I_D = undefined;
    try testing.expectSize(c.C_I_D, 16);
    try testing.expectAlign(c.C_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_D C calls" {
    try testing.expectOk(c.recv_C_I_D(.{ .v1 = 7, .v2 = 8195, .v3 = 7.0 }));
    try testing.expectEqual(c.ret_C_I_D(), .{ .v1 = 7, .v2 = 8195, .v3 = 7.0 });
    try testing.expectOk(c.send_C_I_D());
}
pub export fn zig_recv_C_I_D(lv: c.C_I_D) c_int {
    if (lv.v1 != 7) return 1;
    if (lv.v2 != 8195) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16231:16251
// struct  C_I_F  {
//   char v1;
//   int v2;
//   float v3;
// };

test "C_I_F layout" {
    var lv: c.C_I_F = undefined;
    try testing.expectSize(c.C_I_F, 12);
    try testing.expectAlign(c.C_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_F C calls" {
    try testing.expectOk(c.recv_C_I_F(.{ .v1 = 26, .v2 = 19684, .v3 = 0.5 }));
    try testing.expectEqual(c.ret_C_I_F(), .{ .v1 = 26, .v2 = 19684, .v3 = 0.5 });
    try testing.expectOk(c.send_C_I_F());
}
pub export fn zig_recv_C_I_F(lv: c.C_I_F) c_int {
    if (lv.v1 != 26) return 1;
    if (lv.v2 != 19684) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16256:16276
// struct  C_I_I  {
//   char v1;
//   int v2;
//   int v3;
// };

test "C_I_I layout" {
    var lv: c.C_I_I = undefined;
    try testing.expectSize(c.C_I_I, 12);
    try testing.expectAlign(c.C_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_I C calls" {
    try testing.expectOk(c.recv_C_I_I(.{ .v1 = 16, .v2 = 24394, .v3 = 24801 }));
    try testing.expectEqual(c.ret_C_I_I(), .{ .v1 = 16, .v2 = 24394, .v3 = 24801 });
    try testing.expectOk(c.send_C_I_I());
}
pub export fn zig_recv_C_I_I(lv: c.C_I_I) c_int {
    if (lv.v1 != 16) return 1;
    if (lv.v2 != 24394) return 2;
    if (lv.v3 != 24801) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16281:16301
// struct  C_I_Ip  {
//   char v1;
//   int v2;
//   int *v3;
// };

test "C_I_Ip layout" {
    var lv: c.C_I_Ip = undefined;
    try testing.expectSize(c.C_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.C_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_Ip C calls" {
    try testing.expectOk(c.recv_C_I_Ip(.{ .v1 = 9, .v2 = 4874, .v3 = null }));
    try testing.expectEqual(c.ret_C_I_Ip(), .{ .v1 = 9, .v2 = 4874, .v3 = null });
    try testing.expectOk(c.send_C_I_Ip());
}
pub export fn zig_recv_C_I_Ip(lv: c.C_I_Ip) c_int {
    if (lv.v1 != 9) return 1;
    if (lv.v2 != 4874) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16306:16326
// struct  C_I_L  {
//   char v1;
//   int v2;
//   __tsi64 v3;
// };

test "C_I_L layout" {
    var lv: c.C_I_L = undefined;
    try testing.expectSize(c.C_I_L, 16);
    try testing.expectAlign(c.C_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_L C calls" {
    try testing.expectOk(c.recv_C_I_L(.{ .v1 = 83, .v2 = 18653, .v3 = 14871 }));
    try testing.expectEqual(c.ret_C_I_L(), .{ .v1 = 83, .v2 = 18653, .v3 = 14871 });
    try testing.expectOk(c.send_C_I_L());
}
pub export fn zig_recv_C_I_L(lv: c.C_I_L) c_int {
    if (lv.v1 != 83) return 1;
    if (lv.v2 != 18653) return 2;
    if (lv.v3 != 14871) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16331:16351
// struct  C_I_S  {
//   char v1;
//   int v2;
//   short v3;
// };

test "C_I_S layout" {
    var lv: c.C_I_S = undefined;
    try testing.expectSize(c.C_I_S, 12);
    try testing.expectAlign(c.C_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_S C calls" {
    try testing.expectOk(c.recv_C_I_S(.{ .v1 = 55, .v2 = 11619, .v3 = 1995 }));
    try testing.expectEqual(c.ret_C_I_S(), .{ .v1 = 55, .v2 = 11619, .v3 = 1995 });
    try testing.expectOk(c.send_C_I_S());
}
pub export fn zig_recv_C_I_S(lv: c.C_I_S) c_int {
    if (lv.v1 != 55) return 1;
    if (lv.v2 != 11619) return 2;
    if (lv.v3 != 1995) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16356:16376
// struct  C_I_Uc  {
//   char v1;
//   int v2;
//   unsigned char v3;
// };

test "C_I_Uc layout" {
    var lv: c.C_I_Uc = undefined;
    try testing.expectSize(c.C_I_Uc, 12);
    try testing.expectAlign(c.C_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_Uc C calls" {
    try testing.expectOk(c.recv_C_I_Uc(.{ .v1 = 108, .v2 = 18803, .v3 = 13 }));
    try testing.expectEqual(c.ret_C_I_Uc(), .{ .v1 = 108, .v2 = 18803, .v3 = 13 });
    try testing.expectOk(c.send_C_I_Uc());
}
pub export fn zig_recv_C_I_Uc(lv: c.C_I_Uc) c_int {
    if (lv.v1 != 108) return 1;
    if (lv.v2 != 18803) return 2;
    if (lv.v3 != 13) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16381:16401
// struct  C_I_Ui  {
//   char v1;
//   int v2;
//   unsigned int v3;
// };

test "C_I_Ui layout" {
    var lv: c.C_I_Ui = undefined;
    try testing.expectSize(c.C_I_Ui, 12);
    try testing.expectAlign(c.C_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_Ui C calls" {
    try testing.expectOk(c.recv_C_I_Ui(.{ .v1 = 72, .v2 = 10536, .v3 = 25360 }));
    try testing.expectEqual(c.ret_C_I_Ui(), .{ .v1 = 72, .v2 = 10536, .v3 = 25360 });
    try testing.expectOk(c.send_C_I_Ui());
}
pub export fn zig_recv_C_I_Ui(lv: c.C_I_Ui) c_int {
    if (lv.v1 != 72) return 1;
    if (lv.v2 != 10536) return 2;
    if (lv.v3 != 25360) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16406:16426
// struct  C_I_Ul  {
//   char v1;
//   int v2;
//   __tsu64 v3;
// };

test "C_I_Ul layout" {
    var lv: c.C_I_Ul = undefined;
    try testing.expectSize(c.C_I_Ul, 16);
    try testing.expectAlign(c.C_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_Ul C calls" {
    try testing.expectOk(c.recv_C_I_Ul(.{ .v1 = 88, .v2 = 11624, .v3 = 26188 }));
    try testing.expectEqual(c.ret_C_I_Ul(), .{ .v1 = 88, .v2 = 11624, .v3 = 26188 });
    try testing.expectOk(c.send_C_I_Ul());
}
pub export fn zig_recv_C_I_Ul(lv: c.C_I_Ul) c_int {
    if (lv.v1 != 88) return 1;
    if (lv.v2 != 11624) return 2;
    if (lv.v3 != 26188) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16431:16451
// struct  C_I_Us  {
//   char v1;
//   int v2;
//   unsigned short v3;
// };

test "C_I_Us layout" {
    var lv: c.C_I_Us = undefined;
    try testing.expectSize(c.C_I_Us, 12);
    try testing.expectAlign(c.C_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_Us C calls" {
    try testing.expectOk(c.recv_C_I_Us(.{ .v1 = 82, .v2 = 7832, .v3 = 15543 }));
    try testing.expectEqual(c.ret_C_I_Us(), .{ .v1 = 82, .v2 = 7832, .v3 = 15543 });
    try testing.expectOk(c.send_C_I_Us());
}
pub export fn zig_recv_C_I_Us(lv: c.C_I_Us) c_int {
    if (lv.v1 != 82) return 1;
    if (lv.v2 != 7832) return 2;
    if (lv.v3 != 15543) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16456:16476
// struct  C_I_Vp  {
//   char v1;
//   int v2;
//   void *v3;
// };

test "C_I_Vp layout" {
    var lv: c.C_I_Vp = undefined;
    try testing.expectSize(c.C_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.C_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_Vp C calls" {
    try testing.expectOk(c.recv_C_I_Vp(.{ .v1 = 8, .v2 = 3632, .v3 = null }));
    try testing.expectEqual(c.ret_C_I_Vp(), .{ .v1 = 8, .v2 = 3632, .v3 = null });
    try testing.expectOk(c.send_C_I_Vp());
}
pub export fn zig_recv_C_I_Vp(lv: c.C_I_Vp) c_int {
    if (lv.v1 != 8) return 1;
    if (lv.v2 != 3632) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:16481:16499
// struct  C_Ip  {
//   char v1;
//   int *v2;
// };

test "C_Ip layout" {
    var lv: c.C_Ip = undefined;
    try testing.expectSize(c.C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "C_Ip C calls" {
    try testing.expectOk(c.recv_C_Ip(.{ .v1 = 9, .v2 = null }));
    try testing.expectEqual(c.ret_C_Ip(), .{ .v1 = 9, .v2 = null });
    try testing.expectOk(c.send_C_Ip());
}
pub export fn zig_recv_C_Ip(lv: c.C_Ip) c_int {
    if (lv.v1 != 9) return 1;
    if (lv.v2 != null) return 2;
    return 0;
}

// From T_Snnn_xaw.c:17228:17248
// struct  C_Ip_C  {
//   char v1;
//   int *v2;
//   char v3;
// };

test "C_Ip_C layout" {
    var lv: c.C_Ip_C = undefined;
    try testing.expectSize(c.C_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_C C calls" {
    try testing.expectOk(c.recv_C_Ip_C(.{ .v1 = 121, .v2 = null, .v3 = 51 }));
    try testing.expectEqual(c.ret_C_Ip_C(), .{ .v1 = 121, .v2 = null, .v3 = 51 });
    try testing.expectOk(c.send_C_Ip_C());
}
pub export fn zig_recv_C_Ip_C(lv: c.C_Ip_C) c_int {
    if (lv.v1 != 121) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 51) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17253:17273
// struct  C_Ip_D  {
//   char v1;
//   int *v2;
//   double v3;
// };

test "C_Ip_D layout" {
    var lv: c.C_Ip_D = undefined;
    try testing.expectSize(c.C_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_D C calls" {
    try testing.expectOk(c.recv_C_Ip_D(.{ .v1 = 80, .v2 = null, .v3 = 0.875 }));
    try testing.expectEqual(c.ret_C_Ip_D(), .{ .v1 = 80, .v2 = null, .v3 = 0.875 });
    try testing.expectOk(c.send_C_Ip_D());
}
pub export fn zig_recv_C_Ip_D(lv: c.C_Ip_D) c_int {
    if (lv.v1 != 80) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17278:17298
// struct  C_Ip_F  {
//   char v1;
//   int *v2;
//   float v3;
// };

test "C_Ip_F layout" {
    var lv: c.C_Ip_F = undefined;
    try testing.expectSize(c.C_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_F C calls" {
    try testing.expectOk(c.recv_C_Ip_F(.{ .v1 = 52, .v2 = null, .v3 = 1.0 }));
    try testing.expectEqual(c.ret_C_Ip_F(), .{ .v1 = 52, .v2 = null, .v3 = 1.0 });
    try testing.expectOk(c.send_C_Ip_F());
}
pub export fn zig_recv_C_Ip_F(lv: c.C_Ip_F) c_int {
    if (lv.v1 != 52) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17303:17323
// struct  C_Ip_I  {
//   char v1;
//   int *v2;
//   int v3;
// };

test "C_Ip_I layout" {
    var lv: c.C_Ip_I = undefined;
    try testing.expectSize(c.C_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_I C calls" {
    try testing.expectOk(c.recv_C_Ip_I(.{ .v1 = 42, .v2 = null, .v3 = 7495 }));
    try testing.expectEqual(c.ret_C_Ip_I(), .{ .v1 = 42, .v2 = null, .v3 = 7495 });
    try testing.expectOk(c.send_C_Ip_I());
}
pub export fn zig_recv_C_Ip_I(lv: c.C_Ip_I) c_int {
    if (lv.v1 != 42) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 7495) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17328:17348
// struct  C_Ip_Ip  {
//   char v1;
//   int *v2;
//   int *v3;
// };

test "C_Ip_Ip layout" {
    var lv: c.C_Ip_Ip = undefined;
    try testing.expectSize(c.C_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_Ip C calls" {
    try testing.expectOk(c.recv_C_Ip_Ip(.{ .v1 = 28, .v2 = null, .v3 = null }));
    try testing.expectEqual(c.ret_C_Ip_Ip(), .{ .v1 = 28, .v2 = null, .v3 = null });
    try testing.expectOk(c.send_C_Ip_Ip());
}
pub export fn zig_recv_C_Ip_Ip(lv: c.C_Ip_Ip) c_int {
    if (lv.v1 != 28) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17353:17373
// struct  C_Ip_L  {
//   char v1;
//   int *v2;
//   __tsi64 v3;
// };

test "C_Ip_L layout" {
    var lv: c.C_Ip_L = undefined;
    try testing.expectSize(c.C_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_L C calls" {
    try testing.expectOk(c.recv_C_Ip_L(.{ .v1 = 61, .v2 = null, .v3 = 20688 }));
    try testing.expectEqual(c.ret_C_Ip_L(), .{ .v1 = 61, .v2 = null, .v3 = 20688 });
    try testing.expectOk(c.send_C_Ip_L());
}
pub export fn zig_recv_C_Ip_L(lv: c.C_Ip_L) c_int {
    if (lv.v1 != 61) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 20688) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17378:17398
// struct  C_Ip_S  {
//   char v1;
//   int *v2;
//   short v3;
// };

test "C_Ip_S layout" {
    var lv: c.C_Ip_S = undefined;
    try testing.expectSize(c.C_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_S C calls" {
    try testing.expectOk(c.recv_C_Ip_S(.{ .v1 = 13, .v2 = null, .v3 = 22524 }));
    try testing.expectEqual(c.ret_C_Ip_S(), .{ .v1 = 13, .v2 = null, .v3 = 22524 });
    try testing.expectOk(c.send_C_Ip_S());
}
pub export fn zig_recv_C_Ip_S(lv: c.C_Ip_S) c_int {
    if (lv.v1 != 13) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 22524) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17403:17423
// struct  C_Ip_Uc  {
//   char v1;
//   int *v2;
//   unsigned char v3;
// };

test "C_Ip_Uc layout" {
    var lv: c.C_Ip_Uc = undefined;
    try testing.expectSize(c.C_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_Uc C calls" {
    try testing.expectOk(c.recv_C_Ip_Uc(.{ .v1 = 110, .v2 = null, .v3 = 110 }));
    try testing.expectEqual(c.ret_C_Ip_Uc(), .{ .v1 = 110, .v2 = null, .v3 = 110 });
    try testing.expectOk(c.send_C_Ip_Uc());
}
pub export fn zig_recv_C_Ip_Uc(lv: c.C_Ip_Uc) c_int {
    if (lv.v1 != 110) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 110) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17428:17448
// struct  C_Ip_Ui  {
//   char v1;
//   int *v2;
//   unsigned int v3;
// };

test "C_Ip_Ui layout" {
    var lv: c.C_Ip_Ui = undefined;
    try testing.expectSize(c.C_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_Ui C calls" {
    try testing.expectOk(c.recv_C_Ip_Ui(.{ .v1 = 30, .v2 = null, .v3 = 29435 }));
    try testing.expectEqual(c.ret_C_Ip_Ui(), .{ .v1 = 30, .v2 = null, .v3 = 29435 });
    try testing.expectOk(c.send_C_Ip_Ui());
}
pub export fn zig_recv_C_Ip_Ui(lv: c.C_Ip_Ui) c_int {
    if (lv.v1 != 30) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 29435) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17453:17473
// struct  C_Ip_Ul  {
//   char v1;
//   int *v2;
//   __tsu64 v3;
// };

test "C_Ip_Ul layout" {
    var lv: c.C_Ip_Ul = undefined;
    try testing.expectSize(c.C_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_Ul C calls" {
    try testing.expectOk(c.recv_C_Ip_Ul(.{ .v1 = 86, .v2 = null, .v3 = 25629 }));
    try testing.expectEqual(c.ret_C_Ip_Ul(), .{ .v1 = 86, .v2 = null, .v3 = 25629 });
    try testing.expectOk(c.send_C_Ip_Ul());
}
pub export fn zig_recv_C_Ip_Ul(lv: c.C_Ip_Ul) c_int {
    if (lv.v1 != 86) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 25629) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17478:17498
// struct  C_Ip_Us  {
//   char v1;
//   int *v2;
//   unsigned short v3;
// };

test "C_Ip_Us layout" {
    var lv: c.C_Ip_Us = undefined;
    try testing.expectSize(c.C_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_Us C calls" {
    try testing.expectOk(c.recv_C_Ip_Us(.{ .v1 = 76, .v2 = null, .v3 = 11318 }));
    try testing.expectEqual(c.ret_C_Ip_Us(), .{ .v1 = 76, .v2 = null, .v3 = 11318 });
    try testing.expectOk(c.send_C_Ip_Us());
}
pub export fn zig_recv_C_Ip_Us(lv: c.C_Ip_Us) c_int {
    if (lv.v1 != 76) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 11318) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17503:17523
// struct  C_Ip_Vp  {
//   char v1;
//   int *v2;
//   void *v3;
// };

test "C_Ip_Vp layout" {
    var lv: c.C_Ip_Vp = undefined;
    try testing.expectSize(c.C_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_Vp C calls" {
    try testing.expectOk(c.recv_C_Ip_Vp(.{ .v1 = 88, .v2 = null, .v3 = null }));
    try testing.expectEqual(c.ret_C_Ip_Vp(), .{ .v1 = 88, .v2 = null, .v3 = null });
    try testing.expectOk(c.send_C_Ip_Vp());
}
pub export fn zig_recv_C_Ip_Vp(lv: c.C_Ip_Vp) c_int {
    if (lv.v1 != 88) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:17528:17546
// struct  C_L  {
//   char v1;
//   __tsi64 v2;
// };

test "C_L layout" {
    var lv: c.C_L = undefined;
    try testing.expectSize(c.C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "C_L C calls" {
    try testing.expectOk(c.recv_C_L(.{ .v1 = 97, .v2 = 28944 }));
    try testing.expectEqual(c.ret_C_L(), .{ .v1 = 97, .v2 = 28944 });
    try testing.expectOk(c.send_C_L());
}
pub export fn zig_recv_C_L(lv: c.C_L) c_int {
    if (lv.v1 != 97) return 1;
    if (lv.v2 != 28944) return 2;
    return 0;
}

// From T_Snnn_xaw.c:18275:18295
// struct  C_L_C  {
//   char v1;
//   __tsi64 v2;
//   char v3;
// };

test "C_L_C layout" {
    var lv: c.C_L_C = undefined;
    try testing.expectSize(c.C_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_C C calls" {
    try testing.expectOk(c.recv_C_L_C(.{ .v1 = 78, .v2 = 26157, .v3 = 19 }));
    try testing.expectEqual(c.ret_C_L_C(), .{ .v1 = 78, .v2 = 26157, .v3 = 19 });
    try testing.expectOk(c.send_C_L_C());
}
pub export fn zig_recv_C_L_C(lv: c.C_L_C) c_int {
    if (lv.v1 != 78) return 1;
    if (lv.v2 != 26157) return 2;
    if (lv.v3 != 19) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18300:18320
// struct  C_L_D  {
//   char v1;
//   __tsi64 v2;
//   double v3;
// };

test "C_L_D layout" {
    var lv: c.C_L_D = undefined;
    try testing.expectSize(c.C_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.C_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_D C calls" {
    try testing.expectOk(c.recv_C_L_D(.{ .v1 = 9, .v2 = 20523, .v3 = -2.125 }));
    try testing.expectEqual(c.ret_C_L_D(), .{ .v1 = 9, .v2 = 20523, .v3 = -2.125 });
    try testing.expectOk(c.send_C_L_D());
}
pub export fn zig_recv_C_L_D(lv: c.C_L_D) c_int {
    if (lv.v1 != 9) return 1;
    if (lv.v2 != 20523) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18325:18345
// struct  C_L_F  {
//   char v1;
//   __tsi64 v2;
//   float v3;
// };

test "C_L_F layout" {
    var lv: c.C_L_F = undefined;
    try testing.expectSize(c.C_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_F C calls" {
    try testing.expectOk(c.recv_C_L_F(.{ .v1 = 9, .v2 = 8400, .v3 = 0.875 }));
    try testing.expectEqual(c.ret_C_L_F(), .{ .v1 = 9, .v2 = 8400, .v3 = 0.875 });
    try testing.expectOk(c.send_C_L_F());
}
pub export fn zig_recv_C_L_F(lv: c.C_L_F) c_int {
    if (lv.v1 != 9) return 1;
    if (lv.v2 != 8400) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18350:18370
// struct  C_L_I  {
//   char v1;
//   __tsi64 v2;
//   int v3;
// };

test "C_L_I layout" {
    var lv: c.C_L_I = undefined;
    try testing.expectSize(c.C_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_I C calls" {
    try testing.expectOk(c.recv_C_L_I(.{ .v1 = 9, .v2 = 13198, .v3 = 2651 }));
    try testing.expectEqual(c.ret_C_L_I(), .{ .v1 = 9, .v2 = 13198, .v3 = 2651 });
    try testing.expectOk(c.send_C_L_I());
}
pub export fn zig_recv_C_L_I(lv: c.C_L_I) c_int {
    if (lv.v1 != 9) return 1;
    if (lv.v2 != 13198) return 2;
    if (lv.v3 != 2651) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18375:18395
// struct  C_L_Ip  {
//   char v1;
//   __tsi64 v2;
//   int *v3;
// };

test "C_L_Ip layout" {
    var lv: c.C_L_Ip = undefined;
    try testing.expectSize(c.C_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_Ip C calls" {
    try testing.expectOk(c.recv_C_L_Ip(.{ .v1 = 20, .v2 = 32425, .v3 = null }));
    try testing.expectEqual(c.ret_C_L_Ip(), .{ .v1 = 20, .v2 = 32425, .v3 = null });
    try testing.expectOk(c.send_C_L_Ip());
}
pub export fn zig_recv_C_L_Ip(lv: c.C_L_Ip) c_int {
    if (lv.v1 != 20) return 1;
    if (lv.v2 != 32425) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18400:18420
// struct  C_L_L  {
//   char v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "C_L_L layout" {
    var lv: c.C_L_L = undefined;
    try testing.expectSize(c.C_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.C_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_L C calls" {
    try testing.expectOk(c.recv_C_L_L(.{ .v1 = 20, .v2 = 7763, .v3 = 7816 }));
    try testing.expectEqual(c.ret_C_L_L(), .{ .v1 = 20, .v2 = 7763, .v3 = 7816 });
    try testing.expectOk(c.send_C_L_L());
}
pub export fn zig_recv_C_L_L(lv: c.C_L_L) c_int {
    if (lv.v1 != 20) return 1;
    if (lv.v2 != 7763) return 2;
    if (lv.v3 != 7816) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18425:18445
// struct  C_L_S  {
//   char v1;
//   __tsi64 v2;
//   short v3;
// };

test "C_L_S layout" {
    var lv: c.C_L_S = undefined;
    try testing.expectSize(c.C_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_S C calls" {
    try testing.expectOk(c.recv_C_L_S(.{ .v1 = 98, .v2 = 3355, .v3 = 11825 }));
    try testing.expectEqual(c.ret_C_L_S(), .{ .v1 = 98, .v2 = 3355, .v3 = 11825 });
    try testing.expectOk(c.send_C_L_S());
}
pub export fn zig_recv_C_L_S(lv: c.C_L_S) c_int {
    if (lv.v1 != 98) return 1;
    if (lv.v2 != 3355) return 2;
    if (lv.v3 != 11825) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18450:18470
// struct  C_L_Uc  {
//   char v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "C_L_Uc layout" {
    var lv: c.C_L_Uc = undefined;
    try testing.expectSize(c.C_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_Uc C calls" {
    try testing.expectOk(c.recv_C_L_Uc(.{ .v1 = 84, .v2 = 21813, .v3 = 82 }));
    try testing.expectEqual(c.ret_C_L_Uc(), .{ .v1 = 84, .v2 = 21813, .v3 = 82 });
    try testing.expectOk(c.send_C_L_Uc());
}
pub export fn zig_recv_C_L_Uc(lv: c.C_L_Uc) c_int {
    if (lv.v1 != 84) return 1;
    if (lv.v2 != 21813) return 2;
    if (lv.v3 != 82) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18475:18495
// struct  C_L_Ui  {
//   char v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "C_L_Ui layout" {
    var lv: c.C_L_Ui = undefined;
    try testing.expectSize(c.C_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_Ui C calls" {
    try testing.expectOk(c.recv_C_L_Ui(.{ .v1 = 18, .v2 = 4611, .v3 = 4717 }));
    try testing.expectEqual(c.ret_C_L_Ui(), .{ .v1 = 18, .v2 = 4611, .v3 = 4717 });
    try testing.expectOk(c.send_C_L_Ui());
}
pub export fn zig_recv_C_L_Ui(lv: c.C_L_Ui) c_int {
    if (lv.v1 != 18) return 1;
    if (lv.v2 != 4611) return 2;
    if (lv.v3 != 4717) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18500:18520
// struct  C_L_Ul  {
//   char v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "C_L_Ul layout" {
    var lv: c.C_L_Ul = undefined;
    try testing.expectSize(c.C_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.C_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_Ul C calls" {
    try testing.expectOk(c.recv_C_L_Ul(.{ .v1 = 92, .v2 = 12449, .v3 = 415 }));
    try testing.expectEqual(c.ret_C_L_Ul(), .{ .v1 = 92, .v2 = 12449, .v3 = 415 });
    try testing.expectOk(c.send_C_L_Ul());
}
pub export fn zig_recv_C_L_Ul(lv: c.C_L_Ul) c_int {
    if (lv.v1 != 92) return 1;
    if (lv.v2 != 12449) return 2;
    if (lv.v3 != 415) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18525:18545
// struct  C_L_Us  {
//   char v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "C_L_Us layout" {
    var lv: c.C_L_Us = undefined;
    try testing.expectSize(c.C_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_Us C calls" {
    try testing.expectOk(c.recv_C_L_Us(.{ .v1 = 9, .v2 = 23471, .v3 = 19229 }));
    try testing.expectEqual(c.ret_C_L_Us(), .{ .v1 = 9, .v2 = 23471, .v3 = 19229 });
    try testing.expectOk(c.send_C_L_Us());
}
pub export fn zig_recv_C_L_Us(lv: c.C_L_Us) c_int {
    if (lv.v1 != 9) return 1;
    if (lv.v2 != 23471) return 2;
    if (lv.v3 != 19229) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18550:18570
// struct  C_L_Vp  {
//   char v1;
//   __tsi64 v2;
//   void *v3;
// };

test "C_L_Vp layout" {
    var lv: c.C_L_Vp = undefined;
    try testing.expectSize(c.C_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_Vp C calls" {
    try testing.expectOk(c.recv_C_L_Vp(.{ .v1 = 117, .v2 = 23122, .v3 = null }));
    try testing.expectEqual(c.ret_C_L_Vp(), .{ .v1 = 117, .v2 = 23122, .v3 = null });
    try testing.expectOk(c.send_C_L_Vp());
}
pub export fn zig_recv_C_L_Vp(lv: c.C_L_Vp) c_int {
    if (lv.v1 != 117) return 1;
    if (lv.v2 != 23122) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:18575:18593
// struct  C_S  {
//   char v1;
//   short v2;
// };

test "C_S layout" {
    var lv: c.C_S = undefined;
    try testing.expectSize(c.C_S, 4);
    try testing.expectAlign(c.C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "C_S C calls" {
    try testing.expectOk(c.recv_C_S(.{ .v1 = 124, .v2 = 7400 }));
    try testing.expectEqual(c.ret_C_S(), .{ .v1 = 124, .v2 = 7400 });
    try testing.expectOk(c.send_C_S());
}
pub export fn zig_recv_C_S(lv: c.C_S) c_int {
    if (lv.v1 != 124) return 1;
    if (lv.v2 != 7400) return 2;
    return 0;
}

// From T_Snnn_xaw.c:19322:19342
// struct  C_S_C  {
//   char v1;
//   short v2;
//   char v3;
// };

test "C_S_C layout" {
    var lv: c.C_S_C = undefined;
    try testing.expectSize(c.C_S_C, 6);
    try testing.expectAlign(c.C_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_S_C C calls" {
    try testing.expectOk(c.recv_C_S_C(.{ .v1 = 110, .v2 = 3564, .v3 = 30 }));
    try testing.expectEqual(c.ret_C_S_C(), .{ .v1 = 110, .v2 = 3564, .v3 = 30 });
    try testing.expectOk(c.send_C_S_C());
}
pub export fn zig_recv_C_S_C(lv: c.C_S_C) c_int {
    if (lv.v1 != 110) return 1;
    if (lv.v2 != 3564) return 2;
    if (lv.v3 != 30) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19347:19367
// struct  C_S_D  {
//   char v1;
//   short v2;
//   double v3;
// };

test "C_S_D layout" {
    var lv: c.C_S_D = undefined;
    try testing.expectSize(c.C_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_S_D C calls" {
    try testing.expectOk(c.recv_C_S_D(.{ .v1 = 0, .v2 = 7071, .v3 = -2.125 }));
    try testing.expectEqual(c.ret_C_S_D(), .{ .v1 = 0, .v2 = 7071, .v3 = -2.125 });
    try testing.expectOk(c.send_C_S_D());
}
pub export fn zig_recv_C_S_D(lv: c.C_S_D) c_int {
    if (lv.v1 != 0) return 1;
    if (lv.v2 != 7071) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19372:19392
// struct  C_S_F  {
//   char v1;
//   short v2;
//   float v3;
// };

test "C_S_F layout" {
    var lv: c.C_S_F = undefined;
    try testing.expectSize(c.C_S_F, 8);
    try testing.expectAlign(c.C_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_S_F C calls" {
    try testing.expectOk(c.recv_C_S_F(.{ .v1 = 26, .v2 = 17641, .v3 = -2.125 }));
    try testing.expectEqual(c.ret_C_S_F(), .{ .v1 = 26, .v2 = 17641, .v3 = -2.125 });
    try testing.expectOk(c.send_C_S_F());
}
pub export fn zig_recv_C_S_F(lv: c.C_S_F) c_int {
    if (lv.v1 != 26) return 1;
    if (lv.v2 != 17641) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19397:19417
// struct  C_S_I  {
//   char v1;
//   short v2;
//   int v3;
// };

test "C_S_I layout" {
    var lv: c.C_S_I = undefined;
    try testing.expectSize(c.C_S_I, 8);
    try testing.expectAlign(c.C_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_S_I C calls" {
    try testing.expectOk(c.recv_C_S_I(.{ .v1 = 1, .v2 = 13882, .v3 = 27710 }));
    try testing.expectEqual(c.ret_C_S_I(), .{ .v1 = 1, .v2 = 13882, .v3 = 27710 });
    try testing.expectOk(c.send_C_S_I());
}
pub export fn zig_recv_C_S_I(lv: c.C_S_I) c_int {
    if (lv.v1 != 1) return 1;
    if (lv.v2 != 13882) return 2;
    if (lv.v3 != 27710) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19422:19442
// struct  C_S_Ip  {
//   char v1;
//   short v2;
//   int *v3;
// };

test "C_S_Ip layout" {
    var lv: c.C_S_Ip = undefined;
    try testing.expectSize(c.C_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_S_Ip C calls" {
    try testing.expectOk(c.recv_C_S_Ip(.{ .v1 = 82, .v2 = 21579, .v3 = null }));
    try testing.expectEqual(c.ret_C_S_Ip(), .{ .v1 = 82, .v2 = 21579, .v3 = null });
    try testing.expectOk(c.send_C_S_Ip());
}
pub export fn zig_recv_C_S_Ip(lv: c.C_S_Ip) c_int {
    if (lv.v1 != 82) return 1;
    if (lv.v2 != 21579) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19447:19467
// struct  C_S_L  {
//   char v1;
//   short v2;
//   __tsi64 v3;
// };

test "C_S_L layout" {
    var lv: c.C_S_L = undefined;
    try testing.expectSize(c.C_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_S_L C calls" {
    try testing.expectOk(c.recv_C_S_L(.{ .v1 = 123, .v2 = 5427, .v3 = 3858 }));
    try testing.expectEqual(c.ret_C_S_L(), .{ .v1 = 123, .v2 = 5427, .v3 = 3858 });
    try testing.expectOk(c.send_C_S_L());
}
pub export fn zig_recv_C_S_L(lv: c.C_S_L) c_int {
    if (lv.v1 != 123) return 1;
    if (lv.v2 != 5427) return 2;
    if (lv.v3 != 3858) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19472:19492
// struct  C_S_S  {
//   char v1;
//   short v2;
//   short v3;
// };

test "C_S_S layout" {
    var lv: c.C_S_S = undefined;
    try testing.expectSize(c.C_S_S, 6);
    try testing.expectAlign(c.C_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_S_S C calls" {
    try testing.expectOk(c.recv_C_S_S(.{ .v1 = 12, .v2 = 18576, .v3 = 1535 }));
    try testing.expectEqual(c.ret_C_S_S(), .{ .v1 = 12, .v2 = 18576, .v3 = 1535 });
    try testing.expectOk(c.send_C_S_S());
}
pub export fn zig_recv_C_S_S(lv: c.C_S_S) c_int {
    if (lv.v1 != 12) return 1;
    if (lv.v2 != 18576) return 2;
    if (lv.v3 != 1535) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19497:19517
// struct  C_S_Uc  {
//   char v1;
//   short v2;
//   unsigned char v3;
// };

test "C_S_Uc layout" {
    var lv: c.C_S_Uc = undefined;
    try testing.expectSize(c.C_S_Uc, 6);
    try testing.expectAlign(c.C_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_S_Uc C calls" {
    try testing.expectOk(c.recv_C_S_Uc(.{ .v1 = 59, .v2 = 4768, .v3 = 10 }));
    try testing.expectEqual(c.ret_C_S_Uc(), .{ .v1 = 59, .v2 = 4768, .v3 = 10 });
    try testing.expectOk(c.send_C_S_Uc());
}
pub export fn zig_recv_C_S_Uc(lv: c.C_S_Uc) c_int {
    if (lv.v1 != 59) return 1;
    if (lv.v2 != 4768) return 2;
    if (lv.v3 != 10) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19522:19542
// struct  C_S_Ui  {
//   char v1;
//   short v2;
//   unsigned int v3;
// };

test "C_S_Ui layout" {
    var lv: c.C_S_Ui = undefined;
    try testing.expectSize(c.C_S_Ui, 8);
    try testing.expectAlign(c.C_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_S_Ui C calls" {
    try testing.expectOk(c.recv_C_S_Ui(.{ .v1 = 72, .v2 = 14125, .v3 = 4728 }));
    try testing.expectEqual(c.ret_C_S_Ui(), .{ .v1 = 72, .v2 = 14125, .v3 = 4728 });
    try testing.expectOk(c.send_C_S_Ui());
}
pub export fn zig_recv_C_S_Ui(lv: c.C_S_Ui) c_int {
    if (lv.v1 != 72) return 1;
    if (lv.v2 != 14125) return 2;
    if (lv.v3 != 4728) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19547:19567
// struct  C_S_Ul  {
//   char v1;
//   short v2;
//   __tsu64 v3;
// };

test "C_S_Ul layout" {
    var lv: c.C_S_Ul = undefined;
    try testing.expectSize(c.C_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_S_Ul C calls" {
    try testing.expectOk(c.recv_C_S_Ul(.{ .v1 = 65, .v2 = 17421, .v3 = 1849 }));
    try testing.expectEqual(c.ret_C_S_Ul(), .{ .v1 = 65, .v2 = 17421, .v3 = 1849 });
    try testing.expectOk(c.send_C_S_Ul());
}
pub export fn zig_recv_C_S_Ul(lv: c.C_S_Ul) c_int {
    if (lv.v1 != 65) return 1;
    if (lv.v2 != 17421) return 2;
    if (lv.v3 != 1849) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19572:19592
// struct  C_S_Us  {
//   char v1;
//   short v2;
//   unsigned short v3;
// };

test "C_S_Us layout" {
    var lv: c.C_S_Us = undefined;
    try testing.expectSize(c.C_S_Us, 6);
    try testing.expectAlign(c.C_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_S_Us C calls" {
    try testing.expectOk(c.recv_C_S_Us(.{ .v1 = 113, .v2 = 29303, .v3 = 16194 }));
    try testing.expectEqual(c.ret_C_S_Us(), .{ .v1 = 113, .v2 = 29303, .v3 = 16194 });
    try testing.expectOk(c.send_C_S_Us());
}
pub export fn zig_recv_C_S_Us(lv: c.C_S_Us) c_int {
    if (lv.v1 != 113) return 1;
    if (lv.v2 != 29303) return 2;
    if (lv.v3 != 16194) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19597:19617
// struct  C_S_Vp  {
//   char v1;
//   short v2;
//   void *v3;
// };

test "C_S_Vp layout" {
    var lv: c.C_S_Vp = undefined;
    try testing.expectSize(c.C_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_S_Vp C calls" {
    try testing.expectOk(c.recv_C_S_Vp(.{ .v1 = 52, .v2 = 27691, .v3 = null }));
    try testing.expectEqual(c.ret_C_S_Vp(), .{ .v1 = 52, .v2 = 27691, .v3 = null });
    try testing.expectOk(c.send_C_S_Vp());
}
pub export fn zig_recv_C_S_Vp(lv: c.C_S_Vp) c_int {
    if (lv.v1 != 52) return 1;
    if (lv.v2 != 27691) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:19622:19640
// struct  C_Uc  {
//   char v1;
//   unsigned char v2;
// };

test "C_Uc layout" {
    var lv: c.C_Uc = undefined;
    try testing.expectSize(c.C_Uc, 2);
    try testing.expectAlign(c.C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}
test "C_Uc C calls" {
    try testing.expectOk(c.recv_C_Uc(.{ .v1 = 93, .v2 = 46 }));
    try testing.expectEqual(c.ret_C_Uc(), .{ .v1 = 93, .v2 = 46 });
    try testing.expectOk(c.send_C_Uc());
}
pub export fn zig_recv_C_Uc(lv: c.C_Uc) c_int {
    if (lv.v1 != 93) return 1;
    if (lv.v2 != 46) return 2;
    return 0;
}

// From T_Snnn_xaw.c:20369:20389
// struct  C_Uc_C  {
//   char v1;
//   unsigned char v2;
//   char v3;
// };

test "C_Uc_C layout" {
    var lv: c.C_Uc_C = undefined;
    try testing.expectSize(c.C_Uc_C, 3);
    try testing.expectAlign(c.C_Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_Uc_C C calls" {
    try testing.expectOk(c.recv_C_Uc_C(.{ .v1 = 28, .v2 = 86, .v3 = 16 }));
    try testing.expectEqual(c.ret_C_Uc_C(), .{ .v1 = 28, .v2 = 86, .v3 = 16 });
    try testing.expectOk(c.send_C_Uc_C());
}
pub export fn zig_recv_C_Uc_C(lv: c.C_Uc_C) c_int {
    if (lv.v1 != 28) return 1;
    if (lv.v2 != 86) return 2;
    if (lv.v3 != 16) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20394:20414
// struct  C_Uc_D  {
//   char v1;
//   unsigned char v2;
//   double v3;
// };

test "C_Uc_D layout" {
    var lv: c.C_Uc_D = undefined;
    try testing.expectSize(c.C_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Uc_D C calls" {
    try testing.expectOk(c.recv_C_Uc_D(.{ .v1 = 0, .v2 = 2, .v3 = 0.5 }));
    try testing.expectEqual(c.ret_C_Uc_D(), .{ .v1 = 0, .v2 = 2, .v3 = 0.5 });
    try testing.expectOk(c.send_C_Uc_D());
}
pub export fn zig_recv_C_Uc_D(lv: c.C_Uc_D) c_int {
    if (lv.v1 != 0) return 1;
    if (lv.v2 != 2) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20419:20439
// struct  C_Uc_F  {
//   char v1;
//   unsigned char v2;
//   float v3;
// };

test "C_Uc_F layout" {
    var lv: c.C_Uc_F = undefined;
    try testing.expectSize(c.C_Uc_F, 8);
    try testing.expectAlign(c.C_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Uc_F C calls" {
    try testing.expectOk(c.recv_C_Uc_F(.{ .v1 = 115, .v2 = 17, .v3 = 0.875 }));
    try testing.expectEqual(c.ret_C_Uc_F(), .{ .v1 = 115, .v2 = 17, .v3 = 0.875 });
    try testing.expectOk(c.send_C_Uc_F());
}
pub export fn zig_recv_C_Uc_F(lv: c.C_Uc_F) c_int {
    if (lv.v1 != 115) return 1;
    if (lv.v2 != 17) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20444:20464
// struct  C_Uc_I  {
//   char v1;
//   unsigned char v2;
//   int v3;
// };

test "C_Uc_I layout" {
    var lv: c.C_Uc_I = undefined;
    try testing.expectSize(c.C_Uc_I, 8);
    try testing.expectAlign(c.C_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Uc_I C calls" {
    try testing.expectOk(c.recv_C_Uc_I(.{ .v1 = 17, .v2 = 45, .v3 = 13482 }));
    try testing.expectEqual(c.ret_C_Uc_I(), .{ .v1 = 17, .v2 = 45, .v3 = 13482 });
    try testing.expectOk(c.send_C_Uc_I());
}
pub export fn zig_recv_C_Uc_I(lv: c.C_Uc_I) c_int {
    if (lv.v1 != 17) return 1;
    if (lv.v2 != 45) return 2;
    if (lv.v3 != 13482) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20469:20489
// struct  C_Uc_Ip  {
//   char v1;
//   unsigned char v2;
//   int *v3;
// };

test "C_Uc_Ip layout" {
    var lv: c.C_Uc_Ip = undefined;
    try testing.expectSize(c.C_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Uc_Ip C calls" {
    try testing.expectOk(c.recv_C_Uc_Ip(.{ .v1 = 52, .v2 = 7, .v3 = null }));
    try testing.expectEqual(c.ret_C_Uc_Ip(), .{ .v1 = 52, .v2 = 7, .v3 = null });
    try testing.expectOk(c.send_C_Uc_Ip());
}
pub export fn zig_recv_C_Uc_Ip(lv: c.C_Uc_Ip) c_int {
    if (lv.v1 != 52) return 1;
    if (lv.v2 != 7) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20494:20514
// struct  C_Uc_L  {
//   char v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "C_Uc_L layout" {
    var lv: c.C_Uc_L = undefined;
    try testing.expectSize(c.C_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Uc_L C calls" {
    try testing.expectOk(c.recv_C_Uc_L(.{ .v1 = 5, .v2 = 88, .v3 = 31749 }));
    try testing.expectEqual(c.ret_C_Uc_L(), .{ .v1 = 5, .v2 = 88, .v3 = 31749 });
    try testing.expectOk(c.send_C_Uc_L());
}
pub export fn zig_recv_C_Uc_L(lv: c.C_Uc_L) c_int {
    if (lv.v1 != 5) return 1;
    if (lv.v2 != 88) return 2;
    if (lv.v3 != 31749) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20519:20539
// struct  C_Uc_S  {
//   char v1;
//   unsigned char v2;
//   short v3;
// };

test "C_Uc_S layout" {
    var lv: c.C_Uc_S = undefined;
    try testing.expectSize(c.C_Uc_S, 4);
    try testing.expectAlign(c.C_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_Uc_S C calls" {
    try testing.expectOk(c.recv_C_Uc_S(.{ .v1 = 98, .v2 = 11, .v3 = 25168 }));
    try testing.expectEqual(c.ret_C_Uc_S(), .{ .v1 = 98, .v2 = 11, .v3 = 25168 });
    try testing.expectOk(c.send_C_Uc_S());
}
pub export fn zig_recv_C_Uc_S(lv: c.C_Uc_S) c_int {
    if (lv.v1 != 98) return 1;
    if (lv.v2 != 11) return 2;
    if (lv.v3 != 25168) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20544:20564
// struct  C_Uc_Uc  {
//   char v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "C_Uc_Uc layout" {
    var lv: c.C_Uc_Uc = undefined;
    try testing.expectSize(c.C_Uc_Uc, 3);
    try testing.expectAlign(c.C_Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_Uc_Uc C calls" {
    try testing.expectOk(c.recv_C_Uc_Uc(.{ .v1 = 23, .v2 = 0, .v3 = 11 }));
    try testing.expectEqual(c.ret_C_Uc_Uc(), .{ .v1 = 23, .v2 = 0, .v3 = 11 });
    try testing.expectOk(c.send_C_Uc_Uc());
}
pub export fn zig_recv_C_Uc_Uc(lv: c.C_Uc_Uc) c_int {
    if (lv.v1 != 23) return 1;
    if (lv.v2 != 0) return 2;
    if (lv.v3 != 11) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20569:20589
// struct  C_Uc_Ui  {
//   char v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "C_Uc_Ui layout" {
    var lv: c.C_Uc_Ui = undefined;
    try testing.expectSize(c.C_Uc_Ui, 8);
    try testing.expectAlign(c.C_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Uc_Ui C calls" {
    try testing.expectOk(c.recv_C_Uc_Ui(.{ .v1 = 122, .v2 = 85, .v3 = 33 }));
    try testing.expectEqual(c.ret_C_Uc_Ui(), .{ .v1 = 122, .v2 = 85, .v3 = 33 });
    try testing.expectOk(c.send_C_Uc_Ui());
}
pub export fn zig_recv_C_Uc_Ui(lv: c.C_Uc_Ui) c_int {
    if (lv.v1 != 122) return 1;
    if (lv.v2 != 85) return 2;
    if (lv.v3 != 33) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20594:20614
// struct  C_Uc_Ul  {
//   char v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "C_Uc_Ul layout" {
    var lv: c.C_Uc_Ul = undefined;
    try testing.expectSize(c.C_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Uc_Ul C calls" {
    try testing.expectOk(c.recv_C_Uc_Ul(.{ .v1 = 61, .v2 = 112, .v3 = 10651 }));
    try testing.expectEqual(c.ret_C_Uc_Ul(), .{ .v1 = 61, .v2 = 112, .v3 = 10651 });
    try testing.expectOk(c.send_C_Uc_Ul());
}
pub export fn zig_recv_C_Uc_Ul(lv: c.C_Uc_Ul) c_int {
    if (lv.v1 != 61) return 1;
    if (lv.v2 != 112) return 2;
    if (lv.v3 != 10651) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20619:20639
// struct  C_Uc_Us  {
//   char v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "C_Uc_Us layout" {
    var lv: c.C_Uc_Us = undefined;
    try testing.expectSize(c.C_Uc_Us, 4);
    try testing.expectAlign(c.C_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_Uc_Us C calls" {
    try testing.expectOk(c.recv_C_Uc_Us(.{ .v1 = 57, .v2 = 81, .v3 = 27476 }));
    try testing.expectEqual(c.ret_C_Uc_Us(), .{ .v1 = 57, .v2 = 81, .v3 = 27476 });
    try testing.expectOk(c.send_C_Uc_Us());
}
pub export fn zig_recv_C_Uc_Us(lv: c.C_Uc_Us) c_int {
    if (lv.v1 != 57) return 1;
    if (lv.v2 != 81) return 2;
    if (lv.v3 != 27476) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20644:20664
// struct  C_Uc_Vp  {
//   char v1;
//   unsigned char v2;
//   void *v3;
// };

test "C_Uc_Vp layout" {
    var lv: c.C_Uc_Vp = undefined;
    try testing.expectSize(c.C_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Uc_Vp C calls" {
    try testing.expectOk(c.recv_C_Uc_Vp(.{ .v1 = 20, .v2 = 69, .v3 = null }));
    try testing.expectEqual(c.ret_C_Uc_Vp(), .{ .v1 = 20, .v2 = 69, .v3 = null });
    try testing.expectOk(c.send_C_Uc_Vp());
}
pub export fn zig_recv_C_Uc_Vp(lv: c.C_Uc_Vp) c_int {
    if (lv.v1 != 20) return 1;
    if (lv.v2 != 69) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:20669:20687
// struct  C_Ui  {
//   char v1;
//   unsigned int v2;
// };

test "C_Ui layout" {
    var lv: c.C_Ui = undefined;
    try testing.expectSize(c.C_Ui, 8);
    try testing.expectAlign(c.C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "C_Ui C calls" {
    try testing.expectOk(c.recv_C_Ui(.{ .v1 = 26, .v2 = 31736 }));
    try testing.expectEqual(c.ret_C_Ui(), .{ .v1 = 26, .v2 = 31736 });
    try testing.expectOk(c.send_C_Ui());
}
pub export fn zig_recv_C_Ui(lv: c.C_Ui) c_int {
    if (lv.v1 != 26) return 1;
    if (lv.v2 != 31736) return 2;
    return 0;
}

// From T_Snnn_xaw.c:21416:21436
// struct  C_Ui_C  {
//   char v1;
//   unsigned int v2;
//   char v3;
// };

test "C_Ui_C layout" {
    var lv: c.C_Ui_C = undefined;
    try testing.expectSize(c.C_Ui_C, 12);
    try testing.expectAlign(c.C_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_C C calls" {
    try testing.expectOk(c.recv_C_Ui_C(.{ .v1 = 22, .v2 = 6795, .v3 = 61 }));
    try testing.expectEqual(c.ret_C_Ui_C(), .{ .v1 = 22, .v2 = 6795, .v3 = 61 });
    try testing.expectOk(c.send_C_Ui_C());
}
pub export fn zig_recv_C_Ui_C(lv: c.C_Ui_C) c_int {
    if (lv.v1 != 22) return 1;
    if (lv.v2 != 6795) return 2;
    if (lv.v3 != 61) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21441:21461
// struct  C_Ui_D  {
//   char v1;
//   unsigned int v2;
//   double v3;
// };

test "C_Ui_D layout" {
    var lv: c.C_Ui_D = undefined;
    try testing.expectSize(c.C_Ui_D, 16);
    try testing.expectAlign(c.C_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_D C calls" {
    try testing.expectOk(c.recv_C_Ui_D(.{ .v1 = 43, .v2 = 14137, .v3 = 4.5 }));
    try testing.expectEqual(c.ret_C_Ui_D(), .{ .v1 = 43, .v2 = 14137, .v3 = 4.5 });
    try testing.expectOk(c.send_C_Ui_D());
}
pub export fn zig_recv_C_Ui_D(lv: c.C_Ui_D) c_int {
    if (lv.v1 != 43) return 1;
    if (lv.v2 != 14137) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21466:21486
// struct  C_Ui_F  {
//   char v1;
//   unsigned int v2;
//   float v3;
// };

test "C_Ui_F layout" {
    var lv: c.C_Ui_F = undefined;
    try testing.expectSize(c.C_Ui_F, 12);
    try testing.expectAlign(c.C_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_F C calls" {
    try testing.expectOk(c.recv_C_Ui_F(.{ .v1 = 85, .v2 = 4041, .v3 = 1.0 }));
    try testing.expectEqual(c.ret_C_Ui_F(), .{ .v1 = 85, .v2 = 4041, .v3 = 1.0 });
    try testing.expectOk(c.send_C_Ui_F());
}
pub export fn zig_recv_C_Ui_F(lv: c.C_Ui_F) c_int {
    if (lv.v1 != 85) return 1;
    if (lv.v2 != 4041) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21491:21511
// struct  C_Ui_I  {
//   char v1;
//   unsigned int v2;
//   int v3;
// };

test "C_Ui_I layout" {
    var lv: c.C_Ui_I = undefined;
    try testing.expectSize(c.C_Ui_I, 12);
    try testing.expectAlign(c.C_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_I C calls" {
    try testing.expectOk(c.recv_C_Ui_I(.{ .v1 = 69, .v2 = 26512, .v3 = 22760 }));
    try testing.expectEqual(c.ret_C_Ui_I(), .{ .v1 = 69, .v2 = 26512, .v3 = 22760 });
    try testing.expectOk(c.send_C_Ui_I());
}
pub export fn zig_recv_C_Ui_I(lv: c.C_Ui_I) c_int {
    if (lv.v1 != 69) return 1;
    if (lv.v2 != 26512) return 2;
    if (lv.v3 != 22760) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21516:21536
// struct  C_Ui_Ip  {
//   char v1;
//   unsigned int v2;
//   int *v3;
// };

test "C_Ui_Ip layout" {
    var lv: c.C_Ui_Ip = undefined;
    try testing.expectSize(c.C_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_Ip C calls" {
    try testing.expectOk(c.recv_C_Ui_Ip(.{ .v1 = 93, .v2 = 26266, .v3 = null }));
    try testing.expectEqual(c.ret_C_Ui_Ip(), .{ .v1 = 93, .v2 = 26266, .v3 = null });
    try testing.expectOk(c.send_C_Ui_Ip());
}
pub export fn zig_recv_C_Ui_Ip(lv: c.C_Ui_Ip) c_int {
    if (lv.v1 != 93) return 1;
    if (lv.v2 != 26266) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21541:21561
// struct  C_Ui_L  {
//   char v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "C_Ui_L layout" {
    var lv: c.C_Ui_L = undefined;
    try testing.expectSize(c.C_Ui_L, 16);
    try testing.expectAlign(c.C_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_L C calls" {
    try testing.expectOk(c.recv_C_Ui_L(.{ .v1 = 114, .v2 = 24147, .v3 = 31815 }));
    try testing.expectEqual(c.ret_C_Ui_L(), .{ .v1 = 114, .v2 = 24147, .v3 = 31815 });
    try testing.expectOk(c.send_C_Ui_L());
}
pub export fn zig_recv_C_Ui_L(lv: c.C_Ui_L) c_int {
    if (lv.v1 != 114) return 1;
    if (lv.v2 != 24147) return 2;
    if (lv.v3 != 31815) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21566:21586
// struct  C_Ui_S  {
//   char v1;
//   unsigned int v2;
//   short v3;
// };

test "C_Ui_S layout" {
    var lv: c.C_Ui_S = undefined;
    try testing.expectSize(c.C_Ui_S, 12);
    try testing.expectAlign(c.C_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_S C calls" {
    try testing.expectOk(c.recv_C_Ui_S(.{ .v1 = 114, .v2 = 26565, .v3 = 15293 }));
    try testing.expectEqual(c.ret_C_Ui_S(), .{ .v1 = 114, .v2 = 26565, .v3 = 15293 });
    try testing.expectOk(c.send_C_Ui_S());
}
pub export fn zig_recv_C_Ui_S(lv: c.C_Ui_S) c_int {
    if (lv.v1 != 114) return 1;
    if (lv.v2 != 26565) return 2;
    if (lv.v3 != 15293) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21591:21611
// struct  C_Ui_Uc  {
//   char v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "C_Ui_Uc layout" {
    var lv: c.C_Ui_Uc = undefined;
    try testing.expectSize(c.C_Ui_Uc, 12);
    try testing.expectAlign(c.C_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_Uc C calls" {
    try testing.expectOk(c.recv_C_Ui_Uc(.{ .v1 = 102, .v2 = 14294, .v3 = 15 }));
    try testing.expectEqual(c.ret_C_Ui_Uc(), .{ .v1 = 102, .v2 = 14294, .v3 = 15 });
    try testing.expectOk(c.send_C_Ui_Uc());
}
pub export fn zig_recv_C_Ui_Uc(lv: c.C_Ui_Uc) c_int {
    if (lv.v1 != 102) return 1;
    if (lv.v2 != 14294) return 2;
    if (lv.v3 != 15) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21616:21636
// struct  C_Ui_Ui  {
//   char v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "C_Ui_Ui layout" {
    var lv: c.C_Ui_Ui = undefined;
    try testing.expectSize(c.C_Ui_Ui, 12);
    try testing.expectAlign(c.C_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_Ui C calls" {
    try testing.expectOk(c.recv_C_Ui_Ui(.{ .v1 = 25, .v2 = 14393, .v3 = 23880 }));
    try testing.expectEqual(c.ret_C_Ui_Ui(), .{ .v1 = 25, .v2 = 14393, .v3 = 23880 });
    try testing.expectOk(c.send_C_Ui_Ui());
}
pub export fn zig_recv_C_Ui_Ui(lv: c.C_Ui_Ui) c_int {
    if (lv.v1 != 25) return 1;
    if (lv.v2 != 14393) return 2;
    if (lv.v3 != 23880) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21641:21661
// struct  C_Ui_Ul  {
//   char v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "C_Ui_Ul layout" {
    var lv: c.C_Ui_Ul = undefined;
    try testing.expectSize(c.C_Ui_Ul, 16);
    try testing.expectAlign(c.C_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_Ul C calls" {
    try testing.expectOk(c.recv_C_Ui_Ul(.{ .v1 = 29, .v2 = 27002, .v3 = 24958 }));
    try testing.expectEqual(c.ret_C_Ui_Ul(), .{ .v1 = 29, .v2 = 27002, .v3 = 24958 });
    try testing.expectOk(c.send_C_Ui_Ul());
}
pub export fn zig_recv_C_Ui_Ul(lv: c.C_Ui_Ul) c_int {
    if (lv.v1 != 29) return 1;
    if (lv.v2 != 27002) return 2;
    if (lv.v3 != 24958) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21666:21686
// struct  C_Ui_Us  {
//   char v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "C_Ui_Us layout" {
    var lv: c.C_Ui_Us = undefined;
    try testing.expectSize(c.C_Ui_Us, 12);
    try testing.expectAlign(c.C_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_Us C calls" {
    try testing.expectOk(c.recv_C_Ui_Us(.{ .v1 = 81, .v2 = 26064, .v3 = 12276 }));
    try testing.expectEqual(c.ret_C_Ui_Us(), .{ .v1 = 81, .v2 = 26064, .v3 = 12276 });
    try testing.expectOk(c.send_C_Ui_Us());
}
pub export fn zig_recv_C_Ui_Us(lv: c.C_Ui_Us) c_int {
    if (lv.v1 != 81) return 1;
    if (lv.v2 != 26064) return 2;
    if (lv.v3 != 12276) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21691:21711
// struct  C_Ui_Vp  {
//   char v1;
//   unsigned int v2;
//   void *v3;
// };

test "C_Ui_Vp layout" {
    var lv: c.C_Ui_Vp = undefined;
    try testing.expectSize(c.C_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_Vp C calls" {
    try testing.expectOk(c.recv_C_Ui_Vp(.{ .v1 = 109, .v2 = 8868, .v3 = null }));
    try testing.expectEqual(c.ret_C_Ui_Vp(), .{ .v1 = 109, .v2 = 8868, .v3 = null });
    try testing.expectOk(c.send_C_Ui_Vp());
}
pub export fn zig_recv_C_Ui_Vp(lv: c.C_Ui_Vp) c_int {
    if (lv.v1 != 109) return 1;
    if (lv.v2 != 8868) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:21716:21734
// struct  C_Ul  {
//   char v1;
//   __tsu64 v2;
// };

test "C_Ul layout" {
    var lv: c.C_Ul = undefined;
    try testing.expectSize(c.C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "C_Ul C calls" {
    try testing.expectOk(c.recv_C_Ul(.{ .v1 = 56, .v2 = 29288 }));
    try testing.expectEqual(c.ret_C_Ul(), .{ .v1 = 56, .v2 = 29288 });
    try testing.expectOk(c.send_C_Ul());
}
pub export fn zig_recv_C_Ul(lv: c.C_Ul) c_int {
    if (lv.v1 != 56) return 1;
    if (lv.v2 != 29288) return 2;
    return 0;
}

// From T_Snnn_xaw.c:22463:22483
// struct  C_Ul_C  {
//   char v1;
//   __tsu64 v2;
//   char v3;
// };

test "C_Ul_C layout" {
    var lv: c.C_Ul_C = undefined;
    try testing.expectSize(c.C_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_C C calls" {
    try testing.expectOk(c.recv_C_Ul_C(.{ .v1 = 85, .v2 = 16227, .v3 = 112 }));
    try testing.expectEqual(c.ret_C_Ul_C(), .{ .v1 = 85, .v2 = 16227, .v3 = 112 });
    try testing.expectOk(c.send_C_Ul_C());
}
pub export fn zig_recv_C_Ul_C(lv: c.C_Ul_C) c_int {
    if (lv.v1 != 85) return 1;
    if (lv.v2 != 16227) return 2;
    if (lv.v3 != 112) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22488:22508
// struct  C_Ul_D  {
//   char v1;
//   __tsu64 v2;
//   double v3;
// };

test "C_Ul_D layout" {
    var lv: c.C_Ul_D = undefined;
    try testing.expectSize(c.C_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.C_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_D C calls" {
    try testing.expectOk(c.recv_C_Ul_D(.{ .v1 = 87, .v2 = 21565, .v3 = -0.25 }));
    try testing.expectEqual(c.ret_C_Ul_D(), .{ .v1 = 87, .v2 = 21565, .v3 = -0.25 });
    try testing.expectOk(c.send_C_Ul_D());
}
pub export fn zig_recv_C_Ul_D(lv: c.C_Ul_D) c_int {
    if (lv.v1 != 87) return 1;
    if (lv.v2 != 21565) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22513:22533
// struct  C_Ul_F  {
//   char v1;
//   __tsu64 v2;
//   float v3;
// };

test "C_Ul_F layout" {
    var lv: c.C_Ul_F = undefined;
    try testing.expectSize(c.C_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_F C calls" {
    try testing.expectOk(c.recv_C_Ul_F(.{ .v1 = 93, .v2 = 10370, .v3 = 1.0 }));
    try testing.expectEqual(c.ret_C_Ul_F(), .{ .v1 = 93, .v2 = 10370, .v3 = 1.0 });
    try testing.expectOk(c.send_C_Ul_F());
}
pub export fn zig_recv_C_Ul_F(lv: c.C_Ul_F) c_int {
    if (lv.v1 != 93) return 1;
    if (lv.v2 != 10370) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22538:22558
// struct  C_Ul_I  {
//   char v1;
//   __tsu64 v2;
//   int v3;
// };

test "C_Ul_I layout" {
    var lv: c.C_Ul_I = undefined;
    try testing.expectSize(c.C_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_I C calls" {
    try testing.expectOk(c.recv_C_Ul_I(.{ .v1 = 48, .v2 = 9451, .v3 = 20449 }));
    try testing.expectEqual(c.ret_C_Ul_I(), .{ .v1 = 48, .v2 = 9451, .v3 = 20449 });
    try testing.expectOk(c.send_C_Ul_I());
}
pub export fn zig_recv_C_Ul_I(lv: c.C_Ul_I) c_int {
    if (lv.v1 != 48) return 1;
    if (lv.v2 != 9451) return 2;
    if (lv.v3 != 20449) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22563:22583
// struct  C_Ul_Ip  {
//   char v1;
//   __tsu64 v2;
//   int *v3;
// };

test "C_Ul_Ip layout" {
    var lv: c.C_Ul_Ip = undefined;
    try testing.expectSize(c.C_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_Ip C calls" {
    try testing.expectOk(c.recv_C_Ul_Ip(.{ .v1 = 96, .v2 = 26151, .v3 = null }));
    try testing.expectEqual(c.ret_C_Ul_Ip(), .{ .v1 = 96, .v2 = 26151, .v3 = null });
    try testing.expectOk(c.send_C_Ul_Ip());
}
pub export fn zig_recv_C_Ul_Ip(lv: c.C_Ul_Ip) c_int {
    if (lv.v1 != 96) return 1;
    if (lv.v2 != 26151) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22588:22608
// struct  C_Ul_L  {
//   char v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "C_Ul_L layout" {
    var lv: c.C_Ul_L = undefined;
    try testing.expectSize(c.C_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.C_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_L C calls" {
    try testing.expectOk(c.recv_C_Ul_L(.{ .v1 = 13, .v2 = 26018, .v3 = 22684 }));
    try testing.expectEqual(c.ret_C_Ul_L(), .{ .v1 = 13, .v2 = 26018, .v3 = 22684 });
    try testing.expectOk(c.send_C_Ul_L());
}
pub export fn zig_recv_C_Ul_L(lv: c.C_Ul_L) c_int {
    if (lv.v1 != 13) return 1;
    if (lv.v2 != 26018) return 2;
    if (lv.v3 != 22684) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22613:22633
// struct  C_Ul_S  {
//   char v1;
//   __tsu64 v2;
//   short v3;
// };

test "C_Ul_S layout" {
    var lv: c.C_Ul_S = undefined;
    try testing.expectSize(c.C_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_S C calls" {
    try testing.expectOk(c.recv_C_Ul_S(.{ .v1 = 33, .v2 = 12793, .v3 = 22758 }));
    try testing.expectEqual(c.ret_C_Ul_S(), .{ .v1 = 33, .v2 = 12793, .v3 = 22758 });
    try testing.expectOk(c.send_C_Ul_S());
}
pub export fn zig_recv_C_Ul_S(lv: c.C_Ul_S) c_int {
    if (lv.v1 != 33) return 1;
    if (lv.v2 != 12793) return 2;
    if (lv.v3 != 22758) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22638:22658
// struct  C_Ul_Uc  {
//   char v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "C_Ul_Uc layout" {
    var lv: c.C_Ul_Uc = undefined;
    try testing.expectSize(c.C_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_Uc C calls" {
    try testing.expectOk(c.recv_C_Ul_Uc(.{ .v1 = 108, .v2 = 16056, .v3 = 74 }));
    try testing.expectEqual(c.ret_C_Ul_Uc(), .{ .v1 = 108, .v2 = 16056, .v3 = 74 });
    try testing.expectOk(c.send_C_Ul_Uc());
}
pub export fn zig_recv_C_Ul_Uc(lv: c.C_Ul_Uc) c_int {
    if (lv.v1 != 108) return 1;
    if (lv.v2 != 16056) return 2;
    if (lv.v3 != 74) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22663:22683
// struct  C_Ul_Ui  {
//   char v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "C_Ul_Ui layout" {
    var lv: c.C_Ul_Ui = undefined;
    try testing.expectSize(c.C_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_Ui C calls" {
    try testing.expectOk(c.recv_C_Ul_Ui(.{ .v1 = 63, .v2 = 8694, .v3 = 4446 }));
    try testing.expectEqual(c.ret_C_Ul_Ui(), .{ .v1 = 63, .v2 = 8694, .v3 = 4446 });
    try testing.expectOk(c.send_C_Ul_Ui());
}
pub export fn zig_recv_C_Ul_Ui(lv: c.C_Ul_Ui) c_int {
    if (lv.v1 != 63) return 1;
    if (lv.v2 != 8694) return 2;
    if (lv.v3 != 4446) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22688:22708
// struct  C_Ul_Ul  {
//   char v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "C_Ul_Ul layout" {
    var lv: c.C_Ul_Ul = undefined;
    try testing.expectSize(c.C_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.C_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_Ul C calls" {
    try testing.expectOk(c.recv_C_Ul_Ul(.{ .v1 = 25, .v2 = 11834, .v3 = 25126 }));
    try testing.expectEqual(c.ret_C_Ul_Ul(), .{ .v1 = 25, .v2 = 11834, .v3 = 25126 });
    try testing.expectOk(c.send_C_Ul_Ul());
}
pub export fn zig_recv_C_Ul_Ul(lv: c.C_Ul_Ul) c_int {
    if (lv.v1 != 25) return 1;
    if (lv.v2 != 11834) return 2;
    if (lv.v3 != 25126) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22713:22733
// struct  C_Ul_Us  {
//   char v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "C_Ul_Us layout" {
    var lv: c.C_Ul_Us = undefined;
    try testing.expectSize(c.C_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_Us C calls" {
    try testing.expectOk(c.recv_C_Ul_Us(.{ .v1 = 84, .v2 = 31434, .v3 = 20396 }));
    try testing.expectEqual(c.ret_C_Ul_Us(), .{ .v1 = 84, .v2 = 31434, .v3 = 20396 });
    try testing.expectOk(c.send_C_Ul_Us());
}
pub export fn zig_recv_C_Ul_Us(lv: c.C_Ul_Us) c_int {
    if (lv.v1 != 84) return 1;
    if (lv.v2 != 31434) return 2;
    if (lv.v3 != 20396) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22738:22758
// struct  C_Ul_Vp  {
//   char v1;
//   __tsu64 v2;
//   void *v3;
// };

test "C_Ul_Vp layout" {
    var lv: c.C_Ul_Vp = undefined;
    try testing.expectSize(c.C_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_Vp C calls" {
    try testing.expectOk(c.recv_C_Ul_Vp(.{ .v1 = 127, .v2 = 10941, .v3 = null }));
    try testing.expectEqual(c.ret_C_Ul_Vp(), .{ .v1 = 127, .v2 = 10941, .v3 = null });
    try testing.expectOk(c.send_C_Ul_Vp());
}
pub export fn zig_recv_C_Ul_Vp(lv: c.C_Ul_Vp) c_int {
    if (lv.v1 != 127) return 1;
    if (lv.v2 != 10941) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:22763:22781
// struct  C_Us  {
//   char v1;
//   unsigned short v2;
// };

test "C_Us layout" {
    var lv: c.C_Us = undefined;
    try testing.expectSize(c.C_Us, 4);
    try testing.expectAlign(c.C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "C_Us C calls" {
    try testing.expectOk(c.recv_C_Us(.{ .v1 = 11, .v2 = 7668 }));
    try testing.expectEqual(c.ret_C_Us(), .{ .v1 = 11, .v2 = 7668 });
    try testing.expectOk(c.send_C_Us());
}
pub export fn zig_recv_C_Us(lv: c.C_Us) c_int {
    if (lv.v1 != 11) return 1;
    if (lv.v2 != 7668) return 2;
    return 0;
}

// From T_Snnn_xaw.c:23510:23530
// struct  C_Us_C  {
//   char v1;
//   unsigned short v2;
//   char v3;
// };

test "C_Us_C layout" {
    var lv: c.C_Us_C = undefined;
    try testing.expectSize(c.C_Us_C, 6);
    try testing.expectAlign(c.C_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Us_C C calls" {
    try testing.expectOk(c.recv_C_Us_C(.{ .v1 = 6, .v2 = 3306, .v3 = 87 }));
    try testing.expectEqual(c.ret_C_Us_C(), .{ .v1 = 6, .v2 = 3306, .v3 = 87 });
    try testing.expectOk(c.send_C_Us_C());
}
pub export fn zig_recv_C_Us_C(lv: c.C_Us_C) c_int {
    if (lv.v1 != 6) return 1;
    if (lv.v2 != 3306) return 2;
    if (lv.v3 != 87) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23535:23555
// struct  C_Us_D  {
//   char v1;
//   unsigned short v2;
//   double v3;
// };

test "C_Us_D layout" {
    var lv: c.C_Us_D = undefined;
    try testing.expectSize(c.C_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Us_D C calls" {
    try testing.expectOk(c.recv_C_Us_D(.{ .v1 = 79, .v2 = 16460, .v3 = 4.5 }));
    try testing.expectEqual(c.ret_C_Us_D(), .{ .v1 = 79, .v2 = 16460, .v3 = 4.5 });
    try testing.expectOk(c.send_C_Us_D());
}
pub export fn zig_recv_C_Us_D(lv: c.C_Us_D) c_int {
    if (lv.v1 != 79) return 1;
    if (lv.v2 != 16460) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23560:23580
// struct  C_Us_F  {
//   char v1;
//   unsigned short v2;
//   float v3;
// };

test "C_Us_F layout" {
    var lv: c.C_Us_F = undefined;
    try testing.expectSize(c.C_Us_F, 8);
    try testing.expectAlign(c.C_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Us_F C calls" {
    try testing.expectOk(c.recv_C_Us_F(.{ .v1 = 79, .v2 = 28080, .v3 = -0.25 }));
    try testing.expectEqual(c.ret_C_Us_F(), .{ .v1 = 79, .v2 = 28080, .v3 = -0.25 });
    try testing.expectOk(c.send_C_Us_F());
}
pub export fn zig_recv_C_Us_F(lv: c.C_Us_F) c_int {
    if (lv.v1 != 79) return 1;
    if (lv.v2 != 28080) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23585:23605
// struct  C_Us_I  {
//   char v1;
//   unsigned short v2;
//   int v3;
// };

test "C_Us_I layout" {
    var lv: c.C_Us_I = undefined;
    try testing.expectSize(c.C_Us_I, 8);
    try testing.expectAlign(c.C_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Us_I C calls" {
    try testing.expectOk(c.recv_C_Us_I(.{ .v1 = 111, .v2 = 26602, .v3 = 26244 }));
    try testing.expectEqual(c.ret_C_Us_I(), .{ .v1 = 111, .v2 = 26602, .v3 = 26244 });
    try testing.expectOk(c.send_C_Us_I());
}
pub export fn zig_recv_C_Us_I(lv: c.C_Us_I) c_int {
    if (lv.v1 != 111) return 1;
    if (lv.v2 != 26602) return 2;
    if (lv.v3 != 26244) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23610:23630
// struct  C_Us_Ip  {
//   char v1;
//   unsigned short v2;
//   int *v3;
// };

test "C_Us_Ip layout" {
    var lv: c.C_Us_Ip = undefined;
    try testing.expectSize(c.C_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Us_Ip C calls" {
    try testing.expectOk(c.recv_C_Us_Ip(.{ .v1 = 25, .v2 = 25781, .v3 = null }));
    try testing.expectEqual(c.ret_C_Us_Ip(), .{ .v1 = 25, .v2 = 25781, .v3 = null });
    try testing.expectOk(c.send_C_Us_Ip());
}
pub export fn zig_recv_C_Us_Ip(lv: c.C_Us_Ip) c_int {
    if (lv.v1 != 25) return 1;
    if (lv.v2 != 25781) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23635:23655
// struct  C_Us_L  {
//   char v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "C_Us_L layout" {
    var lv: c.C_Us_L = undefined;
    try testing.expectSize(c.C_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Us_L C calls" {
    try testing.expectOk(c.recv_C_Us_L(.{ .v1 = 124, .v2 = 15152, .v3 = 10613 }));
    try testing.expectEqual(c.ret_C_Us_L(), .{ .v1 = 124, .v2 = 15152, .v3 = 10613 });
    try testing.expectOk(c.send_C_Us_L());
}
pub export fn zig_recv_C_Us_L(lv: c.C_Us_L) c_int {
    if (lv.v1 != 124) return 1;
    if (lv.v2 != 15152) return 2;
    if (lv.v3 != 10613) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23660:23680
// struct  C_Us_S  {
//   char v1;
//   unsigned short v2;
//   short v3;
// };

test "C_Us_S layout" {
    var lv: c.C_Us_S = undefined;
    try testing.expectSize(c.C_Us_S, 6);
    try testing.expectAlign(c.C_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Us_S C calls" {
    try testing.expectOk(c.recv_C_Us_S(.{ .v1 = 35, .v2 = 1038, .v3 = 5876 }));
    try testing.expectEqual(c.ret_C_Us_S(), .{ .v1 = 35, .v2 = 1038, .v3 = 5876 });
    try testing.expectOk(c.send_C_Us_S());
}
pub export fn zig_recv_C_Us_S(lv: c.C_Us_S) c_int {
    if (lv.v1 != 35) return 1;
    if (lv.v2 != 1038) return 2;
    if (lv.v3 != 5876) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23685:23705
// struct  C_Us_Uc  {
//   char v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "C_Us_Uc layout" {
    var lv: c.C_Us_Uc = undefined;
    try testing.expectSize(c.C_Us_Uc, 6);
    try testing.expectAlign(c.C_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Us_Uc C calls" {
    try testing.expectOk(c.recv_C_Us_Uc(.{ .v1 = 9, .v2 = 3631, .v3 = 113 }));
    try testing.expectEqual(c.ret_C_Us_Uc(), .{ .v1 = 9, .v2 = 3631, .v3 = 113 });
    try testing.expectOk(c.send_C_Us_Uc());
}
pub export fn zig_recv_C_Us_Uc(lv: c.C_Us_Uc) c_int {
    if (lv.v1 != 9) return 1;
    if (lv.v2 != 3631) return 2;
    if (lv.v3 != 113) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23710:23730
// struct  C_Us_Ui  {
//   char v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "C_Us_Ui layout" {
    var lv: c.C_Us_Ui = undefined;
    try testing.expectSize(c.C_Us_Ui, 8);
    try testing.expectAlign(c.C_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Us_Ui C calls" {
    try testing.expectOk(c.recv_C_Us_Ui(.{ .v1 = 112, .v2 = 30036, .v3 = 2304 }));
    try testing.expectEqual(c.ret_C_Us_Ui(), .{ .v1 = 112, .v2 = 30036, .v3 = 2304 });
    try testing.expectOk(c.send_C_Us_Ui());
}
pub export fn zig_recv_C_Us_Ui(lv: c.C_Us_Ui) c_int {
    if (lv.v1 != 112) return 1;
    if (lv.v2 != 30036) return 2;
    if (lv.v3 != 2304) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23735:23755
// struct  C_Us_Ul  {
//   char v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "C_Us_Ul layout" {
    var lv: c.C_Us_Ul = undefined;
    try testing.expectSize(c.C_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Us_Ul C calls" {
    try testing.expectOk(c.recv_C_Us_Ul(.{ .v1 = 113, .v2 = 19649, .v3 = 32092 }));
    try testing.expectEqual(c.ret_C_Us_Ul(), .{ .v1 = 113, .v2 = 19649, .v3 = 32092 });
    try testing.expectOk(c.send_C_Us_Ul());
}
pub export fn zig_recv_C_Us_Ul(lv: c.C_Us_Ul) c_int {
    if (lv.v1 != 113) return 1;
    if (lv.v2 != 19649) return 2;
    if (lv.v3 != 32092) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23760:23780
// struct  C_Us_Us  {
//   char v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "C_Us_Us layout" {
    var lv: c.C_Us_Us = undefined;
    try testing.expectSize(c.C_Us_Us, 6);
    try testing.expectAlign(c.C_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Us_Us C calls" {
    try testing.expectOk(c.recv_C_Us_Us(.{ .v1 = 25, .v2 = 28732, .v3 = 15181 }));
    try testing.expectEqual(c.ret_C_Us_Us(), .{ .v1 = 25, .v2 = 28732, .v3 = 15181 });
    try testing.expectOk(c.send_C_Us_Us());
}
pub export fn zig_recv_C_Us_Us(lv: c.C_Us_Us) c_int {
    if (lv.v1 != 25) return 1;
    if (lv.v2 != 28732) return 2;
    if (lv.v3 != 15181) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23785:23805
// struct  C_Us_Vp  {
//   char v1;
//   unsigned short v2;
//   void *v3;
// };

test "C_Us_Vp layout" {
    var lv: c.C_Us_Vp = undefined;
    try testing.expectSize(c.C_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Us_Vp C calls" {
    try testing.expectOk(c.recv_C_Us_Vp(.{ .v1 = 126, .v2 = 12432, .v3 = null }));
    try testing.expectEqual(c.ret_C_Us_Vp(), .{ .v1 = 126, .v2 = 12432, .v3 = null });
    try testing.expectOk(c.send_C_Us_Vp());
}
pub export fn zig_recv_C_Us_Vp(lv: c.C_Us_Vp) c_int {
    if (lv.v1 != 126) return 1;
    if (lv.v2 != 12432) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:23810:23828
// struct  C_Vp  {
//   char v1;
//   void *v2;
// };

test "C_Vp layout" {
    var lv: c.C_Vp = undefined;
    try testing.expectSize(c.C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "C_Vp C calls" {
    try testing.expectOk(c.recv_C_Vp(.{ .v1 = 123, .v2 = null }));
    try testing.expectEqual(c.ret_C_Vp(), .{ .v1 = 123, .v2 = null });
    try testing.expectOk(c.send_C_Vp());
}
pub export fn zig_recv_C_Vp(lv: c.C_Vp) c_int {
    if (lv.v1 != 123) return 1;
    if (lv.v2 != null) return 2;
    return 0;
}

// From T_Snnn_xaw.c:24557:24577
// struct  C_Vp_C  {
//   char v1;
//   void *v2;
//   char v3;
// };

test "C_Vp_C layout" {
    var lv: c.C_Vp_C = undefined;
    try testing.expectSize(c.C_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_C C calls" {
    try testing.expectOk(c.recv_C_Vp_C(.{ .v1 = 50, .v2 = null, .v3 = 26 }));
    try testing.expectEqual(c.ret_C_Vp_C(), .{ .v1 = 50, .v2 = null, .v3 = 26 });
    try testing.expectOk(c.send_C_Vp_C());
}
pub export fn zig_recv_C_Vp_C(lv: c.C_Vp_C) c_int {
    if (lv.v1 != 50) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 26) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24582:24602
// struct  C_Vp_D  {
//   char v1;
//   void *v2;
//   double v3;
// };

test "C_Vp_D layout" {
    var lv: c.C_Vp_D = undefined;
    try testing.expectSize(c.C_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_D C calls" {
    try testing.expectOk(c.recv_C_Vp_D(.{ .v1 = 8, .v2 = null, .v3 = 0.5 }));
    try testing.expectEqual(c.ret_C_Vp_D(), .{ .v1 = 8, .v2 = null, .v3 = 0.5 });
    try testing.expectOk(c.send_C_Vp_D());
}
pub export fn zig_recv_C_Vp_D(lv: c.C_Vp_D) c_int {
    if (lv.v1 != 8) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24607:24627
// struct  C_Vp_F  {
//   char v1;
//   void *v2;
//   float v3;
// };

test "C_Vp_F layout" {
    var lv: c.C_Vp_F = undefined;
    try testing.expectSize(c.C_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_F C calls" {
    try testing.expectOk(c.recv_C_Vp_F(.{ .v1 = 78, .v2 = null, .v3 = 0.5 }));
    try testing.expectEqual(c.ret_C_Vp_F(), .{ .v1 = 78, .v2 = null, .v3 = 0.5 });
    try testing.expectOk(c.send_C_Vp_F());
}
pub export fn zig_recv_C_Vp_F(lv: c.C_Vp_F) c_int {
    if (lv.v1 != 78) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24632:24652
// struct  C_Vp_I  {
//   char v1;
//   void *v2;
//   int v3;
// };

test "C_Vp_I layout" {
    var lv: c.C_Vp_I = undefined;
    try testing.expectSize(c.C_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_I C calls" {
    try testing.expectOk(c.recv_C_Vp_I(.{ .v1 = 79, .v2 = null, .v3 = 12771 }));
    try testing.expectEqual(c.ret_C_Vp_I(), .{ .v1 = 79, .v2 = null, .v3 = 12771 });
    try testing.expectOk(c.send_C_Vp_I());
}
pub export fn zig_recv_C_Vp_I(lv: c.C_Vp_I) c_int {
    if (lv.v1 != 79) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 12771) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24657:24677
// struct  C_Vp_Ip  {
//   char v1;
//   void *v2;
//   int *v3;
// };

test "C_Vp_Ip layout" {
    var lv: c.C_Vp_Ip = undefined;
    try testing.expectSize(c.C_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_Ip C calls" {
    try testing.expectOk(c.recv_C_Vp_Ip(.{ .v1 = 3, .v2 = null, .v3 = null }));
    try testing.expectEqual(c.ret_C_Vp_Ip(), .{ .v1 = 3, .v2 = null, .v3 = null });
    try testing.expectOk(c.send_C_Vp_Ip());
}
pub export fn zig_recv_C_Vp_Ip(lv: c.C_Vp_Ip) c_int {
    if (lv.v1 != 3) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24682:24702
// struct  C_Vp_L  {
//   char v1;
//   void *v2;
//   __tsi64 v3;
// };

test "C_Vp_L layout" {
    var lv: c.C_Vp_L = undefined;
    try testing.expectSize(c.C_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_L C calls" {
    try testing.expectOk(c.recv_C_Vp_L(.{ .v1 = 107, .v2 = null, .v3 = 30601 }));
    try testing.expectEqual(c.ret_C_Vp_L(), .{ .v1 = 107, .v2 = null, .v3 = 30601 });
    try testing.expectOk(c.send_C_Vp_L());
}
pub export fn zig_recv_C_Vp_L(lv: c.C_Vp_L) c_int {
    if (lv.v1 != 107) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 30601) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24707:24727
// struct  C_Vp_S  {
//   char v1;
//   void *v2;
//   short v3;
// };

test "C_Vp_S layout" {
    var lv: c.C_Vp_S = undefined;
    try testing.expectSize(c.C_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_S C calls" {
    try testing.expectOk(c.recv_C_Vp_S(.{ .v1 = 75, .v2 = null, .v3 = 10366 }));
    try testing.expectEqual(c.ret_C_Vp_S(), .{ .v1 = 75, .v2 = null, .v3 = 10366 });
    try testing.expectOk(c.send_C_Vp_S());
}
pub export fn zig_recv_C_Vp_S(lv: c.C_Vp_S) c_int {
    if (lv.v1 != 75) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 10366) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24732:24752
// struct  C_Vp_Uc  {
//   char v1;
//   void *v2;
//   unsigned char v3;
// };

test "C_Vp_Uc layout" {
    var lv: c.C_Vp_Uc = undefined;
    try testing.expectSize(c.C_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_Uc C calls" {
    try testing.expectOk(c.recv_C_Vp_Uc(.{ .v1 = 12, .v2 = null, .v3 = 120 }));
    try testing.expectEqual(c.ret_C_Vp_Uc(), .{ .v1 = 12, .v2 = null, .v3 = 120 });
    try testing.expectOk(c.send_C_Vp_Uc());
}
pub export fn zig_recv_C_Vp_Uc(lv: c.C_Vp_Uc) c_int {
    if (lv.v1 != 12) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 120) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24757:24777
// struct  C_Vp_Ui  {
//   char v1;
//   void *v2;
//   unsigned int v3;
// };

test "C_Vp_Ui layout" {
    var lv: c.C_Vp_Ui = undefined;
    try testing.expectSize(c.C_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_Ui C calls" {
    try testing.expectOk(c.recv_C_Vp_Ui(.{ .v1 = 0, .v2 = null, .v3 = 11440 }));
    try testing.expectEqual(c.ret_C_Vp_Ui(), .{ .v1 = 0, .v2 = null, .v3 = 11440 });
    try testing.expectOk(c.send_C_Vp_Ui());
}
pub export fn zig_recv_C_Vp_Ui(lv: c.C_Vp_Ui) c_int {
    if (lv.v1 != 0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 11440) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24782:24802
// struct  C_Vp_Ul  {
//   char v1;
//   void *v2;
//   __tsu64 v3;
// };

test "C_Vp_Ul layout" {
    var lv: c.C_Vp_Ul = undefined;
    try testing.expectSize(c.C_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_Ul C calls" {
    try testing.expectOk(c.recv_C_Vp_Ul(.{ .v1 = 120, .v2 = null, .v3 = 6479 }));
    try testing.expectEqual(c.ret_C_Vp_Ul(), .{ .v1 = 120, .v2 = null, .v3 = 6479 });
    try testing.expectOk(c.send_C_Vp_Ul());
}
pub export fn zig_recv_C_Vp_Ul(lv: c.C_Vp_Ul) c_int {
    if (lv.v1 != 120) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 6479) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24807:24827
// struct  C_Vp_Us  {
//   char v1;
//   void *v2;
//   unsigned short v3;
// };

test "C_Vp_Us layout" {
    var lv: c.C_Vp_Us = undefined;
    try testing.expectSize(c.C_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_Us C calls" {
    try testing.expectOk(c.recv_C_Vp_Us(.{ .v1 = 102, .v2 = null, .v3 = 15745 }));
    try testing.expectEqual(c.ret_C_Vp_Us(), .{ .v1 = 102, .v2 = null, .v3 = 15745 });
    try testing.expectOk(c.send_C_Vp_Us());
}
pub export fn zig_recv_C_Vp_Us(lv: c.C_Vp_Us) c_int {
    if (lv.v1 != 102) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 15745) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24832:24852
// struct  C_Vp_Vp  {
//   char v1;
//   void *v2;
//   void *v3;
// };

test "C_Vp_Vp layout" {
    var lv: c.C_Vp_Vp = undefined;
    try testing.expectSize(c.C_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_Vp C calls" {
    try testing.expectOk(c.recv_C_Vp_Vp(.{ .v1 = 44, .v2 = null, .v3 = null }));
    try testing.expectEqual(c.ret_C_Vp_Vp(), .{ .v1 = 44, .v2 = null, .v3 = null });
    try testing.expectOk(c.send_C_Vp_Vp());
}
pub export fn zig_recv_C_Vp_Vp(lv: c.C_Vp_Vp) c_int {
    if (lv.v1 != 44) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:24857:24873
// struct  D  {
//   double v1;
// };

test "D layout" {
    var lv: c.D = undefined;
    try testing.expectSize(c.D, 8);
    try testing.expectAlign(c.D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "D C calls" {
    try testing.expectOk(c.recv_D(.{ .v1 = -2.125 }));
    try testing.expectEqual(c.ret_D(), .{ .v1 = -2.125 });
    try testing.expectOk(c.send_D());
}
pub export fn zig_recv_D(lv: c.D) c_int {
    if (lv.v1 != -2.125) return 1;
    return 0;
}

// From T_Snnn_xaw.c:55178:55196
// struct  D_C  {
//   double v1;
//   char v2;
// };

test "D_C layout" {
    var lv: c.D_C = undefined;
    try testing.expectSize(c.D_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_C C calls" {
    try testing.expectOk(c.recv_D_C(.{ .v1 = -0.25, .v2 = 15 }));
    try testing.expectEqual(c.ret_D_C(), .{ .v1 = -0.25, .v2 = 15 });
    try testing.expectOk(c.send_D_C());
}
pub export fn zig_recv_D_C(lv: c.D_C) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 15) return 2;
    return 0;
}

// From T_Snnn_xaw.c:55925:55945
// struct  D_C_C  {
//   double v1;
//   char v2;
//   char v3;
// };

test "D_C_C layout" {
    var lv: c.D_C_C = undefined;
    try testing.expectSize(c.D_C_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "D_C_C C calls" {
    try testing.expectOk(c.recv_D_C_C(.{ .v1 = -0.25, .v2 = 31, .v3 = 76 }));
    try testing.expectEqual(c.ret_D_C_C(), .{ .v1 = -0.25, .v2 = 31, .v3 = 76 });
    try testing.expectOk(c.send_D_C_C());
}
pub export fn zig_recv_D_C_C(lv: c.D_C_C) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 31) return 2;
    if (lv.v3 != 76) return 3;
    return 0;
}

// From T_Snnn_xaw.c:55950:55970
// struct  D_C_D  {
//   double v1;
//   char v2;
//   double v3;
// };

test "D_C_D layout" {
    var lv: c.D_C_D = undefined;
    try testing.expectSize(c.D_C_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_C_D C calls" {
    try testing.expectOk(c.recv_D_C_D(.{ .v1 = -2.125, .v2 = 112, .v3 = 1.0 }));
    try testing.expectEqual(c.ret_D_C_D(), .{ .v1 = -2.125, .v2 = 112, .v3 = 1.0 });
    try testing.expectOk(c.send_D_C_D());
}
pub export fn zig_recv_D_C_D(lv: c.D_C_D) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 112) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}

// From T_Snnn_xaw.c:55975:55995
// struct  D_C_F  {
//   double v1;
//   char v2;
//   float v3;
// };

test "D_C_F layout" {
    var lv: c.D_C_F = undefined;
    try testing.expectSize(c.D_C_F, 16);
    try testing.expectAlign(c.D_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_C_F C calls" {
    try testing.expectOk(c.recv_D_C_F(.{ .v1 = 0.5, .v2 = 33, .v3 = 0.875 }));
    try testing.expectEqual(c.ret_D_C_F(), .{ .v1 = 0.5, .v2 = 33, .v3 = 0.875 });
    try testing.expectOk(c.send_D_C_F());
}
pub export fn zig_recv_D_C_F(lv: c.D_C_F) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 33) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}

// From T_Snnn_xaw.c:56000:56020
// struct  D_C_I  {
//   double v1;
//   char v2;
//   int v3;
// };

test "D_C_I layout" {
    var lv: c.D_C_I = undefined;
    try testing.expectSize(c.D_C_I, 16);
    try testing.expectAlign(c.D_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_C_I C calls" {
    try testing.expectOk(c.recv_D_C_I(.{ .v1 = 7.0, .v2 = 26, .v3 = 32115 }));
    try testing.expectEqual(c.ret_D_C_I(), .{ .v1 = 7.0, .v2 = 26, .v3 = 32115 });
    try testing.expectOk(c.send_D_C_I());
}
pub export fn zig_recv_D_C_I(lv: c.D_C_I) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 26) return 2;
    if (lv.v3 != 32115) return 3;
    return 0;
}

// From T_Snnn_xaw.c:56025:56045
// struct  D_C_Ip  {
//   double v1;
//   char v2;
//   int *v3;
// };

test "D_C_Ip layout" {
    var lv: c.D_C_Ip = undefined;
    try testing.expectSize(c.D_C_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_C_Ip C calls" {
    try testing.expectOk(c.recv_D_C_Ip(.{ .v1 = 0.5, .v2 = 89, .v3 = null }));
    try testing.expectEqual(c.ret_D_C_Ip(), .{ .v1 = 0.5, .v2 = 89, .v3 = null });
    try testing.expectOk(c.send_D_C_Ip());
}
pub export fn zig_recv_D_C_Ip(lv: c.D_C_Ip) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 89) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:56050:56070
// struct  D_C_L  {
//   double v1;
//   char v2;
//   __tsi64 v3;
// };

test "D_C_L layout" {
    var lv: c.D_C_L = undefined;
    try testing.expectSize(c.D_C_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_C_L C calls" {
    try testing.expectOk(c.recv_D_C_L(.{ .v1 = 0.5, .v2 = 119, .v3 = 22956 }));
    try testing.expectEqual(c.ret_D_C_L(), .{ .v1 = 0.5, .v2 = 119, .v3 = 22956 });
    try testing.expectOk(c.send_D_C_L());
}
pub export fn zig_recv_D_C_L(lv: c.D_C_L) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 119) return 2;
    if (lv.v3 != 22956) return 3;
    return 0;
}

// From T_Snnn_xaw.c:56075:56095
// struct  D_C_S  {
//   double v1;
//   char v2;
//   short v3;
// };

test "D_C_S layout" {
    var lv: c.D_C_S = undefined;
    try testing.expectSize(c.D_C_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_C_S C calls" {
    try testing.expectOk(c.recv_D_C_S(.{ .v1 = 0.5, .v2 = 118, .v3 = 8349 }));
    try testing.expectEqual(c.ret_D_C_S(), .{ .v1 = 0.5, .v2 = 118, .v3 = 8349 });
    try testing.expectOk(c.send_D_C_S());
}
pub export fn zig_recv_D_C_S(lv: c.D_C_S) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 118) return 2;
    if (lv.v3 != 8349) return 3;
    return 0;
}

// From T_Snnn_xaw.c:56100:56120
// struct  D_C_Uc  {
//   double v1;
//   char v2;
//   unsigned char v3;
// };

test "D_C_Uc layout" {
    var lv: c.D_C_Uc = undefined;
    try testing.expectSize(c.D_C_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "D_C_Uc C calls" {
    try testing.expectOk(c.recv_D_C_Uc(.{ .v1 = -0.25, .v2 = 118, .v3 = 31 }));
    try testing.expectEqual(c.ret_D_C_Uc(), .{ .v1 = -0.25, .v2 = 118, .v3 = 31 });
    try testing.expectOk(c.send_D_C_Uc());
}
pub export fn zig_recv_D_C_Uc(lv: c.D_C_Uc) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 118) return 2;
    if (lv.v3 != 31) return 3;
    return 0;
}

// From T_Snnn_xaw.c:56125:56145
// struct  D_C_Ui  {
//   double v1;
//   char v2;
//   unsigned int v3;
// };

test "D_C_Ui layout" {
    var lv: c.D_C_Ui = undefined;
    try testing.expectSize(c.D_C_Ui, 16);
    try testing.expectAlign(c.D_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_C_Ui C calls" {
    try testing.expectOk(c.recv_D_C_Ui(.{ .v1 = 1.0, .v2 = 17, .v3 = 10416 }));
    try testing.expectEqual(c.ret_D_C_Ui(), .{ .v1 = 1.0, .v2 = 17, .v3 = 10416 });
    try testing.expectOk(c.send_D_C_Ui());
}
pub export fn zig_recv_D_C_Ui(lv: c.D_C_Ui) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 17) return 2;
    if (lv.v3 != 10416) return 3;
    return 0;
}

// From T_Snnn_xaw.c:56150:56170
// struct  D_C_Ul  {
//   double v1;
//   char v2;
//   __tsu64 v3;
// };

test "D_C_Ul layout" {
    var lv: c.D_C_Ul = undefined;
    try testing.expectSize(c.D_C_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_C_Ul C calls" {
    try testing.expectOk(c.recv_D_C_Ul(.{ .v1 = 4.5, .v2 = 83, .v3 = 16905 }));
    try testing.expectEqual(c.ret_D_C_Ul(), .{ .v1 = 4.5, .v2 = 83, .v3 = 16905 });
    try testing.expectOk(c.send_D_C_Ul());
}
pub export fn zig_recv_D_C_Ul(lv: c.D_C_Ul) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 83) return 2;
    if (lv.v3 != 16905) return 3;
    return 0;
}

// From T_Snnn_xaw.c:56175:56195
// struct  D_C_Us  {
//   double v1;
//   char v2;
//   unsigned short v3;
// };

test "D_C_Us layout" {
    var lv: c.D_C_Us = undefined;
    try testing.expectSize(c.D_C_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_C_Us C calls" {
    try testing.expectOk(c.recv_D_C_Us(.{ .v1 = 4.5, .v2 = 63, .v3 = 25175 }));
    try testing.expectEqual(c.ret_D_C_Us(), .{ .v1 = 4.5, .v2 = 63, .v3 = 25175 });
    try testing.expectOk(c.send_D_C_Us());
}
pub export fn zig_recv_D_C_Us(lv: c.D_C_Us) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 63) return 2;
    if (lv.v3 != 25175) return 3;
    return 0;
}

// From T_Snnn_xaw.c:56200:56220
// struct  D_C_Vp  {
//   double v1;
//   char v2;
//   void *v3;
// };

test "D_C_Vp layout" {
    var lv: c.D_C_Vp = undefined;
    try testing.expectSize(c.D_C_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_C_Vp C calls" {
    try testing.expectOk(c.recv_D_C_Vp(.{ .v1 = -0.25, .v2 = 16, .v3 = null }));
    try testing.expectEqual(c.ret_D_C_Vp(), .{ .v1 = -0.25, .v2 = 16, .v3 = null });
    try testing.expectOk(c.send_D_C_Vp());
}
pub export fn zig_recv_D_C_Vp(lv: c.D_C_Vp) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 16) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:56225:56243
// struct  D_D  {
//   double v1;
//   double v2;
// };

test "D_D layout" {
    var lv: c.D_D = undefined;
    try testing.expectSize(c.D_D, 16);
    try testing.expectAlign(c.D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_D C calls" {
    try testing.expectOk(c.recv_D_D(.{ .v1 = 1.0, .v2 = 0.875 }));
    try testing.expectEqual(c.ret_D_D(), .{ .v1 = 1.0, .v2 = 0.875 });
    try testing.expectOk(c.send_D_D());
}
pub export fn zig_recv_D_D(lv: c.D_D) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 0.875) return 2;
    return 0;
}

// From T_Snnn_xaw.c:56972:56992
// struct  D_D_C  {
//   double v1;
//   double v2;
//   char v3;
// };

test "D_D_C layout" {
    var lv: c.D_D_C = undefined;
    try testing.expectSize(c.D_D_C, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_C C calls" {
    try testing.expectOk(c.recv_D_D_C(.{ .v1 = -2.125, .v2 = 4.5, .v3 = 46 }));
    try testing.expectEqual(c.ret_D_D_C(), .{ .v1 = -2.125, .v2 = 4.5, .v3 = 46 });
    try testing.expectOk(c.send_D_D_C());
}
pub export fn zig_recv_D_D_C(lv: c.D_D_C) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 46) return 3;
    return 0;
}

// From T_Snnn_xaw.c:56997:57017
// struct  D_D_D  {
//   double v1;
//   double v2;
//   double v3;
// };

test "D_D_D layout" {
    var lv: c.D_D_D = undefined;
    try testing.expectSize(c.D_D_D, 24);
    try testing.expectAlign(c.D_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_D C calls" {
    try testing.expectOk(c.recv_D_D_D(.{ .v1 = 0.5, .v2 = 0.875, .v3 = 4.5 }));
    try testing.expectEqual(c.ret_D_D_D(), .{ .v1 = 0.5, .v2 = 0.875, .v3 = 4.5 });
    try testing.expectOk(c.send_D_D_D());
}
pub export fn zig_recv_D_D_D(lv: c.D_D_D) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:57022:57042
// struct  D_D_F  {
//   double v1;
//   double v2;
//   float v3;
// };

test "D_D_F layout" {
    var lv: c.D_D_F = undefined;
    try testing.expectSize(c.D_D_F, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_F C calls" {
    try testing.expectOk(c.recv_D_D_F(.{ .v1 = 4.5, .v2 = 0.5, .v3 = -0.25 }));
    try testing.expectEqual(c.ret_D_D_F(), .{ .v1 = 4.5, .v2 = 0.5, .v3 = -0.25 });
    try testing.expectOk(c.send_D_D_F());
}
pub export fn zig_recv_D_D_F(lv: c.D_D_F) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}

// From T_Snnn_xaw.c:57047:57067
// struct  D_D_I  {
//   double v1;
//   double v2;
//   int v3;
// };

test "D_D_I layout" {
    var lv: c.D_D_I = undefined;
    try testing.expectSize(c.D_D_I, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_I C calls" {
    try testing.expectOk(c.recv_D_D_I(.{ .v1 = -0.25, .v2 = 0.5, .v3 = 2232 }));
    try testing.expectEqual(c.ret_D_D_I(), .{ .v1 = -0.25, .v2 = 0.5, .v3 = 2232 });
    try testing.expectOk(c.send_D_D_I());
}
pub export fn zig_recv_D_D_I(lv: c.D_D_I) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != 2232) return 3;
    return 0;
}

// From T_Snnn_xaw.c:57072:57092
// struct  D_D_Ip  {
//   double v1;
//   double v2;
//   int *v3;
// };

test "D_D_Ip layout" {
    var lv: c.D_D_Ip = undefined;
    try testing.expectSize(c.D_D_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_Ip C calls" {
    try testing.expectOk(c.recv_D_D_Ip(.{ .v1 = -0.25, .v2 = 0.875, .v3 = null }));
    try testing.expectEqual(c.ret_D_D_Ip(), .{ .v1 = -0.25, .v2 = 0.875, .v3 = null });
    try testing.expectOk(c.send_D_D_Ip());
}
pub export fn zig_recv_D_D_Ip(lv: c.D_D_Ip) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:57097:57117
// struct  D_D_L  {
//   double v1;
//   double v2;
//   __tsi64 v3;
// };

test "D_D_L layout" {
    var lv: c.D_D_L = undefined;
    try testing.expectSize(c.D_D_L, 24);
    try testing.expectAlign(c.D_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_L C calls" {
    try testing.expectOk(c.recv_D_D_L(.{ .v1 = -2.125, .v2 = -0.25, .v3 = 25508 }));
    try testing.expectEqual(c.ret_D_D_L(), .{ .v1 = -2.125, .v2 = -0.25, .v3 = 25508 });
    try testing.expectOk(c.send_D_D_L());
}
pub export fn zig_recv_D_D_L(lv: c.D_D_L) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 25508) return 3;
    return 0;
}

// From T_Snnn_xaw.c:57122:57142
// struct  D_D_S  {
//   double v1;
//   double v2;
//   short v3;
// };

test "D_D_S layout" {
    var lv: c.D_D_S = undefined;
    try testing.expectSize(c.D_D_S, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_S C calls" {
    try testing.expectOk(c.recv_D_D_S(.{ .v1 = 0.5, .v2 = 4.5, .v3 = 7177 }));
    try testing.expectEqual(c.ret_D_D_S(), .{ .v1 = 0.5, .v2 = 4.5, .v3 = 7177 });
    try testing.expectOk(c.send_D_D_S());
}
pub export fn zig_recv_D_D_S(lv: c.D_D_S) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 7177) return 3;
    return 0;
}

// From T_Snnn_xaw.c:57147:57167
// struct  D_D_Uc  {
//   double v1;
//   double v2;
//   unsigned char v3;
// };

test "D_D_Uc layout" {
    var lv: c.D_D_Uc = undefined;
    try testing.expectSize(c.D_D_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_Uc C calls" {
    try testing.expectOk(c.recv_D_D_Uc(.{ .v1 = -2.125, .v2 = 0.5, .v3 = 15 }));
    try testing.expectEqual(c.ret_D_D_Uc(), .{ .v1 = -2.125, .v2 = 0.5, .v3 = 15 });
    try testing.expectOk(c.send_D_D_Uc());
}
pub export fn zig_recv_D_D_Uc(lv: c.D_D_Uc) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != 15) return 3;
    return 0;
}

// From T_Snnn_xaw.c:57172:57192
// struct  D_D_Ui  {
//   double v1;
//   double v2;
//   unsigned int v3;
// };

test "D_D_Ui layout" {
    var lv: c.D_D_Ui = undefined;
    try testing.expectSize(c.D_D_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_Ui C calls" {
    try testing.expectOk(c.recv_D_D_Ui(.{ .v1 = -0.25, .v2 = -0.25, .v3 = 15554 }));
    try testing.expectEqual(c.ret_D_D_Ui(), .{ .v1 = -0.25, .v2 = -0.25, .v3 = 15554 });
    try testing.expectOk(c.send_D_D_Ui());
}
pub export fn zig_recv_D_D_Ui(lv: c.D_D_Ui) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 15554) return 3;
    return 0;
}

// From T_Snnn_xaw.c:57197:57217
// struct  D_D_Ul  {
//   double v1;
//   double v2;
//   __tsu64 v3;
// };

test "D_D_Ul layout" {
    var lv: c.D_D_Ul = undefined;
    try testing.expectSize(c.D_D_Ul, 24);
    try testing.expectAlign(c.D_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_Ul C calls" {
    try testing.expectOk(c.recv_D_D_Ul(.{ .v1 = -0.25, .v2 = -2.125, .v3 = 25509 }));
    try testing.expectEqual(c.ret_D_D_Ul(), .{ .v1 = -0.25, .v2 = -2.125, .v3 = 25509 });
    try testing.expectOk(c.send_D_D_Ul());
}
pub export fn zig_recv_D_D_Ul(lv: c.D_D_Ul) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 25509) return 3;
    return 0;
}

// From T_Snnn_xaw.c:57222:57242
// struct  D_D_Us  {
//   double v1;
//   double v2;
//   unsigned short v3;
// };

test "D_D_Us layout" {
    var lv: c.D_D_Us = undefined;
    try testing.expectSize(c.D_D_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_Us C calls" {
    try testing.expectOk(c.recv_D_D_Us(.{ .v1 = 4.5, .v2 = 4.5, .v3 = 12415 }));
    try testing.expectEqual(c.ret_D_D_Us(), .{ .v1 = 4.5, .v2 = 4.5, .v3 = 12415 });
    try testing.expectOk(c.send_D_D_Us());
}
pub export fn zig_recv_D_D_Us(lv: c.D_D_Us) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 12415) return 3;
    return 0;
}

// From T_Snnn_xaw.c:57247:57267
// struct  D_D_Vp  {
//   double v1;
//   double v2;
//   void *v3;
// };

test "D_D_Vp layout" {
    var lv: c.D_D_Vp = undefined;
    try testing.expectSize(c.D_D_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_Vp C calls" {
    try testing.expectOk(c.recv_D_D_Vp(.{ .v1 = 1.0, .v2 = 0.875, .v3 = null }));
    try testing.expectEqual(c.ret_D_D_Vp(), .{ .v1 = 1.0, .v2 = 0.875, .v3 = null });
    try testing.expectOk(c.send_D_D_Vp());
}
pub export fn zig_recv_D_D_Vp(lv: c.D_D_Vp) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:57272:57290
// struct  D_F  {
//   double v1;
//   float v2;
// };

test "D_F layout" {
    var lv: c.D_F = undefined;
    try testing.expectSize(c.D_F, ABISELECT(16, 12));
    try testing.expectAlign(c.D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_F C calls" {
    try testing.expectOk(c.recv_D_F(.{ .v1 = -2.125, .v2 = 0.875 }));
    try testing.expectEqual(c.ret_D_F(), .{ .v1 = -2.125, .v2 = 0.875 });
    try testing.expectOk(c.send_D_F());
}
pub export fn zig_recv_D_F(lv: c.D_F) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 0.875) return 2;
    return 0;
}

// From T_Snnn_xaw.c:58019:58039
// struct  D_F_C  {
//   double v1;
//   float v2;
//   char v3;
// };

test "D_F_C layout" {
    var lv: c.D_F_C = undefined;
    try testing.expectSize(c.D_F_C, 16);
    try testing.expectAlign(c.D_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_F_C C calls" {
    try testing.expectOk(c.recv_D_F_C(.{ .v1 = -0.25, .v2 = 7.0, .v3 = 5 }));
    try testing.expectEqual(c.ret_D_F_C(), .{ .v1 = -0.25, .v2 = 7.0, .v3 = 5 });
    try testing.expectOk(c.send_D_F_C());
}
pub export fn zig_recv_D_F_C(lv: c.D_F_C) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58044:58064
// struct  D_F_D  {
//   double v1;
//   float v2;
//   double v3;
// };

test "D_F_D layout" {
    var lv: c.D_F_D = undefined;
    try testing.expectSize(c.D_F_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_F_D C calls" {
    try testing.expectOk(c.recv_D_F_D(.{ .v1 = 0.875, .v2 = 0.875, .v3 = 1.0 }));
    try testing.expectEqual(c.ret_D_F_D(), .{ .v1 = 0.875, .v2 = 0.875, .v3 = 1.0 });
    try testing.expectOk(c.send_D_F_D());
}
pub export fn zig_recv_D_F_D(lv: c.D_F_D) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58069:58089
// struct  D_F_F  {
//   double v1;
//   float v2;
//   float v3;
// };

test "D_F_F layout" {
    var lv: c.D_F_F = undefined;
    try testing.expectSize(c.D_F_F, 16);
    try testing.expectAlign(c.D_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_F_F C calls" {
    try testing.expectOk(c.recv_D_F_F(.{ .v1 = 1.0, .v2 = 4.5, .v3 = 0.5 }));
    try testing.expectEqual(c.ret_D_F_F(), .{ .v1 = 1.0, .v2 = 4.5, .v3 = 0.5 });
    try testing.expectOk(c.send_D_F_F());
}
pub export fn zig_recv_D_F_F(lv: c.D_F_F) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58094:58114
// struct  D_F_I  {
//   double v1;
//   float v2;
//   int v3;
// };

test "D_F_I layout" {
    var lv: c.D_F_I = undefined;
    try testing.expectSize(c.D_F_I, 16);
    try testing.expectAlign(c.D_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_F_I C calls" {
    try testing.expectOk(c.recv_D_F_I(.{ .v1 = 7.0, .v2 = 1.0, .v3 = 31290 }));
    try testing.expectEqual(c.ret_D_F_I(), .{ .v1 = 7.0, .v2 = 1.0, .v3 = 31290 });
    try testing.expectOk(c.send_D_F_I());
}
pub export fn zig_recv_D_F_I(lv: c.D_F_I) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 31290) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58119:58139
// struct  D_F_Ip  {
//   double v1;
//   float v2;
//   int *v3;
// };

test "D_F_Ip layout" {
    var lv: c.D_F_Ip = undefined;
    try testing.expectSize(c.D_F_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_F_Ip C calls" {
    try testing.expectOk(c.recv_D_F_Ip(.{ .v1 = -2.125, .v2 = 7.0, .v3 = null }));
    try testing.expectEqual(c.ret_D_F_Ip(), .{ .v1 = -2.125, .v2 = 7.0, .v3 = null });
    try testing.expectOk(c.send_D_F_Ip());
}
pub export fn zig_recv_D_F_Ip(lv: c.D_F_Ip) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58144:58164
// struct  D_F_L  {
//   double v1;
//   float v2;
//   __tsi64 v3;
// };

test "D_F_L layout" {
    var lv: c.D_F_L = undefined;
    try testing.expectSize(c.D_F_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_F_L C calls" {
    try testing.expectOk(c.recv_D_F_L(.{ .v1 = -2.125, .v2 = 0.5, .v3 = 23080 }));
    try testing.expectEqual(c.ret_D_F_L(), .{ .v1 = -2.125, .v2 = 0.5, .v3 = 23080 });
    try testing.expectOk(c.send_D_F_L());
}
pub export fn zig_recv_D_F_L(lv: c.D_F_L) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != 23080) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58169:58189
// struct  D_F_S  {
//   double v1;
//   float v2;
//   short v3;
// };

test "D_F_S layout" {
    var lv: c.D_F_S = undefined;
    try testing.expectSize(c.D_F_S, 16);
    try testing.expectAlign(c.D_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_F_S C calls" {
    try testing.expectOk(c.recv_D_F_S(.{ .v1 = 0.875, .v2 = 7.0, .v3 = 22172 }));
    try testing.expectEqual(c.ret_D_F_S(), .{ .v1 = 0.875, .v2 = 7.0, .v3 = 22172 });
    try testing.expectOk(c.send_D_F_S());
}
pub export fn zig_recv_D_F_S(lv: c.D_F_S) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 22172) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58194:58214
// struct  D_F_Uc  {
//   double v1;
//   float v2;
//   unsigned char v3;
// };

test "D_F_Uc layout" {
    var lv: c.D_F_Uc = undefined;
    try testing.expectSize(c.D_F_Uc, 16);
    try testing.expectAlign(c.D_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_F_Uc C calls" {
    try testing.expectOk(c.recv_D_F_Uc(.{ .v1 = -2.125, .v2 = -0.25, .v3 = 116 }));
    try testing.expectEqual(c.ret_D_F_Uc(), .{ .v1 = -2.125, .v2 = -0.25, .v3 = 116 });
    try testing.expectOk(c.send_D_F_Uc());
}
pub export fn zig_recv_D_F_Uc(lv: c.D_F_Uc) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 116) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58219:58239
// struct  D_F_Ui  {
//   double v1;
//   float v2;
//   unsigned int v3;
// };

test "D_F_Ui layout" {
    var lv: c.D_F_Ui = undefined;
    try testing.expectSize(c.D_F_Ui, 16);
    try testing.expectAlign(c.D_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_F_Ui C calls" {
    try testing.expectOk(c.recv_D_F_Ui(.{ .v1 = -2.125, .v2 = 1.0, .v3 = 25651 }));
    try testing.expectEqual(c.ret_D_F_Ui(), .{ .v1 = -2.125, .v2 = 1.0, .v3 = 25651 });
    try testing.expectOk(c.send_D_F_Ui());
}
pub export fn zig_recv_D_F_Ui(lv: c.D_F_Ui) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 25651) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58244:58264
// struct  D_F_Ul  {
//   double v1;
//   float v2;
//   __tsu64 v3;
// };

test "D_F_Ul layout" {
    var lv: c.D_F_Ul = undefined;
    try testing.expectSize(c.D_F_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_F_Ul C calls" {
    try testing.expectOk(c.recv_D_F_Ul(.{ .v1 = 0.875, .v2 = -0.25, .v3 = 7057 }));
    try testing.expectEqual(c.ret_D_F_Ul(), .{ .v1 = 0.875, .v2 = -0.25, .v3 = 7057 });
    try testing.expectOk(c.send_D_F_Ul());
}
pub export fn zig_recv_D_F_Ul(lv: c.D_F_Ul) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 7057) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58269:58289
// struct  D_F_Us  {
//   double v1;
//   float v2;
//   unsigned short v3;
// };

test "D_F_Us layout" {
    var lv: c.D_F_Us = undefined;
    try testing.expectSize(c.D_F_Us, 16);
    try testing.expectAlign(c.D_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_F_Us C calls" {
    try testing.expectOk(c.recv_D_F_Us(.{ .v1 = 4.5, .v2 = 7.0, .v3 = 20824 }));
    try testing.expectEqual(c.ret_D_F_Us(), .{ .v1 = 4.5, .v2 = 7.0, .v3 = 20824 });
    try testing.expectOk(c.send_D_F_Us());
}
pub export fn zig_recv_D_F_Us(lv: c.D_F_Us) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 20824) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58294:58314
// struct  D_F_Vp  {
//   double v1;
//   float v2;
//   void *v3;
// };

test "D_F_Vp layout" {
    var lv: c.D_F_Vp = undefined;
    try testing.expectSize(c.D_F_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_F_Vp C calls" {
    try testing.expectOk(c.recv_D_F_Vp(.{ .v1 = 4.5, .v2 = 1.0, .v3 = null }));
    try testing.expectEqual(c.ret_D_F_Vp(), .{ .v1 = 4.5, .v2 = 1.0, .v3 = null });
    try testing.expectOk(c.send_D_F_Vp());
}
pub export fn zig_recv_D_F_Vp(lv: c.D_F_Vp) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:58319:58337
// struct  D_I  {
//   double v1;
//   int v2;
// };

test "D_I layout" {
    var lv: c.D_I = undefined;
    try testing.expectSize(c.D_I, ABISELECT(16, 12));
    try testing.expectAlign(c.D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_I C calls" {
    try testing.expectOk(c.recv_D_I(.{ .v1 = 4.5, .v2 = 18569 }));
    try testing.expectEqual(c.ret_D_I(), .{ .v1 = 4.5, .v2 = 18569 });
    try testing.expectOk(c.send_D_I());
}
pub export fn zig_recv_D_I(lv: c.D_I) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 18569) return 2;
    return 0;
}

// From T_Snnn_xaw.c:59066:59086
// struct  D_I_C  {
//   double v1;
//   int v2;
//   char v3;
// };

test "D_I_C layout" {
    var lv: c.D_I_C = undefined;
    try testing.expectSize(c.D_I_C, 16);
    try testing.expectAlign(c.D_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_I_C C calls" {
    try testing.expectOk(c.recv_D_I_C(.{ .v1 = 1.0, .v2 = 24024, .v3 = 99 }));
    try testing.expectEqual(c.ret_D_I_C(), .{ .v1 = 1.0, .v2 = 24024, .v3 = 99 });
    try testing.expectOk(c.send_D_I_C());
}
pub export fn zig_recv_D_I_C(lv: c.D_I_C) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 24024) return 2;
    if (lv.v3 != 99) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59091:59111
// struct  D_I_D  {
//   double v1;
//   int v2;
//   double v3;
// };

test "D_I_D layout" {
    var lv: c.D_I_D = undefined;
    try testing.expectSize(c.D_I_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_I_D C calls" {
    try testing.expectOk(c.recv_D_I_D(.{ .v1 = 4.5, .v2 = 30236, .v3 = -2.125 }));
    try testing.expectEqual(c.ret_D_I_D(), .{ .v1 = 4.5, .v2 = 30236, .v3 = -2.125 });
    try testing.expectOk(c.send_D_I_D());
}
pub export fn zig_recv_D_I_D(lv: c.D_I_D) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 30236) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59116:59136
// struct  D_I_F  {
//   double v1;
//   int v2;
//   float v3;
// };

test "D_I_F layout" {
    var lv: c.D_I_F = undefined;
    try testing.expectSize(c.D_I_F, 16);
    try testing.expectAlign(c.D_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_I_F C calls" {
    try testing.expectOk(c.recv_D_I_F(.{ .v1 = 7.0, .v2 = 5029, .v3 = 1.0 }));
    try testing.expectEqual(c.ret_D_I_F(), .{ .v1 = 7.0, .v2 = 5029, .v3 = 1.0 });
    try testing.expectOk(c.send_D_I_F());
}
pub export fn zig_recv_D_I_F(lv: c.D_I_F) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 5029) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59141:59161
// struct  D_I_I  {
//   double v1;
//   int v2;
//   int v3;
// };

test "D_I_I layout" {
    var lv: c.D_I_I = undefined;
    try testing.expectSize(c.D_I_I, 16);
    try testing.expectAlign(c.D_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_I_I C calls" {
    try testing.expectOk(c.recv_D_I_I(.{ .v1 = 7.0, .v2 = 13633, .v3 = 9829 }));
    try testing.expectEqual(c.ret_D_I_I(), .{ .v1 = 7.0, .v2 = 13633, .v3 = 9829 });
    try testing.expectOk(c.send_D_I_I());
}
pub export fn zig_recv_D_I_I(lv: c.D_I_I) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 13633) return 2;
    if (lv.v3 != 9829) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59166:59186
// struct  D_I_Ip  {
//   double v1;
//   int v2;
//   int *v3;
// };

test "D_I_Ip layout" {
    var lv: c.D_I_Ip = undefined;
    try testing.expectSize(c.D_I_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_I_Ip C calls" {
    try testing.expectOk(c.recv_D_I_Ip(.{ .v1 = 4.5, .v2 = 9051, .v3 = null }));
    try testing.expectEqual(c.ret_D_I_Ip(), .{ .v1 = 4.5, .v2 = 9051, .v3 = null });
    try testing.expectOk(c.send_D_I_Ip());
}
pub export fn zig_recv_D_I_Ip(lv: c.D_I_Ip) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 9051) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59191:59211
// struct  D_I_L  {
//   double v1;
//   int v2;
//   __tsi64 v3;
// };

test "D_I_L layout" {
    var lv: c.D_I_L = undefined;
    try testing.expectSize(c.D_I_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_I_L C calls" {
    try testing.expectOk(c.recv_D_I_L(.{ .v1 = -0.25, .v2 = 18331, .v3 = 10784 }));
    try testing.expectEqual(c.ret_D_I_L(), .{ .v1 = -0.25, .v2 = 18331, .v3 = 10784 });
    try testing.expectOk(c.send_D_I_L());
}
pub export fn zig_recv_D_I_L(lv: c.D_I_L) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 18331) return 2;
    if (lv.v3 != 10784) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59216:59236
// struct  D_I_S  {
//   double v1;
//   int v2;
//   short v3;
// };

test "D_I_S layout" {
    var lv: c.D_I_S = undefined;
    try testing.expectSize(c.D_I_S, 16);
    try testing.expectAlign(c.D_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_I_S C calls" {
    try testing.expectOk(c.recv_D_I_S(.{ .v1 = 0.875, .v2 = 29861, .v3 = 13238 }));
    try testing.expectEqual(c.ret_D_I_S(), .{ .v1 = 0.875, .v2 = 29861, .v3 = 13238 });
    try testing.expectOk(c.send_D_I_S());
}
pub export fn zig_recv_D_I_S(lv: c.D_I_S) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 29861) return 2;
    if (lv.v3 != 13238) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59241:59261
// struct  D_I_Uc  {
//   double v1;
//   int v2;
//   unsigned char v3;
// };

test "D_I_Uc layout" {
    var lv: c.D_I_Uc = undefined;
    try testing.expectSize(c.D_I_Uc, 16);
    try testing.expectAlign(c.D_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_I_Uc C calls" {
    try testing.expectOk(c.recv_D_I_Uc(.{ .v1 = -0.25, .v2 = 19530, .v3 = 81 }));
    try testing.expectEqual(c.ret_D_I_Uc(), .{ .v1 = -0.25, .v2 = 19530, .v3 = 81 });
    try testing.expectOk(c.send_D_I_Uc());
}
pub export fn zig_recv_D_I_Uc(lv: c.D_I_Uc) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 19530) return 2;
    if (lv.v3 != 81) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59266:59286
// struct  D_I_Ui  {
//   double v1;
//   int v2;
//   unsigned int v3;
// };

test "D_I_Ui layout" {
    var lv: c.D_I_Ui = undefined;
    try testing.expectSize(c.D_I_Ui, 16);
    try testing.expectAlign(c.D_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_I_Ui C calls" {
    try testing.expectOk(c.recv_D_I_Ui(.{ .v1 = 1.0, .v2 = 31107, .v3 = 21469 }));
    try testing.expectEqual(c.ret_D_I_Ui(), .{ .v1 = 1.0, .v2 = 31107, .v3 = 21469 });
    try testing.expectOk(c.send_D_I_Ui());
}
pub export fn zig_recv_D_I_Ui(lv: c.D_I_Ui) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 31107) return 2;
    if (lv.v3 != 21469) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59291:59311
// struct  D_I_Ul  {
//   double v1;
//   int v2;
//   __tsu64 v3;
// };

test "D_I_Ul layout" {
    var lv: c.D_I_Ul = undefined;
    try testing.expectSize(c.D_I_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_I_Ul C calls" {
    try testing.expectOk(c.recv_D_I_Ul(.{ .v1 = 7.0, .v2 = 32447, .v3 = 28274 }));
    try testing.expectEqual(c.ret_D_I_Ul(), .{ .v1 = 7.0, .v2 = 32447, .v3 = 28274 });
    try testing.expectOk(c.send_D_I_Ul());
}
pub export fn zig_recv_D_I_Ul(lv: c.D_I_Ul) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 32447) return 2;
    if (lv.v3 != 28274) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59316:59336
// struct  D_I_Us  {
//   double v1;
//   int v2;
//   unsigned short v3;
// };

test "D_I_Us layout" {
    var lv: c.D_I_Us = undefined;
    try testing.expectSize(c.D_I_Us, 16);
    try testing.expectAlign(c.D_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_I_Us C calls" {
    try testing.expectOk(c.recv_D_I_Us(.{ .v1 = 0.875, .v2 = 14380, .v3 = 122 }));
    try testing.expectEqual(c.ret_D_I_Us(), .{ .v1 = 0.875, .v2 = 14380, .v3 = 122 });
    try testing.expectOk(c.send_D_I_Us());
}
pub export fn zig_recv_D_I_Us(lv: c.D_I_Us) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 14380) return 2;
    if (lv.v3 != 122) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59341:59361
// struct  D_I_Vp  {
//   double v1;
//   int v2;
//   void *v3;
// };

test "D_I_Vp layout" {
    var lv: c.D_I_Vp = undefined;
    try testing.expectSize(c.D_I_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_I_Vp C calls" {
    try testing.expectOk(c.recv_D_I_Vp(.{ .v1 = 4.5, .v2 = 9870, .v3 = null }));
    try testing.expectEqual(c.ret_D_I_Vp(), .{ .v1 = 4.5, .v2 = 9870, .v3 = null });
    try testing.expectOk(c.send_D_I_Vp());
}
pub export fn zig_recv_D_I_Vp(lv: c.D_I_Vp) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 9870) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:59366:59384
// struct  D_Ip  {
//   double v1;
//   int *v2;
// };

test "D_Ip layout" {
    var lv: c.D_Ip = undefined;
    try testing.expectSize(c.D_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_Ip C calls" {
    try testing.expectOk(c.recv_D_Ip(.{ .v1 = 0.875, .v2 = null }));
    try testing.expectEqual(c.ret_D_Ip(), .{ .v1 = 0.875, .v2 = null });
    try testing.expectOk(c.send_D_Ip());
}
pub export fn zig_recv_D_Ip(lv: c.D_Ip) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != null) return 2;
    return 0;
}

// From T_Snnn_xaw.c:60113:60133
// struct  D_Ip_C  {
//   double v1;
//   int *v2;
//   char v3;
// };

test "D_Ip_C layout" {
    var lv: c.D_Ip_C = undefined;
    try testing.expectSize(c.D_Ip_C, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_C C calls" {
    try testing.expectOk(c.recv_D_Ip_C(.{ .v1 = 0.5, .v2 = null, .v3 = 55 }));
    try testing.expectEqual(c.ret_D_Ip_C(), .{ .v1 = 0.5, .v2 = null, .v3 = 55 });
    try testing.expectOk(c.send_D_Ip_C());
}
pub export fn zig_recv_D_Ip_C(lv: c.D_Ip_C) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 55) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60138:60158
// struct  D_Ip_D  {
//   double v1;
//   int *v2;
//   double v3;
// };

test "D_Ip_D layout" {
    var lv: c.D_Ip_D = undefined;
    try testing.expectSize(c.D_Ip_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_D C calls" {
    try testing.expectOk(c.recv_D_Ip_D(.{ .v1 = 0.5, .v2 = null, .v3 = -2.125 }));
    try testing.expectEqual(c.ret_D_Ip_D(), .{ .v1 = 0.5, .v2 = null, .v3 = -2.125 });
    try testing.expectOk(c.send_D_Ip_D());
}
pub export fn zig_recv_D_Ip_D(lv: c.D_Ip_D) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60163:60183
// struct  D_Ip_F  {
//   double v1;
//   int *v2;
//   float v3;
// };

test "D_Ip_F layout" {
    var lv: c.D_Ip_F = undefined;
    try testing.expectSize(c.D_Ip_F, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_F C calls" {
    try testing.expectOk(c.recv_D_Ip_F(.{ .v1 = 0.5, .v2 = null, .v3 = 4.5 }));
    try testing.expectEqual(c.ret_D_Ip_F(), .{ .v1 = 0.5, .v2 = null, .v3 = 4.5 });
    try testing.expectOk(c.send_D_Ip_F());
}
pub export fn zig_recv_D_Ip_F(lv: c.D_Ip_F) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60188:60208
// struct  D_Ip_I  {
//   double v1;
//   int *v2;
//   int v3;
// };

test "D_Ip_I layout" {
    var lv: c.D_Ip_I = undefined;
    try testing.expectSize(c.D_Ip_I, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_I C calls" {
    try testing.expectOk(c.recv_D_Ip_I(.{ .v1 = -0.25, .v2 = null, .v3 = 25718 }));
    try testing.expectEqual(c.ret_D_Ip_I(), .{ .v1 = -0.25, .v2 = null, .v3 = 25718 });
    try testing.expectOk(c.send_D_Ip_I());
}
pub export fn zig_recv_D_Ip_I(lv: c.D_Ip_I) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 25718) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60213:60233
// struct  D_Ip_Ip  {
//   double v1;
//   int *v2;
//   int *v3;
// };

test "D_Ip_Ip layout" {
    var lv: c.D_Ip_Ip = undefined;
    try testing.expectSize(c.D_Ip_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_Ip C calls" {
    try testing.expectOk(c.recv_D_Ip_Ip(.{ .v1 = -0.25, .v2 = null, .v3 = null }));
    try testing.expectEqual(c.ret_D_Ip_Ip(), .{ .v1 = -0.25, .v2 = null, .v3 = null });
    try testing.expectOk(c.send_D_Ip_Ip());
}
pub export fn zig_recv_D_Ip_Ip(lv: c.D_Ip_Ip) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60238:60258
// struct  D_Ip_L  {
//   double v1;
//   int *v2;
//   __tsi64 v3;
// };

test "D_Ip_L layout" {
    var lv: c.D_Ip_L = undefined;
    try testing.expectSize(c.D_Ip_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_L C calls" {
    try testing.expectOk(c.recv_D_Ip_L(.{ .v1 = 0.875, .v2 = null, .v3 = 3369 }));
    try testing.expectEqual(c.ret_D_Ip_L(), .{ .v1 = 0.875, .v2 = null, .v3 = 3369 });
    try testing.expectOk(c.send_D_Ip_L());
}
pub export fn zig_recv_D_Ip_L(lv: c.D_Ip_L) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 3369) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60263:60283
// struct  D_Ip_S  {
//   double v1;
//   int *v2;
//   short v3;
// };

test "D_Ip_S layout" {
    var lv: c.D_Ip_S = undefined;
    try testing.expectSize(c.D_Ip_S, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_S C calls" {
    try testing.expectOk(c.recv_D_Ip_S(.{ .v1 = 0.875, .v2 = null, .v3 = 14756 }));
    try testing.expectEqual(c.ret_D_Ip_S(), .{ .v1 = 0.875, .v2 = null, .v3 = 14756 });
    try testing.expectOk(c.send_D_Ip_S());
}
pub export fn zig_recv_D_Ip_S(lv: c.D_Ip_S) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 14756) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60288:60308
// struct  D_Ip_Uc  {
//   double v1;
//   int *v2;
//   unsigned char v3;
// };

test "D_Ip_Uc layout" {
    var lv: c.D_Ip_Uc = undefined;
    try testing.expectSize(c.D_Ip_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_Uc C calls" {
    try testing.expectOk(c.recv_D_Ip_Uc(.{ .v1 = -0.25, .v2 = null, .v3 = 61 }));
    try testing.expectEqual(c.ret_D_Ip_Uc(), .{ .v1 = -0.25, .v2 = null, .v3 = 61 });
    try testing.expectOk(c.send_D_Ip_Uc());
}
pub export fn zig_recv_D_Ip_Uc(lv: c.D_Ip_Uc) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 61) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60313:60333
// struct  D_Ip_Ui  {
//   double v1;
//   int *v2;
//   unsigned int v3;
// };

test "D_Ip_Ui layout" {
    var lv: c.D_Ip_Ui = undefined;
    try testing.expectSize(c.D_Ip_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_Ui C calls" {
    try testing.expectOk(c.recv_D_Ip_Ui(.{ .v1 = 7.0, .v2 = null, .v3 = 24999 }));
    try testing.expectEqual(c.ret_D_Ip_Ui(), .{ .v1 = 7.0, .v2 = null, .v3 = 24999 });
    try testing.expectOk(c.send_D_Ip_Ui());
}
pub export fn zig_recv_D_Ip_Ui(lv: c.D_Ip_Ui) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 24999) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60338:60358
// struct  D_Ip_Ul  {
//   double v1;
//   int *v2;
//   __tsu64 v3;
// };

test "D_Ip_Ul layout" {
    var lv: c.D_Ip_Ul = undefined;
    try testing.expectSize(c.D_Ip_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_Ul C calls" {
    try testing.expectOk(c.recv_D_Ip_Ul(.{ .v1 = -0.25, .v2 = null, .v3 = 22031 }));
    try testing.expectEqual(c.ret_D_Ip_Ul(), .{ .v1 = -0.25, .v2 = null, .v3 = 22031 });
    try testing.expectOk(c.send_D_Ip_Ul());
}
pub export fn zig_recv_D_Ip_Ul(lv: c.D_Ip_Ul) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 22031) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60363:60383
// struct  D_Ip_Us  {
//   double v1;
//   int *v2;
//   unsigned short v3;
// };

test "D_Ip_Us layout" {
    var lv: c.D_Ip_Us = undefined;
    try testing.expectSize(c.D_Ip_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_Us C calls" {
    try testing.expectOk(c.recv_D_Ip_Us(.{ .v1 = 4.5, .v2 = null, .v3 = 741 }));
    try testing.expectEqual(c.ret_D_Ip_Us(), .{ .v1 = 4.5, .v2 = null, .v3 = 741 });
    try testing.expectOk(c.send_D_Ip_Us());
}
pub export fn zig_recv_D_Ip_Us(lv: c.D_Ip_Us) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 741) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60388:60408
// struct  D_Ip_Vp  {
//   double v1;
//   int *v2;
//   void *v3;
// };

test "D_Ip_Vp layout" {
    var lv: c.D_Ip_Vp = undefined;
    try testing.expectSize(c.D_Ip_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_Vp C calls" {
    try testing.expectOk(c.recv_D_Ip_Vp(.{ .v1 = 1.0, .v2 = null, .v3 = null }));
    try testing.expectEqual(c.ret_D_Ip_Vp(), .{ .v1 = 1.0, .v2 = null, .v3 = null });
    try testing.expectOk(c.send_D_Ip_Vp());
}
pub export fn zig_recv_D_Ip_Vp(lv: c.D_Ip_Vp) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:60413:60431
// struct  D_L  {
//   double v1;
//   __tsi64 v2;
// };

test "D_L layout" {
    var lv: c.D_L = undefined;
    try testing.expectSize(c.D_L, 16);
    try testing.expectAlign(c.D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_L C calls" {
    try testing.expectOk(c.recv_D_L(.{ .v1 = 4.5, .v2 = 9582 }));
    try testing.expectEqual(c.ret_D_L(), .{ .v1 = 4.5, .v2 = 9582 });
    try testing.expectOk(c.send_D_L());
}
pub export fn zig_recv_D_L(lv: c.D_L) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 9582) return 2;
    return 0;
}

// From T_Snnn_xaw.c:61160:61180
// struct  D_L_C  {
//   double v1;
//   __tsi64 v2;
//   char v3;
// };

test "D_L_C layout" {
    var lv: c.D_L_C = undefined;
    try testing.expectSize(c.D_L_C, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_C C calls" {
    try testing.expectOk(c.recv_D_L_C(.{ .v1 = 4.5, .v2 = 18867, .v3 = 76 }));
    try testing.expectEqual(c.ret_D_L_C(), .{ .v1 = 4.5, .v2 = 18867, .v3 = 76 });
    try testing.expectOk(c.send_D_L_C());
}
pub export fn zig_recv_D_L_C(lv: c.D_L_C) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 18867) return 2;
    if (lv.v3 != 76) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61185:61205
// struct  D_L_D  {
//   double v1;
//   __tsi64 v2;
//   double v3;
// };

test "D_L_D layout" {
    var lv: c.D_L_D = undefined;
    try testing.expectSize(c.D_L_D, 24);
    try testing.expectAlign(c.D_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_D C calls" {
    try testing.expectOk(c.recv_D_L_D(.{ .v1 = -0.25, .v2 = 21051, .v3 = 0.875 }));
    try testing.expectEqual(c.ret_D_L_D(), .{ .v1 = -0.25, .v2 = 21051, .v3 = 0.875 });
    try testing.expectOk(c.send_D_L_D());
}
pub export fn zig_recv_D_L_D(lv: c.D_L_D) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 21051) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61210:61230
// struct  D_L_F  {
//   double v1;
//   __tsi64 v2;
//   float v3;
// };

test "D_L_F layout" {
    var lv: c.D_L_F = undefined;
    try testing.expectSize(c.D_L_F, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_F C calls" {
    try testing.expectOk(c.recv_D_L_F(.{ .v1 = 1.0, .v2 = 30914, .v3 = 1.0 }));
    try testing.expectEqual(c.ret_D_L_F(), .{ .v1 = 1.0, .v2 = 30914, .v3 = 1.0 });
    try testing.expectOk(c.send_D_L_F());
}
pub export fn zig_recv_D_L_F(lv: c.D_L_F) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 30914) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61235:61255
// struct  D_L_I  {
//   double v1;
//   __tsi64 v2;
//   int v3;
// };

test "D_L_I layout" {
    var lv: c.D_L_I = undefined;
    try testing.expectSize(c.D_L_I, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_I C calls" {
    try testing.expectOk(c.recv_D_L_I(.{ .v1 = 1.0, .v2 = 14517, .v3 = 8201 }));
    try testing.expectEqual(c.ret_D_L_I(), .{ .v1 = 1.0, .v2 = 14517, .v3 = 8201 });
    try testing.expectOk(c.send_D_L_I());
}
pub export fn zig_recv_D_L_I(lv: c.D_L_I) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 14517) return 2;
    if (lv.v3 != 8201) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61260:61280
// struct  D_L_Ip  {
//   double v1;
//   __tsi64 v2;
//   int *v3;
// };

test "D_L_Ip layout" {
    var lv: c.D_L_Ip = undefined;
    try testing.expectSize(c.D_L_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_Ip C calls" {
    try testing.expectOk(c.recv_D_L_Ip(.{ .v1 = 0.875, .v2 = 3359, .v3 = null }));
    try testing.expectEqual(c.ret_D_L_Ip(), .{ .v1 = 0.875, .v2 = 3359, .v3 = null });
    try testing.expectOk(c.send_D_L_Ip());
}
pub export fn zig_recv_D_L_Ip(lv: c.D_L_Ip) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 3359) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61285:61305
// struct  D_L_L  {
//   double v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "D_L_L layout" {
    var lv: c.D_L_L = undefined;
    try testing.expectSize(c.D_L_L, 24);
    try testing.expectAlign(c.D_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_L C calls" {
    try testing.expectOk(c.recv_D_L_L(.{ .v1 = -0.25, .v2 = 31346, .v3 = 3876 }));
    try testing.expectEqual(c.ret_D_L_L(), .{ .v1 = -0.25, .v2 = 31346, .v3 = 3876 });
    try testing.expectOk(c.send_D_L_L());
}
pub export fn zig_recv_D_L_L(lv: c.D_L_L) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 31346) return 2;
    if (lv.v3 != 3876) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61310:61330
// struct  D_L_S  {
//   double v1;
//   __tsi64 v2;
//   short v3;
// };

test "D_L_S layout" {
    var lv: c.D_L_S = undefined;
    try testing.expectSize(c.D_L_S, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_S C calls" {
    try testing.expectOk(c.recv_D_L_S(.{ .v1 = 4.5, .v2 = 11502, .v3 = 16315 }));
    try testing.expectEqual(c.ret_D_L_S(), .{ .v1 = 4.5, .v2 = 11502, .v3 = 16315 });
    try testing.expectOk(c.send_D_L_S());
}
pub export fn zig_recv_D_L_S(lv: c.D_L_S) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 11502) return 2;
    if (lv.v3 != 16315) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61335:61355
// struct  D_L_Uc  {
//   double v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "D_L_Uc layout" {
    var lv: c.D_L_Uc = undefined;
    try testing.expectSize(c.D_L_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_Uc C calls" {
    try testing.expectOk(c.recv_D_L_Uc(.{ .v1 = 0.5, .v2 = 20559, .v3 = 102 }));
    try testing.expectEqual(c.ret_D_L_Uc(), .{ .v1 = 0.5, .v2 = 20559, .v3 = 102 });
    try testing.expectOk(c.send_D_L_Uc());
}
pub export fn zig_recv_D_L_Uc(lv: c.D_L_Uc) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 20559) return 2;
    if (lv.v3 != 102) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61360:61380
// struct  D_L_Ui  {
//   double v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "D_L_Ui layout" {
    var lv: c.D_L_Ui = undefined;
    try testing.expectSize(c.D_L_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_Ui C calls" {
    try testing.expectOk(c.recv_D_L_Ui(.{ .v1 = -2.125, .v2 = 17125, .v3 = 8313 }));
    try testing.expectEqual(c.ret_D_L_Ui(), .{ .v1 = -2.125, .v2 = 17125, .v3 = 8313 });
    try testing.expectOk(c.send_D_L_Ui());
}
pub export fn zig_recv_D_L_Ui(lv: c.D_L_Ui) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 17125) return 2;
    if (lv.v3 != 8313) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61385:61405
// struct  D_L_Ul  {
//   double v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "D_L_Ul layout" {
    var lv: c.D_L_Ul = undefined;
    try testing.expectSize(c.D_L_Ul, 24);
    try testing.expectAlign(c.D_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_Ul C calls" {
    try testing.expectOk(c.recv_D_L_Ul(.{ .v1 = 7.0, .v2 = 22788, .v3 = 1950 }));
    try testing.expectEqual(c.ret_D_L_Ul(), .{ .v1 = 7.0, .v2 = 22788, .v3 = 1950 });
    try testing.expectOk(c.send_D_L_Ul());
}
pub export fn zig_recv_D_L_Ul(lv: c.D_L_Ul) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 22788) return 2;
    if (lv.v3 != 1950) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61410:61430
// struct  D_L_Us  {
//   double v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "D_L_Us layout" {
    var lv: c.D_L_Us = undefined;
    try testing.expectSize(c.D_L_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_Us C calls" {
    try testing.expectOk(c.recv_D_L_Us(.{ .v1 = 7.0, .v2 = 14381, .v3 = 29145 }));
    try testing.expectEqual(c.ret_D_L_Us(), .{ .v1 = 7.0, .v2 = 14381, .v3 = 29145 });
    try testing.expectOk(c.send_D_L_Us());
}
pub export fn zig_recv_D_L_Us(lv: c.D_L_Us) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 14381) return 2;
    if (lv.v3 != 29145) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61435:61455
// struct  D_L_Vp  {
//   double v1;
//   __tsi64 v2;
//   void *v3;
// };

test "D_L_Vp layout" {
    var lv: c.D_L_Vp = undefined;
    try testing.expectSize(c.D_L_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_Vp C calls" {
    try testing.expectOk(c.recv_D_L_Vp(.{ .v1 = 1.0, .v2 = 1736, .v3 = null }));
    try testing.expectEqual(c.ret_D_L_Vp(), .{ .v1 = 1.0, .v2 = 1736, .v3 = null });
    try testing.expectOk(c.send_D_L_Vp());
}
pub export fn zig_recv_D_L_Vp(lv: c.D_L_Vp) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 1736) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:61460:61478
// struct  D_S  {
//   double v1;
//   short v2;
// };

test "D_S layout" {
    var lv: c.D_S = undefined;
    try testing.expectSize(c.D_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_S C calls" {
    try testing.expectOk(c.recv_D_S(.{ .v1 = 1.0, .v2 = 18963 }));
    try testing.expectEqual(c.ret_D_S(), .{ .v1 = 1.0, .v2 = 18963 });
    try testing.expectOk(c.send_D_S());
}
pub export fn zig_recv_D_S(lv: c.D_S) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 18963) return 2;
    return 0;
}

// From T_Snnn_xaw.c:62207:62227
// struct  D_S_C  {
//   double v1;
//   short v2;
//   char v3;
// };

test "D_S_C layout" {
    var lv: c.D_S_C = undefined;
    try testing.expectSize(c.D_S_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_S_C C calls" {
    try testing.expectOk(c.recv_D_S_C(.{ .v1 = 1.0, .v2 = 111, .v3 = 38 }));
    try testing.expectEqual(c.ret_D_S_C(), .{ .v1 = 1.0, .v2 = 111, .v3 = 38 });
    try testing.expectOk(c.send_D_S_C());
}
pub export fn zig_recv_D_S_C(lv: c.D_S_C) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 111) return 2;
    if (lv.v3 != 38) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62232:62252
// struct  D_S_D  {
//   double v1;
//   short v2;
//   double v3;
// };

test "D_S_D layout" {
    var lv: c.D_S_D = undefined;
    try testing.expectSize(c.D_S_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_S_D C calls" {
    try testing.expectOk(c.recv_D_S_D(.{ .v1 = 7.0, .v2 = 32408, .v3 = 0.875 }));
    try testing.expectEqual(c.ret_D_S_D(), .{ .v1 = 7.0, .v2 = 32408, .v3 = 0.875 });
    try testing.expectOk(c.send_D_S_D());
}
pub export fn zig_recv_D_S_D(lv: c.D_S_D) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 32408) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62257:62277
// struct  D_S_F  {
//   double v1;
//   short v2;
//   float v3;
// };

test "D_S_F layout" {
    var lv: c.D_S_F = undefined;
    try testing.expectSize(c.D_S_F, 16);
    try testing.expectAlign(c.D_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_S_F C calls" {
    try testing.expectOk(c.recv_D_S_F(.{ .v1 = 7.0, .v2 = 10925, .v3 = 0.875 }));
    try testing.expectEqual(c.ret_D_S_F(), .{ .v1 = 7.0, .v2 = 10925, .v3 = 0.875 });
    try testing.expectOk(c.send_D_S_F());
}
pub export fn zig_recv_D_S_F(lv: c.D_S_F) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 10925) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62282:62302
// struct  D_S_I  {
//   double v1;
//   short v2;
//   int v3;
// };

test "D_S_I layout" {
    var lv: c.D_S_I = undefined;
    try testing.expectSize(c.D_S_I, 16);
    try testing.expectAlign(c.D_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_S_I C calls" {
    try testing.expectOk(c.recv_D_S_I(.{ .v1 = 0.875, .v2 = 23805, .v3 = 4950 }));
    try testing.expectEqual(c.ret_D_S_I(), .{ .v1 = 0.875, .v2 = 23805, .v3 = 4950 });
    try testing.expectOk(c.send_D_S_I());
}
pub export fn zig_recv_D_S_I(lv: c.D_S_I) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 23805) return 2;
    if (lv.v3 != 4950) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62307:62327
// struct  D_S_Ip  {
//   double v1;
//   short v2;
//   int *v3;
// };

test "D_S_Ip layout" {
    var lv: c.D_S_Ip = undefined;
    try testing.expectSize(c.D_S_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_S_Ip C calls" {
    try testing.expectOk(c.recv_D_S_Ip(.{ .v1 = 0.875, .v2 = 18312, .v3 = null }));
    try testing.expectEqual(c.ret_D_S_Ip(), .{ .v1 = 0.875, .v2 = 18312, .v3 = null });
    try testing.expectOk(c.send_D_S_Ip());
}
pub export fn zig_recv_D_S_Ip(lv: c.D_S_Ip) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 18312) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62332:62352
// struct  D_S_L  {
//   double v1;
//   short v2;
//   __tsi64 v3;
// };

test "D_S_L layout" {
    var lv: c.D_S_L = undefined;
    try testing.expectSize(c.D_S_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_S_L C calls" {
    try testing.expectOk(c.recv_D_S_L(.{ .v1 = 4.5, .v2 = 29169, .v3 = 11847 }));
    try testing.expectEqual(c.ret_D_S_L(), .{ .v1 = 4.5, .v2 = 29169, .v3 = 11847 });
    try testing.expectOk(c.send_D_S_L());
}
pub export fn zig_recv_D_S_L(lv: c.D_S_L) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 29169) return 2;
    if (lv.v3 != 11847) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62357:62377
// struct  D_S_S  {
//   double v1;
//   short v2;
//   short v3;
// };

test "D_S_S layout" {
    var lv: c.D_S_S = undefined;
    try testing.expectSize(c.D_S_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_S_S C calls" {
    try testing.expectOk(c.recv_D_S_S(.{ .v1 = 0.875, .v2 = 29071, .v3 = 28225 }));
    try testing.expectEqual(c.ret_D_S_S(), .{ .v1 = 0.875, .v2 = 29071, .v3 = 28225 });
    try testing.expectOk(c.send_D_S_S());
}
pub export fn zig_recv_D_S_S(lv: c.D_S_S) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 29071) return 2;
    if (lv.v3 != 28225) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62382:62402
// struct  D_S_Uc  {
//   double v1;
//   short v2;
//   unsigned char v3;
// };

test "D_S_Uc layout" {
    var lv: c.D_S_Uc = undefined;
    try testing.expectSize(c.D_S_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_S_Uc C calls" {
    try testing.expectOk(c.recv_D_S_Uc(.{ .v1 = -2.125, .v2 = 1535, .v3 = 20 }));
    try testing.expectEqual(c.ret_D_S_Uc(), .{ .v1 = -2.125, .v2 = 1535, .v3 = 20 });
    try testing.expectOk(c.send_D_S_Uc());
}
pub export fn zig_recv_D_S_Uc(lv: c.D_S_Uc) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 1535) return 2;
    if (lv.v3 != 20) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62407:62427
// struct  D_S_Ui  {
//   double v1;
//   short v2;
//   unsigned int v3;
// };

test "D_S_Ui layout" {
    var lv: c.D_S_Ui = undefined;
    try testing.expectSize(c.D_S_Ui, 16);
    try testing.expectAlign(c.D_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_S_Ui C calls" {
    try testing.expectOk(c.recv_D_S_Ui(.{ .v1 = 4.5, .v2 = 23406, .v3 = 7690 }));
    try testing.expectEqual(c.ret_D_S_Ui(), .{ .v1 = 4.5, .v2 = 23406, .v3 = 7690 });
    try testing.expectOk(c.send_D_S_Ui());
}
pub export fn zig_recv_D_S_Ui(lv: c.D_S_Ui) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 23406) return 2;
    if (lv.v3 != 7690) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62432:62452
// struct  D_S_Ul  {
//   double v1;
//   short v2;
//   __tsu64 v3;
// };

test "D_S_Ul layout" {
    var lv: c.D_S_Ul = undefined;
    try testing.expectSize(c.D_S_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_S_Ul C calls" {
    try testing.expectOk(c.recv_D_S_Ul(.{ .v1 = 4.5, .v2 = 3705, .v3 = 27905 }));
    try testing.expectEqual(c.ret_D_S_Ul(), .{ .v1 = 4.5, .v2 = 3705, .v3 = 27905 });
    try testing.expectOk(c.send_D_S_Ul());
}
pub export fn zig_recv_D_S_Ul(lv: c.D_S_Ul) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 3705) return 2;
    if (lv.v3 != 27905) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62457:62477
// struct  D_S_Us  {
//   double v1;
//   short v2;
//   unsigned short v3;
// };

test "D_S_Us layout" {
    var lv: c.D_S_Us = undefined;
    try testing.expectSize(c.D_S_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_S_Us C calls" {
    try testing.expectOk(c.recv_D_S_Us(.{ .v1 = -2.125, .v2 = 23576, .v3 = 1855 }));
    try testing.expectEqual(c.ret_D_S_Us(), .{ .v1 = -2.125, .v2 = 23576, .v3 = 1855 });
    try testing.expectOk(c.send_D_S_Us());
}
pub export fn zig_recv_D_S_Us(lv: c.D_S_Us) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 23576) return 2;
    if (lv.v3 != 1855) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62482:62502
// struct  D_S_Vp  {
//   double v1;
//   short v2;
//   void *v3;
// };

test "D_S_Vp layout" {
    var lv: c.D_S_Vp = undefined;
    try testing.expectSize(c.D_S_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_S_Vp C calls" {
    try testing.expectOk(c.recv_D_S_Vp(.{ .v1 = 0.5, .v2 = 29327, .v3 = null }));
    try testing.expectEqual(c.ret_D_S_Vp(), .{ .v1 = 0.5, .v2 = 29327, .v3 = null });
    try testing.expectOk(c.send_D_S_Vp());
}
pub export fn zig_recv_D_S_Vp(lv: c.D_S_Vp) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 29327) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:62507:62525
// struct  D_Uc  {
//   double v1;
//   unsigned char v2;
// };

test "D_Uc layout" {
    var lv: c.D_Uc = undefined;
    try testing.expectSize(c.D_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_Uc C calls" {
    try testing.expectOk(c.recv_D_Uc(.{ .v1 = 0.5, .v2 = 121 }));
    try testing.expectEqual(c.ret_D_Uc(), .{ .v1 = 0.5, .v2 = 121 });
    try testing.expectOk(c.send_D_Uc());
}
pub export fn zig_recv_D_Uc(lv: c.D_Uc) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 121) return 2;
    return 0;
}

// From T_Snnn_xaw.c:63254:63274
// struct  D_Uc_C  {
//   double v1;
//   unsigned char v2;
//   char v3;
// };

test "D_Uc_C layout" {
    var lv: c.D_Uc_C = undefined;
    try testing.expectSize(c.D_Uc_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "D_Uc_C C calls" {
    try testing.expectOk(c.recv_D_Uc_C(.{ .v1 = 1.0, .v2 = 68, .v3 = 42 }));
    try testing.expectEqual(c.ret_D_Uc_C(), .{ .v1 = 1.0, .v2 = 68, .v3 = 42 });
    try testing.expectOk(c.send_D_Uc_C());
}
pub export fn zig_recv_D_Uc_C(lv: c.D_Uc_C) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 68) return 2;
    if (lv.v3 != 42) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63279:63299
// struct  D_Uc_D  {
//   double v1;
//   unsigned char v2;
//   double v3;
// };

test "D_Uc_D layout" {
    var lv: c.D_Uc_D = undefined;
    try testing.expectSize(c.D_Uc_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Uc_D C calls" {
    try testing.expectOk(c.recv_D_Uc_D(.{ .v1 = -0.25, .v2 = 68, .v3 = 1.0 }));
    try testing.expectEqual(c.ret_D_Uc_D(), .{ .v1 = -0.25, .v2 = 68, .v3 = 1.0 });
    try testing.expectOk(c.send_D_Uc_D());
}
pub export fn zig_recv_D_Uc_D(lv: c.D_Uc_D) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 68) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63304:63324
// struct  D_Uc_F  {
//   double v1;
//   unsigned char v2;
//   float v3;
// };

test "D_Uc_F layout" {
    var lv: c.D_Uc_F = undefined;
    try testing.expectSize(c.D_Uc_F, 16);
    try testing.expectAlign(c.D_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Uc_F C calls" {
    try testing.expectOk(c.recv_D_Uc_F(.{ .v1 = -0.25, .v2 = 110, .v3 = -0.25 }));
    try testing.expectEqual(c.ret_D_Uc_F(), .{ .v1 = -0.25, .v2 = 110, .v3 = -0.25 });
    try testing.expectOk(c.send_D_Uc_F());
}
pub export fn zig_recv_D_Uc_F(lv: c.D_Uc_F) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 110) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63329:63349
// struct  D_Uc_I  {
//   double v1;
//   unsigned char v2;
//   int v3;
// };

test "D_Uc_I layout" {
    var lv: c.D_Uc_I = undefined;
    try testing.expectSize(c.D_Uc_I, 16);
    try testing.expectAlign(c.D_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Uc_I C calls" {
    try testing.expectOk(c.recv_D_Uc_I(.{ .v1 = 0.5, .v2 = 32, .v3 = 18397 }));
    try testing.expectEqual(c.ret_D_Uc_I(), .{ .v1 = 0.5, .v2 = 32, .v3 = 18397 });
    try testing.expectOk(c.send_D_Uc_I());
}
pub export fn zig_recv_D_Uc_I(lv: c.D_Uc_I) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 32) return 2;
    if (lv.v3 != 18397) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63354:63374
// struct  D_Uc_Ip  {
//   double v1;
//   unsigned char v2;
//   int *v3;
// };

test "D_Uc_Ip layout" {
    var lv: c.D_Uc_Ip = undefined;
    try testing.expectSize(c.D_Uc_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Uc_Ip C calls" {
    try testing.expectOk(c.recv_D_Uc_Ip(.{ .v1 = 7.0, .v2 = 108, .v3 = null }));
    try testing.expectEqual(c.ret_D_Uc_Ip(), .{ .v1 = 7.0, .v2 = 108, .v3 = null });
    try testing.expectOk(c.send_D_Uc_Ip());
}
pub export fn zig_recv_D_Uc_Ip(lv: c.D_Uc_Ip) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 108) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63379:63399
// struct  D_Uc_L  {
//   double v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "D_Uc_L layout" {
    var lv: c.D_Uc_L = undefined;
    try testing.expectSize(c.D_Uc_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Uc_L C calls" {
    try testing.expectOk(c.recv_D_Uc_L(.{ .v1 = 0.875, .v2 = 108, .v3 = 2176 }));
    try testing.expectEqual(c.ret_D_Uc_L(), .{ .v1 = 0.875, .v2 = 108, .v3 = 2176 });
    try testing.expectOk(c.send_D_Uc_L());
}
pub export fn zig_recv_D_Uc_L(lv: c.D_Uc_L) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 108) return 2;
    if (lv.v3 != 2176) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63404:63424
// struct  D_Uc_S  {
//   double v1;
//   unsigned char v2;
//   short v3;
// };

test "D_Uc_S layout" {
    var lv: c.D_Uc_S = undefined;
    try testing.expectSize(c.D_Uc_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_Uc_S C calls" {
    try testing.expectOk(c.recv_D_Uc_S(.{ .v1 = 1.0, .v2 = 48, .v3 = 3198 }));
    try testing.expectEqual(c.ret_D_Uc_S(), .{ .v1 = 1.0, .v2 = 48, .v3 = 3198 });
    try testing.expectOk(c.send_D_Uc_S());
}
pub export fn zig_recv_D_Uc_S(lv: c.D_Uc_S) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 48) return 2;
    if (lv.v3 != 3198) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63429:63449
// struct  D_Uc_Uc  {
//   double v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "D_Uc_Uc layout" {
    var lv: c.D_Uc_Uc = undefined;
    try testing.expectSize(c.D_Uc_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "D_Uc_Uc C calls" {
    try testing.expectOk(c.recv_D_Uc_Uc(.{ .v1 = -2.125, .v2 = 115, .v3 = 90 }));
    try testing.expectEqual(c.ret_D_Uc_Uc(), .{ .v1 = -2.125, .v2 = 115, .v3 = 90 });
    try testing.expectOk(c.send_D_Uc_Uc());
}
pub export fn zig_recv_D_Uc_Uc(lv: c.D_Uc_Uc) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 115) return 2;
    if (lv.v3 != 90) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63454:63474
// struct  D_Uc_Ui  {
//   double v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "D_Uc_Ui layout" {
    var lv: c.D_Uc_Ui = undefined;
    try testing.expectSize(c.D_Uc_Ui, 16);
    try testing.expectAlign(c.D_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Uc_Ui C calls" {
    try testing.expectOk(c.recv_D_Uc_Ui(.{ .v1 = 7.0, .v2 = 117, .v3 = 6126 }));
    try testing.expectEqual(c.ret_D_Uc_Ui(), .{ .v1 = 7.0, .v2 = 117, .v3 = 6126 });
    try testing.expectOk(c.send_D_Uc_Ui());
}
pub export fn zig_recv_D_Uc_Ui(lv: c.D_Uc_Ui) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 117) return 2;
    if (lv.v3 != 6126) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63479:63499
// struct  D_Uc_Ul  {
//   double v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "D_Uc_Ul layout" {
    var lv: c.D_Uc_Ul = undefined;
    try testing.expectSize(c.D_Uc_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Uc_Ul C calls" {
    try testing.expectOk(c.recv_D_Uc_Ul(.{ .v1 = 4.5, .v2 = 55, .v3 = 11060 }));
    try testing.expectEqual(c.ret_D_Uc_Ul(), .{ .v1 = 4.5, .v2 = 55, .v3 = 11060 });
    try testing.expectOk(c.send_D_Uc_Ul());
}
pub export fn zig_recv_D_Uc_Ul(lv: c.D_Uc_Ul) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 55) return 2;
    if (lv.v3 != 11060) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63504:63524
// struct  D_Uc_Us  {
//   double v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "D_Uc_Us layout" {
    var lv: c.D_Uc_Us = undefined;
    try testing.expectSize(c.D_Uc_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_Uc_Us C calls" {
    try testing.expectOk(c.recv_D_Uc_Us(.{ .v1 = -2.125, .v2 = 120, .v3 = 26 }));
    try testing.expectEqual(c.ret_D_Uc_Us(), .{ .v1 = -2.125, .v2 = 120, .v3 = 26 });
    try testing.expectOk(c.send_D_Uc_Us());
}
pub export fn zig_recv_D_Uc_Us(lv: c.D_Uc_Us) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 120) return 2;
    if (lv.v3 != 26) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63529:63549
// struct  D_Uc_Vp  {
//   double v1;
//   unsigned char v2;
//   void *v3;
// };

test "D_Uc_Vp layout" {
    var lv: c.D_Uc_Vp = undefined;
    try testing.expectSize(c.D_Uc_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Uc_Vp C calls" {
    try testing.expectOk(c.recv_D_Uc_Vp(.{ .v1 = -0.25, .v2 = 32, .v3 = null }));
    try testing.expectEqual(c.ret_D_Uc_Vp(), .{ .v1 = -0.25, .v2 = 32, .v3 = null });
    try testing.expectOk(c.send_D_Uc_Vp());
}
pub export fn zig_recv_D_Uc_Vp(lv: c.D_Uc_Vp) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 32) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:63554:63572
// struct  D_Ui  {
//   double v1;
//   unsigned int v2;
// };

test "D_Ui layout" {
    var lv: c.D_Ui = undefined;
    try testing.expectSize(c.D_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_Ui C calls" {
    try testing.expectOk(c.recv_D_Ui(.{ .v1 = 4.5, .v2 = 5341 }));
    try testing.expectEqual(c.ret_D_Ui(), .{ .v1 = 4.5, .v2 = 5341 });
    try testing.expectOk(c.send_D_Ui());
}
pub export fn zig_recv_D_Ui(lv: c.D_Ui) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 5341) return 2;
    return 0;
}

// From T_Snnn_xaw.c:64301:64321
// struct  D_Ui_C  {
//   double v1;
//   unsigned int v2;
//   char v3;
// };

test "D_Ui_C layout" {
    var lv: c.D_Ui_C = undefined;
    try testing.expectSize(c.D_Ui_C, 16);
    try testing.expectAlign(c.D_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Ui_C C calls" {
    try testing.expectOk(c.recv_D_Ui_C(.{ .v1 = 4.5, .v2 = 7695, .v3 = 95 }));
    try testing.expectEqual(c.ret_D_Ui_C(), .{ .v1 = 4.5, .v2 = 7695, .v3 = 95 });
    try testing.expectOk(c.send_D_Ui_C());
}
pub export fn zig_recv_D_Ui_C(lv: c.D_Ui_C) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 7695) return 2;
    if (lv.v3 != 95) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64326:64346
// struct  D_Ui_D  {
//   double v1;
//   unsigned int v2;
//   double v3;
// };

test "D_Ui_D layout" {
    var lv: c.D_Ui_D = undefined;
    try testing.expectSize(c.D_Ui_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ui_D C calls" {
    try testing.expectOk(c.recv_D_Ui_D(.{ .v1 = 1.0, .v2 = 9641, .v3 = 0.875 }));
    try testing.expectEqual(c.ret_D_Ui_D(), .{ .v1 = 1.0, .v2 = 9641, .v3 = 0.875 });
    try testing.expectOk(c.send_D_Ui_D());
}
pub export fn zig_recv_D_Ui_D(lv: c.D_Ui_D) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 9641) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64351:64371
// struct  D_Ui_F  {
//   double v1;
//   unsigned int v2;
//   float v3;
// };

test "D_Ui_F layout" {
    var lv: c.D_Ui_F = undefined;
    try testing.expectSize(c.D_Ui_F, 16);
    try testing.expectAlign(c.D_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Ui_F C calls" {
    try testing.expectOk(c.recv_D_Ui_F(.{ .v1 = 4.5, .v2 = 20010, .v3 = -2.125 }));
    try testing.expectEqual(c.ret_D_Ui_F(), .{ .v1 = 4.5, .v2 = 20010, .v3 = -2.125 });
    try testing.expectOk(c.send_D_Ui_F());
}
pub export fn zig_recv_D_Ui_F(lv: c.D_Ui_F) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 20010) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64376:64396
// struct  D_Ui_I  {
//   double v1;
//   unsigned int v2;
//   int v3;
// };

test "D_Ui_I layout" {
    var lv: c.D_Ui_I = undefined;
    try testing.expectSize(c.D_Ui_I, 16);
    try testing.expectAlign(c.D_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Ui_I C calls" {
    try testing.expectOk(c.recv_D_Ui_I(.{ .v1 = -0.25, .v2 = 24900, .v3 = 31103 }));
    try testing.expectEqual(c.ret_D_Ui_I(), .{ .v1 = -0.25, .v2 = 24900, .v3 = 31103 });
    try testing.expectOk(c.send_D_Ui_I());
}
pub export fn zig_recv_D_Ui_I(lv: c.D_Ui_I) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 24900) return 2;
    if (lv.v3 != 31103) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64401:64421
// struct  D_Ui_Ip  {
//   double v1;
//   unsigned int v2;
//   int *v3;
// };

test "D_Ui_Ip layout" {
    var lv: c.D_Ui_Ip = undefined;
    try testing.expectSize(c.D_Ui_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ui_Ip C calls" {
    try testing.expectOk(c.recv_D_Ui_Ip(.{ .v1 = 4.5, .v2 = 20869, .v3 = null }));
    try testing.expectEqual(c.ret_D_Ui_Ip(), .{ .v1 = 4.5, .v2 = 20869, .v3 = null });
    try testing.expectOk(c.send_D_Ui_Ip());
}
pub export fn zig_recv_D_Ui_Ip(lv: c.D_Ui_Ip) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 20869) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64426:64446
// struct  D_Ui_L  {
//   double v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "D_Ui_L layout" {
    var lv: c.D_Ui_L = undefined;
    try testing.expectSize(c.D_Ui_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ui_L C calls" {
    try testing.expectOk(c.recv_D_Ui_L(.{ .v1 = 7.0, .v2 = 31648, .v3 = 6157 }));
    try testing.expectEqual(c.ret_D_Ui_L(), .{ .v1 = 7.0, .v2 = 31648, .v3 = 6157 });
    try testing.expectOk(c.send_D_Ui_L());
}
pub export fn zig_recv_D_Ui_L(lv: c.D_Ui_L) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 31648) return 2;
    if (lv.v3 != 6157) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64451:64471
// struct  D_Ui_S  {
//   double v1;
//   unsigned int v2;
//   short v3;
// };

test "D_Ui_S layout" {
    var lv: c.D_Ui_S = undefined;
    try testing.expectSize(c.D_Ui_S, 16);
    try testing.expectAlign(c.D_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Ui_S C calls" {
    try testing.expectOk(c.recv_D_Ui_S(.{ .v1 = 4.5, .v2 = 13194, .v3 = 2768 }));
    try testing.expectEqual(c.ret_D_Ui_S(), .{ .v1 = 4.5, .v2 = 13194, .v3 = 2768 });
    try testing.expectOk(c.send_D_Ui_S());
}
pub export fn zig_recv_D_Ui_S(lv: c.D_Ui_S) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 13194) return 2;
    if (lv.v3 != 2768) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64476:64496
// struct  D_Ui_Uc  {
//   double v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "D_Ui_Uc layout" {
    var lv: c.D_Ui_Uc = undefined;
    try testing.expectSize(c.D_Ui_Uc, 16);
    try testing.expectAlign(c.D_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Ui_Uc C calls" {
    try testing.expectOk(c.recv_D_Ui_Uc(.{ .v1 = -2.125, .v2 = 17150, .v3 = 60 }));
    try testing.expectEqual(c.ret_D_Ui_Uc(), .{ .v1 = -2.125, .v2 = 17150, .v3 = 60 });
    try testing.expectOk(c.send_D_Ui_Uc());
}
pub export fn zig_recv_D_Ui_Uc(lv: c.D_Ui_Uc) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 17150) return 2;
    if (lv.v3 != 60) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64501:64521
// struct  D_Ui_Ui  {
//   double v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "D_Ui_Ui layout" {
    var lv: c.D_Ui_Ui = undefined;
    try testing.expectSize(c.D_Ui_Ui, 16);
    try testing.expectAlign(c.D_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Ui_Ui C calls" {
    try testing.expectOk(c.recv_D_Ui_Ui(.{ .v1 = 0.5, .v2 = 25183, .v3 = 5118 }));
    try testing.expectEqual(c.ret_D_Ui_Ui(), .{ .v1 = 0.5, .v2 = 25183, .v3 = 5118 });
    try testing.expectOk(c.send_D_Ui_Ui());
}
pub export fn zig_recv_D_Ui_Ui(lv: c.D_Ui_Ui) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 25183) return 2;
    if (lv.v3 != 5118) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64526:64546
// struct  D_Ui_Ul  {
//   double v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "D_Ui_Ul layout" {
    var lv: c.D_Ui_Ul = undefined;
    try testing.expectSize(c.D_Ui_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ui_Ul C calls" {
    try testing.expectOk(c.recv_D_Ui_Ul(.{ .v1 = -0.25, .v2 = 14606, .v3 = 16268 }));
    try testing.expectEqual(c.ret_D_Ui_Ul(), .{ .v1 = -0.25, .v2 = 14606, .v3 = 16268 });
    try testing.expectOk(c.send_D_Ui_Ul());
}
pub export fn zig_recv_D_Ui_Ul(lv: c.D_Ui_Ul) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 14606) return 2;
    if (lv.v3 != 16268) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64551:64571
// struct  D_Ui_Us  {
//   double v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "D_Ui_Us layout" {
    var lv: c.D_Ui_Us = undefined;
    try testing.expectSize(c.D_Ui_Us, 16);
    try testing.expectAlign(c.D_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Ui_Us C calls" {
    try testing.expectOk(c.recv_D_Ui_Us(.{ .v1 = -0.25, .v2 = 5295, .v3 = 5718 }));
    try testing.expectEqual(c.ret_D_Ui_Us(), .{ .v1 = -0.25, .v2 = 5295, .v3 = 5718 });
    try testing.expectOk(c.send_D_Ui_Us());
}
pub export fn zig_recv_D_Ui_Us(lv: c.D_Ui_Us) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 5295) return 2;
    if (lv.v3 != 5718) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64576:64596
// struct  D_Ui_Vp  {
//   double v1;
//   unsigned int v2;
//   void *v3;
// };

test "D_Ui_Vp layout" {
    var lv: c.D_Ui_Vp = undefined;
    try testing.expectSize(c.D_Ui_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ui_Vp C calls" {
    try testing.expectOk(c.recv_D_Ui_Vp(.{ .v1 = -0.25, .v2 = 31290, .v3 = null }));
    try testing.expectEqual(c.ret_D_Ui_Vp(), .{ .v1 = -0.25, .v2 = 31290, .v3 = null });
    try testing.expectOk(c.send_D_Ui_Vp());
}
pub export fn zig_recv_D_Ui_Vp(lv: c.D_Ui_Vp) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 31290) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:64601:64619
// struct  D_Ul  {
//   double v1;
//   __tsu64 v2;
// };

test "D_Ul layout" {
    var lv: c.D_Ul = undefined;
    try testing.expectSize(c.D_Ul, 16);
    try testing.expectAlign(c.D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_Ul C calls" {
    try testing.expectOk(c.recv_D_Ul(.{ .v1 = 0.875, .v2 = 8168 }));
    try testing.expectEqual(c.ret_D_Ul(), .{ .v1 = 0.875, .v2 = 8168 });
    try testing.expectOk(c.send_D_Ul());
}
pub export fn zig_recv_D_Ul(lv: c.D_Ul) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 8168) return 2;
    return 0;
}

// From T_Snnn_xaw.c:65348:65368
// struct  D_Ul_C  {
//   double v1;
//   __tsu64 v2;
//   char v3;
// };

test "D_Ul_C layout" {
    var lv: c.D_Ul_C = undefined;
    try testing.expectSize(c.D_Ul_C, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_C C calls" {
    try testing.expectOk(c.recv_D_Ul_C(.{ .v1 = 0.875, .v2 = 27350, .v3 = 87 }));
    try testing.expectEqual(c.ret_D_Ul_C(), .{ .v1 = 0.875, .v2 = 27350, .v3 = 87 });
    try testing.expectOk(c.send_D_Ul_C());
}
pub export fn zig_recv_D_Ul_C(lv: c.D_Ul_C) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 27350) return 2;
    if (lv.v3 != 87) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65373:65393
// struct  D_Ul_D  {
//   double v1;
//   __tsu64 v2;
//   double v3;
// };

test "D_Ul_D layout" {
    var lv: c.D_Ul_D = undefined;
    try testing.expectSize(c.D_Ul_D, 24);
    try testing.expectAlign(c.D_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_D C calls" {
    try testing.expectOk(c.recv_D_Ul_D(.{ .v1 = 4.5, .v2 = 587, .v3 = -0.25 }));
    try testing.expectEqual(c.ret_D_Ul_D(), .{ .v1 = 4.5, .v2 = 587, .v3 = -0.25 });
    try testing.expectOk(c.send_D_Ul_D());
}
pub export fn zig_recv_D_Ul_D(lv: c.D_Ul_D) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 587) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65398:65418
// struct  D_Ul_F  {
//   double v1;
//   __tsu64 v2;
//   float v3;
// };

test "D_Ul_F layout" {
    var lv: c.D_Ul_F = undefined;
    try testing.expectSize(c.D_Ul_F, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_F C calls" {
    try testing.expectOk(c.recv_D_Ul_F(.{ .v1 = -2.125, .v2 = 28666, .v3 = -2.125 }));
    try testing.expectEqual(c.ret_D_Ul_F(), .{ .v1 = -2.125, .v2 = 28666, .v3 = -2.125 });
    try testing.expectOk(c.send_D_Ul_F());
}
pub export fn zig_recv_D_Ul_F(lv: c.D_Ul_F) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 28666) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65423:65443
// struct  D_Ul_I  {
//   double v1;
//   __tsu64 v2;
//   int v3;
// };

test "D_Ul_I layout" {
    var lv: c.D_Ul_I = undefined;
    try testing.expectSize(c.D_Ul_I, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_I C calls" {
    try testing.expectOk(c.recv_D_Ul_I(.{ .v1 = 7.0, .v2 = 17316, .v3 = 27169 }));
    try testing.expectEqual(c.ret_D_Ul_I(), .{ .v1 = 7.0, .v2 = 17316, .v3 = 27169 });
    try testing.expectOk(c.send_D_Ul_I());
}
pub export fn zig_recv_D_Ul_I(lv: c.D_Ul_I) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 17316) return 2;
    if (lv.v3 != 27169) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65448:65468
// struct  D_Ul_Ip  {
//   double v1;
//   __tsu64 v2;
//   int *v3;
// };

test "D_Ul_Ip layout" {
    var lv: c.D_Ul_Ip = undefined;
    try testing.expectSize(c.D_Ul_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_Ip C calls" {
    try testing.expectOk(c.recv_D_Ul_Ip(.{ .v1 = 4.5, .v2 = 30080, .v3 = null }));
    try testing.expectEqual(c.ret_D_Ul_Ip(), .{ .v1 = 4.5, .v2 = 30080, .v3 = null });
    try testing.expectOk(c.send_D_Ul_Ip());
}
pub export fn zig_recv_D_Ul_Ip(lv: c.D_Ul_Ip) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 30080) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65473:65493
// struct  D_Ul_L  {
//   double v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "D_Ul_L layout" {
    var lv: c.D_Ul_L = undefined;
    try testing.expectSize(c.D_Ul_L, 24);
    try testing.expectAlign(c.D_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_L C calls" {
    try testing.expectOk(c.recv_D_Ul_L(.{ .v1 = -2.125, .v2 = 2358, .v3 = 13997 }));
    try testing.expectEqual(c.ret_D_Ul_L(), .{ .v1 = -2.125, .v2 = 2358, .v3 = 13997 });
    try testing.expectOk(c.send_D_Ul_L());
}
pub export fn zig_recv_D_Ul_L(lv: c.D_Ul_L) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 2358) return 2;
    if (lv.v3 != 13997) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65498:65518
// struct  D_Ul_S  {
//   double v1;
//   __tsu64 v2;
//   short v3;
// };

test "D_Ul_S layout" {
    var lv: c.D_Ul_S = undefined;
    try testing.expectSize(c.D_Ul_S, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_S C calls" {
    try testing.expectOk(c.recv_D_Ul_S(.{ .v1 = 0.875, .v2 = 8874, .v3 = 15227 }));
    try testing.expectEqual(c.ret_D_Ul_S(), .{ .v1 = 0.875, .v2 = 8874, .v3 = 15227 });
    try testing.expectOk(c.send_D_Ul_S());
}
pub export fn zig_recv_D_Ul_S(lv: c.D_Ul_S) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 8874) return 2;
    if (lv.v3 != 15227) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65523:65543
// struct  D_Ul_Uc  {
//   double v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "D_Ul_Uc layout" {
    var lv: c.D_Ul_Uc = undefined;
    try testing.expectSize(c.D_Ul_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_Uc C calls" {
    try testing.expectOk(c.recv_D_Ul_Uc(.{ .v1 = 0.875, .v2 = 28411, .v3 = 19 }));
    try testing.expectEqual(c.ret_D_Ul_Uc(), .{ .v1 = 0.875, .v2 = 28411, .v3 = 19 });
    try testing.expectOk(c.send_D_Ul_Uc());
}
pub export fn zig_recv_D_Ul_Uc(lv: c.D_Ul_Uc) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 28411) return 2;
    if (lv.v3 != 19) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65548:65568
// struct  D_Ul_Ui  {
//   double v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "D_Ul_Ui layout" {
    var lv: c.D_Ul_Ui = undefined;
    try testing.expectSize(c.D_Ul_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_Ui C calls" {
    try testing.expectOk(c.recv_D_Ul_Ui(.{ .v1 = 0.875, .v2 = 18969, .v3 = 19676 }));
    try testing.expectEqual(c.ret_D_Ul_Ui(), .{ .v1 = 0.875, .v2 = 18969, .v3 = 19676 });
    try testing.expectOk(c.send_D_Ul_Ui());
}
pub export fn zig_recv_D_Ul_Ui(lv: c.D_Ul_Ui) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 18969) return 2;
    if (lv.v3 != 19676) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65573:65593
// struct  D_Ul_Ul  {
//   double v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "D_Ul_Ul layout" {
    var lv: c.D_Ul_Ul = undefined;
    try testing.expectSize(c.D_Ul_Ul, 24);
    try testing.expectAlign(c.D_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_Ul C calls" {
    try testing.expectOk(c.recv_D_Ul_Ul(.{ .v1 = 0.875, .v2 = 30271, .v3 = 30455 }));
    try testing.expectEqual(c.ret_D_Ul_Ul(), .{ .v1 = 0.875, .v2 = 30271, .v3 = 30455 });
    try testing.expectOk(c.send_D_Ul_Ul());
}
pub export fn zig_recv_D_Ul_Ul(lv: c.D_Ul_Ul) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 30271) return 2;
    if (lv.v3 != 30455) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65598:65618
// struct  D_Ul_Us  {
//   double v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "D_Ul_Us layout" {
    var lv: c.D_Ul_Us = undefined;
    try testing.expectSize(c.D_Ul_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_Us C calls" {
    try testing.expectOk(c.recv_D_Ul_Us(.{ .v1 = 4.5, .v2 = 27872, .v3 = 13199 }));
    try testing.expectEqual(c.ret_D_Ul_Us(), .{ .v1 = 4.5, .v2 = 27872, .v3 = 13199 });
    try testing.expectOk(c.send_D_Ul_Us());
}
pub export fn zig_recv_D_Ul_Us(lv: c.D_Ul_Us) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 27872) return 2;
    if (lv.v3 != 13199) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65623:65643
// struct  D_Ul_Vp  {
//   double v1;
//   __tsu64 v2;
//   void *v3;
// };

test "D_Ul_Vp layout" {
    var lv: c.D_Ul_Vp = undefined;
    try testing.expectSize(c.D_Ul_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_Vp C calls" {
    try testing.expectOk(c.recv_D_Ul_Vp(.{ .v1 = 1.0, .v2 = 12549, .v3 = null }));
    try testing.expectEqual(c.ret_D_Ul_Vp(), .{ .v1 = 1.0, .v2 = 12549, .v3 = null });
    try testing.expectOk(c.send_D_Ul_Vp());
}
pub export fn zig_recv_D_Ul_Vp(lv: c.D_Ul_Vp) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 12549) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:65648:65666
// struct  D_Us  {
//   double v1;
//   unsigned short v2;
// };

test "D_Us layout" {
    var lv: c.D_Us = undefined;
    try testing.expectSize(c.D_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_Us C calls" {
    try testing.expectOk(c.recv_D_Us(.{ .v1 = 0.875, .v2 = 12975 }));
    try testing.expectEqual(c.ret_D_Us(), .{ .v1 = 0.875, .v2 = 12975 });
    try testing.expectOk(c.send_D_Us());
}
pub export fn zig_recv_D_Us(lv: c.D_Us) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 12975) return 2;
    return 0;
}

// From T_Snnn_xaw.c:66395:66415
// struct  D_Us_C  {
//   double v1;
//   unsigned short v2;
//   char v3;
// };

test "D_Us_C layout" {
    var lv: c.D_Us_C = undefined;
    try testing.expectSize(c.D_Us_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_Us_C C calls" {
    try testing.expectOk(c.recv_D_Us_C(.{ .v1 = 0.875, .v2 = 17159, .v3 = 57 }));
    try testing.expectEqual(c.ret_D_Us_C(), .{ .v1 = 0.875, .v2 = 17159, .v3 = 57 });
    try testing.expectOk(c.send_D_Us_C());
}
pub export fn zig_recv_D_Us_C(lv: c.D_Us_C) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 17159) return 2;
    if (lv.v3 != 57) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66420:66440
// struct  D_Us_D  {
//   double v1;
//   unsigned short v2;
//   double v3;
// };

test "D_Us_D layout" {
    var lv: c.D_Us_D = undefined;
    try testing.expectSize(c.D_Us_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Us_D C calls" {
    try testing.expectOk(c.recv_D_Us_D(.{ .v1 = 4.5, .v2 = 11426, .v3 = 0.5 }));
    try testing.expectEqual(c.ret_D_Us_D(), .{ .v1 = 4.5, .v2 = 11426, .v3 = 0.5 });
    try testing.expectOk(c.send_D_Us_D());
}
pub export fn zig_recv_D_Us_D(lv: c.D_Us_D) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 11426) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66445:66465
// struct  D_Us_F  {
//   double v1;
//   unsigned short v2;
//   float v3;
// };

test "D_Us_F layout" {
    var lv: c.D_Us_F = undefined;
    try testing.expectSize(c.D_Us_F, 16);
    try testing.expectAlign(c.D_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Us_F C calls" {
    try testing.expectOk(c.recv_D_Us_F(.{ .v1 = 1.0, .v2 = 4636, .v3 = 0.875 }));
    try testing.expectEqual(c.ret_D_Us_F(), .{ .v1 = 1.0, .v2 = 4636, .v3 = 0.875 });
    try testing.expectOk(c.send_D_Us_F());
}
pub export fn zig_recv_D_Us_F(lv: c.D_Us_F) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 4636) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66470:66490
// struct  D_Us_I  {
//   double v1;
//   unsigned short v2;
//   int v3;
// };

test "D_Us_I layout" {
    var lv: c.D_Us_I = undefined;
    try testing.expectSize(c.D_Us_I, 16);
    try testing.expectAlign(c.D_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Us_I C calls" {
    try testing.expectOk(c.recv_D_Us_I(.{ .v1 = -0.25, .v2 = 24377, .v3 = 30464 }));
    try testing.expectEqual(c.ret_D_Us_I(), .{ .v1 = -0.25, .v2 = 24377, .v3 = 30464 });
    try testing.expectOk(c.send_D_Us_I());
}
pub export fn zig_recv_D_Us_I(lv: c.D_Us_I) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 24377) return 2;
    if (lv.v3 != 30464) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66495:66515
// struct  D_Us_Ip  {
//   double v1;
//   unsigned short v2;
//   int *v3;
// };

test "D_Us_Ip layout" {
    var lv: c.D_Us_Ip = undefined;
    try testing.expectSize(c.D_Us_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Us_Ip C calls" {
    try testing.expectOk(c.recv_D_Us_Ip(.{ .v1 = 7.0, .v2 = 8479, .v3 = null }));
    try testing.expectEqual(c.ret_D_Us_Ip(), .{ .v1 = 7.0, .v2 = 8479, .v3 = null });
    try testing.expectOk(c.send_D_Us_Ip());
}
pub export fn zig_recv_D_Us_Ip(lv: c.D_Us_Ip) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 8479) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66520:66540
// struct  D_Us_L  {
//   double v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "D_Us_L layout" {
    var lv: c.D_Us_L = undefined;
    try testing.expectSize(c.D_Us_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Us_L C calls" {
    try testing.expectOk(c.recv_D_Us_L(.{ .v1 = -2.125, .v2 = 15583, .v3 = 10458 }));
    try testing.expectEqual(c.ret_D_Us_L(), .{ .v1 = -2.125, .v2 = 15583, .v3 = 10458 });
    try testing.expectOk(c.send_D_Us_L());
}
pub export fn zig_recv_D_Us_L(lv: c.D_Us_L) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 15583) return 2;
    if (lv.v3 != 10458) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66545:66565
// struct  D_Us_S  {
//   double v1;
//   unsigned short v2;
//   short v3;
// };

test "D_Us_S layout" {
    var lv: c.D_Us_S = undefined;
    try testing.expectSize(c.D_Us_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_Us_S C calls" {
    try testing.expectOk(c.recv_D_Us_S(.{ .v1 = 7.0, .v2 = 18238, .v3 = 13155 }));
    try testing.expectEqual(c.ret_D_Us_S(), .{ .v1 = 7.0, .v2 = 18238, .v3 = 13155 });
    try testing.expectOk(c.send_D_Us_S());
}
pub export fn zig_recv_D_Us_S(lv: c.D_Us_S) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 18238) return 2;
    if (lv.v3 != 13155) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66570:66590
// struct  D_Us_Uc  {
//   double v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "D_Us_Uc layout" {
    var lv: c.D_Us_Uc = undefined;
    try testing.expectSize(c.D_Us_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_Us_Uc C calls" {
    try testing.expectOk(c.recv_D_Us_Uc(.{ .v1 = 7.0, .v2 = 21067, .v3 = 10 }));
    try testing.expectEqual(c.ret_D_Us_Uc(), .{ .v1 = 7.0, .v2 = 21067, .v3 = 10 });
    try testing.expectOk(c.send_D_Us_Uc());
}
pub export fn zig_recv_D_Us_Uc(lv: c.D_Us_Uc) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 21067) return 2;
    if (lv.v3 != 10) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66595:66615
// struct  D_Us_Ui  {
//   double v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "D_Us_Ui layout" {
    var lv: c.D_Us_Ui = undefined;
    try testing.expectSize(c.D_Us_Ui, 16);
    try testing.expectAlign(c.D_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Us_Ui C calls" {
    try testing.expectOk(c.recv_D_Us_Ui(.{ .v1 = 7.0, .v2 = 28382, .v3 = 27699 }));
    try testing.expectEqual(c.ret_D_Us_Ui(), .{ .v1 = 7.0, .v2 = 28382, .v3 = 27699 });
    try testing.expectOk(c.send_D_Us_Ui());
}
pub export fn zig_recv_D_Us_Ui(lv: c.D_Us_Ui) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 28382) return 2;
    if (lv.v3 != 27699) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66620:66640
// struct  D_Us_Ul  {
//   double v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "D_Us_Ul layout" {
    var lv: c.D_Us_Ul = undefined;
    try testing.expectSize(c.D_Us_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Us_Ul C calls" {
    try testing.expectOk(c.recv_D_Us_Ul(.{ .v1 = 4.5, .v2 = 14224, .v3 = 23309 }));
    try testing.expectEqual(c.ret_D_Us_Ul(), .{ .v1 = 4.5, .v2 = 14224, .v3 = 23309 });
    try testing.expectOk(c.send_D_Us_Ul());
}
pub export fn zig_recv_D_Us_Ul(lv: c.D_Us_Ul) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 14224) return 2;
    if (lv.v3 != 23309) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66645:66665
// struct  D_Us_Us  {
//   double v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "D_Us_Us layout" {
    var lv: c.D_Us_Us = undefined;
    try testing.expectSize(c.D_Us_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_Us_Us C calls" {
    try testing.expectOk(c.recv_D_Us_Us(.{ .v1 = 0.5, .v2 = 21806, .v3 = 21300 }));
    try testing.expectEqual(c.ret_D_Us_Us(), .{ .v1 = 0.5, .v2 = 21806, .v3 = 21300 });
    try testing.expectOk(c.send_D_Us_Us());
}
pub export fn zig_recv_D_Us_Us(lv: c.D_Us_Us) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 21806) return 2;
    if (lv.v3 != 21300) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66670:66690
// struct  D_Us_Vp  {
//   double v1;
//   unsigned short v2;
//   void *v3;
// };

test "D_Us_Vp layout" {
    var lv: c.D_Us_Vp = undefined;
    try testing.expectSize(c.D_Us_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Us_Vp C calls" {
    try testing.expectOk(c.recv_D_Us_Vp(.{ .v1 = 1.0, .v2 = 5932, .v3 = null }));
    try testing.expectEqual(c.ret_D_Us_Vp(), .{ .v1 = 1.0, .v2 = 5932, .v3 = null });
    try testing.expectOk(c.send_D_Us_Vp());
}
pub export fn zig_recv_D_Us_Vp(lv: c.D_Us_Vp) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 5932) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:66695:66713
// struct  D_Vp  {
//   double v1;
//   void *v2;
// };

test "D_Vp layout" {
    var lv: c.D_Vp = undefined;
    try testing.expectSize(c.D_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_Vp C calls" {
    try testing.expectOk(c.recv_D_Vp(.{ .v1 = 0.875, .v2 = null }));
    try testing.expectEqual(c.ret_D_Vp(), .{ .v1 = 0.875, .v2 = null });
    try testing.expectOk(c.send_D_Vp());
}
pub export fn zig_recv_D_Vp(lv: c.D_Vp) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != null) return 2;
    return 0;
}

// From T_Snnn_xaw.c:67442:67462
// struct  D_Vp_C  {
//   double v1;
//   void *v2;
//   char v3;
// };

test "D_Vp_C layout" {
    var lv: c.D_Vp_C = undefined;
    try testing.expectSize(c.D_Vp_C, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_C C calls" {
    try testing.expectOk(c.recv_D_Vp_C(.{ .v1 = -2.125, .v2 = null, .v3 = 20 }));
    try testing.expectEqual(c.ret_D_Vp_C(), .{ .v1 = -2.125, .v2 = null, .v3 = 20 });
    try testing.expectOk(c.send_D_Vp_C());
}
pub export fn zig_recv_D_Vp_C(lv: c.D_Vp_C) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 20) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67467:67487
// struct  D_Vp_D  {
//   double v1;
//   void *v2;
//   double v3;
// };

test "D_Vp_D layout" {
    var lv: c.D_Vp_D = undefined;
    try testing.expectSize(c.D_Vp_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_D C calls" {
    try testing.expectOk(c.recv_D_Vp_D(.{ .v1 = 7.0, .v2 = null, .v3 = 4.5 }));
    try testing.expectEqual(c.ret_D_Vp_D(), .{ .v1 = 7.0, .v2 = null, .v3 = 4.5 });
    try testing.expectOk(c.send_D_Vp_D());
}
pub export fn zig_recv_D_Vp_D(lv: c.D_Vp_D) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67492:67512
// struct  D_Vp_F  {
//   double v1;
//   void *v2;
//   float v3;
// };

test "D_Vp_F layout" {
    var lv: c.D_Vp_F = undefined;
    try testing.expectSize(c.D_Vp_F, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_F C calls" {
    try testing.expectOk(c.recv_D_Vp_F(.{ .v1 = 4.5, .v2 = null, .v3 = 4.5 }));
    try testing.expectEqual(c.ret_D_Vp_F(), .{ .v1 = 4.5, .v2 = null, .v3 = 4.5 });
    try testing.expectOk(c.send_D_Vp_F());
}
pub export fn zig_recv_D_Vp_F(lv: c.D_Vp_F) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67517:67537
// struct  D_Vp_I  {
//   double v1;
//   void *v2;
//   int v3;
// };

test "D_Vp_I layout" {
    var lv: c.D_Vp_I = undefined;
    try testing.expectSize(c.D_Vp_I, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_I C calls" {
    try testing.expectOk(c.recv_D_Vp_I(.{ .v1 = 4.5, .v2 = null, .v3 = 16435 }));
    try testing.expectEqual(c.ret_D_Vp_I(), .{ .v1 = 4.5, .v2 = null, .v3 = 16435 });
    try testing.expectOk(c.send_D_Vp_I());
}
pub export fn zig_recv_D_Vp_I(lv: c.D_Vp_I) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 16435) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67542:67562
// struct  D_Vp_Ip  {
//   double v1;
//   void *v2;
//   int *v3;
// };

test "D_Vp_Ip layout" {
    var lv: c.D_Vp_Ip = undefined;
    try testing.expectSize(c.D_Vp_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_Ip C calls" {
    try testing.expectOk(c.recv_D_Vp_Ip(.{ .v1 = 7.0, .v2 = null, .v3 = null }));
    try testing.expectEqual(c.ret_D_Vp_Ip(), .{ .v1 = 7.0, .v2 = null, .v3 = null });
    try testing.expectOk(c.send_D_Vp_Ip());
}
pub export fn zig_recv_D_Vp_Ip(lv: c.D_Vp_Ip) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67567:67587
// struct  D_Vp_L  {
//   double v1;
//   void *v2;
//   __tsi64 v3;
// };

test "D_Vp_L layout" {
    var lv: c.D_Vp_L = undefined;
    try testing.expectSize(c.D_Vp_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_L C calls" {
    try testing.expectOk(c.recv_D_Vp_L(.{ .v1 = 7.0, .v2 = null, .v3 = 32159 }));
    try testing.expectEqual(c.ret_D_Vp_L(), .{ .v1 = 7.0, .v2 = null, .v3 = 32159 });
    try testing.expectOk(c.send_D_Vp_L());
}
pub export fn zig_recv_D_Vp_L(lv: c.D_Vp_L) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 32159) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67592:67612
// struct  D_Vp_S  {
//   double v1;
//   void *v2;
//   short v3;
// };

test "D_Vp_S layout" {
    var lv: c.D_Vp_S = undefined;
    try testing.expectSize(c.D_Vp_S, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_S C calls" {
    try testing.expectOk(c.recv_D_Vp_S(.{ .v1 = 7.0, .v2 = null, .v3 = 4705 }));
    try testing.expectEqual(c.ret_D_Vp_S(), .{ .v1 = 7.0, .v2 = null, .v3 = 4705 });
    try testing.expectOk(c.send_D_Vp_S());
}
pub export fn zig_recv_D_Vp_S(lv: c.D_Vp_S) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 4705) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67617:67637
// struct  D_Vp_Uc  {
//   double v1;
//   void *v2;
//   unsigned char v3;
// };

test "D_Vp_Uc layout" {
    var lv: c.D_Vp_Uc = undefined;
    try testing.expectSize(c.D_Vp_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_Uc C calls" {
    try testing.expectOk(c.recv_D_Vp_Uc(.{ .v1 = -2.125, .v2 = null, .v3 = 66 }));
    try testing.expectEqual(c.ret_D_Vp_Uc(), .{ .v1 = -2.125, .v2 = null, .v3 = 66 });
    try testing.expectOk(c.send_D_Vp_Uc());
}
pub export fn zig_recv_D_Vp_Uc(lv: c.D_Vp_Uc) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 66) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67642:67662
// struct  D_Vp_Ui  {
//   double v1;
//   void *v2;
//   unsigned int v3;
// };

test "D_Vp_Ui layout" {
    var lv: c.D_Vp_Ui = undefined;
    try testing.expectSize(c.D_Vp_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_Ui C calls" {
    try testing.expectOk(c.recv_D_Vp_Ui(.{ .v1 = 1.0, .v2 = null, .v3 = 21260 }));
    try testing.expectEqual(c.ret_D_Vp_Ui(), .{ .v1 = 1.0, .v2 = null, .v3 = 21260 });
    try testing.expectOk(c.send_D_Vp_Ui());
}
pub export fn zig_recv_D_Vp_Ui(lv: c.D_Vp_Ui) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 21260) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67667:67687
// struct  D_Vp_Ul  {
//   double v1;
//   void *v2;
//   __tsu64 v3;
// };

test "D_Vp_Ul layout" {
    var lv: c.D_Vp_Ul = undefined;
    try testing.expectSize(c.D_Vp_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_Ul C calls" {
    try testing.expectOk(c.recv_D_Vp_Ul(.{ .v1 = -2.125, .v2 = null, .v3 = 14614 }));
    try testing.expectEqual(c.ret_D_Vp_Ul(), .{ .v1 = -2.125, .v2 = null, .v3 = 14614 });
    try testing.expectOk(c.send_D_Vp_Ul());
}
pub export fn zig_recv_D_Vp_Ul(lv: c.D_Vp_Ul) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 14614) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67692:67712
// struct  D_Vp_Us  {
//   double v1;
//   void *v2;
//   unsigned short v3;
// };

test "D_Vp_Us layout" {
    var lv: c.D_Vp_Us = undefined;
    try testing.expectSize(c.D_Vp_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_Us C calls" {
    try testing.expectOk(c.recv_D_Vp_Us(.{ .v1 = 1.0, .v2 = null, .v3 = 19406 }));
    try testing.expectEqual(c.ret_D_Vp_Us(), .{ .v1 = 1.0, .v2 = null, .v3 = 19406 });
    try testing.expectOk(c.send_D_Vp_Us());
}
pub export fn zig_recv_D_Vp_Us(lv: c.D_Vp_Us) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 19406) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67717:67737
// struct  D_Vp_Vp  {
//   double v1;
//   void *v2;
//   void *v3;
// };

test "D_Vp_Vp layout" {
    var lv: c.D_Vp_Vp = undefined;
    try testing.expectSize(c.D_Vp_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_Vp C calls" {
    try testing.expectOk(c.recv_D_Vp_Vp(.{ .v1 = 0.875, .v2 = null, .v3 = null }));
    try testing.expectEqual(c.ret_D_Vp_Vp(), .{ .v1 = 0.875, .v2 = null, .v3 = null });
    try testing.expectOk(c.send_D_Vp_Vp());
}
pub export fn zig_recv_D_Vp_Vp(lv: c.D_Vp_Vp) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}

// From T_Snnn_xaw.c:67742:67758
// struct  F  {
//   float v1;
// };

test "F layout" {
    var lv: c.F = undefined;
    try testing.expectSize(c.F, 4);
    try testing.expectAlign(c.F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "F C calls" {
    try testing.expectOk(c.recv_F(.{ .v1 = 4.5 }));
    try testing.expectEqual(c.ret_F(), .{ .v1 = 4.5 });
    try testing.expectOk(c.send_F());
}
pub export fn zig_recv_F(lv: c.F) c_int {
    if (lv.v1 != 4.5) return 1;
    return 0;
}
