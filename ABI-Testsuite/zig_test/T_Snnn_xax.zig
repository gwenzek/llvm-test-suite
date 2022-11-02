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

test "F_C: layout" {
    var lv: c.F_C = undefined;
    try testing.expectSize(c.F_C, 8);
    try testing.expectAlign(c.F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_C(.{ .v1 = 0.5, .v2 = 105 }));
}
test "F_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C());
}
test "F_C: C passes to Zig" {
    try testing.expectOk(c.send_F_C());
}
test "F_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C(), .{ .v1 = 0.5, .v2 = 105 });
}
pub export fn zig_assert_F_C(lv: c.F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 105) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C() c.F_C {
    return .{ .v1 = 0.5, .v2 = 105 };
}

// From T_Snnn_xax.c:20437:20457
// struct  F_C_C  {
//   float v1;
//   char v2;
//   char v3;
// };

test "F_C_C: layout" {
    var lv: c.F_C_C = undefined;
    try testing.expectSize(c.F_C_C, 8);
    try testing.expectAlign(c.F_C_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "F_C_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_C_C(.{ .v1 = -2.125, .v2 = 111, .v3 = 18 }));
}
test "F_C_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_C());
}
test "F_C_C: C passes to Zig" {
    try testing.expectOk(c.send_F_C_C());
}
test "F_C_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_C(), .{ .v1 = -2.125, .v2 = 111, .v3 = 18 });
}
pub export fn zig_assert_F_C_C(lv: c.F_C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 111) err = 2;
    if (lv.v3 != 18) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_C() c.F_C_C {
    return .{ .v1 = -2.125, .v2 = 111, .v3 = 18 };
}

// From T_Snnn_xax.c:20462:20482
// struct  F_C_D  {
//   float v1;
//   char v2;
//   double v3;
// };

test "F_C_D: layout" {
    var lv: c.F_C_D = undefined;
    try testing.expectSize(c.F_C_D, 16);
    try testing.expectAlign(c.F_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_D: Zig passes to C" {
    try testing.expectFail(c.assert_F_C_D(.{ .v1 = 0.5, .v2 = 57, .v3 = 0.5 }));
}
test "F_C_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_D());
}
test "F_C_D: C passes to Zig" {
    try testing.expectFail(c.send_F_C_D());
}
test "F_C_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_D(), .{ .v1 = 0.5, .v2 = 57, .v3 = 0.5 });
}
pub export fn zig_assert_F_C_D(lv: c.F_C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 57) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_D() c.F_C_D {
    return .{ .v1 = 0.5, .v2 = 57, .v3 = 0.5 };
}

// From T_Snnn_xax.c:20487:20507
// struct  F_C_F  {
//   float v1;
//   char v2;
//   float v3;
// };

test "F_C_F: layout" {
    var lv: c.F_C_F = undefined;
    try testing.expectSize(c.F_C_F, 12);
    try testing.expectAlign(c.F_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_F: Zig passes to C" {
    try testing.expectFail(c.assert_F_C_F(.{ .v1 = 1.0, .v2 = 101, .v3 = 1.0 }));
}
test "F_C_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_F());
}
test "F_C_F: C passes to Zig" {
    try testing.expectFail(c.send_F_C_F());
}
test "F_C_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_F(), .{ .v1 = 1.0, .v2 = 101, .v3 = 1.0 });
}
pub export fn zig_assert_F_C_F(lv: c.F_C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 101) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_F() c.F_C_F {
    return .{ .v1 = 1.0, .v2 = 101, .v3 = 1.0 };
}

// From T_Snnn_xax.c:20512:20532
// struct  F_C_I  {
//   float v1;
//   char v2;
//   int v3;
// };

test "F_C_I: layout" {
    var lv: c.F_C_I = undefined;
    try testing.expectSize(c.F_C_I, 12);
    try testing.expectAlign(c.F_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_C_I(.{ .v1 = 1.0, .v2 = 112, .v3 = 2332 }));
}
test "F_C_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_I());
}
test "F_C_I: C passes to Zig" {
    try testing.expectOk(c.send_F_C_I());
}
test "F_C_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_I(), .{ .v1 = 1.0, .v2 = 112, .v3 = 2332 });
}
pub export fn zig_assert_F_C_I(lv: c.F_C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 112) err = 2;
    if (lv.v3 != 2332) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_I() c.F_C_I {
    return .{ .v1 = 1.0, .v2 = 112, .v3 = 2332 };
}

// From T_Snnn_xax.c:20537:20557
// struct  F_C_Ip  {
//   float v1;
//   char v2;
//   int *v3;
// };

test "F_C_Ip: layout" {
    var lv: c.F_C_Ip = undefined;
    try testing.expectSize(c.F_C_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_F_C_Ip(.{ .v1 = -0.25, .v2 = 70, .v3 = null }));
}
test "F_C_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_Ip());
}
test "F_C_Ip: C passes to Zig" {
    try testing.expectOk(c.send_F_C_Ip());
}
test "F_C_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_Ip(), .{ .v1 = -0.25, .v2 = 70, .v3 = null });
}
pub export fn zig_assert_F_C_Ip(lv: c.F_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 70) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_Ip() c.F_C_Ip {
    return .{ .v1 = -0.25, .v2 = 70, .v3 = null };
}

// From T_Snnn_xax.c:20562:20582
// struct  F_C_L  {
//   float v1;
//   char v2;
//   __tsi64 v3;
// };

test "F_C_L: layout" {
    var lv: c.F_C_L = undefined;
    try testing.expectSize(c.F_C_L, 16);
    try testing.expectAlign(c.F_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_L: Zig passes to C" {
    try testing.expectOk(c.assert_F_C_L(.{ .v1 = 0.875, .v2 = 121, .v3 = 18229 }));
}
test "F_C_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_L());
}
test "F_C_L: C passes to Zig" {
    try testing.expectOk(c.send_F_C_L());
}
test "F_C_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_L(), .{ .v1 = 0.875, .v2 = 121, .v3 = 18229 });
}
pub export fn zig_assert_F_C_L(lv: c.F_C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 121) err = 2;
    if (lv.v3 != 18229) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_L() c.F_C_L {
    return .{ .v1 = 0.875, .v2 = 121, .v3 = 18229 };
}

// From T_Snnn_xax.c:20587:20607
// struct  F_C_S  {
//   float v1;
//   char v2;
//   short v3;
// };

test "F_C_S: layout" {
    var lv: c.F_C_S = undefined;
    try testing.expectSize(c.F_C_S, 8);
    try testing.expectAlign(c.F_C_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_C_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_C_S(.{ .v1 = 0.875, .v2 = 31, .v3 = 31175 }));
}
test "F_C_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_S());
}
test "F_C_S: C passes to Zig" {
    try testing.expectOk(c.send_F_C_S());
}
test "F_C_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_S(), .{ .v1 = 0.875, .v2 = 31, .v3 = 31175 });
}
pub export fn zig_assert_F_C_S(lv: c.F_C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 31) err = 2;
    if (lv.v3 != 31175) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_S() c.F_C_S {
    return .{ .v1 = 0.875, .v2 = 31, .v3 = 31175 };
}

// From T_Snnn_xax.c:20612:20632
// struct  F_C_Uc  {
//   float v1;
//   char v2;
//   unsigned char v3;
// };

test "F_C_Uc: layout" {
    var lv: c.F_C_Uc = undefined;
    try testing.expectSize(c.F_C_Uc, 8);
    try testing.expectAlign(c.F_C_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "F_C_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_C_Uc(.{ .v1 = 1.0, .v2 = 69, .v3 = 62 }));
}
test "F_C_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_Uc());
}
test "F_C_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_C_Uc());
}
test "F_C_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_Uc(), .{ .v1 = 1.0, .v2 = 69, .v3 = 62 });
}
pub export fn zig_assert_F_C_Uc(lv: c.F_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 69) err = 2;
    if (lv.v3 != 62) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_Uc() c.F_C_Uc {
    return .{ .v1 = 1.0, .v2 = 69, .v3 = 62 };
}

// From T_Snnn_xax.c:20637:20657
// struct  F_C_Ui  {
//   float v1;
//   char v2;
//   unsigned int v3;
// };

test "F_C_Ui: layout" {
    var lv: c.F_C_Ui = undefined;
    try testing.expectSize(c.F_C_Ui, 12);
    try testing.expectAlign(c.F_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_C_Ui(.{ .v1 = 7.0, .v2 = 36, .v3 = 24845 }));
}
test "F_C_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_Ui());
}
test "F_C_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_C_Ui());
}
test "F_C_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_Ui(), .{ .v1 = 7.0, .v2 = 36, .v3 = 24845 });
}
pub export fn zig_assert_F_C_Ui(lv: c.F_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 36) err = 2;
    if (lv.v3 != 24845) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_Ui() c.F_C_Ui {
    return .{ .v1 = 7.0, .v2 = 36, .v3 = 24845 };
}

// From T_Snnn_xax.c:20662:20682
// struct  F_C_Ul  {
//   float v1;
//   char v2;
//   __tsu64 v3;
// };

test "F_C_Ul: layout" {
    var lv: c.F_C_Ul = undefined;
    try testing.expectSize(c.F_C_Ul, 16);
    try testing.expectAlign(c.F_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_F_C_Ul(.{ .v1 = 7.0, .v2 = 124, .v3 = 11914 }));
}
test "F_C_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_Ul());
}
test "F_C_Ul: C passes to Zig" {
    try testing.expectOk(c.send_F_C_Ul());
}
test "F_C_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_Ul(), .{ .v1 = 7.0, .v2 = 124, .v3 = 11914 });
}
pub export fn zig_assert_F_C_Ul(lv: c.F_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 124) err = 2;
    if (lv.v3 != 11914) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_Ul() c.F_C_Ul {
    return .{ .v1 = 7.0, .v2 = 124, .v3 = 11914 };
}

// From T_Snnn_xax.c:20687:20707
// struct  F_C_Us  {
//   float v1;
//   char v2;
//   unsigned short v3;
// };

test "F_C_Us: layout" {
    var lv: c.F_C_Us = undefined;
    try testing.expectSize(c.F_C_Us, 8);
    try testing.expectAlign(c.F_C_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_C_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_C_Us(.{ .v1 = -2.125, .v2 = 81, .v3 = 25724 }));
}
test "F_C_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_Us());
}
test "F_C_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_C_Us());
}
test "F_C_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_Us(), .{ .v1 = -2.125, .v2 = 81, .v3 = 25724 });
}
pub export fn zig_assert_F_C_Us(lv: c.F_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 81) err = 2;
    if (lv.v3 != 25724) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_Us() c.F_C_Us {
    return .{ .v1 = -2.125, .v2 = 81, .v3 = 25724 };
}

// From T_Snnn_xax.c:20712:20732
// struct  F_C_Vp  {
//   float v1;
//   char v2;
//   void *v3;
// };

test "F_C_Vp: layout" {
    var lv: c.F_C_Vp = undefined;
    try testing.expectSize(c.F_C_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_F_C_Vp(.{ .v1 = 0.875, .v2 = 52, .v3 = null }));
}
test "F_C_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_C_Vp());
}
test "F_C_Vp: C passes to Zig" {
    try testing.expectOk(c.send_F_C_Vp());
}
test "F_C_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_C_Vp(), .{ .v1 = 0.875, .v2 = 52, .v3 = null });
}
pub export fn zig_assert_F_C_Vp(lv: c.F_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 52) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_Vp() c.F_C_Vp {
    return .{ .v1 = 0.875, .v2 = 52, .v3 = null };
}

// From T_Snnn_xax.c:20737:20755
// struct  F_D  {
//   float v1;
//   double v2;
// };

test "F_D: layout" {
    var lv: c.F_D = undefined;
    try testing.expectSize(c.F_D, ABISELECT(16, 12));
    try testing.expectAlign(c.F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "F_D: Zig passes to C" {
    try testing.expectOk(c.assert_F_D(.{ .v1 = 0.875, .v2 = 4.5 }));
}
test "F_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D());
}
test "F_D: C passes to Zig" {
    try testing.expectOk(c.send_F_D());
}
test "F_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D(), .{ .v1 = 0.875, .v2 = 4.5 });
}
pub export fn zig_assert_F_D(lv: c.F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D() c.F_D {
    return .{ .v1 = 0.875, .v2 = 4.5 };
}

// From T_Snnn_xax.c:21484:21504
// struct  F_D_C  {
//   float v1;
//   double v2;
//   char v3;
// };

test "F_D_C: layout" {
    var lv: c.F_D_C = undefined;
    try testing.expectSize(c.F_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_C(.{ .v1 = -2.125, .v2 = 0.5, .v3 = 36 }));
}
test "F_D_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_C());
}
test "F_D_C: C passes to Zig" {
    try testing.expectOk(c.send_F_D_C());
}
test "F_D_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_C(), .{ .v1 = -2.125, .v2 = 0.5, .v3 = 36 });
}
pub export fn zig_assert_F_D_C(lv: c.F_D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 36) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_C() c.F_D_C {
    return .{ .v1 = -2.125, .v2 = 0.5, .v3 = 36 };
}

// From T_Snnn_xax.c:21509:21529
// struct  F_D_D  {
//   float v1;
//   double v2;
//   double v3;
// };

test "F_D_D: layout" {
    var lv: c.F_D_D = undefined;
    try testing.expectSize(c.F_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_D: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_D(.{ .v1 = 1.0, .v2 = -0.25, .v3 = -2.125 }));
}
test "F_D_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_D());
}
test "F_D_D: C passes to Zig" {
    try testing.expectOk(c.send_F_D_D());
}
test "F_D_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_D(), .{ .v1 = 1.0, .v2 = -0.25, .v3 = -2.125 });
}
pub export fn zig_assert_F_D_D(lv: c.F_D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_D() c.F_D_D {
    return .{ .v1 = 1.0, .v2 = -0.25, .v3 = -2.125 };
}

// From T_Snnn_xax.c:21534:21554
// struct  F_D_F  {
//   float v1;
//   double v2;
//   float v3;
// };

test "F_D_F: layout" {
    var lv: c.F_D_F = undefined;
    try testing.expectSize(c.F_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_F: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_F(.{ .v1 = 0.5, .v2 = -0.25, .v3 = -0.25 }));
}
test "F_D_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_F());
}
test "F_D_F: C passes to Zig" {
    try testing.expectOk(c.send_F_D_F());
}
test "F_D_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_F(), .{ .v1 = 0.5, .v2 = -0.25, .v3 = -0.25 });
}
pub export fn zig_assert_F_D_F(lv: c.F_D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_F() c.F_D_F {
    return .{ .v1 = 0.5, .v2 = -0.25, .v3 = -0.25 };
}

// From T_Snnn_xax.c:21559:21579
// struct  F_D_I  {
//   float v1;
//   double v2;
//   int v3;
// };

test "F_D_I: layout" {
    var lv: c.F_D_I = undefined;
    try testing.expectSize(c.F_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_I(.{ .v1 = 0.5, .v2 = 4.5, .v3 = 2184 }));
}
test "F_D_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_I());
}
test "F_D_I: C passes to Zig" {
    try testing.expectOk(c.send_F_D_I());
}
test "F_D_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_I(), .{ .v1 = 0.5, .v2 = 4.5, .v3 = 2184 });
}
pub export fn zig_assert_F_D_I(lv: c.F_D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 2184) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_I() c.F_D_I {
    return .{ .v1 = 0.5, .v2 = 4.5, .v3 = 2184 };
}

// From T_Snnn_xax.c:21584:21604
// struct  F_D_Ip  {
//   float v1;
//   double v2;
//   int *v3;
// };

test "F_D_Ip: layout" {
    var lv: c.F_D_Ip = undefined;
    try testing.expectSize(c.F_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_Ip(.{ .v1 = 7.0, .v2 = 7.0, .v3 = null }));
}
test "F_D_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_Ip());
}
test "F_D_Ip: C passes to Zig" {
    try testing.expectOk(c.send_F_D_Ip());
}
test "F_D_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_Ip(), .{ .v1 = 7.0, .v2 = 7.0, .v3 = null });
}
pub export fn zig_assert_F_D_Ip(lv: c.F_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_Ip() c.F_D_Ip {
    return .{ .v1 = 7.0, .v2 = 7.0, .v3 = null };
}

// From T_Snnn_xax.c:21609:21629
// struct  F_D_L  {
//   float v1;
//   double v2;
//   __tsi64 v3;
// };

test "F_D_L: layout" {
    var lv: c.F_D_L = undefined;
    try testing.expectSize(c.F_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_L: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_L(.{ .v1 = -0.25, .v2 = 0.875, .v3 = 13946 }));
}
test "F_D_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_L());
}
test "F_D_L: C passes to Zig" {
    try testing.expectOk(c.send_F_D_L());
}
test "F_D_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_L(), .{ .v1 = -0.25, .v2 = 0.875, .v3 = 13946 });
}
pub export fn zig_assert_F_D_L(lv: c.F_D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 13946) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_L() c.F_D_L {
    return .{ .v1 = -0.25, .v2 = 0.875, .v3 = 13946 };
}

// From T_Snnn_xax.c:21634:21654
// struct  F_D_S  {
//   float v1;
//   double v2;
//   short v3;
// };

test "F_D_S: layout" {
    var lv: c.F_D_S = undefined;
    try testing.expectSize(c.F_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_S(.{ .v1 = 0.5, .v2 = 0.875, .v3 = 10845 }));
}
test "F_D_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_S());
}
test "F_D_S: C passes to Zig" {
    try testing.expectOk(c.send_F_D_S());
}
test "F_D_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_S(), .{ .v1 = 0.5, .v2 = 0.875, .v3 = 10845 });
}
pub export fn zig_assert_F_D_S(lv: c.F_D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 10845) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_S() c.F_D_S {
    return .{ .v1 = 0.5, .v2 = 0.875, .v3 = 10845 };
}

// From T_Snnn_xax.c:21659:21679
// struct  F_D_Uc  {
//   float v1;
//   double v2;
//   unsigned char v3;
// };

test "F_D_Uc: layout" {
    var lv: c.F_D_Uc = undefined;
    try testing.expectSize(c.F_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_Uc(.{ .v1 = 0.5, .v2 = 7.0, .v3 = 85 }));
}
test "F_D_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_Uc());
}
test "F_D_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_D_Uc());
}
test "F_D_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_Uc(), .{ .v1 = 0.5, .v2 = 7.0, .v3 = 85 });
}
pub export fn zig_assert_F_D_Uc(lv: c.F_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 85) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_Uc() c.F_D_Uc {
    return .{ .v1 = 0.5, .v2 = 7.0, .v3 = 85 };
}

// From T_Snnn_xax.c:21684:21704
// struct  F_D_Ui  {
//   float v1;
//   double v2;
//   unsigned int v3;
// };

test "F_D_Ui: layout" {
    var lv: c.F_D_Ui = undefined;
    try testing.expectSize(c.F_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_Ui(.{ .v1 = 7.0, .v2 = 0.875, .v3 = 19194 }));
}
test "F_D_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_Ui());
}
test "F_D_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_D_Ui());
}
test "F_D_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_Ui(), .{ .v1 = 7.0, .v2 = 0.875, .v3 = 19194 });
}
pub export fn zig_assert_F_D_Ui(lv: c.F_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 19194) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_Ui() c.F_D_Ui {
    return .{ .v1 = 7.0, .v2 = 0.875, .v3 = 19194 };
}

// From T_Snnn_xax.c:21709:21729
// struct  F_D_Ul  {
//   float v1;
//   double v2;
//   __tsu64 v3;
// };

test "F_D_Ul: layout" {
    var lv: c.F_D_Ul = undefined;
    try testing.expectSize(c.F_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_Ul(.{ .v1 = 4.5, .v2 = 0.875, .v3 = 20762 }));
}
test "F_D_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_Ul());
}
test "F_D_Ul: C passes to Zig" {
    try testing.expectOk(c.send_F_D_Ul());
}
test "F_D_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_Ul(), .{ .v1 = 4.5, .v2 = 0.875, .v3 = 20762 });
}
pub export fn zig_assert_F_D_Ul(lv: c.F_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 20762) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_Ul() c.F_D_Ul {
    return .{ .v1 = 4.5, .v2 = 0.875, .v3 = 20762 };
}

// From T_Snnn_xax.c:21734:21754
// struct  F_D_Us  {
//   float v1;
//   double v2;
//   unsigned short v3;
// };

test "F_D_Us: layout" {
    var lv: c.F_D_Us = undefined;
    try testing.expectSize(c.F_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_Us(.{ .v1 = 4.5, .v2 = -2.125, .v3 = 447 }));
}
test "F_D_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_Us());
}
test "F_D_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_D_Us());
}
test "F_D_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_Us(), .{ .v1 = 4.5, .v2 = -2.125, .v3 = 447 });
}
pub export fn zig_assert_F_D_Us(lv: c.F_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 447) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_Us() c.F_D_Us {
    return .{ .v1 = 4.5, .v2 = -2.125, .v3 = 447 };
}

// From T_Snnn_xax.c:21759:21779
// struct  F_D_Vp  {
//   float v1;
//   double v2;
//   void *v3;
// };

test "F_D_Vp: layout" {
    var lv: c.F_D_Vp = undefined;
    try testing.expectSize(c.F_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_F_D_Vp(.{ .v1 = 1.0, .v2 = 7.0, .v3 = null }));
}
test "F_D_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_D_Vp());
}
test "F_D_Vp: C passes to Zig" {
    try testing.expectOk(c.send_F_D_Vp());
}
test "F_D_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_D_Vp(), .{ .v1 = 1.0, .v2 = 7.0, .v3 = null });
}
pub export fn zig_assert_F_D_Vp(lv: c.F_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_Vp() c.F_D_Vp {
    return .{ .v1 = 1.0, .v2 = 7.0, .v3 = null };
}

// From T_Snnn_xax.c:21784:21802
// struct  F_F  {
//   float v1;
//   float v2;
// };

test "F_F: layout" {
    var lv: c.F_F = undefined;
    try testing.expectSize(c.F_F, 8);
    try testing.expectAlign(c.F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_F: Zig passes to C" {
    try testing.expectOk(c.assert_F_F(.{ .v1 = 1.0, .v2 = 4.5 }));
}
test "F_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F());
}
test "F_F: C passes to Zig" {
    try testing.expectOk(c.send_F_F());
}
test "F_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F(), .{ .v1 = 1.0, .v2 = 4.5 });
}
pub export fn zig_assert_F_F(lv: c.F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F() c.F_F {
    return .{ .v1 = 1.0, .v2 = 4.5 };
}

// From T_Snnn_xax.c:22531:22551
// struct  F_F_C  {
//   float v1;
//   float v2;
//   char v3;
// };

test "F_F_C: layout" {
    var lv: c.F_F_C = undefined;
    try testing.expectSize(c.F_F_C, 12);
    try testing.expectAlign(c.F_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_C: Zig passes to C" {
    try testing.expectFail(c.assert_F_F_C(.{ .v1 = 4.5, .v2 = -2.125, .v3 = 24 }));
}
test "F_F_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_C());
}
test "F_F_C: C passes to Zig" {
    try testing.expectFail(c.send_F_F_C());
}
test "F_F_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_C(), .{ .v1 = 4.5, .v2 = -2.125, .v3 = 24 });
}
pub export fn zig_assert_F_F_C(lv: c.F_F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 24) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_C() c.F_F_C {
    return .{ .v1 = 4.5, .v2 = -2.125, .v3 = 24 };
}

// From T_Snnn_xax.c:22556:22576
// struct  F_F_D  {
//   float v1;
//   float v2;
//   double v3;
// };

test "F_F_D: layout" {
    var lv: c.F_F_D = undefined;
    try testing.expectSize(c.F_F_D, 16);
    try testing.expectAlign(c.F_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_D: Zig passes to C" {
    try testing.expectOk(c.assert_F_F_D(.{ .v1 = 1.0, .v2 = 1.0, .v3 = -2.125 }));
}
test "F_F_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_D());
}
test "F_F_D: C passes to Zig" {
    try testing.expectOk(c.send_F_F_D());
}
test "F_F_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_D(), .{ .v1 = 1.0, .v2 = 1.0, .v3 = -2.125 });
}
pub export fn zig_assert_F_F_D(lv: c.F_F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_D() c.F_F_D {
    return .{ .v1 = 1.0, .v2 = 1.0, .v3 = -2.125 };
}

// From T_Snnn_xax.c:22581:22601
// struct  F_F_F  {
//   float v1;
//   float v2;
//   float v3;
// };

test "F_F_F: layout" {
    var lv: c.F_F_F = undefined;
    try testing.expectSize(c.F_F_F, 12);
    try testing.expectAlign(c.F_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_F: Zig passes to C" {
    try testing.expectOk(c.assert_F_F_F(.{ .v1 = 1.0, .v2 = 4.5, .v3 = -2.125 }));
}
test "F_F_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_F());
}
test "F_F_F: C passes to Zig" {
    try testing.expectOk(c.send_F_F_F());
}
test "F_F_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_F(), .{ .v1 = 1.0, .v2 = 4.5, .v3 = -2.125 });
}
pub export fn zig_assert_F_F_F(lv: c.F_F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_F() c.F_F_F {
    return .{ .v1 = 1.0, .v2 = 4.5, .v3 = -2.125 };
}

// From T_Snnn_xax.c:22606:22626
// struct  F_F_I  {
//   float v1;
//   float v2;
//   int v3;
// };

test "F_F_I: layout" {
    var lv: c.F_F_I = undefined;
    try testing.expectSize(c.F_F_I, 12);
    try testing.expectAlign(c.F_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_I: Zig passes to C" {
    try testing.expectFail(c.assert_F_F_I(.{ .v1 = -2.125, .v2 = 0.875, .v3 = 30673 }));
}
test "F_F_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_I());
}
test "F_F_I: C passes to Zig" {
    try testing.expectFail(c.send_F_F_I());
}
test "F_F_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_I(), .{ .v1 = -2.125, .v2 = 0.875, .v3 = 30673 });
}
pub export fn zig_assert_F_F_I(lv: c.F_F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 30673) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_I() c.F_F_I {
    return .{ .v1 = -2.125, .v2 = 0.875, .v3 = 30673 };
}

// From T_Snnn_xax.c:22631:22651
// struct  F_F_Ip  {
//   float v1;
//   float v2;
//   int *v3;
// };

test "F_F_Ip: layout" {
    var lv: c.F_F_Ip = undefined;
    try testing.expectSize(c.F_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Ip: Zig passes to C" {
    try testing.expectFail(c.assert_F_F_Ip(.{ .v1 = -2.125, .v2 = 7.0, .v3 = null }));
}
test "F_F_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_Ip());
}
test "F_F_Ip: C passes to Zig" {
    try testing.expectFail(c.send_F_F_Ip());
}
test "F_F_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_Ip(), .{ .v1 = -2.125, .v2 = 7.0, .v3 = null });
}
pub export fn zig_assert_F_F_Ip(lv: c.F_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_Ip() c.F_F_Ip {
    return .{ .v1 = -2.125, .v2 = 7.0, .v3 = null };
}

// From T_Snnn_xax.c:22656:22676
// struct  F_F_L  {
//   float v1;
//   float v2;
//   __tsi64 v3;
// };

test "F_F_L: layout" {
    var lv: c.F_F_L = undefined;
    try testing.expectSize(c.F_F_L, 16);
    try testing.expectAlign(c.F_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_L: Zig passes to C" {
    try testing.expectFail(c.assert_F_F_L(.{ .v1 = 0.875, .v2 = 0.875, .v3 = 12916 }));
}
test "F_F_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_L());
}
test "F_F_L: C passes to Zig" {
    try testing.expectFail(c.send_F_F_L());
}
test "F_F_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_L(), .{ .v1 = 0.875, .v2 = 0.875, .v3 = 12916 });
}
pub export fn zig_assert_F_F_L(lv: c.F_F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 12916) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_L() c.F_F_L {
    return .{ .v1 = 0.875, .v2 = 0.875, .v3 = 12916 };
}

// From T_Snnn_xax.c:22681:22701
// struct  F_F_S  {
//   float v1;
//   float v2;
//   short v3;
// };

test "F_F_S: layout" {
    var lv: c.F_F_S = undefined;
    try testing.expectSize(c.F_F_S, 12);
    try testing.expectAlign(c.F_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_S: Zig passes to C" {
    try testing.expectFail(c.assert_F_F_S(.{ .v1 = 0.5, .v2 = -2.125, .v3 = 24001 }));
}
test "F_F_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_S());
}
test "F_F_S: C passes to Zig" {
    try testing.expectFail(c.send_F_F_S());
}
test "F_F_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_S(), .{ .v1 = 0.5, .v2 = -2.125, .v3 = 24001 });
}
pub export fn zig_assert_F_F_S(lv: c.F_F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 24001) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_S() c.F_F_S {
    return .{ .v1 = 0.5, .v2 = -2.125, .v3 = 24001 };
}

// From T_Snnn_xax.c:22706:22726
// struct  F_F_Uc  {
//   float v1;
//   float v2;
//   unsigned char v3;
// };

test "F_F_Uc: layout" {
    var lv: c.F_F_Uc = undefined;
    try testing.expectSize(c.F_F_Uc, 12);
    try testing.expectAlign(c.F_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Uc: Zig passes to C" {
    try testing.expectFail(c.assert_F_F_Uc(.{ .v1 = 0.5, .v2 = -0.25, .v3 = 36 }));
}
test "F_F_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_Uc());
}
test "F_F_Uc: C passes to Zig" {
    try testing.expectFail(c.send_F_F_Uc());
}
test "F_F_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_Uc(), .{ .v1 = 0.5, .v2 = -0.25, .v3 = 36 });
}
pub export fn zig_assert_F_F_Uc(lv: c.F_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 36) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_Uc() c.F_F_Uc {
    return .{ .v1 = 0.5, .v2 = -0.25, .v3 = 36 };
}

// From T_Snnn_xax.c:22731:22751
// struct  F_F_Ui  {
//   float v1;
//   float v2;
//   unsigned int v3;
// };

test "F_F_Ui: layout" {
    var lv: c.F_F_Ui = undefined;
    try testing.expectSize(c.F_F_Ui, 12);
    try testing.expectAlign(c.F_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Ui: Zig passes to C" {
    try testing.expectFail(c.assert_F_F_Ui(.{ .v1 = 1.0, .v2 = 7.0, .v3 = 18540 }));
}
test "F_F_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_Ui());
}
test "F_F_Ui: C passes to Zig" {
    try testing.expectFail(c.send_F_F_Ui());
}
test "F_F_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_Ui(), .{ .v1 = 1.0, .v2 = 7.0, .v3 = 18540 });
}
pub export fn zig_assert_F_F_Ui(lv: c.F_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 18540) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_Ui() c.F_F_Ui {
    return .{ .v1 = 1.0, .v2 = 7.0, .v3 = 18540 };
}

// From T_Snnn_xax.c:22756:22776
// struct  F_F_Ul  {
//   float v1;
//   float v2;
//   __tsu64 v3;
// };

test "F_F_Ul: layout" {
    var lv: c.F_F_Ul = undefined;
    try testing.expectSize(c.F_F_Ul, 16);
    try testing.expectAlign(c.F_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Ul: Zig passes to C" {
    try testing.expectFail(c.assert_F_F_Ul(.{ .v1 = -0.25, .v2 = 0.875, .v3 = 3966 }));
}
test "F_F_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_Ul());
}
test "F_F_Ul: C passes to Zig" {
    try testing.expectFail(c.send_F_F_Ul());
}
test "F_F_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_Ul(), .{ .v1 = -0.25, .v2 = 0.875, .v3 = 3966 });
}
pub export fn zig_assert_F_F_Ul(lv: c.F_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 3966) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_Ul() c.F_F_Ul {
    return .{ .v1 = -0.25, .v2 = 0.875, .v3 = 3966 };
}

// From T_Snnn_xax.c:22781:22801
// struct  F_F_Us  {
//   float v1;
//   float v2;
//   unsigned short v3;
// };

test "F_F_Us: layout" {
    var lv: c.F_F_Us = undefined;
    try testing.expectSize(c.F_F_Us, 12);
    try testing.expectAlign(c.F_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Us: Zig passes to C" {
    try testing.expectFail(c.assert_F_F_Us(.{ .v1 = -0.25, .v2 = 1.0, .v3 = 27558 }));
}
test "F_F_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_Us());
}
test "F_F_Us: C passes to Zig" {
    try testing.expectFail(c.send_F_F_Us());
}
test "F_F_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_Us(), .{ .v1 = -0.25, .v2 = 1.0, .v3 = 27558 });
}
pub export fn zig_assert_F_F_Us(lv: c.F_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 27558) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_Us() c.F_F_Us {
    return .{ .v1 = -0.25, .v2 = 1.0, .v3 = 27558 };
}

// From T_Snnn_xax.c:22806:22826
// struct  F_F_Vp  {
//   float v1;
//   float v2;
//   void *v3;
// };

