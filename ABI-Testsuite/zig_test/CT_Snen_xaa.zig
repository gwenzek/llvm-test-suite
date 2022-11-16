const std = @import("std");
const testing = @import("testing.zig");
const builtin = @import("builtin");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("CT_Snen_xaa.h");
});

// From CT_Snen_xaa.c:61409:61429
// struct  C_C_Sf  {
//   char v1;
//   char v2;
//   struct empty v3;
// };

test "C_C_Sf: layout" {
    var lv: c.C_C_Sf = undefined;
    try testing.expectSize(c.C_C_Sf, 2);
    try testing.expectAlign(c.C_C_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_C_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_C_Sf(.{ .v1 = 117, .v2 = 73, .v3 = .{} }), outcome);
}
test "C_C_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_C_Sf());
}
test "C_C_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_C_Sf(), outcome);
}
test "C_C_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_C_Sf(), .{ .v1 = 117, .v2 = 73, .v3 = .{} });
}
pub export fn zig_assert_C_C_Sf(lv: c.C_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 117) err = 1;
    if (lv.v2 != 73) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_C_Sf() c.C_C_Sf {
    return .{ .v1 = 117, .v2 = 73, .v3 = .{} };
}

// From CT_Snen_xaa.c:61434:61454
// struct  C_D_Sf  {
//   char v1;
//   double v2;
//   struct empty v3;
// };

test "C_D_Sf: layout" {
    var lv: c.C_D_Sf = undefined;
    try testing.expectSize(c.C_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.C_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_D_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_D_Sf(.{ .v1 = 118, .v2 = 1.0, .v3 = .{} }), outcome);
}
test "C_D_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_D_Sf());
}
test "C_D_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_D_Sf(), outcome);
}
test "C_D_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_D_Sf(), .{ .v1 = 118, .v2 = 1.0, .v3 = .{} });
}
pub export fn zig_assert_C_D_Sf(lv: c.C_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 118) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_D_Sf() c.C_D_Sf {
    return .{ .v1 = 118, .v2 = 1.0, .v3 = .{} };
}

// From CT_Snen_xaa.c:61459:61479
// struct  C_F_Sf  {
//   char v1;
//   float v2;
//   struct empty v3;
// };

test "C_F_Sf: layout" {
    var lv: c.C_F_Sf = undefined;
    try testing.expectSize(c.C_F_Sf, 8);
    try testing.expectAlign(c.C_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_F_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_F_Sf(.{ .v1 = 74, .v2 = -2.125, .v3 = .{} }), outcome);
}
test "C_F_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_F_Sf());
}
test "C_F_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_F_Sf(), outcome);
}
test "C_F_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_F_Sf(), .{ .v1 = 74, .v2 = -2.125, .v3 = .{} });
}
pub export fn zig_assert_C_F_Sf(lv: c.C_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 74) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_F_Sf() c.C_F_Sf {
    return .{ .v1 = 74, .v2 = -2.125, .v3 = .{} };
}

// From CT_Snen_xaa.c:61484:61504
// struct  C_I_Sf  {
//   char v1;
//   int v2;
//   struct empty v3;
// };

test "C_I_Sf: layout" {
    var lv: c.C_I_Sf = undefined;
    try testing.expectSize(c.C_I_Sf, 8);
    try testing.expectAlign(c.C_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_I_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_I_Sf(.{ .v1 = 64, .v2 = 22728, .v3 = .{} }), outcome);
}
test "C_I_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_I_Sf());
}
test "C_I_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_I_Sf(), outcome);
}
test "C_I_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_I_Sf(), .{ .v1 = 64, .v2 = 22728, .v3 = .{} });
}
pub export fn zig_assert_C_I_Sf(lv: c.C_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 64) err = 1;
    if (lv.v2 != 22728) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_I_Sf() c.C_I_Sf {
    return .{ .v1 = 64, .v2 = 22728, .v3 = .{} };
}

// From CT_Snen_xaa.c:61509:61529
// struct  C_Ip_Sf  {
//   char v1;
//   int *v2;
//   struct empty v3;
// };

test "C_Ip_Sf: layout" {
    var lv: c.C_Ip_Sf = undefined;
    try testing.expectSize(c.C_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Ip_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Ip_Sf(.{ .v1 = 76, .v2 = null, .v3 = .{} }), outcome);
}
test "C_Ip_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Ip_Sf());
}
test "C_Ip_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Ip_Sf(), outcome);
}
test "C_Ip_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Ip_Sf(), .{ .v1 = 76, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_C_Ip_Sf(lv: c.C_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 76) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ip_Sf() c.C_Ip_Sf {
    return .{ .v1 = 76, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:61534:61554
// struct  C_L_Sf  {
//   char v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "C_L_Sf: layout" {
    var lv: c.C_L_Sf = undefined;
    try testing.expectSize(c.C_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.C_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_L_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_L_Sf(.{ .v1 = 37, .v2 = 19332, .v3 = .{} }), outcome);
}
test "C_L_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_L_Sf());
}
test "C_L_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_L_Sf(), outcome);
}
test "C_L_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_L_Sf(), .{ .v1 = 37, .v2 = 19332, .v3 = .{} });
}
pub export fn zig_assert_C_L_Sf(lv: c.C_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 37) err = 1;
    if (lv.v2 != 19332) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_L_Sf() c.C_L_Sf {
    return .{ .v1 = 37, .v2 = 19332, .v3 = .{} };
}

// From CT_Snen_xaa.c:61559:61579
// struct  C_S_Sf  {
//   char v1;
//   short v2;
//   struct empty v3;
// };

test "C_S_Sf: layout" {
    var lv: c.C_S_Sf = undefined;
    try testing.expectSize(c.C_S_Sf, 4);
    try testing.expectAlign(c.C_S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_S_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_S_Sf(.{ .v1 = 73, .v2 = 7184, .v3 = .{} }), outcome);
}
test "C_S_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_S_Sf());
}
test "C_S_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_S_Sf(), outcome);
}
test "C_S_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_S_Sf(), .{ .v1 = 73, .v2 = 7184, .v3 = .{} });
}
pub export fn zig_assert_C_S_Sf(lv: c.C_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 73) err = 1;
    if (lv.v2 != 7184) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_S_Sf() c.C_S_Sf {
    return .{ .v1 = 73, .v2 = 7184, .v3 = .{} };
}

// From CT_Snen_xaa.c:61584:61602
// struct  C_Sf  {
//   char v1;
//   struct empty v2;
// };

test "C_Sf: layout" {
    var lv: c.C_Sf = undefined;
    try testing.expectSize(c.C_Sf, 1);
    try testing.expectAlign(c.C_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}
test "C_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf(.{ .v1 = 12, .v2 = .{} }), outcome);
}
test "C_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf());
}
test "C_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf(), outcome);
}
test "C_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf(), .{ .v1 = 12, .v2 = .{} });
}
pub export fn zig_assert_C_Sf(lv: c.C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf() c.C_Sf {
    return .{ .v1 = 12, .v2 = .{} };
}

// From CT_Snen_xaa.c:62331:62351
// struct  C_Sf_C  {
//   char v1;
//   struct empty v2;
//   char v3;
// };

test "C_Sf_C: layout" {
    var lv: c.C_Sf_C = undefined;
    try testing.expectSize(c.C_Sf_C, 2);
    try testing.expectAlign(c.C_Sf_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "C_Sf_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_C(.{ .v1 = 91, .v2 = .{}, .v3 = 3 }), outcome);
}
test "C_Sf_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_C());
}
test "C_Sf_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_C(), outcome);
}
test "C_Sf_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_C(), .{ .v1 = 91, .v2 = .{}, .v3 = 3 });
}
pub export fn zig_assert_C_Sf_C(lv: c.C_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 91) err = 1;
    if (lv.v3 != 3) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_C() c.C_Sf_C {
    return .{ .v1 = 91, .v2 = .{}, .v3 = 3 };
}

// From CT_Snen_xaa.c:62356:62376
// struct  C_Sf_D  {
//   char v1;
//   struct empty v2;
//   double v3;
// };

test "C_Sf_D: layout" {
    var lv: c.C_Sf_D = undefined;
    try testing.expectSize(c.C_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Sf_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_D(.{ .v1 = 108, .v2 = .{}, .v3 = 4.5 }), outcome);
}
test "C_Sf_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_D());
}
test "C_Sf_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_D(), outcome);
}
test "C_Sf_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_D(), .{ .v1 = 108, .v2 = .{}, .v3 = 4.5 });
}
pub export fn zig_assert_C_Sf_D(lv: c.C_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 108) err = 1;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_D() c.C_Sf_D {
    return .{ .v1 = 108, .v2 = .{}, .v3 = 4.5 };
}

// From CT_Snen_xaa.c:62381:62401
// struct  C_Sf_F  {
//   char v1;
//   struct empty v2;
//   float v3;
// };

test "C_Sf_F: layout" {
    var lv: c.C_Sf_F = undefined;
    try testing.expectSize(c.C_Sf_F, 8);
    try testing.expectAlign(c.C_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Sf_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_F(.{ .v1 = 115, .v2 = .{}, .v3 = 4.5 }), outcome);
}
test "C_Sf_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_F());
}
test "C_Sf_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_F(), outcome);
}
test "C_Sf_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_F(), .{ .v1 = 115, .v2 = .{}, .v3 = 4.5 });
}
pub export fn zig_assert_C_Sf_F(lv: c.C_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 115) err = 1;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_F() c.C_Sf_F {
    return .{ .v1 = 115, .v2 = .{}, .v3 = 4.5 };
}

// From CT_Snen_xaa.c:62406:62426
// struct  C_Sf_I  {
//   char v1;
//   struct empty v2;
//   int v3;
// };

test "C_Sf_I: layout" {
    var lv: c.C_Sf_I = undefined;
    try testing.expectSize(c.C_Sf_I, 8);
    try testing.expectAlign(c.C_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Sf_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_I(.{ .v1 = 95, .v2 = .{}, .v3 = 16729 }), outcome);
}
test "C_Sf_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_I());
}
test "C_Sf_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_I(), outcome);
}
test "C_Sf_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_I(), .{ .v1 = 95, .v2 = .{}, .v3 = 16729 });
}
pub export fn zig_assert_C_Sf_I(lv: c.C_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 95) err = 1;
    if (lv.v3 != 16729) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_I() c.C_Sf_I {
    return .{ .v1 = 95, .v2 = .{}, .v3 = 16729 };
}

// From CT_Snen_xaa.c:62431:62451
// struct  C_Sf_Ip  {
//   char v1;
//   struct empty v2;
//   int *v3;
// };

test "C_Sf_Ip: layout" {
    var lv: c.C_Sf_Ip = undefined;
    try testing.expectSize(c.C_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Sf_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_Ip(.{ .v1 = 100, .v2 = .{}, .v3 = null }), outcome);
}
test "C_Sf_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_Ip());
}
test "C_Sf_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_Ip(), outcome);
}
test "C_Sf_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_Ip(), .{ .v1 = 100, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_C_Sf_Ip(lv: c.C_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 100) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_Ip() c.C_Sf_Ip {
    return .{ .v1 = 100, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:62456:62476
// struct  C_Sf_L  {
//   char v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "C_Sf_L: layout" {
    var lv: c.C_Sf_L = undefined;
    try testing.expectSize(c.C_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Sf_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_L(.{ .v1 = 41, .v2 = .{}, .v3 = 23271 }), outcome);
}
test "C_Sf_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_L());
}
test "C_Sf_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_L(), outcome);
}
test "C_Sf_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_L(), .{ .v1 = 41, .v2 = .{}, .v3 = 23271 });
}
pub export fn zig_assert_C_Sf_L(lv: c.C_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 41) err = 1;
    if (lv.v3 != 23271) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_L() c.C_Sf_L {
    return .{ .v1 = 41, .v2 = .{}, .v3 = 23271 };
}

// From CT_Snen_xaa.c:62481:62501
// struct  C_Sf_S  {
//   char v1;
//   struct empty v2;
//   short v3;
// };

test "C_Sf_S: layout" {
    var lv: c.C_Sf_S = undefined;
    try testing.expectSize(c.C_Sf_S, 4);
    try testing.expectAlign(c.C_Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_Sf_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_S(.{ .v1 = 106, .v2 = .{}, .v3 = 31129 }), outcome);
}
test "C_Sf_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_S());
}
test "C_Sf_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_S(), outcome);
}
test "C_Sf_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_S(), .{ .v1 = 106, .v2 = .{}, .v3 = 31129 });
}
pub export fn zig_assert_C_Sf_S(lv: c.C_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 106) err = 1;
    if (lv.v3 != 31129) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_S() c.C_Sf_S {
    return .{ .v1 = 106, .v2 = .{}, .v3 = 31129 };
}

// From CT_Snen_xaa.c:62506:62526
// struct  C_Sf_Sf  {
//   char v1;
//   struct empty v2;
//   struct empty v3;
// };

test "C_Sf_Sf: layout" {
    var lv: c.C_Sf_Sf = undefined;
    try testing.expectSize(c.C_Sf_Sf, 1);
    try testing.expectAlign(c.C_Sf_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "C_Sf_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_Sf(.{ .v1 = 44, .v2 = .{}, .v3 = .{} }), outcome);
}
test "C_Sf_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_Sf());
}
test "C_Sf_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_Sf(), outcome);
}
test "C_Sf_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_Sf(), .{ .v1 = 44, .v2 = .{}, .v3 = .{} });
}
pub export fn zig_assert_C_Sf_Sf(lv: c.C_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 44) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_Sf() c.C_Sf_Sf {
    return .{ .v1 = 44, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xaa.c:62531:62551
// struct  C_Sf_Uc  {
//   char v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "C_Sf_Uc: layout" {
    var lv: c.C_Sf_Uc = undefined;
    try testing.expectSize(c.C_Sf_Uc, 2);
    try testing.expectAlign(c.C_Sf_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "C_Sf_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_Uc(.{ .v1 = 87, .v2 = .{}, .v3 = 33 }), outcome);
}
test "C_Sf_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_Uc());
}
test "C_Sf_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_Uc(), outcome);
}
test "C_Sf_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_Uc(), .{ .v1 = 87, .v2 = .{}, .v3 = 33 });
}
pub export fn zig_assert_C_Sf_Uc(lv: c.C_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 87) err = 1;
    if (lv.v3 != 33) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_Uc() c.C_Sf_Uc {
    return .{ .v1 = 87, .v2 = .{}, .v3 = 33 };
}

// From CT_Snen_xaa.c:62556:62576
// struct  C_Sf_Ui  {
//   char v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "C_Sf_Ui: layout" {
    var lv: c.C_Sf_Ui = undefined;
    try testing.expectSize(c.C_Sf_Ui, 8);
    try testing.expectAlign(c.C_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Sf_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_Ui(.{ .v1 = 100, .v2 = .{}, .v3 = 26951 }), outcome);
}
test "C_Sf_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_Ui());
}
test "C_Sf_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_Ui(), outcome);
}
test "C_Sf_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_Ui(), .{ .v1 = 100, .v2 = .{}, .v3 = 26951 });
}
pub export fn zig_assert_C_Sf_Ui(lv: c.C_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 100) err = 1;
    if (lv.v3 != 26951) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_Ui() c.C_Sf_Ui {
    return .{ .v1 = 100, .v2 = .{}, .v3 = 26951 };
}

// From CT_Snen_xaa.c:62581:62601
// struct  C_Sf_Ul  {
//   char v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "C_Sf_Ul: layout" {
    var lv: c.C_Sf_Ul = undefined;
    try testing.expectSize(c.C_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Sf_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_Ul(.{ .v1 = 75, .v2 = .{}, .v3 = 13468 }), outcome);
}
test "C_Sf_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_Ul());
}
test "C_Sf_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_Ul(), outcome);
}
test "C_Sf_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_Ul(), .{ .v1 = 75, .v2 = .{}, .v3 = 13468 });
}
pub export fn zig_assert_C_Sf_Ul(lv: c.C_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 75) err = 1;
    if (lv.v3 != 13468) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_Ul() c.C_Sf_Ul {
    return .{ .v1 = 75, .v2 = .{}, .v3 = 13468 };
}

// From CT_Snen_xaa.c:62606:62626
// struct  C_Sf_Us  {
//   char v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "C_Sf_Us: layout" {
    var lv: c.C_Sf_Us = undefined;
    try testing.expectSize(c.C_Sf_Us, 4);
    try testing.expectAlign(c.C_Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_Sf_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_Us(.{ .v1 = 62, .v2 = .{}, .v3 = 19833 }), outcome);
}
test "C_Sf_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_Us());
}
test "C_Sf_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_Us(), outcome);
}
test "C_Sf_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_Us(), .{ .v1 = 62, .v2 = .{}, .v3 = 19833 });
}
pub export fn zig_assert_C_Sf_Us(lv: c.C_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 62) err = 1;
    if (lv.v3 != 19833) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_Us() c.C_Sf_Us {
    return .{ .v1 = 62, .v2 = .{}, .v3 = 19833 };
}

// From CT_Snen_xaa.c:62631:62651
// struct  C_Sf_Vp  {
//   char v1;
//   struct empty v2;
//   void *v3;
// };

test "C_Sf_Vp: layout" {
    var lv: c.C_Sf_Vp = undefined;
    try testing.expectSize(c.C_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "C_Sf_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Sf_Vp(.{ .v1 = 43, .v2 = .{}, .v3 = null }), outcome);
}
test "C_Sf_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Sf_Vp());
}
test "C_Sf_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Sf_Vp(), outcome);
}
test "C_Sf_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Sf_Vp(), .{ .v1 = 43, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_C_Sf_Vp(lv: c.C_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 43) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Sf_Vp() c.C_Sf_Vp {
    return .{ .v1 = 43, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:62656:62676
// struct  C_Uc_Sf  {
//   char v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "C_Uc_Sf: layout" {
    var lv: c.C_Uc_Sf = undefined;
    try testing.expectSize(c.C_Uc_Sf, 2);
    try testing.expectAlign(c.C_Uc_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "C_Uc_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Uc_Sf(.{ .v1 = 75, .v2 = 105, .v3 = .{} }), outcome);
}
test "C_Uc_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Uc_Sf());
}
test "C_Uc_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Uc_Sf(), outcome);
}
test "C_Uc_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Uc_Sf(), .{ .v1 = 75, .v2 = 105, .v3 = .{} });
}
pub export fn zig_assert_C_Uc_Sf(lv: c.C_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 75) err = 1;
    if (lv.v2 != 105) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Uc_Sf() c.C_Uc_Sf {
    return .{ .v1 = 75, .v2 = 105, .v3 = .{} };
}

