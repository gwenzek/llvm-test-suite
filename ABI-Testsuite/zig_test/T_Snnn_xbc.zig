const std = @import("std");
const testing = @import("testing.zig");
const builtin = @import("builtin");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xbc.h");
});

// From T_Snnn_xbc.c:13651:13669
// struct  Vp_C  {
//   void *v1;
//   char v2;
// };

test "Vp_C: layout" {
    var lv: c.Vp_C = undefined;
    try testing.expectSize(c.Vp_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C(.{ .v1 = null, .v2 = 24 }));
}
test "Vp_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C());
}
test "Vp_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C());
}
test "Vp_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C(c.ret_Vp_C()));
}
pub export fn zig_assert_Vp_C(lv: c.Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 24) err = 2;
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

test "Vp_C_C: layout" {
    var lv: c.Vp_C_C = undefined;
    try testing.expectSize(c.Vp_C_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Vp_C_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_C(.{ .v1 = null, .v2 = 39, .v3 = 11 }));
}
test "Vp_C_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_C());
}
test "Vp_C_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_C());
}
test "Vp_C_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_C(c.ret_Vp_C_C()));
}
pub export fn zig_assert_Vp_C_C(lv: c.Vp_C_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 39) err = 2;
    if (lv.v3 != 11) err = 3;
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

test "Vp_C_D: layout" {
    var lv: c.Vp_C_D = undefined;
    try testing.expectSize(c.Vp_C_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_C_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_D(.{ .v1 = null, .v2 = 106, .v3 = -0.25 }));
}
test "Vp_C_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_D());
}
test "Vp_C_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_D());
}
test "Vp_C_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_D(c.ret_Vp_C_D()));
}
pub export fn zig_assert_Vp_C_D(lv: c.Vp_C_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 106) err = 2;
    if (lv.v3 != -0.25) err = 3;
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

test "Vp_C_F: layout" {
    var lv: c.Vp_C_F = undefined;
    try testing.expectSize(c.Vp_C_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_C_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_F(.{ .v1 = null, .v2 = 57, .v3 = 7.0 }));
}
test "Vp_C_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_F());
}
test "Vp_C_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_F());
}
test "Vp_C_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_F(c.ret_Vp_C_F()));
}
pub export fn zig_assert_Vp_C_F(lv: c.Vp_C_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 57) err = 2;
    if (lv.v3 != 7.0) err = 3;
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

test "Vp_C_I: layout" {
    var lv: c.Vp_C_I = undefined;
    try testing.expectSize(c.Vp_C_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_C_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_I(.{ .v1 = null, .v2 = 62, .v3 = 22912 }));
}
test "Vp_C_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_I());
}
test "Vp_C_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_I());
}
test "Vp_C_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_I(c.ret_Vp_C_I()));
}
pub export fn zig_assert_Vp_C_I(lv: c.Vp_C_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 62) err = 2;
    if (lv.v3 != 22912) err = 3;
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

test "Vp_C_Ip: layout" {
    var lv: c.Vp_C_Ip = undefined;
    try testing.expectSize(c.Vp_C_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_C_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_Ip(.{ .v1 = null, .v2 = 0, .v3 = null }));
}
test "Vp_C_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_Ip());
}
test "Vp_C_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_Ip());
}
test "Vp_C_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_Ip(c.ret_Vp_C_Ip()));
}
pub export fn zig_assert_Vp_C_Ip(lv: c.Vp_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_C_L: layout" {
    var lv: c.Vp_C_L = undefined;
    try testing.expectSize(c.Vp_C_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_C_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_L(.{ .v1 = null, .v2 = 16, .v3 = 18116 }));
}
test "Vp_C_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_L());
}
test "Vp_C_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_L());
}
test "Vp_C_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_L(c.ret_Vp_C_L()));
}
pub export fn zig_assert_Vp_C_L(lv: c.Vp_C_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 16) err = 2;
    if (lv.v3 != 18116) err = 3;
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

test "Vp_C_S: layout" {
    var lv: c.Vp_C_S = undefined;
    try testing.expectSize(c.Vp_C_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_C_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_S(.{ .v1 = null, .v2 = 81, .v3 = 27635 }));
}
test "Vp_C_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_S());
}
test "Vp_C_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_S());
}
test "Vp_C_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_S(c.ret_Vp_C_S()));
}
pub export fn zig_assert_Vp_C_S(lv: c.Vp_C_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 81) err = 2;
    if (lv.v3 != 27635) err = 3;
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

test "Vp_C_Uc: layout" {
    var lv: c.Vp_C_Uc = undefined;
    try testing.expectSize(c.Vp_C_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Vp_C_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_Uc(.{ .v1 = null, .v2 = 20, .v3 = 98 }));
}
test "Vp_C_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_Uc());
}
test "Vp_C_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_Uc());
}
test "Vp_C_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_Uc(c.ret_Vp_C_Uc()));
}
pub export fn zig_assert_Vp_C_Uc(lv: c.Vp_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20) err = 2;
    if (lv.v3 != 98) err = 3;
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

test "Vp_C_Ui: layout" {
    var lv: c.Vp_C_Ui = undefined;
    try testing.expectSize(c.Vp_C_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_C_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_Ui(.{ .v1 = null, .v2 = 65, .v3 = 13797 }));
}
test "Vp_C_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_Ui());
}
test "Vp_C_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_Ui());
}
test "Vp_C_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_Ui(c.ret_Vp_C_Ui()));
}
pub export fn zig_assert_Vp_C_Ui(lv: c.Vp_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 65) err = 2;
    if (lv.v3 != 13797) err = 3;
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

test "Vp_C_Ul: layout" {
    var lv: c.Vp_C_Ul = undefined;
    try testing.expectSize(c.Vp_C_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_C_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_Ul(.{ .v1 = null, .v2 = 96, .v3 = 18622 }));
}
test "Vp_C_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_Ul());
}
test "Vp_C_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_Ul());
}
test "Vp_C_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_Ul(c.ret_Vp_C_Ul()));
}
pub export fn zig_assert_Vp_C_Ul(lv: c.Vp_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 96) err = 2;
    if (lv.v3 != 18622) err = 3;
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

test "Vp_C_Us: layout" {
    var lv: c.Vp_C_Us = undefined;
    try testing.expectSize(c.Vp_C_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_C_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_Us(.{ .v1 = null, .v2 = 109, .v3 = 24720 }));
}
test "Vp_C_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_Us());
}
test "Vp_C_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_Us());
}
test "Vp_C_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_Us(c.ret_Vp_C_Us()));
}
pub export fn zig_assert_Vp_C_Us(lv: c.Vp_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 109) err = 2;
    if (lv.v3 != 24720) err = 3;
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

test "Vp_C_Vp: layout" {
    var lv: c.Vp_C_Vp = undefined;
    try testing.expectSize(c.Vp_C_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_C_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_C_Vp(.{ .v1 = null, .v2 = 16, .v3 = null }));
}
test "Vp_C_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_C_Vp());
}
test "Vp_C_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_C_Vp());
}
test "Vp_C_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_C_Vp(c.ret_Vp_C_Vp()));
}
pub export fn zig_assert_Vp_C_Vp(lv: c.Vp_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 16) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_D: layout" {
    var lv: c.Vp_D = undefined;
    try testing.expectSize(c.Vp_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D(.{ .v1 = null, .v2 = 0.5 }));
}
test "Vp_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D());
}
test "Vp_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D());
}
test "Vp_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D(c.ret_Vp_D()));
}
pub export fn zig_assert_Vp_D(lv: c.Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.5) err = 2;
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

test "Vp_D_C: layout" {
    var lv: c.Vp_D_C = undefined;
    try testing.expectSize(c.Vp_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_C(.{ .v1 = null, .v2 = -0.25, .v3 = 3 }));
}
test "Vp_D_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_C());
}
test "Vp_D_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_C());
}
test "Vp_D_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_C(c.ret_Vp_D_C()));
}
pub export fn zig_assert_Vp_D_C(lv: c.Vp_D_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 3) err = 3;
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

test "Vp_D_D: layout" {
    var lv: c.Vp_D_D = undefined;
    try testing.expectSize(c.Vp_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_D(.{ .v1 = null, .v2 = -2.125, .v3 = -2.125 }));
}
test "Vp_D_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_D());
}
test "Vp_D_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_D());
}
test "Vp_D_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_D(c.ret_Vp_D_D()));
}
pub export fn zig_assert_Vp_D_D(lv: c.Vp_D_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != -2.125) err = 3;
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

test "Vp_D_F: layout" {
    var lv: c.Vp_D_F = undefined;
    try testing.expectSize(c.Vp_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_F(.{ .v1 = null, .v2 = -2.125, .v3 = -0.25 }));
}
test "Vp_D_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_F());
}
test "Vp_D_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_F());
}
test "Vp_D_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_F(c.ret_Vp_D_F()));
}
pub export fn zig_assert_Vp_D_F(lv: c.Vp_D_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != -0.25) err = 3;
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

test "Vp_D_I: layout" {
    var lv: c.Vp_D_I = undefined;
    try testing.expectSize(c.Vp_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_I(.{ .v1 = null, .v2 = 0.875, .v3 = 9961 }));
}
test "Vp_D_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_I());
}
test "Vp_D_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_I());
}
test "Vp_D_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_I(c.ret_Vp_D_I()));
}
pub export fn zig_assert_Vp_D_I(lv: c.Vp_D_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 9961) err = 3;
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

test "Vp_D_Ip: layout" {
    var lv: c.Vp_D_Ip = undefined;
    try testing.expectSize(c.Vp_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_Ip(.{ .v1 = null, .v2 = -0.25, .v3 = null }));
}
test "Vp_D_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_Ip());
}
test "Vp_D_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_Ip());
}
test "Vp_D_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_Ip(c.ret_Vp_D_Ip()));
}
pub export fn zig_assert_Vp_D_Ip(lv: c.Vp_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_D_L: layout" {
    var lv: c.Vp_D_L = undefined;
    try testing.expectSize(c.Vp_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_L(.{ .v1 = null, .v2 = 0.875, .v3 = 17787 }));
}
test "Vp_D_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_L());
}
test "Vp_D_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_L());
}
test "Vp_D_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_L(c.ret_Vp_D_L()));
}
pub export fn zig_assert_Vp_D_L(lv: c.Vp_D_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 17787) err = 3;
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

