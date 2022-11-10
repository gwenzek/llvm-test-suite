const std = @import("std");
const testing = @import("testing.zig");
const builtin = @import("builtin");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xba.h");
});

// From T_Snnn_xba.c:529:549
// struct  Uc_D_C  {
//   unsigned char v1;
//   double v2;
//   char v3;
// };

test "Uc_D_C: layout" {
    var lv: c.Uc_D_C = undefined;
    try testing.expectSize(c.Uc_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_C(.{ .v1 = 3, .v2 = -0.25, .v3 = 89 }), outcome);
}
test "Uc_D_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_C());
}
test "Uc_D_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_C(), outcome);
}
test "Uc_D_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_C(), .{ .v1 = 3, .v2 = -0.25, .v3 = 89 });
}
pub export fn zig_assert_Uc_D_C(lv: c.Uc_D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 89) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_C() c.Uc_D_C {
    return .{ .v1 = 3, .v2 = -0.25, .v3 = 89 };
}

// From T_Snnn_xba.c:554:574
// struct  Uc_D_D  {
//   unsigned char v1;
//   double v2;
//   double v3;
// };

test "Uc_D_D: layout" {
    var lv: c.Uc_D_D = undefined;
    try testing.expectSize(c.Uc_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_D(.{ .v1 = 9, .v2 = 7.0, .v3 = 1.0 }), outcome);
}
test "Uc_D_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_D());
}
test "Uc_D_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_D(), outcome);
}
test "Uc_D_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_D(), .{ .v1 = 9, .v2 = 7.0, .v3 = 1.0 });
}
pub export fn zig_assert_Uc_D_D(lv: c.Uc_D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_D() c.Uc_D_D {
    return .{ .v1 = 9, .v2 = 7.0, .v3 = 1.0 };
}

// From T_Snnn_xba.c:579:599
// struct  Uc_D_F  {
//   unsigned char v1;
//   double v2;
//   float v3;
// };

test "Uc_D_F: layout" {
    var lv: c.Uc_D_F = undefined;
    try testing.expectSize(c.Uc_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_F(.{ .v1 = 95, .v2 = 4.5, .v3 = 0.5 }), outcome);
}
test "Uc_D_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_F());
}
test "Uc_D_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_F(), outcome);
}
test "Uc_D_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_F(), .{ .v1 = 95, .v2 = 4.5, .v3 = 0.5 });
}
pub export fn zig_assert_Uc_D_F(lv: c.Uc_D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 95) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_F() c.Uc_D_F {
    return .{ .v1 = 95, .v2 = 4.5, .v3 = 0.5 };
}

// From T_Snnn_xba.c:604:624
// struct  Uc_D_I  {
//   unsigned char v1;
//   double v2;
//   int v3;
// };

test "Uc_D_I: layout" {
    var lv: c.Uc_D_I = undefined;
    try testing.expectSize(c.Uc_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_I(.{ .v1 = 26, .v2 = -2.125, .v3 = 22319 }), outcome);
}
test "Uc_D_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_I());
}
test "Uc_D_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_I(), outcome);
}
test "Uc_D_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_I(), .{ .v1 = 26, .v2 = -2.125, .v3 = 22319 });
}
pub export fn zig_assert_Uc_D_I(lv: c.Uc_D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 22319) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_I() c.Uc_D_I {
    return .{ .v1 = 26, .v2 = -2.125, .v3 = 22319 };
}

// From T_Snnn_xba.c:629:649
// struct  Uc_D_Ip  {
//   unsigned char v1;
//   double v2;
//   int *v3;
// };

test "Uc_D_Ip: layout" {
    var lv: c.Uc_D_Ip = undefined;
    try testing.expectSize(c.Uc_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_Ip(.{ .v1 = 101, .v2 = 1.0, .v3 = null }), outcome);
}
test "Uc_D_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_Ip());
}
test "Uc_D_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_Ip(), outcome);
}
test "Uc_D_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_Ip(), .{ .v1 = 101, .v2 = 1.0, .v3 = null });
}
pub export fn zig_assert_Uc_D_Ip(lv: c.Uc_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 101) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_Ip() c.Uc_D_Ip {
    return .{ .v1 = 101, .v2 = 1.0, .v3 = null };
}

// From T_Snnn_xba.c:654:674
// struct  Uc_D_L  {
//   unsigned char v1;
//   double v2;
//   __tsi64 v3;
// };

test "Uc_D_L: layout" {
    var lv: c.Uc_D_L = undefined;
    try testing.expectSize(c.Uc_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_L(.{ .v1 = 0, .v2 = -2.125, .v3 = 4136 }), outcome);
}
test "Uc_D_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_L());
}
test "Uc_D_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_L(), outcome);
}
test "Uc_D_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_L(), .{ .v1 = 0, .v2 = -2.125, .v3 = 4136 });
}
pub export fn zig_assert_Uc_D_L(lv: c.Uc_D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 4136) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_L() c.Uc_D_L {
    return .{ .v1 = 0, .v2 = -2.125, .v3 = 4136 };
}

// From T_Snnn_xba.c:679:699
// struct  Uc_D_S  {
//   unsigned char v1;
//   double v2;
//   short v3;
// };

test "Uc_D_S: layout" {
    var lv: c.Uc_D_S = undefined;
    try testing.expectSize(c.Uc_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_S(.{ .v1 = 1, .v2 = 0.875, .v3 = 29141 }), outcome);
}
test "Uc_D_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_S());
}
test "Uc_D_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_S(), outcome);
}
test "Uc_D_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_S(), .{ .v1 = 1, .v2 = 0.875, .v3 = 29141 });
}
pub export fn zig_assert_Uc_D_S(lv: c.Uc_D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 29141) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_S() c.Uc_D_S {
    return .{ .v1 = 1, .v2 = 0.875, .v3 = 29141 };
}

// From T_Snnn_xba.c:704:724
// struct  Uc_D_Uc  {
//   unsigned char v1;
//   double v2;
//   unsigned char v3;
// };

test "Uc_D_Uc: layout" {
    var lv: c.Uc_D_Uc = undefined;
    try testing.expectSize(c.Uc_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_Uc(.{ .v1 = 9, .v2 = 1.0, .v3 = 63 }), outcome);
}
test "Uc_D_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_Uc());
}
test "Uc_D_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_Uc(), outcome);
}
test "Uc_D_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_Uc(), .{ .v1 = 9, .v2 = 1.0, .v3 = 63 });
}
pub export fn zig_assert_Uc_D_Uc(lv: c.Uc_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 63) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_Uc() c.Uc_D_Uc {
    return .{ .v1 = 9, .v2 = 1.0, .v3 = 63 };
}

// From T_Snnn_xba.c:729:749
// struct  Uc_D_Ui  {
//   unsigned char v1;
//   double v2;
//   unsigned int v3;
// };

test "Uc_D_Ui: layout" {
    var lv: c.Uc_D_Ui = undefined;
    try testing.expectSize(c.Uc_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_Ui(.{ .v1 = 10, .v2 = 1.0, .v3 = 27979 }), outcome);
}
test "Uc_D_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_Ui());
}
test "Uc_D_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_Ui(), outcome);
}
test "Uc_D_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_Ui(), .{ .v1 = 10, .v2 = 1.0, .v3 = 27979 });
}
pub export fn zig_assert_Uc_D_Ui(lv: c.Uc_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 27979) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_Ui() c.Uc_D_Ui {
    return .{ .v1 = 10, .v2 = 1.0, .v3 = 27979 };
}

// From T_Snnn_xba.c:754:774
// struct  Uc_D_Ul  {
//   unsigned char v1;
//   double v2;
//   __tsu64 v3;
// };

test "Uc_D_Ul: layout" {
    var lv: c.Uc_D_Ul = undefined;
    try testing.expectSize(c.Uc_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_Ul(.{ .v1 = 9, .v2 = 4.5, .v3 = 7107 }), outcome);
}
test "Uc_D_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_Ul());
}
test "Uc_D_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_Ul(), outcome);
}
test "Uc_D_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_Ul(), .{ .v1 = 9, .v2 = 4.5, .v3 = 7107 });
}
pub export fn zig_assert_Uc_D_Ul(lv: c.Uc_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 7107) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_Ul() c.Uc_D_Ul {
    return .{ .v1 = 9, .v2 = 4.5, .v3 = 7107 };
}

// From T_Snnn_xba.c:779:799
// struct  Uc_D_Us  {
//   unsigned char v1;
//   double v2;
//   unsigned short v3;
// };

test "Uc_D_Us: layout" {
    var lv: c.Uc_D_Us = undefined;
    try testing.expectSize(c.Uc_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_Us(.{ .v1 = 61, .v2 = 7.0, .v3 = 24060 }), outcome);
}
test "Uc_D_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_Us());
}
test "Uc_D_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_Us(), outcome);
}
test "Uc_D_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_Us(), .{ .v1 = 61, .v2 = 7.0, .v3 = 24060 });
}
pub export fn zig_assert_Uc_D_Us(lv: c.Uc_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 61) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 24060) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_Us() c.Uc_D_Us {
    return .{ .v1 = 61, .v2 = 7.0, .v3 = 24060 };
}

// From T_Snnn_xba.c:804:824
// struct  Uc_D_Vp  {
//   unsigned char v1;
//   double v2;
//   void *v3;
// };

test "Uc_D_Vp: layout" {
    var lv: c.Uc_D_Vp = undefined;
    try testing.expectSize(c.Uc_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_D_Vp(.{ .v1 = 28, .v2 = -0.25, .v3 = null }), outcome);
}
test "Uc_D_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D_Vp());
}
test "Uc_D_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_D_Vp(), outcome);
}
test "Uc_D_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D_Vp(), .{ .v1 = 28, .v2 = -0.25, .v3 = null });
}
pub export fn zig_assert_Uc_D_Vp(lv: c.Uc_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_Vp() c.Uc_D_Vp {
    return .{ .v1 = 28, .v2 = -0.25, .v3 = null };
}

// From T_Snnn_xba.c:829:847
// struct  Uc_F  {
//   unsigned char v1;
//   float v2;
// };

test "Uc_F: layout" {
    var lv: c.Uc_F = undefined;
    try testing.expectSize(c.Uc_F, 8);
    try testing.expectAlign(c.Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Uc_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_F(.{ .v1 = 95, .v2 = 0.875 }), outcome);
}
test "Uc_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F());
}
test "Uc_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F(), outcome);
}
test "Uc_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F(), .{ .v1 = 95, .v2 = 0.875 });
}
pub export fn zig_assert_Uc_F(lv: c.Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 95) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F() c.Uc_F {
    return .{ .v1 = 95, .v2 = 0.875 };
}

// From T_Snnn_xba.c:1576:1596
// struct  Uc_F_C  {
//   unsigned char v1;
//   float v2;
//   char v3;
// };

test "Uc_F_C: layout" {
    var lv: c.Uc_F_C = undefined;
    try testing.expectSize(c.Uc_F_C, 12);
    try testing.expectAlign(c.Uc_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_F_C(.{ .v1 = 97, .v2 = 0.5, .v3 = 83 }), outcome);
}
test "Uc_F_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_C());
}
test "Uc_F_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_C(), outcome);
}
test "Uc_F_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_C(), .{ .v1 = 97, .v2 = 0.5, .v3 = 83 });
}
pub export fn zig_assert_Uc_F_C(lv: c.Uc_F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 97) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 83) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_C() c.Uc_F_C {
    return .{ .v1 = 97, .v2 = 0.5, .v3 = 83 };
}

// From T_Snnn_xba.c:1601:1621
// struct  Uc_F_D  {
//   unsigned char v1;
//   float v2;
//   double v3;
// };

test "Uc_F_D: layout" {
    var lv: c.Uc_F_D = undefined;
    try testing.expectSize(c.Uc_F_D, 16);
    try testing.expectAlign(c.Uc_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Uc_F_D(.{ .v1 = 82, .v2 = 0.5, .v3 = 7.0 }), outcome);
}
test "Uc_F_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_D());
}
test "Uc_F_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_D(), outcome);
}
test "Uc_F_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_D(), .{ .v1 = 82, .v2 = 0.5, .v3 = 7.0 });
}
pub export fn zig_assert_Uc_F_D(lv: c.Uc_F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 82) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_D() c.Uc_F_D {
    return .{ .v1 = 82, .v2 = 0.5, .v3 = 7.0 };
}

// From T_Snnn_xba.c:1626:1646
// struct  Uc_F_F  {
//   unsigned char v1;
//   float v2;
//   float v3;
// };

test "Uc_F_F: layout" {
    var lv: c.Uc_F_F = undefined;
    try testing.expectSize(c.Uc_F_F, 12);
    try testing.expectAlign(c.Uc_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Uc_F_F(.{ .v1 = 41, .v2 = 0.5, .v3 = -2.125 }), outcome);
}
test "Uc_F_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_F());
}
test "Uc_F_F: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_F(), outcome);
}
test "Uc_F_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_F(), .{ .v1 = 41, .v2 = 0.5, .v3 = -2.125 });
}
pub export fn zig_assert_Uc_F_F(lv: c.Uc_F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 41) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_F() c.Uc_F_F {
    return .{ .v1 = 41, .v2 = 0.5, .v3 = -2.125 };
}

// From T_Snnn_xba.c:1651:1671
// struct  Uc_F_I  {
//   unsigned char v1;
//   float v2;
//   int v3;
// };

test "Uc_F_I: layout" {
    var lv: c.Uc_F_I = undefined;
    try testing.expectSize(c.Uc_F_I, 12);
    try testing.expectAlign(c.Uc_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_F_I(.{ .v1 = 91, .v2 = 1.0, .v3 = 10292 }), outcome);
}
test "Uc_F_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_I());
}
test "Uc_F_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_I(), outcome);
}
test "Uc_F_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_I(), .{ .v1 = 91, .v2 = 1.0, .v3 = 10292 });
}
pub export fn zig_assert_Uc_F_I(lv: c.Uc_F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 91) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 10292) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_I() c.Uc_F_I {
    return .{ .v1 = 91, .v2 = 1.0, .v3 = 10292 };
}

// From T_Snnn_xba.c:1676:1696
// struct  Uc_F_Ip  {
//   unsigned char v1;
//   float v2;
//   int *v3;
// };

test "Uc_F_Ip: layout" {
    var lv: c.Uc_F_Ip = undefined;
    try testing.expectSize(c.Uc_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_F_Ip(.{ .v1 = 3, .v2 = -0.25, .v3 = null }), outcome);
}
test "Uc_F_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_Ip());
}
test "Uc_F_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_Ip(), outcome);
}
test "Uc_F_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_Ip(), .{ .v1 = 3, .v2 = -0.25, .v3 = null });
}
pub export fn zig_assert_Uc_F_Ip(lv: c.Uc_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_Ip() c.Uc_F_Ip {
    return .{ .v1 = 3, .v2 = -0.25, .v3 = null };
}

// From T_Snnn_xba.c:1701:1721
// struct  Uc_F_L  {
//   unsigned char v1;
//   float v2;
//   __tsi64 v3;
// };

test "Uc_F_L: layout" {
    var lv: c.Uc_F_L = undefined;
    try testing.expectSize(c.Uc_F_L, 16);
    try testing.expectAlign(c.Uc_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_F_L(.{ .v1 = 0, .v2 = 0.5, .v3 = 30255 }), outcome);
}
test "Uc_F_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_L());
}
test "Uc_F_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_L(), outcome);
}
test "Uc_F_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_L(), .{ .v1 = 0, .v2 = 0.5, .v3 = 30255 });
}
pub export fn zig_assert_Uc_F_L(lv: c.Uc_F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 30255) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_L() c.Uc_F_L {
    return .{ .v1 = 0, .v2 = 0.5, .v3 = 30255 };
}

// From T_Snnn_xba.c:1726:1746
// struct  Uc_F_S  {
//   unsigned char v1;
//   float v2;
//   short v3;
// };

test "Uc_F_S: layout" {
    var lv: c.Uc_F_S = undefined;
    try testing.expectSize(c.Uc_F_S, 12);
    try testing.expectAlign(c.Uc_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_F_S(.{ .v1 = 103, .v2 = 1.0, .v3 = 15970 }), outcome);
}
test "Uc_F_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_S());
}
test "Uc_F_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_S(), outcome);
}
test "Uc_F_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_S(), .{ .v1 = 103, .v2 = 1.0, .v3 = 15970 });
}
pub export fn zig_assert_Uc_F_S(lv: c.Uc_F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 103) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 15970) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_S() c.Uc_F_S {
    return .{ .v1 = 103, .v2 = 1.0, .v3 = 15970 };
}

// From T_Snnn_xba.c:1751:1771
// struct  Uc_F_Uc  {
//   unsigned char v1;
//   float v2;
//   unsigned char v3;
// };

test "Uc_F_Uc: layout" {
    var lv: c.Uc_F_Uc = undefined;
    try testing.expectSize(c.Uc_F_Uc, 12);
    try testing.expectAlign(c.Uc_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_F_Uc(.{ .v1 = 53, .v2 = 7.0, .v3 = 94 }), outcome);
}
test "Uc_F_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_Uc());
}
test "Uc_F_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_Uc(), outcome);
}
test "Uc_F_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_Uc(), .{ .v1 = 53, .v2 = 7.0, .v3 = 94 });
}
pub export fn zig_assert_Uc_F_Uc(lv: c.Uc_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 53) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 94) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_Uc() c.Uc_F_Uc {
    return .{ .v1 = 53, .v2 = 7.0, .v3 = 94 };
}

// From T_Snnn_xba.c:1776:1796
// struct  Uc_F_Ui  {
//   unsigned char v1;
//   float v2;
//   unsigned int v3;
// };

test "Uc_F_Ui: layout" {
    var lv: c.Uc_F_Ui = undefined;
    try testing.expectSize(c.Uc_F_Ui, 12);
    try testing.expectAlign(c.Uc_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_F_Ui(.{ .v1 = 88, .v2 = 0.5, .v3 = 1854 }), outcome);
}
test "Uc_F_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_Ui());
}
test "Uc_F_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_Ui(), outcome);
}
test "Uc_F_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_Ui(), .{ .v1 = 88, .v2 = 0.5, .v3 = 1854 });
}
pub export fn zig_assert_Uc_F_Ui(lv: c.Uc_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 88) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 1854) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_Ui() c.Uc_F_Ui {
    return .{ .v1 = 88, .v2 = 0.5, .v3 = 1854 };
}

// From T_Snnn_xba.c:1801:1821
// struct  Uc_F_Ul  {
//   unsigned char v1;
//   float v2;
//   __tsu64 v3;
// };

test "Uc_F_Ul: layout" {
    var lv: c.Uc_F_Ul = undefined;
    try testing.expectSize(c.Uc_F_Ul, 16);
    try testing.expectAlign(c.Uc_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_F_Ul(.{ .v1 = 96, .v2 = -2.125, .v3 = 10992 }), outcome);
}
test "Uc_F_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_Ul());
}
test "Uc_F_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_Ul(), outcome);
}
test "Uc_F_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_Ul(), .{ .v1 = 96, .v2 = -2.125, .v3 = 10992 });
}
pub export fn zig_assert_Uc_F_Ul(lv: c.Uc_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 96) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 10992) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_Ul() c.Uc_F_Ul {
    return .{ .v1 = 96, .v2 = -2.125, .v3 = 10992 };
}

// From T_Snnn_xba.c:1826:1846
// struct  Uc_F_Us  {
//   unsigned char v1;
//   float v2;
//   unsigned short v3;
// };

test "Uc_F_Us: layout" {
    var lv: c.Uc_F_Us = undefined;
    try testing.expectSize(c.Uc_F_Us, 12);
    try testing.expectAlign(c.Uc_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_F_Us(.{ .v1 = 59, .v2 = 0.875, .v3 = 6216 }), outcome);
}
test "Uc_F_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_Us());
}
test "Uc_F_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_Us(), outcome);
}
test "Uc_F_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_Us(), .{ .v1 = 59, .v2 = 0.875, .v3 = 6216 });
}
pub export fn zig_assert_Uc_F_Us(lv: c.Uc_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 59) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 6216) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_Us() c.Uc_F_Us {
    return .{ .v1 = 59, .v2 = 0.875, .v3 = 6216 };
}

// From T_Snnn_xba.c:1851:1871
// struct  Uc_F_Vp  {
//   unsigned char v1;
//   float v2;
//   void *v3;
// };

test "Uc_F_Vp: layout" {
    var lv: c.Uc_F_Vp = undefined;
    try testing.expectSize(c.Uc_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_F_Vp(.{ .v1 = 5, .v2 = 4.5, .v3 = null }), outcome);
}
test "Uc_F_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_F_Vp());
}
test "Uc_F_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_F_Vp(), outcome);
}
test "Uc_F_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_F_Vp(), .{ .v1 = 5, .v2 = 4.5, .v3 = null });
}
pub export fn zig_assert_Uc_F_Vp(lv: c.Uc_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_Vp() c.Uc_F_Vp {
    return .{ .v1 = 5, .v2 = 4.5, .v3 = null };
}

// From T_Snnn_xba.c:1876:1894
// struct  Uc_I  {
//   unsigned char v1;
//   int v2;
// };

test "Uc_I: layout" {
    var lv: c.Uc_I = undefined;
    try testing.expectSize(c.Uc_I, 8);
    try testing.expectAlign(c.Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Uc_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_I(.{ .v1 = 114, .v2 = 16216 }), outcome);
}
test "Uc_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I());
}
test "Uc_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I(), outcome);
}
test "Uc_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I(), .{ .v1 = 114, .v2 = 16216 });
}
pub export fn zig_assert_Uc_I(lv: c.Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 114) err = 1;
    if (lv.v2 != 16216) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I() c.Uc_I {
    return .{ .v1 = 114, .v2 = 16216 };
}

// From T_Snnn_xba.c:2623:2643
// struct  Uc_I_C  {
//   unsigned char v1;
//   int v2;
//   char v3;
// };

test "Uc_I_C: layout" {
    var lv: c.Uc_I_C = undefined;
    try testing.expectSize(c.Uc_I_C, 12);
    try testing.expectAlign(c.Uc_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_I_C(.{ .v1 = 124, .v2 = 25853, .v3 = 104 }), outcome);
}
test "Uc_I_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_C());
}
test "Uc_I_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_C(), outcome);
}
test "Uc_I_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_C(), .{ .v1 = 124, .v2 = 25853, .v3 = 104 });
}
pub export fn zig_assert_Uc_I_C(lv: c.Uc_I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 124) err = 1;
    if (lv.v2 != 25853) err = 2;
    if (lv.v3 != 104) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_C() c.Uc_I_C {
    return .{ .v1 = 124, .v2 = 25853, .v3 = 104 };
}

// From T_Snnn_xba.c:2648:2668
// struct  Uc_I_D  {
//   unsigned char v1;
//   int v2;
//   double v3;
// };

test "Uc_I_D: layout" {
    var lv: c.Uc_I_D = undefined;
    try testing.expectSize(c.Uc_I_D, 16);
    try testing.expectAlign(c.Uc_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Uc_I_D(.{ .v1 = 108, .v2 = 16942, .v3 = 0.875 }), outcome);
}
test "Uc_I_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_D());
}
test "Uc_I_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_D(), outcome);
}
test "Uc_I_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_D(), .{ .v1 = 108, .v2 = 16942, .v3 = 0.875 });
}
pub export fn zig_assert_Uc_I_D(lv: c.Uc_I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 108) err = 1;
    if (lv.v2 != 16942) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_D() c.Uc_I_D {
    return .{ .v1 = 108, .v2 = 16942, .v3 = 0.875 };
}

// From T_Snnn_xba.c:2673:2693
// struct  Uc_I_F  {
//   unsigned char v1;
//   int v2;
//   float v3;
// };

test "Uc_I_F: layout" {
    var lv: c.Uc_I_F = undefined;
    try testing.expectSize(c.Uc_I_F, 12);
    try testing.expectAlign(c.Uc_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Uc_I_F(.{ .v1 = 29, .v2 = 12247, .v3 = 7.0 }), outcome);
}
test "Uc_I_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_F());
}
test "Uc_I_F: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_F(), outcome);
}
test "Uc_I_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_F(), .{ .v1 = 29, .v2 = 12247, .v3 = 7.0 });
}
pub export fn zig_assert_Uc_I_F(lv: c.Uc_I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29) err = 1;
    if (lv.v2 != 12247) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_F() c.Uc_I_F {
    return .{ .v1 = 29, .v2 = 12247, .v3 = 7.0 };
}

// From T_Snnn_xba.c:2698:2718
// struct  Uc_I_I  {
//   unsigned char v1;
//   int v2;
//   int v3;
// };

test "Uc_I_I: layout" {
    var lv: c.Uc_I_I = undefined;
    try testing.expectSize(c.Uc_I_I, 12);
    try testing.expectAlign(c.Uc_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_I_I(.{ .v1 = 60, .v2 = 7544, .v3 = 6612 }), outcome);
}
test "Uc_I_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_I());
}
test "Uc_I_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_I(), outcome);
}
test "Uc_I_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_I(), .{ .v1 = 60, .v2 = 7544, .v3 = 6612 });
}
pub export fn zig_assert_Uc_I_I(lv: c.Uc_I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 60) err = 1;
    if (lv.v2 != 7544) err = 2;
    if (lv.v3 != 6612) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_I() c.Uc_I_I {
    return .{ .v1 = 60, .v2 = 7544, .v3 = 6612 };
}

// From T_Snnn_xba.c:2723:2743
// struct  Uc_I_Ip  {
//   unsigned char v1;
//   int v2;
//   int *v3;
// };

test "Uc_I_Ip: layout" {
    var lv: c.Uc_I_Ip = undefined;
    try testing.expectSize(c.Uc_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_I_Ip(.{ .v1 = 18, .v2 = 32746, .v3 = null }), outcome);
}
test "Uc_I_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_Ip());
}
test "Uc_I_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_Ip(), outcome);
}
test "Uc_I_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_Ip(), .{ .v1 = 18, .v2 = 32746, .v3 = null });
}
pub export fn zig_assert_Uc_I_Ip(lv: c.Uc_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18) err = 1;
    if (lv.v2 != 32746) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_Ip() c.Uc_I_Ip {
    return .{ .v1 = 18, .v2 = 32746, .v3 = null };
}

// From T_Snnn_xba.c:2748:2768
// struct  Uc_I_L  {
//   unsigned char v1;
//   int v2;
//   __tsi64 v3;
// };

test "Uc_I_L: layout" {
    var lv: c.Uc_I_L = undefined;
    try testing.expectSize(c.Uc_I_L, 16);
    try testing.expectAlign(c.Uc_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_I_L(.{ .v1 = 113, .v2 = 36, .v3 = 32506 }), outcome);
}
test "Uc_I_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_L());
}
test "Uc_I_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_L(), outcome);
}
test "Uc_I_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_L(), .{ .v1 = 113, .v2 = 36, .v3 = 32506 });
}
pub export fn zig_assert_Uc_I_L(lv: c.Uc_I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 113) err = 1;
    if (lv.v2 != 36) err = 2;
    if (lv.v3 != 32506) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_L() c.Uc_I_L {
    return .{ .v1 = 113, .v2 = 36, .v3 = 32506 };
}

// From T_Snnn_xba.c:2773:2793
// struct  Uc_I_S  {
//   unsigned char v1;
//   int v2;
//   short v3;
// };

test "Uc_I_S: layout" {
    var lv: c.Uc_I_S = undefined;
    try testing.expectSize(c.Uc_I_S, 12);
    try testing.expectAlign(c.Uc_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_I_S(.{ .v1 = 58, .v2 = 28832, .v3 = 32618 }), outcome);
}
test "Uc_I_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_S());
}
test "Uc_I_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_S(), outcome);
}
test "Uc_I_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_S(), .{ .v1 = 58, .v2 = 28832, .v3 = 32618 });
}
pub export fn zig_assert_Uc_I_S(lv: c.Uc_I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 58) err = 1;
    if (lv.v2 != 28832) err = 2;
    if (lv.v3 != 32618) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_S() c.Uc_I_S {
    return .{ .v1 = 58, .v2 = 28832, .v3 = 32618 };
}

// From T_Snnn_xba.c:2798:2818
// struct  Uc_I_Uc  {
//   unsigned char v1;
//   int v2;
//   unsigned char v3;
// };

test "Uc_I_Uc: layout" {
    var lv: c.Uc_I_Uc = undefined;
    try testing.expectSize(c.Uc_I_Uc, 12);
    try testing.expectAlign(c.Uc_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_I_Uc(.{ .v1 = 113, .v2 = 28710, .v3 = 106 }), outcome);
}
test "Uc_I_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_Uc());
}
test "Uc_I_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_Uc(), outcome);
}
test "Uc_I_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_Uc(), .{ .v1 = 113, .v2 = 28710, .v3 = 106 });
}
pub export fn zig_assert_Uc_I_Uc(lv: c.Uc_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 113) err = 1;
    if (lv.v2 != 28710) err = 2;
    if (lv.v3 != 106) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_Uc() c.Uc_I_Uc {
    return .{ .v1 = 113, .v2 = 28710, .v3 = 106 };
}

// From T_Snnn_xba.c:2823:2843
// struct  Uc_I_Ui  {
//   unsigned char v1;
//   int v2;
//   unsigned int v3;
// };

test "Uc_I_Ui: layout" {
    var lv: c.Uc_I_Ui = undefined;
    try testing.expectSize(c.Uc_I_Ui, 12);
    try testing.expectAlign(c.Uc_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_I_Ui(.{ .v1 = 15, .v2 = 11634, .v3 = 8763 }), outcome);
}
test "Uc_I_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_Ui());
}
test "Uc_I_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_Ui(), outcome);
}
test "Uc_I_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_Ui(), .{ .v1 = 15, .v2 = 11634, .v3 = 8763 });
}
pub export fn zig_assert_Uc_I_Ui(lv: c.Uc_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15) err = 1;
    if (lv.v2 != 11634) err = 2;
    if (lv.v3 != 8763) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_Ui() c.Uc_I_Ui {
    return .{ .v1 = 15, .v2 = 11634, .v3 = 8763 };
}

// From T_Snnn_xba.c:2848:2868
// struct  Uc_I_Ul  {
//   unsigned char v1;
//   int v2;
//   __tsu64 v3;
// };

test "Uc_I_Ul: layout" {
    var lv: c.Uc_I_Ul = undefined;
    try testing.expectSize(c.Uc_I_Ul, 16);
    try testing.expectAlign(c.Uc_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_I_Ul(.{ .v1 = 105, .v2 = 18283, .v3 = 21389 }), outcome);
}
test "Uc_I_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_Ul());
}
test "Uc_I_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_Ul(), outcome);
}
test "Uc_I_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_Ul(), .{ .v1 = 105, .v2 = 18283, .v3 = 21389 });
}
pub export fn zig_assert_Uc_I_Ul(lv: c.Uc_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 105) err = 1;
    if (lv.v2 != 18283) err = 2;
    if (lv.v3 != 21389) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_Ul() c.Uc_I_Ul {
    return .{ .v1 = 105, .v2 = 18283, .v3 = 21389 };
}

// From T_Snnn_xba.c:2873:2893
// struct  Uc_I_Us  {
//   unsigned char v1;
//   int v2;
//   unsigned short v3;
// };

test "Uc_I_Us: layout" {
    var lv: c.Uc_I_Us = undefined;
    try testing.expectSize(c.Uc_I_Us, 12);
    try testing.expectAlign(c.Uc_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_I_Us(.{ .v1 = 75, .v2 = 2635, .v3 = 14892 }), outcome);
}
test "Uc_I_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_Us());
}
test "Uc_I_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_Us(), outcome);
}
test "Uc_I_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_Us(), .{ .v1 = 75, .v2 = 2635, .v3 = 14892 });
}
pub export fn zig_assert_Uc_I_Us(lv: c.Uc_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 75) err = 1;
    if (lv.v2 != 2635) err = 2;
    if (lv.v3 != 14892) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_Us() c.Uc_I_Us {
    return .{ .v1 = 75, .v2 = 2635, .v3 = 14892 };
}

// From T_Snnn_xba.c:2898:2918
// struct  Uc_I_Vp  {
//   unsigned char v1;
//   int v2;
//   void *v3;
// };

test "Uc_I_Vp: layout" {
    var lv: c.Uc_I_Vp = undefined;
    try testing.expectSize(c.Uc_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_I_Vp(.{ .v1 = 96, .v2 = 16481, .v3 = null }), outcome);
}
test "Uc_I_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_I_Vp());
}
test "Uc_I_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_I_Vp(), outcome);
}
test "Uc_I_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_I_Vp(), .{ .v1 = 96, .v2 = 16481, .v3 = null });
}
pub export fn zig_assert_Uc_I_Vp(lv: c.Uc_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 96) err = 1;
    if (lv.v2 != 16481) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_Vp() c.Uc_I_Vp {
    return .{ .v1 = 96, .v2 = 16481, .v3 = null };
}

// From T_Snnn_xba.c:2923:2941
// struct  Uc_Ip  {
//   unsigned char v1;
//   int *v2;
// };

