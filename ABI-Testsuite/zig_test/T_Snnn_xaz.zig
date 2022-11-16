const std = @import("std");
const testing = @import("testing.zig");
const builtin = @import("builtin");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xaz.h");
});

// From T_Snnn_xaz.c:659:679
// struct  L_Ui_C  {
//   __tsi64 v1;
//   unsigned int v2;
//   char v3;
// };

test "L_Ui_C: layout" {
    var lv: c.L_Ui_C = undefined;
    try testing.expectSize(c.L_Ui_C, 16);
    try testing.expectAlign(c.L_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Ui_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_C(.{ .v1 = 22229, .v2 = 18392, .v3 = 126 }));
}
test "L_Ui_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_C());
}
test "L_Ui_C: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_C());
}
test "L_Ui_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_C(), .{ .v1 = 22229, .v2 = 18392, .v3 = 126 });
}
pub export fn zig_assert_L_Ui_C(lv: c.L_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22229) err = 1;
    if (lv.v2 != 18392) err = 2;
    if (lv.v3 != 126) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_C() c.L_Ui_C {
    return .{ .v1 = 22229, .v2 = 18392, .v3 = 126 };
}

// From T_Snnn_xaz.c:684:704
// struct  L_Ui_D  {
//   __tsi64 v1;
//   unsigned int v2;
//   double v3;
// };

test "L_Ui_D: layout" {
    var lv: c.L_Ui_D = undefined;
    try testing.expectSize(c.L_Ui_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ui_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_D(.{ .v1 = 4364, .v2 = 4043, .v3 = 1.0 }));
}
test "L_Ui_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_D());
}
test "L_Ui_D: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_D());
}
test "L_Ui_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_D(), .{ .v1 = 4364, .v2 = 4043, .v3 = 1.0 });
}
pub export fn zig_assert_L_Ui_D(lv: c.L_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4364) err = 1;
    if (lv.v2 != 4043) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_D() c.L_Ui_D {
    return .{ .v1 = 4364, .v2 = 4043, .v3 = 1.0 };
}

// From T_Snnn_xaz.c:709:729
// struct  L_Ui_F  {
//   __tsi64 v1;
//   unsigned int v2;
//   float v3;
// };

test "L_Ui_F: layout" {
    var lv: c.L_Ui_F = undefined;
    try testing.expectSize(c.L_Ui_F, 16);
    try testing.expectAlign(c.L_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Ui_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_F(.{ .v1 = 15560, .v2 = 31105, .v3 = 0.5 }));
}
test "L_Ui_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_F());
}
test "L_Ui_F: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_F());
}
test "L_Ui_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_F(), .{ .v1 = 15560, .v2 = 31105, .v3 = 0.5 });
}
pub export fn zig_assert_L_Ui_F(lv: c.L_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15560) err = 1;
    if (lv.v2 != 31105) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_F() c.L_Ui_F {
    return .{ .v1 = 15560, .v2 = 31105, .v3 = 0.5 };
}

// From T_Snnn_xaz.c:734:754
// struct  L_Ui_I  {
//   __tsi64 v1;
//   unsigned int v2;
//   int v3;
// };

test "L_Ui_I: layout" {
    var lv: c.L_Ui_I = undefined;
    try testing.expectSize(c.L_Ui_I, 16);
    try testing.expectAlign(c.L_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Ui_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_I(.{ .v1 = 18807, .v2 = 29443, .v3 = 31384 }));
}
test "L_Ui_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_I());
}
test "L_Ui_I: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_I());
}
test "L_Ui_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_I(), .{ .v1 = 18807, .v2 = 29443, .v3 = 31384 });
}
pub export fn zig_assert_L_Ui_I(lv: c.L_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18807) err = 1;
    if (lv.v2 != 29443) err = 2;
    if (lv.v3 != 31384) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_I() c.L_Ui_I {
    return .{ .v1 = 18807, .v2 = 29443, .v3 = 31384 };
}

// From T_Snnn_xaz.c:759:779
// struct  L_Ui_Ip  {
//   __tsi64 v1;
//   unsigned int v2;
//   int *v3;
// };

test "L_Ui_Ip: layout" {
    var lv: c.L_Ui_Ip = undefined;
    try testing.expectSize(c.L_Ui_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ui_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_Ip(.{ .v1 = 21683, .v2 = 6694, .v3 = null }));
}
test "L_Ui_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_Ip());
}
test "L_Ui_Ip: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_Ip());
}
test "L_Ui_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_Ip(), .{ .v1 = 21683, .v2 = 6694, .v3 = null });
}
pub export fn zig_assert_L_Ui_Ip(lv: c.L_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21683) err = 1;
    if (lv.v2 != 6694) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_Ip() c.L_Ui_Ip {
    return .{ .v1 = 21683, .v2 = 6694, .v3 = null };
}

// From T_Snnn_xaz.c:784:804
// struct  L_Ui_L  {
//   __tsi64 v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "L_Ui_L: layout" {
    var lv: c.L_Ui_L = undefined;
    try testing.expectSize(c.L_Ui_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ui_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_L(.{ .v1 = 30784, .v2 = 20862, .v3 = 22931 }));
}
test "L_Ui_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_L());
}
test "L_Ui_L: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_L());
}
test "L_Ui_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_L(), .{ .v1 = 30784, .v2 = 20862, .v3 = 22931 });
}
pub export fn zig_assert_L_Ui_L(lv: c.L_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30784) err = 1;
    if (lv.v2 != 20862) err = 2;
    if (lv.v3 != 22931) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_L() c.L_Ui_L {
    return .{ .v1 = 30784, .v2 = 20862, .v3 = 22931 };
}

// From T_Snnn_xaz.c:809:829
// struct  L_Ui_S  {
//   __tsi64 v1;
//   unsigned int v2;
//   short v3;
// };

test "L_Ui_S: layout" {
    var lv: c.L_Ui_S = undefined;
    try testing.expectSize(c.L_Ui_S, 16);
    try testing.expectAlign(c.L_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Ui_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_S(.{ .v1 = 854, .v2 = 17586, .v3 = 6140 }));
}
test "L_Ui_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_S());
}
test "L_Ui_S: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_S());
}
test "L_Ui_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_S(), .{ .v1 = 854, .v2 = 17586, .v3 = 6140 });
}
pub export fn zig_assert_L_Ui_S(lv: c.L_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 854) err = 1;
    if (lv.v2 != 17586) err = 2;
    if (lv.v3 != 6140) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_S() c.L_Ui_S {
    return .{ .v1 = 854, .v2 = 17586, .v3 = 6140 };
}

// From T_Snnn_xaz.c:834:854
// struct  L_Ui_Uc  {
//   __tsi64 v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "L_Ui_Uc: layout" {
    var lv: c.L_Ui_Uc = undefined;
    try testing.expectSize(c.L_Ui_Uc, 16);
    try testing.expectAlign(c.L_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Ui_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_Uc(.{ .v1 = 3456, .v2 = 23186, .v3 = 19 }));
}
test "L_Ui_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_Uc());
}
test "L_Ui_Uc: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_Uc());
}
test "L_Ui_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_Uc(), .{ .v1 = 3456, .v2 = 23186, .v3 = 19 });
}
pub export fn zig_assert_L_Ui_Uc(lv: c.L_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3456) err = 1;
    if (lv.v2 != 23186) err = 2;
    if (lv.v3 != 19) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_Uc() c.L_Ui_Uc {
    return .{ .v1 = 3456, .v2 = 23186, .v3 = 19 };
}

// From T_Snnn_xaz.c:859:879
// struct  L_Ui_Ui  {
//   __tsi64 v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "L_Ui_Ui: layout" {
    var lv: c.L_Ui_Ui = undefined;
    try testing.expectSize(c.L_Ui_Ui, 16);
    try testing.expectAlign(c.L_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Ui_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_Ui(.{ .v1 = 32273, .v2 = 8038, .v3 = 21388 }));
}
test "L_Ui_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_Ui());
}
test "L_Ui_Ui: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_Ui());
}
test "L_Ui_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_Ui(), .{ .v1 = 32273, .v2 = 8038, .v3 = 21388 });
}
pub export fn zig_assert_L_Ui_Ui(lv: c.L_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32273) err = 1;
    if (lv.v2 != 8038) err = 2;
    if (lv.v3 != 21388) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_Ui() c.L_Ui_Ui {
    return .{ .v1 = 32273, .v2 = 8038, .v3 = 21388 };
}

// From T_Snnn_xaz.c:884:904
// struct  L_Ui_Ul  {
//   __tsi64 v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "L_Ui_Ul: layout" {
    var lv: c.L_Ui_Ul = undefined;
    try testing.expectSize(c.L_Ui_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ui_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_Ul(.{ .v1 = 8766, .v2 = 5102, .v3 = 22976 }));
}
test "L_Ui_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_Ul());
}
test "L_Ui_Ul: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_Ul());
}
test "L_Ui_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_Ul(), .{ .v1 = 8766, .v2 = 5102, .v3 = 22976 });
}
pub export fn zig_assert_L_Ui_Ul(lv: c.L_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8766) err = 1;
    if (lv.v2 != 5102) err = 2;
    if (lv.v3 != 22976) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_Ul() c.L_Ui_Ul {
    return .{ .v1 = 8766, .v2 = 5102, .v3 = 22976 };
}

// From T_Snnn_xaz.c:909:929
// struct  L_Ui_Us  {
//   __tsi64 v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "L_Ui_Us: layout" {
    var lv: c.L_Ui_Us = undefined;
    try testing.expectSize(c.L_Ui_Us, 16);
    try testing.expectAlign(c.L_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Ui_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_Us(.{ .v1 = 9990, .v2 = 27090, .v3 = 3983 }));
}
test "L_Ui_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_Us());
}
test "L_Ui_Us: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_Us());
}
test "L_Ui_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_Us(), .{ .v1 = 9990, .v2 = 27090, .v3 = 3983 });
}
pub export fn zig_assert_L_Ui_Us(lv: c.L_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9990) err = 1;
    if (lv.v2 != 27090) err = 2;
    if (lv.v3 != 3983) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_Us() c.L_Ui_Us {
    return .{ .v1 = 9990, .v2 = 27090, .v3 = 3983 };
}

// From T_Snnn_xaz.c:934:954
// struct  L_Ui_Vp  {
//   __tsi64 v1;
//   unsigned int v2;
//   void *v3;
// };

test "L_Ui_Vp: layout" {
    var lv: c.L_Ui_Vp = undefined;
    try testing.expectSize(c.L_Ui_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Ui_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ui_Vp(.{ .v1 = 9177, .v2 = 3, .v3 = null }));
}
test "L_Ui_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ui_Vp());
}
test "L_Ui_Vp: C passes to Zig" {
    try testing.expectOk(c.send_L_Ui_Vp());
}
test "L_Ui_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ui_Vp(), .{ .v1 = 9177, .v2 = 3, .v3 = null });
}
pub export fn zig_assert_L_Ui_Vp(lv: c.L_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9177) err = 1;
    if (lv.v2 != 3) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ui_Vp() c.L_Ui_Vp {
    return .{ .v1 = 9177, .v2 = 3, .v3 = null };
}

// From T_Snnn_xaz.c:959:977
// struct  L_Ul  {
//   __tsi64 v1;
//   __tsu64 v2;
// };

test "L_Ul: layout" {
    var lv: c.L_Ul = undefined;
    try testing.expectSize(c.L_Ul, 16);
    try testing.expectAlign(c.L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul(.{ .v1 = 17256, .v2 = 28277 }));
}
test "L_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul());
}
test "L_Ul: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul());
}
test "L_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul(), .{ .v1 = 17256, .v2 = 28277 });
}
pub export fn zig_assert_L_Ul(lv: c.L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17256) err = 1;
    if (lv.v2 != 28277) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul() c.L_Ul {
    return .{ .v1 = 17256, .v2 = 28277 };
}

// From T_Snnn_xaz.c:1706:1726
// struct  L_Ul_C  {
//   __tsi64 v1;
//   __tsu64 v2;
//   char v3;
// };

test "L_Ul_C: layout" {
    var lv: c.L_Ul_C = undefined;
    try testing.expectSize(c.L_Ul_C, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_C(.{ .v1 = 11968, .v2 = 8997, .v3 = 36 }));
}
test "L_Ul_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_C());
}
test "L_Ul_C: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_C());
}
test "L_Ul_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_C(), .{ .v1 = 11968, .v2 = 8997, .v3 = 36 });
}
pub export fn zig_assert_L_Ul_C(lv: c.L_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11968) err = 1;
    if (lv.v2 != 8997) err = 2;
    if (lv.v3 != 36) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_C() c.L_Ul_C {
    return .{ .v1 = 11968, .v2 = 8997, .v3 = 36 };
}

// From T_Snnn_xaz.c:1731:1751
// struct  L_Ul_D  {
//   __tsi64 v1;
//   __tsu64 v2;
//   double v3;
// };

test "L_Ul_D: layout" {
    var lv: c.L_Ul_D = undefined;
    try testing.expectSize(c.L_Ul_D, 24);
    try testing.expectAlign(c.L_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_D(.{ .v1 = 7306, .v2 = 19278, .v3 = 0.875 }));
}
test "L_Ul_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_D());
}
test "L_Ul_D: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_D());
}
test "L_Ul_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_D(), .{ .v1 = 7306, .v2 = 19278, .v3 = 0.875 });
}
pub export fn zig_assert_L_Ul_D(lv: c.L_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7306) err = 1;
    if (lv.v2 != 19278) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_D() c.L_Ul_D {
    return .{ .v1 = 7306, .v2 = 19278, .v3 = 0.875 };
}

// From T_Snnn_xaz.c:1756:1776
// struct  L_Ul_F  {
//   __tsi64 v1;
//   __tsu64 v2;
//   float v3;
// };

test "L_Ul_F: layout" {
    var lv: c.L_Ul_F = undefined;
    try testing.expectSize(c.L_Ul_F, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_F(.{ .v1 = 1649, .v2 = 17697, .v3 = 1.0 }));
}
test "L_Ul_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_F());
}
test "L_Ul_F: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_F());
}
test "L_Ul_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_F(), .{ .v1 = 1649, .v2 = 17697, .v3 = 1.0 });
}
pub export fn zig_assert_L_Ul_F(lv: c.L_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1649) err = 1;
    if (lv.v2 != 17697) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_F() c.L_Ul_F {
    return .{ .v1 = 1649, .v2 = 17697, .v3 = 1.0 };
}

// From T_Snnn_xaz.c:1781:1801
// struct  L_Ul_I  {
//   __tsi64 v1;
//   __tsu64 v2;
//   int v3;
// };

test "L_Ul_I: layout" {
    var lv: c.L_Ul_I = undefined;
    try testing.expectSize(c.L_Ul_I, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_I(.{ .v1 = 21587, .v2 = 3617, .v3 = 29303 }));
}
test "L_Ul_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_I());
}
test "L_Ul_I: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_I());
}
test "L_Ul_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_I(), .{ .v1 = 21587, .v2 = 3617, .v3 = 29303 });
}
pub export fn zig_assert_L_Ul_I(lv: c.L_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21587) err = 1;
    if (lv.v2 != 3617) err = 2;
    if (lv.v3 != 29303) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_I() c.L_Ul_I {
    return .{ .v1 = 21587, .v2 = 3617, .v3 = 29303 };
}

// From T_Snnn_xaz.c:1806:1826
// struct  L_Ul_Ip  {
//   __tsi64 v1;
//   __tsu64 v2;
//   int *v3;
// };

test "L_Ul_Ip: layout" {
    var lv: c.L_Ul_Ip = undefined;
    try testing.expectSize(c.L_Ul_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_Ip(.{ .v1 = 31055, .v2 = 7464, .v3 = null }));
}
test "L_Ul_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_Ip());
}
test "L_Ul_Ip: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_Ip());
}
test "L_Ul_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_Ip(), .{ .v1 = 31055, .v2 = 7464, .v3 = null });
}
pub export fn zig_assert_L_Ul_Ip(lv: c.L_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31055) err = 1;
    if (lv.v2 != 7464) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_Ip() c.L_Ul_Ip {
    return .{ .v1 = 31055, .v2 = 7464, .v3 = null };
}

// From T_Snnn_xaz.c:1831:1851
// struct  L_Ul_L  {
//   __tsi64 v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "L_Ul_L: layout" {
    var lv: c.L_Ul_L = undefined;
    try testing.expectSize(c.L_Ul_L, 24);
    try testing.expectAlign(c.L_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_L(.{ .v1 = 29152, .v2 = 21630, .v3 = 3748 }));
}
test "L_Ul_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_L());
}
test "L_Ul_L: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_L());
}
test "L_Ul_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_L(), .{ .v1 = 29152, .v2 = 21630, .v3 = 3748 });
}
pub export fn zig_assert_L_Ul_L(lv: c.L_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29152) err = 1;
    if (lv.v2 != 21630) err = 2;
    if (lv.v3 != 3748) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_L() c.L_Ul_L {
    return .{ .v1 = 29152, .v2 = 21630, .v3 = 3748 };
}

// From T_Snnn_xaz.c:1856:1876
// struct  L_Ul_S  {
//   __tsi64 v1;
//   __tsu64 v2;
//   short v3;
// };

test "L_Ul_S: layout" {
    var lv: c.L_Ul_S = undefined;
    try testing.expectSize(c.L_Ul_S, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_S(.{ .v1 = 9311, .v2 = 669, .v3 = 23564 }));
}
test "L_Ul_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_S());
}
test "L_Ul_S: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_S());
}
test "L_Ul_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_S(), .{ .v1 = 9311, .v2 = 669, .v3 = 23564 });
}
pub export fn zig_assert_L_Ul_S(lv: c.L_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9311) err = 1;
    if (lv.v2 != 669) err = 2;
    if (lv.v3 != 23564) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_S() c.L_Ul_S {
    return .{ .v1 = 9311, .v2 = 669, .v3 = 23564 };
}

// From T_Snnn_xaz.c:1881:1901
// struct  L_Ul_Uc  {
//   __tsi64 v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "L_Ul_Uc: layout" {
    var lv: c.L_Ul_Uc = undefined;
    try testing.expectSize(c.L_Ul_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_Uc(.{ .v1 = 23049, .v2 = 12157, .v3 = 42 }));
}
test "L_Ul_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_Uc());
}
test "L_Ul_Uc: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_Uc());
}
test "L_Ul_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_Uc(), .{ .v1 = 23049, .v2 = 12157, .v3 = 42 });
}
pub export fn zig_assert_L_Ul_Uc(lv: c.L_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23049) err = 1;
    if (lv.v2 != 12157) err = 2;
    if (lv.v3 != 42) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_Uc() c.L_Ul_Uc {
    return .{ .v1 = 23049, .v2 = 12157, .v3 = 42 };
}

// From T_Snnn_xaz.c:1906:1926
// struct  L_Ul_Ui  {
//   __tsi64 v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "L_Ul_Ui: layout" {
    var lv: c.L_Ul_Ui = undefined;
    try testing.expectSize(c.L_Ul_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_Ui(.{ .v1 = 20457, .v2 = 8644, .v3 = 22485 }));
}
test "L_Ul_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_Ui());
}
test "L_Ul_Ui: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_Ui());
}
test "L_Ul_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_Ui(), .{ .v1 = 20457, .v2 = 8644, .v3 = 22485 });
}
pub export fn zig_assert_L_Ul_Ui(lv: c.L_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20457) err = 1;
    if (lv.v2 != 8644) err = 2;
    if (lv.v3 != 22485) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_Ui() c.L_Ul_Ui {
    return .{ .v1 = 20457, .v2 = 8644, .v3 = 22485 };
}

// From T_Snnn_xaz.c:1931:1951
// struct  L_Ul_Ul  {
//   __tsi64 v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "L_Ul_Ul: layout" {
    var lv: c.L_Ul_Ul = undefined;
    try testing.expectSize(c.L_Ul_Ul, 24);
    try testing.expectAlign(c.L_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_Ul(.{ .v1 = 18808, .v2 = 30770, .v3 = 20216 }));
}
test "L_Ul_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_Ul());
}
test "L_Ul_Ul: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_Ul());
}
test "L_Ul_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_Ul(), .{ .v1 = 18808, .v2 = 30770, .v3 = 20216 });
}
pub export fn zig_assert_L_Ul_Ul(lv: c.L_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18808) err = 1;
    if (lv.v2 != 30770) err = 2;
    if (lv.v3 != 20216) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_Ul() c.L_Ul_Ul {
    return .{ .v1 = 18808, .v2 = 30770, .v3 = 20216 };
}

// From T_Snnn_xaz.c:1956:1976
// struct  L_Ul_Us  {
//   __tsi64 v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "L_Ul_Us: layout" {
    var lv: c.L_Ul_Us = undefined;
    try testing.expectSize(c.L_Ul_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_Us(.{ .v1 = 19157, .v2 = 2550, .v3 = 22220 }));
}
test "L_Ul_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_Us());
}
test "L_Ul_Us: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_Us());
}
test "L_Ul_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_Us(), .{ .v1 = 19157, .v2 = 2550, .v3 = 22220 });
}
pub export fn zig_assert_L_Ul_Us(lv: c.L_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19157) err = 1;
    if (lv.v2 != 2550) err = 2;
    if (lv.v3 != 22220) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_Us() c.L_Ul_Us {
    return .{ .v1 = 19157, .v2 = 2550, .v3 = 22220 };
}

// From T_Snnn_xaz.c:1981:2001
// struct  L_Ul_Vp  {
//   __tsi64 v1;
//   __tsu64 v2;
//   void *v3;
// };

test "L_Ul_Vp: layout" {
    var lv: c.L_Ul_Vp = undefined;
    try testing.expectSize(c.L_Ul_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "L_Ul_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Ul_Vp(.{ .v1 = 27157, .v2 = 30310, .v3 = null }));
}
test "L_Ul_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Ul_Vp());
}
test "L_Ul_Vp: C passes to Zig" {
    try testing.expectOk(c.send_L_Ul_Vp());
}
test "L_Ul_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Ul_Vp(), .{ .v1 = 27157, .v2 = 30310, .v3 = null });
}
pub export fn zig_assert_L_Ul_Vp(lv: c.L_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27157) err = 1;
    if (lv.v2 != 30310) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Ul_Vp() c.L_Ul_Vp {
    return .{ .v1 = 27157, .v2 = 30310, .v3 = null };
}

// From T_Snnn_xaz.c:2006:2024
// struct  L_Us  {
//   __tsi64 v1;
//   unsigned short v2;
// };

test "L_Us: layout" {
    var lv: c.L_Us = undefined;
    try testing.expectSize(c.L_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us(.{ .v1 = 5907, .v2 = 28729 }));
}
test "L_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us());
}
test "L_Us: C passes to Zig" {
    try testing.expectOk(c.send_L_Us());
}
test "L_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us(), .{ .v1 = 5907, .v2 = 28729 });
}
pub export fn zig_assert_L_Us(lv: c.L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5907) err = 1;
    if (lv.v2 != 28729) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us() c.L_Us {
    return .{ .v1 = 5907, .v2 = 28729 };
}

// From T_Snnn_xaz.c:2753:2773
// struct  L_Us_C  {
//   __tsi64 v1;
//   unsigned short v2;
//   char v3;
// };