test "F_F_Vp: layout" {
    var lv: c.F_F_Vp = undefined;
    try testing.expectSize(c.F_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Vp: Zig passes to C" {
    try testing.expectFail(c.assert_F_F_Vp(.{ .v1 = 0.875, .v2 = 1.0, .v3 = null }));
}
test "F_F_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_F_Vp());
}
test "F_F_Vp: C passes to Zig" {
    try testing.expectFail(c.send_F_F_Vp());
}
test "F_F_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_F_Vp(), .{ .v1 = 0.875, .v2 = 1.0, .v3 = null });
}
pub export fn zig_assert_F_F_Vp(lv: c.F_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_Vp() c.F_F_Vp {
    return .{ .v1 = 0.875, .v2 = 1.0, .v3 = null };
}

// From T_Snnn_xax.c:22831:22849
// struct  F_I  {
//   float v1;
//   int v2;
// };

test "F_I: layout" {
    var lv: c.F_I = undefined;
    try testing.expectSize(c.F_I, 8);
    try testing.expectAlign(c.F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_I(.{ .v1 = -0.25, .v2 = 2673 }));
}
test "F_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I());
}
test "F_I: C passes to Zig" {
    try testing.expectOk(c.send_F_I());
}
test "F_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I(), .{ .v1 = -0.25, .v2 = 2673 });
}
pub export fn zig_assert_F_I(lv: c.F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 2673) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I() c.F_I {
    return .{ .v1 = -0.25, .v2 = 2673 };
}

// From T_Snnn_xax.c:23578:23598
// struct  F_I_C  {
//   float v1;
//   int v2;
//   char v3;
// };

test "F_I_C: layout" {
    var lv: c.F_I_C = undefined;
    try testing.expectSize(c.F_I_C, 12);
    try testing.expectAlign(c.F_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_I_C(.{ .v1 = 7.0, .v2 = 9062, .v3 = 42 }));
}
test "F_I_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_C());
}
test "F_I_C: C passes to Zig" {
    try testing.expectOk(c.send_F_I_C());
}
test "F_I_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_C(), .{ .v1 = 7.0, .v2 = 9062, .v3 = 42 });
}
pub export fn zig_assert_F_I_C(lv: c.F_I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 9062) err = 2;
    if (lv.v3 != 42) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_C() c.F_I_C {
    return .{ .v1 = 7.0, .v2 = 9062, .v3 = 42 };
}

// From T_Snnn_xax.c:23603:23623
// struct  F_I_D  {
//   float v1;
//   int v2;
//   double v3;
// };

test "F_I_D: layout" {
    var lv: c.F_I_D = undefined;
    try testing.expectSize(c.F_I_D, 16);
    try testing.expectAlign(c.F_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_D: Zig passes to C" {
    try testing.expectFail(c.assert_F_I_D(.{ .v1 = -2.125, .v2 = 31457, .v3 = -0.25 }));
}
test "F_I_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_D());
}
test "F_I_D: C passes to Zig" {
    try testing.expectFail(c.send_F_I_D());
}
test "F_I_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_D(), .{ .v1 = -2.125, .v2 = 31457, .v3 = -0.25 });
}
pub export fn zig_assert_F_I_D(lv: c.F_I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 31457) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_D() c.F_I_D {
    return .{ .v1 = -2.125, .v2 = 31457, .v3 = -0.25 };
}

// From T_Snnn_xax.c:23628:23648
// struct  F_I_F  {
//   float v1;
//   int v2;
//   float v3;
// };

test "F_I_F: layout" {
    var lv: c.F_I_F = undefined;
    try testing.expectSize(c.F_I_F, 12);
    try testing.expectAlign(c.F_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_F: Zig passes to C" {
    try testing.expectFail(c.assert_F_I_F(.{ .v1 = 4.5, .v2 = 29585, .v3 = -2.125 }));
}
test "F_I_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_F());
}
test "F_I_F: C passes to Zig" {
    try testing.expectFail(c.send_F_I_F());
}
test "F_I_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_F(), .{ .v1 = 4.5, .v2 = 29585, .v3 = -2.125 });
}
pub export fn zig_assert_F_I_F(lv: c.F_I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 29585) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_F() c.F_I_F {
    return .{ .v1 = 4.5, .v2 = 29585, .v3 = -2.125 };
}

// From T_Snnn_xax.c:23653:23673
// struct  F_I_I  {
//   float v1;
//   int v2;
//   int v3;
// };

test "F_I_I: layout" {
    var lv: c.F_I_I = undefined;
    try testing.expectSize(c.F_I_I, 12);
    try testing.expectAlign(c.F_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_I_I(.{ .v1 = 7.0, .v2 = 32140, .v3 = 26057 }));
}
test "F_I_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_I());
}
test "F_I_I: C passes to Zig" {
    try testing.expectOk(c.send_F_I_I());
}
test "F_I_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_I(), .{ .v1 = 7.0, .v2 = 32140, .v3 = 26057 });
}
pub export fn zig_assert_F_I_I(lv: c.F_I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 32140) err = 2;
    if (lv.v3 != 26057) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_I() c.F_I_I {
    return .{ .v1 = 7.0, .v2 = 32140, .v3 = 26057 };
}

// From T_Snnn_xax.c:23678:23698
// struct  F_I_Ip  {
//   float v1;
//   int v2;
//   int *v3;
// };

test "F_I_Ip: layout" {
    var lv: c.F_I_Ip = undefined;
    try testing.expectSize(c.F_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_F_I_Ip(.{ .v1 = 0.875, .v2 = 15202, .v3 = null }));
}
test "F_I_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_Ip());
}
test "F_I_Ip: C passes to Zig" {
    try testing.expectOk(c.send_F_I_Ip());
}
test "F_I_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_Ip(), .{ .v1 = 0.875, .v2 = 15202, .v3 = null });
}
pub export fn zig_assert_F_I_Ip(lv: c.F_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 15202) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_Ip() c.F_I_Ip {
    return .{ .v1 = 0.875, .v2 = 15202, .v3 = null };
}

// From T_Snnn_xax.c:23703:23723
// struct  F_I_L  {
//   float v1;
//   int v2;
//   __tsi64 v3;
// };

test "F_I_L: layout" {
    var lv: c.F_I_L = undefined;
    try testing.expectSize(c.F_I_L, 16);
    try testing.expectAlign(c.F_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_L: Zig passes to C" {
    try testing.expectOk(c.assert_F_I_L(.{ .v1 = 0.5, .v2 = 6979, .v3 = 3920 }));
}
test "F_I_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_L());
}
test "F_I_L: C passes to Zig" {
    try testing.expectOk(c.send_F_I_L());
}
test "F_I_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_L(), .{ .v1 = 0.5, .v2 = 6979, .v3 = 3920 });
}
pub export fn zig_assert_F_I_L(lv: c.F_I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 6979) err = 2;
    if (lv.v3 != 3920) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_L() c.F_I_L {
    return .{ .v1 = 0.5, .v2 = 6979, .v3 = 3920 };
}

// From T_Snnn_xax.c:23728:23748
// struct  F_I_S  {
//   float v1;
//   int v2;
//   short v3;
// };

test "F_I_S: layout" {
    var lv: c.F_I_S = undefined;
    try testing.expectSize(c.F_I_S, 12);
    try testing.expectAlign(c.F_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_I_S(.{ .v1 = -2.125, .v2 = 4337, .v3 = 955 }));
}
test "F_I_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_S());
}
test "F_I_S: C passes to Zig" {
    try testing.expectOk(c.send_F_I_S());
}
test "F_I_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_S(), .{ .v1 = -2.125, .v2 = 4337, .v3 = 955 });
}
pub export fn zig_assert_F_I_S(lv: c.F_I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 4337) err = 2;
    if (lv.v3 != 955) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_S() c.F_I_S {
    return .{ .v1 = -2.125, .v2 = 4337, .v3 = 955 };
}

// From T_Snnn_xax.c:23753:23773
// struct  F_I_Uc  {
//   float v1;
//   int v2;
//   unsigned char v3;
// };

test "F_I_Uc: layout" {
    var lv: c.F_I_Uc = undefined;
    try testing.expectSize(c.F_I_Uc, 12);
    try testing.expectAlign(c.F_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_I_Uc(.{ .v1 = 4.5, .v2 = 24794, .v3 = 1 }));
}
test "F_I_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_Uc());
}
test "F_I_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_I_Uc());
}
test "F_I_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_Uc(), .{ .v1 = 4.5, .v2 = 24794, .v3 = 1 });
}
pub export fn zig_assert_F_I_Uc(lv: c.F_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 24794) err = 2;
    if (lv.v3 != 1) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_Uc() c.F_I_Uc {
    return .{ .v1 = 4.5, .v2 = 24794, .v3 = 1 };
}

// From T_Snnn_xax.c:23778:23798
// struct  F_I_Ui  {
//   float v1;
//   int v2;
//   unsigned int v3;
// };

test "F_I_Ui: layout" {
    var lv: c.F_I_Ui = undefined;
    try testing.expectSize(c.F_I_Ui, 12);
    try testing.expectAlign(c.F_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_I_Ui(.{ .v1 = 0.5, .v2 = 12911, .v3 = 9581 }));
}
test "F_I_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_Ui());
}
test "F_I_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_I_Ui());
}
test "F_I_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_Ui(), .{ .v1 = 0.5, .v2 = 12911, .v3 = 9581 });
}
pub export fn zig_assert_F_I_Ui(lv: c.F_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 12911) err = 2;
    if (lv.v3 != 9581) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_Ui() c.F_I_Ui {
    return .{ .v1 = 0.5, .v2 = 12911, .v3 = 9581 };
}

// From T_Snnn_xax.c:23803:23823
// struct  F_I_Ul  {
//   float v1;
//   int v2;
//   __tsu64 v3;
// };

test "F_I_Ul: layout" {
    var lv: c.F_I_Ul = undefined;
    try testing.expectSize(c.F_I_Ul, 16);
    try testing.expectAlign(c.F_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_F_I_Ul(.{ .v1 = -2.125, .v2 = 8607, .v3 = 1051 }));
}
test "F_I_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_Ul());
}
test "F_I_Ul: C passes to Zig" {
    try testing.expectOk(c.send_F_I_Ul());
}
test "F_I_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_Ul(), .{ .v1 = -2.125, .v2 = 8607, .v3 = 1051 });
}
pub export fn zig_assert_F_I_Ul(lv: c.F_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 8607) err = 2;
    if (lv.v3 != 1051) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_Ul() c.F_I_Ul {
    return .{ .v1 = -2.125, .v2 = 8607, .v3 = 1051 };
}

// From T_Snnn_xax.c:23828:23848
// struct  F_I_Us  {
//   float v1;
//   int v2;
//   unsigned short v3;
// };

test "F_I_Us: layout" {
    var lv: c.F_I_Us = undefined;
    try testing.expectSize(c.F_I_Us, 12);
    try testing.expectAlign(c.F_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_I_Us(.{ .v1 = 0.5, .v2 = 23512, .v3 = 5539 }));
}
test "F_I_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_Us());
}
test "F_I_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_I_Us());
}
test "F_I_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_Us(), .{ .v1 = 0.5, .v2 = 23512, .v3 = 5539 });
}
pub export fn zig_assert_F_I_Us(lv: c.F_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 23512) err = 2;
    if (lv.v3 != 5539) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_Us() c.F_I_Us {
    return .{ .v1 = 0.5, .v2 = 23512, .v3 = 5539 };
}

// From T_Snnn_xax.c:23853:23873
// struct  F_I_Vp  {
//   float v1;
//   int v2;
//   void *v3;
// };

test "F_I_Vp: layout" {
    var lv: c.F_I_Vp = undefined;
    try testing.expectSize(c.F_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_F_I_Vp(.{ .v1 = 0.875, .v2 = 1023, .v3 = null }));
}
test "F_I_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_I_Vp());
}
test "F_I_Vp: C passes to Zig" {
    try testing.expectOk(c.send_F_I_Vp());
}
test "F_I_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_I_Vp(), .{ .v1 = 0.875, .v2 = 1023, .v3 = null });
}
pub export fn zig_assert_F_I_Vp(lv: c.F_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 1023) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_Vp() c.F_I_Vp {
    return .{ .v1 = 0.875, .v2 = 1023, .v3 = null };
}

// From T_Snnn_xax.c:23878:23896
// struct  F_Ip  {
//   float v1;
//   int *v2;
// };

test "F_Ip: layout" {
    var lv: c.F_Ip = undefined;
    try testing.expectSize(c.F_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "F_Ip: Zig passes to C" {
    try testing.expectFail(c.assert_F_Ip(.{ .v1 = 4.5, .v2 = null }));
}
test "F_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip());
}
test "F_Ip: C passes to Zig" {
    try testing.expectFail(c.send_F_Ip());
}
test "F_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip(), .{ .v1 = 4.5, .v2 = null });
}
pub export fn zig_assert_F_Ip(lv: c.F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip() c.F_Ip {
    return .{ .v1 = 4.5, .v2 = null };
}

// From T_Snnn_xax.c:24625:24645
// struct  F_Ip_C  {
//   float v1;
//   int *v2;
//   char v3;
// };

test "F_Ip_C: layout" {
    var lv: c.F_Ip_C = undefined;
    try testing.expectSize(c.F_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_C(.{ .v1 = -2.125, .v2 = null, .v3 = 88 }));
}
test "F_Ip_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_C());
}
test "F_Ip_C: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_C());
}
test "F_Ip_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_C(), .{ .v1 = -2.125, .v2 = null, .v3 = 88 });
}
pub export fn zig_assert_F_Ip_C(lv: c.F_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 88) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_C() c.F_Ip_C {
    return .{ .v1 = -2.125, .v2 = null, .v3 = 88 };
}

// From T_Snnn_xax.c:24650:24670
// struct  F_Ip_D  {
//   float v1;
//   int *v2;
//   double v3;
// };

test "F_Ip_D: layout" {
    var lv: c.F_Ip_D = undefined;
    try testing.expectSize(c.F_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_D: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_D(.{ .v1 = 4.5, .v2 = null, .v3 = 7.0 }));
}
test "F_Ip_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_D());
}
test "F_Ip_D: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_D());
}
test "F_Ip_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_D(), .{ .v1 = 4.5, .v2 = null, .v3 = 7.0 });
}
pub export fn zig_assert_F_Ip_D(lv: c.F_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_D() c.F_Ip_D {
    return .{ .v1 = 4.5, .v2 = null, .v3 = 7.0 };
}

// From T_Snnn_xax.c:24675:24695
// struct  F_Ip_F  {
//   float v1;
//   int *v2;
//   float v3;
// };

test "F_Ip_F: layout" {
    var lv: c.F_Ip_F = undefined;
    try testing.expectSize(c.F_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_F: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_F(.{ .v1 = -2.125, .v2 = null, .v3 = 1.0 }));
}
test "F_Ip_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_F());
}
test "F_Ip_F: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_F());
}
test "F_Ip_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_F(), .{ .v1 = -2.125, .v2 = null, .v3 = 1.0 });
}
pub export fn zig_assert_F_Ip_F(lv: c.F_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_F() c.F_Ip_F {
    return .{ .v1 = -2.125, .v2 = null, .v3 = 1.0 };
}

// From T_Snnn_xax.c:24700:24720
// struct  F_Ip_I  {
//   float v1;
//   int *v2;
//   int v3;
// };

test "F_Ip_I: layout" {
    var lv: c.F_Ip_I = undefined;
    try testing.expectSize(c.F_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_I(.{ .v1 = 1.0, .v2 = null, .v3 = 25911 }));
}
test "F_Ip_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_I());
}
test "F_Ip_I: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_I());
}
test "F_Ip_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_I(), .{ .v1 = 1.0, .v2 = null, .v3 = 25911 });
}
pub export fn zig_assert_F_Ip_I(lv: c.F_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 25911) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_I() c.F_Ip_I {
    return .{ .v1 = 1.0, .v2 = null, .v3 = 25911 };
}

// From T_Snnn_xax.c:24725:24745
// struct  F_Ip_Ip  {
//   float v1;
//   int *v2;
//   int *v3;
// };

test "F_Ip_Ip: layout" {
    var lv: c.F_Ip_Ip = undefined;
    try testing.expectSize(c.F_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_Ip(.{ .v1 = -0.25, .v2 = null, .v3 = null }));
}
test "F_Ip_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_Ip());
}
test "F_Ip_Ip: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_Ip());
}
test "F_Ip_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_Ip(), .{ .v1 = -0.25, .v2 = null, .v3 = null });
}
pub export fn zig_assert_F_Ip_Ip(lv: c.F_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_Ip() c.F_Ip_Ip {
    return .{ .v1 = -0.25, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:24750:24770
// struct  F_Ip_L  {
//   float v1;
//   int *v2;
//   __tsi64 v3;
// };

test "F_Ip_L: layout" {
    var lv: c.F_Ip_L = undefined;
    try testing.expectSize(c.F_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_L: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_L(.{ .v1 = 7.0, .v2 = null, .v3 = 20726 }));
}
test "F_Ip_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_L());
}
test "F_Ip_L: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_L());
}
test "F_Ip_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_L(), .{ .v1 = 7.0, .v2 = null, .v3 = 20726 });
}
pub export fn zig_assert_F_Ip_L(lv: c.F_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 20726) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_L() c.F_Ip_L {
    return .{ .v1 = 7.0, .v2 = null, .v3 = 20726 };
}

// From T_Snnn_xax.c:24775:24795
// struct  F_Ip_S  {
//   float v1;
//   int *v2;
//   short v3;
// };

test "F_Ip_S: layout" {
    var lv: c.F_Ip_S = undefined;
    try testing.expectSize(c.F_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_S(.{ .v1 = 0.5, .v2 = null, .v3 = 17278 }));
}
test "F_Ip_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_S());
}
test "F_Ip_S: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_S());
}
test "F_Ip_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_S(), .{ .v1 = 0.5, .v2 = null, .v3 = 17278 });
}
pub export fn zig_assert_F_Ip_S(lv: c.F_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 17278) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_S() c.F_Ip_S {
    return .{ .v1 = 0.5, .v2 = null, .v3 = 17278 };
}

// From T_Snnn_xax.c:24800:24820
// struct  F_Ip_Uc  {
//   float v1;
//   int *v2;
//   unsigned char v3;
// };

test "F_Ip_Uc: layout" {
    var lv: c.F_Ip_Uc = undefined;
    try testing.expectSize(c.F_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_Uc(.{ .v1 = 7.0, .v2 = null, .v3 = 24 }));
}
test "F_Ip_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_Uc());
}
test "F_Ip_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_Uc());
}
test "F_Ip_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_Uc(), .{ .v1 = 7.0, .v2 = null, .v3 = 24 });
}
pub export fn zig_assert_F_Ip_Uc(lv: c.F_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 24) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_Uc() c.F_Ip_Uc {
    return .{ .v1 = 7.0, .v2 = null, .v3 = 24 };
}

// From T_Snnn_xax.c:24825:24845
// struct  F_Ip_Ui  {
//   float v1;
//   int *v2;
//   unsigned int v3;
// };

test "F_Ip_Ui: layout" {
    var lv: c.F_Ip_Ui = undefined;
    try testing.expectSize(c.F_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_Ui(.{ .v1 = 0.5, .v2 = null, .v3 = 28681 }));
}
test "F_Ip_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_Ui());
}
test "F_Ip_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_Ui());
}
test "F_Ip_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_Ui(), .{ .v1 = 0.5, .v2 = null, .v3 = 28681 });
}
pub export fn zig_assert_F_Ip_Ui(lv: c.F_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 28681) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_Ui() c.F_Ip_Ui {
    return .{ .v1 = 0.5, .v2 = null, .v3 = 28681 };
}

// From T_Snnn_xax.c:24850:24870
// struct  F_Ip_Ul  {
//   float v1;
//   int *v2;
//   __tsu64 v3;
// };

test "F_Ip_Ul: layout" {
    var lv: c.F_Ip_Ul = undefined;
    try testing.expectSize(c.F_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_Ul(.{ .v1 = 0.875, .v2 = null, .v3 = 20410 }));
}
test "F_Ip_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_Ul());
}
test "F_Ip_Ul: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_Ul());
}
test "F_Ip_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_Ul(), .{ .v1 = 0.875, .v2 = null, .v3 = 20410 });
}
pub export fn zig_assert_F_Ip_Ul(lv: c.F_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 20410) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_Ul() c.F_Ip_Ul {
    return .{ .v1 = 0.875, .v2 = null, .v3 = 20410 };
}

// From T_Snnn_xax.c:24875:24895
// struct  F_Ip_Us  {
//   float v1;
//   int *v2;
//   unsigned short v3;
// };

test "F_Ip_Us: layout" {
    var lv: c.F_Ip_Us = undefined;
    try testing.expectSize(c.F_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_Us(.{ .v1 = -2.125, .v2 = null, .v3 = 21682 }));
}
test "F_Ip_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_Us());
}
test "F_Ip_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_Us());
}
test "F_Ip_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_Us(), .{ .v1 = -2.125, .v2 = null, .v3 = 21682 });
}
pub export fn zig_assert_F_Ip_Us(lv: c.F_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 21682) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_Us() c.F_Ip_Us {
    return .{ .v1 = -2.125, .v2 = null, .v3 = 21682 };
}

// From T_Snnn_xax.c:24900:24920
// struct  F_Ip_Vp  {
//   float v1;
//   int *v2;
//   void *v3;
// };

test "F_Ip_Vp: layout" {
    var lv: c.F_Ip_Vp = undefined;
    try testing.expectSize(c.F_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ip_Vp(.{ .v1 = 0.875, .v2 = null, .v3 = null }));
}
test "F_Ip_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ip_Vp());
}
test "F_Ip_Vp: C passes to Zig" {
    try testing.expectOk(c.send_F_Ip_Vp());
}
test "F_Ip_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ip_Vp(), .{ .v1 = 0.875, .v2 = null, .v3 = null });
}
pub export fn zig_assert_F_Ip_Vp(lv: c.F_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_Vp() c.F_Ip_Vp {
    return .{ .v1 = 0.875, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:24925:24943
// struct  F_L  {
//   float v1;
//   __tsi64 v2;
// };

test "F_L: layout" {
    var lv: c.F_L = undefined;
    try testing.expectSize(c.F_L, ABISELECT(16, 12));
    try testing.expectAlign(c.F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "F_L: Zig passes to C" {
    try testing.expectFail(c.assert_F_L(.{ .v1 = -2.125, .v2 = 11017 }));
}
test "F_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L());
}
test "F_L: C passes to Zig" {
    try testing.expectFail(c.send_F_L());
}
test "F_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L(), .{ .v1 = -2.125, .v2 = 11017 });
}
pub export fn zig_assert_F_L(lv: c.F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 11017) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L() c.F_L {
    return .{ .v1 = -2.125, .v2 = 11017 };
}

// From T_Snnn_xax.c:25672:25692
// struct  F_L_C  {
//   float v1;
//   __tsi64 v2;
//   char v3;
// };

test "F_L_C: layout" {
    var lv: c.F_L_C = undefined;
    try testing.expectSize(c.F_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_C(.{ .v1 = 0.5, .v2 = 26491, .v3 = 72 }));
}
test "F_L_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_C());
}
test "F_L_C: C passes to Zig" {
    try testing.expectOk(c.send_F_L_C());
}
test "F_L_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_C(), .{ .v1 = 0.5, .v2 = 26491, .v3 = 72 });
}
pub export fn zig_assert_F_L_C(lv: c.F_L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 26491) err = 2;
    if (lv.v3 != 72) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_C() c.F_L_C {
    return .{ .v1 = 0.5, .v2 = 26491, .v3 = 72 };
}

// From T_Snnn_xax.c:25697:25717
// struct  F_L_D  {
//   float v1;
//   __tsi64 v2;
//   double v3;
// };

test "F_L_D: layout" {
    var lv: c.F_L_D = undefined;
    try testing.expectSize(c.F_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_D: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_D(.{ .v1 = 4.5, .v2 = 6010, .v3 = -2.125 }));
}
test "F_L_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_D());
}
test "F_L_D: C passes to Zig" {
    try testing.expectOk(c.send_F_L_D());
}
test "F_L_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_D(), .{ .v1 = 4.5, .v2 = 6010, .v3 = -2.125 });
}
pub export fn zig_assert_F_L_D(lv: c.F_L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 6010) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_D() c.F_L_D {
    return .{ .v1 = 4.5, .v2 = 6010, .v3 = -2.125 };
}

// From T_Snnn_xax.c:25722:25742
// struct  F_L_F  {
//   float v1;
//   __tsi64 v2;
//   float v3;
// };

test "F_L_F: layout" {
    var lv: c.F_L_F = undefined;
    try testing.expectSize(c.F_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_F: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_F(.{ .v1 = 4.5, .v2 = 1339, .v3 = 4.5 }));
}
test "F_L_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_F());
}
test "F_L_F: C passes to Zig" {
    try testing.expectOk(c.send_F_L_F());
}
test "F_L_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_F(), .{ .v1 = 4.5, .v2 = 1339, .v3 = 4.5 });
}
pub export fn zig_assert_F_L_F(lv: c.F_L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 1339) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_F() c.F_L_F {
    return .{ .v1 = 4.5, .v2 = 1339, .v3 = 4.5 };
}

// From T_Snnn_xax.c:25747:25767
// struct  F_L_I  {
//   float v1;
//   __tsi64 v2;
//   int v3;
// };

test "F_L_I: layout" {
    var lv: c.F_L_I = undefined;
    try testing.expectSize(c.F_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_I(.{ .v1 = -0.25, .v2 = 5595, .v3 = 27088 }));
}
test "F_L_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_I());
}
test "F_L_I: C passes to Zig" {
    try testing.expectOk(c.send_F_L_I());
}
test "F_L_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_I(), .{ .v1 = -0.25, .v2 = 5595, .v3 = 27088 });
}
pub export fn zig_assert_F_L_I(lv: c.F_L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 5595) err = 2;
    if (lv.v3 != 27088) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_I() c.F_L_I {
    return .{ .v1 = -0.25, .v2 = 5595, .v3 = 27088 };
}

// From T_Snnn_xax.c:25772:25792
// struct  F_L_Ip  {
//   float v1;
//   __tsi64 v2;
//   int *v3;
// };

test "F_L_Ip: layout" {
    var lv: c.F_L_Ip = undefined;
    try testing.expectSize(c.F_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_Ip(.{ .v1 = 0.875, .v2 = 30167, .v3 = null }));
}
test "F_L_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_Ip());
}
test "F_L_Ip: C passes to Zig" {
    try testing.expectOk(c.send_F_L_Ip());
}
test "F_L_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_Ip(), .{ .v1 = 0.875, .v2 = 30167, .v3 = null });
}
pub export fn zig_assert_F_L_Ip(lv: c.F_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 30167) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_Ip() c.F_L_Ip {
    return .{ .v1 = 0.875, .v2 = 30167, .v3 = null };
}

// From T_Snnn_xax.c:25797:25817
// struct  F_L_L  {
//   float v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "F_L_L: layout" {
    var lv: c.F_L_L = undefined;
    try testing.expectSize(c.F_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_L: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_L(.{ .v1 = 0.875, .v2 = 31661, .v3 = 592 }));
}
test "F_L_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_L());
}
test "F_L_L: C passes to Zig" {
    try testing.expectOk(c.send_F_L_L());
}
test "F_L_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_L(), .{ .v1 = 0.875, .v2 = 31661, .v3 = 592 });
}
pub export fn zig_assert_F_L_L(lv: c.F_L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 31661) err = 2;
    if (lv.v3 != 592) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_L() c.F_L_L {
    return .{ .v1 = 0.875, .v2 = 31661, .v3 = 592 };
}

// From T_Snnn_xax.c:25822:25842
// struct  F_L_S  {
//   float v1;
//   __tsi64 v2;
//   short v3;
// };

test "F_L_S: layout" {
    var lv: c.F_L_S = undefined;
    try testing.expectSize(c.F_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_S(.{ .v1 = 0.875, .v2 = 29218, .v3 = 27604 }));
}
test "F_L_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_S());
}
test "F_L_S: C passes to Zig" {
    try testing.expectOk(c.send_F_L_S());
}
test "F_L_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_S(), .{ .v1 = 0.875, .v2 = 29218, .v3 = 27604 });
}
pub export fn zig_assert_F_L_S(lv: c.F_L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 29218) err = 2;
    if (lv.v3 != 27604) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_S() c.F_L_S {
    return .{ .v1 = 0.875, .v2 = 29218, .v3 = 27604 };
}

// From T_Snnn_xax.c:25847:25867
// struct  F_L_Uc  {
//   float v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "F_L_Uc: layout" {
    var lv: c.F_L_Uc = undefined;
    try testing.expectSize(c.F_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_Uc(.{ .v1 = 4.5, .v2 = 31405, .v3 = 5 }));
}
test "F_L_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_Uc());
}
test "F_L_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_L_Uc());
}
test "F_L_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_Uc(), .{ .v1 = 4.5, .v2 = 31405, .v3 = 5 });
}
pub export fn zig_assert_F_L_Uc(lv: c.F_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 31405) err = 2;
    if (lv.v3 != 5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_Uc() c.F_L_Uc {
    return .{ .v1 = 4.5, .v2 = 31405, .v3 = 5 };
}

// From T_Snnn_xax.c:25872:25892
// struct  F_L_Ui  {
//   float v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "F_L_Ui: layout" {
    var lv: c.F_L_Ui = undefined;
    try testing.expectSize(c.F_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_Ui(.{ .v1 = 0.5, .v2 = 9274, .v3 = 21311 }));
}
test "F_L_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_Ui());
}
test "F_L_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_L_Ui());
}
test "F_L_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_Ui(), .{ .v1 = 0.5, .v2 = 9274, .v3 = 21311 });
}
pub export fn zig_assert_F_L_Ui(lv: c.F_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 9274) err = 2;
    if (lv.v3 != 21311) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_Ui() c.F_L_Ui {
    return .{ .v1 = 0.5, .v2 = 9274, .v3 = 21311 };
}

// From T_Snnn_xax.c:25897:25917
// struct  F_L_Ul  {
//   float v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "F_L_Ul: layout" {
    var lv: c.F_L_Ul = undefined;
    try testing.expectSize(c.F_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_Ul(.{ .v1 = 4.5, .v2 = 9453, .v3 = 27799 }));
}
test "F_L_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_Ul());
}
test "F_L_Ul: C passes to Zig" {
    try testing.expectOk(c.send_F_L_Ul());
}
test "F_L_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_Ul(), .{ .v1 = 4.5, .v2 = 9453, .v3 = 27799 });
}
pub export fn zig_assert_F_L_Ul(lv: c.F_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 9453) err = 2;
    if (lv.v3 != 27799) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_Ul() c.F_L_Ul {
    return .{ .v1 = 4.5, .v2 = 9453, .v3 = 27799 };
}

// From T_Snnn_xax.c:25922:25942
// struct  F_L_Us  {
//   float v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "F_L_Us: layout" {
    var lv: c.F_L_Us = undefined;
    try testing.expectSize(c.F_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_Us(.{ .v1 = 0.5, .v2 = 6123, .v3 = 22927 }));
}
test "F_L_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_Us());
}
test "F_L_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_L_Us());
}
test "F_L_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_Us(), .{ .v1 = 0.5, .v2 = 6123, .v3 = 22927 });
}
pub export fn zig_assert_F_L_Us(lv: c.F_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 6123) err = 2;
    if (lv.v3 != 22927) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_Us() c.F_L_Us {
    return .{ .v1 = 0.5, .v2 = 6123, .v3 = 22927 };
}

// From T_Snnn_xax.c:25947:25967
// struct  F_L_Vp  {
//   float v1;
//   __tsi64 v2;
//   void *v3;
// };

test "F_L_Vp: layout" {
    var lv: c.F_L_Vp = undefined;
    try testing.expectSize(c.F_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_F_L_Vp(.{ .v1 = -0.25, .v2 = 29255, .v3 = null }));
}
test "F_L_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_L_Vp());
}
test "F_L_Vp: C passes to Zig" {
    try testing.expectOk(c.send_F_L_Vp());
}
test "F_L_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_L_Vp(), .{ .v1 = -0.25, .v2 = 29255, .v3 = null });
}
pub export fn zig_assert_F_L_Vp(lv: c.F_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 29255) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_Vp() c.F_L_Vp {
    return .{ .v1 = -0.25, .v2 = 29255, .v3 = null };
}

// From T_Snnn_xax.c:25972:25990
// struct  F_S  {
//   float v1;
//   short v2;
// };

test "F_S: layout" {
    var lv: c.F_S = undefined;
    try testing.expectSize(c.F_S, 8);
    try testing.expectAlign(c.F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_S(.{ .v1 = 7.0, .v2 = 28164 }));
}
test "F_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S());
}
test "F_S: C passes to Zig" {
    try testing.expectOk(c.send_F_S());
}
test "F_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S(), .{ .v1 = 7.0, .v2 = 28164 });
}
pub export fn zig_assert_F_S(lv: c.F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 28164) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S() c.F_S {
    return .{ .v1 = 7.0, .v2 = 28164 };
}

// From T_Snnn_xax.c:26719:26739
// struct  F_S_C  {
//   float v1;
//   short v2;
//   char v3;
// };