test "Uc_Ip: layout" {
    var lv: c.Uc_Ip = undefined;
    try testing.expectSize(c.Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Uc_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip(.{ .v1 = 12, .v2 = null }), outcome);
}
test "Uc_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip());
}
test "Uc_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip(), outcome);
}
test "Uc_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip(), .{ .v1 = 12, .v2 = null });
}
pub export fn zig_assert_Uc_Ip(lv: c.Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip() c.Uc_Ip {
    return .{ .v1 = 12, .v2 = null };
}

// From T_Snnn_xba.c:3670:3690
// struct  Uc_Ip_C  {
//   unsigned char v1;
//   int *v2;
//   char v3;
// };

test "Uc_Ip_C: layout" {
    var lv: c.Uc_Ip_C = undefined;
    try testing.expectSize(c.Uc_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_C(.{ .v1 = 58, .v2 = null, .v3 = 120 }), outcome);
}
test "Uc_Ip_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_C());
}
test "Uc_Ip_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_C(), outcome);
}
test "Uc_Ip_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_C(), .{ .v1 = 58, .v2 = null, .v3 = 120 });
}
pub export fn zig_assert_Uc_Ip_C(lv: c.Uc_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 58) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 120) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_C() c.Uc_Ip_C {
    return .{ .v1 = 58, .v2 = null, .v3 = 120 };
}

// From T_Snnn_xba.c:3695:3715
// struct  Uc_Ip_D  {
//   unsigned char v1;
//   int *v2;
//   double v3;
// };

test "Uc_Ip_D: layout" {
    var lv: c.Uc_Ip_D = undefined;
    try testing.expectSize(c.Uc_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_D(.{ .v1 = 66, .v2 = null, .v3 = 7.0 }), outcome);
}
test "Uc_Ip_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_D());
}
test "Uc_Ip_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_D(), outcome);
}
test "Uc_Ip_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_D(), .{ .v1 = 66, .v2 = null, .v3 = 7.0 });
}
pub export fn zig_assert_Uc_Ip_D(lv: c.Uc_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 66) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_D() c.Uc_Ip_D {
    return .{ .v1 = 66, .v2 = null, .v3 = 7.0 };
}

// From T_Snnn_xba.c:3720:3740
// struct  Uc_Ip_F  {
//   unsigned char v1;
//   int *v2;
//   float v3;
// };

test "Uc_Ip_F: layout" {
    var lv: c.Uc_Ip_F = undefined;
    try testing.expectSize(c.Uc_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_F(.{ .v1 = 103, .v2 = null, .v3 = 1.0 }), outcome);
}
test "Uc_Ip_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_F());
}
test "Uc_Ip_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_F(), outcome);
}
test "Uc_Ip_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_F(), .{ .v1 = 103, .v2 = null, .v3 = 1.0 });
}
pub export fn zig_assert_Uc_Ip_F(lv: c.Uc_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 103) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_F() c.Uc_Ip_F {
    return .{ .v1 = 103, .v2 = null, .v3 = 1.0 };
}

// From T_Snnn_xba.c:3745:3765
// struct  Uc_Ip_I  {
//   unsigned char v1;
//   int *v2;
//   int v3;
// };

test "Uc_Ip_I: layout" {
    var lv: c.Uc_Ip_I = undefined;
    try testing.expectSize(c.Uc_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_I(.{ .v1 = 20, .v2 = null, .v3 = 13416 }), outcome);
}
test "Uc_Ip_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_I());
}
test "Uc_Ip_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_I(), outcome);
}
test "Uc_Ip_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_I(), .{ .v1 = 20, .v2 = null, .v3 = 13416 });
}
pub export fn zig_assert_Uc_Ip_I(lv: c.Uc_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 13416) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_I() c.Uc_Ip_I {
    return .{ .v1 = 20, .v2 = null, .v3 = 13416 };
}

// From T_Snnn_xba.c:3770:3790
// struct  Uc_Ip_Ip  {
//   unsigned char v1;
//   int *v2;
//   int *v3;
// };

test "Uc_Ip_Ip: layout" {
    var lv: c.Uc_Ip_Ip = undefined;
    try testing.expectSize(c.Uc_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_Ip(.{ .v1 = 117, .v2 = null, .v3 = null }), outcome);
}
test "Uc_Ip_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_Ip());
}
test "Uc_Ip_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_Ip(), outcome);
}
test "Uc_Ip_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_Ip(), .{ .v1 = 117, .v2 = null, .v3 = null });
}
pub export fn zig_assert_Uc_Ip_Ip(lv: c.Uc_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 117) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_Ip() c.Uc_Ip_Ip {
    return .{ .v1 = 117, .v2 = null, .v3 = null };
}

// From T_Snnn_xba.c:3795:3815
// struct  Uc_Ip_L  {
//   unsigned char v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Uc_Ip_L: layout" {
    var lv: c.Uc_Ip_L = undefined;
    try testing.expectSize(c.Uc_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_L(.{ .v1 = 31, .v2 = null, .v3 = 30388 }), outcome);
}
test "Uc_Ip_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_L());
}
test "Uc_Ip_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_L(), outcome);
}
test "Uc_Ip_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_L(), .{ .v1 = 31, .v2 = null, .v3 = 30388 });
}
pub export fn zig_assert_Uc_Ip_L(lv: c.Uc_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 30388) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_L() c.Uc_Ip_L {
    return .{ .v1 = 31, .v2 = null, .v3 = 30388 };
}

// From T_Snnn_xba.c:3820:3840
// struct  Uc_Ip_S  {
//   unsigned char v1;
//   int *v2;
//   short v3;
// };

test "Uc_Ip_S: layout" {
    var lv: c.Uc_Ip_S = undefined;
    try testing.expectSize(c.Uc_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_S(.{ .v1 = 104, .v2 = null, .v3 = 28603 }), outcome);
}
test "Uc_Ip_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_S());
}
test "Uc_Ip_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_S(), outcome);
}
test "Uc_Ip_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_S(), .{ .v1 = 104, .v2 = null, .v3 = 28603 });
}
pub export fn zig_assert_Uc_Ip_S(lv: c.Uc_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 104) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 28603) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_S() c.Uc_Ip_S {
    return .{ .v1 = 104, .v2 = null, .v3 = 28603 };
}

// From T_Snnn_xba.c:3845:3865
// struct  Uc_Ip_Uc  {
//   unsigned char v1;
//   int *v2;
//   unsigned char v3;
// };

test "Uc_Ip_Uc: layout" {
    var lv: c.Uc_Ip_Uc = undefined;
    try testing.expectSize(c.Uc_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_Uc(.{ .v1 = 35, .v2 = null, .v3 = 13 }), outcome);
}
test "Uc_Ip_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_Uc());
}
test "Uc_Ip_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_Uc(), outcome);
}
test "Uc_Ip_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_Uc(), .{ .v1 = 35, .v2 = null, .v3 = 13 });
}
pub export fn zig_assert_Uc_Ip_Uc(lv: c.Uc_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 35) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 13) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_Uc() c.Uc_Ip_Uc {
    return .{ .v1 = 35, .v2 = null, .v3 = 13 };
}

// From T_Snnn_xba.c:3870:3890
// struct  Uc_Ip_Ui  {
//   unsigned char v1;
//   int *v2;
//   unsigned int v3;
// };

test "Uc_Ip_Ui: layout" {
    var lv: c.Uc_Ip_Ui = undefined;
    try testing.expectSize(c.Uc_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_Ui(.{ .v1 = 20, .v2 = null, .v3 = 16954 }), outcome);
}
test "Uc_Ip_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_Ui());
}
test "Uc_Ip_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_Ui(), outcome);
}
test "Uc_Ip_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_Ui(), .{ .v1 = 20, .v2 = null, .v3 = 16954 });
}
pub export fn zig_assert_Uc_Ip_Ui(lv: c.Uc_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 16954) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_Ui() c.Uc_Ip_Ui {
    return .{ .v1 = 20, .v2 = null, .v3 = 16954 };
}

// From T_Snnn_xba.c:3895:3915
// struct  Uc_Ip_Ul  {
//   unsigned char v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Uc_Ip_Ul: layout" {
    var lv: c.Uc_Ip_Ul = undefined;
    try testing.expectSize(c.Uc_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_Ul(.{ .v1 = 89, .v2 = null, .v3 = 18772 }), outcome);
}
test "Uc_Ip_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_Ul());
}
test "Uc_Ip_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_Ul(), outcome);
}
test "Uc_Ip_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_Ul(), .{ .v1 = 89, .v2 = null, .v3 = 18772 });
}
pub export fn zig_assert_Uc_Ip_Ul(lv: c.Uc_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 89) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 18772) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_Ul() c.Uc_Ip_Ul {
    return .{ .v1 = 89, .v2 = null, .v3 = 18772 };
}

// From T_Snnn_xba.c:3920:3940
// struct  Uc_Ip_Us  {
//   unsigned char v1;
//   int *v2;
//   unsigned short v3;
// };

test "Uc_Ip_Us: layout" {
    var lv: c.Uc_Ip_Us = undefined;
    try testing.expectSize(c.Uc_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_Us(.{ .v1 = 48, .v2 = null, .v3 = 8281 }), outcome);
}
test "Uc_Ip_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_Us());
}
test "Uc_Ip_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_Us(), outcome);
}
test "Uc_Ip_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_Us(), .{ .v1 = 48, .v2 = null, .v3 = 8281 });
}
pub export fn zig_assert_Uc_Ip_Us(lv: c.Uc_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 48) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 8281) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_Us() c.Uc_Ip_Us {
    return .{ .v1 = 48, .v2 = null, .v3 = 8281 };
}

// From T_Snnn_xba.c:3945:3965
// struct  Uc_Ip_Vp  {
//   unsigned char v1;
//   int *v2;
//   void *v3;
// };

test "Uc_Ip_Vp: layout" {
    var lv: c.Uc_Ip_Vp = undefined;
    try testing.expectSize(c.Uc_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ip_Vp(.{ .v1 = 33, .v2 = null, .v3 = null }), outcome);
}
test "Uc_Ip_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ip_Vp());
}
test "Uc_Ip_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ip_Vp(), outcome);
}
test "Uc_Ip_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ip_Vp(), .{ .v1 = 33, .v2 = null, .v3 = null });
}
pub export fn zig_assert_Uc_Ip_Vp(lv: c.Uc_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 33) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_Vp() c.Uc_Ip_Vp {
    return .{ .v1 = 33, .v2 = null, .v3 = null };
}

// From T_Snnn_xba.c:3970:3988
// struct  Uc_L  {
//   unsigned char v1;
//   __tsi64 v2;
// };

test "Uc_L: layout" {
    var lv: c.Uc_L = undefined;
    try testing.expectSize(c.Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Uc_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L(.{ .v1 = 119, .v2 = 15974 }), outcome);
}
test "Uc_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L());
}
test "Uc_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L(), outcome);
}
test "Uc_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L(), .{ .v1 = 119, .v2 = 15974 });
}
pub export fn zig_assert_Uc_L(lv: c.Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 119) err = 1;
    if (lv.v2 != 15974) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L() c.Uc_L {
    return .{ .v1 = 119, .v2 = 15974 };
}

// From T_Snnn_xba.c:4717:4737
// struct  Uc_L_C  {
//   unsigned char v1;
//   __tsi64 v2;
//   char v3;
// };

test "Uc_L_C: layout" {
    var lv: c.Uc_L_C = undefined;
    try testing.expectSize(c.Uc_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_C(.{ .v1 = 50, .v2 = 21453, .v3 = 112 }), outcome);
}
test "Uc_L_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_C());
}
test "Uc_L_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_C(), outcome);
}
test "Uc_L_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_C(), .{ .v1 = 50, .v2 = 21453, .v3 = 112 });
}
pub export fn zig_assert_Uc_L_C(lv: c.Uc_L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 50) err = 1;
    if (lv.v2 != 21453) err = 2;
    if (lv.v3 != 112) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_C() c.Uc_L_C {
    return .{ .v1 = 50, .v2 = 21453, .v3 = 112 };
}

// From T_Snnn_xba.c:4742:4762
// struct  Uc_L_D  {
//   unsigned char v1;
//   __tsi64 v2;
//   double v3;
// };

test "Uc_L_D: layout" {
    var lv: c.Uc_L_D = undefined;
    try testing.expectSize(c.Uc_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_D(.{ .v1 = 42, .v2 = 12771, .v3 = 7.0 }), outcome);
}
test "Uc_L_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_D());
}
test "Uc_L_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_D(), outcome);
}
test "Uc_L_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_D(), .{ .v1 = 42, .v2 = 12771, .v3 = 7.0 });
}
pub export fn zig_assert_Uc_L_D(lv: c.Uc_L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 42) err = 1;
    if (lv.v2 != 12771) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_D() c.Uc_L_D {
    return .{ .v1 = 42, .v2 = 12771, .v3 = 7.0 };
}

// From T_Snnn_xba.c:4767:4787
// struct  Uc_L_F  {
//   unsigned char v1;
//   __tsi64 v2;
//   float v3;
// };

test "Uc_L_F: layout" {
    var lv: c.Uc_L_F = undefined;
    try testing.expectSize(c.Uc_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_F(.{ .v1 = 39, .v2 = 19443, .v3 = 7.0 }), outcome);
}
test "Uc_L_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_F());
}
test "Uc_L_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_F(), outcome);
}
test "Uc_L_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_F(), .{ .v1 = 39, .v2 = 19443, .v3 = 7.0 });
}
pub export fn zig_assert_Uc_L_F(lv: c.Uc_L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 39) err = 1;
    if (lv.v2 != 19443) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_F() c.Uc_L_F {
    return .{ .v1 = 39, .v2 = 19443, .v3 = 7.0 };
}

// From T_Snnn_xba.c:4792:4812
// struct  Uc_L_I  {
//   unsigned char v1;
//   __tsi64 v2;
//   int v3;
// };

test "Uc_L_I: layout" {
    var lv: c.Uc_L_I = undefined;
    try testing.expectSize(c.Uc_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_I(.{ .v1 = 93, .v2 = 28305, .v3 = 18385 }), outcome);
}
test "Uc_L_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_I());
}
test "Uc_L_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_I(), outcome);
}
test "Uc_L_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_I(), .{ .v1 = 93, .v2 = 28305, .v3 = 18385 });
}
pub export fn zig_assert_Uc_L_I(lv: c.Uc_L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 93) err = 1;
    if (lv.v2 != 28305) err = 2;
    if (lv.v3 != 18385) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_I() c.Uc_L_I {
    return .{ .v1 = 93, .v2 = 28305, .v3 = 18385 };
}

// From T_Snnn_xba.c:4817:4837
// struct  Uc_L_Ip  {
//   unsigned char v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Uc_L_Ip: layout" {
    var lv: c.Uc_L_Ip = undefined;
    try testing.expectSize(c.Uc_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_Ip(.{ .v1 = 10, .v2 = 8726, .v3 = null }), outcome);
}
test "Uc_L_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_Ip());
}
test "Uc_L_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_Ip(), outcome);
}
test "Uc_L_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_Ip(), .{ .v1 = 10, .v2 = 8726, .v3 = null });
}
pub export fn zig_assert_Uc_L_Ip(lv: c.Uc_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10) err = 1;
    if (lv.v2 != 8726) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_Ip() c.Uc_L_Ip {
    return .{ .v1 = 10, .v2 = 8726, .v3 = null };
}

// From T_Snnn_xba.c:4842:4862
// struct  Uc_L_L  {
//   unsigned char v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Uc_L_L: layout" {
    var lv: c.Uc_L_L = undefined;
    try testing.expectSize(c.Uc_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_L(.{ .v1 = 112, .v2 = 7512, .v3 = 12279 }), outcome);
}
test "Uc_L_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_L());
}
test "Uc_L_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_L(), outcome);
}
test "Uc_L_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_L(), .{ .v1 = 112, .v2 = 7512, .v3 = 12279 });
}
pub export fn zig_assert_Uc_L_L(lv: c.Uc_L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 112) err = 1;
    if (lv.v2 != 7512) err = 2;
    if (lv.v3 != 12279) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_L() c.Uc_L_L {
    return .{ .v1 = 112, .v2 = 7512, .v3 = 12279 };
}

// From T_Snnn_xba.c:4867:4887
// struct  Uc_L_S  {
//   unsigned char v1;
//   __tsi64 v2;
//   short v3;
// };

test "Uc_L_S: layout" {
    var lv: c.Uc_L_S = undefined;
    try testing.expectSize(c.Uc_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_S(.{ .v1 = 5, .v2 = 19826, .v3 = 20687 }), outcome);
}
test "Uc_L_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_S());
}
test "Uc_L_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_S(), outcome);
}
test "Uc_L_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_S(), .{ .v1 = 5, .v2 = 19826, .v3 = 20687 });
}
pub export fn zig_assert_Uc_L_S(lv: c.Uc_L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5) err = 1;
    if (lv.v2 != 19826) err = 2;
    if (lv.v3 != 20687) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_S() c.Uc_L_S {
    return .{ .v1 = 5, .v2 = 19826, .v3 = 20687 };
}

// From T_Snnn_xba.c:4892:4912
// struct  Uc_L_Uc  {
//   unsigned char v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Uc_L_Uc: layout" {
    var lv: c.Uc_L_Uc = undefined;
    try testing.expectSize(c.Uc_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_Uc(.{ .v1 = 14, .v2 = 18144, .v3 = 34 }), outcome);
}
test "Uc_L_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_Uc());
}
test "Uc_L_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_Uc(), outcome);
}
test "Uc_L_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_Uc(), .{ .v1 = 14, .v2 = 18144, .v3 = 34 });
}
pub export fn zig_assert_Uc_L_Uc(lv: c.Uc_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14) err = 1;
    if (lv.v2 != 18144) err = 2;
    if (lv.v3 != 34) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_Uc() c.Uc_L_Uc {
    return .{ .v1 = 14, .v2 = 18144, .v3 = 34 };
}

// From T_Snnn_xba.c:4917:4937
// struct  Uc_L_Ui  {
//   unsigned char v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Uc_L_Ui: layout" {
    var lv: c.Uc_L_Ui = undefined;
    try testing.expectSize(c.Uc_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_Ui(.{ .v1 = 42, .v2 = 2689, .v3 = 3812 }), outcome);
}
test "Uc_L_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_Ui());
}
test "Uc_L_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_Ui(), outcome);
}
test "Uc_L_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_Ui(), .{ .v1 = 42, .v2 = 2689, .v3 = 3812 });
}
pub export fn zig_assert_Uc_L_Ui(lv: c.Uc_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 42) err = 1;
    if (lv.v2 != 2689) err = 2;
    if (lv.v3 != 3812) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_Ui() c.Uc_L_Ui {
    return .{ .v1 = 42, .v2 = 2689, .v3 = 3812 };
}

// From T_Snnn_xba.c:4942:4962
// struct  Uc_L_Ul  {
//   unsigned char v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Uc_L_Ul: layout" {
    var lv: c.Uc_L_Ul = undefined;
    try testing.expectSize(c.Uc_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_Ul(.{ .v1 = 125, .v2 = 19855, .v3 = 32534 }), outcome);
}
test "Uc_L_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_Ul());
}
test "Uc_L_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_Ul(), outcome);
}
test "Uc_L_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_Ul(), .{ .v1 = 125, .v2 = 19855, .v3 = 32534 });
}
pub export fn zig_assert_Uc_L_Ul(lv: c.Uc_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 125) err = 1;
    if (lv.v2 != 19855) err = 2;
    if (lv.v3 != 32534) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_Ul() c.Uc_L_Ul {
    return .{ .v1 = 125, .v2 = 19855, .v3 = 32534 };
}

// From T_Snnn_xba.c:4967:4987
// struct  Uc_L_Us  {
//   unsigned char v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Uc_L_Us: layout" {
    var lv: c.Uc_L_Us = undefined;
    try testing.expectSize(c.Uc_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_Us(.{ .v1 = 120, .v2 = 9826, .v3 = 1663 }), outcome);
}
test "Uc_L_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_Us());
}
test "Uc_L_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_Us(), outcome);
}
test "Uc_L_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_Us(), .{ .v1 = 120, .v2 = 9826, .v3 = 1663 });
}
pub export fn zig_assert_Uc_L_Us(lv: c.Uc_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 120) err = 1;
    if (lv.v2 != 9826) err = 2;
    if (lv.v3 != 1663) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_Us() c.Uc_L_Us {
    return .{ .v1 = 120, .v2 = 9826, .v3 = 1663 };
}

// From T_Snnn_xba.c:4992:5012
// struct  Uc_L_Vp  {
//   unsigned char v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Uc_L_Vp: layout" {
    var lv: c.Uc_L_Vp = undefined;
    try testing.expectSize(c.Uc_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_L_Vp(.{ .v1 = 112, .v2 = 14009, .v3 = null }), outcome);
}
test "Uc_L_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_L_Vp());
}
test "Uc_L_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_L_Vp(), outcome);
}
test "Uc_L_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_L_Vp(), .{ .v1 = 112, .v2 = 14009, .v3 = null });
}
pub export fn zig_assert_Uc_L_Vp(lv: c.Uc_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 112) err = 1;
    if (lv.v2 != 14009) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_Vp() c.Uc_L_Vp {
    return .{ .v1 = 112, .v2 = 14009, .v3 = null };
}

// From T_Snnn_xba.c:5017:5035
// struct  Uc_S  {
//   unsigned char v1;
//   short v2;
// };

test "Uc_S: layout" {
    var lv: c.Uc_S = undefined;
    try testing.expectSize(c.Uc_S, 4);
    try testing.expectAlign(c.Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "Uc_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S(.{ .v1 = 34, .v2 = 19847 }), outcome);
}
test "Uc_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S());
}
test "Uc_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S(), outcome);
}
test "Uc_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S(), .{ .v1 = 34, .v2 = 19847 });
}
pub export fn zig_assert_Uc_S(lv: c.Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 34) err = 1;
    if (lv.v2 != 19847) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S() c.Uc_S {
    return .{ .v1 = 34, .v2 = 19847 };
}

// From T_Snnn_xba.c:5764:5784
// struct  Uc_S_C  {
//   unsigned char v1;
//   short v2;
//   char v3;
// };

test "Uc_S_C: layout" {
    var lv: c.Uc_S_C = undefined;
    try testing.expectSize(c.Uc_S_C, 6);
    try testing.expectAlign(c.Uc_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_S_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S_C(.{ .v1 = 74, .v2 = 21816, .v3 = 88 }), outcome);
}
test "Uc_S_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_C());
}
test "Uc_S_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_C(), outcome);
}
test "Uc_S_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_C(), .{ .v1 = 74, .v2 = 21816, .v3 = 88 });
}
pub export fn zig_assert_Uc_S_C(lv: c.Uc_S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 74) err = 1;
    if (lv.v2 != 21816) err = 2;
    if (lv.v3 != 88) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_C() c.Uc_S_C {
    return .{ .v1 = 74, .v2 = 21816, .v3 = 88 };
}

// From T_Snnn_xba.c:5789:5809
// struct  Uc_S_D  {
//   unsigned char v1;
//   short v2;
//   double v3;
// };

test "Uc_S_D: layout" {
    var lv: c.Uc_S_D = undefined;
    try testing.expectSize(c.Uc_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_S_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Uc_S_D(.{ .v1 = 87, .v2 = 14939, .v3 = -2.125 }), outcome);
}
test "Uc_S_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_D());
}
test "Uc_S_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_D(), outcome);
}
test "Uc_S_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_D(), .{ .v1 = 87, .v2 = 14939, .v3 = -2.125 });
}
pub export fn zig_assert_Uc_S_D(lv: c.Uc_S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 87) err = 1;
    if (lv.v2 != 14939) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_D() c.Uc_S_D {
    return .{ .v1 = 87, .v2 = 14939, .v3 = -2.125 };
}

// From T_Snnn_xba.c:5814:5834
// struct  Uc_S_F  {
//   unsigned char v1;
//   short v2;
//   float v3;
// };

test "Uc_S_F: layout" {
    var lv: c.Uc_S_F = undefined;
    try testing.expectSize(c.Uc_S_F, 8);
    try testing.expectAlign(c.Uc_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_S_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S_F(.{ .v1 = 9, .v2 = 29623, .v3 = 0.5 }), outcome);
}
test "Uc_S_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_F());
}
test "Uc_S_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_F(), outcome);
}
test "Uc_S_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_F(), .{ .v1 = 9, .v2 = 29623, .v3 = 0.5 });
}
pub export fn zig_assert_Uc_S_F(lv: c.Uc_S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 29623) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_F() c.Uc_S_F {
    return .{ .v1 = 9, .v2 = 29623, .v3 = 0.5 };
}

// From T_Snnn_xba.c:5839:5859
// struct  Uc_S_I  {
//   unsigned char v1;
//   short v2;
//   int v3;
// };

test "Uc_S_I: layout" {
    var lv: c.Uc_S_I = undefined;
    try testing.expectSize(c.Uc_S_I, 8);
    try testing.expectAlign(c.Uc_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_S_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S_I(.{ .v1 = 9, .v2 = 6063, .v3 = 7793 }), outcome);
}
test "Uc_S_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_I());
}
test "Uc_S_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_I(), outcome);
}
test "Uc_S_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_I(), .{ .v1 = 9, .v2 = 6063, .v3 = 7793 });
}
pub export fn zig_assert_Uc_S_I(lv: c.Uc_S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9) err = 1;
    if (lv.v2 != 6063) err = 2;
    if (lv.v3 != 7793) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_I() c.Uc_S_I {
    return .{ .v1 = 9, .v2 = 6063, .v3 = 7793 };
}

// From T_Snnn_xba.c:5864:5884
// struct  Uc_S_Ip  {
//   unsigned char v1;
//   short v2;
//   int *v3;
// };

test "Uc_S_Ip: layout" {
    var lv: c.Uc_S_Ip = undefined;
    try testing.expectSize(c.Uc_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_S_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S_Ip(.{ .v1 = 26, .v2 = 11164, .v3 = null }), outcome);
}
test "Uc_S_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_Ip());
}
test "Uc_S_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_Ip(), outcome);
}
test "Uc_S_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_Ip(), .{ .v1 = 26, .v2 = 11164, .v3 = null });
}
pub export fn zig_assert_Uc_S_Ip(lv: c.Uc_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26) err = 1;
    if (lv.v2 != 11164) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_Ip() c.Uc_S_Ip {
    return .{ .v1 = 26, .v2 = 11164, .v3 = null };
}

// From T_Snnn_xba.c:5889:5909
// struct  Uc_S_L  {
//   unsigned char v1;
//   short v2;
//   __tsi64 v3;
// };

test "Uc_S_L: layout" {
    var lv: c.Uc_S_L = undefined;
    try testing.expectSize(c.Uc_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_S_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S_L(.{ .v1 = 51, .v2 = 885, .v3 = 13093 }), outcome);
}
test "Uc_S_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_L());
}
test "Uc_S_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_L(), outcome);
}
test "Uc_S_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_L(), .{ .v1 = 51, .v2 = 885, .v3 = 13093 });
}
pub export fn zig_assert_Uc_S_L(lv: c.Uc_S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 51) err = 1;
    if (lv.v2 != 885) err = 2;
    if (lv.v3 != 13093) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_L() c.Uc_S_L {
    return .{ .v1 = 51, .v2 = 885, .v3 = 13093 };
}

// From T_Snnn_xba.c:5914:5934
// struct  Uc_S_S  {
//   unsigned char v1;
//   short v2;
//   short v3;
// };

test "Uc_S_S: layout" {
    var lv: c.Uc_S_S = undefined;
    try testing.expectSize(c.Uc_S_S, 6);
    try testing.expectAlign(c.Uc_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_S_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S_S(.{ .v1 = 21, .v2 = 14367, .v3 = 8854 }), outcome);
}
test "Uc_S_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_S());
}
test "Uc_S_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_S(), outcome);
}
test "Uc_S_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_S(), .{ .v1 = 21, .v2 = 14367, .v3 = 8854 });
}
pub export fn zig_assert_Uc_S_S(lv: c.Uc_S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21) err = 1;
    if (lv.v2 != 14367) err = 2;
    if (lv.v3 != 8854) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_S() c.Uc_S_S {
    return .{ .v1 = 21, .v2 = 14367, .v3 = 8854 };
}

// From T_Snnn_xba.c:5939:5959
// struct  Uc_S_Uc  {
//   unsigned char v1;
//   short v2;
//   unsigned char v3;
// };

test "Uc_S_Uc: layout" {
    var lv: c.Uc_S_Uc = undefined;
    try testing.expectSize(c.Uc_S_Uc, 6);
    try testing.expectAlign(c.Uc_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_S_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S_Uc(.{ .v1 = 121, .v2 = 32357, .v3 = 7 }), outcome);
}
test "Uc_S_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_Uc());
}
test "Uc_S_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_Uc(), outcome);
}
test "Uc_S_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_Uc(), .{ .v1 = 121, .v2 = 32357, .v3 = 7 });
}
pub export fn zig_assert_Uc_S_Uc(lv: c.Uc_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 121) err = 1;
    if (lv.v2 != 32357) err = 2;
    if (lv.v3 != 7) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_Uc() c.Uc_S_Uc {
    return .{ .v1 = 121, .v2 = 32357, .v3 = 7 };
}

// From T_Snnn_xba.c:5964:5984
// struct  Uc_S_Ui  {
//   unsigned char v1;
//   short v2;
//   unsigned int v3;
// };

test "Uc_S_Ui: layout" {
    var lv: c.Uc_S_Ui = undefined;
    try testing.expectSize(c.Uc_S_Ui, 8);
    try testing.expectAlign(c.Uc_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_S_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S_Ui(.{ .v1 = 114, .v2 = 18126, .v3 = 22022 }), outcome);
}
test "Uc_S_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_Ui());
}
test "Uc_S_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_Ui(), outcome);
}
test "Uc_S_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_Ui(), .{ .v1 = 114, .v2 = 18126, .v3 = 22022 });
}
pub export fn zig_assert_Uc_S_Ui(lv: c.Uc_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 114) err = 1;
    if (lv.v2 != 18126) err = 2;
    if (lv.v3 != 22022) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_Ui() c.Uc_S_Ui {
    return .{ .v1 = 114, .v2 = 18126, .v3 = 22022 };
}

// From T_Snnn_xba.c:5989:6009
// struct  Uc_S_Ul  {
//   unsigned char v1;
//   short v2;
//   __tsu64 v3;
// };

test "Uc_S_Ul: layout" {
    var lv: c.Uc_S_Ul = undefined;
    try testing.expectSize(c.Uc_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_S_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S_Ul(.{ .v1 = 47, .v2 = 8185, .v3 = 28912 }), outcome);
}
test "Uc_S_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_Ul());
}
test "Uc_S_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_Ul(), outcome);
}
test "Uc_S_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_Ul(), .{ .v1 = 47, .v2 = 8185, .v3 = 28912 });
}
pub export fn zig_assert_Uc_S_Ul(lv: c.Uc_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 47) err = 1;
    if (lv.v2 != 8185) err = 2;
    if (lv.v3 != 28912) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_Ul() c.Uc_S_Ul {
    return .{ .v1 = 47, .v2 = 8185, .v3 = 28912 };
}

// From T_Snnn_xba.c:6014:6034
// struct  Uc_S_Us  {
//   unsigned char v1;
//   short v2;
//   unsigned short v3;
// };

test "Uc_S_Us: layout" {
    var lv: c.Uc_S_Us = undefined;
    try testing.expectSize(c.Uc_S_Us, 6);
    try testing.expectAlign(c.Uc_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_S_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S_Us(.{ .v1 = 40, .v2 = 4200, .v3 = 29084 }), outcome);
}
test "Uc_S_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_Us());
}
test "Uc_S_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_Us(), outcome);
}
test "Uc_S_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_Us(), .{ .v1 = 40, .v2 = 4200, .v3 = 29084 });
}
pub export fn zig_assert_Uc_S_Us(lv: c.Uc_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 40) err = 1;
    if (lv.v2 != 4200) err = 2;
    if (lv.v3 != 29084) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_Us() c.Uc_S_Us {
    return .{ .v1 = 40, .v2 = 4200, .v3 = 29084 };
}

// From T_Snnn_xba.c:6039:6059
// struct  Uc_S_Vp  {
//   unsigned char v1;
//   short v2;
//   void *v3;
// };

test "Uc_S_Vp: layout" {
    var lv: c.Uc_S_Vp = undefined;
    try testing.expectSize(c.Uc_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_S_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_S_Vp(.{ .v1 = 43, .v2 = 4074, .v3 = null }), outcome);
}
test "Uc_S_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_S_Vp());
}
test "Uc_S_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_S_Vp(), outcome);
}
test "Uc_S_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_S_Vp(), .{ .v1 = 43, .v2 = 4074, .v3 = null });
}
pub export fn zig_assert_Uc_S_Vp(lv: c.Uc_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 43) err = 1;
    if (lv.v2 != 4074) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_Vp() c.Uc_S_Vp {
    return .{ .v1 = 43, .v2 = 4074, .v3 = null };
}