// From CT_Snen_xaa.c:62681:62701
// struct  C_Ui_Sf  {
//   char v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "C_Ui_Sf: layout" {
    var lv: c.C_Ui_Sf = undefined;
    try testing.expectSize(c.C_Ui_Sf, 8);
    try testing.expectAlign(c.C_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "C_Ui_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Ui_Sf(.{ .v1 = 0, .v2 = 14996, .v3 = .{} }), outcome);
}
test "C_Ui_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Ui_Sf());
}
test "C_Ui_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Ui_Sf(), outcome);
}
test "C_Ui_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Ui_Sf(), .{ .v1 = 0, .v2 = 14996, .v3 = .{} });
}
pub export fn zig_assert_C_Ui_Sf(lv: c.C_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0) err = 1;
    if (lv.v2 != 14996) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ui_Sf() c.C_Ui_Sf {
    return .{ .v1 = 0, .v2 = 14996, .v3 = .{} };
}

// From CT_Snen_xaa.c:62706:62726
// struct  C_Ul_Sf  {
//   char v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "C_Ul_Sf: layout" {
    var lv: c.C_Ul_Sf = undefined;
    try testing.expectSize(c.C_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "C_Ul_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Ul_Sf(.{ .v1 = 96, .v2 = 13786, .v3 = .{} }), outcome);
}
test "C_Ul_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Ul_Sf());
}
test "C_Ul_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Ul_Sf(), outcome);
}
test "C_Ul_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Ul_Sf(), .{ .v1 = 96, .v2 = 13786, .v3 = .{} });
}
pub export fn zig_assert_C_Ul_Sf(lv: c.C_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 96) err = 1;
    if (lv.v2 != 13786) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Ul_Sf() c.C_Ul_Sf {
    return .{ .v1 = 96, .v2 = 13786, .v3 = .{} };
}

// From CT_Snen_xaa.c:62731:62751
// struct  C_Us_Sf  {
//   char v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "C_Us_Sf: layout" {
    var lv: c.C_Us_Sf = undefined;
    try testing.expectSize(c.C_Us_Sf, 4);
    try testing.expectAlign(c.C_Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "C_Us_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Us_Sf(.{ .v1 = 50, .v2 = 27235, .v3 = .{} }), outcome);
}
test "C_Us_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Us_Sf());
}
test "C_Us_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Us_Sf(), outcome);
}
test "C_Us_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Us_Sf(), .{ .v1 = 50, .v2 = 27235, .v3 = .{} });
}
pub export fn zig_assert_C_Us_Sf(lv: c.C_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 50) err = 1;
    if (lv.v2 != 27235) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Us_Sf() c.C_Us_Sf {
    return .{ .v1 = 50, .v2 = 27235, .v3 = .{} };
}

// From CT_Snen_xaa.c:62756:62776
// struct  C_Vp_Sf  {
//   char v1;
//   void *v2;
//   struct empty v3;
// };

test "C_Vp_Sf: layout" {
    var lv: c.C_Vp_Sf = undefined;
    try testing.expectSize(c.C_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "C_Vp_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_C_Vp_Sf(.{ .v1 = 61, .v2 = null, .v3 = .{} }), outcome);
}
test "C_Vp_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C_Vp_Sf());
}
test "C_Vp_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_C_Vp_Sf(), outcome);
}
test "C_Vp_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C_Vp_Sf(), .{ .v1 = 61, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_C_Vp_Sf(lv: c.C_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 61) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C_Vp_Sf() c.C_Vp_Sf {
    return .{ .v1 = 61, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:63505:63525
// struct  D_C_Sf  {
//   double v1;
//   char v2;
//   struct empty v3;
// };

test "D_C_Sf: layout" {
    var lv: c.D_C_Sf = undefined;
    try testing.expectSize(c.D_C_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "D_C_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_C_Sf(.{ .v1 = 0.875, .v2 = 18, .v3 = .{} }), outcome);
}
test "D_C_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_C_Sf());
}
test "D_C_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_C_Sf(), outcome);
}
test "D_C_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_C_Sf(), .{ .v1 = 0.875, .v2 = 18, .v3 = .{} });
}
pub export fn zig_assert_D_C_Sf(lv: c.D_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 18) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_C_Sf() c.D_C_Sf {
    return .{ .v1 = 0.875, .v2 = 18, .v3 = .{} };
}

// From CT_Snen_xaa.c:63530:63550
// struct  D_D_Sf  {
//   double v1;
//   double v2;
//   struct empty v3;
// };

test "D_D_Sf: layout" {
    var lv: c.D_D_Sf = undefined;
    try testing.expectSize(c.D_D_Sf, 16);
    try testing.expectAlign(c.D_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_D_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_D_Sf(.{ .v1 = -0.25, .v2 = 0.875, .v3 = .{} }), outcome);
}
test "D_D_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_D_Sf());
}
test "D_D_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_D_Sf(), outcome);
}
test "D_D_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_D_Sf(), .{ .v1 = -0.25, .v2 = 0.875, .v3 = .{} });
}
pub export fn zig_assert_D_D_Sf(lv: c.D_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_D_Sf() c.D_D_Sf {
    return .{ .v1 = -0.25, .v2 = 0.875, .v3 = .{} };
}

// From CT_Snen_xaa.c:63555:63575
// struct  D_F_Sf  {
//   double v1;
//   float v2;
//   struct empty v3;
// };

test "D_F_Sf: layout" {
    var lv: c.D_F_Sf = undefined;
    try testing.expectSize(c.D_F_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_F_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_F_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_F_Sf(.{ .v1 = -2.125, .v2 = 0.875, .v3 = .{} }), outcome);
}
test "D_F_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_F_Sf());
}
test "D_F_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_F_Sf(), outcome);
}
test "D_F_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_F_Sf(), .{ .v1 = -2.125, .v2 = 0.875, .v3 = .{} });
}
pub export fn zig_assert_D_F_Sf(lv: c.D_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_F_Sf() c.D_F_Sf {
    return .{ .v1 = -2.125, .v2 = 0.875, .v3 = .{} };
}

// From CT_Snen_xaa.c:63580:63600
// struct  D_I_Sf  {
//   double v1;
//   int v2;
//   struct empty v3;
// };

test "D_I_Sf: layout" {
    var lv: c.D_I_Sf = undefined;
    try testing.expectSize(c.D_I_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_I_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_I_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_I_Sf(.{ .v1 = 0.875, .v2 = 4925, .v3 = .{} }), outcome);
}
test "D_I_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_I_Sf());
}
test "D_I_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_I_Sf(), outcome);
}
test "D_I_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_I_Sf(), .{ .v1 = 0.875, .v2 = 4925, .v3 = .{} });
}
pub export fn zig_assert_D_I_Sf(lv: c.D_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v2 != 4925) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_I_Sf() c.D_I_Sf {
    return .{ .v1 = 0.875, .v2 = 4925, .v3 = .{} };
}

// From CT_Snen_xaa.c:63605:63625
// struct  D_Ip_Sf  {
//   double v1;
//   int *v2;
//   struct empty v3;
// };

test "D_Ip_Sf: layout" {
    var lv: c.D_Ip_Sf = undefined;
    try testing.expectSize(c.D_Ip_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Ip_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Ip_Sf(.{ .v1 = 1.0, .v2 = null, .v3 = .{} }), outcome);
}
test "D_Ip_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Ip_Sf());
}
test "D_Ip_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Ip_Sf(), outcome);
}
test "D_Ip_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Ip_Sf(), .{ .v1 = 1.0, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_D_Ip_Sf(lv: c.D_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ip_Sf() c.D_Ip_Sf {
    return .{ .v1 = 1.0, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:63630:63650
// struct  D_L_Sf  {
//   double v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "D_L_Sf: layout" {
    var lv: c.D_L_Sf = undefined;
    try testing.expectSize(c.D_L_Sf, 16);
    try testing.expectAlign(c.D_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_L_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_L_Sf(.{ .v1 = 7.0, .v2 = 17716, .v3 = .{} }), outcome);
}
test "D_L_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_L_Sf());
}
test "D_L_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_L_Sf(), outcome);
}
test "D_L_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_L_Sf(), .{ .v1 = 7.0, .v2 = 17716, .v3 = .{} });
}
pub export fn zig_assert_D_L_Sf(lv: c.D_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 17716) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_L_Sf() c.D_L_Sf {
    return .{ .v1 = 7.0, .v2 = 17716, .v3 = .{} };
}

// From CT_Snen_xaa.c:63655:63675
// struct  D_S_Sf  {
//   double v1;
//   short v2;
//   struct empty v3;
// };

test "D_S_Sf: layout" {
    var lv: c.D_S_Sf = undefined;
    try testing.expectSize(c.D_S_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_S_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_S_Sf(.{ .v1 = -0.25, .v2 = 24740, .v3 = .{} }), outcome);
}
test "D_S_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_S_Sf());
}
test "D_S_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_S_Sf(), outcome);
}
test "D_S_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_S_Sf(), .{ .v1 = -0.25, .v2 = 24740, .v3 = .{} });
}
pub export fn zig_assert_D_S_Sf(lv: c.D_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 24740) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_S_Sf() c.D_S_Sf {
    return .{ .v1 = -0.25, .v2 = 24740, .v3 = .{} };
}

// From CT_Snen_xaa.c:63680:63698
// struct  D_Sf  {
//   double v1;
//   struct empty v2;
// };

test "D_Sf: layout" {
    var lv: c.D_Sf = undefined;
    try testing.expectSize(c.D_Sf, 8);
    try testing.expectAlign(c.D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "D_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf(.{ .v1 = 0.875, .v2 = .{} }), outcome);
}
test "D_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf());
}
test "D_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf(), outcome);
}
test "D_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf(), .{ .v1 = 0.875, .v2 = .{} });
}
pub export fn zig_assert_D_Sf(lv: c.D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf() c.D_Sf {
    return .{ .v1 = 0.875, .v2 = .{} };
}

// From CT_Snen_xaa.c:64427:64447
// struct  D_Sf_C  {
//   double v1;
//   struct empty v2;
//   char v3;
// };

test "D_Sf_C: layout" {
    var lv: c.D_Sf_C = undefined;
    try testing.expectSize(c.D_Sf_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_C(.{ .v1 = -2.125, .v2 = .{}, .v3 = 92 }), outcome);
}
test "D_Sf_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_C());
}
test "D_Sf_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_C(), outcome);
}
test "D_Sf_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_C(), .{ .v1 = -2.125, .v2 = .{}, .v3 = 92 });
}
pub export fn zig_assert_D_Sf_C(lv: c.D_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v3 != 92) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_C() c.D_Sf_C {
    return .{ .v1 = -2.125, .v2 = .{}, .v3 = 92 };
}

// From CT_Snen_xaa.c:64452:64472
// struct  D_Sf_D  {
//   double v1;
//   struct empty v2;
//   double v3;
// };

test "D_Sf_D: layout" {
    var lv: c.D_Sf_D = undefined;
    try testing.expectSize(c.D_Sf_D, 16);
    try testing.expectAlign(c.D_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_D(.{ .v1 = -2.125, .v2 = .{}, .v3 = 0.875 }), outcome);
}
test "D_Sf_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_D());
}
test "D_Sf_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_D(), outcome);
}
test "D_Sf_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_D(), .{ .v1 = -2.125, .v2 = .{}, .v3 = 0.875 });
}
pub export fn zig_assert_D_Sf_D(lv: c.D_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_D() c.D_Sf_D {
    return .{ .v1 = -2.125, .v2 = .{}, .v3 = 0.875 };
}

// From CT_Snen_xaa.c:64477:64497
// struct  D_Sf_F  {
//   double v1;
//   struct empty v2;
//   float v3;
// };

test "D_Sf_F: layout" {
    var lv: c.D_Sf_F = undefined;
    try testing.expectSize(c.D_Sf_F, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_F(.{ .v1 = 7.0, .v2 = .{}, .v3 = -2.125 }), outcome);
}
test "D_Sf_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_F());
}
test "D_Sf_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_F(), outcome);
}
test "D_Sf_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_F(), .{ .v1 = 7.0, .v2 = .{}, .v3 = -2.125 });
}
pub export fn zig_assert_D_Sf_F(lv: c.D_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_F() c.D_Sf_F {
    return .{ .v1 = 7.0, .v2 = .{}, .v3 = -2.125 };
}

// From CT_Snen_xaa.c:64502:64522
// struct  D_Sf_I  {
//   double v1;
//   struct empty v2;
//   int v3;
// };

test "D_Sf_I: layout" {
    var lv: c.D_Sf_I = undefined;
    try testing.expectSize(c.D_Sf_I, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_I(.{ .v1 = -0.25, .v2 = .{}, .v3 = 23530 }), outcome);
}
test "D_Sf_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_I());
}
test "D_Sf_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_I(), outcome);
}
test "D_Sf_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_I(), .{ .v1 = -0.25, .v2 = .{}, .v3 = 23530 });
}
pub export fn zig_assert_D_Sf_I(lv: c.D_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v3 != 23530) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_I() c.D_Sf_I {
    return .{ .v1 = -0.25, .v2 = .{}, .v3 = 23530 };
}

// From CT_Snen_xaa.c:64527:64547
// struct  D_Sf_Ip  {
//   double v1;
//   struct empty v2;
//   int *v3;
// };

test "D_Sf_Ip: layout" {
    var lv: c.D_Sf_Ip = undefined;
    try testing.expectSize(c.D_Sf_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_Ip(.{ .v1 = 0.5, .v2 = .{}, .v3 = null }), outcome);
}
test "D_Sf_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_Ip());
}
test "D_Sf_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_Ip(), outcome);
}
test "D_Sf_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_Ip(), .{ .v1 = 0.5, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_D_Sf_Ip(lv: c.D_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_Ip() c.D_Sf_Ip {
    return .{ .v1 = 0.5, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:64552:64572
// struct  D_Sf_L  {
//   double v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "D_Sf_L: layout" {
    var lv: c.D_Sf_L = undefined;
    try testing.expectSize(c.D_Sf_L, 16);
    try testing.expectAlign(c.D_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_L(.{ .v1 = 0.875, .v2 = .{}, .v3 = 32736 }), outcome);
}
test "D_Sf_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_L());
}
test "D_Sf_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_L(), outcome);
}
test "D_Sf_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_L(), .{ .v1 = 0.875, .v2 = .{}, .v3 = 32736 });
}
pub export fn zig_assert_D_Sf_L(lv: c.D_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v3 != 32736) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_L() c.D_Sf_L {
    return .{ .v1 = 0.875, .v2 = .{}, .v3 = 32736 };
}

// From CT_Snen_xaa.c:64577:64597
// struct  D_Sf_S  {
//   double v1;
//   struct empty v2;
//   short v3;
// };

test "D_Sf_S: layout" {
    var lv: c.D_Sf_S = undefined;
    try testing.expectSize(c.D_Sf_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_S(.{ .v1 = -0.25, .v2 = .{}, .v3 = 4916 }), outcome);
}
test "D_Sf_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_S());
}
test "D_Sf_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_S(), outcome);
}
test "D_Sf_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_S(), .{ .v1 = -0.25, .v2 = .{}, .v3 = 4916 });
}
pub export fn zig_assert_D_Sf_S(lv: c.D_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v3 != 4916) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_S() c.D_Sf_S {
    return .{ .v1 = -0.25, .v2 = .{}, .v3 = 4916 };
}

// From CT_Snen_xaa.c:64602:64622
// struct  D_Sf_Sf  {
//   double v1;
//   struct empty v2;
//   struct empty v3;
// };

test "D_Sf_Sf: layout" {
    var lv: c.D_Sf_Sf = undefined;
    try testing.expectSize(c.D_Sf_Sf, 8);
    try testing.expectAlign(c.D_Sf_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_Sf(.{ .v1 = 4.5, .v2 = .{}, .v3 = .{} }), outcome);
}
test "D_Sf_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_Sf());
}
test "D_Sf_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_Sf(), outcome);
}
test "D_Sf_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_Sf(), .{ .v1 = 4.5, .v2 = .{}, .v3 = .{} });
}
pub export fn zig_assert_D_Sf_Sf(lv: c.D_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_Sf() c.D_Sf_Sf {
    return .{ .v1 = 4.5, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xaa.c:64627:64647
// struct  D_Sf_Uc  {
//   double v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "D_Sf_Uc: layout" {
    var lv: c.D_Sf_Uc = undefined;
    try testing.expectSize(c.D_Sf_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_Uc(.{ .v1 = 0.875, .v2 = .{}, .v3 = 8 }), outcome);
}
test "D_Sf_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_Uc());
}
test "D_Sf_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_Uc(), outcome);
}
test "D_Sf_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_Uc(), .{ .v1 = 0.875, .v2 = .{}, .v3 = 8 });
}
pub export fn zig_assert_D_Sf_Uc(lv: c.D_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v3 != 8) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_Uc() c.D_Sf_Uc {
    return .{ .v1 = 0.875, .v2 = .{}, .v3 = 8 };
}

// From CT_Snen_xaa.c:64652:64672
// struct  D_Sf_Ui  {
//   double v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "D_Sf_Ui: layout" {
    var lv: c.D_Sf_Ui = undefined;
    try testing.expectSize(c.D_Sf_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_Ui(.{ .v1 = 0.875, .v2 = .{}, .v3 = 8958 }), outcome);
}
test "D_Sf_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_Ui());
}
test "D_Sf_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_Ui(), outcome);
}
test "D_Sf_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_Ui(), .{ .v1 = 0.875, .v2 = .{}, .v3 = 8958 });
}
pub export fn zig_assert_D_Sf_Ui(lv: c.D_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v3 != 8958) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_Ui() c.D_Sf_Ui {
    return .{ .v1 = 0.875, .v2 = .{}, .v3 = 8958 };
}

// From CT_Snen_xaa.c:64677:64697
// struct  D_Sf_Ul  {
//   double v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "D_Sf_Ul: layout" {
    var lv: c.D_Sf_Ul = undefined;
    try testing.expectSize(c.D_Sf_Ul, 16);
    try testing.expectAlign(c.D_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_Ul(.{ .v1 = 0.5, .v2 = .{}, .v3 = 13699 }), outcome);
}
test "D_Sf_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_Ul());
}
test "D_Sf_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_Ul(), outcome);
}
test "D_Sf_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_Ul(), .{ .v1 = 0.5, .v2 = .{}, .v3 = 13699 });
}
pub export fn zig_assert_D_Sf_Ul(lv: c.D_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v3 != 13699) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_Ul() c.D_Sf_Ul {
    return .{ .v1 = 0.5, .v2 = .{}, .v3 = 13699 };
}

// From CT_Snen_xaa.c:64702:64722
// struct  D_Sf_Us  {
//   double v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "D_Sf_Us: layout" {
    var lv: c.D_Sf_Us = undefined;
    try testing.expectSize(c.D_Sf_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_Us(.{ .v1 = 4.5, .v2 = .{}, .v3 = 28590 }), outcome);
}
test "D_Sf_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_Us());
}
test "D_Sf_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_Us(), outcome);
}
test "D_Sf_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_Us(), .{ .v1 = 4.5, .v2 = .{}, .v3 = 28590 });
}
pub export fn zig_assert_D_Sf_Us(lv: c.D_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v3 != 28590) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_Us() c.D_Sf_Us {
    return .{ .v1 = 4.5, .v2 = .{}, .v3 = 28590 };
}