test "L_Us_C: layout" {
    var lv: c.L_Us_C = undefined;
    try testing.expectSize(c.L_Us_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_Us_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_C(.{ .v1 = 28519, .v2 = 1409, .v3 = 28 }));
}
test "L_Us_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_C());
}
test "L_Us_C: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_C());
}
test "L_Us_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_C(), .{ .v1 = 28519, .v2 = 1409, .v3 = 28 });
}
pub export fn zig_assert_L_Us_C(lv: c.L_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28519) err = 1;
    if (lv.v2 != 1409) err = 2;
    if (lv.v3 != 28) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_C() c.L_Us_C {
    return .{ .v1 = 28519, .v2 = 1409, .v3 = 28 };
}

// From T_Snnn_xaz.c:2778:2798
// struct  L_Us_D  {
//   __tsi64 v1;
//   unsigned short v2;
//   double v3;
// };

test "L_Us_D: layout" {
    var lv: c.L_Us_D = undefined;
    try testing.expectSize(c.L_Us_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Us_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_D(.{ .v1 = 31807, .v2 = 27910, .v3 = -0.25 }));
}
test "L_Us_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_D());
}
test "L_Us_D: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_D());
}
test "L_Us_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_D(), .{ .v1 = 31807, .v2 = 27910, .v3 = -0.25 });
}
pub export fn zig_assert_L_Us_D(lv: c.L_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31807) err = 1;
    if (lv.v2 != 27910) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_D() c.L_Us_D {
    return .{ .v1 = 31807, .v2 = 27910, .v3 = -0.25 };
}

// From T_Snnn_xaz.c:2803:2823
// struct  L_Us_F  {
//   __tsi64 v1;
//   unsigned short v2;
//   float v3;
// };

test "L_Us_F: layout" {
    var lv: c.L_Us_F = undefined;
    try testing.expectSize(c.L_Us_F, 16);
    try testing.expectAlign(c.L_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Us_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_F(.{ .v1 = 11891, .v2 = 17537, .v3 = 0.5 }));
}
test "L_Us_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_F());
}
test "L_Us_F: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_F());
}
test "L_Us_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_F(), .{ .v1 = 11891, .v2 = 17537, .v3 = 0.5 });
}
pub export fn zig_assert_L_Us_F(lv: c.L_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11891) err = 1;
    if (lv.v2 != 17537) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_F() c.L_Us_F {
    return .{ .v1 = 11891, .v2 = 17537, .v3 = 0.5 };
}

// From T_Snnn_xaz.c:2828:2848
// struct  L_Us_I  {
//   __tsi64 v1;
//   unsigned short v2;
//   int v3;
// };

test "L_Us_I: layout" {
    var lv: c.L_Us_I = undefined;
    try testing.expectSize(c.L_Us_I, 16);
    try testing.expectAlign(c.L_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Us_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_I(.{ .v1 = 29179, .v2 = 29384, .v3 = 6758 }));
}
test "L_Us_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_I());
}
test "L_Us_I: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_I());
}
test "L_Us_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_I(), .{ .v1 = 29179, .v2 = 29384, .v3 = 6758 });
}
pub export fn zig_assert_L_Us_I(lv: c.L_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29179) err = 1;
    if (lv.v2 != 29384) err = 2;
    if (lv.v3 != 6758) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_I() c.L_Us_I {
    return .{ .v1 = 29179, .v2 = 29384, .v3 = 6758 };
}

// From T_Snnn_xaz.c:2853:2873
// struct  L_Us_Ip  {
//   __tsi64 v1;
//   unsigned short v2;
//   int *v3;
// };

test "L_Us_Ip: layout" {
    var lv: c.L_Us_Ip = undefined;
    try testing.expectSize(c.L_Us_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Us_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_Ip(.{ .v1 = 26415, .v2 = 30514, .v3 = null }));
}
test "L_Us_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_Ip());
}
test "L_Us_Ip: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_Ip());
}
test "L_Us_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_Ip(), .{ .v1 = 26415, .v2 = 30514, .v3 = null });
}
pub export fn zig_assert_L_Us_Ip(lv: c.L_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26415) err = 1;
    if (lv.v2 != 30514) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_Ip() c.L_Us_Ip {
    return .{ .v1 = 26415, .v2 = 30514, .v3 = null };
}

// From T_Snnn_xaz.c:2878:2898
// struct  L_Us_L  {
//   __tsi64 v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "L_Us_L: layout" {
    var lv: c.L_Us_L = undefined;
    try testing.expectSize(c.L_Us_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Us_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_L(.{ .v1 = 16528, .v2 = 20020, .v3 = 10302 }));
}
test "L_Us_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_L());
}
test "L_Us_L: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_L());
}
test "L_Us_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_L(), .{ .v1 = 16528, .v2 = 20020, .v3 = 10302 });
}
pub export fn zig_assert_L_Us_L(lv: c.L_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16528) err = 1;
    if (lv.v2 != 20020) err = 2;
    if (lv.v3 != 10302) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_L() c.L_Us_L {
    return .{ .v1 = 16528, .v2 = 20020, .v3 = 10302 };
}

// From T_Snnn_xaz.c:2903:2923
// struct  L_Us_S  {
//   __tsi64 v1;
//   unsigned short v2;
//   short v3;
// };

test "L_Us_S: layout" {
    var lv: c.L_Us_S = undefined;
    try testing.expectSize(c.L_Us_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_Us_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_S(.{ .v1 = 23024, .v2 = 26739, .v3 = 11991 }));
}
test "L_Us_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_S());
}
test "L_Us_S: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_S());
}
test "L_Us_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_S(), .{ .v1 = 23024, .v2 = 26739, .v3 = 11991 });
}
pub export fn zig_assert_L_Us_S(lv: c.L_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23024) err = 1;
    if (lv.v2 != 26739) err = 2;
    if (lv.v3 != 11991) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_S() c.L_Us_S {
    return .{ .v1 = 23024, .v2 = 26739, .v3 = 11991 };
}

// From T_Snnn_xaz.c:2928:2948
// struct  L_Us_Uc  {
//   __tsi64 v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "L_Us_Uc: layout" {
    var lv: c.L_Us_Uc = undefined;
    try testing.expectSize(c.L_Us_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_Us_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_Uc(.{ .v1 = 8423, .v2 = 26054, .v3 = 29 }));
}
test "L_Us_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_Uc());
}
test "L_Us_Uc: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_Uc());
}
test "L_Us_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_Uc(), .{ .v1 = 8423, .v2 = 26054, .v3 = 29 });
}
pub export fn zig_assert_L_Us_Uc(lv: c.L_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8423) err = 1;
    if (lv.v2 != 26054) err = 2;
    if (lv.v3 != 29) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_Uc() c.L_Us_Uc {
    return .{ .v1 = 8423, .v2 = 26054, .v3 = 29 };
}

// From T_Snnn_xaz.c:2953:2973
// struct  L_Us_Ui  {
//   __tsi64 v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "L_Us_Ui: layout" {
    var lv: c.L_Us_Ui = undefined;
    try testing.expectSize(c.L_Us_Ui, 16);
    try testing.expectAlign(c.L_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "L_Us_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_Ui(.{ .v1 = 8434, .v2 = 21731, .v3 = 32633 }));
}
test "L_Us_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_Ui());
}
test "L_Us_Ui: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_Ui());
}
test "L_Us_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_Ui(), .{ .v1 = 8434, .v2 = 21731, .v3 = 32633 });
}
pub export fn zig_assert_L_Us_Ui(lv: c.L_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8434) err = 1;
    if (lv.v2 != 21731) err = 2;
    if (lv.v3 != 32633) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_Ui() c.L_Us_Ui {
    return .{ .v1 = 8434, .v2 = 21731, .v3 = 32633 };
}

// From T_Snnn_xaz.c:2978:2998
// struct  L_Us_Ul  {
//   __tsi64 v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "L_Us_Ul: layout" {
    var lv: c.L_Us_Ul = undefined;
    try testing.expectSize(c.L_Us_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Us_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_Ul(.{ .v1 = 28279, .v2 = 29535, .v3 = 18832 }));
}
test "L_Us_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_Ul());
}
test "L_Us_Ul: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_Ul());
}
test "L_Us_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_Ul(), .{ .v1 = 28279, .v2 = 29535, .v3 = 18832 });
}
pub export fn zig_assert_L_Us_Ul(lv: c.L_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28279) err = 1;
    if (lv.v2 != 29535) err = 2;
    if (lv.v3 != 18832) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_Ul() c.L_Us_Ul {
    return .{ .v1 = 28279, .v2 = 29535, .v3 = 18832 };
}

// From T_Snnn_xaz.c:3003:3023
// struct  L_Us_Us  {
//   __tsi64 v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "L_Us_Us: layout" {
    var lv: c.L_Us_Us = undefined;
    try testing.expectSize(c.L_Us_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "L_Us_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_Us(.{ .v1 = 2582, .v2 = 26820, .v3 = 32507 }));
}
test "L_Us_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_Us());
}
test "L_Us_Us: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_Us());
}
test "L_Us_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_Us(), .{ .v1 = 2582, .v2 = 26820, .v3 = 32507 });
}
pub export fn zig_assert_L_Us_Us(lv: c.L_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2582) err = 1;
    if (lv.v2 != 26820) err = 2;
    if (lv.v3 != 32507) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_Us() c.L_Us_Us {
    return .{ .v1 = 2582, .v2 = 26820, .v3 = 32507 };
}

// From T_Snnn_xaz.c:3028:3048
// struct  L_Us_Vp  {
//   __tsi64 v1;
//   unsigned short v2;
//   void *v3;
// };

test "L_Us_Vp: layout" {
    var lv: c.L_Us_Vp = undefined;
    try testing.expectSize(c.L_Us_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Us_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Us_Vp(.{ .v1 = 4984, .v2 = 31334, .v3 = null }));
}
test "L_Us_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Us_Vp());
}
test "L_Us_Vp: C passes to Zig" {
    try testing.expectOk(c.send_L_Us_Vp());
}
test "L_Us_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Us_Vp(), .{ .v1 = 4984, .v2 = 31334, .v3 = null });
}
pub export fn zig_assert_L_Us_Vp(lv: c.L_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4984) err = 1;
    if (lv.v2 != 31334) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Us_Vp() c.L_Us_Vp {
    return .{ .v1 = 4984, .v2 = 31334, .v3 = null };
}

// From T_Snnn_xaz.c:3053:3071
// struct  L_Vp  {
//   __tsi64 v1;
//   void *v2;
// };

test "L_Vp: layout" {
    var lv: c.L_Vp = undefined;
    try testing.expectSize(c.L_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "L_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp(.{ .v1 = 13130, .v2 = null }));
}
test "L_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp());
}
test "L_Vp: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp());
}
test "L_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp(), .{ .v1 = 13130, .v2 = null });
}
pub export fn zig_assert_L_Vp(lv: c.L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13130) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp() c.L_Vp {
    return .{ .v1 = 13130, .v2 = null };
}

// From T_Snnn_xaz.c:3800:3820
// struct  L_Vp_C  {
//   __tsi64 v1;
//   void *v2;
//   char v3;
// };

test "L_Vp_C: layout" {
    var lv: c.L_Vp_C = undefined;
    try testing.expectSize(c.L_Vp_C, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_C(.{ .v1 = 18374, .v2 = null, .v3 = 59 }));
}
test "L_Vp_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_C());
}
test "L_Vp_C: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_C());
}
test "L_Vp_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_C(), .{ .v1 = 18374, .v2 = null, .v3 = 59 });
}
pub export fn zig_assert_L_Vp_C(lv: c.L_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18374) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 59) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_C() c.L_Vp_C {
    return .{ .v1 = 18374, .v2 = null, .v3 = 59 };
}

// From T_Snnn_xaz.c:3825:3845
// struct  L_Vp_D  {
//   __tsi64 v1;
//   void *v2;
//   double v3;
// };

test "L_Vp_D: layout" {
    var lv: c.L_Vp_D = undefined;
    try testing.expectSize(c.L_Vp_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_D(.{ .v1 = 2644, .v2 = null, .v3 = -0.25 }));
}
test "L_Vp_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_D());
}
test "L_Vp_D: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_D());
}
test "L_Vp_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_D(), .{ .v1 = 2644, .v2 = null, .v3 = -0.25 });
}
pub export fn zig_assert_L_Vp_D(lv: c.L_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2644) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_D() c.L_Vp_D {
    return .{ .v1 = 2644, .v2 = null, .v3 = -0.25 };
}

// From T_Snnn_xaz.c:3850:3870
// struct  L_Vp_F  {
//   __tsi64 v1;
//   void *v2;
//   float v3;
// };

test "L_Vp_F: layout" {
    var lv: c.L_Vp_F = undefined;
    try testing.expectSize(c.L_Vp_F, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_F(.{ .v1 = 5066, .v2 = null, .v3 = 0.875 }));
}
test "L_Vp_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_F());
}
test "L_Vp_F: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_F());
}
test "L_Vp_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_F(), .{ .v1 = 5066, .v2 = null, .v3 = 0.875 });
}
pub export fn zig_assert_L_Vp_F(lv: c.L_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5066) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_F() c.L_Vp_F {
    return .{ .v1 = 5066, .v2 = null, .v3 = 0.875 };
}

// From T_Snnn_xaz.c:3875:3895
// struct  L_Vp_I  {
//   __tsi64 v1;
//   void *v2;
//   int v3;
// };

test "L_Vp_I: layout" {
    var lv: c.L_Vp_I = undefined;
    try testing.expectSize(c.L_Vp_I, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_I(.{ .v1 = 7437, .v2 = null, .v3 = 2600 }));
}
test "L_Vp_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_I());
}
test "L_Vp_I: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_I());
}
test "L_Vp_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_I(), .{ .v1 = 7437, .v2 = null, .v3 = 2600 });
}
pub export fn zig_assert_L_Vp_I(lv: c.L_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7437) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 2600) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_I() c.L_Vp_I {
    return .{ .v1 = 7437, .v2 = null, .v3 = 2600 };
}

// From T_Snnn_xaz.c:3900:3920
// struct  L_Vp_Ip  {
//   __tsi64 v1;
//   void *v2;
//   int *v3;
// };

test "L_Vp_Ip: layout" {
    var lv: c.L_Vp_Ip = undefined;
    try testing.expectSize(c.L_Vp_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_Ip(.{ .v1 = 8227, .v2 = null, .v3 = null }));
}
test "L_Vp_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_Ip());
}
test "L_Vp_Ip: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_Ip());
}
test "L_Vp_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_Ip(), .{ .v1 = 8227, .v2 = null, .v3 = null });
}
pub export fn zig_assert_L_Vp_Ip(lv: c.L_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8227) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_Ip() c.L_Vp_Ip {
    return .{ .v1 = 8227, .v2 = null, .v3 = null };
}

// From T_Snnn_xaz.c:3925:3945
// struct  L_Vp_L  {
//   __tsi64 v1;
//   void *v2;
//   __tsi64 v3;
// };

test "L_Vp_L: layout" {
    var lv: c.L_Vp_L = undefined;
    try testing.expectSize(c.L_Vp_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_L(.{ .v1 = 26762, .v2 = null, .v3 = 4187 }));
}
test "L_Vp_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_L());
}
test "L_Vp_L: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_L());
}
test "L_Vp_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_L(), .{ .v1 = 26762, .v2 = null, .v3 = 4187 });
}
pub export fn zig_assert_L_Vp_L(lv: c.L_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26762) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4187) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_L() c.L_Vp_L {
    return .{ .v1 = 26762, .v2 = null, .v3 = 4187 };
}

// From T_Snnn_xaz.c:3950:3970
// struct  L_Vp_S  {
//   __tsi64 v1;
//   void *v2;
//   short v3;
// };

test "L_Vp_S: layout" {
    var lv: c.L_Vp_S = undefined;
    try testing.expectSize(c.L_Vp_S, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_S(.{ .v1 = 32517, .v2 = null, .v3 = 5751 }));
}
test "L_Vp_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_S());
}
test "L_Vp_S: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_S());
}
test "L_Vp_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_S(), .{ .v1 = 32517, .v2 = null, .v3 = 5751 });
}
pub export fn zig_assert_L_Vp_S(lv: c.L_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32517) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 5751) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_S() c.L_Vp_S {
    return .{ .v1 = 32517, .v2 = null, .v3 = 5751 };
}

// From T_Snnn_xaz.c:3975:3995
// struct  L_Vp_Uc  {
//   __tsi64 v1;
//   void *v2;
//   unsigned char v3;
// };

test "L_Vp_Uc: layout" {
    var lv: c.L_Vp_Uc = undefined;
    try testing.expectSize(c.L_Vp_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_Uc(.{ .v1 = 20175, .v2 = null, .v3 = 51 }));
}
test "L_Vp_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_Uc());
}
test "L_Vp_Uc: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_Uc());
}
test "L_Vp_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_Uc(), .{ .v1 = 20175, .v2 = null, .v3 = 51 });
}
pub export fn zig_assert_L_Vp_Uc(lv: c.L_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20175) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 51) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_Uc() c.L_Vp_Uc {
    return .{ .v1 = 20175, .v2 = null, .v3 = 51 };
}

// From T_Snnn_xaz.c:4000:4020
// struct  L_Vp_Ui  {
//   __tsi64 v1;
//   void *v2;
//   unsigned int v3;
// };

test "L_Vp_Ui: layout" {
    var lv: c.L_Vp_Ui = undefined;
    try testing.expectSize(c.L_Vp_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_Ui(.{ .v1 = 9705, .v2 = null, .v3 = 9735 }));
}
test "L_Vp_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_Ui());
}
test "L_Vp_Ui: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_Ui());
}
test "L_Vp_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_Ui(), .{ .v1 = 9705, .v2 = null, .v3 = 9735 });
}
pub export fn zig_assert_L_Vp_Ui(lv: c.L_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9705) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 9735) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_Ui() c.L_Vp_Ui {
    return .{ .v1 = 9705, .v2 = null, .v3 = 9735 };
}

// From T_Snnn_xaz.c:4025:4045
// struct  L_Vp_Ul  {
//   __tsi64 v1;
//   void *v2;
//   __tsu64 v3;
// };

test "L_Vp_Ul: layout" {
    var lv: c.L_Vp_Ul = undefined;
    try testing.expectSize(c.L_Vp_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_Ul(.{ .v1 = 2235, .v2 = null, .v3 = 3438 }));
}
test "L_Vp_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_Ul());
}
test "L_Vp_Ul: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_Ul());
}
test "L_Vp_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_Ul(), .{ .v1 = 2235, .v2 = null, .v3 = 3438 });
}
pub export fn zig_assert_L_Vp_Ul(lv: c.L_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2235) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 3438) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_Ul() c.L_Vp_Ul {
    return .{ .v1 = 2235, .v2 = null, .v3 = 3438 };
}

// From T_Snnn_xaz.c:4050:4070
// struct  L_Vp_Us  {
//   __tsi64 v1;
//   void *v2;
//   unsigned short v3;
// };

test "L_Vp_Us: layout" {
    var lv: c.L_Vp_Us = undefined;
    try testing.expectSize(c.L_Vp_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_Us(.{ .v1 = 24213, .v2 = null, .v3 = 8236 }));
}
test "L_Vp_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_Us());
}
test "L_Vp_Us: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_Us());
}
test "L_Vp_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_Us(), .{ .v1 = 24213, .v2 = null, .v3 = 8236 });
}
pub export fn zig_assert_L_Vp_Us(lv: c.L_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24213) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 8236) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_Us() c.L_Vp_Us {
    return .{ .v1 = 24213, .v2 = null, .v3 = 8236 };
}

// From T_Snnn_xaz.c:4075:4095
// struct  L_Vp_Vp  {
//   __tsi64 v1;
//   void *v2;
//   void *v3;
// };

test "L_Vp_Vp: layout" {
    var lv: c.L_Vp_Vp = undefined;
    try testing.expectSize(c.L_Vp_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "L_Vp_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_L_Vp_Vp(.{ .v1 = 15058, .v2 = null, .v3 = null }));
}
test "L_Vp_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_L_Vp_Vp());
}
test "L_Vp_Vp: C passes to Zig" {
    try testing.expectOk(c.send_L_Vp_Vp());
}
test "L_Vp_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_L_Vp_Vp(), .{ .v1 = 15058, .v2 = null, .v3 = null });
}
pub export fn zig_assert_L_Vp_Vp(lv: c.L_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15058) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_L_Vp_Vp() c.L_Vp_Vp {
    return .{ .v1 = 15058, .v2 = null, .v3 = null };
}

// From T_Snnn_xaz.c:4100:4116
// struct  S  {
//   short v1;
// };

test "S: layout" {
    var lv: c.S = undefined;
    try testing.expectSize(c.S, 2);
    try testing.expectAlign(c.S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S(.{ .v1 = 28439 }));
}
test "S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S());
}
test "S: C passes to Zig" {
    try testing.expectOk(c.send_S());
}
test "S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S(), .{ .v1 = 28439 });
}
pub export fn zig_assert_S(lv: c.S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28439) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S() c.S {
    return .{ .v1 = 28439 };
}

// From T_Snnn_xaz.c:34421:34439
// struct  S_C  {
//   short v1;
//   char v2;
// };

test "S_C: layout" {
    var lv: c.S_C = undefined;
    try testing.expectSize(c.S_C, 4);
    try testing.expectAlign(c.S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "S_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C(.{ .v1 = 13593, .v2 = 30 }));
}
test "S_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C());
}
test "S_C: C passes to Zig" {
    try testing.expectOk(c.send_S_C());
}
test "S_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C(), .{ .v1 = 13593, .v2 = 30 });
}
pub export fn zig_assert_S_C(lv: c.S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13593) err = 1;
    if (lv.v2 != 30) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C() c.S_C {
    return .{ .v1 = 13593, .v2 = 30 };
}

// From T_Snnn_xaz.c:35168:35188
// struct  S_C_C  {
//   short v1;
//   char v2;
//   char v3;
// };

test "S_C_C: layout" {
    var lv: c.S_C_C = undefined;
    try testing.expectSize(c.S_C_C, 4);
    try testing.expectAlign(c.S_C_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "S_C_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_C(.{ .v1 = 2444, .v2 = 93, .v3 = 77 }));
}
test "S_C_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_C());
}
test "S_C_C: C passes to Zig" {
    try testing.expectOk(c.send_S_C_C());
}
test "S_C_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_C(), .{ .v1 = 2444, .v2 = 93, .v3 = 77 });
}
pub export fn zig_assert_S_C_C(lv: c.S_C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2444) err = 1;
    if (lv.v2 != 93) err = 2;
    if (lv.v3 != 77) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_C() c.S_C_C {
    return .{ .v1 = 2444, .v2 = 93, .v3 = 77 };
}

// From T_Snnn_xaz.c:35193:35213
// struct  S_C_D  {
//   short v1;
//   char v2;
//   double v3;
// };

test "S_C_D: layout" {
    var lv: c.S_C_D = undefined;
    try testing.expectSize(c.S_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_C_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_D(.{ .v1 = 28466, .v2 = 4, .v3 = -2.125 }));
}
test "S_C_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_D());
}
test "S_C_D: C passes to Zig" {
    try testing.expectOk(c.send_S_C_D());
}
test "S_C_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_D(), .{ .v1 = 28466, .v2 = 4, .v3 = -2.125 });
}
pub export fn zig_assert_S_C_D(lv: c.S_C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28466) err = 1;
    if (lv.v2 != 4) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_D() c.S_C_D {
    return .{ .v1 = 28466, .v2 = 4, .v3 = -2.125 };
}