// From T_Snnn_xba.c:6064:6082
// struct  Uc_Uc  {
//   unsigned char v1;
//   unsigned char v2;
// };

test "Uc_Uc: layout" {
    var lv: c.Uc_Uc = undefined;
    try testing.expectSize(c.Uc_Uc, 2);
    try testing.expectAlign(c.Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}
test "Uc_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc(.{ .v1 = 36, .v2 = 41 }), outcome);
}
test "Uc_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc());
}
test "Uc_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc(), outcome);
}
test "Uc_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc(), .{ .v1 = 36, .v2 = 41 });
}
pub export fn zig_assert_Uc_Uc(lv: c.Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 36) err = 1;
    if (lv.v2 != 41) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc() c.Uc_Uc {
    return .{ .v1 = 36, .v2 = 41 };
}

// From T_Snnn_xba.c:6811:6831
// struct  Uc_Uc_C  {
//   unsigned char v1;
//   unsigned char v2;
//   char v3;
// };

test "Uc_Uc_C: layout" {
    var lv: c.Uc_Uc_C = undefined;
    try testing.expectSize(c.Uc_Uc_C, 3);
    try testing.expectAlign(c.Uc_Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_Uc_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc_C(.{ .v1 = 61, .v2 = 123, .v3 = 32 }), outcome);
}
test "Uc_Uc_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_C());
}
test "Uc_Uc_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_C(), outcome);
}
test "Uc_Uc_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_C(), .{ .v1 = 61, .v2 = 123, .v3 = 32 });
}
pub export fn zig_assert_Uc_Uc_C(lv: c.Uc_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 61) err = 1;
    if (lv.v2 != 123) err = 2;
    if (lv.v3 != 32) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_C() c.Uc_Uc_C {
    return .{ .v1 = 61, .v2 = 123, .v3 = 32 };
}

// From T_Snnn_xba.c:6836:6856
// struct  Uc_Uc_D  {
//   unsigned char v1;
//   unsigned char v2;
//   double v3;
// };

test "Uc_Uc_D: layout" {
    var lv: c.Uc_Uc_D = undefined;
    try testing.expectSize(c.Uc_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Uc_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Uc_Uc_D(.{ .v1 = 69, .v2 = 59, .v3 = 1.0 }), outcome);
}
test "Uc_Uc_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_D());
}
test "Uc_Uc_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_D(), outcome);
}
test "Uc_Uc_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_D(), .{ .v1 = 69, .v2 = 59, .v3 = 1.0 });
}
pub export fn zig_assert_Uc_Uc_D(lv: c.Uc_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 69) err = 1;
    if (lv.v2 != 59) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_D() c.Uc_Uc_D {
    return .{ .v1 = 69, .v2 = 59, .v3 = 1.0 };
}

// From T_Snnn_xba.c:6861:6881
// struct  Uc_Uc_F  {
//   unsigned char v1;
//   unsigned char v2;
//   float v3;
// };

test "Uc_Uc_F: layout" {
    var lv: c.Uc_Uc_F = undefined;
    try testing.expectSize(c.Uc_Uc_F, 8);
    try testing.expectAlign(c.Uc_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Uc_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc_F(.{ .v1 = 64, .v2 = 79, .v3 = 4.5 }), outcome);
}
test "Uc_Uc_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_F());
}
test "Uc_Uc_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_F(), outcome);
}
test "Uc_Uc_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_F(), .{ .v1 = 64, .v2 = 79, .v3 = 4.5 });
}
pub export fn zig_assert_Uc_Uc_F(lv: c.Uc_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 64) err = 1;
    if (lv.v2 != 79) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_F() c.Uc_Uc_F {
    return .{ .v1 = 64, .v2 = 79, .v3 = 4.5 };
}

// From T_Snnn_xba.c:6886:6906
// struct  Uc_Uc_I  {
//   unsigned char v1;
//   unsigned char v2;
//   int v3;
// };

test "Uc_Uc_I: layout" {
    var lv: c.Uc_Uc_I = undefined;
    try testing.expectSize(c.Uc_Uc_I, 8);
    try testing.expectAlign(c.Uc_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Uc_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc_I(.{ .v1 = 10, .v2 = 31, .v3 = 24178 }), outcome);
}
test "Uc_Uc_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_I());
}
test "Uc_Uc_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_I(), outcome);
}
test "Uc_Uc_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_I(), .{ .v1 = 10, .v2 = 31, .v3 = 24178 });
}
pub export fn zig_assert_Uc_Uc_I(lv: c.Uc_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10) err = 1;
    if (lv.v2 != 31) err = 2;
    if (lv.v3 != 24178) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_I() c.Uc_Uc_I {
    return .{ .v1 = 10, .v2 = 31, .v3 = 24178 };
}

// From T_Snnn_xba.c:6911:6931
// struct  Uc_Uc_Ip  {
//   unsigned char v1;
//   unsigned char v2;
//   int *v3;
// };

test "Uc_Uc_Ip: layout" {
    var lv: c.Uc_Uc_Ip = undefined;
    try testing.expectSize(c.Uc_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Uc_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc_Ip(.{ .v1 = 34, .v2 = 19, .v3 = null }), outcome);
}
test "Uc_Uc_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_Ip());
}
test "Uc_Uc_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_Ip(), outcome);
}
test "Uc_Uc_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_Ip(), .{ .v1 = 34, .v2 = 19, .v3 = null });
}
pub export fn zig_assert_Uc_Uc_Ip(lv: c.Uc_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 34) err = 1;
    if (lv.v2 != 19) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_Ip() c.Uc_Uc_Ip {
    return .{ .v1 = 34, .v2 = 19, .v3 = null };
}

// From T_Snnn_xba.c:6936:6956
// struct  Uc_Uc_L  {
//   unsigned char v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Uc_Uc_L: layout" {
    var lv: c.Uc_Uc_L = undefined;
    try testing.expectSize(c.Uc_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Uc_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc_L(.{ .v1 = 113, .v2 = 16, .v3 = 9440 }), outcome);
}
test "Uc_Uc_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_L());
}
test "Uc_Uc_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_L(), outcome);
}
test "Uc_Uc_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_L(), .{ .v1 = 113, .v2 = 16, .v3 = 9440 });
}
pub export fn zig_assert_Uc_Uc_L(lv: c.Uc_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 113) err = 1;
    if (lv.v2 != 16) err = 2;
    if (lv.v3 != 9440) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_L() c.Uc_Uc_L {
    return .{ .v1 = 113, .v2 = 16, .v3 = 9440 };
}

// From T_Snnn_xba.c:6961:6981
// struct  Uc_Uc_S  {
//   unsigned char v1;
//   unsigned char v2;
//   short v3;
// };

test "Uc_Uc_S: layout" {
    var lv: c.Uc_Uc_S = undefined;
    try testing.expectSize(c.Uc_Uc_S, 4);
    try testing.expectAlign(c.Uc_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_Uc_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc_S(.{ .v1 = 110, .v2 = 68, .v3 = 32149 }), outcome);
}
test "Uc_Uc_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_S());
}
test "Uc_Uc_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_S(), outcome);
}
test "Uc_Uc_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_S(), .{ .v1 = 110, .v2 = 68, .v3 = 32149 });
}
pub export fn zig_assert_Uc_Uc_S(lv: c.Uc_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 110) err = 1;
    if (lv.v2 != 68) err = 2;
    if (lv.v3 != 32149) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_S() c.Uc_Uc_S {
    return .{ .v1 = 110, .v2 = 68, .v3 = 32149 };
}

// From T_Snnn_xba.c:6986:7006
// struct  Uc_Uc_Uc  {
//   unsigned char v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Uc_Uc_Uc: layout" {
    var lv: c.Uc_Uc_Uc = undefined;
    try testing.expectSize(c.Uc_Uc_Uc, 3);
    try testing.expectAlign(c.Uc_Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_Uc_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc_Uc(.{ .v1 = 25, .v2 = 112, .v3 = 107 }), outcome);
}
test "Uc_Uc_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_Uc());
}
test "Uc_Uc_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_Uc(), outcome);
}
test "Uc_Uc_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_Uc(), .{ .v1 = 25, .v2 = 112, .v3 = 107 });
}
pub export fn zig_assert_Uc_Uc_Uc(lv: c.Uc_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25) err = 1;
    if (lv.v2 != 112) err = 2;
    if (lv.v3 != 107) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_Uc() c.Uc_Uc_Uc {
    return .{ .v1 = 25, .v2 = 112, .v3 = 107 };
}

// From T_Snnn_xba.c:7011:7031
// struct  Uc_Uc_Ui  {
//   unsigned char v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Uc_Uc_Ui: layout" {
    var lv: c.Uc_Uc_Ui = undefined;
    try testing.expectSize(c.Uc_Uc_Ui, 8);
    try testing.expectAlign(c.Uc_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Uc_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc_Ui(.{ .v1 = 79, .v2 = 65, .v3 = 18992 }), outcome);
}
test "Uc_Uc_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_Ui());
}
test "Uc_Uc_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_Ui(), outcome);
}
test "Uc_Uc_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_Ui(), .{ .v1 = 79, .v2 = 65, .v3 = 18992 });
}
pub export fn zig_assert_Uc_Uc_Ui(lv: c.Uc_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 79) err = 1;
    if (lv.v2 != 65) err = 2;
    if (lv.v3 != 18992) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_Ui() c.Uc_Uc_Ui {
    return .{ .v1 = 79, .v2 = 65, .v3 = 18992 };
}

// From T_Snnn_xba.c:7036:7056
// struct  Uc_Uc_Ul  {
//   unsigned char v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Uc_Uc_Ul: layout" {
    var lv: c.Uc_Uc_Ul = undefined;
    try testing.expectSize(c.Uc_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Uc_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc_Ul(.{ .v1 = 119, .v2 = 105, .v3 = 14684 }), outcome);
}
test "Uc_Uc_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_Ul());
}
test "Uc_Uc_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_Ul(), outcome);
}
test "Uc_Uc_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_Ul(), .{ .v1 = 119, .v2 = 105, .v3 = 14684 });
}
pub export fn zig_assert_Uc_Uc_Ul(lv: c.Uc_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 119) err = 1;
    if (lv.v2 != 105) err = 2;
    if (lv.v3 != 14684) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_Ul() c.Uc_Uc_Ul {
    return .{ .v1 = 119, .v2 = 105, .v3 = 14684 };
}

// From T_Snnn_xba.c:7061:7081
// struct  Uc_Uc_Us  {
//   unsigned char v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Uc_Uc_Us: layout" {
    var lv: c.Uc_Uc_Us = undefined;
    try testing.expectSize(c.Uc_Uc_Us, 4);
    try testing.expectAlign(c.Uc_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_Uc_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc_Us(.{ .v1 = 35, .v2 = 94, .v3 = 17513 }), outcome);
}
test "Uc_Uc_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_Us());
}
test "Uc_Uc_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_Us(), outcome);
}
test "Uc_Uc_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_Us(), .{ .v1 = 35, .v2 = 94, .v3 = 17513 });
}
pub export fn zig_assert_Uc_Uc_Us(lv: c.Uc_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 35) err = 1;
    if (lv.v2 != 94) err = 2;
    if (lv.v3 != 17513) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_Us() c.Uc_Uc_Us {
    return .{ .v1 = 35, .v2 = 94, .v3 = 17513 };
}

// From T_Snnn_xba.c:7086:7106
// struct  Uc_Uc_Vp  {
//   unsigned char v1;
//   unsigned char v2;
//   void *v3;
// };

test "Uc_Uc_Vp: layout" {
    var lv: c.Uc_Uc_Vp = undefined;
    try testing.expectSize(c.Uc_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Uc_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Uc_Vp(.{ .v1 = 16, .v2 = 101, .v3 = null }), outcome);
}
test "Uc_Uc_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Uc_Vp());
}
test "Uc_Uc_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Uc_Vp(), outcome);
}
test "Uc_Uc_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Uc_Vp(), .{ .v1 = 16, .v2 = 101, .v3 = null });
}
pub export fn zig_assert_Uc_Uc_Vp(lv: c.Uc_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16) err = 1;
    if (lv.v2 != 101) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_Vp() c.Uc_Uc_Vp {
    return .{ .v1 = 16, .v2 = 101, .v3 = null };
}

// From T_Snnn_xba.c:7111:7129
// struct  Uc_Ui  {
//   unsigned char v1;
//   unsigned int v2;
// };

test "Uc_Ui: layout" {
    var lv: c.Uc_Ui = undefined;
    try testing.expectSize(c.Uc_Ui, 8);
    try testing.expectAlign(c.Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Uc_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ui(.{ .v1 = 53, .v2 = 22835 }), outcome);
}
test "Uc_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui());
}
test "Uc_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui(), outcome);
}
test "Uc_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui(), .{ .v1 = 53, .v2 = 22835 });
}
pub export fn zig_assert_Uc_Ui(lv: c.Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 53) err = 1;
    if (lv.v2 != 22835) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui() c.Uc_Ui {
    return .{ .v1 = 53, .v2 = 22835 };
}

// From T_Snnn_xba.c:7858:7878
// struct  Uc_Ui_C  {
//   unsigned char v1;
//   unsigned int v2;
//   char v3;
// };

test "Uc_Ui_C: layout" {
    var lv: c.Uc_Ui_C = undefined;
    try testing.expectSize(c.Uc_Ui_C, 12);
    try testing.expectAlign(c.Uc_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ui_C(.{ .v1 = 98, .v2 = 13999, .v3 = 1 }), outcome);
}
test "Uc_Ui_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_C());
}
test "Uc_Ui_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_C(), outcome);
}
test "Uc_Ui_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_C(), .{ .v1 = 98, .v2 = 13999, .v3 = 1 });
}
pub export fn zig_assert_Uc_Ui_C(lv: c.Uc_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 98) err = 1;
    if (lv.v2 != 13999) err = 2;
    if (lv.v3 != 1) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_C() c.Uc_Ui_C {
    return .{ .v1 = 98, .v2 = 13999, .v3 = 1 };
}

// From T_Snnn_xba.c:7883:7903
// struct  Uc_Ui_D  {
//   unsigned char v1;
//   unsigned int v2;
//   double v3;
// };

test "Uc_Ui_D: layout" {
    var lv: c.Uc_Ui_D = undefined;
    try testing.expectSize(c.Uc_Ui_D, 16);
    try testing.expectAlign(c.Uc_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Uc_Ui_D(.{ .v1 = 19, .v2 = 212, .v3 = 4.5 }), outcome);
}
test "Uc_Ui_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_D());
}
test "Uc_Ui_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_D(), outcome);
}
test "Uc_Ui_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_D(), .{ .v1 = 19, .v2 = 212, .v3 = 4.5 });
}
pub export fn zig_assert_Uc_Ui_D(lv: c.Uc_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19) err = 1;
    if (lv.v2 != 212) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_D() c.Uc_Ui_D {
    return .{ .v1 = 19, .v2 = 212, .v3 = 4.5 };
}

// From T_Snnn_xba.c:7908:7928
// struct  Uc_Ui_F  {
//   unsigned char v1;
//   unsigned int v2;
//   float v3;
// };

test "Uc_Ui_F: layout" {
    var lv: c.Uc_Ui_F = undefined;
    try testing.expectSize(c.Uc_Ui_F, 12);
    try testing.expectAlign(c.Uc_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Uc_Ui_F(.{ .v1 = 109, .v2 = 22586, .v3 = 0.875 }), outcome);
}
test "Uc_Ui_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_F());
}
test "Uc_Ui_F: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_F(), outcome);
}
test "Uc_Ui_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_F(), .{ .v1 = 109, .v2 = 22586, .v3 = 0.875 });
}
pub export fn zig_assert_Uc_Ui_F(lv: c.Uc_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 109) err = 1;
    if (lv.v2 != 22586) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_F() c.Uc_Ui_F {
    return .{ .v1 = 109, .v2 = 22586, .v3 = 0.875 };
}

// From T_Snnn_xba.c:7933:7953
// struct  Uc_Ui_I  {
//   unsigned char v1;
//   unsigned int v2;
//   int v3;
// };

test "Uc_Ui_I: layout" {
    var lv: c.Uc_Ui_I = undefined;
    try testing.expectSize(c.Uc_Ui_I, 12);
    try testing.expectAlign(c.Uc_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ui_I(.{ .v1 = 69, .v2 = 96, .v3 = 11656 }), outcome);
}
test "Uc_Ui_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_I());
}
test "Uc_Ui_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_I(), outcome);
}
test "Uc_Ui_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_I(), .{ .v1 = 69, .v2 = 96, .v3 = 11656 });
}
pub export fn zig_assert_Uc_Ui_I(lv: c.Uc_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 69) err = 1;
    if (lv.v2 != 96) err = 2;
    if (lv.v3 != 11656) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_I() c.Uc_Ui_I {
    return .{ .v1 = 69, .v2 = 96, .v3 = 11656 };
}

// From T_Snnn_xba.c:7958:7978
// struct  Uc_Ui_Ip  {
//   unsigned char v1;
//   unsigned int v2;
//   int *v3;
// };

test "Uc_Ui_Ip: layout" {
    var lv: c.Uc_Ui_Ip = undefined;
    try testing.expectSize(c.Uc_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ui_Ip(.{ .v1 = 100, .v2 = 23903, .v3 = null }), outcome);
}
test "Uc_Ui_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_Ip());
}
test "Uc_Ui_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_Ip(), outcome);
}
test "Uc_Ui_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_Ip(), .{ .v1 = 100, .v2 = 23903, .v3 = null });
}
pub export fn zig_assert_Uc_Ui_Ip(lv: c.Uc_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 100) err = 1;
    if (lv.v2 != 23903) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_Ip() c.Uc_Ui_Ip {
    return .{ .v1 = 100, .v2 = 23903, .v3 = null };
}

// From T_Snnn_xba.c:7983:8003
// struct  Uc_Ui_L  {
//   unsigned char v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Uc_Ui_L: layout" {
    var lv: c.Uc_Ui_L = undefined;
    try testing.expectSize(c.Uc_Ui_L, 16);
    try testing.expectAlign(c.Uc_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ui_L(.{ .v1 = 13, .v2 = 17433, .v3 = 23126 }), outcome);
}
test "Uc_Ui_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_L());
}
test "Uc_Ui_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_L(), outcome);
}
test "Uc_Ui_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_L(), .{ .v1 = 13, .v2 = 17433, .v3 = 23126 });
}
pub export fn zig_assert_Uc_Ui_L(lv: c.Uc_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13) err = 1;
    if (lv.v2 != 17433) err = 2;
    if (lv.v3 != 23126) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_L() c.Uc_Ui_L {
    return .{ .v1 = 13, .v2 = 17433, .v3 = 23126 };
}

// From T_Snnn_xba.c:8008:8028
// struct  Uc_Ui_S  {
//   unsigned char v1;
//   unsigned int v2;
//   short v3;
// };

test "Uc_Ui_S: layout" {
    var lv: c.Uc_Ui_S = undefined;
    try testing.expectSize(c.Uc_Ui_S, 12);
    try testing.expectAlign(c.Uc_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ui_S(.{ .v1 = 64, .v2 = 8972, .v3 = 23697 }), outcome);
}
test "Uc_Ui_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_S());
}
test "Uc_Ui_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_S(), outcome);
}
test "Uc_Ui_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_S(), .{ .v1 = 64, .v2 = 8972, .v3 = 23697 });
}
pub export fn zig_assert_Uc_Ui_S(lv: c.Uc_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 64) err = 1;
    if (lv.v2 != 8972) err = 2;
    if (lv.v3 != 23697) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_S() c.Uc_Ui_S {
    return .{ .v1 = 64, .v2 = 8972, .v3 = 23697 };
}

// From T_Snnn_xba.c:8033:8053
// struct  Uc_Ui_Uc  {
//   unsigned char v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Uc_Ui_Uc: layout" {
    var lv: c.Uc_Ui_Uc = undefined;
    try testing.expectSize(c.Uc_Ui_Uc, 12);
    try testing.expectAlign(c.Uc_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ui_Uc(.{ .v1 = 64, .v2 = 20781, .v3 = 46 }), outcome);
}
test "Uc_Ui_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_Uc());
}
test "Uc_Ui_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_Uc(), outcome);
}
test "Uc_Ui_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_Uc(), .{ .v1 = 64, .v2 = 20781, .v3 = 46 });
}
pub export fn zig_assert_Uc_Ui_Uc(lv: c.Uc_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 64) err = 1;
    if (lv.v2 != 20781) err = 2;
    if (lv.v3 != 46) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_Uc() c.Uc_Ui_Uc {
    return .{ .v1 = 64, .v2 = 20781, .v3 = 46 };
}

// From T_Snnn_xba.c:8058:8078
// struct  Uc_Ui_Ui  {
//   unsigned char v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Uc_Ui_Ui: layout" {
    var lv: c.Uc_Ui_Ui = undefined;
    try testing.expectSize(c.Uc_Ui_Ui, 12);
    try testing.expectAlign(c.Uc_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ui_Ui(.{ .v1 = 12, .v2 = 30965, .v3 = 7658 }), outcome);
}
test "Uc_Ui_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_Ui());
}
test "Uc_Ui_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_Ui(), outcome);
}
test "Uc_Ui_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_Ui(), .{ .v1 = 12, .v2 = 30965, .v3 = 7658 });
}
pub export fn zig_assert_Uc_Ui_Ui(lv: c.Uc_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12) err = 1;
    if (lv.v2 != 30965) err = 2;
    if (lv.v3 != 7658) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_Ui() c.Uc_Ui_Ui {
    return .{ .v1 = 12, .v2 = 30965, .v3 = 7658 };
}

// From T_Snnn_xba.c:8083:8103
// struct  Uc_Ui_Ul  {
//   unsigned char v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Uc_Ui_Ul: layout" {
    var lv: c.Uc_Ui_Ul = undefined;
    try testing.expectSize(c.Uc_Ui_Ul, 16);
    try testing.expectAlign(c.Uc_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ui_Ul(.{ .v1 = 102, .v2 = 15727, .v3 = 6033 }), outcome);
}
test "Uc_Ui_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_Ul());
}
test "Uc_Ui_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_Ul(), outcome);
}
test "Uc_Ui_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_Ul(), .{ .v1 = 102, .v2 = 15727, .v3 = 6033 });
}
pub export fn zig_assert_Uc_Ui_Ul(lv: c.Uc_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 102) err = 1;
    if (lv.v2 != 15727) err = 2;
    if (lv.v3 != 6033) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_Ul() c.Uc_Ui_Ul {
    return .{ .v1 = 102, .v2 = 15727, .v3 = 6033 };
}

// From T_Snnn_xba.c:8108:8128
// struct  Uc_Ui_Us  {
//   unsigned char v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Uc_Ui_Us: layout" {
    var lv: c.Uc_Ui_Us = undefined;
    try testing.expectSize(c.Uc_Ui_Us, 12);
    try testing.expectAlign(c.Uc_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ui_Us(.{ .v1 = 69, .v2 = 2117, .v3 = 24973 }), outcome);
}
test "Uc_Ui_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_Us());
}
test "Uc_Ui_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_Us(), outcome);
}
test "Uc_Ui_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_Us(), .{ .v1 = 69, .v2 = 2117, .v3 = 24973 });
}
pub export fn zig_assert_Uc_Ui_Us(lv: c.Uc_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 69) err = 1;
    if (lv.v2 != 2117) err = 2;
    if (lv.v3 != 24973) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_Us() c.Uc_Ui_Us {
    return .{ .v1 = 69, .v2 = 2117, .v3 = 24973 };
}

// From T_Snnn_xba.c:8133:8153
// struct  Uc_Ui_Vp  {
//   unsigned char v1;
//   unsigned int v2;
//   void *v3;
// };

test "Uc_Ui_Vp: layout" {
    var lv: c.Uc_Ui_Vp = undefined;
    try testing.expectSize(c.Uc_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ui_Vp(.{ .v1 = 79, .v2 = 1180, .v3 = null }), outcome);
}
test "Uc_Ui_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ui_Vp());
}
test "Uc_Ui_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ui_Vp(), outcome);
}
test "Uc_Ui_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ui_Vp(), .{ .v1 = 79, .v2 = 1180, .v3 = null });
}
pub export fn zig_assert_Uc_Ui_Vp(lv: c.Uc_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 79) err = 1;
    if (lv.v2 != 1180) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_Vp() c.Uc_Ui_Vp {
    return .{ .v1 = 79, .v2 = 1180, .v3 = null };
}

// From T_Snnn_xba.c:8158:8176
// struct  Uc_Ul  {
//   unsigned char v1;
//   __tsu64 v2;
// };

test "Uc_Ul: layout" {
    var lv: c.Uc_Ul = undefined;
    try testing.expectSize(c.Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Uc_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul(.{ .v1 = 60, .v2 = 26383 }), outcome);
}
test "Uc_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul());
}
test "Uc_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul(), outcome);
}
test "Uc_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul(), .{ .v1 = 60, .v2 = 26383 });
}
pub export fn zig_assert_Uc_Ul(lv: c.Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 60) err = 1;
    if (lv.v2 != 26383) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul() c.Uc_Ul {
    return .{ .v1 = 60, .v2 = 26383 };
}

// From T_Snnn_xba.c:8905:8925
// struct  Uc_Ul_C  {
//   unsigned char v1;
//   __tsu64 v2;
//   char v3;
// };

test "Uc_Ul_C: layout" {
    var lv: c.Uc_Ul_C = undefined;
    try testing.expectSize(c.Uc_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_C(.{ .v1 = 87, .v2 = 5320, .v3 = 119 }), outcome);
}
test "Uc_Ul_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_C());
}
test "Uc_Ul_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_C(), outcome);
}
test "Uc_Ul_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_C(), .{ .v1 = 87, .v2 = 5320, .v3 = 119 });
}
pub export fn zig_assert_Uc_Ul_C(lv: c.Uc_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 87) err = 1;
    if (lv.v2 != 5320) err = 2;
    if (lv.v3 != 119) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_C() c.Uc_Ul_C {
    return .{ .v1 = 87, .v2 = 5320, .v3 = 119 };
}

// From T_Snnn_xba.c:8930:8950
// struct  Uc_Ul_D  {
//   unsigned char v1;
//   __tsu64 v2;
//   double v3;
// };

test "Uc_Ul_D: layout" {
    var lv: c.Uc_Ul_D = undefined;
    try testing.expectSize(c.Uc_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_D(.{ .v1 = 109, .v2 = 24058, .v3 = -0.25 }), outcome);
}
test "Uc_Ul_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_D());
}
test "Uc_Ul_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_D(), outcome);
}
test "Uc_Ul_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_D(), .{ .v1 = 109, .v2 = 24058, .v3 = -0.25 });
}
pub export fn zig_assert_Uc_Ul_D(lv: c.Uc_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 109) err = 1;
    if (lv.v2 != 24058) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_D() c.Uc_Ul_D {
    return .{ .v1 = 109, .v2 = 24058, .v3 = -0.25 };
}

// From T_Snnn_xba.c:8955:8975
// struct  Uc_Ul_F  {
//   unsigned char v1;
//   __tsu64 v2;
//   float v3;
// };

test "Uc_Ul_F: layout" {
    var lv: c.Uc_Ul_F = undefined;
    try testing.expectSize(c.Uc_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_F(.{ .v1 = 89, .v2 = 570, .v3 = -0.25 }), outcome);
}
test "Uc_Ul_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_F());
}
test "Uc_Ul_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_F(), outcome);
}
test "Uc_Ul_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_F(), .{ .v1 = 89, .v2 = 570, .v3 = -0.25 });
}
pub export fn zig_assert_Uc_Ul_F(lv: c.Uc_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 89) err = 1;
    if (lv.v2 != 570) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_F() c.Uc_Ul_F {
    return .{ .v1 = 89, .v2 = 570, .v3 = -0.25 };
}

// From T_Snnn_xba.c:8980:9000
// struct  Uc_Ul_I  {
//   unsigned char v1;
//   __tsu64 v2;
//   int v3;
// };

test "Uc_Ul_I: layout" {
    var lv: c.Uc_Ul_I = undefined;
    try testing.expectSize(c.Uc_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_I(.{ .v1 = 20, .v2 = 18844, .v3 = 22972 }), outcome);
}
test "Uc_Ul_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_I());
}
test "Uc_Ul_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_I(), outcome);
}
test "Uc_Ul_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_I(), .{ .v1 = 20, .v2 = 18844, .v3 = 22972 });
}
pub export fn zig_assert_Uc_Ul_I(lv: c.Uc_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20) err = 1;
    if (lv.v2 != 18844) err = 2;
    if (lv.v3 != 22972) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_I() c.Uc_Ul_I {
    return .{ .v1 = 20, .v2 = 18844, .v3 = 22972 };
}

// From T_Snnn_xba.c:9005:9025
// struct  Uc_Ul_Ip  {
//   unsigned char v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Uc_Ul_Ip: layout" {
    var lv: c.Uc_Ul_Ip = undefined;
    try testing.expectSize(c.Uc_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_Ip(.{ .v1 = 87, .v2 = 14218, .v3 = null }), outcome);
}
test "Uc_Ul_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_Ip());
}
test "Uc_Ul_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_Ip(), outcome);
}
test "Uc_Ul_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_Ip(), .{ .v1 = 87, .v2 = 14218, .v3 = null });
}
pub export fn zig_assert_Uc_Ul_Ip(lv: c.Uc_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 87) err = 1;
    if (lv.v2 != 14218) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_Ip() c.Uc_Ul_Ip {
    return .{ .v1 = 87, .v2 = 14218, .v3 = null };
}

// From T_Snnn_xba.c:9030:9050
// struct  Uc_Ul_L  {
//   unsigned char v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Uc_Ul_L: layout" {
    var lv: c.Uc_Ul_L = undefined;
    try testing.expectSize(c.Uc_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_L(.{ .v1 = 99, .v2 = 23984, .v3 = 30703 }), outcome);
}
test "Uc_Ul_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_L());
}
test "Uc_Ul_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_L(), outcome);
}
test "Uc_Ul_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_L(), .{ .v1 = 99, .v2 = 23984, .v3 = 30703 });
}
pub export fn zig_assert_Uc_Ul_L(lv: c.Uc_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 99) err = 1;
    if (lv.v2 != 23984) err = 2;
    if (lv.v3 != 30703) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_L() c.Uc_Ul_L {
    return .{ .v1 = 99, .v2 = 23984, .v3 = 30703 };
}

// From T_Snnn_xba.c:9055:9075
// struct  Uc_Ul_S  {
//   unsigned char v1;
//   __tsu64 v2;
//   short v3;
// };

test "Uc_Ul_S: layout" {
    var lv: c.Uc_Ul_S = undefined;
    try testing.expectSize(c.Uc_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_S(.{ .v1 = 29, .v2 = 13746, .v3 = 28959 }), outcome);
}
test "Uc_Ul_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_S());
}
test "Uc_Ul_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_S(), outcome);
}
test "Uc_Ul_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_S(), .{ .v1 = 29, .v2 = 13746, .v3 = 28959 });
}
pub export fn zig_assert_Uc_Ul_S(lv: c.Uc_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29) err = 1;
    if (lv.v2 != 13746) err = 2;
    if (lv.v3 != 28959) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_S() c.Uc_Ul_S {
    return .{ .v1 = 29, .v2 = 13746, .v3 = 28959 };
}

// From T_Snnn_xba.c:9080:9100
// struct  Uc_Ul_Uc  {
//   unsigned char v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Uc_Ul_Uc: layout" {
    var lv: c.Uc_Ul_Uc = undefined;
    try testing.expectSize(c.Uc_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_Uc(.{ .v1 = 2, .v2 = 27155, .v3 = 64 }), outcome);
}
test "Uc_Ul_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_Uc());
}
test "Uc_Ul_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_Uc(), outcome);
}
test "Uc_Ul_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_Uc(), .{ .v1 = 2, .v2 = 27155, .v3 = 64 });
}
pub export fn zig_assert_Uc_Ul_Uc(lv: c.Uc_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2) err = 1;
    if (lv.v2 != 27155) err = 2;
    if (lv.v3 != 64) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_Uc() c.Uc_Ul_Uc {
    return .{ .v1 = 2, .v2 = 27155, .v3 = 64 };
}

// From T_Snnn_xba.c:9105:9125
// struct  Uc_Ul_Ui  {
//   unsigned char v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Uc_Ul_Ui: layout" {
    var lv: c.Uc_Ul_Ui = undefined;
    try testing.expectSize(c.Uc_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_Ui(.{ .v1 = 44, .v2 = 8089, .v3 = 20884 }), outcome);
}
test "Uc_Ul_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_Ui());
}
test "Uc_Ul_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_Ui(), outcome);
}
test "Uc_Ul_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_Ui(), .{ .v1 = 44, .v2 = 8089, .v3 = 20884 });
}
pub export fn zig_assert_Uc_Ul_Ui(lv: c.Uc_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 44) err = 1;
    if (lv.v2 != 8089) err = 2;
    if (lv.v3 != 20884) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_Ui() c.Uc_Ul_Ui {
    return .{ .v1 = 44, .v2 = 8089, .v3 = 20884 };
}