test "F_S_C: layout" {
    var lv: c.F_S_C = undefined;
    try testing.expectSize(c.F_S_C, 8);
    try testing.expectAlign(c.F_S_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_S_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_S_C(.{ .v1 = 7.0, .v2 = 29744, .v3 = 119 }));
}
test "F_S_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_C());
}
test "F_S_C: C passes to Zig" {
    try testing.expectOk(c.send_F_S_C());
}
test "F_S_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_C(), .{ .v1 = 7.0, .v2 = 29744, .v3 = 119 });
}
pub export fn zig_assert_F_S_C(lv: c.F_S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 29744) err = 2;
    if (lv.v3 != 119) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_C() c.F_S_C {
    return .{ .v1 = 7.0, .v2 = 29744, .v3 = 119 };
}

// From T_Snnn_xax.c:26744:26764
// struct  F_S_D  {
//   float v1;
//   short v2;
//   double v3;
// };

test "F_S_D: layout" {
    var lv: c.F_S_D = undefined;
    try testing.expectSize(c.F_S_D, 16);
    try testing.expectAlign(c.F_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_D: Zig passes to C" {
    try testing.expectFail(c.assert_F_S_D(.{ .v1 = -2.125, .v2 = 18960, .v3 = 1.0 }));
}
test "F_S_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_D());
}
test "F_S_D: C passes to Zig" {
    try testing.expectFail(c.send_F_S_D());
}
test "F_S_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_D(), .{ .v1 = -2.125, .v2 = 18960, .v3 = 1.0 });
}
pub export fn zig_assert_F_S_D(lv: c.F_S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 18960) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_D() c.F_S_D {
    return .{ .v1 = -2.125, .v2 = 18960, .v3 = 1.0 };
}

// From T_Snnn_xax.c:26769:26789
// struct  F_S_F  {
//   float v1;
//   short v2;
//   float v3;
// };

test "F_S_F: layout" {
    var lv: c.F_S_F = undefined;
    try testing.expectSize(c.F_S_F, 12);
    try testing.expectAlign(c.F_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_F: Zig passes to C" {
    try testing.expectFail(c.assert_F_S_F(.{ .v1 = 7.0, .v2 = 14516, .v3 = -2.125 }));
}
test "F_S_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_F());
}
test "F_S_F: C passes to Zig" {
    try testing.expectFail(c.send_F_S_F());
}
test "F_S_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_F(), .{ .v1 = 7.0, .v2 = 14516, .v3 = -2.125 });
}
pub export fn zig_assert_F_S_F(lv: c.F_S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 14516) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_F() c.F_S_F {
    return .{ .v1 = 7.0, .v2 = 14516, .v3 = -2.125 };
}

// From T_Snnn_xax.c:26794:26814
// struct  F_S_I  {
//   float v1;
//   short v2;
//   int v3;
// };

test "F_S_I: layout" {
    var lv: c.F_S_I = undefined;
    try testing.expectSize(c.F_S_I, 12);
    try testing.expectAlign(c.F_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_S_I(.{ .v1 = 7.0, .v2 = 24764, .v3 = 23226 }));
}
test "F_S_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_I());
}
test "F_S_I: C passes to Zig" {
    try testing.expectOk(c.send_F_S_I());
}
test "F_S_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_I(), .{ .v1 = 7.0, .v2 = 24764, .v3 = 23226 });
}
pub export fn zig_assert_F_S_I(lv: c.F_S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 24764) err = 2;
    if (lv.v3 != 23226) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_I() c.F_S_I {
    return .{ .v1 = 7.0, .v2 = 24764, .v3 = 23226 };
}

// From T_Snnn_xax.c:26819:26839
// struct  F_S_Ip  {
//   float v1;
//   short v2;
//   int *v3;
// };

test "F_S_Ip: layout" {
    var lv: c.F_S_Ip = undefined;
    try testing.expectSize(c.F_S_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_F_S_Ip(.{ .v1 = 1.0, .v2 = 5176, .v3 = null }));
}
test "F_S_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_Ip());
}
test "F_S_Ip: C passes to Zig" {
    try testing.expectOk(c.send_F_S_Ip());
}
test "F_S_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_Ip(), .{ .v1 = 1.0, .v2 = 5176, .v3 = null });
}
pub export fn zig_assert_F_S_Ip(lv: c.F_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 5176) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_Ip() c.F_S_Ip {
    return .{ .v1 = 1.0, .v2 = 5176, .v3 = null };
}

// From T_Snnn_xax.c:26844:26864
// struct  F_S_L  {
//   float v1;
//   short v2;
//   __tsi64 v3;
// };

test "F_S_L: layout" {
    var lv: c.F_S_L = undefined;
    try testing.expectSize(c.F_S_L, 16);
    try testing.expectAlign(c.F_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_L: Zig passes to C" {
    try testing.expectOk(c.assert_F_S_L(.{ .v1 = -2.125, .v2 = 11860, .v3 = 24497 }));
}
test "F_S_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_L());
}
test "F_S_L: C passes to Zig" {
    try testing.expectOk(c.send_F_S_L());
}
test "F_S_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_L(), .{ .v1 = -2.125, .v2 = 11860, .v3 = 24497 });
}
pub export fn zig_assert_F_S_L(lv: c.F_S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 11860) err = 2;
    if (lv.v3 != 24497) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_L() c.F_S_L {
    return .{ .v1 = -2.125, .v2 = 11860, .v3 = 24497 };
}

// From T_Snnn_xax.c:26869:26889
// struct  F_S_S  {
//   float v1;
//   short v2;
//   short v3;
// };

test "F_S_S: layout" {
    var lv: c.F_S_S = undefined;
    try testing.expectSize(c.F_S_S, 8);
    try testing.expectAlign(c.F_S_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_S_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_S_S(.{ .v1 = 1.0, .v2 = 7971, .v3 = 12118 }));
}
test "F_S_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_S());
}
test "F_S_S: C passes to Zig" {
    try testing.expectOk(c.send_F_S_S());
}
test "F_S_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_S(), .{ .v1 = 1.0, .v2 = 7971, .v3 = 12118 });
}
pub export fn zig_assert_F_S_S(lv: c.F_S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 7971) err = 2;
    if (lv.v3 != 12118) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_S() c.F_S_S {
    return .{ .v1 = 1.0, .v2 = 7971, .v3 = 12118 };
}

// From T_Snnn_xax.c:26894:26914
// struct  F_S_Uc  {
//   float v1;
//   short v2;
//   unsigned char v3;
// };

test "F_S_Uc: layout" {
    var lv: c.F_S_Uc = undefined;
    try testing.expectSize(c.F_S_Uc, 8);
    try testing.expectAlign(c.F_S_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_S_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_S_Uc(.{ .v1 = 7.0, .v2 = 30467, .v3 = 22 }));
}
test "F_S_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_Uc());
}
test "F_S_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_S_Uc());
}
test "F_S_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_Uc(), .{ .v1 = 7.0, .v2 = 30467, .v3 = 22 });
}
pub export fn zig_assert_F_S_Uc(lv: c.F_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 30467) err = 2;
    if (lv.v3 != 22) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_Uc() c.F_S_Uc {
    return .{ .v1 = 7.0, .v2 = 30467, .v3 = 22 };
}

// From T_Snnn_xax.c:26919:26939
// struct  F_S_Ui  {
//   float v1;
//   short v2;
//   unsigned int v3;
// };

test "F_S_Ui: layout" {
    var lv: c.F_S_Ui = undefined;
    try testing.expectSize(c.F_S_Ui, 12);
    try testing.expectAlign(c.F_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_S_Ui(.{ .v1 = 0.875, .v2 = 4283, .v3 = 12381 }));
}
test "F_S_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_Ui());
}
test "F_S_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_S_Ui());
}
test "F_S_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_Ui(), .{ .v1 = 0.875, .v2 = 4283, .v3 = 12381 });
}
pub export fn zig_assert_F_S_Ui(lv: c.F_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 4283) err = 2;
    if (lv.v3 != 12381) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_Ui() c.F_S_Ui {
    return .{ .v1 = 0.875, .v2 = 4283, .v3 = 12381 };
}

// From T_Snnn_xax.c:26944:26964
// struct  F_S_Ul  {
//   float v1;
//   short v2;
//   __tsu64 v3;
// };

test "F_S_Ul: layout" {
    var lv: c.F_S_Ul = undefined;
    try testing.expectSize(c.F_S_Ul, 16);
    try testing.expectAlign(c.F_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_F_S_Ul(.{ .v1 = -0.25, .v2 = 12799, .v3 = 20298 }));
}
test "F_S_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_Ul());
}
test "F_S_Ul: C passes to Zig" {
    try testing.expectOk(c.send_F_S_Ul());
}
test "F_S_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_Ul(), .{ .v1 = -0.25, .v2 = 12799, .v3 = 20298 });
}
pub export fn zig_assert_F_S_Ul(lv: c.F_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 12799) err = 2;
    if (lv.v3 != 20298) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_Ul() c.F_S_Ul {
    return .{ .v1 = -0.25, .v2 = 12799, .v3 = 20298 };
}

// From T_Snnn_xax.c:26969:26989
// struct  F_S_Us  {
//   float v1;
//   short v2;
//   unsigned short v3;
// };

test "F_S_Us: layout" {
    var lv: c.F_S_Us = undefined;
    try testing.expectSize(c.F_S_Us, 8);
    try testing.expectAlign(c.F_S_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_S_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_S_Us(.{ .v1 = -2.125, .v2 = 29977, .v3 = 6734 }));
}
test "F_S_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_Us());
}
test "F_S_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_S_Us());
}
test "F_S_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_Us(), .{ .v1 = -2.125, .v2 = 29977, .v3 = 6734 });
}
pub export fn zig_assert_F_S_Us(lv: c.F_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 29977) err = 2;
    if (lv.v3 != 6734) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_Us() c.F_S_Us {
    return .{ .v1 = -2.125, .v2 = 29977, .v3 = 6734 };
}

// From T_Snnn_xax.c:26994:27014
// struct  F_S_Vp  {
//   float v1;
//   short v2;
//   void *v3;
// };

test "F_S_Vp: layout" {
    var lv: c.F_S_Vp = undefined;
    try testing.expectSize(c.F_S_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_F_S_Vp(.{ .v1 = 4.5, .v2 = 23368, .v3 = null }));
}
test "F_S_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_S_Vp());
}
test "F_S_Vp: C passes to Zig" {
    try testing.expectOk(c.send_F_S_Vp());
}
test "F_S_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_S_Vp(), .{ .v1 = 4.5, .v2 = 23368, .v3 = null });
}
pub export fn zig_assert_F_S_Vp(lv: c.F_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 23368) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_Vp() c.F_S_Vp {
    return .{ .v1 = 4.5, .v2 = 23368, .v3 = null };
}

// From T_Snnn_xax.c:27019:27037
// struct  F_Uc  {
//   float v1;
//   unsigned char v2;
// };

test "F_Uc: layout" {
    var lv: c.F_Uc = undefined;
    try testing.expectSize(c.F_Uc, 8);
    try testing.expectAlign(c.F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_Uc(.{ .v1 = -0.25, .v2 = 118 }));
}
test "F_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc());
}
test "F_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_Uc());
}
test "F_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc(), .{ .v1 = -0.25, .v2 = 118 });
}
pub export fn zig_assert_F_Uc(lv: c.F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 118) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc() c.F_Uc {
    return .{ .v1 = -0.25, .v2 = 118 };
}

// From T_Snnn_xax.c:27766:27786
// struct  F_Uc_C  {
//   float v1;
//   unsigned char v2;
//   char v3;
// };

test "F_Uc_C: layout" {
    var lv: c.F_Uc_C = undefined;
    try testing.expectSize(c.F_Uc_C, 8);
    try testing.expectAlign(c.F_Uc_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "F_Uc_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_Uc_C(.{ .v1 = -2.125, .v2 = 96, .v3 = 48 }));
}
test "F_Uc_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_C());
}
test "F_Uc_C: C passes to Zig" {
    try testing.expectOk(c.send_F_Uc_C());
}
test "F_Uc_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_C(), .{ .v1 = -2.125, .v2 = 96, .v3 = 48 });
}
pub export fn zig_assert_F_Uc_C(lv: c.F_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 96) err = 2;
    if (lv.v3 != 48) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_C() c.F_Uc_C {
    return .{ .v1 = -2.125, .v2 = 96, .v3 = 48 };
}

// From T_Snnn_xax.c:27791:27811
// struct  F_Uc_D  {
//   float v1;
//   unsigned char v2;
//   double v3;
// };

test "F_Uc_D: layout" {
    var lv: c.F_Uc_D = undefined;
    try testing.expectSize(c.F_Uc_D, 16);
    try testing.expectAlign(c.F_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_D: Zig passes to C" {
    try testing.expectFail(c.assert_F_Uc_D(.{ .v1 = 7.0, .v2 = 109, .v3 = 0.5 }));
}
test "F_Uc_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_D());
}
test "F_Uc_D: C passes to Zig" {
    try testing.expectFail(c.send_F_Uc_D());
}
test "F_Uc_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_D(), .{ .v1 = 7.0, .v2 = 109, .v3 = 0.5 });
}
pub export fn zig_assert_F_Uc_D(lv: c.F_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 109) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_D() c.F_Uc_D {
    return .{ .v1 = 7.0, .v2 = 109, .v3 = 0.5 };
}

// From T_Snnn_xax.c:27816:27836
// struct  F_Uc_F  {
//   float v1;
//   unsigned char v2;
//   float v3;
// };

test "F_Uc_F: layout" {
    var lv: c.F_Uc_F = undefined;
    try testing.expectSize(c.F_Uc_F, 12);
    try testing.expectAlign(c.F_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_F: Zig passes to C" {
    try testing.expectFail(c.assert_F_Uc_F(.{ .v1 = -2.125, .v2 = 84, .v3 = 4.5 }));
}
test "F_Uc_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_F());
}
test "F_Uc_F: C passes to Zig" {
    try testing.expectFail(c.send_F_Uc_F());
}
test "F_Uc_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_F(), .{ .v1 = -2.125, .v2 = 84, .v3 = 4.5 });
}
pub export fn zig_assert_F_Uc_F(lv: c.F_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 84) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_F() c.F_Uc_F {
    return .{ .v1 = -2.125, .v2 = 84, .v3 = 4.5 };
}

// From T_Snnn_xax.c:27841:27861
// struct  F_Uc_I  {
//   float v1;
//   unsigned char v2;
//   int v3;
// };

test "F_Uc_I: layout" {
    var lv: c.F_Uc_I = undefined;
    try testing.expectSize(c.F_Uc_I, 12);
    try testing.expectAlign(c.F_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_Uc_I(.{ .v1 = 7.0, .v2 = 127, .v3 = 20842 }));
}
test "F_Uc_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_I());
}
test "F_Uc_I: C passes to Zig" {
    try testing.expectOk(c.send_F_Uc_I());
}
test "F_Uc_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_I(), .{ .v1 = 7.0, .v2 = 127, .v3 = 20842 });
}
pub export fn zig_assert_F_Uc_I(lv: c.F_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 127) err = 2;
    if (lv.v3 != 20842) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_I() c.F_Uc_I {
    return .{ .v1 = 7.0, .v2 = 127, .v3 = 20842 };
}

// From T_Snnn_xax.c:27866:27886
// struct  F_Uc_Ip  {
//   float v1;
//   unsigned char v2;
//   int *v3;
// };

test "F_Uc_Ip: layout" {
    var lv: c.F_Uc_Ip = undefined;
    try testing.expectSize(c.F_Uc_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_F_Uc_Ip(.{ .v1 = 0.875, .v2 = 40, .v3 = null }));
}
test "F_Uc_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_Ip());
}
test "F_Uc_Ip: C passes to Zig" {
    try testing.expectOk(c.send_F_Uc_Ip());
}
test "F_Uc_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_Ip(), .{ .v1 = 0.875, .v2 = 40, .v3 = null });
}
pub export fn zig_assert_F_Uc_Ip(lv: c.F_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 40) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_Ip() c.F_Uc_Ip {
    return .{ .v1 = 0.875, .v2 = 40, .v3 = null };
}

// From T_Snnn_xax.c:27891:27911
// struct  F_Uc_L  {
//   float v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "F_Uc_L: layout" {
    var lv: c.F_Uc_L = undefined;
    try testing.expectSize(c.F_Uc_L, 16);
    try testing.expectAlign(c.F_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_L: Zig passes to C" {
    try testing.expectOk(c.assert_F_Uc_L(.{ .v1 = 7.0, .v2 = 64, .v3 = 26076 }));
}
test "F_Uc_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_L());
}
test "F_Uc_L: C passes to Zig" {
    try testing.expectOk(c.send_F_Uc_L());
}
test "F_Uc_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_L(), .{ .v1 = 7.0, .v2 = 64, .v3 = 26076 });
}
pub export fn zig_assert_F_Uc_L(lv: c.F_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 64) err = 2;
    if (lv.v3 != 26076) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_L() c.F_Uc_L {
    return .{ .v1 = 7.0, .v2 = 64, .v3 = 26076 };
}

// From T_Snnn_xax.c:27916:27936
// struct  F_Uc_S  {
//   float v1;
//   unsigned char v2;
//   short v3;
// };

test "F_Uc_S: layout" {
    var lv: c.F_Uc_S = undefined;
    try testing.expectSize(c.F_Uc_S, 8);
    try testing.expectAlign(c.F_Uc_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Uc_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_Uc_S(.{ .v1 = 4.5, .v2 = 115, .v3 = 32111 }));
}
test "F_Uc_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_S());
}
test "F_Uc_S: C passes to Zig" {
    try testing.expectOk(c.send_F_Uc_S());
}
test "F_Uc_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_S(), .{ .v1 = 4.5, .v2 = 115, .v3 = 32111 });
}
pub export fn zig_assert_F_Uc_S(lv: c.F_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 115) err = 2;
    if (lv.v3 != 32111) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_S() c.F_Uc_S {
    return .{ .v1 = 4.5, .v2 = 115, .v3 = 32111 };
}

// From T_Snnn_xax.c:27941:27961
// struct  F_Uc_Uc  {
//   float v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "F_Uc_Uc: layout" {
    var lv: c.F_Uc_Uc = undefined;
    try testing.expectSize(c.F_Uc_Uc, 8);
    try testing.expectAlign(c.F_Uc_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "F_Uc_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_Uc_Uc(.{ .v1 = -2.125, .v2 = 2, .v3 = 27 }));
}
test "F_Uc_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_Uc());
}
test "F_Uc_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_Uc_Uc());
}
test "F_Uc_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_Uc(), .{ .v1 = -2.125, .v2 = 2, .v3 = 27 });
}
pub export fn zig_assert_F_Uc_Uc(lv: c.F_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 2) err = 2;
    if (lv.v3 != 27) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_Uc() c.F_Uc_Uc {
    return .{ .v1 = -2.125, .v2 = 2, .v3 = 27 };
}

// From T_Snnn_xax.c:27966:27986
// struct  F_Uc_Ui  {
//   float v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "F_Uc_Ui: layout" {
    var lv: c.F_Uc_Ui = undefined;
    try testing.expectSize(c.F_Uc_Ui, 12);
    try testing.expectAlign(c.F_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_Uc_Ui(.{ .v1 = 1.0, .v2 = 12, .v3 = 25869 }));
}
test "F_Uc_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_Ui());
}
test "F_Uc_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_Uc_Ui());
}
test "F_Uc_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_Ui(), .{ .v1 = 1.0, .v2 = 12, .v3 = 25869 });
}
pub export fn zig_assert_F_Uc_Ui(lv: c.F_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 12) err = 2;
    if (lv.v3 != 25869) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_Ui() c.F_Uc_Ui {
    return .{ .v1 = 1.0, .v2 = 12, .v3 = 25869 };
}

// From T_Snnn_xax.c:27991:28011
// struct  F_Uc_Ul  {
//   float v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "F_Uc_Ul: layout" {
    var lv: c.F_Uc_Ul = undefined;
    try testing.expectSize(c.F_Uc_Ul, 16);
    try testing.expectAlign(c.F_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_F_Uc_Ul(.{ .v1 = 7.0, .v2 = 92, .v3 = 22425 }));
}
test "F_Uc_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_Ul());
}
test "F_Uc_Ul: C passes to Zig" {
    try testing.expectOk(c.send_F_Uc_Ul());
}
test "F_Uc_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_Ul(), .{ .v1 = 7.0, .v2 = 92, .v3 = 22425 });
}
pub export fn zig_assert_F_Uc_Ul(lv: c.F_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 92) err = 2;
    if (lv.v3 != 22425) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_Ul() c.F_Uc_Ul {
    return .{ .v1 = 7.0, .v2 = 92, .v3 = 22425 };
}

// From T_Snnn_xax.c:28016:28036
// struct  F_Uc_Us  {
//   float v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "F_Uc_Us: layout" {
    var lv: c.F_Uc_Us = undefined;
    try testing.expectSize(c.F_Uc_Us, 8);
    try testing.expectAlign(c.F_Uc_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Uc_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_Uc_Us(.{ .v1 = 0.5, .v2 = 45, .v3 = 2721 }));
}
test "F_Uc_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_Us());
}
test "F_Uc_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_Uc_Us());
}
test "F_Uc_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_Us(), .{ .v1 = 0.5, .v2 = 45, .v3 = 2721 });
}
pub export fn zig_assert_F_Uc_Us(lv: c.F_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 45) err = 2;
    if (lv.v3 != 2721) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_Us() c.F_Uc_Us {
    return .{ .v1 = 0.5, .v2 = 45, .v3 = 2721 };
}

// From T_Snnn_xax.c:28041:28061
// struct  F_Uc_Vp  {
//   float v1;
//   unsigned char v2;
//   void *v3;
// };

test "F_Uc_Vp: layout" {
    var lv: c.F_Uc_Vp = undefined;
    try testing.expectSize(c.F_Uc_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_F_Uc_Vp(.{ .v1 = -0.25, .v2 = 68, .v3 = null }));
}
test "F_Uc_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Uc_Vp());
}
test "F_Uc_Vp: C passes to Zig" {
    try testing.expectOk(c.send_F_Uc_Vp());
}
test "F_Uc_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Uc_Vp(), .{ .v1 = -0.25, .v2 = 68, .v3 = null });
}
pub export fn zig_assert_F_Uc_Vp(lv: c.F_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 68) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_Vp() c.F_Uc_Vp {
    return .{ .v1 = -0.25, .v2 = 68, .v3 = null };
}

// From T_Snnn_xax.c:28066:28084
// struct  F_Ui  {
//   float v1;
//   unsigned int v2;
// };

test "F_Ui: layout" {
    var lv: c.F_Ui = undefined;
    try testing.expectSize(c.F_Ui, 8);
    try testing.expectAlign(c.F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ui(.{ .v1 = 4.5, .v2 = 27782 }));
}
test "F_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui());
}
test "F_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_Ui());
}
test "F_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui(), .{ .v1 = 4.5, .v2 = 27782 });
}
pub export fn zig_assert_F_Ui(lv: c.F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 27782) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui() c.F_Ui {
    return .{ .v1 = 4.5, .v2 = 27782 };
}

// From T_Snnn_xax.c:28813:28833
// struct  F_Ui_C  {
//   float v1;
//   unsigned int v2;
//   char v3;
// };

test "F_Ui_C: layout" {
    var lv: c.F_Ui_C = undefined;
    try testing.expectSize(c.F_Ui_C, 12);
    try testing.expectAlign(c.F_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ui_C(.{ .v1 = 4.5, .v2 = 26810, .v3 = 15 }));
}
test "F_Ui_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_C());
}
test "F_Ui_C: C passes to Zig" {
    try testing.expectOk(c.send_F_Ui_C());
}
test "F_Ui_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_C(), .{ .v1 = 4.5, .v2 = 26810, .v3 = 15 });
}
pub export fn zig_assert_F_Ui_C(lv: c.F_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 26810) err = 2;
    if (lv.v3 != 15) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_C() c.F_Ui_C {
    return .{ .v1 = 4.5, .v2 = 26810, .v3 = 15 };
}

// From T_Snnn_xax.c:28838:28858
// struct  F_Ui_D  {
//   float v1;
//   unsigned int v2;
//   double v3;
// };

test "F_Ui_D: layout" {
    var lv: c.F_Ui_D = undefined;
    try testing.expectSize(c.F_Ui_D, 16);
    try testing.expectAlign(c.F_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_D: Zig passes to C" {
    try testing.expectFail(c.assert_F_Ui_D(.{ .v1 = 7.0, .v2 = 18724, .v3 = 1.0 }));
}
test "F_Ui_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_D());
}
test "F_Ui_D: C passes to Zig" {
    try testing.expectFail(c.send_F_Ui_D());
}
test "F_Ui_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_D(), .{ .v1 = 7.0, .v2 = 18724, .v3 = 1.0 });
}
pub export fn zig_assert_F_Ui_D(lv: c.F_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 18724) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_D() c.F_Ui_D {
    return .{ .v1 = 7.0, .v2 = 18724, .v3 = 1.0 };
}

// From T_Snnn_xax.c:28863:28883
// struct  F_Ui_F  {
//   float v1;
//   unsigned int v2;
//   float v3;
// };

test "F_Ui_F: layout" {
    var lv: c.F_Ui_F = undefined;
    try testing.expectSize(c.F_Ui_F, 12);
    try testing.expectAlign(c.F_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_F: Zig passes to C" {
    try testing.expectFail(c.assert_F_Ui_F(.{ .v1 = -0.25, .v2 = 5603, .v3 = 0.5 }));
}
test "F_Ui_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_F());
}
test "F_Ui_F: C passes to Zig" {
    try testing.expectFail(c.send_F_Ui_F());
}
test "F_Ui_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_F(), .{ .v1 = -0.25, .v2 = 5603, .v3 = 0.5 });
}
pub export fn zig_assert_F_Ui_F(lv: c.F_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 5603) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_F() c.F_Ui_F {
    return .{ .v1 = -0.25, .v2 = 5603, .v3 = 0.5 };
}

// From T_Snnn_xax.c:28888:28908
// struct  F_Ui_I  {
//   float v1;
//   unsigned int v2;
//   int v3;
// };

test "F_Ui_I: layout" {
    var lv: c.F_Ui_I = undefined;
    try testing.expectSize(c.F_Ui_I, 12);
    try testing.expectAlign(c.F_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ui_I(.{ .v1 = -2.125, .v2 = 7194, .v3 = 6964 }));
}
test "F_Ui_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_I());
}
test "F_Ui_I: C passes to Zig" {
    try testing.expectOk(c.send_F_Ui_I());
}
test "F_Ui_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_I(), .{ .v1 = -2.125, .v2 = 7194, .v3 = 6964 });
}
pub export fn zig_assert_F_Ui_I(lv: c.F_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 7194) err = 2;
    if (lv.v3 != 6964) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_I() c.F_Ui_I {
    return .{ .v1 = -2.125, .v2 = 7194, .v3 = 6964 };
}

// From T_Snnn_xax.c:28913:28933
// struct  F_Ui_Ip  {
//   float v1;
//   unsigned int v2;
//   int *v3;
// };

test "F_Ui_Ip: layout" {
    var lv: c.F_Ui_Ip = undefined;
    try testing.expectSize(c.F_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ui_Ip(.{ .v1 = -2.125, .v2 = 25159, .v3 = null }));
}
test "F_Ui_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_Ip());
}
test "F_Ui_Ip: C passes to Zig" {
    try testing.expectOk(c.send_F_Ui_Ip());
}
test "F_Ui_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_Ip(), .{ .v1 = -2.125, .v2 = 25159, .v3 = null });
}
pub export fn zig_assert_F_Ui_Ip(lv: c.F_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 25159) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_Ip() c.F_Ui_Ip {
    return .{ .v1 = -2.125, .v2 = 25159, .v3 = null };
}

// From T_Snnn_xax.c:28938:28958
// struct  F_Ui_L  {
//   float v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "F_Ui_L: layout" {
    var lv: c.F_Ui_L = undefined;
    try testing.expectSize(c.F_Ui_L, 16);
    try testing.expectAlign(c.F_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_L: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ui_L(.{ .v1 = 0.5, .v2 = 6394, .v3 = 24104 }));
}
test "F_Ui_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_L());
}
test "F_Ui_L: C passes to Zig" {
    try testing.expectOk(c.send_F_Ui_L());
}
test "F_Ui_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_L(), .{ .v1 = 0.5, .v2 = 6394, .v3 = 24104 });
}
pub export fn zig_assert_F_Ui_L(lv: c.F_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 6394) err = 2;
    if (lv.v3 != 24104) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_L() c.F_Ui_L {
    return .{ .v1 = 0.5, .v2 = 6394, .v3 = 24104 };
}

// From T_Snnn_xax.c:28963:28983
// struct  F_Ui_S  {
//   float v1;
//   unsigned int v2;
//   short v3;
// };

test "F_Ui_S: layout" {
    var lv: c.F_Ui_S = undefined;
    try testing.expectSize(c.F_Ui_S, 12);
    try testing.expectAlign(c.F_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ui_S(.{ .v1 = 7.0, .v2 = 16310, .v3 = 2152 }));
}
test "F_Ui_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_S());
}
test "F_Ui_S: C passes to Zig" {
    try testing.expectOk(c.send_F_Ui_S());
}
test "F_Ui_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_S(), .{ .v1 = 7.0, .v2 = 16310, .v3 = 2152 });
}
pub export fn zig_assert_F_Ui_S(lv: c.F_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 16310) err = 2;
    if (lv.v3 != 2152) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_S() c.F_Ui_S {
    return .{ .v1 = 7.0, .v2 = 16310, .v3 = 2152 };
}

// From T_Snnn_xax.c:28988:29008
// struct  F_Ui_Uc  {
//   float v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "F_Ui_Uc: layout" {
    var lv: c.F_Ui_Uc = undefined;
    try testing.expectSize(c.F_Ui_Uc, 12);
    try testing.expectAlign(c.F_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ui_Uc(.{ .v1 = 0.5, .v2 = 31933, .v3 = 84 }));
}
test "F_Ui_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_Uc());
}
test "F_Ui_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_Ui_Uc());
}
test "F_Ui_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_Uc(), .{ .v1 = 0.5, .v2 = 31933, .v3 = 84 });
}
pub export fn zig_assert_F_Ui_Uc(lv: c.F_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 31933) err = 2;
    if (lv.v3 != 84) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_Uc() c.F_Ui_Uc {
    return .{ .v1 = 0.5, .v2 = 31933, .v3 = 84 };
}

// From T_Snnn_xax.c:29013:29033
// struct  F_Ui_Ui  {
//   float v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "F_Ui_Ui: layout" {
    var lv: c.F_Ui_Ui = undefined;
    try testing.expectSize(c.F_Ui_Ui, 12);
    try testing.expectAlign(c.F_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ui_Ui(.{ .v1 = 1.0, .v2 = 21258, .v3 = 27470 }));
}
test "F_Ui_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_Ui());
}
test "F_Ui_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_Ui_Ui());
}
test "F_Ui_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_Ui(), .{ .v1 = 1.0, .v2 = 21258, .v3 = 27470 });
}
pub export fn zig_assert_F_Ui_Ui(lv: c.F_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 21258) err = 2;
    if (lv.v3 != 27470) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_Ui() c.F_Ui_Ui {
    return .{ .v1 = 1.0, .v2 = 21258, .v3 = 27470 };
}

// From T_Snnn_xax.c:29038:29058
// struct  F_Ui_Ul  {
//   float v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "F_Ui_Ul: layout" {
    var lv: c.F_Ui_Ul = undefined;
    try testing.expectSize(c.F_Ui_Ul, 16);
    try testing.expectAlign(c.F_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ui_Ul(.{ .v1 = -2.125, .v2 = 2270, .v3 = 24341 }));
}
test "F_Ui_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_Ul());
}
test "F_Ui_Ul: C passes to Zig" {
    try testing.expectOk(c.send_F_Ui_Ul());
}
test "F_Ui_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_Ul(), .{ .v1 = -2.125, .v2 = 2270, .v3 = 24341 });
}
pub export fn zig_assert_F_Ui_Ul(lv: c.F_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 2270) err = 2;
    if (lv.v3 != 24341) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_Ul() c.F_Ui_Ul {
    return .{ .v1 = -2.125, .v2 = 2270, .v3 = 24341 };
}

// From T_Snnn_xax.c:29063:29083
// struct  F_Ui_Us  {
//   float v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "F_Ui_Us: layout" {
    var lv: c.F_Ui_Us = undefined;
    try testing.expectSize(c.F_Ui_Us, 12);
    try testing.expectAlign(c.F_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ui_Us(.{ .v1 = -2.125, .v2 = 26884, .v3 = 20081 }));
}
test "F_Ui_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_Us());
}
test "F_Ui_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_Ui_Us());
}
test "F_Ui_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_Us(), .{ .v1 = -2.125, .v2 = 26884, .v3 = 20081 });
}
pub export fn zig_assert_F_Ui_Us(lv: c.F_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 26884) err = 2;
    if (lv.v3 != 20081) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_Us() c.F_Ui_Us {
    return .{ .v1 = -2.125, .v2 = 26884, .v3 = 20081 };
}

// From T_Snnn_xax.c:29088:29108
// struct  F_Ui_Vp  {
//   float v1;
//   unsigned int v2;
//   void *v3;
// };

