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
    try testing.expectEqual(c.ret_C_C(), .{ .v1 = 93, .v2 = 58 });
    try testing.expectOk(c.assert_ret_C_C());
    try testing.expectOk(c.send_C_C());
    try testing.expectOk(c.assert_C_C(.{ .v1 = 93, .v2 = 58 }));
}
pub export fn zig_assert_C_C(lv: c.C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 93) err = 1;
    if (lv.v2 != 58) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C() c.C_C {
    return .{ .v1 = 93, .v2 = 58 };
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
    try testing.expectEqual(c.ret_C_C_C(), .{ .v1 = 4, .v2 = 51, .v3 = 111 });
    try testing.expectOk(c.assert_ret_C_C_C());
    try testing.expectOk(c.send_C_C_C());
    try testing.expectOk(c.assert_C_C_C(.{ .v1 = 4, .v2 = 51, .v3 = 111 }));
}
pub export fn zig_assert_C_C_C(lv: c.C_C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4) err = 1;
    if (lv.v2 != 51) err = 2;
    if (lv.v3 != 111) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_C() c.C_C_C {
    return .{ .v1 = 4, .v2 = 51, .v3 = 111 };
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
    try testing.expectEqual(c.ret_C_C_D(), .{ .v1 = 88, .v2 = 39, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_C_C_D());
    try testing.expectOk(c.send_C_C_D());
    try testing.expectOk(c.assert_C_C_D(.{ .v1 = 88, .v2 = 39, .v3 = -2.125 }));
}
pub export fn zig_assert_C_C_D(lv: c.C_C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 88) err = 1;
    if (lv.v2 != 39) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_D() c.C_C_D {
    return .{ .v1 = 88, .v2 = 39, .v3 = -2.125 };
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
    try testing.expectEqual(c.ret_C_C_F(), .{ .v1 = 33, .v2 = 7, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_C_C_F());
    try testing.expectOk(c.send_C_C_F());
    try testing.expectOk(c.assert_C_C_F(.{ .v1 = 33, .v2 = 7, .v3 = -2.125 }));
}
pub export fn zig_assert_C_C_F(lv: c.C_C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 33) err = 1;
    if (lv.v2 != 7) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_F() c.C_C_F {
    return .{ .v1 = 33, .v2 = 7, .v3 = -2.125 };
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
    try testing.expectEqual(c.ret_C_C_I(), .{ .v1 = 13, .v2 = 54, .v3 = 29336 });
    try testing.expectOk(c.assert_ret_C_C_I());
    try testing.expectOk(c.send_C_C_I());
    try testing.expectOk(c.assert_C_C_I(.{ .v1 = 13, .v2 = 54, .v3 = 29336 }));
}
pub export fn zig_assert_C_C_I(lv: c.C_C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13) err = 1;
    if (lv.v2 != 54) err = 2;
    if (lv.v3 != 29336) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_I() c.C_C_I {
    return .{ .v1 = 13, .v2 = 54, .v3 = 29336 };
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
    try testing.expectEqual(c.ret_C_C_Ip(), .{ .v1 = 106, .v2 = 36, .v3 = null });
    try testing.expectOk(c.assert_ret_C_C_Ip());
    try testing.expectOk(c.send_C_C_Ip());
    try testing.expectOk(c.assert_C_C_Ip(.{ .v1 = 106, .v2 = 36, .v3 = null }));
}
pub export fn zig_assert_C_C_Ip(lv: c.C_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 106) err = 1;
    if (lv.v2 != 36) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_Ip() c.C_C_Ip {
    return .{ .v1 = 106, .v2 = 36, .v3 = null };
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
    try testing.expectEqual(c.ret_C_C_L(), .{ .v1 = 47, .v2 = 56, .v3 = 32374 });
    try testing.expectOk(c.assert_ret_C_C_L());
    try testing.expectOk(c.send_C_C_L());
    try testing.expectOk(c.assert_C_C_L(.{ .v1 = 47, .v2 = 56, .v3 = 32374 }));
}
pub export fn zig_assert_C_C_L(lv: c.C_C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 47) err = 1;
    if (lv.v2 != 56) err = 2;
    if (lv.v3 != 32374) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_L() c.C_C_L {
    return .{ .v1 = 47, .v2 = 56, .v3 = 32374 };
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
    try testing.expectEqual(c.ret_C_C_S(), .{ .v1 = 25, .v2 = 8, .v3 = 265 });
    try testing.expectOk(c.assert_ret_C_C_S());
    try testing.expectOk(c.send_C_C_S());
    try testing.expectOk(c.assert_C_C_S(.{ .v1 = 25, .v2 = 8, .v3 = 265 }));
}
pub export fn zig_assert_C_C_S(lv: c.C_C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25) err = 1;
    if (lv.v2 != 8) err = 2;
    if (lv.v3 != 265) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_S() c.C_C_S {
    return .{ .v1 = 25, .v2 = 8, .v3 = 265 };
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
    try testing.expectEqual(c.ret_C_C_Uc(), .{ .v1 = 38, .v2 = 42, .v3 = 110 });
    try testing.expectOk(c.assert_ret_C_C_Uc());
    try testing.expectOk(c.send_C_C_Uc());
    try testing.expectOk(c.assert_C_C_Uc(.{ .v1 = 38, .v2 = 42, .v3 = 110 }));
}
pub export fn zig_assert_C_C_Uc(lv: c.C_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 38) err = 1;
    if (lv.v2 != 42) err = 2;
    if (lv.v3 != 110) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_Uc() c.C_C_Uc {
    return .{ .v1 = 38, .v2 = 42, .v3 = 110 };
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
    try testing.expectEqual(c.ret_C_C_Ui(), .{ .v1 = 126, .v2 = 33, .v3 = 8231 });
    try testing.expectOk(c.assert_ret_C_C_Ui());
    try testing.expectOk(c.send_C_C_Ui());
    try testing.expectOk(c.assert_C_C_Ui(.{ .v1 = 126, .v2 = 33, .v3 = 8231 }));
}
pub export fn zig_assert_C_C_Ui(lv: c.C_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 126) err = 1;
    if (lv.v2 != 33) err = 2;
    if (lv.v3 != 8231) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_Ui() c.C_C_Ui {
    return .{ .v1 = 126, .v2 = 33, .v3 = 8231 };
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
    try testing.expectEqual(c.ret_C_C_Ul(), .{ .v1 = 89, .v2 = 41, .v3 = 1425 });
    try testing.expectOk(c.assert_ret_C_C_Ul());
    try testing.expectOk(c.send_C_C_Ul());
    try testing.expectOk(c.assert_C_C_Ul(.{ .v1 = 89, .v2 = 41, .v3 = 1425 }));
}
pub export fn zig_assert_C_C_Ul(lv: c.C_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 89) err = 1;
    if (lv.v2 != 41) err = 2;
    if (lv.v3 != 1425) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_Ul() c.C_C_Ul {
    return .{ .v1 = 89, .v2 = 41, .v3 = 1425 };
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
    try testing.expectEqual(c.ret_C_C_Us(), .{ .v1 = 64, .v2 = 25, .v3 = 3643 });
    try testing.expectOk(c.assert_ret_C_C_Us());
    try testing.expectOk(c.send_C_C_Us());
    try testing.expectOk(c.assert_C_C_Us(.{ .v1 = 64, .v2 = 25, .v3 = 3643 }));
}
pub export fn zig_assert_C_C_Us(lv: c.C_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 64) err = 1;
    if (lv.v2 != 25) err = 2;
    if (lv.v3 != 3643) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_Us() c.C_C_Us {
    return .{ .v1 = 64, .v2 = 25, .v3 = 3643 };
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
    try testing.expectEqual(c.ret_C_C_Vp(), .{ .v1 = 104, .v2 = 122, .v3 = null });
    try testing.expectOk(c.assert_ret_C_C_Vp());
    try testing.expectOk(c.send_C_C_Vp());
    try testing.expectOk(c.assert_C_C_Vp(.{ .v1 = 104, .v2 = 122, .v3 = null }));
}
pub export fn zig_assert_C_C_Vp(lv: c.C_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 104) err = 1;
    if (lv.v2 != 122) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_Vp() c.C_C_Vp {
    return .{ .v1 = 104, .v2 = 122, .v3 = null };
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
    try testing.expectEqual(c.ret_C_D(), .{ .v1 = 97, .v2 = -2.125 });
    try testing.expectOk(c.assert_ret_C_D());
    try testing.expectOk(c.send_C_D());
    try testing.expectOk(c.assert_C_D(.{ .v1 = 97, .v2 = -2.125 }));
}
pub export fn zig_assert_C_D(lv: c.C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 97) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D() c.C_D {
    return .{ .v1 = 97, .v2 = -2.125 };
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
    try testing.expectEqual(c.ret_C_D_C(), .{ .v1 = 2, .v2 = 0.5, .v3 = 100 });
    try testing.expectOk(c.assert_ret_C_D_C());
    try testing.expectOk(c.send_C_D_C());
    try testing.expectOk(c.assert_C_D_C(.{ .v1 = 2, .v2 = 0.5, .v3 = 100 }));
}
pub export fn zig_assert_C_D_C(lv: c.C_D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 100) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_C() c.C_D_C {
    return .{ .v1 = 2, .v2 = 0.5, .v3 = 100 };
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
    try testing.expectEqual(c.ret_C_D_D(), .{ .v1 = 56, .v2 = -0.25, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_C_D_D());
    try testing.expectOk(c.send_C_D_D());
    try testing.expectOk(c.assert_C_D_D(.{ .v1 = 56, .v2 = -0.25, .v3 = 0.5 }));
}
pub export fn zig_assert_C_D_D(lv: c.C_D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 56) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_D() c.C_D_D {
    return .{ .v1 = 56, .v2 = -0.25, .v3 = 0.5 };
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
    try testing.expectEqual(c.ret_C_D_F(), .{ .v1 = 127, .v2 = -0.25, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_C_D_F());
    try testing.expectOk(c.send_C_D_F());
    try testing.expectOk(c.assert_C_D_F(.{ .v1 = 127, .v2 = -0.25, .v3 = 1.0 }));
}
pub export fn zig_assert_C_D_F(lv: c.C_D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 127) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_F() c.C_D_F {
    return .{ .v1 = 127, .v2 = -0.25, .v3 = 1.0 };
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
    try testing.expectEqual(c.ret_C_D_I(), .{ .v1 = 3, .v2 = 4.5, .v3 = 19706 });
    try testing.expectOk(c.assert_ret_C_D_I());
    try testing.expectOk(c.send_C_D_I());
    try testing.expectOk(c.assert_C_D_I(.{ .v1 = 3, .v2 = 4.5, .v3 = 19706 }));
}
pub export fn zig_assert_C_D_I(lv: c.C_D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 19706) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_I() c.C_D_I {
    return .{ .v1 = 3, .v2 = 4.5, .v3 = 19706 };
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
    try testing.expectEqual(c.ret_C_D_Ip(), .{ .v1 = 9, .v2 = 0.875, .v3 = null });
    try testing.expectOk(c.assert_ret_C_D_Ip());
    try testing.expectOk(c.send_C_D_Ip());
    try testing.expectOk(c.assert_C_D_Ip(.{ .v1 = 9, .v2 = 0.875, .v3 = null }));
}
pub export fn zig_assert_C_D_Ip(lv: c.C_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_Ip() c.C_D_Ip {
    return .{ .v1 = 9, .v2 = 0.875, .v3 = null };
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
    try testing.expectEqual(c.ret_C_D_L(), .{ .v1 = 78, .v2 = 7.0, .v3 = 23713 });
    try testing.expectOk(c.assert_ret_C_D_L());
    try testing.expectOk(c.send_C_D_L());
    try testing.expectOk(c.assert_C_D_L(.{ .v1 = 78, .v2 = 7.0, .v3 = 23713 }));
}
pub export fn zig_assert_C_D_L(lv: c.C_D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 78) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 23713) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_L() c.C_D_L {
    return .{ .v1 = 78, .v2 = 7.0, .v3 = 23713 };
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
    try testing.expectEqual(c.ret_C_D_S(), .{ .v1 = 90, .v2 = 7.0, .v3 = 24730 });
    try testing.expectOk(c.assert_ret_C_D_S());
    try testing.expectOk(c.send_C_D_S());
    try testing.expectOk(c.assert_C_D_S(.{ .v1 = 90, .v2 = 7.0, .v3 = 24730 }));
}
pub export fn zig_assert_C_D_S(lv: c.C_D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 90) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 24730) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_S() c.C_D_S {
    return .{ .v1 = 90, .v2 = 7.0, .v3 = 24730 };
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
    try testing.expectEqual(c.ret_C_D_Uc(), .{ .v1 = 75, .v2 = 4.5, .v3 = 33 });
    try testing.expectOk(c.assert_ret_C_D_Uc());
    try testing.expectOk(c.send_C_D_Uc());
    try testing.expectOk(c.assert_C_D_Uc(.{ .v1 = 75, .v2 = 4.5, .v3 = 33 }));
}
pub export fn zig_assert_C_D_Uc(lv: c.C_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 75) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 33) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_Uc() c.C_D_Uc {
    return .{ .v1 = 75, .v2 = 4.5, .v3 = 33 };
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
    try testing.expectEqual(c.ret_C_D_Ui(), .{ .v1 = 77, .v2 = 1.0, .v3 = 4531 });
    try testing.expectOk(c.assert_ret_C_D_Ui());
    try testing.expectOk(c.send_C_D_Ui());
    try testing.expectOk(c.assert_C_D_Ui(.{ .v1 = 77, .v2 = 1.0, .v3 = 4531 }));
}
pub export fn zig_assert_C_D_Ui(lv: c.C_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 77) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 4531) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_Ui() c.C_D_Ui {
    return .{ .v1 = 77, .v2 = 1.0, .v3 = 4531 };
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
    try testing.expectEqual(c.ret_C_D_Ul(), .{ .v1 = 19, .v2 = 7.0, .v3 = 23467 });
    try testing.expectOk(c.assert_ret_C_D_Ul());
    try testing.expectOk(c.send_C_D_Ul());
    try testing.expectOk(c.assert_C_D_Ul(.{ .v1 = 19, .v2 = 7.0, .v3 = 23467 }));
}
pub export fn zig_assert_C_D_Ul(lv: c.C_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 23467) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_Ul() c.C_D_Ul {
    return .{ .v1 = 19, .v2 = 7.0, .v3 = 23467 };
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
    try testing.expectEqual(c.ret_C_D_Us(), .{ .v1 = 103, .v2 = 0.875, .v3 = 5008 });
    try testing.expectOk(c.assert_ret_C_D_Us());
    try testing.expectOk(c.send_C_D_Us());
    try testing.expectOk(c.assert_C_D_Us(.{ .v1 = 103, .v2 = 0.875, .v3 = 5008 }));
}
pub export fn zig_assert_C_D_Us(lv: c.C_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 103) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 5008) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_Us() c.C_D_Us {
    return .{ .v1 = 103, .v2 = 0.875, .v3 = 5008 };
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
    try testing.expectEqual(c.ret_C_D_Vp(), .{ .v1 = 77, .v2 = -0.25, .v3 = null });
    try testing.expectOk(c.assert_ret_C_D_Vp());
    try testing.expectOk(c.send_C_D_Vp());
    try testing.expectOk(c.assert_C_D_Vp(.{ .v1 = 77, .v2 = -0.25, .v3 = null }));
}
pub export fn zig_assert_C_D_Vp(lv: c.C_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 77) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_Vp() c.C_D_Vp {
    return .{ .v1 = 77, .v2 = -0.25, .v3 = null };
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
    try testing.expectEqual(c.ret_C_F(), .{ .v1 = 14, .v2 = -0.25 });
    try testing.expectOk(c.assert_ret_C_F());
    try testing.expectOk(c.send_C_F());
    try testing.expectOk(c.assert_C_F(.{ .v1 = 14, .v2 = -0.25 }));
}
pub export fn zig_assert_C_F(lv: c.C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F() c.C_F {
    return .{ .v1 = 14, .v2 = -0.25 };
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
    try testing.expectEqual(c.ret_C_F_C(), .{ .v1 = 99, .v2 = -2.125, .v3 = 40 });
    try testing.expectOk(c.assert_ret_C_F_C());
    try testing.expectOk(c.send_C_F_C());
    try testing.expectOk(c.assert_C_F_C(.{ .v1 = 99, .v2 = -2.125, .v3 = 40 }));
}
pub export fn zig_assert_C_F_C(lv: c.C_F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 99) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 40) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_C() c.C_F_C {
    return .{ .v1 = 99, .v2 = -2.125, .v3 = 40 };
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
    try testing.expectEqual(c.ret_C_F_D(), .{ .v1 = 90, .v2 = -0.25, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_C_F_D());
    try testing.expectOk(c.send_C_F_D());
    try testing.expectOk(c.assert_C_F_D(.{ .v1 = 90, .v2 = -0.25, .v3 = -2.125 }));
}
pub export fn zig_assert_C_F_D(lv: c.C_F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 90) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_D() c.C_F_D {
    return .{ .v1 = 90, .v2 = -0.25, .v3 = -2.125 };
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
    try testing.expectEqual(c.ret_C_F_F(), .{ .v1 = 39, .v2 = 0.875, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_C_F_F());
    try testing.expectOk(c.send_C_F_F());
    try testing.expectOk(c.assert_C_F_F(.{ .v1 = 39, .v2 = 0.875, .v3 = 1.0 }));
}
pub export fn zig_assert_C_F_F(lv: c.C_F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 39) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_F() c.C_F_F {
    return .{ .v1 = 39, .v2 = 0.875, .v3 = 1.0 };
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
    try testing.expectEqual(c.ret_C_F_I(), .{ .v1 = 88, .v2 = 1.0, .v3 = 18203 });
    try testing.expectOk(c.assert_ret_C_F_I());
    try testing.expectOk(c.send_C_F_I());
    try testing.expectOk(c.assert_C_F_I(.{ .v1 = 88, .v2 = 1.0, .v3 = 18203 }));
}
pub export fn zig_assert_C_F_I(lv: c.C_F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 88) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 18203) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_I() c.C_F_I {
    return .{ .v1 = 88, .v2 = 1.0, .v3 = 18203 };
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
    try testing.expectEqual(c.ret_C_F_Ip(), .{ .v1 = 2, .v2 = -0.25, .v3 = null });
    try testing.expectOk(c.assert_ret_C_F_Ip());
    try testing.expectOk(c.send_C_F_Ip());
    try testing.expectOk(c.assert_C_F_Ip(.{ .v1 = 2, .v2 = -0.25, .v3 = null }));
}
pub export fn zig_assert_C_F_Ip(lv: c.C_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_Ip() c.C_F_Ip {
    return .{ .v1 = 2, .v2 = -0.25, .v3 = null };
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
    try testing.expectEqual(c.ret_C_F_L(), .{ .v1 = 125, .v2 = -0.25, .v3 = 12277 });
    try testing.expectOk(c.assert_ret_C_F_L());
    try testing.expectOk(c.send_C_F_L());
    try testing.expectOk(c.assert_C_F_L(.{ .v1 = 125, .v2 = -0.25, .v3 = 12277 }));
}
pub export fn zig_assert_C_F_L(lv: c.C_F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 125) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 12277) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_L() c.C_F_L {
    return .{ .v1 = 125, .v2 = -0.25, .v3 = 12277 };
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
    try testing.expectEqual(c.ret_C_F_S(), .{ .v1 = 52, .v2 = 1.0, .v3 = 13569 });
    try testing.expectOk(c.assert_ret_C_F_S());
    try testing.expectOk(c.send_C_F_S());
    try testing.expectOk(c.assert_C_F_S(.{ .v1 = 52, .v2 = 1.0, .v3 = 13569 }));
}
pub export fn zig_assert_C_F_S(lv: c.C_F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 52) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 13569) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_S() c.C_F_S {
    return .{ .v1 = 52, .v2 = 1.0, .v3 = 13569 };
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
    try testing.expectEqual(c.ret_C_F_Uc(), .{ .v1 = 115, .v2 = 0.5, .v3 = 41 });
    try testing.expectOk(c.assert_ret_C_F_Uc());
    try testing.expectOk(c.send_C_F_Uc());
    try testing.expectOk(c.assert_C_F_Uc(.{ .v1 = 115, .v2 = 0.5, .v3 = 41 }));
}
pub export fn zig_assert_C_F_Uc(lv: c.C_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 115) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 41) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_Uc() c.C_F_Uc {
    return .{ .v1 = 115, .v2 = 0.5, .v3 = 41 };
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
    try testing.expectEqual(c.ret_C_F_Ui(), .{ .v1 = 11, .v2 = 0.875, .v3 = 15064 });
    try testing.expectOk(c.assert_ret_C_F_Ui());
    try testing.expectOk(c.send_C_F_Ui());
    try testing.expectOk(c.assert_C_F_Ui(.{ .v1 = 11, .v2 = 0.875, .v3 = 15064 }));
}
pub export fn zig_assert_C_F_Ui(lv: c.C_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 15064) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_Ui() c.C_F_Ui {
    return .{ .v1 = 11, .v2 = 0.875, .v3 = 15064 };
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
    try testing.expectEqual(c.ret_C_F_Ul(), .{ .v1 = 39, .v2 = 7.0, .v3 = 20182 });
    try testing.expectOk(c.assert_ret_C_F_Ul());
    try testing.expectOk(c.send_C_F_Ul());
    try testing.expectOk(c.assert_C_F_Ul(.{ .v1 = 39, .v2 = 7.0, .v3 = 20182 }));
}
pub export fn zig_assert_C_F_Ul(lv: c.C_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 39) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 20182) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_Ul() c.C_F_Ul {
    return .{ .v1 = 39, .v2 = 7.0, .v3 = 20182 };
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
    try testing.expectEqual(c.ret_C_F_Us(), .{ .v1 = 89, .v2 = 1.0, .v3 = 1739 });
    try testing.expectOk(c.assert_ret_C_F_Us());
    try testing.expectOk(c.send_C_F_Us());
    try testing.expectOk(c.assert_C_F_Us(.{ .v1 = 89, .v2 = 1.0, .v3 = 1739 }));
}
pub export fn zig_assert_C_F_Us(lv: c.C_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 89) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 1739) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_Us() c.C_F_Us {
    return .{ .v1 = 89, .v2 = 1.0, .v3 = 1739 };
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
    try testing.expectEqual(c.ret_C_F_Vp(), .{ .v1 = 110, .v2 = 0.875, .v3 = null });
    try testing.expectOk(c.assert_ret_C_F_Vp());
    try testing.expectOk(c.send_C_F_Vp());
    try testing.expectOk(c.assert_C_F_Vp(.{ .v1 = 110, .v2 = 0.875, .v3 = null }));
}
pub export fn zig_assert_C_F_Vp(lv: c.C_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 110) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_Vp() c.C_F_Vp {
    return .{ .v1 = 110, .v2 = 0.875, .v3 = null };
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
    try testing.expectEqual(c.ret_C_I(), .{ .v1 = 46, .v2 = 3018 });
    try testing.expectOk(c.assert_ret_C_I());
    try testing.expectOk(c.send_C_I());
    try testing.expectOk(c.assert_C_I(.{ .v1 = 46, .v2 = 3018 }));
}
pub export fn zig_assert_C_I(lv: c.C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 46) err = 1;
    if (lv.v2 != 3018) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I() c.C_I {
    return .{ .v1 = 46, .v2 = 3018 };
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
    try testing.expectEqual(c.ret_C_I_C(), .{ .v1 = 38, .v2 = 18674, .v3 = 26 });
    try testing.expectOk(c.assert_ret_C_I_C());
    try testing.expectOk(c.send_C_I_C());
    try testing.expectOk(c.assert_C_I_C(.{ .v1 = 38, .v2 = 18674, .v3 = 26 }));
}
pub export fn zig_assert_C_I_C(lv: c.C_I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 38) err = 1;
    if (lv.v2 != 18674) err = 2;
    if (lv.v3 != 26) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_C() c.C_I_C {
    return .{ .v1 = 38, .v2 = 18674, .v3 = 26 };
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
    try testing.expectEqual(c.ret_C_I_D(), .{ .v1 = 7, .v2 = 8195, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_C_I_D());
    try testing.expectOk(c.send_C_I_D());
    try testing.expectOk(c.assert_C_I_D(.{ .v1 = 7, .v2 = 8195, .v3 = 7.0 }));
}
pub export fn zig_assert_C_I_D(lv: c.C_I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7) err = 1;
    if (lv.v2 != 8195) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_D() c.C_I_D {
    return .{ .v1 = 7, .v2 = 8195, .v3 = 7.0 };
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
    try testing.expectEqual(c.ret_C_I_F(), .{ .v1 = 26, .v2 = 19684, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_C_I_F());
    try testing.expectOk(c.send_C_I_F());
    try testing.expectOk(c.assert_C_I_F(.{ .v1 = 26, .v2 = 19684, .v3 = 0.5 }));
}
pub export fn zig_assert_C_I_F(lv: c.C_I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26) err = 1;
    if (lv.v2 != 19684) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_F() c.C_I_F {
    return .{ .v1 = 26, .v2 = 19684, .v3 = 0.5 };
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
    try testing.expectEqual(c.ret_C_I_I(), .{ .v1 = 16, .v2 = 24394, .v3 = 24801 });
    try testing.expectOk(c.assert_ret_C_I_I());
    try testing.expectOk(c.send_C_I_I());
    try testing.expectOk(c.assert_C_I_I(.{ .v1 = 16, .v2 = 24394, .v3 = 24801 }));
}
pub export fn zig_assert_C_I_I(lv: c.C_I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16) err = 1;
    if (lv.v2 != 24394) err = 2;
    if (lv.v3 != 24801) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_I() c.C_I_I {
    return .{ .v1 = 16, .v2 = 24394, .v3 = 24801 };
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
    try testing.expectEqual(c.ret_C_I_Ip(), .{ .v1 = 9, .v2 = 4874, .v3 = null });
    try testing.expectOk(c.assert_ret_C_I_Ip());
    try testing.expectOk(c.send_C_I_Ip());
    try testing.expectOk(c.assert_C_I_Ip(.{ .v1 = 9, .v2 = 4874, .v3 = null }));
}
pub export fn zig_assert_C_I_Ip(lv: c.C_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 4874) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_Ip() c.C_I_Ip {
    return .{ .v1 = 9, .v2 = 4874, .v3 = null };
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
    try testing.expectEqual(c.ret_C_I_L(), .{ .v1 = 83, .v2 = 18653, .v3 = 14871 });
    try testing.expectOk(c.assert_ret_C_I_L());
    try testing.expectOk(c.send_C_I_L());
    try testing.expectOk(c.assert_C_I_L(.{ .v1 = 83, .v2 = 18653, .v3 = 14871 }));
}
pub export fn zig_assert_C_I_L(lv: c.C_I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 83) err = 1;
    if (lv.v2 != 18653) err = 2;
    if (lv.v3 != 14871) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_L() c.C_I_L {
    return .{ .v1 = 83, .v2 = 18653, .v3 = 14871 };
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
    try testing.expectEqual(c.ret_C_I_S(), .{ .v1 = 55, .v2 = 11619, .v3 = 1995 });
    try testing.expectOk(c.assert_ret_C_I_S());
    try testing.expectOk(c.send_C_I_S());
    try testing.expectOk(c.assert_C_I_S(.{ .v1 = 55, .v2 = 11619, .v3 = 1995 }));
}
pub export fn zig_assert_C_I_S(lv: c.C_I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 55) err = 1;
    if (lv.v2 != 11619) err = 2;
    if (lv.v3 != 1995) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_S() c.C_I_S {
    return .{ .v1 = 55, .v2 = 11619, .v3 = 1995 };
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
    try testing.expectEqual(c.ret_C_I_Uc(), .{ .v1 = 108, .v2 = 18803, .v3 = 13 });
    try testing.expectOk(c.assert_ret_C_I_Uc());
    try testing.expectOk(c.send_C_I_Uc());
    try testing.expectOk(c.assert_C_I_Uc(.{ .v1 = 108, .v2 = 18803, .v3 = 13 }));
}
pub export fn zig_assert_C_I_Uc(lv: c.C_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 108) err = 1;
    if (lv.v2 != 18803) err = 2;
    if (lv.v3 != 13) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_Uc() c.C_I_Uc {
    return .{ .v1 = 108, .v2 = 18803, .v3 = 13 };
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
    try testing.expectEqual(c.ret_C_I_Ui(), .{ .v1 = 72, .v2 = 10536, .v3 = 25360 });
    try testing.expectOk(c.assert_ret_C_I_Ui());
    try testing.expectOk(c.send_C_I_Ui());
    try testing.expectOk(c.assert_C_I_Ui(.{ .v1 = 72, .v2 = 10536, .v3 = 25360 }));
}
pub export fn zig_assert_C_I_Ui(lv: c.C_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 72) err = 1;
    if (lv.v2 != 10536) err = 2;
    if (lv.v3 != 25360) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_Ui() c.C_I_Ui {
    return .{ .v1 = 72, .v2 = 10536, .v3 = 25360 };
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
    try testing.expectEqual(c.ret_C_I_Ul(), .{ .v1 = 88, .v2 = 11624, .v3 = 26188 });
    try testing.expectOk(c.assert_ret_C_I_Ul());
    try testing.expectOk(c.send_C_I_Ul());
    try testing.expectOk(c.assert_C_I_Ul(.{ .v1 = 88, .v2 = 11624, .v3 = 26188 }));
}
pub export fn zig_assert_C_I_Ul(lv: c.C_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 88) err = 1;
    if (lv.v2 != 11624) err = 2;
    if (lv.v3 != 26188) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_Ul() c.C_I_Ul {
    return .{ .v1 = 88, .v2 = 11624, .v3 = 26188 };
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
    try testing.expectEqual(c.ret_C_I_Us(), .{ .v1 = 82, .v2 = 7832, .v3 = 15543 });
    try testing.expectOk(c.assert_ret_C_I_Us());
    try testing.expectOk(c.send_C_I_Us());
    try testing.expectOk(c.assert_C_I_Us(.{ .v1 = 82, .v2 = 7832, .v3 = 15543 }));
}
pub export fn zig_assert_C_I_Us(lv: c.C_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 82) err = 1;
    if (lv.v2 != 7832) err = 2;
    if (lv.v3 != 15543) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_Us() c.C_I_Us {
    return .{ .v1 = 82, .v2 = 7832, .v3 = 15543 };
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
    try testing.expectEqual(c.ret_C_I_Vp(), .{ .v1 = 8, .v2 = 3632, .v3 = null });
    try testing.expectOk(c.assert_ret_C_I_Vp());
    try testing.expectOk(c.send_C_I_Vp());
    try testing.expectOk(c.assert_C_I_Vp(.{ .v1 = 8, .v2 = 3632, .v3 = null }));
}
pub export fn zig_assert_C_I_Vp(lv: c.C_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8) err = 1;
    if (lv.v2 != 3632) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_Vp() c.C_I_Vp {
    return .{ .v1 = 8, .v2 = 3632, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Ip(), .{ .v1 = 9, .v2 = null });
    try testing.expectOk(c.assert_ret_C_Ip());
    try testing.expectOk(c.send_C_Ip());
    try testing.expectOk(c.assert_C_Ip(.{ .v1 = 9, .v2 = null }));
}
pub export fn zig_assert_C_Ip(lv: c.C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip() c.C_Ip {
    return .{ .v1 = 9, .v2 = null };
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
    try testing.expectEqual(c.ret_C_Ip_C(), .{ .v1 = 121, .v2 = null, .v3 = 51 });
    try testing.expectOk(c.assert_ret_C_Ip_C());
    try testing.expectOk(c.send_C_Ip_C());
    try testing.expectOk(c.assert_C_Ip_C(.{ .v1 = 121, .v2 = null, .v3 = 51 }));
}
pub export fn zig_assert_C_Ip_C(lv: c.C_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 121) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 51) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_C() c.C_Ip_C {
    return .{ .v1 = 121, .v2 = null, .v3 = 51 };
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
    try testing.expectEqual(c.ret_C_Ip_D(), .{ .v1 = 80, .v2 = null, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_C_Ip_D());
    try testing.expectOk(c.send_C_Ip_D());
    try testing.expectOk(c.assert_C_Ip_D(.{ .v1 = 80, .v2 = null, .v3 = 0.875 }));
}
pub export fn zig_assert_C_Ip_D(lv: c.C_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 80) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_D() c.C_Ip_D {
    return .{ .v1 = 80, .v2 = null, .v3 = 0.875 };
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
    try testing.expectEqual(c.ret_C_Ip_F(), .{ .v1 = 52, .v2 = null, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_C_Ip_F());
    try testing.expectOk(c.send_C_Ip_F());
    try testing.expectOk(c.assert_C_Ip_F(.{ .v1 = 52, .v2 = null, .v3 = 1.0 }));
}
pub export fn zig_assert_C_Ip_F(lv: c.C_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 52) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_F() c.C_Ip_F {
    return .{ .v1 = 52, .v2 = null, .v3 = 1.0 };
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
    try testing.expectEqual(c.ret_C_Ip_I(), .{ .v1 = 42, .v2 = null, .v3 = 7495 });
    try testing.expectOk(c.assert_ret_C_Ip_I());
    try testing.expectOk(c.send_C_Ip_I());
    try testing.expectOk(c.assert_C_Ip_I(.{ .v1 = 42, .v2 = null, .v3 = 7495 }));
}
pub export fn zig_assert_C_Ip_I(lv: c.C_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 42) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7495) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_I() c.C_Ip_I {
    return .{ .v1 = 42, .v2 = null, .v3 = 7495 };
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
    try testing.expectEqual(c.ret_C_Ip_Ip(), .{ .v1 = 28, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Ip_Ip());
    try testing.expectOk(c.send_C_Ip_Ip());
    try testing.expectOk(c.assert_C_Ip_Ip(.{ .v1 = 28, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_C_Ip_Ip(lv: c.C_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_Ip() c.C_Ip_Ip {
    return .{ .v1 = 28, .v2 = null, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Ip_L(), .{ .v1 = 61, .v2 = null, .v3 = 20688 });
    try testing.expectOk(c.assert_ret_C_Ip_L());
    try testing.expectOk(c.send_C_Ip_L());
    try testing.expectOk(c.assert_C_Ip_L(.{ .v1 = 61, .v2 = null, .v3 = 20688 }));
}
pub export fn zig_assert_C_Ip_L(lv: c.C_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 61) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 20688) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_L() c.C_Ip_L {
    return .{ .v1 = 61, .v2 = null, .v3 = 20688 };
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
    try testing.expectEqual(c.ret_C_Ip_S(), .{ .v1 = 13, .v2 = null, .v3 = 22524 });
    try testing.expectOk(c.assert_ret_C_Ip_S());
    try testing.expectOk(c.send_C_Ip_S());
    try testing.expectOk(c.assert_C_Ip_S(.{ .v1 = 13, .v2 = null, .v3 = 22524 }));
}
pub export fn zig_assert_C_Ip_S(lv: c.C_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 22524) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_S() c.C_Ip_S {
    return .{ .v1 = 13, .v2 = null, .v3 = 22524 };
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
    try testing.expectEqual(c.ret_C_Ip_Uc(), .{ .v1 = 110, .v2 = null, .v3 = 110 });
    try testing.expectOk(c.assert_ret_C_Ip_Uc());
    try testing.expectOk(c.send_C_Ip_Uc());
    try testing.expectOk(c.assert_C_Ip_Uc(.{ .v1 = 110, .v2 = null, .v3 = 110 }));
}
pub export fn zig_assert_C_Ip_Uc(lv: c.C_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 110) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 110) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_Uc() c.C_Ip_Uc {
    return .{ .v1 = 110, .v2 = null, .v3 = 110 };
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
    try testing.expectEqual(c.ret_C_Ip_Ui(), .{ .v1 = 30, .v2 = null, .v3 = 29435 });
    try testing.expectOk(c.assert_ret_C_Ip_Ui());
    try testing.expectOk(c.send_C_Ip_Ui());
    try testing.expectOk(c.assert_C_Ip_Ui(.{ .v1 = 30, .v2 = null, .v3 = 29435 }));
}
pub export fn zig_assert_C_Ip_Ui(lv: c.C_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 29435) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_Ui() c.C_Ip_Ui {
    return .{ .v1 = 30, .v2 = null, .v3 = 29435 };
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
    try testing.expectEqual(c.ret_C_Ip_Ul(), .{ .v1 = 86, .v2 = null, .v3 = 25629 });
    try testing.expectOk(c.assert_ret_C_Ip_Ul());
    try testing.expectOk(c.send_C_Ip_Ul());
    try testing.expectOk(c.assert_C_Ip_Ul(.{ .v1 = 86, .v2 = null, .v3 = 25629 }));
}
pub export fn zig_assert_C_Ip_Ul(lv: c.C_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 86) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 25629) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_Ul() c.C_Ip_Ul {
    return .{ .v1 = 86, .v2 = null, .v3 = 25629 };
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
    try testing.expectEqual(c.ret_C_Ip_Us(), .{ .v1 = 76, .v2 = null, .v3 = 11318 });
    try testing.expectOk(c.assert_ret_C_Ip_Us());
    try testing.expectOk(c.send_C_Ip_Us());
    try testing.expectOk(c.assert_C_Ip_Us(.{ .v1 = 76, .v2 = null, .v3 = 11318 }));
}
pub export fn zig_assert_C_Ip_Us(lv: c.C_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 76) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 11318) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_Us() c.C_Ip_Us {
    return .{ .v1 = 76, .v2 = null, .v3 = 11318 };
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
    try testing.expectEqual(c.ret_C_Ip_Vp(), .{ .v1 = 88, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Ip_Vp());
    try testing.expectOk(c.send_C_Ip_Vp());
    try testing.expectOk(c.assert_C_Ip_Vp(.{ .v1 = 88, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_C_Ip_Vp(lv: c.C_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 88) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_Vp() c.C_Ip_Vp {
    return .{ .v1 = 88, .v2 = null, .v3 = null };
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
    try testing.expectEqual(c.ret_C_L(), .{ .v1 = 97, .v2 = 28944 });
    try testing.expectOk(c.assert_ret_C_L());
    try testing.expectOk(c.send_C_L());
    try testing.expectOk(c.assert_C_L(.{ .v1 = 97, .v2 = 28944 }));
}
pub export fn zig_assert_C_L(lv: c.C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 97) err = 1;
    if (lv.v2 != 28944) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L() c.C_L {
    return .{ .v1 = 97, .v2 = 28944 };
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
    try testing.expectEqual(c.ret_C_L_C(), .{ .v1 = 78, .v2 = 26157, .v3 = 19 });
    try testing.expectOk(c.assert_ret_C_L_C());
    try testing.expectOk(c.send_C_L_C());
    try testing.expectOk(c.assert_C_L_C(.{ .v1 = 78, .v2 = 26157, .v3 = 19 }));
}
pub export fn zig_assert_C_L_C(lv: c.C_L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 78) err = 1;
    if (lv.v2 != 26157) err = 2;
    if (lv.v3 != 19) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_C() c.C_L_C {
    return .{ .v1 = 78, .v2 = 26157, .v3 = 19 };
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
    try testing.expectEqual(c.ret_C_L_D(), .{ .v1 = 9, .v2 = 20523, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_C_L_D());
    try testing.expectOk(c.send_C_L_D());
    try testing.expectOk(c.assert_C_L_D(.{ .v1 = 9, .v2 = 20523, .v3 = -2.125 }));
}
pub export fn zig_assert_C_L_D(lv: c.C_L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 20523) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_D() c.C_L_D {
    return .{ .v1 = 9, .v2 = 20523, .v3 = -2.125 };
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
    try testing.expectEqual(c.ret_C_L_F(), .{ .v1 = 9, .v2 = 8400, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_C_L_F());
    try testing.expectOk(c.send_C_L_F());
    try testing.expectOk(c.assert_C_L_F(.{ .v1 = 9, .v2 = 8400, .v3 = 0.875 }));
}
pub export fn zig_assert_C_L_F(lv: c.C_L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 8400) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_F() c.C_L_F {
    return .{ .v1 = 9, .v2 = 8400, .v3 = 0.875 };
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
    try testing.expectEqual(c.ret_C_L_I(), .{ .v1 = 9, .v2 = 13198, .v3 = 2651 });
    try testing.expectOk(c.assert_ret_C_L_I());
    try testing.expectOk(c.send_C_L_I());
    try testing.expectOk(c.assert_C_L_I(.{ .v1 = 9, .v2 = 13198, .v3 = 2651 }));
}
pub export fn zig_assert_C_L_I(lv: c.C_L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 13198) err = 2;
    if (lv.v3 != 2651) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_I() c.C_L_I {
    return .{ .v1 = 9, .v2 = 13198, .v3 = 2651 };
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
    try testing.expectEqual(c.ret_C_L_Ip(), .{ .v1 = 20, .v2 = 32425, .v3 = null });
    try testing.expectOk(c.assert_ret_C_L_Ip());
    try testing.expectOk(c.send_C_L_Ip());
    try testing.expectOk(c.assert_C_L_Ip(.{ .v1 = 20, .v2 = 32425, .v3 = null }));
}
pub export fn zig_assert_C_L_Ip(lv: c.C_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20) err = 1;
    if (lv.v2 != 32425) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_Ip() c.C_L_Ip {
    return .{ .v1 = 20, .v2 = 32425, .v3 = null };
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
    try testing.expectEqual(c.ret_C_L_L(), .{ .v1 = 20, .v2 = 7763, .v3 = 7816 });
    try testing.expectOk(c.assert_ret_C_L_L());
    try testing.expectOk(c.send_C_L_L());
    try testing.expectOk(c.assert_C_L_L(.{ .v1 = 20, .v2 = 7763, .v3 = 7816 }));
}
pub export fn zig_assert_C_L_L(lv: c.C_L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20) err = 1;
    if (lv.v2 != 7763) err = 2;
    if (lv.v3 != 7816) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_L() c.C_L_L {
    return .{ .v1 = 20, .v2 = 7763, .v3 = 7816 };
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
    try testing.expectEqual(c.ret_C_L_S(), .{ .v1 = 98, .v2 = 3355, .v3 = 11825 });
    try testing.expectOk(c.assert_ret_C_L_S());
    try testing.expectOk(c.send_C_L_S());
    try testing.expectOk(c.assert_C_L_S(.{ .v1 = 98, .v2 = 3355, .v3 = 11825 }));
}
pub export fn zig_assert_C_L_S(lv: c.C_L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 98) err = 1;
    if (lv.v2 != 3355) err = 2;
    if (lv.v3 != 11825) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_S() c.C_L_S {
    return .{ .v1 = 98, .v2 = 3355, .v3 = 11825 };
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
    try testing.expectEqual(c.ret_C_L_Uc(), .{ .v1 = 84, .v2 = 21813, .v3 = 82 });
    try testing.expectOk(c.assert_ret_C_L_Uc());
    try testing.expectOk(c.send_C_L_Uc());
    try testing.expectOk(c.assert_C_L_Uc(.{ .v1 = 84, .v2 = 21813, .v3 = 82 }));
}
pub export fn zig_assert_C_L_Uc(lv: c.C_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 84) err = 1;
    if (lv.v2 != 21813) err = 2;
    if (lv.v3 != 82) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_Uc() c.C_L_Uc {
    return .{ .v1 = 84, .v2 = 21813, .v3 = 82 };
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
    try testing.expectEqual(c.ret_C_L_Ui(), .{ .v1 = 18, .v2 = 4611, .v3 = 4717 });
    try testing.expectOk(c.assert_ret_C_L_Ui());
    try testing.expectOk(c.send_C_L_Ui());
    try testing.expectOk(c.assert_C_L_Ui(.{ .v1 = 18, .v2 = 4611, .v3 = 4717 }));
}
pub export fn zig_assert_C_L_Ui(lv: c.C_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18) err = 1;
    if (lv.v2 != 4611) err = 2;
    if (lv.v3 != 4717) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_Ui() c.C_L_Ui {
    return .{ .v1 = 18, .v2 = 4611, .v3 = 4717 };
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
    try testing.expectEqual(c.ret_C_L_Ul(), .{ .v1 = 92, .v2 = 12449, .v3 = 415 });
    try testing.expectOk(c.assert_ret_C_L_Ul());
    try testing.expectOk(c.send_C_L_Ul());
    try testing.expectOk(c.assert_C_L_Ul(.{ .v1 = 92, .v2 = 12449, .v3 = 415 }));
}
pub export fn zig_assert_C_L_Ul(lv: c.C_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 92) err = 1;
    if (lv.v2 != 12449) err = 2;
    if (lv.v3 != 415) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_Ul() c.C_L_Ul {
    return .{ .v1 = 92, .v2 = 12449, .v3 = 415 };
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
    try testing.expectEqual(c.ret_C_L_Us(), .{ .v1 = 9, .v2 = 23471, .v3 = 19229 });
    try testing.expectOk(c.assert_ret_C_L_Us());
    try testing.expectOk(c.send_C_L_Us());
    try testing.expectOk(c.assert_C_L_Us(.{ .v1 = 9, .v2 = 23471, .v3 = 19229 }));
}
pub export fn zig_assert_C_L_Us(lv: c.C_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 23471) err = 2;
    if (lv.v3 != 19229) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_Us() c.C_L_Us {
    return .{ .v1 = 9, .v2 = 23471, .v3 = 19229 };
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
    try testing.expectEqual(c.ret_C_L_Vp(), .{ .v1 = 117, .v2 = 23122, .v3 = null });
    try testing.expectOk(c.assert_ret_C_L_Vp());
    try testing.expectOk(c.send_C_L_Vp());
    try testing.expectOk(c.assert_C_L_Vp(.{ .v1 = 117, .v2 = 23122, .v3 = null }));
}
pub export fn zig_assert_C_L_Vp(lv: c.C_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 117) err = 1;
    if (lv.v2 != 23122) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_Vp() c.C_L_Vp {
    return .{ .v1 = 117, .v2 = 23122, .v3 = null };
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
    try testing.expectEqual(c.ret_C_S(), .{ .v1 = 124, .v2 = 7400 });
    try testing.expectOk(c.assert_ret_C_S());
    try testing.expectOk(c.send_C_S());
    try testing.expectOk(c.assert_C_S(.{ .v1 = 124, .v2 = 7400 }));
}
pub export fn zig_assert_C_S(lv: c.C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 124) err = 1;
    if (lv.v2 != 7400) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S() c.C_S {
    return .{ .v1 = 124, .v2 = 7400 };
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
    try testing.expectEqual(c.ret_C_S_C(), .{ .v1 = 110, .v2 = 3564, .v3 = 30 });
    try testing.expectOk(c.assert_ret_C_S_C());
    try testing.expectOk(c.send_C_S_C());
    try testing.expectOk(c.assert_C_S_C(.{ .v1 = 110, .v2 = 3564, .v3 = 30 }));
}
pub export fn zig_assert_C_S_C(lv: c.C_S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 110) err = 1;
    if (lv.v2 != 3564) err = 2;
    if (lv.v3 != 30) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_C() c.C_S_C {
    return .{ .v1 = 110, .v2 = 3564, .v3 = 30 };
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
    try testing.expectEqual(c.ret_C_S_D(), .{ .v1 = 0, .v2 = 7071, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_C_S_D());
    try testing.expectOk(c.send_C_S_D());
    try testing.expectOk(c.assert_C_S_D(.{ .v1 = 0, .v2 = 7071, .v3 = -2.125 }));
}
pub export fn zig_assert_C_S_D(lv: c.C_S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0) err = 1;
    if (lv.v2 != 7071) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_D() c.C_S_D {
    return .{ .v1 = 0, .v2 = 7071, .v3 = -2.125 };
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
    try testing.expectEqual(c.ret_C_S_F(), .{ .v1 = 26, .v2 = 17641, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_C_S_F());
    try testing.expectOk(c.send_C_S_F());
    try testing.expectOk(c.assert_C_S_F(.{ .v1 = 26, .v2 = 17641, .v3 = -2.125 }));
}
pub export fn zig_assert_C_S_F(lv: c.C_S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26) err = 1;
    if (lv.v2 != 17641) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_F() c.C_S_F {
    return .{ .v1 = 26, .v2 = 17641, .v3 = -2.125 };
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
    try testing.expectEqual(c.ret_C_S_I(), .{ .v1 = 1, .v2 = 13882, .v3 = 27710 });
    try testing.expectOk(c.assert_ret_C_S_I());
    try testing.expectOk(c.send_C_S_I());
    try testing.expectOk(c.assert_C_S_I(.{ .v1 = 1, .v2 = 13882, .v3 = 27710 }));
}
pub export fn zig_assert_C_S_I(lv: c.C_S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1) err = 1;
    if (lv.v2 != 13882) err = 2;
    if (lv.v3 != 27710) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_I() c.C_S_I {
    return .{ .v1 = 1, .v2 = 13882, .v3 = 27710 };
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
    try testing.expectEqual(c.ret_C_S_Ip(), .{ .v1 = 82, .v2 = 21579, .v3 = null });
    try testing.expectOk(c.assert_ret_C_S_Ip());
    try testing.expectOk(c.send_C_S_Ip());
    try testing.expectOk(c.assert_C_S_Ip(.{ .v1 = 82, .v2 = 21579, .v3 = null }));
}
pub export fn zig_assert_C_S_Ip(lv: c.C_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 82) err = 1;
    if (lv.v2 != 21579) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_Ip() c.C_S_Ip {
    return .{ .v1 = 82, .v2 = 21579, .v3 = null };
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
    try testing.expectEqual(c.ret_C_S_L(), .{ .v1 = 123, .v2 = 5427, .v3 = 3858 });
    try testing.expectOk(c.assert_ret_C_S_L());
    try testing.expectOk(c.send_C_S_L());
    try testing.expectOk(c.assert_C_S_L(.{ .v1 = 123, .v2 = 5427, .v3 = 3858 }));
}
pub export fn zig_assert_C_S_L(lv: c.C_S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 123) err = 1;
    if (lv.v2 != 5427) err = 2;
    if (lv.v3 != 3858) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_L() c.C_S_L {
    return .{ .v1 = 123, .v2 = 5427, .v3 = 3858 };
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
    try testing.expectEqual(c.ret_C_S_S(), .{ .v1 = 12, .v2 = 18576, .v3 = 1535 });
    try testing.expectOk(c.assert_ret_C_S_S());
    try testing.expectOk(c.send_C_S_S());
    try testing.expectOk(c.assert_C_S_S(.{ .v1 = 12, .v2 = 18576, .v3 = 1535 }));
}
pub export fn zig_assert_C_S_S(lv: c.C_S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12) err = 1;
    if (lv.v2 != 18576) err = 2;
    if (lv.v3 != 1535) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_S() c.C_S_S {
    return .{ .v1 = 12, .v2 = 18576, .v3 = 1535 };
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
    try testing.expectEqual(c.ret_C_S_Uc(), .{ .v1 = 59, .v2 = 4768, .v3 = 10 });
    try testing.expectOk(c.assert_ret_C_S_Uc());
    try testing.expectOk(c.send_C_S_Uc());
    try testing.expectOk(c.assert_C_S_Uc(.{ .v1 = 59, .v2 = 4768, .v3 = 10 }));
}
pub export fn zig_assert_C_S_Uc(lv: c.C_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 59) err = 1;
    if (lv.v2 != 4768) err = 2;
    if (lv.v3 != 10) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_Uc() c.C_S_Uc {
    return .{ .v1 = 59, .v2 = 4768, .v3 = 10 };
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
    try testing.expectEqual(c.ret_C_S_Ui(), .{ .v1 = 72, .v2 = 14125, .v3 = 4728 });
    try testing.expectOk(c.assert_ret_C_S_Ui());
    try testing.expectOk(c.send_C_S_Ui());
    try testing.expectOk(c.assert_C_S_Ui(.{ .v1 = 72, .v2 = 14125, .v3 = 4728 }));
}
pub export fn zig_assert_C_S_Ui(lv: c.C_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 72) err = 1;
    if (lv.v2 != 14125) err = 2;
    if (lv.v3 != 4728) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_Ui() c.C_S_Ui {
    return .{ .v1 = 72, .v2 = 14125, .v3 = 4728 };
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
    try testing.expectEqual(c.ret_C_S_Ul(), .{ .v1 = 65, .v2 = 17421, .v3 = 1849 });
    try testing.expectOk(c.assert_ret_C_S_Ul());
    try testing.expectOk(c.send_C_S_Ul());
    try testing.expectOk(c.assert_C_S_Ul(.{ .v1 = 65, .v2 = 17421, .v3 = 1849 }));
}
pub export fn zig_assert_C_S_Ul(lv: c.C_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 65) err = 1;
    if (lv.v2 != 17421) err = 2;
    if (lv.v3 != 1849) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_Ul() c.C_S_Ul {
    return .{ .v1 = 65, .v2 = 17421, .v3 = 1849 };
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
    try testing.expectEqual(c.ret_C_S_Us(), .{ .v1 = 113, .v2 = 29303, .v3 = 16194 });
    try testing.expectOk(c.assert_ret_C_S_Us());
    try testing.expectOk(c.send_C_S_Us());
    try testing.expectOk(c.assert_C_S_Us(.{ .v1 = 113, .v2 = 29303, .v3 = 16194 }));
}
pub export fn zig_assert_C_S_Us(lv: c.C_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 113) err = 1;
    if (lv.v2 != 29303) err = 2;
    if (lv.v3 != 16194) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_Us() c.C_S_Us {
    return .{ .v1 = 113, .v2 = 29303, .v3 = 16194 };
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
    try testing.expectEqual(c.ret_C_S_Vp(), .{ .v1 = 52, .v2 = 27691, .v3 = null });
    try testing.expectOk(c.assert_ret_C_S_Vp());
    try testing.expectOk(c.send_C_S_Vp());
    try testing.expectOk(c.assert_C_S_Vp(.{ .v1 = 52, .v2 = 27691, .v3 = null }));
}
pub export fn zig_assert_C_S_Vp(lv: c.C_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 52) err = 1;
    if (lv.v2 != 27691) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_Vp() c.C_S_Vp {
    return .{ .v1 = 52, .v2 = 27691, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Uc(), .{ .v1 = 93, .v2 = 46 });
    try testing.expectOk(c.assert_ret_C_Uc());
    try testing.expectOk(c.send_C_Uc());
    try testing.expectOk(c.assert_C_Uc(.{ .v1 = 93, .v2 = 46 }));
}
pub export fn zig_assert_C_Uc(lv: c.C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 93) err = 1;
    if (lv.v2 != 46) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc() c.C_Uc {
    return .{ .v1 = 93, .v2 = 46 };
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
    try testing.expectEqual(c.ret_C_Uc_C(), .{ .v1 = 28, .v2 = 86, .v3 = 16 });
    try testing.expectOk(c.assert_ret_C_Uc_C());
    try testing.expectOk(c.send_C_Uc_C());
    try testing.expectOk(c.assert_C_Uc_C(.{ .v1 = 28, .v2 = 86, .v3 = 16 }));
}
pub export fn zig_assert_C_Uc_C(lv: c.C_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28) err = 1;
    if (lv.v2 != 86) err = 2;
    if (lv.v3 != 16) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_C() c.C_Uc_C {
    return .{ .v1 = 28, .v2 = 86, .v3 = 16 };
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
    try testing.expectEqual(c.ret_C_Uc_D(), .{ .v1 = 0, .v2 = 2, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_C_Uc_D());
    try testing.expectOk(c.send_C_Uc_D());
    try testing.expectOk(c.assert_C_Uc_D(.{ .v1 = 0, .v2 = 2, .v3 = 0.5 }));
}
pub export fn zig_assert_C_Uc_D(lv: c.C_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0) err = 1;
    if (lv.v2 != 2) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_D() c.C_Uc_D {
    return .{ .v1 = 0, .v2 = 2, .v3 = 0.5 };
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
    try testing.expectEqual(c.ret_C_Uc_F(), .{ .v1 = 115, .v2 = 17, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_C_Uc_F());
    try testing.expectOk(c.send_C_Uc_F());
    try testing.expectOk(c.assert_C_Uc_F(.{ .v1 = 115, .v2 = 17, .v3 = 0.875 }));
}
pub export fn zig_assert_C_Uc_F(lv: c.C_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 115) err = 1;
    if (lv.v2 != 17) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_F() c.C_Uc_F {
    return .{ .v1 = 115, .v2 = 17, .v3 = 0.875 };
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
    try testing.expectEqual(c.ret_C_Uc_I(), .{ .v1 = 17, .v2 = 45, .v3 = 13482 });
    try testing.expectOk(c.assert_ret_C_Uc_I());
    try testing.expectOk(c.send_C_Uc_I());
    try testing.expectOk(c.assert_C_Uc_I(.{ .v1 = 17, .v2 = 45, .v3 = 13482 }));
}
pub export fn zig_assert_C_Uc_I(lv: c.C_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17) err = 1;
    if (lv.v2 != 45) err = 2;
    if (lv.v3 != 13482) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_I() c.C_Uc_I {
    return .{ .v1 = 17, .v2 = 45, .v3 = 13482 };
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
    try testing.expectEqual(c.ret_C_Uc_Ip(), .{ .v1 = 52, .v2 = 7, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Uc_Ip());
    try testing.expectOk(c.send_C_Uc_Ip());
    try testing.expectOk(c.assert_C_Uc_Ip(.{ .v1 = 52, .v2 = 7, .v3 = null }));
}
pub export fn zig_assert_C_Uc_Ip(lv: c.C_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 52) err = 1;
    if (lv.v2 != 7) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_Ip() c.C_Uc_Ip {
    return .{ .v1 = 52, .v2 = 7, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Uc_L(), .{ .v1 = 5, .v2 = 88, .v3 = 31749 });
    try testing.expectOk(c.assert_ret_C_Uc_L());
    try testing.expectOk(c.send_C_Uc_L());
    try testing.expectOk(c.assert_C_Uc_L(.{ .v1 = 5, .v2 = 88, .v3 = 31749 }));
}
pub export fn zig_assert_C_Uc_L(lv: c.C_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5) err = 1;
    if (lv.v2 != 88) err = 2;
    if (lv.v3 != 31749) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_L() c.C_Uc_L {
    return .{ .v1 = 5, .v2 = 88, .v3 = 31749 };
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
    try testing.expectEqual(c.ret_C_Uc_S(), .{ .v1 = 98, .v2 = 11, .v3 = 25168 });
    try testing.expectOk(c.assert_ret_C_Uc_S());
    try testing.expectOk(c.send_C_Uc_S());
    try testing.expectOk(c.assert_C_Uc_S(.{ .v1 = 98, .v2 = 11, .v3 = 25168 }));
}
pub export fn zig_assert_C_Uc_S(lv: c.C_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 98) err = 1;
    if (lv.v2 != 11) err = 2;
    if (lv.v3 != 25168) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_S() c.C_Uc_S {
    return .{ .v1 = 98, .v2 = 11, .v3 = 25168 };
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
    try testing.expectEqual(c.ret_C_Uc_Uc(), .{ .v1 = 23, .v2 = 0, .v3 = 11 });
    try testing.expectOk(c.assert_ret_C_Uc_Uc());
    try testing.expectOk(c.send_C_Uc_Uc());
    try testing.expectOk(c.assert_C_Uc_Uc(.{ .v1 = 23, .v2 = 0, .v3 = 11 }));
}
pub export fn zig_assert_C_Uc_Uc(lv: c.C_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23) err = 1;
    if (lv.v2 != 0) err = 2;
    if (lv.v3 != 11) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_Uc() c.C_Uc_Uc {
    return .{ .v1 = 23, .v2 = 0, .v3 = 11 };
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
    try testing.expectEqual(c.ret_C_Uc_Ui(), .{ .v1 = 122, .v2 = 85, .v3 = 33 });
    try testing.expectOk(c.assert_ret_C_Uc_Ui());
    try testing.expectOk(c.send_C_Uc_Ui());
    try testing.expectOk(c.assert_C_Uc_Ui(.{ .v1 = 122, .v2 = 85, .v3 = 33 }));
}
pub export fn zig_assert_C_Uc_Ui(lv: c.C_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 122) err = 1;
    if (lv.v2 != 85) err = 2;
    if (lv.v3 != 33) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_Ui() c.C_Uc_Ui {
    return .{ .v1 = 122, .v2 = 85, .v3 = 33 };
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
    try testing.expectEqual(c.ret_C_Uc_Ul(), .{ .v1 = 61, .v2 = 112, .v3 = 10651 });
    try testing.expectOk(c.assert_ret_C_Uc_Ul());
    try testing.expectOk(c.send_C_Uc_Ul());
    try testing.expectOk(c.assert_C_Uc_Ul(.{ .v1 = 61, .v2 = 112, .v3 = 10651 }));
}
pub export fn zig_assert_C_Uc_Ul(lv: c.C_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 61) err = 1;
    if (lv.v2 != 112) err = 2;
    if (lv.v3 != 10651) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_Ul() c.C_Uc_Ul {
    return .{ .v1 = 61, .v2 = 112, .v3 = 10651 };
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
    try testing.expectEqual(c.ret_C_Uc_Us(), .{ .v1 = 57, .v2 = 81, .v3 = 27476 });
    try testing.expectOk(c.assert_ret_C_Uc_Us());
    try testing.expectOk(c.send_C_Uc_Us());
    try testing.expectOk(c.assert_C_Uc_Us(.{ .v1 = 57, .v2 = 81, .v3 = 27476 }));
}
pub export fn zig_assert_C_Uc_Us(lv: c.C_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 57) err = 1;
    if (lv.v2 != 81) err = 2;
    if (lv.v3 != 27476) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_Us() c.C_Uc_Us {
    return .{ .v1 = 57, .v2 = 81, .v3 = 27476 };
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
    try testing.expectEqual(c.ret_C_Uc_Vp(), .{ .v1 = 20, .v2 = 69, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Uc_Vp());
    try testing.expectOk(c.send_C_Uc_Vp());
    try testing.expectOk(c.assert_C_Uc_Vp(.{ .v1 = 20, .v2 = 69, .v3 = null }));
}
pub export fn zig_assert_C_Uc_Vp(lv: c.C_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20) err = 1;
    if (lv.v2 != 69) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_Vp() c.C_Uc_Vp {
    return .{ .v1 = 20, .v2 = 69, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Ui(), .{ .v1 = 26, .v2 = 31736 });
    try testing.expectOk(c.assert_ret_C_Ui());
    try testing.expectOk(c.send_C_Ui());
    try testing.expectOk(c.assert_C_Ui(.{ .v1 = 26, .v2 = 31736 }));
}
pub export fn zig_assert_C_Ui(lv: c.C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26) err = 1;
    if (lv.v2 != 31736) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui() c.C_Ui {
    return .{ .v1 = 26, .v2 = 31736 };
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
    try testing.expectEqual(c.ret_C_Ui_C(), .{ .v1 = 22, .v2 = 6795, .v3 = 61 });
    try testing.expectOk(c.assert_ret_C_Ui_C());
    try testing.expectOk(c.send_C_Ui_C());
    try testing.expectOk(c.assert_C_Ui_C(.{ .v1 = 22, .v2 = 6795, .v3 = 61 }));
}
pub export fn zig_assert_C_Ui_C(lv: c.C_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22) err = 1;
    if (lv.v2 != 6795) err = 2;
    if (lv.v3 != 61) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_C() c.C_Ui_C {
    return .{ .v1 = 22, .v2 = 6795, .v3 = 61 };
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
    try testing.expectEqual(c.ret_C_Ui_D(), .{ .v1 = 43, .v2 = 14137, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_C_Ui_D());
    try testing.expectOk(c.send_C_Ui_D());
    try testing.expectOk(c.assert_C_Ui_D(.{ .v1 = 43, .v2 = 14137, .v3 = 4.5 }));
}
pub export fn zig_assert_C_Ui_D(lv: c.C_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 43) err = 1;
    if (lv.v2 != 14137) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_D() c.C_Ui_D {
    return .{ .v1 = 43, .v2 = 14137, .v3 = 4.5 };
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
    try testing.expectEqual(c.ret_C_Ui_F(), .{ .v1 = 85, .v2 = 4041, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_C_Ui_F());
    try testing.expectOk(c.send_C_Ui_F());
    try testing.expectOk(c.assert_C_Ui_F(.{ .v1 = 85, .v2 = 4041, .v3 = 1.0 }));
}
pub export fn zig_assert_C_Ui_F(lv: c.C_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 85) err = 1;
    if (lv.v2 != 4041) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_F() c.C_Ui_F {
    return .{ .v1 = 85, .v2 = 4041, .v3 = 1.0 };
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
    try testing.expectEqual(c.ret_C_Ui_I(), .{ .v1 = 69, .v2 = 26512, .v3 = 22760 });
    try testing.expectOk(c.assert_ret_C_Ui_I());
    try testing.expectOk(c.send_C_Ui_I());
    try testing.expectOk(c.assert_C_Ui_I(.{ .v1 = 69, .v2 = 26512, .v3 = 22760 }));
}
pub export fn zig_assert_C_Ui_I(lv: c.C_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 69) err = 1;
    if (lv.v2 != 26512) err = 2;
    if (lv.v3 != 22760) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_I() c.C_Ui_I {
    return .{ .v1 = 69, .v2 = 26512, .v3 = 22760 };
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
    try testing.expectEqual(c.ret_C_Ui_Ip(), .{ .v1 = 93, .v2 = 26266, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Ui_Ip());
    try testing.expectOk(c.send_C_Ui_Ip());
    try testing.expectOk(c.assert_C_Ui_Ip(.{ .v1 = 93, .v2 = 26266, .v3 = null }));
}
pub export fn zig_assert_C_Ui_Ip(lv: c.C_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 93) err = 1;
    if (lv.v2 != 26266) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_Ip() c.C_Ui_Ip {
    return .{ .v1 = 93, .v2 = 26266, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Ui_L(), .{ .v1 = 114, .v2 = 24147, .v3 = 31815 });
    try testing.expectOk(c.assert_ret_C_Ui_L());
    try testing.expectOk(c.send_C_Ui_L());
    try testing.expectOk(c.assert_C_Ui_L(.{ .v1 = 114, .v2 = 24147, .v3 = 31815 }));
}
pub export fn zig_assert_C_Ui_L(lv: c.C_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 114) err = 1;
    if (lv.v2 != 24147) err = 2;
    if (lv.v3 != 31815) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_L() c.C_Ui_L {
    return .{ .v1 = 114, .v2 = 24147, .v3 = 31815 };
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
    try testing.expectEqual(c.ret_C_Ui_S(), .{ .v1 = 114, .v2 = 26565, .v3 = 15293 });
    try testing.expectOk(c.assert_ret_C_Ui_S());
    try testing.expectOk(c.send_C_Ui_S());
    try testing.expectOk(c.assert_C_Ui_S(.{ .v1 = 114, .v2 = 26565, .v3 = 15293 }));
}
pub export fn zig_assert_C_Ui_S(lv: c.C_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 114) err = 1;
    if (lv.v2 != 26565) err = 2;
    if (lv.v3 != 15293) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_S() c.C_Ui_S {
    return .{ .v1 = 114, .v2 = 26565, .v3 = 15293 };
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
    try testing.expectEqual(c.ret_C_Ui_Uc(), .{ .v1 = 102, .v2 = 14294, .v3 = 15 });
    try testing.expectOk(c.assert_ret_C_Ui_Uc());
    try testing.expectOk(c.send_C_Ui_Uc());
    try testing.expectOk(c.assert_C_Ui_Uc(.{ .v1 = 102, .v2 = 14294, .v3 = 15 }));
}
pub export fn zig_assert_C_Ui_Uc(lv: c.C_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 102) err = 1;
    if (lv.v2 != 14294) err = 2;
    if (lv.v3 != 15) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_Uc() c.C_Ui_Uc {
    return .{ .v1 = 102, .v2 = 14294, .v3 = 15 };
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
    try testing.expectEqual(c.ret_C_Ui_Ui(), .{ .v1 = 25, .v2 = 14393, .v3 = 23880 });
    try testing.expectOk(c.assert_ret_C_Ui_Ui());
    try testing.expectOk(c.send_C_Ui_Ui());
    try testing.expectOk(c.assert_C_Ui_Ui(.{ .v1 = 25, .v2 = 14393, .v3 = 23880 }));
}
pub export fn zig_assert_C_Ui_Ui(lv: c.C_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25) err = 1;
    if (lv.v2 != 14393) err = 2;
    if (lv.v3 != 23880) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_Ui() c.C_Ui_Ui {
    return .{ .v1 = 25, .v2 = 14393, .v3 = 23880 };
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
    try testing.expectEqual(c.ret_C_Ui_Ul(), .{ .v1 = 29, .v2 = 27002, .v3 = 24958 });
    try testing.expectOk(c.assert_ret_C_Ui_Ul());
    try testing.expectOk(c.send_C_Ui_Ul());
    try testing.expectOk(c.assert_C_Ui_Ul(.{ .v1 = 29, .v2 = 27002, .v3 = 24958 }));
}
pub export fn zig_assert_C_Ui_Ul(lv: c.C_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29) err = 1;
    if (lv.v2 != 27002) err = 2;
    if (lv.v3 != 24958) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_Ul() c.C_Ui_Ul {
    return .{ .v1 = 29, .v2 = 27002, .v3 = 24958 };
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
    try testing.expectEqual(c.ret_C_Ui_Us(), .{ .v1 = 81, .v2 = 26064, .v3 = 12276 });
    try testing.expectOk(c.assert_ret_C_Ui_Us());
    try testing.expectOk(c.send_C_Ui_Us());
    try testing.expectOk(c.assert_C_Ui_Us(.{ .v1 = 81, .v2 = 26064, .v3 = 12276 }));
}
pub export fn zig_assert_C_Ui_Us(lv: c.C_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 81) err = 1;
    if (lv.v2 != 26064) err = 2;
    if (lv.v3 != 12276) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_Us() c.C_Ui_Us {
    return .{ .v1 = 81, .v2 = 26064, .v3 = 12276 };
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
    try testing.expectEqual(c.ret_C_Ui_Vp(), .{ .v1 = 109, .v2 = 8868, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Ui_Vp());
    try testing.expectOk(c.send_C_Ui_Vp());
    try testing.expectOk(c.assert_C_Ui_Vp(.{ .v1 = 109, .v2 = 8868, .v3 = null }));
}
pub export fn zig_assert_C_Ui_Vp(lv: c.C_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 109) err = 1;
    if (lv.v2 != 8868) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_Vp() c.C_Ui_Vp {
    return .{ .v1 = 109, .v2 = 8868, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Ul(), .{ .v1 = 56, .v2 = 29288 });
    try testing.expectOk(c.assert_ret_C_Ul());
    try testing.expectOk(c.send_C_Ul());
    try testing.expectOk(c.assert_C_Ul(.{ .v1 = 56, .v2 = 29288 }));
}
pub export fn zig_assert_C_Ul(lv: c.C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 56) err = 1;
    if (lv.v2 != 29288) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul() c.C_Ul {
    return .{ .v1 = 56, .v2 = 29288 };
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
    try testing.expectEqual(c.ret_C_Ul_C(), .{ .v1 = 85, .v2 = 16227, .v3 = 112 });
    try testing.expectOk(c.assert_ret_C_Ul_C());
    try testing.expectOk(c.send_C_Ul_C());
    try testing.expectOk(c.assert_C_Ul_C(.{ .v1 = 85, .v2 = 16227, .v3 = 112 }));
}
pub export fn zig_assert_C_Ul_C(lv: c.C_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 85) err = 1;
    if (lv.v2 != 16227) err = 2;
    if (lv.v3 != 112) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_C() c.C_Ul_C {
    return .{ .v1 = 85, .v2 = 16227, .v3 = 112 };
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
    try testing.expectEqual(c.ret_C_Ul_D(), .{ .v1 = 87, .v2 = 21565, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_C_Ul_D());
    try testing.expectOk(c.send_C_Ul_D());
    try testing.expectOk(c.assert_C_Ul_D(.{ .v1 = 87, .v2 = 21565, .v3 = -0.25 }));
}
pub export fn zig_assert_C_Ul_D(lv: c.C_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 87) err = 1;
    if (lv.v2 != 21565) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_D() c.C_Ul_D {
    return .{ .v1 = 87, .v2 = 21565, .v3 = -0.25 };
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
    try testing.expectEqual(c.ret_C_Ul_F(), .{ .v1 = 93, .v2 = 10370, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_C_Ul_F());
    try testing.expectOk(c.send_C_Ul_F());
    try testing.expectOk(c.assert_C_Ul_F(.{ .v1 = 93, .v2 = 10370, .v3 = 1.0 }));
}
pub export fn zig_assert_C_Ul_F(lv: c.C_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 93) err = 1;
    if (lv.v2 != 10370) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_F() c.C_Ul_F {
    return .{ .v1 = 93, .v2 = 10370, .v3 = 1.0 };
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
    try testing.expectEqual(c.ret_C_Ul_I(), .{ .v1 = 48, .v2 = 9451, .v3 = 20449 });
    try testing.expectOk(c.assert_ret_C_Ul_I());
    try testing.expectOk(c.send_C_Ul_I());
    try testing.expectOk(c.assert_C_Ul_I(.{ .v1 = 48, .v2 = 9451, .v3 = 20449 }));
}
pub export fn zig_assert_C_Ul_I(lv: c.C_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 48) err = 1;
    if (lv.v2 != 9451) err = 2;
    if (lv.v3 != 20449) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_I() c.C_Ul_I {
    return .{ .v1 = 48, .v2 = 9451, .v3 = 20449 };
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
    try testing.expectEqual(c.ret_C_Ul_Ip(), .{ .v1 = 96, .v2 = 26151, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Ul_Ip());
    try testing.expectOk(c.send_C_Ul_Ip());
    try testing.expectOk(c.assert_C_Ul_Ip(.{ .v1 = 96, .v2 = 26151, .v3 = null }));
}
pub export fn zig_assert_C_Ul_Ip(lv: c.C_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 96) err = 1;
    if (lv.v2 != 26151) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_Ip() c.C_Ul_Ip {
    return .{ .v1 = 96, .v2 = 26151, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Ul_L(), .{ .v1 = 13, .v2 = 26018, .v3 = 22684 });
    try testing.expectOk(c.assert_ret_C_Ul_L());
    try testing.expectOk(c.send_C_Ul_L());
    try testing.expectOk(c.assert_C_Ul_L(.{ .v1 = 13, .v2 = 26018, .v3 = 22684 }));
}
pub export fn zig_assert_C_Ul_L(lv: c.C_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13) err = 1;
    if (lv.v2 != 26018) err = 2;
    if (lv.v3 != 22684) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_L() c.C_Ul_L {
    return .{ .v1 = 13, .v2 = 26018, .v3 = 22684 };
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
    try testing.expectEqual(c.ret_C_Ul_S(), .{ .v1 = 33, .v2 = 12793, .v3 = 22758 });
    try testing.expectOk(c.assert_ret_C_Ul_S());
    try testing.expectOk(c.send_C_Ul_S());
    try testing.expectOk(c.assert_C_Ul_S(.{ .v1 = 33, .v2 = 12793, .v3 = 22758 }));
}
pub export fn zig_assert_C_Ul_S(lv: c.C_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 33) err = 1;
    if (lv.v2 != 12793) err = 2;
    if (lv.v3 != 22758) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_S() c.C_Ul_S {
    return .{ .v1 = 33, .v2 = 12793, .v3 = 22758 };
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
    try testing.expectEqual(c.ret_C_Ul_Uc(), .{ .v1 = 108, .v2 = 16056, .v3 = 74 });
    try testing.expectOk(c.assert_ret_C_Ul_Uc());
    try testing.expectOk(c.send_C_Ul_Uc());
    try testing.expectOk(c.assert_C_Ul_Uc(.{ .v1 = 108, .v2 = 16056, .v3 = 74 }));
}
pub export fn zig_assert_C_Ul_Uc(lv: c.C_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 108) err = 1;
    if (lv.v2 != 16056) err = 2;
    if (lv.v3 != 74) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_Uc() c.C_Ul_Uc {
    return .{ .v1 = 108, .v2 = 16056, .v3 = 74 };
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
    try testing.expectEqual(c.ret_C_Ul_Ui(), .{ .v1 = 63, .v2 = 8694, .v3 = 4446 });
    try testing.expectOk(c.assert_ret_C_Ul_Ui());
    try testing.expectOk(c.send_C_Ul_Ui());
    try testing.expectOk(c.assert_C_Ul_Ui(.{ .v1 = 63, .v2 = 8694, .v3 = 4446 }));
}
pub export fn zig_assert_C_Ul_Ui(lv: c.C_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 63) err = 1;
    if (lv.v2 != 8694) err = 2;
    if (lv.v3 != 4446) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_Ui() c.C_Ul_Ui {
    return .{ .v1 = 63, .v2 = 8694, .v3 = 4446 };
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
    try testing.expectEqual(c.ret_C_Ul_Ul(), .{ .v1 = 25, .v2 = 11834, .v3 = 25126 });
    try testing.expectOk(c.assert_ret_C_Ul_Ul());
    try testing.expectOk(c.send_C_Ul_Ul());
    try testing.expectOk(c.assert_C_Ul_Ul(.{ .v1 = 25, .v2 = 11834, .v3 = 25126 }));
}
pub export fn zig_assert_C_Ul_Ul(lv: c.C_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25) err = 1;
    if (lv.v2 != 11834) err = 2;
    if (lv.v3 != 25126) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_Ul() c.C_Ul_Ul {
    return .{ .v1 = 25, .v2 = 11834, .v3 = 25126 };
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
    try testing.expectEqual(c.ret_C_Ul_Us(), .{ .v1 = 84, .v2 = 31434, .v3 = 20396 });
    try testing.expectOk(c.assert_ret_C_Ul_Us());
    try testing.expectOk(c.send_C_Ul_Us());
    try testing.expectOk(c.assert_C_Ul_Us(.{ .v1 = 84, .v2 = 31434, .v3 = 20396 }));
}
pub export fn zig_assert_C_Ul_Us(lv: c.C_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 84) err = 1;
    if (lv.v2 != 31434) err = 2;
    if (lv.v3 != 20396) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_Us() c.C_Ul_Us {
    return .{ .v1 = 84, .v2 = 31434, .v3 = 20396 };
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
    try testing.expectEqual(c.ret_C_Ul_Vp(), .{ .v1 = 127, .v2 = 10941, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Ul_Vp());
    try testing.expectOk(c.send_C_Ul_Vp());
    try testing.expectOk(c.assert_C_Ul_Vp(.{ .v1 = 127, .v2 = 10941, .v3 = null }));
}
pub export fn zig_assert_C_Ul_Vp(lv: c.C_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 127) err = 1;
    if (lv.v2 != 10941) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_Vp() c.C_Ul_Vp {
    return .{ .v1 = 127, .v2 = 10941, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Us(), .{ .v1 = 11, .v2 = 7668 });
    try testing.expectOk(c.assert_ret_C_Us());
    try testing.expectOk(c.send_C_Us());
    try testing.expectOk(c.assert_C_Us(.{ .v1 = 11, .v2 = 7668 }));
}
pub export fn zig_assert_C_Us(lv: c.C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11) err = 1;
    if (lv.v2 != 7668) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us() c.C_Us {
    return .{ .v1 = 11, .v2 = 7668 };
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
    try testing.expectEqual(c.ret_C_Us_C(), .{ .v1 = 6, .v2 = 3306, .v3 = 87 });
    try testing.expectOk(c.assert_ret_C_Us_C());
    try testing.expectOk(c.send_C_Us_C());
    try testing.expectOk(c.assert_C_Us_C(.{ .v1 = 6, .v2 = 3306, .v3 = 87 }));
}
pub export fn zig_assert_C_Us_C(lv: c.C_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6) err = 1;
    if (lv.v2 != 3306) err = 2;
    if (lv.v3 != 87) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_C() c.C_Us_C {
    return .{ .v1 = 6, .v2 = 3306, .v3 = 87 };
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
    try testing.expectEqual(c.ret_C_Us_D(), .{ .v1 = 79, .v2 = 16460, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_C_Us_D());
    try testing.expectOk(c.send_C_Us_D());
    try testing.expectOk(c.assert_C_Us_D(.{ .v1 = 79, .v2 = 16460, .v3 = 4.5 }));
}
pub export fn zig_assert_C_Us_D(lv: c.C_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 79) err = 1;
    if (lv.v2 != 16460) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_D() c.C_Us_D {
    return .{ .v1 = 79, .v2 = 16460, .v3 = 4.5 };
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
    try testing.expectEqual(c.ret_C_Us_F(), .{ .v1 = 79, .v2 = 28080, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_C_Us_F());
    try testing.expectOk(c.send_C_Us_F());
    try testing.expectOk(c.assert_C_Us_F(.{ .v1 = 79, .v2 = 28080, .v3 = -0.25 }));
}
pub export fn zig_assert_C_Us_F(lv: c.C_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 79) err = 1;
    if (lv.v2 != 28080) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_F() c.C_Us_F {
    return .{ .v1 = 79, .v2 = 28080, .v3 = -0.25 };
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
    try testing.expectEqual(c.ret_C_Us_I(), .{ .v1 = 111, .v2 = 26602, .v3 = 26244 });
    try testing.expectOk(c.assert_ret_C_Us_I());
    try testing.expectOk(c.send_C_Us_I());
    try testing.expectOk(c.assert_C_Us_I(.{ .v1 = 111, .v2 = 26602, .v3 = 26244 }));
}
pub export fn zig_assert_C_Us_I(lv: c.C_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 111) err = 1;
    if (lv.v2 != 26602) err = 2;
    if (lv.v3 != 26244) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_I() c.C_Us_I {
    return .{ .v1 = 111, .v2 = 26602, .v3 = 26244 };
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
    try testing.expectEqual(c.ret_C_Us_Ip(), .{ .v1 = 25, .v2 = 25781, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Us_Ip());
    try testing.expectOk(c.send_C_Us_Ip());
    try testing.expectOk(c.assert_C_Us_Ip(.{ .v1 = 25, .v2 = 25781, .v3 = null }));
}
pub export fn zig_assert_C_Us_Ip(lv: c.C_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25) err = 1;
    if (lv.v2 != 25781) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_Ip() c.C_Us_Ip {
    return .{ .v1 = 25, .v2 = 25781, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Us_L(), .{ .v1 = 124, .v2 = 15152, .v3 = 10613 });
    try testing.expectOk(c.assert_ret_C_Us_L());
    try testing.expectOk(c.send_C_Us_L());
    try testing.expectOk(c.assert_C_Us_L(.{ .v1 = 124, .v2 = 15152, .v3 = 10613 }));
}
pub export fn zig_assert_C_Us_L(lv: c.C_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 124) err = 1;
    if (lv.v2 != 15152) err = 2;
    if (lv.v3 != 10613) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_L() c.C_Us_L {
    return .{ .v1 = 124, .v2 = 15152, .v3 = 10613 };
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
    try testing.expectEqual(c.ret_C_Us_S(), .{ .v1 = 35, .v2 = 1038, .v3 = 5876 });
    try testing.expectOk(c.assert_ret_C_Us_S());
    try testing.expectOk(c.send_C_Us_S());
    try testing.expectOk(c.assert_C_Us_S(.{ .v1 = 35, .v2 = 1038, .v3 = 5876 }));
}
pub export fn zig_assert_C_Us_S(lv: c.C_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 35) err = 1;
    if (lv.v2 != 1038) err = 2;
    if (lv.v3 != 5876) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_S() c.C_Us_S {
    return .{ .v1 = 35, .v2 = 1038, .v3 = 5876 };
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
    try testing.expectEqual(c.ret_C_Us_Uc(), .{ .v1 = 9, .v2 = 3631, .v3 = 113 });
    try testing.expectOk(c.assert_ret_C_Us_Uc());
    try testing.expectOk(c.send_C_Us_Uc());
    try testing.expectOk(c.assert_C_Us_Uc(.{ .v1 = 9, .v2 = 3631, .v3 = 113 }));
}
pub export fn zig_assert_C_Us_Uc(lv: c.C_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 3631) err = 2;
    if (lv.v3 != 113) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_Uc() c.C_Us_Uc {
    return .{ .v1 = 9, .v2 = 3631, .v3 = 113 };
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
    try testing.expectEqual(c.ret_C_Us_Ui(), .{ .v1 = 112, .v2 = 30036, .v3 = 2304 });
    try testing.expectOk(c.assert_ret_C_Us_Ui());
    try testing.expectOk(c.send_C_Us_Ui());
    try testing.expectOk(c.assert_C_Us_Ui(.{ .v1 = 112, .v2 = 30036, .v3 = 2304 }));
}
pub export fn zig_assert_C_Us_Ui(lv: c.C_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 112) err = 1;
    if (lv.v2 != 30036) err = 2;
    if (lv.v3 != 2304) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_Ui() c.C_Us_Ui {
    return .{ .v1 = 112, .v2 = 30036, .v3 = 2304 };
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
    try testing.expectEqual(c.ret_C_Us_Ul(), .{ .v1 = 113, .v2 = 19649, .v3 = 32092 });
    try testing.expectOk(c.assert_ret_C_Us_Ul());
    try testing.expectOk(c.send_C_Us_Ul());
    try testing.expectOk(c.assert_C_Us_Ul(.{ .v1 = 113, .v2 = 19649, .v3 = 32092 }));
}
pub export fn zig_assert_C_Us_Ul(lv: c.C_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 113) err = 1;
    if (lv.v2 != 19649) err = 2;
    if (lv.v3 != 32092) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_Ul() c.C_Us_Ul {
    return .{ .v1 = 113, .v2 = 19649, .v3 = 32092 };
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
    try testing.expectEqual(c.ret_C_Us_Us(), .{ .v1 = 25, .v2 = 28732, .v3 = 15181 });
    try testing.expectOk(c.assert_ret_C_Us_Us());
    try testing.expectOk(c.send_C_Us_Us());
    try testing.expectOk(c.assert_C_Us_Us(.{ .v1 = 25, .v2 = 28732, .v3 = 15181 }));
}
pub export fn zig_assert_C_Us_Us(lv: c.C_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25) err = 1;
    if (lv.v2 != 28732) err = 2;
    if (lv.v3 != 15181) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_Us() c.C_Us_Us {
    return .{ .v1 = 25, .v2 = 28732, .v3 = 15181 };
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
    try testing.expectEqual(c.ret_C_Us_Vp(), .{ .v1 = 126, .v2 = 12432, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Us_Vp());
    try testing.expectOk(c.send_C_Us_Vp());
    try testing.expectOk(c.assert_C_Us_Vp(.{ .v1 = 126, .v2 = 12432, .v3 = null }));
}
pub export fn zig_assert_C_Us_Vp(lv: c.C_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 126) err = 1;
    if (lv.v2 != 12432) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_Vp() c.C_Us_Vp {
    return .{ .v1 = 126, .v2 = 12432, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Vp(), .{ .v1 = 123, .v2 = null });
    try testing.expectOk(c.assert_ret_C_Vp());
    try testing.expectOk(c.send_C_Vp());
    try testing.expectOk(c.assert_C_Vp(.{ .v1 = 123, .v2 = null }));
}
pub export fn zig_assert_C_Vp(lv: c.C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 123) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp() c.C_Vp {
    return .{ .v1 = 123, .v2 = null };
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
    try testing.expectEqual(c.ret_C_Vp_C(), .{ .v1 = 50, .v2 = null, .v3 = 26 });
    try testing.expectOk(c.assert_ret_C_Vp_C());
    try testing.expectOk(c.send_C_Vp_C());
    try testing.expectOk(c.assert_C_Vp_C(.{ .v1 = 50, .v2 = null, .v3 = 26 }));
}
pub export fn zig_assert_C_Vp_C(lv: c.C_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 50) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 26) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_C() c.C_Vp_C {
    return .{ .v1 = 50, .v2 = null, .v3 = 26 };
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
    try testing.expectEqual(c.ret_C_Vp_D(), .{ .v1 = 8, .v2 = null, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_C_Vp_D());
    try testing.expectOk(c.send_C_Vp_D());
    try testing.expectOk(c.assert_C_Vp_D(.{ .v1 = 8, .v2 = null, .v3 = 0.5 }));
}
pub export fn zig_assert_C_Vp_D(lv: c.C_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_D() c.C_Vp_D {
    return .{ .v1 = 8, .v2 = null, .v3 = 0.5 };
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
    try testing.expectEqual(c.ret_C_Vp_F(), .{ .v1 = 78, .v2 = null, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_C_Vp_F());
    try testing.expectOk(c.send_C_Vp_F());
    try testing.expectOk(c.assert_C_Vp_F(.{ .v1 = 78, .v2 = null, .v3 = 0.5 }));
}
pub export fn zig_assert_C_Vp_F(lv: c.C_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 78) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_F() c.C_Vp_F {
    return .{ .v1 = 78, .v2 = null, .v3 = 0.5 };
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
    try testing.expectEqual(c.ret_C_Vp_I(), .{ .v1 = 79, .v2 = null, .v3 = 12771 });
    try testing.expectOk(c.assert_ret_C_Vp_I());
    try testing.expectOk(c.send_C_Vp_I());
    try testing.expectOk(c.assert_C_Vp_I(.{ .v1 = 79, .v2 = null, .v3 = 12771 }));
}
pub export fn zig_assert_C_Vp_I(lv: c.C_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 79) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 12771) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_I() c.C_Vp_I {
    return .{ .v1 = 79, .v2 = null, .v3 = 12771 };
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
    try testing.expectEqual(c.ret_C_Vp_Ip(), .{ .v1 = 3, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Vp_Ip());
    try testing.expectOk(c.send_C_Vp_Ip());
    try testing.expectOk(c.assert_C_Vp_Ip(.{ .v1 = 3, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_C_Vp_Ip(lv: c.C_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_Ip() c.C_Vp_Ip {
    return .{ .v1 = 3, .v2 = null, .v3 = null };
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
    try testing.expectEqual(c.ret_C_Vp_L(), .{ .v1 = 107, .v2 = null, .v3 = 30601 });
    try testing.expectOk(c.assert_ret_C_Vp_L());
    try testing.expectOk(c.send_C_Vp_L());
    try testing.expectOk(c.assert_C_Vp_L(.{ .v1 = 107, .v2 = null, .v3 = 30601 }));
}
pub export fn zig_assert_C_Vp_L(lv: c.C_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 107) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 30601) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_L() c.C_Vp_L {
    return .{ .v1 = 107, .v2 = null, .v3 = 30601 };
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
    try testing.expectEqual(c.ret_C_Vp_S(), .{ .v1 = 75, .v2 = null, .v3 = 10366 });
    try testing.expectOk(c.assert_ret_C_Vp_S());
    try testing.expectOk(c.send_C_Vp_S());
    try testing.expectOk(c.assert_C_Vp_S(.{ .v1 = 75, .v2 = null, .v3 = 10366 }));
}
pub export fn zig_assert_C_Vp_S(lv: c.C_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 75) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 10366) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_S() c.C_Vp_S {
    return .{ .v1 = 75, .v2 = null, .v3 = 10366 };
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
    try testing.expectEqual(c.ret_C_Vp_Uc(), .{ .v1 = 12, .v2 = null, .v3 = 120 });
    try testing.expectOk(c.assert_ret_C_Vp_Uc());
    try testing.expectOk(c.send_C_Vp_Uc());
    try testing.expectOk(c.assert_C_Vp_Uc(.{ .v1 = 12, .v2 = null, .v3 = 120 }));
}
pub export fn zig_assert_C_Vp_Uc(lv: c.C_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 120) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_Uc() c.C_Vp_Uc {
    return .{ .v1 = 12, .v2 = null, .v3 = 120 };
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
    try testing.expectEqual(c.ret_C_Vp_Ui(), .{ .v1 = 0, .v2 = null, .v3 = 11440 });
    try testing.expectOk(c.assert_ret_C_Vp_Ui());
    try testing.expectOk(c.send_C_Vp_Ui());
    try testing.expectOk(c.assert_C_Vp_Ui(.{ .v1 = 0, .v2 = null, .v3 = 11440 }));
}
pub export fn zig_assert_C_Vp_Ui(lv: c.C_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 11440) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_Ui() c.C_Vp_Ui {
    return .{ .v1 = 0, .v2 = null, .v3 = 11440 };
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
    try testing.expectEqual(c.ret_C_Vp_Ul(), .{ .v1 = 120, .v2 = null, .v3 = 6479 });
    try testing.expectOk(c.assert_ret_C_Vp_Ul());
    try testing.expectOk(c.send_C_Vp_Ul());
    try testing.expectOk(c.assert_C_Vp_Ul(.{ .v1 = 120, .v2 = null, .v3 = 6479 }));
}
pub export fn zig_assert_C_Vp_Ul(lv: c.C_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 120) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 6479) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_Ul() c.C_Vp_Ul {
    return .{ .v1 = 120, .v2 = null, .v3 = 6479 };
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
    try testing.expectEqual(c.ret_C_Vp_Us(), .{ .v1 = 102, .v2 = null, .v3 = 15745 });
    try testing.expectOk(c.assert_ret_C_Vp_Us());
    try testing.expectOk(c.send_C_Vp_Us());
    try testing.expectOk(c.assert_C_Vp_Us(.{ .v1 = 102, .v2 = null, .v3 = 15745 }));
}
pub export fn zig_assert_C_Vp_Us(lv: c.C_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 102) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 15745) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_Us() c.C_Vp_Us {
    return .{ .v1 = 102, .v2 = null, .v3 = 15745 };
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
    try testing.expectEqual(c.ret_C_Vp_Vp(), .{ .v1 = 44, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_C_Vp_Vp());
    try testing.expectOk(c.send_C_Vp_Vp());
    try testing.expectOk(c.assert_C_Vp_Vp(.{ .v1 = 44, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_C_Vp_Vp(lv: c.C_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 44) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_Vp() c.C_Vp_Vp {
    return .{ .v1 = 44, .v2 = null, .v3 = null };
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
    try testing.expectEqual(c.ret_D(), .{ .v1 = -2.125 });
    try testing.expectOk(c.assert_ret_D());
    try testing.expectOk(c.send_D());
    try testing.expectOk(c.assert_D(.{ .v1 = -2.125 }));
}
pub export fn zig_assert_D(lv: c.D) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D() c.D {
    return .{ .v1 = -2.125 };
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
    try testing.expectEqual(c.ret_D_C(), .{ .v1 = -0.25, .v2 = 15 });
    try testing.expectOk(c.assert_ret_D_C());
    try testing.expectOk(c.send_D_C());
    try testing.expectOk(c.assert_D_C(.{ .v1 = -0.25, .v2 = 15 }));
}
pub export fn zig_assert_D_C(lv: c.D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 15) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C() c.D_C {
    return .{ .v1 = -0.25, .v2 = 15 };
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
    try testing.expectEqual(c.ret_D_C_C(), .{ .v1 = -0.25, .v2 = 31, .v3 = 76 });
    try testing.expectOk(c.assert_ret_D_C_C());
    try testing.expectOk(c.send_D_C_C());
    try testing.expectOk(c.assert_D_C_C(.{ .v1 = -0.25, .v2 = 31, .v3 = 76 }));
}
pub export fn zig_assert_D_C_C(lv: c.D_C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 31) err = 2;
    if (lv.v3 != 76) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_C() c.D_C_C {
    return .{ .v1 = -0.25, .v2 = 31, .v3 = 76 };
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
    try testing.expectEqual(c.ret_D_C_D(), .{ .v1 = -2.125, .v2 = 112, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_D_C_D());
    try testing.expectOk(c.send_D_C_D());
    try testing.expectOk(c.assert_D_C_D(.{ .v1 = -2.125, .v2 = 112, .v3 = 1.0 }));
}
pub export fn zig_assert_D_C_D(lv: c.D_C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 112) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_D() c.D_C_D {
    return .{ .v1 = -2.125, .v2 = 112, .v3 = 1.0 };
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
    try testing.expectEqual(c.ret_D_C_F(), .{ .v1 = 0.5, .v2 = 33, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_D_C_F());
    try testing.expectOk(c.send_D_C_F());
    try testing.expectOk(c.assert_D_C_F(.{ .v1 = 0.5, .v2 = 33, .v3 = 0.875 }));
}
pub export fn zig_assert_D_C_F(lv: c.D_C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 33) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_F() c.D_C_F {
    return .{ .v1 = 0.5, .v2 = 33, .v3 = 0.875 };
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
    try testing.expectEqual(c.ret_D_C_I(), .{ .v1 = 7.0, .v2 = 26, .v3 = 32115 });
    try testing.expectOk(c.assert_ret_D_C_I());
    try testing.expectOk(c.send_D_C_I());
    try testing.expectOk(c.assert_D_C_I(.{ .v1 = 7.0, .v2 = 26, .v3 = 32115 }));
}
pub export fn zig_assert_D_C_I(lv: c.D_C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 26) err = 2;
    if (lv.v3 != 32115) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_I() c.D_C_I {
    return .{ .v1 = 7.0, .v2 = 26, .v3 = 32115 };
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
    try testing.expectEqual(c.ret_D_C_Ip(), .{ .v1 = 0.5, .v2 = 89, .v3 = null });
    try testing.expectOk(c.assert_ret_D_C_Ip());
    try testing.expectOk(c.send_D_C_Ip());
    try testing.expectOk(c.assert_D_C_Ip(.{ .v1 = 0.5, .v2 = 89, .v3 = null }));
}
pub export fn zig_assert_D_C_Ip(lv: c.D_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 89) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_Ip() c.D_C_Ip {
    return .{ .v1 = 0.5, .v2 = 89, .v3 = null };
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
    try testing.expectEqual(c.ret_D_C_L(), .{ .v1 = 0.5, .v2 = 119, .v3 = 22956 });
    try testing.expectOk(c.assert_ret_D_C_L());
    try testing.expectOk(c.send_D_C_L());
    try testing.expectOk(c.assert_D_C_L(.{ .v1 = 0.5, .v2 = 119, .v3 = 22956 }));
}
pub export fn zig_assert_D_C_L(lv: c.D_C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 119) err = 2;
    if (lv.v3 != 22956) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_L() c.D_C_L {
    return .{ .v1 = 0.5, .v2 = 119, .v3 = 22956 };
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
    try testing.expectEqual(c.ret_D_C_S(), .{ .v1 = 0.5, .v2 = 118, .v3 = 8349 });
    try testing.expectOk(c.assert_ret_D_C_S());
    try testing.expectOk(c.send_D_C_S());
    try testing.expectOk(c.assert_D_C_S(.{ .v1 = 0.5, .v2 = 118, .v3 = 8349 }));
}
pub export fn zig_assert_D_C_S(lv: c.D_C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 118) err = 2;
    if (lv.v3 != 8349) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_S() c.D_C_S {
    return .{ .v1 = 0.5, .v2 = 118, .v3 = 8349 };
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
    try testing.expectEqual(c.ret_D_C_Uc(), .{ .v1 = -0.25, .v2 = 118, .v3 = 31 });
    try testing.expectOk(c.assert_ret_D_C_Uc());
    try testing.expectOk(c.send_D_C_Uc());
    try testing.expectOk(c.assert_D_C_Uc(.{ .v1 = -0.25, .v2 = 118, .v3 = 31 }));
}
pub export fn zig_assert_D_C_Uc(lv: c.D_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 118) err = 2;
    if (lv.v3 != 31) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_Uc() c.D_C_Uc {
    return .{ .v1 = -0.25, .v2 = 118, .v3 = 31 };
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
    try testing.expectEqual(c.ret_D_C_Ui(), .{ .v1 = 1.0, .v2 = 17, .v3 = 10416 });
    try testing.expectOk(c.assert_ret_D_C_Ui());
    try testing.expectOk(c.send_D_C_Ui());
    try testing.expectOk(c.assert_D_C_Ui(.{ .v1 = 1.0, .v2 = 17, .v3 = 10416 }));
}
pub export fn zig_assert_D_C_Ui(lv: c.D_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 17) err = 2;
    if (lv.v3 != 10416) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_Ui() c.D_C_Ui {
    return .{ .v1 = 1.0, .v2 = 17, .v3 = 10416 };
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
    try testing.expectEqual(c.ret_D_C_Ul(), .{ .v1 = 4.5, .v2 = 83, .v3 = 16905 });
    try testing.expectOk(c.assert_ret_D_C_Ul());
    try testing.expectOk(c.send_D_C_Ul());
    try testing.expectOk(c.assert_D_C_Ul(.{ .v1 = 4.5, .v2 = 83, .v3 = 16905 }));
}
pub export fn zig_assert_D_C_Ul(lv: c.D_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 83) err = 2;
    if (lv.v3 != 16905) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_Ul() c.D_C_Ul {
    return .{ .v1 = 4.5, .v2 = 83, .v3 = 16905 };
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
    try testing.expectEqual(c.ret_D_C_Us(), .{ .v1 = 4.5, .v2 = 63, .v3 = 25175 });
    try testing.expectOk(c.assert_ret_D_C_Us());
    try testing.expectOk(c.send_D_C_Us());
    try testing.expectOk(c.assert_D_C_Us(.{ .v1 = 4.5, .v2 = 63, .v3 = 25175 }));
}
pub export fn zig_assert_D_C_Us(lv: c.D_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 63) err = 2;
    if (lv.v3 != 25175) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_Us() c.D_C_Us {
    return .{ .v1 = 4.5, .v2 = 63, .v3 = 25175 };
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
    try testing.expectEqual(c.ret_D_C_Vp(), .{ .v1 = -0.25, .v2 = 16, .v3 = null });
    try testing.expectOk(c.assert_ret_D_C_Vp());
    try testing.expectOk(c.send_D_C_Vp());
    try testing.expectOk(c.assert_D_C_Vp(.{ .v1 = -0.25, .v2 = 16, .v3 = null }));
}
pub export fn zig_assert_D_C_Vp(lv: c.D_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 16) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_Vp() c.D_C_Vp {
    return .{ .v1 = -0.25, .v2 = 16, .v3 = null };
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
    try testing.expectEqual(c.ret_D_D(), .{ .v1 = 1.0, .v2 = 0.875 });
    try testing.expectOk(c.assert_ret_D_D());
    try testing.expectOk(c.send_D_D());
    try testing.expectOk(c.assert_D_D(.{ .v1 = 1.0, .v2 = 0.875 }));
}
pub export fn zig_assert_D_D(lv: c.D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D() c.D_D {
    return .{ .v1 = 1.0, .v2 = 0.875 };
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
    try testing.expectEqual(c.ret_D_D_C(), .{ .v1 = -2.125, .v2 = 4.5, .v3 = 46 });
    try testing.expectOk(c.assert_ret_D_D_C());
    try testing.expectOk(c.send_D_D_C());
    try testing.expectOk(c.assert_D_D_C(.{ .v1 = -2.125, .v2 = 4.5, .v3 = 46 }));
}
pub export fn zig_assert_D_D_C(lv: c.D_D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 46) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_C() c.D_D_C {
    return .{ .v1 = -2.125, .v2 = 4.5, .v3 = 46 };
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
    try testing.expectEqual(c.ret_D_D_D(), .{ .v1 = 0.5, .v2 = 0.875, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_D_D_D());
    try testing.expectOk(c.send_D_D_D());
    try testing.expectOk(c.assert_D_D_D(.{ .v1 = 0.5, .v2 = 0.875, .v3 = 4.5 }));
}
pub export fn zig_assert_D_D_D(lv: c.D_D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_D() c.D_D_D {
    return .{ .v1 = 0.5, .v2 = 0.875, .v3 = 4.5 };
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
    try testing.expectEqual(c.ret_D_D_F(), .{ .v1 = 4.5, .v2 = 0.5, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_D_D_F());
    try testing.expectOk(c.send_D_D_F());
    try testing.expectOk(c.assert_D_D_F(.{ .v1 = 4.5, .v2 = 0.5, .v3 = -0.25 }));
}
pub export fn zig_assert_D_D_F(lv: c.D_D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_F() c.D_D_F {
    return .{ .v1 = 4.5, .v2 = 0.5, .v3 = -0.25 };
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
    try testing.expectEqual(c.ret_D_D_I(), .{ .v1 = -0.25, .v2 = 0.5, .v3 = 2232 });
    try testing.expectOk(c.assert_ret_D_D_I());
    try testing.expectOk(c.send_D_D_I());
    try testing.expectOk(c.assert_D_D_I(.{ .v1 = -0.25, .v2 = 0.5, .v3 = 2232 }));
}
pub export fn zig_assert_D_D_I(lv: c.D_D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 2232) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_I() c.D_D_I {
    return .{ .v1 = -0.25, .v2 = 0.5, .v3 = 2232 };
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
    try testing.expectEqual(c.ret_D_D_Ip(), .{ .v1 = -0.25, .v2 = 0.875, .v3 = null });
    try testing.expectOk(c.assert_ret_D_D_Ip());
    try testing.expectOk(c.send_D_D_Ip());
    try testing.expectOk(c.assert_D_D_Ip(.{ .v1 = -0.25, .v2 = 0.875, .v3 = null }));
}
pub export fn zig_assert_D_D_Ip(lv: c.D_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_Ip() c.D_D_Ip {
    return .{ .v1 = -0.25, .v2 = 0.875, .v3 = null };
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
    try testing.expectEqual(c.ret_D_D_L(), .{ .v1 = -2.125, .v2 = -0.25, .v3 = 25508 });
    try testing.expectOk(c.assert_ret_D_D_L());
    try testing.expectOk(c.send_D_D_L());
    try testing.expectOk(c.assert_D_D_L(.{ .v1 = -2.125, .v2 = -0.25, .v3 = 25508 }));
}
pub export fn zig_assert_D_D_L(lv: c.D_D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 25508) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_L() c.D_D_L {
    return .{ .v1 = -2.125, .v2 = -0.25, .v3 = 25508 };
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
    try testing.expectEqual(c.ret_D_D_S(), .{ .v1 = 0.5, .v2 = 4.5, .v3 = 7177 });
    try testing.expectOk(c.assert_ret_D_D_S());
    try testing.expectOk(c.send_D_D_S());
    try testing.expectOk(c.assert_D_D_S(.{ .v1 = 0.5, .v2 = 4.5, .v3 = 7177 }));
}
pub export fn zig_assert_D_D_S(lv: c.D_D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 7177) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_S() c.D_D_S {
    return .{ .v1 = 0.5, .v2 = 4.5, .v3 = 7177 };
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
    try testing.expectEqual(c.ret_D_D_Uc(), .{ .v1 = -2.125, .v2 = 0.5, .v3 = 15 });
    try testing.expectOk(c.assert_ret_D_D_Uc());
    try testing.expectOk(c.send_D_D_Uc());
    try testing.expectOk(c.assert_D_D_Uc(.{ .v1 = -2.125, .v2 = 0.5, .v3 = 15 }));
}
pub export fn zig_assert_D_D_Uc(lv: c.D_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 15) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_Uc() c.D_D_Uc {
    return .{ .v1 = -2.125, .v2 = 0.5, .v3 = 15 };
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
    try testing.expectEqual(c.ret_D_D_Ui(), .{ .v1 = -0.25, .v2 = -0.25, .v3 = 15554 });
    try testing.expectOk(c.assert_ret_D_D_Ui());
    try testing.expectOk(c.send_D_D_Ui());
    try testing.expectOk(c.assert_D_D_Ui(.{ .v1 = -0.25, .v2 = -0.25, .v3 = 15554 }));
}
pub export fn zig_assert_D_D_Ui(lv: c.D_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 15554) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_Ui() c.D_D_Ui {
    return .{ .v1 = -0.25, .v2 = -0.25, .v3 = 15554 };
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
    try testing.expectEqual(c.ret_D_D_Ul(), .{ .v1 = -0.25, .v2 = -2.125, .v3 = 25509 });
    try testing.expectOk(c.assert_ret_D_D_Ul());
    try testing.expectOk(c.send_D_D_Ul());
    try testing.expectOk(c.assert_D_D_Ul(.{ .v1 = -0.25, .v2 = -2.125, .v3 = 25509 }));
}
pub export fn zig_assert_D_D_Ul(lv: c.D_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 25509) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_Ul() c.D_D_Ul {
    return .{ .v1 = -0.25, .v2 = -2.125, .v3 = 25509 };
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
    try testing.expectEqual(c.ret_D_D_Us(), .{ .v1 = 4.5, .v2 = 4.5, .v3 = 12415 });
    try testing.expectOk(c.assert_ret_D_D_Us());
    try testing.expectOk(c.send_D_D_Us());
    try testing.expectOk(c.assert_D_D_Us(.{ .v1 = 4.5, .v2 = 4.5, .v3 = 12415 }));
}
pub export fn zig_assert_D_D_Us(lv: c.D_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 12415) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_Us() c.D_D_Us {
    return .{ .v1 = 4.5, .v2 = 4.5, .v3 = 12415 };
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
    try testing.expectEqual(c.ret_D_D_Vp(), .{ .v1 = 1.0, .v2 = 0.875, .v3 = null });
    try testing.expectOk(c.assert_ret_D_D_Vp());
    try testing.expectOk(c.send_D_D_Vp());
    try testing.expectOk(c.assert_D_D_Vp(.{ .v1 = 1.0, .v2 = 0.875, .v3 = null }));
}
pub export fn zig_assert_D_D_Vp(lv: c.D_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_Vp() c.D_D_Vp {
    return .{ .v1 = 1.0, .v2 = 0.875, .v3 = null };
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
    try testing.expectEqual(c.ret_D_F(), .{ .v1 = -2.125, .v2 = 0.875 });
    try testing.expectOk(c.assert_ret_D_F());
    try testing.expectOk(c.send_D_F());
    try testing.expectOk(c.assert_D_F(.{ .v1 = -2.125, .v2 = 0.875 }));
}
pub export fn zig_assert_D_F(lv: c.D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F() c.D_F {
    return .{ .v1 = -2.125, .v2 = 0.875 };
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
    try testing.expectEqual(c.ret_D_F_C(), .{ .v1 = -0.25, .v2 = 7.0, .v3 = 5 });
    try testing.expectOk(c.assert_ret_D_F_C());
    try testing.expectOk(c.send_D_F_C());
    try testing.expectOk(c.assert_D_F_C(.{ .v1 = -0.25, .v2 = 7.0, .v3 = 5 }));
}
pub export fn zig_assert_D_F_C(lv: c.D_F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_C() c.D_F_C {
    return .{ .v1 = -0.25, .v2 = 7.0, .v3 = 5 };
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
    try testing.expectEqual(c.ret_D_F_D(), .{ .v1 = 0.875, .v2 = 0.875, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_D_F_D());
    try testing.expectOk(c.send_D_F_D());
    try testing.expectOk(c.assert_D_F_D(.{ .v1 = 0.875, .v2 = 0.875, .v3 = 1.0 }));
}
pub export fn zig_assert_D_F_D(lv: c.D_F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_D() c.D_F_D {
    return .{ .v1 = 0.875, .v2 = 0.875, .v3 = 1.0 };
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
    try testing.expectEqual(c.ret_D_F_F(), .{ .v1 = 1.0, .v2 = 4.5, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_D_F_F());
    try testing.expectOk(c.send_D_F_F());
    try testing.expectOk(c.assert_D_F_F(.{ .v1 = 1.0, .v2 = 4.5, .v3 = 0.5 }));
}
pub export fn zig_assert_D_F_F(lv: c.D_F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_F() c.D_F_F {
    return .{ .v1 = 1.0, .v2 = 4.5, .v3 = 0.5 };
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
    try testing.expectEqual(c.ret_D_F_I(), .{ .v1 = 7.0, .v2 = 1.0, .v3 = 31290 });
    try testing.expectOk(c.assert_ret_D_F_I());
    try testing.expectOk(c.send_D_F_I());
    try testing.expectOk(c.assert_D_F_I(.{ .v1 = 7.0, .v2 = 1.0, .v3 = 31290 }));
}
pub export fn zig_assert_D_F_I(lv: c.D_F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 31290) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_I() c.D_F_I {
    return .{ .v1 = 7.0, .v2 = 1.0, .v3 = 31290 };
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
    try testing.expectEqual(c.ret_D_F_Ip(), .{ .v1 = -2.125, .v2 = 7.0, .v3 = null });
    try testing.expectOk(c.assert_ret_D_F_Ip());
    try testing.expectOk(c.send_D_F_Ip());
    try testing.expectOk(c.assert_D_F_Ip(.{ .v1 = -2.125, .v2 = 7.0, .v3 = null }));
}
pub export fn zig_assert_D_F_Ip(lv: c.D_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_Ip() c.D_F_Ip {
    return .{ .v1 = -2.125, .v2 = 7.0, .v3 = null };
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
    try testing.expectEqual(c.ret_D_F_L(), .{ .v1 = -2.125, .v2 = 0.5, .v3 = 23080 });
    try testing.expectOk(c.assert_ret_D_F_L());
    try testing.expectOk(c.send_D_F_L());
    try testing.expectOk(c.assert_D_F_L(.{ .v1 = -2.125, .v2 = 0.5, .v3 = 23080 }));
}
pub export fn zig_assert_D_F_L(lv: c.D_F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 23080) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_L() c.D_F_L {
    return .{ .v1 = -2.125, .v2 = 0.5, .v3 = 23080 };
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
    try testing.expectEqual(c.ret_D_F_S(), .{ .v1 = 0.875, .v2 = 7.0, .v3 = 22172 });
    try testing.expectOk(c.assert_ret_D_F_S());
    try testing.expectOk(c.send_D_F_S());
    try testing.expectOk(c.assert_D_F_S(.{ .v1 = 0.875, .v2 = 7.0, .v3 = 22172 }));
}
pub export fn zig_assert_D_F_S(lv: c.D_F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 22172) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_S() c.D_F_S {
    return .{ .v1 = 0.875, .v2 = 7.0, .v3 = 22172 };
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
    try testing.expectEqual(c.ret_D_F_Uc(), .{ .v1 = -2.125, .v2 = -0.25, .v3 = 116 });
    try testing.expectOk(c.assert_ret_D_F_Uc());
    try testing.expectOk(c.send_D_F_Uc());
    try testing.expectOk(c.assert_D_F_Uc(.{ .v1 = -2.125, .v2 = -0.25, .v3 = 116 }));
}
pub export fn zig_assert_D_F_Uc(lv: c.D_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 116) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_Uc() c.D_F_Uc {
    return .{ .v1 = -2.125, .v2 = -0.25, .v3 = 116 };
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
    try testing.expectEqual(c.ret_D_F_Ui(), .{ .v1 = -2.125, .v2 = 1.0, .v3 = 25651 });
    try testing.expectOk(c.assert_ret_D_F_Ui());
    try testing.expectOk(c.send_D_F_Ui());
    try testing.expectOk(c.assert_D_F_Ui(.{ .v1 = -2.125, .v2 = 1.0, .v3 = 25651 }));
}
pub export fn zig_assert_D_F_Ui(lv: c.D_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 25651) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_Ui() c.D_F_Ui {
    return .{ .v1 = -2.125, .v2 = 1.0, .v3 = 25651 };
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
    try testing.expectEqual(c.ret_D_F_Ul(), .{ .v1 = 0.875, .v2 = -0.25, .v3 = 7057 });
    try testing.expectOk(c.assert_ret_D_F_Ul());
    try testing.expectOk(c.send_D_F_Ul());
    try testing.expectOk(c.assert_D_F_Ul(.{ .v1 = 0.875, .v2 = -0.25, .v3 = 7057 }));
}
pub export fn zig_assert_D_F_Ul(lv: c.D_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 7057) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_Ul() c.D_F_Ul {
    return .{ .v1 = 0.875, .v2 = -0.25, .v3 = 7057 };
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
    try testing.expectEqual(c.ret_D_F_Us(), .{ .v1 = 4.5, .v2 = 7.0, .v3 = 20824 });
    try testing.expectOk(c.assert_ret_D_F_Us());
    try testing.expectOk(c.send_D_F_Us());
    try testing.expectOk(c.assert_D_F_Us(.{ .v1 = 4.5, .v2 = 7.0, .v3 = 20824 }));
}
pub export fn zig_assert_D_F_Us(lv: c.D_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 20824) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_Us() c.D_F_Us {
    return .{ .v1 = 4.5, .v2 = 7.0, .v3 = 20824 };
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
    try testing.expectEqual(c.ret_D_F_Vp(), .{ .v1 = 4.5, .v2 = 1.0, .v3 = null });
    try testing.expectOk(c.assert_ret_D_F_Vp());
    try testing.expectOk(c.send_D_F_Vp());
    try testing.expectOk(c.assert_D_F_Vp(.{ .v1 = 4.5, .v2 = 1.0, .v3 = null }));
}
pub export fn zig_assert_D_F_Vp(lv: c.D_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_Vp() c.D_F_Vp {
    return .{ .v1 = 4.5, .v2 = 1.0, .v3 = null };
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
    try testing.expectEqual(c.ret_D_I(), .{ .v1 = 4.5, .v2 = 18569 });
    try testing.expectOk(c.assert_ret_D_I());
    try testing.expectOk(c.send_D_I());
    try testing.expectOk(c.assert_D_I(.{ .v1 = 4.5, .v2 = 18569 }));
}
pub export fn zig_assert_D_I(lv: c.D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 18569) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I() c.D_I {
    return .{ .v1 = 4.5, .v2 = 18569 };
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
    try testing.expectEqual(c.ret_D_I_C(), .{ .v1 = 1.0, .v2 = 24024, .v3 = 99 });
    try testing.expectOk(c.assert_ret_D_I_C());
    try testing.expectOk(c.send_D_I_C());
    try testing.expectOk(c.assert_D_I_C(.{ .v1 = 1.0, .v2 = 24024, .v3 = 99 }));
}
pub export fn zig_assert_D_I_C(lv: c.D_I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 24024) err = 2;
    if (lv.v3 != 99) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_C() c.D_I_C {
    return .{ .v1 = 1.0, .v2 = 24024, .v3 = 99 };
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
    try testing.expectEqual(c.ret_D_I_D(), .{ .v1 = 4.5, .v2 = 30236, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_D_I_D());
    try testing.expectOk(c.send_D_I_D());
    try testing.expectOk(c.assert_D_I_D(.{ .v1 = 4.5, .v2 = 30236, .v3 = -2.125 }));
}
pub export fn zig_assert_D_I_D(lv: c.D_I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 30236) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_D() c.D_I_D {
    return .{ .v1 = 4.5, .v2 = 30236, .v3 = -2.125 };
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
    try testing.expectEqual(c.ret_D_I_F(), .{ .v1 = 7.0, .v2 = 5029, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_D_I_F());
    try testing.expectOk(c.send_D_I_F());
    try testing.expectOk(c.assert_D_I_F(.{ .v1 = 7.0, .v2 = 5029, .v3 = 1.0 }));
}
pub export fn zig_assert_D_I_F(lv: c.D_I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 5029) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_F() c.D_I_F {
    return .{ .v1 = 7.0, .v2 = 5029, .v3 = 1.0 };
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
    try testing.expectEqual(c.ret_D_I_I(), .{ .v1 = 7.0, .v2 = 13633, .v3 = 9829 });
    try testing.expectOk(c.assert_ret_D_I_I());
    try testing.expectOk(c.send_D_I_I());
    try testing.expectOk(c.assert_D_I_I(.{ .v1 = 7.0, .v2 = 13633, .v3 = 9829 }));
}
pub export fn zig_assert_D_I_I(lv: c.D_I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 13633) err = 2;
    if (lv.v3 != 9829) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_I() c.D_I_I {
    return .{ .v1 = 7.0, .v2 = 13633, .v3 = 9829 };
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
    try testing.expectEqual(c.ret_D_I_Ip(), .{ .v1 = 4.5, .v2 = 9051, .v3 = null });
    try testing.expectOk(c.assert_ret_D_I_Ip());
    try testing.expectOk(c.send_D_I_Ip());
    try testing.expectOk(c.assert_D_I_Ip(.{ .v1 = 4.5, .v2 = 9051, .v3 = null }));
}
pub export fn zig_assert_D_I_Ip(lv: c.D_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 9051) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_Ip() c.D_I_Ip {
    return .{ .v1 = 4.5, .v2 = 9051, .v3 = null };
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
    try testing.expectEqual(c.ret_D_I_L(), .{ .v1 = -0.25, .v2 = 18331, .v3 = 10784 });
    try testing.expectOk(c.assert_ret_D_I_L());
    try testing.expectOk(c.send_D_I_L());
    try testing.expectOk(c.assert_D_I_L(.{ .v1 = -0.25, .v2 = 18331, .v3 = 10784 }));
}
pub export fn zig_assert_D_I_L(lv: c.D_I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 18331) err = 2;
    if (lv.v3 != 10784) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_L() c.D_I_L {
    return .{ .v1 = -0.25, .v2 = 18331, .v3 = 10784 };
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
    try testing.expectEqual(c.ret_D_I_S(), .{ .v1 = 0.875, .v2 = 29861, .v3 = 13238 });
    try testing.expectOk(c.assert_ret_D_I_S());
    try testing.expectOk(c.send_D_I_S());
    try testing.expectOk(c.assert_D_I_S(.{ .v1 = 0.875, .v2 = 29861, .v3 = 13238 }));
}
pub export fn zig_assert_D_I_S(lv: c.D_I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 29861) err = 2;
    if (lv.v3 != 13238) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_S() c.D_I_S {
    return .{ .v1 = 0.875, .v2 = 29861, .v3 = 13238 };
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
    try testing.expectEqual(c.ret_D_I_Uc(), .{ .v1 = -0.25, .v2 = 19530, .v3 = 81 });
    try testing.expectOk(c.assert_ret_D_I_Uc());
    try testing.expectOk(c.send_D_I_Uc());
    try testing.expectOk(c.assert_D_I_Uc(.{ .v1 = -0.25, .v2 = 19530, .v3 = 81 }));
}
pub export fn zig_assert_D_I_Uc(lv: c.D_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 19530) err = 2;
    if (lv.v3 != 81) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_Uc() c.D_I_Uc {
    return .{ .v1 = -0.25, .v2 = 19530, .v3 = 81 };
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
    try testing.expectEqual(c.ret_D_I_Ui(), .{ .v1 = 1.0, .v2 = 31107, .v3 = 21469 });
    try testing.expectOk(c.assert_ret_D_I_Ui());
    try testing.expectOk(c.send_D_I_Ui());
    try testing.expectOk(c.assert_D_I_Ui(.{ .v1 = 1.0, .v2 = 31107, .v3 = 21469 }));
}
pub export fn zig_assert_D_I_Ui(lv: c.D_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 31107) err = 2;
    if (lv.v3 != 21469) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_Ui() c.D_I_Ui {
    return .{ .v1 = 1.0, .v2 = 31107, .v3 = 21469 };
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
    try testing.expectEqual(c.ret_D_I_Ul(), .{ .v1 = 7.0, .v2 = 32447, .v3 = 28274 });
    try testing.expectOk(c.assert_ret_D_I_Ul());
    try testing.expectOk(c.send_D_I_Ul());
    try testing.expectOk(c.assert_D_I_Ul(.{ .v1 = 7.0, .v2 = 32447, .v3 = 28274 }));
}
pub export fn zig_assert_D_I_Ul(lv: c.D_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 32447) err = 2;
    if (lv.v3 != 28274) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_Ul() c.D_I_Ul {
    return .{ .v1 = 7.0, .v2 = 32447, .v3 = 28274 };
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
    try testing.expectEqual(c.ret_D_I_Us(), .{ .v1 = 0.875, .v2 = 14380, .v3 = 122 });
    try testing.expectOk(c.assert_ret_D_I_Us());
    try testing.expectOk(c.send_D_I_Us());
    try testing.expectOk(c.assert_D_I_Us(.{ .v1 = 0.875, .v2 = 14380, .v3 = 122 }));
}
pub export fn zig_assert_D_I_Us(lv: c.D_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 14380) err = 2;
    if (lv.v3 != 122) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_Us() c.D_I_Us {
    return .{ .v1 = 0.875, .v2 = 14380, .v3 = 122 };
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
    try testing.expectEqual(c.ret_D_I_Vp(), .{ .v1 = 4.5, .v2 = 9870, .v3 = null });
    try testing.expectOk(c.assert_ret_D_I_Vp());
    try testing.expectOk(c.send_D_I_Vp());
    try testing.expectOk(c.assert_D_I_Vp(.{ .v1 = 4.5, .v2 = 9870, .v3 = null }));
}
pub export fn zig_assert_D_I_Vp(lv: c.D_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 9870) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_Vp() c.D_I_Vp {
    return .{ .v1 = 4.5, .v2 = 9870, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Ip(), .{ .v1 = 0.875, .v2 = null });
    try testing.expectOk(c.assert_ret_D_Ip());
    try testing.expectOk(c.send_D_Ip());
    try testing.expectOk(c.assert_D_Ip(.{ .v1 = 0.875, .v2 = null }));
}
pub export fn zig_assert_D_Ip(lv: c.D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip() c.D_Ip {
    return .{ .v1 = 0.875, .v2 = null };
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
    try testing.expectEqual(c.ret_D_Ip_C(), .{ .v1 = 0.5, .v2 = null, .v3 = 55 });
    try testing.expectOk(c.assert_ret_D_Ip_C());
    try testing.expectOk(c.send_D_Ip_C());
    try testing.expectOk(c.assert_D_Ip_C(.{ .v1 = 0.5, .v2 = null, .v3 = 55 }));
}
pub export fn zig_assert_D_Ip_C(lv: c.D_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 55) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_C() c.D_Ip_C {
    return .{ .v1 = 0.5, .v2 = null, .v3 = 55 };
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
    try testing.expectEqual(c.ret_D_Ip_D(), .{ .v1 = 0.5, .v2 = null, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_D_Ip_D());
    try testing.expectOk(c.send_D_Ip_D());
    try testing.expectOk(c.assert_D_Ip_D(.{ .v1 = 0.5, .v2 = null, .v3 = -2.125 }));
}
pub export fn zig_assert_D_Ip_D(lv: c.D_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_D() c.D_Ip_D {
    return .{ .v1 = 0.5, .v2 = null, .v3 = -2.125 };
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
    try testing.expectEqual(c.ret_D_Ip_F(), .{ .v1 = 0.5, .v2 = null, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_D_Ip_F());
    try testing.expectOk(c.send_D_Ip_F());
    try testing.expectOk(c.assert_D_Ip_F(.{ .v1 = 0.5, .v2 = null, .v3 = 4.5 }));
}
pub export fn zig_assert_D_Ip_F(lv: c.D_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_F() c.D_Ip_F {
    return .{ .v1 = 0.5, .v2 = null, .v3 = 4.5 };
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
    try testing.expectEqual(c.ret_D_Ip_I(), .{ .v1 = -0.25, .v2 = null, .v3 = 25718 });
    try testing.expectOk(c.assert_ret_D_Ip_I());
    try testing.expectOk(c.send_D_Ip_I());
    try testing.expectOk(c.assert_D_Ip_I(.{ .v1 = -0.25, .v2 = null, .v3 = 25718 }));
}
pub export fn zig_assert_D_Ip_I(lv: c.D_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 25718) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_I() c.D_Ip_I {
    return .{ .v1 = -0.25, .v2 = null, .v3 = 25718 };
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
    try testing.expectEqual(c.ret_D_Ip_Ip(), .{ .v1 = -0.25, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Ip_Ip());
    try testing.expectOk(c.send_D_Ip_Ip());
    try testing.expectOk(c.assert_D_Ip_Ip(.{ .v1 = -0.25, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_D_Ip_Ip(lv: c.D_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_Ip() c.D_Ip_Ip {
    return .{ .v1 = -0.25, .v2 = null, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Ip_L(), .{ .v1 = 0.875, .v2 = null, .v3 = 3369 });
    try testing.expectOk(c.assert_ret_D_Ip_L());
    try testing.expectOk(c.send_D_Ip_L());
    try testing.expectOk(c.assert_D_Ip_L(.{ .v1 = 0.875, .v2 = null, .v3 = 3369 }));
}
pub export fn zig_assert_D_Ip_L(lv: c.D_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 3369) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_L() c.D_Ip_L {
    return .{ .v1 = 0.875, .v2 = null, .v3 = 3369 };
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
    try testing.expectEqual(c.ret_D_Ip_S(), .{ .v1 = 0.875, .v2 = null, .v3 = 14756 });
    try testing.expectOk(c.assert_ret_D_Ip_S());
    try testing.expectOk(c.send_D_Ip_S());
    try testing.expectOk(c.assert_D_Ip_S(.{ .v1 = 0.875, .v2 = null, .v3 = 14756 }));
}
pub export fn zig_assert_D_Ip_S(lv: c.D_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 14756) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_S() c.D_Ip_S {
    return .{ .v1 = 0.875, .v2 = null, .v3 = 14756 };
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
    try testing.expectEqual(c.ret_D_Ip_Uc(), .{ .v1 = -0.25, .v2 = null, .v3 = 61 });
    try testing.expectOk(c.assert_ret_D_Ip_Uc());
    try testing.expectOk(c.send_D_Ip_Uc());
    try testing.expectOk(c.assert_D_Ip_Uc(.{ .v1 = -0.25, .v2 = null, .v3 = 61 }));
}
pub export fn zig_assert_D_Ip_Uc(lv: c.D_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 61) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_Uc() c.D_Ip_Uc {
    return .{ .v1 = -0.25, .v2 = null, .v3 = 61 };
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
    try testing.expectEqual(c.ret_D_Ip_Ui(), .{ .v1 = 7.0, .v2 = null, .v3 = 24999 });
    try testing.expectOk(c.assert_ret_D_Ip_Ui());
    try testing.expectOk(c.send_D_Ip_Ui());
    try testing.expectOk(c.assert_D_Ip_Ui(.{ .v1 = 7.0, .v2 = null, .v3 = 24999 }));
}
pub export fn zig_assert_D_Ip_Ui(lv: c.D_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 24999) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_Ui() c.D_Ip_Ui {
    return .{ .v1 = 7.0, .v2 = null, .v3 = 24999 };
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
    try testing.expectEqual(c.ret_D_Ip_Ul(), .{ .v1 = -0.25, .v2 = null, .v3 = 22031 });
    try testing.expectOk(c.assert_ret_D_Ip_Ul());
    try testing.expectOk(c.send_D_Ip_Ul());
    try testing.expectOk(c.assert_D_Ip_Ul(.{ .v1 = -0.25, .v2 = null, .v3 = 22031 }));
}
pub export fn zig_assert_D_Ip_Ul(lv: c.D_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 22031) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_Ul() c.D_Ip_Ul {
    return .{ .v1 = -0.25, .v2 = null, .v3 = 22031 };
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
    try testing.expectEqual(c.ret_D_Ip_Us(), .{ .v1 = 4.5, .v2 = null, .v3 = 741 });
    try testing.expectOk(c.assert_ret_D_Ip_Us());
    try testing.expectOk(c.send_D_Ip_Us());
    try testing.expectOk(c.assert_D_Ip_Us(.{ .v1 = 4.5, .v2 = null, .v3 = 741 }));
}
pub export fn zig_assert_D_Ip_Us(lv: c.D_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 741) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_Us() c.D_Ip_Us {
    return .{ .v1 = 4.5, .v2 = null, .v3 = 741 };
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
    try testing.expectEqual(c.ret_D_Ip_Vp(), .{ .v1 = 1.0, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Ip_Vp());
    try testing.expectOk(c.send_D_Ip_Vp());
    try testing.expectOk(c.assert_D_Ip_Vp(.{ .v1 = 1.0, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_D_Ip_Vp(lv: c.D_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_Vp() c.D_Ip_Vp {
    return .{ .v1 = 1.0, .v2 = null, .v3 = null };
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
    try testing.expectEqual(c.ret_D_L(), .{ .v1 = 4.5, .v2 = 9582 });
    try testing.expectOk(c.assert_ret_D_L());
    try testing.expectOk(c.send_D_L());
    try testing.expectOk(c.assert_D_L(.{ .v1 = 4.5, .v2 = 9582 }));
}
pub export fn zig_assert_D_L(lv: c.D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 9582) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L() c.D_L {
    return .{ .v1 = 4.5, .v2 = 9582 };
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
    try testing.expectEqual(c.ret_D_L_C(), .{ .v1 = 4.5, .v2 = 18867, .v3 = 76 });
    try testing.expectOk(c.assert_ret_D_L_C());
    try testing.expectOk(c.send_D_L_C());
    try testing.expectOk(c.assert_D_L_C(.{ .v1 = 4.5, .v2 = 18867, .v3 = 76 }));
}
pub export fn zig_assert_D_L_C(lv: c.D_L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 18867) err = 2;
    if (lv.v3 != 76) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_C() c.D_L_C {
    return .{ .v1 = 4.5, .v2 = 18867, .v3 = 76 };
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
    try testing.expectEqual(c.ret_D_L_D(), .{ .v1 = -0.25, .v2 = 21051, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_D_L_D());
    try testing.expectOk(c.send_D_L_D());
    try testing.expectOk(c.assert_D_L_D(.{ .v1 = -0.25, .v2 = 21051, .v3 = 0.875 }));
}
pub export fn zig_assert_D_L_D(lv: c.D_L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 21051) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_D() c.D_L_D {
    return .{ .v1 = -0.25, .v2 = 21051, .v3 = 0.875 };
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
    try testing.expectEqual(c.ret_D_L_F(), .{ .v1 = 1.0, .v2 = 30914, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_D_L_F());
    try testing.expectOk(c.send_D_L_F());
    try testing.expectOk(c.assert_D_L_F(.{ .v1 = 1.0, .v2 = 30914, .v3 = 1.0 }));
}
pub export fn zig_assert_D_L_F(lv: c.D_L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 30914) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_F() c.D_L_F {
    return .{ .v1 = 1.0, .v2 = 30914, .v3 = 1.0 };
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
    try testing.expectEqual(c.ret_D_L_I(), .{ .v1 = 1.0, .v2 = 14517, .v3 = 8201 });
    try testing.expectOk(c.assert_ret_D_L_I());
    try testing.expectOk(c.send_D_L_I());
    try testing.expectOk(c.assert_D_L_I(.{ .v1 = 1.0, .v2 = 14517, .v3 = 8201 }));
}
pub export fn zig_assert_D_L_I(lv: c.D_L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 14517) err = 2;
    if (lv.v3 != 8201) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_I() c.D_L_I {
    return .{ .v1 = 1.0, .v2 = 14517, .v3 = 8201 };
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
    try testing.expectEqual(c.ret_D_L_Ip(), .{ .v1 = 0.875, .v2 = 3359, .v3 = null });
    try testing.expectOk(c.assert_ret_D_L_Ip());
    try testing.expectOk(c.send_D_L_Ip());
    try testing.expectOk(c.assert_D_L_Ip(.{ .v1 = 0.875, .v2 = 3359, .v3 = null }));
}
pub export fn zig_assert_D_L_Ip(lv: c.D_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 3359) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_Ip() c.D_L_Ip {
    return .{ .v1 = 0.875, .v2 = 3359, .v3 = null };
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
    try testing.expectEqual(c.ret_D_L_L(), .{ .v1 = -0.25, .v2 = 31346, .v3 = 3876 });
    try testing.expectOk(c.assert_ret_D_L_L());
    try testing.expectOk(c.send_D_L_L());
    try testing.expectOk(c.assert_D_L_L(.{ .v1 = -0.25, .v2 = 31346, .v3 = 3876 }));
}
pub export fn zig_assert_D_L_L(lv: c.D_L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 31346) err = 2;
    if (lv.v3 != 3876) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_L() c.D_L_L {
    return .{ .v1 = -0.25, .v2 = 31346, .v3 = 3876 };
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
    try testing.expectEqual(c.ret_D_L_S(), .{ .v1 = 4.5, .v2 = 11502, .v3 = 16315 });
    try testing.expectOk(c.assert_ret_D_L_S());
    try testing.expectOk(c.send_D_L_S());
    try testing.expectOk(c.assert_D_L_S(.{ .v1 = 4.5, .v2 = 11502, .v3 = 16315 }));
}
pub export fn zig_assert_D_L_S(lv: c.D_L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 11502) err = 2;
    if (lv.v3 != 16315) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_S() c.D_L_S {
    return .{ .v1 = 4.5, .v2 = 11502, .v3 = 16315 };
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
    try testing.expectEqual(c.ret_D_L_Uc(), .{ .v1 = 0.5, .v2 = 20559, .v3 = 102 });
    try testing.expectOk(c.assert_ret_D_L_Uc());
    try testing.expectOk(c.send_D_L_Uc());
    try testing.expectOk(c.assert_D_L_Uc(.{ .v1 = 0.5, .v2 = 20559, .v3 = 102 }));
}
pub export fn zig_assert_D_L_Uc(lv: c.D_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 20559) err = 2;
    if (lv.v3 != 102) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_Uc() c.D_L_Uc {
    return .{ .v1 = 0.5, .v2 = 20559, .v3 = 102 };
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
    try testing.expectEqual(c.ret_D_L_Ui(), .{ .v1 = -2.125, .v2 = 17125, .v3 = 8313 });
    try testing.expectOk(c.assert_ret_D_L_Ui());
    try testing.expectOk(c.send_D_L_Ui());
    try testing.expectOk(c.assert_D_L_Ui(.{ .v1 = -2.125, .v2 = 17125, .v3 = 8313 }));
}
pub export fn zig_assert_D_L_Ui(lv: c.D_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 17125) err = 2;
    if (lv.v3 != 8313) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_Ui() c.D_L_Ui {
    return .{ .v1 = -2.125, .v2 = 17125, .v3 = 8313 };
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
    try testing.expectEqual(c.ret_D_L_Ul(), .{ .v1 = 7.0, .v2 = 22788, .v3 = 1950 });
    try testing.expectOk(c.assert_ret_D_L_Ul());
    try testing.expectOk(c.send_D_L_Ul());
    try testing.expectOk(c.assert_D_L_Ul(.{ .v1 = 7.0, .v2 = 22788, .v3 = 1950 }));
}
pub export fn zig_assert_D_L_Ul(lv: c.D_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 22788) err = 2;
    if (lv.v3 != 1950) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_Ul() c.D_L_Ul {
    return .{ .v1 = 7.0, .v2 = 22788, .v3 = 1950 };
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
    try testing.expectEqual(c.ret_D_L_Us(), .{ .v1 = 7.0, .v2 = 14381, .v3 = 29145 });
    try testing.expectOk(c.assert_ret_D_L_Us());
    try testing.expectOk(c.send_D_L_Us());
    try testing.expectOk(c.assert_D_L_Us(.{ .v1 = 7.0, .v2 = 14381, .v3 = 29145 }));
}
pub export fn zig_assert_D_L_Us(lv: c.D_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 14381) err = 2;
    if (lv.v3 != 29145) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_Us() c.D_L_Us {
    return .{ .v1 = 7.0, .v2 = 14381, .v3 = 29145 };
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
    try testing.expectEqual(c.ret_D_L_Vp(), .{ .v1 = 1.0, .v2 = 1736, .v3 = null });
    try testing.expectOk(c.assert_ret_D_L_Vp());
    try testing.expectOk(c.send_D_L_Vp());
    try testing.expectOk(c.assert_D_L_Vp(.{ .v1 = 1.0, .v2 = 1736, .v3 = null }));
}
pub export fn zig_assert_D_L_Vp(lv: c.D_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 1736) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_Vp() c.D_L_Vp {
    return .{ .v1 = 1.0, .v2 = 1736, .v3 = null };
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
    try testing.expectEqual(c.ret_D_S(), .{ .v1 = 1.0, .v2 = 18963 });
    try testing.expectOk(c.assert_ret_D_S());
    try testing.expectOk(c.send_D_S());
    try testing.expectOk(c.assert_D_S(.{ .v1 = 1.0, .v2 = 18963 }));
}
pub export fn zig_assert_D_S(lv: c.D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 18963) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S() c.D_S {
    return .{ .v1 = 1.0, .v2 = 18963 };
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
    try testing.expectEqual(c.ret_D_S_C(), .{ .v1 = 1.0, .v2 = 111, .v3 = 38 });
    try testing.expectOk(c.assert_ret_D_S_C());
    try testing.expectOk(c.send_D_S_C());
    try testing.expectOk(c.assert_D_S_C(.{ .v1 = 1.0, .v2 = 111, .v3 = 38 }));
}
pub export fn zig_assert_D_S_C(lv: c.D_S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 111) err = 2;
    if (lv.v3 != 38) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_C() c.D_S_C {
    return .{ .v1 = 1.0, .v2 = 111, .v3 = 38 };
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
    try testing.expectEqual(c.ret_D_S_D(), .{ .v1 = 7.0, .v2 = 32408, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_D_S_D());
    try testing.expectOk(c.send_D_S_D());
    try testing.expectOk(c.assert_D_S_D(.{ .v1 = 7.0, .v2 = 32408, .v3 = 0.875 }));
}
pub export fn zig_assert_D_S_D(lv: c.D_S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 32408) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_D() c.D_S_D {
    return .{ .v1 = 7.0, .v2 = 32408, .v3 = 0.875 };
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
    try testing.expectEqual(c.ret_D_S_F(), .{ .v1 = 7.0, .v2 = 10925, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_D_S_F());
    try testing.expectOk(c.send_D_S_F());
    try testing.expectOk(c.assert_D_S_F(.{ .v1 = 7.0, .v2 = 10925, .v3 = 0.875 }));
}
pub export fn zig_assert_D_S_F(lv: c.D_S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 10925) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_F() c.D_S_F {
    return .{ .v1 = 7.0, .v2 = 10925, .v3 = 0.875 };
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
    try testing.expectEqual(c.ret_D_S_I(), .{ .v1 = 0.875, .v2 = 23805, .v3 = 4950 });
    try testing.expectOk(c.assert_ret_D_S_I());
    try testing.expectOk(c.send_D_S_I());
    try testing.expectOk(c.assert_D_S_I(.{ .v1 = 0.875, .v2 = 23805, .v3 = 4950 }));
}
pub export fn zig_assert_D_S_I(lv: c.D_S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 23805) err = 2;
    if (lv.v3 != 4950) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_I() c.D_S_I {
    return .{ .v1 = 0.875, .v2 = 23805, .v3 = 4950 };
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
    try testing.expectEqual(c.ret_D_S_Ip(), .{ .v1 = 0.875, .v2 = 18312, .v3 = null });
    try testing.expectOk(c.assert_ret_D_S_Ip());
    try testing.expectOk(c.send_D_S_Ip());
    try testing.expectOk(c.assert_D_S_Ip(.{ .v1 = 0.875, .v2 = 18312, .v3 = null }));
}
pub export fn zig_assert_D_S_Ip(lv: c.D_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 18312) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_Ip() c.D_S_Ip {
    return .{ .v1 = 0.875, .v2 = 18312, .v3 = null };
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
    try testing.expectEqual(c.ret_D_S_L(), .{ .v1 = 4.5, .v2 = 29169, .v3 = 11847 });
    try testing.expectOk(c.assert_ret_D_S_L());
    try testing.expectOk(c.send_D_S_L());
    try testing.expectOk(c.assert_D_S_L(.{ .v1 = 4.5, .v2 = 29169, .v3 = 11847 }));
}
pub export fn zig_assert_D_S_L(lv: c.D_S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 29169) err = 2;
    if (lv.v3 != 11847) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_L() c.D_S_L {
    return .{ .v1 = 4.5, .v2 = 29169, .v3 = 11847 };
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
    try testing.expectEqual(c.ret_D_S_S(), .{ .v1 = 0.875, .v2 = 29071, .v3 = 28225 });
    try testing.expectOk(c.assert_ret_D_S_S());
    try testing.expectOk(c.send_D_S_S());
    try testing.expectOk(c.assert_D_S_S(.{ .v1 = 0.875, .v2 = 29071, .v3 = 28225 }));
}
pub export fn zig_assert_D_S_S(lv: c.D_S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 29071) err = 2;
    if (lv.v3 != 28225) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_S() c.D_S_S {
    return .{ .v1 = 0.875, .v2 = 29071, .v3 = 28225 };
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
    try testing.expectEqual(c.ret_D_S_Uc(), .{ .v1 = -2.125, .v2 = 1535, .v3 = 20 });
    try testing.expectOk(c.assert_ret_D_S_Uc());
    try testing.expectOk(c.send_D_S_Uc());
    try testing.expectOk(c.assert_D_S_Uc(.{ .v1 = -2.125, .v2 = 1535, .v3 = 20 }));
}
pub export fn zig_assert_D_S_Uc(lv: c.D_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 1535) err = 2;
    if (lv.v3 != 20) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_Uc() c.D_S_Uc {
    return .{ .v1 = -2.125, .v2 = 1535, .v3 = 20 };
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
    try testing.expectEqual(c.ret_D_S_Ui(), .{ .v1 = 4.5, .v2 = 23406, .v3 = 7690 });
    try testing.expectOk(c.assert_ret_D_S_Ui());
    try testing.expectOk(c.send_D_S_Ui());
    try testing.expectOk(c.assert_D_S_Ui(.{ .v1 = 4.5, .v2 = 23406, .v3 = 7690 }));
}
pub export fn zig_assert_D_S_Ui(lv: c.D_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 23406) err = 2;
    if (lv.v3 != 7690) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_Ui() c.D_S_Ui {
    return .{ .v1 = 4.5, .v2 = 23406, .v3 = 7690 };
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
    try testing.expectEqual(c.ret_D_S_Ul(), .{ .v1 = 4.5, .v2 = 3705, .v3 = 27905 });
    try testing.expectOk(c.assert_ret_D_S_Ul());
    try testing.expectOk(c.send_D_S_Ul());
    try testing.expectOk(c.assert_D_S_Ul(.{ .v1 = 4.5, .v2 = 3705, .v3 = 27905 }));
}
pub export fn zig_assert_D_S_Ul(lv: c.D_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 3705) err = 2;
    if (lv.v3 != 27905) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_Ul() c.D_S_Ul {
    return .{ .v1 = 4.5, .v2 = 3705, .v3 = 27905 };
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
    try testing.expectEqual(c.ret_D_S_Us(), .{ .v1 = -2.125, .v2 = 23576, .v3 = 1855 });
    try testing.expectOk(c.assert_ret_D_S_Us());
    try testing.expectOk(c.send_D_S_Us());
    try testing.expectOk(c.assert_D_S_Us(.{ .v1 = -2.125, .v2 = 23576, .v3 = 1855 }));
}
pub export fn zig_assert_D_S_Us(lv: c.D_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 23576) err = 2;
    if (lv.v3 != 1855) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_Us() c.D_S_Us {
    return .{ .v1 = -2.125, .v2 = 23576, .v3 = 1855 };
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
    try testing.expectEqual(c.ret_D_S_Vp(), .{ .v1 = 0.5, .v2 = 29327, .v3 = null });
    try testing.expectOk(c.assert_ret_D_S_Vp());
    try testing.expectOk(c.send_D_S_Vp());
    try testing.expectOk(c.assert_D_S_Vp(.{ .v1 = 0.5, .v2 = 29327, .v3 = null }));
}
pub export fn zig_assert_D_S_Vp(lv: c.D_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 29327) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_Vp() c.D_S_Vp {
    return .{ .v1 = 0.5, .v2 = 29327, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Uc(), .{ .v1 = 0.5, .v2 = 121 });
    try testing.expectOk(c.assert_ret_D_Uc());
    try testing.expectOk(c.send_D_Uc());
    try testing.expectOk(c.assert_D_Uc(.{ .v1 = 0.5, .v2 = 121 }));
}
pub export fn zig_assert_D_Uc(lv: c.D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 121) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc() c.D_Uc {
    return .{ .v1 = 0.5, .v2 = 121 };
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
    try testing.expectEqual(c.ret_D_Uc_C(), .{ .v1 = 1.0, .v2 = 68, .v3 = 42 });
    try testing.expectOk(c.assert_ret_D_Uc_C());
    try testing.expectOk(c.send_D_Uc_C());
    try testing.expectOk(c.assert_D_Uc_C(.{ .v1 = 1.0, .v2 = 68, .v3 = 42 }));
}
pub export fn zig_assert_D_Uc_C(lv: c.D_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 68) err = 2;
    if (lv.v3 != 42) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_C() c.D_Uc_C {
    return .{ .v1 = 1.0, .v2 = 68, .v3 = 42 };
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
    try testing.expectEqual(c.ret_D_Uc_D(), .{ .v1 = -0.25, .v2 = 68, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_D_Uc_D());
    try testing.expectOk(c.send_D_Uc_D());
    try testing.expectOk(c.assert_D_Uc_D(.{ .v1 = -0.25, .v2 = 68, .v3 = 1.0 }));
}
pub export fn zig_assert_D_Uc_D(lv: c.D_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 68) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_D() c.D_Uc_D {
    return .{ .v1 = -0.25, .v2 = 68, .v3 = 1.0 };
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
    try testing.expectEqual(c.ret_D_Uc_F(), .{ .v1 = -0.25, .v2 = 110, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_D_Uc_F());
    try testing.expectOk(c.send_D_Uc_F());
    try testing.expectOk(c.assert_D_Uc_F(.{ .v1 = -0.25, .v2 = 110, .v3 = -0.25 }));
}
pub export fn zig_assert_D_Uc_F(lv: c.D_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 110) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_F() c.D_Uc_F {
    return .{ .v1 = -0.25, .v2 = 110, .v3 = -0.25 };
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
    try testing.expectEqual(c.ret_D_Uc_I(), .{ .v1 = 0.5, .v2 = 32, .v3 = 18397 });
    try testing.expectOk(c.assert_ret_D_Uc_I());
    try testing.expectOk(c.send_D_Uc_I());
    try testing.expectOk(c.assert_D_Uc_I(.{ .v1 = 0.5, .v2 = 32, .v3 = 18397 }));
}
pub export fn zig_assert_D_Uc_I(lv: c.D_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 32) err = 2;
    if (lv.v3 != 18397) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_I() c.D_Uc_I {
    return .{ .v1 = 0.5, .v2 = 32, .v3 = 18397 };
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
    try testing.expectEqual(c.ret_D_Uc_Ip(), .{ .v1 = 7.0, .v2 = 108, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Uc_Ip());
    try testing.expectOk(c.send_D_Uc_Ip());
    try testing.expectOk(c.assert_D_Uc_Ip(.{ .v1 = 7.0, .v2 = 108, .v3 = null }));
}
pub export fn zig_assert_D_Uc_Ip(lv: c.D_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 108) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_Ip() c.D_Uc_Ip {
    return .{ .v1 = 7.0, .v2 = 108, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Uc_L(), .{ .v1 = 0.875, .v2 = 108, .v3 = 2176 });
    try testing.expectOk(c.assert_ret_D_Uc_L());
    try testing.expectOk(c.send_D_Uc_L());
    try testing.expectOk(c.assert_D_Uc_L(.{ .v1 = 0.875, .v2 = 108, .v3 = 2176 }));
}
pub export fn zig_assert_D_Uc_L(lv: c.D_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 108) err = 2;
    if (lv.v3 != 2176) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_L() c.D_Uc_L {
    return .{ .v1 = 0.875, .v2 = 108, .v3 = 2176 };
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
    try testing.expectEqual(c.ret_D_Uc_S(), .{ .v1 = 1.0, .v2 = 48, .v3 = 3198 });
    try testing.expectOk(c.assert_ret_D_Uc_S());
    try testing.expectOk(c.send_D_Uc_S());
    try testing.expectOk(c.assert_D_Uc_S(.{ .v1 = 1.0, .v2 = 48, .v3 = 3198 }));
}
pub export fn zig_assert_D_Uc_S(lv: c.D_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 48) err = 2;
    if (lv.v3 != 3198) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_S() c.D_Uc_S {
    return .{ .v1 = 1.0, .v2 = 48, .v3 = 3198 };
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
    try testing.expectEqual(c.ret_D_Uc_Uc(), .{ .v1 = -2.125, .v2 = 115, .v3 = 90 });
    try testing.expectOk(c.assert_ret_D_Uc_Uc());
    try testing.expectOk(c.send_D_Uc_Uc());
    try testing.expectOk(c.assert_D_Uc_Uc(.{ .v1 = -2.125, .v2 = 115, .v3 = 90 }));
}
pub export fn zig_assert_D_Uc_Uc(lv: c.D_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 115) err = 2;
    if (lv.v3 != 90) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_Uc() c.D_Uc_Uc {
    return .{ .v1 = -2.125, .v2 = 115, .v3 = 90 };
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
    try testing.expectEqual(c.ret_D_Uc_Ui(), .{ .v1 = 7.0, .v2 = 117, .v3 = 6126 });
    try testing.expectOk(c.assert_ret_D_Uc_Ui());
    try testing.expectOk(c.send_D_Uc_Ui());
    try testing.expectOk(c.assert_D_Uc_Ui(.{ .v1 = 7.0, .v2 = 117, .v3 = 6126 }));
}
pub export fn zig_assert_D_Uc_Ui(lv: c.D_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 117) err = 2;
    if (lv.v3 != 6126) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_Ui() c.D_Uc_Ui {
    return .{ .v1 = 7.0, .v2 = 117, .v3 = 6126 };
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
    try testing.expectEqual(c.ret_D_Uc_Ul(), .{ .v1 = 4.5, .v2 = 55, .v3 = 11060 });
    try testing.expectOk(c.assert_ret_D_Uc_Ul());
    try testing.expectOk(c.send_D_Uc_Ul());
    try testing.expectOk(c.assert_D_Uc_Ul(.{ .v1 = 4.5, .v2 = 55, .v3 = 11060 }));
}
pub export fn zig_assert_D_Uc_Ul(lv: c.D_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 55) err = 2;
    if (lv.v3 != 11060) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_Ul() c.D_Uc_Ul {
    return .{ .v1 = 4.5, .v2 = 55, .v3 = 11060 };
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
    try testing.expectEqual(c.ret_D_Uc_Us(), .{ .v1 = -2.125, .v2 = 120, .v3 = 26 });
    try testing.expectOk(c.assert_ret_D_Uc_Us());
    try testing.expectOk(c.send_D_Uc_Us());
    try testing.expectOk(c.assert_D_Uc_Us(.{ .v1 = -2.125, .v2 = 120, .v3 = 26 }));
}
pub export fn zig_assert_D_Uc_Us(lv: c.D_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 120) err = 2;
    if (lv.v3 != 26) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_Us() c.D_Uc_Us {
    return .{ .v1 = -2.125, .v2 = 120, .v3 = 26 };
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
    try testing.expectEqual(c.ret_D_Uc_Vp(), .{ .v1 = -0.25, .v2 = 32, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Uc_Vp());
    try testing.expectOk(c.send_D_Uc_Vp());
    try testing.expectOk(c.assert_D_Uc_Vp(.{ .v1 = -0.25, .v2 = 32, .v3 = null }));
}
pub export fn zig_assert_D_Uc_Vp(lv: c.D_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 32) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_Vp() c.D_Uc_Vp {
    return .{ .v1 = -0.25, .v2 = 32, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Ui(), .{ .v1 = 4.5, .v2 = 5341 });
    try testing.expectOk(c.assert_ret_D_Ui());
    try testing.expectOk(c.send_D_Ui());
    try testing.expectOk(c.assert_D_Ui(.{ .v1 = 4.5, .v2 = 5341 }));
}
pub export fn zig_assert_D_Ui(lv: c.D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 5341) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui() c.D_Ui {
    return .{ .v1 = 4.5, .v2 = 5341 };
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
    try testing.expectEqual(c.ret_D_Ui_C(), .{ .v1 = 4.5, .v2 = 7695, .v3 = 95 });
    try testing.expectOk(c.assert_ret_D_Ui_C());
    try testing.expectOk(c.send_D_Ui_C());
    try testing.expectOk(c.assert_D_Ui_C(.{ .v1 = 4.5, .v2 = 7695, .v3 = 95 }));
}
pub export fn zig_assert_D_Ui_C(lv: c.D_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 7695) err = 2;
    if (lv.v3 != 95) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_C() c.D_Ui_C {
    return .{ .v1 = 4.5, .v2 = 7695, .v3 = 95 };
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
    try testing.expectEqual(c.ret_D_Ui_D(), .{ .v1 = 1.0, .v2 = 9641, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_D_Ui_D());
    try testing.expectOk(c.send_D_Ui_D());
    try testing.expectOk(c.assert_D_Ui_D(.{ .v1 = 1.0, .v2 = 9641, .v3 = 0.875 }));
}
pub export fn zig_assert_D_Ui_D(lv: c.D_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 9641) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_D() c.D_Ui_D {
    return .{ .v1 = 1.0, .v2 = 9641, .v3 = 0.875 };
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
    try testing.expectEqual(c.ret_D_Ui_F(), .{ .v1 = 4.5, .v2 = 20010, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_D_Ui_F());
    try testing.expectOk(c.send_D_Ui_F());
    try testing.expectOk(c.assert_D_Ui_F(.{ .v1 = 4.5, .v2 = 20010, .v3 = -2.125 }));
}
pub export fn zig_assert_D_Ui_F(lv: c.D_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 20010) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_F() c.D_Ui_F {
    return .{ .v1 = 4.5, .v2 = 20010, .v3 = -2.125 };
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
    try testing.expectEqual(c.ret_D_Ui_I(), .{ .v1 = -0.25, .v2 = 24900, .v3 = 31103 });
    try testing.expectOk(c.assert_ret_D_Ui_I());
    try testing.expectOk(c.send_D_Ui_I());
    try testing.expectOk(c.assert_D_Ui_I(.{ .v1 = -0.25, .v2 = 24900, .v3 = 31103 }));
}
pub export fn zig_assert_D_Ui_I(lv: c.D_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 24900) err = 2;
    if (lv.v3 != 31103) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_I() c.D_Ui_I {
    return .{ .v1 = -0.25, .v2 = 24900, .v3 = 31103 };
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
    try testing.expectEqual(c.ret_D_Ui_Ip(), .{ .v1 = 4.5, .v2 = 20869, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Ui_Ip());
    try testing.expectOk(c.send_D_Ui_Ip());
    try testing.expectOk(c.assert_D_Ui_Ip(.{ .v1 = 4.5, .v2 = 20869, .v3 = null }));
}
pub export fn zig_assert_D_Ui_Ip(lv: c.D_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 20869) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_Ip() c.D_Ui_Ip {
    return .{ .v1 = 4.5, .v2 = 20869, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Ui_L(), .{ .v1 = 7.0, .v2 = 31648, .v3 = 6157 });
    try testing.expectOk(c.assert_ret_D_Ui_L());
    try testing.expectOk(c.send_D_Ui_L());
    try testing.expectOk(c.assert_D_Ui_L(.{ .v1 = 7.0, .v2 = 31648, .v3 = 6157 }));
}
pub export fn zig_assert_D_Ui_L(lv: c.D_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 31648) err = 2;
    if (lv.v3 != 6157) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_L() c.D_Ui_L {
    return .{ .v1 = 7.0, .v2 = 31648, .v3 = 6157 };
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
    try testing.expectEqual(c.ret_D_Ui_S(), .{ .v1 = 4.5, .v2 = 13194, .v3 = 2768 });
    try testing.expectOk(c.assert_ret_D_Ui_S());
    try testing.expectOk(c.send_D_Ui_S());
    try testing.expectOk(c.assert_D_Ui_S(.{ .v1 = 4.5, .v2 = 13194, .v3 = 2768 }));
}
pub export fn zig_assert_D_Ui_S(lv: c.D_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 13194) err = 2;
    if (lv.v3 != 2768) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_S() c.D_Ui_S {
    return .{ .v1 = 4.5, .v2 = 13194, .v3 = 2768 };
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
    try testing.expectEqual(c.ret_D_Ui_Uc(), .{ .v1 = -2.125, .v2 = 17150, .v3 = 60 });
    try testing.expectOk(c.assert_ret_D_Ui_Uc());
    try testing.expectOk(c.send_D_Ui_Uc());
    try testing.expectOk(c.assert_D_Ui_Uc(.{ .v1 = -2.125, .v2 = 17150, .v3 = 60 }));
}
pub export fn zig_assert_D_Ui_Uc(lv: c.D_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 17150) err = 2;
    if (lv.v3 != 60) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_Uc() c.D_Ui_Uc {
    return .{ .v1 = -2.125, .v2 = 17150, .v3 = 60 };
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
    try testing.expectEqual(c.ret_D_Ui_Ui(), .{ .v1 = 0.5, .v2 = 25183, .v3 = 5118 });
    try testing.expectOk(c.assert_ret_D_Ui_Ui());
    try testing.expectOk(c.send_D_Ui_Ui());
    try testing.expectOk(c.assert_D_Ui_Ui(.{ .v1 = 0.5, .v2 = 25183, .v3 = 5118 }));
}
pub export fn zig_assert_D_Ui_Ui(lv: c.D_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 25183) err = 2;
    if (lv.v3 != 5118) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_Ui() c.D_Ui_Ui {
    return .{ .v1 = 0.5, .v2 = 25183, .v3 = 5118 };
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
    try testing.expectEqual(c.ret_D_Ui_Ul(), .{ .v1 = -0.25, .v2 = 14606, .v3 = 16268 });
    try testing.expectOk(c.assert_ret_D_Ui_Ul());
    try testing.expectOk(c.send_D_Ui_Ul());
    try testing.expectOk(c.assert_D_Ui_Ul(.{ .v1 = -0.25, .v2 = 14606, .v3 = 16268 }));
}
pub export fn zig_assert_D_Ui_Ul(lv: c.D_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 14606) err = 2;
    if (lv.v3 != 16268) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_Ul() c.D_Ui_Ul {
    return .{ .v1 = -0.25, .v2 = 14606, .v3 = 16268 };
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
    try testing.expectEqual(c.ret_D_Ui_Us(), .{ .v1 = -0.25, .v2 = 5295, .v3 = 5718 });
    try testing.expectOk(c.assert_ret_D_Ui_Us());
    try testing.expectOk(c.send_D_Ui_Us());
    try testing.expectOk(c.assert_D_Ui_Us(.{ .v1 = -0.25, .v2 = 5295, .v3 = 5718 }));
}
pub export fn zig_assert_D_Ui_Us(lv: c.D_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 5295) err = 2;
    if (lv.v3 != 5718) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_Us() c.D_Ui_Us {
    return .{ .v1 = -0.25, .v2 = 5295, .v3 = 5718 };
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
    try testing.expectEqual(c.ret_D_Ui_Vp(), .{ .v1 = -0.25, .v2 = 31290, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Ui_Vp());
    try testing.expectOk(c.send_D_Ui_Vp());
    try testing.expectOk(c.assert_D_Ui_Vp(.{ .v1 = -0.25, .v2 = 31290, .v3 = null }));
}
pub export fn zig_assert_D_Ui_Vp(lv: c.D_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 31290) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_Vp() c.D_Ui_Vp {
    return .{ .v1 = -0.25, .v2 = 31290, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Ul(), .{ .v1 = 0.875, .v2 = 8168 });
    try testing.expectOk(c.assert_ret_D_Ul());
    try testing.expectOk(c.send_D_Ul());
    try testing.expectOk(c.assert_D_Ul(.{ .v1 = 0.875, .v2 = 8168 }));
}
pub export fn zig_assert_D_Ul(lv: c.D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 8168) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul() c.D_Ul {
    return .{ .v1 = 0.875, .v2 = 8168 };
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
    try testing.expectEqual(c.ret_D_Ul_C(), .{ .v1 = 0.875, .v2 = 27350, .v3 = 87 });
    try testing.expectOk(c.assert_ret_D_Ul_C());
    try testing.expectOk(c.send_D_Ul_C());
    try testing.expectOk(c.assert_D_Ul_C(.{ .v1 = 0.875, .v2 = 27350, .v3 = 87 }));
}
pub export fn zig_assert_D_Ul_C(lv: c.D_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 27350) err = 2;
    if (lv.v3 != 87) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_C() c.D_Ul_C {
    return .{ .v1 = 0.875, .v2 = 27350, .v3 = 87 };
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
    try testing.expectEqual(c.ret_D_Ul_D(), .{ .v1 = 4.5, .v2 = 587, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_D_Ul_D());
    try testing.expectOk(c.send_D_Ul_D());
    try testing.expectOk(c.assert_D_Ul_D(.{ .v1 = 4.5, .v2 = 587, .v3 = -0.25 }));
}
pub export fn zig_assert_D_Ul_D(lv: c.D_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 587) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_D() c.D_Ul_D {
    return .{ .v1 = 4.5, .v2 = 587, .v3 = -0.25 };
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
    try testing.expectEqual(c.ret_D_Ul_F(), .{ .v1 = -2.125, .v2 = 28666, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_D_Ul_F());
    try testing.expectOk(c.send_D_Ul_F());
    try testing.expectOk(c.assert_D_Ul_F(.{ .v1 = -2.125, .v2 = 28666, .v3 = -2.125 }));
}
pub export fn zig_assert_D_Ul_F(lv: c.D_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 28666) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_F() c.D_Ul_F {
    return .{ .v1 = -2.125, .v2 = 28666, .v3 = -2.125 };
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
    try testing.expectEqual(c.ret_D_Ul_I(), .{ .v1 = 7.0, .v2 = 17316, .v3 = 27169 });
    try testing.expectOk(c.assert_ret_D_Ul_I());
    try testing.expectOk(c.send_D_Ul_I());
    try testing.expectOk(c.assert_D_Ul_I(.{ .v1 = 7.0, .v2 = 17316, .v3 = 27169 }));
}
pub export fn zig_assert_D_Ul_I(lv: c.D_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 17316) err = 2;
    if (lv.v3 != 27169) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_I() c.D_Ul_I {
    return .{ .v1 = 7.0, .v2 = 17316, .v3 = 27169 };
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
    try testing.expectEqual(c.ret_D_Ul_Ip(), .{ .v1 = 4.5, .v2 = 30080, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Ul_Ip());
    try testing.expectOk(c.send_D_Ul_Ip());
    try testing.expectOk(c.assert_D_Ul_Ip(.{ .v1 = 4.5, .v2 = 30080, .v3 = null }));
}
pub export fn zig_assert_D_Ul_Ip(lv: c.D_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 30080) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_Ip() c.D_Ul_Ip {
    return .{ .v1 = 4.5, .v2 = 30080, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Ul_L(), .{ .v1 = -2.125, .v2 = 2358, .v3 = 13997 });
    try testing.expectOk(c.assert_ret_D_Ul_L());
    try testing.expectOk(c.send_D_Ul_L());
    try testing.expectOk(c.assert_D_Ul_L(.{ .v1 = -2.125, .v2 = 2358, .v3 = 13997 }));
}
pub export fn zig_assert_D_Ul_L(lv: c.D_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 2358) err = 2;
    if (lv.v3 != 13997) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_L() c.D_Ul_L {
    return .{ .v1 = -2.125, .v2 = 2358, .v3 = 13997 };
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
    try testing.expectEqual(c.ret_D_Ul_S(), .{ .v1 = 0.875, .v2 = 8874, .v3 = 15227 });
    try testing.expectOk(c.assert_ret_D_Ul_S());
    try testing.expectOk(c.send_D_Ul_S());
    try testing.expectOk(c.assert_D_Ul_S(.{ .v1 = 0.875, .v2 = 8874, .v3 = 15227 }));
}
pub export fn zig_assert_D_Ul_S(lv: c.D_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 8874) err = 2;
    if (lv.v3 != 15227) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_S() c.D_Ul_S {
    return .{ .v1 = 0.875, .v2 = 8874, .v3 = 15227 };
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
    try testing.expectEqual(c.ret_D_Ul_Uc(), .{ .v1 = 0.875, .v2 = 28411, .v3 = 19 });
    try testing.expectOk(c.assert_ret_D_Ul_Uc());
    try testing.expectOk(c.send_D_Ul_Uc());
    try testing.expectOk(c.assert_D_Ul_Uc(.{ .v1 = 0.875, .v2 = 28411, .v3 = 19 }));
}
pub export fn zig_assert_D_Ul_Uc(lv: c.D_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 28411) err = 2;
    if (lv.v3 != 19) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_Uc() c.D_Ul_Uc {
    return .{ .v1 = 0.875, .v2 = 28411, .v3 = 19 };
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
    try testing.expectEqual(c.ret_D_Ul_Ui(), .{ .v1 = 0.875, .v2 = 18969, .v3 = 19676 });
    try testing.expectOk(c.assert_ret_D_Ul_Ui());
    try testing.expectOk(c.send_D_Ul_Ui());
    try testing.expectOk(c.assert_D_Ul_Ui(.{ .v1 = 0.875, .v2 = 18969, .v3 = 19676 }));
}
pub export fn zig_assert_D_Ul_Ui(lv: c.D_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 18969) err = 2;
    if (lv.v3 != 19676) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_Ui() c.D_Ul_Ui {
    return .{ .v1 = 0.875, .v2 = 18969, .v3 = 19676 };
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
    try testing.expectEqual(c.ret_D_Ul_Ul(), .{ .v1 = 0.875, .v2 = 30271, .v3 = 30455 });
    try testing.expectOk(c.assert_ret_D_Ul_Ul());
    try testing.expectOk(c.send_D_Ul_Ul());
    try testing.expectOk(c.assert_D_Ul_Ul(.{ .v1 = 0.875, .v2 = 30271, .v3 = 30455 }));
}
pub export fn zig_assert_D_Ul_Ul(lv: c.D_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 30271) err = 2;
    if (lv.v3 != 30455) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_Ul() c.D_Ul_Ul {
    return .{ .v1 = 0.875, .v2 = 30271, .v3 = 30455 };
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
    try testing.expectEqual(c.ret_D_Ul_Us(), .{ .v1 = 4.5, .v2 = 27872, .v3 = 13199 });
    try testing.expectOk(c.assert_ret_D_Ul_Us());
    try testing.expectOk(c.send_D_Ul_Us());
    try testing.expectOk(c.assert_D_Ul_Us(.{ .v1 = 4.5, .v2 = 27872, .v3 = 13199 }));
}
pub export fn zig_assert_D_Ul_Us(lv: c.D_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 27872) err = 2;
    if (lv.v3 != 13199) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_Us() c.D_Ul_Us {
    return .{ .v1 = 4.5, .v2 = 27872, .v3 = 13199 };
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
    try testing.expectEqual(c.ret_D_Ul_Vp(), .{ .v1 = 1.0, .v2 = 12549, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Ul_Vp());
    try testing.expectOk(c.send_D_Ul_Vp());
    try testing.expectOk(c.assert_D_Ul_Vp(.{ .v1 = 1.0, .v2 = 12549, .v3 = null }));
}
pub export fn zig_assert_D_Ul_Vp(lv: c.D_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 12549) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_Vp() c.D_Ul_Vp {
    return .{ .v1 = 1.0, .v2 = 12549, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Us(), .{ .v1 = 0.875, .v2 = 12975 });
    try testing.expectOk(c.assert_ret_D_Us());
    try testing.expectOk(c.send_D_Us());
    try testing.expectOk(c.assert_D_Us(.{ .v1 = 0.875, .v2 = 12975 }));
}
pub export fn zig_assert_D_Us(lv: c.D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 12975) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us() c.D_Us {
    return .{ .v1 = 0.875, .v2 = 12975 };
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
    try testing.expectEqual(c.ret_D_Us_C(), .{ .v1 = 0.875, .v2 = 17159, .v3 = 57 });
    try testing.expectOk(c.assert_ret_D_Us_C());
    try testing.expectOk(c.send_D_Us_C());
    try testing.expectOk(c.assert_D_Us_C(.{ .v1 = 0.875, .v2 = 17159, .v3 = 57 }));
}
pub export fn zig_assert_D_Us_C(lv: c.D_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 17159) err = 2;
    if (lv.v3 != 57) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_C() c.D_Us_C {
    return .{ .v1 = 0.875, .v2 = 17159, .v3 = 57 };
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
    try testing.expectEqual(c.ret_D_Us_D(), .{ .v1 = 4.5, .v2 = 11426, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_D_Us_D());
    try testing.expectOk(c.send_D_Us_D());
    try testing.expectOk(c.assert_D_Us_D(.{ .v1 = 4.5, .v2 = 11426, .v3 = 0.5 }));
}
pub export fn zig_assert_D_Us_D(lv: c.D_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 11426) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_D() c.D_Us_D {
    return .{ .v1 = 4.5, .v2 = 11426, .v3 = 0.5 };
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
    try testing.expectEqual(c.ret_D_Us_F(), .{ .v1 = 1.0, .v2 = 4636, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_D_Us_F());
    try testing.expectOk(c.send_D_Us_F());
    try testing.expectOk(c.assert_D_Us_F(.{ .v1 = 1.0, .v2 = 4636, .v3 = 0.875 }));
}
pub export fn zig_assert_D_Us_F(lv: c.D_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 4636) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_F() c.D_Us_F {
    return .{ .v1 = 1.0, .v2 = 4636, .v3 = 0.875 };
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
    try testing.expectEqual(c.ret_D_Us_I(), .{ .v1 = -0.25, .v2 = 24377, .v3 = 30464 });
    try testing.expectOk(c.assert_ret_D_Us_I());
    try testing.expectOk(c.send_D_Us_I());
    try testing.expectOk(c.assert_D_Us_I(.{ .v1 = -0.25, .v2 = 24377, .v3 = 30464 }));
}
pub export fn zig_assert_D_Us_I(lv: c.D_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 24377) err = 2;
    if (lv.v3 != 30464) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_I() c.D_Us_I {
    return .{ .v1 = -0.25, .v2 = 24377, .v3 = 30464 };
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
    try testing.expectEqual(c.ret_D_Us_Ip(), .{ .v1 = 7.0, .v2 = 8479, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Us_Ip());
    try testing.expectOk(c.send_D_Us_Ip());
    try testing.expectOk(c.assert_D_Us_Ip(.{ .v1 = 7.0, .v2 = 8479, .v3 = null }));
}
pub export fn zig_assert_D_Us_Ip(lv: c.D_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 8479) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_Ip() c.D_Us_Ip {
    return .{ .v1 = 7.0, .v2 = 8479, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Us_L(), .{ .v1 = -2.125, .v2 = 15583, .v3 = 10458 });
    try testing.expectOk(c.assert_ret_D_Us_L());
    try testing.expectOk(c.send_D_Us_L());
    try testing.expectOk(c.assert_D_Us_L(.{ .v1 = -2.125, .v2 = 15583, .v3 = 10458 }));
}
pub export fn zig_assert_D_Us_L(lv: c.D_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 15583) err = 2;
    if (lv.v3 != 10458) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_L() c.D_Us_L {
    return .{ .v1 = -2.125, .v2 = 15583, .v3 = 10458 };
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
    try testing.expectEqual(c.ret_D_Us_S(), .{ .v1 = 7.0, .v2 = 18238, .v3 = 13155 });
    try testing.expectOk(c.assert_ret_D_Us_S());
    try testing.expectOk(c.send_D_Us_S());
    try testing.expectOk(c.assert_D_Us_S(.{ .v1 = 7.0, .v2 = 18238, .v3 = 13155 }));
}
pub export fn zig_assert_D_Us_S(lv: c.D_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 18238) err = 2;
    if (lv.v3 != 13155) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_S() c.D_Us_S {
    return .{ .v1 = 7.0, .v2 = 18238, .v3 = 13155 };
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
    try testing.expectEqual(c.ret_D_Us_Uc(), .{ .v1 = 7.0, .v2 = 21067, .v3 = 10 });
    try testing.expectOk(c.assert_ret_D_Us_Uc());
    try testing.expectOk(c.send_D_Us_Uc());
    try testing.expectOk(c.assert_D_Us_Uc(.{ .v1 = 7.0, .v2 = 21067, .v3 = 10 }));
}
pub export fn zig_assert_D_Us_Uc(lv: c.D_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 21067) err = 2;
    if (lv.v3 != 10) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_Uc() c.D_Us_Uc {
    return .{ .v1 = 7.0, .v2 = 21067, .v3 = 10 };
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
    try testing.expectEqual(c.ret_D_Us_Ui(), .{ .v1 = 7.0, .v2 = 28382, .v3 = 27699 });
    try testing.expectOk(c.assert_ret_D_Us_Ui());
    try testing.expectOk(c.send_D_Us_Ui());
    try testing.expectOk(c.assert_D_Us_Ui(.{ .v1 = 7.0, .v2 = 28382, .v3 = 27699 }));
}
pub export fn zig_assert_D_Us_Ui(lv: c.D_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 28382) err = 2;
    if (lv.v3 != 27699) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_Ui() c.D_Us_Ui {
    return .{ .v1 = 7.0, .v2 = 28382, .v3 = 27699 };
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
    try testing.expectEqual(c.ret_D_Us_Ul(), .{ .v1 = 4.5, .v2 = 14224, .v3 = 23309 });
    try testing.expectOk(c.assert_ret_D_Us_Ul());
    try testing.expectOk(c.send_D_Us_Ul());
    try testing.expectOk(c.assert_D_Us_Ul(.{ .v1 = 4.5, .v2 = 14224, .v3 = 23309 }));
}
pub export fn zig_assert_D_Us_Ul(lv: c.D_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 14224) err = 2;
    if (lv.v3 != 23309) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_Ul() c.D_Us_Ul {
    return .{ .v1 = 4.5, .v2 = 14224, .v3 = 23309 };
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
    try testing.expectEqual(c.ret_D_Us_Us(), .{ .v1 = 0.5, .v2 = 21806, .v3 = 21300 });
    try testing.expectOk(c.assert_ret_D_Us_Us());
    try testing.expectOk(c.send_D_Us_Us());
    try testing.expectOk(c.assert_D_Us_Us(.{ .v1 = 0.5, .v2 = 21806, .v3 = 21300 }));
}
pub export fn zig_assert_D_Us_Us(lv: c.D_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 21806) err = 2;
    if (lv.v3 != 21300) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_Us() c.D_Us_Us {
    return .{ .v1 = 0.5, .v2 = 21806, .v3 = 21300 };
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
    try testing.expectEqual(c.ret_D_Us_Vp(), .{ .v1 = 1.0, .v2 = 5932, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Us_Vp());
    try testing.expectOk(c.send_D_Us_Vp());
    try testing.expectOk(c.assert_D_Us_Vp(.{ .v1 = 1.0, .v2 = 5932, .v3 = null }));
}
pub export fn zig_assert_D_Us_Vp(lv: c.D_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 5932) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_Vp() c.D_Us_Vp {
    return .{ .v1 = 1.0, .v2 = 5932, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Vp(), .{ .v1 = 0.875, .v2 = null });
    try testing.expectOk(c.assert_ret_D_Vp());
    try testing.expectOk(c.send_D_Vp());
    try testing.expectOk(c.assert_D_Vp(.{ .v1 = 0.875, .v2 = null }));
}
pub export fn zig_assert_D_Vp(lv: c.D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp() c.D_Vp {
    return .{ .v1 = 0.875, .v2 = null };
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
    try testing.expectEqual(c.ret_D_Vp_C(), .{ .v1 = -2.125, .v2 = null, .v3 = 20 });
    try testing.expectOk(c.assert_ret_D_Vp_C());
    try testing.expectOk(c.send_D_Vp_C());
    try testing.expectOk(c.assert_D_Vp_C(.{ .v1 = -2.125, .v2 = null, .v3 = 20 }));
}
pub export fn zig_assert_D_Vp_C(lv: c.D_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 20) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_C() c.D_Vp_C {
    return .{ .v1 = -2.125, .v2 = null, .v3 = 20 };
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
    try testing.expectEqual(c.ret_D_Vp_D(), .{ .v1 = 7.0, .v2 = null, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_D_Vp_D());
    try testing.expectOk(c.send_D_Vp_D());
    try testing.expectOk(c.assert_D_Vp_D(.{ .v1 = 7.0, .v2 = null, .v3 = 4.5 }));
}
pub export fn zig_assert_D_Vp_D(lv: c.D_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_D() c.D_Vp_D {
    return .{ .v1 = 7.0, .v2 = null, .v3 = 4.5 };
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
    try testing.expectEqual(c.ret_D_Vp_F(), .{ .v1 = 4.5, .v2 = null, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_D_Vp_F());
    try testing.expectOk(c.send_D_Vp_F());
    try testing.expectOk(c.assert_D_Vp_F(.{ .v1 = 4.5, .v2 = null, .v3 = 4.5 }));
}
pub export fn zig_assert_D_Vp_F(lv: c.D_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_F() c.D_Vp_F {
    return .{ .v1 = 4.5, .v2 = null, .v3 = 4.5 };
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
    try testing.expectEqual(c.ret_D_Vp_I(), .{ .v1 = 4.5, .v2 = null, .v3 = 16435 });
    try testing.expectOk(c.assert_ret_D_Vp_I());
    try testing.expectOk(c.send_D_Vp_I());
    try testing.expectOk(c.assert_D_Vp_I(.{ .v1 = 4.5, .v2 = null, .v3 = 16435 }));
}
pub export fn zig_assert_D_Vp_I(lv: c.D_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 16435) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_I() c.D_Vp_I {
    return .{ .v1 = 4.5, .v2 = null, .v3 = 16435 };
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
    try testing.expectEqual(c.ret_D_Vp_Ip(), .{ .v1 = 7.0, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Vp_Ip());
    try testing.expectOk(c.send_D_Vp_Ip());
    try testing.expectOk(c.assert_D_Vp_Ip(.{ .v1 = 7.0, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_D_Vp_Ip(lv: c.D_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_Ip() c.D_Vp_Ip {
    return .{ .v1 = 7.0, .v2 = null, .v3 = null };
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
    try testing.expectEqual(c.ret_D_Vp_L(), .{ .v1 = 7.0, .v2 = null, .v3 = 32159 });
    try testing.expectOk(c.assert_ret_D_Vp_L());
    try testing.expectOk(c.send_D_Vp_L());
    try testing.expectOk(c.assert_D_Vp_L(.{ .v1 = 7.0, .v2 = null, .v3 = 32159 }));
}
pub export fn zig_assert_D_Vp_L(lv: c.D_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 32159) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_L() c.D_Vp_L {
    return .{ .v1 = 7.0, .v2 = null, .v3 = 32159 };
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
    try testing.expectEqual(c.ret_D_Vp_S(), .{ .v1 = 7.0, .v2 = null, .v3 = 4705 });
    try testing.expectOk(c.assert_ret_D_Vp_S());
    try testing.expectOk(c.send_D_Vp_S());
    try testing.expectOk(c.assert_D_Vp_S(.{ .v1 = 7.0, .v2 = null, .v3 = 4705 }));
}
pub export fn zig_assert_D_Vp_S(lv: c.D_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4705) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_S() c.D_Vp_S {
    return .{ .v1 = 7.0, .v2 = null, .v3 = 4705 };
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
    try testing.expectEqual(c.ret_D_Vp_Uc(), .{ .v1 = -2.125, .v2 = null, .v3 = 66 });
    try testing.expectOk(c.assert_ret_D_Vp_Uc());
    try testing.expectOk(c.send_D_Vp_Uc());
    try testing.expectOk(c.assert_D_Vp_Uc(.{ .v1 = -2.125, .v2 = null, .v3 = 66 }));
}
pub export fn zig_assert_D_Vp_Uc(lv: c.D_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 66) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_Uc() c.D_Vp_Uc {
    return .{ .v1 = -2.125, .v2 = null, .v3 = 66 };
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
    try testing.expectEqual(c.ret_D_Vp_Ui(), .{ .v1 = 1.0, .v2 = null, .v3 = 21260 });
    try testing.expectOk(c.assert_ret_D_Vp_Ui());
    try testing.expectOk(c.send_D_Vp_Ui());
    try testing.expectOk(c.assert_D_Vp_Ui(.{ .v1 = 1.0, .v2 = null, .v3 = 21260 }));
}
pub export fn zig_assert_D_Vp_Ui(lv: c.D_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 21260) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_Ui() c.D_Vp_Ui {
    return .{ .v1 = 1.0, .v2 = null, .v3 = 21260 };
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
    try testing.expectEqual(c.ret_D_Vp_Ul(), .{ .v1 = -2.125, .v2 = null, .v3 = 14614 });
    try testing.expectOk(c.assert_ret_D_Vp_Ul());
    try testing.expectOk(c.send_D_Vp_Ul());
    try testing.expectOk(c.assert_D_Vp_Ul(.{ .v1 = -2.125, .v2 = null, .v3 = 14614 }));
}
pub export fn zig_assert_D_Vp_Ul(lv: c.D_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 14614) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_Ul() c.D_Vp_Ul {
    return .{ .v1 = -2.125, .v2 = null, .v3 = 14614 };
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
    try testing.expectEqual(c.ret_D_Vp_Us(), .{ .v1 = 1.0, .v2 = null, .v3 = 19406 });
    try testing.expectOk(c.assert_ret_D_Vp_Us());
    try testing.expectOk(c.send_D_Vp_Us());
    try testing.expectOk(c.assert_D_Vp_Us(.{ .v1 = 1.0, .v2 = null, .v3 = 19406 }));
}
pub export fn zig_assert_D_Vp_Us(lv: c.D_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 19406) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_Us() c.D_Vp_Us {
    return .{ .v1 = 1.0, .v2 = null, .v3 = 19406 };
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
    try testing.expectEqual(c.ret_D_Vp_Vp(), .{ .v1 = 0.875, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_D_Vp_Vp());
    try testing.expectOk(c.send_D_Vp_Vp());
    try testing.expectOk(c.assert_D_Vp_Vp(.{ .v1 = 0.875, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_D_Vp_Vp(lv: c.D_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_Vp() c.D_Vp_Vp {
    return .{ .v1 = 0.875, .v2 = null, .v3 = null };
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
    try testing.expectEqual(c.ret_F(), .{ .v1 = 4.5 });
    try testing.expectOk(c.assert_ret_F());
    try testing.expectOk(c.send_F());
    try testing.expectOk(c.assert_F(.{ .v1 = 4.5 }));
}
pub export fn zig_assert_F(lv: c.F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F() c.F {
    return .{ .v1 = 4.5 };
}