// From T_Snnn_xba.c:9130:9150
// struct  Uc_Ul_Ul  {
//   unsigned char v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Uc_Ul_Ul: layout" {
    var lv: c.Uc_Ul_Ul = undefined;
    try testing.expectSize(c.Uc_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_Ul(.{ .v1 = 111, .v2 = 25364, .v3 = 414 }), outcome);
}
test "Uc_Ul_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_Ul());
}
test "Uc_Ul_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_Ul(), outcome);
}
test "Uc_Ul_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_Ul(), .{ .v1 = 111, .v2 = 25364, .v3 = 414 });
}
pub export fn zig_assert_Uc_Ul_Ul(lv: c.Uc_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 111) err = 1;
    if (lv.v2 != 25364) err = 2;
    if (lv.v3 != 414) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_Ul() c.Uc_Ul_Ul {
    return .{ .v1 = 111, .v2 = 25364, .v3 = 414 };
}

// From T_Snnn_xba.c:9155:9175
// struct  Uc_Ul_Us  {
//   unsigned char v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Uc_Ul_Us: layout" {
    var lv: c.Uc_Ul_Us = undefined;
    try testing.expectSize(c.Uc_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_Us(.{ .v1 = 45, .v2 = 30720, .v3 = 19132 }), outcome);
}
test "Uc_Ul_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_Us());
}
test "Uc_Ul_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_Us(), outcome);
}
test "Uc_Ul_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_Us(), .{ .v1 = 45, .v2 = 30720, .v3 = 19132 });
}
pub export fn zig_assert_Uc_Ul_Us(lv: c.Uc_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 45) err = 1;
    if (lv.v2 != 30720) err = 2;
    if (lv.v3 != 19132) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_Us() c.Uc_Ul_Us {
    return .{ .v1 = 45, .v2 = 30720, .v3 = 19132 };
}

// From T_Snnn_xba.c:9180:9200
// struct  Uc_Ul_Vp  {
//   unsigned char v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Uc_Ul_Vp: layout" {
    var lv: c.Uc_Ul_Vp = undefined;
    try testing.expectSize(c.Uc_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Ul_Vp(.{ .v1 = 31, .v2 = 15881, .v3 = null }), outcome);
}
test "Uc_Ul_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Ul_Vp());
}
test "Uc_Ul_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Ul_Vp(), outcome);
}
test "Uc_Ul_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Ul_Vp(), .{ .v1 = 31, .v2 = 15881, .v3 = null });
}
pub export fn zig_assert_Uc_Ul_Vp(lv: c.Uc_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31) err = 1;
    if (lv.v2 != 15881) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_Vp() c.Uc_Ul_Vp {
    return .{ .v1 = 31, .v2 = 15881, .v3 = null };
}

// From T_Snnn_xba.c:9205:9223
// struct  Uc_Us  {
//   unsigned char v1;
//   unsigned short v2;
// };

test "Uc_Us: layout" {
    var lv: c.Uc_Us = undefined;
    try testing.expectSize(c.Uc_Us, 4);
    try testing.expectAlign(c.Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "Uc_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us(.{ .v1 = 11, .v2 = 20664 }), outcome);
}
test "Uc_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us());
}
test "Uc_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us(), outcome);
}
test "Uc_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us(), .{ .v1 = 11, .v2 = 20664 });
}
pub export fn zig_assert_Uc_Us(lv: c.Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11) err = 1;
    if (lv.v2 != 20664) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us() c.Uc_Us {
    return .{ .v1 = 11, .v2 = 20664 };
}

// From T_Snnn_xba.c:9952:9972
// struct  Uc_Us_C  {
//   unsigned char v1;
//   unsigned short v2;
//   char v3;
// };

test "Uc_Us_C: layout" {
    var lv: c.Uc_Us_C = undefined;
    try testing.expectSize(c.Uc_Us_C, 6);
    try testing.expectAlign(c.Uc_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Us_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us_C(.{ .v1 = 66, .v2 = 16863, .v3 = 105 }), outcome);
}
test "Uc_Us_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_C());
}
test "Uc_Us_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_C(), outcome);
}
test "Uc_Us_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_C(), .{ .v1 = 66, .v2 = 16863, .v3 = 105 });
}
pub export fn zig_assert_Uc_Us_C(lv: c.Uc_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 66) err = 1;
    if (lv.v2 != 16863) err = 2;
    if (lv.v3 != 105) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_C() c.Uc_Us_C {
    return .{ .v1 = 66, .v2 = 16863, .v3 = 105 };
}

// From T_Snnn_xba.c:9977:9997
// struct  Uc_Us_D  {
//   unsigned char v1;
//   unsigned short v2;
//   double v3;
// };

test "Uc_Us_D: layout" {
    var lv: c.Uc_Us_D = undefined;
    try testing.expectSize(c.Uc_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Us_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Uc_Us_D(.{ .v1 = 109, .v2 = 4777, .v3 = 0.875 }), outcome);
}
test "Uc_Us_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_D());
}
test "Uc_Us_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_D(), outcome);
}
test "Uc_Us_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_D(), .{ .v1 = 109, .v2 = 4777, .v3 = 0.875 });
}
pub export fn zig_assert_Uc_Us_D(lv: c.Uc_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 109) err = 1;
    if (lv.v2 != 4777) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_D() c.Uc_Us_D {
    return .{ .v1 = 109, .v2 = 4777, .v3 = 0.875 };
}

// From T_Snnn_xba.c:10002:10022
// struct  Uc_Us_F  {
//   unsigned char v1;
//   unsigned short v2;
//   float v3;
// };

test "Uc_Us_F: layout" {
    var lv: c.Uc_Us_F = undefined;
    try testing.expectSize(c.Uc_Us_F, 8);
    try testing.expectAlign(c.Uc_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Us_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us_F(.{ .v1 = 56, .v2 = 24913, .v3 = 0.875 }), outcome);
}
test "Uc_Us_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_F());
}
test "Uc_Us_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_F(), outcome);
}
test "Uc_Us_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_F(), .{ .v1 = 56, .v2 = 24913, .v3 = 0.875 });
}
pub export fn zig_assert_Uc_Us_F(lv: c.Uc_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 56) err = 1;
    if (lv.v2 != 24913) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_F() c.Uc_Us_F {
    return .{ .v1 = 56, .v2 = 24913, .v3 = 0.875 };
}

// From T_Snnn_xba.c:10027:10047
// struct  Uc_Us_I  {
//   unsigned char v1;
//   unsigned short v2;
//   int v3;
// };

test "Uc_Us_I: layout" {
    var lv: c.Uc_Us_I = undefined;
    try testing.expectSize(c.Uc_Us_I, 8);
    try testing.expectAlign(c.Uc_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Us_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us_I(.{ .v1 = 68, .v2 = 16847, .v3 = 29863 }), outcome);
}
test "Uc_Us_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_I());
}
test "Uc_Us_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_I(), outcome);
}
test "Uc_Us_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_I(), .{ .v1 = 68, .v2 = 16847, .v3 = 29863 });
}
pub export fn zig_assert_Uc_Us_I(lv: c.Uc_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 68) err = 1;
    if (lv.v2 != 16847) err = 2;
    if (lv.v3 != 29863) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_I() c.Uc_Us_I {
    return .{ .v1 = 68, .v2 = 16847, .v3 = 29863 };
}

// From T_Snnn_xba.c:10052:10072
// struct  Uc_Us_Ip  {
//   unsigned char v1;
//   unsigned short v2;
//   int *v3;
// };

test "Uc_Us_Ip: layout" {
    var lv: c.Uc_Us_Ip = undefined;
    try testing.expectSize(c.Uc_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Us_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us_Ip(.{ .v1 = 104, .v2 = 19355, .v3 = null }), outcome);
}
test "Uc_Us_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_Ip());
}
test "Uc_Us_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_Ip(), outcome);
}
test "Uc_Us_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_Ip(), .{ .v1 = 104, .v2 = 19355, .v3 = null });
}
pub export fn zig_assert_Uc_Us_Ip(lv: c.Uc_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 104) err = 1;
    if (lv.v2 != 19355) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_Ip() c.Uc_Us_Ip {
    return .{ .v1 = 104, .v2 = 19355, .v3 = null };
}

// From T_Snnn_xba.c:10077:10097
// struct  Uc_Us_L  {
//   unsigned char v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Uc_Us_L: layout" {
    var lv: c.Uc_Us_L = undefined;
    try testing.expectSize(c.Uc_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Us_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us_L(.{ .v1 = 118, .v2 = 31733, .v3 = 29196 }), outcome);
}
test "Uc_Us_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_L());
}
test "Uc_Us_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_L(), outcome);
}
test "Uc_Us_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_L(), .{ .v1 = 118, .v2 = 31733, .v3 = 29196 });
}
pub export fn zig_assert_Uc_Us_L(lv: c.Uc_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 118) err = 1;
    if (lv.v2 != 31733) err = 2;
    if (lv.v3 != 29196) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_L() c.Uc_Us_L {
    return .{ .v1 = 118, .v2 = 31733, .v3 = 29196 };
}

// From T_Snnn_xba.c:10102:10122
// struct  Uc_Us_S  {
//   unsigned char v1;
//   unsigned short v2;
//   short v3;
// };

test "Uc_Us_S: layout" {
    var lv: c.Uc_Us_S = undefined;
    try testing.expectSize(c.Uc_Us_S, 6);
    try testing.expectAlign(c.Uc_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Us_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us_S(.{ .v1 = 58, .v2 = 1589, .v3 = 9859 }), outcome);
}
test "Uc_Us_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_S());
}
test "Uc_Us_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_S(), outcome);
}
test "Uc_Us_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_S(), .{ .v1 = 58, .v2 = 1589, .v3 = 9859 });
}
pub export fn zig_assert_Uc_Us_S(lv: c.Uc_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 58) err = 1;
    if (lv.v2 != 1589) err = 2;
    if (lv.v3 != 9859) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_S() c.Uc_Us_S {
    return .{ .v1 = 58, .v2 = 1589, .v3 = 9859 };
}

// From T_Snnn_xba.c:10127:10147
// struct  Uc_Us_Uc  {
//   unsigned char v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Uc_Us_Uc: layout" {
    var lv: c.Uc_Us_Uc = undefined;
    try testing.expectSize(c.Uc_Us_Uc, 6);
    try testing.expectAlign(c.Uc_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Us_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us_Uc(.{ .v1 = 25, .v2 = 20741, .v3 = 20 }), outcome);
}
test "Uc_Us_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_Uc());
}
test "Uc_Us_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_Uc(), outcome);
}
test "Uc_Us_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_Uc(), .{ .v1 = 25, .v2 = 20741, .v3 = 20 });
}
pub export fn zig_assert_Uc_Us_Uc(lv: c.Uc_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25) err = 1;
    if (lv.v2 != 20741) err = 2;
    if (lv.v3 != 20) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_Uc() c.Uc_Us_Uc {
    return .{ .v1 = 25, .v2 = 20741, .v3 = 20 };
}

// From T_Snnn_xba.c:10152:10172
// struct  Uc_Us_Ui  {
//   unsigned char v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Uc_Us_Ui: layout" {
    var lv: c.Uc_Us_Ui = undefined;
    try testing.expectSize(c.Uc_Us_Ui, 8);
    try testing.expectAlign(c.Uc_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Us_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us_Ui(.{ .v1 = 15, .v2 = 22487, .v3 = 26117 }), outcome);
}
test "Uc_Us_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_Ui());
}
test "Uc_Us_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_Ui(), outcome);
}
test "Uc_Us_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_Ui(), .{ .v1 = 15, .v2 = 22487, .v3 = 26117 });
}
pub export fn zig_assert_Uc_Us_Ui(lv: c.Uc_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15) err = 1;
    if (lv.v2 != 22487) err = 2;
    if (lv.v3 != 26117) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_Ui() c.Uc_Us_Ui {
    return .{ .v1 = 15, .v2 = 22487, .v3 = 26117 };
}

// From T_Snnn_xba.c:10177:10197
// struct  Uc_Us_Ul  {
//   unsigned char v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Uc_Us_Ul: layout" {
    var lv: c.Uc_Us_Ul = undefined;
    try testing.expectSize(c.Uc_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Us_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us_Ul(.{ .v1 = 23, .v2 = 17738, .v3 = 19845 }), outcome);
}
test "Uc_Us_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_Ul());
}
test "Uc_Us_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_Ul(), outcome);
}
test "Uc_Us_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_Ul(), .{ .v1 = 23, .v2 = 17738, .v3 = 19845 });
}
pub export fn zig_assert_Uc_Us_Ul(lv: c.Uc_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23) err = 1;
    if (lv.v2 != 17738) err = 2;
    if (lv.v3 != 19845) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_Ul() c.Uc_Us_Ul {
    return .{ .v1 = 23, .v2 = 17738, .v3 = 19845 };
}

// From T_Snnn_xba.c:10202:10222
// struct  Uc_Us_Us  {
//   unsigned char v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Uc_Us_Us: layout" {
    var lv: c.Uc_Us_Us = undefined;
    try testing.expectSize(c.Uc_Us_Us, 6);
    try testing.expectAlign(c.Uc_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Us_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us_Us(.{ .v1 = 100, .v2 = 4864, .v3 = 3212 }), outcome);
}
test "Uc_Us_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_Us());
}
test "Uc_Us_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_Us(), outcome);
}
test "Uc_Us_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_Us(), .{ .v1 = 100, .v2 = 4864, .v3 = 3212 });
}
pub export fn zig_assert_Uc_Us_Us(lv: c.Uc_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 100) err = 1;
    if (lv.v2 != 4864) err = 2;
    if (lv.v3 != 3212) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_Us() c.Uc_Us_Us {
    return .{ .v1 = 100, .v2 = 4864, .v3 = 3212 };
}

// From T_Snnn_xba.c:10227:10247
// struct  Uc_Us_Vp  {
//   unsigned char v1;
//   unsigned short v2;
//   void *v3;
// };

test "Uc_Us_Vp: layout" {
    var lv: c.Uc_Us_Vp = undefined;
    try testing.expectSize(c.Uc_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Us_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Us_Vp(.{ .v1 = 63, .v2 = 3507, .v3 = null }), outcome);
}
test "Uc_Us_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Us_Vp());
}
test "Uc_Us_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Us_Vp(), outcome);
}
test "Uc_Us_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Us_Vp(), .{ .v1 = 63, .v2 = 3507, .v3 = null });
}
pub export fn zig_assert_Uc_Us_Vp(lv: c.Uc_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 63) err = 1;
    if (lv.v2 != 3507) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_Vp() c.Uc_Us_Vp {
    return .{ .v1 = 63, .v2 = 3507, .v3 = null };
}

// From T_Snnn_xba.c:10252:10270
// struct  Uc_Vp  {
//   unsigned char v1;
//   void *v2;
// };

test "Uc_Vp: layout" {
    var lv: c.Uc_Vp = undefined;
    try testing.expectSize(c.Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Uc_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp(.{ .v1 = 56, .v2 = null }), outcome);
}
test "Uc_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp());
}
test "Uc_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp(), outcome);
}
test "Uc_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp(), .{ .v1 = 56, .v2 = null });
}
pub export fn zig_assert_Uc_Vp(lv: c.Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 56) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp() c.Uc_Vp {
    return .{ .v1 = 56, .v2 = null };
}

// From T_Snnn_xba.c:10999:11019
// struct  Uc_Vp_C  {
//   unsigned char v1;
//   void *v2;
//   char v3;
// };

test "Uc_Vp_C: layout" {
    var lv: c.Uc_Vp_C = undefined;
    try testing.expectSize(c.Uc_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_C(.{ .v1 = 76, .v2 = null, .v3 = 63 }), outcome);
}
test "Uc_Vp_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_C());
}
test "Uc_Vp_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_C(), outcome);
}
test "Uc_Vp_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_C(), .{ .v1 = 76, .v2 = null, .v3 = 63 });
}
pub export fn zig_assert_Uc_Vp_C(lv: c.Uc_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 76) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 63) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_C() c.Uc_Vp_C {
    return .{ .v1 = 76, .v2 = null, .v3 = 63 };
}

// From T_Snnn_xba.c:11024:11044
// struct  Uc_Vp_D  {
//   unsigned char v1;
//   void *v2;
//   double v3;
// };

test "Uc_Vp_D: layout" {
    var lv: c.Uc_Vp_D = undefined;
    try testing.expectSize(c.Uc_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_D(.{ .v1 = 111, .v2 = null, .v3 = 0.875 }), outcome);
}
test "Uc_Vp_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_D());
}
test "Uc_Vp_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_D(), outcome);
}
test "Uc_Vp_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_D(), .{ .v1 = 111, .v2 = null, .v3 = 0.875 });
}
pub export fn zig_assert_Uc_Vp_D(lv: c.Uc_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 111) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_D() c.Uc_Vp_D {
    return .{ .v1 = 111, .v2 = null, .v3 = 0.875 };
}

// From T_Snnn_xba.c:11049:11069
// struct  Uc_Vp_F  {
//   unsigned char v1;
//   void *v2;
//   float v3;
// };

test "Uc_Vp_F: layout" {
    var lv: c.Uc_Vp_F = undefined;
    try testing.expectSize(c.Uc_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_F(.{ .v1 = 26, .v2 = null, .v3 = -2.125 }), outcome);
}
test "Uc_Vp_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_F());
}
test "Uc_Vp_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_F(), outcome);
}
test "Uc_Vp_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_F(), .{ .v1 = 26, .v2 = null, .v3 = -2.125 });
}
pub export fn zig_assert_Uc_Vp_F(lv: c.Uc_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_F() c.Uc_Vp_F {
    return .{ .v1 = 26, .v2 = null, .v3 = -2.125 };
}

// From T_Snnn_xba.c:11074:11094
// struct  Uc_Vp_I  {
//   unsigned char v1;
//   void *v2;
//   int v3;
// };

test "Uc_Vp_I: layout" {
    var lv: c.Uc_Vp_I = undefined;
    try testing.expectSize(c.Uc_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_I(.{ .v1 = 69, .v2 = null, .v3 = 31332 }), outcome);
}
test "Uc_Vp_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_I());
}
test "Uc_Vp_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_I(), outcome);
}
test "Uc_Vp_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_I(), .{ .v1 = 69, .v2 = null, .v3 = 31332 });
}
pub export fn zig_assert_Uc_Vp_I(lv: c.Uc_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 69) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 31332) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_I() c.Uc_Vp_I {
    return .{ .v1 = 69, .v2 = null, .v3 = 31332 };
}

// From T_Snnn_xba.c:11099:11119
// struct  Uc_Vp_Ip  {
//   unsigned char v1;
//   void *v2;
//   int *v3;
// };

test "Uc_Vp_Ip: layout" {
    var lv: c.Uc_Vp_Ip = undefined;
    try testing.expectSize(c.Uc_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_Ip(.{ .v1 = 125, .v2 = null, .v3 = null }), outcome);
}
test "Uc_Vp_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_Ip());
}
test "Uc_Vp_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_Ip(), outcome);
}
test "Uc_Vp_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_Ip(), .{ .v1 = 125, .v2 = null, .v3 = null });
}
pub export fn zig_assert_Uc_Vp_Ip(lv: c.Uc_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 125) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_Ip() c.Uc_Vp_Ip {
    return .{ .v1 = 125, .v2 = null, .v3 = null };
}

// From T_Snnn_xba.c:11124:11144
// struct  Uc_Vp_L  {
//   unsigned char v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Uc_Vp_L: layout" {
    var lv: c.Uc_Vp_L = undefined;
    try testing.expectSize(c.Uc_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_L(.{ .v1 = 64, .v2 = null, .v3 = 243 }), outcome);
}
test "Uc_Vp_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_L());
}
test "Uc_Vp_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_L(), outcome);
}
test "Uc_Vp_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_L(), .{ .v1 = 64, .v2 = null, .v3 = 243 });
}
pub export fn zig_assert_Uc_Vp_L(lv: c.Uc_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 64) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 243) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_L() c.Uc_Vp_L {
    return .{ .v1 = 64, .v2 = null, .v3 = 243 };
}

// From T_Snnn_xba.c:11149:11169
// struct  Uc_Vp_S  {
//   unsigned char v1;
//   void *v2;
//   short v3;
// };

test "Uc_Vp_S: layout" {
    var lv: c.Uc_Vp_S = undefined;
    try testing.expectSize(c.Uc_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_S(.{ .v1 = 2, .v2 = null, .v3 = 25419 }), outcome);
}
test "Uc_Vp_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_S());
}
test "Uc_Vp_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_S(), outcome);
}
test "Uc_Vp_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_S(), .{ .v1 = 2, .v2 = null, .v3 = 25419 });
}
pub export fn zig_assert_Uc_Vp_S(lv: c.Uc_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 25419) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_S() c.Uc_Vp_S {
    return .{ .v1 = 2, .v2 = null, .v3 = 25419 };
}

// From T_Snnn_xba.c:11174:11194
// struct  Uc_Vp_Uc  {
//   unsigned char v1;
//   void *v2;
//   unsigned char v3;
// };

test "Uc_Vp_Uc: layout" {
    var lv: c.Uc_Vp_Uc = undefined;
    try testing.expectSize(c.Uc_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_Uc(.{ .v1 = 113, .v2 = null, .v3 = 51 }), outcome);
}
test "Uc_Vp_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_Uc());
}
test "Uc_Vp_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_Uc(), outcome);
}
test "Uc_Vp_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_Uc(), .{ .v1 = 113, .v2 = null, .v3 = 51 });
}
pub export fn zig_assert_Uc_Vp_Uc(lv: c.Uc_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 113) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 51) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_Uc() c.Uc_Vp_Uc {
    return .{ .v1 = 113, .v2 = null, .v3 = 51 };
}

// From T_Snnn_xba.c:11199:11219
// struct  Uc_Vp_Ui  {
//   unsigned char v1;
//   void *v2;
//   unsigned int v3;
// };

test "Uc_Vp_Ui: layout" {
    var lv: c.Uc_Vp_Ui = undefined;
    try testing.expectSize(c.Uc_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_Ui(.{ .v1 = 126, .v2 = null, .v3 = 438 }), outcome);
}
test "Uc_Vp_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_Ui());
}
test "Uc_Vp_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_Ui(), outcome);
}
test "Uc_Vp_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_Ui(), .{ .v1 = 126, .v2 = null, .v3 = 438 });
}
pub export fn zig_assert_Uc_Vp_Ui(lv: c.Uc_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 126) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 438) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_Ui() c.Uc_Vp_Ui {
    return .{ .v1 = 126, .v2 = null, .v3 = 438 };
}

// From T_Snnn_xba.c:11224:11244
// struct  Uc_Vp_Ul  {
//   unsigned char v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Uc_Vp_Ul: layout" {
    var lv: c.Uc_Vp_Ul = undefined;
    try testing.expectSize(c.Uc_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_Ul(.{ .v1 = 42, .v2 = null, .v3 = 8304 }), outcome);
}
test "Uc_Vp_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_Ul());
}
test "Uc_Vp_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_Ul(), outcome);
}
test "Uc_Vp_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_Ul(), .{ .v1 = 42, .v2 = null, .v3 = 8304 });
}
pub export fn zig_assert_Uc_Vp_Ul(lv: c.Uc_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 42) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 8304) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_Ul() c.Uc_Vp_Ul {
    return .{ .v1 = 42, .v2 = null, .v3 = 8304 };
}

// From T_Snnn_xba.c:11249:11269
// struct  Uc_Vp_Us  {
//   unsigned char v1;
//   void *v2;
//   unsigned short v3;
// };

test "Uc_Vp_Us: layout" {
    var lv: c.Uc_Vp_Us = undefined;
    try testing.expectSize(c.Uc_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_Us(.{ .v1 = 67, .v2 = null, .v3 = 32011 }), outcome);
}
test "Uc_Vp_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_Us());
}
test "Uc_Vp_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_Us(), outcome);
}
test "Uc_Vp_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_Us(), .{ .v1 = 67, .v2 = null, .v3 = 32011 });
}
pub export fn zig_assert_Uc_Vp_Us(lv: c.Uc_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 67) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 32011) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_Us() c.Uc_Vp_Us {
    return .{ .v1 = 67, .v2 = null, .v3 = 32011 };
}

// From T_Snnn_xba.c:11274:11294
// struct  Uc_Vp_Vp  {
//   unsigned char v1;
//   void *v2;
//   void *v3;
// };

test "Uc_Vp_Vp: layout" {
    var lv: c.Uc_Vp_Vp = undefined;
    try testing.expectSize(c.Uc_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Uc_Vp_Vp(.{ .v1 = 63, .v2 = null, .v3 = null }), outcome);
}
test "Uc_Vp_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_Vp_Vp());
}
test "Uc_Vp_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Uc_Vp_Vp(), outcome);
}
test "Uc_Vp_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_Vp_Vp(), .{ .v1 = 63, .v2 = null, .v3 = null });
}
pub export fn zig_assert_Uc_Vp_Vp(lv: c.Uc_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 63) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_Vp() c.Uc_Vp_Vp {
    return .{ .v1 = 63, .v2 = null, .v3 = null };
}

// From T_Snnn_xba.c:11299:11315
// struct  Ui  {
//   unsigned int v1;
// };

test "Ui: layout" {
    var lv: c.Ui = undefined;
    try testing.expectSize(c.Ui, 4);
    try testing.expectAlign(c.Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui(.{ .v1 = 21566 }), outcome);
}
test "Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui());
}
test "Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui(), outcome);
}
test "Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui(), .{ .v1 = 21566 });
}
pub export fn zig_assert_Ui(lv: c.Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21566) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui() c.Ui {
    return .{ .v1 = 21566 };
}

// From T_Snnn_xba.c:41620:41638
// struct  Ui_C  {
//   unsigned int v1;
//   char v2;
// };

test "Ui_C: layout" {
    var lv: c.Ui_C = undefined;
    try testing.expectSize(c.Ui_C, 8);
    try testing.expectAlign(c.Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Ui_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_C(.{ .v1 = 5325, .v2 = 119 }), outcome);
}
test "Ui_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C());
}
test "Ui_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C(), outcome);
}
test "Ui_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C(), .{ .v1 = 5325, .v2 = 119 });
}
pub export fn zig_assert_Ui_C(lv: c.Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5325) err = 1;
    if (lv.v2 != 119) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C() c.Ui_C {
    return .{ .v1 = 5325, .v2 = 119 };
}

// From T_Snnn_xba.c:42367:42387
// struct  Ui_C_C  {
//   unsigned int v1;
//   char v2;
//   char v3;
// };

test "Ui_C_C: layout" {
    var lv: c.Ui_C_C = undefined;
    try testing.expectSize(c.Ui_C_C, 8);
    try testing.expectAlign(c.Ui_C_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "Ui_C_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_C_C(.{ .v1 = 2074, .v2 = 30, .v3 = 98 }), outcome);
}
test "Ui_C_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_C());
}
test "Ui_C_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_C(), outcome);
}
test "Ui_C_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_C(), .{ .v1 = 2074, .v2 = 30, .v3 = 98 });
}
pub export fn zig_assert_Ui_C_C(lv: c.Ui_C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2074) err = 1;
    if (lv.v2 != 30) err = 2;
    if (lv.v3 != 98) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_C() c.Ui_C_C {
    return .{ .v1 = 2074, .v2 = 30, .v3 = 98 };
}

// From T_Snnn_xba.c:42392:42412
// struct  Ui_C_D  {
//   unsigned int v1;
//   char v2;
//   double v3;
// };

test "Ui_C_D: layout" {
    var lv: c.Ui_C_D = undefined;
    try testing.expectSize(c.Ui_C_D, 16);
    try testing.expectAlign(c.Ui_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_C_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_C_D(.{ .v1 = 20111, .v2 = 51, .v3 = -2.125 }), outcome);
}
test "Ui_C_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_D());
}
test "Ui_C_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_D(), outcome);
}
test "Ui_C_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_D(), .{ .v1 = 20111, .v2 = 51, .v3 = -2.125 });
}
pub export fn zig_assert_Ui_C_D(lv: c.Ui_C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20111) err = 1;
    if (lv.v2 != 51) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_D() c.Ui_C_D {
    return .{ .v1 = 20111, .v2 = 51, .v3 = -2.125 };
}

// From T_Snnn_xba.c:42417:42437
// struct  Ui_C_F  {
//   unsigned int v1;
//   char v2;
//   float v3;
// };

test "Ui_C_F: layout" {
    var lv: c.Ui_C_F = undefined;
    try testing.expectSize(c.Ui_C_F, 12);
    try testing.expectAlign(c.Ui_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_C_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_C_F(.{ .v1 = 4499, .v2 = 63, .v3 = 0.5 }), outcome);
}
test "Ui_C_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_F());
}
test "Ui_C_F: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_F(), outcome);
}
test "Ui_C_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_F(), .{ .v1 = 4499, .v2 = 63, .v3 = 0.5 });
}
pub export fn zig_assert_Ui_C_F(lv: c.Ui_C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4499) err = 1;
    if (lv.v2 != 63) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_F() c.Ui_C_F {
    return .{ .v1 = 4499, .v2 = 63, .v3 = 0.5 };
}

// From T_Snnn_xba.c:42442:42462
// struct  Ui_C_I  {
//   unsigned int v1;
//   char v2;
//   int v3;
// };

test "Ui_C_I: layout" {
    var lv: c.Ui_C_I = undefined;
    try testing.expectSize(c.Ui_C_I, 12);
    try testing.expectAlign(c.Ui_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_C_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_C_I(.{ .v1 = 4844, .v2 = 10, .v3 = 26553 }), outcome);
}
test "Ui_C_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_I());
}
test "Ui_C_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_I(), outcome);
}
test "Ui_C_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_I(), .{ .v1 = 4844, .v2 = 10, .v3 = 26553 });
}
pub export fn zig_assert_Ui_C_I(lv: c.Ui_C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4844) err = 1;
    if (lv.v2 != 10) err = 2;
    if (lv.v3 != 26553) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_I() c.Ui_C_I {
    return .{ .v1 = 4844, .v2 = 10, .v3 = 26553 };
}

// From T_Snnn_xba.c:42467:42487
// struct  Ui_C_Ip  {
//   unsigned int v1;
//   char v2;
//   int *v3;
// };

test "Ui_C_Ip: layout" {
    var lv: c.Ui_C_Ip = undefined;
    try testing.expectSize(c.Ui_C_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_C_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_C_Ip(.{ .v1 = 26337, .v2 = 121, .v3 = null }), outcome);
}
test "Ui_C_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_Ip());
}
test "Ui_C_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_Ip(), outcome);
}
test "Ui_C_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_Ip(), .{ .v1 = 26337, .v2 = 121, .v3 = null });
}
pub export fn zig_assert_Ui_C_Ip(lv: c.Ui_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26337) err = 1;
    if (lv.v2 != 121) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_Ip() c.Ui_C_Ip {
    return .{ .v1 = 26337, .v2 = 121, .v3 = null };
}

// From T_Snnn_xba.c:42492:42512
// struct  Ui_C_L  {
//   unsigned int v1;
//   char v2;
//   __tsi64 v3;
// };

test "Ui_C_L: layout" {
    var lv: c.Ui_C_L = undefined;
    try testing.expectSize(c.Ui_C_L, 16);
    try testing.expectAlign(c.Ui_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_C_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_C_L(.{ .v1 = 2961, .v2 = 67, .v3 = 151 }), outcome);
}
test "Ui_C_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_L());
}
test "Ui_C_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_L(), outcome);
}
test "Ui_C_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_L(), .{ .v1 = 2961, .v2 = 67, .v3 = 151 });
}
pub export fn zig_assert_Ui_C_L(lv: c.Ui_C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2961) err = 1;
    if (lv.v2 != 67) err = 2;
    if (lv.v3 != 151) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_L() c.Ui_C_L {
    return .{ .v1 = 2961, .v2 = 67, .v3 = 151 };
}

// From T_Snnn_xba.c:42517:42537
// struct  Ui_C_S  {
//   unsigned int v1;
//   char v2;
//   short v3;
// };

test "Ui_C_S: layout" {
    var lv: c.Ui_C_S = undefined;
    try testing.expectSize(c.Ui_C_S, 8);
    try testing.expectAlign(c.Ui_C_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_C_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_C_S(.{ .v1 = 10462, .v2 = 51, .v3 = 15361 }), outcome);
}
test "Ui_C_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_S());
}
test "Ui_C_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_S(), outcome);
}
test "Ui_C_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_S(), .{ .v1 = 10462, .v2 = 51, .v3 = 15361 });
}
pub export fn zig_assert_Ui_C_S(lv: c.Ui_C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10462) err = 1;
    if (lv.v2 != 51) err = 2;
    if (lv.v3 != 15361) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_S() c.Ui_C_S {
    return .{ .v1 = 10462, .v2 = 51, .v3 = 15361 };
}

// From T_Snnn_xba.c:42542:42562
// struct  Ui_C_Uc  {
//   unsigned int v1;
//   char v2;
//   unsigned char v3;
// };