// From T_Snnn_xaz.c:35218:35238
// struct  S_C_F  {
//   short v1;
//   char v2;
//   float v3;
// };

test "S_C_F: layout" {
    var lv: c.S_C_F = undefined;
    try testing.expectSize(c.S_C_F, 8);
    try testing.expectAlign(c.S_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_C_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_F(.{ .v1 = 27944, .v2 = 27, .v3 = 7.0 }));
}
test "S_C_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_F());
}
test "S_C_F: C passes to Zig" {
    try testing.expectOk(c.send_S_C_F());
}
test "S_C_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_F(), .{ .v1 = 27944, .v2 = 27, .v3 = 7.0 });
}
pub export fn zig_assert_S_C_F(lv: c.S_C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27944) err = 1;
    if (lv.v2 != 27) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_F() c.S_C_F {
    return .{ .v1 = 27944, .v2 = 27, .v3 = 7.0 };
}

// From T_Snnn_xaz.c:35243:35263
// struct  S_C_I  {
//   short v1;
//   char v2;
//   int v3;
// };

test "S_C_I: layout" {
    var lv: c.S_C_I = undefined;
    try testing.expectSize(c.S_C_I, 8);
    try testing.expectAlign(c.S_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_C_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_I(.{ .v1 = 18200, .v2 = 26, .v3 = 29651 }));
}
test "S_C_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_I());
}
test "S_C_I: C passes to Zig" {
    try testing.expectOk(c.send_S_C_I());
}
test "S_C_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_I(), .{ .v1 = 18200, .v2 = 26, .v3 = 29651 });
}
pub export fn zig_assert_S_C_I(lv: c.S_C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18200) err = 1;
    if (lv.v2 != 26) err = 2;
    if (lv.v3 != 29651) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_I() c.S_C_I {
    return .{ .v1 = 18200, .v2 = 26, .v3 = 29651 };
}

// From T_Snnn_xaz.c:35268:35288
// struct  S_C_Ip  {
//   short v1;
//   char v2;
//   int *v3;
// };

test "S_C_Ip: layout" {
    var lv: c.S_C_Ip = undefined;
    try testing.expectSize(c.S_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_C_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_Ip(.{ .v1 = 20090, .v2 = 12, .v3 = null }));
}
test "S_C_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_Ip());
}
test "S_C_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_C_Ip());
}
test "S_C_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_Ip(), .{ .v1 = 20090, .v2 = 12, .v3 = null });
}
pub export fn zig_assert_S_C_Ip(lv: c.S_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20090) err = 1;
    if (lv.v2 != 12) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_Ip() c.S_C_Ip {
    return .{ .v1 = 20090, .v2 = 12, .v3 = null };
}

// From T_Snnn_xaz.c:35293:35313
// struct  S_C_L  {
//   short v1;
//   char v2;
//   __tsi64 v3;
// };

test "S_C_L: layout" {
    var lv: c.S_C_L = undefined;
    try testing.expectSize(c.S_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_C_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_L(.{ .v1 = 23527, .v2 = 35, .v3 = 6495 }));
}
test "S_C_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_L());
}
test "S_C_L: C passes to Zig" {
    try testing.expectOk(c.send_S_C_L());
}
test "S_C_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_L(), .{ .v1 = 23527, .v2 = 35, .v3 = 6495 });
}
pub export fn zig_assert_S_C_L(lv: c.S_C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23527) err = 1;
    if (lv.v2 != 35) err = 2;
    if (lv.v3 != 6495) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_L() c.S_C_L {
    return .{ .v1 = 23527, .v2 = 35, .v3 = 6495 };
}

// From T_Snnn_xaz.c:35318:35338
// struct  S_C_S  {
//   short v1;
//   char v2;
//   short v3;
// };

test "S_C_S: layout" {
    var lv: c.S_C_S = undefined;
    try testing.expectSize(c.S_C_S, 6);
    try testing.expectAlign(c.S_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_C_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_S(.{ .v1 = 18343, .v2 = 109, .v3 = 22346 }));
}
test "S_C_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_S());
}
test "S_C_S: C passes to Zig" {
    try testing.expectOk(c.send_S_C_S());
}
test "S_C_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_S(), .{ .v1 = 18343, .v2 = 109, .v3 = 22346 });
}
pub export fn zig_assert_S_C_S(lv: c.S_C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18343) err = 1;
    if (lv.v2 != 109) err = 2;
    if (lv.v3 != 22346) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_S() c.S_C_S {
    return .{ .v1 = 18343, .v2 = 109, .v3 = 22346 };
}

// From T_Snnn_xaz.c:35343:35363
// struct  S_C_Uc  {
//   short v1;
//   char v2;
//   unsigned char v3;
// };

test "S_C_Uc: layout" {
    var lv: c.S_C_Uc = undefined;
    try testing.expectSize(c.S_C_Uc, 4);
    try testing.expectAlign(c.S_C_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "S_C_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_Uc(.{ .v1 = 14516, .v2 = 18, .v3 = 45 }));
}
test "S_C_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_Uc());
}
test "S_C_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_C_Uc());
}
test "S_C_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_Uc(), .{ .v1 = 14516, .v2 = 18, .v3 = 45 });
}
pub export fn zig_assert_S_C_Uc(lv: c.S_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14516) err = 1;
    if (lv.v2 != 18) err = 2;
    if (lv.v3 != 45) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_Uc() c.S_C_Uc {
    return .{ .v1 = 14516, .v2 = 18, .v3 = 45 };
}

// From T_Snnn_xaz.c:35368:35388
// struct  S_C_Ui  {
//   short v1;
//   char v2;
//   unsigned int v3;
// };

test "S_C_Ui: layout" {
    var lv: c.S_C_Ui = undefined;
    try testing.expectSize(c.S_C_Ui, 8);
    try testing.expectAlign(c.S_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_C_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_Ui(.{ .v1 = 17804, .v2 = 18, .v3 = 32107 }));
}
test "S_C_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_Ui());
}
test "S_C_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_C_Ui());
}
test "S_C_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_Ui(), .{ .v1 = 17804, .v2 = 18, .v3 = 32107 });
}
pub export fn zig_assert_S_C_Ui(lv: c.S_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17804) err = 1;
    if (lv.v2 != 18) err = 2;
    if (lv.v3 != 32107) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_Ui() c.S_C_Ui {
    return .{ .v1 = 17804, .v2 = 18, .v3 = 32107 };
}

// From T_Snnn_xaz.c:35393:35413
// struct  S_C_Ul  {
//   short v1;
//   char v2;
//   __tsu64 v3;
// };

test "S_C_Ul: layout" {
    var lv: c.S_C_Ul = undefined;
    try testing.expectSize(c.S_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_C_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_Ul(.{ .v1 = 24230, .v2 = 27, .v3 = 1102 }));
}
test "S_C_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_Ul());
}
test "S_C_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_C_Ul());
}
test "S_C_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_Ul(), .{ .v1 = 24230, .v2 = 27, .v3 = 1102 });
}
pub export fn zig_assert_S_C_Ul(lv: c.S_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24230) err = 1;
    if (lv.v2 != 27) err = 2;
    if (lv.v3 != 1102) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_Ul() c.S_C_Ul {
    return .{ .v1 = 24230, .v2 = 27, .v3 = 1102 };
}

// From T_Snnn_xaz.c:35418:35438
// struct  S_C_Us  {
//   short v1;
//   char v2;
//   unsigned short v3;
// };

test "S_C_Us: layout" {
    var lv: c.S_C_Us = undefined;
    try testing.expectSize(c.S_C_Us, 6);
    try testing.expectAlign(c.S_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_C_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_Us(.{ .v1 = 13745, .v2 = 61, .v3 = 8507 }));
}
test "S_C_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_Us());
}
test "S_C_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_C_Us());
}
test "S_C_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_Us(), .{ .v1 = 13745, .v2 = 61, .v3 = 8507 });
}
pub export fn zig_assert_S_C_Us(lv: c.S_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13745) err = 1;
    if (lv.v2 != 61) err = 2;
    if (lv.v3 != 8507) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_Us() c.S_C_Us {
    return .{ .v1 = 13745, .v2 = 61, .v3 = 8507 };
}

// From T_Snnn_xaz.c:35443:35463
// struct  S_C_Vp  {
//   short v1;
//   char v2;
//   void *v3;
// };

test "S_C_Vp: layout" {
    var lv: c.S_C_Vp = undefined;
    try testing.expectSize(c.S_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_C_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_C_Vp(.{ .v1 = 5894, .v2 = 62, .v3 = null }));
}
test "S_C_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_C_Vp());
}
test "S_C_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_C_Vp());
}
test "S_C_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_C_Vp(), .{ .v1 = 5894, .v2 = 62, .v3 = null });
}
pub export fn zig_assert_S_C_Vp(lv: c.S_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5894) err = 1;
    if (lv.v2 != 62) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_C_Vp() c.S_C_Vp {
    return .{ .v1 = 5894, .v2 = 62, .v3 = null };
}

// From T_Snnn_xaz.c:35468:35486
// struct  S_D  {
//   short v1;
//   double v2;
// };

test "S_D: layout" {
    var lv: c.S_D = undefined;
    try testing.expectSize(c.S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "S_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D(.{ .v1 = 26258, .v2 = 0.5 }));
}
test "S_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D());
}
test "S_D: C passes to Zig" {
    try testing.expectOk(c.send_S_D());
}
test "S_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D(), .{ .v1 = 26258, .v2 = 0.5 });
}
pub export fn zig_assert_S_D(lv: c.S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26258) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D() c.S_D {
    return .{ .v1 = 26258, .v2 = 0.5 };
}

// From T_Snnn_xaz.c:36215:36235
// struct  S_D_C  {
//   short v1;
//   double v2;
//   char v3;
// };

test "S_D_C: layout" {
    var lv: c.S_D_C = undefined;
    try testing.expectSize(c.S_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_C(.{ .v1 = 24907, .v2 = 7.0, .v3 = 81 }));
}
test "S_D_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_C());
}
test "S_D_C: C passes to Zig" {
    try testing.expectOk(c.send_S_D_C());
}
test "S_D_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_C(), .{ .v1 = 24907, .v2 = 7.0, .v3 = 81 });
}
pub export fn zig_assert_S_D_C(lv: c.S_D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24907) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 81) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_C() c.S_D_C {
    return .{ .v1 = 24907, .v2 = 7.0, .v3 = 81 };
}

// From T_Snnn_xaz.c:36240:36260
// struct  S_D_D  {
//   short v1;
//   double v2;
//   double v3;
// };

test "S_D_D: layout" {
    var lv: c.S_D_D = undefined;
    try testing.expectSize(c.S_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.S_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_D(.{ .v1 = 17013, .v2 = 0.5, .v3 = 0.875 }));
}
test "S_D_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_D());
}
test "S_D_D: C passes to Zig" {
    try testing.expectOk(c.send_S_D_D());
}
test "S_D_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_D(), .{ .v1 = 17013, .v2 = 0.5, .v3 = 0.875 });
}
pub export fn zig_assert_S_D_D(lv: c.S_D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17013) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_D() c.S_D_D {
    return .{ .v1 = 17013, .v2 = 0.5, .v3 = 0.875 };
}

// From T_Snnn_xaz.c:36265:36285
// struct  S_D_F  {
//   short v1;
//   double v2;
//   float v3;
// };

test "S_D_F: layout" {
    var lv: c.S_D_F = undefined;
    try testing.expectSize(c.S_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_F(.{ .v1 = 8325, .v2 = -0.25, .v3 = -2.125 }));
}
test "S_D_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_F());
}
test "S_D_F: C passes to Zig" {
    try testing.expectOk(c.send_S_D_F());
}
test "S_D_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_F(), .{ .v1 = 8325, .v2 = -0.25, .v3 = -2.125 });
}
pub export fn zig_assert_S_D_F(lv: c.S_D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8325) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_F() c.S_D_F {
    return .{ .v1 = 8325, .v2 = -0.25, .v3 = -2.125 };
}

// From T_Snnn_xaz.c:36290:36310
// struct  S_D_I  {
//   short v1;
//   double v2;
//   int v3;
// };

test "S_D_I: layout" {
    var lv: c.S_D_I = undefined;
    try testing.expectSize(c.S_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_I(.{ .v1 = 8248, .v2 = -2.125, .v3 = 20494 }));
}
test "S_D_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_I());
}
test "S_D_I: C passes to Zig" {
    try testing.expectOk(c.send_S_D_I());
}
test "S_D_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_I(), .{ .v1 = 8248, .v2 = -2.125, .v3 = 20494 });
}
pub export fn zig_assert_S_D_I(lv: c.S_D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8248) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 20494) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_I() c.S_D_I {
    return .{ .v1 = 8248, .v2 = -2.125, .v3 = 20494 };
}

// From T_Snnn_xaz.c:36315:36335
// struct  S_D_Ip  {
//   short v1;
//   double v2;
//   int *v3;
// };

test "S_D_Ip: layout" {
    var lv: c.S_D_Ip = undefined;
    try testing.expectSize(c.S_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_Ip(.{ .v1 = 5574, .v2 = 0.875, .v3 = null }));
}
test "S_D_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_Ip());
}
test "S_D_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_D_Ip());
}
test "S_D_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_Ip(), .{ .v1 = 5574, .v2 = 0.875, .v3 = null });
}
pub export fn zig_assert_S_D_Ip(lv: c.S_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5574) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_Ip() c.S_D_Ip {
    return .{ .v1 = 5574, .v2 = 0.875, .v3 = null };
}

// From T_Snnn_xaz.c:36340:36360
// struct  S_D_L  {
//   short v1;
//   double v2;
//   __tsi64 v3;
// };

test "S_D_L: layout" {
    var lv: c.S_D_L = undefined;
    try testing.expectSize(c.S_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.S_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_L(.{ .v1 = 16019, .v2 = 4.5, .v3 = 2270 }));
}
test "S_D_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_L());
}
test "S_D_L: C passes to Zig" {
    try testing.expectOk(c.send_S_D_L());
}
test "S_D_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_L(), .{ .v1 = 16019, .v2 = 4.5, .v3 = 2270 });
}
pub export fn zig_assert_S_D_L(lv: c.S_D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16019) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 2270) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_L() c.S_D_L {
    return .{ .v1 = 16019, .v2 = 4.5, .v3 = 2270 };
}

// From T_Snnn_xaz.c:36365:36385
// struct  S_D_S  {
//   short v1;
//   double v2;
//   short v3;
// };

test "S_D_S: layout" {
    var lv: c.S_D_S = undefined;
    try testing.expectSize(c.S_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_S(.{ .v1 = 19770, .v2 = 0.875, .v3 = 27668 }));
}
test "S_D_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_S());
}
test "S_D_S: C passes to Zig" {
    try testing.expectOk(c.send_S_D_S());
}
test "S_D_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_S(), .{ .v1 = 19770, .v2 = 0.875, .v3 = 27668 });
}
pub export fn zig_assert_S_D_S(lv: c.S_D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19770) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 27668) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_S() c.S_D_S {
    return .{ .v1 = 19770, .v2 = 0.875, .v3 = 27668 };
}

// From T_Snnn_xaz.c:36390:36410
// struct  S_D_Uc  {
//   short v1;
//   double v2;
//   unsigned char v3;
// };

test "S_D_Uc: layout" {
    var lv: c.S_D_Uc = undefined;
    try testing.expectSize(c.S_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_Uc(.{ .v1 = 18628, .v2 = -2.125, .v3 = 55 }));
}
test "S_D_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_Uc());
}
test "S_D_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_D_Uc());
}
test "S_D_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_Uc(), .{ .v1 = 18628, .v2 = -2.125, .v3 = 55 });
}
pub export fn zig_assert_S_D_Uc(lv: c.S_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18628) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 55) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_Uc() c.S_D_Uc {
    return .{ .v1 = 18628, .v2 = -2.125, .v3 = 55 };
}

// From T_Snnn_xaz.c:36415:36435
// struct  S_D_Ui  {
//   short v1;
//   double v2;
//   unsigned int v3;
// };

test "S_D_Ui: layout" {
    var lv: c.S_D_Ui = undefined;
    try testing.expectSize(c.S_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_Ui(.{ .v1 = 2017, .v2 = 4.5, .v3 = 22747 }));
}
test "S_D_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_Ui());
}
test "S_D_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_D_Ui());
}
test "S_D_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_Ui(), .{ .v1 = 2017, .v2 = 4.5, .v3 = 22747 });
}
pub export fn zig_assert_S_D_Ui(lv: c.S_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2017) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 22747) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_Ui() c.S_D_Ui {
    return .{ .v1 = 2017, .v2 = 4.5, .v3 = 22747 };
}

// From T_Snnn_xaz.c:36440:36460
// struct  S_D_Ul  {
//   short v1;
//   double v2;
//   __tsu64 v3;
// };

test "S_D_Ul: layout" {
    var lv: c.S_D_Ul = undefined;
    try testing.expectSize(c.S_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.S_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_Ul(.{ .v1 = 26647, .v2 = 7.0, .v3 = 4212 }));
}
test "S_D_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_Ul());
}
test "S_D_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_D_Ul());
}
test "S_D_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_Ul(), .{ .v1 = 26647, .v2 = 7.0, .v3 = 4212 });
}
pub export fn zig_assert_S_D_Ul(lv: c.S_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26647) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 4212) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_Ul() c.S_D_Ul {
    return .{ .v1 = 26647, .v2 = 7.0, .v3 = 4212 };
}

// From T_Snnn_xaz.c:36465:36485
// struct  S_D_Us  {
//   short v1;
//   double v2;
//   unsigned short v3;
// };

test "S_D_Us: layout" {
    var lv: c.S_D_Us = undefined;
    try testing.expectSize(c.S_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_Us(.{ .v1 = 10915, .v2 = -0.25, .v3 = 24757 }));
}
test "S_D_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_Us());
}
test "S_D_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_D_Us());
}
test "S_D_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_Us(), .{ .v1 = 10915, .v2 = -0.25, .v3 = 24757 });
}
pub export fn zig_assert_S_D_Us(lv: c.S_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10915) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 24757) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_Us() c.S_D_Us {
    return .{ .v1 = 10915, .v2 = -0.25, .v3 = 24757 };
}

// From T_Snnn_xaz.c:36490:36510
// struct  S_D_Vp  {
//   short v1;
//   double v2;
//   void *v3;
// };

test "S_D_Vp: layout" {
    var lv: c.S_D_Vp = undefined;
    try testing.expectSize(c.S_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_D_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_D_Vp(.{ .v1 = 14823, .v2 = 0.5, .v3 = null }));
}
test "S_D_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_D_Vp());
}
test "S_D_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_D_Vp());
}
test "S_D_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_D_Vp(), .{ .v1 = 14823, .v2 = 0.5, .v3 = null });
}
pub export fn zig_assert_S_D_Vp(lv: c.S_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14823) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_D_Vp() c.S_D_Vp {
    return .{ .v1 = 14823, .v2 = 0.5, .v3 = null };
}

// From T_Snnn_xaz.c:36515:36533
// struct  S_F  {
//   short v1;
//   float v2;
// };

test "S_F: layout" {
    var lv: c.S_F = undefined;
    try testing.expectSize(c.S_F, 8);
    try testing.expectAlign(c.S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "S_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F(.{ .v1 = 24924, .v2 = 0.5 }));
}
test "S_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F());
}
test "S_F: C passes to Zig" {
    try testing.expectOk(c.send_S_F());
}
test "S_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F(), .{ .v1 = 24924, .v2 = 0.5 });
}
pub export fn zig_assert_S_F(lv: c.S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24924) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F() c.S_F {
    return .{ .v1 = 24924, .v2 = 0.5 };
}

// From T_Snnn_xaz.c:37262:37282
// struct  S_F_C  {
//   short v1;
//   float v2;
//   char v3;
// };

test "S_F_C: layout" {
    var lv: c.S_F_C = undefined;
    try testing.expectSize(c.S_F_C, 12);
    try testing.expectAlign(c.S_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_C(.{ .v1 = 8723, .v2 = -0.25, .v3 = 67 }));
}
test "S_F_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_C());
}
test "S_F_C: C passes to Zig" {
    try testing.expectOk(c.send_S_F_C());
}
test "S_F_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_C(), .{ .v1 = 8723, .v2 = -0.25, .v3 = 67 });
}
pub export fn zig_assert_S_F_C(lv: c.S_F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8723) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 67) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_C() c.S_F_C {
    return .{ .v1 = 8723, .v2 = -0.25, .v3 = 67 };
}

// From T_Snnn_xaz.c:37287:37307
// struct  S_F_D  {
//   short v1;
//   float v2;
//   double v3;
// };

test "S_F_D: layout" {
    var lv: c.S_F_D = undefined;
    try testing.expectSize(c.S_F_D, 16);
    try testing.expectAlign(c.S_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_D(.{ .v1 = 5239, .v2 = -2.125, .v3 = 4.5 }));
}
test "S_F_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_D());
}
test "S_F_D: C passes to Zig" {
    try testing.expectOk(c.send_S_F_D());
}
test "S_F_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_D(), .{ .v1 = 5239, .v2 = -2.125, .v3 = 4.5 });
}
pub export fn zig_assert_S_F_D(lv: c.S_F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5239) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_D() c.S_F_D {
    return .{ .v1 = 5239, .v2 = -2.125, .v3 = 4.5 };
}

// From T_Snnn_xaz.c:37312:37332
// struct  S_F_F  {
//   short v1;
//   float v2;
//   float v3;
// };

test "S_F_F: layout" {
    var lv: c.S_F_F = undefined;
    try testing.expectSize(c.S_F_F, 12);
    try testing.expectAlign(c.S_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_F(.{ .v1 = 20532, .v2 = -2.125, .v3 = -0.25 }));
}
test "S_F_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_F());
}
test "S_F_F: C passes to Zig" {
    try testing.expectOk(c.send_S_F_F());
}
test "S_F_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_F(), .{ .v1 = 20532, .v2 = -2.125, .v3 = -0.25 });
}
pub export fn zig_assert_S_F_F(lv: c.S_F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20532) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_F() c.S_F_F {
    return .{ .v1 = 20532, .v2 = -2.125, .v3 = -0.25 };
}

// From T_Snnn_xaz.c:37337:37357
// struct  S_F_I  {
//   short v1;
//   float v2;
//   int v3;
// };

test "S_F_I: layout" {
    var lv: c.S_F_I = undefined;
    try testing.expectSize(c.S_F_I, 12);
    try testing.expectAlign(c.S_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_I(.{ .v1 = 21641, .v2 = 1.0, .v3 = 10287 }));
}
test "S_F_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_I());
}
test "S_F_I: C passes to Zig" {
    try testing.expectOk(c.send_S_F_I());
}
test "S_F_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_I(), .{ .v1 = 21641, .v2 = 1.0, .v3 = 10287 });
}
pub export fn zig_assert_S_F_I(lv: c.S_F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21641) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 10287) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_I() c.S_F_I {
    return .{ .v1 = 21641, .v2 = 1.0, .v3 = 10287 };
}

// From T_Snnn_xaz.c:37362:37382
// struct  S_F_Ip  {
//   short v1;
//   float v2;
//   int *v3;
// };