test "Vp_D_S: layout" {
    var lv: c.Vp_D_S = undefined;
    try testing.expectSize(c.Vp_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_S(.{ .v1 = null, .v2 = -0.25, .v3 = 29276 }));
}
test "Vp_D_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_S());
}
test "Vp_D_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_S());
}
test "Vp_D_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_S(c.ret_Vp_D_S()));
}
pub export fn zig_assert_Vp_D_S(lv: c.Vp_D_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 29276) err = 3;
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

test "Vp_D_Uc: layout" {
    var lv: c.Vp_D_Uc = undefined;
    try testing.expectSize(c.Vp_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_Uc(.{ .v1 = null, .v2 = 0.875, .v3 = 26 }));
}
test "Vp_D_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_Uc());
}
test "Vp_D_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_Uc());
}
test "Vp_D_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_Uc(c.ret_Vp_D_Uc()));
}
pub export fn zig_assert_Vp_D_Uc(lv: c.Vp_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 26) err = 3;
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

test "Vp_D_Ui: layout" {
    var lv: c.Vp_D_Ui = undefined;
    try testing.expectSize(c.Vp_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_Ui(.{ .v1 = null, .v2 = 7.0, .v3 = 1017 }));
}
test "Vp_D_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_Ui());
}
test "Vp_D_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_Ui());
}
test "Vp_D_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_Ui(c.ret_Vp_D_Ui()));
}
pub export fn zig_assert_Vp_D_Ui(lv: c.Vp_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 1017) err = 3;
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

test "Vp_D_Ul: layout" {
    var lv: c.Vp_D_Ul = undefined;
    try testing.expectSize(c.Vp_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_Ul(.{ .v1 = null, .v2 = -2.125, .v3 = 18055 }));
}
test "Vp_D_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_Ul());
}
test "Vp_D_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_Ul());
}
test "Vp_D_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_Ul(c.ret_Vp_D_Ul()));
}
pub export fn zig_assert_Vp_D_Ul(lv: c.Vp_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 18055) err = 3;
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

test "Vp_D_Us: layout" {
    var lv: c.Vp_D_Us = undefined;
    try testing.expectSize(c.Vp_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_Us(.{ .v1 = null, .v2 = 1.0, .v3 = 13068 }));
}
test "Vp_D_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_Us());
}
test "Vp_D_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_Us());
}
test "Vp_D_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_Us(c.ret_Vp_D_Us()));
}
pub export fn zig_assert_Vp_D_Us(lv: c.Vp_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 13068) err = 3;
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

test "Vp_D_Vp: layout" {
    var lv: c.Vp_D_Vp = undefined;
    try testing.expectSize(c.Vp_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_D_Vp(.{ .v1 = null, .v2 = -0.25, .v3 = null }));
}
test "Vp_D_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_D_Vp());
}
test "Vp_D_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_D_Vp());
}
test "Vp_D_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_D_Vp(c.ret_Vp_D_Vp()));
}
pub export fn zig_assert_Vp_D_Vp(lv: c.Vp_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_F: layout" {
    var lv: c.Vp_F = undefined;
    try testing.expectSize(c.Vp_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F(.{ .v1 = null, .v2 = -2.125 }));
}
test "Vp_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F());
}
test "Vp_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F());
}
test "Vp_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F(c.ret_Vp_F()));
}
pub export fn zig_assert_Vp_F(lv: c.Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
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

test "Vp_F_C: layout" {
    var lv: c.Vp_F_C = undefined;
    try testing.expectSize(c.Vp_F_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_C(.{ .v1 = null, .v2 = 0.875, .v3 = 23 }));
}
test "Vp_F_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_C());
}
test "Vp_F_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_C());
}
test "Vp_F_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_C(c.ret_Vp_F_C()));
}
pub export fn zig_assert_Vp_F_C(lv: c.Vp_F_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 23) err = 3;
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

test "Vp_F_D: layout" {
    var lv: c.Vp_F_D = undefined;
    try testing.expectSize(c.Vp_F_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_F_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_D(.{ .v1 = null, .v2 = -2.125, .v3 = -0.25 }));
}
test "Vp_F_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_D());
}
test "Vp_F_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_D());
}
test "Vp_F_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_D(c.ret_Vp_F_D()));
}
pub export fn zig_assert_Vp_F_D(lv: c.Vp_F_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != -0.25) err = 3;
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

test "Vp_F_F: layout" {
    var lv: c.Vp_F_F = undefined;
    try testing.expectSize(c.Vp_F_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_F(.{ .v1 = null, .v2 = 7.0, .v3 = 4.5 }));
}
test "Vp_F_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_F());
}
test "Vp_F_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_F());
}
test "Vp_F_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_F(c.ret_Vp_F_F()));
}
pub export fn zig_assert_Vp_F_F(lv: c.Vp_F_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 4.5) err = 3;
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

test "Vp_F_I: layout" {
    var lv: c.Vp_F_I = undefined;
    try testing.expectSize(c.Vp_F_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_I(.{ .v1 = null, .v2 = 1.0, .v3 = 23844 }));
}
test "Vp_F_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_I());
}
test "Vp_F_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_I());
}
test "Vp_F_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_I(c.ret_Vp_F_I()));
}
pub export fn zig_assert_Vp_F_I(lv: c.Vp_F_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 23844) err = 3;
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

test "Vp_F_Ip: layout" {
    var lv: c.Vp_F_Ip = undefined;
    try testing.expectSize(c.Vp_F_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_F_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_Ip(.{ .v1 = null, .v2 = 4.5, .v3 = null }));
}
test "Vp_F_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_Ip());
}
test "Vp_F_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_Ip());
}
test "Vp_F_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_Ip(c.ret_Vp_F_Ip()));
}
pub export fn zig_assert_Vp_F_Ip(lv: c.Vp_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_F_L: layout" {
    var lv: c.Vp_F_L = undefined;
    try testing.expectSize(c.Vp_F_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_F_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_L(.{ .v1 = null, .v2 = 0.875, .v3 = 4038 }));
}
test "Vp_F_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_L());
}
test "Vp_F_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_L());
}
test "Vp_F_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_L(c.ret_Vp_F_L()));
}
pub export fn zig_assert_Vp_F_L(lv: c.Vp_F_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 4038) err = 3;
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

test "Vp_F_S: layout" {
    var lv: c.Vp_F_S = undefined;
    try testing.expectSize(c.Vp_F_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_S(.{ .v1 = null, .v2 = 4.5, .v3 = 23153 }));
}
test "Vp_F_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_S());
}
test "Vp_F_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_S());
}
test "Vp_F_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_S(c.ret_Vp_F_S()));
}
pub export fn zig_assert_Vp_F_S(lv: c.Vp_F_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 23153) err = 3;
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

test "Vp_F_Uc: layout" {
    var lv: c.Vp_F_Uc = undefined;
    try testing.expectSize(c.Vp_F_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_Uc(.{ .v1 = null, .v2 = 7.0, .v3 = 33 }));
}
test "Vp_F_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_Uc());
}
test "Vp_F_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_Uc());
}
test "Vp_F_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_Uc(c.ret_Vp_F_Uc()));
}
pub export fn zig_assert_Vp_F_Uc(lv: c.Vp_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 33) err = 3;
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

test "Vp_F_Ui: layout" {
    var lv: c.Vp_F_Ui = undefined;
    try testing.expectSize(c.Vp_F_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_Ui(.{ .v1 = null, .v2 = -0.25, .v3 = 30633 }));
}
test "Vp_F_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_Ui());
}
test "Vp_F_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_Ui());
}
test "Vp_F_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_Ui(c.ret_Vp_F_Ui()));
}
pub export fn zig_assert_Vp_F_Ui(lv: c.Vp_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 30633) err = 3;
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

test "Vp_F_Ul: layout" {
    var lv: c.Vp_F_Ul = undefined;
    try testing.expectSize(c.Vp_F_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_F_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_Ul(.{ .v1 = null, .v2 = -0.25, .v3 = 8866 }));
}
test "Vp_F_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_Ul());
}
test "Vp_F_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_Ul());
}
test "Vp_F_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_Ul(c.ret_Vp_F_Ul()));
}
pub export fn zig_assert_Vp_F_Ul(lv: c.Vp_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 8866) err = 3;
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

test "Vp_F_Us: layout" {
    var lv: c.Vp_F_Us = undefined;
    try testing.expectSize(c.Vp_F_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_Us(.{ .v1 = null, .v2 = 0.875, .v3 = 6210 }));
}
test "Vp_F_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_Us());
}
test "Vp_F_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_Us());
}
test "Vp_F_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_Us(c.ret_Vp_F_Us()));
}
pub export fn zig_assert_Vp_F_Us(lv: c.Vp_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 6210) err = 3;
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

test "Vp_F_Vp: layout" {
    var lv: c.Vp_F_Vp = undefined;
    try testing.expectSize(c.Vp_F_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_F_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_F_Vp(.{ .v1 = null, .v2 = 0.875, .v3 = null }));
}
test "Vp_F_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_F_Vp());
}
test "Vp_F_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_F_Vp());
}
test "Vp_F_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_F_Vp(c.ret_Vp_F_Vp()));
}
pub export fn zig_assert_Vp_F_Vp(lv: c.Vp_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_I: layout" {
    var lv: c.Vp_I = undefined;
    try testing.expectSize(c.Vp_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I(.{ .v1 = null, .v2 = 23393 }));
}
test "Vp_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I());
}
test "Vp_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I());
}
test "Vp_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I(c.ret_Vp_I()));
}
pub export fn zig_assert_Vp_I(lv: c.Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 23393) err = 2;
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

test "Vp_I_C: layout" {
    var lv: c.Vp_I_C = undefined;
    try testing.expectSize(c.Vp_I_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_C(.{ .v1 = null, .v2 = 1637, .v3 = 114 }));
}
test "Vp_I_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_C());
}
test "Vp_I_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_C());
}
test "Vp_I_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_C(c.ret_Vp_I_C()));
}
pub export fn zig_assert_Vp_I_C(lv: c.Vp_I_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1637) err = 2;
    if (lv.v3 != 114) err = 3;
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