// From CT_Snen_xaa.c:64727:64747
// struct  D_Sf_Vp  {
//   double v1;
//   struct empty v2;
//   void *v3;
// };

test "D_Sf_Vp: layout" {
    var lv: c.D_Sf_Vp = undefined;
    try testing.expectSize(c.D_Sf_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "D_Sf_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Sf_Vp(.{ .v1 = -2.125, .v2 = .{}, .v3 = null }), outcome);
}
test "D_Sf_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Sf_Vp());
}
test "D_Sf_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Sf_Vp(), outcome);
}
test "D_Sf_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Sf_Vp(), .{ .v1 = -2.125, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_D_Sf_Vp(lv: c.D_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Sf_Vp() c.D_Sf_Vp {
    return .{ .v1 = -2.125, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:64752:64772
// struct  D_Uc_Sf  {
//   double v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "D_Uc_Sf: layout" {
    var lv: c.D_Uc_Sf = undefined;
    try testing.expectSize(c.D_Uc_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "D_Uc_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Uc_Sf(.{ .v1 = 1.0, .v2 = 126, .v3 = .{} }), outcome);
}
test "D_Uc_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Uc_Sf());
}
test "D_Uc_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Uc_Sf(), outcome);
}
test "D_Uc_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Uc_Sf(), .{ .v1 = 1.0, .v2 = 126, .v3 = .{} });
}
pub export fn zig_assert_D_Uc_Sf(lv: c.D_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 126) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Uc_Sf() c.D_Uc_Sf {
    return .{ .v1 = 1.0, .v2 = 126, .v3 = .{} };
}

// From CT_Snen_xaa.c:64777:64797
// struct  D_Ui_Sf  {
//   double v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "D_Ui_Sf: layout" {
    var lv: c.D_Ui_Sf = undefined;
    try testing.expectSize(c.D_Ui_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Ui_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "D_Ui_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Ui_Sf(.{ .v1 = -2.125, .v2 = 15083, .v3 = .{} }), outcome);
}
test "D_Ui_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Ui_Sf());
}
test "D_Ui_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Ui_Sf(), outcome);
}
test "D_Ui_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Ui_Sf(), .{ .v1 = -2.125, .v2 = 15083, .v3 = .{} });
}
pub export fn zig_assert_D_Ui_Sf(lv: c.D_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 15083) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ui_Sf() c.D_Ui_Sf {
    return .{ .v1 = -2.125, .v2 = 15083, .v3 = .{} };
}

// From CT_Snen_xaa.c:64802:64822
// struct  D_Ul_Sf  {
//   double v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "D_Ul_Sf: layout" {
    var lv: c.D_Ul_Sf = undefined;
    try testing.expectSize(c.D_Ul_Sf, 16);
    try testing.expectAlign(c.D_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "D_Ul_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Ul_Sf(.{ .v1 = 1.0, .v2 = 22362, .v3 = .{} }), outcome);
}
test "D_Ul_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Ul_Sf());
}
test "D_Ul_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Ul_Sf(), outcome);
}
test "D_Ul_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Ul_Sf(), .{ .v1 = 1.0, .v2 = 22362, .v3 = .{} });
}
pub export fn zig_assert_D_Ul_Sf(lv: c.D_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 22362) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Ul_Sf() c.D_Ul_Sf {
    return .{ .v1 = 1.0, .v2 = 22362, .v3 = .{} };
}

// From CT_Snen_xaa.c:64827:64847
// struct  D_Us_Sf  {
//   double v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "D_Us_Sf: layout" {
    var lv: c.D_Us_Sf = undefined;
    try testing.expectSize(c.D_Us_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "D_Us_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Us_Sf(.{ .v1 = 7.0, .v2 = 29846, .v3 = .{} }), outcome);
}
test "D_Us_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Us_Sf());
}
test "D_Us_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Us_Sf(), outcome);
}
test "D_Us_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Us_Sf(), .{ .v1 = 7.0, .v2 = 29846, .v3 = .{} });
}
pub export fn zig_assert_D_Us_Sf(lv: c.D_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 29846) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Us_Sf() c.D_Us_Sf {
    return .{ .v1 = 7.0, .v2 = 29846, .v3 = .{} };
}

// From CT_Snen_xaa.c:64852:64872
// struct  D_Vp_Sf  {
//   double v1;
//   void *v2;
//   struct empty v3;
// };

test "D_Vp_Sf: layout" {
    var lv: c.D_Vp_Sf = undefined;
    try testing.expectSize(c.D_Vp_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "D_Vp_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_D_Vp_Sf(.{ .v1 = 7.0, .v2 = null, .v3 = .{} }), outcome);
}
test "D_Vp_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_D_Vp_Sf());
}
test "D_Vp_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_D_Vp_Sf(), outcome);
}
test "D_Vp_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_D_Vp_Sf(), .{ .v1 = 7.0, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_D_Vp_Sf(lv: c.D_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_D_Vp_Sf() c.D_Vp_Sf {
    return .{ .v1 = 7.0, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:65601:65621
// struct  F_C_Sf  {
//   float v1;
//   char v2;
//   struct empty v3;
// };

test "F_C_Sf: layout" {
    var lv: c.F_C_Sf = undefined;
    try testing.expectSize(c.F_C_Sf, 8);
    try testing.expectAlign(c.F_C_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "F_C_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_C_Sf(.{ .v1 = 0.5, .v2 = 36, .v3 = .{} }), outcome);
}
test "F_C_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_C_Sf());
}
test "F_C_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_C_Sf(), outcome);
}
test "F_C_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_C_Sf(), .{ .v1 = 0.5, .v2 = 36, .v3 = .{} });
}
pub export fn zig_assert_F_C_Sf(lv: c.F_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 36) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_C_Sf() c.F_C_Sf {
    return .{ .v1 = 0.5, .v2 = 36, .v3 = .{} };
}

// From CT_Snen_xaa.c:65626:65646
// struct  F_D_Sf  {
//   float v1;
//   double v2;
//   struct empty v3;
// };

test "F_D_Sf: layout" {
    var lv: c.F_D_Sf = undefined;
    try testing.expectSize(c.F_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.F_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_D_Sf(.{ .v1 = 1.0, .v2 = 4.5, .v3 = .{} }), outcome);
}
test "F_D_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_D_Sf());
}
test "F_D_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_D_Sf(), outcome);
}
test "F_D_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_D_Sf(), .{ .v1 = 1.0, .v2 = 4.5, .v3 = .{} });
}
pub export fn zig_assert_F_D_Sf(lv: c.F_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_D_Sf() c.F_D_Sf {
    return .{ .v1 = 1.0, .v2 = 4.5, .v3 = .{} };
}

// From CT_Snen_xaa.c:65651:65671
// struct  F_F_Sf  {
//   float v1;
//   float v2;
//   struct empty v3;
// };

test "F_F_Sf: layout" {
    var lv: c.F_F_Sf = undefined;
    try testing.expectSize(c.F_F_Sf, 8);
    try testing.expectAlign(c.F_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_F_Sf(.{ .v1 = -0.25, .v2 = 0.875, .v3 = .{} }), outcome);
}
test "F_F_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_F_Sf());
}
test "F_F_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_F_Sf(), outcome);
}
test "F_F_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_F_Sf(), .{ .v1 = -0.25, .v2 = 0.875, .v3 = .{} });
}
pub export fn zig_assert_F_F_Sf(lv: c.F_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_F_Sf() c.F_F_Sf {
    return .{ .v1 = -0.25, .v2 = 0.875, .v3 = .{} };
}

// From CT_Snen_xaa.c:65676:65696
// struct  F_I_Sf  {
//   float v1;
//   int v2;
//   struct empty v3;
// };

test "F_I_Sf: layout" {
    var lv: c.F_I_Sf = undefined;
    try testing.expectSize(c.F_I_Sf, 8);
    try testing.expectAlign(c.F_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_I_Sf(.{ .v1 = 7.0, .v2 = 23929, .v3 = .{} }), outcome);
}
test "F_I_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_I_Sf());
}
test "F_I_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_I_Sf(), outcome);
}
test "F_I_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_I_Sf(), .{ .v1 = 7.0, .v2 = 23929, .v3 = .{} });
}
pub export fn zig_assert_F_I_Sf(lv: c.F_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v2 != 23929) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_I_Sf() c.F_I_Sf {
    return .{ .v1 = 7.0, .v2 = 23929, .v3 = .{} };
}

// From CT_Snen_xaa.c:65701:65721
// struct  F_Ip_Sf  {
//   float v1;
//   int *v2;
//   struct empty v3;
// };

test "F_Ip_Sf: layout" {
    var lv: c.F_Ip_Sf = undefined;
    try testing.expectSize(c.F_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Ip_Sf(.{ .v1 = -2.125, .v2 = null, .v3 = .{} }), outcome);
}
test "F_Ip_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Ip_Sf());
}
test "F_Ip_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Ip_Sf(), outcome);
}
test "F_Ip_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Ip_Sf(), .{ .v1 = -2.125, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_F_Ip_Sf(lv: c.F_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ip_Sf() c.F_Ip_Sf {
    return .{ .v1 = -2.125, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:65726:65746
// struct  F_L_Sf  {
//   float v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "F_L_Sf: layout" {
    var lv: c.F_L_Sf = undefined;
    try testing.expectSize(c.F_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.F_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_L_Sf(.{ .v1 = 0.5, .v2 = 32338, .v3 = .{} }), outcome);
}
test "F_L_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_L_Sf());
}
test "F_L_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_L_Sf(), outcome);
}
test "F_L_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_L_Sf(), .{ .v1 = 0.5, .v2 = 32338, .v3 = .{} });
}
pub export fn zig_assert_F_L_Sf(lv: c.F_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 32338) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_L_Sf() c.F_L_Sf {
    return .{ .v1 = 0.5, .v2 = 32338, .v3 = .{} };
}

// From CT_Snen_xaa.c:65751:65771
// struct  F_S_Sf  {
//   float v1;
//   short v2;
//   struct empty v3;
// };

test "F_S_Sf: layout" {
    var lv: c.F_S_Sf = undefined;
    try testing.expectSize(c.F_S_Sf, 8);
    try testing.expectAlign(c.F_S_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_S_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_S_Sf(.{ .v1 = 1.0, .v2 = 20788, .v3 = .{} }), outcome);
}
test "F_S_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_S_Sf());
}
test "F_S_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_S_Sf(), outcome);
}
test "F_S_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_S_Sf(), .{ .v1 = 1.0, .v2 = 20788, .v3 = .{} });
}
pub export fn zig_assert_F_S_Sf(lv: c.F_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v2 != 20788) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_S_Sf() c.F_S_Sf {
    return .{ .v1 = 1.0, .v2 = 20788, .v3 = .{} };
}

// From CT_Snen_xaa.c:65776:65794
// struct  F_Sf  {
//   float v1;
//   struct empty v2;
// };

test "F_Sf: layout" {
    var lv: c.F_Sf = undefined;
    try testing.expectSize(c.F_Sf, 4);
    try testing.expectAlign(c.F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf(.{ .v1 = -2.125, .v2 = .{} }), outcome);
}
test "F_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf());
}
test "F_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf(), outcome);
}
test "F_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf(), .{ .v1 = -2.125, .v2 = .{} });
}
pub export fn zig_assert_F_Sf(lv: c.F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf() c.F_Sf {
    return .{ .v1 = -2.125, .v2 = .{} };
}

// From CT_Snen_xaa.c:66523:66543
// struct  F_Sf_C  {
//   float v1;
//   struct empty v2;
//   char v3;
// };

test "F_Sf_C: layout" {
    var lv: c.F_Sf_C = undefined;
    try testing.expectSize(c.F_Sf_C, 8);
    try testing.expectAlign(c.F_Sf_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "F_Sf_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_C(.{ .v1 = 4.5, .v2 = .{}, .v3 = 19 }), outcome);
}
test "F_Sf_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_C());
}
test "F_Sf_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_C(), outcome);
}
test "F_Sf_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_C(), .{ .v1 = 4.5, .v2 = .{}, .v3 = 19 });
}
pub export fn zig_assert_F_Sf_C(lv: c.F_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v3 != 19) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_C() c.F_Sf_C {
    return .{ .v1 = 4.5, .v2 = .{}, .v3 = 19 };
}

// From CT_Snen_xaa.c:66548:66568
// struct  F_Sf_D  {
//   float v1;
//   struct empty v2;
//   double v3;
// };

test "F_Sf_D: layout" {
    var lv: c.F_Sf_D = undefined;
    try testing.expectSize(c.F_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "F_Sf_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_D(.{ .v1 = 0.875, .v2 = .{}, .v3 = 0.5 }), outcome);
}
test "F_Sf_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_D());
}
test "F_Sf_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_D(), outcome);
}
test "F_Sf_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_D(), .{ .v1 = 0.875, .v2 = .{}, .v3 = 0.5 });
}
pub export fn zig_assert_F_Sf_D(lv: c.F_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_D() c.F_Sf_D {
    return .{ .v1 = 0.875, .v2 = .{}, .v3 = 0.5 };
}

// From CT_Snen_xaa.c:66573:66593
// struct  F_Sf_F  {
//   float v1;
//   struct empty v2;
//   float v3;
// };

test "F_Sf_F: layout" {
    var lv: c.F_Sf_F = undefined;
    try testing.expectSize(c.F_Sf_F, 8);
    try testing.expectAlign(c.F_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "F_Sf_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_F(.{ .v1 = 1.0, .v2 = .{}, .v3 = 0.875 }), outcome);
}
test "F_Sf_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_F());
}
test "F_Sf_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_F(), outcome);
}
test "F_Sf_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_F(), .{ .v1 = 1.0, .v2 = .{}, .v3 = 0.875 });
}
pub export fn zig_assert_F_Sf_F(lv: c.F_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_F() c.F_Sf_F {
    return .{ .v1 = 1.0, .v2 = .{}, .v3 = 0.875 };
}

// From CT_Snen_xaa.c:66598:66618
// struct  F_Sf_I  {
//   float v1;
//   struct empty v2;
//   int v3;
// };

test "F_Sf_I: layout" {
    var lv: c.F_Sf_I = undefined;
    try testing.expectSize(c.F_Sf_I, 8);
    try testing.expectAlign(c.F_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "F_Sf_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_I(.{ .v1 = 0.875, .v2 = .{}, .v3 = 26364 }), outcome);
}
test "F_Sf_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_I());
}
test "F_Sf_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_I(), outcome);
}
test "F_Sf_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_I(), .{ .v1 = 0.875, .v2 = .{}, .v3 = 26364 });
}
pub export fn zig_assert_F_Sf_I(lv: c.F_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v3 != 26364) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_I() c.F_Sf_I {
    return .{ .v1 = 0.875, .v2 = .{}, .v3 = 26364 };
}

// From CT_Snen_xaa.c:66623:66643
// struct  F_Sf_Ip  {
//   float v1;
//   struct empty v2;
//   int *v3;
// };

test "F_Sf_Ip: layout" {
    var lv: c.F_Sf_Ip = undefined;
    try testing.expectSize(c.F_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "F_Sf_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_Ip(.{ .v1 = -0.25, .v2 = .{}, .v3 = null }), outcome);
}
test "F_Sf_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_Ip());
}
test "F_Sf_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_Ip(), outcome);
}
test "F_Sf_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_Ip(), .{ .v1 = -0.25, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_F_Sf_Ip(lv: c.F_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != -0.25) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_Ip() c.F_Sf_Ip {
    return .{ .v1 = -0.25, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:66648:66668
// struct  F_Sf_L  {
//   float v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "F_Sf_L: layout" {
    var lv: c.F_Sf_L = undefined;
    try testing.expectSize(c.F_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "F_Sf_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_L(.{ .v1 = 7.0, .v2 = .{}, .v3 = 9072 }), outcome);
}
test "F_Sf_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_L());
}
test "F_Sf_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_L(), outcome);
}
test "F_Sf_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_L(), .{ .v1 = 7.0, .v2 = .{}, .v3 = 9072 });
}
pub export fn zig_assert_F_Sf_L(lv: c.F_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v3 != 9072) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_L() c.F_Sf_L {
    return .{ .v1 = 7.0, .v2 = .{}, .v3 = 9072 };
}

// From CT_Snen_xaa.c:66673:66693
// struct  F_Sf_S  {
//   float v1;
//   struct empty v2;
//   short v3;
// };

test "F_Sf_S: layout" {
    var lv: c.F_Sf_S = undefined;
    try testing.expectSize(c.F_Sf_S, 8);
    try testing.expectAlign(c.F_Sf_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "F_Sf_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_S(.{ .v1 = 7.0, .v2 = .{}, .v3 = 23630 }), outcome);
}
test "F_Sf_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_S());
}
test "F_Sf_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_S(), outcome);
}
test "F_Sf_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_S(), .{ .v1 = 7.0, .v2 = .{}, .v3 = 23630 });
}
pub export fn zig_assert_F_Sf_S(lv: c.F_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v3 != 23630) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_S() c.F_Sf_S {
    return .{ .v1 = 7.0, .v2 = .{}, .v3 = 23630 };
}

// From CT_Snen_xaa.c:66698:66718
// struct  F_Sf_Sf  {
//   float v1;
//   struct empty v2;
//   struct empty v3;
// };

test "F_Sf_Sf: layout" {
    var lv: c.F_Sf_Sf = undefined;
    try testing.expectSize(c.F_Sf_Sf, 4);
    try testing.expectAlign(c.F_Sf_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "F_Sf_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_Sf(.{ .v1 = -2.125, .v2 = .{}, .v3 = .{} }), outcome);
}
test "F_Sf_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_Sf());
}
test "F_Sf_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_Sf(), outcome);
}
test "F_Sf_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_Sf(), .{ .v1 = -2.125, .v2 = .{}, .v3 = .{} });
}
pub export fn zig_assert_F_Sf_Sf(lv: c.F_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_Sf() c.F_Sf_Sf {
    return .{ .v1 = -2.125, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xaa.c:66723:66743
// struct  F_Sf_Uc  {
//   float v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "F_Sf_Uc: layout" {
    var lv: c.F_Sf_Uc = undefined;
    try testing.expectSize(c.F_Sf_Uc, 8);
    try testing.expectAlign(c.F_Sf_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "F_Sf_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_Uc(.{ .v1 = 0.875, .v2 = .{}, .v3 = 30 }), outcome);
}
test "F_Sf_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_Uc());
}
test "F_Sf_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_Uc(), outcome);
}
test "F_Sf_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_Uc(), .{ .v1 = 0.875, .v2 = .{}, .v3 = 30 });
}
pub export fn zig_assert_F_Sf_Uc(lv: c.F_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.875) err = 1;
    if (lv.v3 != 30) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_Uc() c.F_Sf_Uc {
    return .{ .v1 = 0.875, .v2 = .{}, .v3 = 30 };
}