test "F_Ui_Vp: layout" {
    var lv: c.F_Ui_Vp = undefined;
    try testing.expectSize(c.F_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ui_Vp(.{ .v1 = 0.875, .v2 = 29111, .v3 = null }));
}
test "F_Ui_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ui_Vp());
}
test "F_Ui_Vp: C passes to Zig" {
    try testing.expectOk(c.send_F_Ui_Vp());
}
test "F_Ui_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ui_Vp(), .{ .v1 = 0.875, .v2 = 29111, .v3 = null });
}
pub export fn zig_assert_F_Ui_Vp(lv: c.F_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 29111) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_Vp() c.F_Ui_Vp {
    return .{ .v1 = 0.875, .v2 = 29111, .v3 = null };
}

// From T_Snnn_xax.c:29113:29131
// struct  F_Ul  {
//   float v1;
//   __tsu64 v2;
// };

test "F_Ul: layout" {
    var lv: c.F_Ul = undefined;
    try testing.expectSize(c.F_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "F_Ul: Zig passes to C" {
    try testing.expectFail(c.assert_F_Ul(.{ .v1 = 7.0, .v2 = 502 }));
}
test "F_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul());
}
test "F_Ul: C passes to Zig" {
    try testing.expectFail(c.send_F_Ul());
}
test "F_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul(), .{ .v1 = 7.0, .v2 = 502 });
}
pub export fn zig_assert_F_Ul(lv: c.F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 502) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul() c.F_Ul {
    return .{ .v1 = 7.0, .v2 = 502 };
}

// From T_Snnn_xax.c:29860:29880
// struct  F_Ul_C  {
//   float v1;
//   __tsu64 v2;
//   char v3;
// };

test "F_Ul_C: layout" {
    var lv: c.F_Ul_C = undefined;
    try testing.expectSize(c.F_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_C(.{ .v1 = 1.0, .v2 = 16763, .v3 = 7 }));
}
test "F_Ul_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_C());
}
test "F_Ul_C: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_C());
}
test "F_Ul_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_C(), .{ .v1 = 1.0, .v2 = 16763, .v3 = 7 });
}
pub export fn zig_assert_F_Ul_C(lv: c.F_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 16763) err = 2;
    if (lv.v3 != 7) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_C() c.F_Ul_C {
    return .{ .v1 = 1.0, .v2 = 16763, .v3 = 7 };
}

// From T_Snnn_xax.c:29885:29905
// struct  F_Ul_D  {
//   float v1;
//   __tsu64 v2;
//   double v3;
// };

test "F_Ul_D: layout" {
    var lv: c.F_Ul_D = undefined;
    try testing.expectSize(c.F_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_D: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_D(.{ .v1 = 0.875, .v2 = 5788, .v3 = 7.0 }));
}
test "F_Ul_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_D());
}
test "F_Ul_D: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_D());
}
test "F_Ul_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_D(), .{ .v1 = 0.875, .v2 = 5788, .v3 = 7.0 });
}
pub export fn zig_assert_F_Ul_D(lv: c.F_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 5788) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_D() c.F_Ul_D {
    return .{ .v1 = 0.875, .v2 = 5788, .v3 = 7.0 };
}

// From T_Snnn_xax.c:29910:29930
// struct  F_Ul_F  {
//   float v1;
//   __tsu64 v2;
//   float v3;
// };

test "F_Ul_F: layout" {
    var lv: c.F_Ul_F = undefined;
    try testing.expectSize(c.F_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_F: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_F(.{ .v1 = -0.25, .v2 = 13617, .v3 = 0.875 }));
}
test "F_Ul_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_F());
}
test "F_Ul_F: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_F());
}
test "F_Ul_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_F(), .{ .v1 = -0.25, .v2 = 13617, .v3 = 0.875 });
}
pub export fn zig_assert_F_Ul_F(lv: c.F_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 13617) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_F() c.F_Ul_F {
    return .{ .v1 = -0.25, .v2 = 13617, .v3 = 0.875 };
}

// From T_Snnn_xax.c:29935:29955
// struct  F_Ul_I  {
//   float v1;
//   __tsu64 v2;
//   int v3;
// };

test "F_Ul_I: layout" {
    var lv: c.F_Ul_I = undefined;
    try testing.expectSize(c.F_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_I(.{ .v1 = 7.0, .v2 = 4234, .v3 = 27107 }));
}
test "F_Ul_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_I());
}
test "F_Ul_I: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_I());
}
test "F_Ul_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_I(), .{ .v1 = 7.0, .v2 = 4234, .v3 = 27107 });
}
pub export fn zig_assert_F_Ul_I(lv: c.F_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 4234) err = 2;
    if (lv.v3 != 27107) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_I() c.F_Ul_I {
    return .{ .v1 = 7.0, .v2 = 4234, .v3 = 27107 };
}

// From T_Snnn_xax.c:29960:29980
// struct  F_Ul_Ip  {
//   float v1;
//   __tsu64 v2;
//   int *v3;
// };

test "F_Ul_Ip: layout" {
    var lv: c.F_Ul_Ip = undefined;
    try testing.expectSize(c.F_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_Ip(.{ .v1 = -2.125, .v2 = 18940, .v3 = null }));
}
test "F_Ul_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_Ip());
}
test "F_Ul_Ip: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_Ip());
}
test "F_Ul_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_Ip(), .{ .v1 = -2.125, .v2 = 18940, .v3 = null });
}
pub export fn zig_assert_F_Ul_Ip(lv: c.F_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 18940) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_Ip() c.F_Ul_Ip {
    return .{ .v1 = -2.125, .v2 = 18940, .v3 = null };
}

// From T_Snnn_xax.c:29985:30005
// struct  F_Ul_L  {
//   float v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "F_Ul_L: layout" {
    var lv: c.F_Ul_L = undefined;
    try testing.expectSize(c.F_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_L: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_L(.{ .v1 = 7.0, .v2 = 2524, .v3 = 1186 }));
}
test "F_Ul_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_L());
}
test "F_Ul_L: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_L());
}
test "F_Ul_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_L(), .{ .v1 = 7.0, .v2 = 2524, .v3 = 1186 });
}
pub export fn zig_assert_F_Ul_L(lv: c.F_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 2524) err = 2;
    if (lv.v3 != 1186) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_L() c.F_Ul_L {
    return .{ .v1 = 7.0, .v2 = 2524, .v3 = 1186 };
}

// From T_Snnn_xax.c:30010:30030
// struct  F_Ul_S  {
//   float v1;
//   __tsu64 v2;
//   short v3;
// };

test "F_Ul_S: layout" {
    var lv: c.F_Ul_S = undefined;
    try testing.expectSize(c.F_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_S(.{ .v1 = 0.5, .v2 = 21773, .v3 = 17719 }));
}
test "F_Ul_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_S());
}
test "F_Ul_S: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_S());
}
test "F_Ul_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_S(), .{ .v1 = 0.5, .v2 = 21773, .v3 = 17719 });
}
pub export fn zig_assert_F_Ul_S(lv: c.F_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 21773) err = 2;
    if (lv.v3 != 17719) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_S() c.F_Ul_S {
    return .{ .v1 = 0.5, .v2 = 21773, .v3 = 17719 };
}

// From T_Snnn_xax.c:30035:30055
// struct  F_Ul_Uc  {
//   float v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "F_Ul_Uc: layout" {
    var lv: c.F_Ul_Uc = undefined;
    try testing.expectSize(c.F_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_Uc(.{ .v1 = 7.0, .v2 = 25283, .v3 = 93 }));
}
test "F_Ul_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_Uc());
}
test "F_Ul_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_Uc());
}
test "F_Ul_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_Uc(), .{ .v1 = 7.0, .v2 = 25283, .v3 = 93 });
}
pub export fn zig_assert_F_Ul_Uc(lv: c.F_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 25283) err = 2;
    if (lv.v3 != 93) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_Uc() c.F_Ul_Uc {
    return .{ .v1 = 7.0, .v2 = 25283, .v3 = 93 };
}

// From T_Snnn_xax.c:30060:30080
// struct  F_Ul_Ui  {
//   float v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "F_Ul_Ui: layout" {
    var lv: c.F_Ul_Ui = undefined;
    try testing.expectSize(c.F_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_Ui(.{ .v1 = 7.0, .v2 = 24342, .v3 = 20594 }));
}
test "F_Ul_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_Ui());
}
test "F_Ul_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_Ui());
}
test "F_Ul_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_Ui(), .{ .v1 = 7.0, .v2 = 24342, .v3 = 20594 });
}
pub export fn zig_assert_F_Ul_Ui(lv: c.F_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 24342) err = 2;
    if (lv.v3 != 20594) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_Ui() c.F_Ul_Ui {
    return .{ .v1 = 7.0, .v2 = 24342, .v3 = 20594 };
}

// From T_Snnn_xax.c:30085:30105
// struct  F_Ul_Ul  {
//   float v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "F_Ul_Ul: layout" {
    var lv: c.F_Ul_Ul = undefined;
    try testing.expectSize(c.F_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_Ul(.{ .v1 = -2.125, .v2 = 31964, .v3 = 4612 }));
}
test "F_Ul_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_Ul());
}
test "F_Ul_Ul: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_Ul());
}
test "F_Ul_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_Ul(), .{ .v1 = -2.125, .v2 = 31964, .v3 = 4612 });
}
pub export fn zig_assert_F_Ul_Ul(lv: c.F_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 31964) err = 2;
    if (lv.v3 != 4612) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_Ul() c.F_Ul_Ul {
    return .{ .v1 = -2.125, .v2 = 31964, .v3 = 4612 };
}

// From T_Snnn_xax.c:30110:30130
// struct  F_Ul_Us  {
//   float v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "F_Ul_Us: layout" {
    var lv: c.F_Ul_Us = undefined;
    try testing.expectSize(c.F_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_Us(.{ .v1 = 1.0, .v2 = 4378, .v3 = 28649 }));
}
test "F_Ul_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_Us());
}
test "F_Ul_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_Us());
}
test "F_Ul_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_Us(), .{ .v1 = 1.0, .v2 = 4378, .v3 = 28649 });
}
pub export fn zig_assert_F_Ul_Us(lv: c.F_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 4378) err = 2;
    if (lv.v3 != 28649) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_Us() c.F_Ul_Us {
    return .{ .v1 = 1.0, .v2 = 4378, .v3 = 28649 };
}

// From T_Snnn_xax.c:30135:30155
// struct  F_Ul_Vp  {
//   float v1;
//   __tsu64 v2;
//   void *v3;
// };

test "F_Ul_Vp: layout" {
    var lv: c.F_Ul_Vp = undefined;
    try testing.expectSize(c.F_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_F_Ul_Vp(.{ .v1 = 0.5, .v2 = 16097, .v3 = null }));
}
test "F_Ul_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Ul_Vp());
}
test "F_Ul_Vp: C passes to Zig" {
    try testing.expectOk(c.send_F_Ul_Vp());
}
test "F_Ul_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Ul_Vp(), .{ .v1 = 0.5, .v2 = 16097, .v3 = null });
}
pub export fn zig_assert_F_Ul_Vp(lv: c.F_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 16097) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_Vp() c.F_Ul_Vp {
    return .{ .v1 = 0.5, .v2 = 16097, .v3 = null };
}

// From T_Snnn_xax.c:30160:30178
// struct  F_Us  {
//   float v1;
//   unsigned short v2;
// };

test "F_Us: layout" {
    var lv: c.F_Us = undefined;
    try testing.expectSize(c.F_Us, 8);
    try testing.expectAlign(c.F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_Us(.{ .v1 = 4.5, .v2 = 27623 }));
}
test "F_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us());
}
test "F_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_Us());
}
test "F_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us(), .{ .v1 = 4.5, .v2 = 27623 });
}
pub export fn zig_assert_F_Us(lv: c.F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 27623) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us() c.F_Us {
    return .{ .v1 = 4.5, .v2 = 27623 };
}

// From T_Snnn_xax.c:30907:30927
// struct  F_Us_C  {
//   float v1;
//   unsigned short v2;
//   char v3;
// };

test "F_Us_C: layout" {
    var lv: c.F_Us_C = undefined;
    try testing.expectSize(c.F_Us_C, 8);
    try testing.expectAlign(c.F_Us_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Us_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_Us_C(.{ .v1 = 0.5, .v2 = 9824, .v3 = 22 }));
}
test "F_Us_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_C());
}
test "F_Us_C: C passes to Zig" {
    try testing.expectOk(c.send_F_Us_C());
}
test "F_Us_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_C(), .{ .v1 = 0.5, .v2 = 9824, .v3 = 22 });
}
pub export fn zig_assert_F_Us_C(lv: c.F_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 9824) err = 2;
    if (lv.v3 != 22) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_C() c.F_Us_C {
    return .{ .v1 = 0.5, .v2 = 9824, .v3 = 22 };
}

// From T_Snnn_xax.c:30932:30952
// struct  F_Us_D  {
//   float v1;
//   unsigned short v2;
//   double v3;
// };

test "F_Us_D: layout" {
    var lv: c.F_Us_D = undefined;
    try testing.expectSize(c.F_Us_D, 16);
    try testing.expectAlign(c.F_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_D: Zig passes to C" {
    try testing.expectFail(c.assert_F_Us_D(.{ .v1 = 7.0, .v2 = 17509, .v3 = 0.5 }));
}
test "F_Us_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_D());
}
test "F_Us_D: C passes to Zig" {
    try testing.expectFail(c.send_F_Us_D());
}
test "F_Us_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_D(), .{ .v1 = 7.0, .v2 = 17509, .v3 = 0.5 });
}
pub export fn zig_assert_F_Us_D(lv: c.F_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 17509) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_D() c.F_Us_D {
    return .{ .v1 = 7.0, .v2 = 17509, .v3 = 0.5 };
}

// From T_Snnn_xax.c:30957:30977
// struct  F_Us_F  {
//   float v1;
//   unsigned short v2;
//   float v3;
// };

test "F_Us_F: layout" {
    var lv: c.F_Us_F = undefined;
    try testing.expectSize(c.F_Us_F, 12);
    try testing.expectAlign(c.F_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_F: Zig passes to C" {
    try testing.expectFail(c.assert_F_Us_F(.{ .v1 = 4.5, .v2 = 32668, .v3 = 4.5 }));
}
test "F_Us_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_F());
}
test "F_Us_F: C passes to Zig" {
    try testing.expectFail(c.send_F_Us_F());
}
test "F_Us_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_F(), .{ .v1 = 4.5, .v2 = 32668, .v3 = 4.5 });
}
pub export fn zig_assert_F_Us_F(lv: c.F_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 32668) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_F() c.F_Us_F {
    return .{ .v1 = 4.5, .v2 = 32668, .v3 = 4.5 };
}

// From T_Snnn_xax.c:30982:31002
// struct  F_Us_I  {
//   float v1;
//   unsigned short v2;
//   int v3;
// };

test "F_Us_I: layout" {
    var lv: c.F_Us_I = undefined;
    try testing.expectSize(c.F_Us_I, 12);
    try testing.expectAlign(c.F_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_Us_I(.{ .v1 = 0.5, .v2 = 25895, .v3 = 32572 }));
}
test "F_Us_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_I());
}
test "F_Us_I: C passes to Zig" {
    try testing.expectOk(c.send_F_Us_I());
}
test "F_Us_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_I(), .{ .v1 = 0.5, .v2 = 25895, .v3 = 32572 });
}
pub export fn zig_assert_F_Us_I(lv: c.F_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 25895) err = 2;
    if (lv.v3 != 32572) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_I() c.F_Us_I {
    return .{ .v1 = 0.5, .v2 = 25895, .v3 = 32572 };
}

// From T_Snnn_xax.c:31007:31027
// struct  F_Us_Ip  {
//   float v1;
//   unsigned short v2;
//   int *v3;
// };

test "F_Us_Ip: layout" {
    var lv: c.F_Us_Ip = undefined;
    try testing.expectSize(c.F_Us_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_F_Us_Ip(.{ .v1 = 0.875, .v2 = 31390, .v3 = null }));
}
test "F_Us_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_Ip());
}
test "F_Us_Ip: C passes to Zig" {
    try testing.expectOk(c.send_F_Us_Ip());
}
test "F_Us_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_Ip(), .{ .v1 = 0.875, .v2 = 31390, .v3 = null });
}
pub export fn zig_assert_F_Us_Ip(lv: c.F_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 31390) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_Ip() c.F_Us_Ip {
    return .{ .v1 = 0.875, .v2 = 31390, .v3 = null };
}

// From T_Snnn_xax.c:31032:31052
// struct  F_Us_L  {
//   float v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "F_Us_L: layout" {
    var lv: c.F_Us_L = undefined;
    try testing.expectSize(c.F_Us_L, 16);
    try testing.expectAlign(c.F_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_L: Zig passes to C" {
    try testing.expectOk(c.assert_F_Us_L(.{ .v1 = 7.0, .v2 = 13124, .v3 = 14055 }));
}
test "F_Us_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_L());
}
test "F_Us_L: C passes to Zig" {
    try testing.expectOk(c.send_F_Us_L());
}
test "F_Us_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_L(), .{ .v1 = 7.0, .v2 = 13124, .v3 = 14055 });
}
pub export fn zig_assert_F_Us_L(lv: c.F_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 13124) err = 2;
    if (lv.v3 != 14055) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_L() c.F_Us_L {
    return .{ .v1 = 7.0, .v2 = 13124, .v3 = 14055 };
}

// From T_Snnn_xax.c:31057:31077
// struct  F_Us_S  {
//   float v1;
//   unsigned short v2;
//   short v3;
// };

test "F_Us_S: layout" {
    var lv: c.F_Us_S = undefined;
    try testing.expectSize(c.F_Us_S, 8);
    try testing.expectAlign(c.F_Us_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Us_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_Us_S(.{ .v1 = 7.0, .v2 = 26736, .v3 = 24374 }));
}
test "F_Us_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_S());
}
test "F_Us_S: C passes to Zig" {
    try testing.expectOk(c.send_F_Us_S());
}
test "F_Us_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_S(), .{ .v1 = 7.0, .v2 = 26736, .v3 = 24374 });
}
pub export fn zig_assert_F_Us_S(lv: c.F_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 26736) err = 2;
    if (lv.v3 != 24374) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_S() c.F_Us_S {
    return .{ .v1 = 7.0, .v2 = 26736, .v3 = 24374 };
}

// From T_Snnn_xax.c:31082:31102
// struct  F_Us_Uc  {
//   float v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "F_Us_Uc: layout" {
    var lv: c.F_Us_Uc = undefined;
    try testing.expectSize(c.F_Us_Uc, 8);
    try testing.expectAlign(c.F_Us_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Us_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_Us_Uc(.{ .v1 = 0.875, .v2 = 1879, .v3 = 8 }));
}
test "F_Us_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_Uc());
}
test "F_Us_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_Us_Uc());
}
test "F_Us_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_Uc(), .{ .v1 = 0.875, .v2 = 1879, .v3 = 8 });
}
pub export fn zig_assert_F_Us_Uc(lv: c.F_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 1879) err = 2;
    if (lv.v3 != 8) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_Uc() c.F_Us_Uc {
    return .{ .v1 = 0.875, .v2 = 1879, .v3 = 8 };
}

// From T_Snnn_xax.c:31107:31127
// struct  F_Us_Ui  {
//   float v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "F_Us_Ui: layout" {
    var lv: c.F_Us_Ui = undefined;
    try testing.expectSize(c.F_Us_Ui, 12);
    try testing.expectAlign(c.F_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_Us_Ui(.{ .v1 = 0.875, .v2 = 15041, .v3 = 1344 }));
}
test "F_Us_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_Ui());
}
test "F_Us_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_Us_Ui());
}
test "F_Us_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_Ui(), .{ .v1 = 0.875, .v2 = 15041, .v3 = 1344 });
}
pub export fn zig_assert_F_Us_Ui(lv: c.F_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 15041) err = 2;
    if (lv.v3 != 1344) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_Ui() c.F_Us_Ui {
    return .{ .v1 = 0.875, .v2 = 15041, .v3 = 1344 };
}

// From T_Snnn_xax.c:31132:31152
// struct  F_Us_Ul  {
//   float v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "F_Us_Ul: layout" {
    var lv: c.F_Us_Ul = undefined;
    try testing.expectSize(c.F_Us_Ul, 16);
    try testing.expectAlign(c.F_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_F_Us_Ul(.{ .v1 = 1.0, .v2 = 15873, .v3 = 13395 }));
}
test "F_Us_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_Ul());
}
test "F_Us_Ul: C passes to Zig" {
    try testing.expectOk(c.send_F_Us_Ul());
}
test "F_Us_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_Ul(), .{ .v1 = 1.0, .v2 = 15873, .v3 = 13395 });
}
pub export fn zig_assert_F_Us_Ul(lv: c.F_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 15873) err = 2;
    if (lv.v3 != 13395) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_Ul() c.F_Us_Ul {
    return .{ .v1 = 1.0, .v2 = 15873, .v3 = 13395 };
}

// From T_Snnn_xax.c:31157:31177
// struct  F_Us_Us  {
//   float v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "F_Us_Us: layout" {
    var lv: c.F_Us_Us = undefined;
    try testing.expectSize(c.F_Us_Us, 8);
    try testing.expectAlign(c.F_Us_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Us_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_Us_Us(.{ .v1 = 4.5, .v2 = 19507, .v3 = 32357 }));
}
test "F_Us_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_Us());
}
test "F_Us_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_Us_Us());
}
test "F_Us_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_Us(), .{ .v1 = 4.5, .v2 = 19507, .v3 = 32357 });
}
pub export fn zig_assert_F_Us_Us(lv: c.F_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 19507) err = 2;
    if (lv.v3 != 32357) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_Us() c.F_Us_Us {
    return .{ .v1 = 4.5, .v2 = 19507, .v3 = 32357 };
}

// From T_Snnn_xax.c:31182:31202
// struct  F_Us_Vp  {
//   float v1;
//   unsigned short v2;
//   void *v3;
// };

test "F_Us_Vp: layout" {
    var lv: c.F_Us_Vp = undefined;
    try testing.expectSize(c.F_Us_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_F_Us_Vp(.{ .v1 = -2.125, .v2 = 14866, .v3 = null }));
}
test "F_Us_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Us_Vp());
}
test "F_Us_Vp: C passes to Zig" {
    try testing.expectOk(c.send_F_Us_Vp());
}
test "F_Us_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Us_Vp(), .{ .v1 = -2.125, .v2 = 14866, .v3 = null });
}
pub export fn zig_assert_F_Us_Vp(lv: c.F_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 14866) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_Vp() c.F_Us_Vp {
    return .{ .v1 = -2.125, .v2 = 14866, .v3 = null };
}

// From T_Snnn_xax.c:31207:31225
// struct  F_Vp  {
//   float v1;
//   void *v2;
// };

test "F_Vp: layout" {
    var lv: c.F_Vp = undefined;
    try testing.expectSize(c.F_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "F_Vp: Zig passes to C" {
    try testing.expectFail(c.assert_F_Vp(.{ .v1 = -2.125, .v2 = null }));
}
test "F_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp());
}
test "F_Vp: C passes to Zig" {
    try testing.expectFail(c.send_F_Vp());
}
test "F_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp(), .{ .v1 = -2.125, .v2 = null });
}
pub export fn zig_assert_F_Vp(lv: c.F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp() c.F_Vp {
    return .{ .v1 = -2.125, .v2 = null };
}

// From T_Snnn_xax.c:31954:31974
// struct  F_Vp_C  {
//   float v1;
//   void *v2;
//   char v3;
// };

test "F_Vp_C: layout" {
    var lv: c.F_Vp_C = undefined;
    try testing.expectSize(c.F_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_C: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_C(.{ .v1 = 0.875, .v2 = null, .v3 = 77 }));
}
test "F_Vp_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_C());
}
test "F_Vp_C: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_C());
}
test "F_Vp_C: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_C(), .{ .v1 = 0.875, .v2 = null, .v3 = 77 });
}
pub export fn zig_assert_F_Vp_C(lv: c.F_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 77) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_C() c.F_Vp_C {
    return .{ .v1 = 0.875, .v2 = null, .v3 = 77 };
}

// From T_Snnn_xax.c:31979:31999
// struct  F_Vp_D  {
//   float v1;
//   void *v2;
//   double v3;
// };

test "F_Vp_D: layout" {
    var lv: c.F_Vp_D = undefined;
    try testing.expectSize(c.F_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_D: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_D(.{ .v1 = -0.25, .v2 = null, .v3 = 7.0 }));
}
test "F_Vp_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_D());
}
test "F_Vp_D: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_D());
}
test "F_Vp_D: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_D(), .{ .v1 = -0.25, .v2 = null, .v3 = 7.0 });
}
pub export fn zig_assert_F_Vp_D(lv: c.F_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_D() c.F_Vp_D {
    return .{ .v1 = -0.25, .v2 = null, .v3 = 7.0 };
}

// From T_Snnn_xax.c:32004:32024
// struct  F_Vp_F  {
//   float v1;
//   void *v2;
//   float v3;
// };

test "F_Vp_F: layout" {
    var lv: c.F_Vp_F = undefined;
    try testing.expectSize(c.F_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_F: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_F(.{ .v1 = -0.25, .v2 = null, .v3 = 7.0 }));
}
test "F_Vp_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_F());
}
test "F_Vp_F: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_F());
}
test "F_Vp_F: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_F(), .{ .v1 = -0.25, .v2 = null, .v3 = 7.0 });
}
pub export fn zig_assert_F_Vp_F(lv: c.F_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_F() c.F_Vp_F {
    return .{ .v1 = -0.25, .v2 = null, .v3 = 7.0 };
}

// From T_Snnn_xax.c:32029:32049
// struct  F_Vp_I  {
//   float v1;
//   void *v2;
//   int v3;
// };

test "F_Vp_I: layout" {
    var lv: c.F_Vp_I = undefined;
    try testing.expectSize(c.F_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_I: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_I(.{ .v1 = 0.875, .v2 = null, .v3 = 5405 }));
}
test "F_Vp_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_I());
}
test "F_Vp_I: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_I());
}
test "F_Vp_I: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_I(), .{ .v1 = 0.875, .v2 = null, .v3 = 5405 });
}
pub export fn zig_assert_F_Vp_I(lv: c.F_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 5405) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_I() c.F_Vp_I {
    return .{ .v1 = 0.875, .v2 = null, .v3 = 5405 };
}

// From T_Snnn_xax.c:32054:32074
// struct  F_Vp_Ip  {
//   float v1;
//   void *v2;
//   int *v3;
// };

test "F_Vp_Ip: layout" {
    var lv: c.F_Vp_Ip = undefined;
    try testing.expectSize(c.F_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_Ip(.{ .v1 = 1.0, .v2 = null, .v3 = null }));
}
test "F_Vp_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_Ip());
}
test "F_Vp_Ip: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_Ip());
}
test "F_Vp_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_Ip(), .{ .v1 = 1.0, .v2 = null, .v3 = null });
}
pub export fn zig_assert_F_Vp_Ip(lv: c.F_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_Ip() c.F_Vp_Ip {
    return .{ .v1 = 1.0, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:32079:32099
// struct  F_Vp_L  {
//   float v1;
//   void *v2;
//   __tsi64 v3;
// };

test "F_Vp_L: layout" {
    var lv: c.F_Vp_L = undefined;
    try testing.expectSize(c.F_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_L: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_L(.{ .v1 = 7.0, .v2 = null, .v3 = 4556 }));
}
test "F_Vp_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_L());
}
test "F_Vp_L: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_L());
}
test "F_Vp_L: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_L(), .{ .v1 = 7.0, .v2 = null, .v3 = 4556 });
}
pub export fn zig_assert_F_Vp_L(lv: c.F_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4556) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_L() c.F_Vp_L {
    return .{ .v1 = 7.0, .v2 = null, .v3 = 4556 };
}

// From T_Snnn_xax.c:32104:32124
// struct  F_Vp_S  {
//   float v1;
//   void *v2;
//   short v3;
// };

test "F_Vp_S: layout" {
    var lv: c.F_Vp_S = undefined;
    try testing.expectSize(c.F_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_S: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_S(.{ .v1 = 1.0, .v2 = null, .v3 = 22690 }));
}
test "F_Vp_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_S());
}
test "F_Vp_S: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_S());
}
test "F_Vp_S: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_S(), .{ .v1 = 1.0, .v2 = null, .v3 = 22690 });
}
pub export fn zig_assert_F_Vp_S(lv: c.F_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 22690) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_S() c.F_Vp_S {
    return .{ .v1 = 1.0, .v2 = null, .v3 = 22690 };
}

// From T_Snnn_xax.c:32129:32149
// struct  F_Vp_Uc  {
//   float v1;
//   void *v2;
//   unsigned char v3;
// };

test "F_Vp_Uc: layout" {
    var lv: c.F_Vp_Uc = undefined;
    try testing.expectSize(c.F_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_Uc(.{ .v1 = 4.5, .v2 = null, .v3 = 6 }));
}
test "F_Vp_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_Uc());
}
test "F_Vp_Uc: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_Uc());
}
test "F_Vp_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_Uc(), .{ .v1 = 4.5, .v2 = null, .v3 = 6 });
}
pub export fn zig_assert_F_Vp_Uc(lv: c.F_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 6) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_Uc() c.F_Vp_Uc {
    return .{ .v1 = 4.5, .v2 = null, .v3 = 6 };
}

// From T_Snnn_xax.c:32154:32174
// struct  F_Vp_Ui  {
//   float v1;
//   void *v2;
//   unsigned int v3;
// };

test "F_Vp_Ui: layout" {
    var lv: c.F_Vp_Ui = undefined;
    try testing.expectSize(c.F_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_Ui(.{ .v1 = -2.125, .v2 = null, .v3 = 3327 }));
}
test "F_Vp_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_Ui());
}
test "F_Vp_Ui: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_Ui());
}
test "F_Vp_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_Ui(), .{ .v1 = -2.125, .v2 = null, .v3 = 3327 });
}
pub export fn zig_assert_F_Vp_Ui(lv: c.F_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 3327) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_Ui() c.F_Vp_Ui {
    return .{ .v1 = -2.125, .v2 = null, .v3 = 3327 };
}

// From T_Snnn_xax.c:32179:32199
// struct  F_Vp_Ul  {
//   float v1;
//   void *v2;
//   __tsu64 v3;
// };

test "F_Vp_Ul: layout" {
    var lv: c.F_Vp_Ul = undefined;
    try testing.expectSize(c.F_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_Ul(.{ .v1 = 0.875, .v2 = null, .v3 = 21417 }));
}
test "F_Vp_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_Ul());
}
test "F_Vp_Ul: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_Ul());
}
test "F_Vp_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_Ul(), .{ .v1 = 0.875, .v2 = null, .v3 = 21417 });
}
pub export fn zig_assert_F_Vp_Ul(lv: c.F_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 21417) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_Ul() c.F_Vp_Ul {
    return .{ .v1 = 0.875, .v2 = null, .v3 = 21417 };
}

// From T_Snnn_xax.c:32204:32224
// struct  F_Vp_Us  {
//   float v1;
//   void *v2;
//   unsigned short v3;
// };

test "F_Vp_Us: layout" {
    var lv: c.F_Vp_Us = undefined;
    try testing.expectSize(c.F_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Us: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_Us(.{ .v1 = -2.125, .v2 = null, .v3 = 10303 }));
}
test "F_Vp_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_Us());
}
test "F_Vp_Us: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_Us());
}
test "F_Vp_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_Us(), .{ .v1 = -2.125, .v2 = null, .v3 = 10303 });
}
pub export fn zig_assert_F_Vp_Us(lv: c.F_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 10303) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_Us() c.F_Vp_Us {
    return .{ .v1 = -2.125, .v2 = null, .v3 = 10303 };
}

// From T_Snnn_xax.c:32229:32249
// struct  F_Vp_Vp  {
//   float v1;
//   void *v2;
//   void *v3;
// };