test "S_F_Ip: layout" {
    var lv: c.S_F_Ip = undefined;
    try testing.expectSize(c.S_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.S_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_Ip(.{ .v1 = 682, .v2 = 4.5, .v3 = null }));
}
test "S_F_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_Ip());
}
test "S_F_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_F_Ip());
}
test "S_F_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_Ip(), .{ .v1 = 682, .v2 = 4.5, .v3 = null });
}
pub export fn zig_assert_S_F_Ip(lv: c.S_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 682) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_Ip() c.S_F_Ip {
    return .{ .v1 = 682, .v2 = 4.5, .v3 = null };
}

// From T_Snnn_xaz.c:37387:37407
// struct  S_F_L  {
//   short v1;
//   float v2;
//   __tsi64 v3;
// };

test "S_F_L: layout" {
    var lv: c.S_F_L = undefined;
    try testing.expectSize(c.S_F_L, 16);
    try testing.expectAlign(c.S_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_L(.{ .v1 = 29613, .v2 = 7.0, .v3 = 6629 }));
}
test "S_F_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_L());
}
test "S_F_L: C passes to Zig" {
    try testing.expectOk(c.send_S_F_L());
}
test "S_F_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_L(), .{ .v1 = 29613, .v2 = 7.0, .v3 = 6629 });
}
pub export fn zig_assert_S_F_L(lv: c.S_F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29613) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 6629) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_L() c.S_F_L {
    return .{ .v1 = 29613, .v2 = 7.0, .v3 = 6629 };
}

// From T_Snnn_xaz.c:37412:37432
// struct  S_F_S  {
//   short v1;
//   float v2;
//   short v3;
// };

test "S_F_S: layout" {
    var lv: c.S_F_S = undefined;
    try testing.expectSize(c.S_F_S, 12);
    try testing.expectAlign(c.S_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_S(.{ .v1 = 5493, .v2 = 1.0, .v3 = 16849 }));
}
test "S_F_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_S());
}
test "S_F_S: C passes to Zig" {
    try testing.expectOk(c.send_S_F_S());
}
test "S_F_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_S(), .{ .v1 = 5493, .v2 = 1.0, .v3 = 16849 });
}
pub export fn zig_assert_S_F_S(lv: c.S_F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5493) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 16849) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_S() c.S_F_S {
    return .{ .v1 = 5493, .v2 = 1.0, .v3 = 16849 };
}

// From T_Snnn_xaz.c:37437:37457
// struct  S_F_Uc  {
//   short v1;
//   float v2;
//   unsigned char v3;
// };

test "S_F_Uc: layout" {
    var lv: c.S_F_Uc = undefined;
    try testing.expectSize(c.S_F_Uc, 12);
    try testing.expectAlign(c.S_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_Uc(.{ .v1 = 16127, .v2 = 0.5, .v3 = 12 }));
}
test "S_F_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_Uc());
}
test "S_F_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_F_Uc());
}
test "S_F_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_Uc(), .{ .v1 = 16127, .v2 = 0.5, .v3 = 12 });
}
pub export fn zig_assert_S_F_Uc(lv: c.S_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16127) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 12) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_Uc() c.S_F_Uc {
    return .{ .v1 = 16127, .v2 = 0.5, .v3 = 12 };
}

// From T_Snnn_xaz.c:37462:37482
// struct  S_F_Ui  {
//   short v1;
//   float v2;
//   unsigned int v3;
// };

test "S_F_Ui: layout" {
    var lv: c.S_F_Ui = undefined;
    try testing.expectSize(c.S_F_Ui, 12);
    try testing.expectAlign(c.S_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_Ui(.{ .v1 = 24945, .v2 = 7.0, .v3 = 11333 }));
}
test "S_F_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_Ui());
}
test "S_F_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_F_Ui());
}
test "S_F_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_Ui(), .{ .v1 = 24945, .v2 = 7.0, .v3 = 11333 });
}
pub export fn zig_assert_S_F_Ui(lv: c.S_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24945) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 11333) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_Ui() c.S_F_Ui {
    return .{ .v1 = 24945, .v2 = 7.0, .v3 = 11333 };
}

// From T_Snnn_xaz.c:37487:37507
// struct  S_F_Ul  {
//   short v1;
//   float v2;
//   __tsu64 v3;
// };

test "S_F_Ul: layout" {
    var lv: c.S_F_Ul = undefined;
    try testing.expectSize(c.S_F_Ul, 16);
    try testing.expectAlign(c.S_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_Ul(.{ .v1 = 6677, .v2 = 0.875, .v3 = 16822 }));
}
test "S_F_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_Ul());
}
test "S_F_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_F_Ul());
}
test "S_F_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_Ul(), .{ .v1 = 6677, .v2 = 0.875, .v3 = 16822 });
}
pub export fn zig_assert_S_F_Ul(lv: c.S_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6677) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 16822) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_Ul() c.S_F_Ul {
    return .{ .v1 = 6677, .v2 = 0.875, .v3 = 16822 };
}

// From T_Snnn_xaz.c:37512:37532
// struct  S_F_Us  {
//   short v1;
//   float v2;
//   unsigned short v3;
// };

test "S_F_Us: layout" {
    var lv: c.S_F_Us = undefined;
    try testing.expectSize(c.S_F_Us, 12);
    try testing.expectAlign(c.S_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_Us(.{ .v1 = 8511, .v2 = 0.5, .v3 = 32196 }));
}
test "S_F_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_Us());
}
test "S_F_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_F_Us());
}
test "S_F_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_Us(), .{ .v1 = 8511, .v2 = 0.5, .v3 = 32196 });
}
pub export fn zig_assert_S_F_Us(lv: c.S_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8511) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 32196) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_Us() c.S_F_Us {
    return .{ .v1 = 8511, .v2 = 0.5, .v3 = 32196 };
}

// From T_Snnn_xaz.c:37537:37557
// struct  S_F_Vp  {
//   short v1;
//   float v2;
//   void *v3;
// };

test "S_F_Vp: layout" {
    var lv: c.S_F_Vp = undefined;
    try testing.expectSize(c.S_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.S_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_F_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_F_Vp(.{ .v1 = 17475, .v2 = 0.5, .v3 = null }));
}
test "S_F_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_F_Vp());
}
test "S_F_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_F_Vp());
}
test "S_F_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_F_Vp(), .{ .v1 = 17475, .v2 = 0.5, .v3 = null });
}
pub export fn zig_assert_S_F_Vp(lv: c.S_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17475) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_F_Vp() c.S_F_Vp {
    return .{ .v1 = 17475, .v2 = 0.5, .v3 = null };
}

// From T_Snnn_xaz.c:37562:37580
// struct  S_I  {
//   short v1;
//   int v2;
// };

test "S_I: layout" {
    var lv: c.S_I = undefined;
    try testing.expectSize(c.S_I, 8);
    try testing.expectAlign(c.S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "S_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I(.{ .v1 = 2897, .v2 = 15011 }));
}
test "S_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I());
}
test "S_I: C passes to Zig" {
    try testing.expectOk(c.send_S_I());
}
test "S_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I(), .{ .v1 = 2897, .v2 = 15011 });
}
pub export fn zig_assert_S_I(lv: c.S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2897) err = 1;
    if (lv.v2 != 15011) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I() c.S_I {
    return .{ .v1 = 2897, .v2 = 15011 };
}

// From T_Snnn_xaz.c:38309:38329
// struct  S_I_C  {
//   short v1;
//   int v2;
//   char v3;
// };

test "S_I_C: layout" {
    var lv: c.S_I_C = undefined;
    try testing.expectSize(c.S_I_C, 12);
    try testing.expectAlign(c.S_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_C(.{ .v1 = 8966, .v2 = 235, .v3 = 12 }));
}
test "S_I_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_C());
}
test "S_I_C: C passes to Zig" {
    try testing.expectOk(c.send_S_I_C());
}
test "S_I_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_C(), .{ .v1 = 8966, .v2 = 235, .v3 = 12 });
}
pub export fn zig_assert_S_I_C(lv: c.S_I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8966) err = 1;
    if (lv.v2 != 235) err = 2;
    if (lv.v3 != 12) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_C() c.S_I_C {
    return .{ .v1 = 8966, .v2 = 235, .v3 = 12 };
}

// From T_Snnn_xaz.c:38334:38354
// struct  S_I_D  {
//   short v1;
//   int v2;
//   double v3;
// };

test "S_I_D: layout" {
    var lv: c.S_I_D = undefined;
    try testing.expectSize(c.S_I_D, 16);
    try testing.expectAlign(c.S_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_D(.{ .v1 = 4450, .v2 = 11100, .v3 = -2.125 }));
}
test "S_I_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_D());
}
test "S_I_D: C passes to Zig" {
    try testing.expectOk(c.send_S_I_D());
}
test "S_I_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_D(), .{ .v1 = 4450, .v2 = 11100, .v3 = -2.125 });
}
pub export fn zig_assert_S_I_D(lv: c.S_I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4450) err = 1;
    if (lv.v2 != 11100) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_D() c.S_I_D {
    return .{ .v1 = 4450, .v2 = 11100, .v3 = -2.125 };
}

// From T_Snnn_xaz.c:38359:38379
// struct  S_I_F  {
//   short v1;
//   int v2;
//   float v3;
// };

test "S_I_F: layout" {
    var lv: c.S_I_F = undefined;
    try testing.expectSize(c.S_I_F, 12);
    try testing.expectAlign(c.S_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_F(.{ .v1 = 9162, .v2 = 6436, .v3 = 1.0 }));
}
test "S_I_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_F());
}
test "S_I_F: C passes to Zig" {
    try testing.expectOk(c.send_S_I_F());
}
test "S_I_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_F(), .{ .v1 = 9162, .v2 = 6436, .v3 = 1.0 });
}
pub export fn zig_assert_S_I_F(lv: c.S_I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9162) err = 1;
    if (lv.v2 != 6436) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_F() c.S_I_F {
    return .{ .v1 = 9162, .v2 = 6436, .v3 = 1.0 };
}

// From T_Snnn_xaz.c:38384:38404
// struct  S_I_I  {
//   short v1;
//   int v2;
//   int v3;
// };

test "S_I_I: layout" {
    var lv: c.S_I_I = undefined;
    try testing.expectSize(c.S_I_I, 12);
    try testing.expectAlign(c.S_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_I(.{ .v1 = 5966, .v2 = 11791, .v3 = 12649 }));
}
test "S_I_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_I());
}
test "S_I_I: C passes to Zig" {
    try testing.expectOk(c.send_S_I_I());
}
test "S_I_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_I(), .{ .v1 = 5966, .v2 = 11791, .v3 = 12649 });
}
pub export fn zig_assert_S_I_I(lv: c.S_I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5966) err = 1;
    if (lv.v2 != 11791) err = 2;
    if (lv.v3 != 12649) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_I() c.S_I_I {
    return .{ .v1 = 5966, .v2 = 11791, .v3 = 12649 };
}

// From T_Snnn_xaz.c:38409:38429
// struct  S_I_Ip  {
//   short v1;
//   int v2;
//   int *v3;
// };

test "S_I_Ip: layout" {
    var lv: c.S_I_Ip = undefined;
    try testing.expectSize(c.S_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.S_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_Ip(.{ .v1 = 5466, .v2 = 13905, .v3 = null }));
}
test "S_I_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_Ip());
}
test "S_I_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_I_Ip());
}
test "S_I_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_Ip(), .{ .v1 = 5466, .v2 = 13905, .v3 = null });
}
pub export fn zig_assert_S_I_Ip(lv: c.S_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5466) err = 1;
    if (lv.v2 != 13905) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_Ip() c.S_I_Ip {
    return .{ .v1 = 5466, .v2 = 13905, .v3 = null };
}

// From T_Snnn_xaz.c:38434:38454
// struct  S_I_L  {
//   short v1;
//   int v2;
//   __tsi64 v3;
// };

test "S_I_L: layout" {
    var lv: c.S_I_L = undefined;
    try testing.expectSize(c.S_I_L, 16);
    try testing.expectAlign(c.S_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_L(.{ .v1 = 9496, .v2 = 6304, .v3 = 4198 }));
}
test "S_I_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_L());
}
test "S_I_L: C passes to Zig" {
    try testing.expectOk(c.send_S_I_L());
}
test "S_I_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_L(), .{ .v1 = 9496, .v2 = 6304, .v3 = 4198 });
}
pub export fn zig_assert_S_I_L(lv: c.S_I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9496) err = 1;
    if (lv.v2 != 6304) err = 2;
    if (lv.v3 != 4198) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_L() c.S_I_L {
    return .{ .v1 = 9496, .v2 = 6304, .v3 = 4198 };
}

// From T_Snnn_xaz.c:38459:38479
// struct  S_I_S  {
//   short v1;
//   int v2;
//   short v3;
// };

test "S_I_S: layout" {
    var lv: c.S_I_S = undefined;
    try testing.expectSize(c.S_I_S, 12);
    try testing.expectAlign(c.S_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_S(.{ .v1 = 5209, .v2 = 18809, .v3 = 12499 }));
}
test "S_I_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_S());
}
test "S_I_S: C passes to Zig" {
    try testing.expectOk(c.send_S_I_S());
}
test "S_I_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_S(), .{ .v1 = 5209, .v2 = 18809, .v3 = 12499 });
}
pub export fn zig_assert_S_I_S(lv: c.S_I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5209) err = 1;
    if (lv.v2 != 18809) err = 2;
    if (lv.v3 != 12499) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_S() c.S_I_S {
    return .{ .v1 = 5209, .v2 = 18809, .v3 = 12499 };
}

// From T_Snnn_xaz.c:38484:38504
// struct  S_I_Uc  {
//   short v1;
//   int v2;
//   unsigned char v3;
// };

test "S_I_Uc: layout" {
    var lv: c.S_I_Uc = undefined;
    try testing.expectSize(c.S_I_Uc, 12);
    try testing.expectAlign(c.S_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_Uc(.{ .v1 = 14755, .v2 = 22762, .v3 = 26 }));
}
test "S_I_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_Uc());
}
test "S_I_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_I_Uc());
}
test "S_I_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_Uc(), .{ .v1 = 14755, .v2 = 22762, .v3 = 26 });
}
pub export fn zig_assert_S_I_Uc(lv: c.S_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14755) err = 1;
    if (lv.v2 != 22762) err = 2;
    if (lv.v3 != 26) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_Uc() c.S_I_Uc {
    return .{ .v1 = 14755, .v2 = 22762, .v3 = 26 };
}

// From T_Snnn_xaz.c:38509:38529
// struct  S_I_Ui  {
//   short v1;
//   int v2;
//   unsigned int v3;
// };

test "S_I_Ui: layout" {
    var lv: c.S_I_Ui = undefined;
    try testing.expectSize(c.S_I_Ui, 12);
    try testing.expectAlign(c.S_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_Ui(.{ .v1 = 28377, .v2 = 8192, .v3 = 12908 }));
}
test "S_I_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_Ui());
}
test "S_I_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_I_Ui());
}
test "S_I_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_Ui(), .{ .v1 = 28377, .v2 = 8192, .v3 = 12908 });
}
pub export fn zig_assert_S_I_Ui(lv: c.S_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28377) err = 1;
    if (lv.v2 != 8192) err = 2;
    if (lv.v3 != 12908) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_Ui() c.S_I_Ui {
    return .{ .v1 = 28377, .v2 = 8192, .v3 = 12908 };
}

// From T_Snnn_xaz.c:38534:38554
// struct  S_I_Ul  {
//   short v1;
//   int v2;
//   __tsu64 v3;
// };

test "S_I_Ul: layout" {
    var lv: c.S_I_Ul = undefined;
    try testing.expectSize(c.S_I_Ul, 16);
    try testing.expectAlign(c.S_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_Ul(.{ .v1 = 24955, .v2 = 2544, .v3 = 29114 }));
}
test "S_I_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_Ul());
}
test "S_I_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_I_Ul());
}
test "S_I_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_Ul(), .{ .v1 = 24955, .v2 = 2544, .v3 = 29114 });
}
pub export fn zig_assert_S_I_Ul(lv: c.S_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24955) err = 1;
    if (lv.v2 != 2544) err = 2;
    if (lv.v3 != 29114) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_Ul() c.S_I_Ul {
    return .{ .v1 = 24955, .v2 = 2544, .v3 = 29114 };
}

// From T_Snnn_xaz.c:38559:38579
// struct  S_I_Us  {
//   short v1;
//   int v2;
//   unsigned short v3;
// };

test "S_I_Us: layout" {
    var lv: c.S_I_Us = undefined;
    try testing.expectSize(c.S_I_Us, 12);
    try testing.expectAlign(c.S_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_Us(.{ .v1 = 26409, .v2 = 6684, .v3 = 19200 }));
}
test "S_I_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_Us());
}
test "S_I_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_I_Us());
}
test "S_I_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_Us(), .{ .v1 = 26409, .v2 = 6684, .v3 = 19200 });
}
pub export fn zig_assert_S_I_Us(lv: c.S_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26409) err = 1;
    if (lv.v2 != 6684) err = 2;
    if (lv.v3 != 19200) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_Us() c.S_I_Us {
    return .{ .v1 = 26409, .v2 = 6684, .v3 = 19200 };
}

// From T_Snnn_xaz.c:38584:38604
// struct  S_I_Vp  {
//   short v1;
//   int v2;
//   void *v3;
// };

test "S_I_Vp: layout" {
    var lv: c.S_I_Vp = undefined;
    try testing.expectSize(c.S_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.S_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_I_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_I_Vp(.{ .v1 = 12997, .v2 = 10954, .v3 = null }));
}
test "S_I_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_I_Vp());
}
test "S_I_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_I_Vp());
}
test "S_I_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_I_Vp(), .{ .v1 = 12997, .v2 = 10954, .v3 = null });
}
pub export fn zig_assert_S_I_Vp(lv: c.S_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12997) err = 1;
    if (lv.v2 != 10954) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_I_Vp() c.S_I_Vp {
    return .{ .v1 = 12997, .v2 = 10954, .v3 = null };
}

// From T_Snnn_xaz.c:38609:38627
// struct  S_Ip  {
//   short v1;
//   int *v2;
// };

test "S_Ip: layout" {
    var lv: c.S_Ip = undefined;
    try testing.expectSize(c.S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "S_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip(.{ .v1 = 12037, .v2 = null }));
}
test "S_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip());
}
test "S_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip());
}
test "S_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip(), .{ .v1 = 12037, .v2 = null });
}
pub export fn zig_assert_S_Ip(lv: c.S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12037) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip() c.S_Ip {
    return .{ .v1 = 12037, .v2 = null };
}

// From T_Snnn_xaz.c:39356:39376
// struct  S_Ip_C  {
//   short v1;
//   int *v2;
//   char v3;
// };

test "S_Ip_C: layout" {
    var lv: c.S_Ip_C = undefined;
    try testing.expectSize(c.S_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_C(.{ .v1 = 13013, .v2 = null, .v3 = 62 }));
}
test "S_Ip_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_C());
}
test "S_Ip_C: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_C());
}
test "S_Ip_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_C(), .{ .v1 = 13013, .v2 = null, .v3 = 62 });
}
pub export fn zig_assert_S_Ip_C(lv: c.S_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13013) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 62) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_C() c.S_Ip_C {
    return .{ .v1 = 13013, .v2 = null, .v3 = 62 };
}

// From T_Snnn_xaz.c:39381:39401
// struct  S_Ip_D  {
//   short v1;
//   int *v2;
//   double v3;
// };

test "S_Ip_D: layout" {
    var lv: c.S_Ip_D = undefined;
    try testing.expectSize(c.S_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_D(.{ .v1 = 14362, .v2 = null, .v3 = -0.25 }));
}
test "S_Ip_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_D());
}
test "S_Ip_D: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_D());
}
test "S_Ip_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_D(), .{ .v1 = 14362, .v2 = null, .v3 = -0.25 });
}
pub export fn zig_assert_S_Ip_D(lv: c.S_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14362) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_D() c.S_Ip_D {
    return .{ .v1 = 14362, .v2 = null, .v3 = -0.25 };
}

// From T_Snnn_xaz.c:39406:39426
// struct  S_Ip_F  {
//   short v1;
//   int *v2;
//   float v3;
// };

test "S_Ip_F: layout" {
    var lv: c.S_Ip_F = undefined;
    try testing.expectSize(c.S_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_F(.{ .v1 = 17556, .v2 = null, .v3 = -0.25 }));
}
test "S_Ip_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_F());
}
test "S_Ip_F: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_F());
}
test "S_Ip_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_F(), .{ .v1 = 17556, .v2 = null, .v3 = -0.25 });
}
pub export fn zig_assert_S_Ip_F(lv: c.S_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17556) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_F() c.S_Ip_F {
    return .{ .v1 = 17556, .v2 = null, .v3 = -0.25 };
}

// From T_Snnn_xaz.c:39431:39451
// struct  S_Ip_I  {
//   short v1;
//   int *v2;
//   int v3;
// };

test "S_Ip_I: layout" {
    var lv: c.S_Ip_I = undefined;
    try testing.expectSize(c.S_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_I(.{ .v1 = 12399, .v2 = null, .v3 = 22491 }));
}
test "S_Ip_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_I());
}
test "S_Ip_I: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_I());
}
test "S_Ip_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_I(), .{ .v1 = 12399, .v2 = null, .v3 = 22491 });
}
pub export fn zig_assert_S_Ip_I(lv: c.S_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12399) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 22491) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_I() c.S_Ip_I {
    return .{ .v1 = 12399, .v2 = null, .v3 = 22491 };
}

// From T_Snnn_xaz.c:39456:39476
// struct  S_Ip_Ip  {
//   short v1;
//   int *v2;
//   int *v3;
// };

test "S_Ip_Ip: layout" {
    var lv: c.S_Ip_Ip = undefined;
    try testing.expectSize(c.S_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_Ip(.{ .v1 = 30185, .v2 = null, .v3 = null }));
}
test "S_Ip_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_Ip());
}
test "S_Ip_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_Ip());
}
test "S_Ip_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_Ip(), .{ .v1 = 30185, .v2 = null, .v3 = null });
}
pub export fn zig_assert_S_Ip_Ip(lv: c.S_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30185) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_Ip() c.S_Ip_Ip {
    return .{ .v1 = 30185, .v2 = null, .v3 = null };
}

// From T_Snnn_xaz.c:39481:39501
// struct  S_Ip_L  {
//   short v1;
//   int *v2;
//   __tsi64 v3;
// };

test "S_Ip_L: layout" {
    var lv: c.S_Ip_L = undefined;
    try testing.expectSize(c.S_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_L(.{ .v1 = 20259, .v2 = null, .v3 = 13657 }));
}
test "S_Ip_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_L());
}
test "S_Ip_L: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_L());
}
test "S_Ip_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_L(), .{ .v1 = 20259, .v2 = null, .v3 = 13657 });
}
pub export fn zig_assert_S_Ip_L(lv: c.S_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20259) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 13657) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_L() c.S_Ip_L {
    return .{ .v1 = 20259, .v2 = null, .v3 = 13657 };
}

// From T_Snnn_xaz.c:39506:39526
// struct  S_Ip_S  {
//   short v1;
//   int *v2;
//   short v3;
// };

test "S_Ip_S: layout" {
    var lv: c.S_Ip_S = undefined;
    try testing.expectSize(c.S_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_S(.{ .v1 = 14829, .v2 = null, .v3 = 5005 }));
}
test "S_Ip_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_S());
}
test "S_Ip_S: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_S());
}
test "S_Ip_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_S(), .{ .v1 = 14829, .v2 = null, .v3 = 5005 });
}
pub export fn zig_assert_S_Ip_S(lv: c.S_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14829) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 5005) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_S() c.S_Ip_S {
    return .{ .v1 = 14829, .v2 = null, .v3 = 5005 };
}