// From CT_Snen_xaa.c:66748:66768
// struct  F_Sf_Ui  {
//   float v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "F_Sf_Ui: layout" {
    var lv: c.F_Sf_Ui = undefined;
    try testing.expectSize(c.F_Sf_Ui, 8);
    try testing.expectAlign(c.F_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "F_Sf_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_Ui(.{ .v1 = 4.5, .v2 = .{}, .v3 = 20433 }), outcome);
}
test "F_Sf_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_Ui());
}
test "F_Sf_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_Ui(), outcome);
}
test "F_Sf_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_Ui(), .{ .v1 = 4.5, .v2 = .{}, .v3 = 20433 });
}
pub export fn zig_assert_F_Sf_Ui(lv: c.F_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v3 != 20433) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_Ui() c.F_Sf_Ui {
    return .{ .v1 = 4.5, .v2 = .{}, .v3 = 20433 };
}

// From CT_Snen_xaa.c:66773:66793
// struct  F_Sf_Ul  {
//   float v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "F_Sf_Ul: layout" {
    var lv: c.F_Sf_Ul = undefined;
    try testing.expectSize(c.F_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "F_Sf_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_Ul(.{ .v1 = 1.0, .v2 = .{}, .v3 = 30023 }), outcome);
}
test "F_Sf_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_Ul());
}
test "F_Sf_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_Ul(), outcome);
}
test "F_Sf_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_Ul(), .{ .v1 = 1.0, .v2 = .{}, .v3 = 30023 });
}
pub export fn zig_assert_F_Sf_Ul(lv: c.F_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1.0) err = 1;
    if (lv.v3 != 30023) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_Ul() c.F_Sf_Ul {
    return .{ .v1 = 1.0, .v2 = .{}, .v3 = 30023 };
}

// From CT_Snen_xaa.c:66798:66818
// struct  F_Sf_Us  {
//   float v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "F_Sf_Us: layout" {
    var lv: c.F_Sf_Us = undefined;
    try testing.expectSize(c.F_Sf_Us, 8);
    try testing.expectAlign(c.F_Sf_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "F_Sf_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_Us(.{ .v1 = 7.0, .v2 = .{}, .v3 = 31929 }), outcome);
}
test "F_Sf_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_Us());
}
test "F_Sf_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_Us(), outcome);
}
test "F_Sf_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_Us(), .{ .v1 = 7.0, .v2 = .{}, .v3 = 31929 });
}
pub export fn zig_assert_F_Sf_Us(lv: c.F_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7.0) err = 1;
    if (lv.v3 != 31929) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_Us() c.F_Sf_Us {
    return .{ .v1 = 7.0, .v2 = .{}, .v3 = 31929 };
}

// From CT_Snen_xaa.c:66823:66843
// struct  F_Sf_Vp  {
//   float v1;
//   struct empty v2;
//   void *v3;
// };

test "F_Sf_Vp: layout" {
    var lv: c.F_Sf_Vp = undefined;
    try testing.expectSize(c.F_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "F_Sf_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Sf_Vp(.{ .v1 = 4.5, .v2 = .{}, .v3 = null }), outcome);
}
test "F_Sf_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Sf_Vp());
}
test "F_Sf_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Sf_Vp(), outcome);
}
test "F_Sf_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Sf_Vp(), .{ .v1 = 4.5, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_F_Sf_Vp(lv: c.F_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Sf_Vp() c.F_Sf_Vp {
    return .{ .v1 = 4.5, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:66848:66868
// struct  F_Uc_Sf  {
//   float v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "F_Uc_Sf: layout" {
    var lv: c.F_Uc_Sf = undefined;
    try testing.expectSize(c.F_Uc_Sf, 8);
    try testing.expectAlign(c.F_Uc_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "F_Uc_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Uc_Sf(.{ .v1 = 4.5, .v2 = 46, .v3 = .{} }), outcome);
}
test "F_Uc_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Uc_Sf());
}
test "F_Uc_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Uc_Sf(), outcome);
}
test "F_Uc_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Uc_Sf(), .{ .v1 = 4.5, .v2 = 46, .v3 = .{} });
}
pub export fn zig_assert_F_Uc_Sf(lv: c.F_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4.5) err = 1;
    if (lv.v2 != 46) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Uc_Sf() c.F_Uc_Sf {
    return .{ .v1 = 4.5, .v2 = 46, .v3 = .{} };
}

// From CT_Snen_xaa.c:66873:66893
// struct  F_Ui_Sf  {
//   float v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "F_Ui_Sf: layout" {
    var lv: c.F_Ui_Sf = undefined;
    try testing.expectSize(c.F_Ui_Sf, 8);
    try testing.expectAlign(c.F_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Ui_Sf(.{ .v1 = -2.125, .v2 = 19552, .v3 = .{} }), outcome);
}
test "F_Ui_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Ui_Sf());
}
test "F_Ui_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Ui_Sf(), outcome);
}
test "F_Ui_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Ui_Sf(), .{ .v1 = -2.125, .v2 = 19552, .v3 = .{} });
}
pub export fn zig_assert_F_Ui_Sf(lv: c.F_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 19552) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ui_Sf() c.F_Ui_Sf {
    return .{ .v1 = -2.125, .v2 = 19552, .v3 = .{} };
}

// From CT_Snen_xaa.c:66898:66918
// struct  F_Ul_Sf  {
//   float v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "F_Ul_Sf: layout" {
    var lv: c.F_Ul_Sf = undefined;
    try testing.expectSize(c.F_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Ul_Sf(.{ .v1 = 0.5, .v2 = 14212, .v3 = .{} }), outcome);
}
test "F_Ul_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Ul_Sf());
}
test "F_Ul_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Ul_Sf(), outcome);
}
test "F_Ul_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Ul_Sf(), .{ .v1 = 0.5, .v2 = 14212, .v3 = .{} });
}
pub export fn zig_assert_F_Ul_Sf(lv: c.F_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != 14212) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Ul_Sf() c.F_Ul_Sf {
    return .{ .v1 = 0.5, .v2 = 14212, .v3 = .{} };
}

// From CT_Snen_xaa.c:66923:66943
// struct  F_Us_Sf  {
//   float v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "F_Us_Sf: layout" {
    var lv: c.F_Us_Sf = undefined;
    try testing.expectSize(c.F_Us_Sf, 8);
    try testing.expectAlign(c.F_Us_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Us_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Us_Sf(.{ .v1 = -2.125, .v2 = 11194, .v3 = .{} }), outcome);
}
test "F_Us_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Us_Sf());
}
test "F_Us_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Us_Sf(), outcome);
}
test "F_Us_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Us_Sf(), .{ .v1 = -2.125, .v2 = 11194, .v3 = .{} });
}
pub export fn zig_assert_F_Us_Sf(lv: c.F_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != -2.125) err = 1;
    if (lv.v2 != 11194) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Us_Sf() c.F_Us_Sf {
    return .{ .v1 = -2.125, .v2 = 11194, .v3 = .{} };
}

// From CT_Snen_xaa.c:66948:66968
// struct  F_Vp_Sf  {
//   float v1;
//   void *v2;
//   struct empty v3;
// };

test "F_Vp_Sf: layout" {
    var lv: c.F_Vp_Sf = undefined;
    try testing.expectSize(c.F_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_F_Vp_Sf(.{ .v1 = 0.5, .v2 = null, .v3 = .{} }), outcome);
}
test "F_Vp_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_F_Vp_Sf());
}
test "F_Vp_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_F_Vp_Sf(), outcome);
}
test "F_Vp_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_F_Vp_Sf(), .{ .v1 = 0.5, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_F_Vp_Sf(lv: c.F_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 0.5) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_F_Vp_Sf() c.F_Vp_Sf {
    return .{ .v1 = 0.5, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:67697:67717
// struct  I_C_Sf  {
//   int v1;
//   char v2;
//   struct empty v3;
// };

test "I_C_Sf: layout" {
    var lv: c.I_C_Sf = undefined;
    try testing.expectSize(c.I_C_Sf, 8);
    try testing.expectAlign(c.I_C_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "I_C_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_C_Sf(.{ .v1 = 29090, .v2 = 104, .v3 = .{} }), outcome);
}
test "I_C_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_C_Sf());
}
test "I_C_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_C_Sf(), outcome);
}
test "I_C_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_C_Sf(), .{ .v1 = 29090, .v2 = 104, .v3 = .{} });
}
pub export fn zig_assert_I_C_Sf(lv: c.I_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29090) err = 1;
    if (lv.v2 != 104) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_C_Sf() c.I_C_Sf {
    return .{ .v1 = 29090, .v2 = 104, .v3 = .{} };
}

// From CT_Snen_xaa.c:67722:67742
// struct  I_D_Sf  {
//   int v1;
//   double v2;
//   struct empty v3;
// };

test "I_D_Sf: layout" {
    var lv: c.I_D_Sf = undefined;
    try testing.expectSize(c.I_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.I_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_D_Sf(.{ .v1 = 10469, .v2 = 0.875, .v3 = .{} }), outcome);
}
test "I_D_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_D_Sf());
}
test "I_D_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_D_Sf(), outcome);
}
test "I_D_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_D_Sf(), .{ .v1 = 10469, .v2 = 0.875, .v3 = .{} });
}
pub export fn zig_assert_I_D_Sf(lv: c.I_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10469) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_D_Sf() c.I_D_Sf {
    return .{ .v1 = 10469, .v2 = 0.875, .v3 = .{} };
}

// From CT_Snen_xaa.c:67747:67767
// struct  I_F_Sf  {
//   int v1;
//   float v2;
//   struct empty v3;
// };

test "I_F_Sf: layout" {
    var lv: c.I_F_Sf = undefined;
    try testing.expectSize(c.I_F_Sf, 8);
    try testing.expectAlign(c.I_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_F_Sf(.{ .v1 = 2480, .v2 = 1.0, .v3 = .{} }), outcome);
}
test "I_F_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_F_Sf());
}
test "I_F_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_F_Sf(), outcome);
}
test "I_F_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_F_Sf(), .{ .v1 = 2480, .v2 = 1.0, .v3 = .{} });
}
pub export fn zig_assert_I_F_Sf(lv: c.I_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2480) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_F_Sf() c.I_F_Sf {
    return .{ .v1 = 2480, .v2 = 1.0, .v3 = .{} };
}

// From CT_Snen_xaa.c:67772:67792
// struct  I_I_Sf  {
//   int v1;
//   int v2;
//   struct empty v3;
// };

test "I_I_Sf: layout" {
    var lv: c.I_I_Sf = undefined;
    try testing.expectSize(c.I_I_Sf, 8);
    try testing.expectAlign(c.I_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_I_Sf(.{ .v1 = 10439, .v2 = 25119, .v3 = .{} }), outcome);
}
test "I_I_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_I_Sf());
}
test "I_I_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_I_Sf(), outcome);
}
test "I_I_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_I_Sf(), .{ .v1 = 10439, .v2 = 25119, .v3 = .{} });
}
pub export fn zig_assert_I_I_Sf(lv: c.I_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10439) err = 1;
    if (lv.v2 != 25119) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_I_Sf() c.I_I_Sf {
    return .{ .v1 = 10439, .v2 = 25119, .v3 = .{} };
}

// From CT_Snen_xaa.c:67797:67817
// struct  I_Ip_Sf  {
//   int v1;
//   int *v2;
//   struct empty v3;
// };

test "I_Ip_Sf: layout" {
    var lv: c.I_Ip_Sf = undefined;
    try testing.expectSize(c.I_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Ip_Sf(.{ .v1 = 21252, .v2 = null, .v3 = .{} }), outcome);
}
test "I_Ip_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Ip_Sf());
}
test "I_Ip_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Ip_Sf(), outcome);
}
test "I_Ip_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Ip_Sf(), .{ .v1 = 21252, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_I_Ip_Sf(lv: c.I_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21252) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ip_Sf() c.I_Ip_Sf {
    return .{ .v1 = 21252, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:67822:67842
// struct  I_L_Sf  {
//   int v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "I_L_Sf: layout" {
    var lv: c.I_L_Sf = undefined;
    try testing.expectSize(c.I_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.I_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_L_Sf(.{ .v1 = 8675, .v2 = 13071, .v3 = .{} }), outcome);
}
test "I_L_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_L_Sf());
}
test "I_L_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_L_Sf(), outcome);
}
test "I_L_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_L_Sf(), .{ .v1 = 8675, .v2 = 13071, .v3 = .{} });
}
pub export fn zig_assert_I_L_Sf(lv: c.I_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8675) err = 1;
    if (lv.v2 != 13071) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_L_Sf() c.I_L_Sf {
    return .{ .v1 = 8675, .v2 = 13071, .v3 = .{} };
}

// From CT_Snen_xaa.c:67847:67867
// struct  I_S_Sf  {
//   int v1;
//   short v2;
//   struct empty v3;
// };

test "I_S_Sf: layout" {
    var lv: c.I_S_Sf = undefined;
    try testing.expectSize(c.I_S_Sf, 8);
    try testing.expectAlign(c.I_S_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_S_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_S_Sf(.{ .v1 = 22337, .v2 = 14437, .v3 = .{} }), outcome);
}
test "I_S_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_S_Sf());
}
test "I_S_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_S_Sf(), outcome);
}
test "I_S_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_S_Sf(), .{ .v1 = 22337, .v2 = 14437, .v3 = .{} });
}
pub export fn zig_assert_I_S_Sf(lv: c.I_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22337) err = 1;
    if (lv.v2 != 14437) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_S_Sf() c.I_S_Sf {
    return .{ .v1 = 22337, .v2 = 14437, .v3 = .{} };
}

// From CT_Snen_xaa.c:67872:67890
// struct  I_Sf  {
//   int v1;
//   struct empty v2;
// };

test "I_Sf: layout" {
    var lv: c.I_Sf = undefined;
    try testing.expectSize(c.I_Sf, 4);
    try testing.expectAlign(c.I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf(.{ .v1 = 31933, .v2 = .{} }), outcome);
}
test "I_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf());
}
test "I_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf(), outcome);
}
test "I_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf(), .{ .v1 = 31933, .v2 = .{} });
}
pub export fn zig_assert_I_Sf(lv: c.I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31933) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf() c.I_Sf {
    return .{ .v1 = 31933, .v2 = .{} };
}

// From CT_Snen_xaa.c:68619:68639
// struct  I_Sf_C  {
//   int v1;
//   struct empty v2;
//   char v3;
// };

test "I_Sf_C: layout" {
    var lv: c.I_Sf_C = undefined;
    try testing.expectSize(c.I_Sf_C, 8);
    try testing.expectAlign(c.I_Sf_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "I_Sf_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_C(.{ .v1 = 2630, .v2 = .{}, .v3 = 95 }), outcome);
}
test "I_Sf_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_C());
}
test "I_Sf_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_C(), outcome);
}
test "I_Sf_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_C(), .{ .v1 = 2630, .v2 = .{}, .v3 = 95 });
}
pub export fn zig_assert_I_Sf_C(lv: c.I_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2630) err = 1;
    if (lv.v3 != 95) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_C() c.I_Sf_C {
    return .{ .v1 = 2630, .v2 = .{}, .v3 = 95 };
}

// From CT_Snen_xaa.c:68644:68664
// struct  I_Sf_D  {
//   int v1;
//   struct empty v2;
//   double v3;
// };

test "I_Sf_D: layout" {
    var lv: c.I_Sf_D = undefined;
    try testing.expectSize(c.I_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "I_Sf_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_D(.{ .v1 = 1334, .v2 = .{}, .v3 = 0.5 }), outcome);
}
test "I_Sf_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_D());
}
test "I_Sf_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_D(), outcome);
}
test "I_Sf_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_D(), .{ .v1 = 1334, .v2 = .{}, .v3 = 0.5 });
}
pub export fn zig_assert_I_Sf_D(lv: c.I_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1334) err = 1;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_D() c.I_Sf_D {
    return .{ .v1 = 1334, .v2 = .{}, .v3 = 0.5 };
}

// From CT_Snen_xaa.c:68669:68689
// struct  I_Sf_F  {
//   int v1;
//   struct empty v2;
//   float v3;
// };

test "I_Sf_F: layout" {
    var lv: c.I_Sf_F = undefined;
    try testing.expectSize(c.I_Sf_F, 8);
    try testing.expectAlign(c.I_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "I_Sf_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_F(.{ .v1 = 314, .v2 = .{}, .v3 = 1.0 }), outcome);
}
test "I_Sf_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_F());
}
test "I_Sf_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_F(), outcome);
}
test "I_Sf_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_F(), .{ .v1 = 314, .v2 = .{}, .v3 = 1.0 });
}
pub export fn zig_assert_I_Sf_F(lv: c.I_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 314) err = 1;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_F() c.I_Sf_F {
    return .{ .v1 = 314, .v2 = .{}, .v3 = 1.0 };
}

// From CT_Snen_xaa.c:68694:68714
// struct  I_Sf_I  {
//   int v1;
//   struct empty v2;
//   int v3;
// };

test "I_Sf_I: layout" {
    var lv: c.I_Sf_I = undefined;
    try testing.expectSize(c.I_Sf_I, 8);
    try testing.expectAlign(c.I_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "I_Sf_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_I(.{ .v1 = 808, .v2 = .{}, .v3 = 10326 }), outcome);
}
test "I_Sf_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_I());
}
test "I_Sf_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_I(), outcome);
}
test "I_Sf_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_I(), .{ .v1 = 808, .v2 = .{}, .v3 = 10326 });
}
pub export fn zig_assert_I_Sf_I(lv: c.I_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 808) err = 1;
    if (lv.v3 != 10326) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_I() c.I_Sf_I {
    return .{ .v1 = 808, .v2 = .{}, .v3 = 10326 };
}

// From CT_Snen_xaa.c:68719:68739
// struct  I_Sf_Ip  {
//   int v1;
//   struct empty v2;
//   int *v3;
// };

test "I_Sf_Ip: layout" {
    var lv: c.I_Sf_Ip = undefined;
    try testing.expectSize(c.I_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "I_Sf_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_Ip(.{ .v1 = 22309, .v2 = .{}, .v3 = null }), outcome);
}
test "I_Sf_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_Ip());
}
test "I_Sf_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_Ip(), outcome);
}
test "I_Sf_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_Ip(), .{ .v1 = 22309, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_I_Sf_Ip(lv: c.I_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22309) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_Ip() c.I_Sf_Ip {
    return .{ .v1 = 22309, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:68744:68764
// struct  I_Sf_L  {
//   int v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "I_Sf_L: layout" {
    var lv: c.I_Sf_L = undefined;
    try testing.expectSize(c.I_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "I_Sf_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_L(.{ .v1 = 24772, .v2 = .{}, .v3 = 30102 }), outcome);
}
test "I_Sf_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_L());
}
test "I_Sf_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_L(), outcome);
}
test "I_Sf_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_L(), .{ .v1 = 24772, .v2 = .{}, .v3 = 30102 });
}
pub export fn zig_assert_I_Sf_L(lv: c.I_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24772) err = 1;
    if (lv.v3 != 30102) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_L() c.I_Sf_L {
    return .{ .v1 = 24772, .v2 = .{}, .v3 = 30102 };
}