test "F_Vp_Vp: layout" {
    var lv: c.F_Vp_Vp = undefined;
    try testing.expectSize(c.F_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_F_Vp_Vp(.{ .v1 = 4.5, .v2 = null, .v3 = null }));
}
test "F_Vp_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_F_Vp_Vp());
}
test "F_Vp_Vp: C passes to Zig" {
    try testing.expectOk(c.send_F_Vp_Vp());
}
test "F_Vp_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_F_Vp_Vp(), .{ .v1 = 4.5, .v2 = null, .v3 = null });
}
pub export fn zig_assert_F_Vp_Vp(lv: c.F_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_Vp() c.F_Vp_Vp {
    return .{ .v1 = 4.5, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:32254:32270
// struct  I  {
//   int v1;
// };

test "I: layout" {
    var lv: c.I = undefined;
    try testing.expectSize(c.I, 4);
    try testing.expectAlign(c.I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "I: Zig passes to C" {
    try testing.expectOk(c.assert_I(.{ .v1 = 17446 }));
}
test "I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I());
}
test "I: C passes to Zig" {
    try testing.expectOk(c.send_I());
}
test "I: C returns to Zig" {
    try testing.expectEqual(c.ret_I(), .{ .v1 = 17446 });
}
pub export fn zig_assert_I(lv: c.I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17446) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I() c.I {
    return .{ .v1 = 17446 };
}

// From T_Snnn_xax.c:62575:62593
// struct  I_C  {
//   int v1;
//   char v2;
// };

test "I_C: layout" {
    var lv: c.I_C = undefined;
    try testing.expectSize(c.I_C, 8);
    try testing.expectAlign(c.I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_C(.{ .v1 = 27188, .v2 = 109 }));
}
test "I_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C());
}
test "I_C: C passes to Zig" {
    try testing.expectOk(c.send_I_C());
}
test "I_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C(), .{ .v1 = 27188, .v2 = 109 });
}
pub export fn zig_assert_I_C(lv: c.I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27188) err = 1;
    if (lv.v2 != 109) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C() c.I_C {
    return .{ .v1 = 27188, .v2 = 109 };
}

// From T_Snnn_xax.c:63322:63342
// struct  I_C_C  {
//   int v1;
//   char v2;
//   char v3;
// };

test "I_C_C: layout" {
    var lv: c.I_C_C = undefined;
    try testing.expectSize(c.I_C_C, 8);
    try testing.expectAlign(c.I_C_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "I_C_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_C_C(.{ .v1 = 9281, .v2 = 5, .v3 = 27 }));
}
test "I_C_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_C());
}
test "I_C_C: C passes to Zig" {
    try testing.expectOk(c.send_I_C_C());
}
test "I_C_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_C(), .{ .v1 = 9281, .v2 = 5, .v3 = 27 });
}
pub export fn zig_assert_I_C_C(lv: c.I_C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9281) err = 1;
    if (lv.v2 != 5) err = 2;
    if (lv.v3 != 27) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_C() c.I_C_C {
    return .{ .v1 = 9281, .v2 = 5, .v3 = 27 };
}

// From T_Snnn_xax.c:63347:63367
// struct  I_C_D  {
//   int v1;
//   char v2;
//   double v3;
// };

test "I_C_D: layout" {
    var lv: c.I_C_D = undefined;
    try testing.expectSize(c.I_C_D, 16);
    try testing.expectAlign(c.I_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_D: Zig passes to C" {
    try testing.expectFail(c.assert_I_C_D(.{ .v1 = 11, .v2 = 124, .v3 = -2.125 }));
}
test "I_C_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_D());
}
test "I_C_D: C passes to Zig" {
    try testing.expectFail(c.send_I_C_D());
}
test "I_C_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_D(), .{ .v1 = 11, .v2 = 124, .v3 = -2.125 });
}
pub export fn zig_assert_I_C_D(lv: c.I_C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11) err = 1;
    if (lv.v2 != 124) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_D() c.I_C_D {
    return .{ .v1 = 11, .v2 = 124, .v3 = -2.125 };
}

// From T_Snnn_xax.c:63372:63392
// struct  I_C_F  {
//   int v1;
//   char v2;
//   float v3;
// };

test "I_C_F: layout" {
    var lv: c.I_C_F = undefined;
    try testing.expectSize(c.I_C_F, 12);
    try testing.expectAlign(c.I_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_F: Zig passes to C" {
    try testing.expectFail(c.assert_I_C_F(.{ .v1 = 22444, .v2 = 7, .v3 = 0.5 }));
}
test "I_C_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_F());
}
test "I_C_F: C passes to Zig" {
    try testing.expectFail(c.send_I_C_F());
}
test "I_C_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_F(), .{ .v1 = 22444, .v2 = 7, .v3 = 0.5 });
}
pub export fn zig_assert_I_C_F(lv: c.I_C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22444) err = 1;
    if (lv.v2 != 7) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_F() c.I_C_F {
    return .{ .v1 = 22444, .v2 = 7, .v3 = 0.5 };
}

// From T_Snnn_xax.c:63397:63417
// struct  I_C_I  {
//   int v1;
//   char v2;
//   int v3;
// };

test "I_C_I: layout" {
    var lv: c.I_C_I = undefined;
    try testing.expectSize(c.I_C_I, 12);
    try testing.expectAlign(c.I_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_C_I(.{ .v1 = 3062, .v2 = 32, .v3 = 3299 }));
}
test "I_C_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_I());
}
test "I_C_I: C passes to Zig" {
    try testing.expectOk(c.send_I_C_I());
}
test "I_C_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_I(), .{ .v1 = 3062, .v2 = 32, .v3 = 3299 });
}
pub export fn zig_assert_I_C_I(lv: c.I_C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3062) err = 1;
    if (lv.v2 != 32) err = 2;
    if (lv.v3 != 3299) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_I() c.I_C_I {
    return .{ .v1 = 3062, .v2 = 32, .v3 = 3299 };
}

// From T_Snnn_xax.c:63422:63442
// struct  I_C_Ip  {
//   int v1;
//   char v2;
//   int *v3;
// };

test "I_C_Ip: layout" {
    var lv: c.I_C_Ip = undefined;
    try testing.expectSize(c.I_C_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_C_Ip(.{ .v1 = 1006, .v2 = 27, .v3 = null }));
}
test "I_C_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_Ip());
}
test "I_C_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_C_Ip());
}
test "I_C_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_Ip(), .{ .v1 = 1006, .v2 = 27, .v3 = null });
}
pub export fn zig_assert_I_C_Ip(lv: c.I_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1006) err = 1;
    if (lv.v2 != 27) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_Ip() c.I_C_Ip {
    return .{ .v1 = 1006, .v2 = 27, .v3 = null };
}

// From T_Snnn_xax.c:63447:63467
// struct  I_C_L  {
//   int v1;
//   char v2;
//   __tsi64 v3;
// };

test "I_C_L: layout" {
    var lv: c.I_C_L = undefined;
    try testing.expectSize(c.I_C_L, 16);
    try testing.expectAlign(c.I_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_C_L(.{ .v1 = 2698, .v2 = 125, .v3 = 27877 }));
}
test "I_C_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_L());
}
test "I_C_L: C passes to Zig" {
    try testing.expectOk(c.send_I_C_L());
}
test "I_C_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_L(), .{ .v1 = 2698, .v2 = 125, .v3 = 27877 });
}
pub export fn zig_assert_I_C_L(lv: c.I_C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2698) err = 1;
    if (lv.v2 != 125) err = 2;
    if (lv.v3 != 27877) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_L() c.I_C_L {
    return .{ .v1 = 2698, .v2 = 125, .v3 = 27877 };
}

// From T_Snnn_xax.c:63472:63492
// struct  I_C_S  {
//   int v1;
//   char v2;
//   short v3;
// };

test "I_C_S: layout" {
    var lv: c.I_C_S = undefined;
    try testing.expectSize(c.I_C_S, 8);
    try testing.expectAlign(c.I_C_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_C_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_C_S(.{ .v1 = 8815, .v2 = 126, .v3 = 10343 }));
}
test "I_C_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_S());
}
test "I_C_S: C passes to Zig" {
    try testing.expectOk(c.send_I_C_S());
}
test "I_C_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_S(), .{ .v1 = 8815, .v2 = 126, .v3 = 10343 });
}
pub export fn zig_assert_I_C_S(lv: c.I_C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8815) err = 1;
    if (lv.v2 != 126) err = 2;
    if (lv.v3 != 10343) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_S() c.I_C_S {
    return .{ .v1 = 8815, .v2 = 126, .v3 = 10343 };
}

// From T_Snnn_xax.c:63497:63517
// struct  I_C_Uc  {
//   int v1;
//   char v2;
//   unsigned char v3;
// };

test "I_C_Uc: layout" {
    var lv: c.I_C_Uc = undefined;
    try testing.expectSize(c.I_C_Uc, 8);
    try testing.expectAlign(c.I_C_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "I_C_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_C_Uc(.{ .v1 = 9659, .v2 = 11, .v3 = 95 }));
}
test "I_C_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_Uc());
}
test "I_C_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_C_Uc());
}
test "I_C_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_Uc(), .{ .v1 = 9659, .v2 = 11, .v3 = 95 });
}
pub export fn zig_assert_I_C_Uc(lv: c.I_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9659) err = 1;
    if (lv.v2 != 11) err = 2;
    if (lv.v3 != 95) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_Uc() c.I_C_Uc {
    return .{ .v1 = 9659, .v2 = 11, .v3 = 95 };
}

// From T_Snnn_xax.c:63522:63542
// struct  I_C_Ui  {
//   int v1;
//   char v2;
//   unsigned int v3;
// };

test "I_C_Ui: layout" {
    var lv: c.I_C_Ui = undefined;
    try testing.expectSize(c.I_C_Ui, 12);
    try testing.expectAlign(c.I_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_C_Ui(.{ .v1 = 12781, .v2 = 106, .v3 = 4108 }));
}
test "I_C_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_Ui());
}
test "I_C_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_C_Ui());
}
test "I_C_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_Ui(), .{ .v1 = 12781, .v2 = 106, .v3 = 4108 });
}
pub export fn zig_assert_I_C_Ui(lv: c.I_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12781) err = 1;
    if (lv.v2 != 106) err = 2;
    if (lv.v3 != 4108) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_Ui() c.I_C_Ui {
    return .{ .v1 = 12781, .v2 = 106, .v3 = 4108 };
}

// From T_Snnn_xax.c:63547:63567
// struct  I_C_Ul  {
//   int v1;
//   char v2;
//   __tsu64 v3;
// };

test "I_C_Ul: layout" {
    var lv: c.I_C_Ul = undefined;
    try testing.expectSize(c.I_C_Ul, 16);
    try testing.expectAlign(c.I_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_C_Ul(.{ .v1 = 6776, .v2 = 16, .v3 = 8336 }));
}
test "I_C_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_Ul());
}
test "I_C_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_C_Ul());
}
test "I_C_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_Ul(), .{ .v1 = 6776, .v2 = 16, .v3 = 8336 });
}
pub export fn zig_assert_I_C_Ul(lv: c.I_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6776) err = 1;
    if (lv.v2 != 16) err = 2;
    if (lv.v3 != 8336) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_Ul() c.I_C_Ul {
    return .{ .v1 = 6776, .v2 = 16, .v3 = 8336 };
}

// From T_Snnn_xax.c:63572:63592
// struct  I_C_Us  {
//   int v1;
//   char v2;
//   unsigned short v3;
// };

test "I_C_Us: layout" {
    var lv: c.I_C_Us = undefined;
    try testing.expectSize(c.I_C_Us, 8);
    try testing.expectAlign(c.I_C_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_C_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_C_Us(.{ .v1 = 9679, .v2 = 50, .v3 = 19135 }));
}
test "I_C_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_Us());
}
test "I_C_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_C_Us());
}
test "I_C_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_Us(), .{ .v1 = 9679, .v2 = 50, .v3 = 19135 });
}
pub export fn zig_assert_I_C_Us(lv: c.I_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9679) err = 1;
    if (lv.v2 != 50) err = 2;
    if (lv.v3 != 19135) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_Us() c.I_C_Us {
    return .{ .v1 = 9679, .v2 = 50, .v3 = 19135 };
}

// From T_Snnn_xax.c:63597:63617
// struct  I_C_Vp  {
//   int v1;
//   char v2;
//   void *v3;
// };

test "I_C_Vp: layout" {
    var lv: c.I_C_Vp = undefined;
    try testing.expectSize(c.I_C_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_C_Vp(.{ .v1 = 5526, .v2 = 73, .v3 = null }));
}
test "I_C_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_C_Vp());
}
test "I_C_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_C_Vp());
}
test "I_C_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_C_Vp(), .{ .v1 = 5526, .v2 = 73, .v3 = null });
}
pub export fn zig_assert_I_C_Vp(lv: c.I_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5526) err = 1;
    if (lv.v2 != 73) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_Vp() c.I_C_Vp {
    return .{ .v1 = 5526, .v2 = 73, .v3 = null };
}

// From T_Snnn_xax.c:63622:63640
// struct  I_D  {
//   int v1;
//   double v2;
// };

test "I_D: layout" {
    var lv: c.I_D = undefined;
    try testing.expectSize(c.I_D, ABISELECT(16, 12));
    try testing.expectAlign(c.I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "I_D: Zig passes to C" {
    try testing.expectFail(c.assert_I_D(.{ .v1 = 20372, .v2 = -2.125 }));
}
test "I_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D());
}
test "I_D: C passes to Zig" {
    try testing.expectFail(c.send_I_D());
}
test "I_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D(), .{ .v1 = 20372, .v2 = -2.125 });
}
pub export fn zig_assert_I_D(lv: c.I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20372) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D() c.I_D {
    return .{ .v1 = 20372, .v2 = -2.125 };
}

// From T_Snnn_xax.c:64369:64389
// struct  I_D_C  {
//   int v1;
//   double v2;
//   char v3;
// };

test "I_D_C: layout" {
    var lv: c.I_D_C = undefined;
    try testing.expectSize(c.I_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_C(.{ .v1 = 12641, .v2 = 0.875, .v3 = 101 }));
}
test "I_D_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_C());
}
test "I_D_C: C passes to Zig" {
    try testing.expectOk(c.send_I_D_C());
}
test "I_D_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_C(), .{ .v1 = 12641, .v2 = 0.875, .v3 = 101 });
}
pub export fn zig_assert_I_D_C(lv: c.I_D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12641) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 101) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_C() c.I_D_C {
    return .{ .v1 = 12641, .v2 = 0.875, .v3 = 101 };
}

// From T_Snnn_xax.c:64394:64414
// struct  I_D_D  {
//   int v1;
//   double v2;
//   double v3;
// };

test "I_D_D: layout" {
    var lv: c.I_D_D = undefined;
    try testing.expectSize(c.I_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_D: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_D(.{ .v1 = 2553, .v2 = 0.875, .v3 = 0.875 }));
}
test "I_D_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_D());
}
test "I_D_D: C passes to Zig" {
    try testing.expectOk(c.send_I_D_D());
}
test "I_D_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_D(), .{ .v1 = 2553, .v2 = 0.875, .v3 = 0.875 });
}
pub export fn zig_assert_I_D_D(lv: c.I_D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2553) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_D() c.I_D_D {
    return .{ .v1 = 2553, .v2 = 0.875, .v3 = 0.875 };
}

// From T_Snnn_xax.c:64419:64439
// struct  I_D_F  {
//   int v1;
//   double v2;
//   float v3;
// };

test "I_D_F: layout" {
    var lv: c.I_D_F = undefined;
    try testing.expectSize(c.I_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_F: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_F(.{ .v1 = 27668, .v2 = -0.25, .v3 = 7.0 }));
}
test "I_D_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_F());
}
test "I_D_F: C passes to Zig" {
    try testing.expectOk(c.send_I_D_F());
}
test "I_D_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_F(), .{ .v1 = 27668, .v2 = -0.25, .v3 = 7.0 });
}
pub export fn zig_assert_I_D_F(lv: c.I_D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27668) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_F() c.I_D_F {
    return .{ .v1 = 27668, .v2 = -0.25, .v3 = 7.0 };
}

// From T_Snnn_xax.c:64444:64464
// struct  I_D_I  {
//   int v1;
//   double v2;
//   int v3;
// };

test "I_D_I: layout" {
    var lv: c.I_D_I = undefined;
    try testing.expectSize(c.I_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_I(.{ .v1 = 1093, .v2 = 7.0, .v3 = 17976 }));
}
test "I_D_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_I());
}
test "I_D_I: C passes to Zig" {
    try testing.expectOk(c.send_I_D_I());
}
test "I_D_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_I(), .{ .v1 = 1093, .v2 = 7.0, .v3 = 17976 });
}
pub export fn zig_assert_I_D_I(lv: c.I_D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1093) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 17976) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_I() c.I_D_I {
    return .{ .v1 = 1093, .v2 = 7.0, .v3 = 17976 };
}

// From T_Snnn_xax.c:64469:64489
// struct  I_D_Ip  {
//   int v1;
//   double v2;
//   int *v3;
// };

test "I_D_Ip: layout" {
    var lv: c.I_D_Ip = undefined;
    try testing.expectSize(c.I_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_Ip(.{ .v1 = 1902, .v2 = 7.0, .v3 = null }));
}
test "I_D_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_Ip());
}
test "I_D_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_D_Ip());
}
test "I_D_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_Ip(), .{ .v1 = 1902, .v2 = 7.0, .v3 = null });
}
pub export fn zig_assert_I_D_Ip(lv: c.I_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1902) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_Ip() c.I_D_Ip {
    return .{ .v1 = 1902, .v2 = 7.0, .v3 = null };
}

// From T_Snnn_xax.c:64494:64514
// struct  I_D_L  {
//   int v1;
//   double v2;
//   __tsi64 v3;
// };

test "I_D_L: layout" {
    var lv: c.I_D_L = undefined;
    try testing.expectSize(c.I_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_L(.{ .v1 = 29, .v2 = 0.875, .v3 = 10866 }));
}
test "I_D_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_L());
}
test "I_D_L: C passes to Zig" {
    try testing.expectOk(c.send_I_D_L());
}
test "I_D_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_L(), .{ .v1 = 29, .v2 = 0.875, .v3 = 10866 });
}
pub export fn zig_assert_I_D_L(lv: c.I_D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 10866) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_L() c.I_D_L {
    return .{ .v1 = 29, .v2 = 0.875, .v3 = 10866 };
}

// From T_Snnn_xax.c:64519:64539
// struct  I_D_S  {
//   int v1;
//   double v2;
//   short v3;
// };

test "I_D_S: layout" {
    var lv: c.I_D_S = undefined;
    try testing.expectSize(c.I_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_S(.{ .v1 = 21029, .v2 = 0.5, .v3 = 12193 }));
}
test "I_D_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_S());
}
test "I_D_S: C passes to Zig" {
    try testing.expectOk(c.send_I_D_S());
}
test "I_D_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_S(), .{ .v1 = 21029, .v2 = 0.5, .v3 = 12193 });
}
pub export fn zig_assert_I_D_S(lv: c.I_D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21029) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 12193) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_S() c.I_D_S {
    return .{ .v1 = 21029, .v2 = 0.5, .v3 = 12193 };
}

// From T_Snnn_xax.c:64544:64564
// struct  I_D_Uc  {
//   int v1;
//   double v2;
//   unsigned char v3;
// };

test "I_D_Uc: layout" {
    var lv: c.I_D_Uc = undefined;
    try testing.expectSize(c.I_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_Uc(.{ .v1 = 26572, .v2 = 0.875, .v3 = 77 }));
}
test "I_D_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_Uc());
}
test "I_D_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_D_Uc());
}
test "I_D_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_Uc(), .{ .v1 = 26572, .v2 = 0.875, .v3 = 77 });
}
pub export fn zig_assert_I_D_Uc(lv: c.I_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26572) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 77) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_Uc() c.I_D_Uc {
    return .{ .v1 = 26572, .v2 = 0.875, .v3 = 77 };
}

// From T_Snnn_xax.c:64569:64589
// struct  I_D_Ui  {
//   int v1;
//   double v2;
//   unsigned int v3;
// };

test "I_D_Ui: layout" {
    var lv: c.I_D_Ui = undefined;
    try testing.expectSize(c.I_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_Ui(.{ .v1 = 17463, .v2 = 0.5, .v3 = 30633 }));
}
test "I_D_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_Ui());
}
test "I_D_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_D_Ui());
}
test "I_D_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_Ui(), .{ .v1 = 17463, .v2 = 0.5, .v3 = 30633 });
}
pub export fn zig_assert_I_D_Ui(lv: c.I_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17463) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 30633) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_Ui() c.I_D_Ui {
    return .{ .v1 = 17463, .v2 = 0.5, .v3 = 30633 };
}

// From T_Snnn_xax.c:64594:64614
// struct  I_D_Ul  {
//   int v1;
//   double v2;
//   __tsu64 v3;
// };

test "I_D_Ul: layout" {
    var lv: c.I_D_Ul = undefined;
    try testing.expectSize(c.I_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_Ul(.{ .v1 = 23110, .v2 = 0.875, .v3 = 5933 }));
}
test "I_D_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_Ul());
}
test "I_D_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_D_Ul());
}
test "I_D_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_Ul(), .{ .v1 = 23110, .v2 = 0.875, .v3 = 5933 });
}
pub export fn zig_assert_I_D_Ul(lv: c.I_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23110) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 5933) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_Ul() c.I_D_Ul {
    return .{ .v1 = 23110, .v2 = 0.875, .v3 = 5933 };
}

// From T_Snnn_xax.c:64619:64639
// struct  I_D_Us  {
//   int v1;
//   double v2;
//   unsigned short v3;
// };

test "I_D_Us: layout" {
    var lv: c.I_D_Us = undefined;
    try testing.expectSize(c.I_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_Us(.{ .v1 = 10730, .v2 = 7.0, .v3 = 2491 }));
}
test "I_D_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_Us());
}
test "I_D_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_D_Us());
}
test "I_D_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_Us(), .{ .v1 = 10730, .v2 = 7.0, .v3 = 2491 });
}
pub export fn zig_assert_I_D_Us(lv: c.I_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10730) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 2491) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_Us() c.I_D_Us {
    return .{ .v1 = 10730, .v2 = 7.0, .v3 = 2491 };
}

// From T_Snnn_xax.c:64644:64664
// struct  I_D_Vp  {
//   int v1;
//   double v2;
//   void *v3;
// };

test "I_D_Vp: layout" {
    var lv: c.I_D_Vp = undefined;
    try testing.expectSize(c.I_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_D_Vp(.{ .v1 = 16938, .v2 = -0.25, .v3 = null }));
}
test "I_D_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_D_Vp());
}
test "I_D_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_D_Vp());
}
test "I_D_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_D_Vp(), .{ .v1 = 16938, .v2 = -0.25, .v3 = null });
}
pub export fn zig_assert_I_D_Vp(lv: c.I_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16938) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_Vp() c.I_D_Vp {
    return .{ .v1 = 16938, .v2 = -0.25, .v3 = null };
}

// From T_Snnn_xax.c:64669:64687
// struct  I_F  {
//   int v1;
//   float v2;
// };

test "I_F: layout" {
    var lv: c.I_F = undefined;
    try testing.expectSize(c.I_F, 8);
    try testing.expectAlign(c.I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_F: Zig passes to C" {
    try testing.expectOk(c.assert_I_F(.{ .v1 = 18073, .v2 = 7.0 }));
}
test "I_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F());
}
test "I_F: C passes to Zig" {
    try testing.expectOk(c.send_I_F());
}
test "I_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F(), .{ .v1 = 18073, .v2 = 7.0 });
}
pub export fn zig_assert_I_F(lv: c.I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18073) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F() c.I_F {
    return .{ .v1 = 18073, .v2 = 7.0 };
}

// From T_Snnn_xax.c:65416:65436
// struct  I_F_C  {
//   int v1;
//   float v2;
//   char v3;
// };

test "I_F_C: layout" {
    var lv: c.I_F_C = undefined;
    try testing.expectSize(c.I_F_C, 12);
    try testing.expectAlign(c.I_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_F_C(.{ .v1 = 22692, .v2 = 4.5, .v3 = 92 }));
}
test "I_F_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_C());
}
test "I_F_C: C passes to Zig" {
    try testing.expectOk(c.send_I_F_C());
}
test "I_F_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_C(), .{ .v1 = 22692, .v2 = 4.5, .v3 = 92 });
}
pub export fn zig_assert_I_F_C(lv: c.I_F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22692) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 92) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_C() c.I_F_C {
    return .{ .v1 = 22692, .v2 = 4.5, .v3 = 92 };
}

// From T_Snnn_xax.c:65441:65461
// struct  I_F_D  {
//   int v1;
//   float v2;
//   double v3;
// };

test "I_F_D: layout" {
    var lv: c.I_F_D = undefined;
    try testing.expectSize(c.I_F_D, 16);
    try testing.expectAlign(c.I_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_D: Zig passes to C" {
    try testing.expectFail(c.assert_I_F_D(.{ .v1 = 12941, .v2 = 0.875, .v3 = 0.5 }));
}
test "I_F_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_D());
}
test "I_F_D: C passes to Zig" {
    try testing.expectFail(c.send_I_F_D());
}
test "I_F_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_D(), .{ .v1 = 12941, .v2 = 0.875, .v3 = 0.5 });
}
pub export fn zig_assert_I_F_D(lv: c.I_F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12941) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_D() c.I_F_D {
    return .{ .v1 = 12941, .v2 = 0.875, .v3 = 0.5 };
}

// From T_Snnn_xax.c:65466:65486
// struct  I_F_F  {
//   int v1;
//   float v2;
//   float v3;
// };

test "I_F_F: layout" {
    var lv: c.I_F_F = undefined;
    try testing.expectSize(c.I_F_F, 12);
    try testing.expectAlign(c.I_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_F: Zig passes to C" {
    try testing.expectFail(c.assert_I_F_F(.{ .v1 = 2124, .v2 = -0.25, .v3 = 7.0 }));
}
test "I_F_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_F());
}
test "I_F_F: C passes to Zig" {
    try testing.expectFail(c.send_I_F_F());
}
test "I_F_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_F(), .{ .v1 = 2124, .v2 = -0.25, .v3 = 7.0 });
}
pub export fn zig_assert_I_F_F(lv: c.I_F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2124) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_F() c.I_F_F {
    return .{ .v1 = 2124, .v2 = -0.25, .v3 = 7.0 };
}

// From T_Snnn_xax.c:65491:65511
// struct  I_F_I  {
//   int v1;
//   float v2;
//   int v3;
// };

test "I_F_I: layout" {
    var lv: c.I_F_I = undefined;
    try testing.expectSize(c.I_F_I, 12);
    try testing.expectAlign(c.I_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_F_I(.{ .v1 = 1040, .v2 = -2.125, .v3 = 3590 }));
}
test "I_F_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_I());
}
test "I_F_I: C passes to Zig" {
    try testing.expectOk(c.send_I_F_I());
}
test "I_F_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_I(), .{ .v1 = 1040, .v2 = -2.125, .v3 = 3590 });
}
pub export fn zig_assert_I_F_I(lv: c.I_F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1040) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 3590) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_I() c.I_F_I {
    return .{ .v1 = 1040, .v2 = -2.125, .v3 = 3590 };
}

// From T_Snnn_xax.c:65516:65536
// struct  I_F_Ip  {
//   int v1;
//   float v2;
//   int *v3;
// };

test "I_F_Ip: layout" {
    var lv: c.I_F_Ip = undefined;
    try testing.expectSize(c.I_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_F_Ip(.{ .v1 = 5132, .v2 = 0.5, .v3 = null }));
}
test "I_F_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_Ip());
}
test "I_F_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_F_Ip());
}
test "I_F_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_Ip(), .{ .v1 = 5132, .v2 = 0.5, .v3 = null });
}
pub export fn zig_assert_I_F_Ip(lv: c.I_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5132) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_Ip() c.I_F_Ip {
    return .{ .v1 = 5132, .v2 = 0.5, .v3 = null };
}

// From T_Snnn_xax.c:65541:65561
// struct  I_F_L  {
//   int v1;
//   float v2;
//   __tsi64 v3;
// };

test "I_F_L: layout" {
    var lv: c.I_F_L = undefined;
    try testing.expectSize(c.I_F_L, 16);
    try testing.expectAlign(c.I_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_F_L(.{ .v1 = 9972, .v2 = 7.0, .v3 = 27944 }));
}
test "I_F_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_L());
}
test "I_F_L: C passes to Zig" {
    try testing.expectOk(c.send_I_F_L());
}
test "I_F_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_L(), .{ .v1 = 9972, .v2 = 7.0, .v3 = 27944 });
}
pub export fn zig_assert_I_F_L(lv: c.I_F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9972) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 27944) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_L() c.I_F_L {
    return .{ .v1 = 9972, .v2 = 7.0, .v3 = 27944 };
}

// From T_Snnn_xax.c:65566:65586
// struct  I_F_S  {
//   int v1;
//   float v2;
//   short v3;
// };

test "I_F_S: layout" {
    var lv: c.I_F_S = undefined;
    try testing.expectSize(c.I_F_S, 12);
    try testing.expectAlign(c.I_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_F_S(.{ .v1 = 22732, .v2 = 4.5, .v3 = 27757 }));
}
test "I_F_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_S());
}
test "I_F_S: C passes to Zig" {
    try testing.expectOk(c.send_I_F_S());
}
test "I_F_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_S(), .{ .v1 = 22732, .v2 = 4.5, .v3 = 27757 });
}
pub export fn zig_assert_I_F_S(lv: c.I_F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22732) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 27757) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_S() c.I_F_S {
    return .{ .v1 = 22732, .v2 = 4.5, .v3 = 27757 };
}

// From T_Snnn_xax.c:65591:65611
// struct  I_F_Uc  {
//   int v1;
//   float v2;
//   unsigned char v3;
// };

test "I_F_Uc: layout" {
    var lv: c.I_F_Uc = undefined;
    try testing.expectSize(c.I_F_Uc, 12);
    try testing.expectAlign(c.I_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_F_Uc(.{ .v1 = 2422, .v2 = -0.25, .v3 = 125 }));
}
test "I_F_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_Uc());
}
test "I_F_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_F_Uc());
}
test "I_F_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_Uc(), .{ .v1 = 2422, .v2 = -0.25, .v3 = 125 });
}
pub export fn zig_assert_I_F_Uc(lv: c.I_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2422) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_Uc() c.I_F_Uc {
    return .{ .v1 = 2422, .v2 = -0.25, .v3 = 125 };
}

// From T_Snnn_xax.c:65616:65636
// struct  I_F_Ui  {
//   int v1;
//   float v2;
//   unsigned int v3;
// };

test "I_F_Ui: layout" {
    var lv: c.I_F_Ui = undefined;
    try testing.expectSize(c.I_F_Ui, 12);
    try testing.expectAlign(c.I_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_F_Ui(.{ .v1 = 2378, .v2 = 4.5, .v3 = 16314 }));
}
test "I_F_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_Ui());
}
test "I_F_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_F_Ui());
}
test "I_F_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_Ui(), .{ .v1 = 2378, .v2 = 4.5, .v3 = 16314 });
}
pub export fn zig_assert_I_F_Ui(lv: c.I_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2378) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 16314) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_Ui() c.I_F_Ui {
    return .{ .v1 = 2378, .v2 = 4.5, .v3 = 16314 };
}

// From T_Snnn_xax.c:65641:65661
// struct  I_F_Ul  {
//   int v1;
//   float v2;
//   __tsu64 v3;
// };

test "I_F_Ul: layout" {
    var lv: c.I_F_Ul = undefined;
    try testing.expectSize(c.I_F_Ul, 16);
    try testing.expectAlign(c.I_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_F_Ul(.{ .v1 = 32591, .v2 = 7.0, .v3 = 2455 }));
}
test "I_F_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_Ul());
}
test "I_F_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_F_Ul());
}
test "I_F_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_Ul(), .{ .v1 = 32591, .v2 = 7.0, .v3 = 2455 });
}
pub export fn zig_assert_I_F_Ul(lv: c.I_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32591) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 2455) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_Ul() c.I_F_Ul {
    return .{ .v1 = 32591, .v2 = 7.0, .v3 = 2455 };
}

// From T_Snnn_xax.c:65666:65686
// struct  I_F_Us  {
//   int v1;
//   float v2;
//   unsigned short v3;
// };

test "I_F_Us: layout" {
    var lv: c.I_F_Us = undefined;
    try testing.expectSize(c.I_F_Us, 12);
    try testing.expectAlign(c.I_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_F_Us(.{ .v1 = 24697, .v2 = -0.25, .v3 = 26553 }));
}
test "I_F_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_Us());
}
test "I_F_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_F_Us());
}
test "I_F_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_Us(), .{ .v1 = 24697, .v2 = -0.25, .v3 = 26553 });
}
pub export fn zig_assert_I_F_Us(lv: c.I_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24697) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 26553) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_Us() c.I_F_Us {
    return .{ .v1 = 24697, .v2 = -0.25, .v3 = 26553 };
}

// From T_Snnn_xax.c:65691:65711
// struct  I_F_Vp  {
//   int v1;
//   float v2;
//   void *v3;
// };

test "I_F_Vp: layout" {
    var lv: c.I_F_Vp = undefined;
    try testing.expectSize(c.I_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_F_Vp(.{ .v1 = 9459, .v2 = 4.5, .v3 = null }));
}
test "I_F_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_F_Vp());
}
test "I_F_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_F_Vp());
}
test "I_F_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_F_Vp(), .{ .v1 = 9459, .v2 = 4.5, .v3 = null });
}
pub export fn zig_assert_I_F_Vp(lv: c.I_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9459) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_Vp() c.I_F_Vp {
    return .{ .v1 = 9459, .v2 = 4.5, .v3 = null };
}

// From T_Snnn_xax.c:65716:65734
// struct  I_I  {
//   int v1;
//   int v2;
// };

test "I_I: layout" {
    var lv: c.I_I = undefined;
    try testing.expectSize(c.I_I, 8);
    try testing.expectAlign(c.I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_I(.{ .v1 = 25696, .v2 = 22162 }));
}
test "I_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I());
}
test "I_I: C passes to Zig" {
    try testing.expectOk(c.send_I_I());
}
test "I_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I(), .{ .v1 = 25696, .v2 = 22162 });
}
pub export fn zig_assert_I_I(lv: c.I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25696) err = 1;
    if (lv.v2 != 22162) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I() c.I_I {
    return .{ .v1 = 25696, .v2 = 22162 };
}

// From T_Snnn_xax.c:66463:66483
// struct  I_I_C  {
//   int v1;
//   int v2;
//   char v3;
// };

