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

test "Vp_C layout" {
    var lv: c.Vp_C = undefined;
    try testing.expectSize(c.Vp_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_C C calls" {
    try testing.expectEqual(c.ret_Vp_C(), .{ .v1 = null, .v2 = 24 });
    try testing.expectOk(c.assert_ret_Vp_C());
    try testing.expectOk(c.send_Vp_C());
    try testing.expectOk(c.assert_Vp_C(.{ .v1 = null, .v2 = 24 }));
}
pub export fn zig_assert_Vp_C(lv: c.Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 24) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C() c.Vp_C {
    return .{ .v1 = null, .v2 = 24 };
}

// From T_Snnn_xbc.c:14398:14418
// struct  Vp_C_C  {
//   void *v1;
//   char v2;
//   char v3;
// };

test "Vp_C_C layout" {
    var lv: c.Vp_C_C = undefined;
    try testing.expectSize(c.Vp_C_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Vp_C_C C calls" {
    try testing.expectEqual(c.ret_Vp_C_C(), .{ .v1 = null, .v2 = 39, .v3 = 11 });
    try testing.expectOk(c.assert_ret_Vp_C_C());
    try testing.expectOk(c.send_Vp_C_C());
    try testing.expectOk(c.assert_Vp_C_C(.{ .v1 = null, .v2 = 39, .v3 = 11 }));
}
pub export fn zig_assert_Vp_C_C(lv: c.Vp_C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 39) err = 2;
    if (lv.v3 != 11) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_C() c.Vp_C_C {
    return .{ .v1 = null, .v2 = 39, .v3 = 11 };
}

// From T_Snnn_xbc.c:14423:14443
// struct  Vp_C_D  {
//   void *v1;
//   char v2;
//   double v3;
// };

test "Vp_C_D layout" {
    var lv: c.Vp_C_D = undefined;
    try testing.expectSize(c.Vp_C_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_C_D C calls" {
    try testing.expectEqual(c.ret_Vp_C_D(), .{ .v1 = null, .v2 = 106, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Vp_C_D());
    try testing.expectOk(c.send_Vp_C_D());
    try testing.expectOk(c.assert_Vp_C_D(.{ .v1 = null, .v2 = 106, .v3 = -0.25 }));
}
pub export fn zig_assert_Vp_C_D(lv: c.Vp_C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 106) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_D() c.Vp_C_D {
    return .{ .v1 = null, .v2 = 106, .v3 = -0.25 };
}

// From T_Snnn_xbc.c:14448:14468
// struct  Vp_C_F  {
//   void *v1;
//   char v2;
//   float v3;
// };

test "Vp_C_F layout" {
    var lv: c.Vp_C_F = undefined;
    try testing.expectSize(c.Vp_C_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_C_F C calls" {
    try testing.expectEqual(c.ret_Vp_C_F(), .{ .v1 = null, .v2 = 57, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Vp_C_F());
    try testing.expectOk(c.send_Vp_C_F());
    try testing.expectOk(c.assert_Vp_C_F(.{ .v1 = null, .v2 = 57, .v3 = 7.0 }));
}
pub export fn zig_assert_Vp_C_F(lv: c.Vp_C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 57) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_F() c.Vp_C_F {
    return .{ .v1 = null, .v2 = 57, .v3 = 7.0 };
}

// From T_Snnn_xbc.c:14473:14493
// struct  Vp_C_I  {
//   void *v1;
//   char v2;
//   int v3;
// };

test "Vp_C_I layout" {
    var lv: c.Vp_C_I = undefined;
    try testing.expectSize(c.Vp_C_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_C_I C calls" {
    try testing.expectEqual(c.ret_Vp_C_I(), .{ .v1 = null, .v2 = 62, .v3 = 22912 });
    try testing.expectOk(c.assert_ret_Vp_C_I());
    try testing.expectOk(c.send_Vp_C_I());
    try testing.expectOk(c.assert_Vp_C_I(.{ .v1 = null, .v2 = 62, .v3 = 22912 }));
}
pub export fn zig_assert_Vp_C_I(lv: c.Vp_C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 62) err = 2;
    if (lv.v3 != 22912) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_I() c.Vp_C_I {
    return .{ .v1 = null, .v2 = 62, .v3 = 22912 };
}

// From T_Snnn_xbc.c:14498:14518
// struct  Vp_C_Ip  {
//   void *v1;
//   char v2;
//   int *v3;
// };

test "Vp_C_Ip layout" {
    var lv: c.Vp_C_Ip = undefined;
    try testing.expectSize(c.Vp_C_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_C_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_C_Ip(), .{ .v1 = null, .v2 = 0, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_C_Ip());
    try testing.expectOk(c.send_Vp_C_Ip());
    try testing.expectOk(c.assert_Vp_C_Ip(.{ .v1 = null, .v2 = 0, .v3 = null }));
}
pub export fn zig_assert_Vp_C_Ip(lv: c.Vp_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_Ip() c.Vp_C_Ip {
    return .{ .v1 = null, .v2 = 0, .v3 = null };
}

// From T_Snnn_xbc.c:14523:14543
// struct  Vp_C_L  {
//   void *v1;
//   char v2;
//   __tsi64 v3;
// };

test "Vp_C_L layout" {
    var lv: c.Vp_C_L = undefined;
    try testing.expectSize(c.Vp_C_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_C_L C calls" {
    try testing.expectEqual(c.ret_Vp_C_L(), .{ .v1 = null, .v2 = 16, .v3 = 18116 });
    try testing.expectOk(c.assert_ret_Vp_C_L());
    try testing.expectOk(c.send_Vp_C_L());
    try testing.expectOk(c.assert_Vp_C_L(.{ .v1 = null, .v2 = 16, .v3 = 18116 }));
}
pub export fn zig_assert_Vp_C_L(lv: c.Vp_C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 16) err = 2;
    if (lv.v3 != 18116) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_L() c.Vp_C_L {
    return .{ .v1 = null, .v2 = 16, .v3 = 18116 };
}

// From T_Snnn_xbc.c:14548:14568
// struct  Vp_C_S  {
//   void *v1;
//   char v2;
//   short v3;
// };

test "Vp_C_S layout" {
    var lv: c.Vp_C_S = undefined;
    try testing.expectSize(c.Vp_C_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_C_S C calls" {
    try testing.expectEqual(c.ret_Vp_C_S(), .{ .v1 = null, .v2 = 81, .v3 = 27635 });
    try testing.expectOk(c.assert_ret_Vp_C_S());
    try testing.expectOk(c.send_Vp_C_S());
    try testing.expectOk(c.assert_Vp_C_S(.{ .v1 = null, .v2 = 81, .v3 = 27635 }));
}
pub export fn zig_assert_Vp_C_S(lv: c.Vp_C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 81) err = 2;
    if (lv.v3 != 27635) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_S() c.Vp_C_S {
    return .{ .v1 = null, .v2 = 81, .v3 = 27635 };
}

// From T_Snnn_xbc.c:14573:14593
// struct  Vp_C_Uc  {
//   void *v1;
//   char v2;
//   unsigned char v3;
// };

test "Vp_C_Uc layout" {
    var lv: c.Vp_C_Uc = undefined;
    try testing.expectSize(c.Vp_C_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Vp_C_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_C_Uc(), .{ .v1 = null, .v2 = 20, .v3 = 98 });
    try testing.expectOk(c.assert_ret_Vp_C_Uc());
    try testing.expectOk(c.send_Vp_C_Uc());
    try testing.expectOk(c.assert_Vp_C_Uc(.{ .v1 = null, .v2 = 20, .v3 = 98 }));
}
pub export fn zig_assert_Vp_C_Uc(lv: c.Vp_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20) err = 2;
    if (lv.v3 != 98) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_Uc() c.Vp_C_Uc {
    return .{ .v1 = null, .v2 = 20, .v3 = 98 };
}

// From T_Snnn_xbc.c:14598:14618
// struct  Vp_C_Ui  {
//   void *v1;
//   char v2;
//   unsigned int v3;
// };

test "Vp_C_Ui layout" {
    var lv: c.Vp_C_Ui = undefined;
    try testing.expectSize(c.Vp_C_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_C_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_C_Ui(), .{ .v1 = null, .v2 = 65, .v3 = 13797 });
    try testing.expectOk(c.assert_ret_Vp_C_Ui());
    try testing.expectOk(c.send_Vp_C_Ui());
    try testing.expectOk(c.assert_Vp_C_Ui(.{ .v1 = null, .v2 = 65, .v3 = 13797 }));
}
pub export fn zig_assert_Vp_C_Ui(lv: c.Vp_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 65) err = 2;
    if (lv.v3 != 13797) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_Ui() c.Vp_C_Ui {
    return .{ .v1 = null, .v2 = 65, .v3 = 13797 };
}

// From T_Snnn_xbc.c:14623:14643
// struct  Vp_C_Ul  {
//   void *v1;
//   char v2;
//   __tsu64 v3;
// };

test "Vp_C_Ul layout" {
    var lv: c.Vp_C_Ul = undefined;
    try testing.expectSize(c.Vp_C_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_C_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_C_Ul(), .{ .v1 = null, .v2 = 96, .v3 = 18622 });
    try testing.expectOk(c.assert_ret_Vp_C_Ul());
    try testing.expectOk(c.send_Vp_C_Ul());
    try testing.expectOk(c.assert_Vp_C_Ul(.{ .v1 = null, .v2 = 96, .v3 = 18622 }));
}
pub export fn zig_assert_Vp_C_Ul(lv: c.Vp_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 96) err = 2;
    if (lv.v3 != 18622) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_Ul() c.Vp_C_Ul {
    return .{ .v1 = null, .v2 = 96, .v3 = 18622 };
}

// From T_Snnn_xbc.c:14648:14668
// struct  Vp_C_Us  {
//   void *v1;
//   char v2;
//   unsigned short v3;
// };

test "Vp_C_Us layout" {
    var lv: c.Vp_C_Us = undefined;
    try testing.expectSize(c.Vp_C_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_C_Us C calls" {
    try testing.expectEqual(c.ret_Vp_C_Us(), .{ .v1 = null, .v2 = 109, .v3 = 24720 });
    try testing.expectOk(c.assert_ret_Vp_C_Us());
    try testing.expectOk(c.send_Vp_C_Us());
    try testing.expectOk(c.assert_Vp_C_Us(.{ .v1 = null, .v2 = 109, .v3 = 24720 }));
}
pub export fn zig_assert_Vp_C_Us(lv: c.Vp_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 109) err = 2;
    if (lv.v3 != 24720) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_Us() c.Vp_C_Us {
    return .{ .v1 = null, .v2 = 109, .v3 = 24720 };
}

// From T_Snnn_xbc.c:14673:14693
// struct  Vp_C_Vp  {
//   void *v1;
//   char v2;
//   void *v3;
// };

test "Vp_C_Vp layout" {
    var lv: c.Vp_C_Vp = undefined;
    try testing.expectSize(c.Vp_C_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_C_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_C_Vp(), .{ .v1 = null, .v2 = 16, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_C_Vp());
    try testing.expectOk(c.send_Vp_C_Vp());
    try testing.expectOk(c.assert_Vp_C_Vp(.{ .v1 = null, .v2 = 16, .v3 = null }));
}
pub export fn zig_assert_Vp_C_Vp(lv: c.Vp_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 16) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_Vp() c.Vp_C_Vp {
    return .{ .v1 = null, .v2 = 16, .v3 = null };
}

// From T_Snnn_xbc.c:14698:14716
// struct  Vp_D  {
//   void *v1;
//   double v2;
// };

test "Vp_D layout" {
    var lv: c.Vp_D = undefined;
    try testing.expectSize(c.Vp_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_D C calls" {
    try testing.expectEqual(c.ret_Vp_D(), .{ .v1 = null, .v2 = 0.5 });
    try testing.expectOk(c.assert_ret_Vp_D());
    try testing.expectOk(c.send_Vp_D());
    try testing.expectOk(c.assert_Vp_D(.{ .v1 = null, .v2 = 0.5 }));
}
pub export fn zig_assert_Vp_D(lv: c.Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D() c.Vp_D {
    return .{ .v1 = null, .v2 = 0.5 };
}

// From T_Snnn_xbc.c:15445:15465
// struct  Vp_D_C  {
//   void *v1;
//   double v2;
//   char v3;
// };

test "Vp_D_C layout" {
    var lv: c.Vp_D_C = undefined;
    try testing.expectSize(c.Vp_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_C C calls" {
    try testing.expectEqual(c.ret_Vp_D_C(), .{ .v1 = null, .v2 = -0.25, .v3 = 3 });
    try testing.expectOk(c.assert_ret_Vp_D_C());
    try testing.expectOk(c.send_Vp_D_C());
    try testing.expectOk(c.assert_Vp_D_C(.{ .v1 = null, .v2 = -0.25, .v3 = 3 }));
}
pub export fn zig_assert_Vp_D_C(lv: c.Vp_D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 3) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_C() c.Vp_D_C {
    return .{ .v1 = null, .v2 = -0.25, .v3 = 3 };
}

// From T_Snnn_xbc.c:15470:15490
// struct  Vp_D_D  {
//   void *v1;
//   double v2;
//   double v3;
// };

test "Vp_D_D layout" {
    var lv: c.Vp_D_D = undefined;
    try testing.expectSize(c.Vp_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_D C calls" {
    try testing.expectEqual(c.ret_Vp_D_D(), .{ .v1 = null, .v2 = -2.125, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Vp_D_D());
    try testing.expectOk(c.send_Vp_D_D());
    try testing.expectOk(c.assert_Vp_D_D(.{ .v1 = null, .v2 = -2.125, .v3 = -2.125 }));
}
pub export fn zig_assert_Vp_D_D(lv: c.Vp_D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_D() c.Vp_D_D {
    return .{ .v1 = null, .v2 = -2.125, .v3 = -2.125 };
}

// From T_Snnn_xbc.c:15495:15515
// struct  Vp_D_F  {
//   void *v1;
//   double v2;
//   float v3;
// };

test "Vp_D_F layout" {
    var lv: c.Vp_D_F = undefined;
    try testing.expectSize(c.Vp_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_F C calls" {
    try testing.expectEqual(c.ret_Vp_D_F(), .{ .v1 = null, .v2 = -2.125, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Vp_D_F());
    try testing.expectOk(c.send_Vp_D_F());
    try testing.expectOk(c.assert_Vp_D_F(.{ .v1 = null, .v2 = -2.125, .v3 = -0.25 }));
}
pub export fn zig_assert_Vp_D_F(lv: c.Vp_D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_F() c.Vp_D_F {
    return .{ .v1 = null, .v2 = -2.125, .v3 = -0.25 };
}

// From T_Snnn_xbc.c:15520:15540
// struct  Vp_D_I  {
//   void *v1;
//   double v2;
//   int v3;
// };

test "Vp_D_I layout" {
    var lv: c.Vp_D_I = undefined;
    try testing.expectSize(c.Vp_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_I C calls" {
    try testing.expectEqual(c.ret_Vp_D_I(), .{ .v1 = null, .v2 = 0.875, .v3 = 9961 });
    try testing.expectOk(c.assert_ret_Vp_D_I());
    try testing.expectOk(c.send_Vp_D_I());
    try testing.expectOk(c.assert_Vp_D_I(.{ .v1 = null, .v2 = 0.875, .v3 = 9961 }));
}
pub export fn zig_assert_Vp_D_I(lv: c.Vp_D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 9961) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_I() c.Vp_D_I {
    return .{ .v1 = null, .v2 = 0.875, .v3 = 9961 };
}

// From T_Snnn_xbc.c:15545:15565
// struct  Vp_D_Ip  {
//   void *v1;
//   double v2;
//   int *v3;
// };

test "Vp_D_Ip layout" {
    var lv: c.Vp_D_Ip = undefined;
    try testing.expectSize(c.Vp_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_D_Ip(), .{ .v1 = null, .v2 = -0.25, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_D_Ip());
    try testing.expectOk(c.send_Vp_D_Ip());
    try testing.expectOk(c.assert_Vp_D_Ip(.{ .v1 = null, .v2 = -0.25, .v3 = null }));
}
pub export fn zig_assert_Vp_D_Ip(lv: c.Vp_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_Ip() c.Vp_D_Ip {
    return .{ .v1 = null, .v2 = -0.25, .v3 = null };
}

// From T_Snnn_xbc.c:15570:15590
// struct  Vp_D_L  {
//   void *v1;
//   double v2;
//   __tsi64 v3;
// };

test "Vp_D_L layout" {
    var lv: c.Vp_D_L = undefined;
    try testing.expectSize(c.Vp_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_L C calls" {
    try testing.expectEqual(c.ret_Vp_D_L(), .{ .v1 = null, .v2 = 0.875, .v3 = 17787 });
    try testing.expectOk(c.assert_ret_Vp_D_L());
    try testing.expectOk(c.send_Vp_D_L());
    try testing.expectOk(c.assert_Vp_D_L(.{ .v1 = null, .v2 = 0.875, .v3 = 17787 }));
}
pub export fn zig_assert_Vp_D_L(lv: c.Vp_D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 17787) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_L() c.Vp_D_L {
    return .{ .v1 = null, .v2 = 0.875, .v3 = 17787 };
}

// From T_Snnn_xbc.c:15595:15615
// struct  Vp_D_S  {
//   void *v1;
//   double v2;
//   short v3;
// };

test "Vp_D_S layout" {
    var lv: c.Vp_D_S = undefined;
    try testing.expectSize(c.Vp_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_S C calls" {
    try testing.expectEqual(c.ret_Vp_D_S(), .{ .v1 = null, .v2 = -0.25, .v3 = 29276 });
    try testing.expectOk(c.assert_ret_Vp_D_S());
    try testing.expectOk(c.send_Vp_D_S());
    try testing.expectOk(c.assert_Vp_D_S(.{ .v1 = null, .v2 = -0.25, .v3 = 29276 }));
}
pub export fn zig_assert_Vp_D_S(lv: c.Vp_D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 29276) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_S() c.Vp_D_S {
    return .{ .v1 = null, .v2 = -0.25, .v3 = 29276 };
}

// From T_Snnn_xbc.c:15620:15640
// struct  Vp_D_Uc  {
//   void *v1;
//   double v2;
//   unsigned char v3;
// };

test "Vp_D_Uc layout" {
    var lv: c.Vp_D_Uc = undefined;
    try testing.expectSize(c.Vp_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_D_Uc(), .{ .v1 = null, .v2 = 0.875, .v3 = 26 });
    try testing.expectOk(c.assert_ret_Vp_D_Uc());
    try testing.expectOk(c.send_Vp_D_Uc());
    try testing.expectOk(c.assert_Vp_D_Uc(.{ .v1 = null, .v2 = 0.875, .v3 = 26 }));
}
pub export fn zig_assert_Vp_D_Uc(lv: c.Vp_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 26) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_Uc() c.Vp_D_Uc {
    return .{ .v1 = null, .v2 = 0.875, .v3 = 26 };
}

// From T_Snnn_xbc.c:15645:15665
// struct  Vp_D_Ui  {
//   void *v1;
//   double v2;
//   unsigned int v3;
// };

test "Vp_D_Ui layout" {
    var lv: c.Vp_D_Ui = undefined;
    try testing.expectSize(c.Vp_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_D_Ui(), .{ .v1 = null, .v2 = 7.0, .v3 = 1017 });
    try testing.expectOk(c.assert_ret_Vp_D_Ui());
    try testing.expectOk(c.send_Vp_D_Ui());
    try testing.expectOk(c.assert_Vp_D_Ui(.{ .v1 = null, .v2 = 7.0, .v3 = 1017 }));
}
pub export fn zig_assert_Vp_D_Ui(lv: c.Vp_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 1017) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_Ui() c.Vp_D_Ui {
    return .{ .v1 = null, .v2 = 7.0, .v3 = 1017 };
}

// From T_Snnn_xbc.c:15670:15690
// struct  Vp_D_Ul  {
//   void *v1;
//   double v2;
//   __tsu64 v3;
// };

test "Vp_D_Ul layout" {
    var lv: c.Vp_D_Ul = undefined;
    try testing.expectSize(c.Vp_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_D_Ul(), .{ .v1 = null, .v2 = -2.125, .v3 = 18055 });
    try testing.expectOk(c.assert_ret_Vp_D_Ul());
    try testing.expectOk(c.send_Vp_D_Ul());
    try testing.expectOk(c.assert_Vp_D_Ul(.{ .v1 = null, .v2 = -2.125, .v3 = 18055 }));
}
pub export fn zig_assert_Vp_D_Ul(lv: c.Vp_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 18055) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_Ul() c.Vp_D_Ul {
    return .{ .v1 = null, .v2 = -2.125, .v3 = 18055 };
}

// From T_Snnn_xbc.c:15695:15715
// struct  Vp_D_Us  {
//   void *v1;
//   double v2;
//   unsigned short v3;
// };

test "Vp_D_Us layout" {
    var lv: c.Vp_D_Us = undefined;
    try testing.expectSize(c.Vp_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Us C calls" {
    try testing.expectEqual(c.ret_Vp_D_Us(), .{ .v1 = null, .v2 = 1.0, .v3 = 13068 });
    try testing.expectOk(c.assert_ret_Vp_D_Us());
    try testing.expectOk(c.send_Vp_D_Us());
    try testing.expectOk(c.assert_Vp_D_Us(.{ .v1 = null, .v2 = 1.0, .v3 = 13068 }));
}
pub export fn zig_assert_Vp_D_Us(lv: c.Vp_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 13068) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_Us() c.Vp_D_Us {
    return .{ .v1 = null, .v2 = 1.0, .v3 = 13068 };
}

// From T_Snnn_xbc.c:15720:15740
// struct  Vp_D_Vp  {
//   void *v1;
//   double v2;
//   void *v3;
// };

test "Vp_D_Vp layout" {
    var lv: c.Vp_D_Vp = undefined;
    try testing.expectSize(c.Vp_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_D_Vp(), .{ .v1 = null, .v2 = -0.25, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_D_Vp());
    try testing.expectOk(c.send_Vp_D_Vp());
    try testing.expectOk(c.assert_Vp_D_Vp(.{ .v1 = null, .v2 = -0.25, .v3 = null }));
}
pub export fn zig_assert_Vp_D_Vp(lv: c.Vp_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_Vp() c.Vp_D_Vp {
    return .{ .v1 = null, .v2 = -0.25, .v3 = null };
}

// From T_Snnn_xbc.c:15745:15763
// struct  Vp_F  {
//   void *v1;
//   float v2;
// };

test "Vp_F layout" {
    var lv: c.Vp_F = undefined;
    try testing.expectSize(c.Vp_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_F C calls" {
    try testing.expectEqual(c.ret_Vp_F(), .{ .v1 = null, .v2 = -2.125 });
    try testing.expectOk(c.assert_ret_Vp_F());
    try testing.expectOk(c.send_Vp_F());
    try testing.expectOk(c.assert_Vp_F(.{ .v1 = null, .v2 = -2.125 }));
}
pub export fn zig_assert_Vp_F(lv: c.Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F() c.Vp_F {
    return .{ .v1 = null, .v2 = -2.125 };
}

// From T_Snnn_xbc.c:16492:16512
// struct  Vp_F_C  {
//   void *v1;
//   float v2;
//   char v3;
// };

test "Vp_F_C layout" {
    var lv: c.Vp_F_C = undefined;
    try testing.expectSize(c.Vp_F_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_C C calls" {
    try testing.expectEqual(c.ret_Vp_F_C(), .{ .v1 = null, .v2 = 0.875, .v3 = 23 });
    try testing.expectOk(c.assert_ret_Vp_F_C());
    try testing.expectOk(c.send_Vp_F_C());
    try testing.expectOk(c.assert_Vp_F_C(.{ .v1 = null, .v2 = 0.875, .v3 = 23 }));
}
pub export fn zig_assert_Vp_F_C(lv: c.Vp_F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 23) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_C() c.Vp_F_C {
    return .{ .v1 = null, .v2 = 0.875, .v3 = 23 };
}

// From T_Snnn_xbc.c:16517:16537
// struct  Vp_F_D  {
//   void *v1;
//   float v2;
//   double v3;
// };

test "Vp_F_D layout" {
    var lv: c.Vp_F_D = undefined;
    try testing.expectSize(c.Vp_F_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_F_D C calls" {
    try testing.expectEqual(c.ret_Vp_F_D(), .{ .v1 = null, .v2 = -2.125, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Vp_F_D());
    try testing.expectOk(c.send_Vp_F_D());
    try testing.expectOk(c.assert_Vp_F_D(.{ .v1 = null, .v2 = -2.125, .v3 = -0.25 }));
}
pub export fn zig_assert_Vp_F_D(lv: c.Vp_F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_D() c.Vp_F_D {
    return .{ .v1 = null, .v2 = -2.125, .v3 = -0.25 };
}

// From T_Snnn_xbc.c:16542:16562
// struct  Vp_F_F  {
//   void *v1;
//   float v2;
//   float v3;
// };

test "Vp_F_F layout" {
    var lv: c.Vp_F_F = undefined;
    try testing.expectSize(c.Vp_F_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_F C calls" {
    try testing.expectEqual(c.ret_Vp_F_F(), .{ .v1 = null, .v2 = 7.0, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Vp_F_F());
    try testing.expectOk(c.send_Vp_F_F());
    try testing.expectOk(c.assert_Vp_F_F(.{ .v1 = null, .v2 = 7.0, .v3 = 4.5 }));
}
pub export fn zig_assert_Vp_F_F(lv: c.Vp_F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_F() c.Vp_F_F {
    return .{ .v1 = null, .v2 = 7.0, .v3 = 4.5 };
}

// From T_Snnn_xbc.c:16567:16587
// struct  Vp_F_I  {
//   void *v1;
//   float v2;
//   int v3;
// };

test "Vp_F_I layout" {
    var lv: c.Vp_F_I = undefined;
    try testing.expectSize(c.Vp_F_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_I C calls" {
    try testing.expectEqual(c.ret_Vp_F_I(), .{ .v1 = null, .v2 = 1.0, .v3 = 23844 });
    try testing.expectOk(c.assert_ret_Vp_F_I());
    try testing.expectOk(c.send_Vp_F_I());
    try testing.expectOk(c.assert_Vp_F_I(.{ .v1 = null, .v2 = 1.0, .v3 = 23844 }));
}
pub export fn zig_assert_Vp_F_I(lv: c.Vp_F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 23844) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_I() c.Vp_F_I {
    return .{ .v1 = null, .v2 = 1.0, .v3 = 23844 };
}

// From T_Snnn_xbc.c:16592:16612
// struct  Vp_F_Ip  {
//   void *v1;
//   float v2;
//   int *v3;
// };

test "Vp_F_Ip layout" {
    var lv: c.Vp_F_Ip = undefined;
    try testing.expectSize(c.Vp_F_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_F_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_F_Ip(), .{ .v1 = null, .v2 = 4.5, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_F_Ip());
    try testing.expectOk(c.send_Vp_F_Ip());
    try testing.expectOk(c.assert_Vp_F_Ip(.{ .v1 = null, .v2 = 4.5, .v3 = null }));
}
pub export fn zig_assert_Vp_F_Ip(lv: c.Vp_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_Ip() c.Vp_F_Ip {
    return .{ .v1 = null, .v2 = 4.5, .v3 = null };
}

// From T_Snnn_xbc.c:16617:16637
// struct  Vp_F_L  {
//   void *v1;
//   float v2;
//   __tsi64 v3;
// };

test "Vp_F_L layout" {
    var lv: c.Vp_F_L = undefined;
    try testing.expectSize(c.Vp_F_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_F_L C calls" {
    try testing.expectEqual(c.ret_Vp_F_L(), .{ .v1 = null, .v2 = 0.875, .v3 = 4038 });
    try testing.expectOk(c.assert_ret_Vp_F_L());
    try testing.expectOk(c.send_Vp_F_L());
    try testing.expectOk(c.assert_Vp_F_L(.{ .v1 = null, .v2 = 0.875, .v3 = 4038 }));
}
pub export fn zig_assert_Vp_F_L(lv: c.Vp_F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 4038) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_L() c.Vp_F_L {
    return .{ .v1 = null, .v2 = 0.875, .v3 = 4038 };
}

// From T_Snnn_xbc.c:16642:16662
// struct  Vp_F_S  {
//   void *v1;
//   float v2;
//   short v3;
// };

test "Vp_F_S layout" {
    var lv: c.Vp_F_S = undefined;
    try testing.expectSize(c.Vp_F_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_S C calls" {
    try testing.expectEqual(c.ret_Vp_F_S(), .{ .v1 = null, .v2 = 4.5, .v3 = 23153 });
    try testing.expectOk(c.assert_ret_Vp_F_S());
    try testing.expectOk(c.send_Vp_F_S());
    try testing.expectOk(c.assert_Vp_F_S(.{ .v1 = null, .v2 = 4.5, .v3 = 23153 }));
}
pub export fn zig_assert_Vp_F_S(lv: c.Vp_F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 23153) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_S() c.Vp_F_S {
    return .{ .v1 = null, .v2 = 4.5, .v3 = 23153 };
}

// From T_Snnn_xbc.c:16667:16687
// struct  Vp_F_Uc  {
//   void *v1;
//   float v2;
//   unsigned char v3;
// };

test "Vp_F_Uc layout" {
    var lv: c.Vp_F_Uc = undefined;
    try testing.expectSize(c.Vp_F_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_F_Uc(), .{ .v1 = null, .v2 = 7.0, .v3 = 33 });
    try testing.expectOk(c.assert_ret_Vp_F_Uc());
    try testing.expectOk(c.send_Vp_F_Uc());
    try testing.expectOk(c.assert_Vp_F_Uc(.{ .v1 = null, .v2 = 7.0, .v3 = 33 }));
}
pub export fn zig_assert_Vp_F_Uc(lv: c.Vp_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 33) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_Uc() c.Vp_F_Uc {
    return .{ .v1 = null, .v2 = 7.0, .v3 = 33 };
}

// From T_Snnn_xbc.c:16692:16712
// struct  Vp_F_Ui  {
//   void *v1;
//   float v2;
//   unsigned int v3;
// };

test "Vp_F_Ui layout" {
    var lv: c.Vp_F_Ui = undefined;
    try testing.expectSize(c.Vp_F_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_F_Ui(), .{ .v1 = null, .v2 = -0.25, .v3 = 30633 });
    try testing.expectOk(c.assert_ret_Vp_F_Ui());
    try testing.expectOk(c.send_Vp_F_Ui());
    try testing.expectOk(c.assert_Vp_F_Ui(.{ .v1 = null, .v2 = -0.25, .v3 = 30633 }));
}
pub export fn zig_assert_Vp_F_Ui(lv: c.Vp_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 30633) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_Ui() c.Vp_F_Ui {
    return .{ .v1 = null, .v2 = -0.25, .v3 = 30633 };
}

// From T_Snnn_xbc.c:16717:16737
// struct  Vp_F_Ul  {
//   void *v1;
//   float v2;
//   __tsu64 v3;
// };

test "Vp_F_Ul layout" {
    var lv: c.Vp_F_Ul = undefined;
    try testing.expectSize(c.Vp_F_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_F_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_F_Ul(), .{ .v1 = null, .v2 = -0.25, .v3 = 8866 });
    try testing.expectOk(c.assert_ret_Vp_F_Ul());
    try testing.expectOk(c.send_Vp_F_Ul());
    try testing.expectOk(c.assert_Vp_F_Ul(.{ .v1 = null, .v2 = -0.25, .v3 = 8866 }));
}
pub export fn zig_assert_Vp_F_Ul(lv: c.Vp_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 8866) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_Ul() c.Vp_F_Ul {
    return .{ .v1 = null, .v2 = -0.25, .v3 = 8866 };
}

// From T_Snnn_xbc.c:16742:16762
// struct  Vp_F_Us  {
//   void *v1;
//   float v2;
//   unsigned short v3;
// };

test "Vp_F_Us layout" {
    var lv: c.Vp_F_Us = undefined;
    try testing.expectSize(c.Vp_F_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_Us C calls" {
    try testing.expectEqual(c.ret_Vp_F_Us(), .{ .v1 = null, .v2 = 0.875, .v3 = 6210 });
    try testing.expectOk(c.assert_ret_Vp_F_Us());
    try testing.expectOk(c.send_Vp_F_Us());
    try testing.expectOk(c.assert_Vp_F_Us(.{ .v1 = null, .v2 = 0.875, .v3 = 6210 }));
}
pub export fn zig_assert_Vp_F_Us(lv: c.Vp_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 6210) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_Us() c.Vp_F_Us {
    return .{ .v1 = null, .v2 = 0.875, .v3 = 6210 };
}

// From T_Snnn_xbc.c:16767:16787
// struct  Vp_F_Vp  {
//   void *v1;
//   float v2;
//   void *v3;
// };

test "Vp_F_Vp layout" {
    var lv: c.Vp_F_Vp = undefined;
    try testing.expectSize(c.Vp_F_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_F_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_F_Vp(), .{ .v1 = null, .v2 = 0.875, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_F_Vp());
    try testing.expectOk(c.send_Vp_F_Vp());
    try testing.expectOk(c.assert_Vp_F_Vp(.{ .v1 = null, .v2 = 0.875, .v3 = null }));
}
pub export fn zig_assert_Vp_F_Vp(lv: c.Vp_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_Vp() c.Vp_F_Vp {
    return .{ .v1 = null, .v2 = 0.875, .v3 = null };
}

// From T_Snnn_xbc.c:16792:16810
// struct  Vp_I  {
//   void *v1;
//   int v2;
// };

test "Vp_I layout" {
    var lv: c.Vp_I = undefined;
    try testing.expectSize(c.Vp_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_I C calls" {
    try testing.expectEqual(c.ret_Vp_I(), .{ .v1 = null, .v2 = 23393 });
    try testing.expectOk(c.assert_ret_Vp_I());
    try testing.expectOk(c.send_Vp_I());
    try testing.expectOk(c.assert_Vp_I(.{ .v1 = null, .v2 = 23393 }));
}
pub export fn zig_assert_Vp_I(lv: c.Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 23393) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I() c.Vp_I {
    return .{ .v1 = null, .v2 = 23393 };
}

// From T_Snnn_xbc.c:17539:17559
// struct  Vp_I_C  {
//   void *v1;
//   int v2;
//   char v3;
// };

test "Vp_I_C layout" {
    var lv: c.Vp_I_C = undefined;
    try testing.expectSize(c.Vp_I_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_C C calls" {
    try testing.expectEqual(c.ret_Vp_I_C(), .{ .v1 = null, .v2 = 1637, .v3 = 114 });
    try testing.expectOk(c.assert_ret_Vp_I_C());
    try testing.expectOk(c.send_Vp_I_C());
    try testing.expectOk(c.assert_Vp_I_C(.{ .v1 = null, .v2 = 1637, .v3 = 114 }));
}
pub export fn zig_assert_Vp_I_C(lv: c.Vp_I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1637) err = 2;
    if (lv.v3 != 114) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_C() c.Vp_I_C {
    return .{ .v1 = null, .v2 = 1637, .v3 = 114 };
}

// From T_Snnn_xbc.c:17564:17584
// struct  Vp_I_D  {
//   void *v1;
//   int v2;
//   double v3;
// };

test "Vp_I_D layout" {
    var lv: c.Vp_I_D = undefined;
    try testing.expectSize(c.Vp_I_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_I_D C calls" {
    try testing.expectEqual(c.ret_Vp_I_D(), .{ .v1 = null, .v2 = 1972, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Vp_I_D());
    try testing.expectOk(c.send_Vp_I_D());
    try testing.expectOk(c.assert_Vp_I_D(.{ .v1 = null, .v2 = 1972, .v3 = -2.125 }));
}
pub export fn zig_assert_Vp_I_D(lv: c.Vp_I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1972) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_D() c.Vp_I_D {
    return .{ .v1 = null, .v2 = 1972, .v3 = -2.125 };
}

// From T_Snnn_xbc.c:17589:17609
// struct  Vp_I_F  {
//   void *v1;
//   int v2;
//   float v3;
// };

test "Vp_I_F layout" {
    var lv: c.Vp_I_F = undefined;
    try testing.expectSize(c.Vp_I_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_F C calls" {
    try testing.expectEqual(c.ret_Vp_I_F(), .{ .v1 = null, .v2 = 27881, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Vp_I_F());
    try testing.expectOk(c.send_Vp_I_F());
    try testing.expectOk(c.assert_Vp_I_F(.{ .v1 = null, .v2 = 27881, .v3 = -2.125 }));
}
pub export fn zig_assert_Vp_I_F(lv: c.Vp_I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27881) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_F() c.Vp_I_F {
    return .{ .v1 = null, .v2 = 27881, .v3 = -2.125 };
}

// From T_Snnn_xbc.c:17614:17634
// struct  Vp_I_I  {
//   void *v1;
//   int v2;
//   int v3;
// };

test "Vp_I_I layout" {
    var lv: c.Vp_I_I = undefined;
    try testing.expectSize(c.Vp_I_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_I C calls" {
    try testing.expectEqual(c.ret_Vp_I_I(), .{ .v1 = null, .v2 = 10924, .v3 = 24474 });
    try testing.expectOk(c.assert_ret_Vp_I_I());
    try testing.expectOk(c.send_Vp_I_I());
    try testing.expectOk(c.assert_Vp_I_I(.{ .v1 = null, .v2 = 10924, .v3 = 24474 }));
}
pub export fn zig_assert_Vp_I_I(lv: c.Vp_I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 10924) err = 2;
    if (lv.v3 != 24474) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_I() c.Vp_I_I {
    return .{ .v1 = null, .v2 = 10924, .v3 = 24474 };
}

// From T_Snnn_xbc.c:17639:17659
// struct  Vp_I_Ip  {
//   void *v1;
//   int v2;
//   int *v3;
// };

test "Vp_I_Ip layout" {
    var lv: c.Vp_I_Ip = undefined;
    try testing.expectSize(c.Vp_I_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_I_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_I_Ip(), .{ .v1 = null, .v2 = 16922, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_I_Ip());
    try testing.expectOk(c.send_Vp_I_Ip());
    try testing.expectOk(c.assert_Vp_I_Ip(.{ .v1 = null, .v2 = 16922, .v3 = null }));
}
pub export fn zig_assert_Vp_I_Ip(lv: c.Vp_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 16922) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_Ip() c.Vp_I_Ip {
    return .{ .v1 = null, .v2 = 16922, .v3 = null };
}

// From T_Snnn_xbc.c:17664:17684
// struct  Vp_I_L  {
//   void *v1;
//   int v2;
//   __tsi64 v3;
// };

test "Vp_I_L layout" {
    var lv: c.Vp_I_L = undefined;
    try testing.expectSize(c.Vp_I_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_I_L C calls" {
    try testing.expectEqual(c.ret_Vp_I_L(), .{ .v1 = null, .v2 = 6583, .v3 = 21965 });
    try testing.expectOk(c.assert_ret_Vp_I_L());
    try testing.expectOk(c.send_Vp_I_L());
    try testing.expectOk(c.assert_Vp_I_L(.{ .v1 = null, .v2 = 6583, .v3 = 21965 }));
}
pub export fn zig_assert_Vp_I_L(lv: c.Vp_I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 6583) err = 2;
    if (lv.v3 != 21965) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_L() c.Vp_I_L {
    return .{ .v1 = null, .v2 = 6583, .v3 = 21965 };
}

// From T_Snnn_xbc.c:17689:17709
// struct  Vp_I_S  {
//   void *v1;
//   int v2;
//   short v3;
// };

test "Vp_I_S layout" {
    var lv: c.Vp_I_S = undefined;
    try testing.expectSize(c.Vp_I_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_S C calls" {
    try testing.expectEqual(c.ret_Vp_I_S(), .{ .v1 = null, .v2 = 21480, .v3 = 25061 });
    try testing.expectOk(c.assert_ret_Vp_I_S());
    try testing.expectOk(c.send_Vp_I_S());
    try testing.expectOk(c.assert_Vp_I_S(.{ .v1 = null, .v2 = 21480, .v3 = 25061 }));
}
pub export fn zig_assert_Vp_I_S(lv: c.Vp_I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21480) err = 2;
    if (lv.v3 != 25061) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_S() c.Vp_I_S {
    return .{ .v1 = null, .v2 = 21480, .v3 = 25061 };
}

// From T_Snnn_xbc.c:17714:17734
// struct  Vp_I_Uc  {
//   void *v1;
//   int v2;
//   unsigned char v3;
// };

test "Vp_I_Uc layout" {
    var lv: c.Vp_I_Uc = undefined;
    try testing.expectSize(c.Vp_I_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_I_Uc(), .{ .v1 = null, .v2 = 16553, .v3 = 97 });
    try testing.expectOk(c.assert_ret_Vp_I_Uc());
    try testing.expectOk(c.send_Vp_I_Uc());
    try testing.expectOk(c.assert_Vp_I_Uc(.{ .v1 = null, .v2 = 16553, .v3 = 97 }));
}
pub export fn zig_assert_Vp_I_Uc(lv: c.Vp_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 16553) err = 2;
    if (lv.v3 != 97) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_Uc() c.Vp_I_Uc {
    return .{ .v1 = null, .v2 = 16553, .v3 = 97 };
}

// From T_Snnn_xbc.c:17739:17759
// struct  Vp_I_Ui  {
//   void *v1;
//   int v2;
//   unsigned int v3;
// };

test "Vp_I_Ui layout" {
    var lv: c.Vp_I_Ui = undefined;
    try testing.expectSize(c.Vp_I_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_I_Ui(), .{ .v1 = null, .v2 = 19921, .v3 = 1267 });
    try testing.expectOk(c.assert_ret_Vp_I_Ui());
    try testing.expectOk(c.send_Vp_I_Ui());
    try testing.expectOk(c.assert_Vp_I_Ui(.{ .v1 = null, .v2 = 19921, .v3 = 1267 }));
}
pub export fn zig_assert_Vp_I_Ui(lv: c.Vp_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19921) err = 2;
    if (lv.v3 != 1267) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_Ui() c.Vp_I_Ui {
    return .{ .v1 = null, .v2 = 19921, .v3 = 1267 };
}

// From T_Snnn_xbc.c:17764:17784
// struct  Vp_I_Ul  {
//   void *v1;
//   int v2;
//   __tsu64 v3;
// };

test "Vp_I_Ul layout" {
    var lv: c.Vp_I_Ul = undefined;
    try testing.expectSize(c.Vp_I_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_I_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_I_Ul(), .{ .v1 = null, .v2 = 20058, .v3 = 6949 });
    try testing.expectOk(c.assert_ret_Vp_I_Ul());
    try testing.expectOk(c.send_Vp_I_Ul());
    try testing.expectOk(c.assert_Vp_I_Ul(.{ .v1 = null, .v2 = 20058, .v3 = 6949 }));
}
pub export fn zig_assert_Vp_I_Ul(lv: c.Vp_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20058) err = 2;
    if (lv.v3 != 6949) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_Ul() c.Vp_I_Ul {
    return .{ .v1 = null, .v2 = 20058, .v3 = 6949 };
}

// From T_Snnn_xbc.c:17789:17809
// struct  Vp_I_Us  {
//   void *v1;
//   int v2;
//   unsigned short v3;
// };

test "Vp_I_Us layout" {
    var lv: c.Vp_I_Us = undefined;
    try testing.expectSize(c.Vp_I_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_Us C calls" {
    try testing.expectEqual(c.ret_Vp_I_Us(), .{ .v1 = null, .v2 = 11156, .v3 = 2529 });
    try testing.expectOk(c.assert_ret_Vp_I_Us());
    try testing.expectOk(c.send_Vp_I_Us());
    try testing.expectOk(c.assert_Vp_I_Us(.{ .v1 = null, .v2 = 11156, .v3 = 2529 }));
}
pub export fn zig_assert_Vp_I_Us(lv: c.Vp_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 11156) err = 2;
    if (lv.v3 != 2529) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_Us() c.Vp_I_Us {
    return .{ .v1 = null, .v2 = 11156, .v3 = 2529 };
}

// From T_Snnn_xbc.c:17814:17834
// struct  Vp_I_Vp  {
//   void *v1;
//   int v2;
//   void *v3;
// };

test "Vp_I_Vp layout" {
    var lv: c.Vp_I_Vp = undefined;
    try testing.expectSize(c.Vp_I_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_I_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_I_Vp(), .{ .v1 = null, .v2 = 15788, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_I_Vp());
    try testing.expectOk(c.send_Vp_I_Vp());
    try testing.expectOk(c.assert_Vp_I_Vp(.{ .v1 = null, .v2 = 15788, .v3 = null }));
}
pub export fn zig_assert_Vp_I_Vp(lv: c.Vp_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15788) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_Vp() c.Vp_I_Vp {
    return .{ .v1 = null, .v2 = 15788, .v3 = null };
}

// From T_Snnn_xbc.c:17839:17857
// struct  Vp_Ip  {
//   void *v1;
//   int *v2;
// };

test "Vp_Ip layout" {
    var lv: c.Vp_Ip = undefined;
    try testing.expectSize(c.Vp_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_Ip(), .{ .v1 = null, .v2 = null });
    try testing.expectOk(c.assert_ret_Vp_Ip());
    try testing.expectOk(c.send_Vp_Ip());
    try testing.expectOk(c.assert_Vp_Ip(.{ .v1 = null, .v2 = null }));
}
pub export fn zig_assert_Vp_Ip(lv: c.Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip() c.Vp_Ip {
    return .{ .v1 = null, .v2 = null };
}

// From T_Snnn_xbc.c:18586:18606
// struct  Vp_Ip_C  {
//   void *v1;
//   int *v2;
//   char v3;
// };

test "Vp_Ip_C layout" {
    var lv: c.Vp_Ip_C = undefined;
    try testing.expectSize(c.Vp_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_C C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_C(), .{ .v1 = null, .v2 = null, .v3 = 53 });
    try testing.expectOk(c.assert_ret_Vp_Ip_C());
    try testing.expectOk(c.send_Vp_Ip_C());
    try testing.expectOk(c.assert_Vp_Ip_C(.{ .v1 = null, .v2 = null, .v3 = 53 }));
}
pub export fn zig_assert_Vp_Ip_C(lv: c.Vp_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 53) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_C() c.Vp_Ip_C {
    return .{ .v1 = null, .v2 = null, .v3 = 53 };
}

// From T_Snnn_xbc.c:18611:18631
// struct  Vp_Ip_D  {
//   void *v1;
//   int *v2;
//   double v3;
// };

test "Vp_Ip_D layout" {
    var lv: c.Vp_Ip_D = undefined;
    try testing.expectSize(c.Vp_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_D C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_D(), .{ .v1 = null, .v2 = null, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Vp_Ip_D());
    try testing.expectOk(c.send_Vp_Ip_D());
    try testing.expectOk(c.assert_Vp_Ip_D(.{ .v1 = null, .v2 = null, .v3 = -0.25 }));
}
pub export fn zig_assert_Vp_Ip_D(lv: c.Vp_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_D() c.Vp_Ip_D {
    return .{ .v1 = null, .v2 = null, .v3 = -0.25 };
}

// From T_Snnn_xbc.c:18636:18656
// struct  Vp_Ip_F  {
//   void *v1;
//   int *v2;
//   float v3;
// };

test "Vp_Ip_F layout" {
    var lv: c.Vp_Ip_F = undefined;
    try testing.expectSize(c.Vp_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_F C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_F(), .{ .v1 = null, .v2 = null, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Vp_Ip_F());
    try testing.expectOk(c.send_Vp_Ip_F());
    try testing.expectOk(c.assert_Vp_Ip_F(.{ .v1 = null, .v2 = null, .v3 = 1.0 }));
}
pub export fn zig_assert_Vp_Ip_F(lv: c.Vp_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_F() c.Vp_Ip_F {
    return .{ .v1 = null, .v2 = null, .v3 = 1.0 };
}

// From T_Snnn_xbc.c:18661:18681
// struct  Vp_Ip_I  {
//   void *v1;
//   int *v2;
//   int v3;
// };

test "Vp_Ip_I layout" {
    var lv: c.Vp_Ip_I = undefined;
    try testing.expectSize(c.Vp_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_I C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_I(), .{ .v1 = null, .v2 = null, .v3 = 21941 });
    try testing.expectOk(c.assert_ret_Vp_Ip_I());
    try testing.expectOk(c.send_Vp_Ip_I());
    try testing.expectOk(c.assert_Vp_Ip_I(.{ .v1 = null, .v2 = null, .v3 = 21941 }));
}
pub export fn zig_assert_Vp_Ip_I(lv: c.Vp_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 21941) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_I() c.Vp_Ip_I {
    return .{ .v1 = null, .v2 = null, .v3 = 21941 };
}

// From T_Snnn_xbc.c:18686:18706
// struct  Vp_Ip_Ip  {
//   void *v1;
//   int *v2;
//   int *v3;
// };

test "Vp_Ip_Ip layout" {
    var lv: c.Vp_Ip_Ip = undefined;
    try testing.expectSize(c.Vp_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_Ip(), .{ .v1 = null, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Ip_Ip());
    try testing.expectOk(c.send_Vp_Ip_Ip());
    try testing.expectOk(c.assert_Vp_Ip_Ip(.{ .v1 = null, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Vp_Ip_Ip(lv: c.Vp_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_Ip() c.Vp_Ip_Ip {
    return .{ .v1 = null, .v2 = null, .v3 = null };
}

// From T_Snnn_xbc.c:18711:18731
// struct  Vp_Ip_L  {
//   void *v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Vp_Ip_L layout" {
    var lv: c.Vp_Ip_L = undefined;
    try testing.expectSize(c.Vp_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_L C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_L(), .{ .v1 = null, .v2 = null, .v3 = 18116 });
    try testing.expectOk(c.assert_ret_Vp_Ip_L());
    try testing.expectOk(c.send_Vp_Ip_L());
    try testing.expectOk(c.assert_Vp_Ip_L(.{ .v1 = null, .v2 = null, .v3 = 18116 }));
}
pub export fn zig_assert_Vp_Ip_L(lv: c.Vp_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 18116) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_L() c.Vp_Ip_L {
    return .{ .v1 = null, .v2 = null, .v3 = 18116 };
}

// From T_Snnn_xbc.c:18736:18756
// struct  Vp_Ip_S  {
//   void *v1;
//   int *v2;
//   short v3;
// };

test "Vp_Ip_S layout" {
    var lv: c.Vp_Ip_S = undefined;
    try testing.expectSize(c.Vp_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_S C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_S(), .{ .v1 = null, .v2 = null, .v3 = 31632 });
    try testing.expectOk(c.assert_ret_Vp_Ip_S());
    try testing.expectOk(c.send_Vp_Ip_S());
    try testing.expectOk(c.assert_Vp_Ip_S(.{ .v1 = null, .v2 = null, .v3 = 31632 }));
}
pub export fn zig_assert_Vp_Ip_S(lv: c.Vp_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 31632) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_S() c.Vp_Ip_S {
    return .{ .v1 = null, .v2 = null, .v3 = 31632 };
}

// From T_Snnn_xbc.c:18761:18781
// struct  Vp_Ip_Uc  {
//   void *v1;
//   int *v2;
//   unsigned char v3;
// };

test "Vp_Ip_Uc layout" {
    var lv: c.Vp_Ip_Uc = undefined;
    try testing.expectSize(c.Vp_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_Uc(), .{ .v1 = null, .v2 = null, .v3 = 107 });
    try testing.expectOk(c.assert_ret_Vp_Ip_Uc());
    try testing.expectOk(c.send_Vp_Ip_Uc());
    try testing.expectOk(c.assert_Vp_Ip_Uc(.{ .v1 = null, .v2 = null, .v3 = 107 }));
}
pub export fn zig_assert_Vp_Ip_Uc(lv: c.Vp_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 107) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_Uc() c.Vp_Ip_Uc {
    return .{ .v1 = null, .v2 = null, .v3 = 107 };
}

// From T_Snnn_xbc.c:18786:18806
// struct  Vp_Ip_Ui  {
//   void *v1;
//   int *v2;
//   unsigned int v3;
// };

test "Vp_Ip_Ui layout" {
    var lv: c.Vp_Ip_Ui = undefined;
    try testing.expectSize(c.Vp_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_Ui(), .{ .v1 = null, .v2 = null, .v3 = 30947 });
    try testing.expectOk(c.assert_ret_Vp_Ip_Ui());
    try testing.expectOk(c.send_Vp_Ip_Ui());
    try testing.expectOk(c.assert_Vp_Ip_Ui(.{ .v1 = null, .v2 = null, .v3 = 30947 }));
}
pub export fn zig_assert_Vp_Ip_Ui(lv: c.Vp_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 30947) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_Ui() c.Vp_Ip_Ui {
    return .{ .v1 = null, .v2 = null, .v3 = 30947 };
}

// From T_Snnn_xbc.c:18811:18831
// struct  Vp_Ip_Ul  {
//   void *v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Vp_Ip_Ul layout" {
    var lv: c.Vp_Ip_Ul = undefined;
    try testing.expectSize(c.Vp_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_Ul(), .{ .v1 = null, .v2 = null, .v3 = 10704 });
    try testing.expectOk(c.assert_ret_Vp_Ip_Ul());
    try testing.expectOk(c.send_Vp_Ip_Ul());
    try testing.expectOk(c.assert_Vp_Ip_Ul(.{ .v1 = null, .v2 = null, .v3 = 10704 }));
}
pub export fn zig_assert_Vp_Ip_Ul(lv: c.Vp_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 10704) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_Ul() c.Vp_Ip_Ul {
    return .{ .v1 = null, .v2 = null, .v3 = 10704 };
}

// From T_Snnn_xbc.c:18836:18856
// struct  Vp_Ip_Us  {
//   void *v1;
//   int *v2;
//   unsigned short v3;
// };

test "Vp_Ip_Us layout" {
    var lv: c.Vp_Ip_Us = undefined;
    try testing.expectSize(c.Vp_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Us C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_Us(), .{ .v1 = null, .v2 = null, .v3 = 8391 });
    try testing.expectOk(c.assert_ret_Vp_Ip_Us());
    try testing.expectOk(c.send_Vp_Ip_Us());
    try testing.expectOk(c.assert_Vp_Ip_Us(.{ .v1 = null, .v2 = null, .v3 = 8391 }));
}
pub export fn zig_assert_Vp_Ip_Us(lv: c.Vp_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 8391) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_Us() c.Vp_Ip_Us {
    return .{ .v1 = null, .v2 = null, .v3 = 8391 };
}

// From T_Snnn_xbc.c:18861:18881
// struct  Vp_Ip_Vp  {
//   void *v1;
//   int *v2;
//   void *v3;
// };

test "Vp_Ip_Vp layout" {
    var lv: c.Vp_Ip_Vp = undefined;
    try testing.expectSize(c.Vp_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_Vp(), .{ .v1 = null, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Ip_Vp());
    try testing.expectOk(c.send_Vp_Ip_Vp());
    try testing.expectOk(c.assert_Vp_Ip_Vp(.{ .v1 = null, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Vp_Ip_Vp(lv: c.Vp_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_Vp() c.Vp_Ip_Vp {
    return .{ .v1 = null, .v2 = null, .v3 = null };
}

// From T_Snnn_xbc.c:18886:18904
// struct  Vp_L  {
//   void *v1;
//   __tsi64 v2;
// };

test "Vp_L layout" {
    var lv: c.Vp_L = undefined;
    try testing.expectSize(c.Vp_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_L C calls" {
    try testing.expectEqual(c.ret_Vp_L(), .{ .v1 = null, .v2 = 15055 });
    try testing.expectOk(c.assert_ret_Vp_L());
    try testing.expectOk(c.send_Vp_L());
    try testing.expectOk(c.assert_Vp_L(.{ .v1 = null, .v2 = 15055 }));
}
pub export fn zig_assert_Vp_L(lv: c.Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15055) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L() c.Vp_L {
    return .{ .v1 = null, .v2 = 15055 };
}

// From T_Snnn_xbc.c:19633:19653
// struct  Vp_L_C  {
//   void *v1;
//   __tsi64 v2;
//   char v3;
// };

test "Vp_L_C layout" {
    var lv: c.Vp_L_C = undefined;
    try testing.expectSize(c.Vp_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_C C calls" {
    try testing.expectEqual(c.ret_Vp_L_C(), .{ .v1 = null, .v2 = 28354, .v3 = 25 });
    try testing.expectOk(c.assert_ret_Vp_L_C());
    try testing.expectOk(c.send_Vp_L_C());
    try testing.expectOk(c.assert_Vp_L_C(.{ .v1 = null, .v2 = 28354, .v3 = 25 }));
}
pub export fn zig_assert_Vp_L_C(lv: c.Vp_L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28354) err = 2;
    if (lv.v3 != 25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_C() c.Vp_L_C {
    return .{ .v1 = null, .v2 = 28354, .v3 = 25 };
}

// From T_Snnn_xbc.c:19658:19678
// struct  Vp_L_D  {
//   void *v1;
//   __tsi64 v2;
//   double v3;
// };

test "Vp_L_D layout" {
    var lv: c.Vp_L_D = undefined;
    try testing.expectSize(c.Vp_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_D C calls" {
    try testing.expectEqual(c.ret_Vp_L_D(), .{ .v1 = null, .v2 = 32669, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Vp_L_D());
    try testing.expectOk(c.send_Vp_L_D());
    try testing.expectOk(c.assert_Vp_L_D(.{ .v1 = null, .v2 = 32669, .v3 = 0.875 }));
}
pub export fn zig_assert_Vp_L_D(lv: c.Vp_L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 32669) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_D() c.Vp_L_D {
    return .{ .v1 = null, .v2 = 32669, .v3 = 0.875 };
}

// From T_Snnn_xbc.c:19683:19703
// struct  Vp_L_F  {
//   void *v1;
//   __tsi64 v2;
//   float v3;
// };

test "Vp_L_F layout" {
    var lv: c.Vp_L_F = undefined;
    try testing.expectSize(c.Vp_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_F C calls" {
    try testing.expectEqual(c.ret_Vp_L_F(), .{ .v1 = null, .v2 = 19722, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Vp_L_F());
    try testing.expectOk(c.send_Vp_L_F());
    try testing.expectOk(c.assert_Vp_L_F(.{ .v1 = null, .v2 = 19722, .v3 = 0.875 }));
}
pub export fn zig_assert_Vp_L_F(lv: c.Vp_L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19722) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_F() c.Vp_L_F {
    return .{ .v1 = null, .v2 = 19722, .v3 = 0.875 };
}

// From T_Snnn_xbc.c:19708:19728
// struct  Vp_L_I  {
//   void *v1;
//   __tsi64 v2;
//   int v3;
// };

test "Vp_L_I layout" {
    var lv: c.Vp_L_I = undefined;
    try testing.expectSize(c.Vp_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_I C calls" {
    try testing.expectEqual(c.ret_Vp_L_I(), .{ .v1 = null, .v2 = 22785, .v3 = 20916 });
    try testing.expectOk(c.assert_ret_Vp_L_I());
    try testing.expectOk(c.send_Vp_L_I());
    try testing.expectOk(c.assert_Vp_L_I(.{ .v1 = null, .v2 = 22785, .v3 = 20916 }));
}
pub export fn zig_assert_Vp_L_I(lv: c.Vp_L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 22785) err = 2;
    if (lv.v3 != 20916) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_I() c.Vp_L_I {
    return .{ .v1 = null, .v2 = 22785, .v3 = 20916 };
}

// From T_Snnn_xbc.c:19733:19753
// struct  Vp_L_Ip  {
//   void *v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Vp_L_Ip layout" {
    var lv: c.Vp_L_Ip = undefined;
    try testing.expectSize(c.Vp_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_L_Ip(), .{ .v1 = null, .v2 = 28290, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_L_Ip());
    try testing.expectOk(c.send_Vp_L_Ip());
    try testing.expectOk(c.assert_Vp_L_Ip(.{ .v1 = null, .v2 = 28290, .v3 = null }));
}
pub export fn zig_assert_Vp_L_Ip(lv: c.Vp_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28290) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_Ip() c.Vp_L_Ip {
    return .{ .v1 = null, .v2 = 28290, .v3 = null };
}

// From T_Snnn_xbc.c:19758:19778
// struct  Vp_L_L  {
//   void *v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Vp_L_L layout" {
    var lv: c.Vp_L_L = undefined;
    try testing.expectSize(c.Vp_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_L C calls" {
    try testing.expectEqual(c.ret_Vp_L_L(), .{ .v1 = null, .v2 = 28192, .v3 = 6050 });
    try testing.expectOk(c.assert_ret_Vp_L_L());
    try testing.expectOk(c.send_Vp_L_L());
    try testing.expectOk(c.assert_Vp_L_L(.{ .v1 = null, .v2 = 28192, .v3 = 6050 }));
}
pub export fn zig_assert_Vp_L_L(lv: c.Vp_L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28192) err = 2;
    if (lv.v3 != 6050) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_L() c.Vp_L_L {
    return .{ .v1 = null, .v2 = 28192, .v3 = 6050 };
}

// From T_Snnn_xbc.c:19783:19803
// struct  Vp_L_S  {
//   void *v1;
//   __tsi64 v2;
//   short v3;
// };

test "Vp_L_S layout" {
    var lv: c.Vp_L_S = undefined;
    try testing.expectSize(c.Vp_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_S C calls" {
    try testing.expectEqual(c.ret_Vp_L_S(), .{ .v1 = null, .v2 = 56, .v3 = 14166 });
    try testing.expectOk(c.assert_ret_Vp_L_S());
    try testing.expectOk(c.send_Vp_L_S());
    try testing.expectOk(c.assert_Vp_L_S(.{ .v1 = null, .v2 = 56, .v3 = 14166 }));
}
pub export fn zig_assert_Vp_L_S(lv: c.Vp_L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 56) err = 2;
    if (lv.v3 != 14166) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_S() c.Vp_L_S {
    return .{ .v1 = null, .v2 = 56, .v3 = 14166 };
}

// From T_Snnn_xbc.c:19808:19828
// struct  Vp_L_Uc  {
//   void *v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Vp_L_Uc layout" {
    var lv: c.Vp_L_Uc = undefined;
    try testing.expectSize(c.Vp_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_L_Uc(), .{ .v1 = null, .v2 = 26724, .v3 = 65 });
    try testing.expectOk(c.assert_ret_Vp_L_Uc());
    try testing.expectOk(c.send_Vp_L_Uc());
    try testing.expectOk(c.assert_Vp_L_Uc(.{ .v1 = null, .v2 = 26724, .v3 = 65 }));
}
pub export fn zig_assert_Vp_L_Uc(lv: c.Vp_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 26724) err = 2;
    if (lv.v3 != 65) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_Uc() c.Vp_L_Uc {
    return .{ .v1 = null, .v2 = 26724, .v3 = 65 };
}

// From T_Snnn_xbc.c:19833:19853
// struct  Vp_L_Ui  {
//   void *v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Vp_L_Ui layout" {
    var lv: c.Vp_L_Ui = undefined;
    try testing.expectSize(c.Vp_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_L_Ui(), .{ .v1 = null, .v2 = 17745, .v3 = 25100 });
    try testing.expectOk(c.assert_ret_Vp_L_Ui());
    try testing.expectOk(c.send_Vp_L_Ui());
    try testing.expectOk(c.assert_Vp_L_Ui(.{ .v1 = null, .v2 = 17745, .v3 = 25100 }));
}
pub export fn zig_assert_Vp_L_Ui(lv: c.Vp_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 17745) err = 2;
    if (lv.v3 != 25100) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_Ui() c.Vp_L_Ui {
    return .{ .v1 = null, .v2 = 17745, .v3 = 25100 };
}

// From T_Snnn_xbc.c:19858:19878
// struct  Vp_L_Ul  {
//   void *v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Vp_L_Ul layout" {
    var lv: c.Vp_L_Ul = undefined;
    try testing.expectSize(c.Vp_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_L_Ul(), .{ .v1 = null, .v2 = 28818, .v3 = 28707 });
    try testing.expectOk(c.assert_ret_Vp_L_Ul());
    try testing.expectOk(c.send_Vp_L_Ul());
    try testing.expectOk(c.assert_Vp_L_Ul(.{ .v1 = null, .v2 = 28818, .v3 = 28707 }));
}
pub export fn zig_assert_Vp_L_Ul(lv: c.Vp_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28818) err = 2;
    if (lv.v3 != 28707) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_Ul() c.Vp_L_Ul {
    return .{ .v1 = null, .v2 = 28818, .v3 = 28707 };
}

// From T_Snnn_xbc.c:19883:19903
// struct  Vp_L_Us  {
//   void *v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Vp_L_Us layout" {
    var lv: c.Vp_L_Us = undefined;
    try testing.expectSize(c.Vp_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Us C calls" {
    try testing.expectEqual(c.ret_Vp_L_Us(), .{ .v1 = null, .v2 = 23192, .v3 = 1547 });
    try testing.expectOk(c.assert_ret_Vp_L_Us());
    try testing.expectOk(c.send_Vp_L_Us());
    try testing.expectOk(c.assert_Vp_L_Us(.{ .v1 = null, .v2 = 23192, .v3 = 1547 }));
}
pub export fn zig_assert_Vp_L_Us(lv: c.Vp_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 23192) err = 2;
    if (lv.v3 != 1547) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_Us() c.Vp_L_Us {
    return .{ .v1 = null, .v2 = 23192, .v3 = 1547 };
}

// From T_Snnn_xbc.c:19908:19928
// struct  Vp_L_Vp  {
//   void *v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Vp_L_Vp layout" {
    var lv: c.Vp_L_Vp = undefined;
    try testing.expectSize(c.Vp_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_L_Vp(), .{ .v1 = null, .v2 = 2020, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_L_Vp());
    try testing.expectOk(c.send_Vp_L_Vp());
    try testing.expectOk(c.assert_Vp_L_Vp(.{ .v1 = null, .v2 = 2020, .v3 = null }));
}
pub export fn zig_assert_Vp_L_Vp(lv: c.Vp_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 2020) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_Vp() c.Vp_L_Vp {
    return .{ .v1 = null, .v2 = 2020, .v3 = null };
}

// From T_Snnn_xbc.c:19933:19951
// struct  Vp_S  {
//   void *v1;
//   short v2;
// };

test "Vp_S layout" {
    var lv: c.Vp_S = undefined;
    try testing.expectSize(c.Vp_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_S C calls" {
    try testing.expectEqual(c.ret_Vp_S(), .{ .v1 = null, .v2 = 3165 });
    try testing.expectOk(c.assert_ret_Vp_S());
    try testing.expectOk(c.send_Vp_S());
    try testing.expectOk(c.assert_Vp_S(.{ .v1 = null, .v2 = 3165 }));
}
pub export fn zig_assert_Vp_S(lv: c.Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 3165) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S() c.Vp_S {
    return .{ .v1 = null, .v2 = 3165 };
}

// From T_Snnn_xbc.c:20680:20700
// struct  Vp_S_C  {
//   void *v1;
//   short v2;
//   char v3;
// };

test "Vp_S_C layout" {
    var lv: c.Vp_S_C = undefined;
    try testing.expectSize(c.Vp_S_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_S_C C calls" {
    try testing.expectEqual(c.ret_Vp_S_C(), .{ .v1 = null, .v2 = 20726, .v3 = 47 });
    try testing.expectOk(c.assert_ret_Vp_S_C());
    try testing.expectOk(c.send_Vp_S_C());
    try testing.expectOk(c.assert_Vp_S_C(.{ .v1 = null, .v2 = 20726, .v3 = 47 }));
}
pub export fn zig_assert_Vp_S_C(lv: c.Vp_S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20726) err = 2;
    if (lv.v3 != 47) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_C() c.Vp_S_C {
    return .{ .v1 = null, .v2 = 20726, .v3 = 47 };
}

// From T_Snnn_xbc.c:20705:20725
// struct  Vp_S_D  {
//   void *v1;
//   short v2;
//   double v3;
// };

test "Vp_S_D layout" {
    var lv: c.Vp_S_D = undefined;
    try testing.expectSize(c.Vp_S_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_S_D C calls" {
    try testing.expectEqual(c.ret_Vp_S_D(), .{ .v1 = null, .v2 = 11541, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Vp_S_D());
    try testing.expectOk(c.send_Vp_S_D());
    try testing.expectOk(c.assert_Vp_S_D(.{ .v1 = null, .v2 = 11541, .v3 = -0.25 }));
}
pub export fn zig_assert_Vp_S_D(lv: c.Vp_S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 11541) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_D() c.Vp_S_D {
    return .{ .v1 = null, .v2 = 11541, .v3 = -0.25 };
}

// From T_Snnn_xbc.c:20730:20750
// struct  Vp_S_F  {
//   void *v1;
//   short v2;
//   float v3;
// };

test "Vp_S_F layout" {
    var lv: c.Vp_S_F = undefined;
    try testing.expectSize(c.Vp_S_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_S_F C calls" {
    try testing.expectEqual(c.ret_Vp_S_F(), .{ .v1 = null, .v2 = 29716, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Vp_S_F());
    try testing.expectOk(c.send_Vp_S_F());
    try testing.expectOk(c.assert_Vp_S_F(.{ .v1 = null, .v2 = 29716, .v3 = 0.5 }));
}
pub export fn zig_assert_Vp_S_F(lv: c.Vp_S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 29716) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_F() c.Vp_S_F {
    return .{ .v1 = null, .v2 = 29716, .v3 = 0.5 };
}

// From T_Snnn_xbc.c:20755:20775
// struct  Vp_S_I  {
//   void *v1;
//   short v2;
//   int v3;
// };

test "Vp_S_I layout" {
    var lv: c.Vp_S_I = undefined;
    try testing.expectSize(c.Vp_S_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_S_I C calls" {
    try testing.expectEqual(c.ret_Vp_S_I(), .{ .v1 = null, .v2 = 11380, .v3 = 937 });
    try testing.expectOk(c.assert_ret_Vp_S_I());
    try testing.expectOk(c.send_Vp_S_I());
    try testing.expectOk(c.assert_Vp_S_I(.{ .v1 = null, .v2 = 11380, .v3 = 937 }));
}
pub export fn zig_assert_Vp_S_I(lv: c.Vp_S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 11380) err = 2;
    if (lv.v3 != 937) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_I() c.Vp_S_I {
    return .{ .v1 = null, .v2 = 11380, .v3 = 937 };
}

// From T_Snnn_xbc.c:20780:20800
// struct  Vp_S_Ip  {
//   void *v1;
//   short v2;
//   int *v3;
// };

test "Vp_S_Ip layout" {
    var lv: c.Vp_S_Ip = undefined;
    try testing.expectSize(c.Vp_S_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_S_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_S_Ip(), .{ .v1 = null, .v2 = 7055, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_S_Ip());
    try testing.expectOk(c.send_Vp_S_Ip());
    try testing.expectOk(c.assert_Vp_S_Ip(.{ .v1 = null, .v2 = 7055, .v3 = null }));
}
pub export fn zig_assert_Vp_S_Ip(lv: c.Vp_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7055) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_Ip() c.Vp_S_Ip {
    return .{ .v1 = null, .v2 = 7055, .v3 = null };
}

// From T_Snnn_xbc.c:20805:20825
// struct  Vp_S_L  {
//   void *v1;
//   short v2;
//   __tsi64 v3;
// };

test "Vp_S_L layout" {
    var lv: c.Vp_S_L = undefined;
    try testing.expectSize(c.Vp_S_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_S_L C calls" {
    try testing.expectEqual(c.ret_Vp_S_L(), .{ .v1 = null, .v2 = 22604, .v3 = 30928 });
    try testing.expectOk(c.assert_ret_Vp_S_L());
    try testing.expectOk(c.send_Vp_S_L());
    try testing.expectOk(c.assert_Vp_S_L(.{ .v1 = null, .v2 = 22604, .v3 = 30928 }));
}
pub export fn zig_assert_Vp_S_L(lv: c.Vp_S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 22604) err = 2;
    if (lv.v3 != 30928) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_L() c.Vp_S_L {
    return .{ .v1 = null, .v2 = 22604, .v3 = 30928 };
}

// From T_Snnn_xbc.c:20830:20850
// struct  Vp_S_S  {
//   void *v1;
//   short v2;
//   short v3;
// };

test "Vp_S_S layout" {
    var lv: c.Vp_S_S = undefined;
    try testing.expectSize(c.Vp_S_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_S_S C calls" {
    try testing.expectEqual(c.ret_Vp_S_S(), .{ .v1 = null, .v2 = 7792, .v3 = 12301 });
    try testing.expectOk(c.assert_ret_Vp_S_S());
    try testing.expectOk(c.send_Vp_S_S());
    try testing.expectOk(c.assert_Vp_S_S(.{ .v1 = null, .v2 = 7792, .v3 = 12301 }));
}
pub export fn zig_assert_Vp_S_S(lv: c.Vp_S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7792) err = 2;
    if (lv.v3 != 12301) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_S() c.Vp_S_S {
    return .{ .v1 = null, .v2 = 7792, .v3 = 12301 };
}

// From T_Snnn_xbc.c:20855:20875
// struct  Vp_S_Uc  {
//   void *v1;
//   short v2;
//   unsigned char v3;
// };

test "Vp_S_Uc layout" {
    var lv: c.Vp_S_Uc = undefined;
    try testing.expectSize(c.Vp_S_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_S_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_S_Uc(), .{ .v1 = null, .v2 = 20598, .v3 = 41 });
    try testing.expectOk(c.assert_ret_Vp_S_Uc());
    try testing.expectOk(c.send_Vp_S_Uc());
    try testing.expectOk(c.assert_Vp_S_Uc(.{ .v1 = null, .v2 = 20598, .v3 = 41 }));
}
pub export fn zig_assert_Vp_S_Uc(lv: c.Vp_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20598) err = 2;
    if (lv.v3 != 41) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_Uc() c.Vp_S_Uc {
    return .{ .v1 = null, .v2 = 20598, .v3 = 41 };
}

// From T_Snnn_xbc.c:20880:20900
// struct  Vp_S_Ui  {
//   void *v1;
//   short v2;
//   unsigned int v3;
// };

test "Vp_S_Ui layout" {
    var lv: c.Vp_S_Ui = undefined;
    try testing.expectSize(c.Vp_S_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_S_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_S_Ui(), .{ .v1 = null, .v2 = 10315, .v3 = 28050 });
    try testing.expectOk(c.assert_ret_Vp_S_Ui());
    try testing.expectOk(c.send_Vp_S_Ui());
    try testing.expectOk(c.assert_Vp_S_Ui(.{ .v1 = null, .v2 = 10315, .v3 = 28050 }));
}
pub export fn zig_assert_Vp_S_Ui(lv: c.Vp_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 10315) err = 2;
    if (lv.v3 != 28050) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_Ui() c.Vp_S_Ui {
    return .{ .v1 = null, .v2 = 10315, .v3 = 28050 };
}

// From T_Snnn_xbc.c:20905:20925
// struct  Vp_S_Ul  {
//   void *v1;
//   short v2;
//   __tsu64 v3;
// };

test "Vp_S_Ul layout" {
    var lv: c.Vp_S_Ul = undefined;
    try testing.expectSize(c.Vp_S_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_S_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_S_Ul(), .{ .v1 = null, .v2 = 27563, .v3 = 25487 });
    try testing.expectOk(c.assert_ret_Vp_S_Ul());
    try testing.expectOk(c.send_Vp_S_Ul());
    try testing.expectOk(c.assert_Vp_S_Ul(.{ .v1 = null, .v2 = 27563, .v3 = 25487 }));
}
pub export fn zig_assert_Vp_S_Ul(lv: c.Vp_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27563) err = 2;
    if (lv.v3 != 25487) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_Ul() c.Vp_S_Ul {
    return .{ .v1 = null, .v2 = 27563, .v3 = 25487 };
}

// From T_Snnn_xbc.c:20930:20950
// struct  Vp_S_Us  {
//   void *v1;
//   short v2;
//   unsigned short v3;
// };

test "Vp_S_Us layout" {
    var lv: c.Vp_S_Us = undefined;
    try testing.expectSize(c.Vp_S_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_S_Us C calls" {
    try testing.expectEqual(c.ret_Vp_S_Us(), .{ .v1 = null, .v2 = 25333, .v3 = 3161 });
    try testing.expectOk(c.assert_ret_Vp_S_Us());
    try testing.expectOk(c.send_Vp_S_Us());
    try testing.expectOk(c.assert_Vp_S_Us(.{ .v1 = null, .v2 = 25333, .v3 = 3161 }));
}
pub export fn zig_assert_Vp_S_Us(lv: c.Vp_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 25333) err = 2;
    if (lv.v3 != 3161) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_Us() c.Vp_S_Us {
    return .{ .v1 = null, .v2 = 25333, .v3 = 3161 };
}

// From T_Snnn_xbc.c:20955:20975
// struct  Vp_S_Vp  {
//   void *v1;
//   short v2;
//   void *v3;
// };

test "Vp_S_Vp layout" {
    var lv: c.Vp_S_Vp = undefined;
    try testing.expectSize(c.Vp_S_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_S_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_S_Vp(), .{ .v1 = null, .v2 = 19397, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_S_Vp());
    try testing.expectOk(c.send_Vp_S_Vp());
    try testing.expectOk(c.assert_Vp_S_Vp(.{ .v1 = null, .v2 = 19397, .v3 = null }));
}
pub export fn zig_assert_Vp_S_Vp(lv: c.Vp_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19397) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_Vp() c.Vp_S_Vp {
    return .{ .v1 = null, .v2 = 19397, .v3 = null };
}

// From T_Snnn_xbc.c:20980:20998
// struct  Vp_Uc  {
//   void *v1;
//   unsigned char v2;
// };

test "Vp_Uc layout" {
    var lv: c.Vp_Uc = undefined;
    try testing.expectSize(c.Vp_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_Uc(), .{ .v1 = null, .v2 = 45 });
    try testing.expectOk(c.assert_ret_Vp_Uc());
    try testing.expectOk(c.send_Vp_Uc());
    try testing.expectOk(c.assert_Vp_Uc(.{ .v1 = null, .v2 = 45 }));
}
pub export fn zig_assert_Vp_Uc(lv: c.Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 45) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc() c.Vp_Uc {
    return .{ .v1 = null, .v2 = 45 };
}

// From T_Snnn_xbc.c:21727:21747
// struct  Vp_Uc_C  {
//   void *v1;
//   unsigned char v2;
//   char v3;
// };

test "Vp_Uc_C layout" {
    var lv: c.Vp_Uc_C = undefined;
    try testing.expectSize(c.Vp_Uc_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Vp_Uc_C C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_C(), .{ .v1 = null, .v2 = 20, .v3 = 19 });
    try testing.expectOk(c.assert_ret_Vp_Uc_C());
    try testing.expectOk(c.send_Vp_Uc_C());
    try testing.expectOk(c.assert_Vp_Uc_C(.{ .v1 = null, .v2 = 20, .v3 = 19 }));
}
pub export fn zig_assert_Vp_Uc_C(lv: c.Vp_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20) err = 2;
    if (lv.v3 != 19) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_C() c.Vp_Uc_C {
    return .{ .v1 = null, .v2 = 20, .v3 = 19 };
}

// From T_Snnn_xbc.c:21752:21772
// struct  Vp_Uc_D  {
//   void *v1;
//   unsigned char v2;
//   double v3;
// };

test "Vp_Uc_D layout" {
    var lv: c.Vp_Uc_D = undefined;
    try testing.expectSize(c.Vp_Uc_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Uc_D C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_D(), .{ .v1 = null, .v2 = 50, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Vp_Uc_D());
    try testing.expectOk(c.send_Vp_Uc_D());
    try testing.expectOk(c.assert_Vp_Uc_D(.{ .v1 = null, .v2 = 50, .v3 = 0.5 }));
}
pub export fn zig_assert_Vp_Uc_D(lv: c.Vp_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 50) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_D() c.Vp_Uc_D {
    return .{ .v1 = null, .v2 = 50, .v3 = 0.5 };
}

// From T_Snnn_xbc.c:21777:21797
// struct  Vp_Uc_F  {
//   void *v1;
//   unsigned char v2;
//   float v3;
// };

test "Vp_Uc_F layout" {
    var lv: c.Vp_Uc_F = undefined;
    try testing.expectSize(c.Vp_Uc_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Uc_F C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_F(), .{ .v1 = null, .v2 = 123, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Vp_Uc_F());
    try testing.expectOk(c.send_Vp_Uc_F());
    try testing.expectOk(c.assert_Vp_Uc_F(.{ .v1 = null, .v2 = 123, .v3 = 0.5 }));
}
pub export fn zig_assert_Vp_Uc_F(lv: c.Vp_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 123) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_F() c.Vp_Uc_F {
    return .{ .v1 = null, .v2 = 123, .v3 = 0.5 };
}

// From T_Snnn_xbc.c:21802:21822
// struct  Vp_Uc_I  {
//   void *v1;
//   unsigned char v2;
//   int v3;
// };

test "Vp_Uc_I layout" {
    var lv: c.Vp_Uc_I = undefined;
    try testing.expectSize(c.Vp_Uc_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Uc_I C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_I(), .{ .v1 = null, .v2 = 114, .v3 = 26429 });
    try testing.expectOk(c.assert_ret_Vp_Uc_I());
    try testing.expectOk(c.send_Vp_Uc_I());
    try testing.expectOk(c.assert_Vp_Uc_I(.{ .v1 = null, .v2 = 114, .v3 = 26429 }));
}
pub export fn zig_assert_Vp_Uc_I(lv: c.Vp_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 114) err = 2;
    if (lv.v3 != 26429) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_I() c.Vp_Uc_I {
    return .{ .v1 = null, .v2 = 114, .v3 = 26429 };
}

// From T_Snnn_xbc.c:21827:21847
// struct  Vp_Uc_Ip  {
//   void *v1;
//   unsigned char v2;
//   int *v3;
// };

test "Vp_Uc_Ip layout" {
    var lv: c.Vp_Uc_Ip = undefined;
    try testing.expectSize(c.Vp_Uc_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Uc_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_Ip(), .{ .v1 = null, .v2 = 27, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Uc_Ip());
    try testing.expectOk(c.send_Vp_Uc_Ip());
    try testing.expectOk(c.assert_Vp_Uc_Ip(.{ .v1 = null, .v2 = 27, .v3 = null }));
}
pub export fn zig_assert_Vp_Uc_Ip(lv: c.Vp_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_Ip() c.Vp_Uc_Ip {
    return .{ .v1 = null, .v2 = 27, .v3 = null };
}

// From T_Snnn_xbc.c:21852:21872
// struct  Vp_Uc_L  {
//   void *v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Vp_Uc_L layout" {
    var lv: c.Vp_Uc_L = undefined;
    try testing.expectSize(c.Vp_Uc_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Uc_L C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_L(), .{ .v1 = null, .v2 = 122, .v3 = 7583 });
    try testing.expectOk(c.assert_ret_Vp_Uc_L());
    try testing.expectOk(c.send_Vp_Uc_L());
    try testing.expectOk(c.assert_Vp_Uc_L(.{ .v1 = null, .v2 = 122, .v3 = 7583 }));
}
pub export fn zig_assert_Vp_Uc_L(lv: c.Vp_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 122) err = 2;
    if (lv.v3 != 7583) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_L() c.Vp_Uc_L {
    return .{ .v1 = null, .v2 = 122, .v3 = 7583 };
}

// From T_Snnn_xbc.c:21877:21897
// struct  Vp_Uc_S  {
//   void *v1;
//   unsigned char v2;
//   short v3;
// };

test "Vp_Uc_S layout" {
    var lv: c.Vp_Uc_S = undefined;
    try testing.expectSize(c.Vp_Uc_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Uc_S C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_S(), .{ .v1 = null, .v2 = 14, .v3 = 22906 });
    try testing.expectOk(c.assert_ret_Vp_Uc_S());
    try testing.expectOk(c.send_Vp_Uc_S());
    try testing.expectOk(c.assert_Vp_Uc_S(.{ .v1 = null, .v2 = 14, .v3 = 22906 }));
}
pub export fn zig_assert_Vp_Uc_S(lv: c.Vp_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 14) err = 2;
    if (lv.v3 != 22906) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_S() c.Vp_Uc_S {
    return .{ .v1 = null, .v2 = 14, .v3 = 22906 };
}

// From T_Snnn_xbc.c:21902:21922
// struct  Vp_Uc_Uc  {
//   void *v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Vp_Uc_Uc layout" {
    var lv: c.Vp_Uc_Uc = undefined;
    try testing.expectSize(c.Vp_Uc_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Vp_Uc_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_Uc(), .{ .v1 = null, .v2 = 61, .v3 = 71 });
    try testing.expectOk(c.assert_ret_Vp_Uc_Uc());
    try testing.expectOk(c.send_Vp_Uc_Uc());
    try testing.expectOk(c.assert_Vp_Uc_Uc(.{ .v1 = null, .v2 = 61, .v3 = 71 }));
}
pub export fn zig_assert_Vp_Uc_Uc(lv: c.Vp_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 61) err = 2;
    if (lv.v3 != 71) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_Uc() c.Vp_Uc_Uc {
    return .{ .v1 = null, .v2 = 61, .v3 = 71 };
}

// From T_Snnn_xbc.c:21927:21947
// struct  Vp_Uc_Ui  {
//   void *v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Vp_Uc_Ui layout" {
    var lv: c.Vp_Uc_Ui = undefined;
    try testing.expectSize(c.Vp_Uc_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Uc_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_Ui(), .{ .v1 = null, .v2 = 68, .v3 = 31148 });
    try testing.expectOk(c.assert_ret_Vp_Uc_Ui());
    try testing.expectOk(c.send_Vp_Uc_Ui());
    try testing.expectOk(c.assert_Vp_Uc_Ui(.{ .v1 = null, .v2 = 68, .v3 = 31148 }));
}
pub export fn zig_assert_Vp_Uc_Ui(lv: c.Vp_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 68) err = 2;
    if (lv.v3 != 31148) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_Ui() c.Vp_Uc_Ui {
    return .{ .v1 = null, .v2 = 68, .v3 = 31148 };
}

// From T_Snnn_xbc.c:21952:21972
// struct  Vp_Uc_Ul  {
//   void *v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Vp_Uc_Ul layout" {
    var lv: c.Vp_Uc_Ul = undefined;
    try testing.expectSize(c.Vp_Uc_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Uc_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_Ul(), .{ .v1 = null, .v2 = 13, .v3 = 6117 });
    try testing.expectOk(c.assert_ret_Vp_Uc_Ul());
    try testing.expectOk(c.send_Vp_Uc_Ul());
    try testing.expectOk(c.assert_Vp_Uc_Ul(.{ .v1 = null, .v2 = 13, .v3 = 6117 }));
}
pub export fn zig_assert_Vp_Uc_Ul(lv: c.Vp_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 13) err = 2;
    if (lv.v3 != 6117) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_Ul() c.Vp_Uc_Ul {
    return .{ .v1 = null, .v2 = 13, .v3 = 6117 };
}

// From T_Snnn_xbc.c:21977:21997
// struct  Vp_Uc_Us  {
//   void *v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Vp_Uc_Us layout" {
    var lv: c.Vp_Uc_Us = undefined;
    try testing.expectSize(c.Vp_Uc_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Uc_Us C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_Us(), .{ .v1 = null, .v2 = 38, .v3 = 12337 });
    try testing.expectOk(c.assert_ret_Vp_Uc_Us());
    try testing.expectOk(c.send_Vp_Uc_Us());
    try testing.expectOk(c.assert_Vp_Uc_Us(.{ .v1 = null, .v2 = 38, .v3 = 12337 }));
}
pub export fn zig_assert_Vp_Uc_Us(lv: c.Vp_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 38) err = 2;
    if (lv.v3 != 12337) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_Us() c.Vp_Uc_Us {
    return .{ .v1 = null, .v2 = 38, .v3 = 12337 };
}

// From T_Snnn_xbc.c:22002:22022
// struct  Vp_Uc_Vp  {
//   void *v1;
//   unsigned char v2;
//   void *v3;
// };

test "Vp_Uc_Vp layout" {
    var lv: c.Vp_Uc_Vp = undefined;
    try testing.expectSize(c.Vp_Uc_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Uc_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_Vp(), .{ .v1 = null, .v2 = 39, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Uc_Vp());
    try testing.expectOk(c.send_Vp_Uc_Vp());
    try testing.expectOk(c.assert_Vp_Uc_Vp(.{ .v1 = null, .v2 = 39, .v3 = null }));
}
pub export fn zig_assert_Vp_Uc_Vp(lv: c.Vp_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 39) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_Vp() c.Vp_Uc_Vp {
    return .{ .v1 = null, .v2 = 39, .v3 = null };
}

// From T_Snnn_xbc.c:22027:22045
// struct  Vp_Ui  {
//   void *v1;
//   unsigned int v2;
// };

test "Vp_Ui layout" {
    var lv: c.Vp_Ui = undefined;
    try testing.expectSize(c.Vp_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_Ui(), .{ .v1 = null, .v2 = 819 });
    try testing.expectOk(c.assert_ret_Vp_Ui());
    try testing.expectOk(c.send_Vp_Ui());
    try testing.expectOk(c.assert_Vp_Ui(.{ .v1 = null, .v2 = 819 }));
}
pub export fn zig_assert_Vp_Ui(lv: c.Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 819) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui() c.Vp_Ui {
    return .{ .v1 = null, .v2 = 819 };
}

// From T_Snnn_xbc.c:22774:22794
// struct  Vp_Ui_C  {
//   void *v1;
//   unsigned int v2;
//   char v3;
// };

test "Vp_Ui_C layout" {
    var lv: c.Vp_Ui_C = undefined;
    try testing.expectSize(c.Vp_Ui_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_C C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_C(), .{ .v1 = null, .v2 = 14926, .v3 = 98 });
    try testing.expectOk(c.assert_ret_Vp_Ui_C());
    try testing.expectOk(c.send_Vp_Ui_C());
    try testing.expectOk(c.assert_Vp_Ui_C(.{ .v1 = null, .v2 = 14926, .v3 = 98 }));
}
pub export fn zig_assert_Vp_Ui_C(lv: c.Vp_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 14926) err = 2;
    if (lv.v3 != 98) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_C() c.Vp_Ui_C {
    return .{ .v1 = null, .v2 = 14926, .v3 = 98 };
}

// From T_Snnn_xbc.c:22799:22819
// struct  Vp_Ui_D  {
//   void *v1;
//   unsigned int v2;
//   double v3;
// };

test "Vp_Ui_D layout" {
    var lv: c.Vp_Ui_D = undefined;
    try testing.expectSize(c.Vp_Ui_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ui_D C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_D(), .{ .v1 = null, .v2 = 13042, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Vp_Ui_D());
    try testing.expectOk(c.send_Vp_Ui_D());
    try testing.expectOk(c.assert_Vp_Ui_D(.{ .v1 = null, .v2 = 13042, .v3 = -2.125 }));
}
pub export fn zig_assert_Vp_Ui_D(lv: c.Vp_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 13042) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_D() c.Vp_Ui_D {
    return .{ .v1 = null, .v2 = 13042, .v3 = -2.125 };
}

// From T_Snnn_xbc.c:22824:22844
// struct  Vp_Ui_F  {
//   void *v1;
//   unsigned int v2;
//   float v3;
// };

test "Vp_Ui_F layout" {
    var lv: c.Vp_Ui_F = undefined;
    try testing.expectSize(c.Vp_Ui_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_F C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_F(), .{ .v1 = null, .v2 = 6209, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Vp_Ui_F());
    try testing.expectOk(c.send_Vp_Ui_F());
    try testing.expectOk(c.assert_Vp_Ui_F(.{ .v1 = null, .v2 = 6209, .v3 = 0.5 }));
}
pub export fn zig_assert_Vp_Ui_F(lv: c.Vp_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 6209) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_F() c.Vp_Ui_F {
    return .{ .v1 = null, .v2 = 6209, .v3 = 0.5 };
}

// From T_Snnn_xbc.c:22849:22869
// struct  Vp_Ui_I  {
//   void *v1;
//   unsigned int v2;
//   int v3;
// };

test "Vp_Ui_I layout" {
    var lv: c.Vp_Ui_I = undefined;
    try testing.expectSize(c.Vp_Ui_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_I C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_I(), .{ .v1 = null, .v2 = 15474, .v3 = 15360 });
    try testing.expectOk(c.assert_ret_Vp_Ui_I());
    try testing.expectOk(c.send_Vp_Ui_I());
    try testing.expectOk(c.assert_Vp_Ui_I(.{ .v1 = null, .v2 = 15474, .v3 = 15360 }));
}
pub export fn zig_assert_Vp_Ui_I(lv: c.Vp_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15474) err = 2;
    if (lv.v3 != 15360) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_I() c.Vp_Ui_I {
    return .{ .v1 = null, .v2 = 15474, .v3 = 15360 };
}

// From T_Snnn_xbc.c:22874:22894
// struct  Vp_Ui_Ip  {
//   void *v1;
//   unsigned int v2;
//   int *v3;
// };

test "Vp_Ui_Ip layout" {
    var lv: c.Vp_Ui_Ip = undefined;
    try testing.expectSize(c.Vp_Ui_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ui_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_Ip(), .{ .v1 = null, .v2 = 14297, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Ui_Ip());
    try testing.expectOk(c.send_Vp_Ui_Ip());
    try testing.expectOk(c.assert_Vp_Ui_Ip(.{ .v1 = null, .v2 = 14297, .v3 = null }));
}
pub export fn zig_assert_Vp_Ui_Ip(lv: c.Vp_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 14297) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_Ip() c.Vp_Ui_Ip {
    return .{ .v1 = null, .v2 = 14297, .v3 = null };
}

// From T_Snnn_xbc.c:22899:22919
// struct  Vp_Ui_L  {
//   void *v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Vp_Ui_L layout" {
    var lv: c.Vp_Ui_L = undefined;
    try testing.expectSize(c.Vp_Ui_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ui_L C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_L(), .{ .v1 = null, .v2 = 31410, .v3 = 14978 });
    try testing.expectOk(c.assert_ret_Vp_Ui_L());
    try testing.expectOk(c.send_Vp_Ui_L());
    try testing.expectOk(c.assert_Vp_Ui_L(.{ .v1 = null, .v2 = 31410, .v3 = 14978 }));
}
pub export fn zig_assert_Vp_Ui_L(lv: c.Vp_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 31410) err = 2;
    if (lv.v3 != 14978) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_L() c.Vp_Ui_L {
    return .{ .v1 = null, .v2 = 31410, .v3 = 14978 };
}

// From T_Snnn_xbc.c:22924:22944
// struct  Vp_Ui_S  {
//   void *v1;
//   unsigned int v2;
//   short v3;
// };

test "Vp_Ui_S layout" {
    var lv: c.Vp_Ui_S = undefined;
    try testing.expectSize(c.Vp_Ui_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_S C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_S(), .{ .v1 = null, .v2 = 1025, .v3 = 14170 });
    try testing.expectOk(c.assert_ret_Vp_Ui_S());
    try testing.expectOk(c.send_Vp_Ui_S());
    try testing.expectOk(c.assert_Vp_Ui_S(.{ .v1 = null, .v2 = 1025, .v3 = 14170 }));
}
pub export fn zig_assert_Vp_Ui_S(lv: c.Vp_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1025) err = 2;
    if (lv.v3 != 14170) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_S() c.Vp_Ui_S {
    return .{ .v1 = null, .v2 = 1025, .v3 = 14170 };
}

// From T_Snnn_xbc.c:22949:22969
// struct  Vp_Ui_Uc  {
//   void *v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Vp_Ui_Uc layout" {
    var lv: c.Vp_Ui_Uc = undefined;
    try testing.expectSize(c.Vp_Ui_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_Uc(), .{ .v1 = null, .v2 = 23983, .v3 = 88 });
    try testing.expectOk(c.assert_ret_Vp_Ui_Uc());
    try testing.expectOk(c.send_Vp_Ui_Uc());
    try testing.expectOk(c.assert_Vp_Ui_Uc(.{ .v1 = null, .v2 = 23983, .v3 = 88 }));
}
pub export fn zig_assert_Vp_Ui_Uc(lv: c.Vp_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 23983) err = 2;
    if (lv.v3 != 88) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_Uc() c.Vp_Ui_Uc {
    return .{ .v1 = null, .v2 = 23983, .v3 = 88 };
}

// From T_Snnn_xbc.c:22974:22994
// struct  Vp_Ui_Ui  {
//   void *v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Vp_Ui_Ui layout" {
    var lv: c.Vp_Ui_Ui = undefined;
    try testing.expectSize(c.Vp_Ui_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_Ui(), .{ .v1 = null, .v2 = 99, .v3 = 30755 });
    try testing.expectOk(c.assert_ret_Vp_Ui_Ui());
    try testing.expectOk(c.send_Vp_Ui_Ui());
    try testing.expectOk(c.assert_Vp_Ui_Ui(.{ .v1 = null, .v2 = 99, .v3 = 30755 }));
}
pub export fn zig_assert_Vp_Ui_Ui(lv: c.Vp_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 99) err = 2;
    if (lv.v3 != 30755) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_Ui() c.Vp_Ui_Ui {
    return .{ .v1 = null, .v2 = 99, .v3 = 30755 };
}

// From T_Snnn_xbc.c:22999:23019
// struct  Vp_Ui_Ul  {
//   void *v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Vp_Ui_Ul layout" {
    var lv: c.Vp_Ui_Ul = undefined;
    try testing.expectSize(c.Vp_Ui_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ui_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_Ul(), .{ .v1 = null, .v2 = 27055, .v3 = 7728 });
    try testing.expectOk(c.assert_ret_Vp_Ui_Ul());
    try testing.expectOk(c.send_Vp_Ui_Ul());
    try testing.expectOk(c.assert_Vp_Ui_Ul(.{ .v1 = null, .v2 = 27055, .v3 = 7728 }));
}
pub export fn zig_assert_Vp_Ui_Ul(lv: c.Vp_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27055) err = 2;
    if (lv.v3 != 7728) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_Ul() c.Vp_Ui_Ul {
    return .{ .v1 = null, .v2 = 27055, .v3 = 7728 };
}

// From T_Snnn_xbc.c:23024:23044
// struct  Vp_Ui_Us  {
//   void *v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Vp_Ui_Us layout" {
    var lv: c.Vp_Ui_Us = undefined;
    try testing.expectSize(c.Vp_Ui_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_Us C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_Us(), .{ .v1 = null, .v2 = 21796, .v3 = 9331 });
    try testing.expectOk(c.assert_ret_Vp_Ui_Us());
    try testing.expectOk(c.send_Vp_Ui_Us());
    try testing.expectOk(c.assert_Vp_Ui_Us(.{ .v1 = null, .v2 = 21796, .v3 = 9331 }));
}
pub export fn zig_assert_Vp_Ui_Us(lv: c.Vp_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21796) err = 2;
    if (lv.v3 != 9331) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_Us() c.Vp_Ui_Us {
    return .{ .v1 = null, .v2 = 21796, .v3 = 9331 };
}

// From T_Snnn_xbc.c:23049:23069
// struct  Vp_Ui_Vp  {
//   void *v1;
//   unsigned int v2;
//   void *v3;
// };

test "Vp_Ui_Vp layout" {
    var lv: c.Vp_Ui_Vp = undefined;
    try testing.expectSize(c.Vp_Ui_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ui_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_Vp(), .{ .v1 = null, .v2 = 4692, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Ui_Vp());
    try testing.expectOk(c.send_Vp_Ui_Vp());
    try testing.expectOk(c.assert_Vp_Ui_Vp(.{ .v1 = null, .v2 = 4692, .v3 = null }));
}
pub export fn zig_assert_Vp_Ui_Vp(lv: c.Vp_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4692) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_Vp() c.Vp_Ui_Vp {
    return .{ .v1 = null, .v2 = 4692, .v3 = null };
}

// From T_Snnn_xbc.c:23074:23092
// struct  Vp_Ul  {
//   void *v1;
//   __tsu64 v2;
// };

test "Vp_Ul layout" {
    var lv: c.Vp_Ul = undefined;
    try testing.expectSize(c.Vp_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_Ul(), .{ .v1 = null, .v2 = 5486 });
    try testing.expectOk(c.assert_ret_Vp_Ul());
    try testing.expectOk(c.send_Vp_Ul());
    try testing.expectOk(c.assert_Vp_Ul(.{ .v1 = null, .v2 = 5486 }));
}
pub export fn zig_assert_Vp_Ul(lv: c.Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 5486) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul() c.Vp_Ul {
    return .{ .v1 = null, .v2 = 5486 };
}

// From T_Snnn_xbc.c:23821:23841
// struct  Vp_Ul_C  {
//   void *v1;
//   __tsu64 v2;
//   char v3;
// };

test "Vp_Ul_C layout" {
    var lv: c.Vp_Ul_C = undefined;
    try testing.expectSize(c.Vp_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_C C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_C(), .{ .v1 = null, .v2 = 20933, .v3 = 118 });
    try testing.expectOk(c.assert_ret_Vp_Ul_C());
    try testing.expectOk(c.send_Vp_Ul_C());
    try testing.expectOk(c.assert_Vp_Ul_C(.{ .v1 = null, .v2 = 20933, .v3 = 118 }));
}
pub export fn zig_assert_Vp_Ul_C(lv: c.Vp_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20933) err = 2;
    if (lv.v3 != 118) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_C() c.Vp_Ul_C {
    return .{ .v1 = null, .v2 = 20933, .v3 = 118 };
}

// From T_Snnn_xbc.c:23846:23866
// struct  Vp_Ul_D  {
//   void *v1;
//   __tsu64 v2;
//   double v3;
// };

test "Vp_Ul_D layout" {
    var lv: c.Vp_Ul_D = undefined;
    try testing.expectSize(c.Vp_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_D C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_D(), .{ .v1 = null, .v2 = 27275, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Vp_Ul_D());
    try testing.expectOk(c.send_Vp_Ul_D());
    try testing.expectOk(c.assert_Vp_Ul_D(.{ .v1 = null, .v2 = 27275, .v3 = 4.5 }));
}
pub export fn zig_assert_Vp_Ul_D(lv: c.Vp_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27275) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_D() c.Vp_Ul_D {
    return .{ .v1 = null, .v2 = 27275, .v3 = 4.5 };
}

// From T_Snnn_xbc.c:23871:23891
// struct  Vp_Ul_F  {
//   void *v1;
//   __tsu64 v2;
//   float v3;
// };

test "Vp_Ul_F layout" {
    var lv: c.Vp_Ul_F = undefined;
    try testing.expectSize(c.Vp_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_F C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_F(), .{ .v1 = null, .v2 = 19348, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Vp_Ul_F());
    try testing.expectOk(c.send_Vp_Ul_F());
    try testing.expectOk(c.assert_Vp_Ul_F(.{ .v1 = null, .v2 = 19348, .v3 = 4.5 }));
}
pub export fn zig_assert_Vp_Ul_F(lv: c.Vp_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19348) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_F() c.Vp_Ul_F {
    return .{ .v1 = null, .v2 = 19348, .v3 = 4.5 };
}

// From T_Snnn_xbc.c:23896:23916
// struct  Vp_Ul_I  {
//   void *v1;
//   __tsu64 v2;
//   int v3;
// };

test "Vp_Ul_I layout" {
    var lv: c.Vp_Ul_I = undefined;
    try testing.expectSize(c.Vp_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_I C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_I(), .{ .v1 = null, .v2 = 6586, .v3 = 1397 });
    try testing.expectOk(c.assert_ret_Vp_Ul_I());
    try testing.expectOk(c.send_Vp_Ul_I());
    try testing.expectOk(c.assert_Vp_Ul_I(.{ .v1 = null, .v2 = 6586, .v3 = 1397 }));
}
pub export fn zig_assert_Vp_Ul_I(lv: c.Vp_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 6586) err = 2;
    if (lv.v3 != 1397) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_I() c.Vp_Ul_I {
    return .{ .v1 = null, .v2 = 6586, .v3 = 1397 };
}

// From T_Snnn_xbc.c:23921:23941
// struct  Vp_Ul_Ip  {
//   void *v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Vp_Ul_Ip layout" {
    var lv: c.Vp_Ul_Ip = undefined;
    try testing.expectSize(c.Vp_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_Ip(), .{ .v1 = null, .v2 = 3915, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Ul_Ip());
    try testing.expectOk(c.send_Vp_Ul_Ip());
    try testing.expectOk(c.assert_Vp_Ul_Ip(.{ .v1 = null, .v2 = 3915, .v3 = null }));
}
pub export fn zig_assert_Vp_Ul_Ip(lv: c.Vp_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 3915) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_Ip() c.Vp_Ul_Ip {
    return .{ .v1 = null, .v2 = 3915, .v3 = null };
}

// From T_Snnn_xbc.c:23946:23966
// struct  Vp_Ul_L  {
//   void *v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Vp_Ul_L layout" {
    var lv: c.Vp_Ul_L = undefined;
    try testing.expectSize(c.Vp_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_L C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_L(), .{ .v1 = null, .v2 = 2122, .v3 = 2907 });
    try testing.expectOk(c.assert_ret_Vp_Ul_L());
    try testing.expectOk(c.send_Vp_Ul_L());
    try testing.expectOk(c.assert_Vp_Ul_L(.{ .v1 = null, .v2 = 2122, .v3 = 2907 }));
}
pub export fn zig_assert_Vp_Ul_L(lv: c.Vp_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 2122) err = 2;
    if (lv.v3 != 2907) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_L() c.Vp_Ul_L {
    return .{ .v1 = null, .v2 = 2122, .v3 = 2907 };
}

// From T_Snnn_xbc.c:23971:23991
// struct  Vp_Ul_S  {
//   void *v1;
//   __tsu64 v2;
//   short v3;
// };

test "Vp_Ul_S layout" {
    var lv: c.Vp_Ul_S = undefined;
    try testing.expectSize(c.Vp_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_S C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_S(), .{ .v1 = null, .v2 = 26049, .v3 = 9797 });
    try testing.expectOk(c.assert_ret_Vp_Ul_S());
    try testing.expectOk(c.send_Vp_Ul_S());
    try testing.expectOk(c.assert_Vp_Ul_S(.{ .v1 = null, .v2 = 26049, .v3 = 9797 }));
}
pub export fn zig_assert_Vp_Ul_S(lv: c.Vp_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 26049) err = 2;
    if (lv.v3 != 9797) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_S() c.Vp_Ul_S {
    return .{ .v1 = null, .v2 = 26049, .v3 = 9797 };
}

// From T_Snnn_xbc.c:23996:24016
// struct  Vp_Ul_Uc  {
//   void *v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Vp_Ul_Uc layout" {
    var lv: c.Vp_Ul_Uc = undefined;
    try testing.expectSize(c.Vp_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_Uc(), .{ .v1 = null, .v2 = 20602, .v3 = 11 });
    try testing.expectOk(c.assert_ret_Vp_Ul_Uc());
    try testing.expectOk(c.send_Vp_Ul_Uc());
    try testing.expectOk(c.assert_Vp_Ul_Uc(.{ .v1 = null, .v2 = 20602, .v3 = 11 }));
}
pub export fn zig_assert_Vp_Ul_Uc(lv: c.Vp_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20602) err = 2;
    if (lv.v3 != 11) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_Uc() c.Vp_Ul_Uc {
    return .{ .v1 = null, .v2 = 20602, .v3 = 11 };
}

// From T_Snnn_xbc.c:24021:24041
// struct  Vp_Ul_Ui  {
//   void *v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Vp_Ul_Ui layout" {
    var lv: c.Vp_Ul_Ui = undefined;
    try testing.expectSize(c.Vp_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_Ui(), .{ .v1 = null, .v2 = 4547, .v3 = 23948 });
    try testing.expectOk(c.assert_ret_Vp_Ul_Ui());
    try testing.expectOk(c.send_Vp_Ul_Ui());
    try testing.expectOk(c.assert_Vp_Ul_Ui(.{ .v1 = null, .v2 = 4547, .v3 = 23948 }));
}
pub export fn zig_assert_Vp_Ul_Ui(lv: c.Vp_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4547) err = 2;
    if (lv.v3 != 23948) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_Ui() c.Vp_Ul_Ui {
    return .{ .v1 = null, .v2 = 4547, .v3 = 23948 };
}

// From T_Snnn_xbc.c:24046:24066
// struct  Vp_Ul_Ul  {
//   void *v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Vp_Ul_Ul layout" {
    var lv: c.Vp_Ul_Ul = undefined;
    try testing.expectSize(c.Vp_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_Ul(), .{ .v1 = null, .v2 = 17343, .v3 = 2118 });
    try testing.expectOk(c.assert_ret_Vp_Ul_Ul());
    try testing.expectOk(c.send_Vp_Ul_Ul());
    try testing.expectOk(c.assert_Vp_Ul_Ul(.{ .v1 = null, .v2 = 17343, .v3 = 2118 }));
}
pub export fn zig_assert_Vp_Ul_Ul(lv: c.Vp_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 17343) err = 2;
    if (lv.v3 != 2118) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_Ul() c.Vp_Ul_Ul {
    return .{ .v1 = null, .v2 = 17343, .v3 = 2118 };
}

// From T_Snnn_xbc.c:24071:24091
// struct  Vp_Ul_Us  {
//   void *v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Vp_Ul_Us layout" {
    var lv: c.Vp_Ul_Us = undefined;
    try testing.expectSize(c.Vp_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Us C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_Us(), .{ .v1 = null, .v2 = 20439, .v3 = 3748 });
    try testing.expectOk(c.assert_ret_Vp_Ul_Us());
    try testing.expectOk(c.send_Vp_Ul_Us());
    try testing.expectOk(c.assert_Vp_Ul_Us(.{ .v1 = null, .v2 = 20439, .v3 = 3748 }));
}
pub export fn zig_assert_Vp_Ul_Us(lv: c.Vp_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20439) err = 2;
    if (lv.v3 != 3748) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_Us() c.Vp_Ul_Us {
    return .{ .v1 = null, .v2 = 20439, .v3 = 3748 };
}

// From T_Snnn_xbc.c:24096:24116
// struct  Vp_Ul_Vp  {
//   void *v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Vp_Ul_Vp layout" {
    var lv: c.Vp_Ul_Vp = undefined;
    try testing.expectSize(c.Vp_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_Vp(), .{ .v1 = null, .v2 = 29974, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Ul_Vp());
    try testing.expectOk(c.send_Vp_Ul_Vp());
    try testing.expectOk(c.assert_Vp_Ul_Vp(.{ .v1 = null, .v2 = 29974, .v3 = null }));
}
pub export fn zig_assert_Vp_Ul_Vp(lv: c.Vp_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 29974) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_Vp() c.Vp_Ul_Vp {
    return .{ .v1 = null, .v2 = 29974, .v3 = null };
}

// From T_Snnn_xbc.c:24121:24139
// struct  Vp_Us  {
//   void *v1;
//   unsigned short v2;
// };

test "Vp_Us layout" {
    var lv: c.Vp_Us = undefined;
    try testing.expectSize(c.Vp_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Us C calls" {
    try testing.expectEqual(c.ret_Vp_Us(), .{ .v1 = null, .v2 = 4604 });
    try testing.expectOk(c.assert_ret_Vp_Us());
    try testing.expectOk(c.send_Vp_Us());
    try testing.expectOk(c.assert_Vp_Us(.{ .v1 = null, .v2 = 4604 }));
}
pub export fn zig_assert_Vp_Us(lv: c.Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4604) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us() c.Vp_Us {
    return .{ .v1 = null, .v2 = 4604 };
}

// From T_Snnn_xbc.c:24868:24888
// struct  Vp_Us_C  {
//   void *v1;
//   unsigned short v2;
//   char v3;
// };

test "Vp_Us_C layout" {
    var lv: c.Vp_Us_C = undefined;
    try testing.expectSize(c.Vp_Us_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Us_C C calls" {
    try testing.expectEqual(c.ret_Vp_Us_C(), .{ .v1 = null, .v2 = 27414, .v3 = 69 });
    try testing.expectOk(c.assert_ret_Vp_Us_C());
    try testing.expectOk(c.send_Vp_Us_C());
    try testing.expectOk(c.assert_Vp_Us_C(.{ .v1 = null, .v2 = 27414, .v3 = 69 }));
}
pub export fn zig_assert_Vp_Us_C(lv: c.Vp_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27414) err = 2;
    if (lv.v3 != 69) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_C() c.Vp_Us_C {
    return .{ .v1 = null, .v2 = 27414, .v3 = 69 };
}

// From T_Snnn_xbc.c:24893:24913
// struct  Vp_Us_D  {
//   void *v1;
//   unsigned short v2;
//   double v3;
// };

test "Vp_Us_D layout" {
    var lv: c.Vp_Us_D = undefined;
    try testing.expectSize(c.Vp_Us_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Us_D C calls" {
    try testing.expectEqual(c.ret_Vp_Us_D(), .{ .v1 = null, .v2 = 1973, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Vp_Us_D());
    try testing.expectOk(c.send_Vp_Us_D());
    try testing.expectOk(c.assert_Vp_Us_D(.{ .v1 = null, .v2 = 1973, .v3 = 1.0 }));
}
pub export fn zig_assert_Vp_Us_D(lv: c.Vp_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1973) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_D() c.Vp_Us_D {
    return .{ .v1 = null, .v2 = 1973, .v3 = 1.0 };
}

// From T_Snnn_xbc.c:24918:24938
// struct  Vp_Us_F  {
//   void *v1;
//   unsigned short v2;
//   float v3;
// };

test "Vp_Us_F layout" {
    var lv: c.Vp_Us_F = undefined;
    try testing.expectSize(c.Vp_Us_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Us_F C calls" {
    try testing.expectEqual(c.ret_Vp_Us_F(), .{ .v1 = null, .v2 = 13536, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Vp_Us_F());
    try testing.expectOk(c.send_Vp_Us_F());
    try testing.expectOk(c.assert_Vp_Us_F(.{ .v1 = null, .v2 = 13536, .v3 = 4.5 }));
}
pub export fn zig_assert_Vp_Us_F(lv: c.Vp_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 13536) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_F() c.Vp_Us_F {
    return .{ .v1 = null, .v2 = 13536, .v3 = 4.5 };
}

// From T_Snnn_xbc.c:24943:24963
// struct  Vp_Us_I  {
//   void *v1;
//   unsigned short v2;
//   int v3;
// };

test "Vp_Us_I layout" {
    var lv: c.Vp_Us_I = undefined;
    try testing.expectSize(c.Vp_Us_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Us_I C calls" {
    try testing.expectEqual(c.ret_Vp_Us_I(), .{ .v1 = null, .v2 = 19941, .v3 = 20835 });
    try testing.expectOk(c.assert_ret_Vp_Us_I());
    try testing.expectOk(c.send_Vp_Us_I());
    try testing.expectOk(c.assert_Vp_Us_I(.{ .v1 = null, .v2 = 19941, .v3 = 20835 }));
}
pub export fn zig_assert_Vp_Us_I(lv: c.Vp_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19941) err = 2;
    if (lv.v3 != 20835) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_I() c.Vp_Us_I {
    return .{ .v1 = null, .v2 = 19941, .v3 = 20835 };
}

// From T_Snnn_xbc.c:24968:24988
// struct  Vp_Us_Ip  {
//   void *v1;
//   unsigned short v2;
//   int *v3;
// };

test "Vp_Us_Ip layout" {
    var lv: c.Vp_Us_Ip = undefined;
    try testing.expectSize(c.Vp_Us_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Us_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_Us_Ip(), .{ .v1 = null, .v2 = 21849, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Us_Ip());
    try testing.expectOk(c.send_Vp_Us_Ip());
    try testing.expectOk(c.assert_Vp_Us_Ip(.{ .v1 = null, .v2 = 21849, .v3 = null }));
}
pub export fn zig_assert_Vp_Us_Ip(lv: c.Vp_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21849) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_Ip() c.Vp_Us_Ip {
    return .{ .v1 = null, .v2 = 21849, .v3 = null };
}

// From T_Snnn_xbc.c:24993:25013
// struct  Vp_Us_L  {
//   void *v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Vp_Us_L layout" {
    var lv: c.Vp_Us_L = undefined;
    try testing.expectSize(c.Vp_Us_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Us_L C calls" {
    try testing.expectEqual(c.ret_Vp_Us_L(), .{ .v1 = null, .v2 = 1972, .v3 = 3231 });
    try testing.expectOk(c.assert_ret_Vp_Us_L());
    try testing.expectOk(c.send_Vp_Us_L());
    try testing.expectOk(c.assert_Vp_Us_L(.{ .v1 = null, .v2 = 1972, .v3 = 3231 }));
}
pub export fn zig_assert_Vp_Us_L(lv: c.Vp_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1972) err = 2;
    if (lv.v3 != 3231) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_L() c.Vp_Us_L {
    return .{ .v1 = null, .v2 = 1972, .v3 = 3231 };
}

// From T_Snnn_xbc.c:25018:25038
// struct  Vp_Us_S  {
//   void *v1;
//   unsigned short v2;
//   short v3;
// };

test "Vp_Us_S layout" {
    var lv: c.Vp_Us_S = undefined;
    try testing.expectSize(c.Vp_Us_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Us_S C calls" {
    try testing.expectEqual(c.ret_Vp_Us_S(), .{ .v1 = null, .v2 = 686, .v3 = 31896 });
    try testing.expectOk(c.assert_ret_Vp_Us_S());
    try testing.expectOk(c.send_Vp_Us_S());
    try testing.expectOk(c.assert_Vp_Us_S(.{ .v1 = null, .v2 = 686, .v3 = 31896 }));
}
pub export fn zig_assert_Vp_Us_S(lv: c.Vp_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 686) err = 2;
    if (lv.v3 != 31896) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_S() c.Vp_Us_S {
    return .{ .v1 = null, .v2 = 686, .v3 = 31896 };
}

// From T_Snnn_xbc.c:25043:25063
// struct  Vp_Us_Uc  {
//   void *v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Vp_Us_Uc layout" {
    var lv: c.Vp_Us_Uc = undefined;
    try testing.expectSize(c.Vp_Us_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Us_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_Us_Uc(), .{ .v1 = null, .v2 = 22668, .v3 = 101 });
    try testing.expectOk(c.assert_ret_Vp_Us_Uc());
    try testing.expectOk(c.send_Vp_Us_Uc());
    try testing.expectOk(c.assert_Vp_Us_Uc(.{ .v1 = null, .v2 = 22668, .v3 = 101 }));
}
pub export fn zig_assert_Vp_Us_Uc(lv: c.Vp_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 22668) err = 2;
    if (lv.v3 != 101) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_Uc() c.Vp_Us_Uc {
    return .{ .v1 = null, .v2 = 22668, .v3 = 101 };
}

// From T_Snnn_xbc.c:25068:25088
// struct  Vp_Us_Ui  {
//   void *v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Vp_Us_Ui layout" {
    var lv: c.Vp_Us_Ui = undefined;
    try testing.expectSize(c.Vp_Us_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Us_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_Us_Ui(), .{ .v1 = null, .v2 = 15892, .v3 = 7824 });
    try testing.expectOk(c.assert_ret_Vp_Us_Ui());
    try testing.expectOk(c.send_Vp_Us_Ui());
    try testing.expectOk(c.assert_Vp_Us_Ui(.{ .v1 = null, .v2 = 15892, .v3 = 7824 }));
}
pub export fn zig_assert_Vp_Us_Ui(lv: c.Vp_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15892) err = 2;
    if (lv.v3 != 7824) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_Ui() c.Vp_Us_Ui {
    return .{ .v1 = null, .v2 = 15892, .v3 = 7824 };
}

// From T_Snnn_xbc.c:25093:25113
// struct  Vp_Us_Ul  {
//   void *v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Vp_Us_Ul layout" {
    var lv: c.Vp_Us_Ul = undefined;
    try testing.expectSize(c.Vp_Us_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Us_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_Us_Ul(), .{ .v1 = null, .v2 = 31019, .v3 = 32184 });
    try testing.expectOk(c.assert_ret_Vp_Us_Ul());
    try testing.expectOk(c.send_Vp_Us_Ul());
    try testing.expectOk(c.assert_Vp_Us_Ul(.{ .v1 = null, .v2 = 31019, .v3 = 32184 }));
}
pub export fn zig_assert_Vp_Us_Ul(lv: c.Vp_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 31019) err = 2;
    if (lv.v3 != 32184) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_Ul() c.Vp_Us_Ul {
    return .{ .v1 = null, .v2 = 31019, .v3 = 32184 };
}

// From T_Snnn_xbc.c:25118:25138
// struct  Vp_Us_Us  {
//   void *v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Vp_Us_Us layout" {
    var lv: c.Vp_Us_Us = undefined;
    try testing.expectSize(c.Vp_Us_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Us_Us C calls" {
    try testing.expectEqual(c.ret_Vp_Us_Us(), .{ .v1 = null, .v2 = 21460, .v3 = 26681 });
    try testing.expectOk(c.assert_ret_Vp_Us_Us());
    try testing.expectOk(c.send_Vp_Us_Us());
    try testing.expectOk(c.assert_Vp_Us_Us(.{ .v1 = null, .v2 = 21460, .v3 = 26681 }));
}
pub export fn zig_assert_Vp_Us_Us(lv: c.Vp_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21460) err = 2;
    if (lv.v3 != 26681) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_Us() c.Vp_Us_Us {
    return .{ .v1 = null, .v2 = 21460, .v3 = 26681 };
}

// From T_Snnn_xbc.c:25143:25163
// struct  Vp_Us_Vp  {
//   void *v1;
//   unsigned short v2;
//   void *v3;
// };

test "Vp_Us_Vp layout" {
    var lv: c.Vp_Us_Vp = undefined;
    try testing.expectSize(c.Vp_Us_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Us_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_Us_Vp(), .{ .v1 = null, .v2 = 30188, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Us_Vp());
    try testing.expectOk(c.send_Vp_Us_Vp());
    try testing.expectOk(c.assert_Vp_Us_Vp(.{ .v1 = null, .v2 = 30188, .v3 = null }));
}
pub export fn zig_assert_Vp_Us_Vp(lv: c.Vp_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 30188) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_Vp() c.Vp_Us_Vp {
    return .{ .v1 = null, .v2 = 30188, .v3 = null };
}

// From T_Snnn_xbc.c:25168:25186
// struct  Vp_Vp  {
//   void *v1;
//   void *v2;
// };

test "Vp_Vp layout" {
    var lv: c.Vp_Vp = undefined;
    try testing.expectSize(c.Vp_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_Vp(), .{ .v1 = null, .v2 = null });
    try testing.expectOk(c.assert_ret_Vp_Vp());
    try testing.expectOk(c.send_Vp_Vp());
    try testing.expectOk(c.assert_Vp_Vp(.{ .v1 = null, .v2 = null }));
}
pub export fn zig_assert_Vp_Vp(lv: c.Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp() c.Vp_Vp {
    return .{ .v1 = null, .v2 = null };
}

// From T_Snnn_xbc.c:25915:25935
// struct  Vp_Vp_C  {
//   void *v1;
//   void *v2;
//   char v3;
// };

test "Vp_Vp_C layout" {
    var lv: c.Vp_Vp_C = undefined;
    try testing.expectSize(c.Vp_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_C C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_C(), .{ .v1 = null, .v2 = null, .v3 = 106 });
    try testing.expectOk(c.assert_ret_Vp_Vp_C());
    try testing.expectOk(c.send_Vp_Vp_C());
    try testing.expectOk(c.assert_Vp_Vp_C(.{ .v1 = null, .v2 = null, .v3 = 106 }));
}
pub export fn zig_assert_Vp_Vp_C(lv: c.Vp_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 106) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_C() c.Vp_Vp_C {
    return .{ .v1 = null, .v2 = null, .v3 = 106 };
}

// From T_Snnn_xbc.c:25940:25960
// struct  Vp_Vp_D  {
//   void *v1;
//   void *v2;
//   double v3;
// };

test "Vp_Vp_D layout" {
    var lv: c.Vp_Vp_D = undefined;
    try testing.expectSize(c.Vp_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_D C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_D(), .{ .v1 = null, .v2 = null, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Vp_Vp_D());
    try testing.expectOk(c.send_Vp_Vp_D());
    try testing.expectOk(c.assert_Vp_Vp_D(.{ .v1 = null, .v2 = null, .v3 = -0.25 }));
}
pub export fn zig_assert_Vp_Vp_D(lv: c.Vp_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_D() c.Vp_Vp_D {
    return .{ .v1 = null, .v2 = null, .v3 = -0.25 };
}

// From T_Snnn_xbc.c:25965:25985
// struct  Vp_Vp_F  {
//   void *v1;
//   void *v2;
//   float v3;
// };

test "Vp_Vp_F layout" {
    var lv: c.Vp_Vp_F = undefined;
    try testing.expectSize(c.Vp_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_F C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_F(), .{ .v1 = null, .v2 = null, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Vp_Vp_F());
    try testing.expectOk(c.send_Vp_Vp_F());
    try testing.expectOk(c.assert_Vp_Vp_F(.{ .v1 = null, .v2 = null, .v3 = 0.5 }));
}
pub export fn zig_assert_Vp_Vp_F(lv: c.Vp_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_F() c.Vp_Vp_F {
    return .{ .v1 = null, .v2 = null, .v3 = 0.5 };
}

// From T_Snnn_xbc.c:25990:26010
// struct  Vp_Vp_I  {
//   void *v1;
//   void *v2;
//   int v3;
// };

test "Vp_Vp_I layout" {
    var lv: c.Vp_Vp_I = undefined;
    try testing.expectSize(c.Vp_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_I C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_I(), .{ .v1 = null, .v2 = null, .v3 = 18595 });
    try testing.expectOk(c.assert_ret_Vp_Vp_I());
    try testing.expectOk(c.send_Vp_Vp_I());
    try testing.expectOk(c.assert_Vp_Vp_I(.{ .v1 = null, .v2 = null, .v3 = 18595 }));
}
pub export fn zig_assert_Vp_Vp_I(lv: c.Vp_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 18595) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_I() c.Vp_Vp_I {
    return .{ .v1 = null, .v2 = null, .v3 = 18595 };
}

// From T_Snnn_xbc.c:26015:26035
// struct  Vp_Vp_Ip  {
//   void *v1;
//   void *v2;
//   int *v3;
// };

test "Vp_Vp_Ip layout" {
    var lv: c.Vp_Vp_Ip = undefined;
    try testing.expectSize(c.Vp_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_Ip(), .{ .v1 = null, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Vp_Ip());
    try testing.expectOk(c.send_Vp_Vp_Ip());
    try testing.expectOk(c.assert_Vp_Vp_Ip(.{ .v1 = null, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Vp_Vp_Ip(lv: c.Vp_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_Ip() c.Vp_Vp_Ip {
    return .{ .v1 = null, .v2 = null, .v3 = null };
}

// From T_Snnn_xbc.c:26040:26060
// struct  Vp_Vp_L  {
//   void *v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Vp_Vp_L layout" {
    var lv: c.Vp_Vp_L = undefined;
    try testing.expectSize(c.Vp_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_L C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_L(), .{ .v1 = null, .v2 = null, .v3 = 7966 });
    try testing.expectOk(c.assert_ret_Vp_Vp_L());
    try testing.expectOk(c.send_Vp_Vp_L());
    try testing.expectOk(c.assert_Vp_Vp_L(.{ .v1 = null, .v2 = null, .v3 = 7966 }));
}
pub export fn zig_assert_Vp_Vp_L(lv: c.Vp_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7966) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_L() c.Vp_Vp_L {
    return .{ .v1 = null, .v2 = null, .v3 = 7966 };
}

// From T_Snnn_xbc.c:26065:26085
// struct  Vp_Vp_S  {
//   void *v1;
//   void *v2;
//   short v3;
// };

test "Vp_Vp_S layout" {
    var lv: c.Vp_Vp_S = undefined;
    try testing.expectSize(c.Vp_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_S C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_S(), .{ .v1 = null, .v2 = null, .v3 = 15595 });
    try testing.expectOk(c.assert_ret_Vp_Vp_S());
    try testing.expectOk(c.send_Vp_Vp_S());
    try testing.expectOk(c.assert_Vp_Vp_S(.{ .v1 = null, .v2 = null, .v3 = 15595 }));
}
pub export fn zig_assert_Vp_Vp_S(lv: c.Vp_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 15595) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_S() c.Vp_Vp_S {
    return .{ .v1 = null, .v2 = null, .v3 = 15595 };
}

// From T_Snnn_xbc.c:26090:26110
// struct  Vp_Vp_Uc  {
//   void *v1;
//   void *v2;
//   unsigned char v3;
// };

test "Vp_Vp_Uc layout" {
    var lv: c.Vp_Vp_Uc = undefined;
    try testing.expectSize(c.Vp_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_Uc(), .{ .v1 = null, .v2 = null, .v3 = 17 });
    try testing.expectOk(c.assert_ret_Vp_Vp_Uc());
    try testing.expectOk(c.send_Vp_Vp_Uc());
    try testing.expectOk(c.assert_Vp_Vp_Uc(.{ .v1 = null, .v2 = null, .v3 = 17 }));
}
pub export fn zig_assert_Vp_Vp_Uc(lv: c.Vp_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 17) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_Uc() c.Vp_Vp_Uc {
    return .{ .v1 = null, .v2 = null, .v3 = 17 };
}

// From T_Snnn_xbc.c:26115:26135
// struct  Vp_Vp_Ui  {
//   void *v1;
//   void *v2;
//   unsigned int v3;
// };

test "Vp_Vp_Ui layout" {
    var lv: c.Vp_Vp_Ui = undefined;
    try testing.expectSize(c.Vp_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_Ui(), .{ .v1 = null, .v2 = null, .v3 = 12780 });
    try testing.expectOk(c.assert_ret_Vp_Vp_Ui());
    try testing.expectOk(c.send_Vp_Vp_Ui());
    try testing.expectOk(c.assert_Vp_Vp_Ui(.{ .v1 = null, .v2 = null, .v3 = 12780 }));
}
pub export fn zig_assert_Vp_Vp_Ui(lv: c.Vp_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 12780) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_Ui() c.Vp_Vp_Ui {
    return .{ .v1 = null, .v2 = null, .v3 = 12780 };
}

// From T_Snnn_xbc.c:26140:26160
// struct  Vp_Vp_Ul  {
//   void *v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Vp_Vp_Ul layout" {
    var lv: c.Vp_Vp_Ul = undefined;
    try testing.expectSize(c.Vp_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_Ul(), .{ .v1 = null, .v2 = null, .v3 = 12179 });
    try testing.expectOk(c.assert_ret_Vp_Vp_Ul());
    try testing.expectOk(c.send_Vp_Vp_Ul());
    try testing.expectOk(c.assert_Vp_Vp_Ul(.{ .v1 = null, .v2 = null, .v3 = 12179 }));
}
pub export fn zig_assert_Vp_Vp_Ul(lv: c.Vp_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 12179) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_Ul() c.Vp_Vp_Ul {
    return .{ .v1 = null, .v2 = null, .v3 = 12179 };
}

// From T_Snnn_xbc.c:26165:26185
// struct  Vp_Vp_Us  {
//   void *v1;
//   void *v2;
//   unsigned short v3;
// };

test "Vp_Vp_Us layout" {
    var lv: c.Vp_Vp_Us = undefined;
    try testing.expectSize(c.Vp_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Us C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_Us(), .{ .v1 = null, .v2 = null, .v3 = 11303 });
    try testing.expectOk(c.assert_ret_Vp_Vp_Us());
    try testing.expectOk(c.send_Vp_Vp_Us());
    try testing.expectOk(c.assert_Vp_Vp_Us(.{ .v1 = null, .v2 = null, .v3 = 11303 }));
}
pub export fn zig_assert_Vp_Vp_Us(lv: c.Vp_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 11303) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_Us() c.Vp_Vp_Us {
    return .{ .v1 = null, .v2 = null, .v3 = 11303 };
}

// From T_Snnn_xbc.c:26190:26210
// struct  Vp_Vp_Vp  {
//   void *v1;
//   void *v2;
//   void *v3;
// };

test "Vp_Vp_Vp layout" {
    var lv: c.Vp_Vp_Vp = undefined;
    try testing.expectSize(c.Vp_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_Vp(), .{ .v1 = null, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Vp_Vp());
    try testing.expectOk(c.send_Vp_Vp_Vp());
    try testing.expectOk(c.assert_Vp_Vp_Vp(.{ .v1 = null, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Vp_Vp_Vp(lv: c.Vp_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_Vp() c.Vp_Vp_Vp {
    return .{ .v1 = null, .v2 = null, .v3 = null };
}