// From CT_Snen_xaa.c:68769:68789
// struct  I_Sf_S  {
//   int v1;
//   struct empty v2;
//   short v3;
// };

test "I_Sf_S: layout" {
    var lv: c.I_Sf_S = undefined;
    try testing.expectSize(c.I_Sf_S, 8);
    try testing.expectAlign(c.I_Sf_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "I_Sf_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_S(.{ .v1 = 1763, .v2 = .{}, .v3 = 2191 }), outcome);
}
test "I_Sf_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_S());
}
test "I_Sf_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_S(), outcome);
}
test "I_Sf_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_S(), .{ .v1 = 1763, .v2 = .{}, .v3 = 2191 });
}
pub export fn zig_assert_I_Sf_S(lv: c.I_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1763) err = 1;
    if (lv.v3 != 2191) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_S() c.I_Sf_S {
    return .{ .v1 = 1763, .v2 = .{}, .v3 = 2191 };
}

// From CT_Snen_xaa.c:68794:68814
// struct  I_Sf_Sf  {
//   int v1;
//   struct empty v2;
//   struct empty v3;
// };

test "I_Sf_Sf: layout" {
    var lv: c.I_Sf_Sf = undefined;
    try testing.expectSize(c.I_Sf_Sf, 4);
    try testing.expectAlign(c.I_Sf_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "I_Sf_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_Sf(.{ .v1 = 10536, .v2 = .{}, .v3 = .{} }), outcome);
}
test "I_Sf_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_Sf());
}
test "I_Sf_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_Sf(), outcome);
}
test "I_Sf_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_Sf(), .{ .v1 = 10536, .v2 = .{}, .v3 = .{} });
}
pub export fn zig_assert_I_Sf_Sf(lv: c.I_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10536) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_Sf() c.I_Sf_Sf {
    return .{ .v1 = 10536, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xaa.c:68819:68839
// struct  I_Sf_Uc  {
//   int v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "I_Sf_Uc: layout" {
    var lv: c.I_Sf_Uc = undefined;
    try testing.expectSize(c.I_Sf_Uc, 8);
    try testing.expectAlign(c.I_Sf_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "I_Sf_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_Uc(.{ .v1 = 4160, .v2 = .{}, .v3 = 45 }), outcome);
}
test "I_Sf_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_Uc());
}
test "I_Sf_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_Uc(), outcome);
}
test "I_Sf_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_Uc(), .{ .v1 = 4160, .v2 = .{}, .v3 = 45 });
}
pub export fn zig_assert_I_Sf_Uc(lv: c.I_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4160) err = 1;
    if (lv.v3 != 45) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_Uc() c.I_Sf_Uc {
    return .{ .v1 = 4160, .v2 = .{}, .v3 = 45 };
}

// From CT_Snen_xaa.c:68844:68864
// struct  I_Sf_Ui  {
//   int v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "I_Sf_Ui: layout" {
    var lv: c.I_Sf_Ui = undefined;
    try testing.expectSize(c.I_Sf_Ui, 8);
    try testing.expectAlign(c.I_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "I_Sf_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_Ui(.{ .v1 = 25993, .v2 = .{}, .v3 = 25987 }), outcome);
}
test "I_Sf_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_Ui());
}
test "I_Sf_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_Ui(), outcome);
}
test "I_Sf_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_Ui(), .{ .v1 = 25993, .v2 = .{}, .v3 = 25987 });
}
pub export fn zig_assert_I_Sf_Ui(lv: c.I_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25993) err = 1;
    if (lv.v3 != 25987) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_Ui() c.I_Sf_Ui {
    return .{ .v1 = 25993, .v2 = .{}, .v3 = 25987 };
}

// From CT_Snen_xaa.c:68869:68889
// struct  I_Sf_Ul  {
//   int v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "I_Sf_Ul: layout" {
    var lv: c.I_Sf_Ul = undefined;
    try testing.expectSize(c.I_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "I_Sf_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_Ul(.{ .v1 = 23895, .v2 = .{}, .v3 = 26777 }), outcome);
}
test "I_Sf_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_Ul());
}
test "I_Sf_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_Ul(), outcome);
}
test "I_Sf_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_Ul(), .{ .v1 = 23895, .v2 = .{}, .v3 = 26777 });
}
pub export fn zig_assert_I_Sf_Ul(lv: c.I_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23895) err = 1;
    if (lv.v3 != 26777) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_Ul() c.I_Sf_Ul {
    return .{ .v1 = 23895, .v2 = .{}, .v3 = 26777 };
}

// From CT_Snen_xaa.c:68894:68914
// struct  I_Sf_Us  {
//   int v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "I_Sf_Us: layout" {
    var lv: c.I_Sf_Us = undefined;
    try testing.expectSize(c.I_Sf_Us, 8);
    try testing.expectAlign(c.I_Sf_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "I_Sf_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_Us(.{ .v1 = 21715, .v2 = .{}, .v3 = 23581 }), outcome);
}
test "I_Sf_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_Us());
}
test "I_Sf_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_Us(), outcome);
}
test "I_Sf_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_Us(), .{ .v1 = 21715, .v2 = .{}, .v3 = 23581 });
}
pub export fn zig_assert_I_Sf_Us(lv: c.I_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21715) err = 1;
    if (lv.v3 != 23581) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_Us() c.I_Sf_Us {
    return .{ .v1 = 21715, .v2 = .{}, .v3 = 23581 };
}

// From CT_Snen_xaa.c:68919:68939
// struct  I_Sf_Vp  {
//   int v1;
//   struct empty v2;
//   void *v3;
// };

test "I_Sf_Vp: layout" {
    var lv: c.I_Sf_Vp = undefined;
    try testing.expectSize(c.I_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "I_Sf_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Sf_Vp(.{ .v1 = 10308, .v2 = .{}, .v3 = null }), outcome);
}
test "I_Sf_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Sf_Vp());
}
test "I_Sf_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Sf_Vp(), outcome);
}
test "I_Sf_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Sf_Vp(), .{ .v1 = 10308, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_I_Sf_Vp(lv: c.I_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10308) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Sf_Vp() c.I_Sf_Vp {
    return .{ .v1 = 10308, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:68944:68964
// struct  I_Uc_Sf  {
//   int v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "I_Uc_Sf: layout" {
    var lv: c.I_Uc_Sf = undefined;
    try testing.expectSize(c.I_Uc_Sf, 8);
    try testing.expectAlign(c.I_Uc_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "I_Uc_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Uc_Sf(.{ .v1 = 1955, .v2 = 88, .v3 = .{} }), outcome);
}
test "I_Uc_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Uc_Sf());
}
test "I_Uc_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Uc_Sf(), outcome);
}
test "I_Uc_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Uc_Sf(), .{ .v1 = 1955, .v2 = 88, .v3 = .{} });
}
pub export fn zig_assert_I_Uc_Sf(lv: c.I_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1955) err = 1;
    if (lv.v2 != 88) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Uc_Sf() c.I_Uc_Sf {
    return .{ .v1 = 1955, .v2 = 88, .v3 = .{} };
}

// From CT_Snen_xaa.c:68969:68989
// struct  I_Ui_Sf  {
//   int v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "I_Ui_Sf: layout" {
    var lv: c.I_Ui_Sf = undefined;
    try testing.expectSize(c.I_Ui_Sf, 8);
    try testing.expectAlign(c.I_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Ui_Sf(.{ .v1 = 18167, .v2 = 30153, .v3 = .{} }), outcome);
}
test "I_Ui_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Ui_Sf());
}
test "I_Ui_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Ui_Sf(), outcome);
}
test "I_Ui_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Ui_Sf(), .{ .v1 = 18167, .v2 = 30153, .v3 = .{} });
}
pub export fn zig_assert_I_Ui_Sf(lv: c.I_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18167) err = 1;
    if (lv.v2 != 30153) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ui_Sf() c.I_Ui_Sf {
    return .{ .v1 = 18167, .v2 = 30153, .v3 = .{} };
}

// From CT_Snen_xaa.c:68994:69014
// struct  I_Ul_Sf  {
//   int v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "I_Ul_Sf: layout" {
    var lv: c.I_Ul_Sf = undefined;
    try testing.expectSize(c.I_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Ul_Sf(.{ .v1 = 30828, .v2 = 18699, .v3 = .{} }), outcome);
}
test "I_Ul_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Ul_Sf());
}
test "I_Ul_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Ul_Sf(), outcome);
}
test "I_Ul_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Ul_Sf(), .{ .v1 = 30828, .v2 = 18699, .v3 = .{} });
}
pub export fn zig_assert_I_Ul_Sf(lv: c.I_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30828) err = 1;
    if (lv.v2 != 18699) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Ul_Sf() c.I_Ul_Sf {
    return .{ .v1 = 30828, .v2 = 18699, .v3 = .{} };
}

// From CT_Snen_xaa.c:69019:69039
// struct  I_Us_Sf  {
//   int v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "I_Us_Sf: layout" {
    var lv: c.I_Us_Sf = undefined;
    try testing.expectSize(c.I_Us_Sf, 8);
    try testing.expectAlign(c.I_Us_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Us_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Us_Sf(.{ .v1 = 9385, .v2 = 8777, .v3 = .{} }), outcome);
}
test "I_Us_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Us_Sf());
}
test "I_Us_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Us_Sf(), outcome);
}
test "I_Us_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Us_Sf(), .{ .v1 = 9385, .v2 = 8777, .v3 = .{} });
}
pub export fn zig_assert_I_Us_Sf(lv: c.I_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9385) err = 1;
    if (lv.v2 != 8777) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Us_Sf() c.I_Us_Sf {
    return .{ .v1 = 9385, .v2 = 8777, .v3 = .{} };
}

// From CT_Snen_xaa.c:69044:69064
// struct  I_Vp_Sf  {
//   int v1;
//   void *v2;
//   struct empty v3;
// };

test "I_Vp_Sf: layout" {
    var lv: c.I_Vp_Sf = undefined;
    try testing.expectSize(c.I_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_I_Vp_Sf(.{ .v1 = 26440, .v2 = null, .v3 = .{} }), outcome);
}
test "I_Vp_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_I_Vp_Sf());
}
test "I_Vp_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_I_Vp_Sf(), outcome);
}
test "I_Vp_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_I_Vp_Sf(), .{ .v1 = 26440, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_I_Vp_Sf(lv: c.I_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26440) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_I_Vp_Sf() c.I_Vp_Sf {
    return .{ .v1 = 26440, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:69793:69813
// struct  Ip_C_Sf  {
//   int *v1;
//   char v2;
//   struct empty v3;
// };

test "Ip_C_Sf: layout" {
    var lv: c.Ip_C_Sf = undefined;
    try testing.expectSize(c.Ip_C_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Ip_C_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_C_Sf(.{ .v1 = null, .v2 = 18, .v3 = .{} }), outcome);
}
test "Ip_C_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_C_Sf());
}
test "Ip_C_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_C_Sf(), outcome);
}
test "Ip_C_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_C_Sf(), .{ .v1 = null, .v2 = 18, .v3 = .{} });
}
pub export fn zig_assert_Ip_C_Sf(lv: c.Ip_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 18) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_C_Sf() c.Ip_C_Sf {
    return .{ .v1 = null, .v2 = 18, .v3 = .{} };
}

// From CT_Snen_xaa.c:69818:69838
// struct  Ip_D_Sf  {
//   int *v1;
//   double v2;
//   struct empty v3;
// };

test "Ip_D_Sf: layout" {
    var lv: c.Ip_D_Sf = undefined;
    try testing.expectSize(c.Ip_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_D_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_D_Sf(.{ .v1 = null, .v2 = 1.0, .v3 = .{} }), outcome);
}
test "Ip_D_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_D_Sf());
}
test "Ip_D_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_D_Sf(), outcome);
}
test "Ip_D_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_D_Sf(), .{ .v1 = null, .v2 = 1.0, .v3 = .{} });
}
pub export fn zig_assert_Ip_D_Sf(lv: c.Ip_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_D_Sf() c.Ip_D_Sf {
    return .{ .v1 = null, .v2 = 1.0, .v3 = .{} };
}

// From CT_Snen_xaa.c:69843:69863
// struct  Ip_F_Sf  {
//   int *v1;
//   float v2;
//   struct empty v3;
// };

test "Ip_F_Sf: layout" {
    var lv: c.Ip_F_Sf = undefined;
    try testing.expectSize(c.Ip_F_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_F_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_F_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_F_Sf(.{ .v1 = null, .v2 = 0.5, .v3 = .{} }), outcome);
}
test "Ip_F_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_F_Sf());
}
test "Ip_F_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_F_Sf(), outcome);
}
test "Ip_F_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_F_Sf(), .{ .v1 = null, .v2 = 0.5, .v3 = .{} });
}
pub export fn zig_assert_Ip_F_Sf(lv: c.Ip_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_F_Sf() c.Ip_F_Sf {
    return .{ .v1 = null, .v2 = 0.5, .v3 = .{} };
}

// From CT_Snen_xaa.c:69868:69888
// struct  Ip_I_Sf  {
//   int *v1;
//   int v2;
//   struct empty v3;
// };

test "Ip_I_Sf: layout" {
    var lv: c.Ip_I_Sf = undefined;
    try testing.expectSize(c.Ip_I_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_I_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_I_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_I_Sf(.{ .v1 = null, .v2 = 30260, .v3 = .{} }), outcome);
}
test "Ip_I_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_I_Sf());
}
test "Ip_I_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_I_Sf(), outcome);
}
test "Ip_I_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_I_Sf(), .{ .v1 = null, .v2 = 30260, .v3 = .{} });
}
pub export fn zig_assert_Ip_I_Sf(lv: c.Ip_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 30260) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_I_Sf() c.Ip_I_Sf {
    return .{ .v1 = null, .v2 = 30260, .v3 = .{} };
}

// From CT_Snen_xaa.c:69893:69913
// struct  Ip_Ip_Sf  {
//   int *v1;
//   int *v2;
//   struct empty v3;
// };

test "Ip_Ip_Sf: layout" {
    var lv: c.Ip_Ip_Sf = undefined;
    try testing.expectSize(c.Ip_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Ip_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Ip_Sf(.{ .v1 = null, .v2 = null, .v3 = .{} }), outcome);
}
test "Ip_Ip_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Ip_Sf());
}
test "Ip_Ip_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Ip_Sf(), outcome);
}
test "Ip_Ip_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Ip_Sf(), .{ .v1 = null, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_Ip_Ip_Sf(lv: c.Ip_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ip_Sf() c.Ip_Ip_Sf {
    return .{ .v1 = null, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:69918:69938
// struct  Ip_L_Sf  {
//   int *v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Ip_L_Sf: layout" {
    var lv: c.Ip_L_Sf = undefined;
    try testing.expectSize(c.Ip_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_L_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_L_Sf(.{ .v1 = null, .v2 = 29776, .v3 = .{} }), outcome);
}
test "Ip_L_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_L_Sf());
}
test "Ip_L_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_L_Sf(), outcome);
}
test "Ip_L_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_L_Sf(), .{ .v1 = null, .v2 = 29776, .v3 = .{} });
}
pub export fn zig_assert_Ip_L_Sf(lv: c.Ip_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 29776) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_L_Sf() c.Ip_L_Sf {
    return .{ .v1 = null, .v2 = 29776, .v3 = .{} };
}

// From CT_Snen_xaa.c:69943:69963
// struct  Ip_S_Sf  {
//   int *v1;
//   short v2;
//   struct empty v3;
// };

test "Ip_S_Sf: layout" {
    var lv: c.Ip_S_Sf = undefined;
    try testing.expectSize(c.Ip_S_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_S_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_S_Sf(.{ .v1 = null, .v2 = 27826, .v3 = .{} }), outcome);
}
test "Ip_S_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_S_Sf());
}
test "Ip_S_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_S_Sf(), outcome);
}
test "Ip_S_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_S_Sf(), .{ .v1 = null, .v2 = 27826, .v3 = .{} });
}
pub export fn zig_assert_Ip_S_Sf(lv: c.Ip_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27826) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_S_Sf() c.Ip_S_Sf {
    return .{ .v1 = null, .v2 = 27826, .v3 = .{} };
}

// From CT_Snen_xaa.c:69968:69986
// struct  Ip_Sf  {
//   int *v1;
//   struct empty v2;
// };

test "Ip_Sf: layout" {
    var lv: c.Ip_Sf = undefined;
    try testing.expectSize(c.Ip_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Ip_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf(.{ .v1 = null, .v2 = .{} }), outcome);
}
test "Ip_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf());
}
test "Ip_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf(), outcome);
}
test "Ip_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf(), .{ .v1 = null, .v2 = .{} });
}
pub export fn zig_assert_Ip_Sf(lv: c.Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf() c.Ip_Sf {
    return .{ .v1 = null, .v2 = .{} };
}

// From CT_Snen_xaa.c:70715:70735
// struct  Ip_Sf_C  {
//   int *v1;
//   struct empty v2;
//   char v3;
// };

test "Ip_Sf_C: layout" {
    var lv: c.Ip_Sf_C = undefined;
    try testing.expectSize(c.Ip_Sf_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_C(.{ .v1 = null, .v2 = .{}, .v3 = 118 }), outcome);
}
test "Ip_Sf_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_C());
}
test "Ip_Sf_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_C(), outcome);
}
test "Ip_Sf_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_C(), .{ .v1 = null, .v2 = .{}, .v3 = 118 });
}
pub export fn zig_assert_Ip_Sf_C(lv: c.Ip_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 118) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_C() c.Ip_Sf_C {
    return .{ .v1 = null, .v2 = .{}, .v3 = 118 };
}

// From CT_Snen_xaa.c:70740:70760
// struct  Ip_Sf_D  {
//   int *v1;
//   struct empty v2;
//   double v3;
// };