// From T_Snnn_xaz.c:39531:39551
// struct  S_Ip_Uc  {
//   short v1;
//   int *v2;
//   unsigned char v3;
// };

test "S_Ip_Uc: layout" {
    var lv: c.S_Ip_Uc = undefined;
    try testing.expectSize(c.S_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_Uc(.{ .v1 = 6340, .v2 = null, .v3 = 85 }));
}
test "S_Ip_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_Uc());
}
test "S_Ip_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_Uc());
}
test "S_Ip_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_Uc(), .{ .v1 = 6340, .v2 = null, .v3 = 85 });
}
pub export fn zig_assert_S_Ip_Uc(lv: c.S_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6340) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 85) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_Uc() c.S_Ip_Uc {
    return .{ .v1 = 6340, .v2 = null, .v3 = 85 };
}

// From T_Snnn_xaz.c:39556:39576
// struct  S_Ip_Ui  {
//   short v1;
//   int *v2;
//   unsigned int v3;
// };

test "S_Ip_Ui: layout" {
    var lv: c.S_Ip_Ui = undefined;
    try testing.expectSize(c.S_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_Ui(.{ .v1 = 11335, .v2 = null, .v3 = 4538 }));
}
test "S_Ip_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_Ui());
}
test "S_Ip_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_Ui());
}
test "S_Ip_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_Ui(), .{ .v1 = 11335, .v2 = null, .v3 = 4538 });
}
pub export fn zig_assert_S_Ip_Ui(lv: c.S_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11335) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4538) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_Ui() c.S_Ip_Ui {
    return .{ .v1 = 11335, .v2 = null, .v3 = 4538 };
}

// From T_Snnn_xaz.c:39581:39601
// struct  S_Ip_Ul  {
//   short v1;
//   int *v2;
//   __tsu64 v3;
// };

test "S_Ip_Ul: layout" {
    var lv: c.S_Ip_Ul = undefined;
    try testing.expectSize(c.S_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_Ul(.{ .v1 = 8170, .v2 = null, .v3 = 26208 }));
}
test "S_Ip_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_Ul());
}
test "S_Ip_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_Ul());
}
test "S_Ip_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_Ul(), .{ .v1 = 8170, .v2 = null, .v3 = 26208 });
}
pub export fn zig_assert_S_Ip_Ul(lv: c.S_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8170) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 26208) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_Ul() c.S_Ip_Ul {
    return .{ .v1 = 8170, .v2 = null, .v3 = 26208 };
}

// From T_Snnn_xaz.c:39606:39626
// struct  S_Ip_Us  {
//   short v1;
//   int *v2;
//   unsigned short v3;
// };

test "S_Ip_Us: layout" {
    var lv: c.S_Ip_Us = undefined;
    try testing.expectSize(c.S_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_Us(.{ .v1 = 3739, .v2 = null, .v3 = 1651 }));
}
test "S_Ip_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_Us());
}
test "S_Ip_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_Us());
}
test "S_Ip_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_Us(), .{ .v1 = 3739, .v2 = null, .v3 = 1651 });
}
pub export fn zig_assert_S_Ip_Us(lv: c.S_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3739) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 1651) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_Us() c.S_Ip_Us {
    return .{ .v1 = 3739, .v2 = null, .v3 = 1651 };
}

// From T_Snnn_xaz.c:39631:39651
// struct  S_Ip_Vp  {
//   short v1;
//   int *v2;
//   void *v3;
// };

test "S_Ip_Vp: layout" {
    var lv: c.S_Ip_Vp = undefined;
    try testing.expectSize(c.S_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Ip_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ip_Vp(.{ .v1 = 14683, .v2 = null, .v3 = null }));
}
test "S_Ip_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ip_Vp());
}
test "S_Ip_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_Ip_Vp());
}
test "S_Ip_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ip_Vp(), .{ .v1 = 14683, .v2 = null, .v3 = null });
}
pub export fn zig_assert_S_Ip_Vp(lv: c.S_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14683) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ip_Vp() c.S_Ip_Vp {
    return .{ .v1 = 14683, .v2 = null, .v3 = null };
}

// From T_Snnn_xaz.c:39656:39674
// struct  S_L  {
//   short v1;
//   __tsi64 v2;
// };

test "S_L: layout" {
    var lv: c.S_L = undefined;
    try testing.expectSize(c.S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "S_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L(.{ .v1 = 13312, .v2 = 25781 }));
}
test "S_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L());
}
test "S_L: C passes to Zig" {
    try testing.expectOk(c.send_S_L());
}
test "S_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L(), .{ .v1 = 13312, .v2 = 25781 });
}
pub export fn zig_assert_S_L(lv: c.S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13312) err = 1;
    if (lv.v2 != 25781) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L() c.S_L {
    return .{ .v1 = 13312, .v2 = 25781 };
}

// From T_Snnn_xaz.c:40403:40423
// struct  S_L_C  {
//   short v1;
//   __tsi64 v2;
//   char v3;
// };

test "S_L_C: layout" {
    var lv: c.S_L_C = undefined;
    try testing.expectSize(c.S_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_C(.{ .v1 = 10505, .v2 = 16042, .v3 = 7 }));
}
test "S_L_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_C());
}
test "S_L_C: C passes to Zig" {
    try testing.expectOk(c.send_S_L_C());
}
test "S_L_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_C(), .{ .v1 = 10505, .v2 = 16042, .v3 = 7 });
}
pub export fn zig_assert_S_L_C(lv: c.S_L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10505) err = 1;
    if (lv.v2 != 16042) err = 2;
    if (lv.v3 != 7) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_C() c.S_L_C {
    return .{ .v1 = 10505, .v2 = 16042, .v3 = 7 };
}

// From T_Snnn_xaz.c:40428:40448
// struct  S_L_D  {
//   short v1;
//   __tsi64 v2;
//   double v3;
// };

test "S_L_D: layout" {
    var lv: c.S_L_D = undefined;
    try testing.expectSize(c.S_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.S_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_D(.{ .v1 = 22646, .v2 = 24863, .v3 = -0.25 }));
}
test "S_L_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_D());
}
test "S_L_D: C passes to Zig" {
    try testing.expectOk(c.send_S_L_D());
}
test "S_L_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_D(), .{ .v1 = 22646, .v2 = 24863, .v3 = -0.25 });
}
pub export fn zig_assert_S_L_D(lv: c.S_L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22646) err = 1;
    if (lv.v2 != 24863) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_D() c.S_L_D {
    return .{ .v1 = 22646, .v2 = 24863, .v3 = -0.25 };
}

// From T_Snnn_xaz.c:40453:40473
// struct  S_L_F  {
//   short v1;
//   __tsi64 v2;
//   float v3;
// };

test "S_L_F: layout" {
    var lv: c.S_L_F = undefined;
    try testing.expectSize(c.S_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_F(.{ .v1 = 13211, .v2 = 31897, .v3 = -0.25 }));
}
test "S_L_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_F());
}
test "S_L_F: C passes to Zig" {
    try testing.expectOk(c.send_S_L_F());
}
test "S_L_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_F(), .{ .v1 = 13211, .v2 = 31897, .v3 = -0.25 });
}
pub export fn zig_assert_S_L_F(lv: c.S_L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13211) err = 1;
    if (lv.v2 != 31897) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_F() c.S_L_F {
    return .{ .v1 = 13211, .v2 = 31897, .v3 = -0.25 };
}

// From T_Snnn_xaz.c:40478:40498
// struct  S_L_I  {
//   short v1;
//   __tsi64 v2;
//   int v3;
// };

test "S_L_I: layout" {
    var lv: c.S_L_I = undefined;
    try testing.expectSize(c.S_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_I(.{ .v1 = 9621, .v2 = 7334, .v3 = 21830 }));
}
test "S_L_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_I());
}
test "S_L_I: C passes to Zig" {
    try testing.expectOk(c.send_S_L_I());
}
test "S_L_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_I(), .{ .v1 = 9621, .v2 = 7334, .v3 = 21830 });
}
pub export fn zig_assert_S_L_I(lv: c.S_L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9621) err = 1;
    if (lv.v2 != 7334) err = 2;
    if (lv.v3 != 21830) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_I() c.S_L_I {
    return .{ .v1 = 9621, .v2 = 7334, .v3 = 21830 };
}

// From T_Snnn_xaz.c:40503:40523
// struct  S_L_Ip  {
//   short v1;
//   __tsi64 v2;
//   int *v3;
// };

test "S_L_Ip: layout" {
    var lv: c.S_L_Ip = undefined;
    try testing.expectSize(c.S_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_Ip(.{ .v1 = 13540, .v2 = 19625, .v3 = null }));
}
test "S_L_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_Ip());
}
test "S_L_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_L_Ip());
}
test "S_L_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_Ip(), .{ .v1 = 13540, .v2 = 19625, .v3 = null });
}
pub export fn zig_assert_S_L_Ip(lv: c.S_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13540) err = 1;
    if (lv.v2 != 19625) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_Ip() c.S_L_Ip {
    return .{ .v1 = 13540, .v2 = 19625, .v3 = null };
}

// From T_Snnn_xaz.c:40528:40548
// struct  S_L_L  {
//   short v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "S_L_L: layout" {
    var lv: c.S_L_L = undefined;
    try testing.expectSize(c.S_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.S_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_L(.{ .v1 = 20472, .v2 = 32042, .v3 = 11187 }));
}
test "S_L_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_L());
}
test "S_L_L: C passes to Zig" {
    try testing.expectOk(c.send_S_L_L());
}
test "S_L_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_L(), .{ .v1 = 20472, .v2 = 32042, .v3 = 11187 });
}
pub export fn zig_assert_S_L_L(lv: c.S_L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20472) err = 1;
    if (lv.v2 != 32042) err = 2;
    if (lv.v3 != 11187) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_L() c.S_L_L {
    return .{ .v1 = 20472, .v2 = 32042, .v3 = 11187 };
}

// From T_Snnn_xaz.c:40553:40573
// struct  S_L_S  {
//   short v1;
//   __tsi64 v2;
//   short v3;
// };

test "S_L_S: layout" {
    var lv: c.S_L_S = undefined;
    try testing.expectSize(c.S_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_S(.{ .v1 = 24980, .v2 = 13189, .v3 = 19542 }));
}
test "S_L_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_S());
}
test "S_L_S: C passes to Zig" {
    try testing.expectOk(c.send_S_L_S());
}
test "S_L_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_S(), .{ .v1 = 24980, .v2 = 13189, .v3 = 19542 });
}
pub export fn zig_assert_S_L_S(lv: c.S_L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24980) err = 1;
    if (lv.v2 != 13189) err = 2;
    if (lv.v3 != 19542) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_S() c.S_L_S {
    return .{ .v1 = 24980, .v2 = 13189, .v3 = 19542 };
}

// From T_Snnn_xaz.c:40578:40598
// struct  S_L_Uc  {
//   short v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "S_L_Uc: layout" {
    var lv: c.S_L_Uc = undefined;
    try testing.expectSize(c.S_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_Uc(.{ .v1 = 25895, .v2 = 31666, .v3 = 50 }));
}
test "S_L_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_Uc());
}
test "S_L_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_L_Uc());
}
test "S_L_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_Uc(), .{ .v1 = 25895, .v2 = 31666, .v3 = 50 });
}
pub export fn zig_assert_S_L_Uc(lv: c.S_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25895) err = 1;
    if (lv.v2 != 31666) err = 2;
    if (lv.v3 != 50) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_Uc() c.S_L_Uc {
    return .{ .v1 = 25895, .v2 = 31666, .v3 = 50 };
}

// From T_Snnn_xaz.c:40603:40623
// struct  S_L_Ui  {
//   short v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "S_L_Ui: layout" {
    var lv: c.S_L_Ui = undefined;
    try testing.expectSize(c.S_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_Ui(.{ .v1 = 25332, .v2 = 32427, .v3 = 2118 }));
}
test "S_L_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_Ui());
}
test "S_L_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_L_Ui());
}
test "S_L_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_Ui(), .{ .v1 = 25332, .v2 = 32427, .v3 = 2118 });
}
pub export fn zig_assert_S_L_Ui(lv: c.S_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25332) err = 1;
    if (lv.v2 != 32427) err = 2;
    if (lv.v3 != 2118) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_Ui() c.S_L_Ui {
    return .{ .v1 = 25332, .v2 = 32427, .v3 = 2118 };
}

// From T_Snnn_xaz.c:40628:40648
// struct  S_L_Ul  {
//   short v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "S_L_Ul: layout" {
    var lv: c.S_L_Ul = undefined;
    try testing.expectSize(c.S_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.S_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_Ul(.{ .v1 = 13547, .v2 = 22029, .v3 = 22931 }));
}
test "S_L_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_Ul());
}
test "S_L_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_L_Ul());
}
test "S_L_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_Ul(), .{ .v1 = 13547, .v2 = 22029, .v3 = 22931 });
}
pub export fn zig_assert_S_L_Ul(lv: c.S_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13547) err = 1;
    if (lv.v2 != 22029) err = 2;
    if (lv.v3 != 22931) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_Ul() c.S_L_Ul {
    return .{ .v1 = 13547, .v2 = 22029, .v3 = 22931 };
}

// From T_Snnn_xaz.c:40653:40673
// struct  S_L_Us  {
//   short v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "S_L_Us: layout" {
    var lv: c.S_L_Us = undefined;
    try testing.expectSize(c.S_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_Us(.{ .v1 = 20443, .v2 = 12563, .v3 = 22189 }));
}
test "S_L_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_Us());
}
test "S_L_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_L_Us());
}
test "S_L_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_Us(), .{ .v1 = 20443, .v2 = 12563, .v3 = 22189 });
}
pub export fn zig_assert_S_L_Us(lv: c.S_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20443) err = 1;
    if (lv.v2 != 12563) err = 2;
    if (lv.v3 != 22189) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_Us() c.S_L_Us {
    return .{ .v1 = 20443, .v2 = 12563, .v3 = 22189 };
}

// From T_Snnn_xaz.c:40678:40698
// struct  S_L_Vp  {
//   short v1;
//   __tsi64 v2;
//   void *v3;
// };

test "S_L_Vp: layout" {
    var lv: c.S_L_Vp = undefined;
    try testing.expectSize(c.S_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_L_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_L_Vp(.{ .v1 = 21924, .v2 = 20218, .v3 = null }));
}
test "S_L_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_L_Vp());
}
test "S_L_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_L_Vp());
}
test "S_L_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_L_Vp(), .{ .v1 = 21924, .v2 = 20218, .v3 = null });
}
pub export fn zig_assert_S_L_Vp(lv: c.S_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21924) err = 1;
    if (lv.v2 != 20218) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_L_Vp() c.S_L_Vp {
    return .{ .v1 = 21924, .v2 = 20218, .v3 = null };
}

// From T_Snnn_xaz.c:40703:40721
// struct  S_S  {
//   short v1;
//   short v2;
// };

test "S_S: layout" {
    var lv: c.S_S = undefined;
    try testing.expectSize(c.S_S, 4);
    try testing.expectAlign(c.S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "S_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S(.{ .v1 = 11096, .v2 = 27328 }));
}
test "S_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S());
}
test "S_S: C passes to Zig" {
    try testing.expectOk(c.send_S_S());
}
test "S_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S(), .{ .v1 = 11096, .v2 = 27328 });
}
pub export fn zig_assert_S_S(lv: c.S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11096) err = 1;
    if (lv.v2 != 27328) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S() c.S_S {
    return .{ .v1 = 11096, .v2 = 27328 };
}

// From T_Snnn_xaz.c:41450:41470
// struct  S_S_C  {
//   short v1;
//   short v2;
//   char v3;
// };

test "S_S_C: layout" {
    var lv: c.S_S_C = undefined;
    try testing.expectSize(c.S_S_C, 6);
    try testing.expectAlign(c.S_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_S_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_C(.{ .v1 = 5329, .v2 = 19856, .v3 = 80 }));
}
test "S_S_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_C());
}
test "S_S_C: C passes to Zig" {
    try testing.expectOk(c.send_S_S_C());
}
test "S_S_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_C(), .{ .v1 = 5329, .v2 = 19856, .v3 = 80 });
}
pub export fn zig_assert_S_S_C(lv: c.S_S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5329) err = 1;
    if (lv.v2 != 19856) err = 2;
    if (lv.v3 != 80) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_C() c.S_S_C {
    return .{ .v1 = 5329, .v2 = 19856, .v3 = 80 };
}

// From T_Snnn_xaz.c:41475:41495
// struct  S_S_D  {
//   short v1;
//   short v2;
//   double v3;
// };

test "S_S_D: layout" {
    var lv: c.S_S_D = undefined;
    try testing.expectSize(c.S_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_S_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_D(.{ .v1 = 9780, .v2 = 6520, .v3 = 4.5 }));
}
test "S_S_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_D());
}
test "S_S_D: C passes to Zig" {
    try testing.expectOk(c.send_S_S_D());
}
test "S_S_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_D(), .{ .v1 = 9780, .v2 = 6520, .v3 = 4.5 });
}
pub export fn zig_assert_S_S_D(lv: c.S_S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9780) err = 1;
    if (lv.v2 != 6520) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_D() c.S_S_D {
    return .{ .v1 = 9780, .v2 = 6520, .v3 = 4.5 };
}

// From T_Snnn_xaz.c:41500:41520
// struct  S_S_F  {
//   short v1;
//   short v2;
//   float v3;
// };

test "S_S_F: layout" {
    var lv: c.S_S_F = undefined;
    try testing.expectSize(c.S_S_F, 8);
    try testing.expectAlign(c.S_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_S_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_F(.{ .v1 = 3759, .v2 = 17098, .v3 = 4.5 }));
}
test "S_S_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_F());
}
test "S_S_F: C passes to Zig" {
    try testing.expectOk(c.send_S_S_F());
}
test "S_S_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_F(), .{ .v1 = 3759, .v2 = 17098, .v3 = 4.5 });
}
pub export fn zig_assert_S_S_F(lv: c.S_S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3759) err = 1;
    if (lv.v2 != 17098) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_F() c.S_S_F {
    return .{ .v1 = 3759, .v2 = 17098, .v3 = 4.5 };
}

// From T_Snnn_xaz.c:41525:41545
// struct  S_S_I  {
//   short v1;
//   short v2;
//   int v3;
// };

test "S_S_I: layout" {
    var lv: c.S_S_I = undefined;
    try testing.expectSize(c.S_S_I, 8);
    try testing.expectAlign(c.S_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_S_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_I(.{ .v1 = 21322, .v2 = 10630, .v3 = 25351 }));
}
test "S_S_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_I());
}
test "S_S_I: C passes to Zig" {
    try testing.expectOk(c.send_S_S_I());
}
test "S_S_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_I(), .{ .v1 = 21322, .v2 = 10630, .v3 = 25351 });
}
pub export fn zig_assert_S_S_I(lv: c.S_S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21322) err = 1;
    if (lv.v2 != 10630) err = 2;
    if (lv.v3 != 25351) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_I() c.S_S_I {
    return .{ .v1 = 21322, .v2 = 10630, .v3 = 25351 };
}

// From T_Snnn_xaz.c:41550:41570
// struct  S_S_Ip  {
//   short v1;
//   short v2;
//   int *v3;
// };

test "S_S_Ip: layout" {
    var lv: c.S_S_Ip = undefined;
    try testing.expectSize(c.S_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_S_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_Ip(.{ .v1 = 8900, .v2 = 26402, .v3 = null }));
}
test "S_S_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_Ip());
}
test "S_S_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_S_Ip());
}
test "S_S_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_Ip(), .{ .v1 = 8900, .v2 = 26402, .v3 = null });
}
pub export fn zig_assert_S_S_Ip(lv: c.S_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8900) err = 1;
    if (lv.v2 != 26402) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_Ip() c.S_S_Ip {
    return .{ .v1 = 8900, .v2 = 26402, .v3 = null };
}

// From T_Snnn_xaz.c:41575:41595
// struct  S_S_L  {
//   short v1;
//   short v2;
//   __tsi64 v3;
// };

test "S_S_L: layout" {
    var lv: c.S_S_L = undefined;
    try testing.expectSize(c.S_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_S_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_L(.{ .v1 = 11004, .v2 = 11972, .v3 = 21868 }));
}
test "S_S_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_L());
}
test "S_S_L: C passes to Zig" {
    try testing.expectOk(c.send_S_S_L());
}
test "S_S_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_L(), .{ .v1 = 11004, .v2 = 11972, .v3 = 21868 });
}
pub export fn zig_assert_S_S_L(lv: c.S_S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11004) err = 1;
    if (lv.v2 != 11972) err = 2;
    if (lv.v3 != 21868) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_L() c.S_S_L {
    return .{ .v1 = 11004, .v2 = 11972, .v3 = 21868 };
}

// From T_Snnn_xaz.c:41600:41620
// struct  S_S_S  {
//   short v1;
//   short v2;
//   short v3;
// };

test "S_S_S: layout" {
    var lv: c.S_S_S = undefined;
    try testing.expectSize(c.S_S_S, 6);
    try testing.expectAlign(c.S_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_S_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_S(.{ .v1 = 704, .v2 = 11304, .v3 = 18734 }));
}
test "S_S_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_S());
}
test "S_S_S: C passes to Zig" {
    try testing.expectOk(c.send_S_S_S());
}
test "S_S_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_S(), .{ .v1 = 704, .v2 = 11304, .v3 = 18734 });
}
pub export fn zig_assert_S_S_S(lv: c.S_S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 704) err = 1;
    if (lv.v2 != 11304) err = 2;
    if (lv.v3 != 18734) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_S() c.S_S_S {
    return .{ .v1 = 704, .v2 = 11304, .v3 = 18734 };
}

// From T_Snnn_xaz.c:41625:41645
// struct  S_S_Uc  {
//   short v1;
//   short v2;
//   unsigned char v3;
// };

test "S_S_Uc: layout" {
    var lv: c.S_S_Uc = undefined;
    try testing.expectSize(c.S_S_Uc, 6);
    try testing.expectAlign(c.S_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_S_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_Uc(.{ .v1 = 10132, .v2 = 23348, .v3 = 32 }));
}
test "S_S_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_Uc());
}
test "S_S_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_S_Uc());
}
test "S_S_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_Uc(), .{ .v1 = 10132, .v2 = 23348, .v3 = 32 });
}
pub export fn zig_assert_S_S_Uc(lv: c.S_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10132) err = 1;
    if (lv.v2 != 23348) err = 2;
    if (lv.v3 != 32) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_Uc() c.S_S_Uc {
    return .{ .v1 = 10132, .v2 = 23348, .v3 = 32 };
}

// From T_Snnn_xaz.c:41650:41670
// struct  S_S_Ui  {
//   short v1;
//   short v2;
//   unsigned int v3;
// };

test "S_S_Ui: layout" {
    var lv: c.S_S_Ui = undefined;
    try testing.expectSize(c.S_S_Ui, 8);
    try testing.expectAlign(c.S_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_S_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_Ui(.{ .v1 = 10920, .v2 = 21755, .v3 = 28352 }));
}
test "S_S_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_Ui());
}
test "S_S_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_S_Ui());
}
test "S_S_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_Ui(), .{ .v1 = 10920, .v2 = 21755, .v3 = 28352 });
}
pub export fn zig_assert_S_S_Ui(lv: c.S_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10920) err = 1;
    if (lv.v2 != 21755) err = 2;
    if (lv.v3 != 28352) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_Ui() c.S_S_Ui {
    return .{ .v1 = 10920, .v2 = 21755, .v3 = 28352 };
}