test "Vp_I_D: layout" {
    var lv: c.Vp_I_D = undefined;
    try testing.expectSize(c.Vp_I_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_I_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_D(.{ .v1 = null, .v2 = 1972, .v3 = -2.125 }));
}
test "Vp_I_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_D());
}
test "Vp_I_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_D());
}
test "Vp_I_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_D(c.ret_Vp_I_D()));
}
pub export fn zig_assert_Vp_I_D(lv: c.Vp_I_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1972) err = 2;
    if (lv.v3 != -2.125) err = 3;
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

test "Vp_I_F: layout" {
    var lv: c.Vp_I_F = undefined;
    try testing.expectSize(c.Vp_I_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_F(.{ .v1 = null, .v2 = 27881, .v3 = -2.125 }));
}
test "Vp_I_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_F());
}
test "Vp_I_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_F());
}
test "Vp_I_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_F(c.ret_Vp_I_F()));
}
pub export fn zig_assert_Vp_I_F(lv: c.Vp_I_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27881) err = 2;
    if (lv.v3 != -2.125) err = 3;
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

test "Vp_I_I: layout" {
    var lv: c.Vp_I_I = undefined;
    try testing.expectSize(c.Vp_I_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_I(.{ .v1 = null, .v2 = 10924, .v3 = 24474 }));
}
test "Vp_I_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_I());
}
test "Vp_I_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_I());
}
test "Vp_I_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_I(c.ret_Vp_I_I()));
}
pub export fn zig_assert_Vp_I_I(lv: c.Vp_I_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 10924) err = 2;
    if (lv.v3 != 24474) err = 3;
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

test "Vp_I_Ip: layout" {
    var lv: c.Vp_I_Ip = undefined;
    try testing.expectSize(c.Vp_I_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_I_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_Ip(.{ .v1 = null, .v2 = 16922, .v3 = null }));
}
test "Vp_I_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_Ip());
}
test "Vp_I_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_Ip());
}
test "Vp_I_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_Ip(c.ret_Vp_I_Ip()));
}
pub export fn zig_assert_Vp_I_Ip(lv: c.Vp_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 16922) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_I_L: layout" {
    var lv: c.Vp_I_L = undefined;
    try testing.expectSize(c.Vp_I_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_I_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_L(.{ .v1 = null, .v2 = 6583, .v3 = 21965 }));
}
test "Vp_I_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_L());
}
test "Vp_I_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_L());
}
test "Vp_I_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_L(c.ret_Vp_I_L()));
}
pub export fn zig_assert_Vp_I_L(lv: c.Vp_I_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 6583) err = 2;
    if (lv.v3 != 21965) err = 3;
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

test "Vp_I_S: layout" {
    var lv: c.Vp_I_S = undefined;
    try testing.expectSize(c.Vp_I_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_S(.{ .v1 = null, .v2 = 21480, .v3 = 25061 }));
}
test "Vp_I_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_S());
}
test "Vp_I_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_S());
}
test "Vp_I_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_S(c.ret_Vp_I_S()));
}
pub export fn zig_assert_Vp_I_S(lv: c.Vp_I_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21480) err = 2;
    if (lv.v3 != 25061) err = 3;
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

test "Vp_I_Uc: layout" {
    var lv: c.Vp_I_Uc = undefined;
    try testing.expectSize(c.Vp_I_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_Uc(.{ .v1 = null, .v2 = 16553, .v3 = 97 }));
}
test "Vp_I_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_Uc());
}
test "Vp_I_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_Uc());
}
test "Vp_I_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_Uc(c.ret_Vp_I_Uc()));
}
pub export fn zig_assert_Vp_I_Uc(lv: c.Vp_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 16553) err = 2;
    if (lv.v3 != 97) err = 3;
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

test "Vp_I_Ui: layout" {
    var lv: c.Vp_I_Ui = undefined;
    try testing.expectSize(c.Vp_I_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_Ui(.{ .v1 = null, .v2 = 19921, .v3 = 1267 }));
}
test "Vp_I_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_Ui());
}
test "Vp_I_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_Ui());
}
test "Vp_I_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_Ui(c.ret_Vp_I_Ui()));
}
pub export fn zig_assert_Vp_I_Ui(lv: c.Vp_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19921) err = 2;
    if (lv.v3 != 1267) err = 3;
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

test "Vp_I_Ul: layout" {
    var lv: c.Vp_I_Ul = undefined;
    try testing.expectSize(c.Vp_I_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_I_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_Ul(.{ .v1 = null, .v2 = 20058, .v3 = 6949 }));
}
test "Vp_I_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_Ul());
}
test "Vp_I_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_Ul());
}
test "Vp_I_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_Ul(c.ret_Vp_I_Ul()));
}
pub export fn zig_assert_Vp_I_Ul(lv: c.Vp_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20058) err = 2;
    if (lv.v3 != 6949) err = 3;
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

test "Vp_I_Us: layout" {
    var lv: c.Vp_I_Us = undefined;
    try testing.expectSize(c.Vp_I_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_Us(.{ .v1 = null, .v2 = 11156, .v3 = 2529 }));
}
test "Vp_I_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_Us());
}
test "Vp_I_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_Us());
}
test "Vp_I_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_Us(c.ret_Vp_I_Us()));
}
pub export fn zig_assert_Vp_I_Us(lv: c.Vp_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 11156) err = 2;
    if (lv.v3 != 2529) err = 3;
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

test "Vp_I_Vp: layout" {
    var lv: c.Vp_I_Vp = undefined;
    try testing.expectSize(c.Vp_I_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_I_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_I_Vp(.{ .v1 = null, .v2 = 15788, .v3 = null }));
}
test "Vp_I_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_I_Vp());
}
test "Vp_I_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_I_Vp());
}
test "Vp_I_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_I_Vp(c.ret_Vp_I_Vp()));
}
pub export fn zig_assert_Vp_I_Vp(lv: c.Vp_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15788) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Ip: layout" {
    var lv: c.Vp_Ip = undefined;
    try testing.expectSize(c.Vp_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip(.{ .v1 = null, .v2 = null }));
}
test "Vp_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip());
}
test "Vp_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip());
}
test "Vp_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip(c.ret_Vp_Ip()));
}
pub export fn zig_assert_Vp_Ip(lv: c.Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
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

test "Vp_Ip_C: layout" {
    var lv: c.Vp_Ip_C = undefined;
    try testing.expectSize(c.Vp_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_C(.{ .v1 = null, .v2 = null, .v3 = 53 }));
}
test "Vp_Ip_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_C());
}
test "Vp_Ip_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_C());
}
test "Vp_Ip_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_C(c.ret_Vp_Ip_C()));
}
pub export fn zig_assert_Vp_Ip_C(lv: c.Vp_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 53) err = 3;
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

test "Vp_Ip_D: layout" {
    var lv: c.Vp_Ip_D = undefined;
    try testing.expectSize(c.Vp_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_D(.{ .v1 = null, .v2 = null, .v3 = -0.25 }));
}
test "Vp_Ip_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_D());
}
test "Vp_Ip_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_D());
}
test "Vp_Ip_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_D(c.ret_Vp_Ip_D()));
}
pub export fn zig_assert_Vp_Ip_D(lv: c.Vp_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -0.25) err = 3;
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

test "Vp_Ip_F: layout" {
    var lv: c.Vp_Ip_F = undefined;
    try testing.expectSize(c.Vp_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_F(.{ .v1 = null, .v2 = null, .v3 = 1.0 }));
}
test "Vp_Ip_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_F());
}
test "Vp_Ip_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_F());
}
test "Vp_Ip_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_F(c.ret_Vp_Ip_F()));
}
pub export fn zig_assert_Vp_Ip_F(lv: c.Vp_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 1.0) err = 3;
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

test "Vp_Ip_I: layout" {
    var lv: c.Vp_Ip_I = undefined;
    try testing.expectSize(c.Vp_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_I(.{ .v1 = null, .v2 = null, .v3 = 21941 }));
}
test "Vp_Ip_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_I());
}
test "Vp_Ip_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_I());
}
test "Vp_Ip_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_I(c.ret_Vp_Ip_I()));
}
pub export fn zig_assert_Vp_Ip_I(lv: c.Vp_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 21941) err = 3;
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

test "Vp_Ip_Ip: layout" {
    var lv: c.Vp_Ip_Ip = undefined;
    try testing.expectSize(c.Vp_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_Ip(.{ .v1 = null, .v2 = null, .v3 = null }));
}
test "Vp_Ip_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_Ip());
}
test "Vp_Ip_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_Ip());
}
test "Vp_Ip_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_Ip(c.ret_Vp_Ip_Ip()));
}
pub export fn zig_assert_Vp_Ip_Ip(lv: c.Vp_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Ip_L: layout" {
    var lv: c.Vp_Ip_L = undefined;
    try testing.expectSize(c.Vp_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_L(.{ .v1 = null, .v2 = null, .v3 = 18116 }));
}
test "Vp_Ip_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_L());
}
test "Vp_Ip_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_L());
}
test "Vp_Ip_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_L(c.ret_Vp_Ip_L()));
}
pub export fn zig_assert_Vp_Ip_L(lv: c.Vp_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 18116) err = 3;
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

test "Vp_Ip_S: layout" {
    var lv: c.Vp_Ip_S = undefined;
    try testing.expectSize(c.Vp_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_S(.{ .v1 = null, .v2 = null, .v3 = 31632 }));
}
test "Vp_Ip_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_S());
}
test "Vp_Ip_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_S());
}
test "Vp_Ip_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_S(c.ret_Vp_Ip_S()));
}
pub export fn zig_assert_Vp_Ip_S(lv: c.Vp_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 31632) err = 3;
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

test "Vp_Ip_Uc: layout" {
    var lv: c.Vp_Ip_Uc = undefined;
    try testing.expectSize(c.Vp_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_Uc(.{ .v1 = null, .v2 = null, .v3 = 107 }));
}
test "Vp_Ip_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_Uc());
}
test "Vp_Ip_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_Uc());
}
test "Vp_Ip_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_Uc(c.ret_Vp_Ip_Uc()));
}
pub export fn zig_assert_Vp_Ip_Uc(lv: c.Vp_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 107) err = 3;
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