test "Ip_Sf_D: layout" {
    var lv: c.Ip_Sf_D = undefined;
    try testing.expectSize(c.Ip_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_D(.{ .v1 = null, .v2 = .{}, .v3 = 7.0 }), outcome);
}
test "Ip_Sf_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_D());
}
test "Ip_Sf_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_D(), outcome);
}
test "Ip_Sf_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_D(), .{ .v1 = null, .v2 = .{}, .v3 = 7.0 });
}
pub export fn zig_assert_Ip_Sf_D(lv: c.Ip_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_D() c.Ip_Sf_D {
    return .{ .v1 = null, .v2 = .{}, .v3 = 7.0 };
}

// From CT_Snen_xaa.c:70765:70785
// struct  Ip_Sf_F  {
//   int *v1;
//   struct empty v2;
//   float v3;
// };

test "Ip_Sf_F: layout" {
    var lv: c.Ip_Sf_F = undefined;
    try testing.expectSize(c.Ip_Sf_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_F(.{ .v1 = null, .v2 = .{}, .v3 = -0.25 }), outcome);
}
test "Ip_Sf_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_F());
}
test "Ip_Sf_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_F(), outcome);
}
test "Ip_Sf_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_F(), .{ .v1 = null, .v2 = .{}, .v3 = -0.25 });
}
pub export fn zig_assert_Ip_Sf_F(lv: c.Ip_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_F() c.Ip_Sf_F {
    return .{ .v1 = null, .v2 = .{}, .v3 = -0.25 };
}

// From CT_Snen_xaa.c:70790:70810
// struct  Ip_Sf_I  {
//   int *v1;
//   struct empty v2;
//   int v3;
// };

test "Ip_Sf_I: layout" {
    var lv: c.Ip_Sf_I = undefined;
    try testing.expectSize(c.Ip_Sf_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_I(.{ .v1 = null, .v2 = .{}, .v3 = 30120 }), outcome);
}
test "Ip_Sf_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_I());
}
test "Ip_Sf_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_I(), outcome);
}
test "Ip_Sf_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_I(), .{ .v1 = null, .v2 = .{}, .v3 = 30120 });
}
pub export fn zig_assert_Ip_Sf_I(lv: c.Ip_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 30120) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_I() c.Ip_Sf_I {
    return .{ .v1 = null, .v2 = .{}, .v3 = 30120 };
}

// From CT_Snen_xaa.c:70815:70835
// struct  Ip_Sf_Ip  {
//   int *v1;
//   struct empty v2;
//   int *v3;
// };

test "Ip_Sf_Ip: layout" {
    var lv: c.Ip_Sf_Ip = undefined;
    try testing.expectSize(c.Ip_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_Ip(.{ .v1 = null, .v2 = .{}, .v3 = null }), outcome);
}
test "Ip_Sf_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_Ip());
}
test "Ip_Sf_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_Ip(), outcome);
}
test "Ip_Sf_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_Ip(), .{ .v1 = null, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_Ip_Sf_Ip(lv: c.Ip_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_Ip() c.Ip_Sf_Ip {
    return .{ .v1 = null, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:70840:70860
// struct  Ip_Sf_L  {
//   int *v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Ip_Sf_L: layout" {
    var lv: c.Ip_Sf_L = undefined;
    try testing.expectSize(c.Ip_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_L(.{ .v1 = null, .v2 = .{}, .v3 = 20716 }), outcome);
}
test "Ip_Sf_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_L());
}
test "Ip_Sf_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_L(), outcome);
}
test "Ip_Sf_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_L(), .{ .v1 = null, .v2 = .{}, .v3 = 20716 });
}
pub export fn zig_assert_Ip_Sf_L(lv: c.Ip_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 20716) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_L() c.Ip_Sf_L {
    return .{ .v1 = null, .v2 = .{}, .v3 = 20716 };
}

// From CT_Snen_xaa.c:70865:70885
// struct  Ip_Sf_S  {
//   int *v1;
//   struct empty v2;
//   short v3;
// };

test "Ip_Sf_S: layout" {
    var lv: c.Ip_Sf_S = undefined;
    try testing.expectSize(c.Ip_Sf_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_S(.{ .v1 = null, .v2 = .{}, .v3 = 8536 }), outcome);
}
test "Ip_Sf_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_S());
}
test "Ip_Sf_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_S(), outcome);
}
test "Ip_Sf_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_S(), .{ .v1 = null, .v2 = .{}, .v3 = 8536 });
}
pub export fn zig_assert_Ip_Sf_S(lv: c.Ip_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 8536) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_S() c.Ip_Sf_S {
    return .{ .v1 = null, .v2 = .{}, .v3 = 8536 };
}

// From CT_Snen_xaa.c:70890:70910
// struct  Ip_Sf_Sf  {
//   int *v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Ip_Sf_Sf: layout" {
    var lv: c.Ip_Sf_Sf = undefined;
    try testing.expectSize(c.Ip_Sf_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Ip_Sf_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_Sf(.{ .v1 = null, .v2 = .{}, .v3 = .{} }), outcome);
}
test "Ip_Sf_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_Sf());
}
test "Ip_Sf_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_Sf(), outcome);
}
test "Ip_Sf_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_Sf(), .{ .v1 = null, .v2 = .{}, .v3 = .{} });
}
pub export fn zig_assert_Ip_Sf_Sf(lv: c.Ip_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_Sf() c.Ip_Sf_Sf {
    return .{ .v1 = null, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xaa.c:70915:70935
// struct  Ip_Sf_Uc  {
//   int *v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Ip_Sf_Uc: layout" {
    var lv: c.Ip_Sf_Uc = undefined;
    try testing.expectSize(c.Ip_Sf_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_Uc(.{ .v1 = null, .v2 = .{}, .v3 = 63 }), outcome);
}
test "Ip_Sf_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_Uc());
}
test "Ip_Sf_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_Uc(), outcome);
}
test "Ip_Sf_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_Uc(), .{ .v1 = null, .v2 = .{}, .v3 = 63 });
}
pub export fn zig_assert_Ip_Sf_Uc(lv: c.Ip_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 63) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_Uc() c.Ip_Sf_Uc {
    return .{ .v1 = null, .v2 = .{}, .v3 = 63 };
}

// From CT_Snen_xaa.c:70940:70960
// struct  Ip_Sf_Ui  {
//   int *v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Ip_Sf_Ui: layout" {
    var lv: c.Ip_Sf_Ui = undefined;
    try testing.expectSize(c.Ip_Sf_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_Ui(.{ .v1 = null, .v2 = .{}, .v3 = 23923 }), outcome);
}
test "Ip_Sf_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_Ui());
}
test "Ip_Sf_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_Ui(), outcome);
}
test "Ip_Sf_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_Ui(), .{ .v1 = null, .v2 = .{}, .v3 = 23923 });
}
pub export fn zig_assert_Ip_Sf_Ui(lv: c.Ip_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 23923) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_Ui() c.Ip_Sf_Ui {
    return .{ .v1 = null, .v2 = .{}, .v3 = 23923 };
}

// From CT_Snen_xaa.c:70965:70985
// struct  Ip_Sf_Ul  {
//   int *v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Ip_Sf_Ul: layout" {
    var lv: c.Ip_Sf_Ul = undefined;
    try testing.expectSize(c.Ip_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_Ul(.{ .v1 = null, .v2 = .{}, .v3 = 8874 }), outcome);
}
test "Ip_Sf_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_Ul());
}
test "Ip_Sf_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_Ul(), outcome);
}
test "Ip_Sf_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_Ul(), .{ .v1 = null, .v2 = .{}, .v3 = 8874 });
}
pub export fn zig_assert_Ip_Sf_Ul(lv: c.Ip_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 8874) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_Ul() c.Ip_Sf_Ul {
    return .{ .v1 = null, .v2 = .{}, .v3 = 8874 };
}

// From CT_Snen_xaa.c:70990:71010
// struct  Ip_Sf_Us  {
//   int *v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Ip_Sf_Us: layout" {
    var lv: c.Ip_Sf_Us = undefined;
    try testing.expectSize(c.Ip_Sf_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_Us(.{ .v1 = null, .v2 = .{}, .v3 = 9079 }), outcome);
}
test "Ip_Sf_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_Us());
}
test "Ip_Sf_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_Us(), outcome);
}
test "Ip_Sf_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_Us(), .{ .v1 = null, .v2 = .{}, .v3 = 9079 });
}
pub export fn zig_assert_Ip_Sf_Us(lv: c.Ip_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 9079) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_Us() c.Ip_Sf_Us {
    return .{ .v1 = null, .v2 = .{}, .v3 = 9079 };
}

// From CT_Snen_xaa.c:71015:71035
// struct  Ip_Sf_Vp  {
//   int *v1;
//   struct empty v2;
//   void *v3;
// };

test "Ip_Sf_Vp: layout" {
    var lv: c.Ip_Sf_Vp = undefined;
    try testing.expectSize(c.Ip_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ip_Sf_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Sf_Vp(.{ .v1 = null, .v2 = .{}, .v3 = null }), outcome);
}
test "Ip_Sf_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Sf_Vp());
}
test "Ip_Sf_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Sf_Vp(), outcome);
}
test "Ip_Sf_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Sf_Vp(), .{ .v1 = null, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_Ip_Sf_Vp(lv: c.Ip_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Sf_Vp() c.Ip_Sf_Vp {
    return .{ .v1 = null, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:71040:71060
// struct  Ip_Uc_Sf  {
//   int *v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Ip_Uc_Sf: layout" {
    var lv: c.Ip_Uc_Sf = undefined;
    try testing.expectSize(c.Ip_Uc_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Ip_Uc_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Uc_Sf(.{ .v1 = null, .v2 = 83, .v3 = .{} }), outcome);
}
test "Ip_Uc_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Uc_Sf());
}
test "Ip_Uc_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Uc_Sf(), outcome);
}
test "Ip_Uc_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Uc_Sf(), .{ .v1 = null, .v2 = 83, .v3 = .{} });
}
pub export fn zig_assert_Ip_Uc_Sf(lv: c.Ip_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 83) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Uc_Sf() c.Ip_Uc_Sf {
    return .{ .v1 = null, .v2 = 83, .v3 = .{} };
}

// From CT_Snen_xaa.c:71065:71085
// struct  Ip_Ui_Sf  {
//   int *v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Ip_Ui_Sf: layout" {
    var lv: c.Ip_Ui_Sf = undefined;
    try testing.expectSize(c.Ip_Ui_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Ui_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Ip_Ui_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Ui_Sf(.{ .v1 = null, .v2 = 20391, .v3 = .{} }), outcome);
}
test "Ip_Ui_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Ui_Sf());
}
test "Ip_Ui_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Ui_Sf(), outcome);
}
test "Ip_Ui_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Ui_Sf(), .{ .v1 = null, .v2 = 20391, .v3 = .{} });
}
pub export fn zig_assert_Ip_Ui_Sf(lv: c.Ip_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20391) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ui_Sf() c.Ip_Ui_Sf {
    return .{ .v1 = null, .v2 = 20391, .v3 = .{} };
}

// From CT_Snen_xaa.c:71090:71110
// struct  Ip_Ul_Sf  {
//   int *v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Ip_Ul_Sf: layout" {
    var lv: c.Ip_Ul_Sf = undefined;
    try testing.expectSize(c.Ip_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ip_Ul_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Ul_Sf(.{ .v1 = null, .v2 = 27381, .v3 = .{} }), outcome);
}
test "Ip_Ul_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Ul_Sf());
}
test "Ip_Ul_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Ul_Sf(), outcome);
}
test "Ip_Ul_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Ul_Sf(), .{ .v1 = null, .v2 = 27381, .v3 = .{} });
}
pub export fn zig_assert_Ip_Ul_Sf(lv: c.Ip_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27381) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Ul_Sf() c.Ip_Ul_Sf {
    return .{ .v1 = null, .v2 = 27381, .v3 = .{} };
}

// From CT_Snen_xaa.c:71115:71135
// struct  Ip_Us_Sf  {
//   int *v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Ip_Us_Sf: layout" {
    var lv: c.Ip_Us_Sf = undefined;
    try testing.expectSize(c.Ip_Us_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Ip_Us_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Us_Sf(.{ .v1 = null, .v2 = 21215, .v3 = .{} }), outcome);
}
test "Ip_Us_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Us_Sf());
}
test "Ip_Us_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Us_Sf(), outcome);
}
test "Ip_Us_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Us_Sf(), .{ .v1 = null, .v2 = 21215, .v3 = .{} });
}
pub export fn zig_assert_Ip_Us_Sf(lv: c.Ip_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21215) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Us_Sf() c.Ip_Us_Sf {
    return .{ .v1 = null, .v2 = 21215, .v3 = .{} };
}

// From CT_Snen_xaa.c:71140:71160
// struct  Ip_Vp_Sf  {
//   int *v1;
//   void *v2;
//   struct empty v3;
// };

test "Ip_Vp_Sf: layout" {
    var lv: c.Ip_Vp_Sf = undefined;
    try testing.expectSize(c.Ip_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ip_Vp_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Ip_Vp_Sf(.{ .v1 = null, .v2 = null, .v3 = .{} }), outcome);
}
test "Ip_Vp_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Ip_Vp_Sf());
}
test "Ip_Vp_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Ip_Vp_Sf(), outcome);
}
test "Ip_Vp_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Ip_Vp_Sf(), .{ .v1 = null, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_Ip_Vp_Sf(lv: c.Ip_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ip_Vp_Sf() c.Ip_Vp_Sf {
    return .{ .v1 = null, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:71889:71909
// struct  L_C_Sf  {
//   __tsi64 v1;
//   char v2;
//   struct empty v3;
// };

test "L_C_Sf: layout" {
    var lv: c.L_C_Sf = undefined;
    try testing.expectSize(c.L_C_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "L_C_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_C_Sf(.{ .v1 = 18919, .v2 = 41, .v3 = .{} }), outcome);
}
test "L_C_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_C_Sf());
}
test "L_C_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_C_Sf(), outcome);
}
test "L_C_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_C_Sf(), .{ .v1 = 18919, .v2 = 41, .v3 = .{} });
}
pub export fn zig_assert_L_C_Sf(lv: c.L_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18919) err = 1;
    if (lv.v2 != 41) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_C_Sf() c.L_C_Sf {
    return .{ .v1 = 18919, .v2 = 41, .v3 = .{} };
}

// From CT_Snen_xaa.c:71914:71934
// struct  L_D_Sf  {
//   __tsi64 v1;
//   double v2;
//   struct empty v3;
// };

test "L_D_Sf: layout" {
    var lv: c.L_D_Sf = undefined;
    try testing.expectSize(c.L_D_Sf, 16);
    try testing.expectAlign(c.L_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_D_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_D_Sf(.{ .v1 = 802, .v2 = 1.0, .v3 = .{} }), outcome);
}
test "L_D_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_D_Sf());
}
test "L_D_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_D_Sf(), outcome);
}
test "L_D_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_D_Sf(), .{ .v1 = 802, .v2 = 1.0, .v3 = .{} });
}
pub export fn zig_assert_L_D_Sf(lv: c.L_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 802) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_D_Sf() c.L_D_Sf {
    return .{ .v1 = 802, .v2 = 1.0, .v3 = .{} };
}

// From CT_Snen_xaa.c:71939:71959
// struct  L_F_Sf  {
//   __tsi64 v1;
//   float v2;
//   struct empty v3;
// };

test "L_F_Sf: layout" {
    var lv: c.L_F_Sf = undefined;
    try testing.expectSize(c.L_F_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_F_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_F_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_F_Sf(.{ .v1 = 21753, .v2 = 4.5, .v3 = .{} }), outcome);
}
test "L_F_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_F_Sf());
}
test "L_F_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_F_Sf(), outcome);
}
test "L_F_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_F_Sf(), .{ .v1 = 21753, .v2 = 4.5, .v3 = .{} });
}
pub export fn zig_assert_L_F_Sf(lv: c.L_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21753) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_F_Sf() c.L_F_Sf {
    return .{ .v1 = 21753, .v2 = 4.5, .v3 = .{} };
}

// From CT_Snen_xaa.c:71964:71984
// struct  L_I_Sf  {
//   __tsi64 v1;
//   int v2;
//   struct empty v3;
// };

test "L_I_Sf: layout" {
    var lv: c.L_I_Sf = undefined;
    try testing.expectSize(c.L_I_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_I_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_I_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_I_Sf(.{ .v1 = 2747, .v2 = 9211, .v3 = .{} }), outcome);
}
test "L_I_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_I_Sf());
}
test "L_I_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_I_Sf(), outcome);
}
test "L_I_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_I_Sf(), .{ .v1 = 2747, .v2 = 9211, .v3 = .{} });
}
pub export fn zig_assert_L_I_Sf(lv: c.L_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2747) err = 1;
    if (lv.v2 != 9211) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_I_Sf() c.L_I_Sf {
    return .{ .v1 = 2747, .v2 = 9211, .v3 = .{} };
}

// From CT_Snen_xaa.c:71989:72009
// struct  L_Ip_Sf  {
//   __tsi64 v1;
//   int *v2;
//   struct empty v3;
// };

test "L_Ip_Sf: layout" {
    var lv: c.L_Ip_Sf = undefined;
    try testing.expectSize(c.L_Ip_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ip_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Ip_Sf(.{ .v1 = 16024, .v2 = null, .v3 = .{} }), outcome);
}
test "L_Ip_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ip_Sf());
}
test "L_Ip_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Ip_Sf(), outcome);
}
test "L_Ip_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ip_Sf(), .{ .v1 = 16024, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_L_Ip_Sf(lv: c.L_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16024) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ip_Sf() c.L_Ip_Sf {
    return .{ .v1 = 16024, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:72014:72034
// struct  L_L_Sf  {
//   __tsi64 v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "L_L_Sf: layout" {
    var lv: c.L_L_Sf = undefined;
    try testing.expectSize(c.L_L_Sf, 16);
    try testing.expectAlign(c.L_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_L_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_L_Sf(.{ .v1 = 13014, .v2 = 744, .v3 = .{} }), outcome);
}
test "L_L_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_L_Sf());
}
test "L_L_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_L_Sf(), outcome);
}
test "L_L_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_L_Sf(), .{ .v1 = 13014, .v2 = 744, .v3 = .{} });
}
pub export fn zig_assert_L_L_Sf(lv: c.L_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13014) err = 1;
    if (lv.v2 != 744) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_L_Sf() c.L_L_Sf {
    return .{ .v1 = 13014, .v2 = 744, .v3 = .{} };
}

// From CT_Snen_xaa.c:72039:72059
// struct  L_S_Sf  {
//   __tsi64 v1;
//   short v2;
//   struct empty v3;
// };

test "L_S_Sf: layout" {
    var lv: c.L_S_Sf = undefined;
    try testing.expectSize(c.L_S_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_S_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_S_Sf(.{ .v1 = 19091, .v2 = 7391, .v3 = .{} }), outcome);
}
test "L_S_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_S_Sf());
}
test "L_S_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_S_Sf(), outcome);
}
test "L_S_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_S_Sf(), .{ .v1 = 19091, .v2 = 7391, .v3 = .{} });
}
pub export fn zig_assert_L_S_Sf(lv: c.L_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19091) err = 1;
    if (lv.v2 != 7391) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_S_Sf() c.L_S_Sf {
    return .{ .v1 = 19091, .v2 = 7391, .v3 = .{} };
}

// From CT_Snen_xaa.c:72064:72082
// struct  L_Sf  {
//   __tsi64 v1;
//   struct empty v2;
// };