// From T_Snnn_xaz.c:41675:41695
// struct  S_S_Ul  {
//   short v1;
//   short v2;
//   __tsu64 v3;
// };

test "S_S_Ul: layout" {
    var lv: c.S_S_Ul = undefined;
    try testing.expectSize(c.S_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_S_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_Ul(.{ .v1 = 634, .v2 = 947, .v3 = 13556 }));
}
test "S_S_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_Ul());
}
test "S_S_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_S_Ul());
}
test "S_S_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_Ul(), .{ .v1 = 634, .v2 = 947, .v3 = 13556 });
}
pub export fn zig_assert_S_S_Ul(lv: c.S_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 634) err = 1;
    if (lv.v2 != 947) err = 2;
    if (lv.v3 != 13556) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_Ul() c.S_S_Ul {
    return .{ .v1 = 634, .v2 = 947, .v3 = 13556 };
}

// From T_Snnn_xaz.c:41700:41720
// struct  S_S_Us  {
//   short v1;
//   short v2;
//   unsigned short v3;
// };

test "S_S_Us: layout" {
    var lv: c.S_S_Us = undefined;
    try testing.expectSize(c.S_S_Us, 6);
    try testing.expectAlign(c.S_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_S_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_Us(.{ .v1 = 236, .v2 = 22850, .v3 = 13691 }));
}
test "S_S_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_Us());
}
test "S_S_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_S_Us());
}
test "S_S_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_Us(), .{ .v1 = 236, .v2 = 22850, .v3 = 13691 });
}
pub export fn zig_assert_S_S_Us(lv: c.S_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 236) err = 1;
    if (lv.v2 != 22850) err = 2;
    if (lv.v3 != 13691) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_Us() c.S_S_Us {
    return .{ .v1 = 236, .v2 = 22850, .v3 = 13691 };
}

// From T_Snnn_xaz.c:41725:41745
// struct  S_S_Vp  {
//   short v1;
//   short v2;
//   void *v3;
// };

test "S_S_Vp: layout" {
    var lv: c.S_S_Vp = undefined;
    try testing.expectSize(c.S_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_S_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_S_Vp(.{ .v1 = 12577, .v2 = 13548, .v3 = null }));
}
test "S_S_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_S_Vp());
}
test "S_S_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_S_Vp());
}
test "S_S_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_S_Vp(), .{ .v1 = 12577, .v2 = 13548, .v3 = null });
}
pub export fn zig_assert_S_S_Vp(lv: c.S_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12577) err = 1;
    if (lv.v2 != 13548) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_S_Vp() c.S_S_Vp {
    return .{ .v1 = 12577, .v2 = 13548, .v3 = null };
}

// From T_Snnn_xaz.c:41750:41768
// struct  S_Uc  {
//   short v1;
//   unsigned char v2;
// };

test "S_Uc: layout" {
    var lv: c.S_Uc = undefined;
    try testing.expectSize(c.S_Uc, 4);
    try testing.expectAlign(c.S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "S_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc(.{ .v1 = 3861, .v2 = 109 }));
}
test "S_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc());
}
test "S_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc());
}
test "S_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc(), .{ .v1 = 3861, .v2 = 109 });
}
pub export fn zig_assert_S_Uc(lv: c.S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3861) err = 1;
    if (lv.v2 != 109) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc() c.S_Uc {
    return .{ .v1 = 3861, .v2 = 109 };
}

// From T_Snnn_xaz.c:42497:42517
// struct  S_Uc_C  {
//   short v1;
//   unsigned char v2;
//   char v3;
// };

test "S_Uc_C: layout" {
    var lv: c.S_Uc_C = undefined;
    try testing.expectSize(c.S_Uc_C, 4);
    try testing.expectAlign(c.S_Uc_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "S_Uc_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_C(.{ .v1 = 10425, .v2 = 80, .v3 = 112 }));
}
test "S_Uc_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_C());
}
test "S_Uc_C: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_C());
}
test "S_Uc_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_C(), .{ .v1 = 10425, .v2 = 80, .v3 = 112 });
}
pub export fn zig_assert_S_Uc_C(lv: c.S_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10425) err = 1;
    if (lv.v2 != 80) err = 2;
    if (lv.v3 != 112) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_C() c.S_Uc_C {
    return .{ .v1 = 10425, .v2 = 80, .v3 = 112 };
}

// From T_Snnn_xaz.c:42522:42542
// struct  S_Uc_D  {
//   short v1;
//   unsigned char v2;
//   double v3;
// };

test "S_Uc_D: layout" {
    var lv: c.S_Uc_D = undefined;
    try testing.expectSize(c.S_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Uc_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_D(.{ .v1 = 30365, .v2 = 12, .v3 = 0.5 }));
}
test "S_Uc_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_D());
}
test "S_Uc_D: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_D());
}
test "S_Uc_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_D(), .{ .v1 = 30365, .v2 = 12, .v3 = 0.5 });
}
pub export fn zig_assert_S_Uc_D(lv: c.S_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30365) err = 1;
    if (lv.v2 != 12) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_D() c.S_Uc_D {
    return .{ .v1 = 30365, .v2 = 12, .v3 = 0.5 };
}

// From T_Snnn_xaz.c:42547:42567
// struct  S_Uc_F  {
//   short v1;
//   unsigned char v2;
//   float v3;
// };

test "S_Uc_F: layout" {
    var lv: c.S_Uc_F = undefined;
    try testing.expectSize(c.S_Uc_F, 8);
    try testing.expectAlign(c.S_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Uc_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_F(.{ .v1 = 7273, .v2 = 122, .v3 = 7.0 }));
}
test "S_Uc_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_F());
}
test "S_Uc_F: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_F());
}
test "S_Uc_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_F(), .{ .v1 = 7273, .v2 = 122, .v3 = 7.0 });
}
pub export fn zig_assert_S_Uc_F(lv: c.S_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7273) err = 1;
    if (lv.v2 != 122) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_F() c.S_Uc_F {
    return .{ .v1 = 7273, .v2 = 122, .v3 = 7.0 };
}

// From T_Snnn_xaz.c:42572:42592
// struct  S_Uc_I  {
//   short v1;
//   unsigned char v2;
//   int v3;
// };

test "S_Uc_I: layout" {
    var lv: c.S_Uc_I = undefined;
    try testing.expectSize(c.S_Uc_I, 8);
    try testing.expectAlign(c.S_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Uc_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_I(.{ .v1 = 17362, .v2 = 100, .v3 = 27177 }));
}
test "S_Uc_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_I());
}
test "S_Uc_I: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_I());
}
test "S_Uc_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_I(), .{ .v1 = 17362, .v2 = 100, .v3 = 27177 });
}
pub export fn zig_assert_S_Uc_I(lv: c.S_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17362) err = 1;
    if (lv.v2 != 100) err = 2;
    if (lv.v3 != 27177) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_I() c.S_Uc_I {
    return .{ .v1 = 17362, .v2 = 100, .v3 = 27177 };
}

// From T_Snnn_xaz.c:42597:42617
// struct  S_Uc_Ip  {
//   short v1;
//   unsigned char v2;
//   int *v3;
// };

test "S_Uc_Ip: layout" {
    var lv: c.S_Uc_Ip = undefined;
    try testing.expectSize(c.S_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Uc_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_Ip(.{ .v1 = 29292, .v2 = 31, .v3 = null }));
}
test "S_Uc_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_Ip());
}
test "S_Uc_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_Ip());
}
test "S_Uc_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_Ip(), .{ .v1 = 29292, .v2 = 31, .v3 = null });
}
pub export fn zig_assert_S_Uc_Ip(lv: c.S_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29292) err = 1;
    if (lv.v2 != 31) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_Ip() c.S_Uc_Ip {
    return .{ .v1 = 29292, .v2 = 31, .v3 = null };
}

// From T_Snnn_xaz.c:42622:42642
// struct  S_Uc_L  {
//   short v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "S_Uc_L: layout" {
    var lv: c.S_Uc_L = undefined;
    try testing.expectSize(c.S_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Uc_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_L(.{ .v1 = 32250, .v2 = 63, .v3 = 22690 }));
}
test "S_Uc_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_L());
}
test "S_Uc_L: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_L());
}
test "S_Uc_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_L(), .{ .v1 = 32250, .v2 = 63, .v3 = 22690 });
}
pub export fn zig_assert_S_Uc_L(lv: c.S_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32250) err = 1;
    if (lv.v2 != 63) err = 2;
    if (lv.v3 != 22690) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_L() c.S_Uc_L {
    return .{ .v1 = 32250, .v2 = 63, .v3 = 22690 };
}

// From T_Snnn_xaz.c:42647:42667
// struct  S_Uc_S  {
//   short v1;
//   unsigned char v2;
//   short v3;
// };

test "S_Uc_S: layout" {
    var lv: c.S_Uc_S = undefined;
    try testing.expectSize(c.S_Uc_S, 6);
    try testing.expectAlign(c.S_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Uc_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_S(.{ .v1 = 24741, .v2 = 1, .v3 = 17911 }));
}
test "S_Uc_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_S());
}
test "S_Uc_S: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_S());
}
test "S_Uc_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_S(), .{ .v1 = 24741, .v2 = 1, .v3 = 17911 });
}
pub export fn zig_assert_S_Uc_S(lv: c.S_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 24741) err = 1;
    if (lv.v2 != 1) err = 2;
    if (lv.v3 != 17911) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_S() c.S_Uc_S {
    return .{ .v1 = 24741, .v2 = 1, .v3 = 17911 };
}

// From T_Snnn_xaz.c:42672:42692
// struct  S_Uc_Uc  {
//   short v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "S_Uc_Uc: layout" {
    var lv: c.S_Uc_Uc = undefined;
    try testing.expectSize(c.S_Uc_Uc, 4);
    try testing.expectAlign(c.S_Uc_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "S_Uc_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_Uc(.{ .v1 = 10761, .v2 = 91, .v3 = 85 }));
}
test "S_Uc_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_Uc());
}
test "S_Uc_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_Uc());
}
test "S_Uc_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_Uc(), .{ .v1 = 10761, .v2 = 91, .v3 = 85 });
}
pub export fn zig_assert_S_Uc_Uc(lv: c.S_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10761) err = 1;
    if (lv.v2 != 91) err = 2;
    if (lv.v3 != 85) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_Uc() c.S_Uc_Uc {
    return .{ .v1 = 10761, .v2 = 91, .v3 = 85 };
}

// From T_Snnn_xaz.c:42697:42717
// struct  S_Uc_Ui  {
//   short v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "S_Uc_Ui: layout" {
    var lv: c.S_Uc_Ui = undefined;
    try testing.expectSize(c.S_Uc_Ui, 8);
    try testing.expectAlign(c.S_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Uc_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_Ui(.{ .v1 = 20164, .v2 = 73, .v3 = 10990 }));
}
test "S_Uc_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_Ui());
}
test "S_Uc_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_Ui());
}
test "S_Uc_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_Ui(), .{ .v1 = 20164, .v2 = 73, .v3 = 10990 });
}
pub export fn zig_assert_S_Uc_Ui(lv: c.S_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20164) err = 1;
    if (lv.v2 != 73) err = 2;
    if (lv.v3 != 10990) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_Ui() c.S_Uc_Ui {
    return .{ .v1 = 20164, .v2 = 73, .v3 = 10990 };
}

// From T_Snnn_xaz.c:42722:42742
// struct  S_Uc_Ul  {
//   short v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "S_Uc_Ul: layout" {
    var lv: c.S_Uc_Ul = undefined;
    try testing.expectSize(c.S_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Uc_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_Ul(.{ .v1 = 26412, .v2 = 74, .v3 = 11990 }));
}
test "S_Uc_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_Ul());
}
test "S_Uc_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_Ul());
}
test "S_Uc_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_Ul(), .{ .v1 = 26412, .v2 = 74, .v3 = 11990 });
}
pub export fn zig_assert_S_Uc_Ul(lv: c.S_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26412) err = 1;
    if (lv.v2 != 74) err = 2;
    if (lv.v3 != 11990) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_Ul() c.S_Uc_Ul {
    return .{ .v1 = 26412, .v2 = 74, .v3 = 11990 };
}

// From T_Snnn_xaz.c:42747:42767
// struct  S_Uc_Us  {
//   short v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "S_Uc_Us: layout" {
    var lv: c.S_Uc_Us = undefined;
    try testing.expectSize(c.S_Uc_Us, 6);
    try testing.expectAlign(c.S_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Uc_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_Us(.{ .v1 = 29060, .v2 = 68, .v3 = 10911 }));
}
test "S_Uc_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_Us());
}
test "S_Uc_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_Us());
}
test "S_Uc_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_Us(), .{ .v1 = 29060, .v2 = 68, .v3 = 10911 });
}
pub export fn zig_assert_S_Uc_Us(lv: c.S_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29060) err = 1;
    if (lv.v2 != 68) err = 2;
    if (lv.v3 != 10911) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_Us() c.S_Uc_Us {
    return .{ .v1 = 29060, .v2 = 68, .v3 = 10911 };
}

// From T_Snnn_xaz.c:42772:42792
// struct  S_Uc_Vp  {
//   short v1;
//   unsigned char v2;
//   void *v3;
// };

test "S_Uc_Vp: layout" {
    var lv: c.S_Uc_Vp = undefined;
    try testing.expectSize(c.S_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Uc_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Uc_Vp(.{ .v1 = 22923, .v2 = 118, .v3 = null }));
}
test "S_Uc_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Uc_Vp());
}
test "S_Uc_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_Uc_Vp());
}
test "S_Uc_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Uc_Vp(), .{ .v1 = 22923, .v2 = 118, .v3 = null });
}
pub export fn zig_assert_S_Uc_Vp(lv: c.S_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22923) err = 1;
    if (lv.v2 != 118) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Uc_Vp() c.S_Uc_Vp {
    return .{ .v1 = 22923, .v2 = 118, .v3 = null };
}

// From T_Snnn_xaz.c:42797:42815
// struct  S_Ui  {
//   short v1;
//   unsigned int v2;
// };

test "S_Ui: layout" {
    var lv: c.S_Ui = undefined;
    try testing.expectSize(c.S_Ui, 8);
    try testing.expectAlign(c.S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "S_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui(.{ .v1 = 22316, .v2 = 1494 }));
}
test "S_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui());
}
test "S_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui());
}
test "S_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui(), .{ .v1 = 22316, .v2 = 1494 });
}
pub export fn zig_assert_S_Ui(lv: c.S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22316) err = 1;
    if (lv.v2 != 1494) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui() c.S_Ui {
    return .{ .v1 = 22316, .v2 = 1494 };
}

// From T_Snnn_xaz.c:43544:43564
// struct  S_Ui_C  {
//   short v1;
//   unsigned int v2;
//   char v3;
// };

test "S_Ui_C: layout" {
    var lv: c.S_Ui_C = undefined;
    try testing.expectSize(c.S_Ui_C, 12);
    try testing.expectAlign(c.S_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_C(.{ .v1 = 27010, .v2 = 4867, .v3 = 101 }));
}
test "S_Ui_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_C());
}
test "S_Ui_C: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_C());
}
test "S_Ui_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_C(), .{ .v1 = 27010, .v2 = 4867, .v3 = 101 });
}
pub export fn zig_assert_S_Ui_C(lv: c.S_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27010) err = 1;
    if (lv.v2 != 4867) err = 2;
    if (lv.v3 != 101) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_C() c.S_Ui_C {
    return .{ .v1 = 27010, .v2 = 4867, .v3 = 101 };
}

// From T_Snnn_xaz.c:43569:43589
// struct  S_Ui_D  {
//   short v1;
//   unsigned int v2;
//   double v3;
// };

test "S_Ui_D: layout" {
    var lv: c.S_Ui_D = undefined;
    try testing.expectSize(c.S_Ui_D, 16);
    try testing.expectAlign(c.S_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_D(.{ .v1 = 4514, .v2 = 25148, .v3 = 0.875 }));
}
test "S_Ui_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_D());
}
test "S_Ui_D: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_D());
}
test "S_Ui_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_D(), .{ .v1 = 4514, .v2 = 25148, .v3 = 0.875 });
}
pub export fn zig_assert_S_Ui_D(lv: c.S_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4514) err = 1;
    if (lv.v2 != 25148) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_D() c.S_Ui_D {
    return .{ .v1 = 4514, .v2 = 25148, .v3 = 0.875 };
}

// From T_Snnn_xaz.c:43594:43614
// struct  S_Ui_F  {
//   short v1;
//   unsigned int v2;
//   float v3;
// };

test "S_Ui_F: layout" {
    var lv: c.S_Ui_F = undefined;
    try testing.expectSize(c.S_Ui_F, 12);
    try testing.expectAlign(c.S_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_F(.{ .v1 = 22677, .v2 = 7579, .v3 = 0.5 }));
}
test "S_Ui_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_F());
}
test "S_Ui_F: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_F());
}
test "S_Ui_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_F(), .{ .v1 = 22677, .v2 = 7579, .v3 = 0.5 });
}
pub export fn zig_assert_S_Ui_F(lv: c.S_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22677) err = 1;
    if (lv.v2 != 7579) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_F() c.S_Ui_F {
    return .{ .v1 = 22677, .v2 = 7579, .v3 = 0.5 };
}

// From T_Snnn_xaz.c:43619:43639
// struct  S_Ui_I  {
//   short v1;
//   unsigned int v2;
//   int v3;
// };

test "S_Ui_I: layout" {
    var lv: c.S_Ui_I = undefined;
    try testing.expectSize(c.S_Ui_I, 12);
    try testing.expectAlign(c.S_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_I(.{ .v1 = 14762, .v2 = 27633, .v3 = 27073 }));
}
test "S_Ui_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_I());
}
test "S_Ui_I: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_I());
}
test "S_Ui_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_I(), .{ .v1 = 14762, .v2 = 27633, .v3 = 27073 });
}
pub export fn zig_assert_S_Ui_I(lv: c.S_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14762) err = 1;
    if (lv.v2 != 27633) err = 2;
    if (lv.v3 != 27073) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_I() c.S_Ui_I {
    return .{ .v1 = 14762, .v2 = 27633, .v3 = 27073 };
}

// From T_Snnn_xaz.c:43644:43664
// struct  S_Ui_Ip  {
//   short v1;
//   unsigned int v2;
//   int *v3;
// };

test "S_Ui_Ip: layout" {
    var lv: c.S_Ui_Ip = undefined;
    try testing.expectSize(c.S_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_Ip(.{ .v1 = 7247, .v2 = 12387, .v3 = null }));
}
test "S_Ui_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_Ip());
}
test "S_Ui_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_Ip());
}
test "S_Ui_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_Ip(), .{ .v1 = 7247, .v2 = 12387, .v3 = null });
}
pub export fn zig_assert_S_Ui_Ip(lv: c.S_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7247) err = 1;
    if (lv.v2 != 12387) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_Ip() c.S_Ui_Ip {
    return .{ .v1 = 7247, .v2 = 12387, .v3 = null };
}

// From T_Snnn_xaz.c:43669:43689
// struct  S_Ui_L  {
//   short v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "S_Ui_L: layout" {
    var lv: c.S_Ui_L = undefined;
    try testing.expectSize(c.S_Ui_L, 16);
    try testing.expectAlign(c.S_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_L(.{ .v1 = 25625, .v2 = 21589, .v3 = 28079 }));
}
test "S_Ui_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_L());
}
test "S_Ui_L: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_L());
}
test "S_Ui_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_L(), .{ .v1 = 25625, .v2 = 21589, .v3 = 28079 });
}
pub export fn zig_assert_S_Ui_L(lv: c.S_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25625) err = 1;
    if (lv.v2 != 21589) err = 2;
    if (lv.v3 != 28079) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_L() c.S_Ui_L {
    return .{ .v1 = 25625, .v2 = 21589, .v3 = 28079 };
}

// From T_Snnn_xaz.c:43694:43714
// struct  S_Ui_S  {
//   short v1;
//   unsigned int v2;
//   short v3;
// };

test "S_Ui_S: layout" {
    var lv: c.S_Ui_S = undefined;
    try testing.expectSize(c.S_Ui_S, 12);
    try testing.expectAlign(c.S_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_S(.{ .v1 = 29152, .v2 = 15405, .v3 = 13886 }));
}
test "S_Ui_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_S());
}
test "S_Ui_S: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_S());
}
test "S_Ui_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_S(), .{ .v1 = 29152, .v2 = 15405, .v3 = 13886 });
}
pub export fn zig_assert_S_Ui_S(lv: c.S_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29152) err = 1;
    if (lv.v2 != 15405) err = 2;
    if (lv.v3 != 13886) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_S() c.S_Ui_S {
    return .{ .v1 = 29152, .v2 = 15405, .v3 = 13886 };
}

// From T_Snnn_xaz.c:43719:43739
// struct  S_Ui_Uc  {
//   short v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "S_Ui_Uc: layout" {
    var lv: c.S_Ui_Uc = undefined;
    try testing.expectSize(c.S_Ui_Uc, 12);
    try testing.expectAlign(c.S_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_Uc(.{ .v1 = 16333, .v2 = 28670, .v3 = 24 }));
}
test "S_Ui_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_Uc());
}
test "S_Ui_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_Uc());
}
test "S_Ui_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_Uc(), .{ .v1 = 16333, .v2 = 28670, .v3 = 24 });
}
pub export fn zig_assert_S_Ui_Uc(lv: c.S_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16333) err = 1;
    if (lv.v2 != 28670) err = 2;
    if (lv.v3 != 24) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_Uc() c.S_Ui_Uc {
    return .{ .v1 = 16333, .v2 = 28670, .v3 = 24 };
}

// From T_Snnn_xaz.c:43744:43764
// struct  S_Ui_Ui  {
//   short v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "S_Ui_Ui: layout" {
    var lv: c.S_Ui_Ui = undefined;
    try testing.expectSize(c.S_Ui_Ui, 12);
    try testing.expectAlign(c.S_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_Ui(.{ .v1 = 22899, .v2 = 29265, .v3 = 27146 }));
}
test "S_Ui_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_Ui());
}
test "S_Ui_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_Ui());
}
test "S_Ui_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_Ui(), .{ .v1 = 22899, .v2 = 29265, .v3 = 27146 });
}
pub export fn zig_assert_S_Ui_Ui(lv: c.S_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22899) err = 1;
    if (lv.v2 != 29265) err = 2;
    if (lv.v3 != 27146) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_Ui() c.S_Ui_Ui {
    return .{ .v1 = 22899, .v2 = 29265, .v3 = 27146 };
}

// From T_Snnn_xaz.c:43769:43789
// struct  S_Ui_Ul  {
//   short v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "S_Ui_Ul: layout" {
    var lv: c.S_Ui_Ul = undefined;
    try testing.expectSize(c.S_Ui_Ul, 16);
    try testing.expectAlign(c.S_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_Ul(.{ .v1 = 4262, .v2 = 10146, .v3 = 19964 }));
}
test "S_Ui_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_Ul());
}
test "S_Ui_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_Ul());
}
test "S_Ui_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_Ul(), .{ .v1 = 4262, .v2 = 10146, .v3 = 19964 });
}
pub export fn zig_assert_S_Ui_Ul(lv: c.S_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4262) err = 1;
    if (lv.v2 != 10146) err = 2;
    if (lv.v3 != 19964) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_Ul() c.S_Ui_Ul {
    return .{ .v1 = 4262, .v2 = 10146, .v3 = 19964 };
}