test "Ui_C_Uc: layout" {
    var lv: c.Ui_C_Uc = undefined;
    try testing.expectSize(c.Ui_C_Uc, 8);
    try testing.expectAlign(c.Ui_C_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "Ui_C_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_C_Uc(.{ .v1 = 2638, .v2 = 20, .v3 = 80 }), outcome);
}
test "Ui_C_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_Uc());
}
test "Ui_C_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_Uc(), outcome);
}
test "Ui_C_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_Uc(), .{ .v1 = 2638, .v2 = 20, .v3 = 80 });
}
pub export fn zig_assert_Ui_C_Uc(lv: c.Ui_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2638) err = 1;
    if (lv.v2 != 20) err = 2;
    if (lv.v3 != 80) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_Uc() c.Ui_C_Uc {
    return .{ .v1 = 2638, .v2 = 20, .v3 = 80 };
}

// From T_Snnn_xba.c:42567:42587
// struct  Ui_C_Ui  {
//   unsigned int v1;
//   char v2;
//   unsigned int v3;
// };

test "Ui_C_Ui: layout" {
    var lv: c.Ui_C_Ui = undefined;
    try testing.expectSize(c.Ui_C_Ui, 12);
    try testing.expectAlign(c.Ui_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_C_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_C_Ui(.{ .v1 = 29478, .v2 = 57, .v3 = 22998 }), outcome);
}
test "Ui_C_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_Ui());
}
test "Ui_C_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_Ui(), outcome);
}
test "Ui_C_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_Ui(), .{ .v1 = 29478, .v2 = 57, .v3 = 22998 });
}
pub export fn zig_assert_Ui_C_Ui(lv: c.Ui_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29478) err = 1;
    if (lv.v2 != 57) err = 2;
    if (lv.v3 != 22998) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_Ui() c.Ui_C_Ui {
    return .{ .v1 = 29478, .v2 = 57, .v3 = 22998 };
}

// From T_Snnn_xba.c:42592:42612
// struct  Ui_C_Ul  {
//   unsigned int v1;
//   char v2;
//   __tsu64 v3;
// };

test "Ui_C_Ul: layout" {
    var lv: c.Ui_C_Ul = undefined;
    try testing.expectSize(c.Ui_C_Ul, 16);
    try testing.expectAlign(c.Ui_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_C_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_C_Ul(.{ .v1 = 19449, .v2 = 47, .v3 = 7381 }), outcome);
}
test "Ui_C_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_Ul());
}
test "Ui_C_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_Ul(), outcome);
}
test "Ui_C_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_Ul(), .{ .v1 = 19449, .v2 = 47, .v3 = 7381 });
}
pub export fn zig_assert_Ui_C_Ul(lv: c.Ui_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19449) err = 1;
    if (lv.v2 != 47) err = 2;
    if (lv.v3 != 7381) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_Ul() c.Ui_C_Ul {
    return .{ .v1 = 19449, .v2 = 47, .v3 = 7381 };
}

// From T_Snnn_xba.c:42617:42637
// struct  Ui_C_Us  {
//   unsigned int v1;
//   char v2;
//   unsigned short v3;
// };

test "Ui_C_Us: layout" {
    var lv: c.Ui_C_Us = undefined;
    try testing.expectSize(c.Ui_C_Us, 8);
    try testing.expectAlign(c.Ui_C_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_C_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_C_Us(.{ .v1 = 31946, .v2 = 14, .v3 = 8587 }), outcome);
}
test "Ui_C_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_Us());
}
test "Ui_C_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_Us(), outcome);
}
test "Ui_C_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_Us(), .{ .v1 = 31946, .v2 = 14, .v3 = 8587 });
}
pub export fn zig_assert_Ui_C_Us(lv: c.Ui_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31946) err = 1;
    if (lv.v2 != 14) err = 2;
    if (lv.v3 != 8587) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_Us() c.Ui_C_Us {
    return .{ .v1 = 31946, .v2 = 14, .v3 = 8587 };
}

// From T_Snnn_xba.c:42642:42662
// struct  Ui_C_Vp  {
//   unsigned int v1;
//   char v2;
//   void *v3;
// };

test "Ui_C_Vp: layout" {
    var lv: c.Ui_C_Vp = undefined;
    try testing.expectSize(c.Ui_C_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_C_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_C_Vp(.{ .v1 = 29098, .v2 = 38, .v3 = null }), outcome);
}
test "Ui_C_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_C_Vp());
}
test "Ui_C_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_C_Vp(), outcome);
}
test "Ui_C_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_C_Vp(), .{ .v1 = 29098, .v2 = 38, .v3 = null });
}
pub export fn zig_assert_Ui_C_Vp(lv: c.Ui_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29098) err = 1;
    if (lv.v2 != 38) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_Vp() c.Ui_C_Vp {
    return .{ .v1 = 29098, .v2 = 38, .v3 = null };
}

// From T_Snnn_xba.c:42667:42685
// struct  Ui_D  {
//   unsigned int v1;
//   double v2;
// };

test "Ui_D: layout" {
    var lv: c.Ui_D = undefined;
    try testing.expectSize(c.Ui_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ui_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_D(.{ .v1 = 315, .v2 = 4.5 }), outcome);
}
test "Ui_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D());
}
test "Ui_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D(), outcome);
}
test "Ui_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D(), .{ .v1 = 315, .v2 = 4.5 });
}
pub export fn zig_assert_Ui_D(lv: c.Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 315) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D() c.Ui_D {
    return .{ .v1 = 315, .v2 = 4.5 };
}

// From T_Snnn_xba.c:43414:43434
// struct  Ui_D_C  {
//   unsigned int v1;
//   double v2;
//   char v3;
// };

test "Ui_D_C: layout" {
    var lv: c.Ui_D_C = undefined;
    try testing.expectSize(c.Ui_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_C(.{ .v1 = 16474, .v2 = 0.5, .v3 = 96 }), outcome);
}
test "Ui_D_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_C());
}
test "Ui_D_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_C(), outcome);
}
test "Ui_D_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_C(), .{ .v1 = 16474, .v2 = 0.5, .v3 = 96 });
}
pub export fn zig_assert_Ui_D_C(lv: c.Ui_D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16474) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 96) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_C() c.Ui_D_C {
    return .{ .v1 = 16474, .v2 = 0.5, .v3 = 96 };
}

// From T_Snnn_xba.c:43439:43459
// struct  Ui_D_D  {
//   unsigned int v1;
//   double v2;
//   double v3;
// };

test "Ui_D_D: layout" {
    var lv: c.Ui_D_D = undefined;
    try testing.expectSize(c.Ui_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_D(.{ .v1 = 25546, .v2 = 1.0, .v3 = -2.125 }), outcome);
}
test "Ui_D_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_D());
}
test "Ui_D_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_D(), outcome);
}
test "Ui_D_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_D(), .{ .v1 = 25546, .v2 = 1.0, .v3 = -2.125 });
}
pub export fn zig_assert_Ui_D_D(lv: c.Ui_D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25546) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_D() c.Ui_D_D {
    return .{ .v1 = 25546, .v2 = 1.0, .v3 = -2.125 };
}

// From T_Snnn_xba.c:43464:43484
// struct  Ui_D_F  {
//   unsigned int v1;
//   double v2;
//   float v3;
// };

test "Ui_D_F: layout" {
    var lv: c.Ui_D_F = undefined;
    try testing.expectSize(c.Ui_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_F(.{ .v1 = 29141, .v2 = -2.125, .v3 = 0.5 }), outcome);
}
test "Ui_D_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_F());
}
test "Ui_D_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_F(), outcome);
}
test "Ui_D_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_F(), .{ .v1 = 29141, .v2 = -2.125, .v3 = 0.5 });
}
pub export fn zig_assert_Ui_D_F(lv: c.Ui_D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29141) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_F() c.Ui_D_F {
    return .{ .v1 = 29141, .v2 = -2.125, .v3 = 0.5 };
}

// From T_Snnn_xba.c:43489:43509
// struct  Ui_D_I  {
//   unsigned int v1;
//   double v2;
//   int v3;
// };

test "Ui_D_I: layout" {
    var lv: c.Ui_D_I = undefined;
    try testing.expectSize(c.Ui_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_I(.{ .v1 = 1975, .v2 = -2.125, .v3 = 5749 }), outcome);
}
test "Ui_D_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_I());
}
test "Ui_D_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_I(), outcome);
}
test "Ui_D_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_I(), .{ .v1 = 1975, .v2 = -2.125, .v3 = 5749 });
}
pub export fn zig_assert_Ui_D_I(lv: c.Ui_D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1975) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 5749) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_I() c.Ui_D_I {
    return .{ .v1 = 1975, .v2 = -2.125, .v3 = 5749 };
}

// From T_Snnn_xba.c:43514:43534
// struct  Ui_D_Ip  {
//   unsigned int v1;
//   double v2;
//   int *v3;
// };

test "Ui_D_Ip: layout" {
    var lv: c.Ui_D_Ip = undefined;
    try testing.expectSize(c.Ui_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_Ip(.{ .v1 = 16414, .v2 = -2.125, .v3 = null }), outcome);
}
test "Ui_D_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_Ip());
}
test "Ui_D_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_Ip(), outcome);
}
test "Ui_D_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_Ip(), .{ .v1 = 16414, .v2 = -2.125, .v3 = null });
}
pub export fn zig_assert_Ui_D_Ip(lv: c.Ui_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16414) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_Ip() c.Ui_D_Ip {
    return .{ .v1 = 16414, .v2 = -2.125, .v3 = null };
}

// From T_Snnn_xba.c:43539:43559
// struct  Ui_D_L  {
//   unsigned int v1;
//   double v2;
//   __tsi64 v3;
// };

test "Ui_D_L: layout" {
    var lv: c.Ui_D_L = undefined;
    try testing.expectSize(c.Ui_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_L(.{ .v1 = 4261, .v2 = 0.5, .v3 = 28898 }), outcome);
}
test "Ui_D_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_L());
}
test "Ui_D_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_L(), outcome);
}
test "Ui_D_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_L(), .{ .v1 = 4261, .v2 = 0.5, .v3 = 28898 });
}
pub export fn zig_assert_Ui_D_L(lv: c.Ui_D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4261) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 28898) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_L() c.Ui_D_L {
    return .{ .v1 = 4261, .v2 = 0.5, .v3 = 28898 };
}

// From T_Snnn_xba.c:43564:43584
// struct  Ui_D_S  {
//   unsigned int v1;
//   double v2;
//   short v3;
// };

test "Ui_D_S: layout" {
    var lv: c.Ui_D_S = undefined;
    try testing.expectSize(c.Ui_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_S(.{ .v1 = 15608, .v2 = 1.0, .v3 = 13134 }), outcome);
}
test "Ui_D_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_S());
}
test "Ui_D_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_S(), outcome);
}
test "Ui_D_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_S(), .{ .v1 = 15608, .v2 = 1.0, .v3 = 13134 });
}
pub export fn zig_assert_Ui_D_S(lv: c.Ui_D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15608) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 13134) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_S() c.Ui_D_S {
    return .{ .v1 = 15608, .v2 = 1.0, .v3 = 13134 };
}

// From T_Snnn_xba.c:43589:43609
// struct  Ui_D_Uc  {
//   unsigned int v1;
//   double v2;
//   unsigned char v3;
// };

test "Ui_D_Uc: layout" {
    var lv: c.Ui_D_Uc = undefined;
    try testing.expectSize(c.Ui_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_Uc(.{ .v1 = 24011, .v2 = 0.5, .v3 = 44 }), outcome);
}
test "Ui_D_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_Uc());
}
test "Ui_D_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_Uc(), outcome);
}
test "Ui_D_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_Uc(), .{ .v1 = 24011, .v2 = 0.5, .v3 = 44 });
}
pub export fn zig_assert_Ui_D_Uc(lv: c.Ui_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24011) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 44) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_Uc() c.Ui_D_Uc {
    return .{ .v1 = 24011, .v2 = 0.5, .v3 = 44 };
}

// From T_Snnn_xba.c:43614:43634
// struct  Ui_D_Ui  {
//   unsigned int v1;
//   double v2;
//   unsigned int v3;
// };

test "Ui_D_Ui: layout" {
    var lv: c.Ui_D_Ui = undefined;
    try testing.expectSize(c.Ui_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_Ui(.{ .v1 = 14071, .v2 = -0.25, .v3 = 27266 }), outcome);
}
test "Ui_D_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_Ui());
}
test "Ui_D_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_Ui(), outcome);
}
test "Ui_D_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_Ui(), .{ .v1 = 14071, .v2 = -0.25, .v3 = 27266 });
}
pub export fn zig_assert_Ui_D_Ui(lv: c.Ui_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14071) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 27266) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_Ui() c.Ui_D_Ui {
    return .{ .v1 = 14071, .v2 = -0.25, .v3 = 27266 };
}

// From T_Snnn_xba.c:43639:43659
// struct  Ui_D_Ul  {
//   unsigned int v1;
//   double v2;
//   __tsu64 v3;
// };

test "Ui_D_Ul: layout" {
    var lv: c.Ui_D_Ul = undefined;
    try testing.expectSize(c.Ui_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_Ul(.{ .v1 = 30134, .v2 = -0.25, .v3 = 721 }), outcome);
}
test "Ui_D_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_Ul());
}
test "Ui_D_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_Ul(), outcome);
}
test "Ui_D_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_Ul(), .{ .v1 = 30134, .v2 = -0.25, .v3 = 721 });
}
pub export fn zig_assert_Ui_D_Ul(lv: c.Ui_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30134) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 721) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_Ul() c.Ui_D_Ul {
    return .{ .v1 = 30134, .v2 = -0.25, .v3 = 721 };
}

// From T_Snnn_xba.c:43664:43684
// struct  Ui_D_Us  {
//   unsigned int v1;
//   double v2;
//   unsigned short v3;
// };

test "Ui_D_Us: layout" {
    var lv: c.Ui_D_Us = undefined;
    try testing.expectSize(c.Ui_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_Us(.{ .v1 = 5768, .v2 = -0.25, .v3 = 27856 }), outcome);
}
test "Ui_D_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_Us());
}
test "Ui_D_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_Us(), outcome);
}
test "Ui_D_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_Us(), .{ .v1 = 5768, .v2 = -0.25, .v3 = 27856 });
}
pub export fn zig_assert_Ui_D_Us(lv: c.Ui_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5768) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 27856) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_Us() c.Ui_D_Us {
    return .{ .v1 = 5768, .v2 = -0.25, .v3 = 27856 };
}

// From T_Snnn_xba.c:43689:43709
// struct  Ui_D_Vp  {
//   unsigned int v1;
//   double v2;
//   void *v3;
// };

test "Ui_D_Vp: layout" {
    var lv: c.Ui_D_Vp = undefined;
    try testing.expectSize(c.Ui_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_D_Vp(.{ .v1 = 31578, .v2 = 0.5, .v3 = null }), outcome);
}
test "Ui_D_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_D_Vp());
}
test "Ui_D_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_D_Vp(), outcome);
}
test "Ui_D_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_D_Vp(), .{ .v1 = 31578, .v2 = 0.5, .v3 = null });
}
pub export fn zig_assert_Ui_D_Vp(lv: c.Ui_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31578) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_Vp() c.Ui_D_Vp {
    return .{ .v1 = 31578, .v2 = 0.5, .v3 = null };
}

// From T_Snnn_xba.c:43714:43732
// struct  Ui_F  {
//   unsigned int v1;
//   float v2;
// };

test "Ui_F: layout" {
    var lv: c.Ui_F = undefined;
    try testing.expectSize(c.Ui_F, 8);
    try testing.expectAlign(c.Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Ui_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_F(.{ .v1 = 14418, .v2 = 1.0 }), outcome);
}
test "Ui_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F());
}
test "Ui_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F(), outcome);
}
test "Ui_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F(), .{ .v1 = 14418, .v2 = 1.0 });
}
pub export fn zig_assert_Ui_F(lv: c.Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14418) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F() c.Ui_F {
    return .{ .v1 = 14418, .v2 = 1.0 };
}

// From T_Snnn_xba.c:44461:44481
// struct  Ui_F_C  {
//   unsigned int v1;
//   float v2;
//   char v3;
// };

test "Ui_F_C: layout" {
    var lv: c.Ui_F_C = undefined;
    try testing.expectSize(c.Ui_F_C, 12);
    try testing.expectAlign(c.Ui_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_F_C(.{ .v1 = 32003, .v2 = 0.875, .v3 = 101 }), outcome);
}
test "Ui_F_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_C());
}
test "Ui_F_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_C(), outcome);
}
test "Ui_F_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_C(), .{ .v1 = 32003, .v2 = 0.875, .v3 = 101 });
}
pub export fn zig_assert_Ui_F_C(lv: c.Ui_F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32003) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 101) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_C() c.Ui_F_C {
    return .{ .v1 = 32003, .v2 = 0.875, .v3 = 101 };
}

// From T_Snnn_xba.c:44486:44506
// struct  Ui_F_D  {
//   unsigned int v1;
//   float v2;
//   double v3;
// };

test "Ui_F_D: layout" {
    var lv: c.Ui_F_D = undefined;
    try testing.expectSize(c.Ui_F_D, 16);
    try testing.expectAlign(c.Ui_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_F_D(.{ .v1 = 26497, .v2 = 0.5, .v3 = 0.5 }), outcome);
}
test "Ui_F_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_D());
}
test "Ui_F_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_D(), outcome);
}
test "Ui_F_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_D(), .{ .v1 = 26497, .v2 = 0.5, .v3 = 0.5 });
}
pub export fn zig_assert_Ui_F_D(lv: c.Ui_F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26497) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_D() c.Ui_F_D {
    return .{ .v1 = 26497, .v2 = 0.5, .v3 = 0.5 };
}

// From T_Snnn_xba.c:44511:44531
// struct  Ui_F_F  {
//   unsigned int v1;
//   float v2;
//   float v3;
// };

test "Ui_F_F: layout" {
    var lv: c.Ui_F_F = undefined;
    try testing.expectSize(c.Ui_F_F, 12);
    try testing.expectAlign(c.Ui_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_F_F(.{ .v1 = 11461, .v2 = 4.5, .v3 = -2.125 }), outcome);
}
test "Ui_F_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_F());
}
test "Ui_F_F: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_F(), outcome);
}
test "Ui_F_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_F(), .{ .v1 = 11461, .v2 = 4.5, .v3 = -2.125 });
}
pub export fn zig_assert_Ui_F_F(lv: c.Ui_F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11461) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_F() c.Ui_F_F {
    return .{ .v1 = 11461, .v2 = 4.5, .v3 = -2.125 };
}

// From T_Snnn_xba.c:44536:44556
// struct  Ui_F_I  {
//   unsigned int v1;
//   float v2;
//   int v3;
// };

test "Ui_F_I: layout" {
    var lv: c.Ui_F_I = undefined;
    try testing.expectSize(c.Ui_F_I, 12);
    try testing.expectAlign(c.Ui_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_F_I(.{ .v1 = 6626, .v2 = -0.25, .v3 = 6737 }), outcome);
}
test "Ui_F_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_I());
}
test "Ui_F_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_I(), outcome);
}
test "Ui_F_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_I(), .{ .v1 = 6626, .v2 = -0.25, .v3 = 6737 });
}
pub export fn zig_assert_Ui_F_I(lv: c.Ui_F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6626) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 6737) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_I() c.Ui_F_I {
    return .{ .v1 = 6626, .v2 = -0.25, .v3 = 6737 };
}

// From T_Snnn_xba.c:44561:44581
// struct  Ui_F_Ip  {
//   unsigned int v1;
//   float v2;
//   int *v3;
// };

test "Ui_F_Ip: layout" {
    var lv: c.Ui_F_Ip = undefined;
    try testing.expectSize(c.Ui_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_F_Ip(.{ .v1 = 23822, .v2 = 1.0, .v3 = null }), outcome);
}
test "Ui_F_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_Ip());
}
test "Ui_F_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_Ip(), outcome);
}
test "Ui_F_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_Ip(), .{ .v1 = 23822, .v2 = 1.0, .v3 = null });
}
pub export fn zig_assert_Ui_F_Ip(lv: c.Ui_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23822) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_Ip() c.Ui_F_Ip {
    return .{ .v1 = 23822, .v2 = 1.0, .v3 = null };
}

// From T_Snnn_xba.c:44586:44606
// struct  Ui_F_L  {
//   unsigned int v1;
//   float v2;
//   __tsi64 v3;
// };

test "Ui_F_L: layout" {
    var lv: c.Ui_F_L = undefined;
    try testing.expectSize(c.Ui_F_L, 16);
    try testing.expectAlign(c.Ui_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_F_L(.{ .v1 = 5702, .v2 = 1.0, .v3 = 4668 }), outcome);
}
test "Ui_F_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_L());
}
test "Ui_F_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_L(), outcome);
}
test "Ui_F_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_L(), .{ .v1 = 5702, .v2 = 1.0, .v3 = 4668 });
}
pub export fn zig_assert_Ui_F_L(lv: c.Ui_F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5702) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 4668) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_L() c.Ui_F_L {
    return .{ .v1 = 5702, .v2 = 1.0, .v3 = 4668 };
}

// From T_Snnn_xba.c:44611:44631
// struct  Ui_F_S  {
//   unsigned int v1;
//   float v2;
//   short v3;
// };

test "Ui_F_S: layout" {
    var lv: c.Ui_F_S = undefined;
    try testing.expectSize(c.Ui_F_S, 12);
    try testing.expectAlign(c.Ui_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_F_S(.{ .v1 = 18801, .v2 = -2.125, .v3 = 16 }), outcome);
}
test "Ui_F_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_S());
}
test "Ui_F_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_S(), outcome);
}
test "Ui_F_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_S(), .{ .v1 = 18801, .v2 = -2.125, .v3 = 16 });
}
pub export fn zig_assert_Ui_F_S(lv: c.Ui_F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18801) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 16) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_S() c.Ui_F_S {
    return .{ .v1 = 18801, .v2 = -2.125, .v3 = 16 };
}

// From T_Snnn_xba.c:44636:44656
// struct  Ui_F_Uc  {
//   unsigned int v1;
//   float v2;
//   unsigned char v3;
// };

test "Ui_F_Uc: layout" {
    var lv: c.Ui_F_Uc = undefined;
    try testing.expectSize(c.Ui_F_Uc, 12);
    try testing.expectAlign(c.Ui_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_F_Uc(.{ .v1 = 6275, .v2 = 7.0, .v3 = 13 }), outcome);
}
test "Ui_F_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_Uc());
}
test "Ui_F_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_Uc(), outcome);
}
test "Ui_F_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_Uc(), .{ .v1 = 6275, .v2 = 7.0, .v3 = 13 });
}
pub export fn zig_assert_Ui_F_Uc(lv: c.Ui_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6275) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 13) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_Uc() c.Ui_F_Uc {
    return .{ .v1 = 6275, .v2 = 7.0, .v3 = 13 };
}

// From T_Snnn_xba.c:44661:44681
// struct  Ui_F_Ui  {
//   unsigned int v1;
//   float v2;
//   unsigned int v3;
// };

test "Ui_F_Ui: layout" {
    var lv: c.Ui_F_Ui = undefined;
    try testing.expectSize(c.Ui_F_Ui, 12);
    try testing.expectAlign(c.Ui_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_F_Ui(.{ .v1 = 19572, .v2 = 1.0, .v3 = 15260 }), outcome);
}
test "Ui_F_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_Ui());
}
test "Ui_F_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_Ui(), outcome);
}
test "Ui_F_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_Ui(), .{ .v1 = 19572, .v2 = 1.0, .v3 = 15260 });
}
pub export fn zig_assert_Ui_F_Ui(lv: c.Ui_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19572) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 15260) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_Ui() c.Ui_F_Ui {
    return .{ .v1 = 19572, .v2 = 1.0, .v3 = 15260 };
}

// From T_Snnn_xba.c:44686:44706
// struct  Ui_F_Ul  {
//   unsigned int v1;
//   float v2;
//   __tsu64 v3;
// };

test "Ui_F_Ul: layout" {
    var lv: c.Ui_F_Ul = undefined;
    try testing.expectSize(c.Ui_F_Ul, 16);
    try testing.expectAlign(c.Ui_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_F_Ul(.{ .v1 = 14594, .v2 = 0.875, .v3 = 12629 }), outcome);
}
test "Ui_F_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_Ul());
}
test "Ui_F_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_Ul(), outcome);
}
test "Ui_F_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_Ul(), .{ .v1 = 14594, .v2 = 0.875, .v3 = 12629 });
}
pub export fn zig_assert_Ui_F_Ul(lv: c.Ui_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14594) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 12629) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_Ul() c.Ui_F_Ul {
    return .{ .v1 = 14594, .v2 = 0.875, .v3 = 12629 };
}

// From T_Snnn_xba.c:44711:44731
// struct  Ui_F_Us  {
//   unsigned int v1;
//   float v2;
//   unsigned short v3;
// };

test "Ui_F_Us: layout" {
    var lv: c.Ui_F_Us = undefined;
    try testing.expectSize(c.Ui_F_Us, 12);
    try testing.expectAlign(c.Ui_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_F_Us(.{ .v1 = 5740, .v2 = 4.5, .v3 = 28004 }), outcome);
}
test "Ui_F_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_Us());
}
test "Ui_F_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_Us(), outcome);
}
test "Ui_F_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_Us(), .{ .v1 = 5740, .v2 = 4.5, .v3 = 28004 });
}
pub export fn zig_assert_Ui_F_Us(lv: c.Ui_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5740) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 28004) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_Us() c.Ui_F_Us {
    return .{ .v1 = 5740, .v2 = 4.5, .v3 = 28004 };
}

// From T_Snnn_xba.c:44736:44756
// struct  Ui_F_Vp  {
//   unsigned int v1;
//   float v2;
//   void *v3;
// };

test "Ui_F_Vp: layout" {
    var lv: c.Ui_F_Vp = undefined;
    try testing.expectSize(c.Ui_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_F_Vp(.{ .v1 = 7191, .v2 = -0.25, .v3 = null }), outcome);
}
test "Ui_F_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_F_Vp());
}
test "Ui_F_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_F_Vp(), outcome);
}
test "Ui_F_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_F_Vp(), .{ .v1 = 7191, .v2 = -0.25, .v3 = null });
}
pub export fn zig_assert_Ui_F_Vp(lv: c.Ui_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7191) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_Vp() c.Ui_F_Vp {
    return .{ .v1 = 7191, .v2 = -0.25, .v3 = null };
}

// From T_Snnn_xba.c:44761:44779
// struct  Ui_I  {
//   unsigned int v1;
//   int v2;
// };

test "Ui_I: layout" {
    var lv: c.Ui_I = undefined;
    try testing.expectSize(c.Ui_I, 8);
    try testing.expectAlign(c.Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Ui_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_I(.{ .v1 = 16186, .v2 = 17720 }), outcome);
}
test "Ui_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I());
}
test "Ui_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I(), outcome);
}
test "Ui_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I(), .{ .v1 = 16186, .v2 = 17720 });
}
pub export fn zig_assert_Ui_I(lv: c.Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16186) err = 1;
    if (lv.v2 != 17720) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I() c.Ui_I {
    return .{ .v1 = 16186, .v2 = 17720 };
}

// From T_Snnn_xba.c:45508:45528
// struct  Ui_I_C  {
//   unsigned int v1;
//   int v2;
//   char v3;
// };

test "Ui_I_C: layout" {
    var lv: c.Ui_I_C = undefined;
    try testing.expectSize(c.Ui_I_C, 12);
    try testing.expectAlign(c.Ui_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_I_C(.{ .v1 = 12173, .v2 = 24063, .v3 = 17 }), outcome);
}
test "Ui_I_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_C());
}
test "Ui_I_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_C(), outcome);
}
test "Ui_I_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_C(), .{ .v1 = 12173, .v2 = 24063, .v3 = 17 });
}
pub export fn zig_assert_Ui_I_C(lv: c.Ui_I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12173) err = 1;
    if (lv.v2 != 24063) err = 2;
    if (lv.v3 != 17) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_C() c.Ui_I_C {
    return .{ .v1 = 12173, .v2 = 24063, .v3 = 17 };
}

// From T_Snnn_xba.c:45533:45553
// struct  Ui_I_D  {
//   unsigned int v1;
//   int v2;
//   double v3;
// };

test "Ui_I_D: layout" {
    var lv: c.Ui_I_D = undefined;
    try testing.expectSize(c.Ui_I_D, 16);
    try testing.expectAlign(c.Ui_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_I_D(.{ .v1 = 23097, .v2 = 29966, .v3 = 4.5 }), outcome);
}
test "Ui_I_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_D());
}
test "Ui_I_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_D(), outcome);
}
test "Ui_I_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_D(), .{ .v1 = 23097, .v2 = 29966, .v3 = 4.5 });
}
pub export fn zig_assert_Ui_I_D(lv: c.Ui_I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23097) err = 1;
    if (lv.v2 != 29966) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_D() c.Ui_I_D {
    return .{ .v1 = 23097, .v2 = 29966, .v3 = 4.5 };
}

// From T_Snnn_xba.c:45558:45578
// struct  Ui_I_F  {
//   unsigned int v1;
//   int v2;
//   float v3;
// };

test "Ui_I_F: layout" {
    var lv: c.Ui_I_F = undefined;
    try testing.expectSize(c.Ui_I_F, 12);
    try testing.expectAlign(c.Ui_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_I_F(.{ .v1 = 25881, .v2 = 8125, .v3 = 4.5 }), outcome);
}
test "Ui_I_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_F());
}
test "Ui_I_F: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_F(), outcome);
}
test "Ui_I_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_F(), .{ .v1 = 25881, .v2 = 8125, .v3 = 4.5 });
}
pub export fn zig_assert_Ui_I_F(lv: c.Ui_I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25881) err = 1;
    if (lv.v2 != 8125) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_F() c.Ui_I_F {
    return .{ .v1 = 25881, .v2 = 8125, .v3 = 4.5 };
}

// From T_Snnn_xba.c:45583:45603
// struct  Ui_I_I  {
//   unsigned int v1;
//   int v2;
//   int v3;
// };

test "Ui_I_I: layout" {
    var lv: c.Ui_I_I = undefined;
    try testing.expectSize(c.Ui_I_I, 12);
    try testing.expectAlign(c.Ui_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_I_I(.{ .v1 = 17320, .v2 = 21220, .v3 = 31002 }), outcome);
}
test "Ui_I_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_I());
}
test "Ui_I_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_I(), outcome);
}
test "Ui_I_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_I(), .{ .v1 = 17320, .v2 = 21220, .v3 = 31002 });
}
pub export fn zig_assert_Ui_I_I(lv: c.Ui_I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17320) err = 1;
    if (lv.v2 != 21220) err = 2;
    if (lv.v3 != 31002) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_I() c.Ui_I_I {
    return .{ .v1 = 17320, .v2 = 21220, .v3 = 31002 };
}

// From T_Snnn_xba.c:45608:45628
// struct  Ui_I_Ip  {
//   unsigned int v1;
//   int v2;
//   int *v3;
// };

test "Ui_I_Ip: layout" {
    var lv: c.Ui_I_Ip = undefined;
    try testing.expectSize(c.Ui_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_I_Ip(.{ .v1 = 22775, .v2 = 11882, .v3 = null }), outcome);
}
test "Ui_I_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_Ip());
}
test "Ui_I_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_Ip(), outcome);
}
test "Ui_I_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_Ip(), .{ .v1 = 22775, .v2 = 11882, .v3 = null });
}
pub export fn zig_assert_Ui_I_Ip(lv: c.Ui_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22775) err = 1;
    if (lv.v2 != 11882) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_Ip() c.Ui_I_Ip {
    return .{ .v1 = 22775, .v2 = 11882, .v3 = null };
}

// From T_Snnn_xba.c:45633:45653
// struct  Ui_I_L  {
//   unsigned int v1;
//   int v2;
//   __tsi64 v3;
// };

test "Ui_I_L: layout" {
    var lv: c.Ui_I_L = undefined;
    try testing.expectSize(c.Ui_I_L, 16);
    try testing.expectAlign(c.Ui_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_I_L(.{ .v1 = 27000, .v2 = 29131, .v3 = 17961 }), outcome);
}
test "Ui_I_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_L());
}
test "Ui_I_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_L(), outcome);
}
test "Ui_I_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_L(), .{ .v1 = 27000, .v2 = 29131, .v3 = 17961 });
}
pub export fn zig_assert_Ui_I_L(lv: c.Ui_I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27000) err = 1;
    if (lv.v2 != 29131) err = 2;
    if (lv.v3 != 17961) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_L() c.Ui_I_L {
    return .{ .v1 = 27000, .v2 = 29131, .v3 = 17961 };
}

// From T_Snnn_xba.c:45658:45678
// struct  Ui_I_S  {
//   unsigned int v1;
//   int v2;
//   short v3;
// };