test "L_Sf: layout" {
    var lv: c.L_Sf = undefined;
    try testing.expectSize(c.L_Sf, 8);
    try testing.expectAlign(c.L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf(.{ .v1 = 28899, .v2 = .{} }), outcome);
}
test "L_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf());
}
test "L_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf(), outcome);
}
test "L_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf(), .{ .v1 = 28899, .v2 = .{} });
}
pub export fn zig_assert_L_Sf(lv: c.L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28899) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf() c.L_Sf {
    return .{ .v1 = 28899, .v2 = .{} };
}

// From CT_Snen_xaa.c:72811:72831
// struct  L_Sf_C  {
//   __tsi64 v1;
//   struct empty v2;
//   char v3;
// };

test "L_Sf_C: layout" {
    var lv: c.L_Sf_C = undefined;
    try testing.expectSize(c.L_Sf_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_C(.{ .v1 = 31651, .v2 = .{}, .v3 = 0 }), outcome);
}
test "L_Sf_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_C());
}
test "L_Sf_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_C(), outcome);
}
test "L_Sf_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_C(), .{ .v1 = 31651, .v2 = .{}, .v3 = 0 });
}
pub export fn zig_assert_L_Sf_C(lv: c.L_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31651) err = 1;
    if (lv.v3 != 0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_C() c.L_Sf_C {
    return .{ .v1 = 31651, .v2 = .{}, .v3 = 0 };
}

// From CT_Snen_xaa.c:72836:72856
// struct  L_Sf_D  {
//   __tsi64 v1;
//   struct empty v2;
//   double v3;
// };

test "L_Sf_D: layout" {
    var lv: c.L_Sf_D = undefined;
    try testing.expectSize(c.L_Sf_D, 16);
    try testing.expectAlign(c.L_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_D(.{ .v1 = 21290, .v2 = .{}, .v3 = -2.125 }), outcome);
}
test "L_Sf_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_D());
}
test "L_Sf_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_D(), outcome);
}
test "L_Sf_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_D(), .{ .v1 = 21290, .v2 = .{}, .v3 = -2.125 });
}
pub export fn zig_assert_L_Sf_D(lv: c.L_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21290) err = 1;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_D() c.L_Sf_D {
    return .{ .v1 = 21290, .v2 = .{}, .v3 = -2.125 };
}

// From CT_Snen_xaa.c:72861:72881
// struct  L_Sf_F  {
//   __tsi64 v1;
//   struct empty v2;
//   float v3;
// };

test "L_Sf_F: layout" {
    var lv: c.L_Sf_F = undefined;
    try testing.expectSize(c.L_Sf_F, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_F(.{ .v1 = 32580, .v2 = .{}, .v3 = -2.125 }), outcome);
}
test "L_Sf_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_F());
}
test "L_Sf_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_F(), outcome);
}
test "L_Sf_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_F(), .{ .v1 = 32580, .v2 = .{}, .v3 = -2.125 });
}
pub export fn zig_assert_L_Sf_F(lv: c.L_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32580) err = 1;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_F() c.L_Sf_F {
    return .{ .v1 = 32580, .v2 = .{}, .v3 = -2.125 };
}

// From CT_Snen_xaa.c:72886:72906
// struct  L_Sf_I  {
//   __tsi64 v1;
//   struct empty v2;
//   int v3;
// };

test "L_Sf_I: layout" {
    var lv: c.L_Sf_I = undefined;
    try testing.expectSize(c.L_Sf_I, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_I(.{ .v1 = 12214, .v2 = .{}, .v3 = 24205 }), outcome);
}
test "L_Sf_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_I());
}
test "L_Sf_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_I(), outcome);
}
test "L_Sf_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_I(), .{ .v1 = 12214, .v2 = .{}, .v3 = 24205 });
}
pub export fn zig_assert_L_Sf_I(lv: c.L_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12214) err = 1;
    if (lv.v3 != 24205) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_I() c.L_Sf_I {
    return .{ .v1 = 12214, .v2 = .{}, .v3 = 24205 };
}

// From CT_Snen_xaa.c:72911:72931
// struct  L_Sf_Ip  {
//   __tsi64 v1;
//   struct empty v2;
//   int *v3;
// };

test "L_Sf_Ip: layout" {
    var lv: c.L_Sf_Ip = undefined;
    try testing.expectSize(c.L_Sf_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_Ip(.{ .v1 = 24226, .v2 = .{}, .v3 = null }), outcome);
}
test "L_Sf_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_Ip());
}
test "L_Sf_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_Ip(), outcome);
}
test "L_Sf_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_Ip(), .{ .v1 = 24226, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_L_Sf_Ip(lv: c.L_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24226) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_Ip() c.L_Sf_Ip {
    return .{ .v1 = 24226, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:72936:72956
// struct  L_Sf_L  {
//   __tsi64 v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "L_Sf_L: layout" {
    var lv: c.L_Sf_L = undefined;
    try testing.expectSize(c.L_Sf_L, 16);
    try testing.expectAlign(c.L_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_L(.{ .v1 = 32652, .v2 = .{}, .v3 = 3015 }), outcome);
}
test "L_Sf_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_L());
}
test "L_Sf_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_L(), outcome);
}
test "L_Sf_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_L(), .{ .v1 = 32652, .v2 = .{}, .v3 = 3015 });
}
pub export fn zig_assert_L_Sf_L(lv: c.L_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32652) err = 1;
    if (lv.v3 != 3015) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_L() c.L_Sf_L {
    return .{ .v1 = 32652, .v2 = .{}, .v3 = 3015 };
}

// From CT_Snen_xaa.c:72961:72981
// struct  L_Sf_S  {
//   __tsi64 v1;
//   struct empty v2;
//   short v3;
// };

test "L_Sf_S: layout" {
    var lv: c.L_Sf_S = undefined;
    try testing.expectSize(c.L_Sf_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_S(.{ .v1 = 3737, .v2 = .{}, .v3 = 271 }), outcome);
}
test "L_Sf_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_S());
}
test "L_Sf_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_S(), outcome);
}
test "L_Sf_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_S(), .{ .v1 = 3737, .v2 = .{}, .v3 = 271 });
}
pub export fn zig_assert_L_Sf_S(lv: c.L_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3737) err = 1;
    if (lv.v3 != 271) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_S() c.L_Sf_S {
    return .{ .v1 = 3737, .v2 = .{}, .v3 = 271 };
}

// From CT_Snen_xaa.c:72986:73006
// struct  L_Sf_Sf  {
//   __tsi64 v1;
//   struct empty v2;
//   struct empty v3;
// };

test "L_Sf_Sf: layout" {
    var lv: c.L_Sf_Sf = undefined;
    try testing.expectSize(c.L_Sf_Sf, 8);
    try testing.expectAlign(c.L_Sf_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_Sf(.{ .v1 = 11079, .v2 = .{}, .v3 = .{} }), outcome);
}
test "L_Sf_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_Sf());
}
test "L_Sf_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_Sf(), outcome);
}
test "L_Sf_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_Sf(), .{ .v1 = 11079, .v2 = .{}, .v3 = .{} });
}
pub export fn zig_assert_L_Sf_Sf(lv: c.L_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11079) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_Sf() c.L_Sf_Sf {
    return .{ .v1 = 11079, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xaa.c:73011:73031
// struct  L_Sf_Uc  {
//   __tsi64 v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "L_Sf_Uc: layout" {
    var lv: c.L_Sf_Uc = undefined;
    try testing.expectSize(c.L_Sf_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_Uc(.{ .v1 = 2888, .v2 = .{}, .v3 = 87 }), outcome);
}
test "L_Sf_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_Uc());
}
test "L_Sf_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_Uc(), outcome);
}
test "L_Sf_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_Uc(), .{ .v1 = 2888, .v2 = .{}, .v3 = 87 });
}
pub export fn zig_assert_L_Sf_Uc(lv: c.L_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2888) err = 1;
    if (lv.v3 != 87) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_Uc() c.L_Sf_Uc {
    return .{ .v1 = 2888, .v2 = .{}, .v3 = 87 };
}

// From CT_Snen_xaa.c:73036:73056
// struct  L_Sf_Ui  {
//   __tsi64 v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "L_Sf_Ui: layout" {
    var lv: c.L_Sf_Ui = undefined;
    try testing.expectSize(c.L_Sf_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_Ui(.{ .v1 = 9544, .v2 = .{}, .v3 = 13995 }), outcome);
}
test "L_Sf_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_Ui());
}
test "L_Sf_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_Ui(), outcome);
}
test "L_Sf_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_Ui(), .{ .v1 = 9544, .v2 = .{}, .v3 = 13995 });
}
pub export fn zig_assert_L_Sf_Ui(lv: c.L_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9544) err = 1;
    if (lv.v3 != 13995) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_Ui() c.L_Sf_Ui {
    return .{ .v1 = 9544, .v2 = .{}, .v3 = 13995 };
}

// From CT_Snen_xaa.c:73061:73081
// struct  L_Sf_Ul  {
//   __tsi64 v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "L_Sf_Ul: layout" {
    var lv: c.L_Sf_Ul = undefined;
    try testing.expectSize(c.L_Sf_Ul, 16);
    try testing.expectAlign(c.L_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_Ul(.{ .v1 = 15682, .v2 = .{}, .v3 = 27996 }), outcome);
}
test "L_Sf_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_Ul());
}
test "L_Sf_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_Ul(), outcome);
}
test "L_Sf_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_Ul(), .{ .v1 = 15682, .v2 = .{}, .v3 = 27996 });
}
pub export fn zig_assert_L_Sf_Ul(lv: c.L_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15682) err = 1;
    if (lv.v3 != 27996) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_Ul() c.L_Sf_Ul {
    return .{ .v1 = 15682, .v2 = .{}, .v3 = 27996 };
}

// From CT_Snen_xaa.c:73086:73106
// struct  L_Sf_Us  {
//   __tsi64 v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "L_Sf_Us: layout" {
    var lv: c.L_Sf_Us = undefined;
    try testing.expectSize(c.L_Sf_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_Us(.{ .v1 = 32055, .v2 = .{}, .v3 = 19892 }), outcome);
}
test "L_Sf_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_Us());
}
test "L_Sf_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_Us(), outcome);
}
test "L_Sf_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_Us(), .{ .v1 = 32055, .v2 = .{}, .v3 = 19892 });
}
pub export fn zig_assert_L_Sf_Us(lv: c.L_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32055) err = 1;
    if (lv.v3 != 19892) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_Us() c.L_Sf_Us {
    return .{ .v1 = 32055, .v2 = .{}, .v3 = 19892 };
}

// From CT_Snen_xaa.c:73111:73131
// struct  L_Sf_Vp  {
//   __tsi64 v1;
//   struct empty v2;
//   void *v3;
// };

test "L_Sf_Vp: layout" {
    var lv: c.L_Sf_Vp = undefined;
    try testing.expectSize(c.L_Sf_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "L_Sf_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Sf_Vp(.{ .v1 = 29020, .v2 = .{}, .v3 = null }), outcome);
}
test "L_Sf_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Sf_Vp());
}
test "L_Sf_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Sf_Vp(), outcome);
}
test "L_Sf_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Sf_Vp(), .{ .v1 = 29020, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_L_Sf_Vp(lv: c.L_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29020) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Sf_Vp() c.L_Sf_Vp {
    return .{ .v1 = 29020, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:73136:73156
// struct  L_Uc_Sf  {
//   __tsi64 v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "L_Uc_Sf: layout" {
    var lv: c.L_Uc_Sf = undefined;
    try testing.expectSize(c.L_Uc_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "L_Uc_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Uc_Sf(.{ .v1 = 2120, .v2 = 80, .v3 = .{} }), outcome);
}
test "L_Uc_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Uc_Sf());
}
test "L_Uc_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Uc_Sf(), outcome);
}
test "L_Uc_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Uc_Sf(), .{ .v1 = 2120, .v2 = 80, .v3 = .{} });
}
pub export fn zig_assert_L_Uc_Sf(lv: c.L_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2120) err = 1;
    if (lv.v2 != 80) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Uc_Sf() c.L_Uc_Sf {
    return .{ .v1 = 2120, .v2 = 80, .v3 = .{} };
}

// From CT_Snen_xaa.c:73161:73181
// struct  L_Ui_Sf  {
//   __tsi64 v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "L_Ui_Sf: layout" {
    var lv: c.L_Ui_Sf = undefined;
    try testing.expectSize(c.L_Ui_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Ui_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Ui_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Ui_Sf(.{ .v1 = 10030, .v2 = 29018, .v3 = .{} }), outcome);
}
test "L_Ui_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_Sf());
}
test "L_Ui_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Ui_Sf(), outcome);
}
test "L_Ui_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_Sf(), .{ .v1 = 10030, .v2 = 29018, .v3 = .{} });
}
pub export fn zig_assert_L_Ui_Sf(lv: c.L_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10030) err = 1;
    if (lv.v2 != 29018) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_Sf() c.L_Ui_Sf {
    return .{ .v1 = 10030, .v2 = 29018, .v3 = .{} };
}

// From CT_Snen_xaa.c:73186:73206
// struct  L_Ul_Sf  {
//   __tsi64 v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "L_Ul_Sf: layout" {
    var lv: c.L_Ul_Sf = undefined;
    try testing.expectSize(c.L_Ul_Sf, 16);
    try testing.expectAlign(c.L_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Ul_Sf(.{ .v1 = 25686, .v2 = 21775, .v3 = .{} }), outcome);
}
test "L_Ul_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_Sf());
}
test "L_Ul_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Ul_Sf(), outcome);
}
test "L_Ul_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_Sf(), .{ .v1 = 25686, .v2 = 21775, .v3 = .{} });
}
pub export fn zig_assert_L_Ul_Sf(lv: c.L_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25686) err = 1;
    if (lv.v2 != 21775) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_Sf() c.L_Ul_Sf {
    return .{ .v1 = 25686, .v2 = 21775, .v3 = .{} };
}

// From CT_Snen_xaa.c:73211:73231
// struct  L_Us_Sf  {
//   __tsi64 v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "L_Us_Sf: layout" {
    var lv: c.L_Us_Sf = undefined;
    try testing.expectSize(c.L_Us_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_Us_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Us_Sf(.{ .v1 = 1781, .v2 = 32501, .v3 = .{} }), outcome);
}
test "L_Us_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_Sf());
}
test "L_Us_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Us_Sf(), outcome);
}
test "L_Us_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_Sf(), .{ .v1 = 1781, .v2 = 32501, .v3 = .{} });
}
pub export fn zig_assert_L_Us_Sf(lv: c.L_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1781) err = 1;
    if (lv.v2 != 32501) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_Sf() c.L_Us_Sf {
    return .{ .v1 = 1781, .v2 = 32501, .v3 = .{} };
}

// From CT_Snen_xaa.c:73236:73256
// struct  L_Vp_Sf  {
//   __tsi64 v1;
//   void *v2;
//   struct empty v3;
// };

test "L_Vp_Sf: layout" {
    var lv: c.L_Vp_Sf = undefined;
    try testing.expectSize(c.L_Vp_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_L_Vp_Sf(.{ .v1 = 12990, .v2 = null, .v3 = .{} }), outcome);
}
test "L_Vp_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_Sf());
}
test "L_Vp_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_L_Vp_Sf(), outcome);
}
test "L_Vp_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_Sf(), .{ .v1 = 12990, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_L_Vp_Sf(lv: c.L_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12990) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_Sf() c.L_Vp_Sf {
    return .{ .v1 = 12990, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:73985:74005
// struct  S_C_Sf  {
//   short v1;
//   char v2;
//   struct empty v3;
// };

test "S_C_Sf: layout" {
    var lv: c.S_C_Sf = undefined;
    try testing.expectSize(c.S_C_Sf, 4);
    try testing.expectAlign(c.S_C_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "S_C_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_C_Sf(.{ .v1 = 32241, .v2 = 46, .v3 = .{} }), outcome);
}
test "S_C_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_Sf());
}
test "S_C_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_C_Sf(), outcome);
}
test "S_C_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_Sf(), .{ .v1 = 32241, .v2 = 46, .v3 = .{} });
}
pub export fn zig_assert_S_C_Sf(lv: c.S_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32241) err = 1;
    if (lv.v2 != 46) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_Sf() c.S_C_Sf {
    return .{ .v1 = 32241, .v2 = 46, .v3 = .{} };
}

// From CT_Snen_xaa.c:74010:74030
// struct  S_D_Sf  {
//   short v1;
//   double v2;
//   struct empty v3;
// };

test "S_D_Sf: layout" {
    var lv: c.S_D_Sf = undefined;
    try testing.expectSize(c.S_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.S_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_D_Sf(.{ .v1 = 3514, .v2 = -2.125, .v3 = .{} }), outcome);
}
test "S_D_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_Sf());
}
test "S_D_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_D_Sf(), outcome);
}
test "S_D_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_Sf(), .{ .v1 = 3514, .v2 = -2.125, .v3 = .{} });
}
pub export fn zig_assert_S_D_Sf(lv: c.S_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3514) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_Sf() c.S_D_Sf {
    return .{ .v1 = 3514, .v2 = -2.125, .v3 = .{} };
}

// From CT_Snen_xaa.c:74035:74055
// struct  S_F_Sf  {
//   short v1;
//   float v2;
//   struct empty v3;
// };

test "S_F_Sf: layout" {
    var lv: c.S_F_Sf = undefined;
    try testing.expectSize(c.S_F_Sf, 8);
    try testing.expectAlign(c.S_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_F_Sf(.{ .v1 = 2718, .v2 = 4.5, .v3 = .{} }), outcome);
}
test "S_F_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_Sf());
}
test "S_F_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_F_Sf(), outcome);
}
test "S_F_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_Sf(), .{ .v1 = 2718, .v2 = 4.5, .v3 = .{} });
}
pub export fn zig_assert_S_F_Sf(lv: c.S_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2718) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_Sf() c.S_F_Sf {
    return .{ .v1 = 2718, .v2 = 4.5, .v3 = .{} };
}

// From CT_Snen_xaa.c:74060:74080
// struct  S_I_Sf  {
//   short v1;
//   int v2;
//   struct empty v3;
// };

test "S_I_Sf: layout" {
    var lv: c.S_I_Sf = undefined;
    try testing.expectSize(c.S_I_Sf, 8);
    try testing.expectAlign(c.S_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_I_Sf(.{ .v1 = 27435, .v2 = 20889, .v3 = .{} }), outcome);
}
test "S_I_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_Sf());
}
test "S_I_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_I_Sf(), outcome);
}
test "S_I_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_Sf(), .{ .v1 = 27435, .v2 = 20889, .v3 = .{} });
}
pub export fn zig_assert_S_I_Sf(lv: c.S_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27435) err = 1;
    if (lv.v2 != 20889) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_Sf() c.S_I_Sf {
    return .{ .v1 = 27435, .v2 = 20889, .v3 = .{} };
}

// From CT_Snen_xaa.c:74085:74105
// struct  S_Ip_Sf  {
//   short v1;
//   int *v2;
//   struct empty v3;
// };