test "I_I_C: layout" {
    var lv: c.I_I_C = undefined;
    try testing.expectSize(c.I_I_C, 12);
    try testing.expectAlign(c.I_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_I_C(.{ .v1 = 10622, .v2 = 26317, .v3 = 54 }));
}
test "I_I_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_C());
}
test "I_I_C: C passes to Zig" {
    try testing.expectOk(c.send_I_I_C());
}
test "I_I_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_C(), .{ .v1 = 10622, .v2 = 26317, .v3 = 54 });
}
pub export fn zig_assert_I_I_C(lv: c.I_I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10622) err = 1;
    if (lv.v2 != 26317) err = 2;
    if (lv.v3 != 54) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_C() c.I_I_C {
    return .{ .v1 = 10622, .v2 = 26317, .v3 = 54 };
}

// From T_Snnn_xax.c:66488:66508
// struct  I_I_D  {
//   int v1;
//   int v2;
//   double v3;
// };

test "I_I_D: layout" {
    var lv: c.I_I_D = undefined;
    try testing.expectSize(c.I_I_D, 16);
    try testing.expectAlign(c.I_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_D: Zig passes to C" {
    try testing.expectFail(c.assert_I_I_D(.{ .v1 = 26453, .v2 = 22783, .v3 = 4.5 }));
}
test "I_I_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_D());
}
test "I_I_D: C passes to Zig" {
    try testing.expectFail(c.send_I_I_D());
}
test "I_I_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_D(), .{ .v1 = 26453, .v2 = 22783, .v3 = 4.5 });
}
pub export fn zig_assert_I_I_D(lv: c.I_I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26453) err = 1;
    if (lv.v2 != 22783) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_D() c.I_I_D {
    return .{ .v1 = 26453, .v2 = 22783, .v3 = 4.5 };
}

// From T_Snnn_xax.c:66513:66533
// struct  I_I_F  {
//   int v1;
//   int v2;
//   float v3;
// };

test "I_I_F: layout" {
    var lv: c.I_I_F = undefined;
    try testing.expectSize(c.I_I_F, 12);
    try testing.expectAlign(c.I_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_F: Zig passes to C" {
    try testing.expectFail(c.assert_I_I_F(.{ .v1 = 25300, .v2 = 31232, .v3 = -0.25 }));
}
test "I_I_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_F());
}
test "I_I_F: C passes to Zig" {
    try testing.expectFail(c.send_I_I_F());
}
test "I_I_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_F(), .{ .v1 = 25300, .v2 = 31232, .v3 = -0.25 });
}
pub export fn zig_assert_I_I_F(lv: c.I_I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25300) err = 1;
    if (lv.v2 != 31232) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_F() c.I_I_F {
    return .{ .v1 = 25300, .v2 = 31232, .v3 = -0.25 };
}

// From T_Snnn_xax.c:66538:66558
// struct  I_I_I  {
//   int v1;
//   int v2;
//   int v3;
// };

test "I_I_I: layout" {
    var lv: c.I_I_I = undefined;
    try testing.expectSize(c.I_I_I, 12);
    try testing.expectAlign(c.I_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_I_I(.{ .v1 = 27961, .v2 = 24345, .v3 = 24769 }));
}
test "I_I_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_I());
}
test "I_I_I: C passes to Zig" {
    try testing.expectOk(c.send_I_I_I());
}
test "I_I_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_I(), .{ .v1 = 27961, .v2 = 24345, .v3 = 24769 });
}
pub export fn zig_assert_I_I_I(lv: c.I_I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27961) err = 1;
    if (lv.v2 != 24345) err = 2;
    if (lv.v3 != 24769) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_I() c.I_I_I {
    return .{ .v1 = 27961, .v2 = 24345, .v3 = 24769 };
}

// From T_Snnn_xax.c:66563:66583
// struct  I_I_Ip  {
//   int v1;
//   int v2;
//   int *v3;
// };

test "I_I_Ip: layout" {
    var lv: c.I_I_Ip = undefined;
    try testing.expectSize(c.I_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_I_Ip(.{ .v1 = 115, .v2 = 29069, .v3 = null }));
}
test "I_I_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_Ip());
}
test "I_I_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_I_Ip());
}
test "I_I_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_Ip(), .{ .v1 = 115, .v2 = 29069, .v3 = null });
}
pub export fn zig_assert_I_I_Ip(lv: c.I_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 115) err = 1;
    if (lv.v2 != 29069) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_Ip() c.I_I_Ip {
    return .{ .v1 = 115, .v2 = 29069, .v3 = null };
}

// From T_Snnn_xax.c:66588:66608
// struct  I_I_L  {
//   int v1;
//   int v2;
//   __tsi64 v3;
// };

test "I_I_L: layout" {
    var lv: c.I_I_L = undefined;
    try testing.expectSize(c.I_I_L, 16);
    try testing.expectAlign(c.I_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_I_L(.{ .v1 = 31682, .v2 = 7411, .v3 = 18481 }));
}
test "I_I_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_L());
}
test "I_I_L: C passes to Zig" {
    try testing.expectOk(c.send_I_I_L());
}
test "I_I_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_L(), .{ .v1 = 31682, .v2 = 7411, .v3 = 18481 });
}
pub export fn zig_assert_I_I_L(lv: c.I_I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31682) err = 1;
    if (lv.v2 != 7411) err = 2;
    if (lv.v3 != 18481) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_L() c.I_I_L {
    return .{ .v1 = 31682, .v2 = 7411, .v3 = 18481 };
}

// From T_Snnn_xax.c:66613:66633
// struct  I_I_S  {
//   int v1;
//   int v2;
//   short v3;
// };

test "I_I_S: layout" {
    var lv: c.I_I_S = undefined;
    try testing.expectSize(c.I_I_S, 12);
    try testing.expectAlign(c.I_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_I_S(.{ .v1 = 23632, .v2 = 31412, .v3 = 28557 }));
}
test "I_I_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_S());
}
test "I_I_S: C passes to Zig" {
    try testing.expectOk(c.send_I_I_S());
}
test "I_I_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_S(), .{ .v1 = 23632, .v2 = 31412, .v3 = 28557 });
}
pub export fn zig_assert_I_I_S(lv: c.I_I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23632) err = 1;
    if (lv.v2 != 31412) err = 2;
    if (lv.v3 != 28557) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_S() c.I_I_S {
    return .{ .v1 = 23632, .v2 = 31412, .v3 = 28557 };
}

// From T_Snnn_xax.c:66638:66658
// struct  I_I_Uc  {
//   int v1;
//   int v2;
//   unsigned char v3;
// };

test "I_I_Uc: layout" {
    var lv: c.I_I_Uc = undefined;
    try testing.expectSize(c.I_I_Uc, 12);
    try testing.expectAlign(c.I_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_I_Uc(.{ .v1 = 10669, .v2 = 23177, .v3 = 84 }));
}
test "I_I_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_Uc());
}
test "I_I_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_I_Uc());
}
test "I_I_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_Uc(), .{ .v1 = 10669, .v2 = 23177, .v3 = 84 });
}
pub export fn zig_assert_I_I_Uc(lv: c.I_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10669) err = 1;
    if (lv.v2 != 23177) err = 2;
    if (lv.v3 != 84) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_Uc() c.I_I_Uc {
    return .{ .v1 = 10669, .v2 = 23177, .v3 = 84 };
}

// From T_Snnn_xax.c:66663:66683
// struct  I_I_Ui  {
//   int v1;
//   int v2;
//   unsigned int v3;
// };

test "I_I_Ui: layout" {
    var lv: c.I_I_Ui = undefined;
    try testing.expectSize(c.I_I_Ui, 12);
    try testing.expectAlign(c.I_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_I_Ui(.{ .v1 = 19858, .v2 = 31111, .v3 = 266 }));
}
test "I_I_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_Ui());
}
test "I_I_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_I_Ui());
}
test "I_I_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_Ui(), .{ .v1 = 19858, .v2 = 31111, .v3 = 266 });
}
pub export fn zig_assert_I_I_Ui(lv: c.I_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19858) err = 1;
    if (lv.v2 != 31111) err = 2;
    if (lv.v3 != 266) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_Ui() c.I_I_Ui {
    return .{ .v1 = 19858, .v2 = 31111, .v3 = 266 };
}

// From T_Snnn_xax.c:66688:66708
// struct  I_I_Ul  {
//   int v1;
//   int v2;
//   __tsu64 v3;
// };

test "I_I_Ul: layout" {
    var lv: c.I_I_Ul = undefined;
    try testing.expectSize(c.I_I_Ul, 16);
    try testing.expectAlign(c.I_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_I_Ul(.{ .v1 = 6762, .v2 = 13697, .v3 = 16792 }));
}
test "I_I_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_Ul());
}
test "I_I_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_I_Ul());
}
test "I_I_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_Ul(), .{ .v1 = 6762, .v2 = 13697, .v3 = 16792 });
}
pub export fn zig_assert_I_I_Ul(lv: c.I_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6762) err = 1;
    if (lv.v2 != 13697) err = 2;
    if (lv.v3 != 16792) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_Ul() c.I_I_Ul {
    return .{ .v1 = 6762, .v2 = 13697, .v3 = 16792 };
}

// From T_Snnn_xax.c:66713:66733
// struct  I_I_Us  {
//   int v1;
//   int v2;
//   unsigned short v3;
// };

test "I_I_Us: layout" {
    var lv: c.I_I_Us = undefined;
    try testing.expectSize(c.I_I_Us, 12);
    try testing.expectAlign(c.I_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_I_Us(.{ .v1 = 24170, .v2 = 32025, .v3 = 8080 }));
}
test "I_I_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_Us());
}
test "I_I_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_I_Us());
}
test "I_I_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_Us(), .{ .v1 = 24170, .v2 = 32025, .v3 = 8080 });
}
pub export fn zig_assert_I_I_Us(lv: c.I_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24170) err = 1;
    if (lv.v2 != 32025) err = 2;
    if (lv.v3 != 8080) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_Us() c.I_I_Us {
    return .{ .v1 = 24170, .v2 = 32025, .v3 = 8080 };
}

// From T_Snnn_xax.c:66738:66758
// struct  I_I_Vp  {
//   int v1;
//   int v2;
//   void *v3;
// };

test "I_I_Vp: layout" {
    var lv: c.I_I_Vp = undefined;
    try testing.expectSize(c.I_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_I_Vp(.{ .v1 = 25106, .v2 = 21604, .v3 = null }));
}
test "I_I_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_I_Vp());
}
test "I_I_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_I_Vp());
}
test "I_I_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_I_Vp(), .{ .v1 = 25106, .v2 = 21604, .v3 = null });
}
pub export fn zig_assert_I_I_Vp(lv: c.I_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25106) err = 1;
    if (lv.v2 != 21604) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_Vp() c.I_I_Vp {
    return .{ .v1 = 25106, .v2 = 21604, .v3 = null };
}

// From T_Snnn_xax.c:66763:66781
// struct  I_Ip  {
//   int v1;
//   int *v2;
// };

test "I_Ip: layout" {
    var lv: c.I_Ip = undefined;
    try testing.expectSize(c.I_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "I_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip(.{ .v1 = 1345, .v2 = null }));
}
test "I_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip());
}
test "I_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip());
}
test "I_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip(), .{ .v1 = 1345, .v2 = null });
}
pub export fn zig_assert_I_Ip(lv: c.I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1345) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip() c.I_Ip {
    return .{ .v1 = 1345, .v2 = null };
}

// From T_Snnn_xax.c:67510:67530
// struct  I_Ip_C  {
//   int v1;
//   int *v2;
//   char v3;
// };

test "I_Ip_C: layout" {
    var lv: c.I_Ip_C = undefined;
    try testing.expectSize(c.I_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_C(.{ .v1 = 1373, .v2 = null, .v3 = 14 }));
}
test "I_Ip_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_C());
}
test "I_Ip_C: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_C());
}
test "I_Ip_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_C(), .{ .v1 = 1373, .v2 = null, .v3 = 14 });
}
pub export fn zig_assert_I_Ip_C(lv: c.I_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1373) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 14) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_C() c.I_Ip_C {
    return .{ .v1 = 1373, .v2 = null, .v3 = 14 };
}

// From T_Snnn_xax.c:67535:67555
// struct  I_Ip_D  {
//   int v1;
//   int *v2;
//   double v3;
// };

test "I_Ip_D: layout" {
    var lv: c.I_Ip_D = undefined;
    try testing.expectSize(c.I_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_D: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_D(.{ .v1 = 10474, .v2 = null, .v3 = 7.0 }));
}
test "I_Ip_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_D());
}
test "I_Ip_D: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_D());
}
test "I_Ip_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_D(), .{ .v1 = 10474, .v2 = null, .v3 = 7.0 });
}
pub export fn zig_assert_I_Ip_D(lv: c.I_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10474) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_D() c.I_Ip_D {
    return .{ .v1 = 10474, .v2 = null, .v3 = 7.0 };
}

// From T_Snnn_xax.c:67560:67580
// struct  I_Ip_F  {
//   int v1;
//   int *v2;
//   float v3;
// };

test "I_Ip_F: layout" {
    var lv: c.I_Ip_F = undefined;
    try testing.expectSize(c.I_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_F: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_F(.{ .v1 = 5032, .v2 = null, .v3 = -0.25 }));
}
test "I_Ip_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_F());
}
test "I_Ip_F: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_F());
}
test "I_Ip_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_F(), .{ .v1 = 5032, .v2 = null, .v3 = -0.25 });
}
pub export fn zig_assert_I_Ip_F(lv: c.I_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5032) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_F() c.I_Ip_F {
    return .{ .v1 = 5032, .v2 = null, .v3 = -0.25 };
}

// From T_Snnn_xax.c:67585:67605
// struct  I_Ip_I  {
//   int v1;
//   int *v2;
//   int v3;
// };

test "I_Ip_I: layout" {
    var lv: c.I_Ip_I = undefined;
    try testing.expectSize(c.I_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_I(.{ .v1 = 9003, .v2 = null, .v3 = 11875 }));
}
test "I_Ip_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_I());
}
test "I_Ip_I: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_I());
}
test "I_Ip_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_I(), .{ .v1 = 9003, .v2 = null, .v3 = 11875 });
}
pub export fn zig_assert_I_Ip_I(lv: c.I_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9003) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 11875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_I() c.I_Ip_I {
    return .{ .v1 = 9003, .v2 = null, .v3 = 11875 };
}

// From T_Snnn_xax.c:67610:67630
// struct  I_Ip_Ip  {
//   int v1;
//   int *v2;
//   int *v3;
// };

test "I_Ip_Ip: layout" {
    var lv: c.I_Ip_Ip = undefined;
    try testing.expectSize(c.I_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_Ip(.{ .v1 = 11522, .v2 = null, .v3 = null }));
}
test "I_Ip_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_Ip());
}
test "I_Ip_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_Ip());
}
test "I_Ip_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_Ip(), .{ .v1 = 11522, .v2 = null, .v3 = null });
}
pub export fn zig_assert_I_Ip_Ip(lv: c.I_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11522) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_Ip() c.I_Ip_Ip {
    return .{ .v1 = 11522, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:67635:67655
// struct  I_Ip_L  {
//   int v1;
//   int *v2;
//   __tsi64 v3;
// };

test "I_Ip_L: layout" {
    var lv: c.I_Ip_L = undefined;
    try testing.expectSize(c.I_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_L(.{ .v1 = 12609, .v2 = null, .v3 = 30005 }));
}
test "I_Ip_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_L());
}
test "I_Ip_L: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_L());
}
test "I_Ip_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_L(), .{ .v1 = 12609, .v2 = null, .v3 = 30005 });
}
pub export fn zig_assert_I_Ip_L(lv: c.I_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12609) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 30005) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_L() c.I_Ip_L {
    return .{ .v1 = 12609, .v2 = null, .v3 = 30005 };
}

// From T_Snnn_xax.c:67660:67680
// struct  I_Ip_S  {
//   int v1;
//   int *v2;
//   short v3;
// };

test "I_Ip_S: layout" {
    var lv: c.I_Ip_S = undefined;
    try testing.expectSize(c.I_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_S(.{ .v1 = 1059, .v2 = null, .v3 = 12558 }));
}
test "I_Ip_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_S());
}
test "I_Ip_S: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_S());
}
test "I_Ip_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_S(), .{ .v1 = 1059, .v2 = null, .v3 = 12558 });
}
pub export fn zig_assert_I_Ip_S(lv: c.I_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1059) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 12558) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_S() c.I_Ip_S {
    return .{ .v1 = 1059, .v2 = null, .v3 = 12558 };
}

// From T_Snnn_xax.c:67685:67705
// struct  I_Ip_Uc  {
//   int v1;
//   int *v2;
//   unsigned char v3;
// };

test "I_Ip_Uc: layout" {
    var lv: c.I_Ip_Uc = undefined;
    try testing.expectSize(c.I_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_Uc(.{ .v1 = 19459, .v2 = null, .v3 = 5 }));
}
test "I_Ip_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_Uc());
}
test "I_Ip_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_Uc());
}
test "I_Ip_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_Uc(), .{ .v1 = 19459, .v2 = null, .v3 = 5 });
}
pub export fn zig_assert_I_Ip_Uc(lv: c.I_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19459) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_Uc() c.I_Ip_Uc {
    return .{ .v1 = 19459, .v2 = null, .v3 = 5 };
}

// From T_Snnn_xax.c:67710:67730
// struct  I_Ip_Ui  {
//   int v1;
//   int *v2;
//   unsigned int v3;
// };

test "I_Ip_Ui: layout" {
    var lv: c.I_Ip_Ui = undefined;
    try testing.expectSize(c.I_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_Ui(.{ .v1 = 6589, .v2 = null, .v3 = 18101 }));
}
test "I_Ip_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_Ui());
}
test "I_Ip_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_Ui());
}
test "I_Ip_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_Ui(), .{ .v1 = 6589, .v2 = null, .v3 = 18101 });
}
pub export fn zig_assert_I_Ip_Ui(lv: c.I_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6589) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 18101) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_Ui() c.I_Ip_Ui {
    return .{ .v1 = 6589, .v2 = null, .v3 = 18101 };
}

// From T_Snnn_xax.c:67735:67755
// struct  I_Ip_Ul  {
//   int v1;
//   int *v2;
//   __tsu64 v3;
// };

test "I_Ip_Ul: layout" {
    var lv: c.I_Ip_Ul = undefined;
    try testing.expectSize(c.I_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_Ul(.{ .v1 = 7, .v2 = null, .v3 = 6657 }));
}
test "I_Ip_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_Ul());
}
test "I_Ip_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_Ul());
}
test "I_Ip_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_Ul(), .{ .v1 = 7, .v2 = null, .v3 = 6657 });
}
pub export fn zig_assert_I_Ip_Ul(lv: c.I_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 6657) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_Ul() c.I_Ip_Ul {
    return .{ .v1 = 7, .v2 = null, .v3 = 6657 };
}

// From T_Snnn_xax.c:67760:67780
// struct  I_Ip_Us  {
//   int v1;
//   int *v2;
//   unsigned short v3;
// };

test "I_Ip_Us: layout" {
    var lv: c.I_Ip_Us = undefined;
    try testing.expectSize(c.I_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_Us(.{ .v1 = 12797, .v2 = null, .v3 = 13372 }));
}
test "I_Ip_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_Us());
}
test "I_Ip_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_Us());
}
test "I_Ip_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_Us(), .{ .v1 = 12797, .v2 = null, .v3 = 13372 });
}
pub export fn zig_assert_I_Ip_Us(lv: c.I_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12797) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 13372) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_Us() c.I_Ip_Us {
    return .{ .v1 = 12797, .v2 = null, .v3 = 13372 };
}

// From T_Snnn_xax.c:67785:67805
// struct  I_Ip_Vp  {
//   int v1;
//   int *v2;
//   void *v3;
// };

test "I_Ip_Vp: layout" {
    var lv: c.I_Ip_Vp = undefined;
    try testing.expectSize(c.I_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ip_Vp(.{ .v1 = 23149, .v2 = null, .v3 = null }));
}
test "I_Ip_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ip_Vp());
}
test "I_Ip_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_Ip_Vp());
}
test "I_Ip_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ip_Vp(), .{ .v1 = 23149, .v2 = null, .v3 = null });
}
pub export fn zig_assert_I_Ip_Vp(lv: c.I_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23149) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_Vp() c.I_Ip_Vp {
    return .{ .v1 = 23149, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:67810:67828
// struct  I_L  {
//   int v1;
//   __tsi64 v2;
// };

test "I_L: layout" {
    var lv: c.I_L = undefined;
    try testing.expectSize(c.I_L, ABISELECT(16, 12));
    try testing.expectAlign(c.I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "I_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_L(.{ .v1 = 11062, .v2 = 25927 }));
}
test "I_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L());
}
test "I_L: C passes to Zig" {
    try testing.expectOk(c.send_I_L());
}
test "I_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L(), .{ .v1 = 11062, .v2 = 25927 });
}
pub export fn zig_assert_I_L(lv: c.I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11062) err = 1;
    if (lv.v2 != 25927) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L() c.I_L {
    return .{ .v1 = 11062, .v2 = 25927 };
}

// From T_Snnn_xax.c:68557:68577
// struct  I_L_C  {
//   int v1;
//   __tsi64 v2;
//   char v3;
// };

test "I_L_C: layout" {
    var lv: c.I_L_C = undefined;
    try testing.expectSize(c.I_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_C(.{ .v1 = 3285, .v2 = 26260, .v3 = 38 }));
}
test "I_L_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_C());
}
test "I_L_C: C passes to Zig" {
    try testing.expectOk(c.send_I_L_C());
}
test "I_L_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_C(), .{ .v1 = 3285, .v2 = 26260, .v3 = 38 });
}
pub export fn zig_assert_I_L_C(lv: c.I_L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3285) err = 1;
    if (lv.v2 != 26260) err = 2;
    if (lv.v3 != 38) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_C() c.I_L_C {
    return .{ .v1 = 3285, .v2 = 26260, .v3 = 38 };
}

// From T_Snnn_xax.c:68582:68602
// struct  I_L_D  {
//   int v1;
//   __tsi64 v2;
//   double v3;
// };

test "I_L_D: layout" {
    var lv: c.I_L_D = undefined;
    try testing.expectSize(c.I_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_D: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_D(.{ .v1 = 6996, .v2 = 15320, .v3 = -0.25 }));
}
test "I_L_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_D());
}
test "I_L_D: C passes to Zig" {
    try testing.expectOk(c.send_I_L_D());
}
test "I_L_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_D(), .{ .v1 = 6996, .v2 = 15320, .v3 = -0.25 });
}
pub export fn zig_assert_I_L_D(lv: c.I_L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6996) err = 1;
    if (lv.v2 != 15320) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_D() c.I_L_D {
    return .{ .v1 = 6996, .v2 = 15320, .v3 = -0.25 };
}

// From T_Snnn_xax.c:68607:68627
// struct  I_L_F  {
//   int v1;
//   __tsi64 v2;
//   float v3;
// };

test "I_L_F: layout" {
    var lv: c.I_L_F = undefined;
    try testing.expectSize(c.I_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_F: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_F(.{ .v1 = 3417, .v2 = 5705, .v3 = 7.0 }));
}
test "I_L_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_F());
}
test "I_L_F: C passes to Zig" {
    try testing.expectOk(c.send_I_L_F());
}
test "I_L_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_F(), .{ .v1 = 3417, .v2 = 5705, .v3 = 7.0 });
}
pub export fn zig_assert_I_L_F(lv: c.I_L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3417) err = 1;
    if (lv.v2 != 5705) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_F() c.I_L_F {
    return .{ .v1 = 3417, .v2 = 5705, .v3 = 7.0 };
}

// From T_Snnn_xax.c:68632:68652
// struct  I_L_I  {
//   int v1;
//   __tsi64 v2;
//   int v3;
// };

test "I_L_I: layout" {
    var lv: c.I_L_I = undefined;
    try testing.expectSize(c.I_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_I(.{ .v1 = 2878, .v2 = 28742, .v3 = 27089 }));
}
test "I_L_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_I());
}
test "I_L_I: C passes to Zig" {
    try testing.expectOk(c.send_I_L_I());
}
test "I_L_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_I(), .{ .v1 = 2878, .v2 = 28742, .v3 = 27089 });
}
pub export fn zig_assert_I_L_I(lv: c.I_L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2878) err = 1;
    if (lv.v2 != 28742) err = 2;
    if (lv.v3 != 27089) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_I() c.I_L_I {
    return .{ .v1 = 2878, .v2 = 28742, .v3 = 27089 };
}

// From T_Snnn_xax.c:68657:68677
// struct  I_L_Ip  {
//   int v1;
//   __tsi64 v2;
//   int *v3;
// };

test "I_L_Ip: layout" {
    var lv: c.I_L_Ip = undefined;
    try testing.expectSize(c.I_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_Ip(.{ .v1 = 14448, .v2 = 27305, .v3 = null }));
}
test "I_L_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_Ip());
}
test "I_L_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_L_Ip());
}
test "I_L_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_Ip(), .{ .v1 = 14448, .v2 = 27305, .v3 = null });
}
pub export fn zig_assert_I_L_Ip(lv: c.I_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14448) err = 1;
    if (lv.v2 != 27305) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_Ip() c.I_L_Ip {
    return .{ .v1 = 14448, .v2 = 27305, .v3 = null };
}

// From T_Snnn_xax.c:68682:68702
// struct  I_L_L  {
//   int v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "I_L_L: layout" {
    var lv: c.I_L_L = undefined;
    try testing.expectSize(c.I_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_L(.{ .v1 = 16994, .v2 = 26074, .v3 = 1517 }));
}
test "I_L_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_L());
}
test "I_L_L: C passes to Zig" {
    try testing.expectOk(c.send_I_L_L());
}
test "I_L_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_L(), .{ .v1 = 16994, .v2 = 26074, .v3 = 1517 });
}
pub export fn zig_assert_I_L_L(lv: c.I_L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16994) err = 1;
    if (lv.v2 != 26074) err = 2;
    if (lv.v3 != 1517) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_L() c.I_L_L {
    return .{ .v1 = 16994, .v2 = 26074, .v3 = 1517 };
}

// From T_Snnn_xax.c:68707:68727
// struct  I_L_S  {
//   int v1;
//   __tsi64 v2;
//   short v3;
// };

test "I_L_S: layout" {
    var lv: c.I_L_S = undefined;
    try testing.expectSize(c.I_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_S(.{ .v1 = 20300, .v2 = 20165, .v3 = 29078 }));
}
test "I_L_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_S());
}
test "I_L_S: C passes to Zig" {
    try testing.expectOk(c.send_I_L_S());
}
test "I_L_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_S(), .{ .v1 = 20300, .v2 = 20165, .v3 = 29078 });
}
pub export fn zig_assert_I_L_S(lv: c.I_L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20300) err = 1;
    if (lv.v2 != 20165) err = 2;
    if (lv.v3 != 29078) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_S() c.I_L_S {
    return .{ .v1 = 20300, .v2 = 20165, .v3 = 29078 };
}

// From T_Snnn_xax.c:68732:68752
// struct  I_L_Uc  {
//   int v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "I_L_Uc: layout" {
    var lv: c.I_L_Uc = undefined;
    try testing.expectSize(c.I_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_Uc(.{ .v1 = 17820, .v2 = 24592, .v3 = 125 }));
}
test "I_L_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_Uc());
}
test "I_L_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_L_Uc());
}
test "I_L_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_Uc(), .{ .v1 = 17820, .v2 = 24592, .v3 = 125 });
}
pub export fn zig_assert_I_L_Uc(lv: c.I_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17820) err = 1;
    if (lv.v2 != 24592) err = 2;
    if (lv.v3 != 125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_Uc() c.I_L_Uc {
    return .{ .v1 = 17820, .v2 = 24592, .v3 = 125 };
}

// From T_Snnn_xax.c:68757:68777
// struct  I_L_Ui  {
//   int v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "I_L_Ui: layout" {
    var lv: c.I_L_Ui = undefined;
    try testing.expectSize(c.I_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_Ui(.{ .v1 = 2268, .v2 = 14982, .v3 = 1284 }));
}
test "I_L_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_Ui());
}
test "I_L_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_L_Ui());
}
test "I_L_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_Ui(), .{ .v1 = 2268, .v2 = 14982, .v3 = 1284 });
}
pub export fn zig_assert_I_L_Ui(lv: c.I_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2268) err = 1;
    if (lv.v2 != 14982) err = 2;
    if (lv.v3 != 1284) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_Ui() c.I_L_Ui {
    return .{ .v1 = 2268, .v2 = 14982, .v3 = 1284 };
}

// From T_Snnn_xax.c:68782:68802
// struct  I_L_Ul  {
//   int v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "I_L_Ul: layout" {
    var lv: c.I_L_Ul = undefined;
    try testing.expectSize(c.I_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_Ul(.{ .v1 = 25117, .v2 = 28257, .v3 = 12345 }));
}
test "I_L_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_Ul());
}
test "I_L_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_L_Ul());
}
test "I_L_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_Ul(), .{ .v1 = 25117, .v2 = 28257, .v3 = 12345 });
}
pub export fn zig_assert_I_L_Ul(lv: c.I_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25117) err = 1;
    if (lv.v2 != 28257) err = 2;
    if (lv.v3 != 12345) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_Ul() c.I_L_Ul {
    return .{ .v1 = 25117, .v2 = 28257, .v3 = 12345 };
}

// From T_Snnn_xax.c:68807:68827
// struct  I_L_Us  {
//   int v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "I_L_Us: layout" {
    var lv: c.I_L_Us = undefined;
    try testing.expectSize(c.I_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_Us(.{ .v1 = 6112, .v2 = 1636, .v3 = 20956 }));
}
test "I_L_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_Us());
}
test "I_L_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_L_Us());
}
test "I_L_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_Us(), .{ .v1 = 6112, .v2 = 1636, .v3 = 20956 });
}
pub export fn zig_assert_I_L_Us(lv: c.I_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6112) err = 1;
    if (lv.v2 != 1636) err = 2;
    if (lv.v3 != 20956) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_Us() c.I_L_Us {
    return .{ .v1 = 6112, .v2 = 1636, .v3 = 20956 };
}

// From T_Snnn_xax.c:68832:68852
// struct  I_L_Vp  {
//   int v1;
//   __tsi64 v2;
//   void *v3;
// };

test "I_L_Vp: layout" {
    var lv: c.I_L_Vp = undefined;
    try testing.expectSize(c.I_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_L_Vp(.{ .v1 = 17111, .v2 = 29128, .v3 = null }));
}
test "I_L_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_L_Vp());
}
test "I_L_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_L_Vp());
}
test "I_L_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_L_Vp(), .{ .v1 = 17111, .v2 = 29128, .v3 = null });
}
pub export fn zig_assert_I_L_Vp(lv: c.I_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17111) err = 1;
    if (lv.v2 != 29128) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_Vp() c.I_L_Vp {
    return .{ .v1 = 17111, .v2 = 29128, .v3 = null };
}

// From T_Snnn_xax.c:68857:68875
// struct  I_S  {
//   int v1;
//   short v2;
// };

test "I_S: layout" {
    var lv: c.I_S = undefined;
    try testing.expectSize(c.I_S, 8);
    try testing.expectAlign(c.I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_S(.{ .v1 = 20472, .v2 = 19735 }));
}
test "I_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S());
}
test "I_S: C passes to Zig" {
    try testing.expectOk(c.send_I_S());
}
test "I_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S(), .{ .v1 = 20472, .v2 = 19735 });
}
pub export fn zig_assert_I_S(lv: c.I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20472) err = 1;
    if (lv.v2 != 19735) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S() c.I_S {
    return .{ .v1 = 20472, .v2 = 19735 };
}

// From T_Snnn_xax.c:69604:69624
// struct  I_S_C  {
//   int v1;
//   short v2;
//   char v3;
// };

test "I_S_C: layout" {
    var lv: c.I_S_C = undefined;
    try testing.expectSize(c.I_S_C, 8);
    try testing.expectAlign(c.I_S_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_S_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_S_C(.{ .v1 = 30085, .v2 = 12535, .v3 = 68 }));
}
test "I_S_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_C());
}
test "I_S_C: C passes to Zig" {
    try testing.expectOk(c.send_I_S_C());
}
test "I_S_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_C(), .{ .v1 = 30085, .v2 = 12535, .v3 = 68 });
}
pub export fn zig_assert_I_S_C(lv: c.I_S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30085) err = 1;
    if (lv.v2 != 12535) err = 2;
    if (lv.v3 != 68) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_C() c.I_S_C {
    return .{ .v1 = 30085, .v2 = 12535, .v3 = 68 };
}

// From T_Snnn_xax.c:69629:69649
// struct  I_S_D  {
//   int v1;
//   short v2;
//   double v3;
// };

test "I_S_D: layout" {
    var lv: c.I_S_D = undefined;
    try testing.expectSize(c.I_S_D, 16);
    try testing.expectAlign(c.I_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_D: Zig passes to C" {
    try testing.expectFail(c.assert_I_S_D(.{ .v1 = 20790, .v2 = 12807, .v3 = 7.0 }));
}
test "I_S_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_D());
}
test "I_S_D: C passes to Zig" {
    try testing.expectFail(c.send_I_S_D());
}
test "I_S_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_D(), .{ .v1 = 20790, .v2 = 12807, .v3 = 7.0 });
}
pub export fn zig_assert_I_S_D(lv: c.I_S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20790) err = 1;
    if (lv.v2 != 12807) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_D() c.I_S_D {
    return .{ .v1 = 20790, .v2 = 12807, .v3 = 7.0 };
}