test "Vp_Ip_Ui: layout" {
    var lv: c.Vp_Ip_Ui = undefined;
    try testing.expectSize(c.Vp_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_Ui(.{ .v1 = null, .v2 = null, .v3 = 30947 }));
}
test "Vp_Ip_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_Ui());
}
test "Vp_Ip_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_Ui());
}
test "Vp_Ip_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_Ui(c.ret_Vp_Ip_Ui()));
}
pub export fn zig_assert_Vp_Ip_Ui(lv: c.Vp_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 30947) err = 3;
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

test "Vp_Ip_Ul: layout" {
    var lv: c.Vp_Ip_Ul = undefined;
    try testing.expectSize(c.Vp_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_Ul(.{ .v1 = null, .v2 = null, .v3 = 10704 }));
}
test "Vp_Ip_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_Ul());
}
test "Vp_Ip_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_Ul());
}
test "Vp_Ip_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_Ul(c.ret_Vp_Ip_Ul()));
}
pub export fn zig_assert_Vp_Ip_Ul(lv: c.Vp_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 10704) err = 3;
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

test "Vp_Ip_Us: layout" {
    var lv: c.Vp_Ip_Us = undefined;
    try testing.expectSize(c.Vp_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_Us(.{ .v1 = null, .v2 = null, .v3 = 8391 }));
}
test "Vp_Ip_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_Us());
}
test "Vp_Ip_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_Us());
}
test "Vp_Ip_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_Us(c.ret_Vp_Ip_Us()));
}
pub export fn zig_assert_Vp_Ip_Us(lv: c.Vp_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 8391) err = 3;
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

test "Vp_Ip_Vp: layout" {
    var lv: c.Vp_Ip_Vp = undefined;
    try testing.expectSize(c.Vp_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ip_Vp(.{ .v1 = null, .v2 = null, .v3 = null }));
}
test "Vp_Ip_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ip_Vp());
}
test "Vp_Ip_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ip_Vp());
}
test "Vp_Ip_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ip_Vp(c.ret_Vp_Ip_Vp()));
}
pub export fn zig_assert_Vp_Ip_Vp(lv: c.Vp_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_L: layout" {
    var lv: c.Vp_L = undefined;
    try testing.expectSize(c.Vp_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L(.{ .v1 = null, .v2 = 15055 }));
}
test "Vp_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L());
}
test "Vp_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L());
}
test "Vp_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L(c.ret_Vp_L()));
}
pub export fn zig_assert_Vp_L(lv: c.Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15055) err = 2;
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

test "Vp_L_C: layout" {
    var lv: c.Vp_L_C = undefined;
    try testing.expectSize(c.Vp_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_C(.{ .v1 = null, .v2 = 28354, .v3 = 25 }));
}
test "Vp_L_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_C());
}
test "Vp_L_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_C());
}
test "Vp_L_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_C(c.ret_Vp_L_C()));
}
pub export fn zig_assert_Vp_L_C(lv: c.Vp_L_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28354) err = 2;
    if (lv.v3 != 25) err = 3;
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

test "Vp_L_D: layout" {
    var lv: c.Vp_L_D = undefined;
    try testing.expectSize(c.Vp_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_D(.{ .v1 = null, .v2 = 32669, .v3 = 0.875 }));
}
test "Vp_L_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_D());
}
test "Vp_L_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_D());
}
test "Vp_L_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_D(c.ret_Vp_L_D()));
}
pub export fn zig_assert_Vp_L_D(lv: c.Vp_L_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 32669) err = 2;
    if (lv.v3 != 0.875) err = 3;
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

test "Vp_L_F: layout" {
    var lv: c.Vp_L_F = undefined;
    try testing.expectSize(c.Vp_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_F(.{ .v1 = null, .v2 = 19722, .v3 = 0.875 }));
}
test "Vp_L_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_F());
}
test "Vp_L_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_F());
}
test "Vp_L_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_F(c.ret_Vp_L_F()));
}
pub export fn zig_assert_Vp_L_F(lv: c.Vp_L_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19722) err = 2;
    if (lv.v3 != 0.875) err = 3;
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

test "Vp_L_I: layout" {
    var lv: c.Vp_L_I = undefined;
    try testing.expectSize(c.Vp_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_I(.{ .v1 = null, .v2 = 22785, .v3 = 20916 }));
}
test "Vp_L_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_I());
}
test "Vp_L_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_I());
}
test "Vp_L_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_I(c.ret_Vp_L_I()));
}
pub export fn zig_assert_Vp_L_I(lv: c.Vp_L_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 22785) err = 2;
    if (lv.v3 != 20916) err = 3;
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

test "Vp_L_Ip: layout" {
    var lv: c.Vp_L_Ip = undefined;
    try testing.expectSize(c.Vp_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_Ip(.{ .v1 = null, .v2 = 28290, .v3 = null }));
}
test "Vp_L_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_Ip());
}
test "Vp_L_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_Ip());
}
test "Vp_L_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_Ip(c.ret_Vp_L_Ip()));
}
pub export fn zig_assert_Vp_L_Ip(lv: c.Vp_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28290) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_L_L: layout" {
    var lv: c.Vp_L_L = undefined;
    try testing.expectSize(c.Vp_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_L(.{ .v1 = null, .v2 = 28192, .v3 = 6050 }));
}
test "Vp_L_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_L());
}
test "Vp_L_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_L());
}
test "Vp_L_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_L(c.ret_Vp_L_L()));
}
pub export fn zig_assert_Vp_L_L(lv: c.Vp_L_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28192) err = 2;
    if (lv.v3 != 6050) err = 3;
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

test "Vp_L_S: layout" {
    var lv: c.Vp_L_S = undefined;
    try testing.expectSize(c.Vp_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_S(.{ .v1 = null, .v2 = 56, .v3 = 14166 }));
}
test "Vp_L_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_S());
}
test "Vp_L_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_S());
}
test "Vp_L_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_S(c.ret_Vp_L_S()));
}
pub export fn zig_assert_Vp_L_S(lv: c.Vp_L_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 56) err = 2;
    if (lv.v3 != 14166) err = 3;
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

test "Vp_L_Uc: layout" {
    var lv: c.Vp_L_Uc = undefined;
    try testing.expectSize(c.Vp_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_Uc(.{ .v1 = null, .v2 = 26724, .v3 = 65 }));
}
test "Vp_L_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_Uc());
}
test "Vp_L_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_Uc());
}
test "Vp_L_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_Uc(c.ret_Vp_L_Uc()));
}
pub export fn zig_assert_Vp_L_Uc(lv: c.Vp_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 26724) err = 2;
    if (lv.v3 != 65) err = 3;
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

test "Vp_L_Ui: layout" {
    var lv: c.Vp_L_Ui = undefined;
    try testing.expectSize(c.Vp_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_Ui(.{ .v1 = null, .v2 = 17745, .v3 = 25100 }));
}
test "Vp_L_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_Ui());
}
test "Vp_L_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_Ui());
}
test "Vp_L_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_Ui(c.ret_Vp_L_Ui()));
}
pub export fn zig_assert_Vp_L_Ui(lv: c.Vp_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 17745) err = 2;
    if (lv.v3 != 25100) err = 3;
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

test "Vp_L_Ul: layout" {
    var lv: c.Vp_L_Ul = undefined;
    try testing.expectSize(c.Vp_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_Ul(.{ .v1 = null, .v2 = 28818, .v3 = 28707 }));
}
test "Vp_L_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_Ul());
}
test "Vp_L_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_Ul());
}
test "Vp_L_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_Ul(c.ret_Vp_L_Ul()));
}
pub export fn zig_assert_Vp_L_Ul(lv: c.Vp_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28818) err = 2;
    if (lv.v3 != 28707) err = 3;
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

test "Vp_L_Us: layout" {
    var lv: c.Vp_L_Us = undefined;
    try testing.expectSize(c.Vp_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_Us(.{ .v1 = null, .v2 = 23192, .v3 = 1547 }));
}
test "Vp_L_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_Us());
}
test "Vp_L_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_Us());
}
test "Vp_L_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_Us(c.ret_Vp_L_Us()));
}
pub export fn zig_assert_Vp_L_Us(lv: c.Vp_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 23192) err = 2;
    if (lv.v3 != 1547) err = 3;
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

test "Vp_L_Vp: layout" {
    var lv: c.Vp_L_Vp = undefined;
    try testing.expectSize(c.Vp_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_L_Vp(.{ .v1 = null, .v2 = 2020, .v3 = null }));
}
test "Vp_L_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_L_Vp());
}
test "Vp_L_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_L_Vp());
}
test "Vp_L_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_L_Vp(c.ret_Vp_L_Vp()));
}
pub export fn zig_assert_Vp_L_Vp(lv: c.Vp_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 2020) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_S: layout" {
    var lv: c.Vp_S = undefined;
    try testing.expectSize(c.Vp_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S(.{ .v1 = null, .v2 = 3165 }));
}
test "Vp_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S());
}
test "Vp_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S());
}
test "Vp_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S(c.ret_Vp_S()));
}
pub export fn zig_assert_Vp_S(lv: c.Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 3165) err = 2;
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

test "Vp_S_C: layout" {
    var lv: c.Vp_S_C = undefined;
    try testing.expectSize(c.Vp_S_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_S_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_C(.{ .v1 = null, .v2 = 20726, .v3 = 47 }));
}
test "Vp_S_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_C());
}
test "Vp_S_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_C());
}
test "Vp_S_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_C(c.ret_Vp_S_C()));
}
pub export fn zig_assert_Vp_S_C(lv: c.Vp_S_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20726) err = 2;
    if (lv.v3 != 47) err = 3;
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

test "Vp_S_D: layout" {
    var lv: c.Vp_S_D = undefined;
    try testing.expectSize(c.Vp_S_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_S_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_D(.{ .v1 = null, .v2 = 11541, .v3 = -0.25 }));
}
test "Vp_S_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_D());
}
test "Vp_S_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_D());
}
test "Vp_S_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_D(c.ret_Vp_S_D()));
}
pub export fn zig_assert_Vp_S_D(lv: c.Vp_S_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 11541) err = 2;
    if (lv.v3 != -0.25) err = 3;
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