test "S_Ip_Sf: layout" {
    var lv: c.S_Ip_Sf = undefined;
    try testing.expectSize(c.S_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Ip_Sf(.{ .v1 = 19504, .v2 = null, .v3 = .{} }), outcome);
}
test "S_Ip_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_Sf());
}
test "S_Ip_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Ip_Sf(), outcome);
}
test "S_Ip_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_Sf(), .{ .v1 = 19504, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_S_Ip_Sf(lv: c.S_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19504) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_Sf() c.S_Ip_Sf {
    return .{ .v1 = 19504, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:74110:74130
// struct  S_L_Sf  {
//   short v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "S_L_Sf: layout" {
    var lv: c.S_L_Sf = undefined;
    try testing.expectSize(c.S_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.S_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_L_Sf(.{ .v1 = 4719, .v2 = 9687, .v3 = .{} }), outcome);
}
test "S_L_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_Sf());
}
test "S_L_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_L_Sf(), outcome);
}
test "S_L_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_Sf(), .{ .v1 = 4719, .v2 = 9687, .v3 = .{} });
}
pub export fn zig_assert_S_L_Sf(lv: c.S_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4719) err = 1;
    if (lv.v2 != 9687) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_Sf() c.S_L_Sf {
    return .{ .v1 = 4719, .v2 = 9687, .v3 = .{} };
}

// From CT_Snen_xaa.c:74135:74155
// struct  S_S_Sf  {
//   short v1;
//   short v2;
//   struct empty v3;
// };

test "S_S_Sf: layout" {
    var lv: c.S_S_Sf = undefined;
    try testing.expectSize(c.S_S_Sf, 4);
    try testing.expectAlign(c.S_S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_S_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_S_Sf(.{ .v1 = 18705, .v2 = 28798, .v3 = .{} }), outcome);
}
test "S_S_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_Sf());
}
test "S_S_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_S_Sf(), outcome);
}
test "S_S_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_Sf(), .{ .v1 = 18705, .v2 = 28798, .v3 = .{} });
}
pub export fn zig_assert_S_S_Sf(lv: c.S_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18705) err = 1;
    if (lv.v2 != 28798) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_Sf() c.S_S_Sf {
    return .{ .v1 = 18705, .v2 = 28798, .v3 = .{} };
}

// From CT_Snen_xaa.c:74160:74178
// struct  S_Sf  {
//   short v1;
//   struct empty v2;
// };

test "S_Sf: layout" {
    var lv: c.S_Sf = undefined;
    try testing.expectSize(c.S_Sf, 2);
    try testing.expectAlign(c.S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "S_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf(.{ .v1 = 27824, .v2 = .{} }), outcome);
}
test "S_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf());
}
test "S_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf(), outcome);
}
test "S_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf(), .{ .v1 = 27824, .v2 = .{} });
}
pub export fn zig_assert_S_Sf(lv: c.S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27824) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf() c.S_Sf {
    return .{ .v1 = 27824, .v2 = .{} };
}

// From CT_Snen_xaa.c:74907:74927
// struct  S_Sf_C  {
//   short v1;
//   struct empty v2;
//   char v3;
// };

test "S_Sf_C: layout" {
    var lv: c.S_Sf_C = undefined;
    try testing.expectSize(c.S_Sf_C, 4);
    try testing.expectAlign(c.S_Sf_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "S_Sf_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_C(.{ .v1 = 9398, .v2 = .{}, .v3 = 48 }), outcome);
}
test "S_Sf_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_C());
}
test "S_Sf_C: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_C(), outcome);
}
test "S_Sf_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_C(), .{ .v1 = 9398, .v2 = .{}, .v3 = 48 });
}
pub export fn zig_assert_S_Sf_C(lv: c.S_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9398) err = 1;
    if (lv.v3 != 48) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_C() c.S_Sf_C {
    return .{ .v1 = 9398, .v2 = .{}, .v3 = 48 };
}

// From CT_Snen_xaa.c:74932:74952
// struct  S_Sf_D  {
//   short v1;
//   struct empty v2;
//   double v3;
// };

test "S_Sf_D: layout" {
    var lv: c.S_Sf_D = undefined;
    try testing.expectSize(c.S_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Sf_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_D(.{ .v1 = 21401, .v2 = .{}, .v3 = 0.875 }), outcome);
}
test "S_Sf_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_D());
}
test "S_Sf_D: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_D(), outcome);
}
test "S_Sf_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_D(), .{ .v1 = 21401, .v2 = .{}, .v3 = 0.875 });
}
pub export fn zig_assert_S_Sf_D(lv: c.S_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21401) err = 1;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_D() c.S_Sf_D {
    return .{ .v1 = 21401, .v2 = .{}, .v3 = 0.875 };
}

// From CT_Snen_xaa.c:74957:74977
// struct  S_Sf_F  {
//   short v1;
//   struct empty v2;
//   float v3;
// };

test "S_Sf_F: layout" {
    var lv: c.S_Sf_F = undefined;
    try testing.expectSize(c.S_Sf_F, 8);
    try testing.expectAlign(c.S_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Sf_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_F(.{ .v1 = 16218, .v2 = .{}, .v3 = -0.25 }), outcome);
}
test "S_Sf_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_F());
}
test "S_Sf_F: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_F(), outcome);
}
test "S_Sf_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_F(), .{ .v1 = 16218, .v2 = .{}, .v3 = -0.25 });
}
pub export fn zig_assert_S_Sf_F(lv: c.S_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16218) err = 1;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_F() c.S_Sf_F {
    return .{ .v1 = 16218, .v2 = .{}, .v3 = -0.25 };
}

// From CT_Snen_xaa.c:74982:75002
// struct  S_Sf_I  {
//   short v1;
//   struct empty v2;
//   int v3;
// };

test "S_Sf_I: layout" {
    var lv: c.S_Sf_I = undefined;
    try testing.expectSize(c.S_Sf_I, 8);
    try testing.expectAlign(c.S_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Sf_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_I(.{ .v1 = 29562, .v2 = .{}, .v3 = 11826 }), outcome);
}
test "S_Sf_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_I());
}
test "S_Sf_I: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_I(), outcome);
}
test "S_Sf_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_I(), .{ .v1 = 29562, .v2 = .{}, .v3 = 11826 });
}
pub export fn zig_assert_S_Sf_I(lv: c.S_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29562) err = 1;
    if (lv.v3 != 11826) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_I() c.S_Sf_I {
    return .{ .v1 = 29562, .v2 = .{}, .v3 = 11826 };
}

// From CT_Snen_xaa.c:75007:75027
// struct  S_Sf_Ip  {
//   short v1;
//   struct empty v2;
//   int *v3;
// };

test "S_Sf_Ip: layout" {
    var lv: c.S_Sf_Ip = undefined;
    try testing.expectSize(c.S_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Sf_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_Ip(.{ .v1 = 23539, .v2 = .{}, .v3 = null }), outcome);
}
test "S_Sf_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_Ip());
}
test "S_Sf_Ip: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_Ip(), outcome);
}
test "S_Sf_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_Ip(), .{ .v1 = 23539, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_S_Sf_Ip(lv: c.S_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23539) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_Ip() c.S_Sf_Ip {
    return .{ .v1 = 23539, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:75032:75052
// struct  S_Sf_L  {
//   short v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "S_Sf_L: layout" {
    var lv: c.S_Sf_L = undefined;
    try testing.expectSize(c.S_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Sf_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_L(.{ .v1 = 27926, .v2 = .{}, .v3 = 27509 }), outcome);
}
test "S_Sf_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_L());
}
test "S_Sf_L: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_L(), outcome);
}
test "S_Sf_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_L(), .{ .v1 = 27926, .v2 = .{}, .v3 = 27509 });
}
pub export fn zig_assert_S_Sf_L(lv: c.S_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27926) err = 1;
    if (lv.v3 != 27509) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_L() c.S_Sf_L {
    return .{ .v1 = 27926, .v2 = .{}, .v3 = 27509 };
}

// From CT_Snen_xaa.c:75057:75077
// struct  S_Sf_S  {
//   short v1;
//   struct empty v2;
//   short v3;
// };

test "S_Sf_S: layout" {
    var lv: c.S_Sf_S = undefined;
    try testing.expectSize(c.S_Sf_S, 4);
    try testing.expectAlign(c.S_Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "S_Sf_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_S(.{ .v1 = 11771, .v2 = .{}, .v3 = 4475 }), outcome);
}
test "S_Sf_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_S());
}
test "S_Sf_S: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_S(), outcome);
}
test "S_Sf_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_S(), .{ .v1 = 11771, .v2 = .{}, .v3 = 4475 });
}
pub export fn zig_assert_S_Sf_S(lv: c.S_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11771) err = 1;
    if (lv.v3 != 4475) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_S() c.S_Sf_S {
    return .{ .v1 = 11771, .v2 = .{}, .v3 = 4475 };
}

// From CT_Snen_xaa.c:75082:75102
// struct  S_Sf_Sf  {
//   short v1;
//   struct empty v2;
//   struct empty v3;
// };

test "S_Sf_Sf: layout" {
    var lv: c.S_Sf_Sf = undefined;
    try testing.expectSize(c.S_Sf_Sf, 2);
    try testing.expectAlign(c.S_Sf_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "S_Sf_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_Sf(.{ .v1 = 379, .v2 = .{}, .v3 = .{} }), outcome);
}
test "S_Sf_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_Sf());
}
test "S_Sf_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_Sf(), outcome);
}
test "S_Sf_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_Sf(), .{ .v1 = 379, .v2 = .{}, .v3 = .{} });
}
pub export fn zig_assert_S_Sf_Sf(lv: c.S_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 379) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_Sf() c.S_Sf_Sf {
    return .{ .v1 = 379, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xaa.c:75107:75127
// struct  S_Sf_Uc  {
//   short v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "S_Sf_Uc: layout" {
    var lv: c.S_Sf_Uc = undefined;
    try testing.expectSize(c.S_Sf_Uc, 4);
    try testing.expectAlign(c.S_Sf_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "S_Sf_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_Uc(.{ .v1 = 17717, .v2 = .{}, .v3 = 122 }), outcome);
}
test "S_Sf_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_Uc());
}
test "S_Sf_Uc: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_Uc(), outcome);
}
test "S_Sf_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_Uc(), .{ .v1 = 17717, .v2 = .{}, .v3 = 122 });
}
pub export fn zig_assert_S_Sf_Uc(lv: c.S_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17717) err = 1;
    if (lv.v3 != 122) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_Uc() c.S_Sf_Uc {
    return .{ .v1 = 17717, .v2 = .{}, .v3 = 122 };
}

// From CT_Snen_xaa.c:75132:75152
// struct  S_Sf_Ui  {
//   short v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "S_Sf_Ui: layout" {
    var lv: c.S_Sf_Ui = undefined;
    try testing.expectSize(c.S_Sf_Ui, 8);
    try testing.expectAlign(c.S_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Sf_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_Ui(.{ .v1 = 7976, .v2 = .{}, .v3 = 22498 }), outcome);
}
test "S_Sf_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_Ui());
}
test "S_Sf_Ui: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_Ui(), outcome);
}
test "S_Sf_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_Ui(), .{ .v1 = 7976, .v2 = .{}, .v3 = 22498 });
}
pub export fn zig_assert_S_Sf_Ui(lv: c.S_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7976) err = 1;
    if (lv.v3 != 22498) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_Ui() c.S_Sf_Ui {
    return .{ .v1 = 7976, .v2 = .{}, .v3 = 22498 };
}

// From CT_Snen_xaa.c:75157:75177
// struct  S_Sf_Ul  {
//   short v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "S_Sf_Ul: layout" {
    var lv: c.S_Sf_Ul = undefined;
    try testing.expectSize(c.S_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Sf_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_Ul(.{ .v1 = 25701, .v2 = .{}, .v3 = 3715 }), outcome);
}
test "S_Sf_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_Ul());
}
test "S_Sf_Ul: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_Ul(), outcome);
}
test "S_Sf_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_Ul(), .{ .v1 = 25701, .v2 = .{}, .v3 = 3715 });
}
pub export fn zig_assert_S_Sf_Ul(lv: c.S_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25701) err = 1;
    if (lv.v3 != 3715) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_Ul() c.S_Sf_Ul {
    return .{ .v1 = 25701, .v2 = .{}, .v3 = 3715 };
}

// From CT_Snen_xaa.c:75182:75202
// struct  S_Sf_Us  {
//   short v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "S_Sf_Us: layout" {
    var lv: c.S_Sf_Us = undefined;
    try testing.expectSize(c.S_Sf_Us, 4);
    try testing.expectAlign(c.S_Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "S_Sf_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_Us(.{ .v1 = 24018, .v2 = .{}, .v3 = 16059 }), outcome);
}
test "S_Sf_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_Us());
}
test "S_Sf_Us: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_Us(), outcome);
}
test "S_Sf_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_Us(), .{ .v1 = 24018, .v2 = .{}, .v3 = 16059 });
}
pub export fn zig_assert_S_Sf_Us(lv: c.S_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24018) err = 1;
    if (lv.v3 != 16059) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_Us() c.S_Sf_Us {
    return .{ .v1 = 24018, .v2 = .{}, .v3 = 16059 };
}

// From CT_Snen_xaa.c:75207:75227
// struct  S_Sf_Vp  {
//   short v1;
//   struct empty v2;
//   void *v3;
// };

test "S_Sf_Vp: layout" {
    var lv: c.S_Sf_Vp = undefined;
    try testing.expectSize(c.S_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Sf_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Sf_Vp(.{ .v1 = 18536, .v2 = .{}, .v3 = null }), outcome);
}
test "S_Sf_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Sf_Vp());
}
test "S_Sf_Vp: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Sf_Vp(), outcome);
}
test "S_Sf_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Sf_Vp(), .{ .v1 = 18536, .v2 = .{}, .v3 = null });
}
pub export fn zig_assert_S_Sf_Vp(lv: c.S_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18536) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Sf_Vp() c.S_Sf_Vp {
    return .{ .v1 = 18536, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xaa.c:75232:75252
// struct  S_Uc_Sf  {
//   short v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "S_Uc_Sf: layout" {
    var lv: c.S_Uc_Sf = undefined;
    try testing.expectSize(c.S_Uc_Sf, 4);
    try testing.expectAlign(c.S_Uc_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "S_Uc_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Uc_Sf(.{ .v1 = 21409, .v2 = 76, .v3 = .{} }), outcome);
}
test "S_Uc_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_Sf());
}
test "S_Uc_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Uc_Sf(), outcome);
}
test "S_Uc_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_Sf(), .{ .v1 = 21409, .v2 = 76, .v3 = .{} });
}
pub export fn zig_assert_S_Uc_Sf(lv: c.S_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21409) err = 1;
    if (lv.v2 != 76) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_Sf() c.S_Uc_Sf {
    return .{ .v1 = 21409, .v2 = 76, .v3 = .{} };
}

// From CT_Snen_xaa.c:75257:75277
// struct  S_Ui_Sf  {
//   short v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "S_Ui_Sf: layout" {
    var lv: c.S_Ui_Sf = undefined;
    try testing.expectSize(c.S_Ui_Sf, 8);
    try testing.expectAlign(c.S_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Ui_Sf(.{ .v1 = 14752, .v2 = 12866, .v3 = .{} }), outcome);
}
test "S_Ui_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_Sf());
}
test "S_Ui_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Ui_Sf(), outcome);
}
test "S_Ui_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_Sf(), .{ .v1 = 14752, .v2 = 12866, .v3 = .{} });
}
pub export fn zig_assert_S_Ui_Sf(lv: c.S_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14752) err = 1;
    if (lv.v2 != 12866) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_Sf() c.S_Ui_Sf {
    return .{ .v1 = 14752, .v2 = 12866, .v3 = .{} };
}

// From CT_Snen_xaa.c:75282:75302
// struct  S_Ul_Sf  {
//   short v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "S_Ul_Sf: layout" {
    var lv: c.S_Ul_Sf = undefined;
    try testing.expectSize(c.S_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Ul_Sf(.{ .v1 = 408, .v2 = 2724, .v3 = .{} }), outcome);
}
test "S_Ul_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_Sf());
}
test "S_Ul_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Ul_Sf(), outcome);
}
test "S_Ul_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_Sf(), .{ .v1 = 408, .v2 = 2724, .v3 = .{} });
}
pub export fn zig_assert_S_Ul_Sf(lv: c.S_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 408) err = 1;
    if (lv.v2 != 2724) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_Sf() c.S_Ul_Sf {
    return .{ .v1 = 408, .v2 = 2724, .v3 = .{} };
}

// From CT_Snen_xaa.c:75307:75327
// struct  S_Us_Sf  {
//   short v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "S_Us_Sf: layout" {
    var lv: c.S_Us_Sf = undefined;
    try testing.expectSize(c.S_Us_Sf, 4);
    try testing.expectAlign(c.S_Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Us_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Us_Sf(.{ .v1 = 7348, .v2 = 12573, .v3 = .{} }), outcome);
}
test "S_Us_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_Sf());
}
test "S_Us_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Us_Sf(), outcome);
}
test "S_Us_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_Sf(), .{ .v1 = 7348, .v2 = 12573, .v3 = .{} });
}
pub export fn zig_assert_S_Us_Sf(lv: c.S_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7348) err = 1;
    if (lv.v2 != 12573) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_Sf() c.S_Us_Sf {
    return .{ .v1 = 7348, .v2 = 12573, .v3 = .{} };
}

// From CT_Snen_xaa.c:75332:75352
// struct  S_Vp_Sf  {
//   short v1;
//   void *v2;
//   struct empty v3;
// };

test "S_Vp_Sf: layout" {
    var lv: c.S_Vp_Sf = undefined;
    try testing.expectSize(c.S_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_S_Vp_Sf(.{ .v1 = 14709, .v2 = null, .v3 = .{} }), outcome);
}
test "S_Vp_Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_Sf());
}
test "S_Vp_Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_S_Vp_Sf(), outcome);
}
test "S_Vp_Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_Sf(), .{ .v1 = 14709, .v2 = null, .v3 = .{} });
}
pub export fn zig_assert_S_Vp_Sf(lv: c.S_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14709) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_Sf() c.S_Vp_Sf {
    return .{ .v1 = 14709, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xaa.c:75357:75373
// struct  Sf  {
//   struct empty v1;
// };

test "Sf: layout" {
    var lv: c.Sf = undefined;
    try testing.expectSize(c.Sf, 0);
    try testing.expectAlign(c.Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "Sf: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    var outcome = true;
    try testing.expectOutcome(c.assert_Sf(.{ .v1 = .{} }), outcome);
}
test "Sf: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Sf());
}
test "Sf: C passes to Zig" {
    var outcome = true;

    if (builtin.cpu.arch.isPPC()) outcome = false;
    try testing.expectOutcome(c.send_Sf(), outcome);
}
test "Sf: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Sf(), .{ .v1 = .{} });
}
pub export fn zig_assert_Sf(lv: c.Sf) c_int {
    var err: c_int = 0;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf() c.Sf {
    return .{ .v1 = .{} };
}
