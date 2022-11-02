const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xay.h");
});

// From T_Snnn_xay.c:27101:27119
// struct  Ip_C  {
//   int *v1;
//   char v2;
// };

test "Ip_C layout" {
    var lv: c.Ip_C = undefined;
    try testing.expectSize(c.Ip_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_C C calls" {
    try testing.expectEqual(c.ret_Ip_C(), .{ .v1 = null, .v2 = 48 });
    try testing.expectOk(c.assert_ret_Ip_C());
    try testing.expectOk(c.send_Ip_C());
    try testing.expectOk(c.assert_Ip_C(.{ .v1 = null, .v2 = 48 }));
}
pub export fn zig_assert_Ip_C(lv: c.Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 48) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C() c.Ip_C {
    return .{ .v1 = null, .v2 = 48 };
}

// From T_Snnn_xay.c:27848:27868
// struct  Ip_C_C  {
//   int *v1;
//   char v2;
//   char v3;
// };

test "Ip_C_C layout" {
    var lv: c.Ip_C_C = undefined;
    try testing.expectSize(c.Ip_C_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Ip_C_C C calls" {
    try testing.expectEqual(c.ret_Ip_C_C(), .{ .v1 = null, .v2 = 100, .v3 = 54 });
    try testing.expectOk(c.assert_ret_Ip_C_C());
    try testing.expectOk(c.send_Ip_C_C());
    try testing.expectOk(c.assert_Ip_C_C(.{ .v1 = null, .v2 = 100, .v3 = 54 }));
}
pub export fn zig_assert_Ip_C_C(lv: c.Ip_C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 100) err = 2;
    if (lv.v3 != 54) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_C() c.Ip_C_C {
    return .{ .v1 = null, .v2 = 100, .v3 = 54 };
}

// From T_Snnn_xay.c:27873:27893
// struct  Ip_C_D  {
//   int *v1;
//   char v2;
//   double v3;
// };

test "Ip_C_D layout" {
    var lv: c.Ip_C_D = undefined;
    try testing.expectSize(c.Ip_C_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_C_D C calls" {
    try testing.expectEqual(c.ret_Ip_C_D(), .{ .v1 = null, .v2 = 102, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Ip_C_D());
    try testing.expectOk(c.send_Ip_C_D());
    try testing.expectOk(c.assert_Ip_C_D(.{ .v1 = null, .v2 = 102, .v3 = 1.0 }));
}
pub export fn zig_assert_Ip_C_D(lv: c.Ip_C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 102) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_D() c.Ip_C_D {
    return .{ .v1 = null, .v2 = 102, .v3 = 1.0 };
}

// From T_Snnn_xay.c:27898:27918
// struct  Ip_C_F  {
//   int *v1;
//   char v2;
//   float v3;
// };

test "Ip_C_F layout" {
    var lv: c.Ip_C_F = undefined;
    try testing.expectSize(c.Ip_C_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_C_F C calls" {
    try testing.expectEqual(c.ret_Ip_C_F(), .{ .v1 = null, .v2 = 92, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Ip_C_F());
    try testing.expectOk(c.send_Ip_C_F());
    try testing.expectOk(c.assert_Ip_C_F(.{ .v1 = null, .v2 = 92, .v3 = 7.0 }));
}
pub export fn zig_assert_Ip_C_F(lv: c.Ip_C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 92) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_F() c.Ip_C_F {
    return .{ .v1 = null, .v2 = 92, .v3 = 7.0 };
}

// From T_Snnn_xay.c:27923:27943
// struct  Ip_C_I  {
//   int *v1;
//   char v2;
//   int v3;
// };

test "Ip_C_I layout" {
    var lv: c.Ip_C_I = undefined;
    try testing.expectSize(c.Ip_C_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_C_I C calls" {
    try testing.expectEqual(c.ret_Ip_C_I(), .{ .v1 = null, .v2 = 31, .v3 = 27354 });
    try testing.expectOk(c.assert_ret_Ip_C_I());
    try testing.expectOk(c.send_Ip_C_I());
    try testing.expectOk(c.assert_Ip_C_I(.{ .v1 = null, .v2 = 31, .v3 = 27354 }));
}
pub export fn zig_assert_Ip_C_I(lv: c.Ip_C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 31) err = 2;
    if (lv.v3 != 27354) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_I() c.Ip_C_I {
    return .{ .v1 = null, .v2 = 31, .v3 = 27354 };
}

// From T_Snnn_xay.c:27948:27968
// struct  Ip_C_Ip  {
//   int *v1;
//   char v2;
//   int *v3;
// };

test "Ip_C_Ip layout" {
    var lv: c.Ip_C_Ip = undefined;
    try testing.expectSize(c.Ip_C_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_C_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_C_Ip(), .{ .v1 = null, .v2 = 71, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_C_Ip());
    try testing.expectOk(c.send_Ip_C_Ip());
    try testing.expectOk(c.assert_Ip_C_Ip(.{ .v1 = null, .v2 = 71, .v3 = null }));
}
pub export fn zig_assert_Ip_C_Ip(lv: c.Ip_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 71) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_Ip() c.Ip_C_Ip {
    return .{ .v1 = null, .v2 = 71, .v3 = null };
}

// From T_Snnn_xay.c:27973:27993
// struct  Ip_C_L  {
//   int *v1;
//   char v2;
//   __tsi64 v3;
// };

test "Ip_C_L layout" {
    var lv: c.Ip_C_L = undefined;
    try testing.expectSize(c.Ip_C_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_C_L C calls" {
    try testing.expectEqual(c.ret_Ip_C_L(), .{ .v1 = null, .v2 = 81, .v3 = 25596 });
    try testing.expectOk(c.assert_ret_Ip_C_L());
    try testing.expectOk(c.send_Ip_C_L());
    try testing.expectOk(c.assert_Ip_C_L(.{ .v1 = null, .v2 = 81, .v3 = 25596 }));
}
pub export fn zig_assert_Ip_C_L(lv: c.Ip_C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 81) err = 2;
    if (lv.v3 != 25596) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_L() c.Ip_C_L {
    return .{ .v1 = null, .v2 = 81, .v3 = 25596 };
}

// From T_Snnn_xay.c:27998:28018
// struct  Ip_C_S  {
//   int *v1;
//   char v2;
//   short v3;
// };

test "Ip_C_S layout" {
    var lv: c.Ip_C_S = undefined;
    try testing.expectSize(c.Ip_C_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_C_S C calls" {
    try testing.expectEqual(c.ret_Ip_C_S(), .{ .v1 = null, .v2 = 35, .v3 = 26993 });
    try testing.expectOk(c.assert_ret_Ip_C_S());
    try testing.expectOk(c.send_Ip_C_S());
    try testing.expectOk(c.assert_Ip_C_S(.{ .v1 = null, .v2 = 35, .v3 = 26993 }));
}
pub export fn zig_assert_Ip_C_S(lv: c.Ip_C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 35) err = 2;
    if (lv.v3 != 26993) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_S() c.Ip_C_S {
    return .{ .v1 = null, .v2 = 35, .v3 = 26993 };
}

// From T_Snnn_xay.c:28023:28043
// struct  Ip_C_Uc  {
//   int *v1;
//   char v2;
//   unsigned char v3;
// };

test "Ip_C_Uc layout" {
    var lv: c.Ip_C_Uc = undefined;
    try testing.expectSize(c.Ip_C_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Ip_C_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_C_Uc(), .{ .v1 = null, .v2 = 62, .v3 = 43 });
    try testing.expectOk(c.assert_ret_Ip_C_Uc());
    try testing.expectOk(c.send_Ip_C_Uc());
    try testing.expectOk(c.assert_Ip_C_Uc(.{ .v1 = null, .v2 = 62, .v3 = 43 }));
}
pub export fn zig_assert_Ip_C_Uc(lv: c.Ip_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 62) err = 2;
    if (lv.v3 != 43) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_Uc() c.Ip_C_Uc {
    return .{ .v1 = null, .v2 = 62, .v3 = 43 };
}

// From T_Snnn_xay.c:28048:28068
// struct  Ip_C_Ui  {
//   int *v1;
//   char v2;
//   unsigned int v3;
// };

test "Ip_C_Ui layout" {
    var lv: c.Ip_C_Ui = undefined;
    try testing.expectSize(c.Ip_C_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_C_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_C_Ui(), .{ .v1 = null, .v2 = 5, .v3 = 17445 });
    try testing.expectOk(c.assert_ret_Ip_C_Ui());
    try testing.expectOk(c.send_Ip_C_Ui());
    try testing.expectOk(c.assert_Ip_C_Ui(.{ .v1 = null, .v2 = 5, .v3 = 17445 }));
}
pub export fn zig_assert_Ip_C_Ui(lv: c.Ip_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 5) err = 2;
    if (lv.v3 != 17445) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_Ui() c.Ip_C_Ui {
    return .{ .v1 = null, .v2 = 5, .v3 = 17445 };
}

// From T_Snnn_xay.c:28073:28093
// struct  Ip_C_Ul  {
//   int *v1;
//   char v2;
//   __tsu64 v3;
// };

test "Ip_C_Ul layout" {
    var lv: c.Ip_C_Ul = undefined;
    try testing.expectSize(c.Ip_C_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_C_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_C_Ul(), .{ .v1 = null, .v2 = 8, .v3 = 19265 });
    try testing.expectOk(c.assert_ret_Ip_C_Ul());
    try testing.expectOk(c.send_Ip_C_Ul());
    try testing.expectOk(c.assert_Ip_C_Ul(.{ .v1 = null, .v2 = 8, .v3 = 19265 }));
}
pub export fn zig_assert_Ip_C_Ul(lv: c.Ip_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 8) err = 2;
    if (lv.v3 != 19265) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_Ul() c.Ip_C_Ul {
    return .{ .v1 = null, .v2 = 8, .v3 = 19265 };
}

// From T_Snnn_xay.c:28098:28118
// struct  Ip_C_Us  {
//   int *v1;
//   char v2;
//   unsigned short v3;
// };

test "Ip_C_Us layout" {
    var lv: c.Ip_C_Us = undefined;
    try testing.expectSize(c.Ip_C_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_C_Us C calls" {
    try testing.expectEqual(c.ret_Ip_C_Us(), .{ .v1 = null, .v2 = 103, .v3 = 22111 });
    try testing.expectOk(c.assert_ret_Ip_C_Us());
    try testing.expectOk(c.send_Ip_C_Us());
    try testing.expectOk(c.assert_Ip_C_Us(.{ .v1 = null, .v2 = 103, .v3 = 22111 }));
}
pub export fn zig_assert_Ip_C_Us(lv: c.Ip_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 103) err = 2;
    if (lv.v3 != 22111) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_Us() c.Ip_C_Us {
    return .{ .v1 = null, .v2 = 103, .v3 = 22111 };
}

// From T_Snnn_xay.c:28123:28143
// struct  Ip_C_Vp  {
//   int *v1;
//   char v2;
//   void *v3;
// };

test "Ip_C_Vp layout" {
    var lv: c.Ip_C_Vp = undefined;
    try testing.expectSize(c.Ip_C_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_C_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_C_Vp(), .{ .v1 = null, .v2 = 95, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_C_Vp());
    try testing.expectOk(c.send_Ip_C_Vp());
    try testing.expectOk(c.assert_Ip_C_Vp(.{ .v1 = null, .v2 = 95, .v3 = null }));
}
pub export fn zig_assert_Ip_C_Vp(lv: c.Ip_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 95) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_Vp() c.Ip_C_Vp {
    return .{ .v1 = null, .v2 = 95, .v3 = null };
}

// From T_Snnn_xay.c:28148:28166
// struct  Ip_D  {
//   int *v1;
//   double v2;
// };

test "Ip_D layout" {
    var lv: c.Ip_D = undefined;
    try testing.expectSize(c.Ip_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_D C calls" {
    try testing.expectEqual(c.ret_Ip_D(), .{ .v1 = null, .v2 = 1.0 });
    try testing.expectOk(c.assert_ret_Ip_D());
    try testing.expectOk(c.send_Ip_D());
    try testing.expectOk(c.assert_Ip_D(.{ .v1 = null, .v2 = 1.0 }));
}
pub export fn zig_assert_Ip_D(lv: c.Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D() c.Ip_D {
    return .{ .v1 = null, .v2 = 1.0 };
}

// From T_Snnn_xay.c:28895:28915
// struct  Ip_D_C  {
//   int *v1;
//   double v2;
//   char v3;
// };

test "Ip_D_C layout" {
    var lv: c.Ip_D_C = undefined;
    try testing.expectSize(c.Ip_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_C C calls" {
    try testing.expectEqual(c.ret_Ip_D_C(), .{ .v1 = null, .v2 = -0.25, .v3 = 93 });
    try testing.expectOk(c.assert_ret_Ip_D_C());
    try testing.expectOk(c.send_Ip_D_C());
    try testing.expectOk(c.assert_Ip_D_C(.{ .v1 = null, .v2 = -0.25, .v3 = 93 }));
}
pub export fn zig_assert_Ip_D_C(lv: c.Ip_D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 93) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_C() c.Ip_D_C {
    return .{ .v1 = null, .v2 = -0.25, .v3 = 93 };
}

// From T_Snnn_xay.c:28920:28940
// struct  Ip_D_D  {
//   int *v1;
//   double v2;
//   double v3;
// };

test "Ip_D_D layout" {
    var lv: c.Ip_D_D = undefined;
    try testing.expectSize(c.Ip_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_D C calls" {
    try testing.expectEqual(c.ret_Ip_D_D(), .{ .v1 = null, .v2 = -0.25, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Ip_D_D());
    try testing.expectOk(c.send_Ip_D_D());
    try testing.expectOk(c.assert_Ip_D_D(.{ .v1 = null, .v2 = -0.25, .v3 = 0.5 }));
}
pub export fn zig_assert_Ip_D_D(lv: c.Ip_D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_D() c.Ip_D_D {
    return .{ .v1 = null, .v2 = -0.25, .v3 = 0.5 };
}

// From T_Snnn_xay.c:28945:28965
// struct  Ip_D_F  {
//   int *v1;
//   double v2;
//   float v3;
// };

test "Ip_D_F layout" {
    var lv: c.Ip_D_F = undefined;
    try testing.expectSize(c.Ip_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_F C calls" {
    try testing.expectEqual(c.ret_Ip_D_F(), .{ .v1 = null, .v2 = -2.125, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Ip_D_F());
    try testing.expectOk(c.send_Ip_D_F());
    try testing.expectOk(c.assert_Ip_D_F(.{ .v1 = null, .v2 = -2.125, .v3 = -0.25 }));
}
pub export fn zig_assert_Ip_D_F(lv: c.Ip_D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_F() c.Ip_D_F {
    return .{ .v1 = null, .v2 = -2.125, .v3 = -0.25 };
}

// From T_Snnn_xay.c:28970:28990
// struct  Ip_D_I  {
//   int *v1;
//   double v2;
//   int v3;
// };

test "Ip_D_I layout" {
    var lv: c.Ip_D_I = undefined;
    try testing.expectSize(c.Ip_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_I C calls" {
    try testing.expectEqual(c.ret_Ip_D_I(), .{ .v1 = null, .v2 = 7.0, .v3 = 15113 });
    try testing.expectOk(c.assert_ret_Ip_D_I());
    try testing.expectOk(c.send_Ip_D_I());
    try testing.expectOk(c.assert_Ip_D_I(.{ .v1 = null, .v2 = 7.0, .v3 = 15113 }));
}
pub export fn zig_assert_Ip_D_I(lv: c.Ip_D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 15113) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_I() c.Ip_D_I {
    return .{ .v1 = null, .v2 = 7.0, .v3 = 15113 };
}

// From T_Snnn_xay.c:28995:29015
// struct  Ip_D_Ip  {
//   int *v1;
//   double v2;
//   int *v3;
// };

test "Ip_D_Ip layout" {
    var lv: c.Ip_D_Ip = undefined;
    try testing.expectSize(c.Ip_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_D_Ip(), .{ .v1 = null, .v2 = 0.875, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_D_Ip());
    try testing.expectOk(c.send_Ip_D_Ip());
    try testing.expectOk(c.assert_Ip_D_Ip(.{ .v1 = null, .v2 = 0.875, .v3 = null }));
}
pub export fn zig_assert_Ip_D_Ip(lv: c.Ip_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_Ip() c.Ip_D_Ip {
    return .{ .v1 = null, .v2 = 0.875, .v3 = null };
}

// From T_Snnn_xay.c:29020:29040
// struct  Ip_D_L  {
//   int *v1;
//   double v2;
//   __tsi64 v3;
// };

test "Ip_D_L layout" {
    var lv: c.Ip_D_L = undefined;
    try testing.expectSize(c.Ip_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_L C calls" {
    try testing.expectEqual(c.ret_Ip_D_L(), .{ .v1 = null, .v2 = 7.0, .v3 = 31612 });
    try testing.expectOk(c.assert_ret_Ip_D_L());
    try testing.expectOk(c.send_Ip_D_L());
    try testing.expectOk(c.assert_Ip_D_L(.{ .v1 = null, .v2 = 7.0, .v3 = 31612 }));
}
pub export fn zig_assert_Ip_D_L(lv: c.Ip_D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 31612) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_L() c.Ip_D_L {
    return .{ .v1 = null, .v2 = 7.0, .v3 = 31612 };
}

// From T_Snnn_xay.c:29045:29065
// struct  Ip_D_S  {
//   int *v1;
//   double v2;
//   short v3;
// };

test "Ip_D_S layout" {
    var lv: c.Ip_D_S = undefined;
    try testing.expectSize(c.Ip_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_S C calls" {
    try testing.expectEqual(c.ret_Ip_D_S(), .{ .v1 = null, .v2 = -2.125, .v3 = 17322 });
    try testing.expectOk(c.assert_ret_Ip_D_S());
    try testing.expectOk(c.send_Ip_D_S());
    try testing.expectOk(c.assert_Ip_D_S(.{ .v1 = null, .v2 = -2.125, .v3 = 17322 }));
}
pub export fn zig_assert_Ip_D_S(lv: c.Ip_D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 17322) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_S() c.Ip_D_S {
    return .{ .v1 = null, .v2 = -2.125, .v3 = 17322 };
}

// From T_Snnn_xay.c:29070:29090
// struct  Ip_D_Uc  {
//   int *v1;
//   double v2;
//   unsigned char v3;
// };

test "Ip_D_Uc layout" {
    var lv: c.Ip_D_Uc = undefined;
    try testing.expectSize(c.Ip_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_D_Uc(), .{ .v1 = null, .v2 = 1.0, .v3 = 29 });
    try testing.expectOk(c.assert_ret_Ip_D_Uc());
    try testing.expectOk(c.send_Ip_D_Uc());
    try testing.expectOk(c.assert_Ip_D_Uc(.{ .v1 = null, .v2 = 1.0, .v3 = 29 }));
}
pub export fn zig_assert_Ip_D_Uc(lv: c.Ip_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 29) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_Uc() c.Ip_D_Uc {
    return .{ .v1 = null, .v2 = 1.0, .v3 = 29 };
}

// From T_Snnn_xay.c:29095:29115
// struct  Ip_D_Ui  {
//   int *v1;
//   double v2;
//   unsigned int v3;
// };

test "Ip_D_Ui layout" {
    var lv: c.Ip_D_Ui = undefined;
    try testing.expectSize(c.Ip_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_D_Ui(), .{ .v1 = null, .v2 = -2.125, .v3 = 12052 });
    try testing.expectOk(c.assert_ret_Ip_D_Ui());
    try testing.expectOk(c.send_Ip_D_Ui());
    try testing.expectOk(c.assert_Ip_D_Ui(.{ .v1 = null, .v2 = -2.125, .v3 = 12052 }));
}
pub export fn zig_assert_Ip_D_Ui(lv: c.Ip_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 12052) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_Ui() c.Ip_D_Ui {
    return .{ .v1 = null, .v2 = -2.125, .v3 = 12052 };
}

// From T_Snnn_xay.c:29120:29140
// struct  Ip_D_Ul  {
//   int *v1;
//   double v2;
//   __tsu64 v3;
// };

test "Ip_D_Ul layout" {
    var lv: c.Ip_D_Ul = undefined;
    try testing.expectSize(c.Ip_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_D_Ul(), .{ .v1 = null, .v2 = -0.25, .v3 = 121 });
    try testing.expectOk(c.assert_ret_Ip_D_Ul());
    try testing.expectOk(c.send_Ip_D_Ul());
    try testing.expectOk(c.assert_Ip_D_Ul(.{ .v1 = null, .v2 = -0.25, .v3 = 121 }));
}
pub export fn zig_assert_Ip_D_Ul(lv: c.Ip_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 121) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_Ul() c.Ip_D_Ul {
    return .{ .v1 = null, .v2 = -0.25, .v3 = 121 };
}

// From T_Snnn_xay.c:29145:29165
// struct  Ip_D_Us  {
//   int *v1;
//   double v2;
//   unsigned short v3;
// };

test "Ip_D_Us layout" {
    var lv: c.Ip_D_Us = undefined;
    try testing.expectSize(c.Ip_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_Us C calls" {
    try testing.expectEqual(c.ret_Ip_D_Us(), .{ .v1 = null, .v2 = 1.0, .v3 = 2255 });
    try testing.expectOk(c.assert_ret_Ip_D_Us());
    try testing.expectOk(c.send_Ip_D_Us());
    try testing.expectOk(c.assert_Ip_D_Us(.{ .v1 = null, .v2 = 1.0, .v3 = 2255 }));
}
pub export fn zig_assert_Ip_D_Us(lv: c.Ip_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 2255) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_Us() c.Ip_D_Us {
    return .{ .v1 = null, .v2 = 1.0, .v3 = 2255 };
}

// From T_Snnn_xay.c:29170:29190
// struct  Ip_D_Vp  {
//   int *v1;
//   double v2;
//   void *v3;
// };

test "Ip_D_Vp layout" {
    var lv: c.Ip_D_Vp = undefined;
    try testing.expectSize(c.Ip_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_D_Vp(), .{ .v1 = null, .v2 = 4.5, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_D_Vp());
    try testing.expectOk(c.send_Ip_D_Vp());
    try testing.expectOk(c.assert_Ip_D_Vp(.{ .v1 = null, .v2 = 4.5, .v3 = null }));
}
pub export fn zig_assert_Ip_D_Vp(lv: c.Ip_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_Vp() c.Ip_D_Vp {
    return .{ .v1 = null, .v2 = 4.5, .v3 = null };
}

// From T_Snnn_xay.c:29195:29213
// struct  Ip_F  {
//   int *v1;
//   float v2;
// };

test "Ip_F layout" {
    var lv: c.Ip_F = undefined;
    try testing.expectSize(c.Ip_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_F C calls" {
    try testing.expectEqual(c.ret_Ip_F(), .{ .v1 = null, .v2 = 1.0 });
    try testing.expectOk(c.assert_ret_Ip_F());
    try testing.expectOk(c.send_Ip_F());
    try testing.expectOk(c.assert_Ip_F(.{ .v1 = null, .v2 = 1.0 }));
}
pub export fn zig_assert_Ip_F(lv: c.Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F() c.Ip_F {
    return .{ .v1 = null, .v2 = 1.0 };
}

// From T_Snnn_xay.c:29942:29962
// struct  Ip_F_C  {
//   int *v1;
//   float v2;
//   char v3;
// };

test "Ip_F_C layout" {
    var lv: c.Ip_F_C = undefined;
    try testing.expectSize(c.Ip_F_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_F_C C calls" {
    try testing.expectEqual(c.ret_Ip_F_C(), .{ .v1 = null, .v2 = 0.5, .v3 = 113 });
    try testing.expectOk(c.assert_ret_Ip_F_C());
    try testing.expectOk(c.send_Ip_F_C());
    try testing.expectOk(c.assert_Ip_F_C(.{ .v1 = null, .v2 = 0.5, .v3 = 113 }));
}
pub export fn zig_assert_Ip_F_C(lv: c.Ip_F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 113) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_C() c.Ip_F_C {
    return .{ .v1 = null, .v2 = 0.5, .v3 = 113 };
}

// From T_Snnn_xay.c:29967:29987
// struct  Ip_F_D  {
//   int *v1;
//   float v2;
//   double v3;
// };

test "Ip_F_D layout" {
    var lv: c.Ip_F_D = undefined;
    try testing.expectSize(c.Ip_F_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_F_D C calls" {
    try testing.expectEqual(c.ret_Ip_F_D(), .{ .v1 = null, .v2 = 0.5, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Ip_F_D());
    try testing.expectOk(c.send_Ip_F_D());
    try testing.expectOk(c.assert_Ip_F_D(.{ .v1 = null, .v2 = 0.5, .v3 = 1.0 }));
}
pub export fn zig_assert_Ip_F_D(lv: c.Ip_F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_D() c.Ip_F_D {
    return .{ .v1 = null, .v2 = 0.5, .v3 = 1.0 };
}

// From T_Snnn_xay.c:29992:30012
// struct  Ip_F_F  {
//   int *v1;
//   float v2;
//   float v3;
// };

test "Ip_F_F layout" {
    var lv: c.Ip_F_F = undefined;
    try testing.expectSize(c.Ip_F_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_F_F C calls" {
    try testing.expectEqual(c.ret_Ip_F_F(), .{ .v1 = null, .v2 = 1.0, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Ip_F_F());
    try testing.expectOk(c.send_Ip_F_F());
    try testing.expectOk(c.assert_Ip_F_F(.{ .v1 = null, .v2 = 1.0, .v3 = -0.25 }));
}
pub export fn zig_assert_Ip_F_F(lv: c.Ip_F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_F() c.Ip_F_F {
    return .{ .v1 = null, .v2 = 1.0, .v3 = -0.25 };
}

// From T_Snnn_xay.c:30017:30037
// struct  Ip_F_I  {
//   int *v1;
//   float v2;
//   int v3;
// };

test "Ip_F_I layout" {
    var lv: c.Ip_F_I = undefined;
    try testing.expectSize(c.Ip_F_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_F_I C calls" {
    try testing.expectEqual(c.ret_Ip_F_I(), .{ .v1 = null, .v2 = 0.5, .v3 = 2580 });
    try testing.expectOk(c.assert_ret_Ip_F_I());
    try testing.expectOk(c.send_Ip_F_I());
    try testing.expectOk(c.assert_Ip_F_I(.{ .v1 = null, .v2 = 0.5, .v3 = 2580 }));
}
pub export fn zig_assert_Ip_F_I(lv: c.Ip_F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 2580) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_I() c.Ip_F_I {
    return .{ .v1 = null, .v2 = 0.5, .v3 = 2580 };
}

// From T_Snnn_xay.c:30042:30062
// struct  Ip_F_Ip  {
//   int *v1;
//   float v2;
//   int *v3;
// };

test "Ip_F_Ip layout" {
    var lv: c.Ip_F_Ip = undefined;
    try testing.expectSize(c.Ip_F_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_F_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_F_Ip(), .{ .v1 = null, .v2 = 0.5, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_F_Ip());
    try testing.expectOk(c.send_Ip_F_Ip());
    try testing.expectOk(c.assert_Ip_F_Ip(.{ .v1 = null, .v2 = 0.5, .v3 = null }));
}
pub export fn zig_assert_Ip_F_Ip(lv: c.Ip_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_Ip() c.Ip_F_Ip {
    return .{ .v1 = null, .v2 = 0.5, .v3 = null };
}

// From T_Snnn_xay.c:30067:30087
// struct  Ip_F_L  {
//   int *v1;
//   float v2;
//   __tsi64 v3;
// };

test "Ip_F_L layout" {
    var lv: c.Ip_F_L = undefined;
    try testing.expectSize(c.Ip_F_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_F_L C calls" {
    try testing.expectEqual(c.ret_Ip_F_L(), .{ .v1 = null, .v2 = 4.5, .v3 = 29807 });
    try testing.expectOk(c.assert_ret_Ip_F_L());
    try testing.expectOk(c.send_Ip_F_L());
    try testing.expectOk(c.assert_Ip_F_L(.{ .v1 = null, .v2 = 4.5, .v3 = 29807 }));
}
pub export fn zig_assert_Ip_F_L(lv: c.Ip_F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 29807) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_L() c.Ip_F_L {
    return .{ .v1 = null, .v2 = 4.5, .v3 = 29807 };
}

// From T_Snnn_xay.c:30092:30112
// struct  Ip_F_S  {
//   int *v1;
//   float v2;
//   short v3;
// };

test "Ip_F_S layout" {
    var lv: c.Ip_F_S = undefined;
    try testing.expectSize(c.Ip_F_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_F_S C calls" {
    try testing.expectEqual(c.ret_Ip_F_S(), .{ .v1 = null, .v2 = 4.5, .v3 = 23718 });
    try testing.expectOk(c.assert_ret_Ip_F_S());
    try testing.expectOk(c.send_Ip_F_S());
    try testing.expectOk(c.assert_Ip_F_S(.{ .v1 = null, .v2 = 4.5, .v3 = 23718 }));
}
pub export fn zig_assert_Ip_F_S(lv: c.Ip_F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 23718) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_S() c.Ip_F_S {
    return .{ .v1 = null, .v2 = 4.5, .v3 = 23718 };
}

// From T_Snnn_xay.c:30117:30137
// struct  Ip_F_Uc  {
//   int *v1;
//   float v2;
//   unsigned char v3;
// };

test "Ip_F_Uc layout" {
    var lv: c.Ip_F_Uc = undefined;
    try testing.expectSize(c.Ip_F_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_F_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_F_Uc(), .{ .v1 = null, .v2 = 0.875, .v3 = 89 });
    try testing.expectOk(c.assert_ret_Ip_F_Uc());
    try testing.expectOk(c.send_Ip_F_Uc());
    try testing.expectOk(c.assert_Ip_F_Uc(.{ .v1 = null, .v2 = 0.875, .v3 = 89 }));
}
pub export fn zig_assert_Ip_F_Uc(lv: c.Ip_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 89) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_Uc() c.Ip_F_Uc {
    return .{ .v1 = null, .v2 = 0.875, .v3 = 89 };
}

// From T_Snnn_xay.c:30142:30162
// struct  Ip_F_Ui  {
//   int *v1;
//   float v2;
//   unsigned int v3;
// };

test "Ip_F_Ui layout" {
    var lv: c.Ip_F_Ui = undefined;
    try testing.expectSize(c.Ip_F_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_F_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_F_Ui(), .{ .v1 = null, .v2 = -0.25, .v3 = 8623 });
    try testing.expectOk(c.assert_ret_Ip_F_Ui());
    try testing.expectOk(c.send_Ip_F_Ui());
    try testing.expectOk(c.assert_Ip_F_Ui(.{ .v1 = null, .v2 = -0.25, .v3 = 8623 }));
}
pub export fn zig_assert_Ip_F_Ui(lv: c.Ip_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 8623) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_Ui() c.Ip_F_Ui {
    return .{ .v1 = null, .v2 = -0.25, .v3 = 8623 };
}

// From T_Snnn_xay.c:30167:30187
// struct  Ip_F_Ul  {
//   int *v1;
//   float v2;
//   __tsu64 v3;
// };

test "Ip_F_Ul layout" {
    var lv: c.Ip_F_Ul = undefined;
    try testing.expectSize(c.Ip_F_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_F_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_F_Ul(), .{ .v1 = null, .v2 = 4.5, .v3 = 19551 });
    try testing.expectOk(c.assert_ret_Ip_F_Ul());
    try testing.expectOk(c.send_Ip_F_Ul());
    try testing.expectOk(c.assert_Ip_F_Ul(.{ .v1 = null, .v2 = 4.5, .v3 = 19551 }));
}
pub export fn zig_assert_Ip_F_Ul(lv: c.Ip_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 19551) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_Ul() c.Ip_F_Ul {
    return .{ .v1 = null, .v2 = 4.5, .v3 = 19551 };
}

// From T_Snnn_xay.c:30192:30212
// struct  Ip_F_Us  {
//   int *v1;
//   float v2;
//   unsigned short v3;
// };

test "Ip_F_Us layout" {
    var lv: c.Ip_F_Us = undefined;
    try testing.expectSize(c.Ip_F_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_F_Us C calls" {
    try testing.expectEqual(c.ret_Ip_F_Us(), .{ .v1 = null, .v2 = 4.5, .v3 = 4547 });
    try testing.expectOk(c.assert_ret_Ip_F_Us());
    try testing.expectOk(c.send_Ip_F_Us());
    try testing.expectOk(c.assert_Ip_F_Us(.{ .v1 = null, .v2 = 4.5, .v3 = 4547 }));
}
pub export fn zig_assert_Ip_F_Us(lv: c.Ip_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 4547) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_Us() c.Ip_F_Us {
    return .{ .v1 = null, .v2 = 4.5, .v3 = 4547 };
}

// From T_Snnn_xay.c:30217:30237
// struct  Ip_F_Vp  {
//   int *v1;
//   float v2;
//   void *v3;
// };

test "Ip_F_Vp layout" {
    var lv: c.Ip_F_Vp = undefined;
    try testing.expectSize(c.Ip_F_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_F_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_F_Vp(), .{ .v1 = null, .v2 = 7.0, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_F_Vp());
    try testing.expectOk(c.send_Ip_F_Vp());
    try testing.expectOk(c.assert_Ip_F_Vp(.{ .v1 = null, .v2 = 7.0, .v3 = null }));
}
pub export fn zig_assert_Ip_F_Vp(lv: c.Ip_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_Vp() c.Ip_F_Vp {
    return .{ .v1 = null, .v2 = 7.0, .v3 = null };
}

// From T_Snnn_xay.c:30242:30260
// struct  Ip_I  {
//   int *v1;
//   int v2;
// };

test "Ip_I layout" {
    var lv: c.Ip_I = undefined;
    try testing.expectSize(c.Ip_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_I C calls" {
    try testing.expectEqual(c.ret_Ip_I(), .{ .v1 = null, .v2 = 3367 });
    try testing.expectOk(c.assert_ret_Ip_I());
    try testing.expectOk(c.send_Ip_I());
    try testing.expectOk(c.assert_Ip_I(.{ .v1 = null, .v2 = 3367 }));
}
pub export fn zig_assert_Ip_I(lv: c.Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 3367) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I() c.Ip_I {
    return .{ .v1 = null, .v2 = 3367 };
}

// From T_Snnn_xay.c:30989:31009
// struct  Ip_I_C  {
//   int *v1;
//   int v2;
//   char v3;
// };

test "Ip_I_C layout" {
    var lv: c.Ip_I_C = undefined;
    try testing.expectSize(c.Ip_I_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_I_C C calls" {
    try testing.expectEqual(c.ret_Ip_I_C(), .{ .v1 = null, .v2 = 31149, .v3 = 116 });
    try testing.expectOk(c.assert_ret_Ip_I_C());
    try testing.expectOk(c.send_Ip_I_C());
    try testing.expectOk(c.assert_Ip_I_C(.{ .v1 = null, .v2 = 31149, .v3 = 116 }));
}
pub export fn zig_assert_Ip_I_C(lv: c.Ip_I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 31149) err = 2;
    if (lv.v3 != 116) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_C() c.Ip_I_C {
    return .{ .v1 = null, .v2 = 31149, .v3 = 116 };
}

// From T_Snnn_xay.c:31014:31034
// struct  Ip_I_D  {
//   int *v1;
//   int v2;
//   double v3;
// };

test "Ip_I_D layout" {
    var lv: c.Ip_I_D = undefined;
    try testing.expectSize(c.Ip_I_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_I_D C calls" {
    try testing.expectEqual(c.ret_Ip_I_D(), .{ .v1 = null, .v2 = 7672, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Ip_I_D());
    try testing.expectOk(c.send_Ip_I_D());
    try testing.expectOk(c.assert_Ip_I_D(.{ .v1 = null, .v2 = 7672, .v3 = 4.5 }));
}
pub export fn zig_assert_Ip_I_D(lv: c.Ip_I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7672) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_D() c.Ip_I_D {
    return .{ .v1 = null, .v2 = 7672, .v3 = 4.5 };
}

// From T_Snnn_xay.c:31039:31059
// struct  Ip_I_F  {
//   int *v1;
//   int v2;
//   float v3;
// };

test "Ip_I_F layout" {
    var lv: c.Ip_I_F = undefined;
    try testing.expectSize(c.Ip_I_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_I_F C calls" {
    try testing.expectEqual(c.ret_Ip_I_F(), .{ .v1 = null, .v2 = 1771, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Ip_I_F());
    try testing.expectOk(c.send_Ip_I_F());
    try testing.expectOk(c.assert_Ip_I_F(.{ .v1 = null, .v2 = 1771, .v3 = 0.875 }));
}
pub export fn zig_assert_Ip_I_F(lv: c.Ip_I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1771) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_F() c.Ip_I_F {
    return .{ .v1 = null, .v2 = 1771, .v3 = 0.875 };
}

// From T_Snnn_xay.c:31064:31084
// struct  Ip_I_I  {
//   int *v1;
//   int v2;
//   int v3;
// };

test "Ip_I_I layout" {
    var lv: c.Ip_I_I = undefined;
    try testing.expectSize(c.Ip_I_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_I_I C calls" {
    try testing.expectEqual(c.ret_Ip_I_I(), .{ .v1 = null, .v2 = 5017, .v3 = 20845 });
    try testing.expectOk(c.assert_ret_Ip_I_I());
    try testing.expectOk(c.send_Ip_I_I());
    try testing.expectOk(c.assert_Ip_I_I(.{ .v1 = null, .v2 = 5017, .v3 = 20845 }));
}
pub export fn zig_assert_Ip_I_I(lv: c.Ip_I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 5017) err = 2;
    if (lv.v3 != 20845) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_I() c.Ip_I_I {
    return .{ .v1 = null, .v2 = 5017, .v3 = 20845 };
}

// From T_Snnn_xay.c:31089:31109
// struct  Ip_I_Ip  {
//   int *v1;
//   int v2;
//   int *v3;
// };

test "Ip_I_Ip layout" {
    var lv: c.Ip_I_Ip = undefined;
    try testing.expectSize(c.Ip_I_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_I_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_I_Ip(), .{ .v1 = null, .v2 = 6958, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_I_Ip());
    try testing.expectOk(c.send_Ip_I_Ip());
    try testing.expectOk(c.assert_Ip_I_Ip(.{ .v1 = null, .v2 = 6958, .v3 = null }));
}
pub export fn zig_assert_Ip_I_Ip(lv: c.Ip_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 6958) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_Ip() c.Ip_I_Ip {
    return .{ .v1 = null, .v2 = 6958, .v3 = null };
}

// From T_Snnn_xay.c:31114:31134
// struct  Ip_I_L  {
//   int *v1;
//   int v2;
//   __tsi64 v3;
// };

test "Ip_I_L layout" {
    var lv: c.Ip_I_L = undefined;
    try testing.expectSize(c.Ip_I_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_I_L C calls" {
    try testing.expectEqual(c.ret_Ip_I_L(), .{ .v1 = null, .v2 = 8160, .v3 = 1515 });
    try testing.expectOk(c.assert_ret_Ip_I_L());
    try testing.expectOk(c.send_Ip_I_L());
    try testing.expectOk(c.assert_Ip_I_L(.{ .v1 = null, .v2 = 8160, .v3 = 1515 }));
}
pub export fn zig_assert_Ip_I_L(lv: c.Ip_I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 8160) err = 2;
    if (lv.v3 != 1515) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_L() c.Ip_I_L {
    return .{ .v1 = null, .v2 = 8160, .v3 = 1515 };
}

// From T_Snnn_xay.c:31139:31159
// struct  Ip_I_S  {
//   int *v1;
//   int v2;
//   short v3;
// };

test "Ip_I_S layout" {
    var lv: c.Ip_I_S = undefined;
    try testing.expectSize(c.Ip_I_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_I_S C calls" {
    try testing.expectEqual(c.ret_Ip_I_S(), .{ .v1 = null, .v2 = 8057, .v3 = 9459 });
    try testing.expectOk(c.assert_ret_Ip_I_S());
    try testing.expectOk(c.send_Ip_I_S());
    try testing.expectOk(c.assert_Ip_I_S(.{ .v1 = null, .v2 = 8057, .v3 = 9459 }));
}
pub export fn zig_assert_Ip_I_S(lv: c.Ip_I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 8057) err = 2;
    if (lv.v3 != 9459) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_S() c.Ip_I_S {
    return .{ .v1 = null, .v2 = 8057, .v3 = 9459 };
}

// From T_Snnn_xay.c:31164:31184
// struct  Ip_I_Uc  {
//   int *v1;
//   int v2;
//   unsigned char v3;
// };

test "Ip_I_Uc layout" {
    var lv: c.Ip_I_Uc = undefined;
    try testing.expectSize(c.Ip_I_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_I_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_I_Uc(), .{ .v1 = null, .v2 = 28491, .v3 = 12 });
    try testing.expectOk(c.assert_ret_Ip_I_Uc());
    try testing.expectOk(c.send_Ip_I_Uc());
    try testing.expectOk(c.assert_Ip_I_Uc(.{ .v1 = null, .v2 = 28491, .v3 = 12 }));
}
pub export fn zig_assert_Ip_I_Uc(lv: c.Ip_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28491) err = 2;
    if (lv.v3 != 12) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_Uc() c.Ip_I_Uc {
    return .{ .v1 = null, .v2 = 28491, .v3 = 12 };
}

// From T_Snnn_xay.c:31189:31209
// struct  Ip_I_Ui  {
//   int *v1;
//   int v2;
//   unsigned int v3;
// };

test "Ip_I_Ui layout" {
    var lv: c.Ip_I_Ui = undefined;
    try testing.expectSize(c.Ip_I_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_I_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_I_Ui(), .{ .v1 = null, .v2 = 28684, .v3 = 30439 });
    try testing.expectOk(c.assert_ret_Ip_I_Ui());
    try testing.expectOk(c.send_Ip_I_Ui());
    try testing.expectOk(c.assert_Ip_I_Ui(.{ .v1 = null, .v2 = 28684, .v3 = 30439 }));
}
pub export fn zig_assert_Ip_I_Ui(lv: c.Ip_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28684) err = 2;
    if (lv.v3 != 30439) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_Ui() c.Ip_I_Ui {
    return .{ .v1 = null, .v2 = 28684, .v3 = 30439 };
}

// From T_Snnn_xay.c:31214:31234
// struct  Ip_I_Ul  {
//   int *v1;
//   int v2;
//   __tsu64 v3;
// };

test "Ip_I_Ul layout" {
    var lv: c.Ip_I_Ul = undefined;
    try testing.expectSize(c.Ip_I_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_I_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_I_Ul(), .{ .v1 = null, .v2 = 4941, .v3 = 459 });
    try testing.expectOk(c.assert_ret_Ip_I_Ul());
    try testing.expectOk(c.send_Ip_I_Ul());
    try testing.expectOk(c.assert_Ip_I_Ul(.{ .v1 = null, .v2 = 4941, .v3 = 459 }));
}
pub export fn zig_assert_Ip_I_Ul(lv: c.Ip_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4941) err = 2;
    if (lv.v3 != 459) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_Ul() c.Ip_I_Ul {
    return .{ .v1 = null, .v2 = 4941, .v3 = 459 };
}

// From T_Snnn_xay.c:31239:31259
// struct  Ip_I_Us  {
//   int *v1;
//   int v2;
//   unsigned short v3;
// };

test "Ip_I_Us layout" {
    var lv: c.Ip_I_Us = undefined;
    try testing.expectSize(c.Ip_I_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_I_Us C calls" {
    try testing.expectEqual(c.ret_Ip_I_Us(), .{ .v1 = null, .v2 = 21937, .v3 = 12140 });
    try testing.expectOk(c.assert_ret_Ip_I_Us());
    try testing.expectOk(c.send_Ip_I_Us());
    try testing.expectOk(c.assert_Ip_I_Us(.{ .v1 = null, .v2 = 21937, .v3 = 12140 }));
}
pub export fn zig_assert_Ip_I_Us(lv: c.Ip_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21937) err = 2;
    if (lv.v3 != 12140) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_Us() c.Ip_I_Us {
    return .{ .v1 = null, .v2 = 21937, .v3 = 12140 };
}

// From T_Snnn_xay.c:31264:31284
// struct  Ip_I_Vp  {
//   int *v1;
//   int v2;
//   void *v3;
// };

test "Ip_I_Vp layout" {
    var lv: c.Ip_I_Vp = undefined;
    try testing.expectSize(c.Ip_I_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_I_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_I_Vp(), .{ .v1 = null, .v2 = 10363, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_I_Vp());
    try testing.expectOk(c.send_Ip_I_Vp());
    try testing.expectOk(c.assert_Ip_I_Vp(.{ .v1 = null, .v2 = 10363, .v3 = null }));
}
pub export fn zig_assert_Ip_I_Vp(lv: c.Ip_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 10363) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_Vp() c.Ip_I_Vp {
    return .{ .v1 = null, .v2 = 10363, .v3 = null };
}

// From T_Snnn_xay.c:31289:31307
// struct  Ip_Ip  {
//   int *v1;
//   int *v2;
// };

test "Ip_Ip layout" {
    var lv: c.Ip_Ip = undefined;
    try testing.expectSize(c.Ip_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_Ip(), .{ .v1 = null, .v2 = null });
    try testing.expectOk(c.assert_ret_Ip_Ip());
    try testing.expectOk(c.send_Ip_Ip());
    try testing.expectOk(c.assert_Ip_Ip(.{ .v1 = null, .v2 = null }));
}
pub export fn zig_assert_Ip_Ip(lv: c.Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip() c.Ip_Ip {
    return .{ .v1 = null, .v2 = null };
}

// From T_Snnn_xay.c:32036:32056
// struct  Ip_Ip_C  {
//   int *v1;
//   int *v2;
//   char v3;
// };

test "Ip_Ip_C layout" {
    var lv: c.Ip_Ip_C = undefined;
    try testing.expectSize(c.Ip_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_C C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_C(), .{ .v1 = null, .v2 = null, .v3 = 114 });
    try testing.expectOk(c.assert_ret_Ip_Ip_C());
    try testing.expectOk(c.send_Ip_Ip_C());
    try testing.expectOk(c.assert_Ip_Ip_C(.{ .v1 = null, .v2 = null, .v3 = 114 }));
}
pub export fn zig_assert_Ip_Ip_C(lv: c.Ip_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 114) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_C() c.Ip_Ip_C {
    return .{ .v1 = null, .v2 = null, .v3 = 114 };
}

// From T_Snnn_xay.c:32061:32081
// struct  Ip_Ip_D  {
//   int *v1;
//   int *v2;
//   double v3;
// };

test "Ip_Ip_D layout" {
    var lv: c.Ip_Ip_D = undefined;
    try testing.expectSize(c.Ip_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_D C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_D(), .{ .v1 = null, .v2 = null, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Ip_Ip_D());
    try testing.expectOk(c.send_Ip_Ip_D());
    try testing.expectOk(c.assert_Ip_Ip_D(.{ .v1 = null, .v2 = null, .v3 = -0.25 }));
}
pub export fn zig_assert_Ip_Ip_D(lv: c.Ip_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_D() c.Ip_Ip_D {
    return .{ .v1 = null, .v2 = null, .v3 = -0.25 };
}

// From T_Snnn_xay.c:32086:32106
// struct  Ip_Ip_F  {
//   int *v1;
//   int *v2;
//   float v3;
// };

test "Ip_Ip_F layout" {
    var lv: c.Ip_Ip_F = undefined;
    try testing.expectSize(c.Ip_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_F C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_F(), .{ .v1 = null, .v2 = null, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Ip_Ip_F());
    try testing.expectOk(c.send_Ip_Ip_F());
    try testing.expectOk(c.assert_Ip_Ip_F(.{ .v1 = null, .v2 = null, .v3 = 0.875 }));
}
pub export fn zig_assert_Ip_Ip_F(lv: c.Ip_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_F() c.Ip_Ip_F {
    return .{ .v1 = null, .v2 = null, .v3 = 0.875 };
}

// From T_Snnn_xay.c:32111:32131
// struct  Ip_Ip_I  {
//   int *v1;
//   int *v2;
//   int v3;
// };

test "Ip_Ip_I layout" {
    var lv: c.Ip_Ip_I = undefined;
    try testing.expectSize(c.Ip_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_I C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_I(), .{ .v1 = null, .v2 = null, .v3 = 280 });
    try testing.expectOk(c.assert_ret_Ip_Ip_I());
    try testing.expectOk(c.send_Ip_Ip_I());
    try testing.expectOk(c.assert_Ip_Ip_I(.{ .v1 = null, .v2 = null, .v3 = 280 }));
}
pub export fn zig_assert_Ip_Ip_I(lv: c.Ip_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 280) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_I() c.Ip_Ip_I {
    return .{ .v1 = null, .v2 = null, .v3 = 280 };
}

// From T_Snnn_xay.c:32136:32156
// struct  Ip_Ip_Ip  {
//   int *v1;
//   int *v2;
//   int *v3;
// };

test "Ip_Ip_Ip layout" {
    var lv: c.Ip_Ip_Ip = undefined;
    try testing.expectSize(c.Ip_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_Ip(), .{ .v1 = null, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Ip_Ip());
    try testing.expectOk(c.send_Ip_Ip_Ip());
    try testing.expectOk(c.assert_Ip_Ip_Ip(.{ .v1 = null, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Ip_Ip_Ip(lv: c.Ip_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_Ip() c.Ip_Ip_Ip {
    return .{ .v1 = null, .v2 = null, .v3 = null };
}

// From T_Snnn_xay.c:32161:32181
// struct  Ip_Ip_L  {
//   int *v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Ip_Ip_L layout" {
    var lv: c.Ip_Ip_L = undefined;
    try testing.expectSize(c.Ip_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_L C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_L(), .{ .v1 = null, .v2 = null, .v3 = 22120 });
    try testing.expectOk(c.assert_ret_Ip_Ip_L());
    try testing.expectOk(c.send_Ip_Ip_L());
    try testing.expectOk(c.assert_Ip_Ip_L(.{ .v1 = null, .v2 = null, .v3 = 22120 }));
}
pub export fn zig_assert_Ip_Ip_L(lv: c.Ip_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 22120) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_L() c.Ip_Ip_L {
    return .{ .v1 = null, .v2 = null, .v3 = 22120 };
}

// From T_Snnn_xay.c:32186:32206
// struct  Ip_Ip_S  {
//   int *v1;
//   int *v2;
//   short v3;
// };

test "Ip_Ip_S layout" {
    var lv: c.Ip_Ip_S = undefined;
    try testing.expectSize(c.Ip_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_S C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_S(), .{ .v1 = null, .v2 = null, .v3 = 32235 });
    try testing.expectOk(c.assert_ret_Ip_Ip_S());
    try testing.expectOk(c.send_Ip_Ip_S());
    try testing.expectOk(c.assert_Ip_Ip_S(.{ .v1 = null, .v2 = null, .v3 = 32235 }));
}
pub export fn zig_assert_Ip_Ip_S(lv: c.Ip_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 32235) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_S() c.Ip_Ip_S {
    return .{ .v1 = null, .v2 = null, .v3 = 32235 };
}

// From T_Snnn_xay.c:32211:32231
// struct  Ip_Ip_Uc  {
//   int *v1;
//   int *v2;
//   unsigned char v3;
// };

test "Ip_Ip_Uc layout" {
    var lv: c.Ip_Ip_Uc = undefined;
    try testing.expectSize(c.Ip_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_Uc(), .{ .v1 = null, .v2 = null, .v3 = 78 });
    try testing.expectOk(c.assert_ret_Ip_Ip_Uc());
    try testing.expectOk(c.send_Ip_Ip_Uc());
    try testing.expectOk(c.assert_Ip_Ip_Uc(.{ .v1 = null, .v2 = null, .v3 = 78 }));
}
pub export fn zig_assert_Ip_Ip_Uc(lv: c.Ip_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 78) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_Uc() c.Ip_Ip_Uc {
    return .{ .v1 = null, .v2 = null, .v3 = 78 };
}

// From T_Snnn_xay.c:32236:32256
// struct  Ip_Ip_Ui  {
//   int *v1;
//   int *v2;
//   unsigned int v3;
// };

test "Ip_Ip_Ui layout" {
    var lv: c.Ip_Ip_Ui = undefined;
    try testing.expectSize(c.Ip_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_Ui(), .{ .v1 = null, .v2 = null, .v3 = 18551 });
    try testing.expectOk(c.assert_ret_Ip_Ip_Ui());
    try testing.expectOk(c.send_Ip_Ip_Ui());
    try testing.expectOk(c.assert_Ip_Ip_Ui(.{ .v1 = null, .v2 = null, .v3 = 18551 }));
}
pub export fn zig_assert_Ip_Ip_Ui(lv: c.Ip_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 18551) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_Ui() c.Ip_Ip_Ui {
    return .{ .v1 = null, .v2 = null, .v3 = 18551 };
}

// From T_Snnn_xay.c:32261:32281
// struct  Ip_Ip_Ul  {
//   int *v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Ip_Ip_Ul layout" {
    var lv: c.Ip_Ip_Ul = undefined;
    try testing.expectSize(c.Ip_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_Ul(), .{ .v1 = null, .v2 = null, .v3 = 15251 });
    try testing.expectOk(c.assert_ret_Ip_Ip_Ul());
    try testing.expectOk(c.send_Ip_Ip_Ul());
    try testing.expectOk(c.assert_Ip_Ip_Ul(.{ .v1 = null, .v2 = null, .v3 = 15251 }));
}
pub export fn zig_assert_Ip_Ip_Ul(lv: c.Ip_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 15251) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_Ul() c.Ip_Ip_Ul {
    return .{ .v1 = null, .v2 = null, .v3 = 15251 };
}

// From T_Snnn_xay.c:32286:32306
// struct  Ip_Ip_Us  {
//   int *v1;
//   int *v2;
//   unsigned short v3;
// };

test "Ip_Ip_Us layout" {
    var lv: c.Ip_Ip_Us = undefined;
    try testing.expectSize(c.Ip_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_Us C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_Us(), .{ .v1 = null, .v2 = null, .v3 = 5948 });
    try testing.expectOk(c.assert_ret_Ip_Ip_Us());
    try testing.expectOk(c.send_Ip_Ip_Us());
    try testing.expectOk(c.assert_Ip_Ip_Us(.{ .v1 = null, .v2 = null, .v3 = 5948 }));
}
pub export fn zig_assert_Ip_Ip_Us(lv: c.Ip_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 5948) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_Us() c.Ip_Ip_Us {
    return .{ .v1 = null, .v2 = null, .v3 = 5948 };
}

// From T_Snnn_xay.c:32311:32331
// struct  Ip_Ip_Vp  {
//   int *v1;
//   int *v2;
//   void *v3;
// };

test "Ip_Ip_Vp layout" {
    var lv: c.Ip_Ip_Vp = undefined;
    try testing.expectSize(c.Ip_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_Ip_Vp(), .{ .v1 = null, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Ip_Vp());
    try testing.expectOk(c.send_Ip_Ip_Vp());
    try testing.expectOk(c.assert_Ip_Ip_Vp(.{ .v1 = null, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Ip_Ip_Vp(lv: c.Ip_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_Vp() c.Ip_Ip_Vp {
    return .{ .v1 = null, .v2 = null, .v3 = null };
}

// From T_Snnn_xay.c:32336:32354
// struct  Ip_L  {
//   int *v1;
//   __tsi64 v2;
// };

test "Ip_L layout" {
    var lv: c.Ip_L = undefined;
    try testing.expectSize(c.Ip_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_L C calls" {
    try testing.expectEqual(c.ret_Ip_L(), .{ .v1 = null, .v2 = 21125 });
    try testing.expectOk(c.assert_ret_Ip_L());
    try testing.expectOk(c.send_Ip_L());
    try testing.expectOk(c.assert_Ip_L(.{ .v1 = null, .v2 = 21125 }));
}
pub export fn zig_assert_Ip_L(lv: c.Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21125) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L() c.Ip_L {
    return .{ .v1 = null, .v2 = 21125 };
}

// From T_Snnn_xay.c:33083:33103
// struct  Ip_L_C  {
//   int *v1;
//   __tsi64 v2;
//   char v3;
// };

test "Ip_L_C layout" {
    var lv: c.Ip_L_C = undefined;
    try testing.expectSize(c.Ip_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_C C calls" {
    try testing.expectEqual(c.ret_Ip_L_C(), .{ .v1 = null, .v2 = 1312, .v3 = 12 });
    try testing.expectOk(c.assert_ret_Ip_L_C());
    try testing.expectOk(c.send_Ip_L_C());
    try testing.expectOk(c.assert_Ip_L_C(.{ .v1 = null, .v2 = 1312, .v3 = 12 }));
}
pub export fn zig_assert_Ip_L_C(lv: c.Ip_L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1312) err = 2;
    if (lv.v3 != 12) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_C() c.Ip_L_C {
    return .{ .v1 = null, .v2 = 1312, .v3 = 12 };
}

// From T_Snnn_xay.c:33108:33128
// struct  Ip_L_D  {
//   int *v1;
//   __tsi64 v2;
//   double v3;
// };

test "Ip_L_D layout" {
    var lv: c.Ip_L_D = undefined;
    try testing.expectSize(c.Ip_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_D C calls" {
    try testing.expectEqual(c.ret_Ip_L_D(), .{ .v1 = null, .v2 = 27466, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Ip_L_D());
    try testing.expectOk(c.send_Ip_L_D());
    try testing.expectOk(c.assert_Ip_L_D(.{ .v1 = null, .v2 = 27466, .v3 = 7.0 }));
}
pub export fn zig_assert_Ip_L_D(lv: c.Ip_L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27466) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_D() c.Ip_L_D {
    return .{ .v1 = null, .v2 = 27466, .v3 = 7.0 };
}

// From T_Snnn_xay.c:33133:33153
// struct  Ip_L_F  {
//   int *v1;
//   __tsi64 v2;
//   float v3;
// };

test "Ip_L_F layout" {
    var lv: c.Ip_L_F = undefined;
    try testing.expectSize(c.Ip_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_F C calls" {
    try testing.expectEqual(c.ret_Ip_L_F(), .{ .v1 = null, .v2 = 17855, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Ip_L_F());
    try testing.expectOk(c.send_Ip_L_F());
    try testing.expectOk(c.assert_Ip_L_F(.{ .v1 = null, .v2 = 17855, .v3 = 1.0 }));
}
pub export fn zig_assert_Ip_L_F(lv: c.Ip_L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 17855) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_F() c.Ip_L_F {
    return .{ .v1 = null, .v2 = 17855, .v3 = 1.0 };
}

// From T_Snnn_xay.c:33158:33178
// struct  Ip_L_I  {
//   int *v1;
//   __tsi64 v2;
//   int v3;
// };

test "Ip_L_I layout" {
    var lv: c.Ip_L_I = undefined;
    try testing.expectSize(c.Ip_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_I C calls" {
    try testing.expectEqual(c.ret_Ip_L_I(), .{ .v1 = null, .v2 = 7654, .v3 = 10911 });
    try testing.expectOk(c.assert_ret_Ip_L_I());
    try testing.expectOk(c.send_Ip_L_I());
    try testing.expectOk(c.assert_Ip_L_I(.{ .v1 = null, .v2 = 7654, .v3 = 10911 }));
}
pub export fn zig_assert_Ip_L_I(lv: c.Ip_L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7654) err = 2;
    if (lv.v3 != 10911) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_I() c.Ip_L_I {
    return .{ .v1 = null, .v2 = 7654, .v3 = 10911 };
}

// From T_Snnn_xay.c:33183:33203
// struct  Ip_L_Ip  {
//   int *v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Ip_L_Ip layout" {
    var lv: c.Ip_L_Ip = undefined;
    try testing.expectSize(c.Ip_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_L_Ip(), .{ .v1 = null, .v2 = 26859, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_L_Ip());
    try testing.expectOk(c.send_Ip_L_Ip());
    try testing.expectOk(c.assert_Ip_L_Ip(.{ .v1 = null, .v2 = 26859, .v3 = null }));
}
pub export fn zig_assert_Ip_L_Ip(lv: c.Ip_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 26859) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_Ip() c.Ip_L_Ip {
    return .{ .v1 = null, .v2 = 26859, .v3 = null };
}

// From T_Snnn_xay.c:33208:33228
// struct  Ip_L_L  {
//   int *v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Ip_L_L layout" {
    var lv: c.Ip_L_L = undefined;
    try testing.expectSize(c.Ip_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_L C calls" {
    try testing.expectEqual(c.ret_Ip_L_L(), .{ .v1 = null, .v2 = 18638, .v3 = 12483 });
    try testing.expectOk(c.assert_ret_Ip_L_L());
    try testing.expectOk(c.send_Ip_L_L());
    try testing.expectOk(c.assert_Ip_L_L(.{ .v1 = null, .v2 = 18638, .v3 = 12483 }));
}
pub export fn zig_assert_Ip_L_L(lv: c.Ip_L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 18638) err = 2;
    if (lv.v3 != 12483) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_L() c.Ip_L_L {
    return .{ .v1 = null, .v2 = 18638, .v3 = 12483 };
}

// From T_Snnn_xay.c:33233:33253
// struct  Ip_L_S  {
//   int *v1;
//   __tsi64 v2;
//   short v3;
// };

test "Ip_L_S layout" {
    var lv: c.Ip_L_S = undefined;
    try testing.expectSize(c.Ip_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_S C calls" {
    try testing.expectEqual(c.ret_Ip_L_S(), .{ .v1 = null, .v2 = 28984, .v3 = 32672 });
    try testing.expectOk(c.assert_ret_Ip_L_S());
    try testing.expectOk(c.send_Ip_L_S());
    try testing.expectOk(c.assert_Ip_L_S(.{ .v1 = null, .v2 = 28984, .v3 = 32672 }));
}
pub export fn zig_assert_Ip_L_S(lv: c.Ip_L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28984) err = 2;
    if (lv.v3 != 32672) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_S() c.Ip_L_S {
    return .{ .v1 = null, .v2 = 28984, .v3 = 32672 };
}

// From T_Snnn_xay.c:33258:33278
// struct  Ip_L_Uc  {
//   int *v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Ip_L_Uc layout" {
    var lv: c.Ip_L_Uc = undefined;
    try testing.expectSize(c.Ip_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_L_Uc(), .{ .v1 = null, .v2 = 9817, .v3 = 64 });
    try testing.expectOk(c.assert_ret_Ip_L_Uc());
    try testing.expectOk(c.send_Ip_L_Uc());
    try testing.expectOk(c.assert_Ip_L_Uc(.{ .v1 = null, .v2 = 9817, .v3 = 64 }));
}
pub export fn zig_assert_Ip_L_Uc(lv: c.Ip_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 9817) err = 2;
    if (lv.v3 != 64) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_Uc() c.Ip_L_Uc {
    return .{ .v1 = null, .v2 = 9817, .v3 = 64 };
}

// From T_Snnn_xay.c:33283:33303
// struct  Ip_L_Ui  {
//   int *v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Ip_L_Ui layout" {
    var lv: c.Ip_L_Ui = undefined;
    try testing.expectSize(c.Ip_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_L_Ui(), .{ .v1 = null, .v2 = 28354, .v3 = 7440 });
    try testing.expectOk(c.assert_ret_Ip_L_Ui());
    try testing.expectOk(c.send_Ip_L_Ui());
    try testing.expectOk(c.assert_Ip_L_Ui(.{ .v1 = null, .v2 = 28354, .v3 = 7440 }));
}
pub export fn zig_assert_Ip_L_Ui(lv: c.Ip_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28354) err = 2;
    if (lv.v3 != 7440) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_Ui() c.Ip_L_Ui {
    return .{ .v1 = null, .v2 = 28354, .v3 = 7440 };
}

// From T_Snnn_xay.c:33308:33328
// struct  Ip_L_Ul  {
//   int *v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Ip_L_Ul layout" {
    var lv: c.Ip_L_Ul = undefined;
    try testing.expectSize(c.Ip_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_L_Ul(), .{ .v1 = null, .v2 = 7711, .v3 = 11119 });
    try testing.expectOk(c.assert_ret_Ip_L_Ul());
    try testing.expectOk(c.send_Ip_L_Ul());
    try testing.expectOk(c.assert_Ip_L_Ul(.{ .v1 = null, .v2 = 7711, .v3 = 11119 }));
}
pub export fn zig_assert_Ip_L_Ul(lv: c.Ip_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7711) err = 2;
    if (lv.v3 != 11119) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_Ul() c.Ip_L_Ul {
    return .{ .v1 = null, .v2 = 7711, .v3 = 11119 };
}

// From T_Snnn_xay.c:33333:33353
// struct  Ip_L_Us  {
//   int *v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Ip_L_Us layout" {
    var lv: c.Ip_L_Us = undefined;
    try testing.expectSize(c.Ip_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_Us C calls" {
    try testing.expectEqual(c.ret_Ip_L_Us(), .{ .v1 = null, .v2 = 11565, .v3 = 21325 });
    try testing.expectOk(c.assert_ret_Ip_L_Us());
    try testing.expectOk(c.send_Ip_L_Us());
    try testing.expectOk(c.assert_Ip_L_Us(.{ .v1 = null, .v2 = 11565, .v3 = 21325 }));
}
pub export fn zig_assert_Ip_L_Us(lv: c.Ip_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 11565) err = 2;
    if (lv.v3 != 21325) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_Us() c.Ip_L_Us {
    return .{ .v1 = null, .v2 = 11565, .v3 = 21325 };
}

// From T_Snnn_xay.c:33358:33378
// struct  Ip_L_Vp  {
//   int *v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Ip_L_Vp layout" {
    var lv: c.Ip_L_Vp = undefined;
    try testing.expectSize(c.Ip_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_L_Vp(), .{ .v1 = null, .v2 = 5895, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_L_Vp());
    try testing.expectOk(c.send_Ip_L_Vp());
    try testing.expectOk(c.assert_Ip_L_Vp(.{ .v1 = null, .v2 = 5895, .v3 = null }));
}
pub export fn zig_assert_Ip_L_Vp(lv: c.Ip_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 5895) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_Vp() c.Ip_L_Vp {
    return .{ .v1 = null, .v2 = 5895, .v3 = null };
}

// From T_Snnn_xay.c:33383:33401
// struct  Ip_S  {
//   int *v1;
//   short v2;
// };

test "Ip_S layout" {
    var lv: c.Ip_S = undefined;
    try testing.expectSize(c.Ip_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_S C calls" {
    try testing.expectEqual(c.ret_Ip_S(), .{ .v1 = null, .v2 = 9691 });
    try testing.expectOk(c.assert_ret_Ip_S());
    try testing.expectOk(c.send_Ip_S());
    try testing.expectOk(c.assert_Ip_S(.{ .v1 = null, .v2 = 9691 }));
}
pub export fn zig_assert_Ip_S(lv: c.Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 9691) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S() c.Ip_S {
    return .{ .v1 = null, .v2 = 9691 };
}

// From T_Snnn_xay.c:34130:34150
// struct  Ip_S_C  {
//   int *v1;
//   short v2;
//   char v3;
// };

test "Ip_S_C layout" {
    var lv: c.Ip_S_C = undefined;
    try testing.expectSize(c.Ip_S_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_S_C C calls" {
    try testing.expectEqual(c.ret_Ip_S_C(), .{ .v1 = null, .v2 = 26200, .v3 = 112 });
    try testing.expectOk(c.assert_ret_Ip_S_C());
    try testing.expectOk(c.send_Ip_S_C());
    try testing.expectOk(c.assert_Ip_S_C(.{ .v1 = null, .v2 = 26200, .v3 = 112 }));
}
pub export fn zig_assert_Ip_S_C(lv: c.Ip_S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 26200) err = 2;
    if (lv.v3 != 112) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_C() c.Ip_S_C {
    return .{ .v1 = null, .v2 = 26200, .v3 = 112 };
}

// From T_Snnn_xay.c:34155:34175
// struct  Ip_S_D  {
//   int *v1;
//   short v2;
//   double v3;
// };

test "Ip_S_D layout" {
    var lv: c.Ip_S_D = undefined;
    try testing.expectSize(c.Ip_S_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_S_D C calls" {
    try testing.expectEqual(c.ret_Ip_S_D(), .{ .v1 = null, .v2 = 10971, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Ip_S_D());
    try testing.expectOk(c.send_Ip_S_D());
    try testing.expectOk(c.assert_Ip_S_D(.{ .v1 = null, .v2 = 10971, .v3 = -2.125 }));
}
pub export fn zig_assert_Ip_S_D(lv: c.Ip_S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 10971) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_D() c.Ip_S_D {
    return .{ .v1 = null, .v2 = 10971, .v3 = -2.125 };
}

// From T_Snnn_xay.c:34180:34200
// struct  Ip_S_F  {
//   int *v1;
//   short v2;
//   float v3;
// };

test "Ip_S_F layout" {
    var lv: c.Ip_S_F = undefined;
    try testing.expectSize(c.Ip_S_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_S_F C calls" {
    try testing.expectEqual(c.ret_Ip_S_F(), .{ .v1 = null, .v2 = 6508, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Ip_S_F());
    try testing.expectOk(c.send_Ip_S_F());
    try testing.expectOk(c.assert_Ip_S_F(.{ .v1 = null, .v2 = 6508, .v3 = -0.25 }));
}
pub export fn zig_assert_Ip_S_F(lv: c.Ip_S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 6508) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_F() c.Ip_S_F {
    return .{ .v1 = null, .v2 = 6508, .v3 = -0.25 };
}

// From T_Snnn_xay.c:34205:34225
// struct  Ip_S_I  {
//   int *v1;
//   short v2;
//   int v3;
// };

test "Ip_S_I layout" {
    var lv: c.Ip_S_I = undefined;
    try testing.expectSize(c.Ip_S_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_S_I C calls" {
    try testing.expectEqual(c.ret_Ip_S_I(), .{ .v1 = null, .v2 = 10414, .v3 = 28549 });
    try testing.expectOk(c.assert_ret_Ip_S_I());
    try testing.expectOk(c.send_Ip_S_I());
    try testing.expectOk(c.assert_Ip_S_I(.{ .v1 = null, .v2 = 10414, .v3 = 28549 }));
}
pub export fn zig_assert_Ip_S_I(lv: c.Ip_S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 10414) err = 2;
    if (lv.v3 != 28549) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_I() c.Ip_S_I {
    return .{ .v1 = null, .v2 = 10414, .v3 = 28549 };
}

// From T_Snnn_xay.c:34230:34250
// struct  Ip_S_Ip  {
//   int *v1;
//   short v2;
//   int *v3;
// };

test "Ip_S_Ip layout" {
    var lv: c.Ip_S_Ip = undefined;
    try testing.expectSize(c.Ip_S_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_S_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_S_Ip(), .{ .v1 = null, .v2 = 15406, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_S_Ip());
    try testing.expectOk(c.send_Ip_S_Ip());
    try testing.expectOk(c.assert_Ip_S_Ip(.{ .v1 = null, .v2 = 15406, .v3 = null }));
}
pub export fn zig_assert_Ip_S_Ip(lv: c.Ip_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15406) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_Ip() c.Ip_S_Ip {
    return .{ .v1 = null, .v2 = 15406, .v3 = null };
}

// From T_Snnn_xay.c:34255:34275
// struct  Ip_S_L  {
//   int *v1;
//   short v2;
//   __tsi64 v3;
// };

test "Ip_S_L layout" {
    var lv: c.Ip_S_L = undefined;
    try testing.expectSize(c.Ip_S_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_S_L C calls" {
    try testing.expectEqual(c.ret_Ip_S_L(), .{ .v1 = null, .v2 = 19761, .v3 = 19245 });
    try testing.expectOk(c.assert_ret_Ip_S_L());
    try testing.expectOk(c.send_Ip_S_L());
    try testing.expectOk(c.assert_Ip_S_L(.{ .v1 = null, .v2 = 19761, .v3 = 19245 }));
}
pub export fn zig_assert_Ip_S_L(lv: c.Ip_S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19761) err = 2;
    if (lv.v3 != 19245) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_L() c.Ip_S_L {
    return .{ .v1 = null, .v2 = 19761, .v3 = 19245 };
}

// From T_Snnn_xay.c:34280:34300
// struct  Ip_S_S  {
//   int *v1;
//   short v2;
//   short v3;
// };

test "Ip_S_S layout" {
    var lv: c.Ip_S_S = undefined;
    try testing.expectSize(c.Ip_S_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_S_S C calls" {
    try testing.expectEqual(c.ret_Ip_S_S(), .{ .v1 = null, .v2 = 18559, .v3 = 4079 });
    try testing.expectOk(c.assert_ret_Ip_S_S());
    try testing.expectOk(c.send_Ip_S_S());
    try testing.expectOk(c.assert_Ip_S_S(.{ .v1 = null, .v2 = 18559, .v3 = 4079 }));
}
pub export fn zig_assert_Ip_S_S(lv: c.Ip_S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 18559) err = 2;
    if (lv.v3 != 4079) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_S() c.Ip_S_S {
    return .{ .v1 = null, .v2 = 18559, .v3 = 4079 };
}

// From T_Snnn_xay.c:34305:34325
// struct  Ip_S_Uc  {
//   int *v1;
//   short v2;
//   unsigned char v3;
// };

test "Ip_S_Uc layout" {
    var lv: c.Ip_S_Uc = undefined;
    try testing.expectSize(c.Ip_S_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_S_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_S_Uc(), .{ .v1 = null, .v2 = 25806, .v3 = 10 });
    try testing.expectOk(c.assert_ret_Ip_S_Uc());
    try testing.expectOk(c.send_Ip_S_Uc());
    try testing.expectOk(c.assert_Ip_S_Uc(.{ .v1 = null, .v2 = 25806, .v3 = 10 }));
}
pub export fn zig_assert_Ip_S_Uc(lv: c.Ip_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 25806) err = 2;
    if (lv.v3 != 10) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_Uc() c.Ip_S_Uc {
    return .{ .v1 = null, .v2 = 25806, .v3 = 10 };
}

// From T_Snnn_xay.c:34330:34350
// struct  Ip_S_Ui  {
//   int *v1;
//   short v2;
//   unsigned int v3;
// };

test "Ip_S_Ui layout" {
    var lv: c.Ip_S_Ui = undefined;
    try testing.expectSize(c.Ip_S_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_S_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_S_Ui(), .{ .v1 = null, .v2 = 23886, .v3 = 4382 });
    try testing.expectOk(c.assert_ret_Ip_S_Ui());
    try testing.expectOk(c.send_Ip_S_Ui());
    try testing.expectOk(c.assert_Ip_S_Ui(.{ .v1 = null, .v2 = 23886, .v3 = 4382 }));
}
pub export fn zig_assert_Ip_S_Ui(lv: c.Ip_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 23886) err = 2;
    if (lv.v3 != 4382) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_Ui() c.Ip_S_Ui {
    return .{ .v1 = null, .v2 = 23886, .v3 = 4382 };
}

// From T_Snnn_xay.c:34355:34375
// struct  Ip_S_Ul  {
//   int *v1;
//   short v2;
//   __tsu64 v3;
// };

test "Ip_S_Ul layout" {
    var lv: c.Ip_S_Ul = undefined;
    try testing.expectSize(c.Ip_S_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_S_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_S_Ul(), .{ .v1 = null, .v2 = 15124, .v3 = 473 });
    try testing.expectOk(c.assert_ret_Ip_S_Ul());
    try testing.expectOk(c.send_Ip_S_Ul());
    try testing.expectOk(c.assert_Ip_S_Ul(.{ .v1 = null, .v2 = 15124, .v3 = 473 }));
}
pub export fn zig_assert_Ip_S_Ul(lv: c.Ip_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15124) err = 2;
    if (lv.v3 != 473) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_Ul() c.Ip_S_Ul {
    return .{ .v1 = null, .v2 = 15124, .v3 = 473 };
}

// From T_Snnn_xay.c:34380:34400
// struct  Ip_S_Us  {
//   int *v1;
//   short v2;
//   unsigned short v3;
// };

test "Ip_S_Us layout" {
    var lv: c.Ip_S_Us = undefined;
    try testing.expectSize(c.Ip_S_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_S_Us C calls" {
    try testing.expectEqual(c.ret_Ip_S_Us(), .{ .v1 = null, .v2 = 152, .v3 = 18830 });
    try testing.expectOk(c.assert_ret_Ip_S_Us());
    try testing.expectOk(c.send_Ip_S_Us());
    try testing.expectOk(c.assert_Ip_S_Us(.{ .v1 = null, .v2 = 152, .v3 = 18830 }));
}
pub export fn zig_assert_Ip_S_Us(lv: c.Ip_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 152) err = 2;
    if (lv.v3 != 18830) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_Us() c.Ip_S_Us {
    return .{ .v1 = null, .v2 = 152, .v3 = 18830 };
}

// From T_Snnn_xay.c:34405:34425
// struct  Ip_S_Vp  {
//   int *v1;
//   short v2;
//   void *v3;
// };

test "Ip_S_Vp layout" {
    var lv: c.Ip_S_Vp = undefined;
    try testing.expectSize(c.Ip_S_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_S_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_S_Vp(), .{ .v1 = null, .v2 = 15723, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_S_Vp());
    try testing.expectOk(c.send_Ip_S_Vp());
    try testing.expectOk(c.assert_Ip_S_Vp(.{ .v1 = null, .v2 = 15723, .v3 = null }));
}
pub export fn zig_assert_Ip_S_Vp(lv: c.Ip_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15723) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_Vp() c.Ip_S_Vp {
    return .{ .v1 = null, .v2 = 15723, .v3 = null };
}

// From T_Snnn_xay.c:34430:34448
// struct  Ip_Uc  {
//   int *v1;
//   unsigned char v2;
// };

test "Ip_Uc layout" {
    var lv: c.Ip_Uc = undefined;
    try testing.expectSize(c.Ip_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_Uc(), .{ .v1 = null, .v2 = 23 });
    try testing.expectOk(c.assert_ret_Ip_Uc());
    try testing.expectOk(c.send_Ip_Uc());
    try testing.expectOk(c.assert_Ip_Uc(.{ .v1 = null, .v2 = 23 }));
}
pub export fn zig_assert_Ip_Uc(lv: c.Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 23) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc() c.Ip_Uc {
    return .{ .v1 = null, .v2 = 23 };
}

// From T_Snnn_xay.c:35177:35197
// struct  Ip_Uc_C  {
//   int *v1;
//   unsigned char v2;
//   char v3;
// };

test "Ip_Uc_C layout" {
    var lv: c.Ip_Uc_C = undefined;
    try testing.expectSize(c.Ip_Uc_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Ip_Uc_C C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_C(), .{ .v1 = null, .v2 = 60, .v3 = 27 });
    try testing.expectOk(c.assert_ret_Ip_Uc_C());
    try testing.expectOk(c.send_Ip_Uc_C());
    try testing.expectOk(c.assert_Ip_Uc_C(.{ .v1 = null, .v2 = 60, .v3 = 27 }));
}
pub export fn zig_assert_Ip_Uc_C(lv: c.Ip_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 60) err = 2;
    if (lv.v3 != 27) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_C() c.Ip_Uc_C {
    return .{ .v1 = null, .v2 = 60, .v3 = 27 };
}

// From T_Snnn_xay.c:35202:35222
// struct  Ip_Uc_D  {
//   int *v1;
//   unsigned char v2;
//   double v3;
// };

test "Ip_Uc_D layout" {
    var lv: c.Ip_Uc_D = undefined;
    try testing.expectSize(c.Ip_Uc_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Uc_D C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_D(), .{ .v1 = null, .v2 = 100, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Ip_Uc_D());
    try testing.expectOk(c.send_Ip_Uc_D());
    try testing.expectOk(c.assert_Ip_Uc_D(.{ .v1 = null, .v2 = 100, .v3 = 1.0 }));
}
pub export fn zig_assert_Ip_Uc_D(lv: c.Ip_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 100) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_D() c.Ip_Uc_D {
    return .{ .v1 = null, .v2 = 100, .v3 = 1.0 };
}

// From T_Snnn_xay.c:35227:35247
// struct  Ip_Uc_F  {
//   int *v1;
//   unsigned char v2;
//   float v3;
// };

test "Ip_Uc_F layout" {
    var lv: c.Ip_Uc_F = undefined;
    try testing.expectSize(c.Ip_Uc_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Uc_F C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_F(), .{ .v1 = null, .v2 = 30, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Ip_Uc_F());
    try testing.expectOk(c.send_Ip_Uc_F());
    try testing.expectOk(c.assert_Ip_Uc_F(.{ .v1 = null, .v2 = 30, .v3 = 0.875 }));
}
pub export fn zig_assert_Ip_Uc_F(lv: c.Ip_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 30) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_F() c.Ip_Uc_F {
    return .{ .v1 = null, .v2 = 30, .v3 = 0.875 };
}

// From T_Snnn_xay.c:35252:35272
// struct  Ip_Uc_I  {
//   int *v1;
//   unsigned char v2;
//   int v3;
// };

test "Ip_Uc_I layout" {
    var lv: c.Ip_Uc_I = undefined;
    try testing.expectSize(c.Ip_Uc_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Uc_I C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_I(), .{ .v1 = null, .v2 = 80, .v3 = 21664 });
    try testing.expectOk(c.assert_ret_Ip_Uc_I());
    try testing.expectOk(c.send_Ip_Uc_I());
    try testing.expectOk(c.assert_Ip_Uc_I(.{ .v1 = null, .v2 = 80, .v3 = 21664 }));
}
pub export fn zig_assert_Ip_Uc_I(lv: c.Ip_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 80) err = 2;
    if (lv.v3 != 21664) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_I() c.Ip_Uc_I {
    return .{ .v1 = null, .v2 = 80, .v3 = 21664 };
}

// From T_Snnn_xay.c:35277:35297
// struct  Ip_Uc_Ip  {
//   int *v1;
//   unsigned char v2;
//   int *v3;
// };

test "Ip_Uc_Ip layout" {
    var lv: c.Ip_Uc_Ip = undefined;
    try testing.expectSize(c.Ip_Uc_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Uc_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_Ip(), .{ .v1 = null, .v2 = 48, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Uc_Ip());
    try testing.expectOk(c.send_Ip_Uc_Ip());
    try testing.expectOk(c.assert_Ip_Uc_Ip(.{ .v1 = null, .v2 = 48, .v3 = null }));
}
pub export fn zig_assert_Ip_Uc_Ip(lv: c.Ip_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 48) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_Ip() c.Ip_Uc_Ip {
    return .{ .v1 = null, .v2 = 48, .v3 = null };
}

// From T_Snnn_xay.c:35302:35322
// struct  Ip_Uc_L  {
//   int *v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Ip_Uc_L layout" {
    var lv: c.Ip_Uc_L = undefined;
    try testing.expectSize(c.Ip_Uc_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Uc_L C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_L(), .{ .v1 = null, .v2 = 81, .v3 = 23135 });
    try testing.expectOk(c.assert_ret_Ip_Uc_L());
    try testing.expectOk(c.send_Ip_Uc_L());
    try testing.expectOk(c.assert_Ip_Uc_L(.{ .v1 = null, .v2 = 81, .v3 = 23135 }));
}
pub export fn zig_assert_Ip_Uc_L(lv: c.Ip_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 81) err = 2;
    if (lv.v3 != 23135) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_L() c.Ip_Uc_L {
    return .{ .v1 = null, .v2 = 81, .v3 = 23135 };
}

// From T_Snnn_xay.c:35327:35347
// struct  Ip_Uc_S  {
//   int *v1;
//   unsigned char v2;
//   short v3;
// };

test "Ip_Uc_S layout" {
    var lv: c.Ip_Uc_S = undefined;
    try testing.expectSize(c.Ip_Uc_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_Uc_S C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_S(), .{ .v1 = null, .v2 = 79, .v3 = 16891 });
    try testing.expectOk(c.assert_ret_Ip_Uc_S());
    try testing.expectOk(c.send_Ip_Uc_S());
    try testing.expectOk(c.assert_Ip_Uc_S(.{ .v1 = null, .v2 = 79, .v3 = 16891 }));
}
pub export fn zig_assert_Ip_Uc_S(lv: c.Ip_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 79) err = 2;
    if (lv.v3 != 16891) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_S() c.Ip_Uc_S {
    return .{ .v1 = null, .v2 = 79, .v3 = 16891 };
}

// From T_Snnn_xay.c:35352:35372
// struct  Ip_Uc_Uc  {
//   int *v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Ip_Uc_Uc layout" {
    var lv: c.Ip_Uc_Uc = undefined;
    try testing.expectSize(c.Ip_Uc_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Ip_Uc_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_Uc(), .{ .v1 = null, .v2 = 8, .v3 = 27 });
    try testing.expectOk(c.assert_ret_Ip_Uc_Uc());
    try testing.expectOk(c.send_Ip_Uc_Uc());
    try testing.expectOk(c.assert_Ip_Uc_Uc(.{ .v1 = null, .v2 = 8, .v3 = 27 }));
}
pub export fn zig_assert_Ip_Uc_Uc(lv: c.Ip_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 8) err = 2;
    if (lv.v3 != 27) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_Uc() c.Ip_Uc_Uc {
    return .{ .v1 = null, .v2 = 8, .v3 = 27 };
}

// From T_Snnn_xay.c:35377:35397
// struct  Ip_Uc_Ui  {
//   int *v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Ip_Uc_Ui layout" {
    var lv: c.Ip_Uc_Ui = undefined;
    try testing.expectSize(c.Ip_Uc_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Uc_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_Ui(), .{ .v1 = null, .v2 = 49, .v3 = 23504 });
    try testing.expectOk(c.assert_ret_Ip_Uc_Ui());
    try testing.expectOk(c.send_Ip_Uc_Ui());
    try testing.expectOk(c.assert_Ip_Uc_Ui(.{ .v1 = null, .v2 = 49, .v3 = 23504 }));
}
pub export fn zig_assert_Ip_Uc_Ui(lv: c.Ip_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 49) err = 2;
    if (lv.v3 != 23504) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_Ui() c.Ip_Uc_Ui {
    return .{ .v1 = null, .v2 = 49, .v3 = 23504 };
}

// From T_Snnn_xay.c:35402:35422
// struct  Ip_Uc_Ul  {
//   int *v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Ip_Uc_Ul layout" {
    var lv: c.Ip_Uc_Ul = undefined;
    try testing.expectSize(c.Ip_Uc_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Uc_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_Ul(), .{ .v1 = null, .v2 = 77, .v3 = 14264 });
    try testing.expectOk(c.assert_ret_Ip_Uc_Ul());
    try testing.expectOk(c.send_Ip_Uc_Ul());
    try testing.expectOk(c.assert_Ip_Uc_Ul(.{ .v1 = null, .v2 = 77, .v3 = 14264 }));
}
pub export fn zig_assert_Ip_Uc_Ul(lv: c.Ip_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 77) err = 2;
    if (lv.v3 != 14264) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_Ul() c.Ip_Uc_Ul {
    return .{ .v1 = null, .v2 = 77, .v3 = 14264 };
}

// From T_Snnn_xay.c:35427:35447
// struct  Ip_Uc_Us  {
//   int *v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Ip_Uc_Us layout" {
    var lv: c.Ip_Uc_Us = undefined;
    try testing.expectSize(c.Ip_Uc_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_Uc_Us C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_Us(), .{ .v1 = null, .v2 = 92, .v3 = 21738 });
    try testing.expectOk(c.assert_ret_Ip_Uc_Us());
    try testing.expectOk(c.send_Ip_Uc_Us());
    try testing.expectOk(c.assert_Ip_Uc_Us(.{ .v1 = null, .v2 = 92, .v3 = 21738 }));
}
pub export fn zig_assert_Ip_Uc_Us(lv: c.Ip_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 92) err = 2;
    if (lv.v3 != 21738) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_Us() c.Ip_Uc_Us {
    return .{ .v1 = null, .v2 = 92, .v3 = 21738 };
}

// From T_Snnn_xay.c:35452:35472
// struct  Ip_Uc_Vp  {
//   int *v1;
//   unsigned char v2;
//   void *v3;
// };

test "Ip_Uc_Vp layout" {
    var lv: c.Ip_Uc_Vp = undefined;
    try testing.expectSize(c.Ip_Uc_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Uc_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_Uc_Vp(), .{ .v1 = null, .v2 = 9, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Uc_Vp());
    try testing.expectOk(c.send_Ip_Uc_Vp());
    try testing.expectOk(c.assert_Ip_Uc_Vp(.{ .v1 = null, .v2 = 9, .v3 = null }));
}
pub export fn zig_assert_Ip_Uc_Vp(lv: c.Ip_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 9) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_Vp() c.Ip_Uc_Vp {
    return .{ .v1 = null, .v2 = 9, .v3 = null };
}

// From T_Snnn_xay.c:35477:35495
// struct  Ip_Ui  {
//   int *v1;
//   unsigned int v2;
// };

test "Ip_Ui layout" {
    var lv: c.Ip_Ui = undefined;
    try testing.expectSize(c.Ip_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_Ui(), .{ .v1 = null, .v2 = 13021 });
    try testing.expectOk(c.assert_ret_Ip_Ui());
    try testing.expectOk(c.send_Ip_Ui());
    try testing.expectOk(c.assert_Ip_Ui(.{ .v1 = null, .v2 = 13021 }));
}
pub export fn zig_assert_Ip_Ui(lv: c.Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 13021) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui() c.Ip_Ui {
    return .{ .v1 = null, .v2 = 13021 };
}

// From T_Snnn_xay.c:36224:36244
// struct  Ip_Ui_C  {
//   int *v1;
//   unsigned int v2;
//   char v3;
// };

test "Ip_Ui_C layout" {
    var lv: c.Ip_Ui_C = undefined;
    try testing.expectSize(c.Ip_Ui_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Ui_C C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_C(), .{ .v1 = null, .v2 = 19997, .v3 = 43 });
    try testing.expectOk(c.assert_ret_Ip_Ui_C());
    try testing.expectOk(c.send_Ip_Ui_C());
    try testing.expectOk(c.assert_Ip_Ui_C(.{ .v1 = null, .v2 = 19997, .v3 = 43 }));
}
pub export fn zig_assert_Ip_Ui_C(lv: c.Ip_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19997) err = 2;
    if (lv.v3 != 43) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_C() c.Ip_Ui_C {
    return .{ .v1 = null, .v2 = 19997, .v3 = 43 };
}

// From T_Snnn_xay.c:36249:36269
// struct  Ip_Ui_D  {
//   int *v1;
//   unsigned int v2;
//   double v3;
// };

test "Ip_Ui_D layout" {
    var lv: c.Ip_Ui_D = undefined;
    try testing.expectSize(c.Ip_Ui_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ui_D C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_D(), .{ .v1 = null, .v2 = 21799, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Ip_Ui_D());
    try testing.expectOk(c.send_Ip_Ui_D());
    try testing.expectOk(c.assert_Ip_Ui_D(.{ .v1 = null, .v2 = 21799, .v3 = -0.25 }));
}
pub export fn zig_assert_Ip_Ui_D(lv: c.Ip_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21799) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_D() c.Ip_Ui_D {
    return .{ .v1 = null, .v2 = 21799, .v3 = -0.25 };
}

// From T_Snnn_xay.c:36274:36294
// struct  Ip_Ui_F  {
//   int *v1;
//   unsigned int v2;
//   float v3;
// };

test "Ip_Ui_F layout" {
    var lv: c.Ip_Ui_F = undefined;
    try testing.expectSize(c.Ip_Ui_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Ui_F C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_F(), .{ .v1 = null, .v2 = 5378, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Ip_Ui_F());
    try testing.expectOk(c.send_Ip_Ui_F());
    try testing.expectOk(c.assert_Ip_Ui_F(.{ .v1 = null, .v2 = 5378, .v3 = -2.125 }));
}
pub export fn zig_assert_Ip_Ui_F(lv: c.Ip_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 5378) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_F() c.Ip_Ui_F {
    return .{ .v1 = null, .v2 = 5378, .v3 = -2.125 };
}

// From T_Snnn_xay.c:36299:36319
// struct  Ip_Ui_I  {
//   int *v1;
//   unsigned int v2;
//   int v3;
// };

test "Ip_Ui_I layout" {
    var lv: c.Ip_Ui_I = undefined;
    try testing.expectSize(c.Ip_Ui_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Ui_I C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_I(), .{ .v1 = null, .v2 = 25809, .v3 = 23075 });
    try testing.expectOk(c.assert_ret_Ip_Ui_I());
    try testing.expectOk(c.send_Ip_Ui_I());
    try testing.expectOk(c.assert_Ip_Ui_I(.{ .v1 = null, .v2 = 25809, .v3 = 23075 }));
}
pub export fn zig_assert_Ip_Ui_I(lv: c.Ip_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 25809) err = 2;
    if (lv.v3 != 23075) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_I() c.Ip_Ui_I {
    return .{ .v1 = null, .v2 = 25809, .v3 = 23075 };
}

// From T_Snnn_xay.c:36324:36344
// struct  Ip_Ui_Ip  {
//   int *v1;
//   unsigned int v2;
//   int *v3;
// };

test "Ip_Ui_Ip layout" {
    var lv: c.Ip_Ui_Ip = undefined;
    try testing.expectSize(c.Ip_Ui_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ui_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_Ip(), .{ .v1 = null, .v2 = 6521, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Ui_Ip());
    try testing.expectOk(c.send_Ip_Ui_Ip());
    try testing.expectOk(c.assert_Ip_Ui_Ip(.{ .v1 = null, .v2 = 6521, .v3 = null }));
}
pub export fn zig_assert_Ip_Ui_Ip(lv: c.Ip_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 6521) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_Ip() c.Ip_Ui_Ip {
    return .{ .v1 = null, .v2 = 6521, .v3 = null };
}

// From T_Snnn_xay.c:36349:36369
// struct  Ip_Ui_L  {
//   int *v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Ip_Ui_L layout" {
    var lv: c.Ip_Ui_L = undefined;
    try testing.expectSize(c.Ip_Ui_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ui_L C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_L(), .{ .v1 = null, .v2 = 14878, .v3 = 1754 });
    try testing.expectOk(c.assert_ret_Ip_Ui_L());
    try testing.expectOk(c.send_Ip_Ui_L());
    try testing.expectOk(c.assert_Ip_Ui_L(.{ .v1 = null, .v2 = 14878, .v3 = 1754 }));
}
pub export fn zig_assert_Ip_Ui_L(lv: c.Ip_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 14878) err = 2;
    if (lv.v3 != 1754) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_L() c.Ip_Ui_L {
    return .{ .v1 = null, .v2 = 14878, .v3 = 1754 };
}

// From T_Snnn_xay.c:36374:36394
// struct  Ip_Ui_S  {
//   int *v1;
//   unsigned int v2;
//   short v3;
// };

test "Ip_Ui_S layout" {
    var lv: c.Ip_Ui_S = undefined;
    try testing.expectSize(c.Ip_Ui_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Ui_S C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_S(), .{ .v1 = null, .v2 = 16653, .v3 = 15118 });
    try testing.expectOk(c.assert_ret_Ip_Ui_S());
    try testing.expectOk(c.send_Ip_Ui_S());
    try testing.expectOk(c.assert_Ip_Ui_S(.{ .v1 = null, .v2 = 16653, .v3 = 15118 }));
}
pub export fn zig_assert_Ip_Ui_S(lv: c.Ip_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 16653) err = 2;
    if (lv.v3 != 15118) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_S() c.Ip_Ui_S {
    return .{ .v1 = null, .v2 = 16653, .v3 = 15118 };
}

// From T_Snnn_xay.c:36399:36419
// struct  Ip_Ui_Uc  {
//   int *v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Ip_Ui_Uc layout" {
    var lv: c.Ip_Ui_Uc = undefined;
    try testing.expectSize(c.Ip_Ui_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Ui_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_Uc(), .{ .v1 = null, .v2 = 10246, .v3 = 61 });
    try testing.expectOk(c.assert_ret_Ip_Ui_Uc());
    try testing.expectOk(c.send_Ip_Ui_Uc());
    try testing.expectOk(c.assert_Ip_Ui_Uc(.{ .v1 = null, .v2 = 10246, .v3 = 61 }));
}
pub export fn zig_assert_Ip_Ui_Uc(lv: c.Ip_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 10246) err = 2;
    if (lv.v3 != 61) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_Uc() c.Ip_Ui_Uc {
    return .{ .v1 = null, .v2 = 10246, .v3 = 61 };
}

// From T_Snnn_xay.c:36424:36444
// struct  Ip_Ui_Ui  {
//   int *v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Ip_Ui_Ui layout" {
    var lv: c.Ip_Ui_Ui = undefined;
    try testing.expectSize(c.Ip_Ui_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Ui_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_Ui(), .{ .v1 = null, .v2 = 18882, .v3 = 5120 });
    try testing.expectOk(c.assert_ret_Ip_Ui_Ui());
    try testing.expectOk(c.send_Ip_Ui_Ui());
    try testing.expectOk(c.assert_Ip_Ui_Ui(.{ .v1 = null, .v2 = 18882, .v3 = 5120 }));
}
pub export fn zig_assert_Ip_Ui_Ui(lv: c.Ip_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 18882) err = 2;
    if (lv.v3 != 5120) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_Ui() c.Ip_Ui_Ui {
    return .{ .v1 = null, .v2 = 18882, .v3 = 5120 };
}

// From T_Snnn_xay.c:36449:36469
// struct  Ip_Ui_Ul  {
//   int *v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Ip_Ui_Ul layout" {
    var lv: c.Ip_Ui_Ul = undefined;
    try testing.expectSize(c.Ip_Ui_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ui_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_Ul(), .{ .v1 = null, .v2 = 1490, .v3 = 30616 });
    try testing.expectOk(c.assert_ret_Ip_Ui_Ul());
    try testing.expectOk(c.send_Ip_Ui_Ul());
    try testing.expectOk(c.assert_Ip_Ui_Ul(.{ .v1 = null, .v2 = 1490, .v3 = 30616 }));
}
pub export fn zig_assert_Ip_Ui_Ul(lv: c.Ip_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1490) err = 2;
    if (lv.v3 != 30616) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_Ul() c.Ip_Ui_Ul {
    return .{ .v1 = null, .v2 = 1490, .v3 = 30616 };
}

// From T_Snnn_xay.c:36474:36494
// struct  Ip_Ui_Us  {
//   int *v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Ip_Ui_Us layout" {
    var lv: c.Ip_Ui_Us = undefined;
    try testing.expectSize(c.Ip_Ui_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Ui_Us C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_Us(), .{ .v1 = null, .v2 = 26123, .v3 = 31152 });
    try testing.expectOk(c.assert_ret_Ip_Ui_Us());
    try testing.expectOk(c.send_Ip_Ui_Us());
    try testing.expectOk(c.assert_Ip_Ui_Us(.{ .v1 = null, .v2 = 26123, .v3 = 31152 }));
}
pub export fn zig_assert_Ip_Ui_Us(lv: c.Ip_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 26123) err = 2;
    if (lv.v3 != 31152) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_Us() c.Ip_Ui_Us {
    return .{ .v1 = null, .v2 = 26123, .v3 = 31152 };
}

// From T_Snnn_xay.c:36499:36519
// struct  Ip_Ui_Vp  {
//   int *v1;
//   unsigned int v2;
//   void *v3;
// };

test "Ip_Ui_Vp layout" {
    var lv: c.Ip_Ui_Vp = undefined;
    try testing.expectSize(c.Ip_Ui_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ui_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_Ui_Vp(), .{ .v1 = null, .v2 = 17588, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Ui_Vp());
    try testing.expectOk(c.send_Ip_Ui_Vp());
    try testing.expectOk(c.assert_Ip_Ui_Vp(.{ .v1 = null, .v2 = 17588, .v3 = null }));
}
pub export fn zig_assert_Ip_Ui_Vp(lv: c.Ip_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 17588) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_Vp() c.Ip_Ui_Vp {
    return .{ .v1 = null, .v2 = 17588, .v3 = null };
}

// From T_Snnn_xay.c:36524:36542
// struct  Ip_Ul  {
//   int *v1;
//   __tsu64 v2;
// };

test "Ip_Ul layout" {
    var lv: c.Ip_Ul = undefined;
    try testing.expectSize(c.Ip_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_Ul(), .{ .v1 = null, .v2 = 12948 });
    try testing.expectOk(c.assert_ret_Ip_Ul());
    try testing.expectOk(c.send_Ip_Ul());
    try testing.expectOk(c.assert_Ip_Ul(.{ .v1 = null, .v2 = 12948 }));
}
pub export fn zig_assert_Ip_Ul(lv: c.Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 12948) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul() c.Ip_Ul {
    return .{ .v1 = null, .v2 = 12948 };
}

// From T_Snnn_xay.c:37271:37291
// struct  Ip_Ul_C  {
//   int *v1;
//   __tsu64 v2;
//   char v3;
// };

test "Ip_Ul_C layout" {
    var lv: c.Ip_Ul_C = undefined;
    try testing.expectSize(c.Ip_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_C C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_C(), .{ .v1 = null, .v2 = 22886, .v3 = 58 });
    try testing.expectOk(c.assert_ret_Ip_Ul_C());
    try testing.expectOk(c.send_Ip_Ul_C());
    try testing.expectOk(c.assert_Ip_Ul_C(.{ .v1 = null, .v2 = 22886, .v3 = 58 }));
}
pub export fn zig_assert_Ip_Ul_C(lv: c.Ip_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 22886) err = 2;
    if (lv.v3 != 58) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_C() c.Ip_Ul_C {
    return .{ .v1 = null, .v2 = 22886, .v3 = 58 };
}

// From T_Snnn_xay.c:37296:37316
// struct  Ip_Ul_D  {
//   int *v1;
//   __tsu64 v2;
//   double v3;
// };

test "Ip_Ul_D layout" {
    var lv: c.Ip_Ul_D = undefined;
    try testing.expectSize(c.Ip_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_D C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_D(), .{ .v1 = null, .v2 = 16802, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Ip_Ul_D());
    try testing.expectOk(c.send_Ip_Ul_D());
    try testing.expectOk(c.assert_Ip_Ul_D(.{ .v1 = null, .v2 = 16802, .v3 = -0.25 }));
}
pub export fn zig_assert_Ip_Ul_D(lv: c.Ip_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 16802) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_D() c.Ip_Ul_D {
    return .{ .v1 = null, .v2 = 16802, .v3 = -0.25 };
}

// From T_Snnn_xay.c:37321:37341
// struct  Ip_Ul_F  {
//   int *v1;
//   __tsu64 v2;
//   float v3;
// };

test "Ip_Ul_F layout" {
    var lv: c.Ip_Ul_F = undefined;
    try testing.expectSize(c.Ip_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_F C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_F(), .{ .v1 = null, .v2 = 29674, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Ip_Ul_F());
    try testing.expectOk(c.send_Ip_Ul_F());
    try testing.expectOk(c.assert_Ip_Ul_F(.{ .v1 = null, .v2 = 29674, .v3 = -2.125 }));
}
pub export fn zig_assert_Ip_Ul_F(lv: c.Ip_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 29674) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_F() c.Ip_Ul_F {
    return .{ .v1 = null, .v2 = 29674, .v3 = -2.125 };
}

// From T_Snnn_xay.c:37346:37366
// struct  Ip_Ul_I  {
//   int *v1;
//   __tsu64 v2;
//   int v3;
// };

test "Ip_Ul_I layout" {
    var lv: c.Ip_Ul_I = undefined;
    try testing.expectSize(c.Ip_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_I C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_I(), .{ .v1 = null, .v2 = 17645, .v3 = 19430 });
    try testing.expectOk(c.assert_ret_Ip_Ul_I());
    try testing.expectOk(c.send_Ip_Ul_I());
    try testing.expectOk(c.assert_Ip_Ul_I(.{ .v1 = null, .v2 = 17645, .v3 = 19430 }));
}
pub export fn zig_assert_Ip_Ul_I(lv: c.Ip_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 17645) err = 2;
    if (lv.v3 != 19430) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_I() c.Ip_Ul_I {
    return .{ .v1 = null, .v2 = 17645, .v3 = 19430 };
}

// From T_Snnn_xay.c:37371:37391
// struct  Ip_Ul_Ip  {
//   int *v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Ip_Ul_Ip layout" {
    var lv: c.Ip_Ul_Ip = undefined;
    try testing.expectSize(c.Ip_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_Ip(), .{ .v1 = null, .v2 = 13000, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Ul_Ip());
    try testing.expectOk(c.send_Ip_Ul_Ip());
    try testing.expectOk(c.assert_Ip_Ul_Ip(.{ .v1 = null, .v2 = 13000, .v3 = null }));
}
pub export fn zig_assert_Ip_Ul_Ip(lv: c.Ip_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 13000) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_Ip() c.Ip_Ul_Ip {
    return .{ .v1 = null, .v2 = 13000, .v3 = null };
}

// From T_Snnn_xay.c:37396:37416
// struct  Ip_Ul_L  {
//   int *v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Ip_Ul_L layout" {
    var lv: c.Ip_Ul_L = undefined;
    try testing.expectSize(c.Ip_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_L C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_L(), .{ .v1 = null, .v2 = 25150, .v3 = 28024 });
    try testing.expectOk(c.assert_ret_Ip_Ul_L());
    try testing.expectOk(c.send_Ip_Ul_L());
    try testing.expectOk(c.assert_Ip_Ul_L(.{ .v1 = null, .v2 = 25150, .v3 = 28024 }));
}
pub export fn zig_assert_Ip_Ul_L(lv: c.Ip_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 25150) err = 2;
    if (lv.v3 != 28024) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_L() c.Ip_Ul_L {
    return .{ .v1 = null, .v2 = 25150, .v3 = 28024 };
}

// From T_Snnn_xay.c:37421:37441
// struct  Ip_Ul_S  {
//   int *v1;
//   __tsu64 v2;
//   short v3;
// };

test "Ip_Ul_S layout" {
    var lv: c.Ip_Ul_S = undefined;
    try testing.expectSize(c.Ip_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_S C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_S(), .{ .v1 = null, .v2 = 26141, .v3 = 12065 });
    try testing.expectOk(c.assert_ret_Ip_Ul_S());
    try testing.expectOk(c.send_Ip_Ul_S());
    try testing.expectOk(c.assert_Ip_Ul_S(.{ .v1 = null, .v2 = 26141, .v3 = 12065 }));
}
pub export fn zig_assert_Ip_Ul_S(lv: c.Ip_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 26141) err = 2;
    if (lv.v3 != 12065) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_S() c.Ip_Ul_S {
    return .{ .v1 = null, .v2 = 26141, .v3 = 12065 };
}

// From T_Snnn_xay.c:37446:37466
// struct  Ip_Ul_Uc  {
//   int *v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Ip_Ul_Uc layout" {
    var lv: c.Ip_Ul_Uc = undefined;
    try testing.expectSize(c.Ip_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_Uc(), .{ .v1 = null, .v2 = 18180, .v3 = 51 });
    try testing.expectOk(c.assert_ret_Ip_Ul_Uc());
    try testing.expectOk(c.send_Ip_Ul_Uc());
    try testing.expectOk(c.assert_Ip_Ul_Uc(.{ .v1 = null, .v2 = 18180, .v3 = 51 }));
}
pub export fn zig_assert_Ip_Ul_Uc(lv: c.Ip_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 18180) err = 2;
    if (lv.v3 != 51) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_Uc() c.Ip_Ul_Uc {
    return .{ .v1 = null, .v2 = 18180, .v3 = 51 };
}

// From T_Snnn_xay.c:37471:37491
// struct  Ip_Ul_Ui  {
//   int *v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Ip_Ul_Ui layout" {
    var lv: c.Ip_Ul_Ui = undefined;
    try testing.expectSize(c.Ip_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_Ui(), .{ .v1 = null, .v2 = 12813, .v3 = 25993 });
    try testing.expectOk(c.assert_ret_Ip_Ul_Ui());
    try testing.expectOk(c.send_Ip_Ul_Ui());
    try testing.expectOk(c.assert_Ip_Ul_Ui(.{ .v1 = null, .v2 = 12813, .v3 = 25993 }));
}
pub export fn zig_assert_Ip_Ul_Ui(lv: c.Ip_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 12813) err = 2;
    if (lv.v3 != 25993) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_Ui() c.Ip_Ul_Ui {
    return .{ .v1 = null, .v2 = 12813, .v3 = 25993 };
}

// From T_Snnn_xay.c:37496:37516
// struct  Ip_Ul_Ul  {
//   int *v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Ip_Ul_Ul layout" {
    var lv: c.Ip_Ul_Ul = undefined;
    try testing.expectSize(c.Ip_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_Ul(), .{ .v1 = null, .v2 = 13011, .v3 = 7993 });
    try testing.expectOk(c.assert_ret_Ip_Ul_Ul());
    try testing.expectOk(c.send_Ip_Ul_Ul());
    try testing.expectOk(c.assert_Ip_Ul_Ul(.{ .v1 = null, .v2 = 13011, .v3 = 7993 }));
}
pub export fn zig_assert_Ip_Ul_Ul(lv: c.Ip_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 13011) err = 2;
    if (lv.v3 != 7993) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_Ul() c.Ip_Ul_Ul {
    return .{ .v1 = null, .v2 = 13011, .v3 = 7993 };
}

// From T_Snnn_xay.c:37521:37541
// struct  Ip_Ul_Us  {
//   int *v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Ip_Ul_Us layout" {
    var lv: c.Ip_Ul_Us = undefined;
    try testing.expectSize(c.Ip_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_Us C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_Us(), .{ .v1 = null, .v2 = 20088, .v3 = 31035 });
    try testing.expectOk(c.assert_ret_Ip_Ul_Us());
    try testing.expectOk(c.send_Ip_Ul_Us());
    try testing.expectOk(c.assert_Ip_Ul_Us(.{ .v1 = null, .v2 = 20088, .v3 = 31035 }));
}
pub export fn zig_assert_Ip_Ul_Us(lv: c.Ip_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20088) err = 2;
    if (lv.v3 != 31035) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_Us() c.Ip_Ul_Us {
    return .{ .v1 = null, .v2 = 20088, .v3 = 31035 };
}

// From T_Snnn_xay.c:37546:37566
// struct  Ip_Ul_Vp  {
//   int *v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Ip_Ul_Vp layout" {
    var lv: c.Ip_Ul_Vp = undefined;
    try testing.expectSize(c.Ip_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_Ul_Vp(), .{ .v1 = null, .v2 = 28724, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Ul_Vp());
    try testing.expectOk(c.send_Ip_Ul_Vp());
    try testing.expectOk(c.assert_Ip_Ul_Vp(.{ .v1 = null, .v2 = 28724, .v3 = null }));
}
pub export fn zig_assert_Ip_Ul_Vp(lv: c.Ip_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28724) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_Vp() c.Ip_Ul_Vp {
    return .{ .v1 = null, .v2 = 28724, .v3 = null };
}

// From T_Snnn_xay.c:37571:37589
// struct  Ip_Us  {
//   int *v1;
//   unsigned short v2;
// };

test "Ip_Us layout" {
    var lv: c.Ip_Us = undefined;
    try testing.expectSize(c.Ip_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_Us C calls" {
    try testing.expectEqual(c.ret_Ip_Us(), .{ .v1 = null, .v2 = 28990 });
    try testing.expectOk(c.assert_ret_Ip_Us());
    try testing.expectOk(c.send_Ip_Us());
    try testing.expectOk(c.assert_Ip_Us(.{ .v1 = null, .v2 = 28990 }));
}
pub export fn zig_assert_Ip_Us(lv: c.Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28990) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us() c.Ip_Us {
    return .{ .v1 = null, .v2 = 28990 };
}

// From T_Snnn_xay.c:38318:38338
// struct  Ip_Us_C  {
//   int *v1;
//   unsigned short v2;
//   char v3;
// };

test "Ip_Us_C layout" {
    var lv: c.Ip_Us_C = undefined;
    try testing.expectSize(c.Ip_Us_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_Us_C C calls" {
    try testing.expectEqual(c.ret_Ip_Us_C(), .{ .v1 = null, .v2 = 10209, .v3 = 46 });
    try testing.expectOk(c.assert_ret_Ip_Us_C());
    try testing.expectOk(c.send_Ip_Us_C());
    try testing.expectOk(c.assert_Ip_Us_C(.{ .v1 = null, .v2 = 10209, .v3 = 46 }));
}
pub export fn zig_assert_Ip_Us_C(lv: c.Ip_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 10209) err = 2;
    if (lv.v3 != 46) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_C() c.Ip_Us_C {
    return .{ .v1 = null, .v2 = 10209, .v3 = 46 };
}

// From T_Snnn_xay.c:38343:38363
// struct  Ip_Us_D  {
//   int *v1;
//   unsigned short v2;
//   double v3;
// };

test "Ip_Us_D layout" {
    var lv: c.Ip_Us_D = undefined;
    try testing.expectSize(c.Ip_Us_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Us_D C calls" {
    try testing.expectEqual(c.ret_Ip_Us_D(), .{ .v1 = null, .v2 = 2528, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Ip_Us_D());
    try testing.expectOk(c.send_Ip_Us_D());
    try testing.expectOk(c.assert_Ip_Us_D(.{ .v1 = null, .v2 = 2528, .v3 = 4.5 }));
}
pub export fn zig_assert_Ip_Us_D(lv: c.Ip_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 2528) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_D() c.Ip_Us_D {
    return .{ .v1 = null, .v2 = 2528, .v3 = 4.5 };
}

// From T_Snnn_xay.c:38368:38388
// struct  Ip_Us_F  {
//   int *v1;
//   unsigned short v2;
//   float v3;
// };

test "Ip_Us_F layout" {
    var lv: c.Ip_Us_F = undefined;
    try testing.expectSize(c.Ip_Us_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Us_F C calls" {
    try testing.expectEqual(c.ret_Ip_Us_F(), .{ .v1 = null, .v2 = 1427, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Ip_Us_F());
    try testing.expectOk(c.send_Ip_Us_F());
    try testing.expectOk(c.assert_Ip_Us_F(.{ .v1 = null, .v2 = 1427, .v3 = 0.875 }));
}
pub export fn zig_assert_Ip_Us_F(lv: c.Ip_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1427) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_F() c.Ip_Us_F {
    return .{ .v1 = null, .v2 = 1427, .v3 = 0.875 };
}

// From T_Snnn_xay.c:38393:38413
// struct  Ip_Us_I  {
//   int *v1;
//   unsigned short v2;
//   int v3;
// };

test "Ip_Us_I layout" {
    var lv: c.Ip_Us_I = undefined;
    try testing.expectSize(c.Ip_Us_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Us_I C calls" {
    try testing.expectEqual(c.ret_Ip_Us_I(), .{ .v1 = null, .v2 = 28106, .v3 = 11544 });
    try testing.expectOk(c.assert_ret_Ip_Us_I());
    try testing.expectOk(c.send_Ip_Us_I());
    try testing.expectOk(c.assert_Ip_Us_I(.{ .v1 = null, .v2 = 28106, .v3 = 11544 }));
}
pub export fn zig_assert_Ip_Us_I(lv: c.Ip_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28106) err = 2;
    if (lv.v3 != 11544) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_I() c.Ip_Us_I {
    return .{ .v1 = null, .v2 = 28106, .v3 = 11544 };
}

// From T_Snnn_xay.c:38418:38438
// struct  Ip_Us_Ip  {
//   int *v1;
//   unsigned short v2;
//   int *v3;
// };

test "Ip_Us_Ip layout" {
    var lv: c.Ip_Us_Ip = undefined;
    try testing.expectSize(c.Ip_Us_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Us_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_Us_Ip(), .{ .v1 = null, .v2 = 6349, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Us_Ip());
    try testing.expectOk(c.send_Ip_Us_Ip());
    try testing.expectOk(c.assert_Ip_Us_Ip(.{ .v1 = null, .v2 = 6349, .v3 = null }));
}
pub export fn zig_assert_Ip_Us_Ip(lv: c.Ip_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 6349) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_Ip() c.Ip_Us_Ip {
    return .{ .v1 = null, .v2 = 6349, .v3 = null };
}

// From T_Snnn_xay.c:38443:38463
// struct  Ip_Us_L  {
//   int *v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Ip_Us_L layout" {
    var lv: c.Ip_Us_L = undefined;
    try testing.expectSize(c.Ip_Us_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Us_L C calls" {
    try testing.expectEqual(c.ret_Ip_Us_L(), .{ .v1 = null, .v2 = 2930, .v3 = 17268 });
    try testing.expectOk(c.assert_ret_Ip_Us_L());
    try testing.expectOk(c.send_Ip_Us_L());
    try testing.expectOk(c.assert_Ip_Us_L(.{ .v1 = null, .v2 = 2930, .v3 = 17268 }));
}
pub export fn zig_assert_Ip_Us_L(lv: c.Ip_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 2930) err = 2;
    if (lv.v3 != 17268) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_L() c.Ip_Us_L {
    return .{ .v1 = null, .v2 = 2930, .v3 = 17268 };
}

// From T_Snnn_xay.c:38468:38488
// struct  Ip_Us_S  {
//   int *v1;
//   unsigned short v2;
//   short v3;
// };

test "Ip_Us_S layout" {
    var lv: c.Ip_Us_S = undefined;
    try testing.expectSize(c.Ip_Us_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_Us_S C calls" {
    try testing.expectEqual(c.ret_Ip_Us_S(), .{ .v1 = null, .v2 = 26284, .v3 = 4156 });
    try testing.expectOk(c.assert_ret_Ip_Us_S());
    try testing.expectOk(c.send_Ip_Us_S());
    try testing.expectOk(c.assert_Ip_Us_S(.{ .v1 = null, .v2 = 26284, .v3 = 4156 }));
}
pub export fn zig_assert_Ip_Us_S(lv: c.Ip_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 26284) err = 2;
    if (lv.v3 != 4156) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_S() c.Ip_Us_S {
    return .{ .v1 = null, .v2 = 26284, .v3 = 4156 };
}

// From T_Snnn_xay.c:38493:38513
// struct  Ip_Us_Uc  {
//   int *v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Ip_Us_Uc layout" {
    var lv: c.Ip_Us_Uc = undefined;
    try testing.expectSize(c.Ip_Us_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_Us_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_Us_Uc(), .{ .v1 = null, .v2 = 16496, .v3 = 25 });
    try testing.expectOk(c.assert_ret_Ip_Us_Uc());
    try testing.expectOk(c.send_Ip_Us_Uc());
    try testing.expectOk(c.assert_Ip_Us_Uc(.{ .v1 = null, .v2 = 16496, .v3 = 25 }));
}
pub export fn zig_assert_Ip_Us_Uc(lv: c.Ip_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 16496) err = 2;
    if (lv.v3 != 25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_Uc() c.Ip_Us_Uc {
    return .{ .v1 = null, .v2 = 16496, .v3 = 25 };
}

// From T_Snnn_xay.c:38518:38538
// struct  Ip_Us_Ui  {
//   int *v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Ip_Us_Ui layout" {
    var lv: c.Ip_Us_Ui = undefined;
    try testing.expectSize(c.Ip_Us_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Us_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_Us_Ui(), .{ .v1 = null, .v2 = 21265, .v3 = 27246 });
    try testing.expectOk(c.assert_ret_Ip_Us_Ui());
    try testing.expectOk(c.send_Ip_Us_Ui());
    try testing.expectOk(c.assert_Ip_Us_Ui(.{ .v1 = null, .v2 = 21265, .v3 = 27246 }));
}
pub export fn zig_assert_Ip_Us_Ui(lv: c.Ip_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21265) err = 2;
    if (lv.v3 != 27246) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_Ui() c.Ip_Us_Ui {
    return .{ .v1 = null, .v2 = 21265, .v3 = 27246 };
}

// From T_Snnn_xay.c:38543:38563
// struct  Ip_Us_Ul  {
//   int *v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Ip_Us_Ul layout" {
    var lv: c.Ip_Us_Ul = undefined;
    try testing.expectSize(c.Ip_Us_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Us_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_Us_Ul(), .{ .v1 = null, .v2 = 12474, .v3 = 2975 });
    try testing.expectOk(c.assert_ret_Ip_Us_Ul());
    try testing.expectOk(c.send_Ip_Us_Ul());
    try testing.expectOk(c.assert_Ip_Us_Ul(.{ .v1 = null, .v2 = 12474, .v3 = 2975 }));
}
pub export fn zig_assert_Ip_Us_Ul(lv: c.Ip_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 12474) err = 2;
    if (lv.v3 != 2975) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_Ul() c.Ip_Us_Ul {
    return .{ .v1 = null, .v2 = 12474, .v3 = 2975 };
}

// From T_Snnn_xay.c:38568:38588
// struct  Ip_Us_Us  {
//   int *v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Ip_Us_Us layout" {
    var lv: c.Ip_Us_Us = undefined;
    try testing.expectSize(c.Ip_Us_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_Us_Us C calls" {
    try testing.expectEqual(c.ret_Ip_Us_Us(), .{ .v1 = null, .v2 = 7970, .v3 = 1591 });
    try testing.expectOk(c.assert_ret_Ip_Us_Us());
    try testing.expectOk(c.send_Ip_Us_Us());
    try testing.expectOk(c.assert_Ip_Us_Us(.{ .v1 = null, .v2 = 7970, .v3 = 1591 }));
}
pub export fn zig_assert_Ip_Us_Us(lv: c.Ip_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7970) err = 2;
    if (lv.v3 != 1591) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_Us() c.Ip_Us_Us {
    return .{ .v1 = null, .v2 = 7970, .v3 = 1591 };
}

// From T_Snnn_xay.c:38593:38613
// struct  Ip_Us_Vp  {
//   int *v1;
//   unsigned short v2;
//   void *v3;
// };

test "Ip_Us_Vp layout" {
    var lv: c.Ip_Us_Vp = undefined;
    try testing.expectSize(c.Ip_Us_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Us_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_Us_Vp(), .{ .v1 = null, .v2 = 15741, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Us_Vp());
    try testing.expectOk(c.send_Ip_Us_Vp());
    try testing.expectOk(c.assert_Ip_Us_Vp(.{ .v1 = null, .v2 = 15741, .v3 = null }));
}
pub export fn zig_assert_Ip_Us_Vp(lv: c.Ip_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15741) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_Vp() c.Ip_Us_Vp {
    return .{ .v1 = null, .v2 = 15741, .v3 = null };
}

// From T_Snnn_xay.c:38618:38636
// struct  Ip_Vp  {
//   int *v1;
//   void *v2;
// };

test "Ip_Vp layout" {
    var lv: c.Ip_Vp = undefined;
    try testing.expectSize(c.Ip_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_Vp(), .{ .v1 = null, .v2 = null });
    try testing.expectOk(c.assert_ret_Ip_Vp());
    try testing.expectOk(c.send_Ip_Vp());
    try testing.expectOk(c.assert_Ip_Vp(.{ .v1 = null, .v2 = null }));
}
pub export fn zig_assert_Ip_Vp(lv: c.Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp() c.Ip_Vp {
    return .{ .v1 = null, .v2 = null };
}

// From T_Snnn_xay.c:39365:39385
// struct  Ip_Vp_C  {
//   int *v1;
//   void *v2;
//   char v3;
// };

test "Ip_Vp_C layout" {
    var lv: c.Ip_Vp_C = undefined;
    try testing.expectSize(c.Ip_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_C C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_C(), .{ .v1 = null, .v2 = null, .v3 = 90 });
    try testing.expectOk(c.assert_ret_Ip_Vp_C());
    try testing.expectOk(c.send_Ip_Vp_C());
    try testing.expectOk(c.assert_Ip_Vp_C(.{ .v1 = null, .v2 = null, .v3 = 90 }));
}
pub export fn zig_assert_Ip_Vp_C(lv: c.Ip_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 90) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_C() c.Ip_Vp_C {
    return .{ .v1 = null, .v2 = null, .v3 = 90 };
}

// From T_Snnn_xay.c:39390:39410
// struct  Ip_Vp_D  {
//   int *v1;
//   void *v2;
//   double v3;
// };

test "Ip_Vp_D layout" {
    var lv: c.Ip_Vp_D = undefined;
    try testing.expectSize(c.Ip_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_D C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_D(), .{ .v1 = null, .v2 = null, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Ip_Vp_D());
    try testing.expectOk(c.send_Ip_Vp_D());
    try testing.expectOk(c.assert_Ip_Vp_D(.{ .v1 = null, .v2 = null, .v3 = 0.5 }));
}
pub export fn zig_assert_Ip_Vp_D(lv: c.Ip_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_D() c.Ip_Vp_D {
    return .{ .v1 = null, .v2 = null, .v3 = 0.5 };
}

// From T_Snnn_xay.c:39415:39435
// struct  Ip_Vp_F  {
//   int *v1;
//   void *v2;
//   float v3;
// };

test "Ip_Vp_F layout" {
    var lv: c.Ip_Vp_F = undefined;
    try testing.expectSize(c.Ip_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_F C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_F(), .{ .v1 = null, .v2 = null, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Ip_Vp_F());
    try testing.expectOk(c.send_Ip_Vp_F());
    try testing.expectOk(c.assert_Ip_Vp_F(.{ .v1 = null, .v2 = null, .v3 = 0.5 }));
}
pub export fn zig_assert_Ip_Vp_F(lv: c.Ip_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_F() c.Ip_Vp_F {
    return .{ .v1 = null, .v2 = null, .v3 = 0.5 };
}

// From T_Snnn_xay.c:39440:39460
// struct  Ip_Vp_I  {
//   int *v1;
//   void *v2;
//   int v3;
// };

test "Ip_Vp_I layout" {
    var lv: c.Ip_Vp_I = undefined;
    try testing.expectSize(c.Ip_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_I C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_I(), .{ .v1 = null, .v2 = null, .v3 = 19530 });
    try testing.expectOk(c.assert_ret_Ip_Vp_I());
    try testing.expectOk(c.send_Ip_Vp_I());
    try testing.expectOk(c.assert_Ip_Vp_I(.{ .v1 = null, .v2 = null, .v3 = 19530 }));
}
pub export fn zig_assert_Ip_Vp_I(lv: c.Ip_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 19530) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_I() c.Ip_Vp_I {
    return .{ .v1 = null, .v2 = null, .v3 = 19530 };
}

// From T_Snnn_xay.c:39465:39485
// struct  Ip_Vp_Ip  {
//   int *v1;
//   void *v2;
//   int *v3;
// };

test "Ip_Vp_Ip layout" {
    var lv: c.Ip_Vp_Ip = undefined;
    try testing.expectSize(c.Ip_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_Ip C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_Ip(), .{ .v1 = null, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Vp_Ip());
    try testing.expectOk(c.send_Ip_Vp_Ip());
    try testing.expectOk(c.assert_Ip_Vp_Ip(.{ .v1 = null, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Ip_Vp_Ip(lv: c.Ip_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_Ip() c.Ip_Vp_Ip {
    return .{ .v1 = null, .v2 = null, .v3 = null };
}

// From T_Snnn_xay.c:39490:39510
// struct  Ip_Vp_L  {
//   int *v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Ip_Vp_L layout" {
    var lv: c.Ip_Vp_L = undefined;
    try testing.expectSize(c.Ip_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_L C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_L(), .{ .v1 = null, .v2 = null, .v3 = 26980 });
    try testing.expectOk(c.assert_ret_Ip_Vp_L());
    try testing.expectOk(c.send_Ip_Vp_L());
    try testing.expectOk(c.assert_Ip_Vp_L(.{ .v1 = null, .v2 = null, .v3 = 26980 }));
}
pub export fn zig_assert_Ip_Vp_L(lv: c.Ip_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 26980) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_L() c.Ip_Vp_L {
    return .{ .v1 = null, .v2 = null, .v3 = 26980 };
}

// From T_Snnn_xay.c:39515:39535
// struct  Ip_Vp_S  {
//   int *v1;
//   void *v2;
//   short v3;
// };

test "Ip_Vp_S layout" {
    var lv: c.Ip_Vp_S = undefined;
    try testing.expectSize(c.Ip_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_S C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_S(), .{ .v1 = null, .v2 = null, .v3 = 8250 });
    try testing.expectOk(c.assert_ret_Ip_Vp_S());
    try testing.expectOk(c.send_Ip_Vp_S());
    try testing.expectOk(c.assert_Ip_Vp_S(.{ .v1 = null, .v2 = null, .v3 = 8250 }));
}
pub export fn zig_assert_Ip_Vp_S(lv: c.Ip_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 8250) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_S() c.Ip_Vp_S {
    return .{ .v1 = null, .v2 = null, .v3 = 8250 };
}

// From T_Snnn_xay.c:39540:39560
// struct  Ip_Vp_Uc  {
//   int *v1;
//   void *v2;
//   unsigned char v3;
// };

test "Ip_Vp_Uc layout" {
    var lv: c.Ip_Vp_Uc = undefined;
    try testing.expectSize(c.Ip_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_Uc C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_Uc(), .{ .v1 = null, .v2 = null, .v3 = 57 });
    try testing.expectOk(c.assert_ret_Ip_Vp_Uc());
    try testing.expectOk(c.send_Ip_Vp_Uc());
    try testing.expectOk(c.assert_Ip_Vp_Uc(.{ .v1 = null, .v2 = null, .v3 = 57 }));
}
pub export fn zig_assert_Ip_Vp_Uc(lv: c.Ip_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 57) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_Uc() c.Ip_Vp_Uc {
    return .{ .v1 = null, .v2 = null, .v3 = 57 };
}

// From T_Snnn_xay.c:39565:39585
// struct  Ip_Vp_Ui  {
//   int *v1;
//   void *v2;
//   unsigned int v3;
// };

test "Ip_Vp_Ui layout" {
    var lv: c.Ip_Vp_Ui = undefined;
    try testing.expectSize(c.Ip_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_Ui C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_Ui(), .{ .v1 = null, .v2 = null, .v3 = 18658 });
    try testing.expectOk(c.assert_ret_Ip_Vp_Ui());
    try testing.expectOk(c.send_Ip_Vp_Ui());
    try testing.expectOk(c.assert_Ip_Vp_Ui(.{ .v1 = null, .v2 = null, .v3 = 18658 }));
}
pub export fn zig_assert_Ip_Vp_Ui(lv: c.Ip_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 18658) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_Ui() c.Ip_Vp_Ui {
    return .{ .v1 = null, .v2 = null, .v3 = 18658 };
}

// From T_Snnn_xay.c:39590:39610
// struct  Ip_Vp_Ul  {
//   int *v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Ip_Vp_Ul layout" {
    var lv: c.Ip_Vp_Ul = undefined;
    try testing.expectSize(c.Ip_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_Ul C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_Ul(), .{ .v1 = null, .v2 = null, .v3 = 15371 });
    try testing.expectOk(c.assert_ret_Ip_Vp_Ul());
    try testing.expectOk(c.send_Ip_Vp_Ul());
    try testing.expectOk(c.assert_Ip_Vp_Ul(.{ .v1 = null, .v2 = null, .v3 = 15371 }));
}
pub export fn zig_assert_Ip_Vp_Ul(lv: c.Ip_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 15371) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_Ul() c.Ip_Vp_Ul {
    return .{ .v1 = null, .v2 = null, .v3 = 15371 };
}

// From T_Snnn_xay.c:39615:39635
// struct  Ip_Vp_Us  {
//   int *v1;
//   void *v2;
//   unsigned short v3;
// };

test "Ip_Vp_Us layout" {
    var lv: c.Ip_Vp_Us = undefined;
    try testing.expectSize(c.Ip_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_Us C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_Us(), .{ .v1 = null, .v2 = null, .v3 = 820 });
    try testing.expectOk(c.assert_ret_Ip_Vp_Us());
    try testing.expectOk(c.send_Ip_Vp_Us());
    try testing.expectOk(c.assert_Ip_Vp_Us(.{ .v1 = null, .v2 = null, .v3 = 820 }));
}
pub export fn zig_assert_Ip_Vp_Us(lv: c.Ip_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 820) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_Us() c.Ip_Vp_Us {
    return .{ .v1 = null, .v2 = null, .v3 = 820 };
}

// From T_Snnn_xay.c:39640:39660
// struct  Ip_Vp_Vp  {
//   int *v1;
//   void *v2;
//   void *v3;
// };

test "Ip_Vp_Vp layout" {
    var lv: c.Ip_Vp_Vp = undefined;
    try testing.expectSize(c.Ip_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_Vp C calls" {
    try testing.expectEqual(c.ret_Ip_Vp_Vp(), .{ .v1 = null, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Ip_Vp_Vp());
    try testing.expectOk(c.send_Ip_Vp_Vp());
    try testing.expectOk(c.assert_Ip_Vp_Vp(.{ .v1 = null, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Ip_Vp_Vp(lv: c.Ip_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_Vp() c.Ip_Vp_Vp {
    return .{ .v1 = null, .v2 = null, .v3 = null };
}

// From T_Snnn_xay.c:39665:39681
// struct  L  {
//   __tsi64 v1;
// };

test "L layout" {
    var lv: c.L = undefined;
    try testing.expectSize(c.L, 8);
    try testing.expectAlign(c.L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "L C calls" {
    try testing.expectEqual(c.ret_L(), .{ .v1 = 6143 });
    try testing.expectOk(c.assert_ret_L());
    try testing.expectOk(c.send_L());
    try testing.expectOk(c.assert_L(.{ .v1 = 6143 }));
}
pub export fn zig_assert_L(lv: c.L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6143) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L() c.L {
    return .{ .v1 = 6143 };
}

// From T_Snnn_xay.c:69986:70004
// struct  L_C  {
//   __tsi64 v1;
//   char v2;
// };

test "L_C layout" {
    var lv: c.L_C = undefined;
    try testing.expectSize(c.L_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_C C calls" {
    try testing.expectEqual(c.ret_L_C(), .{ .v1 = 6729, .v2 = 117 });
    try testing.expectOk(c.assert_ret_L_C());
    try testing.expectOk(c.send_L_C());
    try testing.expectOk(c.assert_L_C(.{ .v1 = 6729, .v2 = 117 }));
}
pub export fn zig_assert_L_C(lv: c.L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6729) err = 1;
    if (lv.v2 != 117) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C() c.L_C {
    return .{ .v1 = 6729, .v2 = 117 };
}

// From T_Snnn_xay.c:70733:70753
// struct  L_C_C  {
//   __tsi64 v1;
//   char v2;
//   char v3;
// };

test "L_C_C layout" {
    var lv: c.L_C_C = undefined;
    try testing.expectSize(c.L_C_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "L_C_C C calls" {
    try testing.expectEqual(c.ret_L_C_C(), .{ .v1 = 10530, .v2 = 63, .v3 = 49 });
    try testing.expectOk(c.assert_ret_L_C_C());
    try testing.expectOk(c.send_L_C_C());
    try testing.expectOk(c.assert_L_C_C(.{ .v1 = 10530, .v2 = 63, .v3 = 49 }));
}
pub export fn zig_assert_L_C_C(lv: c.L_C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10530) err = 1;
    if (lv.v2 != 63) err = 2;
    if (lv.v3 != 49) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_C() c.L_C_C {
    return .{ .v1 = 10530, .v2 = 63, .v3 = 49 };
}

// From T_Snnn_xay.c:70758:70778
// struct  L_C_D  {
//   __tsi64 v1;
//   char v2;
//   double v3;
// };

test "L_C_D layout" {
    var lv: c.L_C_D = undefined;
    try testing.expectSize(c.L_C_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_C_D C calls" {
    try testing.expectEqual(c.ret_L_C_D(), .{ .v1 = 11086, .v2 = 52, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_L_C_D());
    try testing.expectOk(c.send_L_C_D());
    try testing.expectOk(c.assert_L_C_D(.{ .v1 = 11086, .v2 = 52, .v3 = 0.875 }));
}
pub export fn zig_assert_L_C_D(lv: c.L_C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11086) err = 1;
    if (lv.v2 != 52) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_D() c.L_C_D {
    return .{ .v1 = 11086, .v2 = 52, .v3 = 0.875 };
}

// From T_Snnn_xay.c:70783:70803
// struct  L_C_F  {
//   __tsi64 v1;
//   char v2;
//   float v3;
// };

test "L_C_F layout" {
    var lv: c.L_C_F = undefined;
    try testing.expectSize(c.L_C_F, 16);
    try testing.expectAlign(c.L_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_C_F C calls" {
    try testing.expectEqual(c.ret_L_C_F(), .{ .v1 = 28822, .v2 = 125, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_L_C_F());
    try testing.expectOk(c.send_L_C_F());
    try testing.expectOk(c.assert_L_C_F(.{ .v1 = 28822, .v2 = 125, .v3 = 1.0 }));
}
pub export fn zig_assert_L_C_F(lv: c.L_C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28822) err = 1;
    if (lv.v2 != 125) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_F() c.L_C_F {
    return .{ .v1 = 28822, .v2 = 125, .v3 = 1.0 };
}

// From T_Snnn_xay.c:70808:70828
// struct  L_C_I  {
//   __tsi64 v1;
//   char v2;
//   int v3;
// };

test "L_C_I layout" {
    var lv: c.L_C_I = undefined;
    try testing.expectSize(c.L_C_I, 16);
    try testing.expectAlign(c.L_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_C_I C calls" {
    try testing.expectEqual(c.ret_L_C_I(), .{ .v1 = 18441, .v2 = 37, .v3 = 3289 });
    try testing.expectOk(c.assert_ret_L_C_I());
    try testing.expectOk(c.send_L_C_I());
    try testing.expectOk(c.assert_L_C_I(.{ .v1 = 18441, .v2 = 37, .v3 = 3289 }));
}
pub export fn zig_assert_L_C_I(lv: c.L_C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18441) err = 1;
    if (lv.v2 != 37) err = 2;
    if (lv.v3 != 3289) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_I() c.L_C_I {
    return .{ .v1 = 18441, .v2 = 37, .v3 = 3289 };
}

// From T_Snnn_xay.c:70833:70853
// struct  L_C_Ip  {
//   __tsi64 v1;
//   char v2;
//   int *v3;
// };

test "L_C_Ip layout" {
    var lv: c.L_C_Ip = undefined;
    try testing.expectSize(c.L_C_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_C_Ip C calls" {
    try testing.expectEqual(c.ret_L_C_Ip(), .{ .v1 = 31891, .v2 = 45, .v3 = null });
    try testing.expectOk(c.assert_ret_L_C_Ip());
    try testing.expectOk(c.send_L_C_Ip());
    try testing.expectOk(c.assert_L_C_Ip(.{ .v1 = 31891, .v2 = 45, .v3 = null }));
}
pub export fn zig_assert_L_C_Ip(lv: c.L_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31891) err = 1;
    if (lv.v2 != 45) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_Ip() c.L_C_Ip {
    return .{ .v1 = 31891, .v2 = 45, .v3 = null };
}

// From T_Snnn_xay.c:70858:70878
// struct  L_C_L  {
//   __tsi64 v1;
//   char v2;
//   __tsi64 v3;
// };

test "L_C_L layout" {
    var lv: c.L_C_L = undefined;
    try testing.expectSize(c.L_C_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_C_L C calls" {
    try testing.expectEqual(c.ret_L_C_L(), .{ .v1 = 19086, .v2 = 109, .v3 = 14314 });
    try testing.expectOk(c.assert_ret_L_C_L());
    try testing.expectOk(c.send_L_C_L());
    try testing.expectOk(c.assert_L_C_L(.{ .v1 = 19086, .v2 = 109, .v3 = 14314 }));
}
pub export fn zig_assert_L_C_L(lv: c.L_C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19086) err = 1;
    if (lv.v2 != 109) err = 2;
    if (lv.v3 != 14314) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_L() c.L_C_L {
    return .{ .v1 = 19086, .v2 = 109, .v3 = 14314 };
}

// From T_Snnn_xay.c:70883:70903
// struct  L_C_S  {
//   __tsi64 v1;
//   char v2;
//   short v3;
// };

test "L_C_S layout" {
    var lv: c.L_C_S = undefined;
    try testing.expectSize(c.L_C_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_C_S C calls" {
    try testing.expectEqual(c.ret_L_C_S(), .{ .v1 = 288, .v2 = 5, .v3 = 3053 });
    try testing.expectOk(c.assert_ret_L_C_S());
    try testing.expectOk(c.send_L_C_S());
    try testing.expectOk(c.assert_L_C_S(.{ .v1 = 288, .v2 = 5, .v3 = 3053 }));
}
pub export fn zig_assert_L_C_S(lv: c.L_C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 288) err = 1;
    if (lv.v2 != 5) err = 2;
    if (lv.v3 != 3053) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_S() c.L_C_S {
    return .{ .v1 = 288, .v2 = 5, .v3 = 3053 };
}

// From T_Snnn_xay.c:70908:70928
// struct  L_C_Uc  {
//   __tsi64 v1;
//   char v2;
//   unsigned char v3;
// };

test "L_C_Uc layout" {
    var lv: c.L_C_Uc = undefined;
    try testing.expectSize(c.L_C_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "L_C_Uc C calls" {
    try testing.expectEqual(c.ret_L_C_Uc(), .{ .v1 = 27196, .v2 = 83, .v3 = 95 });
    try testing.expectOk(c.assert_ret_L_C_Uc());
    try testing.expectOk(c.send_L_C_Uc());
    try testing.expectOk(c.assert_L_C_Uc(.{ .v1 = 27196, .v2 = 83, .v3 = 95 }));
}
pub export fn zig_assert_L_C_Uc(lv: c.L_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27196) err = 1;
    if (lv.v2 != 83) err = 2;
    if (lv.v3 != 95) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_Uc() c.L_C_Uc {
    return .{ .v1 = 27196, .v2 = 83, .v3 = 95 };
}

// From T_Snnn_xay.c:70933:70953
// struct  L_C_Ui  {
//   __tsi64 v1;
//   char v2;
//   unsigned int v3;
// };

test "L_C_Ui layout" {
    var lv: c.L_C_Ui = undefined;
    try testing.expectSize(c.L_C_Ui, 16);
    try testing.expectAlign(c.L_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_C_Ui C calls" {
    try testing.expectEqual(c.ret_L_C_Ui(), .{ .v1 = 19073, .v2 = 15, .v3 = 19612 });
    try testing.expectOk(c.assert_ret_L_C_Ui());
    try testing.expectOk(c.send_L_C_Ui());
    try testing.expectOk(c.assert_L_C_Ui(.{ .v1 = 19073, .v2 = 15, .v3 = 19612 }));
}
pub export fn zig_assert_L_C_Ui(lv: c.L_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19073) err = 1;
    if (lv.v2 != 15) err = 2;
    if (lv.v3 != 19612) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_Ui() c.L_C_Ui {
    return .{ .v1 = 19073, .v2 = 15, .v3 = 19612 };
}

// From T_Snnn_xay.c:70958:70978
// struct  L_C_Ul  {
//   __tsi64 v1;
//   char v2;
//   __tsu64 v3;
// };

test "L_C_Ul layout" {
    var lv: c.L_C_Ul = undefined;
    try testing.expectSize(c.L_C_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_C_Ul C calls" {
    try testing.expectEqual(c.ret_L_C_Ul(), .{ .v1 = 17138, .v2 = 22, .v3 = 152 });
    try testing.expectOk(c.assert_ret_L_C_Ul());
    try testing.expectOk(c.send_L_C_Ul());
    try testing.expectOk(c.assert_L_C_Ul(.{ .v1 = 17138, .v2 = 22, .v3 = 152 }));
}
pub export fn zig_assert_L_C_Ul(lv: c.L_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17138) err = 1;
    if (lv.v2 != 22) err = 2;
    if (lv.v3 != 152) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_Ul() c.L_C_Ul {
    return .{ .v1 = 17138, .v2 = 22, .v3 = 152 };
}

// From T_Snnn_xay.c:70983:71003
// struct  L_C_Us  {
//   __tsi64 v1;
//   char v2;
//   unsigned short v3;
// };

test "L_C_Us layout" {
    var lv: c.L_C_Us = undefined;
    try testing.expectSize(c.L_C_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_C_Us C calls" {
    try testing.expectEqual(c.ret_L_C_Us(), .{ .v1 = 16490, .v2 = 28, .v3 = 21175 });
    try testing.expectOk(c.assert_ret_L_C_Us());
    try testing.expectOk(c.send_L_C_Us());
    try testing.expectOk(c.assert_L_C_Us(.{ .v1 = 16490, .v2 = 28, .v3 = 21175 }));
}
pub export fn zig_assert_L_C_Us(lv: c.L_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16490) err = 1;
    if (lv.v2 != 28) err = 2;
    if (lv.v3 != 21175) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_Us() c.L_C_Us {
    return .{ .v1 = 16490, .v2 = 28, .v3 = 21175 };
}

// From T_Snnn_xay.c:71008:71028
// struct  L_C_Vp  {
//   __tsi64 v1;
//   char v2;
//   void *v3;
// };

test "L_C_Vp layout" {
    var lv: c.L_C_Vp = undefined;
    try testing.expectSize(c.L_C_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_C_Vp C calls" {
    try testing.expectEqual(c.ret_L_C_Vp(), .{ .v1 = 21374, .v2 = 100, .v3 = null });
    try testing.expectOk(c.assert_ret_L_C_Vp());
    try testing.expectOk(c.send_L_C_Vp());
    try testing.expectOk(c.assert_L_C_Vp(.{ .v1 = 21374, .v2 = 100, .v3 = null }));
}
pub export fn zig_assert_L_C_Vp(lv: c.L_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21374) err = 1;
    if (lv.v2 != 100) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_Vp() c.L_C_Vp {
    return .{ .v1 = 21374, .v2 = 100, .v3 = null };
}

// From T_Snnn_xay.c:71033:71051
// struct  L_D  {
//   __tsi64 v1;
//   double v2;
// };

test "L_D layout" {
    var lv: c.L_D = undefined;
    try testing.expectSize(c.L_D, 16);
    try testing.expectAlign(c.L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_D C calls" {
    try testing.expectEqual(c.ret_L_D(), .{ .v1 = 5730, .v2 = 1.0 });
    try testing.expectOk(c.assert_ret_L_D());
    try testing.expectOk(c.send_L_D());
    try testing.expectOk(c.assert_L_D(.{ .v1 = 5730, .v2 = 1.0 }));
}
pub export fn zig_assert_L_D(lv: c.L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5730) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D() c.L_D {
    return .{ .v1 = 5730, .v2 = 1.0 };
}

// From T_Snnn_xay.c:71780:71800
// struct  L_D_C  {
//   __tsi64 v1;
//   double v2;
//   char v3;
// };

test "L_D_C layout" {
    var lv: c.L_D_C = undefined;
    try testing.expectSize(c.L_D_C, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_C C calls" {
    try testing.expectEqual(c.ret_L_D_C(), .{ .v1 = 15707, .v2 = 1.0, .v3 = 82 });
    try testing.expectOk(c.assert_ret_L_D_C());
    try testing.expectOk(c.send_L_D_C());
    try testing.expectOk(c.assert_L_D_C(.{ .v1 = 15707, .v2 = 1.0, .v3 = 82 }));
}
pub export fn zig_assert_L_D_C(lv: c.L_D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15707) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 82) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_C() c.L_D_C {
    return .{ .v1 = 15707, .v2 = 1.0, .v3 = 82 };
}

// From T_Snnn_xay.c:71805:71825
// struct  L_D_D  {
//   __tsi64 v1;
//   double v2;
//   double v3;
// };

test "L_D_D layout" {
    var lv: c.L_D_D = undefined;
    try testing.expectSize(c.L_D_D, 24);
    try testing.expectAlign(c.L_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_D C calls" {
    try testing.expectEqual(c.ret_L_D_D(), .{ .v1 = 24847, .v2 = -0.25, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_L_D_D());
    try testing.expectOk(c.send_L_D_D());
    try testing.expectOk(c.assert_L_D_D(.{ .v1 = 24847, .v2 = -0.25, .v3 = 0.5 }));
}
pub export fn zig_assert_L_D_D(lv: c.L_D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24847) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_D() c.L_D_D {
    return .{ .v1 = 24847, .v2 = -0.25, .v3 = 0.5 };
}

// From T_Snnn_xay.c:71830:71850
// struct  L_D_F  {
//   __tsi64 v1;
//   double v2;
//   float v3;
// };

test "L_D_F layout" {
    var lv: c.L_D_F = undefined;
    try testing.expectSize(c.L_D_F, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_F C calls" {
    try testing.expectEqual(c.ret_L_D_F(), .{ .v1 = 2898, .v2 = 0.875, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_L_D_F());
    try testing.expectOk(c.send_L_D_F());
    try testing.expectOk(c.assert_L_D_F(.{ .v1 = 2898, .v2 = 0.875, .v3 = 1.0 }));
}
pub export fn zig_assert_L_D_F(lv: c.L_D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2898) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_F() c.L_D_F {
    return .{ .v1 = 2898, .v2 = 0.875, .v3 = 1.0 };
}

// From T_Snnn_xay.c:71855:71875
// struct  L_D_I  {
//   __tsi64 v1;
//   double v2;
//   int v3;
// };

test "L_D_I layout" {
    var lv: c.L_D_I = undefined;
    try testing.expectSize(c.L_D_I, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_I C calls" {
    try testing.expectEqual(c.ret_L_D_I(), .{ .v1 = 5749, .v2 = 1.0, .v3 = 5688 });
    try testing.expectOk(c.assert_ret_L_D_I());
    try testing.expectOk(c.send_L_D_I());
    try testing.expectOk(c.assert_L_D_I(.{ .v1 = 5749, .v2 = 1.0, .v3 = 5688 }));
}
pub export fn zig_assert_L_D_I(lv: c.L_D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5749) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 5688) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_I() c.L_D_I {
    return .{ .v1 = 5749, .v2 = 1.0, .v3 = 5688 };
}

// From T_Snnn_xay.c:71880:71900
// struct  L_D_Ip  {
//   __tsi64 v1;
//   double v2;
//   int *v3;
// };

test "L_D_Ip layout" {
    var lv: c.L_D_Ip = undefined;
    try testing.expectSize(c.L_D_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_Ip C calls" {
    try testing.expectEqual(c.ret_L_D_Ip(), .{ .v1 = 15166, .v2 = 1.0, .v3 = null });
    try testing.expectOk(c.assert_ret_L_D_Ip());
    try testing.expectOk(c.send_L_D_Ip());
    try testing.expectOk(c.assert_L_D_Ip(.{ .v1 = 15166, .v2 = 1.0, .v3 = null }));
}
pub export fn zig_assert_L_D_Ip(lv: c.L_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15166) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_Ip() c.L_D_Ip {
    return .{ .v1 = 15166, .v2 = 1.0, .v3 = null };
}

// From T_Snnn_xay.c:71905:71925
// struct  L_D_L  {
//   __tsi64 v1;
//   double v2;
//   __tsi64 v3;
// };

test "L_D_L layout" {
    var lv: c.L_D_L = undefined;
    try testing.expectSize(c.L_D_L, 24);
    try testing.expectAlign(c.L_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_L C calls" {
    try testing.expectEqual(c.ret_L_D_L(), .{ .v1 = 7152, .v2 = 1.0, .v3 = 26318 });
    try testing.expectOk(c.assert_ret_L_D_L());
    try testing.expectOk(c.send_L_D_L());
    try testing.expectOk(c.assert_L_D_L(.{ .v1 = 7152, .v2 = 1.0, .v3 = 26318 }));
}
pub export fn zig_assert_L_D_L(lv: c.L_D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7152) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 26318) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_L() c.L_D_L {
    return .{ .v1 = 7152, .v2 = 1.0, .v3 = 26318 };
}

// From T_Snnn_xay.c:71930:71950
// struct  L_D_S  {
//   __tsi64 v1;
//   double v2;
//   short v3;
// };

test "L_D_S layout" {
    var lv: c.L_D_S = undefined;
    try testing.expectSize(c.L_D_S, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_S C calls" {
    try testing.expectEqual(c.ret_L_D_S(), .{ .v1 = 5280, .v2 = 4.5, .v3 = 17864 });
    try testing.expectOk(c.assert_ret_L_D_S());
    try testing.expectOk(c.send_L_D_S());
    try testing.expectOk(c.assert_L_D_S(.{ .v1 = 5280, .v2 = 4.5, .v3 = 17864 }));
}
pub export fn zig_assert_L_D_S(lv: c.L_D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5280) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 17864) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_S() c.L_D_S {
    return .{ .v1 = 5280, .v2 = 4.5, .v3 = 17864 };
}

// From T_Snnn_xay.c:71955:71975
// struct  L_D_Uc  {
//   __tsi64 v1;
//   double v2;
//   unsigned char v3;
// };

test "L_D_Uc layout" {
    var lv: c.L_D_Uc = undefined;
    try testing.expectSize(c.L_D_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_Uc C calls" {
    try testing.expectEqual(c.ret_L_D_Uc(), .{ .v1 = 12847, .v2 = 4.5, .v3 = 14 });
    try testing.expectOk(c.assert_ret_L_D_Uc());
    try testing.expectOk(c.send_L_D_Uc());
    try testing.expectOk(c.assert_L_D_Uc(.{ .v1 = 12847, .v2 = 4.5, .v3 = 14 }));
}
pub export fn zig_assert_L_D_Uc(lv: c.L_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12847) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 14) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_Uc() c.L_D_Uc {
    return .{ .v1 = 12847, .v2 = 4.5, .v3 = 14 };
}

// From T_Snnn_xay.c:71980:72000
// struct  L_D_Ui  {
//   __tsi64 v1;
//   double v2;
//   unsigned int v3;
// };

test "L_D_Ui layout" {
    var lv: c.L_D_Ui = undefined;
    try testing.expectSize(c.L_D_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_Ui C calls" {
    try testing.expectEqual(c.ret_L_D_Ui(), .{ .v1 = 17941, .v2 = 7.0, .v3 = 3297 });
    try testing.expectOk(c.assert_ret_L_D_Ui());
    try testing.expectOk(c.send_L_D_Ui());
    try testing.expectOk(c.assert_L_D_Ui(.{ .v1 = 17941, .v2 = 7.0, .v3 = 3297 }));
}
pub export fn zig_assert_L_D_Ui(lv: c.L_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17941) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 3297) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_Ui() c.L_D_Ui {
    return .{ .v1 = 17941, .v2 = 7.0, .v3 = 3297 };
}

// From T_Snnn_xay.c:72005:72025
// struct  L_D_Ul  {
//   __tsi64 v1;
//   double v2;
//   __tsu64 v3;
// };

test "L_D_Ul layout" {
    var lv: c.L_D_Ul = undefined;
    try testing.expectSize(c.L_D_Ul, 24);
    try testing.expectAlign(c.L_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_Ul C calls" {
    try testing.expectEqual(c.ret_L_D_Ul(), .{ .v1 = 19159, .v2 = -2.125, .v3 = 7671 });
    try testing.expectOk(c.assert_ret_L_D_Ul());
    try testing.expectOk(c.send_L_D_Ul());
    try testing.expectOk(c.assert_L_D_Ul(.{ .v1 = 19159, .v2 = -2.125, .v3 = 7671 }));
}
pub export fn zig_assert_L_D_Ul(lv: c.L_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19159) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 7671) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_Ul() c.L_D_Ul {
    return .{ .v1 = 19159, .v2 = -2.125, .v3 = 7671 };
}

// From T_Snnn_xay.c:72030:72050
// struct  L_D_Us  {
//   __tsi64 v1;
//   double v2;
//   unsigned short v3;
// };

test "L_D_Us layout" {
    var lv: c.L_D_Us = undefined;
    try testing.expectSize(c.L_D_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_Us C calls" {
    try testing.expectEqual(c.ret_L_D_Us(), .{ .v1 = 4820, .v2 = 0.875, .v3 = 14293 });
    try testing.expectOk(c.assert_ret_L_D_Us());
    try testing.expectOk(c.send_L_D_Us());
    try testing.expectOk(c.assert_L_D_Us(.{ .v1 = 4820, .v2 = 0.875, .v3 = 14293 }));
}
pub export fn zig_assert_L_D_Us(lv: c.L_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4820) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 14293) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_Us() c.L_D_Us {
    return .{ .v1 = 4820, .v2 = 0.875, .v3 = 14293 };
}

// From T_Snnn_xay.c:72055:72075
// struct  L_D_Vp  {
//   __tsi64 v1;
//   double v2;
//   void *v3;
// };

test "L_D_Vp layout" {
    var lv: c.L_D_Vp = undefined;
    try testing.expectSize(c.L_D_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_Vp C calls" {
    try testing.expectEqual(c.ret_L_D_Vp(), .{ .v1 = 20760, .v2 = 4.5, .v3 = null });
    try testing.expectOk(c.assert_ret_L_D_Vp());
    try testing.expectOk(c.send_L_D_Vp());
    try testing.expectOk(c.assert_L_D_Vp(.{ .v1 = 20760, .v2 = 4.5, .v3 = null }));
}
pub export fn zig_assert_L_D_Vp(lv: c.L_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20760) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_Vp() c.L_D_Vp {
    return .{ .v1 = 20760, .v2 = 4.5, .v3 = null };
}

// From T_Snnn_xay.c:72080:72098
// struct  L_F  {
//   __tsi64 v1;
//   float v2;
// };

test "L_F layout" {
    var lv: c.L_F = undefined;
    try testing.expectSize(c.L_F, ABISELECT(16, 12));
    try testing.expectAlign(c.L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_F C calls" {
    try testing.expectEqual(c.ret_L_F(), .{ .v1 = 17549, .v2 = 0.875 });
    try testing.expectOk(c.assert_ret_L_F());
    try testing.expectOk(c.send_L_F());
    try testing.expectOk(c.assert_L_F(.{ .v1 = 17549, .v2 = 0.875 }));
}
pub export fn zig_assert_L_F(lv: c.L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17549) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F() c.L_F {
    return .{ .v1 = 17549, .v2 = 0.875 };
}

// From T_Snnn_xay.c:72827:72847
// struct  L_F_C  {
//   __tsi64 v1;
//   float v2;
//   char v3;
// };

test "L_F_C layout" {
    var lv: c.L_F_C = undefined;
    try testing.expectSize(c.L_F_C, 16);
    try testing.expectAlign(c.L_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_F_C C calls" {
    try testing.expectEqual(c.ret_L_F_C(), .{ .v1 = 27713, .v2 = -2.125, .v3 = 118 });
    try testing.expectOk(c.assert_ret_L_F_C());
    try testing.expectOk(c.send_L_F_C());
    try testing.expectOk(c.assert_L_F_C(.{ .v1 = 27713, .v2 = -2.125, .v3 = 118 }));
}
pub export fn zig_assert_L_F_C(lv: c.L_F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27713) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 118) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_C() c.L_F_C {
    return .{ .v1 = 27713, .v2 = -2.125, .v3 = 118 };
}

// From T_Snnn_xay.c:72852:72872
// struct  L_F_D  {
//   __tsi64 v1;
//   float v2;
//   double v3;
// };

test "L_F_D layout" {
    var lv: c.L_F_D = undefined;
    try testing.expectSize(c.L_F_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_F_D C calls" {
    try testing.expectEqual(c.ret_L_F_D(), .{ .v1 = 10395, .v2 = -2.125, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_L_F_D());
    try testing.expectOk(c.send_L_F_D());
    try testing.expectOk(c.assert_L_F_D(.{ .v1 = 10395, .v2 = -2.125, .v3 = 1.0 }));
}
pub export fn zig_assert_L_F_D(lv: c.L_F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10395) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_D() c.L_F_D {
    return .{ .v1 = 10395, .v2 = -2.125, .v3 = 1.0 };
}

// From T_Snnn_xay.c:72877:72897
// struct  L_F_F  {
//   __tsi64 v1;
//   float v2;
//   float v3;
// };

test "L_F_F layout" {
    var lv: c.L_F_F = undefined;
    try testing.expectSize(c.L_F_F, 16);
    try testing.expectAlign(c.L_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_F_F C calls" {
    try testing.expectEqual(c.ret_L_F_F(), .{ .v1 = 17552, .v2 = 4.5, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_L_F_F());
    try testing.expectOk(c.send_L_F_F());
    try testing.expectOk(c.assert_L_F_F(.{ .v1 = 17552, .v2 = 4.5, .v3 = 4.5 }));
}
pub export fn zig_assert_L_F_F(lv: c.L_F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17552) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_F() c.L_F_F {
    return .{ .v1 = 17552, .v2 = 4.5, .v3 = 4.5 };
}

// From T_Snnn_xay.c:72902:72922
// struct  L_F_I  {
//   __tsi64 v1;
//   float v2;
//   int v3;
// };

test "L_F_I layout" {
    var lv: c.L_F_I = undefined;
    try testing.expectSize(c.L_F_I, 16);
    try testing.expectAlign(c.L_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_F_I C calls" {
    try testing.expectEqual(c.ret_L_F_I(), .{ .v1 = 17060, .v2 = 4.5, .v3 = 4447 });
    try testing.expectOk(c.assert_ret_L_F_I());
    try testing.expectOk(c.send_L_F_I());
    try testing.expectOk(c.assert_L_F_I(.{ .v1 = 17060, .v2 = 4.5, .v3 = 4447 }));
}
pub export fn zig_assert_L_F_I(lv: c.L_F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17060) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 4447) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_I() c.L_F_I {
    return .{ .v1 = 17060, .v2 = 4.5, .v3 = 4447 };
}

// From T_Snnn_xay.c:72927:72947
// struct  L_F_Ip  {
//   __tsi64 v1;
//   float v2;
//   int *v3;
// };

test "L_F_Ip layout" {
    var lv: c.L_F_Ip = undefined;
    try testing.expectSize(c.L_F_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_F_Ip C calls" {
    try testing.expectEqual(c.ret_L_F_Ip(), .{ .v1 = 26616, .v2 = 0.5, .v3 = null });
    try testing.expectOk(c.assert_ret_L_F_Ip());
    try testing.expectOk(c.send_L_F_Ip());
    try testing.expectOk(c.assert_L_F_Ip(.{ .v1 = 26616, .v2 = 0.5, .v3 = null }));
}
pub export fn zig_assert_L_F_Ip(lv: c.L_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26616) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_Ip() c.L_F_Ip {
    return .{ .v1 = 26616, .v2 = 0.5, .v3 = null };
}

// From T_Snnn_xay.c:72952:72972
// struct  L_F_L  {
//   __tsi64 v1;
//   float v2;
//   __tsi64 v3;
// };

test "L_F_L layout" {
    var lv: c.L_F_L = undefined;
    try testing.expectSize(c.L_F_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_F_L C calls" {
    try testing.expectEqual(c.ret_L_F_L(), .{ .v1 = 24549, .v2 = 0.5, .v3 = 21763 });
    try testing.expectOk(c.assert_ret_L_F_L());
    try testing.expectOk(c.send_L_F_L());
    try testing.expectOk(c.assert_L_F_L(.{ .v1 = 24549, .v2 = 0.5, .v3 = 21763 }));
}
pub export fn zig_assert_L_F_L(lv: c.L_F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24549) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 21763) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_L() c.L_F_L {
    return .{ .v1 = 24549, .v2 = 0.5, .v3 = 21763 };
}

// From T_Snnn_xay.c:72977:72997
// struct  L_F_S  {
//   __tsi64 v1;
//   float v2;
//   short v3;
// };

test "L_F_S layout" {
    var lv: c.L_F_S = undefined;
    try testing.expectSize(c.L_F_S, 16);
    try testing.expectAlign(c.L_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_F_S C calls" {
    try testing.expectEqual(c.ret_L_F_S(), .{ .v1 = 4641, .v2 = 1.0, .v3 = 17449 });
    try testing.expectOk(c.assert_ret_L_F_S());
    try testing.expectOk(c.send_L_F_S());
    try testing.expectOk(c.assert_L_F_S(.{ .v1 = 4641, .v2 = 1.0, .v3 = 17449 }));
}
pub export fn zig_assert_L_F_S(lv: c.L_F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4641) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 17449) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_S() c.L_F_S {
    return .{ .v1 = 4641, .v2 = 1.0, .v3 = 17449 };
}

// From T_Snnn_xay.c:73002:73022
// struct  L_F_Uc  {
//   __tsi64 v1;
//   float v2;
//   unsigned char v3;
// };

test "L_F_Uc layout" {
    var lv: c.L_F_Uc = undefined;
    try testing.expectSize(c.L_F_Uc, 16);
    try testing.expectAlign(c.L_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_F_Uc C calls" {
    try testing.expectEqual(c.ret_L_F_Uc(), .{ .v1 = 28826, .v2 = 0.5, .v3 = 9 });
    try testing.expectOk(c.assert_ret_L_F_Uc());
    try testing.expectOk(c.send_L_F_Uc());
    try testing.expectOk(c.assert_L_F_Uc(.{ .v1 = 28826, .v2 = 0.5, .v3 = 9 }));
}
pub export fn zig_assert_L_F_Uc(lv: c.L_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28826) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 9) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_Uc() c.L_F_Uc {
    return .{ .v1 = 28826, .v2 = 0.5, .v3 = 9 };
}

// From T_Snnn_xay.c:73027:73047
// struct  L_F_Ui  {
//   __tsi64 v1;
//   float v2;
//   unsigned int v3;
// };

test "L_F_Ui layout" {
    var lv: c.L_F_Ui = undefined;
    try testing.expectSize(c.L_F_Ui, 16);
    try testing.expectAlign(c.L_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_F_Ui C calls" {
    try testing.expectEqual(c.ret_L_F_Ui(), .{ .v1 = 3058, .v2 = 7.0, .v3 = 31769 });
    try testing.expectOk(c.assert_ret_L_F_Ui());
    try testing.expectOk(c.send_L_F_Ui());
    try testing.expectOk(c.assert_L_F_Ui(.{ .v1 = 3058, .v2 = 7.0, .v3 = 31769 }));
}
pub export fn zig_assert_L_F_Ui(lv: c.L_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3058) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 31769) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_Ui() c.L_F_Ui {
    return .{ .v1 = 3058, .v2 = 7.0, .v3 = 31769 };
}

// From T_Snnn_xay.c:73052:73072
// struct  L_F_Ul  {
//   __tsi64 v1;
//   float v2;
//   __tsu64 v3;
// };

test "L_F_Ul layout" {
    var lv: c.L_F_Ul = undefined;
    try testing.expectSize(c.L_F_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_F_Ul C calls" {
    try testing.expectEqual(c.ret_L_F_Ul(), .{ .v1 = 22249, .v2 = 0.875, .v3 = 6416 });
    try testing.expectOk(c.assert_ret_L_F_Ul());
    try testing.expectOk(c.send_L_F_Ul());
    try testing.expectOk(c.assert_L_F_Ul(.{ .v1 = 22249, .v2 = 0.875, .v3 = 6416 }));
}
pub export fn zig_assert_L_F_Ul(lv: c.L_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22249) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 6416) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_Ul() c.L_F_Ul {
    return .{ .v1 = 22249, .v2 = 0.875, .v3 = 6416 };
}

// From T_Snnn_xay.c:73077:73097
// struct  L_F_Us  {
//   __tsi64 v1;
//   float v2;
//   unsigned short v3;
// };

test "L_F_Us layout" {
    var lv: c.L_F_Us = undefined;
    try testing.expectSize(c.L_F_Us, 16);
    try testing.expectAlign(c.L_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_F_Us C calls" {
    try testing.expectEqual(c.ret_L_F_Us(), .{ .v1 = 27116, .v2 = 4.5, .v3 = 28703 });
    try testing.expectOk(c.assert_ret_L_F_Us());
    try testing.expectOk(c.send_L_F_Us());
    try testing.expectOk(c.assert_L_F_Us(.{ .v1 = 27116, .v2 = 4.5, .v3 = 28703 }));
}
pub export fn zig_assert_L_F_Us(lv: c.L_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27116) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 28703) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_Us() c.L_F_Us {
    return .{ .v1 = 27116, .v2 = 4.5, .v3 = 28703 };
}

// From T_Snnn_xay.c:73102:73122
// struct  L_F_Vp  {
//   __tsi64 v1;
//   float v2;
//   void *v3;
// };

test "L_F_Vp layout" {
    var lv: c.L_F_Vp = undefined;
    try testing.expectSize(c.L_F_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_F_Vp C calls" {
    try testing.expectEqual(c.ret_L_F_Vp(), .{ .v1 = 9926, .v2 = 7.0, .v3 = null });
    try testing.expectOk(c.assert_ret_L_F_Vp());
    try testing.expectOk(c.send_L_F_Vp());
    try testing.expectOk(c.assert_L_F_Vp(.{ .v1 = 9926, .v2 = 7.0, .v3 = null }));
}
pub export fn zig_assert_L_F_Vp(lv: c.L_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9926) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_Vp() c.L_F_Vp {
    return .{ .v1 = 9926, .v2 = 7.0, .v3 = null };
}

// From T_Snnn_xay.c:73127:73145
// struct  L_I  {
//   __tsi64 v1;
//   int v2;
// };

test "L_I layout" {
    var lv: c.L_I = undefined;
    try testing.expectSize(c.L_I, ABISELECT(16, 12));
    try testing.expectAlign(c.L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_I C calls" {
    try testing.expectEqual(c.ret_L_I(), .{ .v1 = 12936, .v2 = 5669 });
    try testing.expectOk(c.assert_ret_L_I());
    try testing.expectOk(c.send_L_I());
    try testing.expectOk(c.assert_L_I(.{ .v1 = 12936, .v2 = 5669 }));
}
pub export fn zig_assert_L_I(lv: c.L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12936) err = 1;
    if (lv.v2 != 5669) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I() c.L_I {
    return .{ .v1 = 12936, .v2 = 5669 };
}

// From T_Snnn_xay.c:73874:73894
// struct  L_I_C  {
//   __tsi64 v1;
//   int v2;
//   char v3;
// };

test "L_I_C layout" {
    var lv: c.L_I_C = undefined;
    try testing.expectSize(c.L_I_C, 16);
    try testing.expectAlign(c.L_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_I_C C calls" {
    try testing.expectEqual(c.ret_L_I_C(), .{ .v1 = 31205, .v2 = 30676, .v3 = 42 });
    try testing.expectOk(c.assert_ret_L_I_C());
    try testing.expectOk(c.send_L_I_C());
    try testing.expectOk(c.assert_L_I_C(.{ .v1 = 31205, .v2 = 30676, .v3 = 42 }));
}
pub export fn zig_assert_L_I_C(lv: c.L_I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31205) err = 1;
    if (lv.v2 != 30676) err = 2;
    if (lv.v3 != 42) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_C() c.L_I_C {
    return .{ .v1 = 31205, .v2 = 30676, .v3 = 42 };
}

// From T_Snnn_xay.c:73899:73919
// struct  L_I_D  {
//   __tsi64 v1;
//   int v2;
//   double v3;
// };

test "L_I_D layout" {
    var lv: c.L_I_D = undefined;
    try testing.expectSize(c.L_I_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_I_D C calls" {
    try testing.expectEqual(c.ret_L_I_D(), .{ .v1 = 5934, .v2 = 3247, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_L_I_D());
    try testing.expectOk(c.send_L_I_D());
    try testing.expectOk(c.assert_L_I_D(.{ .v1 = 5934, .v2 = 3247, .v3 = -2.125 }));
}
pub export fn zig_assert_L_I_D(lv: c.L_I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5934) err = 1;
    if (lv.v2 != 3247) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_D() c.L_I_D {
    return .{ .v1 = 5934, .v2 = 3247, .v3 = -2.125 };
}

// From T_Snnn_xay.c:73924:73944
// struct  L_I_F  {
//   __tsi64 v1;
//   int v2;
//   float v3;
// };

test "L_I_F layout" {
    var lv: c.L_I_F = undefined;
    try testing.expectSize(c.L_I_F, 16);
    try testing.expectAlign(c.L_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_I_F C calls" {
    try testing.expectEqual(c.ret_L_I_F(), .{ .v1 = 28228, .v2 = 20992, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_L_I_F());
    try testing.expectOk(c.send_L_I_F());
    try testing.expectOk(c.assert_L_I_F(.{ .v1 = 28228, .v2 = 20992, .v3 = 0.5 }));
}
pub export fn zig_assert_L_I_F(lv: c.L_I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28228) err = 1;
    if (lv.v2 != 20992) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_F() c.L_I_F {
    return .{ .v1 = 28228, .v2 = 20992, .v3 = 0.5 };
}

// From T_Snnn_xay.c:73949:73969
// struct  L_I_I  {
//   __tsi64 v1;
//   int v2;
//   int v3;
// };

test "L_I_I layout" {
    var lv: c.L_I_I = undefined;
    try testing.expectSize(c.L_I_I, 16);
    try testing.expectAlign(c.L_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_I_I C calls" {
    try testing.expectEqual(c.ret_L_I_I(), .{ .v1 = 17949, .v2 = 9355, .v3 = 17358 });
    try testing.expectOk(c.assert_ret_L_I_I());
    try testing.expectOk(c.send_L_I_I());
    try testing.expectOk(c.assert_L_I_I(.{ .v1 = 17949, .v2 = 9355, .v3 = 17358 }));
}
pub export fn zig_assert_L_I_I(lv: c.L_I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17949) err = 1;
    if (lv.v2 != 9355) err = 2;
    if (lv.v3 != 17358) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_I() c.L_I_I {
    return .{ .v1 = 17949, .v2 = 9355, .v3 = 17358 };
}

// From T_Snnn_xay.c:73974:73994
// struct  L_I_Ip  {
//   __tsi64 v1;
//   int v2;
//   int *v3;
// };

test "L_I_Ip layout" {
    var lv: c.L_I_Ip = undefined;
    try testing.expectSize(c.L_I_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_I_Ip C calls" {
    try testing.expectEqual(c.ret_L_I_Ip(), .{ .v1 = 7563, .v2 = 12012, .v3 = null });
    try testing.expectOk(c.assert_ret_L_I_Ip());
    try testing.expectOk(c.send_L_I_Ip());
    try testing.expectOk(c.assert_L_I_Ip(.{ .v1 = 7563, .v2 = 12012, .v3 = null }));
}
pub export fn zig_assert_L_I_Ip(lv: c.L_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7563) err = 1;
    if (lv.v2 != 12012) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_Ip() c.L_I_Ip {
    return .{ .v1 = 7563, .v2 = 12012, .v3 = null };
}

// From T_Snnn_xay.c:73999:74019
// struct  L_I_L  {
//   __tsi64 v1;
//   int v2;
//   __tsi64 v3;
// };

test "L_I_L layout" {
    var lv: c.L_I_L = undefined;
    try testing.expectSize(c.L_I_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_I_L C calls" {
    try testing.expectEqual(c.ret_L_I_L(), .{ .v1 = 6588, .v2 = 4063, .v3 = 20680 });
    try testing.expectOk(c.assert_ret_L_I_L());
    try testing.expectOk(c.send_L_I_L());
    try testing.expectOk(c.assert_L_I_L(.{ .v1 = 6588, .v2 = 4063, .v3 = 20680 }));
}
pub export fn zig_assert_L_I_L(lv: c.L_I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6588) err = 1;
    if (lv.v2 != 4063) err = 2;
    if (lv.v3 != 20680) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_L() c.L_I_L {
    return .{ .v1 = 6588, .v2 = 4063, .v3 = 20680 };
}

// From T_Snnn_xay.c:74024:74044
// struct  L_I_S  {
//   __tsi64 v1;
//   int v2;
//   short v3;
// };

test "L_I_S layout" {
    var lv: c.L_I_S = undefined;
    try testing.expectSize(c.L_I_S, 16);
    try testing.expectAlign(c.L_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_I_S C calls" {
    try testing.expectEqual(c.ret_L_I_S(), .{ .v1 = 1798, .v2 = 32046, .v3 = 3082 });
    try testing.expectOk(c.assert_ret_L_I_S());
    try testing.expectOk(c.send_L_I_S());
    try testing.expectOk(c.assert_L_I_S(.{ .v1 = 1798, .v2 = 32046, .v3 = 3082 }));
}
pub export fn zig_assert_L_I_S(lv: c.L_I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1798) err = 1;
    if (lv.v2 != 32046) err = 2;
    if (lv.v3 != 3082) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_S() c.L_I_S {
    return .{ .v1 = 1798, .v2 = 32046, .v3 = 3082 };
}

// From T_Snnn_xay.c:74049:74069
// struct  L_I_Uc  {
//   __tsi64 v1;
//   int v2;
//   unsigned char v3;
// };

test "L_I_Uc layout" {
    var lv: c.L_I_Uc = undefined;
    try testing.expectSize(c.L_I_Uc, 16);
    try testing.expectAlign(c.L_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_I_Uc C calls" {
    try testing.expectEqual(c.ret_L_I_Uc(), .{ .v1 = 7486, .v2 = 6856, .v3 = 64 });
    try testing.expectOk(c.assert_ret_L_I_Uc());
    try testing.expectOk(c.send_L_I_Uc());
    try testing.expectOk(c.assert_L_I_Uc(.{ .v1 = 7486, .v2 = 6856, .v3 = 64 }));
}
pub export fn zig_assert_L_I_Uc(lv: c.L_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7486) err = 1;
    if (lv.v2 != 6856) err = 2;
    if (lv.v3 != 64) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_Uc() c.L_I_Uc {
    return .{ .v1 = 7486, .v2 = 6856, .v3 = 64 };
}

// From T_Snnn_xay.c:74074:74094
// struct  L_I_Ui  {
//   __tsi64 v1;
//   int v2;
//   unsigned int v3;
// };

test "L_I_Ui layout" {
    var lv: c.L_I_Ui = undefined;
    try testing.expectSize(c.L_I_Ui, 16);
    try testing.expectAlign(c.L_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_I_Ui C calls" {
    try testing.expectEqual(c.ret_L_I_Ui(), .{ .v1 = 20262, .v2 = 602, .v3 = 32755 });
    try testing.expectOk(c.assert_ret_L_I_Ui());
    try testing.expectOk(c.send_L_I_Ui());
    try testing.expectOk(c.assert_L_I_Ui(.{ .v1 = 20262, .v2 = 602, .v3 = 32755 }));
}
pub export fn zig_assert_L_I_Ui(lv: c.L_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20262) err = 1;
    if (lv.v2 != 602) err = 2;
    if (lv.v3 != 32755) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_Ui() c.L_I_Ui {
    return .{ .v1 = 20262, .v2 = 602, .v3 = 32755 };
}

// From T_Snnn_xay.c:74099:74119
// struct  L_I_Ul  {
//   __tsi64 v1;
//   int v2;
//   __tsu64 v3;
// };

test "L_I_Ul layout" {
    var lv: c.L_I_Ul = undefined;
    try testing.expectSize(c.L_I_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_I_Ul C calls" {
    try testing.expectEqual(c.ret_L_I_Ul(), .{ .v1 = 25833, .v2 = 12307, .v3 = 8335 });
    try testing.expectOk(c.assert_ret_L_I_Ul());
    try testing.expectOk(c.send_L_I_Ul());
    try testing.expectOk(c.assert_L_I_Ul(.{ .v1 = 25833, .v2 = 12307, .v3 = 8335 }));
}
pub export fn zig_assert_L_I_Ul(lv: c.L_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25833) err = 1;
    if (lv.v2 != 12307) err = 2;
    if (lv.v3 != 8335) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_Ul() c.L_I_Ul {
    return .{ .v1 = 25833, .v2 = 12307, .v3 = 8335 };
}

// From T_Snnn_xay.c:74124:74144
// struct  L_I_Us  {
//   __tsi64 v1;
//   int v2;
//   unsigned short v3;
// };

test "L_I_Us layout" {
    var lv: c.L_I_Us = undefined;
    try testing.expectSize(c.L_I_Us, 16);
    try testing.expectAlign(c.L_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_I_Us C calls" {
    try testing.expectEqual(c.ret_L_I_Us(), .{ .v1 = 16887, .v2 = 17516, .v3 = 23467 });
    try testing.expectOk(c.assert_ret_L_I_Us());
    try testing.expectOk(c.send_L_I_Us());
    try testing.expectOk(c.assert_L_I_Us(.{ .v1 = 16887, .v2 = 17516, .v3 = 23467 }));
}
pub export fn zig_assert_L_I_Us(lv: c.L_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16887) err = 1;
    if (lv.v2 != 17516) err = 2;
    if (lv.v3 != 23467) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_Us() c.L_I_Us {
    return .{ .v1 = 16887, .v2 = 17516, .v3 = 23467 };
}

// From T_Snnn_xay.c:74149:74169
// struct  L_I_Vp  {
//   __tsi64 v1;
//   int v2;
//   void *v3;
// };

test "L_I_Vp layout" {
    var lv: c.L_I_Vp = undefined;
    try testing.expectSize(c.L_I_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_I_Vp C calls" {
    try testing.expectEqual(c.ret_L_I_Vp(), .{ .v1 = 31263, .v2 = 25490, .v3 = null });
    try testing.expectOk(c.assert_ret_L_I_Vp());
    try testing.expectOk(c.send_L_I_Vp());
    try testing.expectOk(c.assert_L_I_Vp(.{ .v1 = 31263, .v2 = 25490, .v3 = null }));
}
pub export fn zig_assert_L_I_Vp(lv: c.L_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31263) err = 1;
    if (lv.v2 != 25490) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_Vp() c.L_I_Vp {
    return .{ .v1 = 31263, .v2 = 25490, .v3 = null };
}

// From T_Snnn_xay.c:74174:74192
// struct  L_Ip  {
//   __tsi64 v1;
//   int *v2;
// };

test "L_Ip layout" {
    var lv: c.L_Ip = undefined;
    try testing.expectSize(c.L_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_Ip C calls" {
    try testing.expectEqual(c.ret_L_Ip(), .{ .v1 = 20916, .v2 = null });
    try testing.expectOk(c.assert_ret_L_Ip());
    try testing.expectOk(c.send_L_Ip());
    try testing.expectOk(c.assert_L_Ip(.{ .v1 = 20916, .v2 = null }));
}
pub export fn zig_assert_L_Ip(lv: c.L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20916) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip() c.L_Ip {
    return .{ .v1 = 20916, .v2 = null };
}

// From T_Snnn_xay.c:74921:74941
// struct  L_Ip_C  {
//   __tsi64 v1;
//   int *v2;
//   char v3;
// };

test "L_Ip_C layout" {
    var lv: c.L_Ip_C = undefined;
    try testing.expectSize(c.L_Ip_C, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_C C calls" {
    try testing.expectEqual(c.ret_L_Ip_C(), .{ .v1 = 29257, .v2 = null, .v3 = 0 });
    try testing.expectOk(c.assert_ret_L_Ip_C());
    try testing.expectOk(c.send_L_Ip_C());
    try testing.expectOk(c.assert_L_Ip_C(.{ .v1 = 29257, .v2 = null, .v3 = 0 }));
}
pub export fn zig_assert_L_Ip_C(lv: c.L_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29257) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_C() c.L_Ip_C {
    return .{ .v1 = 29257, .v2 = null, .v3 = 0 };
}

// From T_Snnn_xay.c:74946:74966
// struct  L_Ip_D  {
//   __tsi64 v1;
//   int *v2;
//   double v3;
// };

test "L_Ip_D layout" {
    var lv: c.L_Ip_D = undefined;
    try testing.expectSize(c.L_Ip_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_D C calls" {
    try testing.expectEqual(c.ret_L_Ip_D(), .{ .v1 = 26328, .v2 = null, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_L_Ip_D());
    try testing.expectOk(c.send_L_Ip_D());
    try testing.expectOk(c.assert_L_Ip_D(.{ .v1 = 26328, .v2 = null, .v3 = 0.5 }));
}
pub export fn zig_assert_L_Ip_D(lv: c.L_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26328) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_D() c.L_Ip_D {
    return .{ .v1 = 26328, .v2 = null, .v3 = 0.5 };
}

// From T_Snnn_xay.c:74971:74991
// struct  L_Ip_F  {
//   __tsi64 v1;
//   int *v2;
//   float v3;
// };

test "L_Ip_F layout" {
    var lv: c.L_Ip_F = undefined;
    try testing.expectSize(c.L_Ip_F, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_F C calls" {
    try testing.expectEqual(c.ret_L_Ip_F(), .{ .v1 = 7686, .v2 = null, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_L_Ip_F());
    try testing.expectOk(c.send_L_Ip_F());
    try testing.expectOk(c.assert_L_Ip_F(.{ .v1 = 7686, .v2 = null, .v3 = 4.5 }));
}
pub export fn zig_assert_L_Ip_F(lv: c.L_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7686) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_F() c.L_Ip_F {
    return .{ .v1 = 7686, .v2 = null, .v3 = 4.5 };
}

// From T_Snnn_xay.c:74996:75016
// struct  L_Ip_I  {
//   __tsi64 v1;
//   int *v2;
//   int v3;
// };

test "L_Ip_I layout" {
    var lv: c.L_Ip_I = undefined;
    try testing.expectSize(c.L_Ip_I, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_I C calls" {
    try testing.expectEqual(c.ret_L_Ip_I(), .{ .v1 = 10061, .v2 = null, .v3 = 24203 });
    try testing.expectOk(c.assert_ret_L_Ip_I());
    try testing.expectOk(c.send_L_Ip_I());
    try testing.expectOk(c.assert_L_Ip_I(.{ .v1 = 10061, .v2 = null, .v3 = 24203 }));
}
pub export fn zig_assert_L_Ip_I(lv: c.L_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10061) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 24203) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_I() c.L_Ip_I {
    return .{ .v1 = 10061, .v2 = null, .v3 = 24203 };
}

// From T_Snnn_xay.c:75021:75041
// struct  L_Ip_Ip  {
//   __tsi64 v1;
//   int *v2;
//   int *v3;
// };

test "L_Ip_Ip layout" {
    var lv: c.L_Ip_Ip = undefined;
    try testing.expectSize(c.L_Ip_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_Ip C calls" {
    try testing.expectEqual(c.ret_L_Ip_Ip(), .{ .v1 = 11192, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_L_Ip_Ip());
    try testing.expectOk(c.send_L_Ip_Ip());
    try testing.expectOk(c.assert_L_Ip_Ip(.{ .v1 = 11192, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_L_Ip_Ip(lv: c.L_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11192) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_Ip() c.L_Ip_Ip {
    return .{ .v1 = 11192, .v2 = null, .v3 = null };
}

// From T_Snnn_xay.c:75046:75066
// struct  L_Ip_L  {
//   __tsi64 v1;
//   int *v2;
//   __tsi64 v3;
// };

test "L_Ip_L layout" {
    var lv: c.L_Ip_L = undefined;
    try testing.expectSize(c.L_Ip_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_L C calls" {
    try testing.expectEqual(c.ret_L_Ip_L(), .{ .v1 = 6093, .v2 = null, .v3 = 25441 });
    try testing.expectOk(c.assert_ret_L_Ip_L());
    try testing.expectOk(c.send_L_Ip_L());
    try testing.expectOk(c.assert_L_Ip_L(.{ .v1 = 6093, .v2 = null, .v3 = 25441 }));
}
pub export fn zig_assert_L_Ip_L(lv: c.L_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6093) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 25441) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_L() c.L_Ip_L {
    return .{ .v1 = 6093, .v2 = null, .v3 = 25441 };
}

// From T_Snnn_xay.c:75071:75091
// struct  L_Ip_S  {
//   __tsi64 v1;
//   int *v2;
//   short v3;
// };

test "L_Ip_S layout" {
    var lv: c.L_Ip_S = undefined;
    try testing.expectSize(c.L_Ip_S, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_S C calls" {
    try testing.expectEqual(c.ret_L_Ip_S(), .{ .v1 = 1928, .v2 = null, .v3 = 1004 });
    try testing.expectOk(c.assert_ret_L_Ip_S());
    try testing.expectOk(c.send_L_Ip_S());
    try testing.expectOk(c.assert_L_Ip_S(.{ .v1 = 1928, .v2 = null, .v3 = 1004 }));
}
pub export fn zig_assert_L_Ip_S(lv: c.L_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1928) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 1004) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_S() c.L_Ip_S {
    return .{ .v1 = 1928, .v2 = null, .v3 = 1004 };
}

// From T_Snnn_xay.c:75096:75116
// struct  L_Ip_Uc  {
//   __tsi64 v1;
//   int *v2;
//   unsigned char v3;
// };

test "L_Ip_Uc layout" {
    var lv: c.L_Ip_Uc = undefined;
    try testing.expectSize(c.L_Ip_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_Uc C calls" {
    try testing.expectEqual(c.ret_L_Ip_Uc(), .{ .v1 = 25050, .v2 = null, .v3 = 52 });
    try testing.expectOk(c.assert_ret_L_Ip_Uc());
    try testing.expectOk(c.send_L_Ip_Uc());
    try testing.expectOk(c.assert_L_Ip_Uc(.{ .v1 = 25050, .v2 = null, .v3 = 52 }));
}
pub export fn zig_assert_L_Ip_Uc(lv: c.L_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25050) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 52) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_Uc() c.L_Ip_Uc {
    return .{ .v1 = 25050, .v2 = null, .v3 = 52 };
}

// From T_Snnn_xay.c:75121:75141
// struct  L_Ip_Ui  {
//   __tsi64 v1;
//   int *v2;
//   unsigned int v3;
// };

test "L_Ip_Ui layout" {
    var lv: c.L_Ip_Ui = undefined;
    try testing.expectSize(c.L_Ip_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_Ui C calls" {
    try testing.expectEqual(c.ret_L_Ip_Ui(), .{ .v1 = 3954, .v2 = null, .v3 = 30949 });
    try testing.expectOk(c.assert_ret_L_Ip_Ui());
    try testing.expectOk(c.send_L_Ip_Ui());
    try testing.expectOk(c.assert_L_Ip_Ui(.{ .v1 = 3954, .v2 = null, .v3 = 30949 }));
}
pub export fn zig_assert_L_Ip_Ui(lv: c.L_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3954) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 30949) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_Ui() c.L_Ip_Ui {
    return .{ .v1 = 3954, .v2 = null, .v3 = 30949 };
}

// From T_Snnn_xay.c:75146:75166
// struct  L_Ip_Ul  {
//   __tsi64 v1;
//   int *v2;
//   __tsu64 v3;
// };

test "L_Ip_Ul layout" {
    var lv: c.L_Ip_Ul = undefined;
    try testing.expectSize(c.L_Ip_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_Ul C calls" {
    try testing.expectEqual(c.ret_L_Ip_Ul(), .{ .v1 = 698, .v2 = null, .v3 = 30067 });
    try testing.expectOk(c.assert_ret_L_Ip_Ul());
    try testing.expectOk(c.send_L_Ip_Ul());
    try testing.expectOk(c.assert_L_Ip_Ul(.{ .v1 = 698, .v2 = null, .v3 = 30067 }));
}
pub export fn zig_assert_L_Ip_Ul(lv: c.L_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 698) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 30067) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_Ul() c.L_Ip_Ul {
    return .{ .v1 = 698, .v2 = null, .v3 = 30067 };
}

// From T_Snnn_xay.c:75171:75191
// struct  L_Ip_Us  {
//   __tsi64 v1;
//   int *v2;
//   unsigned short v3;
// };

test "L_Ip_Us layout" {
    var lv: c.L_Ip_Us = undefined;
    try testing.expectSize(c.L_Ip_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_Us C calls" {
    try testing.expectEqual(c.ret_L_Ip_Us(), .{ .v1 = 28375, .v2 = null, .v3 = 8024 });
    try testing.expectOk(c.assert_ret_L_Ip_Us());
    try testing.expectOk(c.send_L_Ip_Us());
    try testing.expectOk(c.assert_L_Ip_Us(.{ .v1 = 28375, .v2 = null, .v3 = 8024 }));
}
pub export fn zig_assert_L_Ip_Us(lv: c.L_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28375) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 8024) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_Us() c.L_Ip_Us {
    return .{ .v1 = 28375, .v2 = null, .v3 = 8024 };
}

// From T_Snnn_xay.c:75196:75216
// struct  L_Ip_Vp  {
//   __tsi64 v1;
//   int *v2;
//   void *v3;
// };

test "L_Ip_Vp layout" {
    var lv: c.L_Ip_Vp = undefined;
    try testing.expectSize(c.L_Ip_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_Vp C calls" {
    try testing.expectEqual(c.ret_L_Ip_Vp(), .{ .v1 = 7723, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_L_Ip_Vp());
    try testing.expectOk(c.send_L_Ip_Vp());
    try testing.expectOk(c.assert_L_Ip_Vp(.{ .v1 = 7723, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_L_Ip_Vp(lv: c.L_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7723) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_Vp() c.L_Ip_Vp {
    return .{ .v1 = 7723, .v2 = null, .v3 = null };
}

// From T_Snnn_xay.c:75221:75239
// struct  L_L  {
//   __tsi64 v1;
//   __tsi64 v2;
// };

test "L_L layout" {
    var lv: c.L_L = undefined;
    try testing.expectSize(c.L_L, 16);
    try testing.expectAlign(c.L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_L C calls" {
    try testing.expectEqual(c.ret_L_L(), .{ .v1 = 30364, .v2 = 10204 });
    try testing.expectOk(c.assert_ret_L_L());
    try testing.expectOk(c.send_L_L());
    try testing.expectOk(c.assert_L_L(.{ .v1 = 30364, .v2 = 10204 }));
}
pub export fn zig_assert_L_L(lv: c.L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30364) err = 1;
    if (lv.v2 != 10204) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L() c.L_L {
    return .{ .v1 = 30364, .v2 = 10204 };
}

// From T_Snnn_xay.c:75968:75988
// struct  L_L_C  {
//   __tsi64 v1;
//   __tsi64 v2;
//   char v3;
// };

test "L_L_C layout" {
    var lv: c.L_L_C = undefined;
    try testing.expectSize(c.L_L_C, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_C C calls" {
    try testing.expectEqual(c.ret_L_L_C(), .{ .v1 = 7816, .v2 = 30487, .v3 = 16 });
    try testing.expectOk(c.assert_ret_L_L_C());
    try testing.expectOk(c.send_L_L_C());
    try testing.expectOk(c.assert_L_L_C(.{ .v1 = 7816, .v2 = 30487, .v3 = 16 }));
}
pub export fn zig_assert_L_L_C(lv: c.L_L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7816) err = 1;
    if (lv.v2 != 30487) err = 2;
    if (lv.v3 != 16) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_C() c.L_L_C {
    return .{ .v1 = 7816, .v2 = 30487, .v3 = 16 };
}

// From T_Snnn_xay.c:75993:76013
// struct  L_L_D  {
//   __tsi64 v1;
//   __tsi64 v2;
//   double v3;
// };

test "L_L_D layout" {
    var lv: c.L_L_D = undefined;
    try testing.expectSize(c.L_L_D, 24);
    try testing.expectAlign(c.L_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_D C calls" {
    try testing.expectEqual(c.ret_L_L_D(), .{ .v1 = 32294, .v2 = 28652, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_L_L_D());
    try testing.expectOk(c.send_L_L_D());
    try testing.expectOk(c.assert_L_L_D(.{ .v1 = 32294, .v2 = 28652, .v3 = -0.25 }));
}
pub export fn zig_assert_L_L_D(lv: c.L_L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32294) err = 1;
    if (lv.v2 != 28652) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_D() c.L_L_D {
    return .{ .v1 = 32294, .v2 = 28652, .v3 = -0.25 };
}

// From T_Snnn_xay.c:76018:76038
// struct  L_L_F  {
//   __tsi64 v1;
//   __tsi64 v2;
//   float v3;
// };

test "L_L_F layout" {
    var lv: c.L_L_F = undefined;
    try testing.expectSize(c.L_L_F, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_F C calls" {
    try testing.expectEqual(c.ret_L_L_F(), .{ .v1 = 20719, .v2 = 23780, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_L_L_F());
    try testing.expectOk(c.send_L_L_F());
    try testing.expectOk(c.assert_L_L_F(.{ .v1 = 20719, .v2 = 23780, .v3 = -2.125 }));
}
pub export fn zig_assert_L_L_F(lv: c.L_L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20719) err = 1;
    if (lv.v2 != 23780) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_F() c.L_L_F {
    return .{ .v1 = 20719, .v2 = 23780, .v3 = -2.125 };
}

// From T_Snnn_xay.c:76043:76063
// struct  L_L_I  {
//   __tsi64 v1;
//   __tsi64 v2;
//   int v3;
// };

test "L_L_I layout" {
    var lv: c.L_L_I = undefined;
    try testing.expectSize(c.L_L_I, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_I C calls" {
    try testing.expectEqual(c.ret_L_L_I(), .{ .v1 = 22923, .v2 = 25843, .v3 = 6349 });
    try testing.expectOk(c.assert_ret_L_L_I());
    try testing.expectOk(c.send_L_L_I());
    try testing.expectOk(c.assert_L_L_I(.{ .v1 = 22923, .v2 = 25843, .v3 = 6349 }));
}
pub export fn zig_assert_L_L_I(lv: c.L_L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22923) err = 1;
    if (lv.v2 != 25843) err = 2;
    if (lv.v3 != 6349) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_I() c.L_L_I {
    return .{ .v1 = 22923, .v2 = 25843, .v3 = 6349 };
}

// From T_Snnn_xay.c:76068:76088
// struct  L_L_Ip  {
//   __tsi64 v1;
//   __tsi64 v2;
//   int *v3;
// };

test "L_L_Ip layout" {
    var lv: c.L_L_Ip = undefined;
    try testing.expectSize(c.L_L_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_Ip C calls" {
    try testing.expectEqual(c.ret_L_L_Ip(), .{ .v1 = 3010, .v2 = 17169, .v3 = null });
    try testing.expectOk(c.assert_ret_L_L_Ip());
    try testing.expectOk(c.send_L_L_Ip());
    try testing.expectOk(c.assert_L_L_Ip(.{ .v1 = 3010, .v2 = 17169, .v3 = null }));
}
pub export fn zig_assert_L_L_Ip(lv: c.L_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3010) err = 1;
    if (lv.v2 != 17169) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_Ip() c.L_L_Ip {
    return .{ .v1 = 3010, .v2 = 17169, .v3 = null };
}

// From T_Snnn_xay.c:76093:76113
// struct  L_L_L  {
//   __tsi64 v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "L_L_L layout" {
    var lv: c.L_L_L = undefined;
    try testing.expectSize(c.L_L_L, 24);
    try testing.expectAlign(c.L_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_L C calls" {
    try testing.expectEqual(c.ret_L_L_L(), .{ .v1 = 23148, .v2 = 28037, .v3 = 5458 });
    try testing.expectOk(c.assert_ret_L_L_L());
    try testing.expectOk(c.send_L_L_L());
    try testing.expectOk(c.assert_L_L_L(.{ .v1 = 23148, .v2 = 28037, .v3 = 5458 }));
}
pub export fn zig_assert_L_L_L(lv: c.L_L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23148) err = 1;
    if (lv.v2 != 28037) err = 2;
    if (lv.v3 != 5458) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_L() c.L_L_L {
    return .{ .v1 = 23148, .v2 = 28037, .v3 = 5458 };
}

// From T_Snnn_xay.c:76118:76138
// struct  L_L_S  {
//   __tsi64 v1;
//   __tsi64 v2;
//   short v3;
// };

test "L_L_S layout" {
    var lv: c.L_L_S = undefined;
    try testing.expectSize(c.L_L_S, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_S C calls" {
    try testing.expectEqual(c.ret_L_L_S(), .{ .v1 = 7277, .v2 = 22459, .v3 = 11369 });
    try testing.expectOk(c.assert_ret_L_L_S());
    try testing.expectOk(c.send_L_L_S());
    try testing.expectOk(c.assert_L_L_S(.{ .v1 = 7277, .v2 = 22459, .v3 = 11369 }));
}
pub export fn zig_assert_L_L_S(lv: c.L_L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7277) err = 1;
    if (lv.v2 != 22459) err = 2;
    if (lv.v3 != 11369) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_S() c.L_L_S {
    return .{ .v1 = 7277, .v2 = 22459, .v3 = 11369 };
}

// From T_Snnn_xay.c:76143:76163
// struct  L_L_Uc  {
//   __tsi64 v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "L_L_Uc layout" {
    var lv: c.L_L_Uc = undefined;
    try testing.expectSize(c.L_L_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_Uc C calls" {
    try testing.expectEqual(c.ret_L_L_Uc(), .{ .v1 = 18427, .v2 = 15283, .v3 = 64 });
    try testing.expectOk(c.assert_ret_L_L_Uc());
    try testing.expectOk(c.send_L_L_Uc());
    try testing.expectOk(c.assert_L_L_Uc(.{ .v1 = 18427, .v2 = 15283, .v3 = 64 }));
}
pub export fn zig_assert_L_L_Uc(lv: c.L_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18427) err = 1;
    if (lv.v2 != 15283) err = 2;
    if (lv.v3 != 64) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_Uc() c.L_L_Uc {
    return .{ .v1 = 18427, .v2 = 15283, .v3 = 64 };
}

// From T_Snnn_xay.c:76168:76188
// struct  L_L_Ui  {
//   __tsi64 v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "L_L_Ui layout" {
    var lv: c.L_L_Ui = undefined;
    try testing.expectSize(c.L_L_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_Ui C calls" {
    try testing.expectEqual(c.ret_L_L_Ui(), .{ .v1 = 12217, .v2 = 13821, .v3 = 29427 });
    try testing.expectOk(c.assert_ret_L_L_Ui());
    try testing.expectOk(c.send_L_L_Ui());
    try testing.expectOk(c.assert_L_L_Ui(.{ .v1 = 12217, .v2 = 13821, .v3 = 29427 }));
}
pub export fn zig_assert_L_L_Ui(lv: c.L_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12217) err = 1;
    if (lv.v2 != 13821) err = 2;
    if (lv.v3 != 29427) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_Ui() c.L_L_Ui {
    return .{ .v1 = 12217, .v2 = 13821, .v3 = 29427 };
}

// From T_Snnn_xay.c:76193:76213
// struct  L_L_Ul  {
//   __tsi64 v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "L_L_Ul layout" {
    var lv: c.L_L_Ul = undefined;
    try testing.expectSize(c.L_L_Ul, 24);
    try testing.expectAlign(c.L_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_Ul C calls" {
    try testing.expectEqual(c.ret_L_L_Ul(), .{ .v1 = 7022, .v2 = 4806, .v3 = 28033 });
    try testing.expectOk(c.assert_ret_L_L_Ul());
    try testing.expectOk(c.send_L_L_Ul());
    try testing.expectOk(c.assert_L_L_Ul(.{ .v1 = 7022, .v2 = 4806, .v3 = 28033 }));
}
pub export fn zig_assert_L_L_Ul(lv: c.L_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7022) err = 1;
    if (lv.v2 != 4806) err = 2;
    if (lv.v3 != 28033) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_Ul() c.L_L_Ul {
    return .{ .v1 = 7022, .v2 = 4806, .v3 = 28033 };
}

// From T_Snnn_xay.c:76218:76238
// struct  L_L_Us  {
//   __tsi64 v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "L_L_Us layout" {
    var lv: c.L_L_Us = undefined;
    try testing.expectSize(c.L_L_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_Us C calls" {
    try testing.expectEqual(c.ret_L_L_Us(), .{ .v1 = 27566, .v2 = 17954, .v3 = 16079 });
    try testing.expectOk(c.assert_ret_L_L_Us());
    try testing.expectOk(c.send_L_L_Us());
    try testing.expectOk(c.assert_L_L_Us(.{ .v1 = 27566, .v2 = 17954, .v3 = 16079 }));
}
pub export fn zig_assert_L_L_Us(lv: c.L_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27566) err = 1;
    if (lv.v2 != 17954) err = 2;
    if (lv.v3 != 16079) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_Us() c.L_L_Us {
    return .{ .v1 = 27566, .v2 = 17954, .v3 = 16079 };
}

// From T_Snnn_xay.c:76243:76263
// struct  L_L_Vp  {
//   __tsi64 v1;
//   __tsi64 v2;
//   void *v3;
// };

test "L_L_Vp layout" {
    var lv: c.L_L_Vp = undefined;
    try testing.expectSize(c.L_L_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_Vp C calls" {
    try testing.expectEqual(c.ret_L_L_Vp(), .{ .v1 = 3512, .v2 = 19931, .v3 = null });
    try testing.expectOk(c.assert_ret_L_L_Vp());
    try testing.expectOk(c.send_L_L_Vp());
    try testing.expectOk(c.assert_L_L_Vp(.{ .v1 = 3512, .v2 = 19931, .v3 = null }));
}
pub export fn zig_assert_L_L_Vp(lv: c.L_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3512) err = 1;
    if (lv.v2 != 19931) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_Vp() c.L_L_Vp {
    return .{ .v1 = 3512, .v2 = 19931, .v3 = null };
}

// From T_Snnn_xay.c:76268:76286
// struct  L_S  {
//   __tsi64 v1;
//   short v2;
// };

test "L_S layout" {
    var lv: c.L_S = undefined;
    try testing.expectSize(c.L_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_S C calls" {
    try testing.expectEqual(c.ret_L_S(), .{ .v1 = 11878, .v2 = 14845 });
    try testing.expectOk(c.assert_ret_L_S());
    try testing.expectOk(c.send_L_S());
    try testing.expectOk(c.assert_L_S(.{ .v1 = 11878, .v2 = 14845 }));
}
pub export fn zig_assert_L_S(lv: c.L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11878) err = 1;
    if (lv.v2 != 14845) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S() c.L_S {
    return .{ .v1 = 11878, .v2 = 14845 };
}

// From T_Snnn_xay.c:77015:77035
// struct  L_S_C  {
//   __tsi64 v1;
//   short v2;
//   char v3;
// };

test "L_S_C layout" {
    var lv: c.L_S_C = undefined;
    try testing.expectSize(c.L_S_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_S_C C calls" {
    try testing.expectEqual(c.ret_L_S_C(), .{ .v1 = 27515, .v2 = 23281, .v3 = 73 });
    try testing.expectOk(c.assert_ret_L_S_C());
    try testing.expectOk(c.send_L_S_C());
    try testing.expectOk(c.assert_L_S_C(.{ .v1 = 27515, .v2 = 23281, .v3 = 73 }));
}
pub export fn zig_assert_L_S_C(lv: c.L_S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27515) err = 1;
    if (lv.v2 != 23281) err = 2;
    if (lv.v3 != 73) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_C() c.L_S_C {
    return .{ .v1 = 27515, .v2 = 23281, .v3 = 73 };
}

// From T_Snnn_xay.c:77040:77060
// struct  L_S_D  {
//   __tsi64 v1;
//   short v2;
//   double v3;
// };

test "L_S_D layout" {
    var lv: c.L_S_D = undefined;
    try testing.expectSize(c.L_S_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_S_D C calls" {
    try testing.expectEqual(c.ret_L_S_D(), .{ .v1 = 3952, .v2 = 16015, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_L_S_D());
    try testing.expectOk(c.send_L_S_D());
    try testing.expectOk(c.assert_L_S_D(.{ .v1 = 3952, .v2 = 16015, .v3 = -2.125 }));
}
pub export fn zig_assert_L_S_D(lv: c.L_S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3952) err = 1;
    if (lv.v2 != 16015) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_D() c.L_S_D {
    return .{ .v1 = 3952, .v2 = 16015, .v3 = -2.125 };
}

// From T_Snnn_xay.c:77065:77085
// struct  L_S_F  {
//   __tsi64 v1;
//   short v2;
//   float v3;
// };

test "L_S_F layout" {
    var lv: c.L_S_F = undefined;
    try testing.expectSize(c.L_S_F, 16);
    try testing.expectAlign(c.L_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_S_F C calls" {
    try testing.expectEqual(c.ret_L_S_F(), .{ .v1 = 18577, .v2 = 31234, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_L_S_F());
    try testing.expectOk(c.send_L_S_F());
    try testing.expectOk(c.assert_L_S_F(.{ .v1 = 18577, .v2 = 31234, .v3 = -0.25 }));
}
pub export fn zig_assert_L_S_F(lv: c.L_S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18577) err = 1;
    if (lv.v2 != 31234) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_F() c.L_S_F {
    return .{ .v1 = 18577, .v2 = 31234, .v3 = -0.25 };
}

// From T_Snnn_xay.c:77090:77110
// struct  L_S_I  {
//   __tsi64 v1;
//   short v2;
//   int v3;
// };

test "L_S_I layout" {
    var lv: c.L_S_I = undefined;
    try testing.expectSize(c.L_S_I, 16);
    try testing.expectAlign(c.L_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_S_I C calls" {
    try testing.expectEqual(c.ret_L_S_I(), .{ .v1 = 32013, .v2 = 18469, .v3 = 26305 });
    try testing.expectOk(c.assert_ret_L_S_I());
    try testing.expectOk(c.send_L_S_I());
    try testing.expectOk(c.assert_L_S_I(.{ .v1 = 32013, .v2 = 18469, .v3 = 26305 }));
}
pub export fn zig_assert_L_S_I(lv: c.L_S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32013) err = 1;
    if (lv.v2 != 18469) err = 2;
    if (lv.v3 != 26305) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_I() c.L_S_I {
    return .{ .v1 = 32013, .v2 = 18469, .v3 = 26305 };
}

// From T_Snnn_xay.c:77115:77135
// struct  L_S_Ip  {
//   __tsi64 v1;
//   short v2;
//   int *v3;
// };

test "L_S_Ip layout" {
    var lv: c.L_S_Ip = undefined;
    try testing.expectSize(c.L_S_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_S_Ip C calls" {
    try testing.expectEqual(c.ret_L_S_Ip(), .{ .v1 = 14977, .v2 = 25517, .v3 = null });
    try testing.expectOk(c.assert_ret_L_S_Ip());
    try testing.expectOk(c.send_L_S_Ip());
    try testing.expectOk(c.assert_L_S_Ip(.{ .v1 = 14977, .v2 = 25517, .v3 = null }));
}
pub export fn zig_assert_L_S_Ip(lv: c.L_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14977) err = 1;
    if (lv.v2 != 25517) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_Ip() c.L_S_Ip {
    return .{ .v1 = 14977, .v2 = 25517, .v3 = null };
}

// From T_Snnn_xay.c:77140:77160
// struct  L_S_L  {
//   __tsi64 v1;
//   short v2;
//   __tsi64 v3;
// };

test "L_S_L layout" {
    var lv: c.L_S_L = undefined;
    try testing.expectSize(c.L_S_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_S_L C calls" {
    try testing.expectEqual(c.ret_L_S_L(), .{ .v1 = 17805, .v2 = 29070, .v3 = 10093 });
    try testing.expectOk(c.assert_ret_L_S_L());
    try testing.expectOk(c.send_L_S_L());
    try testing.expectOk(c.assert_L_S_L(.{ .v1 = 17805, .v2 = 29070, .v3 = 10093 }));
}
pub export fn zig_assert_L_S_L(lv: c.L_S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17805) err = 1;
    if (lv.v2 != 29070) err = 2;
    if (lv.v3 != 10093) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_L() c.L_S_L {
    return .{ .v1 = 17805, .v2 = 29070, .v3 = 10093 };
}

// From T_Snnn_xay.c:77165:77185
// struct  L_S_S  {
//   __tsi64 v1;
//   short v2;
//   short v3;
// };

test "L_S_S layout" {
    var lv: c.L_S_S = undefined;
    try testing.expectSize(c.L_S_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_S_S C calls" {
    try testing.expectEqual(c.ret_L_S_S(), .{ .v1 = 23542, .v2 = 27277, .v3 = 28129 });
    try testing.expectOk(c.assert_ret_L_S_S());
    try testing.expectOk(c.send_L_S_S());
    try testing.expectOk(c.assert_L_S_S(.{ .v1 = 23542, .v2 = 27277, .v3 = 28129 }));
}
pub export fn zig_assert_L_S_S(lv: c.L_S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23542) err = 1;
    if (lv.v2 != 27277) err = 2;
    if (lv.v3 != 28129) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_S() c.L_S_S {
    return .{ .v1 = 23542, .v2 = 27277, .v3 = 28129 };
}

// From T_Snnn_xay.c:77190:77210
// struct  L_S_Uc  {
//   __tsi64 v1;
//   short v2;
//   unsigned char v3;
// };

test "L_S_Uc layout" {
    var lv: c.L_S_Uc = undefined;
    try testing.expectSize(c.L_S_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_S_Uc C calls" {
    try testing.expectEqual(c.ret_L_S_Uc(), .{ .v1 = 2260, .v2 = 1295, .v3 = 101 });
    try testing.expectOk(c.assert_ret_L_S_Uc());
    try testing.expectOk(c.send_L_S_Uc());
    try testing.expectOk(c.assert_L_S_Uc(.{ .v1 = 2260, .v2 = 1295, .v3 = 101 }));
}
pub export fn zig_assert_L_S_Uc(lv: c.L_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2260) err = 1;
    if (lv.v2 != 1295) err = 2;
    if (lv.v3 != 101) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_Uc() c.L_S_Uc {
    return .{ .v1 = 2260, .v2 = 1295, .v3 = 101 };
}

// From T_Snnn_xay.c:77215:77235
// struct  L_S_Ui  {
//   __tsi64 v1;
//   short v2;
//   unsigned int v3;
// };

test "L_S_Ui layout" {
    var lv: c.L_S_Ui = undefined;
    try testing.expectSize(c.L_S_Ui, 16);
    try testing.expectAlign(c.L_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_S_Ui C calls" {
    try testing.expectEqual(c.ret_L_S_Ui(), .{ .v1 = 22253, .v2 = 9849, .v3 = 19663 });
    try testing.expectOk(c.assert_ret_L_S_Ui());
    try testing.expectOk(c.send_L_S_Ui());
    try testing.expectOk(c.assert_L_S_Ui(.{ .v1 = 22253, .v2 = 9849, .v3 = 19663 }));
}
pub export fn zig_assert_L_S_Ui(lv: c.L_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22253) err = 1;
    if (lv.v2 != 9849) err = 2;
    if (lv.v3 != 19663) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_Ui() c.L_S_Ui {
    return .{ .v1 = 22253, .v2 = 9849, .v3 = 19663 };
}

// From T_Snnn_xay.c:77240:77260
// struct  L_S_Ul  {
//   __tsi64 v1;
//   short v2;
//   __tsu64 v3;
// };

test "L_S_Ul layout" {
    var lv: c.L_S_Ul = undefined;
    try testing.expectSize(c.L_S_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_S_Ul C calls" {
    try testing.expectEqual(c.ret_L_S_Ul(), .{ .v1 = 27283, .v2 = 13769, .v3 = 6286 });
    try testing.expectOk(c.assert_ret_L_S_Ul());
    try testing.expectOk(c.send_L_S_Ul());
    try testing.expectOk(c.assert_L_S_Ul(.{ .v1 = 27283, .v2 = 13769, .v3 = 6286 }));
}
pub export fn zig_assert_L_S_Ul(lv: c.L_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27283) err = 1;
    if (lv.v2 != 13769) err = 2;
    if (lv.v3 != 6286) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_Ul() c.L_S_Ul {
    return .{ .v1 = 27283, .v2 = 13769, .v3 = 6286 };
}

// From T_Snnn_xay.c:77265:77285
// struct  L_S_Us  {
//   __tsi64 v1;
//   short v2;
//   unsigned short v3;
// };

test "L_S_Us layout" {
    var lv: c.L_S_Us = undefined;
    try testing.expectSize(c.L_S_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_S_Us C calls" {
    try testing.expectEqual(c.ret_L_S_Us(), .{ .v1 = 16604, .v2 = 3573, .v3 = 7355 });
    try testing.expectOk(c.assert_ret_L_S_Us());
    try testing.expectOk(c.send_L_S_Us());
    try testing.expectOk(c.assert_L_S_Us(.{ .v1 = 16604, .v2 = 3573, .v3 = 7355 }));
}
pub export fn zig_assert_L_S_Us(lv: c.L_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16604) err = 1;
    if (lv.v2 != 3573) err = 2;
    if (lv.v3 != 7355) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_Us() c.L_S_Us {
    return .{ .v1 = 16604, .v2 = 3573, .v3 = 7355 };
}

// From T_Snnn_xay.c:77290:77310
// struct  L_S_Vp  {
//   __tsi64 v1;
//   short v2;
//   void *v3;
// };

test "L_S_Vp layout" {
    var lv: c.L_S_Vp = undefined;
    try testing.expectSize(c.L_S_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_S_Vp C calls" {
    try testing.expectEqual(c.ret_L_S_Vp(), .{ .v1 = 31769, .v2 = 2171, .v3 = null });
    try testing.expectOk(c.assert_ret_L_S_Vp());
    try testing.expectOk(c.send_L_S_Vp());
    try testing.expectOk(c.assert_L_S_Vp(.{ .v1 = 31769, .v2 = 2171, .v3 = null }));
}
pub export fn zig_assert_L_S_Vp(lv: c.L_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31769) err = 1;
    if (lv.v2 != 2171) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_Vp() c.L_S_Vp {
    return .{ .v1 = 31769, .v2 = 2171, .v3 = null };
}

// From T_Snnn_xay.c:77315:77333
// struct  L_Uc  {
//   __tsi64 v1;
//   unsigned char v2;
// };

test "L_Uc layout" {
    var lv: c.L_Uc = undefined;
    try testing.expectSize(c.L_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_Uc C calls" {
    try testing.expectEqual(c.ret_L_Uc(), .{ .v1 = 583, .v2 = 59 });
    try testing.expectOk(c.assert_ret_L_Uc());
    try testing.expectOk(c.send_L_Uc());
    try testing.expectOk(c.assert_L_Uc(.{ .v1 = 583, .v2 = 59 }));
}
pub export fn zig_assert_L_Uc(lv: c.L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 583) err = 1;
    if (lv.v2 != 59) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc() c.L_Uc {
    return .{ .v1 = 583, .v2 = 59 };
}

// From T_Snnn_xay.c:78062:78082
// struct  L_Uc_C  {
//   __tsi64 v1;
//   unsigned char v2;
//   char v3;
// };

test "L_Uc_C layout" {
    var lv: c.L_Uc_C = undefined;
    try testing.expectSize(c.L_Uc_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "L_Uc_C C calls" {
    try testing.expectEqual(c.ret_L_Uc_C(), .{ .v1 = 8467, .v2 = 64, .v3 = 98 });
    try testing.expectOk(c.assert_ret_L_Uc_C());
    try testing.expectOk(c.send_L_Uc_C());
    try testing.expectOk(c.assert_L_Uc_C(.{ .v1 = 8467, .v2 = 64, .v3 = 98 }));
}
pub export fn zig_assert_L_Uc_C(lv: c.L_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8467) err = 1;
    if (lv.v2 != 64) err = 2;
    if (lv.v3 != 98) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_C() c.L_Uc_C {
    return .{ .v1 = 8467, .v2 = 64, .v3 = 98 };
}

// From T_Snnn_xay.c:78087:78107
// struct  L_Uc_D  {
//   __tsi64 v1;
//   unsigned char v2;
//   double v3;
// };

test "L_Uc_D layout" {
    var lv: c.L_Uc_D = undefined;
    try testing.expectSize(c.L_Uc_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Uc_D C calls" {
    try testing.expectEqual(c.ret_L_Uc_D(), .{ .v1 = 1283, .v2 = 30, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_L_Uc_D());
    try testing.expectOk(c.send_L_Uc_D());
    try testing.expectOk(c.assert_L_Uc_D(.{ .v1 = 1283, .v2 = 30, .v3 = -0.25 }));
}
pub export fn zig_assert_L_Uc_D(lv: c.L_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1283) err = 1;
    if (lv.v2 != 30) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_D() c.L_Uc_D {
    return .{ .v1 = 1283, .v2 = 30, .v3 = -0.25 };
}

// From T_Snnn_xay.c:78112:78132
// struct  L_Uc_F  {
//   __tsi64 v1;
//   unsigned char v2;
//   float v3;
// };

test "L_Uc_F layout" {
    var lv: c.L_Uc_F = undefined;
    try testing.expectSize(c.L_Uc_F, 16);
    try testing.expectAlign(c.L_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Uc_F C calls" {
    try testing.expectEqual(c.ret_L_Uc_F(), .{ .v1 = 12781, .v2 = 76, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_L_Uc_F());
    try testing.expectOk(c.send_L_Uc_F());
    try testing.expectOk(c.assert_L_Uc_F(.{ .v1 = 12781, .v2 = 76, .v3 = 0.5 }));
}
pub export fn zig_assert_L_Uc_F(lv: c.L_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12781) err = 1;
    if (lv.v2 != 76) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_F() c.L_Uc_F {
    return .{ .v1 = 12781, .v2 = 76, .v3 = 0.5 };
}

// From T_Snnn_xay.c:78137:78157
// struct  L_Uc_I  {
//   __tsi64 v1;
//   unsigned char v2;
//   int v3;
// };

test "L_Uc_I layout" {
    var lv: c.L_Uc_I = undefined;
    try testing.expectSize(c.L_Uc_I, 16);
    try testing.expectAlign(c.L_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Uc_I C calls" {
    try testing.expectEqual(c.ret_L_Uc_I(), .{ .v1 = 16577, .v2 = 110, .v3 = 6154 });
    try testing.expectOk(c.assert_ret_L_Uc_I());
    try testing.expectOk(c.send_L_Uc_I());
    try testing.expectOk(c.assert_L_Uc_I(.{ .v1 = 16577, .v2 = 110, .v3 = 6154 }));
}
pub export fn zig_assert_L_Uc_I(lv: c.L_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16577) err = 1;
    if (lv.v2 != 110) err = 2;
    if (lv.v3 != 6154) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_I() c.L_Uc_I {
    return .{ .v1 = 16577, .v2 = 110, .v3 = 6154 };
}

// From T_Snnn_xay.c:78162:78182
// struct  L_Uc_Ip  {
//   __tsi64 v1;
//   unsigned char v2;
//   int *v3;
// };

test "L_Uc_Ip layout" {
    var lv: c.L_Uc_Ip = undefined;
    try testing.expectSize(c.L_Uc_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Uc_Ip C calls" {
    try testing.expectEqual(c.ret_L_Uc_Ip(), .{ .v1 = 2778, .v2 = 106, .v3 = null });
    try testing.expectOk(c.assert_ret_L_Uc_Ip());
    try testing.expectOk(c.send_L_Uc_Ip());
    try testing.expectOk(c.assert_L_Uc_Ip(.{ .v1 = 2778, .v2 = 106, .v3 = null }));
}
pub export fn zig_assert_L_Uc_Ip(lv: c.L_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2778) err = 1;
    if (lv.v2 != 106) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_Ip() c.L_Uc_Ip {
    return .{ .v1 = 2778, .v2 = 106, .v3 = null };
}

// From T_Snnn_xay.c:78187:78207
// struct  L_Uc_L  {
//   __tsi64 v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "L_Uc_L layout" {
    var lv: c.L_Uc_L = undefined;
    try testing.expectSize(c.L_Uc_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Uc_L C calls" {
    try testing.expectEqual(c.ret_L_Uc_L(), .{ .v1 = 3301, .v2 = 26, .v3 = 18390 });
    try testing.expectOk(c.assert_ret_L_Uc_L());
    try testing.expectOk(c.send_L_Uc_L());
    try testing.expectOk(c.assert_L_Uc_L(.{ .v1 = 3301, .v2 = 26, .v3 = 18390 }));
}
pub export fn zig_assert_L_Uc_L(lv: c.L_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3301) err = 1;
    if (lv.v2 != 26) err = 2;
    if (lv.v3 != 18390) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_L() c.L_Uc_L {
    return .{ .v1 = 3301, .v2 = 26, .v3 = 18390 };
}

// From T_Snnn_xay.c:78212:78232
// struct  L_Uc_S  {
//   __tsi64 v1;
//   unsigned char v2;
//   short v3;
// };

test "L_Uc_S layout" {
    var lv: c.L_Uc_S = undefined;
    try testing.expectSize(c.L_Uc_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_Uc_S C calls" {
    try testing.expectEqual(c.ret_L_Uc_S(), .{ .v1 = 24712, .v2 = 43, .v3 = 12475 });
    try testing.expectOk(c.assert_ret_L_Uc_S());
    try testing.expectOk(c.send_L_Uc_S());
    try testing.expectOk(c.assert_L_Uc_S(.{ .v1 = 24712, .v2 = 43, .v3 = 12475 }));
}
pub export fn zig_assert_L_Uc_S(lv: c.L_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24712) err = 1;
    if (lv.v2 != 43) err = 2;
    if (lv.v3 != 12475) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_S() c.L_Uc_S {
    return .{ .v1 = 24712, .v2 = 43, .v3 = 12475 };
}

// From T_Snnn_xay.c:78237:78257
// struct  L_Uc_Uc  {
//   __tsi64 v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "L_Uc_Uc layout" {
    var lv: c.L_Uc_Uc = undefined;
    try testing.expectSize(c.L_Uc_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "L_Uc_Uc C calls" {
    try testing.expectEqual(c.ret_L_Uc_Uc(), .{ .v1 = 10867, .v2 = 53, .v3 = 125 });
    try testing.expectOk(c.assert_ret_L_Uc_Uc());
    try testing.expectOk(c.send_L_Uc_Uc());
    try testing.expectOk(c.assert_L_Uc_Uc(.{ .v1 = 10867, .v2 = 53, .v3 = 125 }));
}
pub export fn zig_assert_L_Uc_Uc(lv: c.L_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10867) err = 1;
    if (lv.v2 != 53) err = 2;
    if (lv.v3 != 125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_Uc() c.L_Uc_Uc {
    return .{ .v1 = 10867, .v2 = 53, .v3 = 125 };
}

// From T_Snnn_xay.c:78262:78282
// struct  L_Uc_Ui  {
//   __tsi64 v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "L_Uc_Ui layout" {
    var lv: c.L_Uc_Ui = undefined;
    try testing.expectSize(c.L_Uc_Ui, 16);
    try testing.expectAlign(c.L_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Uc_Ui C calls" {
    try testing.expectEqual(c.ret_L_Uc_Ui(), .{ .v1 = 26714, .v2 = 76, .v3 = 11312 });
    try testing.expectOk(c.assert_ret_L_Uc_Ui());
    try testing.expectOk(c.send_L_Uc_Ui());
    try testing.expectOk(c.assert_L_Uc_Ui(.{ .v1 = 26714, .v2 = 76, .v3 = 11312 }));
}
pub export fn zig_assert_L_Uc_Ui(lv: c.L_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26714) err = 1;
    if (lv.v2 != 76) err = 2;
    if (lv.v3 != 11312) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_Ui() c.L_Uc_Ui {
    return .{ .v1 = 26714, .v2 = 76, .v3 = 11312 };
}

// From T_Snnn_xay.c:78287:78307
// struct  L_Uc_Ul  {
//   __tsi64 v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "L_Uc_Ul layout" {
    var lv: c.L_Uc_Ul = undefined;
    try testing.expectSize(c.L_Uc_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Uc_Ul C calls" {
    try testing.expectEqual(c.ret_L_Uc_Ul(), .{ .v1 = 17680, .v2 = 4, .v3 = 2225 });
    try testing.expectOk(c.assert_ret_L_Uc_Ul());
    try testing.expectOk(c.send_L_Uc_Ul());
    try testing.expectOk(c.assert_L_Uc_Ul(.{ .v1 = 17680, .v2 = 4, .v3 = 2225 }));
}
pub export fn zig_assert_L_Uc_Ul(lv: c.L_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17680) err = 1;
    if (lv.v2 != 4) err = 2;
    if (lv.v3 != 2225) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_Ul() c.L_Uc_Ul {
    return .{ .v1 = 17680, .v2 = 4, .v3 = 2225 };
}

// From T_Snnn_xay.c:78312:78332
// struct  L_Uc_Us  {
//   __tsi64 v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "L_Uc_Us layout" {
    var lv: c.L_Uc_Us = undefined;
    try testing.expectSize(c.L_Uc_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_Uc_Us C calls" {
    try testing.expectEqual(c.ret_L_Uc_Us(), .{ .v1 = 3769, .v2 = 19, .v3 = 4927 });
    try testing.expectOk(c.assert_ret_L_Uc_Us());
    try testing.expectOk(c.send_L_Uc_Us());
    try testing.expectOk(c.assert_L_Uc_Us(.{ .v1 = 3769, .v2 = 19, .v3 = 4927 }));
}
pub export fn zig_assert_L_Uc_Us(lv: c.L_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3769) err = 1;
    if (lv.v2 != 19) err = 2;
    if (lv.v3 != 4927) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_Us() c.L_Uc_Us {
    return .{ .v1 = 3769, .v2 = 19, .v3 = 4927 };
}

// From T_Snnn_xay.c:78337:78357
// struct  L_Uc_Vp  {
//   __tsi64 v1;
//   unsigned char v2;
//   void *v3;
// };

test "L_Uc_Vp layout" {
    var lv: c.L_Uc_Vp = undefined;
    try testing.expectSize(c.L_Uc_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Uc_Vp C calls" {
    try testing.expectEqual(c.ret_L_Uc_Vp(), .{ .v1 = 8827, .v2 = 48, .v3 = null });
    try testing.expectOk(c.assert_ret_L_Uc_Vp());
    try testing.expectOk(c.send_L_Uc_Vp());
    try testing.expectOk(c.assert_L_Uc_Vp(.{ .v1 = 8827, .v2 = 48, .v3 = null }));
}
pub export fn zig_assert_L_Uc_Vp(lv: c.L_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8827) err = 1;
    if (lv.v2 != 48) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_Vp() c.L_Uc_Vp {
    return .{ .v1 = 8827, .v2 = 48, .v3 = null };
}

// From T_Snnn_xay.c:78362:78380
// struct  L_Ui  {
//   __tsi64 v1;
//   unsigned int v2;
// };

test "L_Ui layout" {
    var lv: c.L_Ui = undefined;
    try testing.expectSize(c.L_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_Ui C calls" {
    try testing.expectEqual(c.ret_L_Ui(), .{ .v1 = 13685, .v2 = 29146 });
    try testing.expectOk(c.assert_ret_L_Ui());
    try testing.expectOk(c.send_L_Ui());
    try testing.expectOk(c.assert_L_Ui(.{ .v1 = 13685, .v2 = 29146 }));
}
pub export fn zig_assert_L_Ui(lv: c.L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13685) err = 1;
    if (lv.v2 != 29146) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui() c.L_Ui {
    return .{ .v1 = 13685, .v2 = 29146 };
}