// From T_Snnn_xaz.c:43794:43814
// struct  S_Ui_Us  {
//   short v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "S_Ui_Us: layout" {
    var lv: c.S_Ui_Us = undefined;
    try testing.expectSize(c.S_Ui_Us, 12);
    try testing.expectAlign(c.S_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_Us(.{ .v1 = 14948, .v2 = 19472, .v3 = 4932 }));
}
test "S_Ui_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_Us());
}
test "S_Ui_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_Us());
}
test "S_Ui_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_Us(), .{ .v1 = 14948, .v2 = 19472, .v3 = 4932 });
}
pub export fn zig_assert_S_Ui_Us(lv: c.S_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14948) err = 1;
    if (lv.v2 != 19472) err = 2;
    if (lv.v3 != 4932) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_Us() c.S_Ui_Us {
    return .{ .v1 = 14948, .v2 = 19472, .v3 = 4932 };
}

// From T_Snnn_xaz.c:43819:43839
// struct  S_Ui_Vp  {
//   short v1;
//   unsigned int v2;
//   void *v3;
// };

test "S_Ui_Vp: layout" {
    var lv: c.S_Ui_Vp = undefined;
    try testing.expectSize(c.S_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "S_Ui_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ui_Vp(.{ .v1 = 6577, .v2 = 18393, .v3 = null }));
}
test "S_Ui_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ui_Vp());
}
test "S_Ui_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_Ui_Vp());
}
test "S_Ui_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ui_Vp(), .{ .v1 = 6577, .v2 = 18393, .v3 = null });
}
pub export fn zig_assert_S_Ui_Vp(lv: c.S_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6577) err = 1;
    if (lv.v2 != 18393) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ui_Vp() c.S_Ui_Vp {
    return .{ .v1 = 6577, .v2 = 18393, .v3 = null };
}

// From T_Snnn_xaz.c:43844:43862
// struct  S_Ul  {
//   short v1;
//   __tsu64 v2;
// };

test "S_Ul: layout" {
    var lv: c.S_Ul = undefined;
    try testing.expectSize(c.S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "S_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul(.{ .v1 = 23494, .v2 = 28281 }));
}
test "S_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul());
}
test "S_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul());
}
test "S_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul(), .{ .v1 = 23494, .v2 = 28281 });
}
pub export fn zig_assert_S_Ul(lv: c.S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23494) err = 1;
    if (lv.v2 != 28281) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul() c.S_Ul {
    return .{ .v1 = 23494, .v2 = 28281 };
}

// From T_Snnn_xaz.c:44591:44611
// struct  S_Ul_C  {
//   short v1;
//   __tsu64 v2;
//   char v3;
// };

test "S_Ul_C: layout" {
    var lv: c.S_Ul_C = undefined;
    try testing.expectSize(c.S_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_C(.{ .v1 = 8646, .v2 = 19716, .v3 = 64 }));
}
test "S_Ul_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_C());
}
test "S_Ul_C: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_C());
}
test "S_Ul_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_C(), .{ .v1 = 8646, .v2 = 19716, .v3 = 64 });
}
pub export fn zig_assert_S_Ul_C(lv: c.S_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8646) err = 1;
    if (lv.v2 != 19716) err = 2;
    if (lv.v3 != 64) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_C() c.S_Ul_C {
    return .{ .v1 = 8646, .v2 = 19716, .v3 = 64 };
}

// From T_Snnn_xaz.c:44616:44636
// struct  S_Ul_D  {
//   short v1;
//   __tsu64 v2;
//   double v3;
// };

test "S_Ul_D: layout" {
    var lv: c.S_Ul_D = undefined;
    try testing.expectSize(c.S_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.S_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_D(.{ .v1 = 8751, .v2 = 28983, .v3 = 7.0 }));
}
test "S_Ul_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_D());
}
test "S_Ul_D: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_D());
}
test "S_Ul_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_D(), .{ .v1 = 8751, .v2 = 28983, .v3 = 7.0 });
}
pub export fn zig_assert_S_Ul_D(lv: c.S_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8751) err = 1;
    if (lv.v2 != 28983) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_D() c.S_Ul_D {
    return .{ .v1 = 8751, .v2 = 28983, .v3 = 7.0 };
}

// From T_Snnn_xaz.c:44641:44661
// struct  S_Ul_F  {
//   short v1;
//   __tsu64 v2;
//   float v3;
// };

test "S_Ul_F: layout" {
    var lv: c.S_Ul_F = undefined;
    try testing.expectSize(c.S_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_F(.{ .v1 = 12972, .v2 = 18724, .v3 = 4.5 }));
}
test "S_Ul_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_F());
}
test "S_Ul_F: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_F());
}
test "S_Ul_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_F(), .{ .v1 = 12972, .v2 = 18724, .v3 = 4.5 });
}
pub export fn zig_assert_S_Ul_F(lv: c.S_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12972) err = 1;
    if (lv.v2 != 18724) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_F() c.S_Ul_F {
    return .{ .v1 = 12972, .v2 = 18724, .v3 = 4.5 };
}

// From T_Snnn_xaz.c:44666:44686
// struct  S_Ul_I  {
//   short v1;
//   __tsu64 v2;
//   int v3;
// };

test "S_Ul_I: layout" {
    var lv: c.S_Ul_I = undefined;
    try testing.expectSize(c.S_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_I(.{ .v1 = 11746, .v2 = 13702, .v3 = 15167 }));
}
test "S_Ul_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_I());
}
test "S_Ul_I: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_I());
}
test "S_Ul_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_I(), .{ .v1 = 11746, .v2 = 13702, .v3 = 15167 });
}
pub export fn zig_assert_S_Ul_I(lv: c.S_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 11746) err = 1;
    if (lv.v2 != 13702) err = 2;
    if (lv.v3 != 15167) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_I() c.S_Ul_I {
    return .{ .v1 = 11746, .v2 = 13702, .v3 = 15167 };
}

// From T_Snnn_xaz.c:44691:44711
// struct  S_Ul_Ip  {
//   short v1;
//   __tsu64 v2;
//   int *v3;
// };

test "S_Ul_Ip: layout" {
    var lv: c.S_Ul_Ip = undefined;
    try testing.expectSize(c.S_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_Ip(.{ .v1 = 15991, .v2 = 4017, .v3 = null }));
}
test "S_Ul_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_Ip());
}
test "S_Ul_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_Ip());
}
test "S_Ul_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_Ip(), .{ .v1 = 15991, .v2 = 4017, .v3 = null });
}
pub export fn zig_assert_S_Ul_Ip(lv: c.S_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15991) err = 1;
    if (lv.v2 != 4017) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_Ip() c.S_Ul_Ip {
    return .{ .v1 = 15991, .v2 = 4017, .v3 = null };
}

// From T_Snnn_xaz.c:44716:44736
// struct  S_Ul_L  {
//   short v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "S_Ul_L: layout" {
    var lv: c.S_Ul_L = undefined;
    try testing.expectSize(c.S_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.S_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_L(.{ .v1 = 27882, .v2 = 18288, .v3 = 17458 }));
}
test "S_Ul_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_L());
}
test "S_Ul_L: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_L());
}
test "S_Ul_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_L(), .{ .v1 = 27882, .v2 = 18288, .v3 = 17458 });
}
pub export fn zig_assert_S_Ul_L(lv: c.S_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27882) err = 1;
    if (lv.v2 != 18288) err = 2;
    if (lv.v3 != 17458) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_L() c.S_Ul_L {
    return .{ .v1 = 27882, .v2 = 18288, .v3 = 17458 };
}

// From T_Snnn_xaz.c:44741:44761
// struct  S_Ul_S  {
//   short v1;
//   __tsu64 v2;
//   short v3;
// };

test "S_Ul_S: layout" {
    var lv: c.S_Ul_S = undefined;
    try testing.expectSize(c.S_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_S(.{ .v1 = 32530, .v2 = 29265, .v3 = 10096 }));
}
test "S_Ul_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_S());
}
test "S_Ul_S: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_S());
}
test "S_Ul_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_S(), .{ .v1 = 32530, .v2 = 29265, .v3 = 10096 });
}
pub export fn zig_assert_S_Ul_S(lv: c.S_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32530) err = 1;
    if (lv.v2 != 29265) err = 2;
    if (lv.v3 != 10096) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_S() c.S_Ul_S {
    return .{ .v1 = 32530, .v2 = 29265, .v3 = 10096 };
}

// From T_Snnn_xaz.c:44766:44786
// struct  S_Ul_Uc  {
//   short v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "S_Ul_Uc: layout" {
    var lv: c.S_Ul_Uc = undefined;
    try testing.expectSize(c.S_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_Uc(.{ .v1 = 6982, .v2 = 10576, .v3 = 118 }));
}
test "S_Ul_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_Uc());
}
test "S_Ul_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_Uc());
}
test "S_Ul_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_Uc(), .{ .v1 = 6982, .v2 = 10576, .v3 = 118 });
}
pub export fn zig_assert_S_Ul_Uc(lv: c.S_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6982) err = 1;
    if (lv.v2 != 10576) err = 2;
    if (lv.v3 != 118) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_Uc() c.S_Ul_Uc {
    return .{ .v1 = 6982, .v2 = 10576, .v3 = 118 };
}

// From T_Snnn_xaz.c:44791:44811
// struct  S_Ul_Ui  {
//   short v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "S_Ul_Ui: layout" {
    var lv: c.S_Ul_Ui = undefined;
    try testing.expectSize(c.S_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_Ui(.{ .v1 = 30721, .v2 = 4703, .v3 = 19408 }));
}
test "S_Ul_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_Ui());
}
test "S_Ul_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_Ui());
}
test "S_Ul_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_Ui(), .{ .v1 = 30721, .v2 = 4703, .v3 = 19408 });
}
pub export fn zig_assert_S_Ul_Ui(lv: c.S_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30721) err = 1;
    if (lv.v2 != 4703) err = 2;
    if (lv.v3 != 19408) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_Ui() c.S_Ul_Ui {
    return .{ .v1 = 30721, .v2 = 4703, .v3 = 19408 };
}

// From T_Snnn_xaz.c:44816:44836
// struct  S_Ul_Ul  {
//   short v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "S_Ul_Ul: layout" {
    var lv: c.S_Ul_Ul = undefined;
    try testing.expectSize(c.S_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.S_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_Ul(.{ .v1 = 17537, .v2 = 32132, .v3 = 9730 }));
}
test "S_Ul_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_Ul());
}
test "S_Ul_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_Ul());
}
test "S_Ul_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_Ul(), .{ .v1 = 17537, .v2 = 32132, .v3 = 9730 });
}
pub export fn zig_assert_S_Ul_Ul(lv: c.S_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17537) err = 1;
    if (lv.v2 != 32132) err = 2;
    if (lv.v3 != 9730) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_Ul() c.S_Ul_Ul {
    return .{ .v1 = 17537, .v2 = 32132, .v3 = 9730 };
}

// From T_Snnn_xaz.c:44841:44861
// struct  S_Ul_Us  {
//   short v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "S_Ul_Us: layout" {
    var lv: c.S_Ul_Us = undefined;
    try testing.expectSize(c.S_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_Us(.{ .v1 = 10662, .v2 = 30069, .v3 = 24462 }));
}
test "S_Ul_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_Us());
}
test "S_Ul_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_Us());
}
test "S_Ul_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_Us(), .{ .v1 = 10662, .v2 = 30069, .v3 = 24462 });
}
pub export fn zig_assert_S_Ul_Us(lv: c.S_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 10662) err = 1;
    if (lv.v2 != 30069) err = 2;
    if (lv.v3 != 24462) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_Us() c.S_Ul_Us {
    return .{ .v1 = 10662, .v2 = 30069, .v3 = 24462 };
}

// From T_Snnn_xaz.c:44866:44886
// struct  S_Ul_Vp  {
//   short v1;
//   __tsu64 v2;
//   void *v3;
// };

test "S_Ul_Vp: layout" {
    var lv: c.S_Ul_Vp = undefined;
    try testing.expectSize(c.S_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "S_Ul_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Ul_Vp(.{ .v1 = 18989, .v2 = 16777, .v3 = null }));
}
test "S_Ul_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Ul_Vp());
}
test "S_Ul_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_Ul_Vp());
}
test "S_Ul_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Ul_Vp(), .{ .v1 = 18989, .v2 = 16777, .v3 = null });
}
pub export fn zig_assert_S_Ul_Vp(lv: c.S_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18989) err = 1;
    if (lv.v2 != 16777) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Ul_Vp() c.S_Ul_Vp {
    return .{ .v1 = 18989, .v2 = 16777, .v3 = null };
}

// From T_Snnn_xaz.c:44891:44909
// struct  S_Us  {
//   short v1;
//   unsigned short v2;
// };

test "S_Us: layout" {
    var lv: c.S_Us = undefined;
    try testing.expectSize(c.S_Us, 4);
    try testing.expectAlign(c.S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "S_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us(.{ .v1 = 13811, .v2 = 29262 }));
}
test "S_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us());
}
test "S_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_Us());
}
test "S_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us(), .{ .v1 = 13811, .v2 = 29262 });
}
pub export fn zig_assert_S_Us(lv: c.S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13811) err = 1;
    if (lv.v2 != 29262) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us() c.S_Us {
    return .{ .v1 = 13811, .v2 = 29262 };
}

// From T_Snnn_xaz.c:45638:45658
// struct  S_Us_C  {
//   short v1;
//   unsigned short v2;
//   char v3;
// };

test "S_Us_C: layout" {
    var lv: c.S_Us_C = undefined;
    try testing.expectSize(c.S_Us_C, 6);
    try testing.expectAlign(c.S_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Us_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_C(.{ .v1 = 31159, .v2 = 23983, .v3 = 41 }));
}
test "S_Us_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_C());
}
test "S_Us_C: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_C());
}
test "S_Us_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_C(), .{ .v1 = 31159, .v2 = 23983, .v3 = 41 });
}
pub export fn zig_assert_S_Us_C(lv: c.S_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31159) err = 1;
    if (lv.v2 != 23983) err = 2;
    if (lv.v3 != 41) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_C() c.S_Us_C {
    return .{ .v1 = 31159, .v2 = 23983, .v3 = 41 };
}

// From T_Snnn_xaz.c:45663:45683
// struct  S_Us_D  {
//   short v1;
//   unsigned short v2;
//   double v3;
// };

test "S_Us_D: layout" {
    var lv: c.S_Us_D = undefined;
    try testing.expectSize(c.S_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Us_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_D(.{ .v1 = 16499, .v2 = 27492, .v3 = 1.0 }));
}
test "S_Us_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_D());
}
test "S_Us_D: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_D());
}
test "S_Us_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_D(), .{ .v1 = 16499, .v2 = 27492, .v3 = 1.0 });
}
pub export fn zig_assert_S_Us_D(lv: c.S_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16499) err = 1;
    if (lv.v2 != 27492) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_D() c.S_Us_D {
    return .{ .v1 = 16499, .v2 = 27492, .v3 = 1.0 };
}

// From T_Snnn_xaz.c:45688:45708
// struct  S_Us_F  {
//   short v1;
//   unsigned short v2;
//   float v3;
// };

test "S_Us_F: layout" {
    var lv: c.S_Us_F = undefined;
    try testing.expectSize(c.S_Us_F, 8);
    try testing.expectAlign(c.S_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Us_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_F(.{ .v1 = 13266, .v2 = 27742, .v3 = 0.5 }));
}
test "S_Us_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_F());
}
test "S_Us_F: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_F());
}
test "S_Us_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_F(), .{ .v1 = 13266, .v2 = 27742, .v3 = 0.5 });
}
pub export fn zig_assert_S_Us_F(lv: c.S_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13266) err = 1;
    if (lv.v2 != 27742) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_F() c.S_Us_F {
    return .{ .v1 = 13266, .v2 = 27742, .v3 = 0.5 };
}

// From T_Snnn_xaz.c:45713:45733
// struct  S_Us_I  {
//   short v1;
//   unsigned short v2;
//   int v3;
// };

test "S_Us_I: layout" {
    var lv: c.S_Us_I = undefined;
    try testing.expectSize(c.S_Us_I, 8);
    try testing.expectAlign(c.S_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Us_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_I(.{ .v1 = 15784, .v2 = 1905, .v3 = 28609 }));
}
test "S_Us_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_I());
}
test "S_Us_I: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_I());
}
test "S_Us_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_I(), .{ .v1 = 15784, .v2 = 1905, .v3 = 28609 });
}
pub export fn zig_assert_S_Us_I(lv: c.S_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15784) err = 1;
    if (lv.v2 != 1905) err = 2;
    if (lv.v3 != 28609) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_I() c.S_Us_I {
    return .{ .v1 = 15784, .v2 = 1905, .v3 = 28609 };
}

// From T_Snnn_xaz.c:45738:45758
// struct  S_Us_Ip  {
//   short v1;
//   unsigned short v2;
//   int *v3;
// };

test "S_Us_Ip: layout" {
    var lv: c.S_Us_Ip = undefined;
    try testing.expectSize(c.S_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Us_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_Ip(.{ .v1 = 28013, .v2 = 16205, .v3 = null }));
}
test "S_Us_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_Ip());
}
test "S_Us_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_Ip());
}
test "S_Us_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_Ip(), .{ .v1 = 28013, .v2 = 16205, .v3 = null });
}
pub export fn zig_assert_S_Us_Ip(lv: c.S_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28013) err = 1;
    if (lv.v2 != 16205) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_Ip() c.S_Us_Ip {
    return .{ .v1 = 28013, .v2 = 16205, .v3 = null };
}

// From T_Snnn_xaz.c:45763:45783
// struct  S_Us_L  {
//   short v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "S_Us_L: layout" {
    var lv: c.S_Us_L = undefined;
    try testing.expectSize(c.S_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Us_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_L(.{ .v1 = 27652, .v2 = 8858, .v3 = 18427 }));
}
test "S_Us_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_L());
}
test "S_Us_L: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_L());
}
test "S_Us_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_L(), .{ .v1 = 27652, .v2 = 8858, .v3 = 18427 });
}
pub export fn zig_assert_S_Us_L(lv: c.S_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27652) err = 1;
    if (lv.v2 != 8858) err = 2;
    if (lv.v3 != 18427) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_L() c.S_Us_L {
    return .{ .v1 = 27652, .v2 = 8858, .v3 = 18427 };
}

// From T_Snnn_xaz.c:45788:45808
// struct  S_Us_S  {
//   short v1;
//   unsigned short v2;
//   short v3;
// };

test "S_Us_S: layout" {
    var lv: c.S_Us_S = undefined;
    try testing.expectSize(c.S_Us_S, 6);
    try testing.expectAlign(c.S_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Us_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_S(.{ .v1 = 264, .v2 = 9355, .v3 = 11871 }));
}
test "S_Us_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_S());
}
test "S_Us_S: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_S());
}
test "S_Us_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_S(), .{ .v1 = 264, .v2 = 9355, .v3 = 11871 });
}
pub export fn zig_assert_S_Us_S(lv: c.S_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 264) err = 1;
    if (lv.v2 != 9355) err = 2;
    if (lv.v3 != 11871) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_S() c.S_Us_S {
    return .{ .v1 = 264, .v2 = 9355, .v3 = 11871 };
}

// From T_Snnn_xaz.c:45813:45833
// struct  S_Us_Uc  {
//   short v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "S_Us_Uc: layout" {
    var lv: c.S_Us_Uc = undefined;
    try testing.expectSize(c.S_Us_Uc, 6);
    try testing.expectAlign(c.S_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Us_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_Uc(.{ .v1 = 15177, .v2 = 27331, .v3 = 76 }));
}
test "S_Us_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_Uc());
}
test "S_Us_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_Uc());
}
test "S_Us_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_Uc(), .{ .v1 = 15177, .v2 = 27331, .v3 = 76 });
}
pub export fn zig_assert_S_Us_Uc(lv: c.S_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 15177) err = 1;
    if (lv.v2 != 27331) err = 2;
    if (lv.v3 != 76) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_Uc() c.S_Us_Uc {
    return .{ .v1 = 15177, .v2 = 27331, .v3 = 76 };
}

// From T_Snnn_xaz.c:45838:45858
// struct  S_Us_Ui  {
//   short v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "S_Us_Ui: layout" {
    var lv: c.S_Us_Ui = undefined;
    try testing.expectSize(c.S_Us_Ui, 8);
    try testing.expectAlign(c.S_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Us_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_Ui(.{ .v1 = 3392, .v2 = 15735, .v3 = 10641 }));
}
test "S_Us_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_Ui());
}
test "S_Us_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_Ui());
}
test "S_Us_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_Ui(), .{ .v1 = 3392, .v2 = 15735, .v3 = 10641 });
}
pub export fn zig_assert_S_Us_Ui(lv: c.S_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3392) err = 1;
    if (lv.v2 != 15735) err = 2;
    if (lv.v3 != 10641) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_Ui() c.S_Us_Ui {
    return .{ .v1 = 3392, .v2 = 15735, .v3 = 10641 };
}

// From T_Snnn_xaz.c:45863:45883
// struct  S_Us_Ul  {
//   short v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "S_Us_Ul: layout" {
    var lv: c.S_Us_Ul = undefined;
    try testing.expectSize(c.S_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Us_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_Ul(.{ .v1 = 3461, .v2 = 17416, .v3 = 5110 }));
}
test "S_Us_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_Ul());
}
test "S_Us_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_Ul());
}
test "S_Us_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_Ul(), .{ .v1 = 3461, .v2 = 17416, .v3 = 5110 });
}
pub export fn zig_assert_S_Us_Ul(lv: c.S_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3461) err = 1;
    if (lv.v2 != 17416) err = 2;
    if (lv.v3 != 5110) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_Ul() c.S_Us_Ul {
    return .{ .v1 = 3461, .v2 = 17416, .v3 = 5110 };
}

// From T_Snnn_xaz.c:45888:45908
// struct  S_Us_Us  {
//   short v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "S_Us_Us: layout" {
    var lv: c.S_Us_Us = undefined;
    try testing.expectSize(c.S_Us_Us, 6);
    try testing.expectAlign(c.S_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "S_Us_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_Us(.{ .v1 = 32304, .v2 = 27609, .v3 = 23414 }));
}
test "S_Us_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_Us());
}
test "S_Us_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_Us());
}
test "S_Us_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_Us(), .{ .v1 = 32304, .v2 = 27609, .v3 = 23414 });
}
pub export fn zig_assert_S_Us_Us(lv: c.S_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32304) err = 1;
    if (lv.v2 != 27609) err = 2;
    if (lv.v3 != 23414) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_Us() c.S_Us_Us {
    return .{ .v1 = 32304, .v2 = 27609, .v3 = 23414 };
}

// From T_Snnn_xaz.c:45913:45933
// struct  S_Us_Vp  {
//   short v1;
//   unsigned short v2;
//   void *v3;
// };

