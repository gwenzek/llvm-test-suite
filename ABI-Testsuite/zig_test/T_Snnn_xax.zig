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

test "F_C layout" {
    var lv: c.F_C = undefined;
    try testing.expectSize(c.F_C, 8);
    try testing.expectAlign(c.F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_C C calls" {
    try testing.expectEqual(c.ret_F_C(), .{ .v1 = 0.5, .v2 = 105 });
    try testing.expectOk(c.assert_ret_F_C());
    try testing.expectOk(c.send_F_C());
    try testing.expectOk(c.recv_F_C(.{ .v1 = 0.5, .v2 = 105 }));
}
pub export fn zig_recv_F_C(lv: c.F_C) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 105) return 2;
    return 0;
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

test "F_C_C layout" {
    var lv: c.F_C_C = undefined;
    try testing.expectSize(c.F_C_C, 8);
    try testing.expectAlign(c.F_C_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "F_C_C C calls" {
    try testing.expectEqual(c.ret_F_C_C(), .{ .v1 = -2.125, .v2 = 111, .v3 = 18 });
    try testing.expectOk(c.assert_ret_F_C_C());
    try testing.expectOk(c.send_F_C_C());
    try testing.expectOk(c.recv_F_C_C(.{ .v1 = -2.125, .v2 = 111, .v3 = 18 }));
}
pub export fn zig_recv_F_C_C(lv: c.F_C_C) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 111) return 2;
    if (lv.v3 != 18) return 3;
    return 0;
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

test "F_C_D layout" {
    var lv: c.F_C_D = undefined;
    try testing.expectSize(c.F_C_D, 16);
    try testing.expectAlign(c.F_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_D C calls" {
    try testing.expectEqual(c.ret_F_C_D(), .{ .v1 = 0.5, .v2 = 57, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_F_C_D());
    try testing.expectOk(c.send_F_C_D());
    try testing.expectOk(c.recv_F_C_D(.{ .v1 = 0.5, .v2 = 57, .v3 = 0.5 }));
}
pub export fn zig_recv_F_C_D(lv: c.F_C_D) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 57) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
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

test "F_C_F layout" {
    var lv: c.F_C_F = undefined;
    try testing.expectSize(c.F_C_F, 12);
    try testing.expectAlign(c.F_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_F C calls" {
    try testing.expectEqual(c.ret_F_C_F(), .{ .v1 = 1.0, .v2 = 101, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_F_C_F());
    try testing.expectOk(c.send_F_C_F());
    try testing.expectOk(c.recv_F_C_F(.{ .v1 = 1.0, .v2 = 101, .v3 = 1.0 }));
}
pub export fn zig_recv_F_C_F(lv: c.F_C_F) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 101) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
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

test "F_C_I layout" {
    var lv: c.F_C_I = undefined;
    try testing.expectSize(c.F_C_I, 12);
    try testing.expectAlign(c.F_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_I C calls" {
    try testing.expectEqual(c.ret_F_C_I(), .{ .v1 = 1.0, .v2 = 112, .v3 = 2332 });
    try testing.expectOk(c.assert_ret_F_C_I());
    try testing.expectOk(c.send_F_C_I());
    try testing.expectOk(c.recv_F_C_I(.{ .v1 = 1.0, .v2 = 112, .v3 = 2332 }));
}
pub export fn zig_recv_F_C_I(lv: c.F_C_I) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 112) return 2;
    if (lv.v3 != 2332) return 3;
    return 0;
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

test "F_C_Ip layout" {
    var lv: c.F_C_Ip = undefined;
    try testing.expectSize(c.F_C_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_Ip C calls" {
    try testing.expectEqual(c.ret_F_C_Ip(), .{ .v1 = -0.25, .v2 = 70, .v3 = null });
    try testing.expectOk(c.assert_ret_F_C_Ip());
    try testing.expectOk(c.send_F_C_Ip());
    try testing.expectOk(c.recv_F_C_Ip(.{ .v1 = -0.25, .v2 = 70, .v3 = null }));
}
pub export fn zig_recv_F_C_Ip(lv: c.F_C_Ip) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 70) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_C_L layout" {
    var lv: c.F_C_L = undefined;
    try testing.expectSize(c.F_C_L, 16);
    try testing.expectAlign(c.F_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_L C calls" {
    try testing.expectEqual(c.ret_F_C_L(), .{ .v1 = 0.875, .v2 = 121, .v3 = 18229 });
    try testing.expectOk(c.assert_ret_F_C_L());
    try testing.expectOk(c.send_F_C_L());
    try testing.expectOk(c.recv_F_C_L(.{ .v1 = 0.875, .v2 = 121, .v3 = 18229 }));
}
pub export fn zig_recv_F_C_L(lv: c.F_C_L) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 121) return 2;
    if (lv.v3 != 18229) return 3;
    return 0;
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

test "F_C_S layout" {
    var lv: c.F_C_S = undefined;
    try testing.expectSize(c.F_C_S, 8);
    try testing.expectAlign(c.F_C_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_C_S C calls" {
    try testing.expectEqual(c.ret_F_C_S(), .{ .v1 = 0.875, .v2 = 31, .v3 = 31175 });
    try testing.expectOk(c.assert_ret_F_C_S());
    try testing.expectOk(c.send_F_C_S());
    try testing.expectOk(c.recv_F_C_S(.{ .v1 = 0.875, .v2 = 31, .v3 = 31175 }));
}
pub export fn zig_recv_F_C_S(lv: c.F_C_S) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 31) return 2;
    if (lv.v3 != 31175) return 3;
    return 0;
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

test "F_C_Uc layout" {
    var lv: c.F_C_Uc = undefined;
    try testing.expectSize(c.F_C_Uc, 8);
    try testing.expectAlign(c.F_C_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "F_C_Uc C calls" {
    try testing.expectEqual(c.ret_F_C_Uc(), .{ .v1 = 1.0, .v2 = 69, .v3 = 62 });
    try testing.expectOk(c.assert_ret_F_C_Uc());
    try testing.expectOk(c.send_F_C_Uc());
    try testing.expectOk(c.recv_F_C_Uc(.{ .v1 = 1.0, .v2 = 69, .v3 = 62 }));
}
pub export fn zig_recv_F_C_Uc(lv: c.F_C_Uc) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 69) return 2;
    if (lv.v3 != 62) return 3;
    return 0;
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

test "F_C_Ui layout" {
    var lv: c.F_C_Ui = undefined;
    try testing.expectSize(c.F_C_Ui, 12);
    try testing.expectAlign(c.F_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_Ui C calls" {
    try testing.expectEqual(c.ret_F_C_Ui(), .{ .v1 = 7.0, .v2 = 36, .v3 = 24845 });
    try testing.expectOk(c.assert_ret_F_C_Ui());
    try testing.expectOk(c.send_F_C_Ui());
    try testing.expectOk(c.recv_F_C_Ui(.{ .v1 = 7.0, .v2 = 36, .v3 = 24845 }));
}
pub export fn zig_recv_F_C_Ui(lv: c.F_C_Ui) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 36) return 2;
    if (lv.v3 != 24845) return 3;
    return 0;
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

test "F_C_Ul layout" {
    var lv: c.F_C_Ul = undefined;
    try testing.expectSize(c.F_C_Ul, 16);
    try testing.expectAlign(c.F_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_Ul C calls" {
    try testing.expectEqual(c.ret_F_C_Ul(), .{ .v1 = 7.0, .v2 = 124, .v3 = 11914 });
    try testing.expectOk(c.assert_ret_F_C_Ul());
    try testing.expectOk(c.send_F_C_Ul());
    try testing.expectOk(c.recv_F_C_Ul(.{ .v1 = 7.0, .v2 = 124, .v3 = 11914 }));
}
pub export fn zig_recv_F_C_Ul(lv: c.F_C_Ul) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 124) return 2;
    if (lv.v3 != 11914) return 3;
    return 0;
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

test "F_C_Us layout" {
    var lv: c.F_C_Us = undefined;
    try testing.expectSize(c.F_C_Us, 8);
    try testing.expectAlign(c.F_C_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_C_Us C calls" {
    try testing.expectEqual(c.ret_F_C_Us(), .{ .v1 = -2.125, .v2 = 81, .v3 = 25724 });
    try testing.expectOk(c.assert_ret_F_C_Us());
    try testing.expectOk(c.send_F_C_Us());
    try testing.expectOk(c.recv_F_C_Us(.{ .v1 = -2.125, .v2 = 81, .v3 = 25724 }));
}
pub export fn zig_recv_F_C_Us(lv: c.F_C_Us) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 81) return 2;
    if (lv.v3 != 25724) return 3;
    return 0;
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

test "F_C_Vp layout" {
    var lv: c.F_C_Vp = undefined;
    try testing.expectSize(c.F_C_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_C_Vp C calls" {
    try testing.expectEqual(c.ret_F_C_Vp(), .{ .v1 = 0.875, .v2 = 52, .v3 = null });
    try testing.expectOk(c.assert_ret_F_C_Vp());
    try testing.expectOk(c.send_F_C_Vp());
    try testing.expectOk(c.recv_F_C_Vp(.{ .v1 = 0.875, .v2 = 52, .v3 = null }));
}
pub export fn zig_recv_F_C_Vp(lv: c.F_C_Vp) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 52) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_C_Vp() c.F_C_Vp {
    return .{ .v1 = 0.875, .v2 = 52, .v3 = null };
}

// From T_Snnn_xax.c:20737:20755
// struct  F_D  {
//   float v1;
//   double v2;
// };

test "F_D layout" {
    var lv: c.F_D = undefined;
    try testing.expectSize(c.F_D, ABISELECT(16, 12));
    try testing.expectAlign(c.F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "F_D C calls" {
    try testing.expectEqual(c.ret_F_D(), .{ .v1 = 0.875, .v2 = 4.5 });
    try testing.expectOk(c.assert_ret_F_D());
    try testing.expectOk(c.send_F_D());
    try testing.expectOk(c.recv_F_D(.{ .v1 = 0.875, .v2 = 4.5 }));
}
pub export fn zig_recv_F_D(lv: c.F_D) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 4.5) return 2;
    return 0;
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

test "F_D_C layout" {
    var lv: c.F_D_C = undefined;
    try testing.expectSize(c.F_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_C C calls" {
    try testing.expectEqual(c.ret_F_D_C(), .{ .v1 = -2.125, .v2 = 0.5, .v3 = 36 });
    try testing.expectOk(c.assert_ret_F_D_C());
    try testing.expectOk(c.send_F_D_C());
    try testing.expectOk(c.recv_F_D_C(.{ .v1 = -2.125, .v2 = 0.5, .v3 = 36 }));
}
pub export fn zig_recv_F_D_C(lv: c.F_D_C) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != 36) return 3;
    return 0;
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

test "F_D_D layout" {
    var lv: c.F_D_D = undefined;
    try testing.expectSize(c.F_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_D C calls" {
    try testing.expectEqual(c.ret_F_D_D(), .{ .v1 = 1.0, .v2 = -0.25, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_F_D_D());
    try testing.expectOk(c.send_F_D_D());
    try testing.expectOk(c.recv_F_D_D(.{ .v1 = 1.0, .v2 = -0.25, .v3 = -2.125 }));
}
pub export fn zig_recv_F_D_D(lv: c.F_D_D) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
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

test "F_D_F layout" {
    var lv: c.F_D_F = undefined;
    try testing.expectSize(c.F_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_F C calls" {
    try testing.expectEqual(c.ret_F_D_F(), .{ .v1 = 0.5, .v2 = -0.25, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_F_D_F());
    try testing.expectOk(c.send_F_D_F());
    try testing.expectOk(c.recv_F_D_F(.{ .v1 = 0.5, .v2 = -0.25, .v3 = -0.25 }));
}
pub export fn zig_recv_F_D_F(lv: c.F_D_F) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
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

test "F_D_I layout" {
    var lv: c.F_D_I = undefined;
    try testing.expectSize(c.F_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_I C calls" {
    try testing.expectEqual(c.ret_F_D_I(), .{ .v1 = 0.5, .v2 = 4.5, .v3 = 2184 });
    try testing.expectOk(c.assert_ret_F_D_I());
    try testing.expectOk(c.send_F_D_I());
    try testing.expectOk(c.recv_F_D_I(.{ .v1 = 0.5, .v2 = 4.5, .v3 = 2184 }));
}
pub export fn zig_recv_F_D_I(lv: c.F_D_I) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 2184) return 3;
    return 0;
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

test "F_D_Ip layout" {
    var lv: c.F_D_Ip = undefined;
    try testing.expectSize(c.F_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Ip C calls" {
    try testing.expectEqual(c.ret_F_D_Ip(), .{ .v1 = 7.0, .v2 = 7.0, .v3 = null });
    try testing.expectOk(c.assert_ret_F_D_Ip());
    try testing.expectOk(c.send_F_D_Ip());
    try testing.expectOk(c.recv_F_D_Ip(.{ .v1 = 7.0, .v2 = 7.0, .v3 = null }));
}
pub export fn zig_recv_F_D_Ip(lv: c.F_D_Ip) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_D_L layout" {
    var lv: c.F_D_L = undefined;
    try testing.expectSize(c.F_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_L C calls" {
    try testing.expectEqual(c.ret_F_D_L(), .{ .v1 = -0.25, .v2 = 0.875, .v3 = 13946 });
    try testing.expectOk(c.assert_ret_F_D_L());
    try testing.expectOk(c.send_F_D_L());
    try testing.expectOk(c.recv_F_D_L(.{ .v1 = -0.25, .v2 = 0.875, .v3 = 13946 }));
}
pub export fn zig_recv_F_D_L(lv: c.F_D_L) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 13946) return 3;
    return 0;
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

test "F_D_S layout" {
    var lv: c.F_D_S = undefined;
    try testing.expectSize(c.F_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_S C calls" {
    try testing.expectEqual(c.ret_F_D_S(), .{ .v1 = 0.5, .v2 = 0.875, .v3 = 10845 });
    try testing.expectOk(c.assert_ret_F_D_S());
    try testing.expectOk(c.send_F_D_S());
    try testing.expectOk(c.recv_F_D_S(.{ .v1 = 0.5, .v2 = 0.875, .v3 = 10845 }));
}
pub export fn zig_recv_F_D_S(lv: c.F_D_S) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 10845) return 3;
    return 0;
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

test "F_D_Uc layout" {
    var lv: c.F_D_Uc = undefined;
    try testing.expectSize(c.F_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Uc C calls" {
    try testing.expectEqual(c.ret_F_D_Uc(), .{ .v1 = 0.5, .v2 = 7.0, .v3 = 85 });
    try testing.expectOk(c.assert_ret_F_D_Uc());
    try testing.expectOk(c.send_F_D_Uc());
    try testing.expectOk(c.recv_F_D_Uc(.{ .v1 = 0.5, .v2 = 7.0, .v3 = 85 }));
}
pub export fn zig_recv_F_D_Uc(lv: c.F_D_Uc) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 85) return 3;
    return 0;
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

test "F_D_Ui layout" {
    var lv: c.F_D_Ui = undefined;
    try testing.expectSize(c.F_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Ui C calls" {
    try testing.expectEqual(c.ret_F_D_Ui(), .{ .v1 = 7.0, .v2 = 0.875, .v3 = 19194 });
    try testing.expectOk(c.assert_ret_F_D_Ui());
    try testing.expectOk(c.send_F_D_Ui());
    try testing.expectOk(c.recv_F_D_Ui(.{ .v1 = 7.0, .v2 = 0.875, .v3 = 19194 }));
}
pub export fn zig_recv_F_D_Ui(lv: c.F_D_Ui) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 19194) return 3;
    return 0;
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

test "F_D_Ul layout" {
    var lv: c.F_D_Ul = undefined;
    try testing.expectSize(c.F_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Ul C calls" {
    try testing.expectEqual(c.ret_F_D_Ul(), .{ .v1 = 4.5, .v2 = 0.875, .v3 = 20762 });
    try testing.expectOk(c.assert_ret_F_D_Ul());
    try testing.expectOk(c.send_F_D_Ul());
    try testing.expectOk(c.recv_F_D_Ul(.{ .v1 = 4.5, .v2 = 0.875, .v3 = 20762 }));
}
pub export fn zig_recv_F_D_Ul(lv: c.F_D_Ul) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 20762) return 3;
    return 0;
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

test "F_D_Us layout" {
    var lv: c.F_D_Us = undefined;
    try testing.expectSize(c.F_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Us C calls" {
    try testing.expectEqual(c.ret_F_D_Us(), .{ .v1 = 4.5, .v2 = -2.125, .v3 = 447 });
    try testing.expectOk(c.assert_ret_F_D_Us());
    try testing.expectOk(c.send_F_D_Us());
    try testing.expectOk(c.recv_F_D_Us(.{ .v1 = 4.5, .v2 = -2.125, .v3 = 447 }));
}
pub export fn zig_recv_F_D_Us(lv: c.F_D_Us) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 447) return 3;
    return 0;
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

test "F_D_Vp layout" {
    var lv: c.F_D_Vp = undefined;
    try testing.expectSize(c.F_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_D_Vp C calls" {
    try testing.expectEqual(c.ret_F_D_Vp(), .{ .v1 = 1.0, .v2 = 7.0, .v3 = null });
    try testing.expectOk(c.assert_ret_F_D_Vp());
    try testing.expectOk(c.send_F_D_Vp());
    try testing.expectOk(c.recv_F_D_Vp(.{ .v1 = 1.0, .v2 = 7.0, .v3 = null }));
}
pub export fn zig_recv_F_D_Vp(lv: c.F_D_Vp) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_D_Vp() c.F_D_Vp {
    return .{ .v1 = 1.0, .v2 = 7.0, .v3 = null };
}

// From T_Snnn_xax.c:21784:21802
// struct  F_F  {
//   float v1;
//   float v2;
// };

test "F_F layout" {
    var lv: c.F_F = undefined;
    try testing.expectSize(c.F_F, 8);
    try testing.expectAlign(c.F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_F C calls" {
    try testing.expectEqual(c.ret_F_F(), .{ .v1 = 1.0, .v2 = 4.5 });
    try testing.expectOk(c.assert_ret_F_F());
    try testing.expectOk(c.send_F_F());
    try testing.expectOk(c.recv_F_F(.{ .v1 = 1.0, .v2 = 4.5 }));
}
pub export fn zig_recv_F_F(lv: c.F_F) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 4.5) return 2;
    return 0;
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

test "F_F_C layout" {
    var lv: c.F_F_C = undefined;
    try testing.expectSize(c.F_F_C, 12);
    try testing.expectAlign(c.F_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_C C calls" {
    try testing.expectEqual(c.ret_F_F_C(), .{ .v1 = 4.5, .v2 = -2.125, .v3 = 24 });
    try testing.expectOk(c.assert_ret_F_F_C());
    try testing.expectOk(c.send_F_F_C());
    try testing.expectOk(c.recv_F_F_C(.{ .v1 = 4.5, .v2 = -2.125, .v3 = 24 }));
}
pub export fn zig_recv_F_F_C(lv: c.F_F_C) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 24) return 3;
    return 0;
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

test "F_F_D layout" {
    var lv: c.F_F_D = undefined;
    try testing.expectSize(c.F_F_D, 16);
    try testing.expectAlign(c.F_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_D C calls" {
    try testing.expectEqual(c.ret_F_F_D(), .{ .v1 = 1.0, .v2 = 1.0, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_F_F_D());
    try testing.expectOk(c.send_F_F_D());
    try testing.expectOk(c.recv_F_F_D(.{ .v1 = 1.0, .v2 = 1.0, .v3 = -2.125 }));
}
pub export fn zig_recv_F_F_D(lv: c.F_F_D) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
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

test "F_F_F layout" {
    var lv: c.F_F_F = undefined;
    try testing.expectSize(c.F_F_F, 12);
    try testing.expectAlign(c.F_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_F C calls" {
    try testing.expectEqual(c.ret_F_F_F(), .{ .v1 = 1.0, .v2 = 4.5, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_F_F_F());
    try testing.expectOk(c.send_F_F_F());
    try testing.expectOk(c.recv_F_F_F(.{ .v1 = 1.0, .v2 = 4.5, .v3 = -2.125 }));
}
pub export fn zig_recv_F_F_F(lv: c.F_F_F) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
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

test "F_F_I layout" {
    var lv: c.F_F_I = undefined;
    try testing.expectSize(c.F_F_I, 12);
    try testing.expectAlign(c.F_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_I C calls" {
    try testing.expectEqual(c.ret_F_F_I(), .{ .v1 = -2.125, .v2 = 0.875, .v3 = 30673 });
    try testing.expectOk(c.assert_ret_F_F_I());
    try testing.expectOk(c.send_F_F_I());
    try testing.expectOk(c.recv_F_F_I(.{ .v1 = -2.125, .v2 = 0.875, .v3 = 30673 }));
}
pub export fn zig_recv_F_F_I(lv: c.F_F_I) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 30673) return 3;
    return 0;
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

test "F_F_Ip layout" {
    var lv: c.F_F_Ip = undefined;
    try testing.expectSize(c.F_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Ip C calls" {
    try testing.expectEqual(c.ret_F_F_Ip(), .{ .v1 = -2.125, .v2 = 7.0, .v3 = null });
    try testing.expectOk(c.assert_ret_F_F_Ip());
    try testing.expectOk(c.send_F_F_Ip());
    try testing.expectOk(c.recv_F_F_Ip(.{ .v1 = -2.125, .v2 = 7.0, .v3 = null }));
}
pub export fn zig_recv_F_F_Ip(lv: c.F_F_Ip) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_F_L layout" {
    var lv: c.F_F_L = undefined;
    try testing.expectSize(c.F_F_L, 16);
    try testing.expectAlign(c.F_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_L C calls" {
    try testing.expectEqual(c.ret_F_F_L(), .{ .v1 = 0.875, .v2 = 0.875, .v3 = 12916 });
    try testing.expectOk(c.assert_ret_F_F_L());
    try testing.expectOk(c.send_F_F_L());
    try testing.expectOk(c.recv_F_F_L(.{ .v1 = 0.875, .v2 = 0.875, .v3 = 12916 }));
}
pub export fn zig_recv_F_F_L(lv: c.F_F_L) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 12916) return 3;
    return 0;
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

test "F_F_S layout" {
    var lv: c.F_F_S = undefined;
    try testing.expectSize(c.F_F_S, 12);
    try testing.expectAlign(c.F_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_S C calls" {
    try testing.expectEqual(c.ret_F_F_S(), .{ .v1 = 0.5, .v2 = -2.125, .v3 = 24001 });
    try testing.expectOk(c.assert_ret_F_F_S());
    try testing.expectOk(c.send_F_F_S());
    try testing.expectOk(c.recv_F_F_S(.{ .v1 = 0.5, .v2 = -2.125, .v3 = 24001 }));
}
pub export fn zig_recv_F_F_S(lv: c.F_F_S) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 24001) return 3;
    return 0;
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

test "F_F_Uc layout" {
    var lv: c.F_F_Uc = undefined;
    try testing.expectSize(c.F_F_Uc, 12);
    try testing.expectAlign(c.F_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Uc C calls" {
    try testing.expectEqual(c.ret_F_F_Uc(), .{ .v1 = 0.5, .v2 = -0.25, .v3 = 36 });
    try testing.expectOk(c.assert_ret_F_F_Uc());
    try testing.expectOk(c.send_F_F_Uc());
    try testing.expectOk(c.recv_F_F_Uc(.{ .v1 = 0.5, .v2 = -0.25, .v3 = 36 }));
}
pub export fn zig_recv_F_F_Uc(lv: c.F_F_Uc) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 36) return 3;
    return 0;
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

test "F_F_Ui layout" {
    var lv: c.F_F_Ui = undefined;
    try testing.expectSize(c.F_F_Ui, 12);
    try testing.expectAlign(c.F_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Ui C calls" {
    try testing.expectEqual(c.ret_F_F_Ui(), .{ .v1 = 1.0, .v2 = 7.0, .v3 = 18540 });
    try testing.expectOk(c.assert_ret_F_F_Ui());
    try testing.expectOk(c.send_F_F_Ui());
    try testing.expectOk(c.recv_F_F_Ui(.{ .v1 = 1.0, .v2 = 7.0, .v3 = 18540 }));
}
pub export fn zig_recv_F_F_Ui(lv: c.F_F_Ui) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 18540) return 3;
    return 0;
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

test "F_F_Ul layout" {
    var lv: c.F_F_Ul = undefined;
    try testing.expectSize(c.F_F_Ul, 16);
    try testing.expectAlign(c.F_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Ul C calls" {
    try testing.expectEqual(c.ret_F_F_Ul(), .{ .v1 = -0.25, .v2 = 0.875, .v3 = 3966 });
    try testing.expectOk(c.assert_ret_F_F_Ul());
    try testing.expectOk(c.send_F_F_Ul());
    try testing.expectOk(c.recv_F_F_Ul(.{ .v1 = -0.25, .v2 = 0.875, .v3 = 3966 }));
}
pub export fn zig_recv_F_F_Ul(lv: c.F_F_Ul) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 3966) return 3;
    return 0;
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

test "F_F_Us layout" {
    var lv: c.F_F_Us = undefined;
    try testing.expectSize(c.F_F_Us, 12);
    try testing.expectAlign(c.F_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Us C calls" {
    try testing.expectEqual(c.ret_F_F_Us(), .{ .v1 = -0.25, .v2 = 1.0, .v3 = 27558 });
    try testing.expectOk(c.assert_ret_F_F_Us());
    try testing.expectOk(c.send_F_F_Us());
    try testing.expectOk(c.recv_F_F_Us(.{ .v1 = -0.25, .v2 = 1.0, .v3 = 27558 }));
}
pub export fn zig_recv_F_F_Us(lv: c.F_F_Us) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 27558) return 3;
    return 0;
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

test "F_F_Vp layout" {
    var lv: c.F_F_Vp = undefined;
    try testing.expectSize(c.F_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_F_Vp C calls" {
    try testing.expectEqual(c.ret_F_F_Vp(), .{ .v1 = 0.875, .v2 = 1.0, .v3 = null });
    try testing.expectOk(c.assert_ret_F_F_Vp());
    try testing.expectOk(c.send_F_F_Vp());
    try testing.expectOk(c.recv_F_F_Vp(.{ .v1 = 0.875, .v2 = 1.0, .v3 = null }));
}
pub export fn zig_recv_F_F_Vp(lv: c.F_F_Vp) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_F_Vp() c.F_F_Vp {
    return .{ .v1 = 0.875, .v2 = 1.0, .v3 = null };
}

// From T_Snnn_xax.c:22831:22849
// struct  F_I  {
//   float v1;
//   int v2;
// };

test "F_I layout" {
    var lv: c.F_I = undefined;
    try testing.expectSize(c.F_I, 8);
    try testing.expectAlign(c.F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_I C calls" {
    try testing.expectEqual(c.ret_F_I(), .{ .v1 = -0.25, .v2 = 2673 });
    try testing.expectOk(c.assert_ret_F_I());
    try testing.expectOk(c.send_F_I());
    try testing.expectOk(c.recv_F_I(.{ .v1 = -0.25, .v2 = 2673 }));
}
pub export fn zig_recv_F_I(lv: c.F_I) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 2673) return 2;
    return 0;
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

test "F_I_C layout" {
    var lv: c.F_I_C = undefined;
    try testing.expectSize(c.F_I_C, 12);
    try testing.expectAlign(c.F_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_C C calls" {
    try testing.expectEqual(c.ret_F_I_C(), .{ .v1 = 7.0, .v2 = 9062, .v3 = 42 });
    try testing.expectOk(c.assert_ret_F_I_C());
    try testing.expectOk(c.send_F_I_C());
    try testing.expectOk(c.recv_F_I_C(.{ .v1 = 7.0, .v2 = 9062, .v3 = 42 }));
}
pub export fn zig_recv_F_I_C(lv: c.F_I_C) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 9062) return 2;
    if (lv.v3 != 42) return 3;
    return 0;
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

test "F_I_D layout" {
    var lv: c.F_I_D = undefined;
    try testing.expectSize(c.F_I_D, 16);
    try testing.expectAlign(c.F_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_D C calls" {
    try testing.expectEqual(c.ret_F_I_D(), .{ .v1 = -2.125, .v2 = 31457, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_F_I_D());
    try testing.expectOk(c.send_F_I_D());
    try testing.expectOk(c.recv_F_I_D(.{ .v1 = -2.125, .v2 = 31457, .v3 = -0.25 }));
}
pub export fn zig_recv_F_I_D(lv: c.F_I_D) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 31457) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
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

test "F_I_F layout" {
    var lv: c.F_I_F = undefined;
    try testing.expectSize(c.F_I_F, 12);
    try testing.expectAlign(c.F_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_F C calls" {
    try testing.expectEqual(c.ret_F_I_F(), .{ .v1 = 4.5, .v2 = 29585, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_F_I_F());
    try testing.expectOk(c.send_F_I_F());
    try testing.expectOk(c.recv_F_I_F(.{ .v1 = 4.5, .v2 = 29585, .v3 = -2.125 }));
}
pub export fn zig_recv_F_I_F(lv: c.F_I_F) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 29585) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
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

test "F_I_I layout" {
    var lv: c.F_I_I = undefined;
    try testing.expectSize(c.F_I_I, 12);
    try testing.expectAlign(c.F_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_I C calls" {
    try testing.expectEqual(c.ret_F_I_I(), .{ .v1 = 7.0, .v2 = 32140, .v3 = 26057 });
    try testing.expectOk(c.assert_ret_F_I_I());
    try testing.expectOk(c.send_F_I_I());
    try testing.expectOk(c.recv_F_I_I(.{ .v1 = 7.0, .v2 = 32140, .v3 = 26057 }));
}
pub export fn zig_recv_F_I_I(lv: c.F_I_I) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 32140) return 2;
    if (lv.v3 != 26057) return 3;
    return 0;
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

test "F_I_Ip layout" {
    var lv: c.F_I_Ip = undefined;
    try testing.expectSize(c.F_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Ip C calls" {
    try testing.expectEqual(c.ret_F_I_Ip(), .{ .v1 = 0.875, .v2 = 15202, .v3 = null });
    try testing.expectOk(c.assert_ret_F_I_Ip());
    try testing.expectOk(c.send_F_I_Ip());
    try testing.expectOk(c.recv_F_I_Ip(.{ .v1 = 0.875, .v2 = 15202, .v3 = null }));
}
pub export fn zig_recv_F_I_Ip(lv: c.F_I_Ip) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 15202) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_I_L layout" {
    var lv: c.F_I_L = undefined;
    try testing.expectSize(c.F_I_L, 16);
    try testing.expectAlign(c.F_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_L C calls" {
    try testing.expectEqual(c.ret_F_I_L(), .{ .v1 = 0.5, .v2 = 6979, .v3 = 3920 });
    try testing.expectOk(c.assert_ret_F_I_L());
    try testing.expectOk(c.send_F_I_L());
    try testing.expectOk(c.recv_F_I_L(.{ .v1 = 0.5, .v2 = 6979, .v3 = 3920 }));
}
pub export fn zig_recv_F_I_L(lv: c.F_I_L) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 6979) return 2;
    if (lv.v3 != 3920) return 3;
    return 0;
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

test "F_I_S layout" {
    var lv: c.F_I_S = undefined;
    try testing.expectSize(c.F_I_S, 12);
    try testing.expectAlign(c.F_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_S C calls" {
    try testing.expectEqual(c.ret_F_I_S(), .{ .v1 = -2.125, .v2 = 4337, .v3 = 955 });
    try testing.expectOk(c.assert_ret_F_I_S());
    try testing.expectOk(c.send_F_I_S());
    try testing.expectOk(c.recv_F_I_S(.{ .v1 = -2.125, .v2 = 4337, .v3 = 955 }));
}
pub export fn zig_recv_F_I_S(lv: c.F_I_S) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 4337) return 2;
    if (lv.v3 != 955) return 3;
    return 0;
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

test "F_I_Uc layout" {
    var lv: c.F_I_Uc = undefined;
    try testing.expectSize(c.F_I_Uc, 12);
    try testing.expectAlign(c.F_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Uc C calls" {
    try testing.expectEqual(c.ret_F_I_Uc(), .{ .v1 = 4.5, .v2 = 24794, .v3 = 1 });
    try testing.expectOk(c.assert_ret_F_I_Uc());
    try testing.expectOk(c.send_F_I_Uc());
    try testing.expectOk(c.recv_F_I_Uc(.{ .v1 = 4.5, .v2 = 24794, .v3 = 1 }));
}
pub export fn zig_recv_F_I_Uc(lv: c.F_I_Uc) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 24794) return 2;
    if (lv.v3 != 1) return 3;
    return 0;
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

test "F_I_Ui layout" {
    var lv: c.F_I_Ui = undefined;
    try testing.expectSize(c.F_I_Ui, 12);
    try testing.expectAlign(c.F_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Ui C calls" {
    try testing.expectEqual(c.ret_F_I_Ui(), .{ .v1 = 0.5, .v2 = 12911, .v3 = 9581 });
    try testing.expectOk(c.assert_ret_F_I_Ui());
    try testing.expectOk(c.send_F_I_Ui());
    try testing.expectOk(c.recv_F_I_Ui(.{ .v1 = 0.5, .v2 = 12911, .v3 = 9581 }));
}
pub export fn zig_recv_F_I_Ui(lv: c.F_I_Ui) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 12911) return 2;
    if (lv.v3 != 9581) return 3;
    return 0;
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

test "F_I_Ul layout" {
    var lv: c.F_I_Ul = undefined;
    try testing.expectSize(c.F_I_Ul, 16);
    try testing.expectAlign(c.F_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Ul C calls" {
    try testing.expectEqual(c.ret_F_I_Ul(), .{ .v1 = -2.125, .v2 = 8607, .v3 = 1051 });
    try testing.expectOk(c.assert_ret_F_I_Ul());
    try testing.expectOk(c.send_F_I_Ul());
    try testing.expectOk(c.recv_F_I_Ul(.{ .v1 = -2.125, .v2 = 8607, .v3 = 1051 }));
}
pub export fn zig_recv_F_I_Ul(lv: c.F_I_Ul) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 8607) return 2;
    if (lv.v3 != 1051) return 3;
    return 0;
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

test "F_I_Us layout" {
    var lv: c.F_I_Us = undefined;
    try testing.expectSize(c.F_I_Us, 12);
    try testing.expectAlign(c.F_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Us C calls" {
    try testing.expectEqual(c.ret_F_I_Us(), .{ .v1 = 0.5, .v2 = 23512, .v3 = 5539 });
    try testing.expectOk(c.assert_ret_F_I_Us());
    try testing.expectOk(c.send_F_I_Us());
    try testing.expectOk(c.recv_F_I_Us(.{ .v1 = 0.5, .v2 = 23512, .v3 = 5539 }));
}
pub export fn zig_recv_F_I_Us(lv: c.F_I_Us) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 23512) return 2;
    if (lv.v3 != 5539) return 3;
    return 0;
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

test "F_I_Vp layout" {
    var lv: c.F_I_Vp = undefined;
    try testing.expectSize(c.F_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_I_Vp C calls" {
    try testing.expectEqual(c.ret_F_I_Vp(), .{ .v1 = 0.875, .v2 = 1023, .v3 = null });
    try testing.expectOk(c.assert_ret_F_I_Vp());
    try testing.expectOk(c.send_F_I_Vp());
    try testing.expectOk(c.recv_F_I_Vp(.{ .v1 = 0.875, .v2 = 1023, .v3 = null }));
}
pub export fn zig_recv_F_I_Vp(lv: c.F_I_Vp) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 1023) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_I_Vp() c.F_I_Vp {
    return .{ .v1 = 0.875, .v2 = 1023, .v3 = null };
}

// From T_Snnn_xax.c:23878:23896
// struct  F_Ip  {
//   float v1;
//   int *v2;
// };

test "F_Ip layout" {
    var lv: c.F_Ip = undefined;
    try testing.expectSize(c.F_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "F_Ip C calls" {
    try testing.expectEqual(c.ret_F_Ip(), .{ .v1 = 4.5, .v2 = null });
    try testing.expectOk(c.assert_ret_F_Ip());
    try testing.expectOk(c.send_F_Ip());
    try testing.expectOk(c.recv_F_Ip(.{ .v1 = 4.5, .v2 = null }));
}
pub export fn zig_recv_F_Ip(lv: c.F_Ip) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != null) return 2;
    return 0;
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

test "F_Ip_C layout" {
    var lv: c.F_Ip_C = undefined;
    try testing.expectSize(c.F_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_C C calls" {
    try testing.expectEqual(c.ret_F_Ip_C(), .{ .v1 = -2.125, .v2 = null, .v3 = 88 });
    try testing.expectOk(c.assert_ret_F_Ip_C());
    try testing.expectOk(c.send_F_Ip_C());
    try testing.expectOk(c.recv_F_Ip_C(.{ .v1 = -2.125, .v2 = null, .v3 = 88 }));
}
pub export fn zig_recv_F_Ip_C(lv: c.F_Ip_C) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 88) return 3;
    return 0;
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

test "F_Ip_D layout" {
    var lv: c.F_Ip_D = undefined;
    try testing.expectSize(c.F_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_D C calls" {
    try testing.expectEqual(c.ret_F_Ip_D(), .{ .v1 = 4.5, .v2 = null, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_F_Ip_D());
    try testing.expectOk(c.send_F_Ip_D());
    try testing.expectOk(c.recv_F_Ip_D(.{ .v1 = 4.5, .v2 = null, .v3 = 7.0 }));
}
pub export fn zig_recv_F_Ip_D(lv: c.F_Ip_D) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
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

test "F_Ip_F layout" {
    var lv: c.F_Ip_F = undefined;
    try testing.expectSize(c.F_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_F C calls" {
    try testing.expectEqual(c.ret_F_Ip_F(), .{ .v1 = -2.125, .v2 = null, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_F_Ip_F());
    try testing.expectOk(c.send_F_Ip_F());
    try testing.expectOk(c.recv_F_Ip_F(.{ .v1 = -2.125, .v2 = null, .v3 = 1.0 }));
}
pub export fn zig_recv_F_Ip_F(lv: c.F_Ip_F) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
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

test "F_Ip_I layout" {
    var lv: c.F_Ip_I = undefined;
    try testing.expectSize(c.F_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_I C calls" {
    try testing.expectEqual(c.ret_F_Ip_I(), .{ .v1 = 1.0, .v2 = null, .v3 = 25911 });
    try testing.expectOk(c.assert_ret_F_Ip_I());
    try testing.expectOk(c.send_F_Ip_I());
    try testing.expectOk(c.recv_F_Ip_I(.{ .v1 = 1.0, .v2 = null, .v3 = 25911 }));
}
pub export fn zig_recv_F_Ip_I(lv: c.F_Ip_I) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 25911) return 3;
    return 0;
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

test "F_Ip_Ip layout" {
    var lv: c.F_Ip_Ip = undefined;
    try testing.expectSize(c.F_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Ip C calls" {
    try testing.expectEqual(c.ret_F_Ip_Ip(), .{ .v1 = -0.25, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Ip_Ip());
    try testing.expectOk(c.send_F_Ip_Ip());
    try testing.expectOk(c.recv_F_Ip_Ip(.{ .v1 = -0.25, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_F_Ip_Ip(lv: c.F_Ip_Ip) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_Ip_L layout" {
    var lv: c.F_Ip_L = undefined;
    try testing.expectSize(c.F_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_L C calls" {
    try testing.expectEqual(c.ret_F_Ip_L(), .{ .v1 = 7.0, .v2 = null, .v3 = 20726 });
    try testing.expectOk(c.assert_ret_F_Ip_L());
    try testing.expectOk(c.send_F_Ip_L());
    try testing.expectOk(c.recv_F_Ip_L(.{ .v1 = 7.0, .v2 = null, .v3 = 20726 }));
}
pub export fn zig_recv_F_Ip_L(lv: c.F_Ip_L) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 20726) return 3;
    return 0;
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

test "F_Ip_S layout" {
    var lv: c.F_Ip_S = undefined;
    try testing.expectSize(c.F_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_S C calls" {
    try testing.expectEqual(c.ret_F_Ip_S(), .{ .v1 = 0.5, .v2 = null, .v3 = 17278 });
    try testing.expectOk(c.assert_ret_F_Ip_S());
    try testing.expectOk(c.send_F_Ip_S());
    try testing.expectOk(c.recv_F_Ip_S(.{ .v1 = 0.5, .v2 = null, .v3 = 17278 }));
}
pub export fn zig_recv_F_Ip_S(lv: c.F_Ip_S) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 17278) return 3;
    return 0;
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

test "F_Ip_Uc layout" {
    var lv: c.F_Ip_Uc = undefined;
    try testing.expectSize(c.F_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Uc C calls" {
    try testing.expectEqual(c.ret_F_Ip_Uc(), .{ .v1 = 7.0, .v2 = null, .v3 = 24 });
    try testing.expectOk(c.assert_ret_F_Ip_Uc());
    try testing.expectOk(c.send_F_Ip_Uc());
    try testing.expectOk(c.recv_F_Ip_Uc(.{ .v1 = 7.0, .v2 = null, .v3 = 24 }));
}
pub export fn zig_recv_F_Ip_Uc(lv: c.F_Ip_Uc) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 24) return 3;
    return 0;
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

test "F_Ip_Ui layout" {
    var lv: c.F_Ip_Ui = undefined;
    try testing.expectSize(c.F_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Ui C calls" {
    try testing.expectEqual(c.ret_F_Ip_Ui(), .{ .v1 = 0.5, .v2 = null, .v3 = 28681 });
    try testing.expectOk(c.assert_ret_F_Ip_Ui());
    try testing.expectOk(c.send_F_Ip_Ui());
    try testing.expectOk(c.recv_F_Ip_Ui(.{ .v1 = 0.5, .v2 = null, .v3 = 28681 }));
}
pub export fn zig_recv_F_Ip_Ui(lv: c.F_Ip_Ui) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 28681) return 3;
    return 0;
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

test "F_Ip_Ul layout" {
    var lv: c.F_Ip_Ul = undefined;
    try testing.expectSize(c.F_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Ul C calls" {
    try testing.expectEqual(c.ret_F_Ip_Ul(), .{ .v1 = 0.875, .v2 = null, .v3 = 20410 });
    try testing.expectOk(c.assert_ret_F_Ip_Ul());
    try testing.expectOk(c.send_F_Ip_Ul());
    try testing.expectOk(c.recv_F_Ip_Ul(.{ .v1 = 0.875, .v2 = null, .v3 = 20410 }));
}
pub export fn zig_recv_F_Ip_Ul(lv: c.F_Ip_Ul) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 20410) return 3;
    return 0;
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

test "F_Ip_Us layout" {
    var lv: c.F_Ip_Us = undefined;
    try testing.expectSize(c.F_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Us C calls" {
    try testing.expectEqual(c.ret_F_Ip_Us(), .{ .v1 = -2.125, .v2 = null, .v3 = 21682 });
    try testing.expectOk(c.assert_ret_F_Ip_Us());
    try testing.expectOk(c.send_F_Ip_Us());
    try testing.expectOk(c.recv_F_Ip_Us(.{ .v1 = -2.125, .v2 = null, .v3 = 21682 }));
}
pub export fn zig_recv_F_Ip_Us(lv: c.F_Ip_Us) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 21682) return 3;
    return 0;
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

test "F_Ip_Vp layout" {
    var lv: c.F_Ip_Vp = undefined;
    try testing.expectSize(c.F_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Ip_Vp C calls" {
    try testing.expectEqual(c.ret_F_Ip_Vp(), .{ .v1 = 0.875, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Ip_Vp());
    try testing.expectOk(c.send_F_Ip_Vp());
    try testing.expectOk(c.recv_F_Ip_Vp(.{ .v1 = 0.875, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_F_Ip_Vp(lv: c.F_Ip_Vp) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_Ip_Vp() c.F_Ip_Vp {
    return .{ .v1 = 0.875, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:24925:24943
// struct  F_L  {
//   float v1;
//   __tsi64 v2;
// };

test "F_L layout" {
    var lv: c.F_L = undefined;
    try testing.expectSize(c.F_L, ABISELECT(16, 12));
    try testing.expectAlign(c.F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "F_L C calls" {
    try testing.expectEqual(c.ret_F_L(), .{ .v1 = -2.125, .v2 = 11017 });
    try testing.expectOk(c.assert_ret_F_L());
    try testing.expectOk(c.send_F_L());
    try testing.expectOk(c.recv_F_L(.{ .v1 = -2.125, .v2 = 11017 }));
}
pub export fn zig_recv_F_L(lv: c.F_L) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 11017) return 2;
    return 0;
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

test "F_L_C layout" {
    var lv: c.F_L_C = undefined;
    try testing.expectSize(c.F_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_C C calls" {
    try testing.expectEqual(c.ret_F_L_C(), .{ .v1 = 0.5, .v2 = 26491, .v3 = 72 });
    try testing.expectOk(c.assert_ret_F_L_C());
    try testing.expectOk(c.send_F_L_C());
    try testing.expectOk(c.recv_F_L_C(.{ .v1 = 0.5, .v2 = 26491, .v3 = 72 }));
}
pub export fn zig_recv_F_L_C(lv: c.F_L_C) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 26491) return 2;
    if (lv.v3 != 72) return 3;
    return 0;
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

test "F_L_D layout" {
    var lv: c.F_L_D = undefined;
    try testing.expectSize(c.F_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_D C calls" {
    try testing.expectEqual(c.ret_F_L_D(), .{ .v1 = 4.5, .v2 = 6010, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_F_L_D());
    try testing.expectOk(c.send_F_L_D());
    try testing.expectOk(c.recv_F_L_D(.{ .v1 = 4.5, .v2 = 6010, .v3 = -2.125 }));
}
pub export fn zig_recv_F_L_D(lv: c.F_L_D) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 6010) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
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

test "F_L_F layout" {
    var lv: c.F_L_F = undefined;
    try testing.expectSize(c.F_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_F C calls" {
    try testing.expectEqual(c.ret_F_L_F(), .{ .v1 = 4.5, .v2 = 1339, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_F_L_F());
    try testing.expectOk(c.send_F_L_F());
    try testing.expectOk(c.recv_F_L_F(.{ .v1 = 4.5, .v2 = 1339, .v3 = 4.5 }));
}
pub export fn zig_recv_F_L_F(lv: c.F_L_F) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 1339) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
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

test "F_L_I layout" {
    var lv: c.F_L_I = undefined;
    try testing.expectSize(c.F_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_I C calls" {
    try testing.expectEqual(c.ret_F_L_I(), .{ .v1 = -0.25, .v2 = 5595, .v3 = 27088 });
    try testing.expectOk(c.assert_ret_F_L_I());
    try testing.expectOk(c.send_F_L_I());
    try testing.expectOk(c.recv_F_L_I(.{ .v1 = -0.25, .v2 = 5595, .v3 = 27088 }));
}
pub export fn zig_recv_F_L_I(lv: c.F_L_I) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 5595) return 2;
    if (lv.v3 != 27088) return 3;
    return 0;
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

test "F_L_Ip layout" {
    var lv: c.F_L_Ip = undefined;
    try testing.expectSize(c.F_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Ip C calls" {
    try testing.expectEqual(c.ret_F_L_Ip(), .{ .v1 = 0.875, .v2 = 30167, .v3 = null });
    try testing.expectOk(c.assert_ret_F_L_Ip());
    try testing.expectOk(c.send_F_L_Ip());
    try testing.expectOk(c.recv_F_L_Ip(.{ .v1 = 0.875, .v2 = 30167, .v3 = null }));
}
pub export fn zig_recv_F_L_Ip(lv: c.F_L_Ip) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 30167) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_L_L layout" {
    var lv: c.F_L_L = undefined;
    try testing.expectSize(c.F_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_L C calls" {
    try testing.expectEqual(c.ret_F_L_L(), .{ .v1 = 0.875, .v2 = 31661, .v3 = 592 });
    try testing.expectOk(c.assert_ret_F_L_L());
    try testing.expectOk(c.send_F_L_L());
    try testing.expectOk(c.recv_F_L_L(.{ .v1 = 0.875, .v2 = 31661, .v3 = 592 }));
}
pub export fn zig_recv_F_L_L(lv: c.F_L_L) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 31661) return 2;
    if (lv.v3 != 592) return 3;
    return 0;
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

test "F_L_S layout" {
    var lv: c.F_L_S = undefined;
    try testing.expectSize(c.F_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_S C calls" {
    try testing.expectEqual(c.ret_F_L_S(), .{ .v1 = 0.875, .v2 = 29218, .v3 = 27604 });
    try testing.expectOk(c.assert_ret_F_L_S());
    try testing.expectOk(c.send_F_L_S());
    try testing.expectOk(c.recv_F_L_S(.{ .v1 = 0.875, .v2 = 29218, .v3 = 27604 }));
}
pub export fn zig_recv_F_L_S(lv: c.F_L_S) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 29218) return 2;
    if (lv.v3 != 27604) return 3;
    return 0;
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

test "F_L_Uc layout" {
    var lv: c.F_L_Uc = undefined;
    try testing.expectSize(c.F_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Uc C calls" {
    try testing.expectEqual(c.ret_F_L_Uc(), .{ .v1 = 4.5, .v2 = 31405, .v3 = 5 });
    try testing.expectOk(c.assert_ret_F_L_Uc());
    try testing.expectOk(c.send_F_L_Uc());
    try testing.expectOk(c.recv_F_L_Uc(.{ .v1 = 4.5, .v2 = 31405, .v3 = 5 }));
}
pub export fn zig_recv_F_L_Uc(lv: c.F_L_Uc) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 31405) return 2;
    if (lv.v3 != 5) return 3;
    return 0;
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

test "F_L_Ui layout" {
    var lv: c.F_L_Ui = undefined;
    try testing.expectSize(c.F_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Ui C calls" {
    try testing.expectEqual(c.ret_F_L_Ui(), .{ .v1 = 0.5, .v2 = 9274, .v3 = 21311 });
    try testing.expectOk(c.assert_ret_F_L_Ui());
    try testing.expectOk(c.send_F_L_Ui());
    try testing.expectOk(c.recv_F_L_Ui(.{ .v1 = 0.5, .v2 = 9274, .v3 = 21311 }));
}
pub export fn zig_recv_F_L_Ui(lv: c.F_L_Ui) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 9274) return 2;
    if (lv.v3 != 21311) return 3;
    return 0;
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

test "F_L_Ul layout" {
    var lv: c.F_L_Ul = undefined;
    try testing.expectSize(c.F_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Ul C calls" {
    try testing.expectEqual(c.ret_F_L_Ul(), .{ .v1 = 4.5, .v2 = 9453, .v3 = 27799 });
    try testing.expectOk(c.assert_ret_F_L_Ul());
    try testing.expectOk(c.send_F_L_Ul());
    try testing.expectOk(c.recv_F_L_Ul(.{ .v1 = 4.5, .v2 = 9453, .v3 = 27799 }));
}
pub export fn zig_recv_F_L_Ul(lv: c.F_L_Ul) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 9453) return 2;
    if (lv.v3 != 27799) return 3;
    return 0;
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

test "F_L_Us layout" {
    var lv: c.F_L_Us = undefined;
    try testing.expectSize(c.F_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Us C calls" {
    try testing.expectEqual(c.ret_F_L_Us(), .{ .v1 = 0.5, .v2 = 6123, .v3 = 22927 });
    try testing.expectOk(c.assert_ret_F_L_Us());
    try testing.expectOk(c.send_F_L_Us());
    try testing.expectOk(c.recv_F_L_Us(.{ .v1 = 0.5, .v2 = 6123, .v3 = 22927 }));
}
pub export fn zig_recv_F_L_Us(lv: c.F_L_Us) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 6123) return 2;
    if (lv.v3 != 22927) return 3;
    return 0;
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

test "F_L_Vp layout" {
    var lv: c.F_L_Vp = undefined;
    try testing.expectSize(c.F_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_L_Vp C calls" {
    try testing.expectEqual(c.ret_F_L_Vp(), .{ .v1 = -0.25, .v2 = 29255, .v3 = null });
    try testing.expectOk(c.assert_ret_F_L_Vp());
    try testing.expectOk(c.send_F_L_Vp());
    try testing.expectOk(c.recv_F_L_Vp(.{ .v1 = -0.25, .v2 = 29255, .v3 = null }));
}
pub export fn zig_recv_F_L_Vp(lv: c.F_L_Vp) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 29255) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_L_Vp() c.F_L_Vp {
    return .{ .v1 = -0.25, .v2 = 29255, .v3 = null };
}

// From T_Snnn_xax.c:25972:25990
// struct  F_S  {
//   float v1;
//   short v2;
// };

test "F_S layout" {
    var lv: c.F_S = undefined;
    try testing.expectSize(c.F_S, 8);
    try testing.expectAlign(c.F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_S C calls" {
    try testing.expectEqual(c.ret_F_S(), .{ .v1 = 7.0, .v2 = 28164 });
    try testing.expectOk(c.assert_ret_F_S());
    try testing.expectOk(c.send_F_S());
    try testing.expectOk(c.recv_F_S(.{ .v1 = 7.0, .v2 = 28164 }));
}
pub export fn zig_recv_F_S(lv: c.F_S) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 28164) return 2;
    return 0;
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

test "F_S_C layout" {
    var lv: c.F_S_C = undefined;
    try testing.expectSize(c.F_S_C, 8);
    try testing.expectAlign(c.F_S_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_S_C C calls" {
    try testing.expectEqual(c.ret_F_S_C(), .{ .v1 = 7.0, .v2 = 29744, .v3 = 119 });
    try testing.expectOk(c.assert_ret_F_S_C());
    try testing.expectOk(c.send_F_S_C());
    try testing.expectOk(c.recv_F_S_C(.{ .v1 = 7.0, .v2 = 29744, .v3 = 119 }));
}
pub export fn zig_recv_F_S_C(lv: c.F_S_C) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 29744) return 2;
    if (lv.v3 != 119) return 3;
    return 0;
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

test "F_S_D layout" {
    var lv: c.F_S_D = undefined;
    try testing.expectSize(c.F_S_D, 16);
    try testing.expectAlign(c.F_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_D C calls" {
    try testing.expectEqual(c.ret_F_S_D(), .{ .v1 = -2.125, .v2 = 18960, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_F_S_D());
    try testing.expectOk(c.send_F_S_D());
    try testing.expectOk(c.recv_F_S_D(.{ .v1 = -2.125, .v2 = 18960, .v3 = 1.0 }));
}
pub export fn zig_recv_F_S_D(lv: c.F_S_D) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 18960) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
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

test "F_S_F layout" {
    var lv: c.F_S_F = undefined;
    try testing.expectSize(c.F_S_F, 12);
    try testing.expectAlign(c.F_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_F C calls" {
    try testing.expectEqual(c.ret_F_S_F(), .{ .v1 = 7.0, .v2 = 14516, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_F_S_F());
    try testing.expectOk(c.send_F_S_F());
    try testing.expectOk(c.recv_F_S_F(.{ .v1 = 7.0, .v2 = 14516, .v3 = -2.125 }));
}
pub export fn zig_recv_F_S_F(lv: c.F_S_F) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 14516) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
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

test "F_S_I layout" {
    var lv: c.F_S_I = undefined;
    try testing.expectSize(c.F_S_I, 12);
    try testing.expectAlign(c.F_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_I C calls" {
    try testing.expectEqual(c.ret_F_S_I(), .{ .v1 = 7.0, .v2 = 24764, .v3 = 23226 });
    try testing.expectOk(c.assert_ret_F_S_I());
    try testing.expectOk(c.send_F_S_I());
    try testing.expectOk(c.recv_F_S_I(.{ .v1 = 7.0, .v2 = 24764, .v3 = 23226 }));
}
pub export fn zig_recv_F_S_I(lv: c.F_S_I) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 24764) return 2;
    if (lv.v3 != 23226) return 3;
    return 0;
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

test "F_S_Ip layout" {
    var lv: c.F_S_Ip = undefined;
    try testing.expectSize(c.F_S_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_Ip C calls" {
    try testing.expectEqual(c.ret_F_S_Ip(), .{ .v1 = 1.0, .v2 = 5176, .v3 = null });
    try testing.expectOk(c.assert_ret_F_S_Ip());
    try testing.expectOk(c.send_F_S_Ip());
    try testing.expectOk(c.recv_F_S_Ip(.{ .v1 = 1.0, .v2 = 5176, .v3 = null }));
}
pub export fn zig_recv_F_S_Ip(lv: c.F_S_Ip) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 5176) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_S_L layout" {
    var lv: c.F_S_L = undefined;
    try testing.expectSize(c.F_S_L, 16);
    try testing.expectAlign(c.F_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_L C calls" {
    try testing.expectEqual(c.ret_F_S_L(), .{ .v1 = -2.125, .v2 = 11860, .v3 = 24497 });
    try testing.expectOk(c.assert_ret_F_S_L());
    try testing.expectOk(c.send_F_S_L());
    try testing.expectOk(c.recv_F_S_L(.{ .v1 = -2.125, .v2 = 11860, .v3 = 24497 }));
}
pub export fn zig_recv_F_S_L(lv: c.F_S_L) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 11860) return 2;
    if (lv.v3 != 24497) return 3;
    return 0;
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

test "F_S_S layout" {
    var lv: c.F_S_S = undefined;
    try testing.expectSize(c.F_S_S, 8);
    try testing.expectAlign(c.F_S_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_S_S C calls" {
    try testing.expectEqual(c.ret_F_S_S(), .{ .v1 = 1.0, .v2 = 7971, .v3 = 12118 });
    try testing.expectOk(c.assert_ret_F_S_S());
    try testing.expectOk(c.send_F_S_S());
    try testing.expectOk(c.recv_F_S_S(.{ .v1 = 1.0, .v2 = 7971, .v3 = 12118 }));
}
pub export fn zig_recv_F_S_S(lv: c.F_S_S) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 7971) return 2;
    if (lv.v3 != 12118) return 3;
    return 0;
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

test "F_S_Uc layout" {
    var lv: c.F_S_Uc = undefined;
    try testing.expectSize(c.F_S_Uc, 8);
    try testing.expectAlign(c.F_S_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_S_Uc C calls" {
    try testing.expectEqual(c.ret_F_S_Uc(), .{ .v1 = 7.0, .v2 = 30467, .v3 = 22 });
    try testing.expectOk(c.assert_ret_F_S_Uc());
    try testing.expectOk(c.send_F_S_Uc());
    try testing.expectOk(c.recv_F_S_Uc(.{ .v1 = 7.0, .v2 = 30467, .v3 = 22 }));
}
pub export fn zig_recv_F_S_Uc(lv: c.F_S_Uc) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 30467) return 2;
    if (lv.v3 != 22) return 3;
    return 0;
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

test "F_S_Ui layout" {
    var lv: c.F_S_Ui = undefined;
    try testing.expectSize(c.F_S_Ui, 12);
    try testing.expectAlign(c.F_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_Ui C calls" {
    try testing.expectEqual(c.ret_F_S_Ui(), .{ .v1 = 0.875, .v2 = 4283, .v3 = 12381 });
    try testing.expectOk(c.assert_ret_F_S_Ui());
    try testing.expectOk(c.send_F_S_Ui());
    try testing.expectOk(c.recv_F_S_Ui(.{ .v1 = 0.875, .v2 = 4283, .v3 = 12381 }));
}
pub export fn zig_recv_F_S_Ui(lv: c.F_S_Ui) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 4283) return 2;
    if (lv.v3 != 12381) return 3;
    return 0;
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

test "F_S_Ul layout" {
    var lv: c.F_S_Ul = undefined;
    try testing.expectSize(c.F_S_Ul, 16);
    try testing.expectAlign(c.F_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_Ul C calls" {
    try testing.expectEqual(c.ret_F_S_Ul(), .{ .v1 = -0.25, .v2 = 12799, .v3 = 20298 });
    try testing.expectOk(c.assert_ret_F_S_Ul());
    try testing.expectOk(c.send_F_S_Ul());
    try testing.expectOk(c.recv_F_S_Ul(.{ .v1 = -0.25, .v2 = 12799, .v3 = 20298 }));
}
pub export fn zig_recv_F_S_Ul(lv: c.F_S_Ul) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 12799) return 2;
    if (lv.v3 != 20298) return 3;
    return 0;
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

test "F_S_Us layout" {
    var lv: c.F_S_Us = undefined;
    try testing.expectSize(c.F_S_Us, 8);
    try testing.expectAlign(c.F_S_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_S_Us C calls" {
    try testing.expectEqual(c.ret_F_S_Us(), .{ .v1 = -2.125, .v2 = 29977, .v3 = 6734 });
    try testing.expectOk(c.assert_ret_F_S_Us());
    try testing.expectOk(c.send_F_S_Us());
    try testing.expectOk(c.recv_F_S_Us(.{ .v1 = -2.125, .v2 = 29977, .v3 = 6734 }));
}
pub export fn zig_recv_F_S_Us(lv: c.F_S_Us) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 29977) return 2;
    if (lv.v3 != 6734) return 3;
    return 0;
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

test "F_S_Vp layout" {
    var lv: c.F_S_Vp = undefined;
    try testing.expectSize(c.F_S_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_S_Vp C calls" {
    try testing.expectEqual(c.ret_F_S_Vp(), .{ .v1 = 4.5, .v2 = 23368, .v3 = null });
    try testing.expectOk(c.assert_ret_F_S_Vp());
    try testing.expectOk(c.send_F_S_Vp());
    try testing.expectOk(c.recv_F_S_Vp(.{ .v1 = 4.5, .v2 = 23368, .v3 = null }));
}
pub export fn zig_recv_F_S_Vp(lv: c.F_S_Vp) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 23368) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_S_Vp() c.F_S_Vp {
    return .{ .v1 = 4.5, .v2 = 23368, .v3 = null };
}

// From T_Snnn_xax.c:27019:27037
// struct  F_Uc  {
//   float v1;
//   unsigned char v2;
// };

test "F_Uc layout" {
    var lv: c.F_Uc = undefined;
    try testing.expectSize(c.F_Uc, 8);
    try testing.expectAlign(c.F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_Uc C calls" {
    try testing.expectEqual(c.ret_F_Uc(), .{ .v1 = -0.25, .v2 = 118 });
    try testing.expectOk(c.assert_ret_F_Uc());
    try testing.expectOk(c.send_F_Uc());
    try testing.expectOk(c.recv_F_Uc(.{ .v1 = -0.25, .v2 = 118 }));
}
pub export fn zig_recv_F_Uc(lv: c.F_Uc) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 118) return 2;
    return 0;
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

test "F_Uc_C layout" {
    var lv: c.F_Uc_C = undefined;
    try testing.expectSize(c.F_Uc_C, 8);
    try testing.expectAlign(c.F_Uc_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "F_Uc_C C calls" {
    try testing.expectEqual(c.ret_F_Uc_C(), .{ .v1 = -2.125, .v2 = 96, .v3 = 48 });
    try testing.expectOk(c.assert_ret_F_Uc_C());
    try testing.expectOk(c.send_F_Uc_C());
    try testing.expectOk(c.recv_F_Uc_C(.{ .v1 = -2.125, .v2 = 96, .v3 = 48 }));
}
pub export fn zig_recv_F_Uc_C(lv: c.F_Uc_C) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 96) return 2;
    if (lv.v3 != 48) return 3;
    return 0;
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

test "F_Uc_D layout" {
    var lv: c.F_Uc_D = undefined;
    try testing.expectSize(c.F_Uc_D, 16);
    try testing.expectAlign(c.F_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_D C calls" {
    try testing.expectEqual(c.ret_F_Uc_D(), .{ .v1 = 7.0, .v2 = 109, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_F_Uc_D());
    try testing.expectOk(c.send_F_Uc_D());
    try testing.expectOk(c.recv_F_Uc_D(.{ .v1 = 7.0, .v2 = 109, .v3 = 0.5 }));
}
pub export fn zig_recv_F_Uc_D(lv: c.F_Uc_D) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 109) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
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

test "F_Uc_F layout" {
    var lv: c.F_Uc_F = undefined;
    try testing.expectSize(c.F_Uc_F, 12);
    try testing.expectAlign(c.F_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_F C calls" {
    try testing.expectEqual(c.ret_F_Uc_F(), .{ .v1 = -2.125, .v2 = 84, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_F_Uc_F());
    try testing.expectOk(c.send_F_Uc_F());
    try testing.expectOk(c.recv_F_Uc_F(.{ .v1 = -2.125, .v2 = 84, .v3 = 4.5 }));
}
pub export fn zig_recv_F_Uc_F(lv: c.F_Uc_F) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 84) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
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

test "F_Uc_I layout" {
    var lv: c.F_Uc_I = undefined;
    try testing.expectSize(c.F_Uc_I, 12);
    try testing.expectAlign(c.F_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_I C calls" {
    try testing.expectEqual(c.ret_F_Uc_I(), .{ .v1 = 7.0, .v2 = 127, .v3 = 20842 });
    try testing.expectOk(c.assert_ret_F_Uc_I());
    try testing.expectOk(c.send_F_Uc_I());
    try testing.expectOk(c.recv_F_Uc_I(.{ .v1 = 7.0, .v2 = 127, .v3 = 20842 }));
}
pub export fn zig_recv_F_Uc_I(lv: c.F_Uc_I) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 127) return 2;
    if (lv.v3 != 20842) return 3;
    return 0;
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

test "F_Uc_Ip layout" {
    var lv: c.F_Uc_Ip = undefined;
    try testing.expectSize(c.F_Uc_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_Ip C calls" {
    try testing.expectEqual(c.ret_F_Uc_Ip(), .{ .v1 = 0.875, .v2 = 40, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Uc_Ip());
    try testing.expectOk(c.send_F_Uc_Ip());
    try testing.expectOk(c.recv_F_Uc_Ip(.{ .v1 = 0.875, .v2 = 40, .v3 = null }));
}
pub export fn zig_recv_F_Uc_Ip(lv: c.F_Uc_Ip) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 40) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_Uc_L layout" {
    var lv: c.F_Uc_L = undefined;
    try testing.expectSize(c.F_Uc_L, 16);
    try testing.expectAlign(c.F_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_L C calls" {
    try testing.expectEqual(c.ret_F_Uc_L(), .{ .v1 = 7.0, .v2 = 64, .v3 = 26076 });
    try testing.expectOk(c.assert_ret_F_Uc_L());
    try testing.expectOk(c.send_F_Uc_L());
    try testing.expectOk(c.recv_F_Uc_L(.{ .v1 = 7.0, .v2 = 64, .v3 = 26076 }));
}
pub export fn zig_recv_F_Uc_L(lv: c.F_Uc_L) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 64) return 2;
    if (lv.v3 != 26076) return 3;
    return 0;
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

test "F_Uc_S layout" {
    var lv: c.F_Uc_S = undefined;
    try testing.expectSize(c.F_Uc_S, 8);
    try testing.expectAlign(c.F_Uc_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Uc_S C calls" {
    try testing.expectEqual(c.ret_F_Uc_S(), .{ .v1 = 4.5, .v2 = 115, .v3 = 32111 });
    try testing.expectOk(c.assert_ret_F_Uc_S());
    try testing.expectOk(c.send_F_Uc_S());
    try testing.expectOk(c.recv_F_Uc_S(.{ .v1 = 4.5, .v2 = 115, .v3 = 32111 }));
}
pub export fn zig_recv_F_Uc_S(lv: c.F_Uc_S) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 115) return 2;
    if (lv.v3 != 32111) return 3;
    return 0;
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

test "F_Uc_Uc layout" {
    var lv: c.F_Uc_Uc = undefined;
    try testing.expectSize(c.F_Uc_Uc, 8);
    try testing.expectAlign(c.F_Uc_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "F_Uc_Uc C calls" {
    try testing.expectEqual(c.ret_F_Uc_Uc(), .{ .v1 = -2.125, .v2 = 2, .v3 = 27 });
    try testing.expectOk(c.assert_ret_F_Uc_Uc());
    try testing.expectOk(c.send_F_Uc_Uc());
    try testing.expectOk(c.recv_F_Uc_Uc(.{ .v1 = -2.125, .v2 = 2, .v3 = 27 }));
}
pub export fn zig_recv_F_Uc_Uc(lv: c.F_Uc_Uc) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 2) return 2;
    if (lv.v3 != 27) return 3;
    return 0;
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

test "F_Uc_Ui layout" {
    var lv: c.F_Uc_Ui = undefined;
    try testing.expectSize(c.F_Uc_Ui, 12);
    try testing.expectAlign(c.F_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_Ui C calls" {
    try testing.expectEqual(c.ret_F_Uc_Ui(), .{ .v1 = 1.0, .v2 = 12, .v3 = 25869 });
    try testing.expectOk(c.assert_ret_F_Uc_Ui());
    try testing.expectOk(c.send_F_Uc_Ui());
    try testing.expectOk(c.recv_F_Uc_Ui(.{ .v1 = 1.0, .v2 = 12, .v3 = 25869 }));
}
pub export fn zig_recv_F_Uc_Ui(lv: c.F_Uc_Ui) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 12) return 2;
    if (lv.v3 != 25869) return 3;
    return 0;
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

test "F_Uc_Ul layout" {
    var lv: c.F_Uc_Ul = undefined;
    try testing.expectSize(c.F_Uc_Ul, 16);
    try testing.expectAlign(c.F_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_Ul C calls" {
    try testing.expectEqual(c.ret_F_Uc_Ul(), .{ .v1 = 7.0, .v2 = 92, .v3 = 22425 });
    try testing.expectOk(c.assert_ret_F_Uc_Ul());
    try testing.expectOk(c.send_F_Uc_Ul());
    try testing.expectOk(c.recv_F_Uc_Ul(.{ .v1 = 7.0, .v2 = 92, .v3 = 22425 }));
}
pub export fn zig_recv_F_Uc_Ul(lv: c.F_Uc_Ul) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 92) return 2;
    if (lv.v3 != 22425) return 3;
    return 0;
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

test "F_Uc_Us layout" {
    var lv: c.F_Uc_Us = undefined;
    try testing.expectSize(c.F_Uc_Us, 8);
    try testing.expectAlign(c.F_Uc_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Uc_Us C calls" {
    try testing.expectEqual(c.ret_F_Uc_Us(), .{ .v1 = 0.5, .v2 = 45, .v3 = 2721 });
    try testing.expectOk(c.assert_ret_F_Uc_Us());
    try testing.expectOk(c.send_F_Uc_Us());
    try testing.expectOk(c.recv_F_Uc_Us(.{ .v1 = 0.5, .v2 = 45, .v3 = 2721 }));
}
pub export fn zig_recv_F_Uc_Us(lv: c.F_Uc_Us) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 45) return 2;
    if (lv.v3 != 2721) return 3;
    return 0;
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

test "F_Uc_Vp layout" {
    var lv: c.F_Uc_Vp = undefined;
    try testing.expectSize(c.F_Uc_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Uc_Vp C calls" {
    try testing.expectEqual(c.ret_F_Uc_Vp(), .{ .v1 = -0.25, .v2 = 68, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Uc_Vp());
    try testing.expectOk(c.send_F_Uc_Vp());
    try testing.expectOk(c.recv_F_Uc_Vp(.{ .v1 = -0.25, .v2 = 68, .v3 = null }));
}
pub export fn zig_recv_F_Uc_Vp(lv: c.F_Uc_Vp) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 68) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_Uc_Vp() c.F_Uc_Vp {
    return .{ .v1 = -0.25, .v2 = 68, .v3 = null };
}

// From T_Snnn_xax.c:28066:28084
// struct  F_Ui  {
//   float v1;
//   unsigned int v2;
// };

test "F_Ui layout" {
    var lv: c.F_Ui = undefined;
    try testing.expectSize(c.F_Ui, 8);
    try testing.expectAlign(c.F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_Ui C calls" {
    try testing.expectEqual(c.ret_F_Ui(), .{ .v1 = 4.5, .v2 = 27782 });
    try testing.expectOk(c.assert_ret_F_Ui());
    try testing.expectOk(c.send_F_Ui());
    try testing.expectOk(c.recv_F_Ui(.{ .v1 = 4.5, .v2 = 27782 }));
}
pub export fn zig_recv_F_Ui(lv: c.F_Ui) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 27782) return 2;
    return 0;
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

test "F_Ui_C layout" {
    var lv: c.F_Ui_C = undefined;
    try testing.expectSize(c.F_Ui_C, 12);
    try testing.expectAlign(c.F_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_C C calls" {
    try testing.expectEqual(c.ret_F_Ui_C(), .{ .v1 = 4.5, .v2 = 26810, .v3 = 15 });
    try testing.expectOk(c.assert_ret_F_Ui_C());
    try testing.expectOk(c.send_F_Ui_C());
    try testing.expectOk(c.recv_F_Ui_C(.{ .v1 = 4.5, .v2 = 26810, .v3 = 15 }));
}
pub export fn zig_recv_F_Ui_C(lv: c.F_Ui_C) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 26810) return 2;
    if (lv.v3 != 15) return 3;
    return 0;
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

test "F_Ui_D layout" {
    var lv: c.F_Ui_D = undefined;
    try testing.expectSize(c.F_Ui_D, 16);
    try testing.expectAlign(c.F_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_D C calls" {
    try testing.expectEqual(c.ret_F_Ui_D(), .{ .v1 = 7.0, .v2 = 18724, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_F_Ui_D());
    try testing.expectOk(c.send_F_Ui_D());
    try testing.expectOk(c.recv_F_Ui_D(.{ .v1 = 7.0, .v2 = 18724, .v3 = 1.0 }));
}
pub export fn zig_recv_F_Ui_D(lv: c.F_Ui_D) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 18724) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
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

test "F_Ui_F layout" {
    var lv: c.F_Ui_F = undefined;
    try testing.expectSize(c.F_Ui_F, 12);
    try testing.expectAlign(c.F_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_F C calls" {
    try testing.expectEqual(c.ret_F_Ui_F(), .{ .v1 = -0.25, .v2 = 5603, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_F_Ui_F());
    try testing.expectOk(c.send_F_Ui_F());
    try testing.expectOk(c.recv_F_Ui_F(.{ .v1 = -0.25, .v2 = 5603, .v3 = 0.5 }));
}
pub export fn zig_recv_F_Ui_F(lv: c.F_Ui_F) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 5603) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
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

test "F_Ui_I layout" {
    var lv: c.F_Ui_I = undefined;
    try testing.expectSize(c.F_Ui_I, 12);
    try testing.expectAlign(c.F_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_I C calls" {
    try testing.expectEqual(c.ret_F_Ui_I(), .{ .v1 = -2.125, .v2 = 7194, .v3 = 6964 });
    try testing.expectOk(c.assert_ret_F_Ui_I());
    try testing.expectOk(c.send_F_Ui_I());
    try testing.expectOk(c.recv_F_Ui_I(.{ .v1 = -2.125, .v2 = 7194, .v3 = 6964 }));
}
pub export fn zig_recv_F_Ui_I(lv: c.F_Ui_I) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 7194) return 2;
    if (lv.v3 != 6964) return 3;
    return 0;
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

test "F_Ui_Ip layout" {
    var lv: c.F_Ui_Ip = undefined;
    try testing.expectSize(c.F_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Ip C calls" {
    try testing.expectEqual(c.ret_F_Ui_Ip(), .{ .v1 = -2.125, .v2 = 25159, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Ui_Ip());
    try testing.expectOk(c.send_F_Ui_Ip());
    try testing.expectOk(c.recv_F_Ui_Ip(.{ .v1 = -2.125, .v2 = 25159, .v3 = null }));
}
pub export fn zig_recv_F_Ui_Ip(lv: c.F_Ui_Ip) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 25159) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_Ui_L layout" {
    var lv: c.F_Ui_L = undefined;
    try testing.expectSize(c.F_Ui_L, 16);
    try testing.expectAlign(c.F_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_L C calls" {
    try testing.expectEqual(c.ret_F_Ui_L(), .{ .v1 = 0.5, .v2 = 6394, .v3 = 24104 });
    try testing.expectOk(c.assert_ret_F_Ui_L());
    try testing.expectOk(c.send_F_Ui_L());
    try testing.expectOk(c.recv_F_Ui_L(.{ .v1 = 0.5, .v2 = 6394, .v3 = 24104 }));
}
pub export fn zig_recv_F_Ui_L(lv: c.F_Ui_L) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 6394) return 2;
    if (lv.v3 != 24104) return 3;
    return 0;
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

test "F_Ui_S layout" {
    var lv: c.F_Ui_S = undefined;
    try testing.expectSize(c.F_Ui_S, 12);
    try testing.expectAlign(c.F_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_S C calls" {
    try testing.expectEqual(c.ret_F_Ui_S(), .{ .v1 = 7.0, .v2 = 16310, .v3 = 2152 });
    try testing.expectOk(c.assert_ret_F_Ui_S());
    try testing.expectOk(c.send_F_Ui_S());
    try testing.expectOk(c.recv_F_Ui_S(.{ .v1 = 7.0, .v2 = 16310, .v3 = 2152 }));
}
pub export fn zig_recv_F_Ui_S(lv: c.F_Ui_S) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 16310) return 2;
    if (lv.v3 != 2152) return 3;
    return 0;
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

test "F_Ui_Uc layout" {
    var lv: c.F_Ui_Uc = undefined;
    try testing.expectSize(c.F_Ui_Uc, 12);
    try testing.expectAlign(c.F_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Uc C calls" {
    try testing.expectEqual(c.ret_F_Ui_Uc(), .{ .v1 = 0.5, .v2 = 31933, .v3 = 84 });
    try testing.expectOk(c.assert_ret_F_Ui_Uc());
    try testing.expectOk(c.send_F_Ui_Uc());
    try testing.expectOk(c.recv_F_Ui_Uc(.{ .v1 = 0.5, .v2 = 31933, .v3 = 84 }));
}
pub export fn zig_recv_F_Ui_Uc(lv: c.F_Ui_Uc) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 31933) return 2;
    if (lv.v3 != 84) return 3;
    return 0;
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

test "F_Ui_Ui layout" {
    var lv: c.F_Ui_Ui = undefined;
    try testing.expectSize(c.F_Ui_Ui, 12);
    try testing.expectAlign(c.F_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Ui C calls" {
    try testing.expectEqual(c.ret_F_Ui_Ui(), .{ .v1 = 1.0, .v2 = 21258, .v3 = 27470 });
    try testing.expectOk(c.assert_ret_F_Ui_Ui());
    try testing.expectOk(c.send_F_Ui_Ui());
    try testing.expectOk(c.recv_F_Ui_Ui(.{ .v1 = 1.0, .v2 = 21258, .v3 = 27470 }));
}
pub export fn zig_recv_F_Ui_Ui(lv: c.F_Ui_Ui) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 21258) return 2;
    if (lv.v3 != 27470) return 3;
    return 0;
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

test "F_Ui_Ul layout" {
    var lv: c.F_Ui_Ul = undefined;
    try testing.expectSize(c.F_Ui_Ul, 16);
    try testing.expectAlign(c.F_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Ul C calls" {
    try testing.expectEqual(c.ret_F_Ui_Ul(), .{ .v1 = -2.125, .v2 = 2270, .v3 = 24341 });
    try testing.expectOk(c.assert_ret_F_Ui_Ul());
    try testing.expectOk(c.send_F_Ui_Ul());
    try testing.expectOk(c.recv_F_Ui_Ul(.{ .v1 = -2.125, .v2 = 2270, .v3 = 24341 }));
}
pub export fn zig_recv_F_Ui_Ul(lv: c.F_Ui_Ul) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 2270) return 2;
    if (lv.v3 != 24341) return 3;
    return 0;
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

test "F_Ui_Us layout" {
    var lv: c.F_Ui_Us = undefined;
    try testing.expectSize(c.F_Ui_Us, 12);
    try testing.expectAlign(c.F_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Us C calls" {
    try testing.expectEqual(c.ret_F_Ui_Us(), .{ .v1 = -2.125, .v2 = 26884, .v3 = 20081 });
    try testing.expectOk(c.assert_ret_F_Ui_Us());
    try testing.expectOk(c.send_F_Ui_Us());
    try testing.expectOk(c.recv_F_Ui_Us(.{ .v1 = -2.125, .v2 = 26884, .v3 = 20081 }));
}
pub export fn zig_recv_F_Ui_Us(lv: c.F_Ui_Us) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 26884) return 2;
    if (lv.v3 != 20081) return 3;
    return 0;
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

test "F_Ui_Vp layout" {
    var lv: c.F_Ui_Vp = undefined;
    try testing.expectSize(c.F_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Ui_Vp C calls" {
    try testing.expectEqual(c.ret_F_Ui_Vp(), .{ .v1 = 0.875, .v2 = 29111, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Ui_Vp());
    try testing.expectOk(c.send_F_Ui_Vp());
    try testing.expectOk(c.recv_F_Ui_Vp(.{ .v1 = 0.875, .v2 = 29111, .v3 = null }));
}
pub export fn zig_recv_F_Ui_Vp(lv: c.F_Ui_Vp) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 29111) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_Ui_Vp() c.F_Ui_Vp {
    return .{ .v1 = 0.875, .v2 = 29111, .v3 = null };
}

// From T_Snnn_xax.c:29113:29131
// struct  F_Ul  {
//   float v1;
//   __tsu64 v2;
// };

test "F_Ul layout" {
    var lv: c.F_Ul = undefined;
    try testing.expectSize(c.F_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "F_Ul C calls" {
    try testing.expectEqual(c.ret_F_Ul(), .{ .v1 = 7.0, .v2 = 502 });
    try testing.expectOk(c.assert_ret_F_Ul());
    try testing.expectOk(c.send_F_Ul());
    try testing.expectOk(c.recv_F_Ul(.{ .v1 = 7.0, .v2 = 502 }));
}
pub export fn zig_recv_F_Ul(lv: c.F_Ul) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 502) return 2;
    return 0;
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

test "F_Ul_C layout" {
    var lv: c.F_Ul_C = undefined;
    try testing.expectSize(c.F_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_C C calls" {
    try testing.expectEqual(c.ret_F_Ul_C(), .{ .v1 = 1.0, .v2 = 16763, .v3 = 7 });
    try testing.expectOk(c.assert_ret_F_Ul_C());
    try testing.expectOk(c.send_F_Ul_C());
    try testing.expectOk(c.recv_F_Ul_C(.{ .v1 = 1.0, .v2 = 16763, .v3 = 7 }));
}
pub export fn zig_recv_F_Ul_C(lv: c.F_Ul_C) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 16763) return 2;
    if (lv.v3 != 7) return 3;
    return 0;
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

test "F_Ul_D layout" {
    var lv: c.F_Ul_D = undefined;
    try testing.expectSize(c.F_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_D C calls" {
    try testing.expectEqual(c.ret_F_Ul_D(), .{ .v1 = 0.875, .v2 = 5788, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_F_Ul_D());
    try testing.expectOk(c.send_F_Ul_D());
    try testing.expectOk(c.recv_F_Ul_D(.{ .v1 = 0.875, .v2 = 5788, .v3 = 7.0 }));
}
pub export fn zig_recv_F_Ul_D(lv: c.F_Ul_D) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 5788) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
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

test "F_Ul_F layout" {
    var lv: c.F_Ul_F = undefined;
    try testing.expectSize(c.F_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_F C calls" {
    try testing.expectEqual(c.ret_F_Ul_F(), .{ .v1 = -0.25, .v2 = 13617, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_F_Ul_F());
    try testing.expectOk(c.send_F_Ul_F());
    try testing.expectOk(c.recv_F_Ul_F(.{ .v1 = -0.25, .v2 = 13617, .v3 = 0.875 }));
}
pub export fn zig_recv_F_Ul_F(lv: c.F_Ul_F) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != 13617) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
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

test "F_Ul_I layout" {
    var lv: c.F_Ul_I = undefined;
    try testing.expectSize(c.F_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_I C calls" {
    try testing.expectEqual(c.ret_F_Ul_I(), .{ .v1 = 7.0, .v2 = 4234, .v3 = 27107 });
    try testing.expectOk(c.assert_ret_F_Ul_I());
    try testing.expectOk(c.send_F_Ul_I());
    try testing.expectOk(c.recv_F_Ul_I(.{ .v1 = 7.0, .v2 = 4234, .v3 = 27107 }));
}
pub export fn zig_recv_F_Ul_I(lv: c.F_Ul_I) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 4234) return 2;
    if (lv.v3 != 27107) return 3;
    return 0;
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

test "F_Ul_Ip layout" {
    var lv: c.F_Ul_Ip = undefined;
    try testing.expectSize(c.F_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Ip C calls" {
    try testing.expectEqual(c.ret_F_Ul_Ip(), .{ .v1 = -2.125, .v2 = 18940, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Ul_Ip());
    try testing.expectOk(c.send_F_Ul_Ip());
    try testing.expectOk(c.recv_F_Ul_Ip(.{ .v1 = -2.125, .v2 = 18940, .v3 = null }));
}
pub export fn zig_recv_F_Ul_Ip(lv: c.F_Ul_Ip) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 18940) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_Ul_L layout" {
    var lv: c.F_Ul_L = undefined;
    try testing.expectSize(c.F_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_L C calls" {
    try testing.expectEqual(c.ret_F_Ul_L(), .{ .v1 = 7.0, .v2 = 2524, .v3 = 1186 });
    try testing.expectOk(c.assert_ret_F_Ul_L());
    try testing.expectOk(c.send_F_Ul_L());
    try testing.expectOk(c.recv_F_Ul_L(.{ .v1 = 7.0, .v2 = 2524, .v3 = 1186 }));
}
pub export fn zig_recv_F_Ul_L(lv: c.F_Ul_L) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 2524) return 2;
    if (lv.v3 != 1186) return 3;
    return 0;
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

test "F_Ul_S layout" {
    var lv: c.F_Ul_S = undefined;
    try testing.expectSize(c.F_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_S C calls" {
    try testing.expectEqual(c.ret_F_Ul_S(), .{ .v1 = 0.5, .v2 = 21773, .v3 = 17719 });
    try testing.expectOk(c.assert_ret_F_Ul_S());
    try testing.expectOk(c.send_F_Ul_S());
    try testing.expectOk(c.recv_F_Ul_S(.{ .v1 = 0.5, .v2 = 21773, .v3 = 17719 }));
}
pub export fn zig_recv_F_Ul_S(lv: c.F_Ul_S) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 21773) return 2;
    if (lv.v3 != 17719) return 3;
    return 0;
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

test "F_Ul_Uc layout" {
    var lv: c.F_Ul_Uc = undefined;
    try testing.expectSize(c.F_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Uc C calls" {
    try testing.expectEqual(c.ret_F_Ul_Uc(), .{ .v1 = 7.0, .v2 = 25283, .v3 = 93 });
    try testing.expectOk(c.assert_ret_F_Ul_Uc());
    try testing.expectOk(c.send_F_Ul_Uc());
    try testing.expectOk(c.recv_F_Ul_Uc(.{ .v1 = 7.0, .v2 = 25283, .v3 = 93 }));
}
pub export fn zig_recv_F_Ul_Uc(lv: c.F_Ul_Uc) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 25283) return 2;
    if (lv.v3 != 93) return 3;
    return 0;
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

test "F_Ul_Ui layout" {
    var lv: c.F_Ul_Ui = undefined;
    try testing.expectSize(c.F_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Ui C calls" {
    try testing.expectEqual(c.ret_F_Ul_Ui(), .{ .v1 = 7.0, .v2 = 24342, .v3 = 20594 });
    try testing.expectOk(c.assert_ret_F_Ul_Ui());
    try testing.expectOk(c.send_F_Ul_Ui());
    try testing.expectOk(c.recv_F_Ul_Ui(.{ .v1 = 7.0, .v2 = 24342, .v3 = 20594 }));
}
pub export fn zig_recv_F_Ul_Ui(lv: c.F_Ul_Ui) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 24342) return 2;
    if (lv.v3 != 20594) return 3;
    return 0;
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

test "F_Ul_Ul layout" {
    var lv: c.F_Ul_Ul = undefined;
    try testing.expectSize(c.F_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Ul C calls" {
    try testing.expectEqual(c.ret_F_Ul_Ul(), .{ .v1 = -2.125, .v2 = 31964, .v3 = 4612 });
    try testing.expectOk(c.assert_ret_F_Ul_Ul());
    try testing.expectOk(c.send_F_Ul_Ul());
    try testing.expectOk(c.recv_F_Ul_Ul(.{ .v1 = -2.125, .v2 = 31964, .v3 = 4612 }));
}
pub export fn zig_recv_F_Ul_Ul(lv: c.F_Ul_Ul) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 31964) return 2;
    if (lv.v3 != 4612) return 3;
    return 0;
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

test "F_Ul_Us layout" {
    var lv: c.F_Ul_Us = undefined;
    try testing.expectSize(c.F_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Us C calls" {
    try testing.expectEqual(c.ret_F_Ul_Us(), .{ .v1 = 1.0, .v2 = 4378, .v3 = 28649 });
    try testing.expectOk(c.assert_ret_F_Ul_Us());
    try testing.expectOk(c.send_F_Ul_Us());
    try testing.expectOk(c.recv_F_Ul_Us(.{ .v1 = 1.0, .v2 = 4378, .v3 = 28649 }));
}
pub export fn zig_recv_F_Ul_Us(lv: c.F_Ul_Us) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 4378) return 2;
    if (lv.v3 != 28649) return 3;
    return 0;
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

test "F_Ul_Vp layout" {
    var lv: c.F_Ul_Vp = undefined;
    try testing.expectSize(c.F_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "F_Ul_Vp C calls" {
    try testing.expectEqual(c.ret_F_Ul_Vp(), .{ .v1 = 0.5, .v2 = 16097, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Ul_Vp());
    try testing.expectOk(c.send_F_Ul_Vp());
    try testing.expectOk(c.recv_F_Ul_Vp(.{ .v1 = 0.5, .v2 = 16097, .v3 = null }));
}
pub export fn zig_recv_F_Ul_Vp(lv: c.F_Ul_Vp) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 16097) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_Ul_Vp() c.F_Ul_Vp {
    return .{ .v1 = 0.5, .v2 = 16097, .v3 = null };
}

// From T_Snnn_xax.c:30160:30178
// struct  F_Us  {
//   float v1;
//   unsigned short v2;
// };

test "F_Us layout" {
    var lv: c.F_Us = undefined;
    try testing.expectSize(c.F_Us, 8);
    try testing.expectAlign(c.F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "F_Us C calls" {
    try testing.expectEqual(c.ret_F_Us(), .{ .v1 = 4.5, .v2 = 27623 });
    try testing.expectOk(c.assert_ret_F_Us());
    try testing.expectOk(c.send_F_Us());
    try testing.expectOk(c.recv_F_Us(.{ .v1 = 4.5, .v2 = 27623 }));
}
pub export fn zig_recv_F_Us(lv: c.F_Us) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 27623) return 2;
    return 0;
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

test "F_Us_C layout" {
    var lv: c.F_Us_C = undefined;
    try testing.expectSize(c.F_Us_C, 8);
    try testing.expectAlign(c.F_Us_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Us_C C calls" {
    try testing.expectEqual(c.ret_F_Us_C(), .{ .v1 = 0.5, .v2 = 9824, .v3 = 22 });
    try testing.expectOk(c.assert_ret_F_Us_C());
    try testing.expectOk(c.send_F_Us_C());
    try testing.expectOk(c.recv_F_Us_C(.{ .v1 = 0.5, .v2 = 9824, .v3 = 22 }));
}
pub export fn zig_recv_F_Us_C(lv: c.F_Us_C) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 9824) return 2;
    if (lv.v3 != 22) return 3;
    return 0;
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

test "F_Us_D layout" {
    var lv: c.F_Us_D = undefined;
    try testing.expectSize(c.F_Us_D, 16);
    try testing.expectAlign(c.F_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_D C calls" {
    try testing.expectEqual(c.ret_F_Us_D(), .{ .v1 = 7.0, .v2 = 17509, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_F_Us_D());
    try testing.expectOk(c.send_F_Us_D());
    try testing.expectOk(c.recv_F_Us_D(.{ .v1 = 7.0, .v2 = 17509, .v3 = 0.5 }));
}
pub export fn zig_recv_F_Us_D(lv: c.F_Us_D) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 17509) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
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

test "F_Us_F layout" {
    var lv: c.F_Us_F = undefined;
    try testing.expectSize(c.F_Us_F, 12);
    try testing.expectAlign(c.F_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_F C calls" {
    try testing.expectEqual(c.ret_F_Us_F(), .{ .v1 = 4.5, .v2 = 32668, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_F_Us_F());
    try testing.expectOk(c.send_F_Us_F());
    try testing.expectOk(c.recv_F_Us_F(.{ .v1 = 4.5, .v2 = 32668, .v3 = 4.5 }));
}
pub export fn zig_recv_F_Us_F(lv: c.F_Us_F) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 32668) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
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

test "F_Us_I layout" {
    var lv: c.F_Us_I = undefined;
    try testing.expectSize(c.F_Us_I, 12);
    try testing.expectAlign(c.F_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_I C calls" {
    try testing.expectEqual(c.ret_F_Us_I(), .{ .v1 = 0.5, .v2 = 25895, .v3 = 32572 });
    try testing.expectOk(c.assert_ret_F_Us_I());
    try testing.expectOk(c.send_F_Us_I());
    try testing.expectOk(c.recv_F_Us_I(.{ .v1 = 0.5, .v2 = 25895, .v3 = 32572 }));
}
pub export fn zig_recv_F_Us_I(lv: c.F_Us_I) c_int {
    if (lv.v1 != 0.5) return 1;
    if (lv.v2 != 25895) return 2;
    if (lv.v3 != 32572) return 3;
    return 0;
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

test "F_Us_Ip layout" {
    var lv: c.F_Us_Ip = undefined;
    try testing.expectSize(c.F_Us_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_Ip C calls" {
    try testing.expectEqual(c.ret_F_Us_Ip(), .{ .v1 = 0.875, .v2 = 31390, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Us_Ip());
    try testing.expectOk(c.send_F_Us_Ip());
    try testing.expectOk(c.recv_F_Us_Ip(.{ .v1 = 0.875, .v2 = 31390, .v3 = null }));
}
pub export fn zig_recv_F_Us_Ip(lv: c.F_Us_Ip) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 31390) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_Us_L layout" {
    var lv: c.F_Us_L = undefined;
    try testing.expectSize(c.F_Us_L, 16);
    try testing.expectAlign(c.F_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_L C calls" {
    try testing.expectEqual(c.ret_F_Us_L(), .{ .v1 = 7.0, .v2 = 13124, .v3 = 14055 });
    try testing.expectOk(c.assert_ret_F_Us_L());
    try testing.expectOk(c.send_F_Us_L());
    try testing.expectOk(c.recv_F_Us_L(.{ .v1 = 7.0, .v2 = 13124, .v3 = 14055 }));
}
pub export fn zig_recv_F_Us_L(lv: c.F_Us_L) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 13124) return 2;
    if (lv.v3 != 14055) return 3;
    return 0;
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

test "F_Us_S layout" {
    var lv: c.F_Us_S = undefined;
    try testing.expectSize(c.F_Us_S, 8);
    try testing.expectAlign(c.F_Us_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Us_S C calls" {
    try testing.expectEqual(c.ret_F_Us_S(), .{ .v1 = 7.0, .v2 = 26736, .v3 = 24374 });
    try testing.expectOk(c.assert_ret_F_Us_S());
    try testing.expectOk(c.send_F_Us_S());
    try testing.expectOk(c.recv_F_Us_S(.{ .v1 = 7.0, .v2 = 26736, .v3 = 24374 }));
}
pub export fn zig_recv_F_Us_S(lv: c.F_Us_S) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != 26736) return 2;
    if (lv.v3 != 24374) return 3;
    return 0;
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

test "F_Us_Uc layout" {
    var lv: c.F_Us_Uc = undefined;
    try testing.expectSize(c.F_Us_Uc, 8);
    try testing.expectAlign(c.F_Us_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Us_Uc C calls" {
    try testing.expectEqual(c.ret_F_Us_Uc(), .{ .v1 = 0.875, .v2 = 1879, .v3 = 8 });
    try testing.expectOk(c.assert_ret_F_Us_Uc());
    try testing.expectOk(c.send_F_Us_Uc());
    try testing.expectOk(c.recv_F_Us_Uc(.{ .v1 = 0.875, .v2 = 1879, .v3 = 8 }));
}
pub export fn zig_recv_F_Us_Uc(lv: c.F_Us_Uc) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 1879) return 2;
    if (lv.v3 != 8) return 3;
    return 0;
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

test "F_Us_Ui layout" {
    var lv: c.F_Us_Ui = undefined;
    try testing.expectSize(c.F_Us_Ui, 12);
    try testing.expectAlign(c.F_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_Ui C calls" {
    try testing.expectEqual(c.ret_F_Us_Ui(), .{ .v1 = 0.875, .v2 = 15041, .v3 = 1344 });
    try testing.expectOk(c.assert_ret_F_Us_Ui());
    try testing.expectOk(c.send_F_Us_Ui());
    try testing.expectOk(c.recv_F_Us_Ui(.{ .v1 = 0.875, .v2 = 15041, .v3 = 1344 }));
}
pub export fn zig_recv_F_Us_Ui(lv: c.F_Us_Ui) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != 15041) return 2;
    if (lv.v3 != 1344) return 3;
    return 0;
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

test "F_Us_Ul layout" {
    var lv: c.F_Us_Ul = undefined;
    try testing.expectSize(c.F_Us_Ul, 16);
    try testing.expectAlign(c.F_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_Ul C calls" {
    try testing.expectEqual(c.ret_F_Us_Ul(), .{ .v1 = 1.0, .v2 = 15873, .v3 = 13395 });
    try testing.expectOk(c.assert_ret_F_Us_Ul());
    try testing.expectOk(c.send_F_Us_Ul());
    try testing.expectOk(c.recv_F_Us_Ul(.{ .v1 = 1.0, .v2 = 15873, .v3 = 13395 }));
}
pub export fn zig_recv_F_Us_Ul(lv: c.F_Us_Ul) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != 15873) return 2;
    if (lv.v3 != 13395) return 3;
    return 0;
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

test "F_Us_Us layout" {
    var lv: c.F_Us_Us = undefined;
    try testing.expectSize(c.F_Us_Us, 8);
    try testing.expectAlign(c.F_Us_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "F_Us_Us C calls" {
    try testing.expectEqual(c.ret_F_Us_Us(), .{ .v1 = 4.5, .v2 = 19507, .v3 = 32357 });
    try testing.expectOk(c.assert_ret_F_Us_Us());
    try testing.expectOk(c.send_F_Us_Us());
    try testing.expectOk(c.recv_F_Us_Us(.{ .v1 = 4.5, .v2 = 19507, .v3 = 32357 }));
}
pub export fn zig_recv_F_Us_Us(lv: c.F_Us_Us) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != 19507) return 2;
    if (lv.v3 != 32357) return 3;
    return 0;
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

test "F_Us_Vp layout" {
    var lv: c.F_Us_Vp = undefined;
    try testing.expectSize(c.F_Us_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "F_Us_Vp C calls" {
    try testing.expectEqual(c.ret_F_Us_Vp(), .{ .v1 = -2.125, .v2 = 14866, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Us_Vp());
    try testing.expectOk(c.send_F_Us_Vp());
    try testing.expectOk(c.recv_F_Us_Vp(.{ .v1 = -2.125, .v2 = 14866, .v3 = null }));
}
pub export fn zig_recv_F_Us_Vp(lv: c.F_Us_Vp) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != 14866) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_Us_Vp() c.F_Us_Vp {
    return .{ .v1 = -2.125, .v2 = 14866, .v3 = null };
}

// From T_Snnn_xax.c:31207:31225
// struct  F_Vp  {
//   float v1;
//   void *v2;
// };

test "F_Vp layout" {
    var lv: c.F_Vp = undefined;
    try testing.expectSize(c.F_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "F_Vp C calls" {
    try testing.expectEqual(c.ret_F_Vp(), .{ .v1 = -2.125, .v2 = null });
    try testing.expectOk(c.assert_ret_F_Vp());
    try testing.expectOk(c.send_F_Vp());
    try testing.expectOk(c.recv_F_Vp(.{ .v1 = -2.125, .v2 = null }));
}
pub export fn zig_recv_F_Vp(lv: c.F_Vp) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != null) return 2;
    return 0;
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

test "F_Vp_C layout" {
    var lv: c.F_Vp_C = undefined;
    try testing.expectSize(c.F_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_C C calls" {
    try testing.expectEqual(c.ret_F_Vp_C(), .{ .v1 = 0.875, .v2 = null, .v3 = 77 });
    try testing.expectOk(c.assert_ret_F_Vp_C());
    try testing.expectOk(c.send_F_Vp_C());
    try testing.expectOk(c.recv_F_Vp_C(.{ .v1 = 0.875, .v2 = null, .v3 = 77 }));
}
pub export fn zig_recv_F_Vp_C(lv: c.F_Vp_C) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 77) return 3;
    return 0;
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

test "F_Vp_D layout" {
    var lv: c.F_Vp_D = undefined;
    try testing.expectSize(c.F_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_D C calls" {
    try testing.expectEqual(c.ret_F_Vp_D(), .{ .v1 = -0.25, .v2 = null, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_F_Vp_D());
    try testing.expectOk(c.send_F_Vp_D());
    try testing.expectOk(c.recv_F_Vp_D(.{ .v1 = -0.25, .v2 = null, .v3 = 7.0 }));
}
pub export fn zig_recv_F_Vp_D(lv: c.F_Vp_D) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
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

test "F_Vp_F layout" {
    var lv: c.F_Vp_F = undefined;
    try testing.expectSize(c.F_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_F C calls" {
    try testing.expectEqual(c.ret_F_Vp_F(), .{ .v1 = -0.25, .v2 = null, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_F_Vp_F());
    try testing.expectOk(c.send_F_Vp_F());
    try testing.expectOk(c.recv_F_Vp_F(.{ .v1 = -0.25, .v2 = null, .v3 = 7.0 }));
}
pub export fn zig_recv_F_Vp_F(lv: c.F_Vp_F) c_int {
    if (lv.v1 != -0.25) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
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

test "F_Vp_I layout" {
    var lv: c.F_Vp_I = undefined;
    try testing.expectSize(c.F_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_I C calls" {
    try testing.expectEqual(c.ret_F_Vp_I(), .{ .v1 = 0.875, .v2 = null, .v3 = 5405 });
    try testing.expectOk(c.assert_ret_F_Vp_I());
    try testing.expectOk(c.send_F_Vp_I());
    try testing.expectOk(c.recv_F_Vp_I(.{ .v1 = 0.875, .v2 = null, .v3 = 5405 }));
}
pub export fn zig_recv_F_Vp_I(lv: c.F_Vp_I) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 5405) return 3;
    return 0;
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

test "F_Vp_Ip layout" {
    var lv: c.F_Vp_Ip = undefined;
    try testing.expectSize(c.F_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Ip C calls" {
    try testing.expectEqual(c.ret_F_Vp_Ip(), .{ .v1 = 1.0, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Vp_Ip());
    try testing.expectOk(c.send_F_Vp_Ip());
    try testing.expectOk(c.recv_F_Vp_Ip(.{ .v1 = 1.0, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_F_Vp_Ip(lv: c.F_Vp_Ip) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "F_Vp_L layout" {
    var lv: c.F_Vp_L = undefined;
    try testing.expectSize(c.F_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_L C calls" {
    try testing.expectEqual(c.ret_F_Vp_L(), .{ .v1 = 7.0, .v2 = null, .v3 = 4556 });
    try testing.expectOk(c.assert_ret_F_Vp_L());
    try testing.expectOk(c.send_F_Vp_L());
    try testing.expectOk(c.recv_F_Vp_L(.{ .v1 = 7.0, .v2 = null, .v3 = 4556 }));
}
pub export fn zig_recv_F_Vp_L(lv: c.F_Vp_L) c_int {
    if (lv.v1 != 7.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 4556) return 3;
    return 0;
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

test "F_Vp_S layout" {
    var lv: c.F_Vp_S = undefined;
    try testing.expectSize(c.F_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_S C calls" {
    try testing.expectEqual(c.ret_F_Vp_S(), .{ .v1 = 1.0, .v2 = null, .v3 = 22690 });
    try testing.expectOk(c.assert_ret_F_Vp_S());
    try testing.expectOk(c.send_F_Vp_S());
    try testing.expectOk(c.recv_F_Vp_S(.{ .v1 = 1.0, .v2 = null, .v3 = 22690 }));
}
pub export fn zig_recv_F_Vp_S(lv: c.F_Vp_S) c_int {
    if (lv.v1 != 1.0) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 22690) return 3;
    return 0;
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

test "F_Vp_Uc layout" {
    var lv: c.F_Vp_Uc = undefined;
    try testing.expectSize(c.F_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Uc C calls" {
    try testing.expectEqual(c.ret_F_Vp_Uc(), .{ .v1 = 4.5, .v2 = null, .v3 = 6 });
    try testing.expectOk(c.assert_ret_F_Vp_Uc());
    try testing.expectOk(c.send_F_Vp_Uc());
    try testing.expectOk(c.recv_F_Vp_Uc(.{ .v1 = 4.5, .v2 = null, .v3 = 6 }));
}
pub export fn zig_recv_F_Vp_Uc(lv: c.F_Vp_Uc) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 6) return 3;
    return 0;
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

test "F_Vp_Ui layout" {
    var lv: c.F_Vp_Ui = undefined;
    try testing.expectSize(c.F_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Ui C calls" {
    try testing.expectEqual(c.ret_F_Vp_Ui(), .{ .v1 = -2.125, .v2 = null, .v3 = 3327 });
    try testing.expectOk(c.assert_ret_F_Vp_Ui());
    try testing.expectOk(c.send_F_Vp_Ui());
    try testing.expectOk(c.recv_F_Vp_Ui(.{ .v1 = -2.125, .v2 = null, .v3 = 3327 }));
}
pub export fn zig_recv_F_Vp_Ui(lv: c.F_Vp_Ui) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 3327) return 3;
    return 0;
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

test "F_Vp_Ul layout" {
    var lv: c.F_Vp_Ul = undefined;
    try testing.expectSize(c.F_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Ul C calls" {
    try testing.expectEqual(c.ret_F_Vp_Ul(), .{ .v1 = 0.875, .v2 = null, .v3 = 21417 });
    try testing.expectOk(c.assert_ret_F_Vp_Ul());
    try testing.expectOk(c.send_F_Vp_Ul());
    try testing.expectOk(c.recv_F_Vp_Ul(.{ .v1 = 0.875, .v2 = null, .v3 = 21417 }));
}
pub export fn zig_recv_F_Vp_Ul(lv: c.F_Vp_Ul) c_int {
    if (lv.v1 != 0.875) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 21417) return 3;
    return 0;
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

test "F_Vp_Us layout" {
    var lv: c.F_Vp_Us = undefined;
    try testing.expectSize(c.F_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Us C calls" {
    try testing.expectEqual(c.ret_F_Vp_Us(), .{ .v1 = -2.125, .v2 = null, .v3 = 10303 });
    try testing.expectOk(c.assert_ret_F_Vp_Us());
    try testing.expectOk(c.send_F_Vp_Us());
    try testing.expectOk(c.recv_F_Vp_Us(.{ .v1 = -2.125, .v2 = null, .v3 = 10303 }));
}
pub export fn zig_recv_F_Vp_Us(lv: c.F_Vp_Us) c_int {
    if (lv.v1 != -2.125) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 10303) return 3;
    return 0;
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

test "F_Vp_Vp layout" {
    var lv: c.F_Vp_Vp = undefined;
    try testing.expectSize(c.F_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "F_Vp_Vp C calls" {
    try testing.expectEqual(c.ret_F_Vp_Vp(), .{ .v1 = 4.5, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_F_Vp_Vp());
    try testing.expectOk(c.send_F_Vp_Vp());
    try testing.expectOk(c.recv_F_Vp_Vp(.{ .v1 = 4.5, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_F_Vp_Vp(lv: c.F_Vp_Vp) c_int {
    if (lv.v1 != 4.5) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_F_Vp_Vp() c.F_Vp_Vp {
    return .{ .v1 = 4.5, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:32254:32270
// struct  I  {
//   int v1;
// };

test "I layout" {
    var lv: c.I = undefined;
    try testing.expectSize(c.I, 4);
    try testing.expectAlign(c.I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "I C calls" {
    try testing.expectEqual(c.ret_I(), .{ .v1 = 17446 });
    try testing.expectOk(c.assert_ret_I());
    try testing.expectOk(c.send_I());
    try testing.expectOk(c.recv_I(.{ .v1 = 17446 }));
}
pub export fn zig_recv_I(lv: c.I) c_int {
    if (lv.v1 != 17446) return 1;
    return 0;
}
pub export fn zig_ret_I() c.I {
    return .{ .v1 = 17446 };
}

// From T_Snnn_xax.c:62575:62593
// struct  I_C  {
//   int v1;
//   char v2;
// };

test "I_C layout" {
    var lv: c.I_C = undefined;
    try testing.expectSize(c.I_C, 8);
    try testing.expectAlign(c.I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_C C calls" {
    try testing.expectEqual(c.ret_I_C(), .{ .v1 = 27188, .v2 = 109 });
    try testing.expectOk(c.assert_ret_I_C());
    try testing.expectOk(c.send_I_C());
    try testing.expectOk(c.recv_I_C(.{ .v1 = 27188, .v2 = 109 }));
}
pub export fn zig_recv_I_C(lv: c.I_C) c_int {
    if (lv.v1 != 27188) return 1;
    if (lv.v2 != 109) return 2;
    return 0;
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

test "I_C_C layout" {
    var lv: c.I_C_C = undefined;
    try testing.expectSize(c.I_C_C, 8);
    try testing.expectAlign(c.I_C_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "I_C_C C calls" {
    try testing.expectEqual(c.ret_I_C_C(), .{ .v1 = 9281, .v2 = 5, .v3 = 27 });
    try testing.expectOk(c.assert_ret_I_C_C());
    try testing.expectOk(c.send_I_C_C());
    try testing.expectOk(c.recv_I_C_C(.{ .v1 = 9281, .v2 = 5, .v3 = 27 }));
}
pub export fn zig_recv_I_C_C(lv: c.I_C_C) c_int {
    if (lv.v1 != 9281) return 1;
    if (lv.v2 != 5) return 2;
    if (lv.v3 != 27) return 3;
    return 0;
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

test "I_C_D layout" {
    var lv: c.I_C_D = undefined;
    try testing.expectSize(c.I_C_D, 16);
    try testing.expectAlign(c.I_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_D C calls" {
    try testing.expectEqual(c.ret_I_C_D(), .{ .v1 = 11, .v2 = 124, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_I_C_D());
    try testing.expectOk(c.send_I_C_D());
    try testing.expectOk(c.recv_I_C_D(.{ .v1 = 11, .v2 = 124, .v3 = -2.125 }));
}
pub export fn zig_recv_I_C_D(lv: c.I_C_D) c_int {
    if (lv.v1 != 11) return 1;
    if (lv.v2 != 124) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
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

test "I_C_F layout" {
    var lv: c.I_C_F = undefined;
    try testing.expectSize(c.I_C_F, 12);
    try testing.expectAlign(c.I_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_F C calls" {
    try testing.expectEqual(c.ret_I_C_F(), .{ .v1 = 22444, .v2 = 7, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_I_C_F());
    try testing.expectOk(c.send_I_C_F());
    try testing.expectOk(c.recv_I_C_F(.{ .v1 = 22444, .v2 = 7, .v3 = 0.5 }));
}
pub export fn zig_recv_I_C_F(lv: c.I_C_F) c_int {
    if (lv.v1 != 22444) return 1;
    if (lv.v2 != 7) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
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

test "I_C_I layout" {
    var lv: c.I_C_I = undefined;
    try testing.expectSize(c.I_C_I, 12);
    try testing.expectAlign(c.I_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_I C calls" {
    try testing.expectEqual(c.ret_I_C_I(), .{ .v1 = 3062, .v2 = 32, .v3 = 3299 });
    try testing.expectOk(c.assert_ret_I_C_I());
    try testing.expectOk(c.send_I_C_I());
    try testing.expectOk(c.recv_I_C_I(.{ .v1 = 3062, .v2 = 32, .v3 = 3299 }));
}
pub export fn zig_recv_I_C_I(lv: c.I_C_I) c_int {
    if (lv.v1 != 3062) return 1;
    if (lv.v2 != 32) return 2;
    if (lv.v3 != 3299) return 3;
    return 0;
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

test "I_C_Ip layout" {
    var lv: c.I_C_Ip = undefined;
    try testing.expectSize(c.I_C_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_Ip C calls" {
    try testing.expectEqual(c.ret_I_C_Ip(), .{ .v1 = 1006, .v2 = 27, .v3 = null });
    try testing.expectOk(c.assert_ret_I_C_Ip());
    try testing.expectOk(c.send_I_C_Ip());
    try testing.expectOk(c.recv_I_C_Ip(.{ .v1 = 1006, .v2 = 27, .v3 = null }));
}
pub export fn zig_recv_I_C_Ip(lv: c.I_C_Ip) c_int {
    if (lv.v1 != 1006) return 1;
    if (lv.v2 != 27) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_C_L layout" {
    var lv: c.I_C_L = undefined;
    try testing.expectSize(c.I_C_L, 16);
    try testing.expectAlign(c.I_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_L C calls" {
    try testing.expectEqual(c.ret_I_C_L(), .{ .v1 = 2698, .v2 = 125, .v3 = 27877 });
    try testing.expectOk(c.assert_ret_I_C_L());
    try testing.expectOk(c.send_I_C_L());
    try testing.expectOk(c.recv_I_C_L(.{ .v1 = 2698, .v2 = 125, .v3 = 27877 }));
}
pub export fn zig_recv_I_C_L(lv: c.I_C_L) c_int {
    if (lv.v1 != 2698) return 1;
    if (lv.v2 != 125) return 2;
    if (lv.v3 != 27877) return 3;
    return 0;
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

test "I_C_S layout" {
    var lv: c.I_C_S = undefined;
    try testing.expectSize(c.I_C_S, 8);
    try testing.expectAlign(c.I_C_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_C_S C calls" {
    try testing.expectEqual(c.ret_I_C_S(), .{ .v1 = 8815, .v2 = 126, .v3 = 10343 });
    try testing.expectOk(c.assert_ret_I_C_S());
    try testing.expectOk(c.send_I_C_S());
    try testing.expectOk(c.recv_I_C_S(.{ .v1 = 8815, .v2 = 126, .v3 = 10343 }));
}
pub export fn zig_recv_I_C_S(lv: c.I_C_S) c_int {
    if (lv.v1 != 8815) return 1;
    if (lv.v2 != 126) return 2;
    if (lv.v3 != 10343) return 3;
    return 0;
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

test "I_C_Uc layout" {
    var lv: c.I_C_Uc = undefined;
    try testing.expectSize(c.I_C_Uc, 8);
    try testing.expectAlign(c.I_C_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "I_C_Uc C calls" {
    try testing.expectEqual(c.ret_I_C_Uc(), .{ .v1 = 9659, .v2 = 11, .v3 = 95 });
    try testing.expectOk(c.assert_ret_I_C_Uc());
    try testing.expectOk(c.send_I_C_Uc());
    try testing.expectOk(c.recv_I_C_Uc(.{ .v1 = 9659, .v2 = 11, .v3 = 95 }));
}
pub export fn zig_recv_I_C_Uc(lv: c.I_C_Uc) c_int {
    if (lv.v1 != 9659) return 1;
    if (lv.v2 != 11) return 2;
    if (lv.v3 != 95) return 3;
    return 0;
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

test "I_C_Ui layout" {
    var lv: c.I_C_Ui = undefined;
    try testing.expectSize(c.I_C_Ui, 12);
    try testing.expectAlign(c.I_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_Ui C calls" {
    try testing.expectEqual(c.ret_I_C_Ui(), .{ .v1 = 12781, .v2 = 106, .v3 = 4108 });
    try testing.expectOk(c.assert_ret_I_C_Ui());
    try testing.expectOk(c.send_I_C_Ui());
    try testing.expectOk(c.recv_I_C_Ui(.{ .v1 = 12781, .v2 = 106, .v3 = 4108 }));
}
pub export fn zig_recv_I_C_Ui(lv: c.I_C_Ui) c_int {
    if (lv.v1 != 12781) return 1;
    if (lv.v2 != 106) return 2;
    if (lv.v3 != 4108) return 3;
    return 0;
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

test "I_C_Ul layout" {
    var lv: c.I_C_Ul = undefined;
    try testing.expectSize(c.I_C_Ul, 16);
    try testing.expectAlign(c.I_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_Ul C calls" {
    try testing.expectEqual(c.ret_I_C_Ul(), .{ .v1 = 6776, .v2 = 16, .v3 = 8336 });
    try testing.expectOk(c.assert_ret_I_C_Ul());
    try testing.expectOk(c.send_I_C_Ul());
    try testing.expectOk(c.recv_I_C_Ul(.{ .v1 = 6776, .v2 = 16, .v3 = 8336 }));
}
pub export fn zig_recv_I_C_Ul(lv: c.I_C_Ul) c_int {
    if (lv.v1 != 6776) return 1;
    if (lv.v2 != 16) return 2;
    if (lv.v3 != 8336) return 3;
    return 0;
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

test "I_C_Us layout" {
    var lv: c.I_C_Us = undefined;
    try testing.expectSize(c.I_C_Us, 8);
    try testing.expectAlign(c.I_C_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_C_Us C calls" {
    try testing.expectEqual(c.ret_I_C_Us(), .{ .v1 = 9679, .v2 = 50, .v3 = 19135 });
    try testing.expectOk(c.assert_ret_I_C_Us());
    try testing.expectOk(c.send_I_C_Us());
    try testing.expectOk(c.recv_I_C_Us(.{ .v1 = 9679, .v2 = 50, .v3 = 19135 }));
}
pub export fn zig_recv_I_C_Us(lv: c.I_C_Us) c_int {
    if (lv.v1 != 9679) return 1;
    if (lv.v2 != 50) return 2;
    if (lv.v3 != 19135) return 3;
    return 0;
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

test "I_C_Vp layout" {
    var lv: c.I_C_Vp = undefined;
    try testing.expectSize(c.I_C_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_C_Vp C calls" {
    try testing.expectEqual(c.ret_I_C_Vp(), .{ .v1 = 5526, .v2 = 73, .v3 = null });
    try testing.expectOk(c.assert_ret_I_C_Vp());
    try testing.expectOk(c.send_I_C_Vp());
    try testing.expectOk(c.recv_I_C_Vp(.{ .v1 = 5526, .v2 = 73, .v3 = null }));
}
pub export fn zig_recv_I_C_Vp(lv: c.I_C_Vp) c_int {
    if (lv.v1 != 5526) return 1;
    if (lv.v2 != 73) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_C_Vp() c.I_C_Vp {
    return .{ .v1 = 5526, .v2 = 73, .v3 = null };
}

// From T_Snnn_xax.c:63622:63640
// struct  I_D  {
//   int v1;
//   double v2;
// };

test "I_D layout" {
    var lv: c.I_D = undefined;
    try testing.expectSize(c.I_D, ABISELECT(16, 12));
    try testing.expectAlign(c.I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "I_D C calls" {
    try testing.expectEqual(c.ret_I_D(), .{ .v1 = 20372, .v2 = -2.125 });
    try testing.expectOk(c.assert_ret_I_D());
    try testing.expectOk(c.send_I_D());
    try testing.expectOk(c.recv_I_D(.{ .v1 = 20372, .v2 = -2.125 }));
}
pub export fn zig_recv_I_D(lv: c.I_D) c_int {
    if (lv.v1 != 20372) return 1;
    if (lv.v2 != -2.125) return 2;
    return 0;
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

test "I_D_C layout" {
    var lv: c.I_D_C = undefined;
    try testing.expectSize(c.I_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_C C calls" {
    try testing.expectEqual(c.ret_I_D_C(), .{ .v1 = 12641, .v2 = 0.875, .v3 = 101 });
    try testing.expectOk(c.assert_ret_I_D_C());
    try testing.expectOk(c.send_I_D_C());
    try testing.expectOk(c.recv_I_D_C(.{ .v1 = 12641, .v2 = 0.875, .v3 = 101 }));
}
pub export fn zig_recv_I_D_C(lv: c.I_D_C) c_int {
    if (lv.v1 != 12641) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 101) return 3;
    return 0;
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

test "I_D_D layout" {
    var lv: c.I_D_D = undefined;
    try testing.expectSize(c.I_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_D C calls" {
    try testing.expectEqual(c.ret_I_D_D(), .{ .v1 = 2553, .v2 = 0.875, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_I_D_D());
    try testing.expectOk(c.send_I_D_D());
    try testing.expectOk(c.recv_I_D_D(.{ .v1 = 2553, .v2 = 0.875, .v3 = 0.875 }));
}
pub export fn zig_recv_I_D_D(lv: c.I_D_D) c_int {
    if (lv.v1 != 2553) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
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

test "I_D_F layout" {
    var lv: c.I_D_F = undefined;
    try testing.expectSize(c.I_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_F C calls" {
    try testing.expectEqual(c.ret_I_D_F(), .{ .v1 = 27668, .v2 = -0.25, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_I_D_F());
    try testing.expectOk(c.send_I_D_F());
    try testing.expectOk(c.recv_I_D_F(.{ .v1 = 27668, .v2 = -0.25, .v3 = 7.0 }));
}
pub export fn zig_recv_I_D_F(lv: c.I_D_F) c_int {
    if (lv.v1 != 27668) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
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

test "I_D_I layout" {
    var lv: c.I_D_I = undefined;
    try testing.expectSize(c.I_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_I C calls" {
    try testing.expectEqual(c.ret_I_D_I(), .{ .v1 = 1093, .v2 = 7.0, .v3 = 17976 });
    try testing.expectOk(c.assert_ret_I_D_I());
    try testing.expectOk(c.send_I_D_I());
    try testing.expectOk(c.recv_I_D_I(.{ .v1 = 1093, .v2 = 7.0, .v3 = 17976 }));
}
pub export fn zig_recv_I_D_I(lv: c.I_D_I) c_int {
    if (lv.v1 != 1093) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 17976) return 3;
    return 0;
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

test "I_D_Ip layout" {
    var lv: c.I_D_Ip = undefined;
    try testing.expectSize(c.I_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Ip C calls" {
    try testing.expectEqual(c.ret_I_D_Ip(), .{ .v1 = 1902, .v2 = 7.0, .v3 = null });
    try testing.expectOk(c.assert_ret_I_D_Ip());
    try testing.expectOk(c.send_I_D_Ip());
    try testing.expectOk(c.recv_I_D_Ip(.{ .v1 = 1902, .v2 = 7.0, .v3 = null }));
}
pub export fn zig_recv_I_D_Ip(lv: c.I_D_Ip) c_int {
    if (lv.v1 != 1902) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_D_L layout" {
    var lv: c.I_D_L = undefined;
    try testing.expectSize(c.I_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_L C calls" {
    try testing.expectEqual(c.ret_I_D_L(), .{ .v1 = 29, .v2 = 0.875, .v3 = 10866 });
    try testing.expectOk(c.assert_ret_I_D_L());
    try testing.expectOk(c.send_I_D_L());
    try testing.expectOk(c.recv_I_D_L(.{ .v1 = 29, .v2 = 0.875, .v3 = 10866 }));
}
pub export fn zig_recv_I_D_L(lv: c.I_D_L) c_int {
    if (lv.v1 != 29) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 10866) return 3;
    return 0;
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

test "I_D_S layout" {
    var lv: c.I_D_S = undefined;
    try testing.expectSize(c.I_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_S C calls" {
    try testing.expectEqual(c.ret_I_D_S(), .{ .v1 = 21029, .v2 = 0.5, .v3 = 12193 });
    try testing.expectOk(c.assert_ret_I_D_S());
    try testing.expectOk(c.send_I_D_S());
    try testing.expectOk(c.recv_I_D_S(.{ .v1 = 21029, .v2 = 0.5, .v3 = 12193 }));
}
pub export fn zig_recv_I_D_S(lv: c.I_D_S) c_int {
    if (lv.v1 != 21029) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != 12193) return 3;
    return 0;
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

test "I_D_Uc layout" {
    var lv: c.I_D_Uc = undefined;
    try testing.expectSize(c.I_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Uc C calls" {
    try testing.expectEqual(c.ret_I_D_Uc(), .{ .v1 = 26572, .v2 = 0.875, .v3 = 77 });
    try testing.expectOk(c.assert_ret_I_D_Uc());
    try testing.expectOk(c.send_I_D_Uc());
    try testing.expectOk(c.recv_I_D_Uc(.{ .v1 = 26572, .v2 = 0.875, .v3 = 77 }));
}
pub export fn zig_recv_I_D_Uc(lv: c.I_D_Uc) c_int {
    if (lv.v1 != 26572) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 77) return 3;
    return 0;
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

test "I_D_Ui layout" {
    var lv: c.I_D_Ui = undefined;
    try testing.expectSize(c.I_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Ui C calls" {
    try testing.expectEqual(c.ret_I_D_Ui(), .{ .v1 = 17463, .v2 = 0.5, .v3 = 30633 });
    try testing.expectOk(c.assert_ret_I_D_Ui());
    try testing.expectOk(c.send_I_D_Ui());
    try testing.expectOk(c.recv_I_D_Ui(.{ .v1 = 17463, .v2 = 0.5, .v3 = 30633 }));
}
pub export fn zig_recv_I_D_Ui(lv: c.I_D_Ui) c_int {
    if (lv.v1 != 17463) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != 30633) return 3;
    return 0;
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

test "I_D_Ul layout" {
    var lv: c.I_D_Ul = undefined;
    try testing.expectSize(c.I_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Ul C calls" {
    try testing.expectEqual(c.ret_I_D_Ul(), .{ .v1 = 23110, .v2 = 0.875, .v3 = 5933 });
    try testing.expectOk(c.assert_ret_I_D_Ul());
    try testing.expectOk(c.send_I_D_Ul());
    try testing.expectOk(c.recv_I_D_Ul(.{ .v1 = 23110, .v2 = 0.875, .v3 = 5933 }));
}
pub export fn zig_recv_I_D_Ul(lv: c.I_D_Ul) c_int {
    if (lv.v1 != 23110) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 5933) return 3;
    return 0;
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

test "I_D_Us layout" {
    var lv: c.I_D_Us = undefined;
    try testing.expectSize(c.I_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Us C calls" {
    try testing.expectEqual(c.ret_I_D_Us(), .{ .v1 = 10730, .v2 = 7.0, .v3 = 2491 });
    try testing.expectOk(c.assert_ret_I_D_Us());
    try testing.expectOk(c.send_I_D_Us());
    try testing.expectOk(c.recv_I_D_Us(.{ .v1 = 10730, .v2 = 7.0, .v3 = 2491 }));
}
pub export fn zig_recv_I_D_Us(lv: c.I_D_Us) c_int {
    if (lv.v1 != 10730) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 2491) return 3;
    return 0;
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

test "I_D_Vp layout" {
    var lv: c.I_D_Vp = undefined;
    try testing.expectSize(c.I_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_D_Vp C calls" {
    try testing.expectEqual(c.ret_I_D_Vp(), .{ .v1 = 16938, .v2 = -0.25, .v3 = null });
    try testing.expectOk(c.assert_ret_I_D_Vp());
    try testing.expectOk(c.send_I_D_Vp());
    try testing.expectOk(c.recv_I_D_Vp(.{ .v1 = 16938, .v2 = -0.25, .v3 = null }));
}
pub export fn zig_recv_I_D_Vp(lv: c.I_D_Vp) c_int {
    if (lv.v1 != 16938) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_D_Vp() c.I_D_Vp {
    return .{ .v1 = 16938, .v2 = -0.25, .v3 = null };
}

// From T_Snnn_xax.c:64669:64687
// struct  I_F  {
//   int v1;
//   float v2;
// };

test "I_F layout" {
    var lv: c.I_F = undefined;
    try testing.expectSize(c.I_F, 8);
    try testing.expectAlign(c.I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_F C calls" {
    try testing.expectEqual(c.ret_I_F(), .{ .v1 = 18073, .v2 = 7.0 });
    try testing.expectOk(c.assert_ret_I_F());
    try testing.expectOk(c.send_I_F());
    try testing.expectOk(c.recv_I_F(.{ .v1 = 18073, .v2 = 7.0 }));
}
pub export fn zig_recv_I_F(lv: c.I_F) c_int {
    if (lv.v1 != 18073) return 1;
    if (lv.v2 != 7.0) return 2;
    return 0;
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

test "I_F_C layout" {
    var lv: c.I_F_C = undefined;
    try testing.expectSize(c.I_F_C, 12);
    try testing.expectAlign(c.I_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_C C calls" {
    try testing.expectEqual(c.ret_I_F_C(), .{ .v1 = 22692, .v2 = 4.5, .v3 = 92 });
    try testing.expectOk(c.assert_ret_I_F_C());
    try testing.expectOk(c.send_I_F_C());
    try testing.expectOk(c.recv_I_F_C(.{ .v1 = 22692, .v2 = 4.5, .v3 = 92 }));
}
pub export fn zig_recv_I_F_C(lv: c.I_F_C) c_int {
    if (lv.v1 != 22692) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 92) return 3;
    return 0;
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

test "I_F_D layout" {
    var lv: c.I_F_D = undefined;
    try testing.expectSize(c.I_F_D, 16);
    try testing.expectAlign(c.I_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_D C calls" {
    try testing.expectEqual(c.ret_I_F_D(), .{ .v1 = 12941, .v2 = 0.875, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_I_F_D());
    try testing.expectOk(c.send_I_F_D());
    try testing.expectOk(c.recv_I_F_D(.{ .v1 = 12941, .v2 = 0.875, .v3 = 0.5 }));
}
pub export fn zig_recv_I_F_D(lv: c.I_F_D) c_int {
    if (lv.v1 != 12941) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
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

test "I_F_F layout" {
    var lv: c.I_F_F = undefined;
    try testing.expectSize(c.I_F_F, 12);
    try testing.expectAlign(c.I_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_F C calls" {
    try testing.expectEqual(c.ret_I_F_F(), .{ .v1 = 2124, .v2 = -0.25, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_I_F_F());
    try testing.expectOk(c.send_I_F_F());
    try testing.expectOk(c.recv_I_F_F(.{ .v1 = 2124, .v2 = -0.25, .v3 = 7.0 }));
}
pub export fn zig_recv_I_F_F(lv: c.I_F_F) c_int {
    if (lv.v1 != 2124) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
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

test "I_F_I layout" {
    var lv: c.I_F_I = undefined;
    try testing.expectSize(c.I_F_I, 12);
    try testing.expectAlign(c.I_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_I C calls" {
    try testing.expectEqual(c.ret_I_F_I(), .{ .v1 = 1040, .v2 = -2.125, .v3 = 3590 });
    try testing.expectOk(c.assert_ret_I_F_I());
    try testing.expectOk(c.send_I_F_I());
    try testing.expectOk(c.recv_I_F_I(.{ .v1 = 1040, .v2 = -2.125, .v3 = 3590 }));
}
pub export fn zig_recv_I_F_I(lv: c.I_F_I) c_int {
    if (lv.v1 != 1040) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 3590) return 3;
    return 0;
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

test "I_F_Ip layout" {
    var lv: c.I_F_Ip = undefined;
    try testing.expectSize(c.I_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Ip C calls" {
    try testing.expectEqual(c.ret_I_F_Ip(), .{ .v1 = 5132, .v2 = 0.5, .v3 = null });
    try testing.expectOk(c.assert_ret_I_F_Ip());
    try testing.expectOk(c.send_I_F_Ip());
    try testing.expectOk(c.recv_I_F_Ip(.{ .v1 = 5132, .v2 = 0.5, .v3 = null }));
}
pub export fn zig_recv_I_F_Ip(lv: c.I_F_Ip) c_int {
    if (lv.v1 != 5132) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_F_L layout" {
    var lv: c.I_F_L = undefined;
    try testing.expectSize(c.I_F_L, 16);
    try testing.expectAlign(c.I_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_L C calls" {
    try testing.expectEqual(c.ret_I_F_L(), .{ .v1 = 9972, .v2 = 7.0, .v3 = 27944 });
    try testing.expectOk(c.assert_ret_I_F_L());
    try testing.expectOk(c.send_I_F_L());
    try testing.expectOk(c.recv_I_F_L(.{ .v1 = 9972, .v2 = 7.0, .v3 = 27944 }));
}
pub export fn zig_recv_I_F_L(lv: c.I_F_L) c_int {
    if (lv.v1 != 9972) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 27944) return 3;
    return 0;
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

test "I_F_S layout" {
    var lv: c.I_F_S = undefined;
    try testing.expectSize(c.I_F_S, 12);
    try testing.expectAlign(c.I_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_S C calls" {
    try testing.expectEqual(c.ret_I_F_S(), .{ .v1 = 22732, .v2 = 4.5, .v3 = 27757 });
    try testing.expectOk(c.assert_ret_I_F_S());
    try testing.expectOk(c.send_I_F_S());
    try testing.expectOk(c.recv_I_F_S(.{ .v1 = 22732, .v2 = 4.5, .v3 = 27757 }));
}
pub export fn zig_recv_I_F_S(lv: c.I_F_S) c_int {
    if (lv.v1 != 22732) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 27757) return 3;
    return 0;
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

test "I_F_Uc layout" {
    var lv: c.I_F_Uc = undefined;
    try testing.expectSize(c.I_F_Uc, 12);
    try testing.expectAlign(c.I_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Uc C calls" {
    try testing.expectEqual(c.ret_I_F_Uc(), .{ .v1 = 2422, .v2 = -0.25, .v3 = 125 });
    try testing.expectOk(c.assert_ret_I_F_Uc());
    try testing.expectOk(c.send_I_F_Uc());
    try testing.expectOk(c.recv_I_F_Uc(.{ .v1 = 2422, .v2 = -0.25, .v3 = 125 }));
}
pub export fn zig_recv_I_F_Uc(lv: c.I_F_Uc) c_int {
    if (lv.v1 != 2422) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 125) return 3;
    return 0;
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

test "I_F_Ui layout" {
    var lv: c.I_F_Ui = undefined;
    try testing.expectSize(c.I_F_Ui, 12);
    try testing.expectAlign(c.I_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Ui C calls" {
    try testing.expectEqual(c.ret_I_F_Ui(), .{ .v1 = 2378, .v2 = 4.5, .v3 = 16314 });
    try testing.expectOk(c.assert_ret_I_F_Ui());
    try testing.expectOk(c.send_I_F_Ui());
    try testing.expectOk(c.recv_I_F_Ui(.{ .v1 = 2378, .v2 = 4.5, .v3 = 16314 }));
}
pub export fn zig_recv_I_F_Ui(lv: c.I_F_Ui) c_int {
    if (lv.v1 != 2378) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 16314) return 3;
    return 0;
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

test "I_F_Ul layout" {
    var lv: c.I_F_Ul = undefined;
    try testing.expectSize(c.I_F_Ul, 16);
    try testing.expectAlign(c.I_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Ul C calls" {
    try testing.expectEqual(c.ret_I_F_Ul(), .{ .v1 = 32591, .v2 = 7.0, .v3 = 2455 });
    try testing.expectOk(c.assert_ret_I_F_Ul());
    try testing.expectOk(c.send_I_F_Ul());
    try testing.expectOk(c.recv_I_F_Ul(.{ .v1 = 32591, .v2 = 7.0, .v3 = 2455 }));
}
pub export fn zig_recv_I_F_Ul(lv: c.I_F_Ul) c_int {
    if (lv.v1 != 32591) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 2455) return 3;
    return 0;
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

test "I_F_Us layout" {
    var lv: c.I_F_Us = undefined;
    try testing.expectSize(c.I_F_Us, 12);
    try testing.expectAlign(c.I_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Us C calls" {
    try testing.expectEqual(c.ret_I_F_Us(), .{ .v1 = 24697, .v2 = -0.25, .v3 = 26553 });
    try testing.expectOk(c.assert_ret_I_F_Us());
    try testing.expectOk(c.send_I_F_Us());
    try testing.expectOk(c.recv_I_F_Us(.{ .v1 = 24697, .v2 = -0.25, .v3 = 26553 }));
}
pub export fn zig_recv_I_F_Us(lv: c.I_F_Us) c_int {
    if (lv.v1 != 24697) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 26553) return 3;
    return 0;
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

test "I_F_Vp layout" {
    var lv: c.I_F_Vp = undefined;
    try testing.expectSize(c.I_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_F_Vp C calls" {
    try testing.expectEqual(c.ret_I_F_Vp(), .{ .v1 = 9459, .v2 = 4.5, .v3 = null });
    try testing.expectOk(c.assert_ret_I_F_Vp());
    try testing.expectOk(c.send_I_F_Vp());
    try testing.expectOk(c.recv_I_F_Vp(.{ .v1 = 9459, .v2 = 4.5, .v3 = null }));
}
pub export fn zig_recv_I_F_Vp(lv: c.I_F_Vp) c_int {
    if (lv.v1 != 9459) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_F_Vp() c.I_F_Vp {
    return .{ .v1 = 9459, .v2 = 4.5, .v3 = null };
}

// From T_Snnn_xax.c:65716:65734
// struct  I_I  {
//   int v1;
//   int v2;
// };

test "I_I layout" {
    var lv: c.I_I = undefined;
    try testing.expectSize(c.I_I, 8);
    try testing.expectAlign(c.I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_I C calls" {
    try testing.expectEqual(c.ret_I_I(), .{ .v1 = 25696, .v2 = 22162 });
    try testing.expectOk(c.assert_ret_I_I());
    try testing.expectOk(c.send_I_I());
    try testing.expectOk(c.recv_I_I(.{ .v1 = 25696, .v2 = 22162 }));
}
pub export fn zig_recv_I_I(lv: c.I_I) c_int {
    if (lv.v1 != 25696) return 1;
    if (lv.v2 != 22162) return 2;
    return 0;
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

test "I_I_C layout" {
    var lv: c.I_I_C = undefined;
    try testing.expectSize(c.I_I_C, 12);
    try testing.expectAlign(c.I_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_C C calls" {
    try testing.expectEqual(c.ret_I_I_C(), .{ .v1 = 10622, .v2 = 26317, .v3 = 54 });
    try testing.expectOk(c.assert_ret_I_I_C());
    try testing.expectOk(c.send_I_I_C());
    try testing.expectOk(c.recv_I_I_C(.{ .v1 = 10622, .v2 = 26317, .v3 = 54 }));
}
pub export fn zig_recv_I_I_C(lv: c.I_I_C) c_int {
    if (lv.v1 != 10622) return 1;
    if (lv.v2 != 26317) return 2;
    if (lv.v3 != 54) return 3;
    return 0;
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

test "I_I_D layout" {
    var lv: c.I_I_D = undefined;
    try testing.expectSize(c.I_I_D, 16);
    try testing.expectAlign(c.I_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_D C calls" {
    try testing.expectEqual(c.ret_I_I_D(), .{ .v1 = 26453, .v2 = 22783, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_I_I_D());
    try testing.expectOk(c.send_I_I_D());
    try testing.expectOk(c.recv_I_I_D(.{ .v1 = 26453, .v2 = 22783, .v3 = 4.5 }));
}
pub export fn zig_recv_I_I_D(lv: c.I_I_D) c_int {
    if (lv.v1 != 26453) return 1;
    if (lv.v2 != 22783) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
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

test "I_I_F layout" {
    var lv: c.I_I_F = undefined;
    try testing.expectSize(c.I_I_F, 12);
    try testing.expectAlign(c.I_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_F C calls" {
    try testing.expectEqual(c.ret_I_I_F(), .{ .v1 = 25300, .v2 = 31232, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_I_I_F());
    try testing.expectOk(c.send_I_I_F());
    try testing.expectOk(c.recv_I_I_F(.{ .v1 = 25300, .v2 = 31232, .v3 = -0.25 }));
}
pub export fn zig_recv_I_I_F(lv: c.I_I_F) c_int {
    if (lv.v1 != 25300) return 1;
    if (lv.v2 != 31232) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
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

test "I_I_I layout" {
    var lv: c.I_I_I = undefined;
    try testing.expectSize(c.I_I_I, 12);
    try testing.expectAlign(c.I_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_I C calls" {
    try testing.expectEqual(c.ret_I_I_I(), .{ .v1 = 27961, .v2 = 24345, .v3 = 24769 });
    try testing.expectOk(c.assert_ret_I_I_I());
    try testing.expectOk(c.send_I_I_I());
    try testing.expectOk(c.recv_I_I_I(.{ .v1 = 27961, .v2 = 24345, .v3 = 24769 }));
}
pub export fn zig_recv_I_I_I(lv: c.I_I_I) c_int {
    if (lv.v1 != 27961) return 1;
    if (lv.v2 != 24345) return 2;
    if (lv.v3 != 24769) return 3;
    return 0;
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

test "I_I_Ip layout" {
    var lv: c.I_I_Ip = undefined;
    try testing.expectSize(c.I_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Ip C calls" {
    try testing.expectEqual(c.ret_I_I_Ip(), .{ .v1 = 115, .v2 = 29069, .v3 = null });
    try testing.expectOk(c.assert_ret_I_I_Ip());
    try testing.expectOk(c.send_I_I_Ip());
    try testing.expectOk(c.recv_I_I_Ip(.{ .v1 = 115, .v2 = 29069, .v3 = null }));
}
pub export fn zig_recv_I_I_Ip(lv: c.I_I_Ip) c_int {
    if (lv.v1 != 115) return 1;
    if (lv.v2 != 29069) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_I_L layout" {
    var lv: c.I_I_L = undefined;
    try testing.expectSize(c.I_I_L, 16);
    try testing.expectAlign(c.I_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_L C calls" {
    try testing.expectEqual(c.ret_I_I_L(), .{ .v1 = 31682, .v2 = 7411, .v3 = 18481 });
    try testing.expectOk(c.assert_ret_I_I_L());
    try testing.expectOk(c.send_I_I_L());
    try testing.expectOk(c.recv_I_I_L(.{ .v1 = 31682, .v2 = 7411, .v3 = 18481 }));
}
pub export fn zig_recv_I_I_L(lv: c.I_I_L) c_int {
    if (lv.v1 != 31682) return 1;
    if (lv.v2 != 7411) return 2;
    if (lv.v3 != 18481) return 3;
    return 0;
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

test "I_I_S layout" {
    var lv: c.I_I_S = undefined;
    try testing.expectSize(c.I_I_S, 12);
    try testing.expectAlign(c.I_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_S C calls" {
    try testing.expectEqual(c.ret_I_I_S(), .{ .v1 = 23632, .v2 = 31412, .v3 = 28557 });
    try testing.expectOk(c.assert_ret_I_I_S());
    try testing.expectOk(c.send_I_I_S());
    try testing.expectOk(c.recv_I_I_S(.{ .v1 = 23632, .v2 = 31412, .v3 = 28557 }));
}
pub export fn zig_recv_I_I_S(lv: c.I_I_S) c_int {
    if (lv.v1 != 23632) return 1;
    if (lv.v2 != 31412) return 2;
    if (lv.v3 != 28557) return 3;
    return 0;
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

test "I_I_Uc layout" {
    var lv: c.I_I_Uc = undefined;
    try testing.expectSize(c.I_I_Uc, 12);
    try testing.expectAlign(c.I_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Uc C calls" {
    try testing.expectEqual(c.ret_I_I_Uc(), .{ .v1 = 10669, .v2 = 23177, .v3 = 84 });
    try testing.expectOk(c.assert_ret_I_I_Uc());
    try testing.expectOk(c.send_I_I_Uc());
    try testing.expectOk(c.recv_I_I_Uc(.{ .v1 = 10669, .v2 = 23177, .v3 = 84 }));
}
pub export fn zig_recv_I_I_Uc(lv: c.I_I_Uc) c_int {
    if (lv.v1 != 10669) return 1;
    if (lv.v2 != 23177) return 2;
    if (lv.v3 != 84) return 3;
    return 0;
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

test "I_I_Ui layout" {
    var lv: c.I_I_Ui = undefined;
    try testing.expectSize(c.I_I_Ui, 12);
    try testing.expectAlign(c.I_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Ui C calls" {
    try testing.expectEqual(c.ret_I_I_Ui(), .{ .v1 = 19858, .v2 = 31111, .v3 = 266 });
    try testing.expectOk(c.assert_ret_I_I_Ui());
    try testing.expectOk(c.send_I_I_Ui());
    try testing.expectOk(c.recv_I_I_Ui(.{ .v1 = 19858, .v2 = 31111, .v3 = 266 }));
}
pub export fn zig_recv_I_I_Ui(lv: c.I_I_Ui) c_int {
    if (lv.v1 != 19858) return 1;
    if (lv.v2 != 31111) return 2;
    if (lv.v3 != 266) return 3;
    return 0;
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

test "I_I_Ul layout" {
    var lv: c.I_I_Ul = undefined;
    try testing.expectSize(c.I_I_Ul, 16);
    try testing.expectAlign(c.I_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Ul C calls" {
    try testing.expectEqual(c.ret_I_I_Ul(), .{ .v1 = 6762, .v2 = 13697, .v3 = 16792 });
    try testing.expectOk(c.assert_ret_I_I_Ul());
    try testing.expectOk(c.send_I_I_Ul());
    try testing.expectOk(c.recv_I_I_Ul(.{ .v1 = 6762, .v2 = 13697, .v3 = 16792 }));
}
pub export fn zig_recv_I_I_Ul(lv: c.I_I_Ul) c_int {
    if (lv.v1 != 6762) return 1;
    if (lv.v2 != 13697) return 2;
    if (lv.v3 != 16792) return 3;
    return 0;
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

test "I_I_Us layout" {
    var lv: c.I_I_Us = undefined;
    try testing.expectSize(c.I_I_Us, 12);
    try testing.expectAlign(c.I_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Us C calls" {
    try testing.expectEqual(c.ret_I_I_Us(), .{ .v1 = 24170, .v2 = 32025, .v3 = 8080 });
    try testing.expectOk(c.assert_ret_I_I_Us());
    try testing.expectOk(c.send_I_I_Us());
    try testing.expectOk(c.recv_I_I_Us(.{ .v1 = 24170, .v2 = 32025, .v3 = 8080 }));
}
pub export fn zig_recv_I_I_Us(lv: c.I_I_Us) c_int {
    if (lv.v1 != 24170) return 1;
    if (lv.v2 != 32025) return 2;
    if (lv.v3 != 8080) return 3;
    return 0;
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

test "I_I_Vp layout" {
    var lv: c.I_I_Vp = undefined;
    try testing.expectSize(c.I_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_I_Vp C calls" {
    try testing.expectEqual(c.ret_I_I_Vp(), .{ .v1 = 25106, .v2 = 21604, .v3 = null });
    try testing.expectOk(c.assert_ret_I_I_Vp());
    try testing.expectOk(c.send_I_I_Vp());
    try testing.expectOk(c.recv_I_I_Vp(.{ .v1 = 25106, .v2 = 21604, .v3 = null }));
}
pub export fn zig_recv_I_I_Vp(lv: c.I_I_Vp) c_int {
    if (lv.v1 != 25106) return 1;
    if (lv.v2 != 21604) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_I_Vp() c.I_I_Vp {
    return .{ .v1 = 25106, .v2 = 21604, .v3 = null };
}

// From T_Snnn_xax.c:66763:66781
// struct  I_Ip  {
//   int v1;
//   int *v2;
// };

test "I_Ip layout" {
    var lv: c.I_Ip = undefined;
    try testing.expectSize(c.I_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "I_Ip C calls" {
    try testing.expectEqual(c.ret_I_Ip(), .{ .v1 = 1345, .v2 = null });
    try testing.expectOk(c.assert_ret_I_Ip());
    try testing.expectOk(c.send_I_Ip());
    try testing.expectOk(c.recv_I_Ip(.{ .v1 = 1345, .v2 = null }));
}
pub export fn zig_recv_I_Ip(lv: c.I_Ip) c_int {
    if (lv.v1 != 1345) return 1;
    if (lv.v2 != null) return 2;
    return 0;
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

test "I_Ip_C layout" {
    var lv: c.I_Ip_C = undefined;
    try testing.expectSize(c.I_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_C C calls" {
    try testing.expectEqual(c.ret_I_Ip_C(), .{ .v1 = 1373, .v2 = null, .v3 = 14 });
    try testing.expectOk(c.assert_ret_I_Ip_C());
    try testing.expectOk(c.send_I_Ip_C());
    try testing.expectOk(c.recv_I_Ip_C(.{ .v1 = 1373, .v2 = null, .v3 = 14 }));
}
pub export fn zig_recv_I_Ip_C(lv: c.I_Ip_C) c_int {
    if (lv.v1 != 1373) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 14) return 3;
    return 0;
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

test "I_Ip_D layout" {
    var lv: c.I_Ip_D = undefined;
    try testing.expectSize(c.I_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_D C calls" {
    try testing.expectEqual(c.ret_I_Ip_D(), .{ .v1 = 10474, .v2 = null, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_I_Ip_D());
    try testing.expectOk(c.send_I_Ip_D());
    try testing.expectOk(c.recv_I_Ip_D(.{ .v1 = 10474, .v2 = null, .v3 = 7.0 }));
}
pub export fn zig_recv_I_Ip_D(lv: c.I_Ip_D) c_int {
    if (lv.v1 != 10474) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
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

test "I_Ip_F layout" {
    var lv: c.I_Ip_F = undefined;
    try testing.expectSize(c.I_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_F C calls" {
    try testing.expectEqual(c.ret_I_Ip_F(), .{ .v1 = 5032, .v2 = null, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_I_Ip_F());
    try testing.expectOk(c.send_I_Ip_F());
    try testing.expectOk(c.recv_I_Ip_F(.{ .v1 = 5032, .v2 = null, .v3 = -0.25 }));
}
pub export fn zig_recv_I_Ip_F(lv: c.I_Ip_F) c_int {
    if (lv.v1 != 5032) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
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

test "I_Ip_I layout" {
    var lv: c.I_Ip_I = undefined;
    try testing.expectSize(c.I_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_I C calls" {
    try testing.expectEqual(c.ret_I_Ip_I(), .{ .v1 = 9003, .v2 = null, .v3 = 11875 });
    try testing.expectOk(c.assert_ret_I_Ip_I());
    try testing.expectOk(c.send_I_Ip_I());
    try testing.expectOk(c.recv_I_Ip_I(.{ .v1 = 9003, .v2 = null, .v3 = 11875 }));
}
pub export fn zig_recv_I_Ip_I(lv: c.I_Ip_I) c_int {
    if (lv.v1 != 9003) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 11875) return 3;
    return 0;
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

test "I_Ip_Ip layout" {
    var lv: c.I_Ip_Ip = undefined;
    try testing.expectSize(c.I_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Ip C calls" {
    try testing.expectEqual(c.ret_I_Ip_Ip(), .{ .v1 = 11522, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Ip_Ip());
    try testing.expectOk(c.send_I_Ip_Ip());
    try testing.expectOk(c.recv_I_Ip_Ip(.{ .v1 = 11522, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_I_Ip_Ip(lv: c.I_Ip_Ip) c_int {
    if (lv.v1 != 11522) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_Ip_L layout" {
    var lv: c.I_Ip_L = undefined;
    try testing.expectSize(c.I_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_L C calls" {
    try testing.expectEqual(c.ret_I_Ip_L(), .{ .v1 = 12609, .v2 = null, .v3 = 30005 });
    try testing.expectOk(c.assert_ret_I_Ip_L());
    try testing.expectOk(c.send_I_Ip_L());
    try testing.expectOk(c.recv_I_Ip_L(.{ .v1 = 12609, .v2 = null, .v3 = 30005 }));
}
pub export fn zig_recv_I_Ip_L(lv: c.I_Ip_L) c_int {
    if (lv.v1 != 12609) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 30005) return 3;
    return 0;
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

test "I_Ip_S layout" {
    var lv: c.I_Ip_S = undefined;
    try testing.expectSize(c.I_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_S C calls" {
    try testing.expectEqual(c.ret_I_Ip_S(), .{ .v1 = 1059, .v2 = null, .v3 = 12558 });
    try testing.expectOk(c.assert_ret_I_Ip_S());
    try testing.expectOk(c.send_I_Ip_S());
    try testing.expectOk(c.recv_I_Ip_S(.{ .v1 = 1059, .v2 = null, .v3 = 12558 }));
}
pub export fn zig_recv_I_Ip_S(lv: c.I_Ip_S) c_int {
    if (lv.v1 != 1059) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 12558) return 3;
    return 0;
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

test "I_Ip_Uc layout" {
    var lv: c.I_Ip_Uc = undefined;
    try testing.expectSize(c.I_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Uc C calls" {
    try testing.expectEqual(c.ret_I_Ip_Uc(), .{ .v1 = 19459, .v2 = null, .v3 = 5 });
    try testing.expectOk(c.assert_ret_I_Ip_Uc());
    try testing.expectOk(c.send_I_Ip_Uc());
    try testing.expectOk(c.recv_I_Ip_Uc(.{ .v1 = 19459, .v2 = null, .v3 = 5 }));
}
pub export fn zig_recv_I_Ip_Uc(lv: c.I_Ip_Uc) c_int {
    if (lv.v1 != 19459) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 5) return 3;
    return 0;
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

test "I_Ip_Ui layout" {
    var lv: c.I_Ip_Ui = undefined;
    try testing.expectSize(c.I_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Ui C calls" {
    try testing.expectEqual(c.ret_I_Ip_Ui(), .{ .v1 = 6589, .v2 = null, .v3 = 18101 });
    try testing.expectOk(c.assert_ret_I_Ip_Ui());
    try testing.expectOk(c.send_I_Ip_Ui());
    try testing.expectOk(c.recv_I_Ip_Ui(.{ .v1 = 6589, .v2 = null, .v3 = 18101 }));
}
pub export fn zig_recv_I_Ip_Ui(lv: c.I_Ip_Ui) c_int {
    if (lv.v1 != 6589) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 18101) return 3;
    return 0;
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

test "I_Ip_Ul layout" {
    var lv: c.I_Ip_Ul = undefined;
    try testing.expectSize(c.I_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Ul C calls" {
    try testing.expectEqual(c.ret_I_Ip_Ul(), .{ .v1 = 7, .v2 = null, .v3 = 6657 });
    try testing.expectOk(c.assert_ret_I_Ip_Ul());
    try testing.expectOk(c.send_I_Ip_Ul());
    try testing.expectOk(c.recv_I_Ip_Ul(.{ .v1 = 7, .v2 = null, .v3 = 6657 }));
}
pub export fn zig_recv_I_Ip_Ul(lv: c.I_Ip_Ul) c_int {
    if (lv.v1 != 7) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 6657) return 3;
    return 0;
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

test "I_Ip_Us layout" {
    var lv: c.I_Ip_Us = undefined;
    try testing.expectSize(c.I_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Us C calls" {
    try testing.expectEqual(c.ret_I_Ip_Us(), .{ .v1 = 12797, .v2 = null, .v3 = 13372 });
    try testing.expectOk(c.assert_ret_I_Ip_Us());
    try testing.expectOk(c.send_I_Ip_Us());
    try testing.expectOk(c.recv_I_Ip_Us(.{ .v1 = 12797, .v2 = null, .v3 = 13372 }));
}
pub export fn zig_recv_I_Ip_Us(lv: c.I_Ip_Us) c_int {
    if (lv.v1 != 12797) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 13372) return 3;
    return 0;
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

test "I_Ip_Vp layout" {
    var lv: c.I_Ip_Vp = undefined;
    try testing.expectSize(c.I_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Ip_Vp C calls" {
    try testing.expectEqual(c.ret_I_Ip_Vp(), .{ .v1 = 23149, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Ip_Vp());
    try testing.expectOk(c.send_I_Ip_Vp());
    try testing.expectOk(c.recv_I_Ip_Vp(.{ .v1 = 23149, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_I_Ip_Vp(lv: c.I_Ip_Vp) c_int {
    if (lv.v1 != 23149) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_Ip_Vp() c.I_Ip_Vp {
    return .{ .v1 = 23149, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:67810:67828
// struct  I_L  {
//   int v1;
//   __tsi64 v2;
// };

test "I_L layout" {
    var lv: c.I_L = undefined;
    try testing.expectSize(c.I_L, ABISELECT(16, 12));
    try testing.expectAlign(c.I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "I_L C calls" {
    try testing.expectEqual(c.ret_I_L(), .{ .v1 = 11062, .v2 = 25927 });
    try testing.expectOk(c.assert_ret_I_L());
    try testing.expectOk(c.send_I_L());
    try testing.expectOk(c.recv_I_L(.{ .v1 = 11062, .v2 = 25927 }));
}
pub export fn zig_recv_I_L(lv: c.I_L) c_int {
    if (lv.v1 != 11062) return 1;
    if (lv.v2 != 25927) return 2;
    return 0;
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

test "I_L_C layout" {
    var lv: c.I_L_C = undefined;
    try testing.expectSize(c.I_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_C C calls" {
    try testing.expectEqual(c.ret_I_L_C(), .{ .v1 = 3285, .v2 = 26260, .v3 = 38 });
    try testing.expectOk(c.assert_ret_I_L_C());
    try testing.expectOk(c.send_I_L_C());
    try testing.expectOk(c.recv_I_L_C(.{ .v1 = 3285, .v2 = 26260, .v3 = 38 }));
}
pub export fn zig_recv_I_L_C(lv: c.I_L_C) c_int {
    if (lv.v1 != 3285) return 1;
    if (lv.v2 != 26260) return 2;
    if (lv.v3 != 38) return 3;
    return 0;
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

test "I_L_D layout" {
    var lv: c.I_L_D = undefined;
    try testing.expectSize(c.I_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_D C calls" {
    try testing.expectEqual(c.ret_I_L_D(), .{ .v1 = 6996, .v2 = 15320, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_I_L_D());
    try testing.expectOk(c.send_I_L_D());
    try testing.expectOk(c.recv_I_L_D(.{ .v1 = 6996, .v2 = 15320, .v3 = -0.25 }));
}
pub export fn zig_recv_I_L_D(lv: c.I_L_D) c_int {
    if (lv.v1 != 6996) return 1;
    if (lv.v2 != 15320) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
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

test "I_L_F layout" {
    var lv: c.I_L_F = undefined;
    try testing.expectSize(c.I_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_F C calls" {
    try testing.expectEqual(c.ret_I_L_F(), .{ .v1 = 3417, .v2 = 5705, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_I_L_F());
    try testing.expectOk(c.send_I_L_F());
    try testing.expectOk(c.recv_I_L_F(.{ .v1 = 3417, .v2 = 5705, .v3 = 7.0 }));
}
pub export fn zig_recv_I_L_F(lv: c.I_L_F) c_int {
    if (lv.v1 != 3417) return 1;
    if (lv.v2 != 5705) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
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

test "I_L_I layout" {
    var lv: c.I_L_I = undefined;
    try testing.expectSize(c.I_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_I C calls" {
    try testing.expectEqual(c.ret_I_L_I(), .{ .v1 = 2878, .v2 = 28742, .v3 = 27089 });
    try testing.expectOk(c.assert_ret_I_L_I());
    try testing.expectOk(c.send_I_L_I());
    try testing.expectOk(c.recv_I_L_I(.{ .v1 = 2878, .v2 = 28742, .v3 = 27089 }));
}
pub export fn zig_recv_I_L_I(lv: c.I_L_I) c_int {
    if (lv.v1 != 2878) return 1;
    if (lv.v2 != 28742) return 2;
    if (lv.v3 != 27089) return 3;
    return 0;
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

test "I_L_Ip layout" {
    var lv: c.I_L_Ip = undefined;
    try testing.expectSize(c.I_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Ip C calls" {
    try testing.expectEqual(c.ret_I_L_Ip(), .{ .v1 = 14448, .v2 = 27305, .v3 = null });
    try testing.expectOk(c.assert_ret_I_L_Ip());
    try testing.expectOk(c.send_I_L_Ip());
    try testing.expectOk(c.recv_I_L_Ip(.{ .v1 = 14448, .v2 = 27305, .v3 = null }));
}
pub export fn zig_recv_I_L_Ip(lv: c.I_L_Ip) c_int {
    if (lv.v1 != 14448) return 1;
    if (lv.v2 != 27305) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_L_L layout" {
    var lv: c.I_L_L = undefined;
    try testing.expectSize(c.I_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_L C calls" {
    try testing.expectEqual(c.ret_I_L_L(), .{ .v1 = 16994, .v2 = 26074, .v3 = 1517 });
    try testing.expectOk(c.assert_ret_I_L_L());
    try testing.expectOk(c.send_I_L_L());
    try testing.expectOk(c.recv_I_L_L(.{ .v1 = 16994, .v2 = 26074, .v3 = 1517 }));
}
pub export fn zig_recv_I_L_L(lv: c.I_L_L) c_int {
    if (lv.v1 != 16994) return 1;
    if (lv.v2 != 26074) return 2;
    if (lv.v3 != 1517) return 3;
    return 0;
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

test "I_L_S layout" {
    var lv: c.I_L_S = undefined;
    try testing.expectSize(c.I_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_S C calls" {
    try testing.expectEqual(c.ret_I_L_S(), .{ .v1 = 20300, .v2 = 20165, .v3 = 29078 });
    try testing.expectOk(c.assert_ret_I_L_S());
    try testing.expectOk(c.send_I_L_S());
    try testing.expectOk(c.recv_I_L_S(.{ .v1 = 20300, .v2 = 20165, .v3 = 29078 }));
}
pub export fn zig_recv_I_L_S(lv: c.I_L_S) c_int {
    if (lv.v1 != 20300) return 1;
    if (lv.v2 != 20165) return 2;
    if (lv.v3 != 29078) return 3;
    return 0;
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

test "I_L_Uc layout" {
    var lv: c.I_L_Uc = undefined;
    try testing.expectSize(c.I_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Uc C calls" {
    try testing.expectEqual(c.ret_I_L_Uc(), .{ .v1 = 17820, .v2 = 24592, .v3 = 125 });
    try testing.expectOk(c.assert_ret_I_L_Uc());
    try testing.expectOk(c.send_I_L_Uc());
    try testing.expectOk(c.recv_I_L_Uc(.{ .v1 = 17820, .v2 = 24592, .v3 = 125 }));
}
pub export fn zig_recv_I_L_Uc(lv: c.I_L_Uc) c_int {
    if (lv.v1 != 17820) return 1;
    if (lv.v2 != 24592) return 2;
    if (lv.v3 != 125) return 3;
    return 0;
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

test "I_L_Ui layout" {
    var lv: c.I_L_Ui = undefined;
    try testing.expectSize(c.I_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Ui C calls" {
    try testing.expectEqual(c.ret_I_L_Ui(), .{ .v1 = 2268, .v2 = 14982, .v3 = 1284 });
    try testing.expectOk(c.assert_ret_I_L_Ui());
    try testing.expectOk(c.send_I_L_Ui());
    try testing.expectOk(c.recv_I_L_Ui(.{ .v1 = 2268, .v2 = 14982, .v3 = 1284 }));
}
pub export fn zig_recv_I_L_Ui(lv: c.I_L_Ui) c_int {
    if (lv.v1 != 2268) return 1;
    if (lv.v2 != 14982) return 2;
    if (lv.v3 != 1284) return 3;
    return 0;
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

test "I_L_Ul layout" {
    var lv: c.I_L_Ul = undefined;
    try testing.expectSize(c.I_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Ul C calls" {
    try testing.expectEqual(c.ret_I_L_Ul(), .{ .v1 = 25117, .v2 = 28257, .v3 = 12345 });
    try testing.expectOk(c.assert_ret_I_L_Ul());
    try testing.expectOk(c.send_I_L_Ul());
    try testing.expectOk(c.recv_I_L_Ul(.{ .v1 = 25117, .v2 = 28257, .v3 = 12345 }));
}
pub export fn zig_recv_I_L_Ul(lv: c.I_L_Ul) c_int {
    if (lv.v1 != 25117) return 1;
    if (lv.v2 != 28257) return 2;
    if (lv.v3 != 12345) return 3;
    return 0;
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

test "I_L_Us layout" {
    var lv: c.I_L_Us = undefined;
    try testing.expectSize(c.I_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Us C calls" {
    try testing.expectEqual(c.ret_I_L_Us(), .{ .v1 = 6112, .v2 = 1636, .v3 = 20956 });
    try testing.expectOk(c.assert_ret_I_L_Us());
    try testing.expectOk(c.send_I_L_Us());
    try testing.expectOk(c.recv_I_L_Us(.{ .v1 = 6112, .v2 = 1636, .v3 = 20956 }));
}
pub export fn zig_recv_I_L_Us(lv: c.I_L_Us) c_int {
    if (lv.v1 != 6112) return 1;
    if (lv.v2 != 1636) return 2;
    if (lv.v3 != 20956) return 3;
    return 0;
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

test "I_L_Vp layout" {
    var lv: c.I_L_Vp = undefined;
    try testing.expectSize(c.I_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_L_Vp C calls" {
    try testing.expectEqual(c.ret_I_L_Vp(), .{ .v1 = 17111, .v2 = 29128, .v3 = null });
    try testing.expectOk(c.assert_ret_I_L_Vp());
    try testing.expectOk(c.send_I_L_Vp());
    try testing.expectOk(c.recv_I_L_Vp(.{ .v1 = 17111, .v2 = 29128, .v3 = null }));
}
pub export fn zig_recv_I_L_Vp(lv: c.I_L_Vp) c_int {
    if (lv.v1 != 17111) return 1;
    if (lv.v2 != 29128) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_L_Vp() c.I_L_Vp {
    return .{ .v1 = 17111, .v2 = 29128, .v3 = null };
}

// From T_Snnn_xax.c:68857:68875
// struct  I_S  {
//   int v1;
//   short v2;
// };

test "I_S layout" {
    var lv: c.I_S = undefined;
    try testing.expectSize(c.I_S, 8);
    try testing.expectAlign(c.I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_S C calls" {
    try testing.expectEqual(c.ret_I_S(), .{ .v1 = 20472, .v2 = 19735 });
    try testing.expectOk(c.assert_ret_I_S());
    try testing.expectOk(c.send_I_S());
    try testing.expectOk(c.recv_I_S(.{ .v1 = 20472, .v2 = 19735 }));
}
pub export fn zig_recv_I_S(lv: c.I_S) c_int {
    if (lv.v1 != 20472) return 1;
    if (lv.v2 != 19735) return 2;
    return 0;
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

test "I_S_C layout" {
    var lv: c.I_S_C = undefined;
    try testing.expectSize(c.I_S_C, 8);
    try testing.expectAlign(c.I_S_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_S_C C calls" {
    try testing.expectEqual(c.ret_I_S_C(), .{ .v1 = 30085, .v2 = 12535, .v3 = 68 });
    try testing.expectOk(c.assert_ret_I_S_C());
    try testing.expectOk(c.send_I_S_C());
    try testing.expectOk(c.recv_I_S_C(.{ .v1 = 30085, .v2 = 12535, .v3 = 68 }));
}
pub export fn zig_recv_I_S_C(lv: c.I_S_C) c_int {
    if (lv.v1 != 30085) return 1;
    if (lv.v2 != 12535) return 2;
    if (lv.v3 != 68) return 3;
    return 0;
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

test "I_S_D layout" {
    var lv: c.I_S_D = undefined;
    try testing.expectSize(c.I_S_D, 16);
    try testing.expectAlign(c.I_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_D C calls" {
    try testing.expectEqual(c.ret_I_S_D(), .{ .v1 = 20790, .v2 = 12807, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_I_S_D());
    try testing.expectOk(c.send_I_S_D());
    try testing.expectOk(c.recv_I_S_D(.{ .v1 = 20790, .v2 = 12807, .v3 = 7.0 }));
}
pub export fn zig_recv_I_S_D(lv: c.I_S_D) c_int {
    if (lv.v1 != 20790) return 1;
    if (lv.v2 != 12807) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
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

test "I_S_F layout" {
    var lv: c.I_S_F = undefined;
    try testing.expectSize(c.I_S_F, 12);
    try testing.expectAlign(c.I_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_F C calls" {
    try testing.expectEqual(c.ret_I_S_F(), .{ .v1 = 21659, .v2 = 15482, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_I_S_F());
    try testing.expectOk(c.send_I_S_F());
    try testing.expectOk(c.recv_I_S_F(.{ .v1 = 21659, .v2 = 15482, .v3 = 1.0 }));
}
pub export fn zig_recv_I_S_F(lv: c.I_S_F) c_int {
    if (lv.v1 != 21659) return 1;
    if (lv.v2 != 15482) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
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

test "I_S_I layout" {
    var lv: c.I_S_I = undefined;
    try testing.expectSize(c.I_S_I, 12);
    try testing.expectAlign(c.I_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_I C calls" {
    try testing.expectEqual(c.ret_I_S_I(), .{ .v1 = 19770, .v2 = 17968, .v3 = 30797 });
    try testing.expectOk(c.assert_ret_I_S_I());
    try testing.expectOk(c.send_I_S_I());
    try testing.expectOk(c.recv_I_S_I(.{ .v1 = 19770, .v2 = 17968, .v3 = 30797 }));
}
pub export fn zig_recv_I_S_I(lv: c.I_S_I) c_int {
    if (lv.v1 != 19770) return 1;
    if (lv.v2 != 17968) return 2;
    if (lv.v3 != 30797) return 3;
    return 0;
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

test "I_S_Ip layout" {
    var lv: c.I_S_Ip = undefined;
    try testing.expectSize(c.I_S_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_Ip C calls" {
    try testing.expectEqual(c.ret_I_S_Ip(), .{ .v1 = 11156, .v2 = 459, .v3 = null });
    try testing.expectOk(c.assert_ret_I_S_Ip());
    try testing.expectOk(c.send_I_S_Ip());
    try testing.expectOk(c.recv_I_S_Ip(.{ .v1 = 11156, .v2 = 459, .v3 = null }));
}
pub export fn zig_recv_I_S_Ip(lv: c.I_S_Ip) c_int {
    if (lv.v1 != 11156) return 1;
    if (lv.v2 != 459) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_S_L layout" {
    var lv: c.I_S_L = undefined;
    try testing.expectSize(c.I_S_L, 16);
    try testing.expectAlign(c.I_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_L C calls" {
    try testing.expectEqual(c.ret_I_S_L(), .{ .v1 = 20002, .v2 = 1407, .v3 = 28466 });
    try testing.expectOk(c.assert_ret_I_S_L());
    try testing.expectOk(c.send_I_S_L());
    try testing.expectOk(c.recv_I_S_L(.{ .v1 = 20002, .v2 = 1407, .v3 = 28466 }));
}
pub export fn zig_recv_I_S_L(lv: c.I_S_L) c_int {
    if (lv.v1 != 20002) return 1;
    if (lv.v2 != 1407) return 2;
    if (lv.v3 != 28466) return 3;
    return 0;
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

test "I_S_S layout" {
    var lv: c.I_S_S = undefined;
    try testing.expectSize(c.I_S_S, 8);
    try testing.expectAlign(c.I_S_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_S_S C calls" {
    try testing.expectEqual(c.ret_I_S_S(), .{ .v1 = 23178, .v2 = 17246, .v3 = 30600 });
    try testing.expectOk(c.assert_ret_I_S_S());
    try testing.expectOk(c.send_I_S_S());
    try testing.expectOk(c.recv_I_S_S(.{ .v1 = 23178, .v2 = 17246, .v3 = 30600 }));
}
pub export fn zig_recv_I_S_S(lv: c.I_S_S) c_int {
    if (lv.v1 != 23178) return 1;
    if (lv.v2 != 17246) return 2;
    if (lv.v3 != 30600) return 3;
    return 0;
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

test "I_S_Uc layout" {
    var lv: c.I_S_Uc = undefined;
    try testing.expectSize(c.I_S_Uc, 8);
    try testing.expectAlign(c.I_S_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_S_Uc C calls" {
    try testing.expectEqual(c.ret_I_S_Uc(), .{ .v1 = 29081, .v2 = 27093, .v3 = 104 });
    try testing.expectOk(c.assert_ret_I_S_Uc());
    try testing.expectOk(c.send_I_S_Uc());
    try testing.expectOk(c.recv_I_S_Uc(.{ .v1 = 29081, .v2 = 27093, .v3 = 104 }));
}
pub export fn zig_recv_I_S_Uc(lv: c.I_S_Uc) c_int {
    if (lv.v1 != 29081) return 1;
    if (lv.v2 != 27093) return 2;
    if (lv.v3 != 104) return 3;
    return 0;
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

test "I_S_Ui layout" {
    var lv: c.I_S_Ui = undefined;
    try testing.expectSize(c.I_S_Ui, 12);
    try testing.expectAlign(c.I_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_Ui C calls" {
    try testing.expectEqual(c.ret_I_S_Ui(), .{ .v1 = 19804, .v2 = 17359, .v3 = 32650 });
    try testing.expectOk(c.assert_ret_I_S_Ui());
    try testing.expectOk(c.send_I_S_Ui());
    try testing.expectOk(c.recv_I_S_Ui(.{ .v1 = 19804, .v2 = 17359, .v3 = 32650 }));
}
pub export fn zig_recv_I_S_Ui(lv: c.I_S_Ui) c_int {
    if (lv.v1 != 19804) return 1;
    if (lv.v2 != 17359) return 2;
    if (lv.v3 != 32650) return 3;
    return 0;
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

test "I_S_Ul layout" {
    var lv: c.I_S_Ul = undefined;
    try testing.expectSize(c.I_S_Ul, 16);
    try testing.expectAlign(c.I_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_Ul C calls" {
    try testing.expectEqual(c.ret_I_S_Ul(), .{ .v1 = 16785, .v2 = 22570, .v3 = 20471 });
    try testing.expectOk(c.assert_ret_I_S_Ul());
    try testing.expectOk(c.send_I_S_Ul());
    try testing.expectOk(c.recv_I_S_Ul(.{ .v1 = 16785, .v2 = 22570, .v3 = 20471 }));
}
pub export fn zig_recv_I_S_Ul(lv: c.I_S_Ul) c_int {
    if (lv.v1 != 16785) return 1;
    if (lv.v2 != 22570) return 2;
    if (lv.v3 != 20471) return 3;
    return 0;
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

test "I_S_Us layout" {
    var lv: c.I_S_Us = undefined;
    try testing.expectSize(c.I_S_Us, 8);
    try testing.expectAlign(c.I_S_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_S_Us C calls" {
    try testing.expectEqual(c.ret_I_S_Us(), .{ .v1 = 18528, .v2 = 17634, .v3 = 13815 });
    try testing.expectOk(c.assert_ret_I_S_Us());
    try testing.expectOk(c.send_I_S_Us());
    try testing.expectOk(c.recv_I_S_Us(.{ .v1 = 18528, .v2 = 17634, .v3 = 13815 }));
}
pub export fn zig_recv_I_S_Us(lv: c.I_S_Us) c_int {
    if (lv.v1 != 18528) return 1;
    if (lv.v2 != 17634) return 2;
    if (lv.v3 != 13815) return 3;
    return 0;
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

test "I_S_Vp layout" {
    var lv: c.I_S_Vp = undefined;
    try testing.expectSize(c.I_S_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_S_Vp C calls" {
    try testing.expectEqual(c.ret_I_S_Vp(), .{ .v1 = 5046, .v2 = 3734, .v3 = null });
    try testing.expectOk(c.assert_ret_I_S_Vp());
    try testing.expectOk(c.send_I_S_Vp());
    try testing.expectOk(c.recv_I_S_Vp(.{ .v1 = 5046, .v2 = 3734, .v3 = null }));
}
pub export fn zig_recv_I_S_Vp(lv: c.I_S_Vp) c_int {
    if (lv.v1 != 5046) return 1;
    if (lv.v2 != 3734) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_S_Vp() c.I_S_Vp {
    return .{ .v1 = 5046, .v2 = 3734, .v3 = null };
}

// From T_Snnn_xax.c:69904:69922
// struct  I_Uc  {
//   int v1;
//   unsigned char v2;
// };

test "I_Uc layout" {
    var lv: c.I_Uc = undefined;
    try testing.expectSize(c.I_Uc, 8);
    try testing.expectAlign(c.I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_Uc C calls" {
    try testing.expectEqual(c.ret_I_Uc(), .{ .v1 = 9907, .v2 = 62 });
    try testing.expectOk(c.assert_ret_I_Uc());
    try testing.expectOk(c.send_I_Uc());
    try testing.expectOk(c.recv_I_Uc(.{ .v1 = 9907, .v2 = 62 }));
}
pub export fn zig_recv_I_Uc(lv: c.I_Uc) c_int {
    if (lv.v1 != 9907) return 1;
    if (lv.v2 != 62) return 2;
    return 0;
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

test "I_Uc_C layout" {
    var lv: c.I_Uc_C = undefined;
    try testing.expectSize(c.I_Uc_C, 8);
    try testing.expectAlign(c.I_Uc_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "I_Uc_C C calls" {
    try testing.expectEqual(c.ret_I_Uc_C(), .{ .v1 = 814, .v2 = 78, .v3 = 109 });
    try testing.expectOk(c.assert_ret_I_Uc_C());
    try testing.expectOk(c.send_I_Uc_C());
    try testing.expectOk(c.recv_I_Uc_C(.{ .v1 = 814, .v2 = 78, .v3 = 109 }));
}
pub export fn zig_recv_I_Uc_C(lv: c.I_Uc_C) c_int {
    if (lv.v1 != 814) return 1;
    if (lv.v2 != 78) return 2;
    if (lv.v3 != 109) return 3;
    return 0;
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

test "I_Uc_D layout" {
    var lv: c.I_Uc_D = undefined;
    try testing.expectSize(c.I_Uc_D, 16);
    try testing.expectAlign(c.I_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_D C calls" {
    try testing.expectEqual(c.ret_I_Uc_D(), .{ .v1 = 22054, .v2 = 100, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_I_Uc_D());
    try testing.expectOk(c.send_I_Uc_D());
    try testing.expectOk(c.recv_I_Uc_D(.{ .v1 = 22054, .v2 = 100, .v3 = 4.5 }));
}
pub export fn zig_recv_I_Uc_D(lv: c.I_Uc_D) c_int {
    if (lv.v1 != 22054) return 1;
    if (lv.v2 != 100) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
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

test "I_Uc_F layout" {
    var lv: c.I_Uc_F = undefined;
    try testing.expectSize(c.I_Uc_F, 12);
    try testing.expectAlign(c.I_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_F C calls" {
    try testing.expectEqual(c.ret_I_Uc_F(), .{ .v1 = 4971, .v2 = 16, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_I_Uc_F());
    try testing.expectOk(c.send_I_Uc_F());
    try testing.expectOk(c.recv_I_Uc_F(.{ .v1 = 4971, .v2 = 16, .v3 = 0.875 }));
}
pub export fn zig_recv_I_Uc_F(lv: c.I_Uc_F) c_int {
    if (lv.v1 != 4971) return 1;
    if (lv.v2 != 16) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
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

test "I_Uc_I layout" {
    var lv: c.I_Uc_I = undefined;
    try testing.expectSize(c.I_Uc_I, 12);
    try testing.expectAlign(c.I_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_I C calls" {
    try testing.expectEqual(c.ret_I_Uc_I(), .{ .v1 = 11510, .v2 = 113, .v3 = 9530 });
    try testing.expectOk(c.assert_ret_I_Uc_I());
    try testing.expectOk(c.send_I_Uc_I());
    try testing.expectOk(c.recv_I_Uc_I(.{ .v1 = 11510, .v2 = 113, .v3 = 9530 }));
}
pub export fn zig_recv_I_Uc_I(lv: c.I_Uc_I) c_int {
    if (lv.v1 != 11510) return 1;
    if (lv.v2 != 113) return 2;
    if (lv.v3 != 9530) return 3;
    return 0;
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

test "I_Uc_Ip layout" {
    var lv: c.I_Uc_Ip = undefined;
    try testing.expectSize(c.I_Uc_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_Ip C calls" {
    try testing.expectEqual(c.ret_I_Uc_Ip(), .{ .v1 = 10563, .v2 = 11, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Uc_Ip());
    try testing.expectOk(c.send_I_Uc_Ip());
    try testing.expectOk(c.recv_I_Uc_Ip(.{ .v1 = 10563, .v2 = 11, .v3 = null }));
}
pub export fn zig_recv_I_Uc_Ip(lv: c.I_Uc_Ip) c_int {
    if (lv.v1 != 10563) return 1;
    if (lv.v2 != 11) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_Uc_L layout" {
    var lv: c.I_Uc_L = undefined;
    try testing.expectSize(c.I_Uc_L, 16);
    try testing.expectAlign(c.I_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_L C calls" {
    try testing.expectEqual(c.ret_I_Uc_L(), .{ .v1 = 28918, .v2 = 4, .v3 = 2052 });
    try testing.expectOk(c.assert_ret_I_Uc_L());
    try testing.expectOk(c.send_I_Uc_L());
    try testing.expectOk(c.recv_I_Uc_L(.{ .v1 = 28918, .v2 = 4, .v3 = 2052 }));
}
pub export fn zig_recv_I_Uc_L(lv: c.I_Uc_L) c_int {
    if (lv.v1 != 28918) return 1;
    if (lv.v2 != 4) return 2;
    if (lv.v3 != 2052) return 3;
    return 0;
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

test "I_Uc_S layout" {
    var lv: c.I_Uc_S = undefined;
    try testing.expectSize(c.I_Uc_S, 8);
    try testing.expectAlign(c.I_Uc_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Uc_S C calls" {
    try testing.expectEqual(c.ret_I_Uc_S(), .{ .v1 = 17185, .v2 = 74, .v3 = 22429 });
    try testing.expectOk(c.assert_ret_I_Uc_S());
    try testing.expectOk(c.send_I_Uc_S());
    try testing.expectOk(c.recv_I_Uc_S(.{ .v1 = 17185, .v2 = 74, .v3 = 22429 }));
}
pub export fn zig_recv_I_Uc_S(lv: c.I_Uc_S) c_int {
    if (lv.v1 != 17185) return 1;
    if (lv.v2 != 74) return 2;
    if (lv.v3 != 22429) return 3;
    return 0;
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

test "I_Uc_Uc layout" {
    var lv: c.I_Uc_Uc = undefined;
    try testing.expectSize(c.I_Uc_Uc, 8);
    try testing.expectAlign(c.I_Uc_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}
test "I_Uc_Uc C calls" {
    try testing.expectEqual(c.ret_I_Uc_Uc(), .{ .v1 = 7894, .v2 = 53, .v3 = 84 });
    try testing.expectOk(c.assert_ret_I_Uc_Uc());
    try testing.expectOk(c.send_I_Uc_Uc());
    try testing.expectOk(c.recv_I_Uc_Uc(.{ .v1 = 7894, .v2 = 53, .v3 = 84 }));
}
pub export fn zig_recv_I_Uc_Uc(lv: c.I_Uc_Uc) c_int {
    if (lv.v1 != 7894) return 1;
    if (lv.v2 != 53) return 2;
    if (lv.v3 != 84) return 3;
    return 0;
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

test "I_Uc_Ui layout" {
    var lv: c.I_Uc_Ui = undefined;
    try testing.expectSize(c.I_Uc_Ui, 12);
    try testing.expectAlign(c.I_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_Ui C calls" {
    try testing.expectEqual(c.ret_I_Uc_Ui(), .{ .v1 = 29649, .v2 = 52, .v3 = 28628 });
    try testing.expectOk(c.assert_ret_I_Uc_Ui());
    try testing.expectOk(c.send_I_Uc_Ui());
    try testing.expectOk(c.recv_I_Uc_Ui(.{ .v1 = 29649, .v2 = 52, .v3 = 28628 }));
}
pub export fn zig_recv_I_Uc_Ui(lv: c.I_Uc_Ui) c_int {
    if (lv.v1 != 29649) return 1;
    if (lv.v2 != 52) return 2;
    if (lv.v3 != 28628) return 3;
    return 0;
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

test "I_Uc_Ul layout" {
    var lv: c.I_Uc_Ul = undefined;
    try testing.expectSize(c.I_Uc_Ul, 16);
    try testing.expectAlign(c.I_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_Ul C calls" {
    try testing.expectEqual(c.ret_I_Uc_Ul(), .{ .v1 = 13864, .v2 = 71, .v3 = 17139 });
    try testing.expectOk(c.assert_ret_I_Uc_Ul());
    try testing.expectOk(c.send_I_Uc_Ul());
    try testing.expectOk(c.recv_I_Uc_Ul(.{ .v1 = 13864, .v2 = 71, .v3 = 17139 }));
}
pub export fn zig_recv_I_Uc_Ul(lv: c.I_Uc_Ul) c_int {
    if (lv.v1 != 13864) return 1;
    if (lv.v2 != 71) return 2;
    if (lv.v3 != 17139) return 3;
    return 0;
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

test "I_Uc_Us layout" {
    var lv: c.I_Uc_Us = undefined;
    try testing.expectSize(c.I_Uc_Us, 8);
    try testing.expectAlign(c.I_Uc_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Uc_Us C calls" {
    try testing.expectEqual(c.ret_I_Uc_Us(), .{ .v1 = 621, .v2 = 24, .v3 = 87 });
    try testing.expectOk(c.assert_ret_I_Uc_Us());
    try testing.expectOk(c.send_I_Uc_Us());
    try testing.expectOk(c.recv_I_Uc_Us(.{ .v1 = 621, .v2 = 24, .v3 = 87 }));
}
pub export fn zig_recv_I_Uc_Us(lv: c.I_Uc_Us) c_int {
    if (lv.v1 != 621) return 1;
    if (lv.v2 != 24) return 2;
    if (lv.v3 != 87) return 3;
    return 0;
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

test "I_Uc_Vp layout" {
    var lv: c.I_Uc_Vp = undefined;
    try testing.expectSize(c.I_Uc_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Uc_Vp C calls" {
    try testing.expectEqual(c.ret_I_Uc_Vp(), .{ .v1 = 15733, .v2 = 107, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Uc_Vp());
    try testing.expectOk(c.send_I_Uc_Vp());
    try testing.expectOk(c.recv_I_Uc_Vp(.{ .v1 = 15733, .v2 = 107, .v3 = null }));
}
pub export fn zig_recv_I_Uc_Vp(lv: c.I_Uc_Vp) c_int {
    if (lv.v1 != 15733) return 1;
    if (lv.v2 != 107) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_Uc_Vp() c.I_Uc_Vp {
    return .{ .v1 = 15733, .v2 = 107, .v3 = null };
}

// From T_Snnn_xax.c:70951:70969
// struct  I_Ui  {
//   int v1;
//   unsigned int v2;
// };

test "I_Ui layout" {
    var lv: c.I_Ui = undefined;
    try testing.expectSize(c.I_Ui, 8);
    try testing.expectAlign(c.I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_Ui C calls" {
    try testing.expectEqual(c.ret_I_Ui(), .{ .v1 = 7752, .v2 = 28087 });
    try testing.expectOk(c.assert_ret_I_Ui());
    try testing.expectOk(c.send_I_Ui());
    try testing.expectOk(c.recv_I_Ui(.{ .v1 = 7752, .v2 = 28087 }));
}
pub export fn zig_recv_I_Ui(lv: c.I_Ui) c_int {
    if (lv.v1 != 7752) return 1;
    if (lv.v2 != 28087) return 2;
    return 0;
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

test "I_Ui_C layout" {
    var lv: c.I_Ui_C = undefined;
    try testing.expectSize(c.I_Ui_C, 12);
    try testing.expectAlign(c.I_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_C C calls" {
    try testing.expectEqual(c.ret_I_Ui_C(), .{ .v1 = 16981, .v2 = 17288, .v3 = 2 });
    try testing.expectOk(c.assert_ret_I_Ui_C());
    try testing.expectOk(c.send_I_Ui_C());
    try testing.expectOk(c.recv_I_Ui_C(.{ .v1 = 16981, .v2 = 17288, .v3 = 2 }));
}
pub export fn zig_recv_I_Ui_C(lv: c.I_Ui_C) c_int {
    if (lv.v1 != 16981) return 1;
    if (lv.v2 != 17288) return 2;
    if (lv.v3 != 2) return 3;
    return 0;
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

test "I_Ui_D layout" {
    var lv: c.I_Ui_D = undefined;
    try testing.expectSize(c.I_Ui_D, 16);
    try testing.expectAlign(c.I_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_D C calls" {
    try testing.expectEqual(c.ret_I_Ui_D(), .{ .v1 = 23540, .v2 = 10678, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_I_Ui_D());
    try testing.expectOk(c.send_I_Ui_D());
    try testing.expectOk(c.recv_I_Ui_D(.{ .v1 = 23540, .v2 = 10678, .v3 = 0.5 }));
}
pub export fn zig_recv_I_Ui_D(lv: c.I_Ui_D) c_int {
    if (lv.v1 != 23540) return 1;
    if (lv.v2 != 10678) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
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

test "I_Ui_F layout" {
    var lv: c.I_Ui_F = undefined;
    try testing.expectSize(c.I_Ui_F, 12);
    try testing.expectAlign(c.I_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_F C calls" {
    try testing.expectEqual(c.ret_I_Ui_F(), .{ .v1 = 24642, .v2 = 26856, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_I_Ui_F());
    try testing.expectOk(c.send_I_Ui_F());
    try testing.expectOk(c.recv_I_Ui_F(.{ .v1 = 24642, .v2 = 26856, .v3 = 0.5 }));
}
pub export fn zig_recv_I_Ui_F(lv: c.I_Ui_F) c_int {
    if (lv.v1 != 24642) return 1;
    if (lv.v2 != 26856) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
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

test "I_Ui_I layout" {
    var lv: c.I_Ui_I = undefined;
    try testing.expectSize(c.I_Ui_I, 12);
    try testing.expectAlign(c.I_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_I C calls" {
    try testing.expectEqual(c.ret_I_Ui_I(), .{ .v1 = 8999, .v2 = 1538, .v3 = 10112 });
    try testing.expectOk(c.assert_ret_I_Ui_I());
    try testing.expectOk(c.send_I_Ui_I());
    try testing.expectOk(c.recv_I_Ui_I(.{ .v1 = 8999, .v2 = 1538, .v3 = 10112 }));
}
pub export fn zig_recv_I_Ui_I(lv: c.I_Ui_I) c_int {
    if (lv.v1 != 8999) return 1;
    if (lv.v2 != 1538) return 2;
    if (lv.v3 != 10112) return 3;
    return 0;
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

test "I_Ui_Ip layout" {
    var lv: c.I_Ui_Ip = undefined;
    try testing.expectSize(c.I_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Ip C calls" {
    try testing.expectEqual(c.ret_I_Ui_Ip(), .{ .v1 = 12833, .v2 = 8536, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Ui_Ip());
    try testing.expectOk(c.send_I_Ui_Ip());
    try testing.expectOk(c.recv_I_Ui_Ip(.{ .v1 = 12833, .v2 = 8536, .v3 = null }));
}
pub export fn zig_recv_I_Ui_Ip(lv: c.I_Ui_Ip) c_int {
    if (lv.v1 != 12833) return 1;
    if (lv.v2 != 8536) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_Ui_L layout" {
    var lv: c.I_Ui_L = undefined;
    try testing.expectSize(c.I_Ui_L, 16);
    try testing.expectAlign(c.I_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_L C calls" {
    try testing.expectEqual(c.ret_I_Ui_L(), .{ .v1 = 5275, .v2 = 28397, .v3 = 7892 });
    try testing.expectOk(c.assert_ret_I_Ui_L());
    try testing.expectOk(c.send_I_Ui_L());
    try testing.expectOk(c.recv_I_Ui_L(.{ .v1 = 5275, .v2 = 28397, .v3 = 7892 }));
}
pub export fn zig_recv_I_Ui_L(lv: c.I_Ui_L) c_int {
    if (lv.v1 != 5275) return 1;
    if (lv.v2 != 28397) return 2;
    if (lv.v3 != 7892) return 3;
    return 0;
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

test "I_Ui_S layout" {
    var lv: c.I_Ui_S = undefined;
    try testing.expectSize(c.I_Ui_S, 12);
    try testing.expectAlign(c.I_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_S C calls" {
    try testing.expectEqual(c.ret_I_Ui_S(), .{ .v1 = 2988, .v2 = 13600, .v3 = 2866 });
    try testing.expectOk(c.assert_ret_I_Ui_S());
    try testing.expectOk(c.send_I_Ui_S());
    try testing.expectOk(c.recv_I_Ui_S(.{ .v1 = 2988, .v2 = 13600, .v3 = 2866 }));
}
pub export fn zig_recv_I_Ui_S(lv: c.I_Ui_S) c_int {
    if (lv.v1 != 2988) return 1;
    if (lv.v2 != 13600) return 2;
    if (lv.v3 != 2866) return 3;
    return 0;
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

test "I_Ui_Uc layout" {
    var lv: c.I_Ui_Uc = undefined;
    try testing.expectSize(c.I_Ui_Uc, 12);
    try testing.expectAlign(c.I_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Uc C calls" {
    try testing.expectEqual(c.ret_I_Ui_Uc(), .{ .v1 = 22817, .v2 = 14264, .v3 = 36 });
    try testing.expectOk(c.assert_ret_I_Ui_Uc());
    try testing.expectOk(c.send_I_Ui_Uc());
    try testing.expectOk(c.recv_I_Ui_Uc(.{ .v1 = 22817, .v2 = 14264, .v3 = 36 }));
}
pub export fn zig_recv_I_Ui_Uc(lv: c.I_Ui_Uc) c_int {
    if (lv.v1 != 22817) return 1;
    if (lv.v2 != 14264) return 2;
    if (lv.v3 != 36) return 3;
    return 0;
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

test "I_Ui_Ui layout" {
    var lv: c.I_Ui_Ui = undefined;
    try testing.expectSize(c.I_Ui_Ui, 12);
    try testing.expectAlign(c.I_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Ui C calls" {
    try testing.expectEqual(c.ret_I_Ui_Ui(), .{ .v1 = 24298, .v2 = 4517, .v3 = 19633 });
    try testing.expectOk(c.assert_ret_I_Ui_Ui());
    try testing.expectOk(c.send_I_Ui_Ui());
    try testing.expectOk(c.recv_I_Ui_Ui(.{ .v1 = 24298, .v2 = 4517, .v3 = 19633 }));
}
pub export fn zig_recv_I_Ui_Ui(lv: c.I_Ui_Ui) c_int {
    if (lv.v1 != 24298) return 1;
    if (lv.v2 != 4517) return 2;
    if (lv.v3 != 19633) return 3;
    return 0;
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

test "I_Ui_Ul layout" {
    var lv: c.I_Ui_Ul = undefined;
    try testing.expectSize(c.I_Ui_Ul, 16);
    try testing.expectAlign(c.I_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Ul C calls" {
    try testing.expectEqual(c.ret_I_Ui_Ul(), .{ .v1 = 14891, .v2 = 14320, .v3 = 17109 });
    try testing.expectOk(c.assert_ret_I_Ui_Ul());
    try testing.expectOk(c.send_I_Ui_Ul());
    try testing.expectOk(c.recv_I_Ui_Ul(.{ .v1 = 14891, .v2 = 14320, .v3 = 17109 }));
}
pub export fn zig_recv_I_Ui_Ul(lv: c.I_Ui_Ul) c_int {
    if (lv.v1 != 14891) return 1;
    if (lv.v2 != 14320) return 2;
    if (lv.v3 != 17109) return 3;
    return 0;
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

test "I_Ui_Us layout" {
    var lv: c.I_Ui_Us = undefined;
    try testing.expectSize(c.I_Ui_Us, 12);
    try testing.expectAlign(c.I_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Us C calls" {
    try testing.expectEqual(c.ret_I_Ui_Us(), .{ .v1 = 12774, .v2 = 30862, .v3 = 23839 });
    try testing.expectOk(c.assert_ret_I_Ui_Us());
    try testing.expectOk(c.send_I_Ui_Us());
    try testing.expectOk(c.recv_I_Ui_Us(.{ .v1 = 12774, .v2 = 30862, .v3 = 23839 }));
}
pub export fn zig_recv_I_Ui_Us(lv: c.I_Ui_Us) c_int {
    if (lv.v1 != 12774) return 1;
    if (lv.v2 != 30862) return 2;
    if (lv.v3 != 23839) return 3;
    return 0;
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

test "I_Ui_Vp layout" {
    var lv: c.I_Ui_Vp = undefined;
    try testing.expectSize(c.I_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Ui_Vp C calls" {
    try testing.expectEqual(c.ret_I_Ui_Vp(), .{ .v1 = 25010, .v2 = 12563, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Ui_Vp());
    try testing.expectOk(c.send_I_Ui_Vp());
    try testing.expectOk(c.recv_I_Ui_Vp(.{ .v1 = 25010, .v2 = 12563, .v3 = null }));
}
pub export fn zig_recv_I_Ui_Vp(lv: c.I_Ui_Vp) c_int {
    if (lv.v1 != 25010) return 1;
    if (lv.v2 != 12563) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_Ui_Vp() c.I_Ui_Vp {
    return .{ .v1 = 25010, .v2 = 12563, .v3 = null };
}

// From T_Snnn_xax.c:71998:72016
// struct  I_Ul  {
//   int v1;
//   __tsu64 v2;
// };

test "I_Ul layout" {
    var lv: c.I_Ul = undefined;
    try testing.expectSize(c.I_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "I_Ul C calls" {
    try testing.expectEqual(c.ret_I_Ul(), .{ .v1 = 29320, .v2 = 9969 });
    try testing.expectOk(c.assert_ret_I_Ul());
    try testing.expectOk(c.send_I_Ul());
    try testing.expectOk(c.recv_I_Ul(.{ .v1 = 29320, .v2 = 9969 }));
}
pub export fn zig_recv_I_Ul(lv: c.I_Ul) c_int {
    if (lv.v1 != 29320) return 1;
    if (lv.v2 != 9969) return 2;
    return 0;
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

test "I_Ul_C layout" {
    var lv: c.I_Ul_C = undefined;
    try testing.expectSize(c.I_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_C C calls" {
    try testing.expectEqual(c.ret_I_Ul_C(), .{ .v1 = 20010, .v2 = 6864, .v3 = 53 });
    try testing.expectOk(c.assert_ret_I_Ul_C());
    try testing.expectOk(c.send_I_Ul_C());
    try testing.expectOk(c.recv_I_Ul_C(.{ .v1 = 20010, .v2 = 6864, .v3 = 53 }));
}
pub export fn zig_recv_I_Ul_C(lv: c.I_Ul_C) c_int {
    if (lv.v1 != 20010) return 1;
    if (lv.v2 != 6864) return 2;
    if (lv.v3 != 53) return 3;
    return 0;
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

test "I_Ul_D layout" {
    var lv: c.I_Ul_D = undefined;
    try testing.expectSize(c.I_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_D C calls" {
    try testing.expectEqual(c.ret_I_Ul_D(), .{ .v1 = 31184, .v2 = 21032, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_I_Ul_D());
    try testing.expectOk(c.send_I_Ul_D());
    try testing.expectOk(c.recv_I_Ul_D(.{ .v1 = 31184, .v2 = 21032, .v3 = 1.0 }));
}
pub export fn zig_recv_I_Ul_D(lv: c.I_Ul_D) c_int {
    if (lv.v1 != 31184) return 1;
    if (lv.v2 != 21032) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
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

test "I_Ul_F layout" {
    var lv: c.I_Ul_F = undefined;
    try testing.expectSize(c.I_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_F C calls" {
    try testing.expectEqual(c.ret_I_Ul_F(), .{ .v1 = 13631, .v2 = 23584, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_I_Ul_F());
    try testing.expectOk(c.send_I_Ul_F());
    try testing.expectOk(c.recv_I_Ul_F(.{ .v1 = 13631, .v2 = 23584, .v3 = 0.5 }));
}
pub export fn zig_recv_I_Ul_F(lv: c.I_Ul_F) c_int {
    if (lv.v1 != 13631) return 1;
    if (lv.v2 != 23584) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
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

test "I_Ul_I layout" {
    var lv: c.I_Ul_I = undefined;
    try testing.expectSize(c.I_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_I C calls" {
    try testing.expectEqual(c.ret_I_Ul_I(), .{ .v1 = 24693, .v2 = 10012, .v3 = 25520 });
    try testing.expectOk(c.assert_ret_I_Ul_I());
    try testing.expectOk(c.send_I_Ul_I());
    try testing.expectOk(c.recv_I_Ul_I(.{ .v1 = 24693, .v2 = 10012, .v3 = 25520 }));
}
pub export fn zig_recv_I_Ul_I(lv: c.I_Ul_I) c_int {
    if (lv.v1 != 24693) return 1;
    if (lv.v2 != 10012) return 2;
    if (lv.v3 != 25520) return 3;
    return 0;
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

test "I_Ul_Ip layout" {
    var lv: c.I_Ul_Ip = undefined;
    try testing.expectSize(c.I_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Ip C calls" {
    try testing.expectEqual(c.ret_I_Ul_Ip(), .{ .v1 = 24608, .v2 = 31825, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Ul_Ip());
    try testing.expectOk(c.send_I_Ul_Ip());
    try testing.expectOk(c.recv_I_Ul_Ip(.{ .v1 = 24608, .v2 = 31825, .v3 = null }));
}
pub export fn zig_recv_I_Ul_Ip(lv: c.I_Ul_Ip) c_int {
    if (lv.v1 != 24608) return 1;
    if (lv.v2 != 31825) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_Ul_L layout" {
    var lv: c.I_Ul_L = undefined;
    try testing.expectSize(c.I_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_L C calls" {
    try testing.expectEqual(c.ret_I_Ul_L(), .{ .v1 = 2359, .v2 = 23401, .v3 = 32239 });
    try testing.expectOk(c.assert_ret_I_Ul_L());
    try testing.expectOk(c.send_I_Ul_L());
    try testing.expectOk(c.recv_I_Ul_L(.{ .v1 = 2359, .v2 = 23401, .v3 = 32239 }));
}
pub export fn zig_recv_I_Ul_L(lv: c.I_Ul_L) c_int {
    if (lv.v1 != 2359) return 1;
    if (lv.v2 != 23401) return 2;
    if (lv.v3 != 32239) return 3;
    return 0;
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

test "I_Ul_S layout" {
    var lv: c.I_Ul_S = undefined;
    try testing.expectSize(c.I_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_S C calls" {
    try testing.expectEqual(c.ret_I_Ul_S(), .{ .v1 = 29907, .v2 = 31008, .v3 = 28563 });
    try testing.expectOk(c.assert_ret_I_Ul_S());
    try testing.expectOk(c.send_I_Ul_S());
    try testing.expectOk(c.recv_I_Ul_S(.{ .v1 = 29907, .v2 = 31008, .v3 = 28563 }));
}
pub export fn zig_recv_I_Ul_S(lv: c.I_Ul_S) c_int {
    if (lv.v1 != 29907) return 1;
    if (lv.v2 != 31008) return 2;
    if (lv.v3 != 28563) return 3;
    return 0;
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

test "I_Ul_Uc layout" {
    var lv: c.I_Ul_Uc = undefined;
    try testing.expectSize(c.I_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Uc C calls" {
    try testing.expectEqual(c.ret_I_Ul_Uc(), .{ .v1 = 425, .v2 = 18214, .v3 = 121 });
    try testing.expectOk(c.assert_ret_I_Ul_Uc());
    try testing.expectOk(c.send_I_Ul_Uc());
    try testing.expectOk(c.recv_I_Ul_Uc(.{ .v1 = 425, .v2 = 18214, .v3 = 121 }));
}
pub export fn zig_recv_I_Ul_Uc(lv: c.I_Ul_Uc) c_int {
    if (lv.v1 != 425) return 1;
    if (lv.v2 != 18214) return 2;
    if (lv.v3 != 121) return 3;
    return 0;
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

test "I_Ul_Ui layout" {
    var lv: c.I_Ul_Ui = undefined;
    try testing.expectSize(c.I_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Ui C calls" {
    try testing.expectEqual(c.ret_I_Ul_Ui(), .{ .v1 = 19879, .v2 = 18445, .v3 = 2904 });
    try testing.expectOk(c.assert_ret_I_Ul_Ui());
    try testing.expectOk(c.send_I_Ul_Ui());
    try testing.expectOk(c.recv_I_Ul_Ui(.{ .v1 = 19879, .v2 = 18445, .v3 = 2904 }));
}
pub export fn zig_recv_I_Ul_Ui(lv: c.I_Ul_Ui) c_int {
    if (lv.v1 != 19879) return 1;
    if (lv.v2 != 18445) return 2;
    if (lv.v3 != 2904) return 3;
    return 0;
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

test "I_Ul_Ul layout" {
    var lv: c.I_Ul_Ul = undefined;
    try testing.expectSize(c.I_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Ul C calls" {
    try testing.expectEqual(c.ret_I_Ul_Ul(), .{ .v1 = 22126, .v2 = 4806, .v3 = 9350 });
    try testing.expectOk(c.assert_ret_I_Ul_Ul());
    try testing.expectOk(c.send_I_Ul_Ul());
    try testing.expectOk(c.recv_I_Ul_Ul(.{ .v1 = 22126, .v2 = 4806, .v3 = 9350 }));
}
pub export fn zig_recv_I_Ul_Ul(lv: c.I_Ul_Ul) c_int {
    if (lv.v1 != 22126) return 1;
    if (lv.v2 != 4806) return 2;
    if (lv.v3 != 9350) return 3;
    return 0;
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

test "I_Ul_Us layout" {
    var lv: c.I_Ul_Us = undefined;
    try testing.expectSize(c.I_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Us C calls" {
    try testing.expectEqual(c.ret_I_Ul_Us(), .{ .v1 = 23692, .v2 = 18615, .v3 = 3046 });
    try testing.expectOk(c.assert_ret_I_Ul_Us());
    try testing.expectOk(c.send_I_Ul_Us());
    try testing.expectOk(c.recv_I_Ul_Us(.{ .v1 = 23692, .v2 = 18615, .v3 = 3046 }));
}
pub export fn zig_recv_I_Ul_Us(lv: c.I_Ul_Us) c_int {
    if (lv.v1 != 23692) return 1;
    if (lv.v2 != 18615) return 2;
    if (lv.v3 != 3046) return 3;
    return 0;
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

test "I_Ul_Vp layout" {
    var lv: c.I_Ul_Vp = undefined;
    try testing.expectSize(c.I_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "I_Ul_Vp C calls" {
    try testing.expectEqual(c.ret_I_Ul_Vp(), .{ .v1 = 7177, .v2 = 6432, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Ul_Vp());
    try testing.expectOk(c.send_I_Ul_Vp());
    try testing.expectOk(c.recv_I_Ul_Vp(.{ .v1 = 7177, .v2 = 6432, .v3 = null }));
}
pub export fn zig_recv_I_Ul_Vp(lv: c.I_Ul_Vp) c_int {
    if (lv.v1 != 7177) return 1;
    if (lv.v2 != 6432) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_Ul_Vp() c.I_Ul_Vp {
    return .{ .v1 = 7177, .v2 = 6432, .v3 = null };
}

// From T_Snnn_xax.c:73045:73063
// struct  I_Us  {
//   int v1;
//   unsigned short v2;
// };

test "I_Us layout" {
    var lv: c.I_Us = undefined;
    try testing.expectSize(c.I_Us, 8);
    try testing.expectAlign(c.I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "I_Us C calls" {
    try testing.expectEqual(c.ret_I_Us(), .{ .v1 = 2019, .v2 = 19027 });
    try testing.expectOk(c.assert_ret_I_Us());
    try testing.expectOk(c.send_I_Us());
    try testing.expectOk(c.recv_I_Us(.{ .v1 = 2019, .v2 = 19027 }));
}
pub export fn zig_recv_I_Us(lv: c.I_Us) c_int {
    if (lv.v1 != 2019) return 1;
    if (lv.v2 != 19027) return 2;
    return 0;
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

test "I_Us_C layout" {
    var lv: c.I_Us_C = undefined;
    try testing.expectSize(c.I_Us_C, 8);
    try testing.expectAlign(c.I_Us_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Us_C C calls" {
    try testing.expectEqual(c.ret_I_Us_C(), .{ .v1 = 13272, .v2 = 23928, .v3 = 68 });
    try testing.expectOk(c.assert_ret_I_Us_C());
    try testing.expectOk(c.send_I_Us_C());
    try testing.expectOk(c.recv_I_Us_C(.{ .v1 = 13272, .v2 = 23928, .v3 = 68 }));
}
pub export fn zig_recv_I_Us_C(lv: c.I_Us_C) c_int {
    if (lv.v1 != 13272) return 1;
    if (lv.v2 != 23928) return 2;
    if (lv.v3 != 68) return 3;
    return 0;
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

test "I_Us_D layout" {
    var lv: c.I_Us_D = undefined;
    try testing.expectSize(c.I_Us_D, 16);
    try testing.expectAlign(c.I_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_D C calls" {
    try testing.expectEqual(c.ret_I_Us_D(), .{ .v1 = 29968, .v2 = 8541, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_I_Us_D());
    try testing.expectOk(c.send_I_Us_D());
    try testing.expectOk(c.recv_I_Us_D(.{ .v1 = 29968, .v2 = 8541, .v3 = 0.875 }));
}
pub export fn zig_recv_I_Us_D(lv: c.I_Us_D) c_int {
    if (lv.v1 != 29968) return 1;
    if (lv.v2 != 8541) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
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

test "I_Us_F layout" {
    var lv: c.I_Us_F = undefined;
    try testing.expectSize(c.I_Us_F, 12);
    try testing.expectAlign(c.I_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_F C calls" {
    try testing.expectEqual(c.ret_I_Us_F(), .{ .v1 = 2365, .v2 = 20461, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_I_Us_F());
    try testing.expectOk(c.send_I_Us_F());
    try testing.expectOk(c.recv_I_Us_F(.{ .v1 = 2365, .v2 = 20461, .v3 = 4.5 }));
}
pub export fn zig_recv_I_Us_F(lv: c.I_Us_F) c_int {
    if (lv.v1 != 2365) return 1;
    if (lv.v2 != 20461) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
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

test "I_Us_I layout" {
    var lv: c.I_Us_I = undefined;
    try testing.expectSize(c.I_Us_I, 12);
    try testing.expectAlign(c.I_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_I C calls" {
    try testing.expectEqual(c.ret_I_Us_I(), .{ .v1 = 10524, .v2 = 18897, .v3 = 1284 });
    try testing.expectOk(c.assert_ret_I_Us_I());
    try testing.expectOk(c.send_I_Us_I());
    try testing.expectOk(c.recv_I_Us_I(.{ .v1 = 10524, .v2 = 18897, .v3 = 1284 }));
}
pub export fn zig_recv_I_Us_I(lv: c.I_Us_I) c_int {
    if (lv.v1 != 10524) return 1;
    if (lv.v2 != 18897) return 2;
    if (lv.v3 != 1284) return 3;
    return 0;
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

test "I_Us_Ip layout" {
    var lv: c.I_Us_Ip = undefined;
    try testing.expectSize(c.I_Us_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_Ip C calls" {
    try testing.expectEqual(c.ret_I_Us_Ip(), .{ .v1 = 17227, .v2 = 19352, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Us_Ip());
    try testing.expectOk(c.send_I_Us_Ip());
    try testing.expectOk(c.recv_I_Us_Ip(.{ .v1 = 17227, .v2 = 19352, .v3 = null }));
}
pub export fn zig_recv_I_Us_Ip(lv: c.I_Us_Ip) c_int {
    if (lv.v1 != 17227) return 1;
    if (lv.v2 != 19352) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_Us_L layout" {
    var lv: c.I_Us_L = undefined;
    try testing.expectSize(c.I_Us_L, 16);
    try testing.expectAlign(c.I_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_L C calls" {
    try testing.expectEqual(c.ret_I_Us_L(), .{ .v1 = 12034, .v2 = 21029, .v3 = 616 });
    try testing.expectOk(c.assert_ret_I_Us_L());
    try testing.expectOk(c.send_I_Us_L());
    try testing.expectOk(c.recv_I_Us_L(.{ .v1 = 12034, .v2 = 21029, .v3 = 616 }));
}
pub export fn zig_recv_I_Us_L(lv: c.I_Us_L) c_int {
    if (lv.v1 != 12034) return 1;
    if (lv.v2 != 21029) return 2;
    if (lv.v3 != 616) return 3;
    return 0;
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

test "I_Us_S layout" {
    var lv: c.I_Us_S = undefined;
    try testing.expectSize(c.I_Us_S, 8);
    try testing.expectAlign(c.I_Us_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Us_S C calls" {
    try testing.expectEqual(c.ret_I_Us_S(), .{ .v1 = 19176, .v2 = 14442, .v3 = 1020 });
    try testing.expectOk(c.assert_ret_I_Us_S());
    try testing.expectOk(c.send_I_Us_S());
    try testing.expectOk(c.recv_I_Us_S(.{ .v1 = 19176, .v2 = 14442, .v3 = 1020 }));
}
pub export fn zig_recv_I_Us_S(lv: c.I_Us_S) c_int {
    if (lv.v1 != 19176) return 1;
    if (lv.v2 != 14442) return 2;
    if (lv.v3 != 1020) return 3;
    return 0;
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

test "I_Us_Uc layout" {
    var lv: c.I_Us_Uc = undefined;
    try testing.expectSize(c.I_Us_Uc, 8);
    try testing.expectAlign(c.I_Us_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Us_Uc C calls" {
    try testing.expectEqual(c.ret_I_Us_Uc(), .{ .v1 = 8333, .v2 = 4402, .v3 = 66 });
    try testing.expectOk(c.assert_ret_I_Us_Uc());
    try testing.expectOk(c.send_I_Us_Uc());
    try testing.expectOk(c.recv_I_Us_Uc(.{ .v1 = 8333, .v2 = 4402, .v3 = 66 }));
}
pub export fn zig_recv_I_Us_Uc(lv: c.I_Us_Uc) c_int {
    if (lv.v1 != 8333) return 1;
    if (lv.v2 != 4402) return 2;
    if (lv.v3 != 66) return 3;
    return 0;
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

test "I_Us_Ui layout" {
    var lv: c.I_Us_Ui = undefined;
    try testing.expectSize(c.I_Us_Ui, 12);
    try testing.expectAlign(c.I_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_Ui C calls" {
    try testing.expectEqual(c.ret_I_Us_Ui(), .{ .v1 = 73, .v2 = 15233, .v3 = 28358 });
    try testing.expectOk(c.assert_ret_I_Us_Ui());
    try testing.expectOk(c.send_I_Us_Ui());
    try testing.expectOk(c.recv_I_Us_Ui(.{ .v1 = 73, .v2 = 15233, .v3 = 28358 }));
}
pub export fn zig_recv_I_Us_Ui(lv: c.I_Us_Ui) c_int {
    if (lv.v1 != 73) return 1;
    if (lv.v2 != 15233) return 2;
    if (lv.v3 != 28358) return 3;
    return 0;
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

test "I_Us_Ul layout" {
    var lv: c.I_Us_Ul = undefined;
    try testing.expectSize(c.I_Us_Ul, 16);
    try testing.expectAlign(c.I_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_Ul C calls" {
    try testing.expectEqual(c.ret_I_Us_Ul(), .{ .v1 = 27440, .v2 = 23695, .v3 = 21809 });
    try testing.expectOk(c.assert_ret_I_Us_Ul());
    try testing.expectOk(c.send_I_Us_Ul());
    try testing.expectOk(c.recv_I_Us_Ul(.{ .v1 = 27440, .v2 = 23695, .v3 = 21809 }));
}
pub export fn zig_recv_I_Us_Ul(lv: c.I_Us_Ul) c_int {
    if (lv.v1 != 27440) return 1;
    if (lv.v2 != 23695) return 2;
    if (lv.v3 != 21809) return 3;
    return 0;
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

test "I_Us_Us layout" {
    var lv: c.I_Us_Us = undefined;
    try testing.expectSize(c.I_Us_Us, 8);
    try testing.expectAlign(c.I_Us_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}
test "I_Us_Us C calls" {
    try testing.expectEqual(c.ret_I_Us_Us(), .{ .v1 = 343, .v2 = 3972, .v3 = 6185 });
    try testing.expectOk(c.assert_ret_I_Us_Us());
    try testing.expectOk(c.send_I_Us_Us());
    try testing.expectOk(c.recv_I_Us_Us(.{ .v1 = 343, .v2 = 3972, .v3 = 6185 }));
}
pub export fn zig_recv_I_Us_Us(lv: c.I_Us_Us) c_int {
    if (lv.v1 != 343) return 1;
    if (lv.v2 != 3972) return 2;
    if (lv.v3 != 6185) return 3;
    return 0;
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

test "I_Us_Vp layout" {
    var lv: c.I_Us_Vp = undefined;
    try testing.expectSize(c.I_Us_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "I_Us_Vp C calls" {
    try testing.expectEqual(c.ret_I_Us_Vp(), .{ .v1 = 20872, .v2 = 4076, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Us_Vp());
    try testing.expectOk(c.send_I_Us_Vp());
    try testing.expectOk(c.recv_I_Us_Vp(.{ .v1 = 20872, .v2 = 4076, .v3 = null }));
}
pub export fn zig_recv_I_Us_Vp(lv: c.I_Us_Vp) c_int {
    if (lv.v1 != 20872) return 1;
    if (lv.v2 != 4076) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_Us_Vp() c.I_Us_Vp {
    return .{ .v1 = 20872, .v2 = 4076, .v3 = null };
}

// From T_Snnn_xax.c:74092:74110
// struct  I_Vp  {
//   int v1;
//   void *v2;
// };

test "I_Vp layout" {
    var lv: c.I_Vp = undefined;
    try testing.expectSize(c.I_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "I_Vp C calls" {
    try testing.expectEqual(c.ret_I_Vp(), .{ .v1 = 14125, .v2 = null });
    try testing.expectOk(c.assert_ret_I_Vp());
    try testing.expectOk(c.send_I_Vp());
    try testing.expectOk(c.recv_I_Vp(.{ .v1 = 14125, .v2 = null }));
}
pub export fn zig_recv_I_Vp(lv: c.I_Vp) c_int {
    if (lv.v1 != 14125) return 1;
    if (lv.v2 != null) return 2;
    return 0;
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

test "I_Vp_C layout" {
    var lv: c.I_Vp_C = undefined;
    try testing.expectSize(c.I_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_C C calls" {
    try testing.expectEqual(c.ret_I_Vp_C(), .{ .v1 = 5602, .v2 = null, .v3 = 126 });
    try testing.expectOk(c.assert_ret_I_Vp_C());
    try testing.expectOk(c.send_I_Vp_C());
    try testing.expectOk(c.recv_I_Vp_C(.{ .v1 = 5602, .v2 = null, .v3 = 126 }));
}
pub export fn zig_recv_I_Vp_C(lv: c.I_Vp_C) c_int {
    if (lv.v1 != 5602) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 126) return 3;
    return 0;
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

test "I_Vp_D layout" {
    var lv: c.I_Vp_D = undefined;
    try testing.expectSize(c.I_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_D C calls" {
    try testing.expectEqual(c.ret_I_Vp_D(), .{ .v1 = 4595, .v2 = null, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_I_Vp_D());
    try testing.expectOk(c.send_I_Vp_D());
    try testing.expectOk(c.recv_I_Vp_D(.{ .v1 = 4595, .v2 = null, .v3 = 1.0 }));
}
pub export fn zig_recv_I_Vp_D(lv: c.I_Vp_D) c_int {
    if (lv.v1 != 4595) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
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

test "I_Vp_F layout" {
    var lv: c.I_Vp_F = undefined;
    try testing.expectSize(c.I_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_F C calls" {
    try testing.expectEqual(c.ret_I_Vp_F(), .{ .v1 = 10132, .v2 = null, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_I_Vp_F());
    try testing.expectOk(c.send_I_Vp_F());
    try testing.expectOk(c.recv_I_Vp_F(.{ .v1 = 10132, .v2 = null, .v3 = 4.5 }));
}
pub export fn zig_recv_I_Vp_F(lv: c.I_Vp_F) c_int {
    if (lv.v1 != 10132) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
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

test "I_Vp_I layout" {
    var lv: c.I_Vp_I = undefined;
    try testing.expectSize(c.I_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_I C calls" {
    try testing.expectEqual(c.ret_I_Vp_I(), .{ .v1 = 105, .v2 = null, .v3 = 25037 });
    try testing.expectOk(c.assert_ret_I_Vp_I());
    try testing.expectOk(c.send_I_Vp_I());
    try testing.expectOk(c.recv_I_Vp_I(.{ .v1 = 105, .v2 = null, .v3 = 25037 }));
}
pub export fn zig_recv_I_Vp_I(lv: c.I_Vp_I) c_int {
    if (lv.v1 != 105) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 25037) return 3;
    return 0;
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

test "I_Vp_Ip layout" {
    var lv: c.I_Vp_Ip = undefined;
    try testing.expectSize(c.I_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Ip C calls" {
    try testing.expectEqual(c.ret_I_Vp_Ip(), .{ .v1 = 30849, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Vp_Ip());
    try testing.expectOk(c.send_I_Vp_Ip());
    try testing.expectOk(c.recv_I_Vp_Ip(.{ .v1 = 30849, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_I_Vp_Ip(lv: c.I_Vp_Ip) c_int {
    if (lv.v1 != 30849) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
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

test "I_Vp_L layout" {
    var lv: c.I_Vp_L = undefined;
    try testing.expectSize(c.I_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_L C calls" {
    try testing.expectEqual(c.ret_I_Vp_L(), .{ .v1 = 30130, .v2 = null, .v3 = 7703 });
    try testing.expectOk(c.assert_ret_I_Vp_L());
    try testing.expectOk(c.send_I_Vp_L());
    try testing.expectOk(c.recv_I_Vp_L(.{ .v1 = 30130, .v2 = null, .v3 = 7703 }));
}
pub export fn zig_recv_I_Vp_L(lv: c.I_Vp_L) c_int {
    if (lv.v1 != 30130) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 7703) return 3;
    return 0;
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

test "I_Vp_S layout" {
    var lv: c.I_Vp_S = undefined;
    try testing.expectSize(c.I_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_S C calls" {
    try testing.expectEqual(c.ret_I_Vp_S(), .{ .v1 = 7707, .v2 = null, .v3 = 4892 });
    try testing.expectOk(c.assert_ret_I_Vp_S());
    try testing.expectOk(c.send_I_Vp_S());
    try testing.expectOk(c.recv_I_Vp_S(.{ .v1 = 7707, .v2 = null, .v3 = 4892 }));
}
pub export fn zig_recv_I_Vp_S(lv: c.I_Vp_S) c_int {
    if (lv.v1 != 7707) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 4892) return 3;
    return 0;
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

test "I_Vp_Uc layout" {
    var lv: c.I_Vp_Uc = undefined;
    try testing.expectSize(c.I_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Uc C calls" {
    try testing.expectEqual(c.ret_I_Vp_Uc(), .{ .v1 = 2818, .v2 = null, .v3 = 85 });
    try testing.expectOk(c.assert_ret_I_Vp_Uc());
    try testing.expectOk(c.send_I_Vp_Uc());
    try testing.expectOk(c.recv_I_Vp_Uc(.{ .v1 = 2818, .v2 = null, .v3 = 85 }));
}
pub export fn zig_recv_I_Vp_Uc(lv: c.I_Vp_Uc) c_int {
    if (lv.v1 != 2818) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 85) return 3;
    return 0;
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

test "I_Vp_Ui layout" {
    var lv: c.I_Vp_Ui = undefined;
    try testing.expectSize(c.I_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Ui C calls" {
    try testing.expectEqual(c.ret_I_Vp_Ui(), .{ .v1 = 16364, .v2 = null, .v3 = 5730 });
    try testing.expectOk(c.assert_ret_I_Vp_Ui());
    try testing.expectOk(c.send_I_Vp_Ui());
    try testing.expectOk(c.recv_I_Vp_Ui(.{ .v1 = 16364, .v2 = null, .v3 = 5730 }));
}
pub export fn zig_recv_I_Vp_Ui(lv: c.I_Vp_Ui) c_int {
    if (lv.v1 != 16364) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 5730) return 3;
    return 0;
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

test "I_Vp_Ul layout" {
    var lv: c.I_Vp_Ul = undefined;
    try testing.expectSize(c.I_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Ul C calls" {
    try testing.expectEqual(c.ret_I_Vp_Ul(), .{ .v1 = 12923, .v2 = null, .v3 = 21204 });
    try testing.expectOk(c.assert_ret_I_Vp_Ul());
    try testing.expectOk(c.send_I_Vp_Ul());
    try testing.expectOk(c.recv_I_Vp_Ul(.{ .v1 = 12923, .v2 = null, .v3 = 21204 }));
}
pub export fn zig_recv_I_Vp_Ul(lv: c.I_Vp_Ul) c_int {
    if (lv.v1 != 12923) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 21204) return 3;
    return 0;
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

test "I_Vp_Us layout" {
    var lv: c.I_Vp_Us = undefined;
    try testing.expectSize(c.I_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Us C calls" {
    try testing.expectEqual(c.ret_I_Vp_Us(), .{ .v1 = 19642, .v2 = null, .v3 = 20053 });
    try testing.expectOk(c.assert_ret_I_Vp_Us());
    try testing.expectOk(c.send_I_Vp_Us());
    try testing.expectOk(c.recv_I_Vp_Us(.{ .v1 = 19642, .v2 = null, .v3 = 20053 }));
}
pub export fn zig_recv_I_Vp_Us(lv: c.I_Vp_Us) c_int {
    if (lv.v1 != 19642) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 20053) return 3;
    return 0;
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

test "I_Vp_Vp layout" {
    var lv: c.I_Vp_Vp = undefined;
    try testing.expectSize(c.I_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "I_Vp_Vp C calls" {
    try testing.expectEqual(c.ret_I_Vp_Vp(), .{ .v1 = 9745, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_I_Vp_Vp());
    try testing.expectOk(c.send_I_Vp_Vp());
    try testing.expectOk(c.recv_I_Vp_Vp(.{ .v1 = 9745, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_I_Vp_Vp(lv: c.I_Vp_Vp) c_int {
    if (lv.v1 != 9745) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_I_Vp_Vp() c.I_Vp_Vp {
    return .{ .v1 = 9745, .v2 = null, .v3 = null };
}

// From T_Snnn_xax.c:75139:75155
// struct  Ip  {
//   int *v1;
// };

test "Ip layout" {
    var lv: c.Ip = undefined;
    try testing.expectSize(c.Ip, ABISELECT(8, 4));
    try testing.expectAlign(c.Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "Ip C calls" {
    try testing.expectEqual(c.ret_Ip(), .{ .v1 = null });
    try testing.expectOk(c.assert_ret_Ip());
    try testing.expectOk(c.send_Ip());
    try testing.expectOk(c.recv_Ip(.{ .v1 = null }));
}
pub export fn zig_recv_Ip(lv: c.Ip) c_int {
    if (lv.v1 != null) return 1;
    return 0;
}
pub export fn zig_ret_Ip() c.Ip {
    return .{ .v1 = null };
}