test "Vp_S_F: layout" {
    var lv: c.Vp_S_F = undefined;
    try testing.expectSize(c.Vp_S_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_S_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_F(.{ .v1 = null, .v2 = 29716, .v3 = 0.5 }));
}
test "Vp_S_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_F());
}
test "Vp_S_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_F());
}
test "Vp_S_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_F(c.ret_Vp_S_F()));
}
pub export fn zig_assert_Vp_S_F(lv: c.Vp_S_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 29716) err = 2;
    if (lv.v3 != 0.5) err = 3;
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

test "Vp_S_I: layout" {
    var lv: c.Vp_S_I = undefined;
    try testing.expectSize(c.Vp_S_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_S_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_I(.{ .v1 = null, .v2 = 11380, .v3 = 937 }));
}
test "Vp_S_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_I());
}
test "Vp_S_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_I());
}
test "Vp_S_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_I(c.ret_Vp_S_I()));
}
pub export fn zig_assert_Vp_S_I(lv: c.Vp_S_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 11380) err = 2;
    if (lv.v3 != 937) err = 3;
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

test "Vp_S_Ip: layout" {
    var lv: c.Vp_S_Ip = undefined;
    try testing.expectSize(c.Vp_S_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_S_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_Ip(.{ .v1 = null, .v2 = 7055, .v3 = null }));
}
test "Vp_S_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_Ip());
}
test "Vp_S_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_Ip());
}
test "Vp_S_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_Ip(c.ret_Vp_S_Ip()));
}
pub export fn zig_assert_Vp_S_Ip(lv: c.Vp_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7055) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_S_L: layout" {
    var lv: c.Vp_S_L = undefined;
    try testing.expectSize(c.Vp_S_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_S_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_L(.{ .v1 = null, .v2 = 22604, .v3 = 30928 }));
}
test "Vp_S_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_L());
}
test "Vp_S_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_L());
}
test "Vp_S_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_L(c.ret_Vp_S_L()));
}
pub export fn zig_assert_Vp_S_L(lv: c.Vp_S_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 22604) err = 2;
    if (lv.v3 != 30928) err = 3;
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

test "Vp_S_S: layout" {
    var lv: c.Vp_S_S = undefined;
    try testing.expectSize(c.Vp_S_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_S_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_S(.{ .v1 = null, .v2 = 7792, .v3 = 12301 }));
}
test "Vp_S_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_S());
}
test "Vp_S_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_S());
}
test "Vp_S_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_S(c.ret_Vp_S_S()));
}
pub export fn zig_assert_Vp_S_S(lv: c.Vp_S_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 7792) err = 2;
    if (lv.v3 != 12301) err = 3;
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

test "Vp_S_Uc: layout" {
    var lv: c.Vp_S_Uc = undefined;
    try testing.expectSize(c.Vp_S_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_S_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_Uc(.{ .v1 = null, .v2 = 20598, .v3 = 41 }));
}
test "Vp_S_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_Uc());
}
test "Vp_S_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_Uc());
}
test "Vp_S_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_Uc(c.ret_Vp_S_Uc()));
}
pub export fn zig_assert_Vp_S_Uc(lv: c.Vp_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20598) err = 2;
    if (lv.v3 != 41) err = 3;
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

test "Vp_S_Ui: layout" {
    var lv: c.Vp_S_Ui = undefined;
    try testing.expectSize(c.Vp_S_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_S_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_Ui(.{ .v1 = null, .v2 = 10315, .v3 = 28050 }));
}
test "Vp_S_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_Ui());
}
test "Vp_S_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_Ui());
}
test "Vp_S_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_Ui(c.ret_Vp_S_Ui()));
}
pub export fn zig_assert_Vp_S_Ui(lv: c.Vp_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 10315) err = 2;
    if (lv.v3 != 28050) err = 3;
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

test "Vp_S_Ul: layout" {
    var lv: c.Vp_S_Ul = undefined;
    try testing.expectSize(c.Vp_S_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_S_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_Ul(.{ .v1 = null, .v2 = 27563, .v3 = 25487 }));
}
test "Vp_S_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_Ul());
}
test "Vp_S_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_Ul());
}
test "Vp_S_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_Ul(c.ret_Vp_S_Ul()));
}
pub export fn zig_assert_Vp_S_Ul(lv: c.Vp_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27563) err = 2;
    if (lv.v3 != 25487) err = 3;
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

test "Vp_S_Us: layout" {
    var lv: c.Vp_S_Us = undefined;
    try testing.expectSize(c.Vp_S_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_S_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_Us(.{ .v1 = null, .v2 = 25333, .v3 = 3161 }));
}
test "Vp_S_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_Us());
}
test "Vp_S_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_Us());
}
test "Vp_S_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_Us(c.ret_Vp_S_Us()));
}
pub export fn zig_assert_Vp_S_Us(lv: c.Vp_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 25333) err = 2;
    if (lv.v3 != 3161) err = 3;
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

test "Vp_S_Vp: layout" {
    var lv: c.Vp_S_Vp = undefined;
    try testing.expectSize(c.Vp_S_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_S_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_S_Vp(.{ .v1 = null, .v2 = 19397, .v3 = null }));
}
test "Vp_S_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_S_Vp());
}
test "Vp_S_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_S_Vp());
}
test "Vp_S_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_S_Vp(c.ret_Vp_S_Vp()));
}
pub export fn zig_assert_Vp_S_Vp(lv: c.Vp_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19397) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Uc: layout" {
    var lv: c.Vp_Uc = undefined;
    try testing.expectSize(c.Vp_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc(.{ .v1 = null, .v2 = 45 }));
}
test "Vp_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc());
}
test "Vp_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc());
}
test "Vp_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc(c.ret_Vp_Uc()));
}
pub export fn zig_assert_Vp_Uc(lv: c.Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 45) err = 2;
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

test "Vp_Uc_C: layout" {
    var lv: c.Vp_Uc_C = undefined;
    try testing.expectSize(c.Vp_Uc_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Vp_Uc_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_C(.{ .v1 = null, .v2 = 20, .v3 = 19 }));
}
test "Vp_Uc_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_C());
}
test "Vp_Uc_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_C());
}
test "Vp_Uc_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_C(c.ret_Vp_Uc_C()));
}
pub export fn zig_assert_Vp_Uc_C(lv: c.Vp_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20) err = 2;
    if (lv.v3 != 19) err = 3;
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

test "Vp_Uc_D: layout" {
    var lv: c.Vp_Uc_D = undefined;
    try testing.expectSize(c.Vp_Uc_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Uc_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_D(.{ .v1 = null, .v2 = 50, .v3 = 0.5 }));
}
test "Vp_Uc_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_D());
}
test "Vp_Uc_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_D());
}
test "Vp_Uc_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_D(c.ret_Vp_Uc_D()));
}
pub export fn zig_assert_Vp_Uc_D(lv: c.Vp_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 50) err = 2;
    if (lv.v3 != 0.5) err = 3;
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

test "Vp_Uc_F: layout" {
    var lv: c.Vp_Uc_F = undefined;
    try testing.expectSize(c.Vp_Uc_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Uc_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_F(.{ .v1 = null, .v2 = 123, .v3 = 0.5 }));
}
test "Vp_Uc_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_F());
}
test "Vp_Uc_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_F());
}
test "Vp_Uc_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_F(c.ret_Vp_Uc_F()));
}
pub export fn zig_assert_Vp_Uc_F(lv: c.Vp_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 123) err = 2;
    if (lv.v3 != 0.5) err = 3;
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

test "Vp_Uc_I: layout" {
    var lv: c.Vp_Uc_I = undefined;
    try testing.expectSize(c.Vp_Uc_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Uc_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_I(.{ .v1 = null, .v2 = 114, .v3 = 26429 }));
}
test "Vp_Uc_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_I());
}
test "Vp_Uc_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_I());
}
test "Vp_Uc_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_I(c.ret_Vp_Uc_I()));
}
pub export fn zig_assert_Vp_Uc_I(lv: c.Vp_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 114) err = 2;
    if (lv.v3 != 26429) err = 3;
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

test "Vp_Uc_Ip: layout" {
    var lv: c.Vp_Uc_Ip = undefined;
    try testing.expectSize(c.Vp_Uc_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Uc_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_Ip(.{ .v1 = null, .v2 = 27, .v3 = null }));
}
test "Vp_Uc_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_Ip());
}
test "Vp_Uc_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_Ip());
}
test "Vp_Uc_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_Ip(c.ret_Vp_Uc_Ip()));
}
pub export fn zig_assert_Vp_Uc_Ip(lv: c.Vp_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Uc_L: layout" {
    var lv: c.Vp_Uc_L = undefined;
    try testing.expectSize(c.Vp_Uc_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Uc_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_L(.{ .v1 = null, .v2 = 122, .v3 = 7583 }));
}
test "Vp_Uc_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_L());
}
test "Vp_Uc_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_L());
}
test "Vp_Uc_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_L(c.ret_Vp_Uc_L()));
}
pub export fn zig_assert_Vp_Uc_L(lv: c.Vp_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 122) err = 2;
    if (lv.v3 != 7583) err = 3;
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

test "Vp_Uc_S: layout" {
    var lv: c.Vp_Uc_S = undefined;
    try testing.expectSize(c.Vp_Uc_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Uc_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_S(.{ .v1 = null, .v2 = 14, .v3 = 22906 }));
}
test "Vp_Uc_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_S());
}
test "Vp_Uc_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_S());
}
test "Vp_Uc_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_S(c.ret_Vp_Uc_S()));
}
pub export fn zig_assert_Vp_Uc_S(lv: c.Vp_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 14) err = 2;
    if (lv.v3 != 22906) err = 3;
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

test "Vp_Uc_Uc: layout" {
    var lv: c.Vp_Uc_Uc = undefined;
    try testing.expectSize(c.Vp_Uc_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Vp_Uc_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_Uc(.{ .v1 = null, .v2 = 61, .v3 = 71 }));
}
test "Vp_Uc_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_Uc());
}
test "Vp_Uc_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_Uc());
}
test "Vp_Uc_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_Uc(c.ret_Vp_Uc_Uc()));
}
pub export fn zig_assert_Vp_Uc_Uc(lv: c.Vp_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 61) err = 2;
    if (lv.v3 != 71) err = 3;
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