test "Ui_I_S: layout" {
    var lv: c.Ui_I_S = undefined;
    try testing.expectSize(c.Ui_I_S, 12);
    try testing.expectAlign(c.Ui_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_I_S(.{ .v1 = 5591, .v2 = 6137, .v3 = 15626 }), outcome);
}
test "Ui_I_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_S());
}
test "Ui_I_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_S(), outcome);
}
test "Ui_I_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_S(), .{ .v1 = 5591, .v2 = 6137, .v3 = 15626 });
}
pub export fn zig_assert_Ui_I_S(lv: c.Ui_I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5591) err = 1;
    if (lv.v2 != 6137) err = 2;
    if (lv.v3 != 15626) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_S() c.Ui_I_S {
    return .{ .v1 = 5591, .v2 = 6137, .v3 = 15626 };
}

// From T_Snnn_xba.c:45683:45703
// struct  Ui_I_Uc  {
//   unsigned int v1;
//   int v2;
//   unsigned char v3;
// };

test "Ui_I_Uc: layout" {
    var lv: c.Ui_I_Uc = undefined;
    try testing.expectSize(c.Ui_I_Uc, 12);
    try testing.expectAlign(c.Ui_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_I_Uc(.{ .v1 = 22976, .v2 = 9458, .v3 = 15 }), outcome);
}
test "Ui_I_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_Uc());
}
test "Ui_I_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_Uc(), outcome);
}
test "Ui_I_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_Uc(), .{ .v1 = 22976, .v2 = 9458, .v3 = 15 });
}
pub export fn zig_assert_Ui_I_Uc(lv: c.Ui_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22976) err = 1;
    if (lv.v2 != 9458) err = 2;
    if (lv.v3 != 15) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_Uc() c.Ui_I_Uc {
    return .{ .v1 = 22976, .v2 = 9458, .v3 = 15 };
}

// From T_Snnn_xba.c:45708:45728
// struct  Ui_I_Ui  {
//   unsigned int v1;
//   int v2;
//   unsigned int v3;
// };

test "Ui_I_Ui: layout" {
    var lv: c.Ui_I_Ui = undefined;
    try testing.expectSize(c.Ui_I_Ui, 12);
    try testing.expectAlign(c.Ui_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_I_Ui(.{ .v1 = 18558, .v2 = 4834, .v3 = 26727 }), outcome);
}
test "Ui_I_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_Ui());
}
test "Ui_I_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_Ui(), outcome);
}
test "Ui_I_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_Ui(), .{ .v1 = 18558, .v2 = 4834, .v3 = 26727 });
}
pub export fn zig_assert_Ui_I_Ui(lv: c.Ui_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18558) err = 1;
    if (lv.v2 != 4834) err = 2;
    if (lv.v3 != 26727) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_Ui() c.Ui_I_Ui {
    return .{ .v1 = 18558, .v2 = 4834, .v3 = 26727 };
}

// From T_Snnn_xba.c:45733:45753
// struct  Ui_I_Ul  {
//   unsigned int v1;
//   int v2;
//   __tsu64 v3;
// };

test "Ui_I_Ul: layout" {
    var lv: c.Ui_I_Ul = undefined;
    try testing.expectSize(c.Ui_I_Ul, 16);
    try testing.expectAlign(c.Ui_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_I_Ul(.{ .v1 = 10972, .v2 = 16539, .v3 = 15979 }), outcome);
}
test "Ui_I_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_Ul());
}
test "Ui_I_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_Ul(), outcome);
}
test "Ui_I_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_Ul(), .{ .v1 = 10972, .v2 = 16539, .v3 = 15979 });
}
pub export fn zig_assert_Ui_I_Ul(lv: c.Ui_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10972) err = 1;
    if (lv.v2 != 16539) err = 2;
    if (lv.v3 != 15979) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_Ul() c.Ui_I_Ul {
    return .{ .v1 = 10972, .v2 = 16539, .v3 = 15979 };
}

// From T_Snnn_xba.c:45758:45778
// struct  Ui_I_Us  {
//   unsigned int v1;
//   int v2;
//   unsigned short v3;
// };

test "Ui_I_Us: layout" {
    var lv: c.Ui_I_Us = undefined;
    try testing.expectSize(c.Ui_I_Us, 12);
    try testing.expectAlign(c.Ui_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_I_Us(.{ .v1 = 2253, .v2 = 31488, .v3 = 9728 }), outcome);
}
test "Ui_I_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_Us());
}
test "Ui_I_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_Us(), outcome);
}
test "Ui_I_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_Us(), .{ .v1 = 2253, .v2 = 31488, .v3 = 9728 });
}
pub export fn zig_assert_Ui_I_Us(lv: c.Ui_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2253) err = 1;
    if (lv.v2 != 31488) err = 2;
    if (lv.v3 != 9728) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_Us() c.Ui_I_Us {
    return .{ .v1 = 2253, .v2 = 31488, .v3 = 9728 };
}

// From T_Snnn_xba.c:45783:45803
// struct  Ui_I_Vp  {
//   unsigned int v1;
//   int v2;
//   void *v3;
// };

test "Ui_I_Vp: layout" {
    var lv: c.Ui_I_Vp = undefined;
    try testing.expectSize(c.Ui_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_I_Vp(.{ .v1 = 29046, .v2 = 1341, .v3 = null }), outcome);
}
test "Ui_I_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_I_Vp());
}
test "Ui_I_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_I_Vp(), outcome);
}
test "Ui_I_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_I_Vp(), .{ .v1 = 29046, .v2 = 1341, .v3 = null });
}
pub export fn zig_assert_Ui_I_Vp(lv: c.Ui_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29046) err = 1;
    if (lv.v2 != 1341) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_Vp() c.Ui_I_Vp {
    return .{ .v1 = 29046, .v2 = 1341, .v3 = null };
}

// From T_Snnn_xba.c:45808:45826
// struct  Ui_Ip  {
//   unsigned int v1;
//   int *v2;
// };

test "Ui_Ip: layout" {
    var lv: c.Ui_Ip = undefined;
    try testing.expectSize(c.Ui_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ui_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip(.{ .v1 = 15626, .v2 = null }), outcome);
}
test "Ui_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip());
}
test "Ui_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip(), outcome);
}
test "Ui_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip(), .{ .v1 = 15626, .v2 = null });
}
pub export fn zig_assert_Ui_Ip(lv: c.Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15626) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip() c.Ui_Ip {
    return .{ .v1 = 15626, .v2 = null };
}

// From T_Snnn_xba.c:46555:46575
// struct  Ui_Ip_C  {
//   unsigned int v1;
//   int *v2;
//   char v3;
// };

test "Ui_Ip_C: layout" {
    var lv: c.Ui_Ip_C = undefined;
    try testing.expectSize(c.Ui_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_C(.{ .v1 = 27402, .v2 = null, .v3 = 92 }), outcome);
}
test "Ui_Ip_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_C());
}
test "Ui_Ip_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_C(), outcome);
}
test "Ui_Ip_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_C(), .{ .v1 = 27402, .v2 = null, .v3 = 92 });
}
pub export fn zig_assert_Ui_Ip_C(lv: c.Ui_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27402) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 92) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_C() c.Ui_Ip_C {
    return .{ .v1 = 27402, .v2 = null, .v3 = 92 };
}

// From T_Snnn_xba.c:46580:46600
// struct  Ui_Ip_D  {
//   unsigned int v1;
//   int *v2;
//   double v3;
// };

test "Ui_Ip_D: layout" {
    var lv: c.Ui_Ip_D = undefined;
    try testing.expectSize(c.Ui_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_D(.{ .v1 = 10612, .v2 = null, .v3 = 0.875 }), outcome);
}
test "Ui_Ip_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_D());
}
test "Ui_Ip_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_D(), outcome);
}
test "Ui_Ip_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_D(), .{ .v1 = 10612, .v2 = null, .v3 = 0.875 });
}
pub export fn zig_assert_Ui_Ip_D(lv: c.Ui_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10612) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_D() c.Ui_Ip_D {
    return .{ .v1 = 10612, .v2 = null, .v3 = 0.875 };
}

// From T_Snnn_xba.c:46605:46625
// struct  Ui_Ip_F  {
//   unsigned int v1;
//   int *v2;
//   float v3;
// };

test "Ui_Ip_F: layout" {
    var lv: c.Ui_Ip_F = undefined;
    try testing.expectSize(c.Ui_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_F(.{ .v1 = 27180, .v2 = null, .v3 = -2.125 }), outcome);
}
test "Ui_Ip_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_F());
}
test "Ui_Ip_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_F(), outcome);
}
test "Ui_Ip_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_F(), .{ .v1 = 27180, .v2 = null, .v3 = -2.125 });
}
pub export fn zig_assert_Ui_Ip_F(lv: c.Ui_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27180) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_F() c.Ui_Ip_F {
    return .{ .v1 = 27180, .v2 = null, .v3 = -2.125 };
}

// From T_Snnn_xba.c:46630:46650
// struct  Ui_Ip_I  {
//   unsigned int v1;
//   int *v2;
//   int v3;
// };

test "Ui_Ip_I: layout" {
    var lv: c.Ui_Ip_I = undefined;
    try testing.expectSize(c.Ui_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_I(.{ .v1 = 28768, .v2 = null, .v3 = 7763 }), outcome);
}
test "Ui_Ip_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_I());
}
test "Ui_Ip_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_I(), outcome);
}
test "Ui_Ip_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_I(), .{ .v1 = 28768, .v2 = null, .v3 = 7763 });
}
pub export fn zig_assert_Ui_Ip_I(lv: c.Ui_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28768) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7763) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_I() c.Ui_Ip_I {
    return .{ .v1 = 28768, .v2 = null, .v3 = 7763 };
}

// From T_Snnn_xba.c:46655:46675
// struct  Ui_Ip_Ip  {
//   unsigned int v1;
//   int *v2;
//   int *v3;
// };

test "Ui_Ip_Ip: layout" {
    var lv: c.Ui_Ip_Ip = undefined;
    try testing.expectSize(c.Ui_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_Ip(.{ .v1 = 29433, .v2 = null, .v3 = null }), outcome);
}
test "Ui_Ip_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_Ip());
}
test "Ui_Ip_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_Ip(), outcome);
}
test "Ui_Ip_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_Ip(), .{ .v1 = 29433, .v2 = null, .v3 = null });
}
pub export fn zig_assert_Ui_Ip_Ip(lv: c.Ui_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29433) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_Ip() c.Ui_Ip_Ip {
    return .{ .v1 = 29433, .v2 = null, .v3 = null };
}

// From T_Snnn_xba.c:46680:46700
// struct  Ui_Ip_L  {
//   unsigned int v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Ui_Ip_L: layout" {
    var lv: c.Ui_Ip_L = undefined;
    try testing.expectSize(c.Ui_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_L(.{ .v1 = 4514, .v2 = null, .v3 = 11287 }), outcome);
}
test "Ui_Ip_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_L());
}
test "Ui_Ip_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_L(), outcome);
}
test "Ui_Ip_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_L(), .{ .v1 = 4514, .v2 = null, .v3 = 11287 });
}
pub export fn zig_assert_Ui_Ip_L(lv: c.Ui_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4514) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 11287) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_L() c.Ui_Ip_L {
    return .{ .v1 = 4514, .v2 = null, .v3 = 11287 };
}

// From T_Snnn_xba.c:46705:46725
// struct  Ui_Ip_S  {
//   unsigned int v1;
//   int *v2;
//   short v3;
// };

test "Ui_Ip_S: layout" {
    var lv: c.Ui_Ip_S = undefined;
    try testing.expectSize(c.Ui_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_S(.{ .v1 = 26737, .v2 = null, .v3 = 23696 }), outcome);
}
test "Ui_Ip_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_S());
}
test "Ui_Ip_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_S(), outcome);
}
test "Ui_Ip_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_S(), .{ .v1 = 26737, .v2 = null, .v3 = 23696 });
}
pub export fn zig_assert_Ui_Ip_S(lv: c.Ui_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26737) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 23696) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_S() c.Ui_Ip_S {
    return .{ .v1 = 26737, .v2 = null, .v3 = 23696 };
}

// From T_Snnn_xba.c:46730:46750
// struct  Ui_Ip_Uc  {
//   unsigned int v1;
//   int *v2;
//   unsigned char v3;
// };

test "Ui_Ip_Uc: layout" {
    var lv: c.Ui_Ip_Uc = undefined;
    try testing.expectSize(c.Ui_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_Uc(.{ .v1 = 3439, .v2 = null, .v3 = 66 }), outcome);
}
test "Ui_Ip_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_Uc());
}
test "Ui_Ip_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_Uc(), outcome);
}
test "Ui_Ip_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_Uc(), .{ .v1 = 3439, .v2 = null, .v3 = 66 });
}
pub export fn zig_assert_Ui_Ip_Uc(lv: c.Ui_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3439) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 66) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_Uc() c.Ui_Ip_Uc {
    return .{ .v1 = 3439, .v2 = null, .v3 = 66 };
}

// From T_Snnn_xba.c:46755:46775
// struct  Ui_Ip_Ui  {
//   unsigned int v1;
//   int *v2;
//   unsigned int v3;
// };

test "Ui_Ip_Ui: layout" {
    var lv: c.Ui_Ip_Ui = undefined;
    try testing.expectSize(c.Ui_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_Ui(.{ .v1 = 12941, .v2 = null, .v3 = 4092 }), outcome);
}
test "Ui_Ip_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_Ui());
}
test "Ui_Ip_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_Ui(), outcome);
}
test "Ui_Ip_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_Ui(), .{ .v1 = 12941, .v2 = null, .v3 = 4092 });
}
pub export fn zig_assert_Ui_Ip_Ui(lv: c.Ui_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12941) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4092) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_Ui() c.Ui_Ip_Ui {
    return .{ .v1 = 12941, .v2 = null, .v3 = 4092 };
}

// From T_Snnn_xba.c:46780:46800
// struct  Ui_Ip_Ul  {
//   unsigned int v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Ui_Ip_Ul: layout" {
    var lv: c.Ui_Ip_Ul = undefined;
    try testing.expectSize(c.Ui_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_Ul(.{ .v1 = 23885, .v2 = null, .v3 = 27882 }), outcome);
}
test "Ui_Ip_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_Ul());
}
test "Ui_Ip_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_Ul(), outcome);
}
test "Ui_Ip_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_Ul(), .{ .v1 = 23885, .v2 = null, .v3 = 27882 });
}
pub export fn zig_assert_Ui_Ip_Ul(lv: c.Ui_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23885) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 27882) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_Ul() c.Ui_Ip_Ul {
    return .{ .v1 = 23885, .v2 = null, .v3 = 27882 };
}

// From T_Snnn_xba.c:46805:46825
// struct  Ui_Ip_Us  {
//   unsigned int v1;
//   int *v2;
//   unsigned short v3;
// };

test "Ui_Ip_Us: layout" {
    var lv: c.Ui_Ip_Us = undefined;
    try testing.expectSize(c.Ui_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_Us(.{ .v1 = 18464, .v2 = null, .v3 = 114 }), outcome);
}
test "Ui_Ip_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_Us());
}
test "Ui_Ip_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_Us(), outcome);
}
test "Ui_Ip_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_Us(), .{ .v1 = 18464, .v2 = null, .v3 = 114 });
}
pub export fn zig_assert_Ui_Ip_Us(lv: c.Ui_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18464) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 114) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_Us() c.Ui_Ip_Us {
    return .{ .v1 = 18464, .v2 = null, .v3 = 114 };
}

// From T_Snnn_xba.c:46830:46850
// struct  Ui_Ip_Vp  {
//   unsigned int v1;
//   int *v2;
//   void *v3;
// };

test "Ui_Ip_Vp: layout" {
    var lv: c.Ui_Ip_Vp = undefined;
    try testing.expectSize(c.Ui_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ip_Vp(.{ .v1 = 18904, .v2 = null, .v3 = null }), outcome);
}
test "Ui_Ip_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ip_Vp());
}
test "Ui_Ip_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ip_Vp(), outcome);
}
test "Ui_Ip_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ip_Vp(), .{ .v1 = 18904, .v2 = null, .v3 = null });
}
pub export fn zig_assert_Ui_Ip_Vp(lv: c.Ui_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18904) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_Vp() c.Ui_Ip_Vp {
    return .{ .v1 = 18904, .v2 = null, .v3 = null };
}

// From T_Snnn_xba.c:46855:46873
// struct  Ui_L  {
//   unsigned int v1;
//   __tsi64 v2;
// };

test "Ui_L: layout" {
    var lv: c.Ui_L = undefined;
    try testing.expectSize(c.Ui_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ui_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L(.{ .v1 = 13252, .v2 = 1507 }), outcome);
}
test "Ui_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L());
}
test "Ui_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L(), outcome);
}
test "Ui_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L(), .{ .v1 = 13252, .v2 = 1507 });
}
pub export fn zig_assert_Ui_L(lv: c.Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13252) err = 1;
    if (lv.v2 != 1507) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L() c.Ui_L {
    return .{ .v1 = 13252, .v2 = 1507 };
}

// From T_Snnn_xba.c:47602:47622
// struct  Ui_L_C  {
//   unsigned int v1;
//   __tsi64 v2;
//   char v3;
// };

test "Ui_L_C: layout" {
    var lv: c.Ui_L_C = undefined;
    try testing.expectSize(c.Ui_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_C(.{ .v1 = 26935, .v2 = 26745, .v3 = 98 }), outcome);
}
test "Ui_L_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_C());
}
test "Ui_L_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_C(), outcome);
}
test "Ui_L_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_C(), .{ .v1 = 26935, .v2 = 26745, .v3 = 98 });
}
pub export fn zig_assert_Ui_L_C(lv: c.Ui_L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26935) err = 1;
    if (lv.v2 != 26745) err = 2;
    if (lv.v3 != 98) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_C() c.Ui_L_C {
    return .{ .v1 = 26935, .v2 = 26745, .v3 = 98 };
}

// From T_Snnn_xba.c:47627:47647
// struct  Ui_L_D  {
//   unsigned int v1;
//   __tsi64 v2;
//   double v3;
// };

test "Ui_L_D: layout" {
    var lv: c.Ui_L_D = undefined;
    try testing.expectSize(c.Ui_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_D(.{ .v1 = 25341, .v2 = 30357, .v3 = -2.125 }), outcome);
}
test "Ui_L_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_D());
}
test "Ui_L_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_D(), outcome);
}
test "Ui_L_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_D(), .{ .v1 = 25341, .v2 = 30357, .v3 = -2.125 });
}
pub export fn zig_assert_Ui_L_D(lv: c.Ui_L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25341) err = 1;
    if (lv.v2 != 30357) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_D() c.Ui_L_D {
    return .{ .v1 = 25341, .v2 = 30357, .v3 = -2.125 };
}

// From T_Snnn_xba.c:47652:47672
// struct  Ui_L_F  {
//   unsigned int v1;
//   __tsi64 v2;
//   float v3;
// };

test "Ui_L_F: layout" {
    var lv: c.Ui_L_F = undefined;
    try testing.expectSize(c.Ui_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_F(.{ .v1 = 29079, .v2 = 3601, .v3 = 0.5 }), outcome);
}
test "Ui_L_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_F());
}
test "Ui_L_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_F(), outcome);
}
test "Ui_L_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_F(), .{ .v1 = 29079, .v2 = 3601, .v3 = 0.5 });
}
pub export fn zig_assert_Ui_L_F(lv: c.Ui_L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29079) err = 1;
    if (lv.v2 != 3601) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_F() c.Ui_L_F {
    return .{ .v1 = 29079, .v2 = 3601, .v3 = 0.5 };
}

// From T_Snnn_xba.c:47677:47697
// struct  Ui_L_I  {
//   unsigned int v1;
//   __tsi64 v2;
//   int v3;
// };

test "Ui_L_I: layout" {
    var lv: c.Ui_L_I = undefined;
    try testing.expectSize(c.Ui_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_I(.{ .v1 = 10351, .v2 = 18559, .v3 = 6276 }), outcome);
}
test "Ui_L_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_I());
}
test "Ui_L_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_I(), outcome);
}
test "Ui_L_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_I(), .{ .v1 = 10351, .v2 = 18559, .v3 = 6276 });
}
pub export fn zig_assert_Ui_L_I(lv: c.Ui_L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10351) err = 1;
    if (lv.v2 != 18559) err = 2;
    if (lv.v3 != 6276) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_I() c.Ui_L_I {
    return .{ .v1 = 10351, .v2 = 18559, .v3 = 6276 };
}

// From T_Snnn_xba.c:47702:47722
// struct  Ui_L_Ip  {
//   unsigned int v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Ui_L_Ip: layout" {
    var lv: c.Ui_L_Ip = undefined;
    try testing.expectSize(c.Ui_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_Ip(.{ .v1 = 25585, .v2 = 20929, .v3 = null }), outcome);
}
test "Ui_L_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_Ip());
}
test "Ui_L_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_Ip(), outcome);
}
test "Ui_L_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_Ip(), .{ .v1 = 25585, .v2 = 20929, .v3 = null });
}
pub export fn zig_assert_Ui_L_Ip(lv: c.Ui_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25585) err = 1;
    if (lv.v2 != 20929) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_Ip() c.Ui_L_Ip {
    return .{ .v1 = 25585, .v2 = 20929, .v3 = null };
}

// From T_Snnn_xba.c:47727:47747
// struct  Ui_L_L  {
//   unsigned int v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Ui_L_L: layout" {
    var lv: c.Ui_L_L = undefined;
    try testing.expectSize(c.Ui_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_L(.{ .v1 = 24212, .v2 = 19798, .v3 = 593 }), outcome);
}
test "Ui_L_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_L());
}
test "Ui_L_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_L(), outcome);
}
test "Ui_L_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_L(), .{ .v1 = 24212, .v2 = 19798, .v3 = 593 });
}
pub export fn zig_assert_Ui_L_L(lv: c.Ui_L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24212) err = 1;
    if (lv.v2 != 19798) err = 2;
    if (lv.v3 != 593) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_L() c.Ui_L_L {
    return .{ .v1 = 24212, .v2 = 19798, .v3 = 593 };
}

// From T_Snnn_xba.c:47752:47772
// struct  Ui_L_S  {
//   unsigned int v1;
//   __tsi64 v2;
//   short v3;
// };

test "Ui_L_S: layout" {
    var lv: c.Ui_L_S = undefined;
    try testing.expectSize(c.Ui_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_S(.{ .v1 = 21162, .v2 = 4452, .v3 = 9615 }), outcome);
}
test "Ui_L_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_S());
}
test "Ui_L_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_S(), outcome);
}
test "Ui_L_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_S(), .{ .v1 = 21162, .v2 = 4452, .v3 = 9615 });
}
pub export fn zig_assert_Ui_L_S(lv: c.Ui_L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21162) err = 1;
    if (lv.v2 != 4452) err = 2;
    if (lv.v3 != 9615) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_S() c.Ui_L_S {
    return .{ .v1 = 21162, .v2 = 4452, .v3 = 9615 };
}

// From T_Snnn_xba.c:47777:47797
// struct  Ui_L_Uc  {
//   unsigned int v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Ui_L_Uc: layout" {
    var lv: c.Ui_L_Uc = undefined;
    try testing.expectSize(c.Ui_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_Uc(.{ .v1 = 31091, .v2 = 18993, .v3 = 70 }), outcome);
}
test "Ui_L_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_Uc());
}
test "Ui_L_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_Uc(), outcome);
}
test "Ui_L_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_Uc(), .{ .v1 = 31091, .v2 = 18993, .v3 = 70 });
}
pub export fn zig_assert_Ui_L_Uc(lv: c.Ui_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31091) err = 1;
    if (lv.v2 != 18993) err = 2;
    if (lv.v3 != 70) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_Uc() c.Ui_L_Uc {
    return .{ .v1 = 31091, .v2 = 18993, .v3 = 70 };
}

// From T_Snnn_xba.c:47802:47822
// struct  Ui_L_Ui  {
//   unsigned int v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Ui_L_Ui: layout" {
    var lv: c.Ui_L_Ui = undefined;
    try testing.expectSize(c.Ui_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_Ui(.{ .v1 = 13988, .v2 = 30930, .v3 = 19528 }), outcome);
}
test "Ui_L_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_Ui());
}
test "Ui_L_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_Ui(), outcome);
}
test "Ui_L_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_Ui(), .{ .v1 = 13988, .v2 = 30930, .v3 = 19528 });
}
pub export fn zig_assert_Ui_L_Ui(lv: c.Ui_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13988) err = 1;
    if (lv.v2 != 30930) err = 2;
    if (lv.v3 != 19528) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_Ui() c.Ui_L_Ui {
    return .{ .v1 = 13988, .v2 = 30930, .v3 = 19528 };
}

// From T_Snnn_xba.c:47827:47847
// struct  Ui_L_Ul  {
//   unsigned int v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Ui_L_Ul: layout" {
    var lv: c.Ui_L_Ul = undefined;
    try testing.expectSize(c.Ui_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_Ul(.{ .v1 = 20440, .v2 = 26384, .v3 = 9987 }), outcome);
}
test "Ui_L_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_Ul());
}
test "Ui_L_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_Ul(), outcome);
}
test "Ui_L_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_Ul(), .{ .v1 = 20440, .v2 = 26384, .v3 = 9987 });
}
pub export fn zig_assert_Ui_L_Ul(lv: c.Ui_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20440) err = 1;
    if (lv.v2 != 26384) err = 2;
    if (lv.v3 != 9987) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_Ul() c.Ui_L_Ul {
    return .{ .v1 = 20440, .v2 = 26384, .v3 = 9987 };
}

// From T_Snnn_xba.c:47852:47872
// struct  Ui_L_Us  {
//   unsigned int v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Ui_L_Us: layout" {
    var lv: c.Ui_L_Us = undefined;
    try testing.expectSize(c.Ui_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_Us(.{ .v1 = 31980, .v2 = 25750, .v3 = 1055 }), outcome);
}
test "Ui_L_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_Us());
}
test "Ui_L_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_Us(), outcome);
}
test "Ui_L_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_Us(), .{ .v1 = 31980, .v2 = 25750, .v3 = 1055 });
}
pub export fn zig_assert_Ui_L_Us(lv: c.Ui_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31980) err = 1;
    if (lv.v2 != 25750) err = 2;
    if (lv.v3 != 1055) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_Us() c.Ui_L_Us {
    return .{ .v1 = 31980, .v2 = 25750, .v3 = 1055 };
}

// From T_Snnn_xba.c:47877:47897
// struct  Ui_L_Vp  {
//   unsigned int v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Ui_L_Vp: layout" {
    var lv: c.Ui_L_Vp = undefined;
    try testing.expectSize(c.Ui_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_L_Vp(.{ .v1 = 8968, .v2 = 24841, .v3 = null }), outcome);
}
test "Ui_L_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_L_Vp());
}
test "Ui_L_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_L_Vp(), outcome);
}
test "Ui_L_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_L_Vp(), .{ .v1 = 8968, .v2 = 24841, .v3 = null });
}
pub export fn zig_assert_Ui_L_Vp(lv: c.Ui_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8968) err = 1;
    if (lv.v2 != 24841) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_Vp() c.Ui_L_Vp {
    return .{ .v1 = 8968, .v2 = 24841, .v3 = null };
}

// From T_Snnn_xba.c:47902:47920
// struct  Ui_S  {
//   unsigned int v1;
//   short v2;
// };

test "Ui_S: layout" {
    var lv: c.Ui_S = undefined;
    try testing.expectSize(c.Ui_S, 8);
    try testing.expectAlign(c.Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Ui_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_S(.{ .v1 = 28346, .v2 = 28443 }), outcome);
}
test "Ui_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S());
}
test "Ui_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S(), outcome);
}
test "Ui_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S(), .{ .v1 = 28346, .v2 = 28443 });
}
pub export fn zig_assert_Ui_S(lv: c.Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28346) err = 1;
    if (lv.v2 != 28443) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S() c.Ui_S {
    return .{ .v1 = 28346, .v2 = 28443 };
}

// From T_Snnn_xba.c:48649:48669
// struct  Ui_S_C  {
//   unsigned int v1;
//   short v2;
//   char v3;
// };

test "Ui_S_C: layout" {
    var lv: c.Ui_S_C = undefined;
    try testing.expectSize(c.Ui_S_C, 8);
    try testing.expectAlign(c.Ui_S_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_S_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_S_C(.{ .v1 = 15538, .v2 = 21394, .v3 = 21 }), outcome);
}
test "Ui_S_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_C());
}
test "Ui_S_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_C(), outcome);
}
test "Ui_S_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_C(), .{ .v1 = 15538, .v2 = 21394, .v3 = 21 });
}
pub export fn zig_assert_Ui_S_C(lv: c.Ui_S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15538) err = 1;
    if (lv.v2 != 21394) err = 2;
    if (lv.v3 != 21) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_C() c.Ui_S_C {
    return .{ .v1 = 15538, .v2 = 21394, .v3 = 21 };
}

// From T_Snnn_xba.c:48674:48694
// struct  Ui_S_D  {
//   unsigned int v1;
//   short v2;
//   double v3;
// };

test "Ui_S_D: layout" {
    var lv: c.Ui_S_D = undefined;
    try testing.expectSize(c.Ui_S_D, 16);
    try testing.expectAlign(c.Ui_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_S_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_S_D(.{ .v1 = 4910, .v2 = 10310, .v3 = 4.5 }), outcome);
}
test "Ui_S_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_D());
}
test "Ui_S_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_D(), outcome);
}
test "Ui_S_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_D(), .{ .v1 = 4910, .v2 = 10310, .v3 = 4.5 });
}
pub export fn zig_assert_Ui_S_D(lv: c.Ui_S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4910) err = 1;
    if (lv.v2 != 10310) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_D() c.Ui_S_D {
    return .{ .v1 = 4910, .v2 = 10310, .v3 = 4.5 };
}

// From T_Snnn_xba.c:48699:48719
// struct  Ui_S_F  {
//   unsigned int v1;
//   short v2;
//   float v3;
// };

test "Ui_S_F: layout" {
    var lv: c.Ui_S_F = undefined;
    try testing.expectSize(c.Ui_S_F, 12);
    try testing.expectAlign(c.Ui_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_S_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_S_F(.{ .v1 = 27139, .v2 = 32026, .v3 = 1.0 }), outcome);
}
test "Ui_S_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_F());
}
test "Ui_S_F: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_F(), outcome);
}
test "Ui_S_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_F(), .{ .v1 = 27139, .v2 = 32026, .v3 = 1.0 });
}
pub export fn zig_assert_Ui_S_F(lv: c.Ui_S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27139) err = 1;
    if (lv.v2 != 32026) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_F() c.Ui_S_F {
    return .{ .v1 = 27139, .v2 = 32026, .v3 = 1.0 };
}

// From T_Snnn_xba.c:48724:48744
// struct  Ui_S_I  {
//   unsigned int v1;
//   short v2;
//   int v3;
// };

test "Ui_S_I: layout" {
    var lv: c.Ui_S_I = undefined;
    try testing.expectSize(c.Ui_S_I, 12);
    try testing.expectAlign(c.Ui_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_S_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_S_I(.{ .v1 = 21625, .v2 = 11212, .v3 = 4579 }), outcome);
}
test "Ui_S_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_I());
}
test "Ui_S_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_I(), outcome);
}
test "Ui_S_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_I(), .{ .v1 = 21625, .v2 = 11212, .v3 = 4579 });
}
pub export fn zig_assert_Ui_S_I(lv: c.Ui_S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21625) err = 1;
    if (lv.v2 != 11212) err = 2;
    if (lv.v3 != 4579) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_I() c.Ui_S_I {
    return .{ .v1 = 21625, .v2 = 11212, .v3 = 4579 };
}

// From T_Snnn_xba.c:48749:48769
// struct  Ui_S_Ip  {
//   unsigned int v1;
//   short v2;
//   int *v3;
// };

test "Ui_S_Ip: layout" {
    var lv: c.Ui_S_Ip = undefined;
    try testing.expectSize(c.Ui_S_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_S_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_S_Ip(.{ .v1 = 6672, .v2 = 23197, .v3 = null }), outcome);
}
test "Ui_S_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_Ip());
}
test "Ui_S_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_Ip(), outcome);
}
test "Ui_S_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_Ip(), .{ .v1 = 6672, .v2 = 23197, .v3 = null });
}
pub export fn zig_assert_Ui_S_Ip(lv: c.Ui_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6672) err = 1;
    if (lv.v2 != 23197) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_Ip() c.Ui_S_Ip {
    return .{ .v1 = 6672, .v2 = 23197, .v3 = null };
}

// From T_Snnn_xba.c:48774:48794
// struct  Ui_S_L  {
//   unsigned int v1;
//   short v2;
//   __tsi64 v3;
// };

test "Ui_S_L: layout" {
    var lv: c.Ui_S_L = undefined;
    try testing.expectSize(c.Ui_S_L, 16);
    try testing.expectAlign(c.Ui_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_S_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_S_L(.{ .v1 = 5970, .v2 = 9549, .v3 = 25094 }), outcome);
}
test "Ui_S_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_L());
}
test "Ui_S_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_L(), outcome);
}
test "Ui_S_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_L(), .{ .v1 = 5970, .v2 = 9549, .v3 = 25094 });
}
pub export fn zig_assert_Ui_S_L(lv: c.Ui_S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5970) err = 1;
    if (lv.v2 != 9549) err = 2;
    if (lv.v3 != 25094) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_L() c.Ui_S_L {
    return .{ .v1 = 5970, .v2 = 9549, .v3 = 25094 };
}