// From T_Snnn_xax.c:69654:69674
// struct  I_S_F  {
//   int v1;
//   short v2;
//   float v3;
// };

test "I_S_F: layout" {
    var lv: c.I_S_F = undefined;
    try testing.expectSize(c.I_S_F, 12);
    try testing.expectAlign(c.I_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_F: Zig passes to C" {
    try testing.expectFail(c.assert_I_S_F(.{ .v1 = 21659, .v2 = 15482, .v3 = 1.0 }));
}
test "I_S_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_F());
}
test "I_S_F: C passes to Zig" {
    try testing.expectFail(c.send_I_S_F());
}
test "I_S_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_F(), .{ .v1 = 21659, .v2 = 15482, .v3 = 1.0 });
}
pub export fn zig_assert_I_S_F(lv: c.I_S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21659) err = 1;
    if (lv.v2 != 15482) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_F() c.I_S_F {
    return .{ .v1 = 21659, .v2 = 15482, .v3 = 1.0 };
}

// From T_Snnn_xax.c:69679:69699
// struct  I_S_I  {
//   int v1;
//   short v2;
//   int v3;
// };

test "I_S_I: layout" {
    var lv: c.I_S_I = undefined;
    try testing.expectSize(c.I_S_I, 12);
    try testing.expectAlign(c.I_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_S_I(.{ .v1 = 19770, .v2 = 17968, .v3 = 30797 }));
}
test "I_S_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_I());
}
test "I_S_I: C passes to Zig" {
    try testing.expectOk(c.send_I_S_I());
}
test "I_S_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_I(), .{ .v1 = 19770, .v2 = 17968, .v3 = 30797 });
}
pub export fn zig_assert_I_S_I(lv: c.I_S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19770) err = 1;
    if (lv.v2 != 17968) err = 2;
    if (lv.v3 != 30797) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_I() c.I_S_I {
    return .{ .v1 = 19770, .v2 = 17968, .v3 = 30797 };
}

// From T_Snnn_xax.c:69704:69724
// struct  I_S_Ip  {
//   int v1;
//   short v2;
//   int *v3;
// };

test "I_S_Ip: layout" {
    var lv: c.I_S_Ip = undefined;
    try testing.expectSize(c.I_S_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_S_Ip(.{ .v1 = 11156, .v2 = 459, .v3 = null }));
}
test "I_S_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_Ip());
}
test "I_S_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_S_Ip());
}
test "I_S_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_Ip(), .{ .v1 = 11156, .v2 = 459, .v3 = null });
}
pub export fn zig_assert_I_S_Ip(lv: c.I_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11156) err = 1;
    if (lv.v2 != 459) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_Ip() c.I_S_Ip {
    return .{ .v1 = 11156, .v2 = 459, .v3 = null };
}

// From T_Snnn_xax.c:69729:69749
// struct  I_S_L  {
//   int v1;
//   short v2;
//   __tsi64 v3;
// };

test "I_S_L: layout" {
    var lv: c.I_S_L = undefined;
    try testing.expectSize(c.I_S_L, 16);
    try testing.expectAlign(c.I_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_S_L(.{ .v1 = 20002, .v2 = 1407, .v3 = 28466 }));
}
test "I_S_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_L());
}
test "I_S_L: C passes to Zig" {
    try testing.expectOk(c.send_I_S_L());
}
test "I_S_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_L(), .{ .v1 = 20002, .v2 = 1407, .v3 = 28466 });
}
pub export fn zig_assert_I_S_L(lv: c.I_S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20002) err = 1;
    if (lv.v2 != 1407) err = 2;
    if (lv.v3 != 28466) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_L() c.I_S_L {
    return .{ .v1 = 20002, .v2 = 1407, .v3 = 28466 };
}

// From T_Snnn_xax.c:69754:69774
// struct  I_S_S  {
//   int v1;
//   short v2;
//   short v3;
// };

test "I_S_S: layout" {
    var lv: c.I_S_S = undefined;
    try testing.expectSize(c.I_S_S, 8);
    try testing.expectAlign(c.I_S_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_S_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_S_S(.{ .v1 = 23178, .v2 = 17246, .v3 = 30600 }));
}
test "I_S_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_S());
}
test "I_S_S: C passes to Zig" {
    try testing.expectOk(c.send_I_S_S());
}
test "I_S_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_S(), .{ .v1 = 23178, .v2 = 17246, .v3 = 30600 });
}
pub export fn zig_assert_I_S_S(lv: c.I_S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23178) err = 1;
    if (lv.v2 != 17246) err = 2;
    if (lv.v3 != 30600) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_S() c.I_S_S {
    return .{ .v1 = 23178, .v2 = 17246, .v3 = 30600 };
}

// From T_Snnn_xax.c:69779:69799
// struct  I_S_Uc  {
//   int v1;
//   short v2;
//   unsigned char v3;
// };

test "I_S_Uc: layout" {
    var lv: c.I_S_Uc = undefined;
    try testing.expectSize(c.I_S_Uc, 8);
    try testing.expectAlign(c.I_S_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_S_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_S_Uc(.{ .v1 = 29081, .v2 = 27093, .v3 = 104 }));
}
test "I_S_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_Uc());
}
test "I_S_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_S_Uc());
}
test "I_S_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_Uc(), .{ .v1 = 29081, .v2 = 27093, .v3 = 104 });
}
pub export fn zig_assert_I_S_Uc(lv: c.I_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29081) err = 1;
    if (lv.v2 != 27093) err = 2;
    if (lv.v3 != 104) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_Uc() c.I_S_Uc {
    return .{ .v1 = 29081, .v2 = 27093, .v3 = 104 };
}

// From T_Snnn_xax.c:69804:69824
// struct  I_S_Ui  {
//   int v1;
//   short v2;
//   unsigned int v3;
// };

test "I_S_Ui: layout" {
    var lv: c.I_S_Ui = undefined;
    try testing.expectSize(c.I_S_Ui, 12);
    try testing.expectAlign(c.I_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_S_Ui(.{ .v1 = 19804, .v2 = 17359, .v3 = 32650 }));
}
test "I_S_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_Ui());
}
test "I_S_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_S_Ui());
}
test "I_S_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_Ui(), .{ .v1 = 19804, .v2 = 17359, .v3 = 32650 });
}
pub export fn zig_assert_I_S_Ui(lv: c.I_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19804) err = 1;
    if (lv.v2 != 17359) err = 2;
    if (lv.v3 != 32650) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_Ui() c.I_S_Ui {
    return .{ .v1 = 19804, .v2 = 17359, .v3 = 32650 };
}

// From T_Snnn_xax.c:69829:69849
// struct  I_S_Ul  {
//   int v1;
//   short v2;
//   __tsu64 v3;
// };

test "I_S_Ul: layout" {
    var lv: c.I_S_Ul = undefined;
    try testing.expectSize(c.I_S_Ul, 16);
    try testing.expectAlign(c.I_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_S_Ul(.{ .v1 = 16785, .v2 = 22570, .v3 = 20471 }));
}
test "I_S_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_Ul());
}
test "I_S_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_S_Ul());
}
test "I_S_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_Ul(), .{ .v1 = 16785, .v2 = 22570, .v3 = 20471 });
}
pub export fn zig_assert_I_S_Ul(lv: c.I_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16785) err = 1;
    if (lv.v2 != 22570) err = 2;
    if (lv.v3 != 20471) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_Ul() c.I_S_Ul {
    return .{ .v1 = 16785, .v2 = 22570, .v3 = 20471 };
}

// From T_Snnn_xax.c:69854:69874
// struct  I_S_Us  {
//   int v1;
//   short v2;
//   unsigned short v3;
// };

test "I_S_Us: layout" {
    var lv: c.I_S_Us = undefined;
    try testing.expectSize(c.I_S_Us, 8);
    try testing.expectAlign(c.I_S_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_S_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_S_Us(.{ .v1 = 18528, .v2 = 17634, .v3 = 13815 }));
}
test "I_S_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_Us());
}
test "I_S_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_S_Us());
}
test "I_S_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_Us(), .{ .v1 = 18528, .v2 = 17634, .v3 = 13815 });
}
pub export fn zig_assert_I_S_Us(lv: c.I_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18528) err = 1;
    if (lv.v2 != 17634) err = 2;
    if (lv.v3 != 13815) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_Us() c.I_S_Us {
    return .{ .v1 = 18528, .v2 = 17634, .v3 = 13815 };
}

// From T_Snnn_xax.c:69879:69899
// struct  I_S_Vp  {
//   int v1;
//   short v2;
//   void *v3;
// };

test "I_S_Vp: layout" {
    var lv: c.I_S_Vp = undefined;
    try testing.expectSize(c.I_S_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_S_Vp(.{ .v1 = 5046, .v2 = 3734, .v3 = null }));
}
test "I_S_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_S_Vp());
}
test "I_S_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_S_Vp());
}
test "I_S_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_S_Vp(), .{ .v1 = 5046, .v2 = 3734, .v3 = null });
}
pub export fn zig_assert_I_S_Vp(lv: c.I_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5046) err = 1;
    if (lv.v2 != 3734) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_Vp() c.I_S_Vp {
    return .{ .v1 = 5046, .v2 = 3734, .v3 = null };
}

// From T_Snnn_xax.c:69904:69922
// struct  I_Uc  {
//   int v1;
//   unsigned char v2;
// };

test "I_Uc: layout" {
    var lv: c.I_Uc = undefined;
    try testing.expectSize(c.I_Uc, 8);
    try testing.expectAlign(c.I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_Uc(.{ .v1 = 9907, .v2 = 62 }));
}
test "I_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc());
}
test "I_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_Uc());
}
test "I_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc(), .{ .v1 = 9907, .v2 = 62 });
}
pub export fn zig_assert_I_Uc(lv: c.I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9907) err = 1;
    if (lv.v2 != 62) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc() c.I_Uc {
    return .{ .v1 = 9907, .v2 = 62 };
}

// From T_Snnn_xax.c:70651:70671
// struct  I_Uc_C  {
//   int v1;
//   unsigned char v2;
//   char v3;
// };

test "I_Uc_C: layout" {
    var lv: c.I_Uc_C = undefined;
    try testing.expectSize(c.I_Uc_C, 8);
    try testing.expectAlign(c.I_Uc_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "I_Uc_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_Uc_C(.{ .v1 = 814, .v2 = 78, .v3 = 109 }));
}
test "I_Uc_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_C());
}
test "I_Uc_C: C passes to Zig" {
    try testing.expectOk(c.send_I_Uc_C());
}
test "I_Uc_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_C(), .{ .v1 = 814, .v2 = 78, .v3 = 109 });
}
pub export fn zig_assert_I_Uc_C(lv: c.I_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 814) err = 1;
    if (lv.v2 != 78) err = 2;
    if (lv.v3 != 109) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_C() c.I_Uc_C {
    return .{ .v1 = 814, .v2 = 78, .v3 = 109 };
}

// From T_Snnn_xax.c:70676:70696
// struct  I_Uc_D  {
//   int v1;
//   unsigned char v2;
//   double v3;
// };

test "I_Uc_D: layout" {
    var lv: c.I_Uc_D = undefined;
    try testing.expectSize(c.I_Uc_D, 16);
    try testing.expectAlign(c.I_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_D: Zig passes to C" {
    try testing.expectFail(c.assert_I_Uc_D(.{ .v1 = 22054, .v2 = 100, .v3 = 4.5 }));
}
test "I_Uc_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_D());
}
test "I_Uc_D: C passes to Zig" {
    try testing.expectFail(c.send_I_Uc_D());
}
test "I_Uc_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_D(), .{ .v1 = 22054, .v2 = 100, .v3 = 4.5 });
}
pub export fn zig_assert_I_Uc_D(lv: c.I_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22054) err = 1;
    if (lv.v2 != 100) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_D() c.I_Uc_D {
    return .{ .v1 = 22054, .v2 = 100, .v3 = 4.5 };
}

// From T_Snnn_xax.c:70701:70721
// struct  I_Uc_F  {
//   int v1;
//   unsigned char v2;
//   float v3;
// };

test "I_Uc_F: layout" {
    var lv: c.I_Uc_F = undefined;
    try testing.expectSize(c.I_Uc_F, 12);
    try testing.expectAlign(c.I_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_F: Zig passes to C" {
    try testing.expectFail(c.assert_I_Uc_F(.{ .v1 = 4971, .v2 = 16, .v3 = 0.875 }));
}
test "I_Uc_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_F());
}
test "I_Uc_F: C passes to Zig" {
    try testing.expectFail(c.send_I_Uc_F());
}
test "I_Uc_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_F(), .{ .v1 = 4971, .v2 = 16, .v3 = 0.875 });
}
pub export fn zig_assert_I_Uc_F(lv: c.I_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4971) err = 1;
    if (lv.v2 != 16) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_F() c.I_Uc_F {
    return .{ .v1 = 4971, .v2 = 16, .v3 = 0.875 };
}

// From T_Snnn_xax.c:70726:70746
// struct  I_Uc_I  {
//   int v1;
//   unsigned char v2;
//   int v3;
// };

test "I_Uc_I: layout" {
    var lv: c.I_Uc_I = undefined;
    try testing.expectSize(c.I_Uc_I, 12);
    try testing.expectAlign(c.I_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_Uc_I(.{ .v1 = 11510, .v2 = 113, .v3 = 9530 }));
}
test "I_Uc_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_I());
}
test "I_Uc_I: C passes to Zig" {
    try testing.expectOk(c.send_I_Uc_I());
}
test "I_Uc_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_I(), .{ .v1 = 11510, .v2 = 113, .v3 = 9530 });
}
pub export fn zig_assert_I_Uc_I(lv: c.I_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11510) err = 1;
    if (lv.v2 != 113) err = 2;
    if (lv.v3 != 9530) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_I() c.I_Uc_I {
    return .{ .v1 = 11510, .v2 = 113, .v3 = 9530 };
}

// From T_Snnn_xax.c:70751:70771
// struct  I_Uc_Ip  {
//   int v1;
//   unsigned char v2;
//   int *v3;
// };

test "I_Uc_Ip: layout" {
    var lv: c.I_Uc_Ip = undefined;
    try testing.expectSize(c.I_Uc_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_Uc_Ip(.{ .v1 = 10563, .v2 = 11, .v3 = null }));
}
test "I_Uc_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_Ip());
}
test "I_Uc_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_Uc_Ip());
}
test "I_Uc_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_Ip(), .{ .v1 = 10563, .v2 = 11, .v3 = null });
}
pub export fn zig_assert_I_Uc_Ip(lv: c.I_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10563) err = 1;
    if (lv.v2 != 11) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_Ip() c.I_Uc_Ip {
    return .{ .v1 = 10563, .v2 = 11, .v3 = null };
}

// From T_Snnn_xax.c:70776:70796
// struct  I_Uc_L  {
//   int v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "I_Uc_L: layout" {
    var lv: c.I_Uc_L = undefined;
    try testing.expectSize(c.I_Uc_L, 16);
    try testing.expectAlign(c.I_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_Uc_L(.{ .v1 = 28918, .v2 = 4, .v3 = 2052 }));
}
test "I_Uc_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_L());
}
test "I_Uc_L: C passes to Zig" {
    try testing.expectOk(c.send_I_Uc_L());
}
test "I_Uc_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_L(), .{ .v1 = 28918, .v2 = 4, .v3 = 2052 });
}
pub export fn zig_assert_I_Uc_L(lv: c.I_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28918) err = 1;
    if (lv.v2 != 4) err = 2;
    if (lv.v3 != 2052) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_L() c.I_Uc_L {
    return .{ .v1 = 28918, .v2 = 4, .v3 = 2052 };
}

// From T_Snnn_xax.c:70801:70821
// struct  I_Uc_S  {
//   int v1;
//   unsigned char v2;
//   short v3;
// };

test "I_Uc_S: layout" {
    var lv: c.I_Uc_S = undefined;
    try testing.expectSize(c.I_Uc_S, 8);
    try testing.expectAlign(c.I_Uc_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Uc_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_Uc_S(.{ .v1 = 17185, .v2 = 74, .v3 = 22429 }));
}
test "I_Uc_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_S());
}
test "I_Uc_S: C passes to Zig" {
    try testing.expectOk(c.send_I_Uc_S());
}
test "I_Uc_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_S(), .{ .v1 = 17185, .v2 = 74, .v3 = 22429 });
}
pub export fn zig_assert_I_Uc_S(lv: c.I_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17185) err = 1;
    if (lv.v2 != 74) err = 2;
    if (lv.v3 != 22429) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_S() c.I_Uc_S {
    return .{ .v1 = 17185, .v2 = 74, .v3 = 22429 };
}

// From T_Snnn_xax.c:70826:70846
// struct  I_Uc_Uc  {
//   int v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "I_Uc_Uc: layout" {
    var lv: c.I_Uc_Uc = undefined;
    try testing.expectSize(c.I_Uc_Uc, 8);
    try testing.expectAlign(c.I_Uc_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "I_Uc_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_Uc_Uc(.{ .v1 = 7894, .v2 = 53, .v3 = 84 }));
}
test "I_Uc_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_Uc());
}
test "I_Uc_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_Uc_Uc());
}
test "I_Uc_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_Uc(), .{ .v1 = 7894, .v2 = 53, .v3 = 84 });
}
pub export fn zig_assert_I_Uc_Uc(lv: c.I_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7894) err = 1;
    if (lv.v2 != 53) err = 2;
    if (lv.v3 != 84) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_Uc() c.I_Uc_Uc {
    return .{ .v1 = 7894, .v2 = 53, .v3 = 84 };
}

// From T_Snnn_xax.c:70851:70871
// struct  I_Uc_Ui  {
//   int v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "I_Uc_Ui: layout" {
    var lv: c.I_Uc_Ui = undefined;
    try testing.expectSize(c.I_Uc_Ui, 12);
    try testing.expectAlign(c.I_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_Uc_Ui(.{ .v1 = 29649, .v2 = 52, .v3 = 28628 }));
}
test "I_Uc_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_Ui());
}
test "I_Uc_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_Uc_Ui());
}
test "I_Uc_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_Ui(), .{ .v1 = 29649, .v2 = 52, .v3 = 28628 });
}
pub export fn zig_assert_I_Uc_Ui(lv: c.I_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29649) err = 1;
    if (lv.v2 != 52) err = 2;
    if (lv.v3 != 28628) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_Ui() c.I_Uc_Ui {
    return .{ .v1 = 29649, .v2 = 52, .v3 = 28628 };
}

// From T_Snnn_xax.c:70876:70896
// struct  I_Uc_Ul  {
//   int v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "I_Uc_Ul: layout" {
    var lv: c.I_Uc_Ul = undefined;
    try testing.expectSize(c.I_Uc_Ul, 16);
    try testing.expectAlign(c.I_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_Uc_Ul(.{ .v1 = 13864, .v2 = 71, .v3 = 17139 }));
}
test "I_Uc_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_Ul());
}
test "I_Uc_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_Uc_Ul());
}
test "I_Uc_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_Ul(), .{ .v1 = 13864, .v2 = 71, .v3 = 17139 });
}
pub export fn zig_assert_I_Uc_Ul(lv: c.I_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13864) err = 1;
    if (lv.v2 != 71) err = 2;
    if (lv.v3 != 17139) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_Ul() c.I_Uc_Ul {
    return .{ .v1 = 13864, .v2 = 71, .v3 = 17139 };
}

// From T_Snnn_xax.c:70901:70921
// struct  I_Uc_Us  {
//   int v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "I_Uc_Us: layout" {
    var lv: c.I_Uc_Us = undefined;
    try testing.expectSize(c.I_Uc_Us, 8);
    try testing.expectAlign(c.I_Uc_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Uc_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_Uc_Us(.{ .v1 = 621, .v2 = 24, .v3 = 87 }));
}
test "I_Uc_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_Us());
}
test "I_Uc_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_Uc_Us());
}
test "I_Uc_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_Us(), .{ .v1 = 621, .v2 = 24, .v3 = 87 });
}
pub export fn zig_assert_I_Uc_Us(lv: c.I_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 621) err = 1;
    if (lv.v2 != 24) err = 2;
    if (lv.v3 != 87) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_Us() c.I_Uc_Us {
    return .{ .v1 = 621, .v2 = 24, .v3 = 87 };
}

// From T_Snnn_xax.c:70926:70946
// struct  I_Uc_Vp  {
//   int v1;
//   unsigned char v2;
//   void *v3;
// };

test "I_Uc_Vp: layout" {
    var lv: c.I_Uc_Vp = undefined;
    try testing.expectSize(c.I_Uc_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_Uc_Vp(.{ .v1 = 15733, .v2 = 107, .v3 = null }));
}
test "I_Uc_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Uc_Vp());
}
test "I_Uc_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_Uc_Vp());
}
test "I_Uc_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Uc_Vp(), .{ .v1 = 15733, .v2 = 107, .v3 = null });
}
pub export fn zig_assert_I_Uc_Vp(lv: c.I_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15733) err = 1;
    if (lv.v2 != 107) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_Vp() c.I_Uc_Vp {
    return .{ .v1 = 15733, .v2 = 107, .v3 = null };
}

// From T_Snnn_xax.c:70951:70969
// struct  I_Ui  {
//   int v1;
//   unsigned int v2;
// };

test "I_Ui: layout" {
    var lv: c.I_Ui = undefined;
    try testing.expectSize(c.I_Ui, 8);
    try testing.expectAlign(c.I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ui(.{ .v1 = 7752, .v2 = 28087 }));
}
test "I_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui());
}
test "I_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_Ui());
}
test "I_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui(), .{ .v1 = 7752, .v2 = 28087 });
}
pub export fn zig_assert_I_Ui(lv: c.I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7752) err = 1;
    if (lv.v2 != 28087) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui() c.I_Ui {
    return .{ .v1 = 7752, .v2 = 28087 };
}

// From T_Snnn_xax.c:71698:71718
// struct  I_Ui_C  {
//   int v1;
//   unsigned int v2;
//   char v3;
// };

test "I_Ui_C: layout" {
    var lv: c.I_Ui_C = undefined;
    try testing.expectSize(c.I_Ui_C, 12);
    try testing.expectAlign(c.I_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ui_C(.{ .v1 = 16981, .v2 = 17288, .v3 = 2 }));
}
test "I_Ui_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_C());
}
test "I_Ui_C: C passes to Zig" {
    try testing.expectOk(c.send_I_Ui_C());
}
test "I_Ui_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_C(), .{ .v1 = 16981, .v2 = 17288, .v3 = 2 });
}
pub export fn zig_assert_I_Ui_C(lv: c.I_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16981) err = 1;
    if (lv.v2 != 17288) err = 2;
    if (lv.v3 != 2) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_C() c.I_Ui_C {
    return .{ .v1 = 16981, .v2 = 17288, .v3 = 2 };
}

// From T_Snnn_xax.c:71723:71743
// struct  I_Ui_D  {
//   int v1;
//   unsigned int v2;
//   double v3;
// };

test "I_Ui_D: layout" {
    var lv: c.I_Ui_D = undefined;
    try testing.expectSize(c.I_Ui_D, 16);
    try testing.expectAlign(c.I_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_D: Zig passes to C" {
    try testing.expectFail(c.assert_I_Ui_D(.{ .v1 = 23540, .v2 = 10678, .v3 = 0.5 }));
}
test "I_Ui_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_D());
}
test "I_Ui_D: C passes to Zig" {
    try testing.expectFail(c.send_I_Ui_D());
}
test "I_Ui_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_D(), .{ .v1 = 23540, .v2 = 10678, .v3 = 0.5 });
}
pub export fn zig_assert_I_Ui_D(lv: c.I_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23540) err = 1;
    if (lv.v2 != 10678) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_D() c.I_Ui_D {
    return .{ .v1 = 23540, .v2 = 10678, .v3 = 0.5 };
}

// From T_Snnn_xax.c:71748:71768
// struct  I_Ui_F  {
//   int v1;
//   unsigned int v2;
//   float v3;
// };

test "I_Ui_F: layout" {
    var lv: c.I_Ui_F = undefined;
    try testing.expectSize(c.I_Ui_F, 12);
    try testing.expectAlign(c.I_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_F: Zig passes to C" {
    try testing.expectFail(c.assert_I_Ui_F(.{ .v1 = 24642, .v2 = 26856, .v3 = 0.5 }));
}
test "I_Ui_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_F());
}
test "I_Ui_F: C passes to Zig" {
    try testing.expectFail(c.send_I_Ui_F());
}
test "I_Ui_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_F(), .{ .v1 = 24642, .v2 = 26856, .v3 = 0.5 });
}
pub export fn zig_assert_I_Ui_F(lv: c.I_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24642) err = 1;
    if (lv.v2 != 26856) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_F() c.I_Ui_F {
    return .{ .v1 = 24642, .v2 = 26856, .v3 = 0.5 };
}

// From T_Snnn_xax.c:71773:71793
// struct  I_Ui_I  {
//   int v1;
//   unsigned int v2;
//   int v3;
// };

test "I_Ui_I: layout" {
    var lv: c.I_Ui_I = undefined;
    try testing.expectSize(c.I_Ui_I, 12);
    try testing.expectAlign(c.I_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ui_I(.{ .v1 = 8999, .v2 = 1538, .v3 = 10112 }));
}
test "I_Ui_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_I());
}
test "I_Ui_I: C passes to Zig" {
    try testing.expectOk(c.send_I_Ui_I());
}
test "I_Ui_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_I(), .{ .v1 = 8999, .v2 = 1538, .v3 = 10112 });
}
pub export fn zig_assert_I_Ui_I(lv: c.I_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8999) err = 1;
    if (lv.v2 != 1538) err = 2;
    if (lv.v3 != 10112) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_I() c.I_Ui_I {
    return .{ .v1 = 8999, .v2 = 1538, .v3 = 10112 };
}

// From T_Snnn_xax.c:71798:71818
// struct  I_Ui_Ip  {
//   int v1;
//   unsigned int v2;
//   int *v3;
// };

test "I_Ui_Ip: layout" {
    var lv: c.I_Ui_Ip = undefined;
    try testing.expectSize(c.I_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ui_Ip(.{ .v1 = 12833, .v2 = 8536, .v3 = null }));
}
test "I_Ui_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_Ip());
}
test "I_Ui_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_Ui_Ip());
}
test "I_Ui_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_Ip(), .{ .v1 = 12833, .v2 = 8536, .v3 = null });
}
pub export fn zig_assert_I_Ui_Ip(lv: c.I_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12833) err = 1;
    if (lv.v2 != 8536) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_Ip() c.I_Ui_Ip {
    return .{ .v1 = 12833, .v2 = 8536, .v3 = null };
}

// From T_Snnn_xax.c:71823:71843
// struct  I_Ui_L  {
//   int v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "I_Ui_L: layout" {
    var lv: c.I_Ui_L = undefined;
    try testing.expectSize(c.I_Ui_L, 16);
    try testing.expectAlign(c.I_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ui_L(.{ .v1 = 5275, .v2 = 28397, .v3 = 7892 }));
}
test "I_Ui_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_L());
}
test "I_Ui_L: C passes to Zig" {
    try testing.expectOk(c.send_I_Ui_L());
}
test "I_Ui_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_L(), .{ .v1 = 5275, .v2 = 28397, .v3 = 7892 });
}
pub export fn zig_assert_I_Ui_L(lv: c.I_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5275) err = 1;
    if (lv.v2 != 28397) err = 2;
    if (lv.v3 != 7892) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_L() c.I_Ui_L {
    return .{ .v1 = 5275, .v2 = 28397, .v3 = 7892 };
}

// From T_Snnn_xax.c:71848:71868
// struct  I_Ui_S  {
//   int v1;
//   unsigned int v2;
//   short v3;
// };

test "I_Ui_S: layout" {
    var lv: c.I_Ui_S = undefined;
    try testing.expectSize(c.I_Ui_S, 12);
    try testing.expectAlign(c.I_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ui_S(.{ .v1 = 2988, .v2 = 13600, .v3 = 2866 }));
}
test "I_Ui_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_S());
}
test "I_Ui_S: C passes to Zig" {
    try testing.expectOk(c.send_I_Ui_S());
}
test "I_Ui_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_S(), .{ .v1 = 2988, .v2 = 13600, .v3 = 2866 });
}
pub export fn zig_assert_I_Ui_S(lv: c.I_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2988) err = 1;
    if (lv.v2 != 13600) err = 2;
    if (lv.v3 != 2866) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_S() c.I_Ui_S {
    return .{ .v1 = 2988, .v2 = 13600, .v3 = 2866 };
}

// From T_Snnn_xax.c:71873:71893
// struct  I_Ui_Uc  {
//   int v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "I_Ui_Uc: layout" {
    var lv: c.I_Ui_Uc = undefined;
    try testing.expectSize(c.I_Ui_Uc, 12);
    try testing.expectAlign(c.I_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ui_Uc(.{ .v1 = 22817, .v2 = 14264, .v3 = 36 }));
}
test "I_Ui_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_Uc());
}
test "I_Ui_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_Ui_Uc());
}
test "I_Ui_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_Uc(), .{ .v1 = 22817, .v2 = 14264, .v3 = 36 });
}
pub export fn zig_assert_I_Ui_Uc(lv: c.I_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22817) err = 1;
    if (lv.v2 != 14264) err = 2;
    if (lv.v3 != 36) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_Uc() c.I_Ui_Uc {
    return .{ .v1 = 22817, .v2 = 14264, .v3 = 36 };
}

// From T_Snnn_xax.c:71898:71918
// struct  I_Ui_Ui  {
//   int v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "I_Ui_Ui: layout" {
    var lv: c.I_Ui_Ui = undefined;
    try testing.expectSize(c.I_Ui_Ui, 12);
    try testing.expectAlign(c.I_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ui_Ui(.{ .v1 = 24298, .v2 = 4517, .v3 = 19633 }));
}
test "I_Ui_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_Ui());
}
test "I_Ui_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_Ui_Ui());
}
test "I_Ui_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_Ui(), .{ .v1 = 24298, .v2 = 4517, .v3 = 19633 });
}
pub export fn zig_assert_I_Ui_Ui(lv: c.I_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24298) err = 1;
    if (lv.v2 != 4517) err = 2;
    if (lv.v3 != 19633) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_Ui() c.I_Ui_Ui {
    return .{ .v1 = 24298, .v2 = 4517, .v3 = 19633 };
}

// From T_Snnn_xax.c:71923:71943
// struct  I_Ui_Ul  {
//   int v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "I_Ui_Ul: layout" {
    var lv: c.I_Ui_Ul = undefined;
    try testing.expectSize(c.I_Ui_Ul, 16);
    try testing.expectAlign(c.I_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ui_Ul(.{ .v1 = 14891, .v2 = 14320, .v3 = 17109 }));
}
test "I_Ui_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_Ul());
}
test "I_Ui_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_Ui_Ul());
}
test "I_Ui_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_Ul(), .{ .v1 = 14891, .v2 = 14320, .v3 = 17109 });
}
pub export fn zig_assert_I_Ui_Ul(lv: c.I_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14891) err = 1;
    if (lv.v2 != 14320) err = 2;
    if (lv.v3 != 17109) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_Ul() c.I_Ui_Ul {
    return .{ .v1 = 14891, .v2 = 14320, .v3 = 17109 };
}

// From T_Snnn_xax.c:71948:71968
// struct  I_Ui_Us  {
//   int v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "I_Ui_Us: layout" {
    var lv: c.I_Ui_Us = undefined;
    try testing.expectSize(c.I_Ui_Us, 12);
    try testing.expectAlign(c.I_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ui_Us(.{ .v1 = 12774, .v2 = 30862, .v3 = 23839 }));
}
test "I_Ui_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_Us());
}
test "I_Ui_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_Ui_Us());
}
test "I_Ui_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_Us(), .{ .v1 = 12774, .v2 = 30862, .v3 = 23839 });
}
pub export fn zig_assert_I_Ui_Us(lv: c.I_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12774) err = 1;
    if (lv.v2 != 30862) err = 2;
    if (lv.v3 != 23839) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_Us() c.I_Ui_Us {
    return .{ .v1 = 12774, .v2 = 30862, .v3 = 23839 };
}

// From T_Snnn_xax.c:71973:71993
// struct  I_Ui_Vp  {
//   int v1;
//   unsigned int v2;
//   void *v3;
// };

test "I_Ui_Vp: layout" {
    var lv: c.I_Ui_Vp = undefined;
    try testing.expectSize(c.I_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ui_Vp(.{ .v1 = 25010, .v2 = 12563, .v3 = null }));
}
test "I_Ui_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ui_Vp());
}
test "I_Ui_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_Ui_Vp());
}
test "I_Ui_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ui_Vp(), .{ .v1 = 25010, .v2 = 12563, .v3 = null });
}
pub export fn zig_assert_I_Ui_Vp(lv: c.I_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25010) err = 1;
    if (lv.v2 != 12563) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_Vp() c.I_Ui_Vp {
    return .{ .v1 = 25010, .v2 = 12563, .v3 = null };
}

// From T_Snnn_xax.c:71998:72016
// struct  I_Ul  {
//   int v1;
//   __tsu64 v2;
// };