test "Vp_Uc_Ui: layout" {
    var lv: c.Vp_Uc_Ui = undefined;
    try testing.expectSize(c.Vp_Uc_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Uc_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_Ui(.{ .v1 = null, .v2 = 68, .v3 = 31148 }));
}
test "Vp_Uc_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_Ui());
}
test "Vp_Uc_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_Ui());
}
test "Vp_Uc_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_Ui(c.ret_Vp_Uc_Ui()));
}
pub export fn zig_assert_Vp_Uc_Ui(lv: c.Vp_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 68) err = 2;
    if (lv.v3 != 31148) err = 3;
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

test "Vp_Uc_Ul: layout" {
    var lv: c.Vp_Uc_Ul = undefined;
    try testing.expectSize(c.Vp_Uc_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Uc_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_Ul(.{ .v1 = null, .v2 = 13, .v3 = 6117 }));
}
test "Vp_Uc_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_Ul());
}
test "Vp_Uc_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_Ul());
}
test "Vp_Uc_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_Ul(c.ret_Vp_Uc_Ul()));
}
pub export fn zig_assert_Vp_Uc_Ul(lv: c.Vp_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 13) err = 2;
    if (lv.v3 != 6117) err = 3;
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

test "Vp_Uc_Us: layout" {
    var lv: c.Vp_Uc_Us = undefined;
    try testing.expectSize(c.Vp_Uc_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Uc_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_Us(.{ .v1 = null, .v2 = 38, .v3 = 12337 }));
}
test "Vp_Uc_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_Us());
}
test "Vp_Uc_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_Us());
}
test "Vp_Uc_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_Us(c.ret_Vp_Uc_Us()));
}
pub export fn zig_assert_Vp_Uc_Us(lv: c.Vp_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 38) err = 2;
    if (lv.v3 != 12337) err = 3;
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

test "Vp_Uc_Vp: layout" {
    var lv: c.Vp_Uc_Vp = undefined;
    try testing.expectSize(c.Vp_Uc_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Uc_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Uc_Vp(.{ .v1 = null, .v2 = 39, .v3 = null }));
}
test "Vp_Uc_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Uc_Vp());
}
test "Vp_Uc_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Uc_Vp());
}
test "Vp_Uc_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Uc_Vp(c.ret_Vp_Uc_Vp()));
}
pub export fn zig_assert_Vp_Uc_Vp(lv: c.Vp_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 39) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Ui: layout" {
    var lv: c.Vp_Ui = undefined;
    try testing.expectSize(c.Vp_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui(.{ .v1 = null, .v2 = 819 }));
}
test "Vp_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui());
}
test "Vp_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui());
}
test "Vp_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui(c.ret_Vp_Ui()));
}
pub export fn zig_assert_Vp_Ui(lv: c.Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 819) err = 2;
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

test "Vp_Ui_C: layout" {
    var lv: c.Vp_Ui_C = undefined;
    try testing.expectSize(c.Vp_Ui_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_C(.{ .v1 = null, .v2 = 14926, .v3 = 98 }));
}
test "Vp_Ui_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_C());
}
test "Vp_Ui_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_C());
}
test "Vp_Ui_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_C(c.ret_Vp_Ui_C()));
}
pub export fn zig_assert_Vp_Ui_C(lv: c.Vp_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 14926) err = 2;
    if (lv.v3 != 98) err = 3;
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

test "Vp_Ui_D: layout" {
    var lv: c.Vp_Ui_D = undefined;
    try testing.expectSize(c.Vp_Ui_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ui_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_D(.{ .v1 = null, .v2 = 13042, .v3 = -2.125 }));
}
test "Vp_Ui_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_D());
}
test "Vp_Ui_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_D());
}
test "Vp_Ui_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_D(c.ret_Vp_Ui_D()));
}
pub export fn zig_assert_Vp_Ui_D(lv: c.Vp_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 13042) err = 2;
    if (lv.v3 != -2.125) err = 3;
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

test "Vp_Ui_F: layout" {
    var lv: c.Vp_Ui_F = undefined;
    try testing.expectSize(c.Vp_Ui_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_F(.{ .v1 = null, .v2 = 6209, .v3 = 0.5 }));
}
test "Vp_Ui_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_F());
}
test "Vp_Ui_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_F());
}
test "Vp_Ui_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_F(c.ret_Vp_Ui_F()));
}
pub export fn zig_assert_Vp_Ui_F(lv: c.Vp_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 6209) err = 2;
    if (lv.v3 != 0.5) err = 3;
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

test "Vp_Ui_I: layout" {
    var lv: c.Vp_Ui_I = undefined;
    try testing.expectSize(c.Vp_Ui_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_I(.{ .v1 = null, .v2 = 15474, .v3 = 15360 }));
}
test "Vp_Ui_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_I());
}
test "Vp_Ui_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_I());
}
test "Vp_Ui_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_I(c.ret_Vp_Ui_I()));
}
pub export fn zig_assert_Vp_Ui_I(lv: c.Vp_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15474) err = 2;
    if (lv.v3 != 15360) err = 3;
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

test "Vp_Ui_Ip: layout" {
    var lv: c.Vp_Ui_Ip = undefined;
    try testing.expectSize(c.Vp_Ui_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ui_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_Ip(.{ .v1 = null, .v2 = 14297, .v3 = null }));
}
test "Vp_Ui_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_Ip());
}
test "Vp_Ui_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_Ip());
}
test "Vp_Ui_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_Ip(c.ret_Vp_Ui_Ip()));
}
pub export fn zig_assert_Vp_Ui_Ip(lv: c.Vp_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 14297) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Ui_L: layout" {
    var lv: c.Vp_Ui_L = undefined;
    try testing.expectSize(c.Vp_Ui_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ui_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_L(.{ .v1 = null, .v2 = 31410, .v3 = 14978 }));
}
test "Vp_Ui_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_L());
}
test "Vp_Ui_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_L());
}
test "Vp_Ui_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_L(c.ret_Vp_Ui_L()));
}
pub export fn zig_assert_Vp_Ui_L(lv: c.Vp_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 31410) err = 2;
    if (lv.v3 != 14978) err = 3;
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

test "Vp_Ui_S: layout" {
    var lv: c.Vp_Ui_S = undefined;
    try testing.expectSize(c.Vp_Ui_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_S(.{ .v1 = null, .v2 = 1025, .v3 = 14170 }));
}
test "Vp_Ui_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_S());
}
test "Vp_Ui_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_S());
}
test "Vp_Ui_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_S(c.ret_Vp_Ui_S()));
}
pub export fn zig_assert_Vp_Ui_S(lv: c.Vp_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1025) err = 2;
    if (lv.v3 != 14170) err = 3;
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

test "Vp_Ui_Uc: layout" {
    var lv: c.Vp_Ui_Uc = undefined;
    try testing.expectSize(c.Vp_Ui_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_Uc(.{ .v1 = null, .v2 = 23983, .v3 = 88 }));
}
test "Vp_Ui_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_Uc());
}
test "Vp_Ui_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_Uc());
}
test "Vp_Ui_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_Uc(c.ret_Vp_Ui_Uc()));
}
pub export fn zig_assert_Vp_Ui_Uc(lv: c.Vp_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 23983) err = 2;
    if (lv.v3 != 88) err = 3;
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

test "Vp_Ui_Ui: layout" {
    var lv: c.Vp_Ui_Ui = undefined;
    try testing.expectSize(c.Vp_Ui_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_Ui(.{ .v1 = null, .v2 = 99, .v3 = 30755 }));
}
test "Vp_Ui_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_Ui());
}
test "Vp_Ui_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_Ui());
}
test "Vp_Ui_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_Ui(c.ret_Vp_Ui_Ui()));
}
pub export fn zig_assert_Vp_Ui_Ui(lv: c.Vp_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 99) err = 2;
    if (lv.v3 != 30755) err = 3;
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

test "Vp_Ui_Ul: layout" {
    var lv: c.Vp_Ui_Ul = undefined;
    try testing.expectSize(c.Vp_Ui_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ui_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_Ul(.{ .v1 = null, .v2 = 27055, .v3 = 7728 }));
}
test "Vp_Ui_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_Ul());
}
test "Vp_Ui_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_Ul());
}
test "Vp_Ui_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_Ul(c.ret_Vp_Ui_Ul()));
}
pub export fn zig_assert_Vp_Ui_Ul(lv: c.Vp_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27055) err = 2;
    if (lv.v3 != 7728) err = 3;
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

test "Vp_Ui_Us: layout" {
    var lv: c.Vp_Ui_Us = undefined;
    try testing.expectSize(c.Vp_Ui_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_Us(.{ .v1 = null, .v2 = 21796, .v3 = 9331 }));
}
test "Vp_Ui_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_Us());
}
test "Vp_Ui_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_Us());
}
test "Vp_Ui_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_Us(c.ret_Vp_Ui_Us()));
}
pub export fn zig_assert_Vp_Ui_Us(lv: c.Vp_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21796) err = 2;
    if (lv.v3 != 9331) err = 3;
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

test "Vp_Ui_Vp: layout" {
    var lv: c.Vp_Ui_Vp = undefined;
    try testing.expectSize(c.Vp_Ui_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ui_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ui_Vp(.{ .v1 = null, .v2 = 4692, .v3 = null }));
}
test "Vp_Ui_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ui_Vp());
}
test "Vp_Ui_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ui_Vp());
}
test "Vp_Ui_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ui_Vp(c.ret_Vp_Ui_Vp()));
}
pub export fn zig_assert_Vp_Ui_Vp(lv: c.Vp_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4692) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Ul: layout" {
    var lv: c.Vp_Ul = undefined;
    try testing.expectSize(c.Vp_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul(.{ .v1 = null, .v2 = 5486 }));
}
test "Vp_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul());
}
test "Vp_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul());
}
test "Vp_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul(c.ret_Vp_Ul()));
}
pub export fn zig_assert_Vp_Ul(lv: c.Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 5486) err = 2;
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

test "Vp_Ul_C: layout" {
    var lv: c.Vp_Ul_C = undefined;
    try testing.expectSize(c.Vp_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_C(.{ .v1 = null, .v2 = 20933, .v3 = 118 }));
}
test "Vp_Ul_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_C());
}
test "Vp_Ul_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_C());
}
test "Vp_Ul_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_C(c.ret_Vp_Ul_C()));
}
pub export fn zig_assert_Vp_Ul_C(lv: c.Vp_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20933) err = 2;
    if (lv.v3 != 118) err = 3;
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