// From T_Snnn_xba.c:48799:48819
// struct  Ui_S_S  {
//   unsigned int v1;
//   short v2;
//   short v3;
// };

test "Ui_S_S: layout" {
    var lv: c.Ui_S_S = undefined;
    try testing.expectSize(c.Ui_S_S, 8);
    try testing.expectAlign(c.Ui_S_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_S_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_S_S(.{ .v1 = 17865, .v2 = 18599, .v3 = 23696 }), outcome);
}
test "Ui_S_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_S());
}
test "Ui_S_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_S(), outcome);
}
test "Ui_S_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_S(), .{ .v1 = 17865, .v2 = 18599, .v3 = 23696 });
}
pub export fn zig_assert_Ui_S_S(lv: c.Ui_S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17865) err = 1;
    if (lv.v2 != 18599) err = 2;
    if (lv.v3 != 23696) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_S() c.Ui_S_S {
    return .{ .v1 = 17865, .v2 = 18599, .v3 = 23696 };
}

// From T_Snnn_xba.c:48824:48844
// struct  Ui_S_Uc  {
//   unsigned int v1;
//   short v2;
//   unsigned char v3;
// };

test "Ui_S_Uc: layout" {
    var lv: c.Ui_S_Uc = undefined;
    try testing.expectSize(c.Ui_S_Uc, 8);
    try testing.expectAlign(c.Ui_S_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_S_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_S_Uc(.{ .v1 = 28993, .v2 = 21813, .v3 = 77 }), outcome);
}
test "Ui_S_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_Uc());
}
test "Ui_S_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_Uc(), outcome);
}
test "Ui_S_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_Uc(), .{ .v1 = 28993, .v2 = 21813, .v3 = 77 });
}
pub export fn zig_assert_Ui_S_Uc(lv: c.Ui_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28993) err = 1;
    if (lv.v2 != 21813) err = 2;
    if (lv.v3 != 77) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_Uc() c.Ui_S_Uc {
    return .{ .v1 = 28993, .v2 = 21813, .v3 = 77 };
}

// From T_Snnn_xba.c:48849:48869
// struct  Ui_S_Ui  {
//   unsigned int v1;
//   short v2;
//   unsigned int v3;
// };

test "Ui_S_Ui: layout" {
    var lv: c.Ui_S_Ui = undefined;
    try testing.expectSize(c.Ui_S_Ui, 12);
    try testing.expectAlign(c.Ui_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_S_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_S_Ui(.{ .v1 = 5185, .v2 = 30102, .v3 = 21541 }), outcome);
}
test "Ui_S_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_Ui());
}
test "Ui_S_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_Ui(), outcome);
}
test "Ui_S_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_Ui(), .{ .v1 = 5185, .v2 = 30102, .v3 = 21541 });
}
pub export fn zig_assert_Ui_S_Ui(lv: c.Ui_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5185) err = 1;
    if (lv.v2 != 30102) err = 2;
    if (lv.v3 != 21541) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_Ui() c.Ui_S_Ui {
    return .{ .v1 = 5185, .v2 = 30102, .v3 = 21541 };
}

// From T_Snnn_xba.c:48874:48894
// struct  Ui_S_Ul  {
//   unsigned int v1;
//   short v2;
//   __tsu64 v3;
// };

test "Ui_S_Ul: layout" {
    var lv: c.Ui_S_Ul = undefined;
    try testing.expectSize(c.Ui_S_Ul, 16);
    try testing.expectAlign(c.Ui_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_S_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_S_Ul(.{ .v1 = 18781, .v2 = 20050, .v3 = 23141 }), outcome);
}
test "Ui_S_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_Ul());
}
test "Ui_S_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_Ul(), outcome);
}
test "Ui_S_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_Ul(), .{ .v1 = 18781, .v2 = 20050, .v3 = 23141 });
}
pub export fn zig_assert_Ui_S_Ul(lv: c.Ui_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18781) err = 1;
    if (lv.v2 != 20050) err = 2;
    if (lv.v3 != 23141) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_Ul() c.Ui_S_Ul {
    return .{ .v1 = 18781, .v2 = 20050, .v3 = 23141 };
}

// From T_Snnn_xba.c:48899:48919
// struct  Ui_S_Us  {
//   unsigned int v1;
//   short v2;
//   unsigned short v3;
// };

test "Ui_S_Us: layout" {
    var lv: c.Ui_S_Us = undefined;
    try testing.expectSize(c.Ui_S_Us, 8);
    try testing.expectAlign(c.Ui_S_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_S_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_S_Us(.{ .v1 = 5545, .v2 = 1579, .v3 = 32452 }), outcome);
}
test "Ui_S_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_Us());
}
test "Ui_S_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_Us(), outcome);
}
test "Ui_S_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_Us(), .{ .v1 = 5545, .v2 = 1579, .v3 = 32452 });
}
pub export fn zig_assert_Ui_S_Us(lv: c.Ui_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5545) err = 1;
    if (lv.v2 != 1579) err = 2;
    if (lv.v3 != 32452) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_Us() c.Ui_S_Us {
    return .{ .v1 = 5545, .v2 = 1579, .v3 = 32452 };
}

// From T_Snnn_xba.c:48924:48944
// struct  Ui_S_Vp  {
//   unsigned int v1;
//   short v2;
//   void *v3;
// };

test "Ui_S_Vp: layout" {
    var lv: c.Ui_S_Vp = undefined;
    try testing.expectSize(c.Ui_S_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_S_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_S_Vp(.{ .v1 = 24208, .v2 = 28727, .v3 = null }), outcome);
}
test "Ui_S_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_S_Vp());
}
test "Ui_S_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_S_Vp(), outcome);
}
test "Ui_S_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_S_Vp(), .{ .v1 = 24208, .v2 = 28727, .v3 = null });
}
pub export fn zig_assert_Ui_S_Vp(lv: c.Ui_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24208) err = 1;
    if (lv.v2 != 28727) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_Vp() c.Ui_S_Vp {
    return .{ .v1 = 24208, .v2 = 28727, .v3 = null };
}

// From T_Snnn_xba.c:48949:48967
// struct  Ui_Uc  {
//   unsigned int v1;
//   unsigned char v2;
// };

test "Ui_Uc: layout" {
    var lv: c.Ui_Uc = undefined;
    try testing.expectSize(c.Ui_Uc, 8);
    try testing.expectAlign(c.Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Ui_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Uc(.{ .v1 = 157, .v2 = 12 }), outcome);
}
test "Ui_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc());
}
test "Ui_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc(), outcome);
}
test "Ui_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc(), .{ .v1 = 157, .v2 = 12 });
}
pub export fn zig_assert_Ui_Uc(lv: c.Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 157) err = 1;
    if (lv.v2 != 12) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc() c.Ui_Uc {
    return .{ .v1 = 157, .v2 = 12 };
}

// From T_Snnn_xba.c:49696:49716
// struct  Ui_Uc_C  {
//   unsigned int v1;
//   unsigned char v2;
//   char v3;
// };

test "Ui_Uc_C: layout" {
    var lv: c.Ui_Uc_C = undefined;
    try testing.expectSize(c.Ui_Uc_C, 8);
    try testing.expectAlign(c.Ui_Uc_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "Ui_Uc_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Uc_C(.{ .v1 = 16841, .v2 = 67, .v3 = 116 }), outcome);
}
test "Ui_Uc_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_C());
}
test "Ui_Uc_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_C(), outcome);
}
test "Ui_Uc_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_C(), .{ .v1 = 16841, .v2 = 67, .v3 = 116 });
}
pub export fn zig_assert_Ui_Uc_C(lv: c.Ui_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16841) err = 1;
    if (lv.v2 != 67) err = 2;
    if (lv.v3 != 116) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_C() c.Ui_Uc_C {
    return .{ .v1 = 16841, .v2 = 67, .v3 = 116 };
}

// From T_Snnn_xba.c:49721:49741
// struct  Ui_Uc_D  {
//   unsigned int v1;
//   unsigned char v2;
//   double v3;
// };

test "Ui_Uc_D: layout" {
    var lv: c.Ui_Uc_D = undefined;
    try testing.expectSize(c.Ui_Uc_D, 16);
    try testing.expectAlign(c.Ui_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Uc_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_Uc_D(.{ .v1 = 3973, .v2 = 85, .v3 = 0.875 }), outcome);
}
test "Ui_Uc_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_D());
}
test "Ui_Uc_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_D(), outcome);
}
test "Ui_Uc_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_D(), .{ .v1 = 3973, .v2 = 85, .v3 = 0.875 });
}
pub export fn zig_assert_Ui_Uc_D(lv: c.Ui_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3973) err = 1;
    if (lv.v2 != 85) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_D() c.Ui_Uc_D {
    return .{ .v1 = 3973, .v2 = 85, .v3 = 0.875 };
}

// From T_Snnn_xba.c:49746:49766
// struct  Ui_Uc_F  {
//   unsigned int v1;
//   unsigned char v2;
//   float v3;
// };

test "Ui_Uc_F: layout" {
    var lv: c.Ui_Uc_F = undefined;
    try testing.expectSize(c.Ui_Uc_F, 12);
    try testing.expectAlign(c.Ui_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Uc_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_Uc_F(.{ .v1 = 28410, .v2 = 75, .v3 = -0.25 }), outcome);
}
test "Ui_Uc_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_F());
}
test "Ui_Uc_F: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_F(), outcome);
}
test "Ui_Uc_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_F(), .{ .v1 = 28410, .v2 = 75, .v3 = -0.25 });
}
pub export fn zig_assert_Ui_Uc_F(lv: c.Ui_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28410) err = 1;
    if (lv.v2 != 75) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_F() c.Ui_Uc_F {
    return .{ .v1 = 28410, .v2 = 75, .v3 = -0.25 };
}

// From T_Snnn_xba.c:49771:49791
// struct  Ui_Uc_I  {
//   unsigned int v1;
//   unsigned char v2;
//   int v3;
// };

test "Ui_Uc_I: layout" {
    var lv: c.Ui_Uc_I = undefined;
    try testing.expectSize(c.Ui_Uc_I, 12);
    try testing.expectAlign(c.Ui_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Uc_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Uc_I(.{ .v1 = 1867, .v2 = 123, .v3 = 10643 }), outcome);
}
test "Ui_Uc_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_I());
}
test "Ui_Uc_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_I(), outcome);
}
test "Ui_Uc_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_I(), .{ .v1 = 1867, .v2 = 123, .v3 = 10643 });
}
pub export fn zig_assert_Ui_Uc_I(lv: c.Ui_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1867) err = 1;
    if (lv.v2 != 123) err = 2;
    if (lv.v3 != 10643) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_I() c.Ui_Uc_I {
    return .{ .v1 = 1867, .v2 = 123, .v3 = 10643 };
}

// From T_Snnn_xba.c:49796:49816
// struct  Ui_Uc_Ip  {
//   unsigned int v1;
//   unsigned char v2;
//   int *v3;
// };

test "Ui_Uc_Ip: layout" {
    var lv: c.Ui_Uc_Ip = undefined;
    try testing.expectSize(c.Ui_Uc_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Uc_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Uc_Ip(.{ .v1 = 5794, .v2 = 57, .v3 = null }), outcome);
}
test "Ui_Uc_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_Ip());
}
test "Ui_Uc_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_Ip(), outcome);
}
test "Ui_Uc_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_Ip(), .{ .v1 = 5794, .v2 = 57, .v3 = null });
}
pub export fn zig_assert_Ui_Uc_Ip(lv: c.Ui_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5794) err = 1;
    if (lv.v2 != 57) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_Ip() c.Ui_Uc_Ip {
    return .{ .v1 = 5794, .v2 = 57, .v3 = null };
}

// From T_Snnn_xba.c:49821:49841
// struct  Ui_Uc_L  {
//   unsigned int v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Ui_Uc_L: layout" {
    var lv: c.Ui_Uc_L = undefined;
    try testing.expectSize(c.Ui_Uc_L, 16);
    try testing.expectAlign(c.Ui_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Uc_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Uc_L(.{ .v1 = 19180, .v2 = 58, .v3 = 11114 }), outcome);
}
test "Ui_Uc_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_L());
}
test "Ui_Uc_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_L(), outcome);
}
test "Ui_Uc_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_L(), .{ .v1 = 19180, .v2 = 58, .v3 = 11114 });
}
pub export fn zig_assert_Ui_Uc_L(lv: c.Ui_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19180) err = 1;
    if (lv.v2 != 58) err = 2;
    if (lv.v3 != 11114) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_L() c.Ui_Uc_L {
    return .{ .v1 = 19180, .v2 = 58, .v3 = 11114 };
}

// From T_Snnn_xba.c:49846:49866
// struct  Ui_Uc_S  {
//   unsigned int v1;
//   unsigned char v2;
//   short v3;
// };

test "Ui_Uc_S: layout" {
    var lv: c.Ui_Uc_S = undefined;
    try testing.expectSize(c.Ui_Uc_S, 8);
    try testing.expectAlign(c.Ui_Uc_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_Uc_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Uc_S(.{ .v1 = 22163, .v2 = 120, .v3 = 2678 }), outcome);
}
test "Ui_Uc_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_S());
}
test "Ui_Uc_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_S(), outcome);
}
test "Ui_Uc_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_S(), .{ .v1 = 22163, .v2 = 120, .v3 = 2678 });
}
pub export fn zig_assert_Ui_Uc_S(lv: c.Ui_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22163) err = 1;
    if (lv.v2 != 120) err = 2;
    if (lv.v3 != 2678) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_S() c.Ui_Uc_S {
    return .{ .v1 = 22163, .v2 = 120, .v3 = 2678 };
}

// From T_Snnn_xba.c:49871:49891
// struct  Ui_Uc_Uc  {
//   unsigned int v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Ui_Uc_Uc: layout" {
    var lv: c.Ui_Uc_Uc = undefined;
    try testing.expectSize(c.Ui_Uc_Uc, 8);
    try testing.expectAlign(c.Ui_Uc_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "Ui_Uc_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Uc_Uc(.{ .v1 = 3867, .v2 = 87, .v3 = 16 }), outcome);
}
test "Ui_Uc_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_Uc());
}
test "Ui_Uc_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_Uc(), outcome);
}
test "Ui_Uc_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_Uc(), .{ .v1 = 3867, .v2 = 87, .v3 = 16 });
}
pub export fn zig_assert_Ui_Uc_Uc(lv: c.Ui_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3867) err = 1;
    if (lv.v2 != 87) err = 2;
    if (lv.v3 != 16) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_Uc() c.Ui_Uc_Uc {
    return .{ .v1 = 3867, .v2 = 87, .v3 = 16 };
}

// From T_Snnn_xba.c:49896:49916
// struct  Ui_Uc_Ui  {
//   unsigned int v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Ui_Uc_Ui: layout" {
    var lv: c.Ui_Uc_Ui = undefined;
    try testing.expectSize(c.Ui_Uc_Ui, 12);
    try testing.expectAlign(c.Ui_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Uc_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Uc_Ui(.{ .v1 = 14918, .v2 = 101, .v3 = 9285 }), outcome);
}
test "Ui_Uc_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_Ui());
}
test "Ui_Uc_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_Ui(), outcome);
}
test "Ui_Uc_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_Ui(), .{ .v1 = 14918, .v2 = 101, .v3 = 9285 });
}
pub export fn zig_assert_Ui_Uc_Ui(lv: c.Ui_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14918) err = 1;
    if (lv.v2 != 101) err = 2;
    if (lv.v3 != 9285) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_Ui() c.Ui_Uc_Ui {
    return .{ .v1 = 14918, .v2 = 101, .v3 = 9285 };
}

// From T_Snnn_xba.c:49921:49941
// struct  Ui_Uc_Ul  {
//   unsigned int v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Ui_Uc_Ul: layout" {
    var lv: c.Ui_Uc_Ul = undefined;
    try testing.expectSize(c.Ui_Uc_Ul, 16);
    try testing.expectAlign(c.Ui_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Uc_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Uc_Ul(.{ .v1 = 7446, .v2 = 38, .v3 = 18825 }), outcome);
}
test "Ui_Uc_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_Ul());
}
test "Ui_Uc_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_Ul(), outcome);
}
test "Ui_Uc_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_Ul(), .{ .v1 = 7446, .v2 = 38, .v3 = 18825 });
}
pub export fn zig_assert_Ui_Uc_Ul(lv: c.Ui_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7446) err = 1;
    if (lv.v2 != 38) err = 2;
    if (lv.v3 != 18825) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_Ul() c.Ui_Uc_Ul {
    return .{ .v1 = 7446, .v2 = 38, .v3 = 18825 };
}

// From T_Snnn_xba.c:49946:49966
// struct  Ui_Uc_Us  {
//   unsigned int v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Ui_Uc_Us: layout" {
    var lv: c.Ui_Uc_Us = undefined;
    try testing.expectSize(c.Ui_Uc_Us, 8);
    try testing.expectAlign(c.Ui_Uc_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_Uc_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Uc_Us(.{ .v1 = 1744, .v2 = 6, .v3 = 26082 }), outcome);
}
test "Ui_Uc_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_Us());
}
test "Ui_Uc_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_Us(), outcome);
}
test "Ui_Uc_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_Us(), .{ .v1 = 1744, .v2 = 6, .v3 = 26082 });
}
pub export fn zig_assert_Ui_Uc_Us(lv: c.Ui_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1744) err = 1;
    if (lv.v2 != 6) err = 2;
    if (lv.v3 != 26082) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_Us() c.Ui_Uc_Us {
    return .{ .v1 = 1744, .v2 = 6, .v3 = 26082 };
}

// From T_Snnn_xba.c:49971:49991
// struct  Ui_Uc_Vp  {
//   unsigned int v1;
//   unsigned char v2;
//   void *v3;
// };

test "Ui_Uc_Vp: layout" {
    var lv: c.Ui_Uc_Vp = undefined;
    try testing.expectSize(c.Ui_Uc_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Uc_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Uc_Vp(.{ .v1 = 3316, .v2 = 48, .v3 = null }), outcome);
}
test "Ui_Uc_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Uc_Vp());
}
test "Ui_Uc_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Uc_Vp(), outcome);
}
test "Ui_Uc_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Uc_Vp(), .{ .v1 = 3316, .v2 = 48, .v3 = null });
}
pub export fn zig_assert_Ui_Uc_Vp(lv: c.Ui_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3316) err = 1;
    if (lv.v2 != 48) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_Vp() c.Ui_Uc_Vp {
    return .{ .v1 = 3316, .v2 = 48, .v3 = null };
}

// From T_Snnn_xba.c:49996:50014
// struct  Ui_Ui  {
//   unsigned int v1;
//   unsigned int v2;
// };

test "Ui_Ui: layout" {
    var lv: c.Ui_Ui = undefined;
    try testing.expectSize(c.Ui_Ui, 8);
    try testing.expectAlign(c.Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Ui_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ui(.{ .v1 = 8454, .v2 = 21904 }), outcome);
}
test "Ui_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui());
}
test "Ui_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui(), outcome);
}
test "Ui_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui(), .{ .v1 = 8454, .v2 = 21904 });
}
pub export fn zig_assert_Ui_Ui(lv: c.Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8454) err = 1;
    if (lv.v2 != 21904) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui() c.Ui_Ui {
    return .{ .v1 = 8454, .v2 = 21904 };
}

// From T_Snnn_xba.c:50743:50763
// struct  Ui_Ui_C  {
//   unsigned int v1;
//   unsigned int v2;
//   char v3;
// };

test "Ui_Ui_C: layout" {
    var lv: c.Ui_Ui_C = undefined;
    try testing.expectSize(c.Ui_Ui_C, 12);
    try testing.expectAlign(c.Ui_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ui_C(.{ .v1 = 24893, .v2 = 7554, .v3 = 125 }), outcome);
}
test "Ui_Ui_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_C());
}
test "Ui_Ui_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_C(), outcome);
}
test "Ui_Ui_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_C(), .{ .v1 = 24893, .v2 = 7554, .v3 = 125 });
}
pub export fn zig_assert_Ui_Ui_C(lv: c.Ui_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24893) err = 1;
    if (lv.v2 != 7554) err = 2;
    if (lv.v3 != 125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_C() c.Ui_Ui_C {
    return .{ .v1 = 24893, .v2 = 7554, .v3 = 125 };
}

// From T_Snnn_xba.c:50768:50788
// struct  Ui_Ui_D  {
//   unsigned int v1;
//   unsigned int v2;
//   double v3;
// };

test "Ui_Ui_D: layout" {
    var lv: c.Ui_Ui_D = undefined;
    try testing.expectSize(c.Ui_Ui_D, 16);
    try testing.expectAlign(c.Ui_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_Ui_D(.{ .v1 = 11653, .v2 = 12325, .v3 = -2.125 }), outcome);
}
test "Ui_Ui_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_D());
}
test "Ui_Ui_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_D(), outcome);
}
test "Ui_Ui_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_D(), .{ .v1 = 11653, .v2 = 12325, .v3 = -2.125 });
}
pub export fn zig_assert_Ui_Ui_D(lv: c.Ui_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11653) err = 1;
    if (lv.v2 != 12325) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_D() c.Ui_Ui_D {
    return .{ .v1 = 11653, .v2 = 12325, .v3 = -2.125 };
}

// From T_Snnn_xba.c:50793:50813
// struct  Ui_Ui_F  {
//   unsigned int v1;
//   unsigned int v2;
//   float v3;
// };

test "Ui_Ui_F: layout" {
    var lv: c.Ui_Ui_F = undefined;
    try testing.expectSize(c.Ui_Ui_F, 12);
    try testing.expectAlign(c.Ui_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_Ui_F(.{ .v1 = 11056, .v2 = 12323, .v3 = 0.875 }), outcome);
}
test "Ui_Ui_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_F());
}
test "Ui_Ui_F: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_F(), outcome);
}
test "Ui_Ui_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_F(), .{ .v1 = 11056, .v2 = 12323, .v3 = 0.875 });
}
pub export fn zig_assert_Ui_Ui_F(lv: c.Ui_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11056) err = 1;
    if (lv.v2 != 12323) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_F() c.Ui_Ui_F {
    return .{ .v1 = 11056, .v2 = 12323, .v3 = 0.875 };
}

// From T_Snnn_xba.c:50818:50838
// struct  Ui_Ui_I  {
//   unsigned int v1;
//   unsigned int v2;
//   int v3;
// };

test "Ui_Ui_I: layout" {
    var lv: c.Ui_Ui_I = undefined;
    try testing.expectSize(c.Ui_Ui_I, 12);
    try testing.expectAlign(c.Ui_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ui_I(.{ .v1 = 24003, .v2 = 31766, .v3 = 9259 }), outcome);
}
test "Ui_Ui_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_I());
}
test "Ui_Ui_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_I(), outcome);
}
test "Ui_Ui_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_I(), .{ .v1 = 24003, .v2 = 31766, .v3 = 9259 });
}
pub export fn zig_assert_Ui_Ui_I(lv: c.Ui_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24003) err = 1;
    if (lv.v2 != 31766) err = 2;
    if (lv.v3 != 9259) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_I() c.Ui_Ui_I {
    return .{ .v1 = 24003, .v2 = 31766, .v3 = 9259 };
}

// From T_Snnn_xba.c:50843:50863
// struct  Ui_Ui_Ip  {
//   unsigned int v1;
//   unsigned int v2;
//   int *v3;
// };

test "Ui_Ui_Ip: layout" {
    var lv: c.Ui_Ui_Ip = undefined;
    try testing.expectSize(c.Ui_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ui_Ip(.{ .v1 = 4717, .v2 = 9398, .v3 = null }), outcome);
}
test "Ui_Ui_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_Ip());
}
test "Ui_Ui_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_Ip(), outcome);
}
test "Ui_Ui_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_Ip(), .{ .v1 = 4717, .v2 = 9398, .v3 = null });
}
pub export fn zig_assert_Ui_Ui_Ip(lv: c.Ui_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4717) err = 1;
    if (lv.v2 != 9398) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_Ip() c.Ui_Ui_Ip {
    return .{ .v1 = 4717, .v2 = 9398, .v3 = null };
}

// From T_Snnn_xba.c:50868:50888
// struct  Ui_Ui_L  {
//   unsigned int v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Ui_Ui_L: layout" {
    var lv: c.Ui_Ui_L = undefined;
    try testing.expectSize(c.Ui_Ui_L, 16);
    try testing.expectAlign(c.Ui_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ui_L(.{ .v1 = 5211, .v2 = 14887, .v3 = 10731 }), outcome);
}
test "Ui_Ui_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_L());
}
test "Ui_Ui_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_L(), outcome);
}
test "Ui_Ui_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_L(), .{ .v1 = 5211, .v2 = 14887, .v3 = 10731 });
}
pub export fn zig_assert_Ui_Ui_L(lv: c.Ui_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5211) err = 1;
    if (lv.v2 != 14887) err = 2;
    if (lv.v3 != 10731) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_L() c.Ui_Ui_L {
    return .{ .v1 = 5211, .v2 = 14887, .v3 = 10731 };
}

// From T_Snnn_xba.c:50893:50913
// struct  Ui_Ui_S  {
//   unsigned int v1;
//   unsigned int v2;
//   short v3;
// };

test "Ui_Ui_S: layout" {
    var lv: c.Ui_Ui_S = undefined;
    try testing.expectSize(c.Ui_Ui_S, 12);
    try testing.expectAlign(c.Ui_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ui_S(.{ .v1 = 8211, .v2 = 27366, .v3 = 700 }), outcome);
}
test "Ui_Ui_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_S());
}
test "Ui_Ui_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_S(), outcome);
}
test "Ui_Ui_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_S(), .{ .v1 = 8211, .v2 = 27366, .v3 = 700 });
}
pub export fn zig_assert_Ui_Ui_S(lv: c.Ui_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8211) err = 1;
    if (lv.v2 != 27366) err = 2;
    if (lv.v3 != 700) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_S() c.Ui_Ui_S {
    return .{ .v1 = 8211, .v2 = 27366, .v3 = 700 };
}

// From T_Snnn_xba.c:50918:50938
// struct  Ui_Ui_Uc  {
//   unsigned int v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Ui_Ui_Uc: layout" {
    var lv: c.Ui_Ui_Uc = undefined;
    try testing.expectSize(c.Ui_Ui_Uc, 12);
    try testing.expectAlign(c.Ui_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ui_Uc(.{ .v1 = 2757, .v2 = 21695, .v3 = 93 }), outcome);
}
test "Ui_Ui_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_Uc());
}
test "Ui_Ui_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_Uc(), outcome);
}
test "Ui_Ui_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_Uc(), .{ .v1 = 2757, .v2 = 21695, .v3 = 93 });
}
pub export fn zig_assert_Ui_Ui_Uc(lv: c.Ui_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2757) err = 1;
    if (lv.v2 != 21695) err = 2;
    if (lv.v3 != 93) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_Uc() c.Ui_Ui_Uc {
    return .{ .v1 = 2757, .v2 = 21695, .v3 = 93 };
}

// From T_Snnn_xba.c:50943:50963
// struct  Ui_Ui_Ui  {
//   unsigned int v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Ui_Ui_Ui: layout" {
    var lv: c.Ui_Ui_Ui = undefined;
    try testing.expectSize(c.Ui_Ui_Ui, 12);
    try testing.expectAlign(c.Ui_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ui_Ui(.{ .v1 = 9522, .v2 = 22368, .v3 = 18383 }), outcome);
}
test "Ui_Ui_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_Ui());
}
test "Ui_Ui_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_Ui(), outcome);
}
test "Ui_Ui_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_Ui(), .{ .v1 = 9522, .v2 = 22368, .v3 = 18383 });
}
pub export fn zig_assert_Ui_Ui_Ui(lv: c.Ui_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9522) err = 1;
    if (lv.v2 != 22368) err = 2;
    if (lv.v3 != 18383) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_Ui() c.Ui_Ui_Ui {
    return .{ .v1 = 9522, .v2 = 22368, .v3 = 18383 };
}

// From T_Snnn_xba.c:50968:50988
// struct  Ui_Ui_Ul  {
//   unsigned int v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Ui_Ui_Ul: layout" {
    var lv: c.Ui_Ui_Ul = undefined;
    try testing.expectSize(c.Ui_Ui_Ul, 16);
    try testing.expectAlign(c.Ui_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ui_Ul(.{ .v1 = 17560, .v2 = 16595, .v3 = 621 }), outcome);
}
test "Ui_Ui_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_Ul());
}
test "Ui_Ui_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_Ul(), outcome);
}
test "Ui_Ui_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_Ul(), .{ .v1 = 17560, .v2 = 16595, .v3 = 621 });
}
pub export fn zig_assert_Ui_Ui_Ul(lv: c.Ui_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17560) err = 1;
    if (lv.v2 != 16595) err = 2;
    if (lv.v3 != 621) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_Ul() c.Ui_Ui_Ul {
    return .{ .v1 = 17560, .v2 = 16595, .v3 = 621 };
}

// From T_Snnn_xba.c:50993:51013
// struct  Ui_Ui_Us  {
//   unsigned int v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Ui_Ui_Us: layout" {
    var lv: c.Ui_Ui_Us = undefined;
    try testing.expectSize(c.Ui_Ui_Us, 12);
    try testing.expectAlign(c.Ui_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ui_Us(.{ .v1 = 11564, .v2 = 11476, .v3 = 1119 }), outcome);
}
test "Ui_Ui_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_Us());
}
test "Ui_Ui_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_Us(), outcome);
}
test "Ui_Ui_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_Us(), .{ .v1 = 11564, .v2 = 11476, .v3 = 1119 });
}
pub export fn zig_assert_Ui_Ui_Us(lv: c.Ui_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11564) err = 1;
    if (lv.v2 != 11476) err = 2;
    if (lv.v3 != 1119) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_Us() c.Ui_Ui_Us {
    return .{ .v1 = 11564, .v2 = 11476, .v3 = 1119 };
}

// From T_Snnn_xba.c:51018:51038
// struct  Ui_Ui_Vp  {
//   unsigned int v1;
//   unsigned int v2;
//   void *v3;
// };

test "Ui_Ui_Vp: layout" {
    var lv: c.Ui_Ui_Vp = undefined;
    try testing.expectSize(c.Ui_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ui_Vp(.{ .v1 = 6197, .v2 = 30374, .v3 = null }), outcome);
}
test "Ui_Ui_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ui_Vp());
}
test "Ui_Ui_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ui_Vp(), outcome);
}
test "Ui_Ui_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ui_Vp(), .{ .v1 = 6197, .v2 = 30374, .v3 = null });
}
pub export fn zig_assert_Ui_Ui_Vp(lv: c.Ui_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6197) err = 1;
    if (lv.v2 != 30374) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_Vp() c.Ui_Ui_Vp {
    return .{ .v1 = 6197, .v2 = 30374, .v3 = null };
}

// From T_Snnn_xba.c:51043:51061
// struct  Ui_Ul  {
//   unsigned int v1;
//   __tsu64 v2;
// };

test "Ui_Ul: layout" {
    var lv: c.Ui_Ul = undefined;
    try testing.expectSize(c.Ui_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ui_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul(.{ .v1 = 6015, .v2 = 14187 }), outcome);
}
test "Ui_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul());
}
test "Ui_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul(), outcome);
}
test "Ui_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul(), .{ .v1 = 6015, .v2 = 14187 });
}
pub export fn zig_assert_Ui_Ul(lv: c.Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6015) err = 1;
    if (lv.v2 != 14187) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul() c.Ui_Ul {
    return .{ .v1 = 6015, .v2 = 14187 };
}

// From T_Snnn_xba.c:51790:51810
// struct  Ui_Ul_C  {
//   unsigned int v1;
//   __tsu64 v2;
//   char v3;
// };

test "Ui_Ul_C: layout" {
    var lv: c.Ui_Ul_C = undefined;
    try testing.expectSize(c.Ui_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_C(.{ .v1 = 4633, .v2 = 28170, .v3 = 118 }), outcome);
}
test "Ui_Ul_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_C());
}
test "Ui_Ul_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_C(), outcome);
}
test "Ui_Ul_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_C(), .{ .v1 = 4633, .v2 = 28170, .v3 = 118 });
}
pub export fn zig_assert_Ui_Ul_C(lv: c.Ui_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4633) err = 1;
    if (lv.v2 != 28170) err = 2;
    if (lv.v3 != 118) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_C() c.Ui_Ul_C {
    return .{ .v1 = 4633, .v2 = 28170, .v3 = 118 };
}

// From T_Snnn_xba.c:51815:51835
// struct  Ui_Ul_D  {
//   unsigned int v1;
//   __tsu64 v2;
//   double v3;
// };