test "S_Us_Vp: layout" {
    var lv: c.S_Us_Vp = undefined;
    try testing.expectSize(c.S_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "S_Us_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Us_Vp(.{ .v1 = 13313, .v2 = 23232, .v3 = null }));
}
test "S_Us_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Us_Vp());
}
test "S_Us_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_Us_Vp());
}
test "S_Us_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Us_Vp(), .{ .v1 = 13313, .v2 = 23232, .v3 = null });
}
pub export fn zig_assert_S_Us_Vp(lv: c.S_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13313) err = 1;
    if (lv.v2 != 23232) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Us_Vp() c.S_Us_Vp {
    return .{ .v1 = 13313, .v2 = 23232, .v3 = null };
}

// From T_Snnn_xaz.c:45938:45956
// struct  S_Vp  {
//   short v1;
//   void *v2;
// };

test "S_Vp: layout" {
    var lv: c.S_Vp = undefined;
    try testing.expectSize(c.S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "S_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp(.{ .v1 = 569, .v2 = null }));
}
test "S_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp());
}
test "S_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp());
}
test "S_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp(), .{ .v1 = 569, .v2 = null });
}
pub export fn zig_assert_S_Vp(lv: c.S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 569) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp() c.S_Vp {
    return .{ .v1 = 569, .v2 = null };
}

// From T_Snnn_xaz.c:46685:46705
// struct  S_Vp_C  {
//   short v1;
//   void *v2;
//   char v3;
// };

test "S_Vp_C: layout" {
    var lv: c.S_Vp_C = undefined;
    try testing.expectSize(c.S_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_C(.{ .v1 = 25479, .v2 = null, .v3 = 109 }));
}
test "S_Vp_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_C());
}
test "S_Vp_C: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_C());
}
test "S_Vp_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_C(), .{ .v1 = 25479, .v2 = null, .v3 = 109 });
}
pub export fn zig_assert_S_Vp_C(lv: c.S_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25479) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 109) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_C() c.S_Vp_C {
    return .{ .v1 = 25479, .v2 = null, .v3 = 109 };
}

// From T_Snnn_xaz.c:46710:46730
// struct  S_Vp_D  {
//   short v1;
//   void *v2;
//   double v3;
// };

test "S_Vp_D: layout" {
    var lv: c.S_Vp_D = undefined;
    try testing.expectSize(c.S_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_D(.{ .v1 = 30843, .v2 = null, .v3 = 0.5 }));
}
test "S_Vp_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_D());
}
test "S_Vp_D: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_D());
}
test "S_Vp_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_D(), .{ .v1 = 30843, .v2 = null, .v3 = 0.5 });
}
pub export fn zig_assert_S_Vp_D(lv: c.S_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30843) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_D() c.S_Vp_D {
    return .{ .v1 = 30843, .v2 = null, .v3 = 0.5 };
}

// From T_Snnn_xaz.c:46735:46755
// struct  S_Vp_F  {
//   short v1;
//   void *v2;
//   float v3;
// };

test "S_Vp_F: layout" {
    var lv: c.S_Vp_F = undefined;
    try testing.expectSize(c.S_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_F(.{ .v1 = 20007, .v2 = null, .v3 = 7.0 }));
}
test "S_Vp_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_F());
}
test "S_Vp_F: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_F());
}
test "S_Vp_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_F(), .{ .v1 = 20007, .v2 = null, .v3 = 7.0 });
}
pub export fn zig_assert_S_Vp_F(lv: c.S_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20007) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_F() c.S_Vp_F {
    return .{ .v1 = 20007, .v2 = null, .v3 = 7.0 };
}

// From T_Snnn_xaz.c:46760:46780
// struct  S_Vp_I  {
//   short v1;
//   void *v2;
//   int v3;
// };

test "S_Vp_I: layout" {
    var lv: c.S_Vp_I = undefined;
    try testing.expectSize(c.S_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_I(.{ .v1 = 26287, .v2 = null, .v3 = 6075 }));
}
test "S_Vp_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_I());
}
test "S_Vp_I: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_I());
}
test "S_Vp_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_I(), .{ .v1 = 26287, .v2 = null, .v3 = 6075 });
}
pub export fn zig_assert_S_Vp_I(lv: c.S_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26287) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 6075) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_I() c.S_Vp_I {
    return .{ .v1 = 26287, .v2 = null, .v3 = 6075 };
}

// From T_Snnn_xaz.c:46785:46805
// struct  S_Vp_Ip  {
//   short v1;
//   void *v2;
//   int *v3;
// };

test "S_Vp_Ip: layout" {
    var lv: c.S_Vp_Ip = undefined;
    try testing.expectSize(c.S_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_Ip(.{ .v1 = 26387, .v2 = null, .v3 = null }));
}
test "S_Vp_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_Ip());
}
test "S_Vp_Ip: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_Ip());
}
test "S_Vp_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_Ip(), .{ .v1 = 26387, .v2 = null, .v3 = null });
}
pub export fn zig_assert_S_Vp_Ip(lv: c.S_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26387) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_Ip() c.S_Vp_Ip {
    return .{ .v1 = 26387, .v2 = null, .v3 = null };
}

// From T_Snnn_xaz.c:46810:46830
// struct  S_Vp_L  {
//   short v1;
//   void *v2;
//   __tsi64 v3;
// };

test "S_Vp_L: layout" {
    var lv: c.S_Vp_L = undefined;
    try testing.expectSize(c.S_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_L(.{ .v1 = 26484, .v2 = null, .v3 = 14952 }));
}
test "S_Vp_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_L());
}
test "S_Vp_L: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_L());
}
test "S_Vp_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_L(), .{ .v1 = 26484, .v2 = null, .v3 = 14952 });
}
pub export fn zig_assert_S_Vp_L(lv: c.S_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 26484) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 14952) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_L() c.S_Vp_L {
    return .{ .v1 = 26484, .v2 = null, .v3 = 14952 };
}

// From T_Snnn_xaz.c:46835:46855
// struct  S_Vp_S  {
//   short v1;
//   void *v2;
//   short v3;
// };

test "S_Vp_S: layout" {
    var lv: c.S_Vp_S = undefined;
    try testing.expectSize(c.S_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_S(.{ .v1 = 12233, .v2 = null, .v3 = 29110 }));
}
test "S_Vp_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_S());
}
test "S_Vp_S: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_S());
}
test "S_Vp_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_S(), .{ .v1 = 12233, .v2 = null, .v3 = 29110 });
}
pub export fn zig_assert_S_Vp_S(lv: c.S_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12233) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 29110) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_S() c.S_Vp_S {
    return .{ .v1 = 12233, .v2 = null, .v3 = 29110 };
}

// From T_Snnn_xaz.c:46860:46880
// struct  S_Vp_Uc  {
//   short v1;
//   void *v2;
//   unsigned char v3;
// };

test "S_Vp_Uc: layout" {
    var lv: c.S_Vp_Uc = undefined;
    try testing.expectSize(c.S_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_Uc(.{ .v1 = 9581, .v2 = null, .v3 = 110 }));
}
test "S_Vp_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_Uc());
}
test "S_Vp_Uc: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_Uc());
}
test "S_Vp_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_Uc(), .{ .v1 = 9581, .v2 = null, .v3 = 110 });
}
pub export fn zig_assert_S_Vp_Uc(lv: c.S_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9581) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 110) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_Uc() c.S_Vp_Uc {
    return .{ .v1 = 9581, .v2 = null, .v3 = 110 };
}

// From T_Snnn_xaz.c:46885:46905
// struct  S_Vp_Ui  {
//   short v1;
//   void *v2;
//   unsigned int v3;
// };

test "S_Vp_Ui: layout" {
    var lv: c.S_Vp_Ui = undefined;
    try testing.expectSize(c.S_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_Ui(.{ .v1 = 9149, .v2 = null, .v3 = 28184 }));
}
test "S_Vp_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_Ui());
}
test "S_Vp_Ui: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_Ui());
}
test "S_Vp_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_Ui(), .{ .v1 = 9149, .v2 = null, .v3 = 28184 });
}
pub export fn zig_assert_S_Vp_Ui(lv: c.S_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9149) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 28184) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_Ui() c.S_Vp_Ui {
    return .{ .v1 = 9149, .v2 = null, .v3 = 28184 };
}

// From T_Snnn_xaz.c:46910:46930
// struct  S_Vp_Ul  {
//   short v1;
//   void *v2;
//   __tsu64 v3;
// };

test "S_Vp_Ul: layout" {
    var lv: c.S_Vp_Ul = undefined;
    try testing.expectSize(c.S_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_Ul(.{ .v1 = 32074, .v2 = null, .v3 = 7586 }));
}
test "S_Vp_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_Ul());
}
test "S_Vp_Ul: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_Ul());
}
test "S_Vp_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_Ul(), .{ .v1 = 32074, .v2 = null, .v3 = 7586 });
}
pub export fn zig_assert_S_Vp_Ul(lv: c.S_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 32074) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7586) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_Ul() c.S_Vp_Ul {
    return .{ .v1 = 32074, .v2 = null, .v3 = 7586 };
}

// From T_Snnn_xaz.c:46935:46955
// struct  S_Vp_Us  {
//   short v1;
//   void *v2;
//   unsigned short v3;
// };

test "S_Vp_Us: layout" {
    var lv: c.S_Vp_Us = undefined;
    try testing.expectSize(c.S_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_Us(.{ .v1 = 4352, .v2 = null, .v3 = 30808 }));
}
test "S_Vp_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_Us());
}
test "S_Vp_Us: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_Us());
}
test "S_Vp_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_Us(), .{ .v1 = 4352, .v2 = null, .v3 = 30808 });
}
pub export fn zig_assert_S_Vp_Us(lv: c.S_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4352) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 30808) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_Us() c.S_Vp_Us {
    return .{ .v1 = 4352, .v2 = null, .v3 = 30808 };
}

// From T_Snnn_xaz.c:46960:46980
// struct  S_Vp_Vp  {
//   short v1;
//   void *v2;
//   void *v3;
// };

test "S_Vp_Vp: layout" {
    var lv: c.S_Vp_Vp = undefined;
    try testing.expectSize(c.S_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "S_Vp_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_S_Vp_Vp(.{ .v1 = 29864, .v2 = null, .v3 = null }));
}
test "S_Vp_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_S_Vp_Vp());
}
test "S_Vp_Vp: C passes to Zig" {
    try testing.expectOk(c.send_S_Vp_Vp());
}
test "S_Vp_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_S_Vp_Vp(), .{ .v1 = 29864, .v2 = null, .v3 = null });
}
pub export fn zig_assert_S_Vp_Vp(lv: c.S_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29864) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_S_Vp_Vp() c.S_Vp_Vp {
    return .{ .v1 = 29864, .v2 = null, .v3 = null };
}

// From T_Snnn_xaz.c:46985:47001
// struct  Uc  {
//   unsigned char v1;
// };

test "Uc: layout" {
    var lv: c.Uc = undefined;
    try testing.expectSize(c.Uc, 1);
    try testing.expectAlign(c.Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc(.{ .v1 = 34 }));
}
test "Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc());
}
test "Uc: C passes to Zig" {
    try testing.expectOk(c.send_Uc());
}
test "Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc(), .{ .v1 = 34 });
}
pub export fn zig_assert_Uc(lv: c.Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 34) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc() c.Uc {
    return .{ .v1 = 34 };
}

// From T_Snnn_xaz.c:77306:77324
// struct  Uc_C  {
//   unsigned char v1;
//   char v2;
// };

test "Uc_C: layout" {
    var lv: c.Uc_C = undefined;
    try testing.expectSize(c.Uc_C, 2);
    try testing.expectAlign(c.Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}
test "Uc_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C(.{ .v1 = 120, .v2 = 27 }));
}
test "Uc_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C());
}
test "Uc_C: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C());
}
test "Uc_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C(), .{ .v1 = 120, .v2 = 27 });
}
pub export fn zig_assert_Uc_C(lv: c.Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 120) err = 1;
    if (lv.v2 != 27) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C() c.Uc_C {
    return .{ .v1 = 120, .v2 = 27 };
}

// From T_Snnn_xaz.c:78053:78073
// struct  Uc_C_C  {
//   unsigned char v1;
//   char v2;
//   char v3;
// };

test "Uc_C_C: layout" {
    var lv: c.Uc_C_C = undefined;
    try testing.expectSize(c.Uc_C_C, 3);
    try testing.expectAlign(c.Uc_C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_C_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_C(.{ .v1 = 46, .v2 = 6, .v3 = 117 }));
}
test "Uc_C_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_C());
}
test "Uc_C_C: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_C());
}
test "Uc_C_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_C(), .{ .v1 = 46, .v2 = 6, .v3 = 117 });
}
pub export fn zig_assert_Uc_C_C(lv: c.Uc_C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 46) err = 1;
    if (lv.v2 != 6) err = 2;
    if (lv.v3 != 117) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_C() c.Uc_C_C {
    return .{ .v1 = 46, .v2 = 6, .v3 = 117 };
}

// From T_Snnn_xaz.c:78078:78098
// struct  Uc_C_D  {
//   unsigned char v1;
//   char v2;
//   double v3;
// };

test "Uc_C_D: layout" {
    var lv: c.Uc_C_D = undefined;
    try testing.expectSize(c.Uc_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_C_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_D(.{ .v1 = 1, .v2 = 18, .v3 = 7.0 }));
}
test "Uc_C_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_D());
}
test "Uc_C_D: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_D());
}
test "Uc_C_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_D(), .{ .v1 = 1, .v2 = 18, .v3 = 7.0 });
}
pub export fn zig_assert_Uc_C_D(lv: c.Uc_C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1) err = 1;
    if (lv.v2 != 18) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_D() c.Uc_C_D {
    return .{ .v1 = 1, .v2 = 18, .v3 = 7.0 };
}

// From T_Snnn_xaz.c:78103:78123
// struct  Uc_C_F  {
//   unsigned char v1;
//   char v2;
//   float v3;
// };

test "Uc_C_F: layout" {
    var lv: c.Uc_C_F = undefined;
    try testing.expectSize(c.Uc_C_F, 8);
    try testing.expectAlign(c.Uc_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_C_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_F(.{ .v1 = 64, .v2 = 18, .v3 = 1.0 }));
}
test "Uc_C_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_F());
}
test "Uc_C_F: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_F());
}
test "Uc_C_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    if (builtin.cpu.arch == .aarch64) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_F(), .{ .v1 = 64, .v2 = 18, .v3 = 1.0 });
}
pub export fn zig_assert_Uc_C_F(lv: c.Uc_C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 64) err = 1;
    if (lv.v2 != 18) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_F() c.Uc_C_F {
    return .{ .v1 = 64, .v2 = 18, .v3 = 1.0 };
}

// From T_Snnn_xaz.c:78128:78148
// struct  Uc_C_I  {
//   unsigned char v1;
//   char v2;
//   int v3;
// };

test "Uc_C_I: layout" {
    var lv: c.Uc_C_I = undefined;
    try testing.expectSize(c.Uc_C_I, 8);
    try testing.expectAlign(c.Uc_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_C_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_I(.{ .v1 = 6, .v2 = 59, .v3 = 12321 }));
}
test "Uc_C_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_I());
}
test "Uc_C_I: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_I());
}
test "Uc_C_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_I(), .{ .v1 = 6, .v2 = 59, .v3 = 12321 });
}
pub export fn zig_assert_Uc_C_I(lv: c.Uc_C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6) err = 1;
    if (lv.v2 != 59) err = 2;
    if (lv.v3 != 12321) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_I() c.Uc_C_I {
    return .{ .v1 = 6, .v2 = 59, .v3 = 12321 };
}

// From T_Snnn_xaz.c:78153:78173
// struct  Uc_C_Ip  {
//   unsigned char v1;
//   char v2;
//   int *v3;
// };

test "Uc_C_Ip: layout" {
    var lv: c.Uc_C_Ip = undefined;
    try testing.expectSize(c.Uc_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_C_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_Ip(.{ .v1 = 33, .v2 = 21, .v3 = null }));
}
test "Uc_C_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_Ip());
}
test "Uc_C_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_Ip());
}
test "Uc_C_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_Ip(), .{ .v1 = 33, .v2 = 21, .v3 = null });
}
pub export fn zig_assert_Uc_C_Ip(lv: c.Uc_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 33) err = 1;
    if (lv.v2 != 21) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_Ip() c.Uc_C_Ip {
    return .{ .v1 = 33, .v2 = 21, .v3 = null };
}

// From T_Snnn_xaz.c:78178:78198
// struct  Uc_C_L  {
//   unsigned char v1;
//   char v2;
//   __tsi64 v3;
// };

test "Uc_C_L: layout" {
    var lv: c.Uc_C_L = undefined;
    try testing.expectSize(c.Uc_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_C_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_L(.{ .v1 = 99, .v2 = 14, .v3 = 17522 }));
}
test "Uc_C_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_L());
}
test "Uc_C_L: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_L());
}
test "Uc_C_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_L(), .{ .v1 = 99, .v2 = 14, .v3 = 17522 });
}
pub export fn zig_assert_Uc_C_L(lv: c.Uc_C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 99) err = 1;
    if (lv.v2 != 14) err = 2;
    if (lv.v3 != 17522) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_L() c.Uc_C_L {
    return .{ .v1 = 99, .v2 = 14, .v3 = 17522 };
}

// From T_Snnn_xaz.c:78203:78223
// struct  Uc_C_S  {
//   unsigned char v1;
//   char v2;
//   short v3;
// };

test "Uc_C_S: layout" {
    var lv: c.Uc_C_S = undefined;
    try testing.expectSize(c.Uc_C_S, 4);
    try testing.expectAlign(c.Uc_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_C_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_S(.{ .v1 = 114, .v2 = 99, .v3 = 5891 }));
}
test "Uc_C_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_S());
}
test "Uc_C_S: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_S());
}
test "Uc_C_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_S(), .{ .v1 = 114, .v2 = 99, .v3 = 5891 });
}
pub export fn zig_assert_Uc_C_S(lv: c.Uc_C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 114) err = 1;
    if (lv.v2 != 99) err = 2;
    if (lv.v3 != 5891) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_S() c.Uc_C_S {
    return .{ .v1 = 114, .v2 = 99, .v3 = 5891 };
}

// From T_Snnn_xaz.c:78228:78248
// struct  Uc_C_Uc  {
//   unsigned char v1;
//   char v2;
//   unsigned char v3;
// };

test "Uc_C_Uc: layout" {
    var lv: c.Uc_C_Uc = undefined;
    try testing.expectSize(c.Uc_C_Uc, 3);
    try testing.expectAlign(c.Uc_C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_C_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_Uc(.{ .v1 = 50, .v2 = 55, .v3 = 52 }));
}
test "Uc_C_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_Uc());
}
test "Uc_C_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_Uc());
}
test "Uc_C_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_Uc(), .{ .v1 = 50, .v2 = 55, .v3 = 52 });
}
pub export fn zig_assert_Uc_C_Uc(lv: c.Uc_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 50) err = 1;
    if (lv.v2 != 55) err = 2;
    if (lv.v3 != 52) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_Uc() c.Uc_C_Uc {
    return .{ .v1 = 50, .v2 = 55, .v3 = 52 };
}

// From T_Snnn_xaz.c:78253:78273
// struct  Uc_C_Ui  {
//   unsigned char v1;
//   char v2;
//   unsigned int v3;
// };

test "Uc_C_Ui: layout" {
    var lv: c.Uc_C_Ui = undefined;
    try testing.expectSize(c.Uc_C_Ui, 8);
    try testing.expectAlign(c.Uc_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_C_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_Ui(.{ .v1 = 125, .v2 = 48, .v3 = 18849 }));
}
test "Uc_C_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_Ui());
}
test "Uc_C_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_Ui());
}
test "Uc_C_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_Ui(), .{ .v1 = 125, .v2 = 48, .v3 = 18849 });
}
pub export fn zig_assert_Uc_C_Ui(lv: c.Uc_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 125) err = 1;
    if (lv.v2 != 48) err = 2;
    if (lv.v3 != 18849) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_Ui() c.Uc_C_Ui {
    return .{ .v1 = 125, .v2 = 48, .v3 = 18849 };
}

// From T_Snnn_xaz.c:78278:78298
// struct  Uc_C_Ul  {
//   unsigned char v1;
//   char v2;
//   __tsu64 v3;
// };

test "Uc_C_Ul: layout" {
    var lv: c.Uc_C_Ul = undefined;
    try testing.expectSize(c.Uc_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_C_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_Ul(.{ .v1 = 1, .v2 = 86, .v3 = 23673 }));
}
test "Uc_C_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_Ul());
}
test "Uc_C_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_Ul());
}
test "Uc_C_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_Ul(), .{ .v1 = 1, .v2 = 86, .v3 = 23673 });
}
pub export fn zig_assert_Uc_C_Ul(lv: c.Uc_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1) err = 1;
    if (lv.v2 != 86) err = 2;
    if (lv.v3 != 23673) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_Ul() c.Uc_C_Ul {
    return .{ .v1 = 1, .v2 = 86, .v3 = 23673 };
}

// From T_Snnn_xaz.c:78303:78323
// struct  Uc_C_Us  {
//   unsigned char v1;
//   char v2;
//   unsigned short v3;
// };

test "Uc_C_Us: layout" {
    var lv: c.Uc_C_Us = undefined;
    try testing.expectSize(c.Uc_C_Us, 4);
    try testing.expectAlign(c.Uc_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_C_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_Us(.{ .v1 = 59, .v2 = 21, .v3 = 23319 }));
}
test "Uc_C_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_Us());
}
test "Uc_C_Us: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_Us());
}
test "Uc_C_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_Us(), .{ .v1 = 59, .v2 = 21, .v3 = 23319 });
}
pub export fn zig_assert_Uc_C_Us(lv: c.Uc_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 59) err = 1;
    if (lv.v2 != 21) err = 2;
    if (lv.v3 != 23319) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_Us() c.Uc_C_Us {
    return .{ .v1 = 59, .v2 = 21, .v3 = 23319 };
}

// From T_Snnn_xaz.c:78328:78348
// struct  Uc_C_Vp  {
//   unsigned char v1;
//   char v2;
//   void *v3;
// };

test "Uc_C_Vp: layout" {
    var lv: c.Uc_C_Vp = undefined;
    try testing.expectSize(c.Uc_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_C_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_C_Vp(.{ .v1 = 49, .v2 = 127, .v3 = null }));
}
test "Uc_C_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_C_Vp());
}
test "Uc_C_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Uc_C_Vp());
}
test "Uc_C_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_C_Vp(), .{ .v1 = 49, .v2 = 127, .v3 = null });
}
pub export fn zig_assert_Uc_C_Vp(lv: c.Uc_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 49) err = 1;
    if (lv.v2 != 127) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_Vp() c.Uc_C_Vp {
    return .{ .v1 = 49, .v2 = 127, .v3 = null };
}

// From T_Snnn_xaz.c:78353:78371
// struct  Uc_D  {
//   unsigned char v1;
//   double v2;
// };

test "Uc_D: layout" {
    var lv: c.Uc_D = undefined;
    try testing.expectSize(c.Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Uc_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Uc_D(.{ .v1 = 83, .v2 = -0.25 }));
}
test "Uc_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Uc_D());
}
test "Uc_D: C passes to Zig" {
    try testing.expectOk(c.send_Uc_D());
}
test "Uc_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_Uc_D(), .{ .v1 = 83, .v2 = -0.25 });
}
pub export fn zig_assert_Uc_D(lv: c.Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 83) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D() c.Uc_D {
    return .{ .v1 = 83, .v2 = -0.25 };
}