test "Vp_Ul_D: layout" {
    var lv: c.Vp_Ul_D = undefined;
    try testing.expectSize(c.Vp_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_D(.{ .v1 = null, .v2 = 27275, .v3 = 4.5 }));
}
test "Vp_Ul_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_D());
}
test "Vp_Ul_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_D());
}
test "Vp_Ul_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_D(c.ret_Vp_Ul_D()));
}
pub export fn zig_assert_Vp_Ul_D(lv: c.Vp_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27275) err = 2;
    if (lv.v3 != 4.5) err = 3;
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

test "Vp_Ul_F: layout" {
    var lv: c.Vp_Ul_F = undefined;
    try testing.expectSize(c.Vp_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_F(.{ .v1 = null, .v2 = 19348, .v3 = 4.5 }));
}
test "Vp_Ul_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_F());
}
test "Vp_Ul_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_F());
}
test "Vp_Ul_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_F(c.ret_Vp_Ul_F()));
}
pub export fn zig_assert_Vp_Ul_F(lv: c.Vp_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19348) err = 2;
    if (lv.v3 != 4.5) err = 3;
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

test "Vp_Ul_I: layout" {
    var lv: c.Vp_Ul_I = undefined;
    try testing.expectSize(c.Vp_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_I(.{ .v1 = null, .v2 = 6586, .v3 = 1397 }));
}
test "Vp_Ul_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_I());
}
test "Vp_Ul_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_I());
}
test "Vp_Ul_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_I(c.ret_Vp_Ul_I()));
}
pub export fn zig_assert_Vp_Ul_I(lv: c.Vp_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 6586) err = 2;
    if (lv.v3 != 1397) err = 3;
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

test "Vp_Ul_Ip: layout" {
    var lv: c.Vp_Ul_Ip = undefined;
    try testing.expectSize(c.Vp_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_Ip(.{ .v1 = null, .v2 = 3915, .v3 = null }));
}
test "Vp_Ul_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_Ip());
}
test "Vp_Ul_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_Ip());
}
test "Vp_Ul_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_Ip(c.ret_Vp_Ul_Ip()));
}
pub export fn zig_assert_Vp_Ul_Ip(lv: c.Vp_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 3915) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Ul_L: layout" {
    var lv: c.Vp_Ul_L = undefined;
    try testing.expectSize(c.Vp_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_L(.{ .v1 = null, .v2 = 2122, .v3 = 2907 }));
}
test "Vp_Ul_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_L());
}
test "Vp_Ul_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_L());
}
test "Vp_Ul_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_L(c.ret_Vp_Ul_L()));
}
pub export fn zig_assert_Vp_Ul_L(lv: c.Vp_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 2122) err = 2;
    if (lv.v3 != 2907) err = 3;
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

test "Vp_Ul_S: layout" {
    var lv: c.Vp_Ul_S = undefined;
    try testing.expectSize(c.Vp_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_S(.{ .v1 = null, .v2 = 26049, .v3 = 9797 }));
}
test "Vp_Ul_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_S());
}
test "Vp_Ul_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_S());
}
test "Vp_Ul_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_S(c.ret_Vp_Ul_S()));
}
pub export fn zig_assert_Vp_Ul_S(lv: c.Vp_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 26049) err = 2;
    if (lv.v3 != 9797) err = 3;
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

test "Vp_Ul_Uc: layout" {
    var lv: c.Vp_Ul_Uc = undefined;
    try testing.expectSize(c.Vp_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_Uc(.{ .v1 = null, .v2 = 20602, .v3 = 11 }));
}
test "Vp_Ul_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_Uc());
}
test "Vp_Ul_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_Uc());
}
test "Vp_Ul_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_Uc(c.ret_Vp_Ul_Uc()));
}
pub export fn zig_assert_Vp_Ul_Uc(lv: c.Vp_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20602) err = 2;
    if (lv.v3 != 11) err = 3;
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

test "Vp_Ul_Ui: layout" {
    var lv: c.Vp_Ul_Ui = undefined;
    try testing.expectSize(c.Vp_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_Ui(.{ .v1 = null, .v2 = 4547, .v3 = 23948 }));
}
test "Vp_Ul_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_Ui());
}
test "Vp_Ul_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_Ui());
}
test "Vp_Ul_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_Ui(c.ret_Vp_Ul_Ui()));
}
pub export fn zig_assert_Vp_Ul_Ui(lv: c.Vp_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4547) err = 2;
    if (lv.v3 != 23948) err = 3;
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

test "Vp_Ul_Ul: layout" {
    var lv: c.Vp_Ul_Ul = undefined;
    try testing.expectSize(c.Vp_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_Ul(.{ .v1 = null, .v2 = 17343, .v3 = 2118 }));
}
test "Vp_Ul_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_Ul());
}
test "Vp_Ul_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_Ul());
}
test "Vp_Ul_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_Ul(c.ret_Vp_Ul_Ul()));
}
pub export fn zig_assert_Vp_Ul_Ul(lv: c.Vp_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 17343) err = 2;
    if (lv.v3 != 2118) err = 3;
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

test "Vp_Ul_Us: layout" {
    var lv: c.Vp_Ul_Us = undefined;
    try testing.expectSize(c.Vp_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_Us(.{ .v1 = null, .v2 = 20439, .v3 = 3748 }));
}
test "Vp_Ul_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_Us());
}
test "Vp_Ul_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_Us());
}
test "Vp_Ul_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_Us(c.ret_Vp_Ul_Us()));
}
pub export fn zig_assert_Vp_Ul_Us(lv: c.Vp_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 20439) err = 2;
    if (lv.v3 != 3748) err = 3;
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

test "Vp_Ul_Vp: layout" {
    var lv: c.Vp_Ul_Vp = undefined;
    try testing.expectSize(c.Vp_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Ul_Vp(.{ .v1 = null, .v2 = 29974, .v3 = null }));
}
test "Vp_Ul_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Ul_Vp());
}
test "Vp_Ul_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Ul_Vp());
}
test "Vp_Ul_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Ul_Vp(c.ret_Vp_Ul_Vp()));
}
pub export fn zig_assert_Vp_Ul_Vp(lv: c.Vp_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 29974) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Us: layout" {
    var lv: c.Vp_Us = undefined;
    try testing.expectSize(c.Vp_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us(.{ .v1 = null, .v2 = 4604 }));
}
test "Vp_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us());
}
test "Vp_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us());
}
test "Vp_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us(c.ret_Vp_Us()));
}
pub export fn zig_assert_Vp_Us(lv: c.Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 4604) err = 2;
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

test "Vp_Us_C: layout" {
    var lv: c.Vp_Us_C = undefined;
    try testing.expectSize(c.Vp_Us_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Us_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_C(.{ .v1 = null, .v2 = 27414, .v3 = 69 }));
}
test "Vp_Us_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_C());
}
test "Vp_Us_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_C());
}
test "Vp_Us_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_C(c.ret_Vp_Us_C()));
}
pub export fn zig_assert_Vp_Us_C(lv: c.Vp_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 27414) err = 2;
    if (lv.v3 != 69) err = 3;
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

test "Vp_Us_D: layout" {
    var lv: c.Vp_Us_D = undefined;
    try testing.expectSize(c.Vp_Us_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Us_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_D(.{ .v1 = null, .v2 = 1973, .v3 = 1.0 }));
}
test "Vp_Us_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_D());
}
test "Vp_Us_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_D());
}
test "Vp_Us_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_D(c.ret_Vp_Us_D()));
}
pub export fn zig_assert_Vp_Us_D(lv: c.Vp_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1973) err = 2;
    if (lv.v3 != 1.0) err = 3;
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

test "Vp_Us_F: layout" {
    var lv: c.Vp_Us_F = undefined;
    try testing.expectSize(c.Vp_Us_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Us_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_F(.{ .v1 = null, .v2 = 13536, .v3 = 4.5 }));
}
test "Vp_Us_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_F());
}
test "Vp_Us_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_F());
}
test "Vp_Us_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_F(c.ret_Vp_Us_F()));
}
pub export fn zig_assert_Vp_Us_F(lv: c.Vp_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 13536) err = 2;
    if (lv.v3 != 4.5) err = 3;
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

test "Vp_Us_I: layout" {
    var lv: c.Vp_Us_I = undefined;
    try testing.expectSize(c.Vp_Us_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Us_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_I(.{ .v1 = null, .v2 = 19941, .v3 = 20835 }));
}
test "Vp_Us_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_I());
}
test "Vp_Us_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_I());
}
test "Vp_Us_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_I(c.ret_Vp_Us_I()));
}
pub export fn zig_assert_Vp_Us_I(lv: c.Vp_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 19941) err = 2;
    if (lv.v3 != 20835) err = 3;
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

test "Vp_Us_Ip: layout" {
    var lv: c.Vp_Us_Ip = undefined;
    try testing.expectSize(c.Vp_Us_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Us_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_Ip(.{ .v1 = null, .v2 = 21849, .v3 = null }));
}
test "Vp_Us_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_Ip());
}
test "Vp_Us_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_Ip());
}
test "Vp_Us_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_Ip(c.ret_Vp_Us_Ip()));
}
pub export fn zig_assert_Vp_Us_Ip(lv: c.Vp_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21849) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Us_L: layout" {
    var lv: c.Vp_Us_L = undefined;
    try testing.expectSize(c.Vp_Us_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Us_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_L(.{ .v1 = null, .v2 = 1972, .v3 = 3231 }));
}
test "Vp_Us_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_L());
}
test "Vp_Us_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_L());
}
test "Vp_Us_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_L(c.ret_Vp_Us_L()));
}
pub export fn zig_assert_Vp_Us_L(lv: c.Vp_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 1972) err = 2;
    if (lv.v3 != 3231) err = 3;
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

test "Vp_Us_S: layout" {
    var lv: c.Vp_Us_S = undefined;
    try testing.expectSize(c.Vp_Us_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Us_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_S(.{ .v1 = null, .v2 = 686, .v3 = 31896 }));
}
test "Vp_Us_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_S());
}
test "Vp_Us_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_S());
}
test "Vp_Us_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_S(c.ret_Vp_Us_S()));
}
pub export fn zig_assert_Vp_Us_S(lv: c.Vp_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 686) err = 2;
    if (lv.v3 != 31896) err = 3;
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