test "Ui_Ul_D: layout" {
    var lv: c.Ui_Ul_D = undefined;
    try testing.expectSize(c.Ui_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_D(.{ .v1 = 26735, .v2 = 3946, .v3 = 7.0 }), outcome);
}
test "Ui_Ul_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_D());
}
test "Ui_Ul_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_D(), outcome);
}
test "Ui_Ul_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_D(), .{ .v1 = 26735, .v2 = 3946, .v3 = 7.0 });
}
pub export fn zig_assert_Ui_Ul_D(lv: c.Ui_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26735) err = 1;
    if (lv.v2 != 3946) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_D() c.Ui_Ul_D {
    return .{ .v1 = 26735, .v2 = 3946, .v3 = 7.0 };
}

// From T_Snnn_xba.c:51840:51860
// struct  Ui_Ul_F  {
//   unsigned int v1;
//   __tsu64 v2;
//   float v3;
// };

test "Ui_Ul_F: layout" {
    var lv: c.Ui_Ul_F = undefined;
    try testing.expectSize(c.Ui_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_F(.{ .v1 = 28323, .v2 = 4257, .v3 = 7.0 }), outcome);
}
test "Ui_Ul_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_F());
}
test "Ui_Ul_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_F(), outcome);
}
test "Ui_Ul_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_F(), .{ .v1 = 28323, .v2 = 4257, .v3 = 7.0 });
}
pub export fn zig_assert_Ui_Ul_F(lv: c.Ui_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28323) err = 1;
    if (lv.v2 != 4257) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_F() c.Ui_Ul_F {
    return .{ .v1 = 28323, .v2 = 4257, .v3 = 7.0 };
}

// From T_Snnn_xba.c:51865:51885
// struct  Ui_Ul_I  {
//   unsigned int v1;
//   __tsu64 v2;
//   int v3;
// };

test "Ui_Ul_I: layout" {
    var lv: c.Ui_Ul_I = undefined;
    try testing.expectSize(c.Ui_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_I(.{ .v1 = 25993, .v2 = 21218, .v3 = 10780 }), outcome);
}
test "Ui_Ul_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_I());
}
test "Ui_Ul_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_I(), outcome);
}
test "Ui_Ul_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_I(), .{ .v1 = 25993, .v2 = 21218, .v3 = 10780 });
}
pub export fn zig_assert_Ui_Ul_I(lv: c.Ui_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25993) err = 1;
    if (lv.v2 != 21218) err = 2;
    if (lv.v3 != 10780) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_I() c.Ui_Ul_I {
    return .{ .v1 = 25993, .v2 = 21218, .v3 = 10780 };
}

// From T_Snnn_xba.c:51890:51910
// struct  Ui_Ul_Ip  {
//   unsigned int v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Ui_Ul_Ip: layout" {
    var lv: c.Ui_Ul_Ip = undefined;
    try testing.expectSize(c.Ui_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_Ip(.{ .v1 = 4013, .v2 = 9159, .v3 = null }), outcome);
}
test "Ui_Ul_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_Ip());
}
test "Ui_Ul_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_Ip(), outcome);
}
test "Ui_Ul_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_Ip(), .{ .v1 = 4013, .v2 = 9159, .v3 = null });
}
pub export fn zig_assert_Ui_Ul_Ip(lv: c.Ui_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4013) err = 1;
    if (lv.v2 != 9159) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_Ip() c.Ui_Ul_Ip {
    return .{ .v1 = 4013, .v2 = 9159, .v3 = null };
}

// From T_Snnn_xba.c:51915:51935
// struct  Ui_Ul_L  {
//   unsigned int v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Ui_Ul_L: layout" {
    var lv: c.Ui_Ul_L = undefined;
    try testing.expectSize(c.Ui_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_L(.{ .v1 = 612, .v2 = 2563, .v3 = 3634 }), outcome);
}
test "Ui_Ul_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_L());
}
test "Ui_Ul_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_L(), outcome);
}
test "Ui_Ul_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_L(), .{ .v1 = 612, .v2 = 2563, .v3 = 3634 });
}
pub export fn zig_assert_Ui_Ul_L(lv: c.Ui_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 612) err = 1;
    if (lv.v2 != 2563) err = 2;
    if (lv.v3 != 3634) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_L() c.Ui_Ul_L {
    return .{ .v1 = 612, .v2 = 2563, .v3 = 3634 };
}

// From T_Snnn_xba.c:51940:51960
// struct  Ui_Ul_S  {
//   unsigned int v1;
//   __tsu64 v2;
//   short v3;
// };

test "Ui_Ul_S: layout" {
    var lv: c.Ui_Ul_S = undefined;
    try testing.expectSize(c.Ui_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_S(.{ .v1 = 29897, .v2 = 28586, .v3 = 32630 }), outcome);
}
test "Ui_Ul_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_S());
}
test "Ui_Ul_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_S(), outcome);
}
test "Ui_Ul_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_S(), .{ .v1 = 29897, .v2 = 28586, .v3 = 32630 });
}
pub export fn zig_assert_Ui_Ul_S(lv: c.Ui_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29897) err = 1;
    if (lv.v2 != 28586) err = 2;
    if (lv.v3 != 32630) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_S() c.Ui_Ul_S {
    return .{ .v1 = 29897, .v2 = 28586, .v3 = 32630 };
}

// From T_Snnn_xba.c:51965:51985
// struct  Ui_Ul_Uc  {
//   unsigned int v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Ui_Ul_Uc: layout" {
    var lv: c.Ui_Ul_Uc = undefined;
    try testing.expectSize(c.Ui_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_Uc(.{ .v1 = 25723, .v2 = 5638, .v3 = 72 }), outcome);
}
test "Ui_Ul_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_Uc());
}
test "Ui_Ul_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_Uc(), outcome);
}
test "Ui_Ul_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_Uc(), .{ .v1 = 25723, .v2 = 5638, .v3 = 72 });
}
pub export fn zig_assert_Ui_Ul_Uc(lv: c.Ui_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25723) err = 1;
    if (lv.v2 != 5638) err = 2;
    if (lv.v3 != 72) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_Uc() c.Ui_Ul_Uc {
    return .{ .v1 = 25723, .v2 = 5638, .v3 = 72 };
}

// From T_Snnn_xba.c:51990:52010
// struct  Ui_Ul_Ui  {
//   unsigned int v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Ui_Ul_Ui: layout" {
    var lv: c.Ui_Ul_Ui = undefined;
    try testing.expectSize(c.Ui_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_Ui(.{ .v1 = 21999, .v2 = 1833, .v3 = 27956 }), outcome);
}
test "Ui_Ul_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_Ui());
}
test "Ui_Ul_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_Ui(), outcome);
}
test "Ui_Ul_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_Ui(), .{ .v1 = 21999, .v2 = 1833, .v3 = 27956 });
}
pub export fn zig_assert_Ui_Ul_Ui(lv: c.Ui_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21999) err = 1;
    if (lv.v2 != 1833) err = 2;
    if (lv.v3 != 27956) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_Ui() c.Ui_Ul_Ui {
    return .{ .v1 = 21999, .v2 = 1833, .v3 = 27956 };
}

// From T_Snnn_xba.c:52015:52035
// struct  Ui_Ul_Ul  {
//   unsigned int v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Ui_Ul_Ul: layout" {
    var lv: c.Ui_Ul_Ul = undefined;
    try testing.expectSize(c.Ui_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_Ul(.{ .v1 = 21577, .v2 = 25353, .v3 = 519 }), outcome);
}
test "Ui_Ul_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_Ul());
}
test "Ui_Ul_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_Ul(), outcome);
}
test "Ui_Ul_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_Ul(), .{ .v1 = 21577, .v2 = 25353, .v3 = 519 });
}
pub export fn zig_assert_Ui_Ul_Ul(lv: c.Ui_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21577) err = 1;
    if (lv.v2 != 25353) err = 2;
    if (lv.v3 != 519) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_Ul() c.Ui_Ul_Ul {
    return .{ .v1 = 21577, .v2 = 25353, .v3 = 519 };
}

// From T_Snnn_xba.c:52040:52060
// struct  Ui_Ul_Us  {
//   unsigned int v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Ui_Ul_Us: layout" {
    var lv: c.Ui_Ul_Us = undefined;
    try testing.expectSize(c.Ui_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_Us(.{ .v1 = 2982, .v2 = 26174, .v3 = 30401 }), outcome);
}
test "Ui_Ul_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_Us());
}
test "Ui_Ul_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_Us(), outcome);
}
test "Ui_Ul_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_Us(), .{ .v1 = 2982, .v2 = 26174, .v3 = 30401 });
}
pub export fn zig_assert_Ui_Ul_Us(lv: c.Ui_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2982) err = 1;
    if (lv.v2 != 26174) err = 2;
    if (lv.v3 != 30401) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_Us() c.Ui_Ul_Us {
    return .{ .v1 = 2982, .v2 = 26174, .v3 = 30401 };
}

// From T_Snnn_xba.c:52065:52085
// struct  Ui_Ul_Vp  {
//   unsigned int v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Ui_Ul_Vp: layout" {
    var lv: c.Ui_Ul_Vp = undefined;
    try testing.expectSize(c.Ui_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Ul_Vp(.{ .v1 = 80, .v2 = 21067, .v3 = null }), outcome);
}
test "Ui_Ul_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Ul_Vp());
}
test "Ui_Ul_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Ul_Vp(), outcome);
}
test "Ui_Ul_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Ul_Vp(), .{ .v1 = 80, .v2 = 21067, .v3 = null });
}
pub export fn zig_assert_Ui_Ul_Vp(lv: c.Ui_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 80) err = 1;
    if (lv.v2 != 21067) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_Vp() c.Ui_Ul_Vp {
    return .{ .v1 = 80, .v2 = 21067, .v3 = null };
}

// From T_Snnn_xba.c:52090:52108
// struct  Ui_Us  {
//   unsigned int v1;
//   unsigned short v2;
// };

test "Ui_Us: layout" {
    var lv: c.Ui_Us = undefined;
    try testing.expectSize(c.Ui_Us, 8);
    try testing.expectAlign(c.Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Ui_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Us(.{ .v1 = 30354, .v2 = 26657 }), outcome);
}
test "Ui_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us());
}
test "Ui_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us(), outcome);
}
test "Ui_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us(), .{ .v1 = 30354, .v2 = 26657 });
}
pub export fn zig_assert_Ui_Us(lv: c.Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30354) err = 1;
    if (lv.v2 != 26657) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us() c.Ui_Us {
    return .{ .v1 = 30354, .v2 = 26657 };
}

// From T_Snnn_xba.c:52837:52857
// struct  Ui_Us_C  {
//   unsigned int v1;
//   unsigned short v2;
//   char v3;
// };

test "Ui_Us_C: layout" {
    var lv: c.Ui_Us_C = undefined;
    try testing.expectSize(c.Ui_Us_C, 8);
    try testing.expectAlign(c.Ui_Us_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_Us_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Us_C(.{ .v1 = 21789, .v2 = 26918, .v3 = 102 }), outcome);
}
test "Ui_Us_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_C());
}
test "Ui_Us_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_C(), outcome);
}
test "Ui_Us_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_C(), .{ .v1 = 21789, .v2 = 26918, .v3 = 102 });
}
pub export fn zig_assert_Ui_Us_C(lv: c.Ui_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21789) err = 1;
    if (lv.v2 != 26918) err = 2;
    if (lv.v3 != 102) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_C() c.Ui_Us_C {
    return .{ .v1 = 21789, .v2 = 26918, .v3 = 102 };
}

// From T_Snnn_xba.c:52862:52882
// struct  Ui_Us_D  {
//   unsigned int v1;
//   unsigned short v2;
//   double v3;
// };

test "Ui_Us_D: layout" {
    var lv: c.Ui_Us_D = undefined;
    try testing.expectSize(c.Ui_Us_D, 16);
    try testing.expectAlign(c.Ui_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Us_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_Us_D(.{ .v1 = 25060, .v2 = 30168, .v3 = 0.875 }), outcome);
}
test "Ui_Us_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_D());
}
test "Ui_Us_D: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_D(), outcome);
}
test "Ui_Us_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_D(), .{ .v1 = 25060, .v2 = 30168, .v3 = 0.875 });
}
pub export fn zig_assert_Ui_Us_D(lv: c.Ui_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25060) err = 1;
    if (lv.v2 != 30168) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_D() c.Ui_Us_D {
    return .{ .v1 = 25060, .v2 = 30168, .v3 = 0.875 };
}

// From T_Snnn_xba.c:52887:52907
// struct  Ui_Us_F  {
//   unsigned int v1;
//   unsigned short v2;
//   float v3;
// };

test "Ui_Us_F: layout" {
    var lv: c.Ui_Us_F = undefined;
    try testing.expectSize(c.Ui_Us_F, 12);
    try testing.expectAlign(c.Ui_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Us_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    try testing.expectOutcome(c.assert_Ui_Us_F(.{ .v1 = 26931, .v2 = 19984, .v3 = 0.5 }), outcome);
}
test "Ui_Us_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_F());
}
test "Ui_Us_F: C passes to Zig" {
    var outcome = true;
    if (builtin.cpu.arch == .x86_64) outcome = false;
    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_F(), outcome);
}
test "Ui_Us_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_F(), .{ .v1 = 26931, .v2 = 19984, .v3 = 0.5 });
}
pub export fn zig_assert_Ui_Us_F(lv: c.Ui_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26931) err = 1;
    if (lv.v2 != 19984) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_F() c.Ui_Us_F {
    return .{ .v1 = 26931, .v2 = 19984, .v3 = 0.5 };
}

// From T_Snnn_xba.c:52912:52932
// struct  Ui_Us_I  {
//   unsigned int v1;
//   unsigned short v2;
//   int v3;
// };

test "Ui_Us_I: layout" {
    var lv: c.Ui_Us_I = undefined;
    try testing.expectSize(c.Ui_Us_I, 12);
    try testing.expectAlign(c.Ui_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Us_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Us_I(.{ .v1 = 27580, .v2 = 4813, .v3 = 13953 }), outcome);
}
test "Ui_Us_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_I());
}
test "Ui_Us_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_I(), outcome);
}
test "Ui_Us_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_I(), .{ .v1 = 27580, .v2 = 4813, .v3 = 13953 });
}
pub export fn zig_assert_Ui_Us_I(lv: c.Ui_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27580) err = 1;
    if (lv.v2 != 4813) err = 2;
    if (lv.v3 != 13953) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_I() c.Ui_Us_I {
    return .{ .v1 = 27580, .v2 = 4813, .v3 = 13953 };
}

// From T_Snnn_xba.c:52937:52957
// struct  Ui_Us_Ip  {
//   unsigned int v1;
//   unsigned short v2;
//   int *v3;
// };

test "Ui_Us_Ip: layout" {
    var lv: c.Ui_Us_Ip = undefined;
    try testing.expectSize(c.Ui_Us_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Us_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Us_Ip(.{ .v1 = 3212, .v2 = 7801, .v3 = null }), outcome);
}
test "Ui_Us_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_Ip());
}
test "Ui_Us_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_Ip(), outcome);
}
test "Ui_Us_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_Ip(), .{ .v1 = 3212, .v2 = 7801, .v3 = null });
}
pub export fn zig_assert_Ui_Us_Ip(lv: c.Ui_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3212) err = 1;
    if (lv.v2 != 7801) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_Ip() c.Ui_Us_Ip {
    return .{ .v1 = 3212, .v2 = 7801, .v3 = null };
}

// From T_Snnn_xba.c:52962:52982
// struct  Ui_Us_L  {
//   unsigned int v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Ui_Us_L: layout" {
    var lv: c.Ui_Us_L = undefined;
    try testing.expectSize(c.Ui_Us_L, 16);
    try testing.expectAlign(c.Ui_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Us_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Us_L(.{ .v1 = 5564, .v2 = 2635, .v3 = 10175 }), outcome);
}
test "Ui_Us_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_L());
}
test "Ui_Us_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_L(), outcome);
}
test "Ui_Us_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_L(), .{ .v1 = 5564, .v2 = 2635, .v3 = 10175 });
}
pub export fn zig_assert_Ui_Us_L(lv: c.Ui_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5564) err = 1;
    if (lv.v2 != 2635) err = 2;
    if (lv.v3 != 10175) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_L() c.Ui_Us_L {
    return .{ .v1 = 5564, .v2 = 2635, .v3 = 10175 };
}

// From T_Snnn_xba.c:52987:53007
// struct  Ui_Us_S  {
//   unsigned int v1;
//   unsigned short v2;
//   short v3;
// };

test "Ui_Us_S: layout" {
    var lv: c.Ui_Us_S = undefined;
    try testing.expectSize(c.Ui_Us_S, 8);
    try testing.expectAlign(c.Ui_Us_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_Us_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Us_S(.{ .v1 = 26848, .v2 = 23938, .v3 = 12891 }), outcome);
}
test "Ui_Us_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_S());
}
test "Ui_Us_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_S(), outcome);
}
test "Ui_Us_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_S(), .{ .v1 = 26848, .v2 = 23938, .v3 = 12891 });
}
pub export fn zig_assert_Ui_Us_S(lv: c.Ui_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26848) err = 1;
    if (lv.v2 != 23938) err = 2;
    if (lv.v3 != 12891) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_S() c.Ui_Us_S {
    return .{ .v1 = 26848, .v2 = 23938, .v3 = 12891 };
}

// From T_Snnn_xba.c:53012:53032
// struct  Ui_Us_Uc  {
//   unsigned int v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Ui_Us_Uc: layout" {
    var lv: c.Ui_Us_Uc = undefined;
    try testing.expectSize(c.Ui_Us_Uc, 8);
    try testing.expectAlign(c.Ui_Us_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_Us_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Us_Uc(.{ .v1 = 21533, .v2 = 13458, .v3 = 32 }), outcome);
}
test "Ui_Us_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_Uc());
}
test "Ui_Us_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_Uc(), outcome);
}
test "Ui_Us_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_Uc(), .{ .v1 = 21533, .v2 = 13458, .v3 = 32 });
}
pub export fn zig_assert_Ui_Us_Uc(lv: c.Ui_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21533) err = 1;
    if (lv.v2 != 13458) err = 2;
    if (lv.v3 != 32) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_Uc() c.Ui_Us_Uc {
    return .{ .v1 = 21533, .v2 = 13458, .v3 = 32 };
}

// From T_Snnn_xba.c:53037:53057
// struct  Ui_Us_Ui  {
//   unsigned int v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Ui_Us_Ui: layout" {
    var lv: c.Ui_Us_Ui = undefined;
    try testing.expectSize(c.Ui_Us_Ui, 12);
    try testing.expectAlign(c.Ui_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Us_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Us_Ui(.{ .v1 = 4359, .v2 = 7290, .v3 = 2824 }), outcome);
}
test "Ui_Us_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_Ui());
}
test "Ui_Us_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_Ui(), outcome);
}
test "Ui_Us_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_Ui(), .{ .v1 = 4359, .v2 = 7290, .v3 = 2824 });
}
pub export fn zig_assert_Ui_Us_Ui(lv: c.Ui_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4359) err = 1;
    if (lv.v2 != 7290) err = 2;
    if (lv.v3 != 2824) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_Ui() c.Ui_Us_Ui {
    return .{ .v1 = 4359, .v2 = 7290, .v3 = 2824 };
}

// From T_Snnn_xba.c:53062:53082
// struct  Ui_Us_Ul  {
//   unsigned int v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Ui_Us_Ul: layout" {
    var lv: c.Ui_Us_Ul = undefined;
    try testing.expectSize(c.Ui_Us_Ul, 16);
    try testing.expectAlign(c.Ui_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Us_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Us_Ul(.{ .v1 = 10815, .v2 = 2476, .v3 = 15183 }), outcome);
}
test "Ui_Us_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_Ul());
}
test "Ui_Us_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_Ul(), outcome);
}
test "Ui_Us_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_Ul(), .{ .v1 = 10815, .v2 = 2476, .v3 = 15183 });
}
pub export fn zig_assert_Ui_Us_Ul(lv: c.Ui_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10815) err = 1;
    if (lv.v2 != 2476) err = 2;
    if (lv.v3 != 15183) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_Ul() c.Ui_Us_Ul {
    return .{ .v1 = 10815, .v2 = 2476, .v3 = 15183 };
}

// From T_Snnn_xba.c:53087:53107
// struct  Ui_Us_Us  {
//   unsigned int v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Ui_Us_Us: layout" {
    var lv: c.Ui_Us_Us = undefined;
    try testing.expectSize(c.Ui_Us_Us, 8);
    try testing.expectAlign(c.Ui_Us_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_Us_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Us_Us(.{ .v1 = 28170, .v2 = 20814, .v3 = 14005 }), outcome);
}
test "Ui_Us_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_Us());
}
test "Ui_Us_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_Us(), outcome);
}
test "Ui_Us_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_Us(), .{ .v1 = 28170, .v2 = 20814, .v3 = 14005 });
}
pub export fn zig_assert_Ui_Us_Us(lv: c.Ui_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28170) err = 1;
    if (lv.v2 != 20814) err = 2;
    if (lv.v3 != 14005) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_Us() c.Ui_Us_Us {
    return .{ .v1 = 28170, .v2 = 20814, .v3 = 14005 };
}

// From T_Snnn_xba.c:53112:53132
// struct  Ui_Us_Vp  {
//   unsigned int v1;
//   unsigned short v2;
//   void *v3;
// };

test "Ui_Us_Vp: layout" {
    var lv: c.Ui_Us_Vp = undefined;
    try testing.expectSize(c.Ui_Us_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Us_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Us_Vp(.{ .v1 = 13993, .v2 = 22706, .v3 = null }), outcome);
}
test "Ui_Us_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Us_Vp());
}
test "Ui_Us_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Us_Vp(), outcome);
}
test "Ui_Us_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Us_Vp(), .{ .v1 = 13993, .v2 = 22706, .v3 = null });
}
pub export fn zig_assert_Ui_Us_Vp(lv: c.Ui_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13993) err = 1;
    if (lv.v2 != 22706) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_Vp() c.Ui_Us_Vp {
    return .{ .v1 = 13993, .v2 = 22706, .v3 = null };
}

// From T_Snnn_xba.c:53137:53155
// struct  Ui_Vp  {
//   unsigned int v1;
//   void *v2;
// };

test "Ui_Vp: layout" {
    var lv: c.Ui_Vp = undefined;
    try testing.expectSize(c.Ui_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ui_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp(.{ .v1 = 876, .v2 = null }), outcome);
}
test "Ui_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp());
}
test "Ui_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp(), outcome);
}
test "Ui_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp(), .{ .v1 = 876, .v2 = null });
}
pub export fn zig_assert_Ui_Vp(lv: c.Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 876) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp() c.Ui_Vp {
    return .{ .v1 = 876, .v2 = null };
}

// From T_Snnn_xba.c:53884:53904
// struct  Ui_Vp_C  {
//   unsigned int v1;
//   void *v2;
//   char v3;
// };

test "Ui_Vp_C: layout" {
    var lv: c.Ui_Vp_C = undefined;
    try testing.expectSize(c.Ui_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_C(.{ .v1 = 15686, .v2 = null, .v3 = 90 }), outcome);
}
test "Ui_Vp_C: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_C());
}
test "Ui_Vp_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_C(), outcome);
}
test "Ui_Vp_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_C(), .{ .v1 = 15686, .v2 = null, .v3 = 90 });
}
pub export fn zig_assert_Ui_Vp_C(lv: c.Ui_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15686) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 90) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_C() c.Ui_Vp_C {
    return .{ .v1 = 15686, .v2 = null, .v3 = 90 };
}

// From T_Snnn_xba.c:53909:53929
// struct  Ui_Vp_D  {
//   unsigned int v1;
//   void *v2;
//   double v3;
// };

test "Ui_Vp_D: layout" {
    var lv: c.Ui_Vp_D = undefined;
    try testing.expectSize(c.Ui_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_D(.{ .v1 = 7177, .v2 = null, .v3 = 0.5 }), outcome);
}
test "Ui_Vp_D: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_D());
}
test "Ui_Vp_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_D(), outcome);
}
test "Ui_Vp_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_D(), .{ .v1 = 7177, .v2 = null, .v3 = 0.5 });
}
pub export fn zig_assert_Ui_Vp_D(lv: c.Ui_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7177) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_D() c.Ui_Vp_D {
    return .{ .v1 = 7177, .v2 = null, .v3 = 0.5 };
}

// From T_Snnn_xba.c:53934:53954
// struct  Ui_Vp_F  {
//   unsigned int v1;
//   void *v2;
//   float v3;
// };

test "Ui_Vp_F: layout" {
    var lv: c.Ui_Vp_F = undefined;
    try testing.expectSize(c.Ui_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_F(.{ .v1 = 28047, .v2 = null, .v3 = -2.125 }), outcome);
}
test "Ui_Vp_F: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_F());
}
test "Ui_Vp_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_F(), outcome);
}
test "Ui_Vp_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_F(), .{ .v1 = 28047, .v2 = null, .v3 = -2.125 });
}
pub export fn zig_assert_Ui_Vp_F(lv: c.Ui_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28047) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_F() c.Ui_Vp_F {
    return .{ .v1 = 28047, .v2 = null, .v3 = -2.125 };
}

// From T_Snnn_xba.c:53959:53979
// struct  Ui_Vp_I  {
//   unsigned int v1;
//   void *v2;
//   int v3;
// };

test "Ui_Vp_I: layout" {
    var lv: c.Ui_Vp_I = undefined;
    try testing.expectSize(c.Ui_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_I(.{ .v1 = 25781, .v2 = null, .v3 = 27067 }), outcome);
}
test "Ui_Vp_I: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_I());
}
test "Ui_Vp_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_I(), outcome);
}
test "Ui_Vp_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_I(), .{ .v1 = 25781, .v2 = null, .v3 = 27067 });
}
pub export fn zig_assert_Ui_Vp_I(lv: c.Ui_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25781) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 27067) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_I() c.Ui_Vp_I {
    return .{ .v1 = 25781, .v2 = null, .v3 = 27067 };
}

// From T_Snnn_xba.c:53984:54004
// struct  Ui_Vp_Ip  {
//   unsigned int v1;
//   void *v2;
//   int *v3;
// };

test "Ui_Vp_Ip: layout" {
    var lv: c.Ui_Vp_Ip = undefined;
    try testing.expectSize(c.Ui_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_Ip(.{ .v1 = 20737, .v2 = null, .v3 = null }), outcome);
}
test "Ui_Vp_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_Ip());
}
test "Ui_Vp_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_Ip(), outcome);
}
test "Ui_Vp_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_Ip(), .{ .v1 = 20737, .v2 = null, .v3 = null });
}
pub export fn zig_assert_Ui_Vp_Ip(lv: c.Ui_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20737) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_Ip() c.Ui_Vp_Ip {
    return .{ .v1 = 20737, .v2 = null, .v3 = null };
}

// From T_Snnn_xba.c:54009:54029
// struct  Ui_Vp_L  {
//   unsigned int v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Ui_Vp_L: layout" {
    var lv: c.Ui_Vp_L = undefined;
    try testing.expectSize(c.Ui_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_L(.{ .v1 = 19695, .v2 = null, .v3 = 2089 }), outcome);
}
test "Ui_Vp_L: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_L());
}
test "Ui_Vp_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_L(), outcome);
}
test "Ui_Vp_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_L(), .{ .v1 = 19695, .v2 = null, .v3 = 2089 });
}
pub export fn zig_assert_Ui_Vp_L(lv: c.Ui_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19695) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 2089) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_L() c.Ui_Vp_L {
    return .{ .v1 = 19695, .v2 = null, .v3 = 2089 };
}

// From T_Snnn_xba.c:54034:54054
// struct  Ui_Vp_S  {
//   unsigned int v1;
//   void *v2;
//   short v3;
// };

test "Ui_Vp_S: layout" {
    var lv: c.Ui_Vp_S = undefined;
    try testing.expectSize(c.Ui_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_S(.{ .v1 = 22643, .v2 = null, .v3 = 3854 }), outcome);
}
test "Ui_Vp_S: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_S());
}
test "Ui_Vp_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_S(), outcome);
}
test "Ui_Vp_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_S(), .{ .v1 = 22643, .v2 = null, .v3 = 3854 });
}
pub export fn zig_assert_Ui_Vp_S(lv: c.Ui_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22643) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 3854) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_S() c.Ui_Vp_S {
    return .{ .v1 = 22643, .v2 = null, .v3 = 3854 };
}

// From T_Snnn_xba.c:54059:54079
// struct  Ui_Vp_Uc  {
//   unsigned int v1;
//   void *v2;
//   unsigned char v3;
// };

test "Ui_Vp_Uc: layout" {
    var lv: c.Ui_Vp_Uc = undefined;
    try testing.expectSize(c.Ui_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_Uc(.{ .v1 = 2525, .v2 = null, .v3 = 89 }), outcome);
}
test "Ui_Vp_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_Uc());
}
test "Ui_Vp_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_Uc(), outcome);
}
test "Ui_Vp_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_Uc(), .{ .v1 = 2525, .v2 = null, .v3 = 89 });
}
pub export fn zig_assert_Ui_Vp_Uc(lv: c.Ui_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2525) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 89) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_Uc() c.Ui_Vp_Uc {
    return .{ .v1 = 2525, .v2 = null, .v3 = 89 };
}

// From T_Snnn_xba.c:54084:54104
// struct  Ui_Vp_Ui  {
//   unsigned int v1;
//   void *v2;
//   unsigned int v3;
// };

test "Ui_Vp_Ui: layout" {
    var lv: c.Ui_Vp_Ui = undefined;
    try testing.expectSize(c.Ui_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_Ui(.{ .v1 = 25903, .v2 = null, .v3 = 7407 }), outcome);
}
test "Ui_Vp_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_Ui());
}
test "Ui_Vp_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_Ui(), outcome);
}
test "Ui_Vp_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_Ui(), .{ .v1 = 25903, .v2 = null, .v3 = 7407 });
}
pub export fn zig_assert_Ui_Vp_Ui(lv: c.Ui_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25903) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7407) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_Ui() c.Ui_Vp_Ui {
    return .{ .v1 = 25903, .v2 = null, .v3 = 7407 };
}

// From T_Snnn_xba.c:54109:54129
// struct  Ui_Vp_Ul  {
//   unsigned int v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Ui_Vp_Ul: layout" {
    var lv: c.Ui_Vp_Ul = undefined;
    try testing.expectSize(c.Ui_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_Ul(.{ .v1 = 4962, .v2 = null, .v3 = 72 }), outcome);
}
test "Ui_Vp_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_Ul());
}
test "Ui_Vp_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_Ul(), outcome);
}
test "Ui_Vp_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_Ul(), .{ .v1 = 4962, .v2 = null, .v3 = 72 });
}
pub export fn zig_assert_Ui_Vp_Ul(lv: c.Ui_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4962) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 72) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_Ul() c.Ui_Vp_Ul {
    return .{ .v1 = 4962, .v2 = null, .v3 = 72 };
}

// From T_Snnn_xba.c:54134:54154
// struct  Ui_Vp_Us  {
//   unsigned int v1;
//   void *v2;
//   unsigned short v3;
// };

test "Ui_Vp_Us: layout" {
    var lv: c.Ui_Vp_Us = undefined;
    try testing.expectSize(c.Ui_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_Us(.{ .v1 = 14228, .v2 = null, .v3 = 25551 }), outcome);
}
test "Ui_Vp_Us: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_Us());
}
test "Ui_Vp_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_Us(), outcome);
}
test "Ui_Vp_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_Us(), .{ .v1 = 14228, .v2 = null, .v3 = 25551 });
}
pub export fn zig_assert_Ui_Vp_Us(lv: c.Ui_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14228) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 25551) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_Us() c.Ui_Vp_Us {
    return .{ .v1 = 14228, .v2 = null, .v3 = 25551 };
}

// From T_Snnn_xba.c:54159:54179
// struct  Ui_Vp_Vp  {
//   unsigned int v1;
//   void *v2;
//   void *v3;
// };

test "Ui_Vp_Vp: layout" {
    var lv: c.Ui_Vp_Vp = undefined;
    try testing.expectSize(c.Ui_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ui_Vp_Vp(.{ .v1 = 950, .v2 = null, .v3 = null }), outcome);
}
test "Ui_Vp_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ui_Vp_Vp());
}
test "Ui_Vp_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ui_Vp_Vp(), outcome);
}
test "Ui_Vp_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ui_Vp_Vp(), .{ .v1 = 950, .v2 = null, .v3 = null });
}
pub export fn zig_assert_Ui_Vp_Vp(lv: c.Ui_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 950) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_Vp() c.Ui_Vp_Vp {
    return .{ .v1 = 950, .v2 = null, .v3 = null };
}

// From T_Snnn_xba.c:54184:54200
// struct  Ul  {
//   __tsu64 v1;
// };

test "Ul: layout" {
    var lv: c.Ul = undefined;
    try testing.expectSize(c.Ul, 8);
    try testing.expectAlign(c.Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ul(.{ .v1 = 14013 }), outcome);
}
test "Ul: Zig returns to C" {
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ul());
}
test "Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ul(), outcome);
}
test "Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .i386) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ul(), .{ .v1 = 14013 });
}
pub export fn zig_assert_Ul(lv: c.Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14013) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul() c.Ul {
    return .{ .v1 = 14013 };
}
