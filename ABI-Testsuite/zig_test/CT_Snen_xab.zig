const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("CT_Snen_xab.h");
});

// From CT_Snen_xab.c:27633:27651
// struct  Sf_C  {
//   struct empty v1;
//   char v2;
// };

test "Sf_C layout" {
    var lv: c.Sf_C = undefined;
    try testing.expectSize(c.Sf_C, 1);
    try testing.expectAlign(c.Sf_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_C C calls" {
    try testing.expectEqual(c.ret_Sf_C(), .{ .v1 = .{}, .v2 = 67 });
    try testing.expectOk(c.assert_ret_Sf_C());
    try testing.expectOk(c.send_Sf_C());
    try testing.expectOk(c.assert_Sf_C(.{ .v1 = .{}, .v2 = 67 }));
}
pub export fn zig_assert_Sf_C(lv: c.Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != 67) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C() c.Sf_C {
    return .{ .v1 = .{}, .v2 = 67 };
}

// From CT_Snen_xab.c:28380:28400
// struct  Sf_C_C  {
//   struct empty v1;
//   char v2;
//   char v3;
// };

test "Sf_C_C layout" {
    var lv: c.Sf_C_C = undefined;
    try testing.expectSize(c.Sf_C_C, 2);
    try testing.expectAlign(c.Sf_C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "Sf_C_C C calls" {
    try testing.expectEqual(c.ret_Sf_C_C(), .{ .v1 = .{}, .v2 = 38, .v3 = 90 });
    try testing.expectOk(c.assert_ret_Sf_C_C());
    try testing.expectOk(c.send_Sf_C_C());
    try testing.expectOk(c.assert_Sf_C_C(.{ .v1 = .{}, .v2 = 38, .v3 = 90 }));
}
pub export fn zig_assert_Sf_C_C(lv: c.Sf_C_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != 38) err = 2;
    if (lv.v3 != 90) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_C() c.Sf_C_C {
    return .{ .v1 = .{}, .v2 = 38, .v3 = 90 };
}

// From CT_Snen_xab.c:28405:28425
// struct  Sf_C_D  {
//   struct empty v1;
//   char v2;
//   double v3;
// };

test "Sf_C_D layout" {
    var lv: c.Sf_C_D = undefined;
    try testing.expectSize(c.Sf_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_C_D C calls" {
    try testing.expectEqual(c.ret_Sf_C_D(), .{ .v1 = .{}, .v2 = 112, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Sf_C_D());
    try testing.expectOk(c.send_Sf_C_D());
    try testing.expectOk(c.assert_Sf_C_D(.{ .v1 = .{}, .v2 = 112, .v3 = 4.5 }));
}
pub export fn zig_assert_Sf_C_D(lv: c.Sf_C_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != 112) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_D() c.Sf_C_D {
    return .{ .v1 = .{}, .v2 = 112, .v3 = 4.5 };
}

// From CT_Snen_xab.c:28430:28450
// struct  Sf_C_F  {
//   struct empty v1;
//   char v2;
//   float v3;
// };

test "Sf_C_F layout" {
    var lv: c.Sf_C_F = undefined;
    try testing.expectSize(c.Sf_C_F, 8);
    try testing.expectAlign(c.Sf_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_C_F C calls" {
    try testing.expectEqual(c.ret_Sf_C_F(), .{ .v1 = .{}, .v2 = 60, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Sf_C_F());
    try testing.expectOk(c.send_Sf_C_F());
    try testing.expectOk(c.assert_Sf_C_F(.{ .v1 = .{}, .v2 = 60, .v3 = 4.5 }));
}
pub export fn zig_assert_Sf_C_F(lv: c.Sf_C_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != 60) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_F() c.Sf_C_F {
    return .{ .v1 = .{}, .v2 = 60, .v3 = 4.5 };
}

// From CT_Snen_xab.c:28455:28475
// struct  Sf_C_I  {
//   struct empty v1;
//   char v2;
//   int v3;
// };

test "Sf_C_I layout" {
    var lv: c.Sf_C_I = undefined;
    try testing.expectSize(c.Sf_C_I, 8);
    try testing.expectAlign(c.Sf_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_C_I C calls" {
    try testing.expectEqual(c.ret_Sf_C_I(), .{ .v1 = .{}, .v2 = 122, .v3 = 13370 });
    try testing.expectOk(c.assert_ret_Sf_C_I());
    try testing.expectOk(c.send_Sf_C_I());
    try testing.expectOk(c.assert_Sf_C_I(.{ .v1 = .{}, .v2 = 122, .v3 = 13370 }));
}
pub export fn zig_assert_Sf_C_I(lv: c.Sf_C_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != 122) err = 2;
    if (lv.v3 != 13370) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_I() c.Sf_C_I {
    return .{ .v1 = .{}, .v2 = 122, .v3 = 13370 };
}

// From CT_Snen_xab.c:28480:28500
// struct  Sf_C_Ip  {
//   struct empty v1;
//   char v2;
//   int *v3;
// };

test "Sf_C_Ip layout" {
    var lv: c.Sf_C_Ip = undefined;
    try testing.expectSize(c.Sf_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_C_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_C_Ip(), .{ .v1 = .{}, .v2 = 37, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_C_Ip());
    try testing.expectOk(c.send_Sf_C_Ip());
    try testing.expectOk(c.assert_Sf_C_Ip(.{ .v1 = .{}, .v2 = 37, .v3 = null }));
}
pub export fn zig_assert_Sf_C_Ip(lv: c.Sf_C_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != 37) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_Ip() c.Sf_C_Ip {
    return .{ .v1 = .{}, .v2 = 37, .v3 = null };
}

// From CT_Snen_xab.c:28505:28525
// struct  Sf_C_L  {
//   struct empty v1;
//   char v2;
//   __tsi64 v3;
// };

test "Sf_C_L layout" {
    var lv: c.Sf_C_L = undefined;
    try testing.expectSize(c.Sf_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_C_L C calls" {
    try testing.expectEqual(c.ret_Sf_C_L(), .{ .v1 = .{}, .v2 = 61, .v3 = 6859 });
    try testing.expectOk(c.assert_ret_Sf_C_L());
    try testing.expectOk(c.send_Sf_C_L());
    try testing.expectOk(c.assert_Sf_C_L(.{ .v1 = .{}, .v2 = 61, .v3 = 6859 }));
}
pub export fn zig_assert_Sf_C_L(lv: c.Sf_C_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != 61) err = 2;
    if (lv.v3 != 6859) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_L() c.Sf_C_L {
    return .{ .v1 = .{}, .v2 = 61, .v3 = 6859 };
}

// From CT_Snen_xab.c:28530:28550
// struct  Sf_C_S  {
//   struct empty v1;
//   char v2;
//   short v3;
// };

test "Sf_C_S layout" {
    var lv: c.Sf_C_S = undefined;
    try testing.expectSize(c.Sf_C_S, 4);
    try testing.expectAlign(c.Sf_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_C_S C calls" {
    try testing.expectEqual(c.ret_Sf_C_S(), .{ .v1 = .{}, .v2 = 22, .v3 = 23013 });
    try testing.expectOk(c.assert_ret_Sf_C_S());
    try testing.expectOk(c.send_Sf_C_S());
    try testing.expectOk(c.assert_Sf_C_S(.{ .v1 = .{}, .v2 = 22, .v3 = 23013 }));
}
pub export fn zig_assert_Sf_C_S(lv: c.Sf_C_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != 22) err = 2;
    if (lv.v3 != 23013) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_S() c.Sf_C_S {
    return .{ .v1 = .{}, .v2 = 22, .v3 = 23013 };
}

// From CT_Snen_xab.c:28555:28575
// struct  Sf_C_Sf  {
//   struct empty v1;
//   char v2;
//   struct empty v3;
// };

test "Sf_C_Sf layout" {
    var lv: c.Sf_C_Sf = undefined;
    try testing.expectSize(c.Sf_C_Sf, 1);
    try testing.expectAlign(c.Sf_C_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "Sf_C_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_C_Sf(), .{ .v1 = .{}, .v2 = 66, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_C_Sf());
    try testing.expectOk(c.send_Sf_C_Sf());
    try testing.expectOk(c.assert_Sf_C_Sf(.{ .v1 = .{}, .v2 = 66, .v3 = .{} }));
}
pub export fn zig_assert_Sf_C_Sf(lv: c.Sf_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != 66) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_Sf() c.Sf_C_Sf {
    return .{ .v1 = .{}, .v2 = 66, .v3 = .{} };
}

// From CT_Snen_xab.c:28580:28600
// struct  Sf_C_Uc  {
//   struct empty v1;
//   char v2;
//   unsigned char v3;
// };

test "Sf_C_Uc layout" {
    var lv: c.Sf_C_Uc = undefined;
    try testing.expectSize(c.Sf_C_Uc, 2);
    try testing.expectAlign(c.Sf_C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "Sf_C_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_C_Uc(), .{ .v1 = .{}, .v2 = 6, .v3 = 65 });
    try testing.expectOk(c.assert_ret_Sf_C_Uc());
    try testing.expectOk(c.send_Sf_C_Uc());
    try testing.expectOk(c.assert_Sf_C_Uc(.{ .v1 = .{}, .v2 = 6, .v3 = 65 }));
}
pub export fn zig_assert_Sf_C_Uc(lv: c.Sf_C_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != 6) err = 2;
    if (lv.v3 != 65) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_Uc() c.Sf_C_Uc {
    return .{ .v1 = .{}, .v2 = 6, .v3 = 65 };
}

// From CT_Snen_xab.c:28605:28625
// struct  Sf_C_Ui  {
//   struct empty v1;
//   char v2;
//   unsigned int v3;
// };

test "Sf_C_Ui layout" {
    var lv: c.Sf_C_Ui = undefined;
    try testing.expectSize(c.Sf_C_Ui, 8);
    try testing.expectAlign(c.Sf_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_C_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_C_Ui(), .{ .v1 = .{}, .v2 = 118, .v3 = 15881 });
    try testing.expectOk(c.assert_ret_Sf_C_Ui());
    try testing.expectOk(c.send_Sf_C_Ui());
    try testing.expectOk(c.assert_Sf_C_Ui(.{ .v1 = .{}, .v2 = 118, .v3 = 15881 }));
}
pub export fn zig_assert_Sf_C_Ui(lv: c.Sf_C_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != 118) err = 2;
    if (lv.v3 != 15881) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_Ui() c.Sf_C_Ui {
    return .{ .v1 = .{}, .v2 = 118, .v3 = 15881 };
}

// From CT_Snen_xab.c:28630:28650
// struct  Sf_C_Ul  {
//   struct empty v1;
//   char v2;
//   __tsu64 v3;
// };

test "Sf_C_Ul layout" {
    var lv: c.Sf_C_Ul = undefined;
    try testing.expectSize(c.Sf_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_C_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_C_Ul(), .{ .v1 = .{}, .v2 = 101, .v3 = 14340 });
    try testing.expectOk(c.assert_ret_Sf_C_Ul());
    try testing.expectOk(c.send_Sf_C_Ul());
    try testing.expectOk(c.assert_Sf_C_Ul(.{ .v1 = .{}, .v2 = 101, .v3 = 14340 }));
}
pub export fn zig_assert_Sf_C_Ul(lv: c.Sf_C_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != 101) err = 2;
    if (lv.v3 != 14340) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_Ul() c.Sf_C_Ul {
    return .{ .v1 = .{}, .v2 = 101, .v3 = 14340 };
}

// From CT_Snen_xab.c:28655:28675
// struct  Sf_C_Us  {
//   struct empty v1;
//   char v2;
//   unsigned short v3;
// };

test "Sf_C_Us layout" {
    var lv: c.Sf_C_Us = undefined;
    try testing.expectSize(c.Sf_C_Us, 4);
    try testing.expectAlign(c.Sf_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_C_Us C calls" {
    try testing.expectEqual(c.ret_Sf_C_Us(), .{ .v1 = .{}, .v2 = 33, .v3 = 12520 });
    try testing.expectOk(c.assert_ret_Sf_C_Us());
    try testing.expectOk(c.send_Sf_C_Us());
    try testing.expectOk(c.assert_Sf_C_Us(.{ .v1 = .{}, .v2 = 33, .v3 = 12520 }));
}
pub export fn zig_assert_Sf_C_Us(lv: c.Sf_C_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != 33) err = 2;
    if (lv.v3 != 12520) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_Us() c.Sf_C_Us {
    return .{ .v1 = .{}, .v2 = 33, .v3 = 12520 };
}

// From CT_Snen_xab.c:28680:28700
// struct  Sf_C_Vp  {
//   struct empty v1;
//   char v2;
//   void *v3;
// };

test "Sf_C_Vp layout" {
    var lv: c.Sf_C_Vp = undefined;
    try testing.expectSize(c.Sf_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_C_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_C_Vp(), .{ .v1 = .{}, .v2 = 120, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_C_Vp());
    try testing.expectOk(c.send_Sf_C_Vp());
    try testing.expectOk(c.assert_Sf_C_Vp(.{ .v1 = .{}, .v2 = 120, .v3 = null }));
}
pub export fn zig_assert_Sf_C_Vp(lv: c.Sf_C_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != 120) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_C_Vp() c.Sf_C_Vp {
    return .{ .v1 = .{}, .v2 = 120, .v3 = null };
}

// From CT_Snen_xab.c:28705:28723
// struct  Sf_D  {
//   struct empty v1;
//   double v2;
// };

test "Sf_D layout" {
    var lv: c.Sf_D = undefined;
    try testing.expectSize(c.Sf_D, 8);
    try testing.expectAlign(c.Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_D C calls" {
    try testing.expectEqual(c.ret_Sf_D(), .{ .v1 = .{}, .v2 = 4.5 });
    try testing.expectOk(c.assert_ret_Sf_D());
    try testing.expectOk(c.send_Sf_D());
    try testing.expectOk(c.assert_Sf_D(.{ .v1 = .{}, .v2 = 4.5 }));
}
pub export fn zig_assert_Sf_D(lv: c.Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != 4.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D() c.Sf_D {
    return .{ .v1 = .{}, .v2 = 4.5 };
}

// From CT_Snen_xab.c:29452:29472
// struct  Sf_D_C  {
//   struct empty v1;
//   double v2;
//   char v3;
// };

test "Sf_D_C layout" {
    var lv: c.Sf_D_C = undefined;
    try testing.expectSize(c.Sf_D_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_C C calls" {
    try testing.expectEqual(c.ret_Sf_D_C(), .{ .v1 = .{}, .v2 = -0.25, .v3 = 33 });
    try testing.expectOk(c.assert_ret_Sf_D_C());
    try testing.expectOk(c.send_Sf_D_C());
    try testing.expectOk(c.assert_Sf_D_C(.{ .v1 = .{}, .v2 = -0.25, .v3 = 33 }));
}
pub export fn zig_assert_Sf_D_C(lv: c.Sf_D_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 33) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_C() c.Sf_D_C {
    return .{ .v1 = .{}, .v2 = -0.25, .v3 = 33 };
}

// From CT_Snen_xab.c:29477:29497
// struct  Sf_D_D  {
//   struct empty v1;
//   double v2;
//   double v3;
// };

test "Sf_D_D layout" {
    var lv: c.Sf_D_D = undefined;
    try testing.expectSize(c.Sf_D_D, 16);
    try testing.expectAlign(c.Sf_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_D C calls" {
    try testing.expectEqual(c.ret_Sf_D_D(), .{ .v1 = .{}, .v2 = 0.5, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Sf_D_D());
    try testing.expectOk(c.send_Sf_D_D());
    try testing.expectOk(c.assert_Sf_D_D(.{ .v1 = .{}, .v2 = 0.5, .v3 = -2.125 }));
}
pub export fn zig_assert_Sf_D_D(lv: c.Sf_D_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_D() c.Sf_D_D {
    return .{ .v1 = .{}, .v2 = 0.5, .v3 = -2.125 };
}

// From CT_Snen_xab.c:29502:29522
// struct  Sf_D_F  {
//   struct empty v1;
//   double v2;
//   float v3;
// };

test "Sf_D_F layout" {
    var lv: c.Sf_D_F = undefined;
    try testing.expectSize(c.Sf_D_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_F C calls" {
    try testing.expectEqual(c.ret_Sf_D_F(), .{ .v1 = .{}, .v2 = 4.5, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Sf_D_F());
    try testing.expectOk(c.send_Sf_D_F());
    try testing.expectOk(c.assert_Sf_D_F(.{ .v1 = .{}, .v2 = 4.5, .v3 = 0.5 }));
}
pub export fn zig_assert_Sf_D_F(lv: c.Sf_D_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_F() c.Sf_D_F {
    return .{ .v1 = .{}, .v2 = 4.5, .v3 = 0.5 };
}

// From CT_Snen_xab.c:29527:29547
// struct  Sf_D_I  {
//   struct empty v1;
//   double v2;
//   int v3;
// };

test "Sf_D_I layout" {
    var lv: c.Sf_D_I = undefined;
    try testing.expectSize(c.Sf_D_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_I C calls" {
    try testing.expectEqual(c.ret_Sf_D_I(), .{ .v1 = .{}, .v2 = 1.0, .v3 = 28800 });
    try testing.expectOk(c.assert_ret_Sf_D_I());
    try testing.expectOk(c.send_Sf_D_I());
    try testing.expectOk(c.assert_Sf_D_I(.{ .v1 = .{}, .v2 = 1.0, .v3 = 28800 }));
}
pub export fn zig_assert_Sf_D_I(lv: c.Sf_D_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 28800) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_I() c.Sf_D_I {
    return .{ .v1 = .{}, .v2 = 1.0, .v3 = 28800 };
}

// From CT_Snen_xab.c:29552:29572
// struct  Sf_D_Ip  {
//   struct empty v1;
//   double v2;
//   int *v3;
// };

test "Sf_D_Ip layout" {
    var lv: c.Sf_D_Ip = undefined;
    try testing.expectSize(c.Sf_D_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_D_Ip(), .{ .v1 = .{}, .v2 = 0.5, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_D_Ip());
    try testing.expectOk(c.send_Sf_D_Ip());
    try testing.expectOk(c.assert_Sf_D_Ip(.{ .v1 = .{}, .v2 = 0.5, .v3 = null }));
}
pub export fn zig_assert_Sf_D_Ip(lv: c.Sf_D_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_Ip() c.Sf_D_Ip {
    return .{ .v1 = .{}, .v2 = 0.5, .v3 = null };
}

// From CT_Snen_xab.c:29577:29597
// struct  Sf_D_L  {
//   struct empty v1;
//   double v2;
//   __tsi64 v3;
// };

test "Sf_D_L layout" {
    var lv: c.Sf_D_L = undefined;
    try testing.expectSize(c.Sf_D_L, 16);
    try testing.expectAlign(c.Sf_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_L C calls" {
    try testing.expectEqual(c.ret_Sf_D_L(), .{ .v1 = .{}, .v2 = 7.0, .v3 = 6422 });
    try testing.expectOk(c.assert_ret_Sf_D_L());
    try testing.expectOk(c.send_Sf_D_L());
    try testing.expectOk(c.assert_Sf_D_L(.{ .v1 = .{}, .v2 = 7.0, .v3 = 6422 }));
}
pub export fn zig_assert_Sf_D_L(lv: c.Sf_D_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 6422) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_L() c.Sf_D_L {
    return .{ .v1 = .{}, .v2 = 7.0, .v3 = 6422 };
}

// From CT_Snen_xab.c:29602:29622
// struct  Sf_D_S  {
//   struct empty v1;
//   double v2;
//   short v3;
// };

test "Sf_D_S layout" {
    var lv: c.Sf_D_S = undefined;
    try testing.expectSize(c.Sf_D_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_S C calls" {
    try testing.expectEqual(c.ret_Sf_D_S(), .{ .v1 = .{}, .v2 = 0.875, .v3 = 18750 });
    try testing.expectOk(c.assert_ret_Sf_D_S());
    try testing.expectOk(c.send_Sf_D_S());
    try testing.expectOk(c.assert_Sf_D_S(.{ .v1 = .{}, .v2 = 0.875, .v3 = 18750 }));
}
pub export fn zig_assert_Sf_D_S(lv: c.Sf_D_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 18750) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_S() c.Sf_D_S {
    return .{ .v1 = .{}, .v2 = 0.875, .v3 = 18750 };
}

// From CT_Snen_xab.c:29627:29647
// struct  Sf_D_Sf  {
//   struct empty v1;
//   double v2;
//   struct empty v3;
// };

test "Sf_D_Sf layout" {
    var lv: c.Sf_D_Sf = undefined;
    try testing.expectSize(c.Sf_D_Sf, 8);
    try testing.expectAlign(c.Sf_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_D_Sf(), .{ .v1 = .{}, .v2 = 1.0, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_D_Sf());
    try testing.expectOk(c.send_Sf_D_Sf());
    try testing.expectOk(c.assert_Sf_D_Sf(.{ .v1 = .{}, .v2 = 1.0, .v3 = .{} }));
}
pub export fn zig_assert_Sf_D_Sf(lv: c.Sf_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != 1.0) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_Sf() c.Sf_D_Sf {
    return .{ .v1 = .{}, .v2 = 1.0, .v3 = .{} };
}

// From CT_Snen_xab.c:29652:29672
// struct  Sf_D_Uc  {
//   struct empty v1;
//   double v2;
//   unsigned char v3;
// };

test "Sf_D_Uc layout" {
    var lv: c.Sf_D_Uc = undefined;
    try testing.expectSize(c.Sf_D_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_D_Uc(), .{ .v1 = .{}, .v2 = -2.125, .v3 = 38 });
    try testing.expectOk(c.assert_ret_Sf_D_Uc());
    try testing.expectOk(c.send_Sf_D_Uc());
    try testing.expectOk(c.assert_Sf_D_Uc(.{ .v1 = .{}, .v2 = -2.125, .v3 = 38 }));
}
pub export fn zig_assert_Sf_D_Uc(lv: c.Sf_D_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 38) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_Uc() c.Sf_D_Uc {
    return .{ .v1 = .{}, .v2 = -2.125, .v3 = 38 };
}

// From CT_Snen_xab.c:29677:29697
// struct  Sf_D_Ui  {
//   struct empty v1;
//   double v2;
//   unsigned int v3;
// };

test "Sf_D_Ui layout" {
    var lv: c.Sf_D_Ui = undefined;
    try testing.expectSize(c.Sf_D_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_D_Ui(), .{ .v1 = .{}, .v2 = 0.5, .v3 = 1725 });
    try testing.expectOk(c.assert_ret_Sf_D_Ui());
    try testing.expectOk(c.send_Sf_D_Ui());
    try testing.expectOk(c.assert_Sf_D_Ui(.{ .v1 = .{}, .v2 = 0.5, .v3 = 1725 }));
}
pub export fn zig_assert_Sf_D_Ui(lv: c.Sf_D_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 1725) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_Ui() c.Sf_D_Ui {
    return .{ .v1 = .{}, .v2 = 0.5, .v3 = 1725 };
}

// From CT_Snen_xab.c:29702:29722
// struct  Sf_D_Ul  {
//   struct empty v1;
//   double v2;
//   __tsu64 v3;
// };

test "Sf_D_Ul layout" {
    var lv: c.Sf_D_Ul = undefined;
    try testing.expectSize(c.Sf_D_Ul, 16);
    try testing.expectAlign(c.Sf_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_D_Ul(), .{ .v1 = .{}, .v2 = -0.25, .v3 = 18494 });
    try testing.expectOk(c.assert_ret_Sf_D_Ul());
    try testing.expectOk(c.send_Sf_D_Ul());
    try testing.expectOk(c.assert_Sf_D_Ul(.{ .v1 = .{}, .v2 = -0.25, .v3 = 18494 }));
}
pub export fn zig_assert_Sf_D_Ul(lv: c.Sf_D_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 18494) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_Ul() c.Sf_D_Ul {
    return .{ .v1 = .{}, .v2 = -0.25, .v3 = 18494 };
}

// From CT_Snen_xab.c:29727:29747
// struct  Sf_D_Us  {
//   struct empty v1;
//   double v2;
//   unsigned short v3;
// };

test "Sf_D_Us layout" {
    var lv: c.Sf_D_Us = undefined;
    try testing.expectSize(c.Sf_D_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_Us C calls" {
    try testing.expectEqual(c.ret_Sf_D_Us(), .{ .v1 = .{}, .v2 = -0.25, .v3 = 8965 });
    try testing.expectOk(c.assert_ret_Sf_D_Us());
    try testing.expectOk(c.send_Sf_D_Us());
    try testing.expectOk(c.assert_Sf_D_Us(.{ .v1 = .{}, .v2 = -0.25, .v3 = 8965 }));
}
pub export fn zig_assert_Sf_D_Us(lv: c.Sf_D_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 8965) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_Us() c.Sf_D_Us {
    return .{ .v1 = .{}, .v2 = -0.25, .v3 = 8965 };
}

// From CT_Snen_xab.c:29752:29772
// struct  Sf_D_Vp  {
//   struct empty v1;
//   double v2;
//   void *v3;
// };

test "Sf_D_Vp layout" {
    var lv: c.Sf_D_Vp = undefined;
    try testing.expectSize(c.Sf_D_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_D_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_D_Vp(), .{ .v1 = .{}, .v2 = 7.0, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_D_Vp());
    try testing.expectOk(c.send_Sf_D_Vp());
    try testing.expectOk(c.assert_Sf_D_Vp(.{ .v1 = .{}, .v2 = 7.0, .v3 = null }));
}
pub export fn zig_assert_Sf_D_Vp(lv: c.Sf_D_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_D_Vp() c.Sf_D_Vp {
    return .{ .v1 = .{}, .v2 = 7.0, .v3 = null };
}

// From CT_Snen_xab.c:29777:29795
// struct  Sf_F  {
//   struct empty v1;
//   float v2;
// };

test "Sf_F layout" {
    var lv: c.Sf_F = undefined;
    try testing.expectSize(c.Sf_F, 4);
    try testing.expectAlign(c.Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_F C calls" {
    try testing.expectEqual(c.ret_Sf_F(), .{ .v1 = .{}, .v2 = -2.125 });
    try testing.expectOk(c.assert_ret_Sf_F());
    try testing.expectOk(c.send_Sf_F());
    try testing.expectOk(c.assert_Sf_F(.{ .v1 = .{}, .v2 = -2.125 }));
}
pub export fn zig_assert_Sf_F(lv: c.Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != -2.125) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F() c.Sf_F {
    return .{ .v1 = .{}, .v2 = -2.125 };
}

// From CT_Snen_xab.c:30524:30544
// struct  Sf_F_C  {
//   struct empty v1;
//   float v2;
//   char v3;
// };

test "Sf_F_C layout" {
    var lv: c.Sf_F_C = undefined;
    try testing.expectSize(c.Sf_F_C, 8);
    try testing.expectAlign(c.Sf_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_F_C C calls" {
    try testing.expectEqual(c.ret_Sf_F_C(), .{ .v1 = .{}, .v2 = -0.25, .v3 = 99 });
    try testing.expectOk(c.assert_ret_Sf_F_C());
    try testing.expectOk(c.send_Sf_F_C());
    try testing.expectOk(c.assert_Sf_F_C(.{ .v1 = .{}, .v2 = -0.25, .v3 = 99 }));
}
pub export fn zig_assert_Sf_F_C(lv: c.Sf_F_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 99) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_C() c.Sf_F_C {
    return .{ .v1 = .{}, .v2 = -0.25, .v3 = 99 };
}

// From CT_Snen_xab.c:30549:30569
// struct  Sf_F_D  {
//   struct empty v1;
//   float v2;
//   double v3;
// };

test "Sf_F_D layout" {
    var lv: c.Sf_F_D = undefined;
    try testing.expectSize(c.Sf_F_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_F_D C calls" {
    try testing.expectEqual(c.ret_Sf_F_D(), .{ .v1 = .{}, .v2 = 7.0, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Sf_F_D());
    try testing.expectOk(c.send_Sf_F_D());
    try testing.expectOk(c.assert_Sf_F_D(.{ .v1 = .{}, .v2 = 7.0, .v3 = -2.125 }));
}
pub export fn zig_assert_Sf_F_D(lv: c.Sf_F_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_D() c.Sf_F_D {
    return .{ .v1 = .{}, .v2 = 7.0, .v3 = -2.125 };
}

// From CT_Snen_xab.c:30574:30594
// struct  Sf_F_F  {
//   struct empty v1;
//   float v2;
//   float v3;
// };

test "Sf_F_F layout" {
    var lv: c.Sf_F_F = undefined;
    try testing.expectSize(c.Sf_F_F, 8);
    try testing.expectAlign(c.Sf_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_F_F C calls" {
    try testing.expectEqual(c.ret_Sf_F_F(), .{ .v1 = .{}, .v2 = 0.5, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Sf_F_F());
    try testing.expectOk(c.send_Sf_F_F());
    try testing.expectOk(c.assert_Sf_F_F(.{ .v1 = .{}, .v2 = 0.5, .v3 = 0.875 }));
}
pub export fn zig_assert_Sf_F_F(lv: c.Sf_F_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_F() c.Sf_F_F {
    return .{ .v1 = .{}, .v2 = 0.5, .v3 = 0.875 };
}

// From CT_Snen_xab.c:30599:30619
// struct  Sf_F_I  {
//   struct empty v1;
//   float v2;
//   int v3;
// };

test "Sf_F_I layout" {
    var lv: c.Sf_F_I = undefined;
    try testing.expectSize(c.Sf_F_I, 8);
    try testing.expectAlign(c.Sf_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_F_I C calls" {
    try testing.expectEqual(c.ret_Sf_F_I(), .{ .v1 = .{}, .v2 = 1.0, .v3 = 8447 });
    try testing.expectOk(c.assert_ret_Sf_F_I());
    try testing.expectOk(c.send_Sf_F_I());
    try testing.expectOk(c.assert_Sf_F_I(.{ .v1 = .{}, .v2 = 1.0, .v3 = 8447 }));
}
pub export fn zig_assert_Sf_F_I(lv: c.Sf_F_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 8447) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_I() c.Sf_F_I {
    return .{ .v1 = .{}, .v2 = 1.0, .v3 = 8447 };
}

// From CT_Snen_xab.c:30624:30644
// struct  Sf_F_Ip  {
//   struct empty v1;
//   float v2;
//   int *v3;
// };

test "Sf_F_Ip layout" {
    var lv: c.Sf_F_Ip = undefined;
    try testing.expectSize(c.Sf_F_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_F_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_F_Ip(), .{ .v1 = .{}, .v2 = 4.5, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_F_Ip());
    try testing.expectOk(c.send_Sf_F_Ip());
    try testing.expectOk(c.assert_Sf_F_Ip(.{ .v1 = .{}, .v2 = 4.5, .v3 = null }));
}
pub export fn zig_assert_Sf_F_Ip(lv: c.Sf_F_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_Ip() c.Sf_F_Ip {
    return .{ .v1 = .{}, .v2 = 4.5, .v3 = null };
}

// From CT_Snen_xab.c:30649:30669
// struct  Sf_F_L  {
//   struct empty v1;
//   float v2;
//   __tsi64 v3;
// };

test "Sf_F_L layout" {
    var lv: c.Sf_F_L = undefined;
    try testing.expectSize(c.Sf_F_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_F_L C calls" {
    try testing.expectEqual(c.ret_Sf_F_L(), .{ .v1 = .{}, .v2 = 0.875, .v3 = 27983 });
    try testing.expectOk(c.assert_ret_Sf_F_L());
    try testing.expectOk(c.send_Sf_F_L());
    try testing.expectOk(c.assert_Sf_F_L(.{ .v1 = .{}, .v2 = 0.875, .v3 = 27983 }));
}
pub export fn zig_assert_Sf_F_L(lv: c.Sf_F_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != 0.875) err = 2;
    if (lv.v3 != 27983) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_L() c.Sf_F_L {
    return .{ .v1 = .{}, .v2 = 0.875, .v3 = 27983 };
}

// From CT_Snen_xab.c:30674:30694
// struct  Sf_F_S  {
//   struct empty v1;
//   float v2;
//   short v3;
// };

test "Sf_F_S layout" {
    var lv: c.Sf_F_S = undefined;
    try testing.expectSize(c.Sf_F_S, 8);
    try testing.expectAlign(c.Sf_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_F_S C calls" {
    try testing.expectEqual(c.ret_Sf_F_S(), .{ .v1 = .{}, .v2 = 7.0, .v3 = 16334 });
    try testing.expectOk(c.assert_ret_Sf_F_S());
    try testing.expectOk(c.send_Sf_F_S());
    try testing.expectOk(c.assert_Sf_F_S(.{ .v1 = .{}, .v2 = 7.0, .v3 = 16334 }));
}
pub export fn zig_assert_Sf_F_S(lv: c.Sf_F_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != 7.0) err = 2;
    if (lv.v3 != 16334) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_S() c.Sf_F_S {
    return .{ .v1 = .{}, .v2 = 7.0, .v3 = 16334 };
}

// From CT_Snen_xab.c:30699:30719
// struct  Sf_F_Sf  {
//   struct empty v1;
//   float v2;
//   struct empty v3;
// };

test "Sf_F_Sf layout" {
    var lv: c.Sf_F_Sf = undefined;
    try testing.expectSize(c.Sf_F_Sf, 4);
    try testing.expectAlign(c.Sf_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_F_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_F_Sf(), .{ .v1 = .{}, .v2 = 4.5, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_F_Sf());
    try testing.expectOk(c.send_Sf_F_Sf());
    try testing.expectOk(c.assert_Sf_F_Sf(.{ .v1 = .{}, .v2 = 4.5, .v3 = .{} }));
}
pub export fn zig_assert_Sf_F_Sf(lv: c.Sf_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != 4.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_Sf() c.Sf_F_Sf {
    return .{ .v1 = .{}, .v2 = 4.5, .v3 = .{} };
}

// From CT_Snen_xab.c:30724:30744
// struct  Sf_F_Uc  {
//   struct empty v1;
//   float v2;
//   unsigned char v3;
// };

test "Sf_F_Uc layout" {
    var lv: c.Sf_F_Uc = undefined;
    try testing.expectSize(c.Sf_F_Uc, 8);
    try testing.expectAlign(c.Sf_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_F_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_F_Uc(), .{ .v1 = .{}, .v2 = 1.0, .v3 = 12 });
    try testing.expectOk(c.assert_ret_Sf_F_Uc());
    try testing.expectOk(c.send_Sf_F_Uc());
    try testing.expectOk(c.assert_Sf_F_Uc(.{ .v1 = .{}, .v2 = 1.0, .v3 = 12 }));
}
pub export fn zig_assert_Sf_F_Uc(lv: c.Sf_F_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != 1.0) err = 2;
    if (lv.v3 != 12) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_Uc() c.Sf_F_Uc {
    return .{ .v1 = .{}, .v2 = 1.0, .v3 = 12 };
}

// From CT_Snen_xab.c:30749:30769
// struct  Sf_F_Ui  {
//   struct empty v1;
//   float v2;
//   unsigned int v3;
// };

test "Sf_F_Ui layout" {
    var lv: c.Sf_F_Ui = undefined;
    try testing.expectSize(c.Sf_F_Ui, 8);
    try testing.expectAlign(c.Sf_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_F_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_F_Ui(), .{ .v1 = .{}, .v2 = 4.5, .v3 = 13538 });
    try testing.expectOk(c.assert_ret_Sf_F_Ui());
    try testing.expectOk(c.send_Sf_F_Ui());
    try testing.expectOk(c.assert_Sf_F_Ui(.{ .v1 = .{}, .v2 = 4.5, .v3 = 13538 }));
}
pub export fn zig_assert_Sf_F_Ui(lv: c.Sf_F_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != 4.5) err = 2;
    if (lv.v3 != 13538) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_Ui() c.Sf_F_Ui {
    return .{ .v1 = .{}, .v2 = 4.5, .v3 = 13538 };
}

// From CT_Snen_xab.c:30774:30794
// struct  Sf_F_Ul  {
//   struct empty v1;
//   float v2;
//   __tsu64 v3;
// };

test "Sf_F_Ul layout" {
    var lv: c.Sf_F_Ul = undefined;
    try testing.expectSize(c.Sf_F_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_F_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_F_Ul(), .{ .v1 = .{}, .v2 = -0.25, .v3 = 18464 });
    try testing.expectOk(c.assert_ret_Sf_F_Ul());
    try testing.expectOk(c.send_Sf_F_Ul());
    try testing.expectOk(c.assert_Sf_F_Ul(.{ .v1 = .{}, .v2 = -0.25, .v3 = 18464 }));
}
pub export fn zig_assert_Sf_F_Ul(lv: c.Sf_F_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != -0.25) err = 2;
    if (lv.v3 != 18464) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_Ul() c.Sf_F_Ul {
    return .{ .v1 = .{}, .v2 = -0.25, .v3 = 18464 };
}

// From CT_Snen_xab.c:30799:30819
// struct  Sf_F_Us  {
//   struct empty v1;
//   float v2;
//   unsigned short v3;
// };

test "Sf_F_Us layout" {
    var lv: c.Sf_F_Us = undefined;
    try testing.expectSize(c.Sf_F_Us, 8);
    try testing.expectAlign(c.Sf_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_F_Us C calls" {
    try testing.expectEqual(c.ret_Sf_F_Us(), .{ .v1 = .{}, .v2 = -2.125, .v3 = 419 });
    try testing.expectOk(c.assert_ret_Sf_F_Us());
    try testing.expectOk(c.send_Sf_F_Us());
    try testing.expectOk(c.assert_Sf_F_Us(.{ .v1 = .{}, .v2 = -2.125, .v3 = 419 }));
}
pub export fn zig_assert_Sf_F_Us(lv: c.Sf_F_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != -2.125) err = 2;
    if (lv.v3 != 419) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_Us() c.Sf_F_Us {
    return .{ .v1 = .{}, .v2 = -2.125, .v3 = 419 };
}

// From CT_Snen_xab.c:30824:30844
// struct  Sf_F_Vp  {
//   struct empty v1;
//   float v2;
//   void *v3;
// };

test "Sf_F_Vp layout" {
    var lv: c.Sf_F_Vp = undefined;
    try testing.expectSize(c.Sf_F_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_F_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_F_Vp(), .{ .v1 = .{}, .v2 = 0.5, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_F_Vp());
    try testing.expectOk(c.send_Sf_F_Vp());
    try testing.expectOk(c.assert_Sf_F_Vp(.{ .v1 = .{}, .v2 = 0.5, .v3 = null }));
}
pub export fn zig_assert_Sf_F_Vp(lv: c.Sf_F_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != 0.5) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_F_Vp() c.Sf_F_Vp {
    return .{ .v1 = .{}, .v2 = 0.5, .v3 = null };
}

// From CT_Snen_xab.c:30849:30867
// struct  Sf_I  {
//   struct empty v1;
//   int v2;
// };

test "Sf_I layout" {
    var lv: c.Sf_I = undefined;
    try testing.expectSize(c.Sf_I, 4);
    try testing.expectAlign(c.Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_I C calls" {
    try testing.expectEqual(c.ret_Sf_I(), .{ .v1 = .{}, .v2 = 10424 });
    try testing.expectOk(c.assert_ret_Sf_I());
    try testing.expectOk(c.send_Sf_I());
    try testing.expectOk(c.assert_Sf_I(.{ .v1 = .{}, .v2 = 10424 }));
}
pub export fn zig_assert_Sf_I(lv: c.Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != 10424) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I() c.Sf_I {
    return .{ .v1 = .{}, .v2 = 10424 };
}

// From CT_Snen_xab.c:31596:31616
// struct  Sf_I_C  {
//   struct empty v1;
//   int v2;
//   char v3;
// };

test "Sf_I_C layout" {
    var lv: c.Sf_I_C = undefined;
    try testing.expectSize(c.Sf_I_C, 8);
    try testing.expectAlign(c.Sf_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_I_C C calls" {
    try testing.expectEqual(c.ret_Sf_I_C(), .{ .v1 = .{}, .v2 = 17020, .v3 = 31 });
    try testing.expectOk(c.assert_ret_Sf_I_C());
    try testing.expectOk(c.send_Sf_I_C());
    try testing.expectOk(c.assert_Sf_I_C(.{ .v1 = .{}, .v2 = 17020, .v3 = 31 }));
}
pub export fn zig_assert_Sf_I_C(lv: c.Sf_I_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != 17020) err = 2;
    if (lv.v3 != 31) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_C() c.Sf_I_C {
    return .{ .v1 = .{}, .v2 = 17020, .v3 = 31 };
}

// From CT_Snen_xab.c:31621:31641
// struct  Sf_I_D  {
//   struct empty v1;
//   int v2;
//   double v3;
// };

test "Sf_I_D layout" {
    var lv: c.Sf_I_D = undefined;
    try testing.expectSize(c.Sf_I_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_I_D C calls" {
    try testing.expectEqual(c.ret_Sf_I_D(), .{ .v1 = .{}, .v2 = 26321, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Sf_I_D());
    try testing.expectOk(c.send_Sf_I_D());
    try testing.expectOk(c.assert_Sf_I_D(.{ .v1 = .{}, .v2 = 26321, .v3 = 0.5 }));
}
pub export fn zig_assert_Sf_I_D(lv: c.Sf_I_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != 26321) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_D() c.Sf_I_D {
    return .{ .v1 = .{}, .v2 = 26321, .v3 = 0.5 };
}

// From CT_Snen_xab.c:31646:31666
// struct  Sf_I_F  {
//   struct empty v1;
//   int v2;
//   float v3;
// };

test "Sf_I_F layout" {
    var lv: c.Sf_I_F = undefined;
    try testing.expectSize(c.Sf_I_F, 8);
    try testing.expectAlign(c.Sf_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_I_F C calls" {
    try testing.expectEqual(c.ret_Sf_I_F(), .{ .v1 = .{}, .v2 = 30704, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Sf_I_F());
    try testing.expectOk(c.send_Sf_I_F());
    try testing.expectOk(c.assert_Sf_I_F(.{ .v1 = .{}, .v2 = 30704, .v3 = 0.5 }));
}
pub export fn zig_assert_Sf_I_F(lv: c.Sf_I_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != 30704) err = 2;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_F() c.Sf_I_F {
    return .{ .v1 = .{}, .v2 = 30704, .v3 = 0.5 };
}

// From CT_Snen_xab.c:31671:31691
// struct  Sf_I_I  {
//   struct empty v1;
//   int v2;
//   int v3;
// };

test "Sf_I_I layout" {
    var lv: c.Sf_I_I = undefined;
    try testing.expectSize(c.Sf_I_I, 8);
    try testing.expectAlign(c.Sf_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_I_I C calls" {
    try testing.expectEqual(c.ret_Sf_I_I(), .{ .v1 = .{}, .v2 = 3345, .v3 = 20037 });
    try testing.expectOk(c.assert_ret_Sf_I_I());
    try testing.expectOk(c.send_Sf_I_I());
    try testing.expectOk(c.assert_Sf_I_I(.{ .v1 = .{}, .v2 = 3345, .v3 = 20037 }));
}
pub export fn zig_assert_Sf_I_I(lv: c.Sf_I_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != 3345) err = 2;
    if (lv.v3 != 20037) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_I() c.Sf_I_I {
    return .{ .v1 = .{}, .v2 = 3345, .v3 = 20037 };
}

// From CT_Snen_xab.c:31696:31716
// struct  Sf_I_Ip  {
//   struct empty v1;
//   int v2;
//   int *v3;
// };

test "Sf_I_Ip layout" {
    var lv: c.Sf_I_Ip = undefined;
    try testing.expectSize(c.Sf_I_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_I_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_I_Ip(), .{ .v1 = .{}, .v2 = 5573, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_I_Ip());
    try testing.expectOk(c.send_Sf_I_Ip());
    try testing.expectOk(c.assert_Sf_I_Ip(.{ .v1 = .{}, .v2 = 5573, .v3 = null }));
}
pub export fn zig_assert_Sf_I_Ip(lv: c.Sf_I_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != 5573) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_Ip() c.Sf_I_Ip {
    return .{ .v1 = .{}, .v2 = 5573, .v3 = null };
}

// From CT_Snen_xab.c:31721:31741
// struct  Sf_I_L  {
//   struct empty v1;
//   int v2;
//   __tsi64 v3;
// };

test "Sf_I_L layout" {
    var lv: c.Sf_I_L = undefined;
    try testing.expectSize(c.Sf_I_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_I_L C calls" {
    try testing.expectEqual(c.ret_Sf_I_L(), .{ .v1 = .{}, .v2 = 13890, .v3 = 2781 });
    try testing.expectOk(c.assert_ret_Sf_I_L());
    try testing.expectOk(c.send_Sf_I_L());
    try testing.expectOk(c.assert_Sf_I_L(.{ .v1 = .{}, .v2 = 13890, .v3 = 2781 }));
}
pub export fn zig_assert_Sf_I_L(lv: c.Sf_I_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != 13890) err = 2;
    if (lv.v3 != 2781) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_L() c.Sf_I_L {
    return .{ .v1 = .{}, .v2 = 13890, .v3 = 2781 };
}

// From CT_Snen_xab.c:31746:31766
// struct  Sf_I_S  {
//   struct empty v1;
//   int v2;
//   short v3;
// };

test "Sf_I_S layout" {
    var lv: c.Sf_I_S = undefined;
    try testing.expectSize(c.Sf_I_S, 8);
    try testing.expectAlign(c.Sf_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_I_S C calls" {
    try testing.expectEqual(c.ret_Sf_I_S(), .{ .v1 = .{}, .v2 = 16337, .v3 = 22278 });
    try testing.expectOk(c.assert_ret_Sf_I_S());
    try testing.expectOk(c.send_Sf_I_S());
    try testing.expectOk(c.assert_Sf_I_S(.{ .v1 = .{}, .v2 = 16337, .v3 = 22278 }));
}
pub export fn zig_assert_Sf_I_S(lv: c.Sf_I_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != 16337) err = 2;
    if (lv.v3 != 22278) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_S() c.Sf_I_S {
    return .{ .v1 = .{}, .v2 = 16337, .v3 = 22278 };
}

// From CT_Snen_xab.c:31771:31791
// struct  Sf_I_Sf  {
//   struct empty v1;
//   int v2;
//   struct empty v3;
// };

test "Sf_I_Sf layout" {
    var lv: c.Sf_I_Sf = undefined;
    try testing.expectSize(c.Sf_I_Sf, 4);
    try testing.expectAlign(c.Sf_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_I_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_I_Sf(), .{ .v1 = .{}, .v2 = 8651, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_I_Sf());
    try testing.expectOk(c.send_Sf_I_Sf());
    try testing.expectOk(c.assert_Sf_I_Sf(.{ .v1 = .{}, .v2 = 8651, .v3 = .{} }));
}
pub export fn zig_assert_Sf_I_Sf(lv: c.Sf_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != 8651) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_Sf() c.Sf_I_Sf {
    return .{ .v1 = .{}, .v2 = 8651, .v3 = .{} };
}

// From CT_Snen_xab.c:31796:31816
// struct  Sf_I_Uc  {
//   struct empty v1;
//   int v2;
//   unsigned char v3;
// };

test "Sf_I_Uc layout" {
    var lv: c.Sf_I_Uc = undefined;
    try testing.expectSize(c.Sf_I_Uc, 8);
    try testing.expectAlign(c.Sf_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_I_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_I_Uc(), .{ .v1 = .{}, .v2 = 9837, .v3 = 115 });
    try testing.expectOk(c.assert_ret_Sf_I_Uc());
    try testing.expectOk(c.send_Sf_I_Uc());
    try testing.expectOk(c.assert_Sf_I_Uc(.{ .v1 = .{}, .v2 = 9837, .v3 = 115 }));
}
pub export fn zig_assert_Sf_I_Uc(lv: c.Sf_I_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != 9837) err = 2;
    if (lv.v3 != 115) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_Uc() c.Sf_I_Uc {
    return .{ .v1 = .{}, .v2 = 9837, .v3 = 115 };
}

// From CT_Snen_xab.c:31821:31841
// struct  Sf_I_Ui  {
//   struct empty v1;
//   int v2;
//   unsigned int v3;
// };

test "Sf_I_Ui layout" {
    var lv: c.Sf_I_Ui = undefined;
    try testing.expectSize(c.Sf_I_Ui, 8);
    try testing.expectAlign(c.Sf_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_I_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_I_Ui(), .{ .v1 = .{}, .v2 = 275, .v3 = 11579 });
    try testing.expectOk(c.assert_ret_Sf_I_Ui());
    try testing.expectOk(c.send_Sf_I_Ui());
    try testing.expectOk(c.assert_Sf_I_Ui(.{ .v1 = .{}, .v2 = 275, .v3 = 11579 }));
}
pub export fn zig_assert_Sf_I_Ui(lv: c.Sf_I_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != 275) err = 2;
    if (lv.v3 != 11579) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_Ui() c.Sf_I_Ui {
    return .{ .v1 = .{}, .v2 = 275, .v3 = 11579 };
}

// From CT_Snen_xab.c:31846:31866
// struct  Sf_I_Ul  {
//   struct empty v1;
//   int v2;
//   __tsu64 v3;
// };

test "Sf_I_Ul layout" {
    var lv: c.Sf_I_Ul = undefined;
    try testing.expectSize(c.Sf_I_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_I_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_I_Ul(), .{ .v1 = .{}, .v2 = 9061, .v3 = 1767 });
    try testing.expectOk(c.assert_ret_Sf_I_Ul());
    try testing.expectOk(c.send_Sf_I_Ul());
    try testing.expectOk(c.assert_Sf_I_Ul(.{ .v1 = .{}, .v2 = 9061, .v3 = 1767 }));
}
pub export fn zig_assert_Sf_I_Ul(lv: c.Sf_I_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != 9061) err = 2;
    if (lv.v3 != 1767) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_Ul() c.Sf_I_Ul {
    return .{ .v1 = .{}, .v2 = 9061, .v3 = 1767 };
}

// From CT_Snen_xab.c:31871:31891
// struct  Sf_I_Us  {
//   struct empty v1;
//   int v2;
//   unsigned short v3;
// };

test "Sf_I_Us layout" {
    var lv: c.Sf_I_Us = undefined;
    try testing.expectSize(c.Sf_I_Us, 8);
    try testing.expectAlign(c.Sf_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_I_Us C calls" {
    try testing.expectEqual(c.ret_Sf_I_Us(), .{ .v1 = .{}, .v2 = 21099, .v3 = 30349 });
    try testing.expectOk(c.assert_ret_Sf_I_Us());
    try testing.expectOk(c.send_Sf_I_Us());
    try testing.expectOk(c.assert_Sf_I_Us(.{ .v1 = .{}, .v2 = 21099, .v3 = 30349 }));
}
pub export fn zig_assert_Sf_I_Us(lv: c.Sf_I_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != 21099) err = 2;
    if (lv.v3 != 30349) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_Us() c.Sf_I_Us {
    return .{ .v1 = .{}, .v2 = 21099, .v3 = 30349 };
}

// From CT_Snen_xab.c:31896:31916
// struct  Sf_I_Vp  {
//   struct empty v1;
//   int v2;
//   void *v3;
// };

test "Sf_I_Vp layout" {
    var lv: c.Sf_I_Vp = undefined;
    try testing.expectSize(c.Sf_I_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_I_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_I_Vp(), .{ .v1 = .{}, .v2 = 15528, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_I_Vp());
    try testing.expectOk(c.send_Sf_I_Vp());
    try testing.expectOk(c.assert_Sf_I_Vp(.{ .v1 = .{}, .v2 = 15528, .v3 = null }));
}
pub export fn zig_assert_Sf_I_Vp(lv: c.Sf_I_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != 15528) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_I_Vp() c.Sf_I_Vp {
    return .{ .v1 = .{}, .v2 = 15528, .v3 = null };
}

// From CT_Snen_xab.c:31921:31939
// struct  Sf_Ip  {
//   struct empty v1;
//   int *v2;
// };

test "Sf_Ip layout" {
    var lv: c.Sf_Ip = undefined;
    try testing.expectSize(c.Sf_Ip, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_Ip(), .{ .v1 = .{}, .v2 = null });
    try testing.expectOk(c.assert_ret_Sf_Ip());
    try testing.expectOk(c.send_Sf_Ip());
    try testing.expectOk(c.assert_Sf_Ip(.{ .v1 = .{}, .v2 = null }));
}
pub export fn zig_assert_Sf_Ip(lv: c.Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip() c.Sf_Ip {
    return .{ .v1 = .{}, .v2 = null };
}

// From CT_Snen_xab.c:32668:32688
// struct  Sf_Ip_C  {
//   struct empty v1;
//   int *v2;
//   char v3;
// };

test "Sf_Ip_C layout" {
    var lv: c.Sf_Ip_C = undefined;
    try testing.expectSize(c.Sf_Ip_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_C C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_C(), .{ .v1 = .{}, .v2 = null, .v3 = 83 });
    try testing.expectOk(c.assert_ret_Sf_Ip_C());
    try testing.expectOk(c.send_Sf_Ip_C());
    try testing.expectOk(c.assert_Sf_Ip_C(.{ .v1 = .{}, .v2 = null, .v3 = 83 }));
}
pub export fn zig_assert_Sf_Ip_C(lv: c.Sf_Ip_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 83) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_C() c.Sf_Ip_C {
    return .{ .v1 = .{}, .v2 = null, .v3 = 83 };
}

// From CT_Snen_xab.c:32693:32713
// struct  Sf_Ip_D  {
//   struct empty v1;
//   int *v2;
//   double v3;
// };

test "Sf_Ip_D layout" {
    var lv: c.Sf_Ip_D = undefined;
    try testing.expectSize(c.Sf_Ip_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_D C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_D(), .{ .v1 = .{}, .v2 = null, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Sf_Ip_D());
    try testing.expectOk(c.send_Sf_Ip_D());
    try testing.expectOk(c.assert_Sf_Ip_D(.{ .v1 = .{}, .v2 = null, .v3 = -0.25 }));
}
pub export fn zig_assert_Sf_Ip_D(lv: c.Sf_Ip_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_D() c.Sf_Ip_D {
    return .{ .v1 = .{}, .v2 = null, .v3 = -0.25 };
}

// From CT_Snen_xab.c:32718:32738
// struct  Sf_Ip_F  {
//   struct empty v1;
//   int *v2;
//   float v3;
// };

test "Sf_Ip_F layout" {
    var lv: c.Sf_Ip_F = undefined;
    try testing.expectSize(c.Sf_Ip_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_F C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_F(), .{ .v1 = .{}, .v2 = null, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Sf_Ip_F());
    try testing.expectOk(c.send_Sf_Ip_F());
    try testing.expectOk(c.assert_Sf_Ip_F(.{ .v1 = .{}, .v2 = null, .v3 = 1.0 }));
}
pub export fn zig_assert_Sf_Ip_F(lv: c.Sf_Ip_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_F() c.Sf_Ip_F {
    return .{ .v1 = .{}, .v2 = null, .v3 = 1.0 };
}

// From CT_Snen_xab.c:32743:32763
// struct  Sf_Ip_I  {
//   struct empty v1;
//   int *v2;
//   int v3;
// };

test "Sf_Ip_I layout" {
    var lv: c.Sf_Ip_I = undefined;
    try testing.expectSize(c.Sf_Ip_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_I C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_I(), .{ .v1 = .{}, .v2 = null, .v3 = 4937 });
    try testing.expectOk(c.assert_ret_Sf_Ip_I());
    try testing.expectOk(c.send_Sf_Ip_I());
    try testing.expectOk(c.assert_Sf_Ip_I(.{ .v1 = .{}, .v2 = null, .v3 = 4937 }));
}
pub export fn zig_assert_Sf_Ip_I(lv: c.Sf_Ip_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4937) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_I() c.Sf_Ip_I {
    return .{ .v1 = .{}, .v2 = null, .v3 = 4937 };
}

// From CT_Snen_xab.c:32768:32788
// struct  Sf_Ip_Ip  {
//   struct empty v1;
//   int *v2;
//   int *v3;
// };

test "Sf_Ip_Ip layout" {
    var lv: c.Sf_Ip_Ip = undefined;
    try testing.expectSize(c.Sf_Ip_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_Ip(), .{ .v1 = .{}, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Ip_Ip());
    try testing.expectOk(c.send_Sf_Ip_Ip());
    try testing.expectOk(c.assert_Sf_Ip_Ip(.{ .v1 = .{}, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Sf_Ip_Ip(lv: c.Sf_Ip_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_Ip() c.Sf_Ip_Ip {
    return .{ .v1 = .{}, .v2 = null, .v3 = null };
}

// From CT_Snen_xab.c:32793:32813
// struct  Sf_Ip_L  {
//   struct empty v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Sf_Ip_L layout" {
    var lv: c.Sf_Ip_L = undefined;
    try testing.expectSize(c.Sf_Ip_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_L C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_L(), .{ .v1 = .{}, .v2 = null, .v3 = 12433 });
    try testing.expectOk(c.assert_ret_Sf_Ip_L());
    try testing.expectOk(c.send_Sf_Ip_L());
    try testing.expectOk(c.assert_Sf_Ip_L(.{ .v1 = .{}, .v2 = null, .v3 = 12433 }));
}
pub export fn zig_assert_Sf_Ip_L(lv: c.Sf_Ip_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 12433) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_L() c.Sf_Ip_L {
    return .{ .v1 = .{}, .v2 = null, .v3 = 12433 };
}

// From CT_Snen_xab.c:32818:32838
// struct  Sf_Ip_S  {
//   struct empty v1;
//   int *v2;
//   short v3;
// };

test "Sf_Ip_S layout" {
    var lv: c.Sf_Ip_S = undefined;
    try testing.expectSize(c.Sf_Ip_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_S C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_S(), .{ .v1 = .{}, .v2 = null, .v3 = 329 });
    try testing.expectOk(c.assert_ret_Sf_Ip_S());
    try testing.expectOk(c.send_Sf_Ip_S());
    try testing.expectOk(c.assert_Sf_Ip_S(.{ .v1 = .{}, .v2 = null, .v3 = 329 }));
}
pub export fn zig_assert_Sf_Ip_S(lv: c.Sf_Ip_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 329) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_S() c.Sf_Ip_S {
    return .{ .v1 = .{}, .v2 = null, .v3 = 329 };
}

// From CT_Snen_xab.c:32843:32863
// struct  Sf_Ip_Sf  {
//   struct empty v1;
//   int *v2;
//   struct empty v3;
// };

test "Sf_Ip_Sf layout" {
    var lv: c.Sf_Ip_Sf = undefined;
    try testing.expectSize(c.Sf_Ip_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_Sf(), .{ .v1 = .{}, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_Ip_Sf());
    try testing.expectOk(c.send_Sf_Ip_Sf());
    try testing.expectOk(c.assert_Sf_Ip_Sf(.{ .v1 = .{}, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Sf_Ip_Sf(lv: c.Sf_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_Sf() c.Sf_Ip_Sf {
    return .{ .v1 = .{}, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xab.c:32868:32888
// struct  Sf_Ip_Uc  {
//   struct empty v1;
//   int *v2;
//   unsigned char v3;
// };

test "Sf_Ip_Uc layout" {
    var lv: c.Sf_Ip_Uc = undefined;
    try testing.expectSize(c.Sf_Ip_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_Uc(), .{ .v1 = .{}, .v2 = null, .v3 = 37 });
    try testing.expectOk(c.assert_ret_Sf_Ip_Uc());
    try testing.expectOk(c.send_Sf_Ip_Uc());
    try testing.expectOk(c.assert_Sf_Ip_Uc(.{ .v1 = .{}, .v2 = null, .v3 = 37 }));
}
pub export fn zig_assert_Sf_Ip_Uc(lv: c.Sf_Ip_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 37) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_Uc() c.Sf_Ip_Uc {
    return .{ .v1 = .{}, .v2 = null, .v3 = 37 };
}

// From CT_Snen_xab.c:32893:32913
// struct  Sf_Ip_Ui  {
//   struct empty v1;
//   int *v2;
//   unsigned int v3;
// };

test "Sf_Ip_Ui layout" {
    var lv: c.Sf_Ip_Ui = undefined;
    try testing.expectSize(c.Sf_Ip_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_Ui(), .{ .v1 = .{}, .v2 = null, .v3 = 29172 });
    try testing.expectOk(c.assert_ret_Sf_Ip_Ui());
    try testing.expectOk(c.send_Sf_Ip_Ui());
    try testing.expectOk(c.assert_Sf_Ip_Ui(.{ .v1 = .{}, .v2 = null, .v3 = 29172 }));
}
pub export fn zig_assert_Sf_Ip_Ui(lv: c.Sf_Ip_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 29172) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_Ui() c.Sf_Ip_Ui {
    return .{ .v1 = .{}, .v2 = null, .v3 = 29172 };
}

// From CT_Snen_xab.c:32918:32938
// struct  Sf_Ip_Ul  {
//   struct empty v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Sf_Ip_Ul layout" {
    var lv: c.Sf_Ip_Ul = undefined;
    try testing.expectSize(c.Sf_Ip_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_Ul(), .{ .v1 = .{}, .v2 = null, .v3 = 12414 });
    try testing.expectOk(c.assert_ret_Sf_Ip_Ul());
    try testing.expectOk(c.send_Sf_Ip_Ul());
    try testing.expectOk(c.assert_Sf_Ip_Ul(.{ .v1 = .{}, .v2 = null, .v3 = 12414 }));
}
pub export fn zig_assert_Sf_Ip_Ul(lv: c.Sf_Ip_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 12414) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_Ul() c.Sf_Ip_Ul {
    return .{ .v1 = .{}, .v2 = null, .v3 = 12414 };
}

// From CT_Snen_xab.c:32943:32963
// struct  Sf_Ip_Us  {
//   struct empty v1;
//   int *v2;
//   unsigned short v3;
// };

test "Sf_Ip_Us layout" {
    var lv: c.Sf_Ip_Us = undefined;
    try testing.expectSize(c.Sf_Ip_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_Us C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_Us(), .{ .v1 = .{}, .v2 = null, .v3 = 17380 });
    try testing.expectOk(c.assert_ret_Sf_Ip_Us());
    try testing.expectOk(c.send_Sf_Ip_Us());
    try testing.expectOk(c.assert_Sf_Ip_Us(.{ .v1 = .{}, .v2 = null, .v3 = 17380 }));
}
pub export fn zig_assert_Sf_Ip_Us(lv: c.Sf_Ip_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 17380) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_Us() c.Sf_Ip_Us {
    return .{ .v1 = .{}, .v2 = null, .v3 = 17380 };
}

// From CT_Snen_xab.c:32968:32988
// struct  Sf_Ip_Vp  {
//   struct empty v1;
//   int *v2;
//   void *v3;
// };

test "Sf_Ip_Vp layout" {
    var lv: c.Sf_Ip_Vp = undefined;
    try testing.expectSize(c.Sf_Ip_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ip_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_Ip_Vp(), .{ .v1 = .{}, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Ip_Vp());
    try testing.expectOk(c.send_Sf_Ip_Vp());
    try testing.expectOk(c.assert_Sf_Ip_Vp(.{ .v1 = .{}, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Sf_Ip_Vp(lv: c.Sf_Ip_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ip_Vp() c.Sf_Ip_Vp {
    return .{ .v1 = .{}, .v2 = null, .v3 = null };
}

// From CT_Snen_xab.c:32993:33011
// struct  Sf_L  {
//   struct empty v1;
//   __tsi64 v2;
// };

test "Sf_L layout" {
    var lv: c.Sf_L = undefined;
    try testing.expectSize(c.Sf_L, 8);
    try testing.expectAlign(c.Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_L C calls" {
    try testing.expectEqual(c.ret_Sf_L(), .{ .v1 = .{}, .v2 = 17005 });
    try testing.expectOk(c.assert_ret_Sf_L());
    try testing.expectOk(c.send_Sf_L());
    try testing.expectOk(c.assert_Sf_L(.{ .v1 = .{}, .v2 = 17005 }));
}
pub export fn zig_assert_Sf_L(lv: c.Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != 17005) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L() c.Sf_L {
    return .{ .v1 = .{}, .v2 = 17005 };
}

// From CT_Snen_xab.c:33740:33760
// struct  Sf_L_C  {
//   struct empty v1;
//   __tsi64 v2;
//   char v3;
// };

test "Sf_L_C layout" {
    var lv: c.Sf_L_C = undefined;
    try testing.expectSize(c.Sf_L_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_C C calls" {
    try testing.expectEqual(c.ret_Sf_L_C(), .{ .v1 = .{}, .v2 = 23036, .v3 = 40 });
    try testing.expectOk(c.assert_ret_Sf_L_C());
    try testing.expectOk(c.send_Sf_L_C());
    try testing.expectOk(c.assert_Sf_L_C(.{ .v1 = .{}, .v2 = 23036, .v3 = 40 }));
}
pub export fn zig_assert_Sf_L_C(lv: c.Sf_L_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != 23036) err = 2;
    if (lv.v3 != 40) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_C() c.Sf_L_C {
    return .{ .v1 = .{}, .v2 = 23036, .v3 = 40 };
}

// From CT_Snen_xab.c:33765:33785
// struct  Sf_L_D  {
//   struct empty v1;
//   __tsi64 v2;
//   double v3;
// };

test "Sf_L_D layout" {
    var lv: c.Sf_L_D = undefined;
    try testing.expectSize(c.Sf_L_D, 16);
    try testing.expectAlign(c.Sf_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_D C calls" {
    try testing.expectEqual(c.ret_Sf_L_D(), .{ .v1 = .{}, .v2 = 15278, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Sf_L_D());
    try testing.expectOk(c.send_Sf_L_D());
    try testing.expectOk(c.assert_Sf_L_D(.{ .v1 = .{}, .v2 = 15278, .v3 = 7.0 }));
}
pub export fn zig_assert_Sf_L_D(lv: c.Sf_L_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != 15278) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_D() c.Sf_L_D {
    return .{ .v1 = .{}, .v2 = 15278, .v3 = 7.0 };
}

// From CT_Snen_xab.c:33790:33810
// struct  Sf_L_F  {
//   struct empty v1;
//   __tsi64 v2;
//   float v3;
// };

test "Sf_L_F layout" {
    var lv: c.Sf_L_F = undefined;
    try testing.expectSize(c.Sf_L_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_F C calls" {
    try testing.expectEqual(c.ret_Sf_L_F(), .{ .v1 = .{}, .v2 = 9230, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Sf_L_F());
    try testing.expectOk(c.send_Sf_L_F());
    try testing.expectOk(c.assert_Sf_L_F(.{ .v1 = .{}, .v2 = 9230, .v3 = -2.125 }));
}
pub export fn zig_assert_Sf_L_F(lv: c.Sf_L_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != 9230) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_F() c.Sf_L_F {
    return .{ .v1 = .{}, .v2 = 9230, .v3 = -2.125 };
}

// From CT_Snen_xab.c:33815:33835
// struct  Sf_L_I  {
//   struct empty v1;
//   __tsi64 v2;
//   int v3;
// };

test "Sf_L_I layout" {
    var lv: c.Sf_L_I = undefined;
    try testing.expectSize(c.Sf_L_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_I C calls" {
    try testing.expectEqual(c.ret_Sf_L_I(), .{ .v1 = .{}, .v2 = 23180, .v3 = 12358 });
    try testing.expectOk(c.assert_ret_Sf_L_I());
    try testing.expectOk(c.send_Sf_L_I());
    try testing.expectOk(c.assert_Sf_L_I(.{ .v1 = .{}, .v2 = 23180, .v3 = 12358 }));
}
pub export fn zig_assert_Sf_L_I(lv: c.Sf_L_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != 23180) err = 2;
    if (lv.v3 != 12358) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_I() c.Sf_L_I {
    return .{ .v1 = .{}, .v2 = 23180, .v3 = 12358 };
}

// From CT_Snen_xab.c:33840:33860
// struct  Sf_L_Ip  {
//   struct empty v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Sf_L_Ip layout" {
    var lv: c.Sf_L_Ip = undefined;
    try testing.expectSize(c.Sf_L_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_L_Ip(), .{ .v1 = .{}, .v2 = 7226, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_L_Ip());
    try testing.expectOk(c.send_Sf_L_Ip());
    try testing.expectOk(c.assert_Sf_L_Ip(.{ .v1 = .{}, .v2 = 7226, .v3 = null }));
}
pub export fn zig_assert_Sf_L_Ip(lv: c.Sf_L_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != 7226) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_Ip() c.Sf_L_Ip {
    return .{ .v1 = .{}, .v2 = 7226, .v3 = null };
}

// From CT_Snen_xab.c:33865:33885
// struct  Sf_L_L  {
//   struct empty v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Sf_L_L layout" {
    var lv: c.Sf_L_L = undefined;
    try testing.expectSize(c.Sf_L_L, 16);
    try testing.expectAlign(c.Sf_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_L C calls" {
    try testing.expectEqual(c.ret_Sf_L_L(), .{ .v1 = .{}, .v2 = 20570, .v3 = 22635 });
    try testing.expectOk(c.assert_ret_Sf_L_L());
    try testing.expectOk(c.send_Sf_L_L());
    try testing.expectOk(c.assert_Sf_L_L(.{ .v1 = .{}, .v2 = 20570, .v3 = 22635 }));
}
pub export fn zig_assert_Sf_L_L(lv: c.Sf_L_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != 20570) err = 2;
    if (lv.v3 != 22635) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_L() c.Sf_L_L {
    return .{ .v1 = .{}, .v2 = 20570, .v3 = 22635 };
}

// From CT_Snen_xab.c:33890:33910
// struct  Sf_L_S  {
//   struct empty v1;
//   __tsi64 v2;
//   short v3;
// };

test "Sf_L_S layout" {
    var lv: c.Sf_L_S = undefined;
    try testing.expectSize(c.Sf_L_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_S C calls" {
    try testing.expectEqual(c.ret_Sf_L_S(), .{ .v1 = .{}, .v2 = 4964, .v3 = 10584 });
    try testing.expectOk(c.assert_ret_Sf_L_S());
    try testing.expectOk(c.send_Sf_L_S());
    try testing.expectOk(c.assert_Sf_L_S(.{ .v1 = .{}, .v2 = 4964, .v3 = 10584 }));
}
pub export fn zig_assert_Sf_L_S(lv: c.Sf_L_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != 4964) err = 2;
    if (lv.v3 != 10584) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_S() c.Sf_L_S {
    return .{ .v1 = .{}, .v2 = 4964, .v3 = 10584 };
}

// From CT_Snen_xab.c:33915:33935
// struct  Sf_L_Sf  {
//   struct empty v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Sf_L_Sf layout" {
    var lv: c.Sf_L_Sf = undefined;
    try testing.expectSize(c.Sf_L_Sf, 8);
    try testing.expectAlign(c.Sf_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_L_Sf(), .{ .v1 = .{}, .v2 = 5535, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_L_Sf());
    try testing.expectOk(c.send_Sf_L_Sf());
    try testing.expectOk(c.assert_Sf_L_Sf(.{ .v1 = .{}, .v2 = 5535, .v3 = .{} }));
}
pub export fn zig_assert_Sf_L_Sf(lv: c.Sf_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != 5535) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_Sf() c.Sf_L_Sf {
    return .{ .v1 = .{}, .v2 = 5535, .v3 = .{} };
}

// From CT_Snen_xab.c:33940:33960
// struct  Sf_L_Uc  {
//   struct empty v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Sf_L_Uc layout" {
    var lv: c.Sf_L_Uc = undefined;
    try testing.expectSize(c.Sf_L_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_L_Uc(), .{ .v1 = .{}, .v2 = 6945, .v3 = 78 });
    try testing.expectOk(c.assert_ret_Sf_L_Uc());
    try testing.expectOk(c.send_Sf_L_Uc());
    try testing.expectOk(c.assert_Sf_L_Uc(.{ .v1 = .{}, .v2 = 6945, .v3 = 78 }));
}
pub export fn zig_assert_Sf_L_Uc(lv: c.Sf_L_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != 6945) err = 2;
    if (lv.v3 != 78) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_Uc() c.Sf_L_Uc {
    return .{ .v1 = .{}, .v2 = 6945, .v3 = 78 };
}

// From CT_Snen_xab.c:33965:33985
// struct  Sf_L_Ui  {
//   struct empty v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Sf_L_Ui layout" {
    var lv: c.Sf_L_Ui = undefined;
    try testing.expectSize(c.Sf_L_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_L_Ui(), .{ .v1 = .{}, .v2 = 28334, .v3 = 18755 });
    try testing.expectOk(c.assert_ret_Sf_L_Ui());
    try testing.expectOk(c.send_Sf_L_Ui());
    try testing.expectOk(c.assert_Sf_L_Ui(.{ .v1 = .{}, .v2 = 28334, .v3 = 18755 }));
}
pub export fn zig_assert_Sf_L_Ui(lv: c.Sf_L_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != 28334) err = 2;
    if (lv.v3 != 18755) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_Ui() c.Sf_L_Ui {
    return .{ .v1 = .{}, .v2 = 28334, .v3 = 18755 };
}

// From CT_Snen_xab.c:33990:34010
// struct  Sf_L_Ul  {
//   struct empty v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Sf_L_Ul layout" {
    var lv: c.Sf_L_Ul = undefined;
    try testing.expectSize(c.Sf_L_Ul, 16);
    try testing.expectAlign(c.Sf_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_L_Ul(), .{ .v1 = .{}, .v2 = 26391, .v3 = 21581 });
    try testing.expectOk(c.assert_ret_Sf_L_Ul());
    try testing.expectOk(c.send_Sf_L_Ul());
    try testing.expectOk(c.assert_Sf_L_Ul(.{ .v1 = .{}, .v2 = 26391, .v3 = 21581 }));
}
pub export fn zig_assert_Sf_L_Ul(lv: c.Sf_L_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != 26391) err = 2;
    if (lv.v3 != 21581) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_Ul() c.Sf_L_Ul {
    return .{ .v1 = .{}, .v2 = 26391, .v3 = 21581 };
}

// From CT_Snen_xab.c:34015:34035
// struct  Sf_L_Us  {
//   struct empty v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Sf_L_Us layout" {
    var lv: c.Sf_L_Us = undefined;
    try testing.expectSize(c.Sf_L_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_Us C calls" {
    try testing.expectEqual(c.ret_Sf_L_Us(), .{ .v1 = .{}, .v2 = 17352, .v3 = 25208 });
    try testing.expectOk(c.assert_ret_Sf_L_Us());
    try testing.expectOk(c.send_Sf_L_Us());
    try testing.expectOk(c.assert_Sf_L_Us(.{ .v1 = .{}, .v2 = 17352, .v3 = 25208 }));
}
pub export fn zig_assert_Sf_L_Us(lv: c.Sf_L_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != 17352) err = 2;
    if (lv.v3 != 25208) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_Us() c.Sf_L_Us {
    return .{ .v1 = .{}, .v2 = 17352, .v3 = 25208 };
}

// From CT_Snen_xab.c:34040:34060
// struct  Sf_L_Vp  {
//   struct empty v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Sf_L_Vp layout" {
    var lv: c.Sf_L_Vp = undefined;
    try testing.expectSize(c.Sf_L_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_L_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_L_Vp(), .{ .v1 = .{}, .v2 = 7621, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_L_Vp());
    try testing.expectOk(c.send_Sf_L_Vp());
    try testing.expectOk(c.assert_Sf_L_Vp(.{ .v1 = .{}, .v2 = 7621, .v3 = null }));
}
pub export fn zig_assert_Sf_L_Vp(lv: c.Sf_L_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != 7621) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_L_Vp() c.Sf_L_Vp {
    return .{ .v1 = .{}, .v2 = 7621, .v3 = null };
}

// From CT_Snen_xab.c:34065:34083
// struct  Sf_S  {
//   struct empty v1;
//   short v2;
// };

test "Sf_S layout" {
    var lv: c.Sf_S = undefined;
    try testing.expectSize(c.Sf_S, 2);
    try testing.expectAlign(c.Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_S C calls" {
    try testing.expectEqual(c.ret_Sf_S(), .{ .v1 = .{}, .v2 = 8459 });
    try testing.expectOk(c.assert_ret_Sf_S());
    try testing.expectOk(c.send_Sf_S());
    try testing.expectOk(c.assert_Sf_S(.{ .v1 = .{}, .v2 = 8459 }));
}
pub export fn zig_assert_Sf_S(lv: c.Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != 8459) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S() c.Sf_S {
    return .{ .v1 = .{}, .v2 = 8459 };
}

// From CT_Snen_xab.c:34812:34832
// struct  Sf_S_C  {
//   struct empty v1;
//   short v2;
//   char v3;
// };

test "Sf_S_C layout" {
    var lv: c.Sf_S_C = undefined;
    try testing.expectSize(c.Sf_S_C, 4);
    try testing.expectAlign(c.Sf_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_S_C C calls" {
    try testing.expectEqual(c.ret_Sf_S_C(), .{ .v1 = .{}, .v2 = 29482, .v3 = 117 });
    try testing.expectOk(c.assert_ret_Sf_S_C());
    try testing.expectOk(c.send_Sf_S_C());
    try testing.expectOk(c.assert_Sf_S_C(.{ .v1 = .{}, .v2 = 29482, .v3 = 117 }));
}
pub export fn zig_assert_Sf_S_C(lv: c.Sf_S_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != 29482) err = 2;
    if (lv.v3 != 117) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_C() c.Sf_S_C {
    return .{ .v1 = .{}, .v2 = 29482, .v3 = 117 };
}

// From CT_Snen_xab.c:34837:34857
// struct  Sf_S_D  {
//   struct empty v1;
//   short v2;
//   double v3;
// };

test "Sf_S_D layout" {
    var lv: c.Sf_S_D = undefined;
    try testing.expectSize(c.Sf_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_S_D C calls" {
    try testing.expectEqual(c.ret_Sf_S_D(), .{ .v1 = .{}, .v2 = 10011, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Sf_S_D());
    try testing.expectOk(c.send_Sf_S_D());
    try testing.expectOk(c.assert_Sf_S_D(.{ .v1 = .{}, .v2 = 10011, .v3 = 7.0 }));
}
pub export fn zig_assert_Sf_S_D(lv: c.Sf_S_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != 10011) err = 2;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_D() c.Sf_S_D {
    return .{ .v1 = .{}, .v2 = 10011, .v3 = 7.0 };
}

// From CT_Snen_xab.c:34862:34882
// struct  Sf_S_F  {
//   struct empty v1;
//   short v2;
//   float v3;
// };

test "Sf_S_F layout" {
    var lv: c.Sf_S_F = undefined;
    try testing.expectSize(c.Sf_S_F, 8);
    try testing.expectAlign(c.Sf_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_S_F C calls" {
    try testing.expectEqual(c.ret_Sf_S_F(), .{ .v1 = .{}, .v2 = 22113, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Sf_S_F());
    try testing.expectOk(c.send_Sf_S_F());
    try testing.expectOk(c.assert_Sf_S_F(.{ .v1 = .{}, .v2 = 22113, .v3 = 0.875 }));
}
pub export fn zig_assert_Sf_S_F(lv: c.Sf_S_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != 22113) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_F() c.Sf_S_F {
    return .{ .v1 = .{}, .v2 = 22113, .v3 = 0.875 };
}

// From CT_Snen_xab.c:34887:34907
// struct  Sf_S_I  {
//   struct empty v1;
//   short v2;
//   int v3;
// };

test "Sf_S_I layout" {
    var lv: c.Sf_S_I = undefined;
    try testing.expectSize(c.Sf_S_I, 8);
    try testing.expectAlign(c.Sf_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_S_I C calls" {
    try testing.expectEqual(c.ret_Sf_S_I(), .{ .v1 = .{}, .v2 = 26590, .v3 = 21186 });
    try testing.expectOk(c.assert_ret_Sf_S_I());
    try testing.expectOk(c.send_Sf_S_I());
    try testing.expectOk(c.assert_Sf_S_I(.{ .v1 = .{}, .v2 = 26590, .v3 = 21186 }));
}
pub export fn zig_assert_Sf_S_I(lv: c.Sf_S_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != 26590) err = 2;
    if (lv.v3 != 21186) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_I() c.Sf_S_I {
    return .{ .v1 = .{}, .v2 = 26590, .v3 = 21186 };
}

// From CT_Snen_xab.c:34912:34932
// struct  Sf_S_Ip  {
//   struct empty v1;
//   short v2;
//   int *v3;
// };

test "Sf_S_Ip layout" {
    var lv: c.Sf_S_Ip = undefined;
    try testing.expectSize(c.Sf_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_S_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_S_Ip(), .{ .v1 = .{}, .v2 = 2551, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_S_Ip());
    try testing.expectOk(c.send_Sf_S_Ip());
    try testing.expectOk(c.assert_Sf_S_Ip(.{ .v1 = .{}, .v2 = 2551, .v3 = null }));
}
pub export fn zig_assert_Sf_S_Ip(lv: c.Sf_S_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != 2551) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_Ip() c.Sf_S_Ip {
    return .{ .v1 = .{}, .v2 = 2551, .v3 = null };
}

// From CT_Snen_xab.c:34937:34957
// struct  Sf_S_L  {
//   struct empty v1;
//   short v2;
//   __tsi64 v3;
// };

test "Sf_S_L layout" {
    var lv: c.Sf_S_L = undefined;
    try testing.expectSize(c.Sf_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_S_L C calls" {
    try testing.expectEqual(c.ret_Sf_S_L(), .{ .v1 = .{}, .v2 = 29133, .v3 = 1690 });
    try testing.expectOk(c.assert_ret_Sf_S_L());
    try testing.expectOk(c.send_Sf_S_L());
    try testing.expectOk(c.assert_Sf_S_L(.{ .v1 = .{}, .v2 = 29133, .v3 = 1690 }));
}
pub export fn zig_assert_Sf_S_L(lv: c.Sf_S_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != 29133) err = 2;
    if (lv.v3 != 1690) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_L() c.Sf_S_L {
    return .{ .v1 = .{}, .v2 = 29133, .v3 = 1690 };
}

// From CT_Snen_xab.c:34962:34982
// struct  Sf_S_S  {
//   struct empty v1;
//   short v2;
//   short v3;
// };

test "Sf_S_S layout" {
    var lv: c.Sf_S_S = undefined;
    try testing.expectSize(c.Sf_S_S, 4);
    try testing.expectAlign(c.Sf_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_S_S C calls" {
    try testing.expectEqual(c.ret_Sf_S_S(), .{ .v1 = .{}, .v2 = 21690, .v3 = 32501 });
    try testing.expectOk(c.assert_ret_Sf_S_S());
    try testing.expectOk(c.send_Sf_S_S());
    try testing.expectOk(c.assert_Sf_S_S(.{ .v1 = .{}, .v2 = 21690, .v3 = 32501 }));
}
pub export fn zig_assert_Sf_S_S(lv: c.Sf_S_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != 21690) err = 2;
    if (lv.v3 != 32501) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_S() c.Sf_S_S {
    return .{ .v1 = .{}, .v2 = 21690, .v3 = 32501 };
}

// From CT_Snen_xab.c:34987:35007
// struct  Sf_S_Sf  {
//   struct empty v1;
//   short v2;
//   struct empty v3;
// };

test "Sf_S_Sf layout" {
    var lv: c.Sf_S_Sf = undefined;
    try testing.expectSize(c.Sf_S_Sf, 2);
    try testing.expectAlign(c.Sf_S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_S_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_S_Sf(), .{ .v1 = .{}, .v2 = 14505, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_S_Sf());
    try testing.expectOk(c.send_Sf_S_Sf());
    try testing.expectOk(c.assert_Sf_S_Sf(.{ .v1 = .{}, .v2 = 14505, .v3 = .{} }));
}
pub export fn zig_assert_Sf_S_Sf(lv: c.Sf_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != 14505) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_Sf() c.Sf_S_Sf {
    return .{ .v1 = .{}, .v2 = 14505, .v3 = .{} };
}

// From CT_Snen_xab.c:35012:35032
// struct  Sf_S_Uc  {
//   struct empty v1;
//   short v2;
//   unsigned char v3;
// };

test "Sf_S_Uc layout" {
    var lv: c.Sf_S_Uc = undefined;
    try testing.expectSize(c.Sf_S_Uc, 4);
    try testing.expectAlign(c.Sf_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_S_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_S_Uc(), .{ .v1 = .{}, .v2 = 8019, .v3 = 9 });
    try testing.expectOk(c.assert_ret_Sf_S_Uc());
    try testing.expectOk(c.send_Sf_S_Uc());
    try testing.expectOk(c.assert_Sf_S_Uc(.{ .v1 = .{}, .v2 = 8019, .v3 = 9 }));
}
pub export fn zig_assert_Sf_S_Uc(lv: c.Sf_S_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != 8019) err = 2;
    if (lv.v3 != 9) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_Uc() c.Sf_S_Uc {
    return .{ .v1 = .{}, .v2 = 8019, .v3 = 9 };
}

// From CT_Snen_xab.c:35037:35057
// struct  Sf_S_Ui  {
//   struct empty v1;
//   short v2;
//   unsigned int v3;
// };

test "Sf_S_Ui layout" {
    var lv: c.Sf_S_Ui = undefined;
    try testing.expectSize(c.Sf_S_Ui, 8);
    try testing.expectAlign(c.Sf_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_S_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_S_Ui(), .{ .v1 = .{}, .v2 = 17971, .v3 = 670 });
    try testing.expectOk(c.assert_ret_Sf_S_Ui());
    try testing.expectOk(c.send_Sf_S_Ui());
    try testing.expectOk(c.assert_Sf_S_Ui(.{ .v1 = .{}, .v2 = 17971, .v3 = 670 }));
}
pub export fn zig_assert_Sf_S_Ui(lv: c.Sf_S_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != 17971) err = 2;
    if (lv.v3 != 670) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_Ui() c.Sf_S_Ui {
    return .{ .v1 = .{}, .v2 = 17971, .v3 = 670 };
}

// From CT_Snen_xab.c:35062:35082
// struct  Sf_S_Ul  {
//   struct empty v1;
//   short v2;
//   __tsu64 v3;
// };

test "Sf_S_Ul layout" {
    var lv: c.Sf_S_Ul = undefined;
    try testing.expectSize(c.Sf_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_S_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_S_Ul(), .{ .v1 = .{}, .v2 = 3209, .v3 = 14809 });
    try testing.expectOk(c.assert_ret_Sf_S_Ul());
    try testing.expectOk(c.send_Sf_S_Ul());
    try testing.expectOk(c.assert_Sf_S_Ul(.{ .v1 = .{}, .v2 = 3209, .v3 = 14809 }));
}
pub export fn zig_assert_Sf_S_Ul(lv: c.Sf_S_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != 3209) err = 2;
    if (lv.v3 != 14809) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_Ul() c.Sf_S_Ul {
    return .{ .v1 = .{}, .v2 = 3209, .v3 = 14809 };
}

// From CT_Snen_xab.c:35087:35107
// struct  Sf_S_Us  {
//   struct empty v1;
//   short v2;
//   unsigned short v3;
// };

test "Sf_S_Us layout" {
    var lv: c.Sf_S_Us = undefined;
    try testing.expectSize(c.Sf_S_Us, 4);
    try testing.expectAlign(c.Sf_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_S_Us C calls" {
    try testing.expectEqual(c.ret_Sf_S_Us(), .{ .v1 = .{}, .v2 = 21171, .v3 = 19853 });
    try testing.expectOk(c.assert_ret_Sf_S_Us());
    try testing.expectOk(c.send_Sf_S_Us());
    try testing.expectOk(c.assert_Sf_S_Us(.{ .v1 = .{}, .v2 = 21171, .v3 = 19853 }));
}
pub export fn zig_assert_Sf_S_Us(lv: c.Sf_S_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != 21171) err = 2;
    if (lv.v3 != 19853) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_Us() c.Sf_S_Us {
    return .{ .v1 = .{}, .v2 = 21171, .v3 = 19853 };
}

// From CT_Snen_xab.c:35112:35132
// struct  Sf_S_Vp  {
//   struct empty v1;
//   short v2;
//   void *v3;
// };

test "Sf_S_Vp layout" {
    var lv: c.Sf_S_Vp = undefined;
    try testing.expectSize(c.Sf_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_S_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_S_Vp(), .{ .v1 = .{}, .v2 = 15733, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_S_Vp());
    try testing.expectOk(c.send_Sf_S_Vp());
    try testing.expectOk(c.assert_Sf_S_Vp(.{ .v1 = .{}, .v2 = 15733, .v3 = null }));
}
pub export fn zig_assert_Sf_S_Vp(lv: c.Sf_S_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != 15733) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_S_Vp() c.Sf_S_Vp {
    return .{ .v1 = .{}, .v2 = 15733, .v3 = null };
}

// From CT_Snen_xab.c:35137:35155
// struct  Sf_Sf  {
//   struct empty v1;
//   struct empty v2;
// };

test "Sf_Sf layout" {
    var lv: c.Sf_Sf = undefined;
    try testing.expectSize(c.Sf_Sf, 0);
    try testing.expectAlign(c.Sf_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_Sf(), .{ .v1 = .{}, .v2 = .{} });
    try testing.expectOk(c.assert_ret_Sf_Sf());
    try testing.expectOk(c.send_Sf_Sf());
    try testing.expectOk(c.assert_Sf_Sf(.{ .v1 = .{}, .v2 = .{} }));
}
pub export fn zig_assert_Sf_Sf(lv: c.Sf_Sf) c_int {
    var err: c_int = 0;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf() c.Sf_Sf {
    return .{ .v1 = .{}, .v2 = .{} };
}

// From CT_Snen_xab.c:35884:35904
// struct  Sf_Sf_C  {
//   struct empty v1;
//   struct empty v2;
//   char v3;
// };

test "Sf_Sf_C layout" {
    var lv: c.Sf_Sf_C = undefined;
    try testing.expectSize(c.Sf_Sf_C, 1);
    try testing.expectAlign(c.Sf_Sf_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_C C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_C(), .{ .v1 = .{}, .v2 = .{}, .v3 = 53 });
    try testing.expectOk(c.assert_ret_Sf_Sf_C());
    try testing.expectOk(c.send_Sf_Sf_C());
    try testing.expectOk(c.assert_Sf_Sf_C(.{ .v1 = .{}, .v2 = .{}, .v3 = 53 }));
}
pub export fn zig_assert_Sf_Sf_C(lv: c.Sf_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v3 != 53) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_C() c.Sf_Sf_C {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = 53 };
}

// From CT_Snen_xab.c:35909:35929
// struct  Sf_Sf_D  {
//   struct empty v1;
//   struct empty v2;
//   double v3;
// };

test "Sf_Sf_D layout" {
    var lv: c.Sf_Sf_D = undefined;
    try testing.expectSize(c.Sf_Sf_D, 8);
    try testing.expectAlign(c.Sf_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_D C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_D(), .{ .v1 = .{}, .v2 = .{}, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Sf_Sf_D());
    try testing.expectOk(c.send_Sf_Sf_D());
    try testing.expectOk(c.assert_Sf_Sf_D(.{ .v1 = .{}, .v2 = .{}, .v3 = -0.25 }));
}
pub export fn zig_assert_Sf_Sf_D(lv: c.Sf_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_D() c.Sf_Sf_D {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = -0.25 };
}

// From CT_Snen_xab.c:35934:35954
// struct  Sf_Sf_F  {
//   struct empty v1;
//   struct empty v2;
//   float v3;
// };

test "Sf_Sf_F layout" {
    var lv: c.Sf_Sf_F = undefined;
    try testing.expectSize(c.Sf_Sf_F, 4);
    try testing.expectAlign(c.Sf_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_F C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_F(), .{ .v1 = .{}, .v2 = .{}, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Sf_Sf_F());
    try testing.expectOk(c.send_Sf_Sf_F());
    try testing.expectOk(c.assert_Sf_Sf_F(.{ .v1 = .{}, .v2 = .{}, .v3 = 7.0 }));
}
pub export fn zig_assert_Sf_Sf_F(lv: c.Sf_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v3 != 7.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_F() c.Sf_Sf_F {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = 7.0 };
}

// From CT_Snen_xab.c:35959:35979
// struct  Sf_Sf_I  {
//   struct empty v1;
//   struct empty v2;
//   int v3;
// };

test "Sf_Sf_I layout" {
    var lv: c.Sf_Sf_I = undefined;
    try testing.expectSize(c.Sf_Sf_I, 4);
    try testing.expectAlign(c.Sf_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_I C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_I(), .{ .v1 = .{}, .v2 = .{}, .v3 = 2328 });
    try testing.expectOk(c.assert_ret_Sf_Sf_I());
    try testing.expectOk(c.send_Sf_Sf_I());
    try testing.expectOk(c.assert_Sf_Sf_I(.{ .v1 = .{}, .v2 = .{}, .v3 = 2328 }));
}
pub export fn zig_assert_Sf_Sf_I(lv: c.Sf_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v3 != 2328) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_I() c.Sf_Sf_I {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = 2328 };
}

// From CT_Snen_xab.c:35984:36004
// struct  Sf_Sf_Ip  {
//   struct empty v1;
//   struct empty v2;
//   int *v3;
// };

test "Sf_Sf_Ip layout" {
    var lv: c.Sf_Sf_Ip = undefined;
    try testing.expectSize(c.Sf_Sf_Ip, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_Ip(), .{ .v1 = .{}, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Sf_Ip());
    try testing.expectOk(c.send_Sf_Sf_Ip());
    try testing.expectOk(c.assert_Sf_Sf_Ip(.{ .v1 = .{}, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Sf_Sf_Ip(lv: c.Sf_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_Ip() c.Sf_Sf_Ip {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:36009:36029
// struct  Sf_Sf_L  {
//   struct empty v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Sf_Sf_L layout" {
    var lv: c.Sf_Sf_L = undefined;
    try testing.expectSize(c.Sf_Sf_L, 8);
    try testing.expectAlign(c.Sf_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_L C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_L(), .{ .v1 = .{}, .v2 = .{}, .v3 = 19653 });
    try testing.expectOk(c.assert_ret_Sf_Sf_L());
    try testing.expectOk(c.send_Sf_Sf_L());
    try testing.expectOk(c.assert_Sf_Sf_L(.{ .v1 = .{}, .v2 = .{}, .v3 = 19653 }));
}
pub export fn zig_assert_Sf_Sf_L(lv: c.Sf_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v3 != 19653) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_L() c.Sf_Sf_L {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = 19653 };
}

// From CT_Snen_xab.c:36034:36054
// struct  Sf_Sf_S  {
//   struct empty v1;
//   struct empty v2;
//   short v3;
// };

test "Sf_Sf_S layout" {
    var lv: c.Sf_Sf_S = undefined;
    try testing.expectSize(c.Sf_Sf_S, 2);
    try testing.expectAlign(c.Sf_Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_S C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_S(), .{ .v1 = .{}, .v2 = .{}, .v3 = 10464 });
    try testing.expectOk(c.assert_ret_Sf_Sf_S());
    try testing.expectOk(c.send_Sf_Sf_S());
    try testing.expectOk(c.assert_Sf_Sf_S(.{ .v1 = .{}, .v2 = .{}, .v3 = 10464 }));
}
pub export fn zig_assert_Sf_Sf_S(lv: c.Sf_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v3 != 10464) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_S() c.Sf_Sf_S {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = 10464 };
}

// From CT_Snen_xab.c:36059:36079
// struct  Sf_Sf_Sf  {
//   struct empty v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Sf_Sf_Sf layout" {
    var lv: c.Sf_Sf_Sf = undefined;
    try testing.expectSize(c.Sf_Sf_Sf, 0);
    try testing.expectAlign(c.Sf_Sf_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_Sf(), .{ .v1 = .{}, .v2 = .{}, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_Sf_Sf());
    try testing.expectOk(c.send_Sf_Sf_Sf());
    try testing.expectOk(c.assert_Sf_Sf_Sf(.{ .v1 = .{}, .v2 = .{}, .v3 = .{} }));
}
pub export fn zig_assert_Sf_Sf_Sf(lv: c.Sf_Sf_Sf) c_int {
    var err: c_int = 0;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_Sf() c.Sf_Sf_Sf {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xab.c:36084:36104
// struct  Sf_Sf_Uc  {
//   struct empty v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Sf_Sf_Uc layout" {
    var lv: c.Sf_Sf_Uc = undefined;
    try testing.expectSize(c.Sf_Sf_Uc, 1);
    try testing.expectAlign(c.Sf_Sf_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_Uc(), .{ .v1 = .{}, .v2 = .{}, .v3 = 15 });
    try testing.expectOk(c.assert_ret_Sf_Sf_Uc());
    try testing.expectOk(c.send_Sf_Sf_Uc());
    try testing.expectOk(c.assert_Sf_Sf_Uc(.{ .v1 = .{}, .v2 = .{}, .v3 = 15 }));
}
pub export fn zig_assert_Sf_Sf_Uc(lv: c.Sf_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v3 != 15) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_Uc() c.Sf_Sf_Uc {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = 15 };
}

// From CT_Snen_xab.c:36109:36129
// struct  Sf_Sf_Ui  {
//   struct empty v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Sf_Sf_Ui layout" {
    var lv: c.Sf_Sf_Ui = undefined;
    try testing.expectSize(c.Sf_Sf_Ui, 4);
    try testing.expectAlign(c.Sf_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_Ui(), .{ .v1 = .{}, .v2 = .{}, .v3 = 11684 });
    try testing.expectOk(c.assert_ret_Sf_Sf_Ui());
    try testing.expectOk(c.send_Sf_Sf_Ui());
    try testing.expectOk(c.assert_Sf_Sf_Ui(.{ .v1 = .{}, .v2 = .{}, .v3 = 11684 }));
}
pub export fn zig_assert_Sf_Sf_Ui(lv: c.Sf_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v3 != 11684) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_Ui() c.Sf_Sf_Ui {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = 11684 };
}

// From CT_Snen_xab.c:36134:36154
// struct  Sf_Sf_Ul  {
//   struct empty v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Sf_Sf_Ul layout" {
    var lv: c.Sf_Sf_Ul = undefined;
    try testing.expectSize(c.Sf_Sf_Ul, 8);
    try testing.expectAlign(c.Sf_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_Ul(), .{ .v1 = .{}, .v2 = .{}, .v3 = 9156 });
    try testing.expectOk(c.assert_ret_Sf_Sf_Ul());
    try testing.expectOk(c.send_Sf_Sf_Ul());
    try testing.expectOk(c.assert_Sf_Sf_Ul(.{ .v1 = .{}, .v2 = .{}, .v3 = 9156 }));
}
pub export fn zig_assert_Sf_Sf_Ul(lv: c.Sf_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v3 != 9156) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_Ul() c.Sf_Sf_Ul {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = 9156 };
}

// From CT_Snen_xab.c:36159:36179
// struct  Sf_Sf_Us  {
//   struct empty v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Sf_Sf_Us layout" {
    var lv: c.Sf_Sf_Us = undefined;
    try testing.expectSize(c.Sf_Sf_Us, 2);
    try testing.expectAlign(c.Sf_Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_Us C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_Us(), .{ .v1 = .{}, .v2 = .{}, .v3 = 31201 });
    try testing.expectOk(c.assert_ret_Sf_Sf_Us());
    try testing.expectOk(c.send_Sf_Sf_Us());
    try testing.expectOk(c.assert_Sf_Sf_Us(.{ .v1 = .{}, .v2 = .{}, .v3 = 31201 }));
}
pub export fn zig_assert_Sf_Sf_Us(lv: c.Sf_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v3 != 31201) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_Us() c.Sf_Sf_Us {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = 31201 };
}

// From CT_Snen_xab.c:36184:36204
// struct  Sf_Sf_Vp  {
//   struct empty v1;
//   struct empty v2;
//   void *v3;
// };

test "Sf_Sf_Vp layout" {
    var lv: c.Sf_Sf_Vp = undefined;
    try testing.expectSize(c.Sf_Sf_Vp, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 0);
}
test "Sf_Sf_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_Sf_Vp(), .{ .v1 = .{}, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Sf_Vp());
    try testing.expectOk(c.send_Sf_Sf_Vp());
    try testing.expectOk(c.assert_Sf_Sf_Vp(.{ .v1 = .{}, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Sf_Sf_Vp(lv: c.Sf_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Sf_Vp() c.Sf_Sf_Vp {
    return .{ .v1 = .{}, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:36209:36227
// struct  Sf_Uc  {
//   struct empty v1;
//   unsigned char v2;
// };

test "Sf_Uc layout" {
    var lv: c.Sf_Uc = undefined;
    try testing.expectSize(c.Sf_Uc, 1);
    try testing.expectAlign(c.Sf_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_Uc(), .{ .v1 = .{}, .v2 = 115 });
    try testing.expectOk(c.assert_ret_Sf_Uc());
    try testing.expectOk(c.send_Sf_Uc());
    try testing.expectOk(c.assert_Sf_Uc(.{ .v1 = .{}, .v2 = 115 }));
}
pub export fn zig_assert_Sf_Uc(lv: c.Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != 115) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc() c.Sf_Uc {
    return .{ .v1 = .{}, .v2 = 115 };
}

// From CT_Snen_xab.c:36956:36976
// struct  Sf_Uc_C  {
//   struct empty v1;
//   unsigned char v2;
//   char v3;
// };

test "Sf_Uc_C layout" {
    var lv: c.Sf_Uc_C = undefined;
    try testing.expectSize(c.Sf_Uc_C, 2);
    try testing.expectAlign(c.Sf_Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "Sf_Uc_C C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_C(), .{ .v1 = .{}, .v2 = 25, .v3 = 31 });
    try testing.expectOk(c.assert_ret_Sf_Uc_C());
    try testing.expectOk(c.send_Sf_Uc_C());
    try testing.expectOk(c.assert_Sf_Uc_C(.{ .v1 = .{}, .v2 = 25, .v3 = 31 }));
}
pub export fn zig_assert_Sf_Uc_C(lv: c.Sf_Uc_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != 25) err = 2;
    if (lv.v3 != 31) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_C() c.Sf_Uc_C {
    return .{ .v1 = .{}, .v2 = 25, .v3 = 31 };
}

// From CT_Snen_xab.c:36981:37001
// struct  Sf_Uc_D  {
//   struct empty v1;
//   unsigned char v2;
//   double v3;
// };

test "Sf_Uc_D layout" {
    var lv: c.Sf_Uc_D = undefined;
    try testing.expectSize(c.Sf_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Uc_D C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_D(), .{ .v1 = .{}, .v2 = 113, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Sf_Uc_D());
    try testing.expectOk(c.send_Sf_Uc_D());
    try testing.expectOk(c.assert_Sf_Uc_D(.{ .v1 = .{}, .v2 = 113, .v3 = -0.25 }));
}
pub export fn zig_assert_Sf_Uc_D(lv: c.Sf_Uc_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != 113) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_D() c.Sf_Uc_D {
    return .{ .v1 = .{}, .v2 = 113, .v3 = -0.25 };
}

// From CT_Snen_xab.c:37006:37026
// struct  Sf_Uc_F  {
//   struct empty v1;
//   unsigned char v2;
//   float v3;
// };

test "Sf_Uc_F layout" {
    var lv: c.Sf_Uc_F = undefined;
    try testing.expectSize(c.Sf_Uc_F, 8);
    try testing.expectAlign(c.Sf_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Uc_F C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_F(), .{ .v1 = .{}, .v2 = 120, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Sf_Uc_F());
    try testing.expectOk(c.send_Sf_Uc_F());
    try testing.expectOk(c.assert_Sf_Uc_F(.{ .v1 = .{}, .v2 = 120, .v3 = -0.25 }));
}
pub export fn zig_assert_Sf_Uc_F(lv: c.Sf_Uc_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != 120) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_F() c.Sf_Uc_F {
    return .{ .v1 = .{}, .v2 = 120, .v3 = -0.25 };
}

// From CT_Snen_xab.c:37031:37051
// struct  Sf_Uc_I  {
//   struct empty v1;
//   unsigned char v2;
//   int v3;
// };

test "Sf_Uc_I layout" {
    var lv: c.Sf_Uc_I = undefined;
    try testing.expectSize(c.Sf_Uc_I, 8);
    try testing.expectAlign(c.Sf_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Uc_I C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_I(), .{ .v1 = .{}, .v2 = 51, .v3 = 10164 });
    try testing.expectOk(c.assert_ret_Sf_Uc_I());
    try testing.expectOk(c.send_Sf_Uc_I());
    try testing.expectOk(c.assert_Sf_Uc_I(.{ .v1 = .{}, .v2 = 51, .v3 = 10164 }));
}
pub export fn zig_assert_Sf_Uc_I(lv: c.Sf_Uc_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != 51) err = 2;
    if (lv.v3 != 10164) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_I() c.Sf_Uc_I {
    return .{ .v1 = .{}, .v2 = 51, .v3 = 10164 };
}

// From CT_Snen_xab.c:37056:37076
// struct  Sf_Uc_Ip  {
//   struct empty v1;
//   unsigned char v2;
//   int *v3;
// };

test "Sf_Uc_Ip layout" {
    var lv: c.Sf_Uc_Ip = undefined;
    try testing.expectSize(c.Sf_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Uc_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_Ip(), .{ .v1 = .{}, .v2 = 126, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Uc_Ip());
    try testing.expectOk(c.send_Sf_Uc_Ip());
    try testing.expectOk(c.assert_Sf_Uc_Ip(.{ .v1 = .{}, .v2 = 126, .v3 = null }));
}
pub export fn zig_assert_Sf_Uc_Ip(lv: c.Sf_Uc_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != 126) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_Ip() c.Sf_Uc_Ip {
    return .{ .v1 = .{}, .v2 = 126, .v3 = null };
}

// From CT_Snen_xab.c:37081:37101
// struct  Sf_Uc_L  {
//   struct empty v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Sf_Uc_L layout" {
    var lv: c.Sf_Uc_L = undefined;
    try testing.expectSize(c.Sf_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Uc_L C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_L(), .{ .v1 = .{}, .v2 = 66, .v3 = 397 });
    try testing.expectOk(c.assert_ret_Sf_Uc_L());
    try testing.expectOk(c.send_Sf_Uc_L());
    try testing.expectOk(c.assert_Sf_Uc_L(.{ .v1 = .{}, .v2 = 66, .v3 = 397 }));
}
pub export fn zig_assert_Sf_Uc_L(lv: c.Sf_Uc_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != 66) err = 2;
    if (lv.v3 != 397) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_L() c.Sf_Uc_L {
    return .{ .v1 = .{}, .v2 = 66, .v3 = 397 };
}

// From CT_Snen_xab.c:37106:37126
// struct  Sf_Uc_S  {
//   struct empty v1;
//   unsigned char v2;
//   short v3;
// };

test "Sf_Uc_S layout" {
    var lv: c.Sf_Uc_S = undefined;
    try testing.expectSize(c.Sf_Uc_S, 4);
    try testing.expectAlign(c.Sf_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_Uc_S C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_S(), .{ .v1 = .{}, .v2 = 32, .v3 = 3864 });
    try testing.expectOk(c.assert_ret_Sf_Uc_S());
    try testing.expectOk(c.send_Sf_Uc_S());
    try testing.expectOk(c.assert_Sf_Uc_S(.{ .v1 = .{}, .v2 = 32, .v3 = 3864 }));
}
pub export fn zig_assert_Sf_Uc_S(lv: c.Sf_Uc_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != 32) err = 2;
    if (lv.v3 != 3864) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_S() c.Sf_Uc_S {
    return .{ .v1 = .{}, .v2 = 32, .v3 = 3864 };
}

// From CT_Snen_xab.c:37131:37151
// struct  Sf_Uc_Sf  {
//   struct empty v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Sf_Uc_Sf layout" {
    var lv: c.Sf_Uc_Sf = undefined;
    try testing.expectSize(c.Sf_Uc_Sf, 1);
    try testing.expectAlign(c.Sf_Uc_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "Sf_Uc_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_Sf(), .{ .v1 = .{}, .v2 = 61, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_Uc_Sf());
    try testing.expectOk(c.send_Sf_Uc_Sf());
    try testing.expectOk(c.assert_Sf_Uc_Sf(.{ .v1 = .{}, .v2 = 61, .v3 = .{} }));
}
pub export fn zig_assert_Sf_Uc_Sf(lv: c.Sf_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != 61) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_Sf() c.Sf_Uc_Sf {
    return .{ .v1 = .{}, .v2 = 61, .v3 = .{} };
}

// From CT_Snen_xab.c:37156:37176
// struct  Sf_Uc_Uc  {
//   struct empty v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Sf_Uc_Uc layout" {
    var lv: c.Sf_Uc_Uc = undefined;
    try testing.expectSize(c.Sf_Uc_Uc, 2);
    try testing.expectAlign(c.Sf_Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "Sf_Uc_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_Uc(), .{ .v1 = .{}, .v2 = 39, .v3 = 62 });
    try testing.expectOk(c.assert_ret_Sf_Uc_Uc());
    try testing.expectOk(c.send_Sf_Uc_Uc());
    try testing.expectOk(c.assert_Sf_Uc_Uc(.{ .v1 = .{}, .v2 = 39, .v3 = 62 }));
}
pub export fn zig_assert_Sf_Uc_Uc(lv: c.Sf_Uc_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != 39) err = 2;
    if (lv.v3 != 62) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_Uc() c.Sf_Uc_Uc {
    return .{ .v1 = .{}, .v2 = 39, .v3 = 62 };
}

// From CT_Snen_xab.c:37181:37201
// struct  Sf_Uc_Ui  {
//   struct empty v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Sf_Uc_Ui layout" {
    var lv: c.Sf_Uc_Ui = undefined;
    try testing.expectSize(c.Sf_Uc_Ui, 8);
    try testing.expectAlign(c.Sf_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Uc_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_Ui(), .{ .v1 = .{}, .v2 = 61, .v3 = 22701 });
    try testing.expectOk(c.assert_ret_Sf_Uc_Ui());
    try testing.expectOk(c.send_Sf_Uc_Ui());
    try testing.expectOk(c.assert_Sf_Uc_Ui(.{ .v1 = .{}, .v2 = 61, .v3 = 22701 }));
}
pub export fn zig_assert_Sf_Uc_Ui(lv: c.Sf_Uc_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != 61) err = 2;
    if (lv.v3 != 22701) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_Ui() c.Sf_Uc_Ui {
    return .{ .v1 = .{}, .v2 = 61, .v3 = 22701 };
}

// From CT_Snen_xab.c:37206:37226
// struct  Sf_Uc_Ul  {
//   struct empty v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Sf_Uc_Ul layout" {
    var lv: c.Sf_Uc_Ul = undefined;
    try testing.expectSize(c.Sf_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Uc_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_Ul(), .{ .v1 = .{}, .v2 = 110, .v3 = 11849 });
    try testing.expectOk(c.assert_ret_Sf_Uc_Ul());
    try testing.expectOk(c.send_Sf_Uc_Ul());
    try testing.expectOk(c.assert_Sf_Uc_Ul(.{ .v1 = .{}, .v2 = 110, .v3 = 11849 }));
}
pub export fn zig_assert_Sf_Uc_Ul(lv: c.Sf_Uc_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != 110) err = 2;
    if (lv.v3 != 11849) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_Ul() c.Sf_Uc_Ul {
    return .{ .v1 = .{}, .v2 = 110, .v3 = 11849 };
}

// From CT_Snen_xab.c:37231:37251
// struct  Sf_Uc_Us  {
//   struct empty v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Sf_Uc_Us layout" {
    var lv: c.Sf_Uc_Us = undefined;
    try testing.expectSize(c.Sf_Uc_Us, 4);
    try testing.expectAlign(c.Sf_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_Uc_Us C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_Us(), .{ .v1 = .{}, .v2 = 1, .v3 = 12172 });
    try testing.expectOk(c.assert_ret_Sf_Uc_Us());
    try testing.expectOk(c.send_Sf_Uc_Us());
    try testing.expectOk(c.assert_Sf_Uc_Us(.{ .v1 = .{}, .v2 = 1, .v3 = 12172 }));
}
pub export fn zig_assert_Sf_Uc_Us(lv: c.Sf_Uc_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != 1) err = 2;
    if (lv.v3 != 12172) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_Us() c.Sf_Uc_Us {
    return .{ .v1 = .{}, .v2 = 1, .v3 = 12172 };
}

// From CT_Snen_xab.c:37256:37276
// struct  Sf_Uc_Vp  {
//   struct empty v1;
//   unsigned char v2;
//   void *v3;
// };

test "Sf_Uc_Vp layout" {
    var lv: c.Sf_Uc_Vp = undefined;
    try testing.expectSize(c.Sf_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Uc_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_Uc_Vp(), .{ .v1 = .{}, .v2 = 85, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Uc_Vp());
    try testing.expectOk(c.send_Sf_Uc_Vp());
    try testing.expectOk(c.assert_Sf_Uc_Vp(.{ .v1 = .{}, .v2 = 85, .v3 = null }));
}
pub export fn zig_assert_Sf_Uc_Vp(lv: c.Sf_Uc_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != 85) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Uc_Vp() c.Sf_Uc_Vp {
    return .{ .v1 = .{}, .v2 = 85, .v3 = null };
}

// From CT_Snen_xab.c:37281:37299
// struct  Sf_Ui  {
//   struct empty v1;
//   unsigned int v2;
// };

test "Sf_Ui layout" {
    var lv: c.Sf_Ui = undefined;
    try testing.expectSize(c.Sf_Ui, 4);
    try testing.expectAlign(c.Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_Ui(), .{ .v1 = .{}, .v2 = 20269 });
    try testing.expectOk(c.assert_ret_Sf_Ui());
    try testing.expectOk(c.send_Sf_Ui());
    try testing.expectOk(c.assert_Sf_Ui(.{ .v1 = .{}, .v2 = 20269 }));
}
pub export fn zig_assert_Sf_Ui(lv: c.Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != 20269) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui() c.Sf_Ui {
    return .{ .v1 = .{}, .v2 = 20269 };
}

// From CT_Snen_xab.c:38028:38048
// struct  Sf_Ui_C  {
//   struct empty v1;
//   unsigned int v2;
//   char v3;
// };

test "Sf_Ui_C layout" {
    var lv: c.Sf_Ui_C = undefined;
    try testing.expectSize(c.Sf_Ui_C, 8);
    try testing.expectAlign(c.Sf_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Ui_C C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_C(), .{ .v1 = .{}, .v2 = 11043, .v3 = 115 });
    try testing.expectOk(c.assert_ret_Sf_Ui_C());
    try testing.expectOk(c.send_Sf_Ui_C());
    try testing.expectOk(c.assert_Sf_Ui_C(.{ .v1 = .{}, .v2 = 11043, .v3 = 115 }));
}
pub export fn zig_assert_Sf_Ui_C(lv: c.Sf_Ui_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != 11043) err = 2;
    if (lv.v3 != 115) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_C() c.Sf_Ui_C {
    return .{ .v1 = .{}, .v2 = 11043, .v3 = 115 };
}

// From CT_Snen_xab.c:38053:38073
// struct  Sf_Ui_D  {
//   struct empty v1;
//   unsigned int v2;
//   double v3;
// };

test "Sf_Ui_D layout" {
    var lv: c.Sf_Ui_D = undefined;
    try testing.expectSize(c.Sf_Ui_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ui_D C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_D(), .{ .v1 = .{}, .v2 = 5889, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Sf_Ui_D());
    try testing.expectOk(c.send_Sf_Ui_D());
    try testing.expectOk(c.assert_Sf_Ui_D(.{ .v1 = .{}, .v2 = 5889, .v3 = 1.0 }));
}
pub export fn zig_assert_Sf_Ui_D(lv: c.Sf_Ui_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != 5889) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_D() c.Sf_Ui_D {
    return .{ .v1 = .{}, .v2 = 5889, .v3 = 1.0 };
}

// From CT_Snen_xab.c:38078:38098
// struct  Sf_Ui_F  {
//   struct empty v1;
//   unsigned int v2;
//   float v3;
// };

test "Sf_Ui_F layout" {
    var lv: c.Sf_Ui_F = undefined;
    try testing.expectSize(c.Sf_Ui_F, 8);
    try testing.expectAlign(c.Sf_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Ui_F C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_F(), .{ .v1 = .{}, .v2 = 27237, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Sf_Ui_F());
    try testing.expectOk(c.send_Sf_Ui_F());
    try testing.expectOk(c.assert_Sf_Ui_F(.{ .v1 = .{}, .v2 = 27237, .v3 = -2.125 }));
}
pub export fn zig_assert_Sf_Ui_F(lv: c.Sf_Ui_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != 27237) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_F() c.Sf_Ui_F {
    return .{ .v1 = .{}, .v2 = 27237, .v3 = -2.125 };
}

// From CT_Snen_xab.c:38103:38123
// struct  Sf_Ui_I  {
//   struct empty v1;
//   unsigned int v2;
//   int v3;
// };

test "Sf_Ui_I layout" {
    var lv: c.Sf_Ui_I = undefined;
    try testing.expectSize(c.Sf_Ui_I, 8);
    try testing.expectAlign(c.Sf_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Ui_I C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_I(), .{ .v1 = .{}, .v2 = 31991, .v3 = 12435 });
    try testing.expectOk(c.assert_ret_Sf_Ui_I());
    try testing.expectOk(c.send_Sf_Ui_I());
    try testing.expectOk(c.assert_Sf_Ui_I(.{ .v1 = .{}, .v2 = 31991, .v3 = 12435 }));
}
pub export fn zig_assert_Sf_Ui_I(lv: c.Sf_Ui_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != 31991) err = 2;
    if (lv.v3 != 12435) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_I() c.Sf_Ui_I {
    return .{ .v1 = .{}, .v2 = 31991, .v3 = 12435 };
}

// From CT_Snen_xab.c:38128:38148
// struct  Sf_Ui_Ip  {
//   struct empty v1;
//   unsigned int v2;
//   int *v3;
// };

test "Sf_Ui_Ip layout" {
    var lv: c.Sf_Ui_Ip = undefined;
    try testing.expectSize(c.Sf_Ui_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ui_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_Ip(), .{ .v1 = .{}, .v2 = 14741, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Ui_Ip());
    try testing.expectOk(c.send_Sf_Ui_Ip());
    try testing.expectOk(c.assert_Sf_Ui_Ip(.{ .v1 = .{}, .v2 = 14741, .v3 = null }));
}
pub export fn zig_assert_Sf_Ui_Ip(lv: c.Sf_Ui_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != 14741) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_Ip() c.Sf_Ui_Ip {
    return .{ .v1 = .{}, .v2 = 14741, .v3 = null };
}

// From CT_Snen_xab.c:38153:38173
// struct  Sf_Ui_L  {
//   struct empty v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Sf_Ui_L layout" {
    var lv: c.Sf_Ui_L = undefined;
    try testing.expectSize(c.Sf_Ui_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ui_L C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_L(), .{ .v1 = .{}, .v2 = 21926, .v3 = 2813 });
    try testing.expectOk(c.assert_ret_Sf_Ui_L());
    try testing.expectOk(c.send_Sf_Ui_L());
    try testing.expectOk(c.assert_Sf_Ui_L(.{ .v1 = .{}, .v2 = 21926, .v3 = 2813 }));
}
pub export fn zig_assert_Sf_Ui_L(lv: c.Sf_Ui_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != 21926) err = 2;
    if (lv.v3 != 2813) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_L() c.Sf_Ui_L {
    return .{ .v1 = .{}, .v2 = 21926, .v3 = 2813 };
}

// From CT_Snen_xab.c:38178:38198
// struct  Sf_Ui_S  {
//   struct empty v1;
//   unsigned int v2;
//   short v3;
// };

test "Sf_Ui_S layout" {
    var lv: c.Sf_Ui_S = undefined;
    try testing.expectSize(c.Sf_Ui_S, 8);
    try testing.expectAlign(c.Sf_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Ui_S C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_S(), .{ .v1 = .{}, .v2 = 21670, .v3 = 18943 });
    try testing.expectOk(c.assert_ret_Sf_Ui_S());
    try testing.expectOk(c.send_Sf_Ui_S());
    try testing.expectOk(c.assert_Sf_Ui_S(.{ .v1 = .{}, .v2 = 21670, .v3 = 18943 }));
}
pub export fn zig_assert_Sf_Ui_S(lv: c.Sf_Ui_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != 21670) err = 2;
    if (lv.v3 != 18943) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_S() c.Sf_Ui_S {
    return .{ .v1 = .{}, .v2 = 21670, .v3 = 18943 };
}

// From CT_Snen_xab.c:38203:38223
// struct  Sf_Ui_Sf  {
//   struct empty v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Sf_Ui_Sf layout" {
    var lv: c.Sf_Ui_Sf = undefined;
    try testing.expectSize(c.Sf_Ui_Sf, 4);
    try testing.expectAlign(c.Sf_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Ui_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_Sf(), .{ .v1 = .{}, .v2 = 14286, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_Ui_Sf());
    try testing.expectOk(c.send_Sf_Ui_Sf());
    try testing.expectOk(c.assert_Sf_Ui_Sf(.{ .v1 = .{}, .v2 = 14286, .v3 = .{} }));
}
pub export fn zig_assert_Sf_Ui_Sf(lv: c.Sf_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != 14286) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_Sf() c.Sf_Ui_Sf {
    return .{ .v1 = .{}, .v2 = 14286, .v3 = .{} };
}

// From CT_Snen_xab.c:38228:38248
// struct  Sf_Ui_Uc  {
//   struct empty v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Sf_Ui_Uc layout" {
    var lv: c.Sf_Ui_Uc = undefined;
    try testing.expectSize(c.Sf_Ui_Uc, 8);
    try testing.expectAlign(c.Sf_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Ui_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_Uc(), .{ .v1 = .{}, .v2 = 7553, .v3 = 86 });
    try testing.expectOk(c.assert_ret_Sf_Ui_Uc());
    try testing.expectOk(c.send_Sf_Ui_Uc());
    try testing.expectOk(c.assert_Sf_Ui_Uc(.{ .v1 = .{}, .v2 = 7553, .v3 = 86 }));
}
pub export fn zig_assert_Sf_Ui_Uc(lv: c.Sf_Ui_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != 7553) err = 2;
    if (lv.v3 != 86) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_Uc() c.Sf_Ui_Uc {
    return .{ .v1 = .{}, .v2 = 7553, .v3 = 86 };
}

// From CT_Snen_xab.c:38253:38273
// struct  Sf_Ui_Ui  {
//   struct empty v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Sf_Ui_Ui layout" {
    var lv: c.Sf_Ui_Ui = undefined;
    try testing.expectSize(c.Sf_Ui_Ui, 8);
    try testing.expectAlign(c.Sf_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Ui_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_Ui(), .{ .v1 = .{}, .v2 = 31439, .v3 = 9666 });
    try testing.expectOk(c.assert_ret_Sf_Ui_Ui());
    try testing.expectOk(c.send_Sf_Ui_Ui());
    try testing.expectOk(c.assert_Sf_Ui_Ui(.{ .v1 = .{}, .v2 = 31439, .v3 = 9666 }));
}
pub export fn zig_assert_Sf_Ui_Ui(lv: c.Sf_Ui_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != 31439) err = 2;
    if (lv.v3 != 9666) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_Ui() c.Sf_Ui_Ui {
    return .{ .v1 = .{}, .v2 = 31439, .v3 = 9666 };
}

// From CT_Snen_xab.c:38278:38298
// struct  Sf_Ui_Ul  {
//   struct empty v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Sf_Ui_Ul layout" {
    var lv: c.Sf_Ui_Ul = undefined;
    try testing.expectSize(c.Sf_Ui_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ui_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_Ul(), .{ .v1 = .{}, .v2 = 24136, .v3 = 18579 });
    try testing.expectOk(c.assert_ret_Sf_Ui_Ul());
    try testing.expectOk(c.send_Sf_Ui_Ul());
    try testing.expectOk(c.assert_Sf_Ui_Ul(.{ .v1 = .{}, .v2 = 24136, .v3 = 18579 }));
}
pub export fn zig_assert_Sf_Ui_Ul(lv: c.Sf_Ui_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != 24136) err = 2;
    if (lv.v3 != 18579) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_Ul() c.Sf_Ui_Ul {
    return .{ .v1 = .{}, .v2 = 24136, .v3 = 18579 };
}

// From CT_Snen_xab.c:38303:38323
// struct  Sf_Ui_Us  {
//   struct empty v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Sf_Ui_Us layout" {
    var lv: c.Sf_Ui_Us = undefined;
    try testing.expectSize(c.Sf_Ui_Us, 8);
    try testing.expectAlign(c.Sf_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Ui_Us C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_Us(), .{ .v1 = .{}, .v2 = 16978, .v3 = 3173 });
    try testing.expectOk(c.assert_ret_Sf_Ui_Us());
    try testing.expectOk(c.send_Sf_Ui_Us());
    try testing.expectOk(c.assert_Sf_Ui_Us(.{ .v1 = .{}, .v2 = 16978, .v3 = 3173 }));
}
pub export fn zig_assert_Sf_Ui_Us(lv: c.Sf_Ui_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != 16978) err = 2;
    if (lv.v3 != 3173) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_Us() c.Sf_Ui_Us {
    return .{ .v1 = .{}, .v2 = 16978, .v3 = 3173 };
}

// From CT_Snen_xab.c:38328:38348
// struct  Sf_Ui_Vp  {
//   struct empty v1;
//   unsigned int v2;
//   void *v3;
// };

test "Sf_Ui_Vp layout" {
    var lv: c.Sf_Ui_Vp = undefined;
    try testing.expectSize(c.Sf_Ui_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Ui_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_Ui_Vp(), .{ .v1 = .{}, .v2 = 25991, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Ui_Vp());
    try testing.expectOk(c.send_Sf_Ui_Vp());
    try testing.expectOk(c.assert_Sf_Ui_Vp(.{ .v1 = .{}, .v2 = 25991, .v3 = null }));
}
pub export fn zig_assert_Sf_Ui_Vp(lv: c.Sf_Ui_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != 25991) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ui_Vp() c.Sf_Ui_Vp {
    return .{ .v1 = .{}, .v2 = 25991, .v3 = null };
}

// From CT_Snen_xab.c:38353:38371
// struct  Sf_Ul  {
//   struct empty v1;
//   __tsu64 v2;
// };

test "Sf_Ul layout" {
    var lv: c.Sf_Ul = undefined;
    try testing.expectSize(c.Sf_Ul, 8);
    try testing.expectAlign(c.Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_Ul(), .{ .v1 = .{}, .v2 = 2013 });
    try testing.expectOk(c.assert_ret_Sf_Ul());
    try testing.expectOk(c.send_Sf_Ul());
    try testing.expectOk(c.assert_Sf_Ul(.{ .v1 = .{}, .v2 = 2013 }));
}
pub export fn zig_assert_Sf_Ul(lv: c.Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != 2013) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul() c.Sf_Ul {
    return .{ .v1 = .{}, .v2 = 2013 };
}

// From CT_Snen_xab.c:39100:39120
// struct  Sf_Ul_C  {
//   struct empty v1;
//   __tsu64 v2;
//   char v3;
// };

test "Sf_Ul_C layout" {
    var lv: c.Sf_Ul_C = undefined;
    try testing.expectSize(c.Sf_Ul_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_C C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_C(), .{ .v1 = .{}, .v2 = 31343, .v3 = 16 });
    try testing.expectOk(c.assert_ret_Sf_Ul_C());
    try testing.expectOk(c.send_Sf_Ul_C());
    try testing.expectOk(c.assert_Sf_Ul_C(.{ .v1 = .{}, .v2 = 31343, .v3 = 16 }));
}
pub export fn zig_assert_Sf_Ul_C(lv: c.Sf_Ul_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != 31343) err = 2;
    if (lv.v3 != 16) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_C() c.Sf_Ul_C {
    return .{ .v1 = .{}, .v2 = 31343, .v3 = 16 };
}

// From CT_Snen_xab.c:39125:39145
// struct  Sf_Ul_D  {
//   struct empty v1;
//   __tsu64 v2;
//   double v3;
// };

test "Sf_Ul_D layout" {
    var lv: c.Sf_Ul_D = undefined;
    try testing.expectSize(c.Sf_Ul_D, 16);
    try testing.expectAlign(c.Sf_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_D C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_D(), .{ .v1 = .{}, .v2 = 6874, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Sf_Ul_D());
    try testing.expectOk(c.send_Sf_Ul_D());
    try testing.expectOk(c.assert_Sf_Ul_D(.{ .v1 = .{}, .v2 = 6874, .v3 = -2.125 }));
}
pub export fn zig_assert_Sf_Ul_D(lv: c.Sf_Ul_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != 6874) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_D() c.Sf_Ul_D {
    return .{ .v1 = .{}, .v2 = 6874, .v3 = -2.125 };
}

// From CT_Snen_xab.c:39150:39170
// struct  Sf_Ul_F  {
//   struct empty v1;
//   __tsu64 v2;
//   float v3;
// };

test "Sf_Ul_F layout" {
    var lv: c.Sf_Ul_F = undefined;
    try testing.expectSize(c.Sf_Ul_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_F C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_F(), .{ .v1 = .{}, .v2 = 21440, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Sf_Ul_F());
    try testing.expectOk(c.send_Sf_Ul_F());
    try testing.expectOk(c.assert_Sf_Ul_F(.{ .v1 = .{}, .v2 = 21440, .v3 = -0.25 }));
}
pub export fn zig_assert_Sf_Ul_F(lv: c.Sf_Ul_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != 21440) err = 2;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_F() c.Sf_Ul_F {
    return .{ .v1 = .{}, .v2 = 21440, .v3 = -0.25 };
}

// From CT_Snen_xab.c:39175:39195
// struct  Sf_Ul_I  {
//   struct empty v1;
//   __tsu64 v2;
//   int v3;
// };

test "Sf_Ul_I layout" {
    var lv: c.Sf_Ul_I = undefined;
    try testing.expectSize(c.Sf_Ul_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_I C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_I(), .{ .v1 = .{}, .v2 = 22237, .v3 = 3554 });
    try testing.expectOk(c.assert_ret_Sf_Ul_I());
    try testing.expectOk(c.send_Sf_Ul_I());
    try testing.expectOk(c.assert_Sf_Ul_I(.{ .v1 = .{}, .v2 = 22237, .v3 = 3554 }));
}
pub export fn zig_assert_Sf_Ul_I(lv: c.Sf_Ul_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != 22237) err = 2;
    if (lv.v3 != 3554) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_I() c.Sf_Ul_I {
    return .{ .v1 = .{}, .v2 = 22237, .v3 = 3554 };
}

// From CT_Snen_xab.c:39200:39220
// struct  Sf_Ul_Ip  {
//   struct empty v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Sf_Ul_Ip layout" {
    var lv: c.Sf_Ul_Ip = undefined;
    try testing.expectSize(c.Sf_Ul_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_Ip(), .{ .v1 = .{}, .v2 = 395, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Ul_Ip());
    try testing.expectOk(c.send_Sf_Ul_Ip());
    try testing.expectOk(c.assert_Sf_Ul_Ip(.{ .v1 = .{}, .v2 = 395, .v3 = null }));
}
pub export fn zig_assert_Sf_Ul_Ip(lv: c.Sf_Ul_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != 395) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_Ip() c.Sf_Ul_Ip {
    return .{ .v1 = .{}, .v2 = 395, .v3 = null };
}

// From CT_Snen_xab.c:39225:39245
// struct  Sf_Ul_L  {
//   struct empty v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Sf_Ul_L layout" {
    var lv: c.Sf_Ul_L = undefined;
    try testing.expectSize(c.Sf_Ul_L, 16);
    try testing.expectAlign(c.Sf_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_L C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_L(), .{ .v1 = .{}, .v2 = 28368, .v3 = 11343 });
    try testing.expectOk(c.assert_ret_Sf_Ul_L());
    try testing.expectOk(c.send_Sf_Ul_L());
    try testing.expectOk(c.assert_Sf_Ul_L(.{ .v1 = .{}, .v2 = 28368, .v3 = 11343 }));
}
pub export fn zig_assert_Sf_Ul_L(lv: c.Sf_Ul_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != 28368) err = 2;
    if (lv.v3 != 11343) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_L() c.Sf_Ul_L {
    return .{ .v1 = .{}, .v2 = 28368, .v3 = 11343 };
}

// From CT_Snen_xab.c:39250:39270
// struct  Sf_Ul_S  {
//   struct empty v1;
//   __tsu64 v2;
//   short v3;
// };

test "Sf_Ul_S layout" {
    var lv: c.Sf_Ul_S = undefined;
    try testing.expectSize(c.Sf_Ul_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_S C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_S(), .{ .v1 = .{}, .v2 = 9019, .v3 = 22 });
    try testing.expectOk(c.assert_ret_Sf_Ul_S());
    try testing.expectOk(c.send_Sf_Ul_S());
    try testing.expectOk(c.assert_Sf_Ul_S(.{ .v1 = .{}, .v2 = 9019, .v3 = 22 }));
}
pub export fn zig_assert_Sf_Ul_S(lv: c.Sf_Ul_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != 9019) err = 2;
    if (lv.v3 != 22) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_S() c.Sf_Ul_S {
    return .{ .v1 = .{}, .v2 = 9019, .v3 = 22 };
}

// From CT_Snen_xab.c:39275:39295
// struct  Sf_Ul_Sf  {
//   struct empty v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Sf_Ul_Sf layout" {
    var lv: c.Sf_Ul_Sf = undefined;
    try testing.expectSize(c.Sf_Ul_Sf, 8);
    try testing.expectAlign(c.Sf_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_Sf(), .{ .v1 = .{}, .v2 = 26139, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_Ul_Sf());
    try testing.expectOk(c.send_Sf_Ul_Sf());
    try testing.expectOk(c.assert_Sf_Ul_Sf(.{ .v1 = .{}, .v2 = 26139, .v3 = .{} }));
}
pub export fn zig_assert_Sf_Ul_Sf(lv: c.Sf_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != 26139) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_Sf() c.Sf_Ul_Sf {
    return .{ .v1 = .{}, .v2 = 26139, .v3 = .{} };
}

// From CT_Snen_xab.c:39300:39320
// struct  Sf_Ul_Uc  {
//   struct empty v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Sf_Ul_Uc layout" {
    var lv: c.Sf_Ul_Uc = undefined;
    try testing.expectSize(c.Sf_Ul_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_Uc(), .{ .v1 = .{}, .v2 = 10407, .v3 = 53 });
    try testing.expectOk(c.assert_ret_Sf_Ul_Uc());
    try testing.expectOk(c.send_Sf_Ul_Uc());
    try testing.expectOk(c.assert_Sf_Ul_Uc(.{ .v1 = .{}, .v2 = 10407, .v3 = 53 }));
}
pub export fn zig_assert_Sf_Ul_Uc(lv: c.Sf_Ul_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != 10407) err = 2;
    if (lv.v3 != 53) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_Uc() c.Sf_Ul_Uc {
    return .{ .v1 = .{}, .v2 = 10407, .v3 = 53 };
}

// From CT_Snen_xab.c:39325:39345
// struct  Sf_Ul_Ui  {
//   struct empty v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Sf_Ul_Ui layout" {
    var lv: c.Sf_Ul_Ui = undefined;
    try testing.expectSize(c.Sf_Ul_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_Ui(), .{ .v1 = .{}, .v2 = 6832, .v3 = 22432 });
    try testing.expectOk(c.assert_ret_Sf_Ul_Ui());
    try testing.expectOk(c.send_Sf_Ul_Ui());
    try testing.expectOk(c.assert_Sf_Ul_Ui(.{ .v1 = .{}, .v2 = 6832, .v3 = 22432 }));
}
pub export fn zig_assert_Sf_Ul_Ui(lv: c.Sf_Ul_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != 6832) err = 2;
    if (lv.v3 != 22432) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_Ui() c.Sf_Ul_Ui {
    return .{ .v1 = .{}, .v2 = 6832, .v3 = 22432 };
}

// From CT_Snen_xab.c:39350:39370
// struct  Sf_Ul_Ul  {
//   struct empty v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Sf_Ul_Ul layout" {
    var lv: c.Sf_Ul_Ul = undefined;
    try testing.expectSize(c.Sf_Ul_Ul, 16);
    try testing.expectAlign(c.Sf_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_Ul(), .{ .v1 = .{}, .v2 = 13239, .v3 = 31345 });
    try testing.expectOk(c.assert_ret_Sf_Ul_Ul());
    try testing.expectOk(c.send_Sf_Ul_Ul());
    try testing.expectOk(c.assert_Sf_Ul_Ul(.{ .v1 = .{}, .v2 = 13239, .v3 = 31345 }));
}
pub export fn zig_assert_Sf_Ul_Ul(lv: c.Sf_Ul_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != 13239) err = 2;
    if (lv.v3 != 31345) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_Ul() c.Sf_Ul_Ul {
    return .{ .v1 = .{}, .v2 = 13239, .v3 = 31345 };
}

// From CT_Snen_xab.c:39375:39395
// struct  Sf_Ul_Us  {
//   struct empty v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Sf_Ul_Us layout" {
    var lv: c.Sf_Ul_Us = undefined;
    try testing.expectSize(c.Sf_Ul_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_Us C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_Us(), .{ .v1 = .{}, .v2 = 100, .v3 = 23779 });
    try testing.expectOk(c.assert_ret_Sf_Ul_Us());
    try testing.expectOk(c.send_Sf_Ul_Us());
    try testing.expectOk(c.assert_Sf_Ul_Us(.{ .v1 = .{}, .v2 = 100, .v3 = 23779 }));
}
pub export fn zig_assert_Sf_Ul_Us(lv: c.Sf_Ul_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != 100) err = 2;
    if (lv.v3 != 23779) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_Us() c.Sf_Ul_Us {
    return .{ .v1 = .{}, .v2 = 100, .v3 = 23779 };
}

// From CT_Snen_xab.c:39400:39420
// struct  Sf_Ul_Vp  {
//   struct empty v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Sf_Ul_Vp layout" {
    var lv: c.Sf_Ul_Vp = undefined;
    try testing.expectSize(c.Sf_Ul_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Sf_Ul_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_Ul_Vp(), .{ .v1 = .{}, .v2 = 24502, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Ul_Vp());
    try testing.expectOk(c.send_Sf_Ul_Vp());
    try testing.expectOk(c.assert_Sf_Ul_Vp(.{ .v1 = .{}, .v2 = 24502, .v3 = null }));
}
pub export fn zig_assert_Sf_Ul_Vp(lv: c.Sf_Ul_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != 24502) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Ul_Vp() c.Sf_Ul_Vp {
    return .{ .v1 = .{}, .v2 = 24502, .v3 = null };
}

// From CT_Snen_xab.c:39425:39443
// struct  Sf_Us  {
//   struct empty v1;
//   unsigned short v2;
// };

test "Sf_Us layout" {
    var lv: c.Sf_Us = undefined;
    try testing.expectSize(c.Sf_Us, 2);
    try testing.expectAlign(c.Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_Us C calls" {
    try testing.expectEqual(c.ret_Sf_Us(), .{ .v1 = .{}, .v2 = 25 });
    try testing.expectOk(c.assert_ret_Sf_Us());
    try testing.expectOk(c.send_Sf_Us());
    try testing.expectOk(c.assert_Sf_Us(.{ .v1 = .{}, .v2 = 25 }));
}
pub export fn zig_assert_Sf_Us(lv: c.Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != 25) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us() c.Sf_Us {
    return .{ .v1 = .{}, .v2 = 25 };
}

// From CT_Snen_xab.c:40172:40192
// struct  Sf_Us_C  {
//   struct empty v1;
//   unsigned short v2;
//   char v3;
// };

test "Sf_Us_C layout" {
    var lv: c.Sf_Us_C = undefined;
    try testing.expectSize(c.Sf_Us_C, 4);
    try testing.expectAlign(c.Sf_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_Us_C C calls" {
    try testing.expectEqual(c.ret_Sf_Us_C(), .{ .v1 = .{}, .v2 = 10696, .v3 = 27 });
    try testing.expectOk(c.assert_ret_Sf_Us_C());
    try testing.expectOk(c.send_Sf_Us_C());
    try testing.expectOk(c.assert_Sf_Us_C(.{ .v1 = .{}, .v2 = 10696, .v3 = 27 }));
}
pub export fn zig_assert_Sf_Us_C(lv: c.Sf_Us_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != 10696) err = 2;
    if (lv.v3 != 27) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_C() c.Sf_Us_C {
    return .{ .v1 = .{}, .v2 = 10696, .v3 = 27 };
}

// From CT_Snen_xab.c:40197:40217
// struct  Sf_Us_D  {
//   struct empty v1;
//   unsigned short v2;
//   double v3;
// };

test "Sf_Us_D layout" {
    var lv: c.Sf_Us_D = undefined;
    try testing.expectSize(c.Sf_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Us_D C calls" {
    try testing.expectEqual(c.ret_Sf_Us_D(), .{ .v1 = .{}, .v2 = 422, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Sf_Us_D());
    try testing.expectOk(c.send_Sf_Us_D());
    try testing.expectOk(c.assert_Sf_Us_D(.{ .v1 = .{}, .v2 = 422, .v3 = 1.0 }));
}
pub export fn zig_assert_Sf_Us_D(lv: c.Sf_Us_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != 422) err = 2;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_D() c.Sf_Us_D {
    return .{ .v1 = .{}, .v2 = 422, .v3 = 1.0 };
}

// From CT_Snen_xab.c:40222:40242
// struct  Sf_Us_F  {
//   struct empty v1;
//   unsigned short v2;
//   float v3;
// };

test "Sf_Us_F layout" {
    var lv: c.Sf_Us_F = undefined;
    try testing.expectSize(c.Sf_Us_F, 8);
    try testing.expectAlign(c.Sf_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Us_F C calls" {
    try testing.expectEqual(c.ret_Sf_Us_F(), .{ .v1 = .{}, .v2 = 18910, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Sf_Us_F());
    try testing.expectOk(c.send_Sf_Us_F());
    try testing.expectOk(c.assert_Sf_Us_F(.{ .v1 = .{}, .v2 = 18910, .v3 = 0.875 }));
}
pub export fn zig_assert_Sf_Us_F(lv: c.Sf_Us_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != 18910) err = 2;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_F() c.Sf_Us_F {
    return .{ .v1 = .{}, .v2 = 18910, .v3 = 0.875 };
}

// From CT_Snen_xab.c:40247:40267
// struct  Sf_Us_I  {
//   struct empty v1;
//   unsigned short v2;
//   int v3;
// };

test "Sf_Us_I layout" {
    var lv: c.Sf_Us_I = undefined;
    try testing.expectSize(c.Sf_Us_I, 8);
    try testing.expectAlign(c.Sf_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Us_I C calls" {
    try testing.expectEqual(c.ret_Sf_Us_I(), .{ .v1 = .{}, .v2 = 22666, .v3 = 26813 });
    try testing.expectOk(c.assert_ret_Sf_Us_I());
    try testing.expectOk(c.send_Sf_Us_I());
    try testing.expectOk(c.assert_Sf_Us_I(.{ .v1 = .{}, .v2 = 22666, .v3 = 26813 }));
}
pub export fn zig_assert_Sf_Us_I(lv: c.Sf_Us_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != 22666) err = 2;
    if (lv.v3 != 26813) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_I() c.Sf_Us_I {
    return .{ .v1 = .{}, .v2 = 22666, .v3 = 26813 };
}

// From CT_Snen_xab.c:40272:40292
// struct  Sf_Us_Ip  {
//   struct empty v1;
//   unsigned short v2;
//   int *v3;
// };

test "Sf_Us_Ip layout" {
    var lv: c.Sf_Us_Ip = undefined;
    try testing.expectSize(c.Sf_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Us_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_Us_Ip(), .{ .v1 = .{}, .v2 = 12297, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Us_Ip());
    try testing.expectOk(c.send_Sf_Us_Ip());
    try testing.expectOk(c.assert_Sf_Us_Ip(.{ .v1 = .{}, .v2 = 12297, .v3 = null }));
}
pub export fn zig_assert_Sf_Us_Ip(lv: c.Sf_Us_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != 12297) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_Ip() c.Sf_Us_Ip {
    return .{ .v1 = .{}, .v2 = 12297, .v3 = null };
}

// From CT_Snen_xab.c:40297:40317
// struct  Sf_Us_L  {
//   struct empty v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Sf_Us_L layout" {
    var lv: c.Sf_Us_L = undefined;
    try testing.expectSize(c.Sf_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Us_L C calls" {
    try testing.expectEqual(c.ret_Sf_Us_L(), .{ .v1 = .{}, .v2 = 19394, .v3 = 14223 });
    try testing.expectOk(c.assert_ret_Sf_Us_L());
    try testing.expectOk(c.send_Sf_Us_L());
    try testing.expectOk(c.assert_Sf_Us_L(.{ .v1 = .{}, .v2 = 19394, .v3 = 14223 }));
}
pub export fn zig_assert_Sf_Us_L(lv: c.Sf_Us_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != 19394) err = 2;
    if (lv.v3 != 14223) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_L() c.Sf_Us_L {
    return .{ .v1 = .{}, .v2 = 19394, .v3 = 14223 };
}

// From CT_Snen_xab.c:40322:40342
// struct  Sf_Us_S  {
//   struct empty v1;
//   unsigned short v2;
//   short v3;
// };

test "Sf_Us_S layout" {
    var lv: c.Sf_Us_S = undefined;
    try testing.expectSize(c.Sf_Us_S, 4);
    try testing.expectAlign(c.Sf_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_Us_S C calls" {
    try testing.expectEqual(c.ret_Sf_Us_S(), .{ .v1 = .{}, .v2 = 24719, .v3 = 24300 });
    try testing.expectOk(c.assert_ret_Sf_Us_S());
    try testing.expectOk(c.send_Sf_Us_S());
    try testing.expectOk(c.assert_Sf_Us_S(.{ .v1 = .{}, .v2 = 24719, .v3 = 24300 }));
}
pub export fn zig_assert_Sf_Us_S(lv: c.Sf_Us_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != 24719) err = 2;
    if (lv.v3 != 24300) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_S() c.Sf_Us_S {
    return .{ .v1 = .{}, .v2 = 24719, .v3 = 24300 };
}

// From CT_Snen_xab.c:40347:40367
// struct  Sf_Us_Sf  {
//   struct empty v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Sf_Us_Sf layout" {
    var lv: c.Sf_Us_Sf = undefined;
    try testing.expectSize(c.Sf_Us_Sf, 2);
    try testing.expectAlign(c.Sf_Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_Us_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_Us_Sf(), .{ .v1 = .{}, .v2 = 2443, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_Us_Sf());
    try testing.expectOk(c.send_Sf_Us_Sf());
    try testing.expectOk(c.assert_Sf_Us_Sf(.{ .v1 = .{}, .v2 = 2443, .v3 = .{} }));
}
pub export fn zig_assert_Sf_Us_Sf(lv: c.Sf_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != 2443) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_Sf() c.Sf_Us_Sf {
    return .{ .v1 = .{}, .v2 = 2443, .v3 = .{} };
}

// From CT_Snen_xab.c:40372:40392
// struct  Sf_Us_Uc  {
//   struct empty v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Sf_Us_Uc layout" {
    var lv: c.Sf_Us_Uc = undefined;
    try testing.expectSize(c.Sf_Us_Uc, 4);
    try testing.expectAlign(c.Sf_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_Us_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_Us_Uc(), .{ .v1 = .{}, .v2 = 6872, .v3 = 23 });
    try testing.expectOk(c.assert_ret_Sf_Us_Uc());
    try testing.expectOk(c.send_Sf_Us_Uc());
    try testing.expectOk(c.assert_Sf_Us_Uc(.{ .v1 = .{}, .v2 = 6872, .v3 = 23 }));
}
pub export fn zig_assert_Sf_Us_Uc(lv: c.Sf_Us_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != 6872) err = 2;
    if (lv.v3 != 23) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_Uc() c.Sf_Us_Uc {
    return .{ .v1 = .{}, .v2 = 6872, .v3 = 23 };
}

// From CT_Snen_xab.c:40397:40417
// struct  Sf_Us_Ui  {
//   struct empty v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Sf_Us_Ui layout" {
    var lv: c.Sf_Us_Ui = undefined;
    try testing.expectSize(c.Sf_Us_Ui, 8);
    try testing.expectAlign(c.Sf_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Sf_Us_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_Us_Ui(), .{ .v1 = .{}, .v2 = 1271, .v3 = 26645 });
    try testing.expectOk(c.assert_ret_Sf_Us_Ui());
    try testing.expectOk(c.send_Sf_Us_Ui());
    try testing.expectOk(c.assert_Sf_Us_Ui(.{ .v1 = .{}, .v2 = 1271, .v3 = 26645 }));
}
pub export fn zig_assert_Sf_Us_Ui(lv: c.Sf_Us_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != 1271) err = 2;
    if (lv.v3 != 26645) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_Ui() c.Sf_Us_Ui {
    return .{ .v1 = .{}, .v2 = 1271, .v3 = 26645 };
}

// From CT_Snen_xab.c:40422:40442
// struct  Sf_Us_Ul  {
//   struct empty v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Sf_Us_Ul layout" {
    var lv: c.Sf_Us_Ul = undefined;
    try testing.expectSize(c.Sf_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Us_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_Us_Ul(), .{ .v1 = .{}, .v2 = 14420, .v3 = 20502 });
    try testing.expectOk(c.assert_ret_Sf_Us_Ul());
    try testing.expectOk(c.send_Sf_Us_Ul());
    try testing.expectOk(c.assert_Sf_Us_Ul(.{ .v1 = .{}, .v2 = 14420, .v3 = 20502 }));
}
pub export fn zig_assert_Sf_Us_Ul(lv: c.Sf_Us_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != 14420) err = 2;
    if (lv.v3 != 20502) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_Ul() c.Sf_Us_Ul {
    return .{ .v1 = .{}, .v2 = 14420, .v3 = 20502 };
}

// From CT_Snen_xab.c:40447:40467
// struct  Sf_Us_Us  {
//   struct empty v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Sf_Us_Us layout" {
    var lv: c.Sf_Us_Us = undefined;
    try testing.expectSize(c.Sf_Us_Us, 4);
    try testing.expectAlign(c.Sf_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Sf_Us_Us C calls" {
    try testing.expectEqual(c.ret_Sf_Us_Us(), .{ .v1 = .{}, .v2 = 30125, .v3 = 6780 });
    try testing.expectOk(c.assert_ret_Sf_Us_Us());
    try testing.expectOk(c.send_Sf_Us_Us());
    try testing.expectOk(c.assert_Sf_Us_Us(.{ .v1 = .{}, .v2 = 30125, .v3 = 6780 }));
}
pub export fn zig_assert_Sf_Us_Us(lv: c.Sf_Us_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != 30125) err = 2;
    if (lv.v3 != 6780) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_Us() c.Sf_Us_Us {
    return .{ .v1 = .{}, .v2 = 30125, .v3 = 6780 };
}

// From CT_Snen_xab.c:40472:40492
// struct  Sf_Us_Vp  {
//   struct empty v1;
//   unsigned short v2;
//   void *v3;
// };

test "Sf_Us_Vp layout" {
    var lv: c.Sf_Us_Vp = undefined;
    try testing.expectSize(c.Sf_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Us_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_Us_Vp(), .{ .v1 = .{}, .v2 = 9594, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Us_Vp());
    try testing.expectOk(c.send_Sf_Us_Vp());
    try testing.expectOk(c.assert_Sf_Us_Vp(.{ .v1 = .{}, .v2 = 9594, .v3 = null }));
}
pub export fn zig_assert_Sf_Us_Vp(lv: c.Sf_Us_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != 9594) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Us_Vp() c.Sf_Us_Vp {
    return .{ .v1 = .{}, .v2 = 9594, .v3 = null };
}

// From CT_Snen_xab.c:40497:40515
// struct  Sf_Vp  {
//   struct empty v1;
//   void *v2;
// };

test "Sf_Vp layout" {
    var lv: c.Sf_Vp = undefined;
    try testing.expectSize(c.Sf_Vp, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
}
test "Sf_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_Vp(), .{ .v1 = .{}, .v2 = null });
    try testing.expectOk(c.assert_ret_Sf_Vp());
    try testing.expectOk(c.send_Sf_Vp());
    try testing.expectOk(c.assert_Sf_Vp(.{ .v1 = .{}, .v2 = null }));
}
pub export fn zig_assert_Sf_Vp(lv: c.Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp() c.Sf_Vp {
    return .{ .v1 = .{}, .v2 = null };
}

// From CT_Snen_xab.c:41244:41264
// struct  Sf_Vp_C  {
//   struct empty v1;
//   void *v2;
//   char v3;
// };

test "Sf_Vp_C layout" {
    var lv: c.Sf_Vp_C = undefined;
    try testing.expectSize(c.Sf_Vp_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_C C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_C(), .{ .v1 = .{}, .v2 = null, .v3 = 118 });
    try testing.expectOk(c.assert_ret_Sf_Vp_C());
    try testing.expectOk(c.send_Sf_Vp_C());
    try testing.expectOk(c.assert_Sf_Vp_C(.{ .v1 = .{}, .v2 = null, .v3 = 118 }));
}
pub export fn zig_assert_Sf_Vp_C(lv: c.Sf_Vp_C) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 118) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_C() c.Sf_Vp_C {
    return .{ .v1 = .{}, .v2 = null, .v3 = 118 };
}

// From CT_Snen_xab.c:41269:41289
// struct  Sf_Vp_D  {
//   struct empty v1;
//   void *v2;
//   double v3;
// };

test "Sf_Vp_D layout" {
    var lv: c.Sf_Vp_D = undefined;
    try testing.expectSize(c.Sf_Vp_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_D C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_D(), .{ .v1 = .{}, .v2 = null, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Sf_Vp_D());
    try testing.expectOk(c.send_Sf_Vp_D());
    try testing.expectOk(c.assert_Sf_Vp_D(.{ .v1 = .{}, .v2 = null, .v3 = -2.125 }));
}
pub export fn zig_assert_Sf_Vp_D(lv: c.Sf_Vp_D) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != -2.125) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_D() c.Sf_Vp_D {
    return .{ .v1 = .{}, .v2 = null, .v3 = -2.125 };
}

// From CT_Snen_xab.c:41294:41314
// struct  Sf_Vp_F  {
//   struct empty v1;
//   void *v2;
//   float v3;
// };

test "Sf_Vp_F layout" {
    var lv: c.Sf_Vp_F = undefined;
    try testing.expectSize(c.Sf_Vp_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_F C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_F(), .{ .v1 = .{}, .v2 = null, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Sf_Vp_F());
    try testing.expectOk(c.send_Sf_Vp_F());
    try testing.expectOk(c.assert_Sf_Vp_F(.{ .v1 = .{}, .v2 = null, .v3 = 4.5 }));
}
pub export fn zig_assert_Sf_Vp_F(lv: c.Sf_Vp_F) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_F() c.Sf_Vp_F {
    return .{ .v1 = .{}, .v2 = null, .v3 = 4.5 };
}

// From CT_Snen_xab.c:41319:41339
// struct  Sf_Vp_I  {
//   struct empty v1;
//   void *v2;
//   int v3;
// };

test "Sf_Vp_I layout" {
    var lv: c.Sf_Vp_I = undefined;
    try testing.expectSize(c.Sf_Vp_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_I C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_I(), .{ .v1 = .{}, .v2 = null, .v3 = 16526 });
    try testing.expectOk(c.assert_ret_Sf_Vp_I());
    try testing.expectOk(c.send_Sf_Vp_I());
    try testing.expectOk(c.assert_Sf_Vp_I(.{ .v1 = .{}, .v2 = null, .v3 = 16526 }));
}
pub export fn zig_assert_Sf_Vp_I(lv: c.Sf_Vp_I) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 16526) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_I() c.Sf_Vp_I {
    return .{ .v1 = .{}, .v2 = null, .v3 = 16526 };
}

// From CT_Snen_xab.c:41344:41364
// struct  Sf_Vp_Ip  {
//   struct empty v1;
//   void *v2;
//   int *v3;
// };

test "Sf_Vp_Ip layout" {
    var lv: c.Sf_Vp_Ip = undefined;
    try testing.expectSize(c.Sf_Vp_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_Ip C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_Ip(), .{ .v1 = .{}, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Vp_Ip());
    try testing.expectOk(c.send_Sf_Vp_Ip());
    try testing.expectOk(c.assert_Sf_Vp_Ip(.{ .v1 = .{}, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Sf_Vp_Ip(lv: c.Sf_Vp_Ip) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_Ip() c.Sf_Vp_Ip {
    return .{ .v1 = .{}, .v2 = null, .v3 = null };
}

// From CT_Snen_xab.c:41369:41389
// struct  Sf_Vp_L  {
//   struct empty v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Sf_Vp_L layout" {
    var lv: c.Sf_Vp_L = undefined;
    try testing.expectSize(c.Sf_Vp_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_L C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_L(), .{ .v1 = .{}, .v2 = null, .v3 = 485 });
    try testing.expectOk(c.assert_ret_Sf_Vp_L());
    try testing.expectOk(c.send_Sf_Vp_L());
    try testing.expectOk(c.assert_Sf_Vp_L(.{ .v1 = .{}, .v2 = null, .v3 = 485 }));
}
pub export fn zig_assert_Sf_Vp_L(lv: c.Sf_Vp_L) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 485) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_L() c.Sf_Vp_L {
    return .{ .v1 = .{}, .v2 = null, .v3 = 485 };
}

// From CT_Snen_xab.c:41394:41414
// struct  Sf_Vp_S  {
//   struct empty v1;
//   void *v2;
//   short v3;
// };

test "Sf_Vp_S layout" {
    var lv: c.Sf_Vp_S = undefined;
    try testing.expectSize(c.Sf_Vp_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_S C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_S(), .{ .v1 = .{}, .v2 = null, .v3 = 27649 });
    try testing.expectOk(c.assert_ret_Sf_Vp_S());
    try testing.expectOk(c.send_Sf_Vp_S());
    try testing.expectOk(c.assert_Sf_Vp_S(.{ .v1 = .{}, .v2 = null, .v3 = 27649 }));
}
pub export fn zig_assert_Sf_Vp_S(lv: c.Sf_Vp_S) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 27649) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_S() c.Sf_Vp_S {
    return .{ .v1 = .{}, .v2 = null, .v3 = 27649 };
}

// From CT_Snen_xab.c:41419:41439
// struct  Sf_Vp_Sf  {
//   struct empty v1;
//   void *v2;
//   struct empty v3;
// };

test "Sf_Vp_Sf layout" {
    var lv: c.Sf_Vp_Sf = undefined;
    try testing.expectSize(c.Sf_Vp_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Sf_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_Sf C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_Sf(), .{ .v1 = .{}, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Sf_Vp_Sf());
    try testing.expectOk(c.send_Sf_Vp_Sf());
    try testing.expectOk(c.assert_Sf_Vp_Sf(.{ .v1 = .{}, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Sf_Vp_Sf(lv: c.Sf_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_Sf() c.Sf_Vp_Sf {
    return .{ .v1 = .{}, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xab.c:41444:41464
// struct  Sf_Vp_Uc  {
//   struct empty v1;
//   void *v2;
//   unsigned char v3;
// };

test "Sf_Vp_Uc layout" {
    var lv: c.Sf_Vp_Uc = undefined;
    try testing.expectSize(c.Sf_Vp_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_Uc C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_Uc(), .{ .v1 = .{}, .v2 = null, .v3 = 89 });
    try testing.expectOk(c.assert_ret_Sf_Vp_Uc());
    try testing.expectOk(c.send_Sf_Vp_Uc());
    try testing.expectOk(c.assert_Sf_Vp_Uc(.{ .v1 = .{}, .v2 = null, .v3 = 89 }));
}
pub export fn zig_assert_Sf_Vp_Uc(lv: c.Sf_Vp_Uc) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 89) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_Uc() c.Sf_Vp_Uc {
    return .{ .v1 = .{}, .v2 = null, .v3 = 89 };
}

// From CT_Snen_xab.c:41469:41489
// struct  Sf_Vp_Ui  {
//   struct empty v1;
//   void *v2;
//   unsigned int v3;
// };

test "Sf_Vp_Ui layout" {
    var lv: c.Sf_Vp_Ui = undefined;
    try testing.expectSize(c.Sf_Vp_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_Ui C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_Ui(), .{ .v1 = .{}, .v2 = null, .v3 = 6312 });
    try testing.expectOk(c.assert_ret_Sf_Vp_Ui());
    try testing.expectOk(c.send_Sf_Vp_Ui());
    try testing.expectOk(c.assert_Sf_Vp_Ui(.{ .v1 = .{}, .v2 = null, .v3 = 6312 }));
}
pub export fn zig_assert_Sf_Vp_Ui(lv: c.Sf_Vp_Ui) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 6312) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_Ui() c.Sf_Vp_Ui {
    return .{ .v1 = .{}, .v2 = null, .v3 = 6312 };
}

// From CT_Snen_xab.c:41494:41514
// struct  Sf_Vp_Ul  {
//   struct empty v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Sf_Vp_Ul layout" {
    var lv: c.Sf_Vp_Ul = undefined;
    try testing.expectSize(c.Sf_Vp_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Sf_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_Ul C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_Ul(), .{ .v1 = .{}, .v2 = null, .v3 = 1311 });
    try testing.expectOk(c.assert_ret_Sf_Vp_Ul());
    try testing.expectOk(c.send_Sf_Vp_Ul());
    try testing.expectOk(c.assert_Sf_Vp_Ul(.{ .v1 = .{}, .v2 = null, .v3 = 1311 }));
}
pub export fn zig_assert_Sf_Vp_Ul(lv: c.Sf_Vp_Ul) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 1311) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_Ul() c.Sf_Vp_Ul {
    return .{ .v1 = .{}, .v2 = null, .v3 = 1311 };
}

// From CT_Snen_xab.c:41519:41539
// struct  Sf_Vp_Us  {
//   struct empty v1;
//   void *v2;
//   unsigned short v3;
// };

test "Sf_Vp_Us layout" {
    var lv: c.Sf_Vp_Us = undefined;
    try testing.expectSize(c.Sf_Vp_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_Us C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_Us(), .{ .v1 = .{}, .v2 = null, .v3 = 32340 });
    try testing.expectOk(c.assert_ret_Sf_Vp_Us());
    try testing.expectOk(c.send_Sf_Vp_Us());
    try testing.expectOk(c.assert_Sf_Vp_Us(.{ .v1 = .{}, .v2 = null, .v3 = 32340 }));
}
pub export fn zig_assert_Sf_Vp_Us(lv: c.Sf_Vp_Us) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != 32340) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_Us() c.Sf_Vp_Us {
    return .{ .v1 = .{}, .v2 = null, .v3 = 32340 };
}

// From CT_Snen_xab.c:41544:41564
// struct  Sf_Vp_Vp  {
//   struct empty v1;
//   void *v2;
//   void *v3;
// };

test "Sf_Vp_Vp layout" {
    var lv: c.Sf_Vp_Vp = undefined;
    try testing.expectSize(c.Sf_Vp_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Sf_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 0);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Sf_Vp_Vp C calls" {
    try testing.expectEqual(c.ret_Sf_Vp_Vp(), .{ .v1 = .{}, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Sf_Vp_Vp());
    try testing.expectOk(c.send_Sf_Vp_Vp());
    try testing.expectOk(c.assert_Sf_Vp_Vp(.{ .v1 = .{}, .v2 = null, .v3 = null }));
}
pub export fn zig_assert_Sf_Vp_Vp(lv: c.Sf_Vp_Vp) c_int {
    var err: c_int = 0;
    if (lv.v2 != null) err = 2;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Sf_Vp_Vp() c.Sf_Vp_Vp {
    return .{ .v1 = .{}, .v2 = null, .v3 = null };
}

// From CT_Snen_xab.c:42293:42313
// struct  Uc_C_Sf  {
//   unsigned char v1;
//   char v2;
//   struct empty v3;
// };

test "Uc_C_Sf layout" {
    var lv: c.Uc_C_Sf = undefined;
    try testing.expectSize(c.Uc_C_Sf, 2);
    try testing.expectAlign(c.Uc_C_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_C_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_C_Sf(), .{ .v1 = 78, .v2 = 113, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_C_Sf());
    try testing.expectOk(c.send_Uc_C_Sf());
    try testing.expectOk(c.assert_Uc_C_Sf(.{ .v1 = 78, .v2 = 113, .v3 = .{} }));
}
pub export fn zig_assert_Uc_C_Sf(lv: c.Uc_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 78) err = 1;
    if (lv.v2 != 113) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_C_Sf() c.Uc_C_Sf {
    return .{ .v1 = 78, .v2 = 113, .v3 = .{} };
}

// From CT_Snen_xab.c:42318:42338
// struct  Uc_D_Sf  {
//   unsigned char v1;
//   double v2;
//   struct empty v3;
// };

test "Uc_D_Sf layout" {
    var lv: c.Uc_D_Sf = undefined;
    try testing.expectSize(c.Uc_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_D_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_D_Sf(), .{ .v1 = 1, .v2 = 4.5, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_D_Sf());
    try testing.expectOk(c.send_Uc_D_Sf());
    try testing.expectOk(c.assert_Uc_D_Sf(.{ .v1 = 1, .v2 = 4.5, .v3 = .{} }));
}
pub export fn zig_assert_Uc_D_Sf(lv: c.Uc_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_D_Sf() c.Uc_D_Sf {
    return .{ .v1 = 1, .v2 = 4.5, .v3 = .{} };
}

// From CT_Snen_xab.c:42343:42363
// struct  Uc_F_Sf  {
//   unsigned char v1;
//   float v2;
//   struct empty v3;
// };

test "Uc_F_Sf layout" {
    var lv: c.Uc_F_Sf = undefined;
    try testing.expectSize(c.Uc_F_Sf, 8);
    try testing.expectAlign(c.Uc_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_F_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_F_Sf(), .{ .v1 = 20, .v2 = 0.5, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_F_Sf());
    try testing.expectOk(c.send_Uc_F_Sf());
    try testing.expectOk(c.assert_Uc_F_Sf(.{ .v1 = 20, .v2 = 0.5, .v3 = .{} }));
}
pub export fn zig_assert_Uc_F_Sf(lv: c.Uc_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_F_Sf() c.Uc_F_Sf {
    return .{ .v1 = 20, .v2 = 0.5, .v3 = .{} };
}

// From CT_Snen_xab.c:42368:42388
// struct  Uc_I_Sf  {
//   unsigned char v1;
//   int v2;
//   struct empty v3;
// };

test "Uc_I_Sf layout" {
    var lv: c.Uc_I_Sf = undefined;
    try testing.expectSize(c.Uc_I_Sf, 8);
    try testing.expectAlign(c.Uc_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_I_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_I_Sf(), .{ .v1 = 120, .v2 = 19508, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_I_Sf());
    try testing.expectOk(c.send_Uc_I_Sf());
    try testing.expectOk(c.assert_Uc_I_Sf(.{ .v1 = 120, .v2 = 19508, .v3 = .{} }));
}
pub export fn zig_assert_Uc_I_Sf(lv: c.Uc_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 120) err = 1;
    if (lv.v2 != 19508) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_I_Sf() c.Uc_I_Sf {
    return .{ .v1 = 120, .v2 = 19508, .v3 = .{} };
}

// From CT_Snen_xab.c:42393:42413
// struct  Uc_Ip_Sf  {
//   unsigned char v1;
//   int *v2;
//   struct empty v3;
// };

test "Uc_Ip_Sf layout" {
    var lv: c.Uc_Ip_Sf = undefined;
    try testing.expectSize(c.Uc_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Ip_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_Ip_Sf(), .{ .v1 = 44, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_Ip_Sf());
    try testing.expectOk(c.send_Uc_Ip_Sf());
    try testing.expectOk(c.assert_Uc_Ip_Sf(.{ .v1 = 44, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Uc_Ip_Sf(lv: c.Uc_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 44) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ip_Sf() c.Uc_Ip_Sf {
    return .{ .v1 = 44, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xab.c:42418:42438
// struct  Uc_L_Sf  {
//   unsigned char v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Uc_L_Sf layout" {
    var lv: c.Uc_L_Sf = undefined;
    try testing.expectSize(c.Uc_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_L_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_L_Sf(), .{ .v1 = 53, .v2 = 14467, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_L_Sf());
    try testing.expectOk(c.send_Uc_L_Sf());
    try testing.expectOk(c.assert_Uc_L_Sf(.{ .v1 = 53, .v2 = 14467, .v3 = .{} }));
}
pub export fn zig_assert_Uc_L_Sf(lv: c.Uc_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 53) err = 1;
    if (lv.v2 != 14467) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_L_Sf() c.Uc_L_Sf {
    return .{ .v1 = 53, .v2 = 14467, .v3 = .{} };
}

// From CT_Snen_xab.c:42443:42463
// struct  Uc_S_Sf  {
//   unsigned char v1;
//   short v2;
//   struct empty v3;
// };

test "Uc_S_Sf layout" {
    var lv: c.Uc_S_Sf = undefined;
    try testing.expectSize(c.Uc_S_Sf, 4);
    try testing.expectAlign(c.Uc_S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_S_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_S_Sf(), .{ .v1 = 104, .v2 = 28465, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_S_Sf());
    try testing.expectOk(c.send_Uc_S_Sf());
    try testing.expectOk(c.assert_Uc_S_Sf(.{ .v1 = 104, .v2 = 28465, .v3 = .{} }));
}
pub export fn zig_assert_Uc_S_Sf(lv: c.Uc_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 104) err = 1;
    if (lv.v2 != 28465) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_S_Sf() c.Uc_S_Sf {
    return .{ .v1 = 104, .v2 = 28465, .v3 = .{} };
}

// From CT_Snen_xab.c:42468:42486
// struct  Uc_Sf  {
//   unsigned char v1;
//   struct empty v2;
// };

test "Uc_Sf layout" {
    var lv: c.Uc_Sf = undefined;
    try testing.expectSize(c.Uc_Sf, 1);
    try testing.expectAlign(c.Uc_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}
test "Uc_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_Sf(), .{ .v1 = 5, .v2 = .{} });
    try testing.expectOk(c.assert_ret_Uc_Sf());
    try testing.expectOk(c.send_Uc_Sf());
    try testing.expectOk(c.assert_Uc_Sf(.{ .v1 = 5, .v2 = .{} }));
}
pub export fn zig_assert_Uc_Sf(lv: c.Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf() c.Uc_Sf {
    return .{ .v1 = 5, .v2 = .{} };
}

// From CT_Snen_xab.c:43215:43235
// struct  Uc_Sf_C  {
//   unsigned char v1;
//   struct empty v2;
//   char v3;
// };

test "Uc_Sf_C layout" {
    var lv: c.Uc_Sf_C = undefined;
    try testing.expectSize(c.Uc_Sf_C, 2);
    try testing.expectAlign(c.Uc_Sf_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "Uc_Sf_C C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_C(), .{ .v1 = 14, .v2 = .{}, .v3 = 97 });
    try testing.expectOk(c.assert_ret_Uc_Sf_C());
    try testing.expectOk(c.send_Uc_Sf_C());
    try testing.expectOk(c.assert_Uc_Sf_C(.{ .v1 = 14, .v2 = .{}, .v3 = 97 }));
}
pub export fn zig_assert_Uc_Sf_C(lv: c.Uc_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14) err = 1;
    if (lv.v3 != 97) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_C() c.Uc_Sf_C {
    return .{ .v1 = 14, .v2 = .{}, .v3 = 97 };
}

// From CT_Snen_xab.c:43240:43260
// struct  Uc_Sf_D  {
//   unsigned char v1;
//   struct empty v2;
//   double v3;
// };

test "Uc_Sf_D layout" {
    var lv: c.Uc_Sf_D = undefined;
    try testing.expectSize(c.Uc_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Sf_D C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_D(), .{ .v1 = 58, .v2 = .{}, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Uc_Sf_D());
    try testing.expectOk(c.send_Uc_Sf_D());
    try testing.expectOk(c.assert_Uc_Sf_D(.{ .v1 = 58, .v2 = .{}, .v3 = 4.5 }));
}
pub export fn zig_assert_Uc_Sf_D(lv: c.Uc_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 58) err = 1;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_D() c.Uc_Sf_D {
    return .{ .v1 = 58, .v2 = .{}, .v3 = 4.5 };
}

// From CT_Snen_xab.c:43265:43285
// struct  Uc_Sf_F  {
//   unsigned char v1;
//   struct empty v2;
//   float v3;
// };

test "Uc_Sf_F layout" {
    var lv: c.Uc_Sf_F = undefined;
    try testing.expectSize(c.Uc_Sf_F, 8);
    try testing.expectAlign(c.Uc_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Sf_F C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_F(), .{ .v1 = 117, .v2 = .{}, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Uc_Sf_F());
    try testing.expectOk(c.send_Uc_Sf_F());
    try testing.expectOk(c.assert_Uc_Sf_F(.{ .v1 = 117, .v2 = .{}, .v3 = 1.0 }));
}
pub export fn zig_assert_Uc_Sf_F(lv: c.Uc_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 117) err = 1;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_F() c.Uc_Sf_F {
    return .{ .v1 = 117, .v2 = .{}, .v3 = 1.0 };
}

// From CT_Snen_xab.c:43290:43310
// struct  Uc_Sf_I  {
//   unsigned char v1;
//   struct empty v2;
//   int v3;
// };

test "Uc_Sf_I layout" {
    var lv: c.Uc_Sf_I = undefined;
    try testing.expectSize(c.Uc_Sf_I, 8);
    try testing.expectAlign(c.Uc_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Sf_I C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_I(), .{ .v1 = 20, .v2 = .{}, .v3 = 28740 });
    try testing.expectOk(c.assert_ret_Uc_Sf_I());
    try testing.expectOk(c.send_Uc_Sf_I());
    try testing.expectOk(c.assert_Uc_Sf_I(.{ .v1 = 20, .v2 = .{}, .v3 = 28740 }));
}
pub export fn zig_assert_Uc_Sf_I(lv: c.Uc_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20) err = 1;
    if (lv.v3 != 28740) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_I() c.Uc_Sf_I {
    return .{ .v1 = 20, .v2 = .{}, .v3 = 28740 };
}

// From CT_Snen_xab.c:43315:43335
// struct  Uc_Sf_Ip  {
//   unsigned char v1;
//   struct empty v2;
//   int *v3;
// };

test "Uc_Sf_Ip layout" {
    var lv: c.Uc_Sf_Ip = undefined;
    try testing.expectSize(c.Uc_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Sf_Ip C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_Ip(), .{ .v1 = 123, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Uc_Sf_Ip());
    try testing.expectOk(c.send_Uc_Sf_Ip());
    try testing.expectOk(c.assert_Uc_Sf_Ip(.{ .v1 = 123, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Uc_Sf_Ip(lv: c.Uc_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 123) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_Ip() c.Uc_Sf_Ip {
    return .{ .v1 = 123, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:43340:43360
// struct  Uc_Sf_L  {
//   unsigned char v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Uc_Sf_L layout" {
    var lv: c.Uc_Sf_L = undefined;
    try testing.expectSize(c.Uc_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Sf_L C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_L(), .{ .v1 = 41, .v2 = .{}, .v3 = 2911 });
    try testing.expectOk(c.assert_ret_Uc_Sf_L());
    try testing.expectOk(c.send_Uc_Sf_L());
    try testing.expectOk(c.assert_Uc_Sf_L(.{ .v1 = 41, .v2 = .{}, .v3 = 2911 }));
}
pub export fn zig_assert_Uc_Sf_L(lv: c.Uc_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 41) err = 1;
    if (lv.v3 != 2911) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_L() c.Uc_Sf_L {
    return .{ .v1 = 41, .v2 = .{}, .v3 = 2911 };
}

// From CT_Snen_xab.c:43365:43385
// struct  Uc_Sf_S  {
//   unsigned char v1;
//   struct empty v2;
//   short v3;
// };

test "Uc_Sf_S layout" {
    var lv: c.Uc_Sf_S = undefined;
    try testing.expectSize(c.Uc_Sf_S, 4);
    try testing.expectAlign(c.Uc_Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_Sf_S C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_S(), .{ .v1 = 66, .v2 = .{}, .v3 = 590 });
    try testing.expectOk(c.assert_ret_Uc_Sf_S());
    try testing.expectOk(c.send_Uc_Sf_S());
    try testing.expectOk(c.assert_Uc_Sf_S(.{ .v1 = 66, .v2 = .{}, .v3 = 590 }));
}
pub export fn zig_assert_Uc_Sf_S(lv: c.Uc_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 66) err = 1;
    if (lv.v3 != 590) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_S() c.Uc_Sf_S {
    return .{ .v1 = 66, .v2 = .{}, .v3 = 590 };
}

// From CT_Snen_xab.c:43390:43410
// struct  Uc_Sf_Sf  {
//   unsigned char v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Uc_Sf_Sf layout" {
    var lv: c.Uc_Sf_Sf = undefined;
    try testing.expectSize(c.Uc_Sf_Sf, 1);
    try testing.expectAlign(c.Uc_Sf_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "Uc_Sf_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_Sf(), .{ .v1 = 49, .v2 = .{}, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_Sf_Sf());
    try testing.expectOk(c.send_Uc_Sf_Sf());
    try testing.expectOk(c.assert_Uc_Sf_Sf(.{ .v1 = 49, .v2 = .{}, .v3 = .{} }));
}
pub export fn zig_assert_Uc_Sf_Sf(lv: c.Uc_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 49) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_Sf() c.Uc_Sf_Sf {
    return .{ .v1 = 49, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xab.c:43415:43435
// struct  Uc_Sf_Uc  {
//   unsigned char v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Uc_Sf_Uc layout" {
    var lv: c.Uc_Sf_Uc = undefined;
    try testing.expectSize(c.Uc_Sf_Uc, 2);
    try testing.expectAlign(c.Uc_Sf_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 1);
}
test "Uc_Sf_Uc C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_Uc(), .{ .v1 = 87, .v2 = .{}, .v3 = 64 });
    try testing.expectOk(c.assert_ret_Uc_Sf_Uc());
    try testing.expectOk(c.send_Uc_Sf_Uc());
    try testing.expectOk(c.assert_Uc_Sf_Uc(.{ .v1 = 87, .v2 = .{}, .v3 = 64 }));
}
pub export fn zig_assert_Uc_Sf_Uc(lv: c.Uc_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 87) err = 1;
    if (lv.v3 != 64) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_Uc() c.Uc_Sf_Uc {
    return .{ .v1 = 87, .v2 = .{}, .v3 = 64 };
}

// From CT_Snen_xab.c:43440:43460
// struct  Uc_Sf_Ui  {
//   unsigned char v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Uc_Sf_Ui layout" {
    var lv: c.Uc_Sf_Ui = undefined;
    try testing.expectSize(c.Uc_Sf_Ui, 8);
    try testing.expectAlign(c.Uc_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Sf_Ui C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_Ui(), .{ .v1 = 1, .v2 = .{}, .v3 = 23052 });
    try testing.expectOk(c.assert_ret_Uc_Sf_Ui());
    try testing.expectOk(c.send_Uc_Sf_Ui());
    try testing.expectOk(c.assert_Uc_Sf_Ui(.{ .v1 = 1, .v2 = .{}, .v3 = 23052 }));
}
pub export fn zig_assert_Uc_Sf_Ui(lv: c.Uc_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1) err = 1;
    if (lv.v3 != 23052) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_Ui() c.Uc_Sf_Ui {
    return .{ .v1 = 1, .v2 = .{}, .v3 = 23052 };
}

// From CT_Snen_xab.c:43465:43485
// struct  Uc_Sf_Ul  {
//   unsigned char v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Uc_Sf_Ul layout" {
    var lv: c.Uc_Sf_Ul = undefined;
    try testing.expectSize(c.Uc_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Sf_Ul C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_Ul(), .{ .v1 = 49, .v2 = .{}, .v3 = 14954 });
    try testing.expectOk(c.assert_ret_Uc_Sf_Ul());
    try testing.expectOk(c.send_Uc_Sf_Ul());
    try testing.expectOk(c.assert_Uc_Sf_Ul(.{ .v1 = 49, .v2 = .{}, .v3 = 14954 }));
}
pub export fn zig_assert_Uc_Sf_Ul(lv: c.Uc_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 49) err = 1;
    if (lv.v3 != 14954) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_Ul() c.Uc_Sf_Ul {
    return .{ .v1 = 49, .v2 = .{}, .v3 = 14954 };
}

// From CT_Snen_xab.c:43490:43510
// struct  Uc_Sf_Us  {
//   unsigned char v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Uc_Sf_Us layout" {
    var lv: c.Uc_Sf_Us = undefined;
    try testing.expectSize(c.Uc_Sf_Us, 4);
    try testing.expectAlign(c.Uc_Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_Sf_Us C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_Us(), .{ .v1 = 6, .v2 = .{}, .v3 = 26448 });
    try testing.expectOk(c.assert_ret_Uc_Sf_Us());
    try testing.expectOk(c.send_Uc_Sf_Us());
    try testing.expectOk(c.assert_Uc_Sf_Us(.{ .v1 = 6, .v2 = .{}, .v3 = 26448 }));
}
pub export fn zig_assert_Uc_Sf_Us(lv: c.Uc_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6) err = 1;
    if (lv.v3 != 26448) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_Us() c.Uc_Sf_Us {
    return .{ .v1 = 6, .v2 = .{}, .v3 = 26448 };
}

// From CT_Snen_xab.c:43515:43535
// struct  Uc_Sf_Vp  {
//   unsigned char v1;
//   struct empty v2;
//   void *v3;
// };

test "Uc_Sf_Vp layout" {
    var lv: c.Uc_Sf_Vp = undefined;
    try testing.expectSize(c.Uc_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Uc_Sf_Vp C calls" {
    try testing.expectEqual(c.ret_Uc_Sf_Vp(), .{ .v1 = 109, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Uc_Sf_Vp());
    try testing.expectOk(c.send_Uc_Sf_Vp());
    try testing.expectOk(c.assert_Uc_Sf_Vp(.{ .v1 = 109, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Uc_Sf_Vp(lv: c.Uc_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 109) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Sf_Vp() c.Uc_Sf_Vp {
    return .{ .v1 = 109, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:43540:43560
// struct  Uc_Uc_Sf  {
//   unsigned char v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Uc_Uc_Sf layout" {
    var lv: c.Uc_Uc_Sf = undefined;
    try testing.expectSize(c.Uc_Uc_Sf, 2);
    try testing.expectAlign(c.Uc_Uc_Sf, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Uc_Uc_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_Uc_Sf(), .{ .v1 = 70, .v2 = 13, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_Uc_Sf());
    try testing.expectOk(c.send_Uc_Uc_Sf());
    try testing.expectOk(c.assert_Uc_Uc_Sf(.{ .v1 = 70, .v2 = 13, .v3 = .{} }));
}
pub export fn zig_assert_Uc_Uc_Sf(lv: c.Uc_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 70) err = 1;
    if (lv.v2 != 13) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Uc_Sf() c.Uc_Uc_Sf {
    return .{ .v1 = 70, .v2 = 13, .v3 = .{} };
}

// From CT_Snen_xab.c:43565:43585
// struct  Uc_Ui_Sf  {
//   unsigned char v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Uc_Ui_Sf layout" {
    var lv: c.Uc_Ui_Sf = undefined;
    try testing.expectSize(c.Uc_Ui_Sf, 8);
    try testing.expectAlign(c.Uc_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Uc_Ui_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_Ui_Sf(), .{ .v1 = 117, .v2 = 32327, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_Ui_Sf());
    try testing.expectOk(c.send_Uc_Ui_Sf());
    try testing.expectOk(c.assert_Uc_Ui_Sf(.{ .v1 = 117, .v2 = 32327, .v3 = .{} }));
}
pub export fn zig_assert_Uc_Ui_Sf(lv: c.Uc_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 117) err = 1;
    if (lv.v2 != 32327) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ui_Sf() c.Uc_Ui_Sf {
    return .{ .v1 = 117, .v2 = 32327, .v3 = .{} };
}

// From CT_Snen_xab.c:43590:43610
// struct  Uc_Ul_Sf  {
//   unsigned char v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Uc_Ul_Sf layout" {
    var lv: c.Uc_Ul_Sf = undefined;
    try testing.expectSize(c.Uc_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Uc_Ul_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_Ul_Sf(), .{ .v1 = 52, .v2 = 11726, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_Ul_Sf());
    try testing.expectOk(c.send_Uc_Ul_Sf());
    try testing.expectOk(c.assert_Uc_Ul_Sf(.{ .v1 = 52, .v2 = 11726, .v3 = .{} }));
}
pub export fn zig_assert_Uc_Ul_Sf(lv: c.Uc_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 52) err = 1;
    if (lv.v2 != 11726) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Ul_Sf() c.Uc_Ul_Sf {
    return .{ .v1 = 52, .v2 = 11726, .v3 = .{} };
}

// From CT_Snen_xab.c:43615:43635
// struct  Uc_Us_Sf  {
//   unsigned char v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Uc_Us_Sf layout" {
    var lv: c.Uc_Us_Sf = undefined;
    try testing.expectSize(c.Uc_Us_Sf, 4);
    try testing.expectAlign(c.Uc_Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Uc_Us_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_Us_Sf(), .{ .v1 = 74, .v2 = 2465, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_Us_Sf());
    try testing.expectOk(c.send_Uc_Us_Sf());
    try testing.expectOk(c.assert_Uc_Us_Sf(.{ .v1 = 74, .v2 = 2465, .v3 = .{} }));
}
pub export fn zig_assert_Uc_Us_Sf(lv: c.Uc_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 74) err = 1;
    if (lv.v2 != 2465) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Us_Sf() c.Uc_Us_Sf {
    return .{ .v1 = 74, .v2 = 2465, .v3 = .{} };
}

// From CT_Snen_xab.c:43640:43660
// struct  Uc_Vp_Sf  {
//   unsigned char v1;
//   void *v2;
//   struct empty v3;
// };

test "Uc_Vp_Sf layout" {
    var lv: c.Uc_Vp_Sf = undefined;
    try testing.expectSize(c.Uc_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Uc_Vp_Sf C calls" {
    try testing.expectEqual(c.ret_Uc_Vp_Sf(), .{ .v1 = 34, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Uc_Vp_Sf());
    try testing.expectOk(c.send_Uc_Vp_Sf());
    try testing.expectOk(c.assert_Uc_Vp_Sf(.{ .v1 = 34, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Uc_Vp_Sf(lv: c.Uc_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 34) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Uc_Vp_Sf() c.Uc_Vp_Sf {
    return .{ .v1 = 34, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xab.c:44389:44409
// struct  Ui_C_Sf  {
//   unsigned int v1;
//   char v2;
//   struct empty v3;
// };

test "Ui_C_Sf layout" {
    var lv: c.Ui_C_Sf = undefined;
    try testing.expectSize(c.Ui_C_Sf, 8);
    try testing.expectAlign(c.Ui_C_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "Ui_C_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_C_Sf(), .{ .v1 = 1880, .v2 = 19, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_C_Sf());
    try testing.expectOk(c.send_Ui_C_Sf());
    try testing.expectOk(c.assert_Ui_C_Sf(.{ .v1 = 1880, .v2 = 19, .v3 = .{} }));
}
pub export fn zig_assert_Ui_C_Sf(lv: c.Ui_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1880) err = 1;
    if (lv.v2 != 19) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_C_Sf() c.Ui_C_Sf {
    return .{ .v1 = 1880, .v2 = 19, .v3 = .{} };
}

// From CT_Snen_xab.c:44414:44434
// struct  Ui_D_Sf  {
//   unsigned int v1;
//   double v2;
//   struct empty v3;
// };

test "Ui_D_Sf layout" {
    var lv: c.Ui_D_Sf = undefined;
    try testing.expectSize(c.Ui_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_D_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_D_Sf(), .{ .v1 = 31555, .v2 = 7.0, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_D_Sf());
    try testing.expectOk(c.send_Ui_D_Sf());
    try testing.expectOk(c.assert_Ui_D_Sf(.{ .v1 = 31555, .v2 = 7.0, .v3 = .{} }));
}
pub export fn zig_assert_Ui_D_Sf(lv: c.Ui_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 31555) err = 1;
    if (lv.v2 != 7.0) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_D_Sf() c.Ui_D_Sf {
    return .{ .v1 = 31555, .v2 = 7.0, .v3 = .{} };
}

// From CT_Snen_xab.c:44439:44459
// struct  Ui_F_Sf  {
//   unsigned int v1;
//   float v2;
//   struct empty v3;
// };

test "Ui_F_Sf layout" {
    var lv: c.Ui_F_Sf = undefined;
    try testing.expectSize(c.Ui_F_Sf, 8);
    try testing.expectAlign(c.Ui_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_F_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_F_Sf(), .{ .v1 = 5835, .v2 = 4.5, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_F_Sf());
    try testing.expectOk(c.send_Ui_F_Sf());
    try testing.expectOk(c.assert_Ui_F_Sf(.{ .v1 = 5835, .v2 = 4.5, .v3 = .{} }));
}
pub export fn zig_assert_Ui_F_Sf(lv: c.Ui_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5835) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_F_Sf() c.Ui_F_Sf {
    return .{ .v1 = 5835, .v2 = 4.5, .v3 = .{} };
}

// From CT_Snen_xab.c:44464:44484
// struct  Ui_I_Sf  {
//   unsigned int v1;
//   int v2;
//   struct empty v3;
// };

test "Ui_I_Sf layout" {
    var lv: c.Ui_I_Sf = undefined;
    try testing.expectSize(c.Ui_I_Sf, 8);
    try testing.expectAlign(c.Ui_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_I_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_I_Sf(), .{ .v1 = 23206, .v2 = 6394, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_I_Sf());
    try testing.expectOk(c.send_Ui_I_Sf());
    try testing.expectOk(c.assert_Ui_I_Sf(.{ .v1 = 23206, .v2 = 6394, .v3 = .{} }));
}
pub export fn zig_assert_Ui_I_Sf(lv: c.Ui_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23206) err = 1;
    if (lv.v2 != 6394) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_I_Sf() c.Ui_I_Sf {
    return .{ .v1 = 23206, .v2 = 6394, .v3 = .{} };
}

// From CT_Snen_xab.c:44489:44509
// struct  Ui_Ip_Sf  {
//   unsigned int v1;
//   int *v2;
//   struct empty v3;
// };

test "Ui_Ip_Sf layout" {
    var lv: c.Ui_Ip_Sf = undefined;
    try testing.expectSize(c.Ui_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Ip_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_Ip_Sf(), .{ .v1 = 30402, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_Ip_Sf());
    try testing.expectOk(c.send_Ui_Ip_Sf());
    try testing.expectOk(c.assert_Ui_Ip_Sf(.{ .v1 = 30402, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Ui_Ip_Sf(lv: c.Ui_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30402) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ip_Sf() c.Ui_Ip_Sf {
    return .{ .v1 = 30402, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xab.c:44514:44534
// struct  Ui_L_Sf  {
//   unsigned int v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Ui_L_Sf layout" {
    var lv: c.Ui_L_Sf = undefined;
    try testing.expectSize(c.Ui_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_L_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_L_Sf(), .{ .v1 = 2770, .v2 = 8571, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_L_Sf());
    try testing.expectOk(c.send_Ui_L_Sf());
    try testing.expectOk(c.assert_Ui_L_Sf(.{ .v1 = 2770, .v2 = 8571, .v3 = .{} }));
}
pub export fn zig_assert_Ui_L_Sf(lv: c.Ui_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2770) err = 1;
    if (lv.v2 != 8571) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_L_Sf() c.Ui_L_Sf {
    return .{ .v1 = 2770, .v2 = 8571, .v3 = .{} };
}

// From CT_Snen_xab.c:44539:44559
// struct  Ui_S_Sf  {
//   unsigned int v1;
//   short v2;
//   struct empty v3;
// };

test "Ui_S_Sf layout" {
    var lv: c.Ui_S_Sf = undefined;
    try testing.expectSize(c.Ui_S_Sf, 8);
    try testing.expectAlign(c.Ui_S_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_S_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_S_Sf(), .{ .v1 = 2774, .v2 = 18682, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_S_Sf());
    try testing.expectOk(c.send_Ui_S_Sf());
    try testing.expectOk(c.assert_Ui_S_Sf(.{ .v1 = 2774, .v2 = 18682, .v3 = .{} }));
}
pub export fn zig_assert_Ui_S_Sf(lv: c.Ui_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2774) err = 1;
    if (lv.v2 != 18682) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_S_Sf() c.Ui_S_Sf {
    return .{ .v1 = 2774, .v2 = 18682, .v3 = .{} };
}

// From CT_Snen_xab.c:44564:44582
// struct  Ui_Sf  {
//   unsigned int v1;
//   struct empty v2;
// };

test "Ui_Sf layout" {
    var lv: c.Ui_Sf = undefined;
    try testing.expectSize(c.Ui_Sf, 4);
    try testing.expectAlign(c.Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Ui_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_Sf(), .{ .v1 = 14285, .v2 = .{} });
    try testing.expectOk(c.assert_ret_Ui_Sf());
    try testing.expectOk(c.send_Ui_Sf());
    try testing.expectOk(c.assert_Ui_Sf(.{ .v1 = 14285, .v2 = .{} }));
}
pub export fn zig_assert_Ui_Sf(lv: c.Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14285) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf() c.Ui_Sf {
    return .{ .v1 = 14285, .v2 = .{} };
}

// From CT_Snen_xab.c:45311:45331
// struct  Ui_Sf_C  {
//   unsigned int v1;
//   struct empty v2;
//   char v3;
// };

test "Ui_Sf_C layout" {
    var lv: c.Ui_Sf_C = undefined;
    try testing.expectSize(c.Ui_Sf_C, 8);
    try testing.expectAlign(c.Ui_Sf_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Ui_Sf_C C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_C(), .{ .v1 = 2180, .v2 = .{}, .v3 = 24 });
    try testing.expectOk(c.assert_ret_Ui_Sf_C());
    try testing.expectOk(c.send_Ui_Sf_C());
    try testing.expectOk(c.assert_Ui_Sf_C(.{ .v1 = 2180, .v2 = .{}, .v3 = 24 }));
}
pub export fn zig_assert_Ui_Sf_C(lv: c.Ui_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2180) err = 1;
    if (lv.v3 != 24) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_C() c.Ui_Sf_C {
    return .{ .v1 = 2180, .v2 = .{}, .v3 = 24 };
}

// From CT_Snen_xab.c:45336:45356
// struct  Ui_Sf_D  {
//   unsigned int v1;
//   struct empty v2;
//   double v3;
// };

test "Ui_Sf_D layout" {
    var lv: c.Ui_Sf_D = undefined;
    try testing.expectSize(c.Ui_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ui_Sf_D C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_D(), .{ .v1 = 20357, .v2 = .{}, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Ui_Sf_D());
    try testing.expectOk(c.send_Ui_Sf_D());
    try testing.expectOk(c.assert_Ui_Sf_D(.{ .v1 = 20357, .v2 = .{}, .v3 = 4.5 }));
}
pub export fn zig_assert_Ui_Sf_D(lv: c.Ui_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 20357) err = 1;
    if (lv.v3 != 4.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_D() c.Ui_Sf_D {
    return .{ .v1 = 20357, .v2 = .{}, .v3 = 4.5 };
}

// From CT_Snen_xab.c:45361:45381
// struct  Ui_Sf_F  {
//   unsigned int v1;
//   struct empty v2;
//   float v3;
// };

test "Ui_Sf_F layout" {
    var lv: c.Ui_Sf_F = undefined;
    try testing.expectSize(c.Ui_Sf_F, 8);
    try testing.expectAlign(c.Ui_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Ui_Sf_F C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_F(), .{ .v1 = 17119, .v2 = .{}, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Ui_Sf_F());
    try testing.expectOk(c.send_Ui_Sf_F());
    try testing.expectOk(c.assert_Ui_Sf_F(.{ .v1 = 17119, .v2 = .{}, .v3 = 0.875 }));
}
pub export fn zig_assert_Ui_Sf_F(lv: c.Ui_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17119) err = 1;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_F() c.Ui_Sf_F {
    return .{ .v1 = 17119, .v2 = .{}, .v3 = 0.875 };
}

// From CT_Snen_xab.c:45386:45406
// struct  Ui_Sf_I  {
//   unsigned int v1;
//   struct empty v2;
//   int v3;
// };

test "Ui_Sf_I layout" {
    var lv: c.Ui_Sf_I = undefined;
    try testing.expectSize(c.Ui_Sf_I, 8);
    try testing.expectAlign(c.Ui_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Ui_Sf_I C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_I(), .{ .v1 = 27385, .v2 = .{}, .v3 = 1924 });
    try testing.expectOk(c.assert_ret_Ui_Sf_I());
    try testing.expectOk(c.send_Ui_Sf_I());
    try testing.expectOk(c.assert_Ui_Sf_I(.{ .v1 = 27385, .v2 = .{}, .v3 = 1924 }));
}
pub export fn zig_assert_Ui_Sf_I(lv: c.Ui_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27385) err = 1;
    if (lv.v3 != 1924) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_I() c.Ui_Sf_I {
    return .{ .v1 = 27385, .v2 = .{}, .v3 = 1924 };
}

// From CT_Snen_xab.c:45411:45431
// struct  Ui_Sf_Ip  {
//   unsigned int v1;
//   struct empty v2;
//   int *v3;
// };

test "Ui_Sf_Ip layout" {
    var lv: c.Ui_Sf_Ip = undefined;
    try testing.expectSize(c.Ui_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ui_Sf_Ip C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_Ip(), .{ .v1 = 22315, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Ui_Sf_Ip());
    try testing.expectOk(c.send_Ui_Sf_Ip());
    try testing.expectOk(c.assert_Ui_Sf_Ip(.{ .v1 = 22315, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Ui_Sf_Ip(lv: c.Ui_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22315) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_Ip() c.Ui_Sf_Ip {
    return .{ .v1 = 22315, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:45436:45456
// struct  Ui_Sf_L  {
//   unsigned int v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Ui_Sf_L layout" {
    var lv: c.Ui_Sf_L = undefined;
    try testing.expectSize(c.Ui_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ui_Sf_L C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_L(), .{ .v1 = 27723, .v2 = .{}, .v3 = 13696 });
    try testing.expectOk(c.assert_ret_Ui_Sf_L());
    try testing.expectOk(c.send_Ui_Sf_L());
    try testing.expectOk(c.assert_Ui_Sf_L(.{ .v1 = 27723, .v2 = .{}, .v3 = 13696 }));
}
pub export fn zig_assert_Ui_Sf_L(lv: c.Ui_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27723) err = 1;
    if (lv.v3 != 13696) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_L() c.Ui_Sf_L {
    return .{ .v1 = 27723, .v2 = .{}, .v3 = 13696 };
}

// From CT_Snen_xab.c:45461:45481
// struct  Ui_Sf_S  {
//   unsigned int v1;
//   struct empty v2;
//   short v3;
// };

test "Ui_Sf_S layout" {
    var lv: c.Ui_Sf_S = undefined;
    try testing.expectSize(c.Ui_Sf_S, 8);
    try testing.expectAlign(c.Ui_Sf_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Ui_Sf_S C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_S(), .{ .v1 = 12265, .v2 = .{}, .v3 = 31701 });
    try testing.expectOk(c.assert_ret_Ui_Sf_S());
    try testing.expectOk(c.send_Ui_Sf_S());
    try testing.expectOk(c.assert_Ui_Sf_S(.{ .v1 = 12265, .v2 = .{}, .v3 = 31701 }));
}
pub export fn zig_assert_Ui_Sf_S(lv: c.Ui_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12265) err = 1;
    if (lv.v3 != 31701) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_S() c.Ui_Sf_S {
    return .{ .v1 = 12265, .v2 = .{}, .v3 = 31701 };
}

// From CT_Snen_xab.c:45486:45506
// struct  Ui_Sf_Sf  {
//   unsigned int v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Ui_Sf_Sf layout" {
    var lv: c.Ui_Sf_Sf = undefined;
    try testing.expectSize(c.Ui_Sf_Sf, 4);
    try testing.expectAlign(c.Ui_Sf_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Ui_Sf_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_Sf(), .{ .v1 = 30122, .v2 = .{}, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_Sf_Sf());
    try testing.expectOk(c.send_Ui_Sf_Sf());
    try testing.expectOk(c.assert_Ui_Sf_Sf(.{ .v1 = 30122, .v2 = .{}, .v3 = .{} }));
}
pub export fn zig_assert_Ui_Sf_Sf(lv: c.Ui_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 30122) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_Sf() c.Ui_Sf_Sf {
    return .{ .v1 = 30122, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xab.c:45511:45531
// struct  Ui_Sf_Uc  {
//   unsigned int v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Ui_Sf_Uc layout" {
    var lv: c.Ui_Sf_Uc = undefined;
    try testing.expectSize(c.Ui_Sf_Uc, 8);
    try testing.expectAlign(c.Ui_Sf_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Ui_Sf_Uc C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_Uc(), .{ .v1 = 6491, .v2 = .{}, .v3 = 3 });
    try testing.expectOk(c.assert_ret_Ui_Sf_Uc());
    try testing.expectOk(c.send_Ui_Sf_Uc());
    try testing.expectOk(c.assert_Ui_Sf_Uc(.{ .v1 = 6491, .v2 = .{}, .v3 = 3 }));
}
pub export fn zig_assert_Ui_Sf_Uc(lv: c.Ui_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6491) err = 1;
    if (lv.v3 != 3) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_Uc() c.Ui_Sf_Uc {
    return .{ .v1 = 6491, .v2 = .{}, .v3 = 3 };
}

// From CT_Snen_xab.c:45536:45556
// struct  Ui_Sf_Ui  {
//   unsigned int v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Ui_Sf_Ui layout" {
    var lv: c.Ui_Sf_Ui = undefined;
    try testing.expectSize(c.Ui_Sf_Ui, 8);
    try testing.expectAlign(c.Ui_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Ui_Sf_Ui C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_Ui(), .{ .v1 = 7660, .v2 = .{}, .v3 = 9839 });
    try testing.expectOk(c.assert_ret_Ui_Sf_Ui());
    try testing.expectOk(c.send_Ui_Sf_Ui());
    try testing.expectOk(c.assert_Ui_Sf_Ui(.{ .v1 = 7660, .v2 = .{}, .v3 = 9839 }));
}
pub export fn zig_assert_Ui_Sf_Ui(lv: c.Ui_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7660) err = 1;
    if (lv.v3 != 9839) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_Ui() c.Ui_Sf_Ui {
    return .{ .v1 = 7660, .v2 = .{}, .v3 = 9839 };
}

// From CT_Snen_xab.c:45561:45581
// struct  Ui_Sf_Ul  {
//   unsigned int v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Ui_Sf_Ul layout" {
    var lv: c.Ui_Sf_Ul = undefined;
    try testing.expectSize(c.Ui_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ui_Sf_Ul C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_Ul(), .{ .v1 = 5702, .v2 = .{}, .v3 = 11850 });
    try testing.expectOk(c.assert_ret_Ui_Sf_Ul());
    try testing.expectOk(c.send_Ui_Sf_Ul());
    try testing.expectOk(c.assert_Ui_Sf_Ul(.{ .v1 = 5702, .v2 = .{}, .v3 = 11850 }));
}
pub export fn zig_assert_Ui_Sf_Ul(lv: c.Ui_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5702) err = 1;
    if (lv.v3 != 11850) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_Ul() c.Ui_Sf_Ul {
    return .{ .v1 = 5702, .v2 = .{}, .v3 = 11850 };
}

// From CT_Snen_xab.c:45586:45606
// struct  Ui_Sf_Us  {
//   unsigned int v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Ui_Sf_Us layout" {
    var lv: c.Ui_Sf_Us = undefined;
    try testing.expectSize(c.Ui_Sf_Us, 8);
    try testing.expectAlign(c.Ui_Sf_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Ui_Sf_Us C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_Us(), .{ .v1 = 25466, .v2 = .{}, .v3 = 5720 });
    try testing.expectOk(c.assert_ret_Ui_Sf_Us());
    try testing.expectOk(c.send_Ui_Sf_Us());
    try testing.expectOk(c.assert_Ui_Sf_Us(.{ .v1 = 25466, .v2 = .{}, .v3 = 5720 }));
}
pub export fn zig_assert_Ui_Sf_Us(lv: c.Ui_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25466) err = 1;
    if (lv.v3 != 5720) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_Us() c.Ui_Sf_Us {
    return .{ .v1 = 25466, .v2 = .{}, .v3 = 5720 };
}

// From CT_Snen_xab.c:45611:45631
// struct  Ui_Sf_Vp  {
//   unsigned int v1;
//   struct empty v2;
//   void *v3;
// };

test "Ui_Sf_Vp layout" {
    var lv: c.Ui_Sf_Vp = undefined;
    try testing.expectSize(c.Ui_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Ui_Sf_Vp C calls" {
    try testing.expectEqual(c.ret_Ui_Sf_Vp(), .{ .v1 = 8452, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Ui_Sf_Vp());
    try testing.expectOk(c.send_Ui_Sf_Vp());
    try testing.expectOk(c.assert_Ui_Sf_Vp(.{ .v1 = 8452, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Ui_Sf_Vp(lv: c.Ui_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8452) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Sf_Vp() c.Ui_Sf_Vp {
    return .{ .v1 = 8452, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:45636:45656
// struct  Ui_Uc_Sf  {
//   unsigned int v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Ui_Uc_Sf layout" {
    var lv: c.Ui_Uc_Sf = undefined;
    try testing.expectSize(c.Ui_Uc_Sf, 8);
    try testing.expectAlign(c.Ui_Uc_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "Ui_Uc_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_Uc_Sf(), .{ .v1 = 12845, .v2 = 99, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_Uc_Sf());
    try testing.expectOk(c.send_Ui_Uc_Sf());
    try testing.expectOk(c.assert_Ui_Uc_Sf(.{ .v1 = 12845, .v2 = 99, .v3 = .{} }));
}
pub export fn zig_assert_Ui_Uc_Sf(lv: c.Ui_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 12845) err = 1;
    if (lv.v2 != 99) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Uc_Sf() c.Ui_Uc_Sf {
    return .{ .v1 = 12845, .v2 = 99, .v3 = .{} };
}

// From CT_Snen_xab.c:45661:45681
// struct  Ui_Ui_Sf  {
//   unsigned int v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Ui_Ui_Sf layout" {
    var lv: c.Ui_Ui_Sf = undefined;
    try testing.expectSize(c.Ui_Ui_Sf, 8);
    try testing.expectAlign(c.Ui_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ui_Ui_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_Ui_Sf(), .{ .v1 = 9661, .v2 = 18892, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_Ui_Sf());
    try testing.expectOk(c.send_Ui_Ui_Sf());
    try testing.expectOk(c.assert_Ui_Ui_Sf(.{ .v1 = 9661, .v2 = 18892, .v3 = .{} }));
}
pub export fn zig_assert_Ui_Ui_Sf(lv: c.Ui_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9661) err = 1;
    if (lv.v2 != 18892) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ui_Sf() c.Ui_Ui_Sf {
    return .{ .v1 = 9661, .v2 = 18892, .v3 = .{} };
}

// From CT_Snen_xab.c:45686:45706
// struct  Ui_Ul_Sf  {
//   unsigned int v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Ui_Ul_Sf layout" {
    var lv: c.Ui_Ul_Sf = undefined;
    try testing.expectSize(c.Ui_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ui_Ul_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_Ul_Sf(), .{ .v1 = 21775, .v2 = 27340, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_Ul_Sf());
    try testing.expectOk(c.send_Ui_Ul_Sf());
    try testing.expectOk(c.assert_Ui_Ul_Sf(.{ .v1 = 21775, .v2 = 27340, .v3 = .{} }));
}
pub export fn zig_assert_Ui_Ul_Sf(lv: c.Ui_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21775) err = 1;
    if (lv.v2 != 27340) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Ul_Sf() c.Ui_Ul_Sf {
    return .{ .v1 = 21775, .v2 = 27340, .v3 = .{} };
}

// From CT_Snen_xab.c:45711:45731
// struct  Ui_Us_Sf  {
//   unsigned int v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Ui_Us_Sf layout" {
    var lv: c.Ui_Us_Sf = undefined;
    try testing.expectSize(c.Ui_Us_Sf, 8);
    try testing.expectAlign(c.Ui_Us_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "Ui_Us_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_Us_Sf(), .{ .v1 = 2148, .v2 = 17060, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_Us_Sf());
    try testing.expectOk(c.send_Ui_Us_Sf());
    try testing.expectOk(c.assert_Ui_Us_Sf(.{ .v1 = 2148, .v2 = 17060, .v3 = .{} }));
}
pub export fn zig_assert_Ui_Us_Sf(lv: c.Ui_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2148) err = 1;
    if (lv.v2 != 17060) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Us_Sf() c.Ui_Us_Sf {
    return .{ .v1 = 2148, .v2 = 17060, .v3 = .{} };
}

// From CT_Snen_xab.c:45736:45756
// struct  Ui_Vp_Sf  {
//   unsigned int v1;
//   void *v2;
//   struct empty v3;
// };

test "Ui_Vp_Sf layout" {
    var lv: c.Ui_Vp_Sf = undefined;
    try testing.expectSize(c.Ui_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Ui_Vp_Sf C calls" {
    try testing.expectEqual(c.ret_Ui_Vp_Sf(), .{ .v1 = 22989, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ui_Vp_Sf());
    try testing.expectOk(c.send_Ui_Vp_Sf());
    try testing.expectOk(c.assert_Ui_Vp_Sf(.{ .v1 = 22989, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Ui_Vp_Sf(lv: c.Ui_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22989) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ui_Vp_Sf() c.Ui_Vp_Sf {
    return .{ .v1 = 22989, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xab.c:46485:46505
// struct  Ul_C_Sf  {
//   __tsu64 v1;
//   char v2;
//   struct empty v3;
// };

test "Ul_C_Sf layout" {
    var lv: c.Ul_C_Sf = undefined;
    try testing.expectSize(c.Ul_C_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "Ul_C_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_C_Sf(), .{ .v1 = 18329, .v2 = 78, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_C_Sf());
    try testing.expectOk(c.send_Ul_C_Sf());
    try testing.expectOk(c.assert_Ul_C_Sf(.{ .v1 = 18329, .v2 = 78, .v3 = .{} }));
}
pub export fn zig_assert_Ul_C_Sf(lv: c.Ul_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18329) err = 1;
    if (lv.v2 != 78) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_C_Sf() c.Ul_C_Sf {
    return .{ .v1 = 18329, .v2 = 78, .v3 = .{} };
}

// From CT_Snen_xab.c:46510:46530
// struct  Ul_D_Sf  {
//   __tsu64 v1;
//   double v2;
//   struct empty v3;
// };

test "Ul_D_Sf layout" {
    var lv: c.Ul_D_Sf = undefined;
    try testing.expectSize(c.Ul_D_Sf, 16);
    try testing.expectAlign(c.Ul_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_D_Sf(), .{ .v1 = 17076, .v2 = 0.875, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_D_Sf());
    try testing.expectOk(c.send_Ul_D_Sf());
    try testing.expectOk(c.assert_Ul_D_Sf(.{ .v1 = 17076, .v2 = 0.875, .v3 = .{} }));
}
pub export fn zig_assert_Ul_D_Sf(lv: c.Ul_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17076) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_D_Sf() c.Ul_D_Sf {
    return .{ .v1 = 17076, .v2 = 0.875, .v3 = .{} };
}

// From CT_Snen_xab.c:46535:46555
// struct  Ul_F_Sf  {
//   __tsu64 v1;
//   float v2;
//   struct empty v3;
// };

test "Ul_F_Sf layout" {
    var lv: c.Ul_F_Sf = undefined;
    try testing.expectSize(c.Ul_F_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_F_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_F_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_F_Sf(), .{ .v1 = 8774, .v2 = 0.875, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_F_Sf());
    try testing.expectOk(c.send_Ul_F_Sf());
    try testing.expectOk(c.assert_Ul_F_Sf(.{ .v1 = 8774, .v2 = 0.875, .v3 = .{} }));
}
pub export fn zig_assert_Ul_F_Sf(lv: c.Ul_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8774) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_F_Sf() c.Ul_F_Sf {
    return .{ .v1 = 8774, .v2 = 0.875, .v3 = .{} };
}

// From CT_Snen_xab.c:46560:46580
// struct  Ul_I_Sf  {
//   __tsu64 v1;
//   int v2;
//   struct empty v3;
// };

test "Ul_I_Sf layout" {
    var lv: c.Ul_I_Sf = undefined;
    try testing.expectSize(c.Ul_I_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_I_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_I_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_I_Sf(), .{ .v1 = 5250, .v2 = 10524, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_I_Sf());
    try testing.expectOk(c.send_Ul_I_Sf());
    try testing.expectOk(c.assert_Ul_I_Sf(.{ .v1 = 5250, .v2 = 10524, .v3 = .{} }));
}
pub export fn zig_assert_Ul_I_Sf(lv: c.Ul_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5250) err = 1;
    if (lv.v2 != 10524) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_I_Sf() c.Ul_I_Sf {
    return .{ .v1 = 5250, .v2 = 10524, .v3 = .{} };
}

// From CT_Snen_xab.c:46585:46605
// struct  Ul_Ip_Sf  {
//   __tsu64 v1;
//   int *v2;
//   struct empty v3;
// };

test "Ul_Ip_Sf layout" {
    var lv: c.Ul_Ip_Sf = undefined;
    try testing.expectSize(c.Ul_Ip_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_Sf(), .{ .v1 = 8361, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_Ip_Sf());
    try testing.expectOk(c.send_Ul_Ip_Sf());
    try testing.expectOk(c.assert_Ul_Ip_Sf(.{ .v1 = 8361, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Ul_Ip_Sf(lv: c.Ul_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 8361) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Ip_Sf() c.Ul_Ip_Sf {
    return .{ .v1 = 8361, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xab.c:46610:46630
// struct  Ul_L_Sf  {
//   __tsu64 v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Ul_L_Sf layout" {
    var lv: c.Ul_L_Sf = undefined;
    try testing.expectSize(c.Ul_L_Sf, 16);
    try testing.expectAlign(c.Ul_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_L_Sf(), .{ .v1 = 885, .v2 = 9377, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_L_Sf());
    try testing.expectOk(c.send_Ul_L_Sf());
    try testing.expectOk(c.assert_Ul_L_Sf(.{ .v1 = 885, .v2 = 9377, .v3 = .{} }));
}
pub export fn zig_assert_Ul_L_Sf(lv: c.Ul_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 885) err = 1;
    if (lv.v2 != 9377) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_L_Sf() c.Ul_L_Sf {
    return .{ .v1 = 885, .v2 = 9377, .v3 = .{} };
}

// From CT_Snen_xab.c:46635:46655
// struct  Ul_S_Sf  {
//   __tsu64 v1;
//   short v2;
//   struct empty v3;
// };

test "Ul_S_Sf layout" {
    var lv: c.Ul_S_Sf = undefined;
    try testing.expectSize(c.Ul_S_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_S_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_S_Sf(), .{ .v1 = 7804, .v2 = 25817, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_S_Sf());
    try testing.expectOk(c.send_Ul_S_Sf());
    try testing.expectOk(c.assert_Ul_S_Sf(.{ .v1 = 7804, .v2 = 25817, .v3 = .{} }));
}
pub export fn zig_assert_Ul_S_Sf(lv: c.Ul_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7804) err = 1;
    if (lv.v2 != 25817) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_S_Sf() c.Ul_S_Sf {
    return .{ .v1 = 7804, .v2 = 25817, .v3 = .{} };
}

// From CT_Snen_xab.c:46660:46678
// struct  Ul_Sf  {
//   __tsu64 v1;
//   struct empty v2;
// };

test "Ul_Sf layout" {
    var lv: c.Ul_Sf = undefined;
    try testing.expectSize(c.Ul_Sf, 8);
    try testing.expectAlign(c.Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_Sf(), .{ .v1 = 17437, .v2 = .{} });
    try testing.expectOk(c.assert_ret_Ul_Sf());
    try testing.expectOk(c.send_Ul_Sf());
    try testing.expectOk(c.assert_Ul_Sf(.{ .v1 = 17437, .v2 = .{} }));
}
pub export fn zig_assert_Ul_Sf(lv: c.Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17437) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf() c.Ul_Sf {
    return .{ .v1 = 17437, .v2 = .{} };
}

// From CT_Snen_xab.c:47407:47427
// struct  Ul_Sf_C  {
//   __tsu64 v1;
//   struct empty v2;
//   char v3;
// };

test "Ul_Sf_C layout" {
    var lv: c.Ul_Sf_C = undefined;
    try testing.expectSize(c.Ul_Sf_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_C C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_C(), .{ .v1 = 5722, .v2 = .{}, .v3 = 81 });
    try testing.expectOk(c.assert_ret_Ul_Sf_C());
    try testing.expectOk(c.send_Ul_Sf_C());
    try testing.expectOk(c.assert_Ul_Sf_C(.{ .v1 = 5722, .v2 = .{}, .v3 = 81 }));
}
pub export fn zig_assert_Ul_Sf_C(lv: c.Ul_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5722) err = 1;
    if (lv.v3 != 81) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_C() c.Ul_Sf_C {
    return .{ .v1 = 5722, .v2 = .{}, .v3 = 81 };
}

// From CT_Snen_xab.c:47432:47452
// struct  Ul_Sf_D  {
//   __tsu64 v1;
//   struct empty v2;
//   double v3;
// };

test "Ul_Sf_D layout" {
    var lv: c.Ul_Sf_D = undefined;
    try testing.expectSize(c.Ul_Sf_D, 16);
    try testing.expectAlign(c.Ul_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_D C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_D(), .{ .v1 = 9683, .v2 = .{}, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Ul_Sf_D());
    try testing.expectOk(c.send_Ul_Sf_D());
    try testing.expectOk(c.assert_Ul_Sf_D(.{ .v1 = 9683, .v2 = .{}, .v3 = -0.25 }));
}
pub export fn zig_assert_Ul_Sf_D(lv: c.Ul_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9683) err = 1;
    if (lv.v3 != -0.25) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_D() c.Ul_Sf_D {
    return .{ .v1 = 9683, .v2 = .{}, .v3 = -0.25 };
}

// From CT_Snen_xab.c:47457:47477
// struct  Ul_Sf_F  {
//   __tsu64 v1;
//   struct empty v2;
//   float v3;
// };

test "Ul_Sf_F layout" {
    var lv: c.Ul_Sf_F = undefined;
    try testing.expectSize(c.Ul_Sf_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_F C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_F(), .{ .v1 = 22637, .v2 = .{}, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Ul_Sf_F());
    try testing.expectOk(c.send_Ul_Sf_F());
    try testing.expectOk(c.assert_Ul_Sf_F(.{ .v1 = 22637, .v2 = .{}, .v3 = 1.0 }));
}
pub export fn zig_assert_Ul_Sf_F(lv: c.Ul_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22637) err = 1;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_F() c.Ul_Sf_F {
    return .{ .v1 = 22637, .v2 = .{}, .v3 = 1.0 };
}

// From CT_Snen_xab.c:47482:47502
// struct  Ul_Sf_I  {
//   __tsu64 v1;
//   struct empty v2;
//   int v3;
// };

test "Ul_Sf_I layout" {
    var lv: c.Ul_Sf_I = undefined;
    try testing.expectSize(c.Ul_Sf_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_I C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_I(), .{ .v1 = 25218, .v2 = .{}, .v3 = 3859 });
    try testing.expectOk(c.assert_ret_Ul_Sf_I());
    try testing.expectOk(c.send_Ul_Sf_I());
    try testing.expectOk(c.assert_Ul_Sf_I(.{ .v1 = 25218, .v2 = .{}, .v3 = 3859 }));
}
pub export fn zig_assert_Ul_Sf_I(lv: c.Ul_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25218) err = 1;
    if (lv.v3 != 3859) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_I() c.Ul_Sf_I {
    return .{ .v1 = 25218, .v2 = .{}, .v3 = 3859 };
}

// From CT_Snen_xab.c:47507:47527
// struct  Ul_Sf_Ip  {
//   __tsu64 v1;
//   struct empty v2;
//   int *v3;
// };

test "Ul_Sf_Ip layout" {
    var lv: c.Ul_Sf_Ip = undefined;
    try testing.expectSize(c.Ul_Sf_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_Ip(), .{ .v1 = 19206, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Sf_Ip());
    try testing.expectOk(c.send_Ul_Sf_Ip());
    try testing.expectOk(c.assert_Ul_Sf_Ip(.{ .v1 = 19206, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Ul_Sf_Ip(lv: c.Ul_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19206) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_Ip() c.Ul_Sf_Ip {
    return .{ .v1 = 19206, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:47532:47552
// struct  Ul_Sf_L  {
//   __tsu64 v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Ul_Sf_L layout" {
    var lv: c.Ul_Sf_L = undefined;
    try testing.expectSize(c.Ul_Sf_L, 16);
    try testing.expectAlign(c.Ul_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_L C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_L(), .{ .v1 = 18084, .v2 = .{}, .v3 = 27910 });
    try testing.expectOk(c.assert_ret_Ul_Sf_L());
    try testing.expectOk(c.send_Ul_Sf_L());
    try testing.expectOk(c.assert_Ul_Sf_L(.{ .v1 = 18084, .v2 = .{}, .v3 = 27910 }));
}
pub export fn zig_assert_Ul_Sf_L(lv: c.Ul_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18084) err = 1;
    if (lv.v3 != 27910) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_L() c.Ul_Sf_L {
    return .{ .v1 = 18084, .v2 = .{}, .v3 = 27910 };
}

// From CT_Snen_xab.c:47557:47577
// struct  Ul_Sf_S  {
//   __tsu64 v1;
//   struct empty v2;
//   short v3;
// };

test "Ul_Sf_S layout" {
    var lv: c.Ul_Sf_S = undefined;
    try testing.expectSize(c.Ul_Sf_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_S C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_S(), .{ .v1 = 7913, .v2 = .{}, .v3 = 18298 });
    try testing.expectOk(c.assert_ret_Ul_Sf_S());
    try testing.expectOk(c.send_Ul_Sf_S());
    try testing.expectOk(c.assert_Ul_Sf_S(.{ .v1 = 7913, .v2 = .{}, .v3 = 18298 }));
}
pub export fn zig_assert_Ul_Sf_S(lv: c.Ul_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7913) err = 1;
    if (lv.v3 != 18298) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_S() c.Ul_Sf_S {
    return .{ .v1 = 7913, .v2 = .{}, .v3 = 18298 };
}

// From CT_Snen_xab.c:47582:47602
// struct  Ul_Sf_Sf  {
//   __tsu64 v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Ul_Sf_Sf layout" {
    var lv: c.Ul_Sf_Sf = undefined;
    try testing.expectSize(c.Ul_Sf_Sf, 8);
    try testing.expectAlign(c.Ul_Sf_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_Sf(), .{ .v1 = 22483, .v2 = .{}, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_Sf_Sf());
    try testing.expectOk(c.send_Ul_Sf_Sf());
    try testing.expectOk(c.assert_Ul_Sf_Sf(.{ .v1 = 22483, .v2 = .{}, .v3 = .{} }));
}
pub export fn zig_assert_Ul_Sf_Sf(lv: c.Ul_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22483) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_Sf() c.Ul_Sf_Sf {
    return .{ .v1 = 22483, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xab.c:47607:47627
// struct  Ul_Sf_Uc  {
//   __tsu64 v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Ul_Sf_Uc layout" {
    var lv: c.Ul_Sf_Uc = undefined;
    try testing.expectSize(c.Ul_Sf_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_Uc(), .{ .v1 = 25626, .v2 = .{}, .v3 = 103 });
    try testing.expectOk(c.assert_ret_Ul_Sf_Uc());
    try testing.expectOk(c.send_Ul_Sf_Uc());
    try testing.expectOk(c.assert_Ul_Sf_Uc(.{ .v1 = 25626, .v2 = .{}, .v3 = 103 }));
}
pub export fn zig_assert_Ul_Sf_Uc(lv: c.Ul_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25626) err = 1;
    if (lv.v3 != 103) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_Uc() c.Ul_Sf_Uc {
    return .{ .v1 = 25626, .v2 = .{}, .v3 = 103 };
}

// From CT_Snen_xab.c:47632:47652
// struct  Ul_Sf_Ui  {
//   __tsu64 v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Ul_Sf_Ui layout" {
    var lv: c.Ul_Sf_Ui = undefined;
    try testing.expectSize(c.Ul_Sf_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_Ui(), .{ .v1 = 7343, .v2 = .{}, .v3 = 22116 });
    try testing.expectOk(c.assert_ret_Ul_Sf_Ui());
    try testing.expectOk(c.send_Ul_Sf_Ui());
    try testing.expectOk(c.assert_Ul_Sf_Ui(.{ .v1 = 7343, .v2 = .{}, .v3 = 22116 }));
}
pub export fn zig_assert_Ul_Sf_Ui(lv: c.Ul_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 7343) err = 1;
    if (lv.v3 != 22116) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_Ui() c.Ul_Sf_Ui {
    return .{ .v1 = 7343, .v2 = .{}, .v3 = 22116 };
}

// From CT_Snen_xab.c:47657:47677
// struct  Ul_Sf_Ul  {
//   __tsu64 v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Ul_Sf_Ul layout" {
    var lv: c.Ul_Sf_Ul = undefined;
    try testing.expectSize(c.Ul_Sf_Ul, 16);
    try testing.expectAlign(c.Ul_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_Ul(), .{ .v1 = 17694, .v2 = .{}, .v3 = 28378 });
    try testing.expectOk(c.assert_ret_Ul_Sf_Ul());
    try testing.expectOk(c.send_Ul_Sf_Ul());
    try testing.expectOk(c.assert_Ul_Sf_Ul(.{ .v1 = 17694, .v2 = .{}, .v3 = 28378 }));
}
pub export fn zig_assert_Ul_Sf_Ul(lv: c.Ul_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 17694) err = 1;
    if (lv.v3 != 28378) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_Ul() c.Ul_Sf_Ul {
    return .{ .v1 = 17694, .v2 = .{}, .v3 = 28378 };
}

// From CT_Snen_xab.c:47682:47702
// struct  Ul_Sf_Us  {
//   __tsu64 v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Ul_Sf_Us layout" {
    var lv: c.Ul_Sf_Us = undefined;
    try testing.expectSize(c.Ul_Sf_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_Us C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_Us(), .{ .v1 = 6207, .v2 = .{}, .v3 = 21801 });
    try testing.expectOk(c.assert_ret_Ul_Sf_Us());
    try testing.expectOk(c.send_Ul_Sf_Us());
    try testing.expectOk(c.assert_Ul_Sf_Us(.{ .v1 = 6207, .v2 = .{}, .v3 = 21801 }));
}
pub export fn zig_assert_Ul_Sf_Us(lv: c.Ul_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6207) err = 1;
    if (lv.v3 != 21801) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_Us() c.Ul_Sf_Us {
    return .{ .v1 = 6207, .v2 = .{}, .v3 = 21801 };
}

// From CT_Snen_xab.c:47707:47727
// struct  Ul_Sf_Vp  {
//   __tsu64 v1;
//   struct empty v2;
//   void *v3;
// };

test "Ul_Sf_Vp layout" {
    var lv: c.Ul_Sf_Vp = undefined;
    try testing.expectSize(c.Ul_Sf_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Ul_Sf_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_Sf_Vp(), .{ .v1 = 18194, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Sf_Vp());
    try testing.expectOk(c.send_Ul_Sf_Vp());
    try testing.expectOk(c.assert_Ul_Sf_Vp(.{ .v1 = 18194, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Ul_Sf_Vp(lv: c.Ul_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18194) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Sf_Vp() c.Ul_Sf_Vp {
    return .{ .v1 = 18194, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:47732:47752
// struct  Ul_Uc_Sf  {
//   __tsu64 v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Ul_Uc_Sf layout" {
    var lv: c.Ul_Uc_Sf = undefined;
    try testing.expectSize(c.Ul_Uc_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "Ul_Uc_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_Sf(), .{ .v1 = 14311, .v2 = 75, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_Uc_Sf());
    try testing.expectOk(c.send_Ul_Uc_Sf());
    try testing.expectOk(c.assert_Ul_Uc_Sf(.{ .v1 = 14311, .v2 = 75, .v3 = .{} }));
}
pub export fn zig_assert_Ul_Uc_Sf(lv: c.Ul_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14311) err = 1;
    if (lv.v2 != 75) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Uc_Sf() c.Ul_Uc_Sf {
    return .{ .v1 = 14311, .v2 = 75, .v3 = .{} };
}

// From CT_Snen_xab.c:47757:47777
// struct  Ul_Ui_Sf  {
//   __tsu64 v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Ul_Ui_Sf layout" {
    var lv: c.Ul_Ui_Sf = undefined;
    try testing.expectSize(c.Ul_Ui_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Ui_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Ui_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_Sf(), .{ .v1 = 27932, .v2 = 14576, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_Ui_Sf());
    try testing.expectOk(c.send_Ul_Ui_Sf());
    try testing.expectOk(c.assert_Ul_Ui_Sf(.{ .v1 = 27932, .v2 = 14576, .v3 = .{} }));
}
pub export fn zig_assert_Ul_Ui_Sf(lv: c.Ul_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27932) err = 1;
    if (lv.v2 != 14576) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Ui_Sf() c.Ul_Ui_Sf {
    return .{ .v1 = 27932, .v2 = 14576, .v3 = .{} };
}

// From CT_Snen_xab.c:47782:47802
// struct  Ul_Ul_Sf  {
//   __tsu64 v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Ul_Ul_Sf layout" {
    var lv: c.Ul_Ul_Sf = undefined;
    try testing.expectSize(c.Ul_Ul_Sf, 16);
    try testing.expectAlign(c.Ul_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_Sf(), .{ .v1 = 22740, .v2 = 22659, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_Ul_Sf());
    try testing.expectOk(c.send_Ul_Ul_Sf());
    try testing.expectOk(c.assert_Ul_Ul_Sf(.{ .v1 = 22740, .v2 = 22659, .v3 = .{} }));
}
pub export fn zig_assert_Ul_Ul_Sf(lv: c.Ul_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22740) err = 1;
    if (lv.v2 != 22659) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Ul_Sf() c.Ul_Ul_Sf {
    return .{ .v1 = 22740, .v2 = 22659, .v3 = .{} };
}

// From CT_Snen_xab.c:47807:47827
// struct  Ul_Us_Sf  {
//   __tsu64 v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Ul_Us_Sf layout" {
    var lv: c.Ul_Us_Sf = undefined;
    try testing.expectSize(c.Ul_Us_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_Us_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_Us_Sf(), .{ .v1 = 21647, .v2 = 13608, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_Us_Sf());
    try testing.expectOk(c.send_Ul_Us_Sf());
    try testing.expectOk(c.assert_Ul_Us_Sf(.{ .v1 = 21647, .v2 = 13608, .v3 = .{} }));
}
pub export fn zig_assert_Ul_Us_Sf(lv: c.Ul_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21647) err = 1;
    if (lv.v2 != 13608) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Us_Sf() c.Ul_Us_Sf {
    return .{ .v1 = 21647, .v2 = 13608, .v3 = .{} };
}

// From CT_Snen_xab.c:47832:47852
// struct  Ul_Vp_Sf  {
//   __tsu64 v1;
//   void *v2;
//   struct empty v3;
// };

test "Ul_Vp_Sf layout" {
    var lv: c.Ul_Vp_Sf = undefined;
    try testing.expectSize(c.Ul_Vp_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_Sf C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_Sf(), .{ .v1 = 14968, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Ul_Vp_Sf());
    try testing.expectOk(c.send_Ul_Vp_Sf());
    try testing.expectOk(c.assert_Ul_Vp_Sf(.{ .v1 = 14968, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Ul_Vp_Sf(lv: c.Ul_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 14968) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Ul_Vp_Sf() c.Ul_Vp_Sf {
    return .{ .v1 = 14968, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xab.c:48581:48601
// struct  Us_C_Sf  {
//   unsigned short v1;
//   char v2;
//   struct empty v3;
// };

test "Us_C_Sf layout" {
    var lv: c.Us_C_Sf = undefined;
    try testing.expectSize(c.Us_C_Sf, 4);
    try testing.expectAlign(c.Us_C_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "Us_C_Sf C calls" {
    try testing.expectEqual(c.ret_Us_C_Sf(), .{ .v1 = 28250, .v2 = 63, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_C_Sf());
    try testing.expectOk(c.send_Us_C_Sf());
    try testing.expectOk(c.assert_Us_C_Sf(.{ .v1 = 28250, .v2 = 63, .v3 = .{} }));
}
pub export fn zig_assert_Us_C_Sf(lv: c.Us_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28250) err = 1;
    if (lv.v2 != 63) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_C_Sf() c.Us_C_Sf {
    return .{ .v1 = 28250, .v2 = 63, .v3 = .{} };
}

// From CT_Snen_xab.c:48606:48626
// struct  Us_D_Sf  {
//   unsigned short v1;
//   double v2;
//   struct empty v3;
// };

test "Us_D_Sf layout" {
    var lv: c.Us_D_Sf = undefined;
    try testing.expectSize(c.Us_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_Sf C calls" {
    try testing.expectEqual(c.ret_Us_D_Sf(), .{ .v1 = 18608, .v2 = 0.5, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_D_Sf());
    try testing.expectOk(c.send_Us_D_Sf());
    try testing.expectOk(c.assert_Us_D_Sf(.{ .v1 = 18608, .v2 = 0.5, .v3 = .{} }));
}
pub export fn zig_assert_Us_D_Sf(lv: c.Us_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18608) err = 1;
    if (lv.v2 != 0.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_D_Sf() c.Us_D_Sf {
    return .{ .v1 = 18608, .v2 = 0.5, .v3 = .{} };
}

// From CT_Snen_xab.c:48631:48651
// struct  Us_F_Sf  {
//   unsigned short v1;
//   float v2;
//   struct empty v3;
// };

test "Us_F_Sf layout" {
    var lv: c.Us_F_Sf = undefined;
    try testing.expectSize(c.Us_F_Sf, 8);
    try testing.expectAlign(c.Us_F_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_Sf C calls" {
    try testing.expectEqual(c.ret_Us_F_Sf(), .{ .v1 = 28123, .v2 = 4.5, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_F_Sf());
    try testing.expectOk(c.send_Us_F_Sf());
    try testing.expectOk(c.assert_Us_F_Sf(.{ .v1 = 28123, .v2 = 4.5, .v3 = .{} }));
}
pub export fn zig_assert_Us_F_Sf(lv: c.Us_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 28123) err = 1;
    if (lv.v2 != 4.5) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_F_Sf() c.Us_F_Sf {
    return .{ .v1 = 28123, .v2 = 4.5, .v3 = .{} };
}

// From CT_Snen_xab.c:48656:48676
// struct  Us_I_Sf  {
//   unsigned short v1;
//   int v2;
//   struct empty v3;
// };

test "Us_I_Sf layout" {
    var lv: c.Us_I_Sf = undefined;
    try testing.expectSize(c.Us_I_Sf, 8);
    try testing.expectAlign(c.Us_I_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_Sf C calls" {
    try testing.expectEqual(c.ret_Us_I_Sf(), .{ .v1 = 25588, .v2 = 29415, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_I_Sf());
    try testing.expectOk(c.send_Us_I_Sf());
    try testing.expectOk(c.assert_Us_I_Sf(.{ .v1 = 25588, .v2 = 29415, .v3 = .{} }));
}
pub export fn zig_assert_Us_I_Sf(lv: c.Us_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25588) err = 1;
    if (lv.v2 != 29415) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_I_Sf() c.Us_I_Sf {
    return .{ .v1 = 25588, .v2 = 29415, .v3 = .{} };
}

// From CT_Snen_xab.c:48681:48701
// struct  Us_Ip_Sf  {
//   unsigned short v1;
//   int *v2;
//   struct empty v3;
// };

test "Us_Ip_Sf layout" {
    var lv: c.Us_Ip_Sf = undefined;
    try testing.expectSize(c.Us_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_Sf C calls" {
    try testing.expectEqual(c.ret_Us_Ip_Sf(), .{ .v1 = 1514, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_Ip_Sf());
    try testing.expectOk(c.send_Us_Ip_Sf());
    try testing.expectOk(c.assert_Us_Ip_Sf(.{ .v1 = 1514, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Us_Ip_Sf(lv: c.Us_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 1514) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Ip_Sf() c.Us_Ip_Sf {
    return .{ .v1 = 1514, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xab.c:48706:48726
// struct  Us_L_Sf  {
//   unsigned short v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Us_L_Sf layout" {
    var lv: c.Us_L_Sf = undefined;
    try testing.expectSize(c.Us_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_Sf C calls" {
    try testing.expectEqual(c.ret_Us_L_Sf(), .{ .v1 = 3923, .v2 = 10301, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_L_Sf());
    try testing.expectOk(c.send_Us_L_Sf());
    try testing.expectOk(c.assert_Us_L_Sf(.{ .v1 = 3923, .v2 = 10301, .v3 = .{} }));
}
pub export fn zig_assert_Us_L_Sf(lv: c.Us_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 3923) err = 1;
    if (lv.v2 != 10301) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_L_Sf() c.Us_L_Sf {
    return .{ .v1 = 3923, .v2 = 10301, .v3 = .{} };
}

// From CT_Snen_xab.c:48731:48751
// struct  Us_S_Sf  {
//   unsigned short v1;
//   short v2;
//   struct empty v3;
// };

test "Us_S_Sf layout" {
    var lv: c.Us_S_Sf = undefined;
    try testing.expectSize(c.Us_S_Sf, 4);
    try testing.expectAlign(c.Us_S_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_S_Sf C calls" {
    try testing.expectEqual(c.ret_Us_S_Sf(), .{ .v1 = 9511, .v2 = 31341, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_S_Sf());
    try testing.expectOk(c.send_Us_S_Sf());
    try testing.expectOk(c.assert_Us_S_Sf(.{ .v1 = 9511, .v2 = 31341, .v3 = .{} }));
}
pub export fn zig_assert_Us_S_Sf(lv: c.Us_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 9511) err = 1;
    if (lv.v2 != 31341) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_S_Sf() c.Us_S_Sf {
    return .{ .v1 = 9511, .v2 = 31341, .v3 = .{} };
}

// From CT_Snen_xab.c:48756:48774
// struct  Us_Sf  {
//   unsigned short v1;
//   struct empty v2;
// };

test "Us_Sf layout" {
    var lv: c.Us_Sf = undefined;
    try testing.expectSize(c.Us_Sf, 2);
    try testing.expectAlign(c.Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "Us_Sf C calls" {
    try testing.expectEqual(c.ret_Us_Sf(), .{ .v1 = 5746, .v2 = .{} });
    try testing.expectOk(c.assert_ret_Us_Sf());
    try testing.expectOk(c.send_Us_Sf());
    try testing.expectOk(c.assert_Us_Sf(.{ .v1 = 5746, .v2 = .{} }));
}
pub export fn zig_assert_Us_Sf(lv: c.Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 5746) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf() c.Us_Sf {
    return .{ .v1 = 5746, .v2 = .{} };
}

// From CT_Snen_xab.c:49503:49523
// struct  Us_Sf_C  {
//   unsigned short v1;
//   struct empty v2;
//   char v3;
// };

test "Us_Sf_C layout" {
    var lv: c.Us_Sf_C = undefined;
    try testing.expectSize(c.Us_Sf_C, 4);
    try testing.expectAlign(c.Us_Sf_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Us_Sf_C C calls" {
    try testing.expectEqual(c.ret_Us_Sf_C(), .{ .v1 = 25868, .v2 = .{}, .v3 = 88 });
    try testing.expectOk(c.assert_ret_Us_Sf_C());
    try testing.expectOk(c.send_Us_Sf_C());
    try testing.expectOk(c.assert_Us_Sf_C(.{ .v1 = 25868, .v2 = .{}, .v3 = 88 }));
}
pub export fn zig_assert_Us_Sf_C(lv: c.Us_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 25868) err = 1;
    if (lv.v3 != 88) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_C() c.Us_Sf_C {
    return .{ .v1 = 25868, .v2 = .{}, .v3 = 88 };
}

// From CT_Snen_xab.c:49528:49548
// struct  Us_Sf_D  {
//   unsigned short v1;
//   struct empty v2;
//   double v3;
// };

test "Us_Sf_D layout" {
    var lv: c.Us_Sf_D = undefined;
    try testing.expectSize(c.Us_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Sf_D C calls" {
    try testing.expectEqual(c.ret_Us_Sf_D(), .{ .v1 = 27249, .v2 = .{}, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Us_Sf_D());
    try testing.expectOk(c.send_Us_Sf_D());
    try testing.expectOk(c.assert_Us_Sf_D(.{ .v1 = 27249, .v2 = .{}, .v3 = 0.5 }));
}
pub export fn zig_assert_Us_Sf_D(lv: c.Us_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27249) err = 1;
    if (lv.v3 != 0.5) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_D() c.Us_Sf_D {
    return .{ .v1 = 27249, .v2 = .{}, .v3 = 0.5 };
}

// From CT_Snen_xab.c:49553:49573
// struct  Us_Sf_F  {
//   unsigned short v1;
//   struct empty v2;
//   float v3;
// };

test "Us_Sf_F layout" {
    var lv: c.Us_Sf_F = undefined;
    try testing.expectSize(c.Us_Sf_F, 8);
    try testing.expectAlign(c.Us_Sf_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Sf_F C calls" {
    try testing.expectEqual(c.ret_Us_Sf_F(), .{ .v1 = 19782, .v2 = .{}, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Us_Sf_F());
    try testing.expectOk(c.send_Us_Sf_F());
    try testing.expectOk(c.assert_Us_Sf_F(.{ .v1 = 19782, .v2 = .{}, .v3 = 0.875 }));
}
pub export fn zig_assert_Us_Sf_F(lv: c.Us_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19782) err = 1;
    if (lv.v3 != 0.875) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_F() c.Us_Sf_F {
    return .{ .v1 = 19782, .v2 = .{}, .v3 = 0.875 };
}

// From CT_Snen_xab.c:49578:49598
// struct  Us_Sf_I  {
//   unsigned short v1;
//   struct empty v2;
//   int v3;
// };

test "Us_Sf_I layout" {
    var lv: c.Us_Sf_I = undefined;
    try testing.expectSize(c.Us_Sf_I, 8);
    try testing.expectAlign(c.Us_Sf_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Sf_I C calls" {
    try testing.expectEqual(c.ret_Us_Sf_I(), .{ .v1 = 21161, .v2 = .{}, .v3 = 3355 });
    try testing.expectOk(c.assert_ret_Us_Sf_I());
    try testing.expectOk(c.send_Us_Sf_I());
    try testing.expectOk(c.assert_Us_Sf_I(.{ .v1 = 21161, .v2 = .{}, .v3 = 3355 }));
}
pub export fn zig_assert_Us_Sf_I(lv: c.Us_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != 21161) err = 1;
    if (lv.v3 != 3355) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_I() c.Us_Sf_I {
    return .{ .v1 = 21161, .v2 = .{}, .v3 = 3355 };
}

// From CT_Snen_xab.c:49603:49623
// struct  Us_Sf_Ip  {
//   unsigned short v1;
//   struct empty v2;
//   int *v3;
// };

test "Us_Sf_Ip layout" {
    var lv: c.Us_Sf_Ip = undefined;
    try testing.expectSize(c.Us_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Sf_Ip C calls" {
    try testing.expectEqual(c.ret_Us_Sf_Ip(), .{ .v1 = 2634, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Sf_Ip());
    try testing.expectOk(c.send_Us_Sf_Ip());
    try testing.expectOk(c.assert_Us_Sf_Ip(.{ .v1 = 2634, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Us_Sf_Ip(lv: c.Us_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != 2634) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_Ip() c.Us_Sf_Ip {
    return .{ .v1 = 2634, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:49628:49648
// struct  Us_Sf_L  {
//   unsigned short v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Us_Sf_L layout" {
    var lv: c.Us_Sf_L = undefined;
    try testing.expectSize(c.Us_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Sf_L C calls" {
    try testing.expectEqual(c.ret_Us_Sf_L(), .{ .v1 = 4515, .v2 = .{}, .v3 = 11767 });
    try testing.expectOk(c.assert_ret_Us_Sf_L());
    try testing.expectOk(c.send_Us_Sf_L());
    try testing.expectOk(c.assert_Us_Sf_L(.{ .v1 = 4515, .v2 = .{}, .v3 = 11767 }));
}
pub export fn zig_assert_Us_Sf_L(lv: c.Us_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != 4515) err = 1;
    if (lv.v3 != 11767) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_L() c.Us_Sf_L {
    return .{ .v1 = 4515, .v2 = .{}, .v3 = 11767 };
}

// From CT_Snen_xab.c:49653:49673
// struct  Us_Sf_S  {
//   unsigned short v1;
//   struct empty v2;
//   short v3;
// };

test "Us_Sf_S layout" {
    var lv: c.Us_Sf_S = undefined;
    try testing.expectSize(c.Us_Sf_S, 4);
    try testing.expectAlign(c.Us_Sf_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Us_Sf_S C calls" {
    try testing.expectEqual(c.ret_Us_Sf_S(), .{ .v1 = 23260, .v2 = .{}, .v3 = 20834 });
    try testing.expectOk(c.assert_ret_Us_Sf_S());
    try testing.expectOk(c.send_Us_Sf_S());
    try testing.expectOk(c.assert_Us_Sf_S(.{ .v1 = 23260, .v2 = .{}, .v3 = 20834 }));
}
pub export fn zig_assert_Us_Sf_S(lv: c.Us_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != 23260) err = 1;
    if (lv.v3 != 20834) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_S() c.Us_Sf_S {
    return .{ .v1 = 23260, .v2 = .{}, .v3 = 20834 };
}

// From CT_Snen_xab.c:49678:49698
// struct  Us_Sf_Sf  {
//   unsigned short v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Us_Sf_Sf layout" {
    var lv: c.Us_Sf_Sf = undefined;
    try testing.expectSize(c.Us_Sf_Sf, 2);
    try testing.expectAlign(c.Us_Sf_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Us_Sf_Sf C calls" {
    try testing.expectEqual(c.ret_Us_Sf_Sf(), .{ .v1 = 13678, .v2 = .{}, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_Sf_Sf());
    try testing.expectOk(c.send_Us_Sf_Sf());
    try testing.expectOk(c.assert_Us_Sf_Sf(.{ .v1 = 13678, .v2 = .{}, .v3 = .{} }));
}
pub export fn zig_assert_Us_Sf_Sf(lv: c.Us_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 13678) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_Sf() c.Us_Sf_Sf {
    return .{ .v1 = 13678, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xab.c:49703:49723
// struct  Us_Sf_Uc  {
//   unsigned short v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Us_Sf_Uc layout" {
    var lv: c.Us_Sf_Uc = undefined;
    try testing.expectSize(c.Us_Sf_Uc, 4);
    try testing.expectAlign(c.Us_Sf_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Us_Sf_Uc C calls" {
    try testing.expectEqual(c.ret_Us_Sf_Uc(), .{ .v1 = 22861, .v2 = .{}, .v3 = 35 });
    try testing.expectOk(c.assert_ret_Us_Sf_Uc());
    try testing.expectOk(c.send_Us_Sf_Uc());
    try testing.expectOk(c.assert_Us_Sf_Uc(.{ .v1 = 22861, .v2 = .{}, .v3 = 35 }));
}
pub export fn zig_assert_Us_Sf_Uc(lv: c.Us_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != 22861) err = 1;
    if (lv.v3 != 35) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_Uc() c.Us_Sf_Uc {
    return .{ .v1 = 22861, .v2 = .{}, .v3 = 35 };
}

// From CT_Snen_xab.c:49728:49748
// struct  Us_Sf_Ui  {
//   unsigned short v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Us_Sf_Ui layout" {
    var lv: c.Us_Sf_Ui = undefined;
    try testing.expectSize(c.Us_Sf_Ui, 8);
    try testing.expectAlign(c.Us_Sf_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Sf_Ui C calls" {
    try testing.expectEqual(c.ret_Us_Sf_Ui(), .{ .v1 = 18208, .v2 = .{}, .v3 = 9422 });
    try testing.expectOk(c.assert_ret_Us_Sf_Ui());
    try testing.expectOk(c.send_Us_Sf_Ui());
    try testing.expectOk(c.assert_Us_Sf_Ui(.{ .v1 = 18208, .v2 = .{}, .v3 = 9422 }));
}
pub export fn zig_assert_Us_Sf_Ui(lv: c.Us_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != 18208) err = 1;
    if (lv.v3 != 9422) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_Ui() c.Us_Sf_Ui {
    return .{ .v1 = 18208, .v2 = .{}, .v3 = 9422 };
}

// From CT_Snen_xab.c:49753:49773
// struct  Us_Sf_Ul  {
//   unsigned short v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Us_Sf_Ul layout" {
    var lv: c.Us_Sf_Ul = undefined;
    try testing.expectSize(c.Us_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Sf_Ul C calls" {
    try testing.expectEqual(c.ret_Us_Sf_Ul(), .{ .v1 = 29911, .v2 = .{}, .v3 = 17622 });
    try testing.expectOk(c.assert_ret_Us_Sf_Ul());
    try testing.expectOk(c.send_Us_Sf_Ul());
    try testing.expectOk(c.assert_Us_Sf_Ul(.{ .v1 = 29911, .v2 = .{}, .v3 = 17622 }));
}
pub export fn zig_assert_Us_Sf_Ul(lv: c.Us_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != 29911) err = 1;
    if (lv.v3 != 17622) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_Ul() c.Us_Sf_Ul {
    return .{ .v1 = 29911, .v2 = .{}, .v3 = 17622 };
}

// From CT_Snen_xab.c:49778:49798
// struct  Us_Sf_Us  {
//   unsigned short v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Us_Sf_Us layout" {
    var lv: c.Us_Sf_Us = undefined;
    try testing.expectSize(c.Us_Sf_Us, 4);
    try testing.expectAlign(c.Us_Sf_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}
test "Us_Sf_Us C calls" {
    try testing.expectEqual(c.ret_Us_Sf_Us(), .{ .v1 = 19428, .v2 = .{}, .v3 = 28657 });
    try testing.expectOk(c.assert_ret_Us_Sf_Us());
    try testing.expectOk(c.send_Us_Sf_Us());
    try testing.expectOk(c.assert_Us_Sf_Us(.{ .v1 = 19428, .v2 = .{}, .v3 = 28657 }));
}
pub export fn zig_assert_Us_Sf_Us(lv: c.Us_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19428) err = 1;
    if (lv.v3 != 28657) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_Us() c.Us_Sf_Us {
    return .{ .v1 = 19428, .v2 = .{}, .v3 = 28657 };
}

// From CT_Snen_xab.c:49803:49823
// struct  Us_Sf_Vp  {
//   unsigned short v1;
//   struct empty v2;
//   void *v3;
// };

test "Us_Sf_Vp layout" {
    var lv: c.Us_Sf_Vp = undefined;
    try testing.expectSize(c.Us_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Sf_Vp C calls" {
    try testing.expectEqual(c.ret_Us_Sf_Vp(), .{ .v1 = 27845, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Sf_Vp());
    try testing.expectOk(c.send_Us_Sf_Vp());
    try testing.expectOk(c.assert_Us_Sf_Vp(.{ .v1 = 27845, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Us_Sf_Vp(lv: c.Us_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27845) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Sf_Vp() c.Us_Sf_Vp {
    return .{ .v1 = 27845, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:49828:49848
// struct  Us_Uc_Sf  {
//   unsigned short v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Us_Uc_Sf layout" {
    var lv: c.Us_Uc_Sf = undefined;
    try testing.expectSize(c.Us_Uc_Sf, 4);
    try testing.expectAlign(c.Us_Uc_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "Us_Uc_Sf C calls" {
    try testing.expectEqual(c.ret_Us_Uc_Sf(), .{ .v1 = 6709, .v2 = 70, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_Uc_Sf());
    try testing.expectOk(c.send_Us_Uc_Sf());
    try testing.expectOk(c.assert_Us_Uc_Sf(.{ .v1 = 6709, .v2 = 70, .v3 = .{} }));
}
pub export fn zig_assert_Us_Uc_Sf(lv: c.Us_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6709) err = 1;
    if (lv.v2 != 70) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Uc_Sf() c.Us_Uc_Sf {
    return .{ .v1 = 6709, .v2 = 70, .v3 = .{} };
}

// From CT_Snen_xab.c:49853:49873
// struct  Us_Ui_Sf  {
//   unsigned short v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Us_Ui_Sf layout" {
    var lv: c.Us_Ui_Sf = undefined;
    try testing.expectSize(c.Us_Ui_Sf, 8);
    try testing.expectAlign(c.Us_Ui_Sf, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_Sf C calls" {
    try testing.expectEqual(c.ret_Us_Ui_Sf(), .{ .v1 = 16312, .v2 = 12988, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_Ui_Sf());
    try testing.expectOk(c.send_Us_Ui_Sf());
    try testing.expectOk(c.assert_Us_Ui_Sf(.{ .v1 = 16312, .v2 = 12988, .v3 = .{} }));
}
pub export fn zig_assert_Us_Ui_Sf(lv: c.Us_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 16312) err = 1;
    if (lv.v2 != 12988) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Ui_Sf() c.Us_Ui_Sf {
    return .{ .v1 = 16312, .v2 = 12988, .v3 = .{} };
}

// From CT_Snen_xab.c:49878:49898
// struct  Us_Ul_Sf  {
//   unsigned short v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Us_Ul_Sf layout" {
    var lv: c.Us_Ul_Sf = undefined;
    try testing.expectSize(c.Us_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_Sf C calls" {
    try testing.expectEqual(c.ret_Us_Ul_Sf(), .{ .v1 = 27599, .v2 = 681, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_Ul_Sf());
    try testing.expectOk(c.send_Us_Ul_Sf());
    try testing.expectOk(c.assert_Us_Ul_Sf(.{ .v1 = 27599, .v2 = 681, .v3 = .{} }));
}
pub export fn zig_assert_Us_Ul_Sf(lv: c.Us_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 27599) err = 1;
    if (lv.v2 != 681) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Ul_Sf() c.Us_Ul_Sf {
    return .{ .v1 = 27599, .v2 = 681, .v3 = .{} };
}

// From CT_Snen_xab.c:49903:49923
// struct  Us_Us_Sf  {
//   unsigned short v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Us_Us_Sf layout" {
    var lv: c.Us_Us_Sf = undefined;
    try testing.expectSize(c.Us_Us_Sf, 4);
    try testing.expectAlign(c.Us_Us_Sf, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Us_Sf C calls" {
    try testing.expectEqual(c.ret_Us_Us_Sf(), .{ .v1 = 218, .v2 = 15659, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_Us_Sf());
    try testing.expectOk(c.send_Us_Us_Sf());
    try testing.expectOk(c.assert_Us_Us_Sf(.{ .v1 = 218, .v2 = 15659, .v3 = .{} }));
}
pub export fn zig_assert_Us_Us_Sf(lv: c.Us_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 218) err = 1;
    if (lv.v2 != 15659) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Us_Sf() c.Us_Us_Sf {
    return .{ .v1 = 218, .v2 = 15659, .v3 = .{} };
}

// From CT_Snen_xab.c:49928:49948
// struct  Us_Vp_Sf  {
//   unsigned short v1;
//   void *v2;
//   struct empty v3;
// };

test "Us_Vp_Sf layout" {
    var lv: c.Us_Vp_Sf = undefined;
    try testing.expectSize(c.Us_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_Sf C calls" {
    try testing.expectEqual(c.ret_Us_Vp_Sf(), .{ .v1 = 6650, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Us_Vp_Sf());
    try testing.expectOk(c.send_Us_Vp_Sf());
    try testing.expectOk(c.assert_Us_Vp_Sf(.{ .v1 = 6650, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Us_Vp_Sf(lv: c.Us_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != 6650) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Us_Vp_Sf() c.Us_Vp_Sf {
    return .{ .v1 = 6650, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xab.c:50677:50697
// struct  Vp_C_Sf  {
//   void *v1;
//   char v2;
//   struct empty v3;
// };

test "Vp_C_Sf layout" {
    var lv: c.Vp_C_Sf = undefined;
    try testing.expectSize(c.Vp_C_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Vp_C_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_C_Sf(), .{ .v1 = null, .v2 = 68, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_C_Sf());
    try testing.expectOk(c.send_Vp_C_Sf());
    try testing.expectOk(c.assert_Vp_C_Sf(.{ .v1 = null, .v2 = 68, .v3 = .{} }));
}
pub export fn zig_assert_Vp_C_Sf(lv: c.Vp_C_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 68) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_C_Sf() c.Vp_C_Sf {
    return .{ .v1 = null, .v2 = 68, .v3 = .{} };
}

// From CT_Snen_xab.c:50702:50722
// struct  Vp_D_Sf  {
//   void *v1;
//   double v2;
//   struct empty v3;
// };

test "Vp_D_Sf layout" {
    var lv: c.Vp_D_Sf = undefined;
    try testing.expectSize(c.Vp_D_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_D_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_D_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_D_Sf(), .{ .v1 = null, .v2 = 0.875, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_D_Sf());
    try testing.expectOk(c.send_Vp_D_Sf());
    try testing.expectOk(c.assert_Vp_D_Sf(.{ .v1 = null, .v2 = 0.875, .v3 = .{} }));
}
pub export fn zig_assert_Vp_D_Sf(lv: c.Vp_D_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 0.875) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_D_Sf() c.Vp_D_Sf {
    return .{ .v1 = null, .v2 = 0.875, .v3 = .{} };
}

// From CT_Snen_xab.c:50727:50747
// struct  Vp_F_Sf  {
//   void *v1;
//   float v2;
//   struct empty v3;
// };

test "Vp_F_Sf layout" {
    var lv: c.Vp_F_Sf = undefined;
    try testing.expectSize(c.Vp_F_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_F_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_F_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_F_Sf(), .{ .v1 = null, .v2 = -2.125, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_F_Sf());
    try testing.expectOk(c.send_Vp_F_Sf());
    try testing.expectOk(c.assert_Vp_F_Sf(.{ .v1 = null, .v2 = -2.125, .v3 = .{} }));
}
pub export fn zig_assert_Vp_F_Sf(lv: c.Vp_F_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != -2.125) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_F_Sf() c.Vp_F_Sf {
    return .{ .v1 = null, .v2 = -2.125, .v3 = .{} };
}

// From CT_Snen_xab.c:50752:50772
// struct  Vp_I_Sf  {
//   void *v1;
//   int v2;
//   struct empty v3;
// };

test "Vp_I_Sf layout" {
    var lv: c.Vp_I_Sf = undefined;
    try testing.expectSize(c.Vp_I_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_I_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_I_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_I_Sf(), .{ .v1 = null, .v2 = 8877, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_I_Sf());
    try testing.expectOk(c.send_Vp_I_Sf());
    try testing.expectOk(c.assert_Vp_I_Sf(.{ .v1 = null, .v2 = 8877, .v3 = .{} }));
}
pub export fn zig_assert_Vp_I_Sf(lv: c.Vp_I_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 8877) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_I_Sf() c.Vp_I_Sf {
    return .{ .v1 = null, .v2 = 8877, .v3 = .{} };
}

// From CT_Snen_xab.c:50777:50797
// struct  Vp_Ip_Sf  {
//   void *v1;
//   int *v2;
//   struct empty v3;
// };

test "Vp_Ip_Sf layout" {
    var lv: c.Vp_Ip_Sf = undefined;
    try testing.expectSize(c.Vp_Ip_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ip_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Ip_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_Ip_Sf(), .{ .v1 = null, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_Ip_Sf());
    try testing.expectOk(c.send_Vp_Ip_Sf());
    try testing.expectOk(c.assert_Vp_Ip_Sf(.{ .v1 = null, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Vp_Ip_Sf(lv: c.Vp_Ip_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ip_Sf() c.Vp_Ip_Sf {
    return .{ .v1 = null, .v2 = null, .v3 = .{} };
}

// From CT_Snen_xab.c:50802:50822
// struct  Vp_L_Sf  {
//   void *v1;
//   __tsi64 v2;
//   struct empty v3;
// };

test "Vp_L_Sf layout" {
    var lv: c.Vp_L_Sf = undefined;
    try testing.expectSize(c.Vp_L_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_L_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_L_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_L_Sf(), .{ .v1 = null, .v2 = 10286, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_L_Sf());
    try testing.expectOk(c.send_Vp_L_Sf());
    try testing.expectOk(c.assert_Vp_L_Sf(.{ .v1 = null, .v2 = 10286, .v3 = .{} }));
}
pub export fn zig_assert_Vp_L_Sf(lv: c.Vp_L_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 10286) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_L_Sf() c.Vp_L_Sf {
    return .{ .v1 = null, .v2 = 10286, .v3 = .{} };
}

// From CT_Snen_xab.c:50827:50847
// struct  Vp_S_Sf  {
//   void *v1;
//   short v2;
//   struct empty v3;
// };

test "Vp_S_Sf layout" {
    var lv: c.Vp_S_Sf = undefined;
    try testing.expectSize(c.Vp_S_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_S_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_S_Sf(), .{ .v1 = null, .v2 = 8955, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_S_Sf());
    try testing.expectOk(c.send_Vp_S_Sf());
    try testing.expectOk(c.assert_Vp_S_Sf(.{ .v1 = null, .v2 = 8955, .v3 = .{} }));
}
pub export fn zig_assert_Vp_S_Sf(lv: c.Vp_S_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 8955) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_S_Sf() c.Vp_S_Sf {
    return .{ .v1 = null, .v2 = 8955, .v3 = .{} };
}

// From CT_Snen_xab.c:50852:50870
// struct  Vp_Sf  {
//   void *v1;
//   struct empty v2;
// };

test "Vp_Sf layout" {
    var lv: c.Vp_Sf = undefined;
    try testing.expectSize(c.Vp_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Vp_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_Sf(), .{ .v1 = null, .v2 = .{} });
    try testing.expectOk(c.assert_ret_Vp_Sf());
    try testing.expectOk(c.send_Vp_Sf());
    try testing.expectOk(c.assert_Vp_Sf(.{ .v1 = null, .v2 = .{} }));
}
pub export fn zig_assert_Vp_Sf(lv: c.Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf() c.Vp_Sf {
    return .{ .v1 = null, .v2 = .{} };
}

// From CT_Snen_xab.c:51599:51619
// struct  Vp_Sf_C  {
//   void *v1;
//   struct empty v2;
//   char v3;
// };

test "Vp_Sf_C layout" {
    var lv: c.Vp_Sf_C = undefined;
    try testing.expectSize(c.Vp_Sf_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_C C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_C(), .{ .v1 = null, .v2 = .{}, .v3 = 82 });
    try testing.expectOk(c.assert_ret_Vp_Sf_C());
    try testing.expectOk(c.send_Vp_Sf_C());
    try testing.expectOk(c.assert_Vp_Sf_C(.{ .v1 = null, .v2 = .{}, .v3 = 82 }));
}
pub export fn zig_assert_Vp_Sf_C(lv: c.Vp_Sf_C) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 82) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_C() c.Vp_Sf_C {
    return .{ .v1 = null, .v2 = .{}, .v3 = 82 };
}

// From CT_Snen_xab.c:51624:51644
// struct  Vp_Sf_D  {
//   void *v1;
//   struct empty v2;
//   double v3;
// };

test "Vp_Sf_D layout" {
    var lv: c.Vp_Sf_D = undefined;
    try testing.expectSize(c.Vp_Sf_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Sf_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_D C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_D(), .{ .v1 = null, .v2 = .{}, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Vp_Sf_D());
    try testing.expectOk(c.send_Vp_Sf_D());
    try testing.expectOk(c.assert_Vp_Sf_D(.{ .v1 = null, .v2 = .{}, .v3 = 1.0 }));
}
pub export fn zig_assert_Vp_Sf_D(lv: c.Vp_Sf_D) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_D() c.Vp_Sf_D {
    return .{ .v1 = null, .v2 = .{}, .v3 = 1.0 };
}

// From CT_Snen_xab.c:51649:51669
// struct  Vp_Sf_F  {
//   void *v1;
//   struct empty v2;
//   float v3;
// };

test "Vp_Sf_F layout" {
    var lv: c.Vp_Sf_F = undefined;
    try testing.expectSize(c.Vp_Sf_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_F C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_F(), .{ .v1 = null, .v2 = .{}, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Vp_Sf_F());
    try testing.expectOk(c.send_Vp_Sf_F());
    try testing.expectOk(c.assert_Vp_Sf_F(.{ .v1 = null, .v2 = .{}, .v3 = 1.0 }));
}
pub export fn zig_assert_Vp_Sf_F(lv: c.Vp_Sf_F) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 1.0) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_F() c.Vp_Sf_F {
    return .{ .v1 = null, .v2 = .{}, .v3 = 1.0 };
}

// From CT_Snen_xab.c:51674:51694
// struct  Vp_Sf_I  {
//   void *v1;
//   struct empty v2;
//   int v3;
// };

test "Vp_Sf_I layout" {
    var lv: c.Vp_Sf_I = undefined;
    try testing.expectSize(c.Vp_Sf_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_I C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_I(), .{ .v1 = null, .v2 = .{}, .v3 = 32701 });
    try testing.expectOk(c.assert_ret_Vp_Sf_I());
    try testing.expectOk(c.send_Vp_Sf_I());
    try testing.expectOk(c.assert_Vp_Sf_I(.{ .v1 = null, .v2 = .{}, .v3 = 32701 }));
}
pub export fn zig_assert_Vp_Sf_I(lv: c.Vp_Sf_I) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 32701) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_I() c.Vp_Sf_I {
    return .{ .v1 = null, .v2 = .{}, .v3 = 32701 };
}

// From CT_Snen_xab.c:51699:51719
// struct  Vp_Sf_Ip  {
//   void *v1;
//   struct empty v2;
//   int *v3;
// };

test "Vp_Sf_Ip layout" {
    var lv: c.Vp_Sf_Ip = undefined;
    try testing.expectSize(c.Vp_Sf_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_Ip C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_Ip(), .{ .v1 = null, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Sf_Ip());
    try testing.expectOk(c.send_Vp_Sf_Ip());
    try testing.expectOk(c.assert_Vp_Sf_Ip(.{ .v1 = null, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Vp_Sf_Ip(lv: c.Vp_Sf_Ip) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_Ip() c.Vp_Sf_Ip {
    return .{ .v1 = null, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:51724:51744
// struct  Vp_Sf_L  {
//   void *v1;
//   struct empty v2;
//   __tsi64 v3;
// };

test "Vp_Sf_L layout" {
    var lv: c.Vp_Sf_L = undefined;
    try testing.expectSize(c.Vp_Sf_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Sf_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_L C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_L(), .{ .v1 = null, .v2 = .{}, .v3 = 1620 });
    try testing.expectOk(c.assert_ret_Vp_Sf_L());
    try testing.expectOk(c.send_Vp_Sf_L());
    try testing.expectOk(c.assert_Vp_Sf_L(.{ .v1 = null, .v2 = .{}, .v3 = 1620 }));
}
pub export fn zig_assert_Vp_Sf_L(lv: c.Vp_Sf_L) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 1620) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_L() c.Vp_Sf_L {
    return .{ .v1 = null, .v2 = .{}, .v3 = 1620 };
}

// From CT_Snen_xab.c:51749:51769
// struct  Vp_Sf_S  {
//   void *v1;
//   struct empty v2;
//   short v3;
// };

test "Vp_Sf_S layout" {
    var lv: c.Vp_Sf_S = undefined;
    try testing.expectSize(c.Vp_Sf_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_S C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_S(), .{ .v1 = null, .v2 = .{}, .v3 = 10027 });
    try testing.expectOk(c.assert_ret_Vp_Sf_S());
    try testing.expectOk(c.send_Vp_Sf_S());
    try testing.expectOk(c.assert_Vp_Sf_S(.{ .v1 = null, .v2 = .{}, .v3 = 10027 }));
}
pub export fn zig_assert_Vp_Sf_S(lv: c.Vp_Sf_S) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 10027) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_S() c.Vp_Sf_S {
    return .{ .v1 = null, .v2 = .{}, .v3 = 10027 };
}

// From CT_Snen_xab.c:51774:51794
// struct  Vp_Sf_Sf  {
//   void *v1;
//   struct empty v2;
//   struct empty v3;
// };

test "Vp_Sf_Sf layout" {
    var lv: c.Vp_Sf_Sf = undefined;
    try testing.expectSize(c.Vp_Sf_Sf, ABISELECT(8, 4));
    try testing.expectAlign(c.Vp_Sf_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_Sf(), .{ .v1 = null, .v2 = .{}, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_Sf_Sf());
    try testing.expectOk(c.send_Vp_Sf_Sf());
    try testing.expectOk(c.assert_Vp_Sf_Sf(.{ .v1 = null, .v2 = .{}, .v3 = .{} }));
}
pub export fn zig_assert_Vp_Sf_Sf(lv: c.Vp_Sf_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_Sf() c.Vp_Sf_Sf {
    return .{ .v1 = null, .v2 = .{}, .v3 = .{} };
}

// From CT_Snen_xab.c:51799:51819
// struct  Vp_Sf_Uc  {
//   void *v1;
//   struct empty v2;
//   unsigned char v3;
// };

test "Vp_Sf_Uc layout" {
    var lv: c.Vp_Sf_Uc = undefined;
    try testing.expectSize(c.Vp_Sf_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_Uc C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_Uc(), .{ .v1 = null, .v2 = .{}, .v3 = 94 });
    try testing.expectOk(c.assert_ret_Vp_Sf_Uc());
    try testing.expectOk(c.send_Vp_Sf_Uc());
    try testing.expectOk(c.assert_Vp_Sf_Uc(.{ .v1 = null, .v2 = .{}, .v3 = 94 }));
}
pub export fn zig_assert_Vp_Sf_Uc(lv: c.Vp_Sf_Uc) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 94) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_Uc() c.Vp_Sf_Uc {
    return .{ .v1 = null, .v2 = .{}, .v3 = 94 };
}

// From CT_Snen_xab.c:51824:51844
// struct  Vp_Sf_Ui  {
//   void *v1;
//   struct empty v2;
//   unsigned int v3;
// };

test "Vp_Sf_Ui layout" {
    var lv: c.Vp_Sf_Ui = undefined;
    try testing.expectSize(c.Vp_Sf_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_Ui C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_Ui(), .{ .v1 = null, .v2 = .{}, .v3 = 1521 });
    try testing.expectOk(c.assert_ret_Vp_Sf_Ui());
    try testing.expectOk(c.send_Vp_Sf_Ui());
    try testing.expectOk(c.assert_Vp_Sf_Ui(.{ .v1 = null, .v2 = .{}, .v3 = 1521 }));
}
pub export fn zig_assert_Vp_Sf_Ui(lv: c.Vp_Sf_Ui) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 1521) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_Ui() c.Vp_Sf_Ui {
    return .{ .v1 = null, .v2 = .{}, .v3 = 1521 };
}

// From CT_Snen_xab.c:51849:51869
// struct  Vp_Sf_Ul  {
//   void *v1;
//   struct empty v2;
//   __tsu64 v3;
// };

test "Vp_Sf_Ul layout" {
    var lv: c.Vp_Sf_Ul = undefined;
    try testing.expectSize(c.Vp_Sf_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Sf_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_Ul C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_Ul(), .{ .v1 = null, .v2 = .{}, .v3 = 3774 });
    try testing.expectOk(c.assert_ret_Vp_Sf_Ul());
    try testing.expectOk(c.send_Vp_Sf_Ul());
    try testing.expectOk(c.assert_Vp_Sf_Ul(.{ .v1 = null, .v2 = .{}, .v3 = 3774 }));
}
pub export fn zig_assert_Vp_Sf_Ul(lv: c.Vp_Sf_Ul) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 3774) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_Ul() c.Vp_Sf_Ul {
    return .{ .v1 = null, .v2 = .{}, .v3 = 3774 };
}

// From CT_Snen_xab.c:51874:51894
// struct  Vp_Sf_Us  {
//   void *v1;
//   struct empty v2;
//   unsigned short v3;
// };

test "Vp_Sf_Us layout" {
    var lv: c.Vp_Sf_Us = undefined;
    try testing.expectSize(c.Vp_Sf_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_Us C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_Us(), .{ .v1 = null, .v2 = .{}, .v3 = 27043 });
    try testing.expectOk(c.assert_ret_Vp_Sf_Us());
    try testing.expectOk(c.send_Vp_Sf_Us());
    try testing.expectOk(c.assert_Vp_Sf_Us(.{ .v1 = null, .v2 = .{}, .v3 = 27043 }));
}
pub export fn zig_assert_Vp_Sf_Us(lv: c.Vp_Sf_Us) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != 27043) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_Us() c.Vp_Sf_Us {
    return .{ .v1 = null, .v2 = .{}, .v3 = 27043 };
}

// From CT_Snen_xab.c:51899:51919
// struct  Vp_Sf_Vp  {
//   void *v1;
//   struct empty v2;
//   void *v3;
// };

test "Vp_Sf_Vp layout" {
    var lv: c.Vp_Sf_Vp = undefined;
    try testing.expectSize(c.Vp_Sf_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Sf_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Vp_Sf_Vp C calls" {
    try testing.expectEqual(c.ret_Vp_Sf_Vp(), .{ .v1 = null, .v2 = .{}, .v3 = null });
    try testing.expectOk(c.assert_ret_Vp_Sf_Vp());
    try testing.expectOk(c.send_Vp_Sf_Vp());
    try testing.expectOk(c.assert_Vp_Sf_Vp(.{ .v1 = null, .v2 = .{}, .v3 = null }));
}
pub export fn zig_assert_Vp_Sf_Vp(lv: c.Vp_Sf_Vp) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v3 != null) err = 3;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Sf_Vp() c.Vp_Sf_Vp {
    return .{ .v1 = null, .v2 = .{}, .v3 = null };
}

// From CT_Snen_xab.c:51924:51944
// struct  Vp_Uc_Sf  {
//   void *v1;
//   unsigned char v2;
//   struct empty v3;
// };

test "Vp_Uc_Sf layout" {
    var lv: c.Vp_Uc_Sf = undefined;
    try testing.expectSize(c.Vp_Uc_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}
test "Vp_Uc_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_Uc_Sf(), .{ .v1 = null, .v2 = 46, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_Uc_Sf());
    try testing.expectOk(c.send_Vp_Uc_Sf());
    try testing.expectOk(c.assert_Vp_Uc_Sf(.{ .v1 = null, .v2 = 46, .v3 = .{} }));
}
pub export fn zig_assert_Vp_Uc_Sf(lv: c.Vp_Uc_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 46) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Uc_Sf() c.Vp_Uc_Sf {
    return .{ .v1 = null, .v2 = 46, .v3 = .{} };
}

// From CT_Snen_xab.c:51949:51969
// struct  Vp_Ui_Sf  {
//   void *v1;
//   unsigned int v2;
//   struct empty v3;
// };

test "Vp_Ui_Sf layout" {
    var lv: c.Vp_Ui_Sf = undefined;
    try testing.expectSize(c.Vp_Ui_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ui_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}
test "Vp_Ui_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_Ui_Sf(), .{ .v1 = null, .v2 = 10702, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_Ui_Sf());
    try testing.expectOk(c.send_Vp_Ui_Sf());
    try testing.expectOk(c.assert_Vp_Ui_Sf(.{ .v1 = null, .v2 = 10702, .v3 = .{} }));
}
pub export fn zig_assert_Vp_Ui_Sf(lv: c.Vp_Ui_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 10702) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ui_Sf() c.Vp_Ui_Sf {
    return .{ .v1 = null, .v2 = 10702, .v3 = .{} };
}

// From CT_Snen_xab.c:51974:51994
// struct  Vp_Ul_Sf  {
//   void *v1;
//   __tsu64 v2;
//   struct empty v3;
// };

test "Vp_Ul_Sf layout" {
    var lv: c.Vp_Ul_Sf = undefined;
    try testing.expectSize(c.Vp_Ul_Sf, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ul_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Vp_Ul_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_Ul_Sf(), .{ .v1 = null, .v2 = 28979, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_Ul_Sf());
    try testing.expectOk(c.send_Vp_Ul_Sf());
    try testing.expectOk(c.assert_Vp_Ul_Sf(.{ .v1 = null, .v2 = 28979, .v3 = .{} }));
}
pub export fn zig_assert_Vp_Ul_Sf(lv: c.Vp_Ul_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 28979) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Ul_Sf() c.Vp_Ul_Sf {
    return .{ .v1 = null, .v2 = 28979, .v3 = .{} };
}

// From CT_Snen_xab.c:51999:52019
// struct  Vp_Us_Sf  {
//   void *v1;
//   unsigned short v2;
//   struct empty v3;
// };

test "Vp_Us_Sf layout" {
    var lv: c.Vp_Us_Sf = undefined;
    try testing.expectSize(c.Vp_Us_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}
test "Vp_Us_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_Us_Sf(), .{ .v1 = null, .v2 = 11938, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_Us_Sf());
    try testing.expectOk(c.send_Vp_Us_Sf());
    try testing.expectOk(c.assert_Vp_Us_Sf(.{ .v1 = null, .v2 = 11938, .v3 = .{} }));
}
pub export fn zig_assert_Vp_Us_Sf(lv: c.Vp_Us_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != 11938) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Us_Sf() c.Vp_Us_Sf {
    return .{ .v1 = null, .v2 = 11938, .v3 = .{} };
}

// From CT_Snen_xab.c:52024:52044
// struct  Vp_Vp_Sf  {
//   void *v1;
//   void *v2;
//   struct empty v3;
// };

test "Vp_Vp_Sf layout" {
    var lv: c.Vp_Vp_Sf = undefined;
    try testing.expectSize(c.Vp_Vp_Sf, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Vp_Sf, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Vp_Vp_Sf C calls" {
    try testing.expectEqual(c.ret_Vp_Vp_Sf(), .{ .v1 = null, .v2 = null, .v3 = .{} });
    try testing.expectOk(c.assert_ret_Vp_Vp_Sf());
    try testing.expectOk(c.send_Vp_Vp_Sf());
    try testing.expectOk(c.assert_Vp_Vp_Sf(.{ .v1 = null, .v2 = null, .v3 = .{} }));
}
pub export fn zig_assert_Vp_Vp_Sf(lv: c.Vp_Vp_Sf) c_int {
    var err: c_int = 0;
    if (lv.v1 != null) err = 1;
    if (lv.v2 != null) err = 2;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_Vp_Vp_Sf() c.Vp_Vp_Sf {
    return .{ .v1 = null, .v2 = null, .v3 = .{} };
}