test "I_Ul: layout" {
    var lv: c.I_Ul = undefined;
    try testing.expectSize(c.I_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "I_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul(.{ .v1 = 29320, .v2 = 9969 }));
}
test "I_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul());
}
test "I_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul());
}
test "I_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul(), .{ .v1 = 29320, .v2 = 9969 });
}
pub export fn zig_assert_I_Ul(lv: c.I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29320) err = 1;
    if (lv.v2 != 9969) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul() c.I_Ul {
    return .{ .v1 = 29320, .v2 = 9969 };
}

// From T_Snnn_xax.c:72745:72765
// struct  I_Ul_C  {
//   int v1;
//   __tsu64 v2;
//   char v3;
// };

test "I_Ul_C: layout" {
    var lv: c.I_Ul_C = undefined;
    try testing.expectSize(c.I_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_C(.{ .v1 = 20010, .v2 = 6864, .v3 = 53 }));
}
test "I_Ul_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_C());
}
test "I_Ul_C: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_C());
}
test "I_Ul_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_C(), .{ .v1 = 20010, .v2 = 6864, .v3 = 53 });
}
pub export fn zig_assert_I_Ul_C(lv: c.I_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20010) err = 1;
    if (lv.v2 != 6864) err = 2;
    if (lv.v3 != 53) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_C() c.I_Ul_C {
    return .{ .v1 = 20010, .v2 = 6864, .v3 = 53 };
}

// From T_Snnn_xax.c:72770:72790
// struct  I_Ul_D  {
//   int v1;
//   __tsu64 v2;
//   double v3;
// };

test "I_Ul_D: layout" {
    var lv: c.I_Ul_D = undefined;
    try testing.expectSize(c.I_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_D: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_D(.{ .v1 = 31184, .v2 = 21032, .v3 = 1.0 }));
}
test "I_Ul_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_D());
}
test "I_Ul_D: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_D());
}
test "I_Ul_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_D(), .{ .v1 = 31184, .v2 = 21032, .v3 = 1.0 });
}
pub export fn zig_assert_I_Ul_D(lv: c.I_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31184) err = 1;
    if (lv.v2 != 21032) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_D() c.I_Ul_D {
    return .{ .v1 = 31184, .v2 = 21032, .v3 = 1.0 };
}

// From T_Snnn_xax.c:72795:72815
// struct  I_Ul_F  {
//   int v1;
//   __tsu64 v2;
//   float v3;
// };

test "I_Ul_F: layout" {
    var lv: c.I_Ul_F = undefined;
    try testing.expectSize(c.I_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_F: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_F(.{ .v1 = 13631, .v2 = 23584, .v3 = 0.5 }));
}
test "I_Ul_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_F());
}
test "I_Ul_F: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_F());
}
test "I_Ul_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_F(), .{ .v1 = 13631, .v2 = 23584, .v3 = 0.5 });
}
pub export fn zig_assert_I_Ul_F(lv: c.I_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13631) err = 1;
    if (lv.v2 != 23584) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_F() c.I_Ul_F {
    return .{ .v1 = 13631, .v2 = 23584, .v3 = 0.5 };
}

// From T_Snnn_xax.c:72820:72840
// struct  I_Ul_I  {
//   int v1;
//   __tsu64 v2;
//   int v3;
// };

test "I_Ul_I: layout" {
    var lv: c.I_Ul_I = undefined;
    try testing.expectSize(c.I_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_I(.{ .v1 = 24693, .v2 = 10012, .v3 = 25520 }));
}
test "I_Ul_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_I());
}
test "I_Ul_I: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_I());
}
test "I_Ul_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_I(), .{ .v1 = 24693, .v2 = 10012, .v3 = 25520 });
}
pub export fn zig_assert_I_Ul_I(lv: c.I_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24693) err = 1;
    if (lv.v2 != 10012) err = 2;
    if (lv.v3 != 25520) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_I() c.I_Ul_I {
    return .{ .v1 = 24693, .v2 = 10012, .v3 = 25520 };
}

// From T_Snnn_xax.c:72845:72865
// struct  I_Ul_Ip  {
//   int v1;
//   __tsu64 v2;
//   int *v3;
// };

test "I_Ul_Ip: layout" {
    var lv: c.I_Ul_Ip = undefined;
    try testing.expectSize(c.I_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_Ip(.{ .v1 = 24608, .v2 = 31825, .v3 = null }));
}
test "I_Ul_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_Ip());
}
test "I_Ul_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_Ip());
}
test "I_Ul_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_Ip(), .{ .v1 = 24608, .v2 = 31825, .v3 = null });
}
pub export fn zig_assert_I_Ul_Ip(lv: c.I_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24608) err = 1;
    if (lv.v2 != 31825) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_Ip() c.I_Ul_Ip {
    return .{ .v1 = 24608, .v2 = 31825, .v3 = null };
}

// From T_Snnn_xax.c:72870:72890
// struct  I_Ul_L  {
//   int v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "I_Ul_L: layout" {
    var lv: c.I_Ul_L = undefined;
    try testing.expectSize(c.I_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_L(.{ .v1 = 2359, .v2 = 23401, .v3 = 32239 }));
}
test "I_Ul_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_L());
}
test "I_Ul_L: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_L());
}
test "I_Ul_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_L(), .{ .v1 = 2359, .v2 = 23401, .v3 = 32239 });
}
pub export fn zig_assert_I_Ul_L(lv: c.I_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2359) err = 1;
    if (lv.v2 != 23401) err = 2;
    if (lv.v3 != 32239) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_L() c.I_Ul_L {
    return .{ .v1 = 2359, .v2 = 23401, .v3 = 32239 };
}

// From T_Snnn_xax.c:72895:72915
// struct  I_Ul_S  {
//   int v1;
//   __tsu64 v2;
//   short v3;
// };

test "I_Ul_S: layout" {
    var lv: c.I_Ul_S = undefined;
    try testing.expectSize(c.I_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_S(.{ .v1 = 29907, .v2 = 31008, .v3 = 28563 }));
}
test "I_Ul_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_S());
}
test "I_Ul_S: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_S());
}
test "I_Ul_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_S(), .{ .v1 = 29907, .v2 = 31008, .v3 = 28563 });
}
pub export fn zig_assert_I_Ul_S(lv: c.I_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29907) err = 1;
    if (lv.v2 != 31008) err = 2;
    if (lv.v3 != 28563) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_S() c.I_Ul_S {
    return .{ .v1 = 29907, .v2 = 31008, .v3 = 28563 };
}

// From T_Snnn_xax.c:72920:72940
// struct  I_Ul_Uc  {
//   int v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "I_Ul_Uc: layout" {
    var lv: c.I_Ul_Uc = undefined;
    try testing.expectSize(c.I_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_Uc(.{ .v1 = 425, .v2 = 18214, .v3 = 121 }));
}
test "I_Ul_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_Uc());
}
test "I_Ul_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_Uc());
}
test "I_Ul_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_Uc(), .{ .v1 = 425, .v2 = 18214, .v3 = 121 });
}
pub export fn zig_assert_I_Ul_Uc(lv: c.I_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 425) err = 1;
    if (lv.v2 != 18214) err = 2;
    if (lv.v3 != 121) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_Uc() c.I_Ul_Uc {
    return .{ .v1 = 425, .v2 = 18214, .v3 = 121 };
}

// From T_Snnn_xax.c:72945:72965
// struct  I_Ul_Ui  {
//   int v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "I_Ul_Ui: layout" {
    var lv: c.I_Ul_Ui = undefined;
    try testing.expectSize(c.I_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_Ui(.{ .v1 = 19879, .v2 = 18445, .v3 = 2904 }));
}
test "I_Ul_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_Ui());
}
test "I_Ul_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_Ui());
}
test "I_Ul_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_Ui(), .{ .v1 = 19879, .v2 = 18445, .v3 = 2904 });
}
pub export fn zig_assert_I_Ul_Ui(lv: c.I_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19879) err = 1;
    if (lv.v2 != 18445) err = 2;
    if (lv.v3 != 2904) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_Ui() c.I_Ul_Ui {
    return .{ .v1 = 19879, .v2 = 18445, .v3 = 2904 };
}

// From T_Snnn_xax.c:72970:72990
// struct  I_Ul_Ul  {
//   int v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "I_Ul_Ul: layout" {
    var lv: c.I_Ul_Ul = undefined;
    try testing.expectSize(c.I_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_Ul(.{ .v1 = 22126, .v2 = 4806, .v3 = 9350 }));
}
test "I_Ul_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_Ul());
}
test "I_Ul_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_Ul());
}
test "I_Ul_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_Ul(), .{ .v1 = 22126, .v2 = 4806, .v3 = 9350 });
}
pub export fn zig_assert_I_Ul_Ul(lv: c.I_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22126) err = 1;
    if (lv.v2 != 4806) err = 2;
    if (lv.v3 != 9350) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_Ul() c.I_Ul_Ul {
    return .{ .v1 = 22126, .v2 = 4806, .v3 = 9350 };
}

// From T_Snnn_xax.c:72995:73015
// struct  I_Ul_Us  {
//   int v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "I_Ul_Us: layout" {
    var lv: c.I_Ul_Us = undefined;
    try testing.expectSize(c.I_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_Us(.{ .v1 = 23692, .v2 = 18615, .v3 = 3046 }));
}
test "I_Ul_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_Us());
}
test "I_Ul_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_Us());
}
test "I_Ul_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_Us(), .{ .v1 = 23692, .v2 = 18615, .v3 = 3046 });
}
pub export fn zig_assert_I_Ul_Us(lv: c.I_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23692) err = 1;
    if (lv.v2 != 18615) err = 2;
    if (lv.v3 != 3046) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_Us() c.I_Ul_Us {
    return .{ .v1 = 23692, .v2 = 18615, .v3 = 3046 };
}

// From T_Snnn_xax.c:73020:73040
// struct  I_Ul_Vp  {
//   int v1;
//   __tsu64 v2;
//   void *v3;
// };

test "I_Ul_Vp: layout" {
    var lv: c.I_Ul_Vp = undefined;
    try testing.expectSize(c.I_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_Ul_Vp(.{ .v1 = 7177, .v2 = 6432, .v3 = null }));
}
test "I_Ul_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Ul_Vp());
}
test "I_Ul_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_Ul_Vp());
}
test "I_Ul_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Ul_Vp(), .{ .v1 = 7177, .v2 = 6432, .v3 = null });
}
pub export fn zig_assert_I_Ul_Vp(lv: c.I_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7177) err = 1;
    if (lv.v2 != 6432) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_Vp() c.I_Ul_Vp {
    return .{ .v1 = 7177, .v2 = 6432, .v3 = null };
}

// From T_Snnn_xax.c:73045:73063
// struct  I_Us  {
//   int v1;
//   unsigned short v2;
// };

test "I_Us: layout" {
    var lv: c.I_Us = undefined;
    try testing.expectSize(c.I_Us, 8);
    try testing.expectAlign(c.I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_Us(.{ .v1 = 2019, .v2 = 19027 }));
}
test "I_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us());
}
test "I_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_Us());
}
test "I_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us(), .{ .v1 = 2019, .v2 = 19027 });
}
pub export fn zig_assert_I_Us(lv: c.I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2019) err = 1;
    if (lv.v2 != 19027) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us() c.I_Us {
    return .{ .v1 = 2019, .v2 = 19027 };
}

// From T_Snnn_xax.c:73792:73812
// struct  I_Us_C  {
//   int v1;
//   unsigned short v2;
//   char v3;
// };

test "I_Us_C: layout" {
    var lv: c.I_Us_C = undefined;
    try testing.expectSize(c.I_Us_C, 8);
    try testing.expectAlign(c.I_Us_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Us_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_Us_C(.{ .v1 = 13272, .v2 = 23928, .v3 = 68 }));
}
test "I_Us_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_C());
}
test "I_Us_C: C passes to Zig" {
    try testing.expectOk(c.send_I_Us_C());
}
test "I_Us_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_C(), .{ .v1 = 13272, .v2 = 23928, .v3 = 68 });
}
pub export fn zig_assert_I_Us_C(lv: c.I_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13272) err = 1;
    if (lv.v2 != 23928) err = 2;
    if (lv.v3 != 68) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_C() c.I_Us_C {
    return .{ .v1 = 13272, .v2 = 23928, .v3 = 68 };
}

// From T_Snnn_xax.c:73817:73837
// struct  I_Us_D  {
//   int v1;
//   unsigned short v2;
//   double v3;
// };

test "I_Us_D: layout" {
    var lv: c.I_Us_D = undefined;
    try testing.expectSize(c.I_Us_D, 16);
    try testing.expectAlign(c.I_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_D: Zig passes to C" {
    try testing.expectFail(c.assert_I_Us_D(.{ .v1 = 29968, .v2 = 8541, .v3 = 0.875 }));
}
test "I_Us_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_D());
}
test "I_Us_D: C passes to Zig" {
    try testing.expectFail(c.send_I_Us_D());
}
test "I_Us_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_D(), .{ .v1 = 29968, .v2 = 8541, .v3 = 0.875 });
}
pub export fn zig_assert_I_Us_D(lv: c.I_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29968) err = 1;
    if (lv.v2 != 8541) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_D() c.I_Us_D {
    return .{ .v1 = 29968, .v2 = 8541, .v3 = 0.875 };
}

// From T_Snnn_xax.c:73842:73862
// struct  I_Us_F  {
//   int v1;
//   unsigned short v2;
//   float v3;
// };

test "I_Us_F: layout" {
    var lv: c.I_Us_F = undefined;
    try testing.expectSize(c.I_Us_F, 12);
    try testing.expectAlign(c.I_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_F: Zig passes to C" {
    try testing.expectFail(c.assert_I_Us_F(.{ .v1 = 2365, .v2 = 20461, .v3 = 4.5 }));
}
test "I_Us_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_F());
}
test "I_Us_F: C passes to Zig" {
    try testing.expectFail(c.send_I_Us_F());
}
test "I_Us_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_F(), .{ .v1 = 2365, .v2 = 20461, .v3 = 4.5 });
}
pub export fn zig_assert_I_Us_F(lv: c.I_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2365) err = 1;
    if (lv.v2 != 20461) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_F() c.I_Us_F {
    return .{ .v1 = 2365, .v2 = 20461, .v3 = 4.5 };
}

// From T_Snnn_xax.c:73867:73887
// struct  I_Us_I  {
//   int v1;
//   unsigned short v2;
//   int v3;
// };

test "I_Us_I: layout" {
    var lv: c.I_Us_I = undefined;
    try testing.expectSize(c.I_Us_I, 12);
    try testing.expectAlign(c.I_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_Us_I(.{ .v1 = 10524, .v2 = 18897, .v3 = 1284 }));
}
test "I_Us_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_I());
}
test "I_Us_I: C passes to Zig" {
    try testing.expectOk(c.send_I_Us_I());
}
test "I_Us_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_I(), .{ .v1 = 10524, .v2 = 18897, .v3 = 1284 });
}
pub export fn zig_assert_I_Us_I(lv: c.I_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10524) err = 1;
    if (lv.v2 != 18897) err = 2;
    if (lv.v3 != 1284) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_I() c.I_Us_I {
    return .{ .v1 = 10524, .v2 = 18897, .v3 = 1284 };
}

// From T_Snnn_xax.c:73892:73912
// struct  I_Us_Ip  {
//   int v1;
//   unsigned short v2;
//   int *v3;
// };

test "I_Us_Ip: layout" {
    var lv: c.I_Us_Ip = undefined;
    try testing.expectSize(c.I_Us_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_Us_Ip(.{ .v1 = 17227, .v2 = 19352, .v3 = null }));
}
test "I_Us_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_Ip());
}
test "I_Us_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_Us_Ip());
}
test "I_Us_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_Ip(), .{ .v1 = 17227, .v2 = 19352, .v3 = null });
}
pub export fn zig_assert_I_Us_Ip(lv: c.I_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17227) err = 1;
    if (lv.v2 != 19352) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_Ip() c.I_Us_Ip {
    return .{ .v1 = 17227, .v2 = 19352, .v3 = null };
}

// From T_Snnn_xax.c:73917:73937
// struct  I_Us_L  {
//   int v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "I_Us_L: layout" {
    var lv: c.I_Us_L = undefined;
    try testing.expectSize(c.I_Us_L, 16);
    try testing.expectAlign(c.I_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_Us_L(.{ .v1 = 12034, .v2 = 21029, .v3 = 616 }));
}
test "I_Us_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_L());
}
test "I_Us_L: C passes to Zig" {
    try testing.expectOk(c.send_I_Us_L());
}
test "I_Us_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_L(), .{ .v1 = 12034, .v2 = 21029, .v3 = 616 });
}
pub export fn zig_assert_I_Us_L(lv: c.I_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12034) err = 1;
    if (lv.v2 != 21029) err = 2;
    if (lv.v3 != 616) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_L() c.I_Us_L {
    return .{ .v1 = 12034, .v2 = 21029, .v3 = 616 };
}

// From T_Snnn_xax.c:73942:73962
// struct  I_Us_S  {
//   int v1;
//   unsigned short v2;
//   short v3;
// };

test "I_Us_S: layout" {
    var lv: c.I_Us_S = undefined;
    try testing.expectSize(c.I_Us_S, 8);
    try testing.expectAlign(c.I_Us_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Us_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_Us_S(.{ .v1 = 19176, .v2 = 14442, .v3 = 1020 }));
}
test "I_Us_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_S());
}
test "I_Us_S: C passes to Zig" {
    try testing.expectOk(c.send_I_Us_S());
}
test "I_Us_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_S(), .{ .v1 = 19176, .v2 = 14442, .v3 = 1020 });
}
pub export fn zig_assert_I_Us_S(lv: c.I_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19176) err = 1;
    if (lv.v2 != 14442) err = 2;
    if (lv.v3 != 1020) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_S() c.I_Us_S {
    return .{ .v1 = 19176, .v2 = 14442, .v3 = 1020 };
}

// From T_Snnn_xax.c:73967:73987
// struct  I_Us_Uc  {
//   int v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "I_Us_Uc: layout" {
    var lv: c.I_Us_Uc = undefined;
    try testing.expectSize(c.I_Us_Uc, 8);
    try testing.expectAlign(c.I_Us_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Us_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_Us_Uc(.{ .v1 = 8333, .v2 = 4402, .v3 = 66 }));
}
test "I_Us_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_Uc());
}
test "I_Us_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_Us_Uc());
}
test "I_Us_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_Uc(), .{ .v1 = 8333, .v2 = 4402, .v3 = 66 });
}
pub export fn zig_assert_I_Us_Uc(lv: c.I_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8333) err = 1;
    if (lv.v2 != 4402) err = 2;
    if (lv.v3 != 66) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_Uc() c.I_Us_Uc {
    return .{ .v1 = 8333, .v2 = 4402, .v3 = 66 };
}

// From T_Snnn_xax.c:73992:74012
// struct  I_Us_Ui  {
//   int v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "I_Us_Ui: layout" {
    var lv: c.I_Us_Ui = undefined;
    try testing.expectSize(c.I_Us_Ui, 12);
    try testing.expectAlign(c.I_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_Us_Ui(.{ .v1 = 73, .v2 = 15233, .v3 = 28358 }));
}
test "I_Us_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_Ui());
}
test "I_Us_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_Us_Ui());
}
test "I_Us_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_Ui(), .{ .v1 = 73, .v2 = 15233, .v3 = 28358 });
}
pub export fn zig_assert_I_Us_Ui(lv: c.I_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 73) err = 1;
    if (lv.v2 != 15233) err = 2;
    if (lv.v3 != 28358) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_Ui() c.I_Us_Ui {
    return .{ .v1 = 73, .v2 = 15233, .v3 = 28358 };
}

// From T_Snnn_xax.c:74017:74037
// struct  I_Us_Ul  {
//   int v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "I_Us_Ul: layout" {
    var lv: c.I_Us_Ul = undefined;
    try testing.expectSize(c.I_Us_Ul, 16);
    try testing.expectAlign(c.I_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_Us_Ul(.{ .v1 = 27440, .v2 = 23695, .v3 = 21809 }));
}
test "I_Us_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_Ul());
}
test "I_Us_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_Us_Ul());
}
test "I_Us_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_Ul(), .{ .v1 = 27440, .v2 = 23695, .v3 = 21809 });
}
pub export fn zig_assert_I_Us_Ul(lv: c.I_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27440) err = 1;
    if (lv.v2 != 23695) err = 2;
    if (lv.v3 != 21809) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_Ul() c.I_Us_Ul {
    return .{ .v1 = 27440, .v2 = 23695, .v3 = 21809 };
}

// From T_Snnn_xax.c:74042:74062
// struct  I_Us_Us  {
//   int v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "I_Us_Us: layout" {
    var lv: c.I_Us_Us = undefined;
    try testing.expectSize(c.I_Us_Us, 8);
    try testing.expectAlign(c.I_Us_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Us_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_Us_Us(.{ .v1 = 343, .v2 = 3972, .v3 = 6185 }));
}
test "I_Us_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_Us());
}
test "I_Us_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_Us_Us());
}
test "I_Us_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_Us(), .{ .v1 = 343, .v2 = 3972, .v3 = 6185 });
}
pub export fn zig_assert_I_Us_Us(lv: c.I_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 343) err = 1;
    if (lv.v2 != 3972) err = 2;
    if (lv.v3 != 6185) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_Us() c.I_Us_Us {
    return .{ .v1 = 343, .v2 = 3972, .v3 = 6185 };
}

// From T_Snnn_xax.c:74067:74087
// struct  I_Us_Vp  {
//   int v1;
//   unsigned short v2;
//   void *v3;
// };

test "I_Us_Vp: layout" {
    var lv: c.I_Us_Vp = undefined;
    try testing.expectSize(c.I_Us_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_Us_Vp(.{ .v1 = 20872, .v2 = 4076, .v3 = null }));
}
test "I_Us_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Us_Vp());
}
test "I_Us_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_Us_Vp());
}
test "I_Us_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Us_Vp(), .{ .v1 = 20872, .v2 = 4076, .v3 = null });
}
pub export fn zig_assert_I_Us_Vp(lv: c.I_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20872) err = 1;
    if (lv.v2 != 4076) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_Vp() c.I_Us_Vp {
    return .{ .v1 = 20872, .v2 = 4076, .v3 = null };
}

// From T_Snnn_xax.c:74092:74110
// struct  I_Vp  {
//   int v1;
//   void *v2;
// };

test "I_Vp: layout" {
    var lv: c.I_Vp = undefined;
    try testing.expectSize(c.I_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "I_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp(.{ .v1 = 14125, .v2 = null }));
}
test "I_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp());
}
test "I_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp());
}
test "I_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp(), .{ .v1 = 14125, .v2 = null });
}
pub export fn zig_assert_I_Vp(lv: c.I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14125) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp() c.I_Vp {
    return .{ .v1 = 14125, .v2 = null };
}

// From T_Snnn_xax.c:74839:74859
// struct  I_Vp_C  {
//   int v1;
//   void *v2;
//   char v3;
// };

test "I_Vp_C: layout" {
    var lv: c.I_Vp_C = undefined;
    try testing.expectSize(c.I_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_C: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_C(.{ .v1 = 5602, .v2 = null, .v3 = 126 }));
}
test "I_Vp_C: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_C());
}
test "I_Vp_C: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_C());
}
test "I_Vp_C: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_C(), .{ .v1 = 5602, .v2 = null, .v3 = 126 });
}
pub export fn zig_assert_I_Vp_C(lv: c.I_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5602) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 126) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_C() c.I_Vp_C {
    return .{ .v1 = 5602, .v2 = null, .v3 = 126 };
}

// From T_Snnn_xax.c:74864:74884
// struct  I_Vp_D  {
//   int v1;
//   void *v2;
//   double v3;
// };

test "I_Vp_D: layout" {
    var lv: c.I_Vp_D = undefined;
    try testing.expectSize(c.I_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_D: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_D(.{ .v1 = 4595, .v2 = null, .v3 = 1.0 }));
}
test "I_Vp_D: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_D());
}
test "I_Vp_D: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_D());
}
test "I_Vp_D: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_D(), .{ .v1 = 4595, .v2 = null, .v3 = 1.0 });
}
pub export fn zig_assert_I_Vp_D(lv: c.I_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4595) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_D() c.I_Vp_D {
    return .{ .v1 = 4595, .v2 = null, .v3 = 1.0 };
}

// From T_Snnn_xax.c:74889:74909
// struct  I_Vp_F  {
//   int v1;
//   void *v2;
//   float v3;
// };

test "I_Vp_F: layout" {
    var lv: c.I_Vp_F = undefined;
    try testing.expectSize(c.I_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_F: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_F(.{ .v1 = 10132, .v2 = null, .v3 = 4.5 }));
}
test "I_Vp_F: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_F());
}
test "I_Vp_F: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_F());
}
test "I_Vp_F: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_F(), .{ .v1 = 10132, .v2 = null, .v3 = 4.5 });
}
pub export fn zig_assert_I_Vp_F(lv: c.I_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10132) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_F() c.I_Vp_F {
    return .{ .v1 = 10132, .v2 = null, .v3 = 4.5 };
}

// From T_Snnn_xax.c:74914:74934
// struct  I_Vp_I  {
//   int v1;
//   void *v2;
//   int v3;
// };

test "I_Vp_I: layout" {
    var lv: c.I_Vp_I = undefined;
    try testing.expectSize(c.I_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_I: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_I(.{ .v1 = 105, .v2 = null, .v3 = 25037 }));
}
test "I_Vp_I: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_I());
}
test "I_Vp_I: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_I());
}
test "I_Vp_I: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_I(), .{ .v1 = 105, .v2 = null, .v3 = 25037 });
}
pub export fn zig_assert_I_Vp_I(lv: c.I_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 105) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 25037) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_I() c.I_Vp_I {
    return .{ .v1 = 105, .v2 = null, .v3 = 25037 };
}

// From T_Snnn_xax.c:74939:74959
// struct  I_Vp_Ip  {
//   int v1;
//   void *v2;
//   int *v3;
// };

test "I_Vp_Ip: layout" {
    var lv: c.I_Vp_Ip = undefined;
    try testing.expectSize(c.I_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Ip: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_Ip(.{ .v1 = 30849, .v2 = null, .v3 = null }));
}
test "I_Vp_Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_Ip());
}
test "I_Vp_Ip: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_Ip());
}
test "I_Vp_Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_Ip(), .{ .v1 = 30849, .v2 = null, .v3 = null });
}
pub export fn zig_assert_I_Vp_Ip(lv: c.I_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30849) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_Ip() c.I_Vp_Ip {
    return .{ .v1 = 30849, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:74964:74984
// struct  I_Vp_L  {
//   int v1;
//   void *v2;
//   __tsi64 v3;
// };

test "I_Vp_L: layout" {
    var lv: c.I_Vp_L = undefined;
    try testing.expectSize(c.I_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_L: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_L(.{ .v1 = 30130, .v2 = null, .v3 = 7703 }));
}
test "I_Vp_L: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_L());
}
test "I_Vp_L: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_L());
}
test "I_Vp_L: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_L(), .{ .v1 = 30130, .v2 = null, .v3 = 7703 });
}
pub export fn zig_assert_I_Vp_L(lv: c.I_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30130) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7703) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_L() c.I_Vp_L {
    return .{ .v1 = 30130, .v2 = null, .v3 = 7703 };
}

// From T_Snnn_xax.c:74989:75009
// struct  I_Vp_S  {
//   int v1;
//   void *v2;
//   short v3;
// };

test "I_Vp_S: layout" {
    var lv: c.I_Vp_S = undefined;
    try testing.expectSize(c.I_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_S: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_S(.{ .v1 = 7707, .v2 = null, .v3 = 4892 }));
}
test "I_Vp_S: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_S());
}
test "I_Vp_S: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_S());
}
test "I_Vp_S: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_S(), .{ .v1 = 7707, .v2 = null, .v3 = 4892 });
}
pub export fn zig_assert_I_Vp_S(lv: c.I_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7707) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4892) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_S() c.I_Vp_S {
    return .{ .v1 = 7707, .v2 = null, .v3 = 4892 };
}

// From T_Snnn_xax.c:75014:75034
// struct  I_Vp_Uc  {
//   int v1;
//   void *v2;
//   unsigned char v3;
// };

test "I_Vp_Uc: layout" {
    var lv: c.I_Vp_Uc = undefined;
    try testing.expectSize(c.I_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Uc: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_Uc(.{ .v1 = 2818, .v2 = null, .v3 = 85 }));
}
test "I_Vp_Uc: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_Uc());
}
test "I_Vp_Uc: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_Uc());
}
test "I_Vp_Uc: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_Uc(), .{ .v1 = 2818, .v2 = null, .v3 = 85 });
}
pub export fn zig_assert_I_Vp_Uc(lv: c.I_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2818) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 85) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_Uc() c.I_Vp_Uc {
    return .{ .v1 = 2818, .v2 = null, .v3 = 85 };
}

// From T_Snnn_xax.c:75039:75059
// struct  I_Vp_Ui  {
//   int v1;
//   void *v2;
//   unsigned int v3;
// };

test "I_Vp_Ui: layout" {
    var lv: c.I_Vp_Ui = undefined;
    try testing.expectSize(c.I_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Ui: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_Ui(.{ .v1 = 16364, .v2 = null, .v3 = 5730 }));
}
test "I_Vp_Ui: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_Ui());
}
test "I_Vp_Ui: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_Ui());
}
test "I_Vp_Ui: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_Ui(), .{ .v1 = 16364, .v2 = null, .v3 = 5730 });
}
pub export fn zig_assert_I_Vp_Ui(lv: c.I_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16364) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 5730) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_Ui() c.I_Vp_Ui {
    return .{ .v1 = 16364, .v2 = null, .v3 = 5730 };
}

// From T_Snnn_xax.c:75064:75084
// struct  I_Vp_Ul  {
//   int v1;
//   void *v2;
//   __tsu64 v3;
// };

test "I_Vp_Ul: layout" {
    var lv: c.I_Vp_Ul = undefined;
    try testing.expectSize(c.I_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Ul: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_Ul(.{ .v1 = 12923, .v2 = null, .v3 = 21204 }));
}
test "I_Vp_Ul: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_Ul());
}
test "I_Vp_Ul: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_Ul());
}
test "I_Vp_Ul: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_Ul(), .{ .v1 = 12923, .v2 = null, .v3 = 21204 });
}
pub export fn zig_assert_I_Vp_Ul(lv: c.I_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12923) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 21204) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_Ul() c.I_Vp_Ul {
    return .{ .v1 = 12923, .v2 = null, .v3 = 21204 };
}

// From T_Snnn_xax.c:75089:75109
// struct  I_Vp_Us  {
//   int v1;
//   void *v2;
//   unsigned short v3;
// };

test "I_Vp_Us: layout" {
    var lv: c.I_Vp_Us = undefined;
    try testing.expectSize(c.I_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Us: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_Us(.{ .v1 = 19642, .v2 = null, .v3 = 20053 }));
}
test "I_Vp_Us: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_Us());
}
test "I_Vp_Us: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_Us());
}
test "I_Vp_Us: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_Us(), .{ .v1 = 19642, .v2 = null, .v3 = 20053 });
}
pub export fn zig_assert_I_Vp_Us(lv: c.I_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19642) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 20053) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_Us() c.I_Vp_Us {
    return .{ .v1 = 19642, .v2 = null, .v3 = 20053 };
}

// From T_Snnn_xax.c:75114:75134
// struct  I_Vp_Vp  {
//   int v1;
//   void *v2;
//   void *v3;
// };

test "I_Vp_Vp: layout" {
    var lv: c.I_Vp_Vp = undefined;
    try testing.expectSize(c.I_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Vp: Zig passes to C" {
    try testing.expectOk(c.assert_I_Vp_Vp(.{ .v1 = 9745, .v2 = null, .v3 = null }));
}
test "I_Vp_Vp: Zig returns to C" {
    try testing.expectOk(c.assert_ret_I_Vp_Vp());
}
test "I_Vp_Vp: C passes to Zig" {
    try testing.expectOk(c.send_I_Vp_Vp());
}
test "I_Vp_Vp: C returns to Zig" {
    try testing.expectEqual(c.ret_I_Vp_Vp(), .{ .v1 = 9745, .v2 = null, .v3 = null });
}
pub export fn zig_assert_I_Vp_Vp(lv: c.I_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9745) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_Vp() c.I_Vp_Vp {
    return .{ .v1 = 9745, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:75139:75155
// struct  Ip  {
//   int *v1;
// };

test "Ip: layout" {
    var lv: c.Ip = undefined;
    try testing.expectSize(c.Ip, ABISELECT(8, 4));
    try testing.expectAlign(c.Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "Ip: Zig passes to C" {
    try testing.expectOk(c.assert_Ip(.{ .v1 = null }));
}
test "Ip: Zig returns to C" {
    try testing.expectOk(c.assert_ret_Ip());
}
test "Ip: C passes to Zig" {
    try testing.expectOk(c.send_Ip());
}
test "Ip: C returns to Zig" {
    try testing.expectEqual(c.ret_Ip(), .{ .v1 = null });
}
pub export fn zig_assert_Ip(lv: c.Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip() c.Ip {
    return .{ .v1 = null };
}