test "Vp_Us_Uc: layout" {
    var lv: c.Vp_Us_Uc = undefined;
    try testing.expectSize(c.Vp_Us_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Us_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_Uc(.{ .v1 = null, .v2 = 22668, .v3 = 101 }));
}
test "Vp_Us_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_Uc());
}
test "Vp_Us_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_Uc());
}
test "Vp_Us_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_Uc(c.ret_Vp_Us_Uc()));
}
pub export fn zig_assert_Vp_Us_Uc(lv: c.Vp_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 22668) err = 2;
    if (lv.v3 != 101) err = 3;
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

test "Vp_Us_Ui: layout" {
    var lv: c.Vp_Us_Ui = undefined;
    try testing.expectSize(c.Vp_Us_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Us_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_Ui(.{ .v1 = null, .v2 = 15892, .v3 = 7824 }));
}
test "Vp_Us_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_Ui());
}
test "Vp_Us_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_Ui());
}
test "Vp_Us_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_Ui(c.ret_Vp_Us_Ui()));
}
pub export fn zig_assert_Vp_Us_Ui(lv: c.Vp_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 15892) err = 2;
    if (lv.v3 != 7824) err = 3;
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

test "Vp_Us_Ul: layout" {
    var lv: c.Vp_Us_Ul = undefined;
    try testing.expectSize(c.Vp_Us_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Us_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_Ul(.{ .v1 = null, .v2 = 31019, .v3 = 32184 }));
}
test "Vp_Us_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_Ul());
}
test "Vp_Us_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_Ul());
}
test "Vp_Us_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_Ul(c.ret_Vp_Us_Ul()));
}
pub export fn zig_assert_Vp_Us_Ul(lv: c.Vp_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 31019) err = 2;
    if (lv.v3 != 32184) err = 3;
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

test "Vp_Us_Us: layout" {
    var lv: c.Vp_Us_Us = undefined;
    try testing.expectSize(c.Vp_Us_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Us_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_Us(.{ .v1 = null, .v2 = 21460, .v3 = 26681 }));
}
test "Vp_Us_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_Us());
}
test "Vp_Us_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_Us());
}
test "Vp_Us_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_Us(c.ret_Vp_Us_Us()));
}
pub export fn zig_assert_Vp_Us_Us(lv: c.Vp_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 21460) err = 2;
    if (lv.v3 != 26681) err = 3;
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

test "Vp_Us_Vp: layout" {
    var lv: c.Vp_Us_Vp = undefined;
    try testing.expectSize(c.Vp_Us_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Us_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Us_Vp(.{ .v1 = null, .v2 = 30188, .v3 = null }));
}
test "Vp_Us_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Us_Vp());
}
test "Vp_Us_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Us_Vp());
}
test "Vp_Us_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Us_Vp(c.ret_Vp_Us_Vp()));
}
pub export fn zig_assert_Vp_Us_Vp(lv: c.Vp_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 30188) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Vp: layout" {
    var lv: c.Vp_Vp = undefined;
    try testing.expectSize(c.Vp_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp(.{ .v1 = null, .v2 = null }));
}
test "Vp_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp());
}
test "Vp_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp());
}
test "Vp_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp(c.ret_Vp_Vp()));
}
pub export fn zig_assert_Vp_Vp(lv: c.Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
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

test "Vp_Vp_C: layout" {
    var lv: c.Vp_Vp_C = undefined;
    try testing.expectSize(c.Vp_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_C(.{ .v1 = null, .v2 = null, .v3 = 106 }));
}
test "Vp_Vp_C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_C());
}
test "Vp_Vp_C: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_C());
}
test "Vp_Vp_C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_C(c.ret_Vp_Vp_C()));
}
pub export fn zig_assert_Vp_Vp_C(lv: c.Vp_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 106) err = 3;
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

test "Vp_Vp_D: layout" {
    var lv: c.Vp_Vp_D = undefined;
    try testing.expectSize(c.Vp_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_D: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_D(.{ .v1 = null, .v2 = null, .v3 = -0.25 }));
}
test "Vp_Vp_D: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_D());
}
test "Vp_Vp_D: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_D());
}
test "Vp_Vp_D: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_D(c.ret_Vp_Vp_D()));
}
pub export fn zig_assert_Vp_Vp_D(lv: c.Vp_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -0.25) err = 3;
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

test "Vp_Vp_F: layout" {
    var lv: c.Vp_Vp_F = undefined;
    try testing.expectSize(c.Vp_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_F: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_F(.{ .v1 = null, .v2 = null, .v3 = 0.5 }));
}
test "Vp_Vp_F: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_F());
}
test "Vp_Vp_F: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_F());
}
test "Vp_Vp_F: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_F(c.ret_Vp_Vp_F()));
}
pub export fn zig_assert_Vp_Vp_F(lv: c.Vp_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 0.5) err = 3;
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

test "Vp_Vp_I: layout" {
    var lv: c.Vp_Vp_I = undefined;
    try testing.expectSize(c.Vp_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_I: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_I(.{ .v1 = null, .v2 = null, .v3 = 18595 }));
}
test "Vp_Vp_I: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_I());
}
test "Vp_Vp_I: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_I());
}
test "Vp_Vp_I: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_I(c.ret_Vp_Vp_I()));
}
pub export fn zig_assert_Vp_Vp_I(lv: c.Vp_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 18595) err = 3;
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

test "Vp_Vp_Ip: layout" {
    var lv: c.Vp_Vp_Ip = undefined;
    try testing.expectSize(c.Vp_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Ip: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_Ip(.{ .v1 = null, .v2 = null, .v3 = null }));
}
test "Vp_Vp_Ip: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_Ip());
}
test "Vp_Vp_Ip: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_Ip());
}
test "Vp_Vp_Ip: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_Ip(c.ret_Vp_Vp_Ip()));
}
pub export fn zig_assert_Vp_Vp_Ip(lv: c.Vp_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
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

test "Vp_Vp_L: layout" {
    var lv: c.Vp_Vp_L = undefined;
    try testing.expectSize(c.Vp_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_L: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_L(.{ .v1 = null, .v2 = null, .v3 = 7966 }));
}
test "Vp_Vp_L: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_L());
}
test "Vp_Vp_L: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_L());
}
test "Vp_Vp_L: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_L(c.ret_Vp_Vp_L()));
}
pub export fn zig_assert_Vp_Vp_L(lv: c.Vp_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 7966) err = 3;
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

test "Vp_Vp_S: layout" {
    var lv: c.Vp_Vp_S = undefined;
    try testing.expectSize(c.Vp_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_S: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_S(.{ .v1 = null, .v2 = null, .v3 = 15595 }));
}
test "Vp_Vp_S: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_S());
}
test "Vp_Vp_S: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_S());
}
test "Vp_Vp_S: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_S(c.ret_Vp_Vp_S()));
}
pub export fn zig_assert_Vp_Vp_S(lv: c.Vp_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 15595) err = 3;
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

test "Vp_Vp_Uc: layout" {
    var lv: c.Vp_Vp_Uc = undefined;
    try testing.expectSize(c.Vp_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Uc: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_Uc(.{ .v1 = null, .v2 = null, .v3 = 17 }));
}
test "Vp_Vp_Uc: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_Uc());
}
test "Vp_Vp_Uc: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_Uc());
}
test "Vp_Vp_Uc: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_Uc(c.ret_Vp_Vp_Uc()));
}
pub export fn zig_assert_Vp_Vp_Uc(lv: c.Vp_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 17) err = 3;
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

test "Vp_Vp_Ui: layout" {
    var lv: c.Vp_Vp_Ui = undefined;
    try testing.expectSize(c.Vp_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Ui: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_Ui(.{ .v1 = null, .v2 = null, .v3 = 12780 }));
}
test "Vp_Vp_Ui: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_Ui());
}
test "Vp_Vp_Ui: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_Ui());
}
test "Vp_Vp_Ui: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_Ui(c.ret_Vp_Vp_Ui()));
}
pub export fn zig_assert_Vp_Vp_Ui(lv: c.Vp_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 12780) err = 3;
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

test "Vp_Vp_Ul: layout" {
    var lv: c.Vp_Vp_Ul = undefined;
    try testing.expectSize(c.Vp_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Ul: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_Ul(.{ .v1 = null, .v2 = null, .v3 = 12179 }));
}
test "Vp_Vp_Ul: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_Ul());
}
test "Vp_Vp_Ul: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_Ul());
}
test "Vp_Vp_Ul: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_Ul(c.ret_Vp_Vp_Ul()));
}
pub export fn zig_assert_Vp_Vp_Ul(lv: c.Vp_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 12179) err = 3;
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

test "Vp_Vp_Us: layout" {
    var lv: c.Vp_Vp_Us = undefined;
    try testing.expectSize(c.Vp_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Us: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_Us(.{ .v1 = null, .v2 = null, .v3 = 11303 }));
}
test "Vp_Vp_Us: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_Us());
}
test "Vp_Vp_Us: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_Us());
}
test "Vp_Vp_Us: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_Us(c.ret_Vp_Vp_Us()));
}
pub export fn zig_assert_Vp_Vp_Us(lv: c.Vp_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 11303) err = 3;
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

test "Vp_Vp_Vp: layout" {
    var lv: c.Vp_Vp_Vp = undefined;
    try testing.expectSize(c.Vp_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Vp: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_Vp_Vp_Vp(.{ .v1 = null, .v2 = null, .v3 = null }));
}
test "Vp_Vp_Vp: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_Vp_Vp_Vp());
}
test "Vp_Vp_Vp: C passes to Zig" {
    try testing.expectOk(c.send_Vp_Vp_Vp());
}
test "Vp_Vp_Vp: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(zig_assert_Vp_Vp_Vp(c.ret_Vp_Vp_Vp()));
}
pub export fn zig_assert_Vp_Vp_Vp(lv: c.Vp_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    return err;
}
pub export fn zig_ret_Vp_Vp_Vp() c.Vp_Vp_Vp {
    return .{ .v1 = null, .v2 = null, .v3 = null };
}
