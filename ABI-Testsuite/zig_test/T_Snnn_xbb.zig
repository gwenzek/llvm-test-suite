const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xbb.h");
});

// From T_Snnn_xbb.c:6170:6188
// struct  Ul_C  {
//   __tsu64 v1;
//   char v2;
// };

test "Ul_C layout" {
    var lv: c.Ul_C = undefined;
    try testing.expectSize(c.Ul_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_C C calls" {
    try testing.expectEqual(c.ret_Ul_C(), .{ .v1 = 17226, .v2 = 3 });
    try testing.expectOk(c.assert_ret_Ul_C());
    try testing.expectOk(c.send_Ul_C());
    try testing.expectOk(c.recv_Ul_C(.{ .v1 = 17226, .v2 = 3 }));
}
pub export fn zig_recv_Ul_C(lv: c.Ul_C) c_int {
    if (lv.v1 != 17226) return 1;
    if (lv.v2 != 3) return 2;
    return 0;
}
pub export fn zig_ret_Ul_C() c.Ul_C {
    return .{ .v1 = 17226, .v2 = 3 };
}

// From T_Snnn_xbb.c:6917:6937
// struct  Ul_C_C  {
//   __tsu64 v1;
//   char v2;
//   char v3;
// };

test "Ul_C_C layout" {
    var lv: c.Ul_C_C = undefined;
    try testing.expectSize(c.Ul_C_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "Ul_C_C C calls" {
    try testing.expectEqual(c.ret_Ul_C_C(), .{ .v1 = 31250, .v2 = 54, .v3 = 2 });
    try testing.expectOk(c.assert_ret_Ul_C_C());
    try testing.expectOk(c.send_Ul_C_C());
    try testing.expectOk(c.recv_Ul_C_C(.{ .v1 = 31250, .v2 = 54, .v3 = 2 }));
}
pub export fn zig_recv_Ul_C_C(lv: c.Ul_C_C) c_int {
    if (lv.v1 != 31250) return 1;
    if (lv.v2 != 54) return 2;
    if (lv.v3 != 2) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_C() c.Ul_C_C {
    return .{ .v1 = 31250, .v2 = 54, .v3 = 2 };
}

// From T_Snnn_xbb.c:6942:6962
// struct  Ul_C_D  {
//   __tsu64 v1;
//   char v2;
//   double v3;
// };

test "Ul_C_D layout" {
    var lv: c.Ul_C_D = undefined;
    try testing.expectSize(c.Ul_C_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_C_D C calls" {
    try testing.expectEqual(c.ret_Ul_C_D(), .{ .v1 = 32764, .v2 = 48, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Ul_C_D());
    try testing.expectOk(c.send_Ul_C_D());
    try testing.expectOk(c.recv_Ul_C_D(.{ .v1 = 32764, .v2 = 48, .v3 = 7.0 }));
}
pub export fn zig_recv_Ul_C_D(lv: c.Ul_C_D) c_int {
    if (lv.v1 != 32764) return 1;
    if (lv.v2 != 48) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_D() c.Ul_C_D {
    return .{ .v1 = 32764, .v2 = 48, .v3 = 7.0 };
}

// From T_Snnn_xbb.c:6967:6987
// struct  Ul_C_F  {
//   __tsu64 v1;
//   char v2;
//   float v3;
// };

test "Ul_C_F layout" {
    var lv: c.Ul_C_F = undefined;
    try testing.expectSize(c.Ul_C_F, 16);
    try testing.expectAlign(c.Ul_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_C_F C calls" {
    try testing.expectEqual(c.ret_Ul_C_F(), .{ .v1 = 26431, .v2 = 0, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Ul_C_F());
    try testing.expectOk(c.send_Ul_C_F());
    try testing.expectOk(c.recv_Ul_C_F(.{ .v1 = 26431, .v2 = 0, .v3 = 0.5 }));
}
pub export fn zig_recv_Ul_C_F(lv: c.Ul_C_F) c_int {
    if (lv.v1 != 26431) return 1;
    if (lv.v2 != 0) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_F() c.Ul_C_F {
    return .{ .v1 = 26431, .v2 = 0, .v3 = 0.5 };
}

// From T_Snnn_xbb.c:6992:7012
// struct  Ul_C_I  {
//   __tsu64 v1;
//   char v2;
//   int v3;
// };

test "Ul_C_I layout" {
    var lv: c.Ul_C_I = undefined;
    try testing.expectSize(c.Ul_C_I, 16);
    try testing.expectAlign(c.Ul_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_C_I C calls" {
    try testing.expectEqual(c.ret_Ul_C_I(), .{ .v1 = 28045, .v2 = 93, .v3 = 27716 });
    try testing.expectOk(c.assert_ret_Ul_C_I());
    try testing.expectOk(c.send_Ul_C_I());
    try testing.expectOk(c.recv_Ul_C_I(.{ .v1 = 28045, .v2 = 93, .v3 = 27716 }));
}
pub export fn zig_recv_Ul_C_I(lv: c.Ul_C_I) c_int {
    if (lv.v1 != 28045) return 1;
    if (lv.v2 != 93) return 2;
    if (lv.v3 != 27716) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_I() c.Ul_C_I {
    return .{ .v1 = 28045, .v2 = 93, .v3 = 27716 };
}

// From T_Snnn_xbb.c:7017:7037
// struct  Ul_C_Ip  {
//   __tsu64 v1;
//   char v2;
//   int *v3;
// };

test "Ul_C_Ip layout" {
    var lv: c.Ul_C_Ip = undefined;
    try testing.expectSize(c.Ul_C_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_C_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_C_Ip(), .{ .v1 = 26155, .v2 = 27, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_C_Ip());
    try testing.expectOk(c.send_Ul_C_Ip());
    try testing.expectOk(c.recv_Ul_C_Ip(.{ .v1 = 26155, .v2 = 27, .v3 = null }));
}
pub export fn zig_recv_Ul_C_Ip(lv: c.Ul_C_Ip) c_int {
    if (lv.v1 != 26155) return 1;
    if (lv.v2 != 27) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_Ip() c.Ul_C_Ip {
    return .{ .v1 = 26155, .v2 = 27, .v3 = null };
}

// From T_Snnn_xbb.c:7042:7062
// struct  Ul_C_L  {
//   __tsu64 v1;
//   char v2;
//   __tsi64 v3;
// };

test "Ul_C_L layout" {
    var lv: c.Ul_C_L = undefined;
    try testing.expectSize(c.Ul_C_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_C_L C calls" {
    try testing.expectEqual(c.ret_Ul_C_L(), .{ .v1 = 12487, .v2 = 95, .v3 = 31393 });
    try testing.expectOk(c.assert_ret_Ul_C_L());
    try testing.expectOk(c.send_Ul_C_L());
    try testing.expectOk(c.recv_Ul_C_L(.{ .v1 = 12487, .v2 = 95, .v3 = 31393 }));
}
pub export fn zig_recv_Ul_C_L(lv: c.Ul_C_L) c_int {
    if (lv.v1 != 12487) return 1;
    if (lv.v2 != 95) return 2;
    if (lv.v3 != 31393) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_L() c.Ul_C_L {
    return .{ .v1 = 12487, .v2 = 95, .v3 = 31393 };
}

// From T_Snnn_xbb.c:7067:7087
// struct  Ul_C_S  {
//   __tsu64 v1;
//   char v2;
//   short v3;
// };

test "Ul_C_S layout" {
    var lv: c.Ul_C_S = undefined;
    try testing.expectSize(c.Ul_C_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_C_S C calls" {
    try testing.expectEqual(c.ret_Ul_C_S(), .{ .v1 = 14961, .v2 = 23, .v3 = 31866 });
    try testing.expectOk(c.assert_ret_Ul_C_S());
    try testing.expectOk(c.send_Ul_C_S());
    try testing.expectOk(c.recv_Ul_C_S(.{ .v1 = 14961, .v2 = 23, .v3 = 31866 }));
}
pub export fn zig_recv_Ul_C_S(lv: c.Ul_C_S) c_int {
    if (lv.v1 != 14961) return 1;
    if (lv.v2 != 23) return 2;
    if (lv.v3 != 31866) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_S() c.Ul_C_S {
    return .{ .v1 = 14961, .v2 = 23, .v3 = 31866 };
}

// From T_Snnn_xbb.c:7092:7112
// struct  Ul_C_Uc  {
//   __tsu64 v1;
//   char v2;
//   unsigned char v3;
// };

test "Ul_C_Uc layout" {
    var lv: c.Ul_C_Uc = undefined;
    try testing.expectSize(c.Ul_C_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "Ul_C_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_C_Uc(), .{ .v1 = 20515, .v2 = 44, .v3 = 0 });
    try testing.expectOk(c.assert_ret_Ul_C_Uc());
    try testing.expectOk(c.send_Ul_C_Uc());
    try testing.expectOk(c.recv_Ul_C_Uc(.{ .v1 = 20515, .v2 = 44, .v3 = 0 }));
}
pub export fn zig_recv_Ul_C_Uc(lv: c.Ul_C_Uc) c_int {
    if (lv.v1 != 20515) return 1;
    if (lv.v2 != 44) return 2;
    if (lv.v3 != 0) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_Uc() c.Ul_C_Uc {
    return .{ .v1 = 20515, .v2 = 44, .v3 = 0 };
}

// From T_Snnn_xbb.c:7117:7137
// struct  Ul_C_Ui  {
//   __tsu64 v1;
//   char v2;
//   unsigned int v3;
// };

test "Ul_C_Ui layout" {
    var lv: c.Ul_C_Ui = undefined;
    try testing.expectSize(c.Ul_C_Ui, 16);
    try testing.expectAlign(c.Ul_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_C_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_C_Ui(), .{ .v1 = 7205, .v2 = 105, .v3 = 26514 });
    try testing.expectOk(c.assert_ret_Ul_C_Ui());
    try testing.expectOk(c.send_Ul_C_Ui());
    try testing.expectOk(c.recv_Ul_C_Ui(.{ .v1 = 7205, .v2 = 105, .v3 = 26514 }));
}
pub export fn zig_recv_Ul_C_Ui(lv: c.Ul_C_Ui) c_int {
    if (lv.v1 != 7205) return 1;
    if (lv.v2 != 105) return 2;
    if (lv.v3 != 26514) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_Ui() c.Ul_C_Ui {
    return .{ .v1 = 7205, .v2 = 105, .v3 = 26514 };
}

// From T_Snnn_xbb.c:7142:7162
// struct  Ul_C_Ul  {
//   __tsu64 v1;
//   char v2;
//   __tsu64 v3;
// };

test "Ul_C_Ul layout" {
    var lv: c.Ul_C_Ul = undefined;
    try testing.expectSize(c.Ul_C_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_C_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_C_Ul(), .{ .v1 = 2127, .v2 = 88, .v3 = 18212 });
    try testing.expectOk(c.assert_ret_Ul_C_Ul());
    try testing.expectOk(c.send_Ul_C_Ul());
    try testing.expectOk(c.recv_Ul_C_Ul(.{ .v1 = 2127, .v2 = 88, .v3 = 18212 }));
}
pub export fn zig_recv_Ul_C_Ul(lv: c.Ul_C_Ul) c_int {
    if (lv.v1 != 2127) return 1;
    if (lv.v2 != 88) return 2;
    if (lv.v3 != 18212) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_Ul() c.Ul_C_Ul {
    return .{ .v1 = 2127, .v2 = 88, .v3 = 18212 };
}

// From T_Snnn_xbb.c:7167:7187
// struct  Ul_C_Us  {
//   __tsu64 v1;
//   char v2;
//   unsigned short v3;
// };

test "Ul_C_Us layout" {
    var lv: c.Ul_C_Us = undefined;
    try testing.expectSize(c.Ul_C_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_C_Us C calls" {
    try testing.expectEqual(c.ret_Ul_C_Us(), .{ .v1 = 6233, .v2 = 70, .v3 = 1747 });
    try testing.expectOk(c.assert_ret_Ul_C_Us());
    try testing.expectOk(c.send_Ul_C_Us());
    try testing.expectOk(c.recv_Ul_C_Us(.{ .v1 = 6233, .v2 = 70, .v3 = 1747 }));
}
pub export fn zig_recv_Ul_C_Us(lv: c.Ul_C_Us) c_int {
    if (lv.v1 != 6233) return 1;
    if (lv.v2 != 70) return 2;
    if (lv.v3 != 1747) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_Us() c.Ul_C_Us {
    return .{ .v1 = 6233, .v2 = 70, .v3 = 1747 };
}

// From T_Snnn_xbb.c:7192:7212
// struct  Ul_C_Vp  {
//   __tsu64 v1;
//   char v2;
//   void *v3;
// };

test "Ul_C_Vp layout" {
    var lv: c.Ul_C_Vp = undefined;
    try testing.expectSize(c.Ul_C_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_C_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_C_Vp(), .{ .v1 = 32602, .v2 = 34, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_C_Vp());
    try testing.expectOk(c.send_Ul_C_Vp());
    try testing.expectOk(c.recv_Ul_C_Vp(.{ .v1 = 32602, .v2 = 34, .v3 = null }));
}
pub export fn zig_recv_Ul_C_Vp(lv: c.Ul_C_Vp) c_int {
    if (lv.v1 != 32602) return 1;
    if (lv.v2 != 34) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_C_Vp() c.Ul_C_Vp {
    return .{ .v1 = 32602, .v2 = 34, .v3 = null };
}

// From T_Snnn_xbb.c:7217:7235
// struct  Ul_D  {
//   __tsu64 v1;
//   double v2;
// };

test "Ul_D layout" {
    var lv: c.Ul_D = undefined;
    try testing.expectSize(c.Ul_D, 16);
    try testing.expectAlign(c.Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_D C calls" {
    try testing.expectEqual(c.ret_Ul_D(), .{ .v1 = 10715, .v2 = 4.5 });
    try testing.expectOk(c.assert_ret_Ul_D());
    try testing.expectOk(c.send_Ul_D());
    try testing.expectOk(c.recv_Ul_D(.{ .v1 = 10715, .v2 = 4.5 }));
}
pub export fn zig_recv_Ul_D(lv: c.Ul_D) c_int {
    if (lv.v1 != 10715) return 1;
    if (lv.v2 != 4.5) return 2;
    return 0;
}
pub export fn zig_ret_Ul_D() c.Ul_D {
    return .{ .v1 = 10715, .v2 = 4.5 };
}

// From T_Snnn_xbb.c:7964:7984
// struct  Ul_D_C  {
//   __tsu64 v1;
//   double v2;
//   char v3;
// };

test "Ul_D_C layout" {
    var lv: c.Ul_D_C = undefined;
    try testing.expectSize(c.Ul_D_C, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_C C calls" {
    try testing.expectEqual(c.ret_Ul_D_C(), .{ .v1 = 25643, .v2 = 4.5, .v3 = 22 });
    try testing.expectOk(c.assert_ret_Ul_D_C());
    try testing.expectOk(c.send_Ul_D_C());
    try testing.expectOk(c.recv_Ul_D_C(.{ .v1 = 25643, .v2 = 4.5, .v3 = 22 }));
}
pub export fn zig_recv_Ul_D_C(lv: c.Ul_D_C) c_int {
    if (lv.v1 != 25643) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 22) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_C() c.Ul_D_C {
    return .{ .v1 = 25643, .v2 = 4.5, .v3 = 22 };
}

// From T_Snnn_xbb.c:7989:8009
// struct  Ul_D_D  {
//   __tsu64 v1;
//   double v2;
//   double v3;
// };

test "Ul_D_D layout" {
    var lv: c.Ul_D_D = undefined;
    try testing.expectSize(c.Ul_D_D, 24);
    try testing.expectAlign(c.Ul_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_D C calls" {
    try testing.expectEqual(c.ret_Ul_D_D(), .{ .v1 = 621, .v2 = -0.25, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Ul_D_D());
    try testing.expectOk(c.send_Ul_D_D());
    try testing.expectOk(c.recv_Ul_D_D(.{ .v1 = 621, .v2 = -0.25, .v3 = -0.25 }));
}
pub export fn zig_recv_Ul_D_D(lv: c.Ul_D_D) c_int {
    if (lv.v1 != 621) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_D() c.Ul_D_D {
    return .{ .v1 = 621, .v2 = -0.25, .v3 = -0.25 };
}

// From T_Snnn_xbb.c:8014:8034
// struct  Ul_D_F  {
//   __tsu64 v1;
//   double v2;
//   float v3;
// };

test "Ul_D_F layout" {
    var lv: c.Ul_D_F = undefined;
    try testing.expectSize(c.Ul_D_F, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_F C calls" {
    try testing.expectEqual(c.ret_Ul_D_F(), .{ .v1 = 11575, .v2 = -2.125, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Ul_D_F());
    try testing.expectOk(c.send_Ul_D_F());
    try testing.expectOk(c.recv_Ul_D_F(.{ .v1 = 11575, .v2 = -2.125, .v3 = -2.125 }));
}
pub export fn zig_recv_Ul_D_F(lv: c.Ul_D_F) c_int {
    if (lv.v1 != 11575) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_F() c.Ul_D_F {
    return .{ .v1 = 11575, .v2 = -2.125, .v3 = -2.125 };
}

// From T_Snnn_xbb.c:8039:8059
// struct  Ul_D_I  {
//   __tsu64 v1;
//   double v2;
//   int v3;
// };

test "Ul_D_I layout" {
    var lv: c.Ul_D_I = undefined;
    try testing.expectSize(c.Ul_D_I, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_I C calls" {
    try testing.expectEqual(c.ret_Ul_D_I(), .{ .v1 = 23336, .v2 = -2.125, .v3 = 8615 });
    try testing.expectOk(c.assert_ret_Ul_D_I());
    try testing.expectOk(c.send_Ul_D_I());
    try testing.expectOk(c.recv_Ul_D_I(.{ .v1 = 23336, .v2 = -2.125, .v3 = 8615 }));
}
pub export fn zig_recv_Ul_D_I(lv: c.Ul_D_I) c_int {
    if (lv.v1 != 23336) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 8615) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_I() c.Ul_D_I {
    return .{ .v1 = 23336, .v2 = -2.125, .v3 = 8615 };
}

// From T_Snnn_xbb.c:8064:8084
// struct  Ul_D_Ip  {
//   __tsu64 v1;
//   double v2;
//   int *v3;
// };

test "Ul_D_Ip layout" {
    var lv: c.Ul_D_Ip = undefined;
    try testing.expectSize(c.Ul_D_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_D_Ip(), .{ .v1 = 30759, .v2 = 1.0, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_D_Ip());
    try testing.expectOk(c.send_Ul_D_Ip());
    try testing.expectOk(c.recv_Ul_D_Ip(.{ .v1 = 30759, .v2 = 1.0, .v3 = null }));
}
pub export fn zig_recv_Ul_D_Ip(lv: c.Ul_D_Ip) c_int {
    if (lv.v1 != 30759) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_Ip() c.Ul_D_Ip {
    return .{ .v1 = 30759, .v2 = 1.0, .v3 = null };
}

// From T_Snnn_xbb.c:8089:8109
// struct  Ul_D_L  {
//   __tsu64 v1;
//   double v2;
//   __tsi64 v3;
// };

test "Ul_D_L layout" {
    var lv: c.Ul_D_L = undefined;
    try testing.expectSize(c.Ul_D_L, 24);
    try testing.expectAlign(c.Ul_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_L C calls" {
    try testing.expectEqual(c.ret_Ul_D_L(), .{ .v1 = 16615, .v2 = 7.0, .v3 = 23672 });
    try testing.expectOk(c.assert_ret_Ul_D_L());
    try testing.expectOk(c.send_Ul_D_L());
    try testing.expectOk(c.recv_Ul_D_L(.{ .v1 = 16615, .v2 = 7.0, .v3 = 23672 }));
}
pub export fn zig_recv_Ul_D_L(lv: c.Ul_D_L) c_int {
    if (lv.v1 != 16615) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 23672) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_L() c.Ul_D_L {
    return .{ .v1 = 16615, .v2 = 7.0, .v3 = 23672 };
}

// From T_Snnn_xbb.c:8114:8134
// struct  Ul_D_S  {
//   __tsu64 v1;
//   double v2;
//   short v3;
// };

test "Ul_D_S layout" {
    var lv: c.Ul_D_S = undefined;
    try testing.expectSize(c.Ul_D_S, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_S C calls" {
    try testing.expectEqual(c.ret_Ul_D_S(), .{ .v1 = 6119, .v2 = 1.0, .v3 = 20846 });
    try testing.expectOk(c.assert_ret_Ul_D_S());
    try testing.expectOk(c.send_Ul_D_S());
    try testing.expectOk(c.recv_Ul_D_S(.{ .v1 = 6119, .v2 = 1.0, .v3 = 20846 }));
}
pub export fn zig_recv_Ul_D_S(lv: c.Ul_D_S) c_int {
    if (lv.v1 != 6119) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 20846) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_S() c.Ul_D_S {
    return .{ .v1 = 6119, .v2 = 1.0, .v3 = 20846 };
}

// From T_Snnn_xbb.c:8139:8159
// struct  Ul_D_Uc  {
//   __tsu64 v1;
//   double v2;
//   unsigned char v3;
// };

test "Ul_D_Uc layout" {
    var lv: c.Ul_D_Uc = undefined;
    try testing.expectSize(c.Ul_D_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_D_Uc(), .{ .v1 = 8747, .v2 = -2.125, .v3 = 71 });
    try testing.expectOk(c.assert_ret_Ul_D_Uc());
    try testing.expectOk(c.send_Ul_D_Uc());
    try testing.expectOk(c.recv_Ul_D_Uc(.{ .v1 = 8747, .v2 = -2.125, .v3 = 71 }));
}
pub export fn zig_recv_Ul_D_Uc(lv: c.Ul_D_Uc) c_int {
    if (lv.v1 != 8747) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 71) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_Uc() c.Ul_D_Uc {
    return .{ .v1 = 8747, .v2 = -2.125, .v3 = 71 };
}

// From T_Snnn_xbb.c:8164:8184
// struct  Ul_D_Ui  {
//   __tsu64 v1;
//   double v2;
//   unsigned int v3;
// };

test "Ul_D_Ui layout" {
    var lv: c.Ul_D_Ui = undefined;
    try testing.expectSize(c.Ul_D_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_D_Ui(), .{ .v1 = 12376, .v2 = 1.0, .v3 = 7325 });
    try testing.expectOk(c.assert_ret_Ul_D_Ui());
    try testing.expectOk(c.send_Ul_D_Ui());
    try testing.expectOk(c.recv_Ul_D_Ui(.{ .v1 = 12376, .v2 = 1.0, .v3 = 7325 }));
}
pub export fn zig_recv_Ul_D_Ui(lv: c.Ul_D_Ui) c_int {
    if (lv.v1 != 12376) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 7325) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_Ui() c.Ul_D_Ui {
    return .{ .v1 = 12376, .v2 = 1.0, .v3 = 7325 };
}

// From T_Snnn_xbb.c:8189:8209
// struct  Ul_D_Ul  {
//   __tsu64 v1;
//   double v2;
//   __tsu64 v3;
// };

test "Ul_D_Ul layout" {
    var lv: c.Ul_D_Ul = undefined;
    try testing.expectSize(c.Ul_D_Ul, 24);
    try testing.expectAlign(c.Ul_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_D_Ul(), .{ .v1 = 8264, .v2 = 1.0, .v3 = 2350 });
    try testing.expectOk(c.assert_ret_Ul_D_Ul());
    try testing.expectOk(c.send_Ul_D_Ul());
    try testing.expectOk(c.recv_Ul_D_Ul(.{ .v1 = 8264, .v2 = 1.0, .v3 = 2350 }));
}
pub export fn zig_recv_Ul_D_Ul(lv: c.Ul_D_Ul) c_int {
    if (lv.v1 != 8264) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 2350) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_Ul() c.Ul_D_Ul {
    return .{ .v1 = 8264, .v2 = 1.0, .v3 = 2350 };
}

// From T_Snnn_xbb.c:8214:8234
// struct  Ul_D_Us  {
//   __tsu64 v1;
//   double v2;
//   unsigned short v3;
// };

test "Ul_D_Us layout" {
    var lv: c.Ul_D_Us = undefined;
    try testing.expectSize(c.Ul_D_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_Us C calls" {
    try testing.expectEqual(c.ret_Ul_D_Us(), .{ .v1 = 14812, .v2 = 4.5, .v3 = 7431 });
    try testing.expectOk(c.assert_ret_Ul_D_Us());
    try testing.expectOk(c.send_Ul_D_Us());
    try testing.expectOk(c.recv_Ul_D_Us(.{ .v1 = 14812, .v2 = 4.5, .v3 = 7431 }));
}
pub export fn zig_recv_Ul_D_Us(lv: c.Ul_D_Us) c_int {
    if (lv.v1 != 14812) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 7431) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_Us() c.Ul_D_Us {
    return .{ .v1 = 14812, .v2 = 4.5, .v3 = 7431 };
}

// From T_Snnn_xbb.c:8239:8259
// struct  Ul_D_Vp  {
//   __tsu64 v1;
//   double v2;
//   void *v3;
// };

test "Ul_D_Vp layout" {
    var lv: c.Ul_D_Vp = undefined;
    try testing.expectSize(c.Ul_D_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_D_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_D_Vp(), .{ .v1 = 16222, .v2 = 0.5, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_D_Vp());
    try testing.expectOk(c.send_Ul_D_Vp());
    try testing.expectOk(c.recv_Ul_D_Vp(.{ .v1 = 16222, .v2 = 0.5, .v3 = null }));
}
pub export fn zig_recv_Ul_D_Vp(lv: c.Ul_D_Vp) c_int {
    if (lv.v1 != 16222) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_D_Vp() c.Ul_D_Vp {
    return .{ .v1 = 16222, .v2 = 0.5, .v3 = null };
}

// From T_Snnn_xbb.c:8264:8282
// struct  Ul_F  {
//   __tsu64 v1;
//   float v2;
// };

test "Ul_F layout" {
    var lv: c.Ul_F = undefined;
    try testing.expectSize(c.Ul_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_F C calls" {
    try testing.expectEqual(c.ret_Ul_F(), .{ .v1 = 20297, .v2 = 0.5 });
    try testing.expectOk(c.assert_ret_Ul_F());
    try testing.expectOk(c.send_Ul_F());
    try testing.expectOk(c.recv_Ul_F(.{ .v1 = 20297, .v2 = 0.5 }));
}
pub export fn zig_recv_Ul_F(lv: c.Ul_F) c_int {
    if (lv.v1 != 20297) return 1;
    if (lv.v2 != 0.5) return 2;
    return 0;
}
pub export fn zig_ret_Ul_F() c.Ul_F {
    return .{ .v1 = 20297, .v2 = 0.5 };
}

// From T_Snnn_xbb.c:9011:9031
// struct  Ul_F_C  {
//   __tsu64 v1;
//   float v2;
//   char v3;
// };

test "Ul_F_C layout" {
    var lv: c.Ul_F_C = undefined;
    try testing.expectSize(c.Ul_F_C, 16);
    try testing.expectAlign(c.Ul_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_F_C C calls" {
    try testing.expectEqual(c.ret_Ul_F_C(), .{ .v1 = 5068, .v2 = -0.25, .v3 = 32 });
    try testing.expectOk(c.assert_ret_Ul_F_C());
    try testing.expectOk(c.send_Ul_F_C());
    try testing.expectOk(c.recv_Ul_F_C(.{ .v1 = 5068, .v2 = -0.25, .v3 = 32 }));
}
pub export fn zig_recv_Ul_F_C(lv: c.Ul_F_C) c_int {
    if (lv.v1 != 5068) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 32) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_C() c.Ul_F_C {
    return .{ .v1 = 5068, .v2 = -0.25, .v3 = 32 };
}

// From T_Snnn_xbb.c:9036:9056
// struct  Ul_F_D  {
//   __tsu64 v1;
//   float v2;
//   double v3;
// };

test "Ul_F_D layout" {
    var lv: c.Ul_F_D = undefined;
    try testing.expectSize(c.Ul_F_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_F_D C calls" {
    try testing.expectEqual(c.ret_Ul_F_D(), .{ .v1 = 23787, .v2 = -2.125, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Ul_F_D());
    try testing.expectOk(c.send_Ul_F_D());
    try testing.expectOk(c.recv_Ul_F_D(.{ .v1 = 23787, .v2 = -2.125, .v3 = 0.5 }));
}
pub export fn zig_recv_Ul_F_D(lv: c.Ul_F_D) c_int {
    if (lv.v1 != 23787) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_D() c.Ul_F_D {
    return .{ .v1 = 23787, .v2 = -2.125, .v3 = 0.5 };
}

// From T_Snnn_xbb.c:9061:9081
// struct  Ul_F_F  {
//   __tsu64 v1;
//   float v2;
//   float v3;
// };

test "Ul_F_F layout" {
    var lv: c.Ul_F_F = undefined;
    try testing.expectSize(c.Ul_F_F, 16);
    try testing.expectAlign(c.Ul_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_F_F C calls" {
    try testing.expectEqual(c.ret_Ul_F_F(), .{ .v1 = 4545, .v2 = 1.0, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Ul_F_F());
    try testing.expectOk(c.send_Ul_F_F());
    try testing.expectOk(c.recv_Ul_F_F(.{ .v1 = 4545, .v2 = 1.0, .v3 = 0.875 }));
}
pub export fn zig_recv_Ul_F_F(lv: c.Ul_F_F) c_int {
    if (lv.v1 != 4545) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_F() c.Ul_F_F {
    return .{ .v1 = 4545, .v2 = 1.0, .v3 = 0.875 };
}

// From T_Snnn_xbb.c:9086:9106
// struct  Ul_F_I  {
//   __tsu64 v1;
//   float v2;
//   int v3;
// };

test "Ul_F_I layout" {
    var lv: c.Ul_F_I = undefined;
    try testing.expectSize(c.Ul_F_I, 16);
    try testing.expectAlign(c.Ul_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_F_I C calls" {
    try testing.expectEqual(c.ret_Ul_F_I(), .{ .v1 = 11, .v2 = 1.0, .v3 = 28962 });
    try testing.expectOk(c.assert_ret_Ul_F_I());
    try testing.expectOk(c.send_Ul_F_I());
    try testing.expectOk(c.recv_Ul_F_I(.{ .v1 = 11, .v2 = 1.0, .v3 = 28962 }));
}
pub export fn zig_recv_Ul_F_I(lv: c.Ul_F_I) c_int {
    if (lv.v1 != 11) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 28962) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_I() c.Ul_F_I {
    return .{ .v1 = 11, .v2 = 1.0, .v3 = 28962 };
}

// From T_Snnn_xbb.c:9111:9131
// struct  Ul_F_Ip  {
//   __tsu64 v1;
//   float v2;
//   int *v3;
// };

test "Ul_F_Ip layout" {
    var lv: c.Ul_F_Ip = undefined;
    try testing.expectSize(c.Ul_F_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_F_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_F_Ip(), .{ .v1 = 10728, .v2 = 1.0, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_F_Ip());
    try testing.expectOk(c.send_Ul_F_Ip());
    try testing.expectOk(c.recv_Ul_F_Ip(.{ .v1 = 10728, .v2 = 1.0, .v3 = null }));
}
pub export fn zig_recv_Ul_F_Ip(lv: c.Ul_F_Ip) c_int {
    if (lv.v1 != 10728) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_Ip() c.Ul_F_Ip {
    return .{ .v1 = 10728, .v2 = 1.0, .v3 = null };
}

// From T_Snnn_xbb.c:9136:9156
// struct  Ul_F_L  {
//   __tsu64 v1;
//   float v2;
//   __tsi64 v3;
// };

test "Ul_F_L layout" {
    var lv: c.Ul_F_L = undefined;
    try testing.expectSize(c.Ul_F_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_F_L C calls" {
    try testing.expectEqual(c.ret_Ul_F_L(), .{ .v1 = 29862, .v2 = 1.0, .v3 = 30894 });
    try testing.expectOk(c.assert_ret_Ul_F_L());
    try testing.expectOk(c.send_Ul_F_L());
    try testing.expectOk(c.recv_Ul_F_L(.{ .v1 = 29862, .v2 = 1.0, .v3 = 30894 }));
}
pub export fn zig_recv_Ul_F_L(lv: c.Ul_F_L) c_int {
    if (lv.v1 != 29862) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 30894) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_L() c.Ul_F_L {
    return .{ .v1 = 29862, .v2 = 1.0, .v3 = 30894 };
}

// From T_Snnn_xbb.c:9161:9181
// struct  Ul_F_S  {
//   __tsu64 v1;
//   float v2;
//   short v3;
// };

test "Ul_F_S layout" {
    var lv: c.Ul_F_S = undefined;
    try testing.expectSize(c.Ul_F_S, 16);
    try testing.expectAlign(c.Ul_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_F_S C calls" {
    try testing.expectEqual(c.ret_Ul_F_S(), .{ .v1 = 16621, .v2 = 7.0, .v3 = 19094 });
    try testing.expectOk(c.assert_ret_Ul_F_S());
    try testing.expectOk(c.send_Ul_F_S());
    try testing.expectOk(c.recv_Ul_F_S(.{ .v1 = 16621, .v2 = 7.0, .v3 = 19094 }));
}
pub export fn zig_recv_Ul_F_S(lv: c.Ul_F_S) c_int {
    if (lv.v1 != 16621) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 19094) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_S() c.Ul_F_S {
    return .{ .v1 = 16621, .v2 = 7.0, .v3 = 19094 };
}

// From T_Snnn_xbb.c:9186:9206
// struct  Ul_F_Uc  {
//   __tsu64 v1;
//   float v2;
//   unsigned char v3;
// };

test "Ul_F_Uc layout" {
    var lv: c.Ul_F_Uc = undefined;
    try testing.expectSize(c.Ul_F_Uc, 16);
    try testing.expectAlign(c.Ul_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_F_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_F_Uc(), .{ .v1 = 5394, .v2 = 7.0, .v3 = 26 });
    try testing.expectOk(c.assert_ret_Ul_F_Uc());
    try testing.expectOk(c.send_Ul_F_Uc());
    try testing.expectOk(c.recv_Ul_F_Uc(.{ .v1 = 5394, .v2 = 7.0, .v3 = 26 }));
}
pub export fn zig_recv_Ul_F_Uc(lv: c.Ul_F_Uc) c_int {
    if (lv.v1 != 5394) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 26) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_Uc() c.Ul_F_Uc {
    return .{ .v1 = 5394, .v2 = 7.0, .v3 = 26 };
}

// From T_Snnn_xbb.c:9211:9231
// struct  Ul_F_Ui  {
//   __tsu64 v1;
//   float v2;
//   unsigned int v3;
// };

test "Ul_F_Ui layout" {
    var lv: c.Ul_F_Ui = undefined;
    try testing.expectSize(c.Ul_F_Ui, 16);
    try testing.expectAlign(c.Ul_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_F_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_F_Ui(), .{ .v1 = 18558, .v2 = 0.875, .v3 = 23737 });
    try testing.expectOk(c.assert_ret_Ul_F_Ui());
    try testing.expectOk(c.send_Ul_F_Ui());
    try testing.expectOk(c.recv_Ul_F_Ui(.{ .v1 = 18558, .v2 = 0.875, .v3 = 23737 }));
}
pub export fn zig_recv_Ul_F_Ui(lv: c.Ul_F_Ui) c_int {
    if (lv.v1 != 18558) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 23737) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_Ui() c.Ul_F_Ui {
    return .{ .v1 = 18558, .v2 = 0.875, .v3 = 23737 };
}

// From T_Snnn_xbb.c:9236:9256
// struct  Ul_F_Ul  {
//   __tsu64 v1;
//   float v2;
//   __tsu64 v3;
// };

test "Ul_F_Ul layout" {
    var lv: c.Ul_F_Ul = undefined;
    try testing.expectSize(c.Ul_F_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_F_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_F_Ul(), .{ .v1 = 19145, .v2 = 0.875, .v3 = 26272 });
    try testing.expectOk(c.assert_ret_Ul_F_Ul());
    try testing.expectOk(c.send_Ul_F_Ul());
    try testing.expectOk(c.recv_Ul_F_Ul(.{ .v1 = 19145, .v2 = 0.875, .v3 = 26272 }));
}
pub export fn zig_recv_Ul_F_Ul(lv: c.Ul_F_Ul) c_int {
    if (lv.v1 != 19145) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 26272) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_Ul() c.Ul_F_Ul {
    return .{ .v1 = 19145, .v2 = 0.875, .v3 = 26272 };
}

// From T_Snnn_xbb.c:9261:9281
// struct  Ul_F_Us  {
//   __tsu64 v1;
//   float v2;
//   unsigned short v3;
// };

test "Ul_F_Us layout" {
    var lv: c.Ul_F_Us = undefined;
    try testing.expectSize(c.Ul_F_Us, 16);
    try testing.expectAlign(c.Ul_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_F_Us C calls" {
    try testing.expectEqual(c.ret_Ul_F_Us(), .{ .v1 = 12786, .v2 = 4.5, .v3 = 32561 });
    try testing.expectOk(c.assert_ret_Ul_F_Us());
    try testing.expectOk(c.send_Ul_F_Us());
    try testing.expectOk(c.recv_Ul_F_Us(.{ .v1 = 12786, .v2 = 4.5, .v3 = 32561 }));
}
pub export fn zig_recv_Ul_F_Us(lv: c.Ul_F_Us) c_int {
    if (lv.v1 != 12786) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 32561) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_Us() c.Ul_F_Us {
    return .{ .v1 = 12786, .v2 = 4.5, .v3 = 32561 };
}

// From T_Snnn_xbb.c:9286:9306
// struct  Ul_F_Vp  {
//   __tsu64 v1;
//   float v2;
//   void *v3;
// };

test "Ul_F_Vp layout" {
    var lv: c.Ul_F_Vp = undefined;
    try testing.expectSize(c.Ul_F_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_F_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_F_Vp(), .{ .v1 = 8407, .v2 = 1.0, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_F_Vp());
    try testing.expectOk(c.send_Ul_F_Vp());
    try testing.expectOk(c.recv_Ul_F_Vp(.{ .v1 = 8407, .v2 = 1.0, .v3 = null }));
}
pub export fn zig_recv_Ul_F_Vp(lv: c.Ul_F_Vp) c_int {
    if (lv.v1 != 8407) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_F_Vp() c.Ul_F_Vp {
    return .{ .v1 = 8407, .v2 = 1.0, .v3 = null };
}

// From T_Snnn_xbb.c:9311:9329
// struct  Ul_I  {
//   __tsu64 v1;
//   int v2;
// };

test "Ul_I layout" {
    var lv: c.Ul_I = undefined;
    try testing.expectSize(c.Ul_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_I C calls" {
    try testing.expectEqual(c.ret_Ul_I(), .{ .v1 = 9001, .v2 = 14566 });
    try testing.expectOk(c.assert_ret_Ul_I());
    try testing.expectOk(c.send_Ul_I());
    try testing.expectOk(c.recv_Ul_I(.{ .v1 = 9001, .v2 = 14566 }));
}
pub export fn zig_recv_Ul_I(lv: c.Ul_I) c_int {
    if (lv.v1 != 9001) return 1;
    if (lv.v2 != 14566) return 2;
    return 0;
}
pub export fn zig_ret_Ul_I() c.Ul_I {
    return .{ .v1 = 9001, .v2 = 14566 };
}

// From T_Snnn_xbb.c:10058:10078
// struct  Ul_I_C  {
//   __tsu64 v1;
//   int v2;
//   char v3;
// };

test "Ul_I_C layout" {
    var lv: c.Ul_I_C = undefined;
    try testing.expectSize(c.Ul_I_C, 16);
    try testing.expectAlign(c.Ul_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_I_C C calls" {
    try testing.expectEqual(c.ret_Ul_I_C(), .{ .v1 = 26130, .v2 = 8317, .v3 = 100 });
    try testing.expectOk(c.assert_ret_Ul_I_C());
    try testing.expectOk(c.send_Ul_I_C());
    try testing.expectOk(c.recv_Ul_I_C(.{ .v1 = 26130, .v2 = 8317, .v3 = 100 }));
}
pub export fn zig_recv_Ul_I_C(lv: c.Ul_I_C) c_int {
    if (lv.v1 != 26130) return 1;
    if (lv.v2 != 8317) return 2;
    if (lv.v3 != 100) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_C() c.Ul_I_C {
    return .{ .v1 = 26130, .v2 = 8317, .v3 = 100 };
}

// From T_Snnn_xbb.c:10083:10103
// struct  Ul_I_D  {
//   __tsu64 v1;
//   int v2;
//   double v3;
// };

test "Ul_I_D layout" {
    var lv: c.Ul_I_D = undefined;
    try testing.expectSize(c.Ul_I_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_I_D C calls" {
    try testing.expectEqual(c.ret_Ul_I_D(), .{ .v1 = 16377, .v2 = 29653, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Ul_I_D());
    try testing.expectOk(c.send_Ul_I_D());
    try testing.expectOk(c.recv_Ul_I_D(.{ .v1 = 16377, .v2 = 29653, .v3 = 0.5 }));
}
pub export fn zig_recv_Ul_I_D(lv: c.Ul_I_D) c_int {
    if (lv.v1 != 16377) return 1;
    if (lv.v2 != 29653) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_D() c.Ul_I_D {
    return .{ .v1 = 16377, .v2 = 29653, .v3 = 0.5 };
}

// From T_Snnn_xbb.c:10108:10128
// struct  Ul_I_F  {
//   __tsu64 v1;
//   int v2;
//   float v3;
// };

test "Ul_I_F layout" {
    var lv: c.Ul_I_F = undefined;
    try testing.expectSize(c.Ul_I_F, 16);
    try testing.expectAlign(c.Ul_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_I_F C calls" {
    try testing.expectEqual(c.ret_Ul_I_F(), .{ .v1 = 6558, .v2 = 14172, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Ul_I_F());
    try testing.expectOk(c.send_Ul_I_F());
    try testing.expectOk(c.recv_Ul_I_F(.{ .v1 = 6558, .v2 = 14172, .v3 = 0.875 }));
}
pub export fn zig_recv_Ul_I_F(lv: c.Ul_I_F) c_int {
    if (lv.v1 != 6558) return 1;
    if (lv.v2 != 14172) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_F() c.Ul_I_F {
    return .{ .v1 = 6558, .v2 = 14172, .v3 = 0.875 };
}

// From T_Snnn_xbb.c:10133:10153
// struct  Ul_I_I  {
//   __tsu64 v1;
//   int v2;
//   int v3;
// };

test "Ul_I_I layout" {
    var lv: c.Ul_I_I = undefined;
    try testing.expectSize(c.Ul_I_I, 16);
    try testing.expectAlign(c.Ul_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_I_I C calls" {
    try testing.expectEqual(c.ret_Ul_I_I(), .{ .v1 = 21186, .v2 = 27875, .v3 = 12292 });
    try testing.expectOk(c.assert_ret_Ul_I_I());
    try testing.expectOk(c.send_Ul_I_I());
    try testing.expectOk(c.recv_Ul_I_I(.{ .v1 = 21186, .v2 = 27875, .v3 = 12292 }));
}
pub export fn zig_recv_Ul_I_I(lv: c.Ul_I_I) c_int {
    if (lv.v1 != 21186) return 1;
    if (lv.v2 != 27875) return 2;
    if (lv.v3 != 12292) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_I() c.Ul_I_I {
    return .{ .v1 = 21186, .v2 = 27875, .v3 = 12292 };
}

// From T_Snnn_xbb.c:10158:10178
// struct  Ul_I_Ip  {
//   __tsu64 v1;
//   int v2;
//   int *v3;
// };

test "Ul_I_Ip layout" {
    var lv: c.Ul_I_Ip = undefined;
    try testing.expectSize(c.Ul_I_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_I_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_I_Ip(), .{ .v1 = 19268, .v2 = 7953, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_I_Ip());
    try testing.expectOk(c.send_Ul_I_Ip());
    try testing.expectOk(c.recv_Ul_I_Ip(.{ .v1 = 19268, .v2 = 7953, .v3 = null }));
}
pub export fn zig_recv_Ul_I_Ip(lv: c.Ul_I_Ip) c_int {
    if (lv.v1 != 19268) return 1;
    if (lv.v2 != 7953) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_Ip() c.Ul_I_Ip {
    return .{ .v1 = 19268, .v2 = 7953, .v3 = null };
}

// From T_Snnn_xbb.c:10183:10203
// struct  Ul_I_L  {
//   __tsu64 v1;
//   int v2;
//   __tsi64 v3;
// };

test "Ul_I_L layout" {
    var lv: c.Ul_I_L = undefined;
    try testing.expectSize(c.Ul_I_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_I_L C calls" {
    try testing.expectEqual(c.ret_Ul_I_L(), .{ .v1 = 1812, .v2 = 15113, .v3 = 12160 });
    try testing.expectOk(c.assert_ret_Ul_I_L());
    try testing.expectOk(c.send_Ul_I_L());
    try testing.expectOk(c.recv_Ul_I_L(.{ .v1 = 1812, .v2 = 15113, .v3 = 12160 }));
}
pub export fn zig_recv_Ul_I_L(lv: c.Ul_I_L) c_int {
    if (lv.v1 != 1812) return 1;
    if (lv.v2 != 15113) return 2;
    if (lv.v3 != 12160) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_L() c.Ul_I_L {
    return .{ .v1 = 1812, .v2 = 15113, .v3 = 12160 };
}

// From T_Snnn_xbb.c:10208:10228
// struct  Ul_I_S  {
//   __tsu64 v1;
//   int v2;
//   short v3;
// };

test "Ul_I_S layout" {
    var lv: c.Ul_I_S = undefined;
    try testing.expectSize(c.Ul_I_S, 16);
    try testing.expectAlign(c.Ul_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_I_S C calls" {
    try testing.expectEqual(c.ret_Ul_I_S(), .{ .v1 = 24576, .v2 = 10804, .v3 = 566 });
    try testing.expectOk(c.assert_ret_Ul_I_S());
    try testing.expectOk(c.send_Ul_I_S());
    try testing.expectOk(c.recv_Ul_I_S(.{ .v1 = 24576, .v2 = 10804, .v3 = 566 }));
}
pub export fn zig_recv_Ul_I_S(lv: c.Ul_I_S) c_int {
    if (lv.v1 != 24576) return 1;
    if (lv.v2 != 10804) return 2;
    if (lv.v3 != 566) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_S() c.Ul_I_S {
    return .{ .v1 = 24576, .v2 = 10804, .v3 = 566 };
}

// From T_Snnn_xbb.c:10233:10253
// struct  Ul_I_Uc  {
//   __tsu64 v1;
//   int v2;
//   unsigned char v3;
// };

test "Ul_I_Uc layout" {
    var lv: c.Ul_I_Uc = undefined;
    try testing.expectSize(c.Ul_I_Uc, 16);
    try testing.expectAlign(c.Ul_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_I_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_I_Uc(), .{ .v1 = 4343, .v2 = 4509, .v3 = 97 });
    try testing.expectOk(c.assert_ret_Ul_I_Uc());
    try testing.expectOk(c.send_Ul_I_Uc());
    try testing.expectOk(c.recv_Ul_I_Uc(.{ .v1 = 4343, .v2 = 4509, .v3 = 97 }));
}
pub export fn zig_recv_Ul_I_Uc(lv: c.Ul_I_Uc) c_int {
    if (lv.v1 != 4343) return 1;
    if (lv.v2 != 4509) return 2;
    if (lv.v3 != 97) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_Uc() c.Ul_I_Uc {
    return .{ .v1 = 4343, .v2 = 4509, .v3 = 97 };
}

// From T_Snnn_xbb.c:10258:10278
// struct  Ul_I_Ui  {
//   __tsu64 v1;
//   int v2;
//   unsigned int v3;
// };

test "Ul_I_Ui layout" {
    var lv: c.Ul_I_Ui = undefined;
    try testing.expectSize(c.Ul_I_Ui, 16);
    try testing.expectAlign(c.Ul_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_I_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_I_Ui(), .{ .v1 = 22220, .v2 = 2803, .v3 = 31274 });
    try testing.expectOk(c.assert_ret_Ul_I_Ui());
    try testing.expectOk(c.send_Ul_I_Ui());
    try testing.expectOk(c.recv_Ul_I_Ui(.{ .v1 = 22220, .v2 = 2803, .v3 = 31274 }));
}
pub export fn zig_recv_Ul_I_Ui(lv: c.Ul_I_Ui) c_int {
    if (lv.v1 != 22220) return 1;
    if (lv.v2 != 2803) return 2;
    if (lv.v3 != 31274) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_Ui() c.Ul_I_Ui {
    return .{ .v1 = 22220, .v2 = 2803, .v3 = 31274 };
}

// From T_Snnn_xbb.c:10283:10303
// struct  Ul_I_Ul  {
//   __tsu64 v1;
//   int v2;
//   __tsu64 v3;
// };

test "Ul_I_Ul layout" {
    var lv: c.Ul_I_Ul = undefined;
    try testing.expectSize(c.Ul_I_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_I_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_I_Ul(), .{ .v1 = 23345, .v2 = 16816, .v3 = 1382 });
    try testing.expectOk(c.assert_ret_Ul_I_Ul());
    try testing.expectOk(c.send_Ul_I_Ul());
    try testing.expectOk(c.recv_Ul_I_Ul(.{ .v1 = 23345, .v2 = 16816, .v3 = 1382 }));
}
pub export fn zig_recv_Ul_I_Ul(lv: c.Ul_I_Ul) c_int {
    if (lv.v1 != 23345) return 1;
    if (lv.v2 != 16816) return 2;
    if (lv.v3 != 1382) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_Ul() c.Ul_I_Ul {
    return .{ .v1 = 23345, .v2 = 16816, .v3 = 1382 };
}

// From T_Snnn_xbb.c:10308:10328
// struct  Ul_I_Us  {
//   __tsu64 v1;
//   int v2;
//   unsigned short v3;
// };

test "Ul_I_Us layout" {
    var lv: c.Ul_I_Us = undefined;
    try testing.expectSize(c.Ul_I_Us, 16);
    try testing.expectAlign(c.Ul_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_I_Us C calls" {
    try testing.expectEqual(c.ret_Ul_I_Us(), .{ .v1 = 26785, .v2 = 19005, .v3 = 25704 });
    try testing.expectOk(c.assert_ret_Ul_I_Us());
    try testing.expectOk(c.send_Ul_I_Us());
    try testing.expectOk(c.recv_Ul_I_Us(.{ .v1 = 26785, .v2 = 19005, .v3 = 25704 }));
}
pub export fn zig_recv_Ul_I_Us(lv: c.Ul_I_Us) c_int {
    if (lv.v1 != 26785) return 1;
    if (lv.v2 != 19005) return 2;
    if (lv.v3 != 25704) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_Us() c.Ul_I_Us {
    return .{ .v1 = 26785, .v2 = 19005, .v3 = 25704 };
}

// From T_Snnn_xbb.c:10333:10353
// struct  Ul_I_Vp  {
//   __tsu64 v1;
//   int v2;
//   void *v3;
// };

test "Ul_I_Vp layout" {
    var lv: c.Ul_I_Vp = undefined;
    try testing.expectSize(c.Ul_I_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_I_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_I_Vp(), .{ .v1 = 15755, .v2 = 32345, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_I_Vp());
    try testing.expectOk(c.send_Ul_I_Vp());
    try testing.expectOk(c.recv_Ul_I_Vp(.{ .v1 = 15755, .v2 = 32345, .v3 = null }));
}
pub export fn zig_recv_Ul_I_Vp(lv: c.Ul_I_Vp) c_int {
    if (lv.v1 != 15755) return 1;
    if (lv.v2 != 32345) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_I_Vp() c.Ul_I_Vp {
    return .{ .v1 = 15755, .v2 = 32345, .v3 = null };
}

// From T_Snnn_xbb.c:10358:10376
// struct  Ul_Ip  {
//   __tsu64 v1;
//   int *v2;
// };

test "Ul_Ip layout" {
    var lv: c.Ul_Ip = undefined;
    try testing.expectSize(c.Ul_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_Ip(), .{ .v1 = 26902, .v2 = null });
    try testing.expectOk(c.assert_ret_Ul_Ip());
    try testing.expectOk(c.send_Ul_Ip());
    try testing.expectOk(c.recv_Ul_Ip(.{ .v1 = 26902, .v2 = null }));
}
pub export fn zig_recv_Ul_Ip(lv: c.Ul_Ip) c_int {
    if (lv.v1 != 26902) return 1;
    if (lv.v2 != null) return 2;
    return 0;
}
pub export fn zig_ret_Ul_Ip() c.Ul_Ip {
    return .{ .v1 = 26902, .v2 = null };
}

// From T_Snnn_xbb.c:11105:11125
// struct  Ul_Ip_C  {
//   __tsu64 v1;
//   int *v2;
//   char v3;
// };

test "Ul_Ip_C layout" {
    var lv: c.Ul_Ip_C = undefined;
    try testing.expectSize(c.Ul_Ip_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_C C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_C(), .{ .v1 = 11062, .v2 = null, .v3 = 31 });
    try testing.expectOk(c.assert_ret_Ul_Ip_C());
    try testing.expectOk(c.send_Ul_Ip_C());
    try testing.expectOk(c.recv_Ul_Ip_C(.{ .v1 = 11062, .v2 = null, .v3 = 31 }));
}
pub export fn zig_recv_Ul_Ip_C(lv: c.Ul_Ip_C) c_int {
    if (lv.v1 != 11062) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 31) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_C() c.Ul_Ip_C {
    return .{ .v1 = 11062, .v2 = null, .v3 = 31 };
}

// From T_Snnn_xbb.c:11130:11150
// struct  Ul_Ip_D  {
//   __tsu64 v1;
//   int *v2;
//   double v3;
// };

test "Ul_Ip_D layout" {
    var lv: c.Ul_Ip_D = undefined;
    try testing.expectSize(c.Ul_Ip_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_D C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_D(), .{ .v1 = 3475, .v2 = null, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Ul_Ip_D());
    try testing.expectOk(c.send_Ul_Ip_D());
    try testing.expectOk(c.recv_Ul_Ip_D(.{ .v1 = 3475, .v2 = null, .v3 = 0.875 }));
}
pub export fn zig_recv_Ul_Ip_D(lv: c.Ul_Ip_D) c_int {
    if (lv.v1 != 3475) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_D() c.Ul_Ip_D {
    return .{ .v1 = 3475, .v2 = null, .v3 = 0.875 };
}

// From T_Snnn_xbb.c:11155:11175
// struct  Ul_Ip_F  {
//   __tsu64 v1;
//   int *v2;
//   float v3;
// };

test "Ul_Ip_F layout" {
    var lv: c.Ul_Ip_F = undefined;
    try testing.expectSize(c.Ul_Ip_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_F C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_F(), .{ .v1 = 6436, .v2 = null, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Ul_Ip_F());
    try testing.expectOk(c.send_Ul_Ip_F());
    try testing.expectOk(c.recv_Ul_Ip_F(.{ .v1 = 6436, .v2 = null, .v3 = 4.5 }));
}
pub export fn zig_recv_Ul_Ip_F(lv: c.Ul_Ip_F) c_int {
    if (lv.v1 != 6436) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_F() c.Ul_Ip_F {
    return .{ .v1 = 6436, .v2 = null, .v3 = 4.5 };
}

// From T_Snnn_xbb.c:11180:11200
// struct  Ul_Ip_I  {
//   __tsu64 v1;
//   int *v2;
//   int v3;
// };

test "Ul_Ip_I layout" {
    var lv: c.Ul_Ip_I = undefined;
    try testing.expectSize(c.Ul_Ip_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_I C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_I(), .{ .v1 = 9802, .v2 = null, .v3 = 30741 });
    try testing.expectOk(c.assert_ret_Ul_Ip_I());
    try testing.expectOk(c.send_Ul_Ip_I());
    try testing.expectOk(c.recv_Ul_Ip_I(.{ .v1 = 9802, .v2 = null, .v3 = 30741 }));
}
pub export fn zig_recv_Ul_Ip_I(lv: c.Ul_Ip_I) c_int {
    if (lv.v1 != 9802) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 30741) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_I() c.Ul_Ip_I {
    return .{ .v1 = 9802, .v2 = null, .v3 = 30741 };
}

// From T_Snnn_xbb.c:11205:11225
// struct  Ul_Ip_Ip  {
//   __tsu64 v1;
//   int *v2;
//   int *v3;
// };

test "Ul_Ip_Ip layout" {
    var lv: c.Ul_Ip_Ip = undefined;
    try testing.expectSize(c.Ul_Ip_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_Ip(), .{ .v1 = 1518, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Ip_Ip());
    try testing.expectOk(c.send_Ul_Ip_Ip());
    try testing.expectOk(c.recv_Ul_Ip_Ip(.{ .v1 = 1518, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_Ul_Ip_Ip(lv: c.Ul_Ip_Ip) c_int {
    if (lv.v1 != 1518) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_Ip() c.Ul_Ip_Ip {
    return .{ .v1 = 1518, .v2 = null, .v3 = null };
}

// From T_Snnn_xbb.c:11230:11250
// struct  Ul_Ip_L  {
//   __tsu64 v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Ul_Ip_L layout" {
    var lv: c.Ul_Ip_L = undefined;
    try testing.expectSize(c.Ul_Ip_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_L C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_L(), .{ .v1 = 31264, .v2 = null, .v3 = 30076 });
    try testing.expectOk(c.assert_ret_Ul_Ip_L());
    try testing.expectOk(c.send_Ul_Ip_L());
    try testing.expectOk(c.recv_Ul_Ip_L(.{ .v1 = 31264, .v2 = null, .v3 = 30076 }));
}
pub export fn zig_recv_Ul_Ip_L(lv: c.Ul_Ip_L) c_int {
    if (lv.v1 != 31264) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 30076) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_L() c.Ul_Ip_L {
    return .{ .v1 = 31264, .v2 = null, .v3 = 30076 };
}

// From T_Snnn_xbb.c:11255:11275
// struct  Ul_Ip_S  {
//   __tsu64 v1;
//   int *v2;
//   short v3;
// };

test "Ul_Ip_S layout" {
    var lv: c.Ul_Ip_S = undefined;
    try testing.expectSize(c.Ul_Ip_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_S C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_S(), .{ .v1 = 22879, .v2 = null, .v3 = 23485 });
    try testing.expectOk(c.assert_ret_Ul_Ip_S());
    try testing.expectOk(c.send_Ul_Ip_S());
    try testing.expectOk(c.recv_Ul_Ip_S(.{ .v1 = 22879, .v2 = null, .v3 = 23485 }));
}
pub export fn zig_recv_Ul_Ip_S(lv: c.Ul_Ip_S) c_int {
    if (lv.v1 != 22879) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 23485) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_S() c.Ul_Ip_S {
    return .{ .v1 = 22879, .v2 = null, .v3 = 23485 };
}

// From T_Snnn_xbb.c:11280:11300
// struct  Ul_Ip_Uc  {
//   __tsu64 v1;
//   int *v2;
//   unsigned char v3;
// };

test "Ul_Ip_Uc layout" {
    var lv: c.Ul_Ip_Uc = undefined;
    try testing.expectSize(c.Ul_Ip_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_Uc(), .{ .v1 = 14255, .v2 = null, .v3 = 118 });
    try testing.expectOk(c.assert_ret_Ul_Ip_Uc());
    try testing.expectOk(c.send_Ul_Ip_Uc());
    try testing.expectOk(c.recv_Ul_Ip_Uc(.{ .v1 = 14255, .v2 = null, .v3 = 118 }));
}
pub export fn zig_recv_Ul_Ip_Uc(lv: c.Ul_Ip_Uc) c_int {
    if (lv.v1 != 14255) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 118) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_Uc() c.Ul_Ip_Uc {
    return .{ .v1 = 14255, .v2 = null, .v3 = 118 };
}

// From T_Snnn_xbb.c:11305:11325
// struct  Ul_Ip_Ui  {
//   __tsu64 v1;
//   int *v2;
//   unsigned int v3;
// };

test "Ul_Ip_Ui layout" {
    var lv: c.Ul_Ip_Ui = undefined;
    try testing.expectSize(c.Ul_Ip_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_Ui(), .{ .v1 = 5959, .v2 = null, .v3 = 12355 });
    try testing.expectOk(c.assert_ret_Ul_Ip_Ui());
    try testing.expectOk(c.send_Ul_Ip_Ui());
    try testing.expectOk(c.recv_Ul_Ip_Ui(.{ .v1 = 5959, .v2 = null, .v3 = 12355 }));
}
pub export fn zig_recv_Ul_Ip_Ui(lv: c.Ul_Ip_Ui) c_int {
    if (lv.v1 != 5959) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 12355) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_Ui() c.Ul_Ip_Ui {
    return .{ .v1 = 5959, .v2 = null, .v3 = 12355 };
}

// From T_Snnn_xbb.c:11330:11350
// struct  Ul_Ip_Ul  {
//   __tsu64 v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Ul_Ip_Ul layout" {
    var lv: c.Ul_Ip_Ul = undefined;
    try testing.expectSize(c.Ul_Ip_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_Ul(), .{ .v1 = 8777, .v2 = null, .v3 = 760 });
    try testing.expectOk(c.assert_ret_Ul_Ip_Ul());
    try testing.expectOk(c.send_Ul_Ip_Ul());
    try testing.expectOk(c.recv_Ul_Ip_Ul(.{ .v1 = 8777, .v2 = null, .v3 = 760 }));
}
pub export fn zig_recv_Ul_Ip_Ul(lv: c.Ul_Ip_Ul) c_int {
    if (lv.v1 != 8777) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 760) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_Ul() c.Ul_Ip_Ul {
    return .{ .v1 = 8777, .v2 = null, .v3 = 760 };
}

// From T_Snnn_xbb.c:11355:11375
// struct  Ul_Ip_Us  {
//   __tsu64 v1;
//   int *v2;
//   unsigned short v3;
// };

test "Ul_Ip_Us layout" {
    var lv: c.Ul_Ip_Us = undefined;
    try testing.expectSize(c.Ul_Ip_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_Us C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_Us(), .{ .v1 = 16734, .v2 = null, .v3 = 28745 });
    try testing.expectOk(c.assert_ret_Ul_Ip_Us());
    try testing.expectOk(c.send_Ul_Ip_Us());
    try testing.expectOk(c.recv_Ul_Ip_Us(.{ .v1 = 16734, .v2 = null, .v3 = 28745 }));
}
pub export fn zig_recv_Ul_Ip_Us(lv: c.Ul_Ip_Us) c_int {
    if (lv.v1 != 16734) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 28745) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_Us() c.Ul_Ip_Us {
    return .{ .v1 = 16734, .v2 = null, .v3 = 28745 };
}

// From T_Snnn_xbb.c:11380:11400
// struct  Ul_Ip_Vp  {
//   __tsu64 v1;
//   int *v2;
//   void *v3;
// };

test "Ul_Ip_Vp layout" {
    var lv: c.Ul_Ip_Vp = undefined;
    try testing.expectSize(c.Ul_Ip_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ip_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_Ip_Vp(), .{ .v1 = 21721, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Ip_Vp());
    try testing.expectOk(c.send_Ul_Ip_Vp());
    try testing.expectOk(c.recv_Ul_Ip_Vp(.{ .v1 = 21721, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_Ul_Ip_Vp(lv: c.Ul_Ip_Vp) c_int {
    if (lv.v1 != 21721) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ip_Vp() c.Ul_Ip_Vp {
    return .{ .v1 = 21721, .v2 = null, .v3 = null };
}

// From T_Snnn_xbb.c:11405:11423
// struct  Ul_L  {
//   __tsu64 v1;
//   __tsi64 v2;
// };

test "Ul_L layout" {
    var lv: c.Ul_L = undefined;
    try testing.expectSize(c.Ul_L, 16);
    try testing.expectAlign(c.Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_L C calls" {
    try testing.expectEqual(c.ret_Ul_L(), .{ .v1 = 15343, .v2 = 30563 });
    try testing.expectOk(c.assert_ret_Ul_L());
    try testing.expectOk(c.send_Ul_L());
    try testing.expectOk(c.recv_Ul_L(.{ .v1 = 15343, .v2 = 30563 }));
}
pub export fn zig_recv_Ul_L(lv: c.Ul_L) c_int {
    if (lv.v1 != 15343) return 1;
    if (lv.v2 != 30563) return 2;
    return 0;
}
pub export fn zig_ret_Ul_L() c.Ul_L {
    return .{ .v1 = 15343, .v2 = 30563 };
}

// From T_Snnn_xbb.c:12152:12172
// struct  Ul_L_C  {
//   __tsu64 v1;
//   __tsi64 v2;
//   char v3;
// };

test "Ul_L_C layout" {
    var lv: c.Ul_L_C = undefined;
    try testing.expectSize(c.Ul_L_C, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_C C calls" {
    try testing.expectEqual(c.ret_Ul_L_C(), .{ .v1 = 28130, .v2 = 18916, .v3 = 10 });
    try testing.expectOk(c.assert_ret_Ul_L_C());
    try testing.expectOk(c.send_Ul_L_C());
    try testing.expectOk(c.recv_Ul_L_C(.{ .v1 = 28130, .v2 = 18916, .v3 = 10 }));
}
pub export fn zig_recv_Ul_L_C(lv: c.Ul_L_C) c_int {
    if (lv.v1 != 28130) return 1;
    if (lv.v2 != 18916) return 2;
    if (lv.v3 != 10) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_C() c.Ul_L_C {
    return .{ .v1 = 28130, .v2 = 18916, .v3 = 10 };
}

// From T_Snnn_xbb.c:12177:12197
// struct  Ul_L_D  {
//   __tsu64 v1;
//   __tsi64 v2;
//   double v3;
// };

test "Ul_L_D layout" {
    var lv: c.Ul_L_D = undefined;
    try testing.expectSize(c.Ul_L_D, 24);
    try testing.expectAlign(c.Ul_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_D C calls" {
    try testing.expectEqual(c.ret_Ul_L_D(), .{ .v1 = 13861, .v2 = 9151, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Ul_L_D());
    try testing.expectOk(c.send_Ul_L_D());
    try testing.expectOk(c.recv_Ul_L_D(.{ .v1 = 13861, .v2 = 9151, .v3 = 0.5 }));
}
pub export fn zig_recv_Ul_L_D(lv: c.Ul_L_D) c_int {
    if (lv.v1 != 13861) return 1;
    if (lv.v2 != 9151) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_D() c.Ul_L_D {
    return .{ .v1 = 13861, .v2 = 9151, .v3 = 0.5 };
}

// From T_Snnn_xbb.c:12202:12222
// struct  Ul_L_F  {
//   __tsu64 v1;
//   __tsi64 v2;
//   float v3;
// };

test "Ul_L_F layout" {
    var lv: c.Ul_L_F = undefined;
    try testing.expectSize(c.Ul_L_F, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_F C calls" {
    try testing.expectEqual(c.ret_Ul_L_F(), .{ .v1 = 22003, .v2 = 10595, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Ul_L_F());
    try testing.expectOk(c.send_Ul_L_F());
    try testing.expectOk(c.recv_Ul_L_F(.{ .v1 = 22003, .v2 = 10595, .v3 = 7.0 }));
}
pub export fn zig_recv_Ul_L_F(lv: c.Ul_L_F) c_int {
    if (lv.v1 != 22003) return 1;
    if (lv.v2 != 10595) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_F() c.Ul_L_F {
    return .{ .v1 = 22003, .v2 = 10595, .v3 = 7.0 };
}

// From T_Snnn_xbb.c:12227:12247
// struct  Ul_L_I  {
//   __tsu64 v1;
//   __tsi64 v2;
//   int v3;
// };

test "Ul_L_I layout" {
    var lv: c.Ul_L_I = undefined;
    try testing.expectSize(c.Ul_L_I, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_I C calls" {
    try testing.expectEqual(c.ret_Ul_L_I(), .{ .v1 = 24399, .v2 = 7327, .v3 = 24391 });
    try testing.expectOk(c.assert_ret_Ul_L_I());
    try testing.expectOk(c.send_Ul_L_I());
    try testing.expectOk(c.recv_Ul_L_I(.{ .v1 = 24399, .v2 = 7327, .v3 = 24391 }));
}
pub export fn zig_recv_Ul_L_I(lv: c.Ul_L_I) c_int {
    if (lv.v1 != 24399) return 1;
    if (lv.v2 != 7327) return 2;
    if (lv.v3 != 24391) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_I() c.Ul_L_I {
    return .{ .v1 = 24399, .v2 = 7327, .v3 = 24391 };
}

// From T_Snnn_xbb.c:12252:12272
// struct  Ul_L_Ip  {
//   __tsu64 v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Ul_L_Ip layout" {
    var lv: c.Ul_L_Ip = undefined;
    try testing.expectSize(c.Ul_L_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_L_Ip(), .{ .v1 = 29353, .v2 = 291, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_L_Ip());
    try testing.expectOk(c.send_Ul_L_Ip());
    try testing.expectOk(c.recv_Ul_L_Ip(.{ .v1 = 29353, .v2 = 291, .v3 = null }));
}
pub export fn zig_recv_Ul_L_Ip(lv: c.Ul_L_Ip) c_int {
    if (lv.v1 != 29353) return 1;
    if (lv.v2 != 291) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_Ip() c.Ul_L_Ip {
    return .{ .v1 = 29353, .v2 = 291, .v3 = null };
}

// From T_Snnn_xbb.c:12277:12297
// struct  Ul_L_L  {
//   __tsu64 v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Ul_L_L layout" {
    var lv: c.Ul_L_L = undefined;
    try testing.expectSize(c.Ul_L_L, 24);
    try testing.expectAlign(c.Ul_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_L C calls" {
    try testing.expectEqual(c.ret_Ul_L_L(), .{ .v1 = 31991, .v2 = 20178, .v3 = 30846 });
    try testing.expectOk(c.assert_ret_Ul_L_L());
    try testing.expectOk(c.send_Ul_L_L());
    try testing.expectOk(c.recv_Ul_L_L(.{ .v1 = 31991, .v2 = 20178, .v3 = 30846 }));
}
pub export fn zig_recv_Ul_L_L(lv: c.Ul_L_L) c_int {
    if (lv.v1 != 31991) return 1;
    if (lv.v2 != 20178) return 2;
    if (lv.v3 != 30846) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_L() c.Ul_L_L {
    return .{ .v1 = 31991, .v2 = 20178, .v3 = 30846 };
}

// From T_Snnn_xbb.c:12302:12322
// struct  Ul_L_S  {
//   __tsu64 v1;
//   __tsi64 v2;
//   short v3;
// };

test "Ul_L_S layout" {
    var lv: c.Ul_L_S = undefined;
    try testing.expectSize(c.Ul_L_S, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_S C calls" {
    try testing.expectEqual(c.ret_Ul_L_S(), .{ .v1 = 538, .v2 = 31083, .v3 = 25880 });
    try testing.expectOk(c.assert_ret_Ul_L_S());
    try testing.expectOk(c.send_Ul_L_S());
    try testing.expectOk(c.recv_Ul_L_S(.{ .v1 = 538, .v2 = 31083, .v3 = 25880 }));
}
pub export fn zig_recv_Ul_L_S(lv: c.Ul_L_S) c_int {
    if (lv.v1 != 538) return 1;
    if (lv.v2 != 31083) return 2;
    if (lv.v3 != 25880) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_S() c.Ul_L_S {
    return .{ .v1 = 538, .v2 = 31083, .v3 = 25880 };
}

// From T_Snnn_xbb.c:12327:12347
// struct  Ul_L_Uc  {
//   __tsu64 v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Ul_L_Uc layout" {
    var lv: c.Ul_L_Uc = undefined;
    try testing.expectSize(c.Ul_L_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_L_Uc(), .{ .v1 = 28879, .v2 = 7459, .v3 = 12 });
    try testing.expectOk(c.assert_ret_Ul_L_Uc());
    try testing.expectOk(c.send_Ul_L_Uc());
    try testing.expectOk(c.recv_Ul_L_Uc(.{ .v1 = 28879, .v2 = 7459, .v3 = 12 }));
}
pub export fn zig_recv_Ul_L_Uc(lv: c.Ul_L_Uc) c_int {
    if (lv.v1 != 28879) return 1;
    if (lv.v2 != 7459) return 2;
    if (lv.v3 != 12) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_Uc() c.Ul_L_Uc {
    return .{ .v1 = 28879, .v2 = 7459, .v3 = 12 };
}

// From T_Snnn_xbb.c:12352:12372
// struct  Ul_L_Ui  {
//   __tsu64 v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Ul_L_Ui layout" {
    var lv: c.Ul_L_Ui = undefined;
    try testing.expectSize(c.Ul_L_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_L_Ui(), .{ .v1 = 26709, .v2 = 19269, .v3 = 24646 });
    try testing.expectOk(c.assert_ret_Ul_L_Ui());
    try testing.expectOk(c.send_Ul_L_Ui());
    try testing.expectOk(c.recv_Ul_L_Ui(.{ .v1 = 26709, .v2 = 19269, .v3 = 24646 }));
}
pub export fn zig_recv_Ul_L_Ui(lv: c.Ul_L_Ui) c_int {
    if (lv.v1 != 26709) return 1;
    if (lv.v2 != 19269) return 2;
    if (lv.v3 != 24646) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_Ui() c.Ul_L_Ui {
    return .{ .v1 = 26709, .v2 = 19269, .v3 = 24646 };
}

// From T_Snnn_xbb.c:12377:12397
// struct  Ul_L_Ul  {
//   __tsu64 v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Ul_L_Ul layout" {
    var lv: c.Ul_L_Ul = undefined;
    try testing.expectSize(c.Ul_L_Ul, 24);
    try testing.expectAlign(c.Ul_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_L_Ul(), .{ .v1 = 20313, .v2 = 27484, .v3 = 30103 });
    try testing.expectOk(c.assert_ret_Ul_L_Ul());
    try testing.expectOk(c.send_Ul_L_Ul());
    try testing.expectOk(c.recv_Ul_L_Ul(.{ .v1 = 20313, .v2 = 27484, .v3 = 30103 }));
}
pub export fn zig_recv_Ul_L_Ul(lv: c.Ul_L_Ul) c_int {
    if (lv.v1 != 20313) return 1;
    if (lv.v2 != 27484) return 2;
    if (lv.v3 != 30103) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_Ul() c.Ul_L_Ul {
    return .{ .v1 = 20313, .v2 = 27484, .v3 = 30103 };
}

// From T_Snnn_xbb.c:12402:12422
// struct  Ul_L_Us  {
//   __tsu64 v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Ul_L_Us layout" {
    var lv: c.Ul_L_Us = undefined;
    try testing.expectSize(c.Ul_L_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_Us C calls" {
    try testing.expectEqual(c.ret_Ul_L_Us(), .{ .v1 = 5364, .v2 = 21504, .v3 = 1770 });
    try testing.expectOk(c.assert_ret_Ul_L_Us());
    try testing.expectOk(c.send_Ul_L_Us());
    try testing.expectOk(c.recv_Ul_L_Us(.{ .v1 = 5364, .v2 = 21504, .v3 = 1770 }));
}
pub export fn zig_recv_Ul_L_Us(lv: c.Ul_L_Us) c_int {
    if (lv.v1 != 5364) return 1;
    if (lv.v2 != 21504) return 2;
    if (lv.v3 != 1770) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_Us() c.Ul_L_Us {
    return .{ .v1 = 5364, .v2 = 21504, .v3 = 1770 };
}

// From T_Snnn_xbb.c:12427:12447
// struct  Ul_L_Vp  {
//   __tsu64 v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Ul_L_Vp layout" {
    var lv: c.Ul_L_Vp = undefined;
    try testing.expectSize(c.Ul_L_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_L_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_L_Vp(), .{ .v1 = 4315, .v2 = 13921, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_L_Vp());
    try testing.expectOk(c.send_Ul_L_Vp());
    try testing.expectOk(c.recv_Ul_L_Vp(.{ .v1 = 4315, .v2 = 13921, .v3 = null }));
}
pub export fn zig_recv_Ul_L_Vp(lv: c.Ul_L_Vp) c_int {
    if (lv.v1 != 4315) return 1;
    if (lv.v2 != 13921) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_L_Vp() c.Ul_L_Vp {
    return .{ .v1 = 4315, .v2 = 13921, .v3 = null };
}

// From T_Snnn_xbb.c:12452:12470
// struct  Ul_S  {
//   __tsu64 v1;
//   short v2;
// };

test "Ul_S layout" {
    var lv: c.Ul_S = undefined;
    try testing.expectSize(c.Ul_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_S C calls" {
    try testing.expectEqual(c.ret_Ul_S(), .{ .v1 = 15495, .v2 = 24354 });
    try testing.expectOk(c.assert_ret_Ul_S());
    try testing.expectOk(c.send_Ul_S());
    try testing.expectOk(c.recv_Ul_S(.{ .v1 = 15495, .v2 = 24354 }));
}
pub export fn zig_recv_Ul_S(lv: c.Ul_S) c_int {
    if (lv.v1 != 15495) return 1;
    if (lv.v2 != 24354) return 2;
    return 0;
}
pub export fn zig_ret_Ul_S() c.Ul_S {
    return .{ .v1 = 15495, .v2 = 24354 };
}

// From T_Snnn_xbb.c:13199:13219
// struct  Ul_S_C  {
//   __tsu64 v1;
//   short v2;
//   char v3;
// };

test "Ul_S_C layout" {
    var lv: c.Ul_S_C = undefined;
    try testing.expectSize(c.Ul_S_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_S_C C calls" {
    try testing.expectEqual(c.ret_Ul_S_C(), .{ .v1 = 20311, .v2 = 15701, .v3 = 45 });
    try testing.expectOk(c.assert_ret_Ul_S_C());
    try testing.expectOk(c.send_Ul_S_C());
    try testing.expectOk(c.recv_Ul_S_C(.{ .v1 = 20311, .v2 = 15701, .v3 = 45 }));
}
pub export fn zig_recv_Ul_S_C(lv: c.Ul_S_C) c_int {
    if (lv.v1 != 20311) return 1;
    if (lv.v2 != 15701) return 2;
    if (lv.v3 != 45) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_C() c.Ul_S_C {
    return .{ .v1 = 20311, .v2 = 15701, .v3 = 45 };
}

// From T_Snnn_xbb.c:13224:13244
// struct  Ul_S_D  {
//   __tsu64 v1;
//   short v2;
//   double v3;
// };

test "Ul_S_D layout" {
    var lv: c.Ul_S_D = undefined;
    try testing.expectSize(c.Ul_S_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_S_D C calls" {
    try testing.expectEqual(c.ret_Ul_S_D(), .{ .v1 = 2529, .v2 = 28822, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Ul_S_D());
    try testing.expectOk(c.send_Ul_S_D());
    try testing.expectOk(c.recv_Ul_S_D(.{ .v1 = 2529, .v2 = 28822, .v3 = 0.875 }));
}
pub export fn zig_recv_Ul_S_D(lv: c.Ul_S_D) c_int {
    if (lv.v1 != 2529) return 1;
    if (lv.v2 != 28822) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_D() c.Ul_S_D {
    return .{ .v1 = 2529, .v2 = 28822, .v3 = 0.875 };
}

// From T_Snnn_xbb.c:13249:13269
// struct  Ul_S_F  {
//   __tsu64 v1;
//   short v2;
//   float v3;
// };

test "Ul_S_F layout" {
    var lv: c.Ul_S_F = undefined;
    try testing.expectSize(c.Ul_S_F, 16);
    try testing.expectAlign(c.Ul_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_S_F C calls" {
    try testing.expectEqual(c.ret_Ul_S_F(), .{ .v1 = 17877, .v2 = 24298, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Ul_S_F());
    try testing.expectOk(c.send_Ul_S_F());
    try testing.expectOk(c.recv_Ul_S_F(.{ .v1 = 17877, .v2 = 24298, .v3 = 0.5 }));
}
pub export fn zig_recv_Ul_S_F(lv: c.Ul_S_F) c_int {
    if (lv.v1 != 17877) return 1;
    if (lv.v2 != 24298) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_F() c.Ul_S_F {
    return .{ .v1 = 17877, .v2 = 24298, .v3 = 0.5 };
}

// From T_Snnn_xbb.c:13274:13294
// struct  Ul_S_I  {
//   __tsu64 v1;
//   short v2;
//   int v3;
// };

test "Ul_S_I layout" {
    var lv: c.Ul_S_I = undefined;
    try testing.expectSize(c.Ul_S_I, 16);
    try testing.expectAlign(c.Ul_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_S_I C calls" {
    try testing.expectEqual(c.ret_Ul_S_I(), .{ .v1 = 19761, .v2 = 8492, .v3 = 4769 });
    try testing.expectOk(c.assert_ret_Ul_S_I());
    try testing.expectOk(c.send_Ul_S_I());
    try testing.expectOk(c.recv_Ul_S_I(.{ .v1 = 19761, .v2 = 8492, .v3 = 4769 }));
}
pub export fn zig_recv_Ul_S_I(lv: c.Ul_S_I) c_int {
    if (lv.v1 != 19761) return 1;
    if (lv.v2 != 8492) return 2;
    if (lv.v3 != 4769) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_I() c.Ul_S_I {
    return .{ .v1 = 19761, .v2 = 8492, .v3 = 4769 };
}

// From T_Snnn_xbb.c:13299:13319
// struct  Ul_S_Ip  {
//   __tsu64 v1;
//   short v2;
//   int *v3;
// };

test "Ul_S_Ip layout" {
    var lv: c.Ul_S_Ip = undefined;
    try testing.expectSize(c.Ul_S_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_S_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_S_Ip(), .{ .v1 = 21285, .v2 = 6075, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_S_Ip());
    try testing.expectOk(c.send_Ul_S_Ip());
    try testing.expectOk(c.recv_Ul_S_Ip(.{ .v1 = 21285, .v2 = 6075, .v3 = null }));
}
pub export fn zig_recv_Ul_S_Ip(lv: c.Ul_S_Ip) c_int {
    if (lv.v1 != 21285) return 1;
    if (lv.v2 != 6075) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_Ip() c.Ul_S_Ip {
    return .{ .v1 = 21285, .v2 = 6075, .v3 = null };
}

// From T_Snnn_xbb.c:13324:13344
// struct  Ul_S_L  {
//   __tsu64 v1;
//   short v2;
//   __tsi64 v3;
// };

test "Ul_S_L layout" {
    var lv: c.Ul_S_L = undefined;
    try testing.expectSize(c.Ul_S_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_S_L C calls" {
    try testing.expectEqual(c.ret_Ul_S_L(), .{ .v1 = 4325, .v2 = 4313, .v3 = 14475 });
    try testing.expectOk(c.assert_ret_Ul_S_L());
    try testing.expectOk(c.send_Ul_S_L());
    try testing.expectOk(c.recv_Ul_S_L(.{ .v1 = 4325, .v2 = 4313, .v3 = 14475 }));
}
pub export fn zig_recv_Ul_S_L(lv: c.Ul_S_L) c_int {
    if (lv.v1 != 4325) return 1;
    if (lv.v2 != 4313) return 2;
    if (lv.v3 != 14475) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_L() c.Ul_S_L {
    return .{ .v1 = 4325, .v2 = 4313, .v3 = 14475 };
}

// From T_Snnn_xbb.c:13349:13369
// struct  Ul_S_S  {
//   __tsu64 v1;
//   short v2;
//   short v3;
// };

test "Ul_S_S layout" {
    var lv: c.Ul_S_S = undefined;
    try testing.expectSize(c.Ul_S_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_S_S C calls" {
    try testing.expectEqual(c.ret_Ul_S_S(), .{ .v1 = 28758, .v2 = 1479, .v3 = 15299 });
    try testing.expectOk(c.assert_ret_Ul_S_S());
    try testing.expectOk(c.send_Ul_S_S());
    try testing.expectOk(c.recv_Ul_S_S(.{ .v1 = 28758, .v2 = 1479, .v3 = 15299 }));
}
pub export fn zig_recv_Ul_S_S(lv: c.Ul_S_S) c_int {
    if (lv.v1 != 28758) return 1;
    if (lv.v2 != 1479) return 2;
    if (lv.v3 != 15299) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_S() c.Ul_S_S {
    return .{ .v1 = 28758, .v2 = 1479, .v3 = 15299 };
}

// From T_Snnn_xbb.c:13374:13394
// struct  Ul_S_Uc  {
//   __tsu64 v1;
//   short v2;
//   unsigned char v3;
// };

test "Ul_S_Uc layout" {
    var lv: c.Ul_S_Uc = undefined;
    try testing.expectSize(c.Ul_S_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_S_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_S_Uc(), .{ .v1 = 23482, .v2 = 14404, .v3 = 62 });
    try testing.expectOk(c.assert_ret_Ul_S_Uc());
    try testing.expectOk(c.send_Ul_S_Uc());
    try testing.expectOk(c.recv_Ul_S_Uc(.{ .v1 = 23482, .v2 = 14404, .v3 = 62 }));
}
pub export fn zig_recv_Ul_S_Uc(lv: c.Ul_S_Uc) c_int {
    if (lv.v1 != 23482) return 1;
    if (lv.v2 != 14404) return 2;
    if (lv.v3 != 62) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_Uc() c.Ul_S_Uc {
    return .{ .v1 = 23482, .v2 = 14404, .v3 = 62 };
}

// From T_Snnn_xbb.c:13399:13419
// struct  Ul_S_Ui  {
//   __tsu64 v1;
//   short v2;
//   unsigned int v3;
// };

test "Ul_S_Ui layout" {
    var lv: c.Ul_S_Ui = undefined;
    try testing.expectSize(c.Ul_S_Ui, 16);
    try testing.expectAlign(c.Ul_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_S_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_S_Ui(), .{ .v1 = 14460, .v2 = 21505, .v3 = 10097 });
    try testing.expectOk(c.assert_ret_Ul_S_Ui());
    try testing.expectOk(c.send_Ul_S_Ui());
    try testing.expectOk(c.recv_Ul_S_Ui(.{ .v1 = 14460, .v2 = 21505, .v3 = 10097 }));
}
pub export fn zig_recv_Ul_S_Ui(lv: c.Ul_S_Ui) c_int {
    if (lv.v1 != 14460) return 1;
    if (lv.v2 != 21505) return 2;
    if (lv.v3 != 10097) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_Ui() c.Ul_S_Ui {
    return .{ .v1 = 14460, .v2 = 21505, .v3 = 10097 };
}

// From T_Snnn_xbb.c:13424:13444
// struct  Ul_S_Ul  {
//   __tsu64 v1;
//   short v2;
//   __tsu64 v3;
// };

test "Ul_S_Ul layout" {
    var lv: c.Ul_S_Ul = undefined;
    try testing.expectSize(c.Ul_S_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_S_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_S_Ul(), .{ .v1 = 1815, .v2 = 29350, .v3 = 3622 });
    try testing.expectOk(c.assert_ret_Ul_S_Ul());
    try testing.expectOk(c.send_Ul_S_Ul());
    try testing.expectOk(c.recv_Ul_S_Ul(.{ .v1 = 1815, .v2 = 29350, .v3 = 3622 }));
}
pub export fn zig_recv_Ul_S_Ul(lv: c.Ul_S_Ul) c_int {
    if (lv.v1 != 1815) return 1;
    if (lv.v2 != 29350) return 2;
    if (lv.v3 != 3622) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_Ul() c.Ul_S_Ul {
    return .{ .v1 = 1815, .v2 = 29350, .v3 = 3622 };
}

// From T_Snnn_xbb.c:13449:13469
// struct  Ul_S_Us  {
//   __tsu64 v1;
//   short v2;
//   unsigned short v3;
// };

test "Ul_S_Us layout" {
    var lv: c.Ul_S_Us = undefined;
    try testing.expectSize(c.Ul_S_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_S_Us C calls" {
    try testing.expectEqual(c.ret_Ul_S_Us(), .{ .v1 = 25777, .v2 = 20180, .v3 = 7276 });
    try testing.expectOk(c.assert_ret_Ul_S_Us());
    try testing.expectOk(c.send_Ul_S_Us());
    try testing.expectOk(c.recv_Ul_S_Us(.{ .v1 = 25777, .v2 = 20180, .v3 = 7276 }));
}
pub export fn zig_recv_Ul_S_Us(lv: c.Ul_S_Us) c_int {
    if (lv.v1 != 25777) return 1;
    if (lv.v2 != 20180) return 2;
    if (lv.v3 != 7276) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_Us() c.Ul_S_Us {
    return .{ .v1 = 25777, .v2 = 20180, .v3 = 7276 };
}

// From T_Snnn_xbb.c:13474:13494
// struct  Ul_S_Vp  {
//   __tsu64 v1;
//   short v2;
//   void *v3;
// };

test "Ul_S_Vp layout" {
    var lv: c.Ul_S_Vp = undefined;
    try testing.expectSize(c.Ul_S_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_S_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_S_Vp(), .{ .v1 = 28974, .v2 = 28956, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_S_Vp());
    try testing.expectOk(c.send_Ul_S_Vp());
    try testing.expectOk(c.recv_Ul_S_Vp(.{ .v1 = 28974, .v2 = 28956, .v3 = null }));
}
pub export fn zig_recv_Ul_S_Vp(lv: c.Ul_S_Vp) c_int {
    if (lv.v1 != 28974) return 1;
    if (lv.v2 != 28956) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_S_Vp() c.Ul_S_Vp {
    return .{ .v1 = 28974, .v2 = 28956, .v3 = null };
}

// From T_Snnn_xbb.c:13499:13517
// struct  Ul_Uc  {
//   __tsu64 v1;
//   unsigned char v2;
// };

test "Ul_Uc layout" {
    var lv: c.Ul_Uc = undefined;
    try testing.expectSize(c.Ul_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_Uc(), .{ .v1 = 9532, .v2 = 30 });
    try testing.expectOk(c.assert_ret_Ul_Uc());
    try testing.expectOk(c.send_Ul_Uc());
    try testing.expectOk(c.recv_Ul_Uc(.{ .v1 = 9532, .v2 = 30 }));
}
pub export fn zig_recv_Ul_Uc(lv: c.Ul_Uc) c_int {
    if (lv.v1 != 9532) return 1;
    if (lv.v2 != 30) return 2;
    return 0;
}
pub export fn zig_ret_Ul_Uc() c.Ul_Uc {
    return .{ .v1 = 9532, .v2 = 30 };
}

// From T_Snnn_xbb.c:14246:14266
// struct  Ul_Uc_C  {
//   __tsu64 v1;
//   unsigned char v2;
//   char v3;
// };

test "Ul_Uc_C layout" {
    var lv: c.Ul_Uc_C = undefined;
    try testing.expectSize(c.Ul_Uc_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "Ul_Uc_C C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_C(), .{ .v1 = 28644, .v2 = 23, .v3 = 64 });
    try testing.expectOk(c.assert_ret_Ul_Uc_C());
    try testing.expectOk(c.send_Ul_Uc_C());
    try testing.expectOk(c.recv_Ul_Uc_C(.{ .v1 = 28644, .v2 = 23, .v3 = 64 }));
}
pub export fn zig_recv_Ul_Uc_C(lv: c.Ul_Uc_C) c_int {
    if (lv.v1 != 28644) return 1;
    if (lv.v2 != 23) return 2;
    if (lv.v3 != 64) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_C() c.Ul_Uc_C {
    return .{ .v1 = 28644, .v2 = 23, .v3 = 64 };
}

// From T_Snnn_xbb.c:14271:14291
// struct  Ul_Uc_D  {
//   __tsu64 v1;
//   unsigned char v2;
//   double v3;
// };

test "Ul_Uc_D layout" {
    var lv: c.Ul_Uc_D = undefined;
    try testing.expectSize(c.Ul_Uc_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Uc_D C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_D(), .{ .v1 = 27342, .v2 = 53, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Ul_Uc_D());
    try testing.expectOk(c.send_Ul_Uc_D());
    try testing.expectOk(c.recv_Ul_Uc_D(.{ .v1 = 27342, .v2 = 53, .v3 = 7.0 }));
}
pub export fn zig_recv_Ul_Uc_D(lv: c.Ul_Uc_D) c_int {
    if (lv.v1 != 27342) return 1;
    if (lv.v2 != 53) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_D() c.Ul_Uc_D {
    return .{ .v1 = 27342, .v2 = 53, .v3 = 7.0 };
}

// From T_Snnn_xbb.c:14296:14316
// struct  Ul_Uc_F  {
//   __tsu64 v1;
//   unsigned char v2;
//   float v3;
// };

test "Ul_Uc_F layout" {
    var lv: c.Ul_Uc_F = undefined;
    try testing.expectSize(c.Ul_Uc_F, 16);
    try testing.expectAlign(c.Ul_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Uc_F C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_F(), .{ .v1 = 357, .v2 = 83, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Ul_Uc_F());
    try testing.expectOk(c.send_Ul_Uc_F());
    try testing.expectOk(c.recv_Ul_Uc_F(.{ .v1 = 357, .v2 = 83, .v3 = 1.0 }));
}
pub export fn zig_recv_Ul_Uc_F(lv: c.Ul_Uc_F) c_int {
    if (lv.v1 != 357) return 1;
    if (lv.v2 != 83) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_F() c.Ul_Uc_F {
    return .{ .v1 = 357, .v2 = 83, .v3 = 1.0 };
}

// From T_Snnn_xbb.c:14321:14341
// struct  Ul_Uc_I  {
//   __tsu64 v1;
//   unsigned char v2;
//   int v3;
// };

test "Ul_Uc_I layout" {
    var lv: c.Ul_Uc_I = undefined;
    try testing.expectSize(c.Ul_Uc_I, 16);
    try testing.expectAlign(c.Ul_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Uc_I C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_I(), .{ .v1 = 9936, .v2 = 95, .v3 = 31107 });
    try testing.expectOk(c.assert_ret_Ul_Uc_I());
    try testing.expectOk(c.send_Ul_Uc_I());
    try testing.expectOk(c.recv_Ul_Uc_I(.{ .v1 = 9936, .v2 = 95, .v3 = 31107 }));
}
pub export fn zig_recv_Ul_Uc_I(lv: c.Ul_Uc_I) c_int {
    if (lv.v1 != 9936) return 1;
    if (lv.v2 != 95) return 2;
    if (lv.v3 != 31107) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_I() c.Ul_Uc_I {
    return .{ .v1 = 9936, .v2 = 95, .v3 = 31107 };
}

// From T_Snnn_xbb.c:14346:14366
// struct  Ul_Uc_Ip  {
//   __tsu64 v1;
//   unsigned char v2;
//   int *v3;
// };

test "Ul_Uc_Ip layout" {
    var lv: c.Ul_Uc_Ip = undefined;
    try testing.expectSize(c.Ul_Uc_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Uc_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_Ip(), .{ .v1 = 28094, .v2 = 9, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Uc_Ip());
    try testing.expectOk(c.send_Ul_Uc_Ip());
    try testing.expectOk(c.recv_Ul_Uc_Ip(.{ .v1 = 28094, .v2 = 9, .v3 = null }));
}
pub export fn zig_recv_Ul_Uc_Ip(lv: c.Ul_Uc_Ip) c_int {
    if (lv.v1 != 28094) return 1;
    if (lv.v2 != 9) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_Ip() c.Ul_Uc_Ip {
    return .{ .v1 = 28094, .v2 = 9, .v3 = null };
}

// From T_Snnn_xbb.c:14371:14391
// struct  Ul_Uc_L  {
//   __tsu64 v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Ul_Uc_L layout" {
    var lv: c.Ul_Uc_L = undefined;
    try testing.expectSize(c.Ul_Uc_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Uc_L C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_L(), .{ .v1 = 15634, .v2 = 17, .v3 = 1241 });
    try testing.expectOk(c.assert_ret_Ul_Uc_L());
    try testing.expectOk(c.send_Ul_Uc_L());
    try testing.expectOk(c.recv_Ul_Uc_L(.{ .v1 = 15634, .v2 = 17, .v3 = 1241 }));
}
pub export fn zig_recv_Ul_Uc_L(lv: c.Ul_Uc_L) c_int {
    if (lv.v1 != 15634) return 1;
    if (lv.v2 != 17) return 2;
    if (lv.v3 != 1241) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_L() c.Ul_Uc_L {
    return .{ .v1 = 15634, .v2 = 17, .v3 = 1241 };
}

// From T_Snnn_xbb.c:14396:14416
// struct  Ul_Uc_S  {
//   __tsu64 v1;
//   unsigned char v2;
//   short v3;
// };

test "Ul_Uc_S layout" {
    var lv: c.Ul_Uc_S = undefined;
    try testing.expectSize(c.Ul_Uc_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_Uc_S C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_S(), .{ .v1 = 30415, .v2 = 26, .v3 = 12477 });
    try testing.expectOk(c.assert_ret_Ul_Uc_S());
    try testing.expectOk(c.send_Ul_Uc_S());
    try testing.expectOk(c.recv_Ul_Uc_S(.{ .v1 = 30415, .v2 = 26, .v3 = 12477 }));
}
pub export fn zig_recv_Ul_Uc_S(lv: c.Ul_Uc_S) c_int {
    if (lv.v1 != 30415) return 1;
    if (lv.v2 != 26) return 2;
    if (lv.v3 != 12477) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_S() c.Ul_Uc_S {
    return .{ .v1 = 30415, .v2 = 26, .v3 = 12477 };
}

// From T_Snnn_xbb.c:14421:14441
// struct  Ul_Uc_Uc  {
//   __tsu64 v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Ul_Uc_Uc layout" {
    var lv: c.Ul_Uc_Uc = undefined;
    try testing.expectSize(c.Ul_Uc_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}
test "Ul_Uc_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_Uc(), .{ .v1 = 17391, .v2 = 91, .v3 = 22 });
    try testing.expectOk(c.assert_ret_Ul_Uc_Uc());
    try testing.expectOk(c.send_Ul_Uc_Uc());
    try testing.expectOk(c.recv_Ul_Uc_Uc(.{ .v1 = 17391, .v2 = 91, .v3 = 22 }));
}
pub export fn zig_recv_Ul_Uc_Uc(lv: c.Ul_Uc_Uc) c_int {
    if (lv.v1 != 17391) return 1;
    if (lv.v2 != 91) return 2;
    if (lv.v3 != 22) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_Uc() c.Ul_Uc_Uc {
    return .{ .v1 = 17391, .v2 = 91, .v3 = 22 };
}

// From T_Snnn_xbb.c:14446:14466
// struct  Ul_Uc_Ui  {
//   __tsu64 v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Ul_Uc_Ui layout" {
    var lv: c.Ul_Uc_Ui = undefined;
    try testing.expectSize(c.Ul_Uc_Ui, 16);
    try testing.expectAlign(c.Ul_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Uc_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_Ui(), .{ .v1 = 20042, .v2 = 52, .v3 = 19522 });
    try testing.expectOk(c.assert_ret_Ul_Uc_Ui());
    try testing.expectOk(c.send_Ul_Uc_Ui());
    try testing.expectOk(c.recv_Ul_Uc_Ui(.{ .v1 = 20042, .v2 = 52, .v3 = 19522 }));
}
pub export fn zig_recv_Ul_Uc_Ui(lv: c.Ul_Uc_Ui) c_int {
    if (lv.v1 != 20042) return 1;
    if (lv.v2 != 52) return 2;
    if (lv.v3 != 19522) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_Ui() c.Ul_Uc_Ui {
    return .{ .v1 = 20042, .v2 = 52, .v3 = 19522 };
}

// From T_Snnn_xbb.c:14471:14491
// struct  Ul_Uc_Ul  {
//   __tsu64 v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Ul_Uc_Ul layout" {
    var lv: c.Ul_Uc_Ul = undefined;
    try testing.expectSize(c.Ul_Uc_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Uc_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_Ul(), .{ .v1 = 18223, .v2 = 65, .v3 = 26245 });
    try testing.expectOk(c.assert_ret_Ul_Uc_Ul());
    try testing.expectOk(c.send_Ul_Uc_Ul());
    try testing.expectOk(c.recv_Ul_Uc_Ul(.{ .v1 = 18223, .v2 = 65, .v3 = 26245 }));
}
pub export fn zig_recv_Ul_Uc_Ul(lv: c.Ul_Uc_Ul) c_int {
    if (lv.v1 != 18223) return 1;
    if (lv.v2 != 65) return 2;
    if (lv.v3 != 26245) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_Ul() c.Ul_Uc_Ul {
    return .{ .v1 = 18223, .v2 = 65, .v3 = 26245 };
}

// From T_Snnn_xbb.c:14496:14516
// struct  Ul_Uc_Us  {
//   __tsu64 v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Ul_Uc_Us layout" {
    var lv: c.Ul_Uc_Us = undefined;
    try testing.expectSize(c.Ul_Uc_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_Uc_Us C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_Us(), .{ .v1 = 13507, .v2 = 81, .v3 = 16987 });
    try testing.expectOk(c.assert_ret_Ul_Uc_Us());
    try testing.expectOk(c.send_Ul_Uc_Us());
    try testing.expectOk(c.recv_Ul_Uc_Us(.{ .v1 = 13507, .v2 = 81, .v3 = 16987 }));
}
pub export fn zig_recv_Ul_Uc_Us(lv: c.Ul_Uc_Us) c_int {
    if (lv.v1 != 13507) return 1;
    if (lv.v2 != 81) return 2;
    if (lv.v3 != 16987) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_Us() c.Ul_Uc_Us {
    return .{ .v1 = 13507, .v2 = 81, .v3 = 16987 };
}

// From T_Snnn_xbb.c:14521:14541
// struct  Ul_Uc_Vp  {
//   __tsu64 v1;
//   unsigned char v2;
//   void *v3;
// };

test "Ul_Uc_Vp layout" {
    var lv: c.Ul_Uc_Vp = undefined;
    try testing.expectSize(c.Ul_Uc_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Uc_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_Uc_Vp(), .{ .v1 = 4951, .v2 = 65, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Uc_Vp());
    try testing.expectOk(c.send_Ul_Uc_Vp());
    try testing.expectOk(c.recv_Ul_Uc_Vp(.{ .v1 = 4951, .v2 = 65, .v3 = null }));
}
pub export fn zig_recv_Ul_Uc_Vp(lv: c.Ul_Uc_Vp) c_int {
    if (lv.v1 != 4951) return 1;
    if (lv.v2 != 65) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Uc_Vp() c.Ul_Uc_Vp {
    return .{ .v1 = 4951, .v2 = 65, .v3 = null };
}

// From T_Snnn_xbb.c:14546:14564
// struct  Ul_Ui  {
//   __tsu64 v1;
//   unsigned int v2;
// };

test "Ul_Ui layout" {
    var lv: c.Ul_Ui = undefined;
    try testing.expectSize(c.Ul_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_Ui(), .{ .v1 = 7789, .v2 = 28185 });
    try testing.expectOk(c.assert_ret_Ul_Ui());
    try testing.expectOk(c.send_Ul_Ui());
    try testing.expectOk(c.recv_Ul_Ui(.{ .v1 = 7789, .v2 = 28185 }));
}
pub export fn zig_recv_Ul_Ui(lv: c.Ul_Ui) c_int {
    if (lv.v1 != 7789) return 1;
    if (lv.v2 != 28185) return 2;
    return 0;
}
pub export fn zig_ret_Ul_Ui() c.Ul_Ui {
    return .{ .v1 = 7789, .v2 = 28185 };
}

// From T_Snnn_xbb.c:15293:15313
// struct  Ul_Ui_C  {
//   __tsu64 v1;
//   unsigned int v2;
//   char v3;
// };

test "Ul_Ui_C layout" {
    var lv: c.Ul_Ui_C = undefined;
    try testing.expectSize(c.Ul_Ui_C, 16);
    try testing.expectAlign(c.Ul_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Ui_C C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_C(), .{ .v1 = 3948, .v2 = 28420, .v3 = 79 });
    try testing.expectOk(c.assert_ret_Ul_Ui_C());
    try testing.expectOk(c.send_Ul_Ui_C());
    try testing.expectOk(c.recv_Ul_Ui_C(.{ .v1 = 3948, .v2 = 28420, .v3 = 79 }));
}
pub export fn zig_recv_Ul_Ui_C(lv: c.Ul_Ui_C) c_int {
    if (lv.v1 != 3948) return 1;
    if (lv.v2 != 28420) return 2;
    if (lv.v3 != 79) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_C() c.Ul_Ui_C {
    return .{ .v1 = 3948, .v2 = 28420, .v3 = 79 };
}

// From T_Snnn_xbb.c:15318:15338
// struct  Ul_Ui_D  {
//   __tsu64 v1;
//   unsigned int v2;
//   double v3;
// };

test "Ul_Ui_D layout" {
    var lv: c.Ul_Ui_D = undefined;
    try testing.expectSize(c.Ul_Ui_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ui_D C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_D(), .{ .v1 = 1908, .v2 = 4685, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Ul_Ui_D());
    try testing.expectOk(c.send_Ul_Ui_D());
    try testing.expectOk(c.recv_Ul_Ui_D(.{ .v1 = 1908, .v2 = 4685, .v3 = 7.0 }));
}
pub export fn zig_recv_Ul_Ui_D(lv: c.Ul_Ui_D) c_int {
    if (lv.v1 != 1908) return 1;
    if (lv.v2 != 4685) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_D() c.Ul_Ui_D {
    return .{ .v1 = 1908, .v2 = 4685, .v3 = 7.0 };
}

// From T_Snnn_xbb.c:15343:15363
// struct  Ul_Ui_F  {
//   __tsu64 v1;
//   unsigned int v2;
//   float v3;
// };

test "Ul_Ui_F layout" {
    var lv: c.Ul_Ui_F = undefined;
    try testing.expectSize(c.Ul_Ui_F, 16);
    try testing.expectAlign(c.Ul_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Ui_F C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_F(), .{ .v1 = 24351, .v2 = 12662, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Ul_Ui_F());
    try testing.expectOk(c.send_Ul_Ui_F());
    try testing.expectOk(c.recv_Ul_Ui_F(.{ .v1 = 24351, .v2 = 12662, .v3 = 4.5 }));
}
pub export fn zig_recv_Ul_Ui_F(lv: c.Ul_Ui_F) c_int {
    if (lv.v1 != 24351) return 1;
    if (lv.v2 != 12662) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_F() c.Ul_Ui_F {
    return .{ .v1 = 24351, .v2 = 12662, .v3 = 4.5 };
}

// From T_Snnn_xbb.c:15368:15388
// struct  Ul_Ui_I  {
//   __tsu64 v1;
//   unsigned int v2;
//   int v3;
// };

test "Ul_Ui_I layout" {
    var lv: c.Ul_Ui_I = undefined;
    try testing.expectSize(c.Ul_Ui_I, 16);
    try testing.expectAlign(c.Ul_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Ui_I C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_I(), .{ .v1 = 2857, .v2 = 5187, .v3 = 24559 });
    try testing.expectOk(c.assert_ret_Ul_Ui_I());
    try testing.expectOk(c.send_Ul_Ui_I());
    try testing.expectOk(c.recv_Ul_Ui_I(.{ .v1 = 2857, .v2 = 5187, .v3 = 24559 }));
}
pub export fn zig_recv_Ul_Ui_I(lv: c.Ul_Ui_I) c_int {
    if (lv.v1 != 2857) return 1;
    if (lv.v2 != 5187) return 2;
    if (lv.v3 != 24559) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_I() c.Ul_Ui_I {
    return .{ .v1 = 2857, .v2 = 5187, .v3 = 24559 };
}

// From T_Snnn_xbb.c:15393:15413
// struct  Ul_Ui_Ip  {
//   __tsu64 v1;
//   unsigned int v2;
//   int *v3;
// };

test "Ul_Ui_Ip layout" {
    var lv: c.Ul_Ui_Ip = undefined;
    try testing.expectSize(c.Ul_Ui_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ui_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_Ip(), .{ .v1 = 2720, .v2 = 966, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Ui_Ip());
    try testing.expectOk(c.send_Ul_Ui_Ip());
    try testing.expectOk(c.recv_Ul_Ui_Ip(.{ .v1 = 2720, .v2 = 966, .v3 = null }));
}
pub export fn zig_recv_Ul_Ui_Ip(lv: c.Ul_Ui_Ip) c_int {
    if (lv.v1 != 2720) return 1;
    if (lv.v2 != 966) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_Ip() c.Ul_Ui_Ip {
    return .{ .v1 = 2720, .v2 = 966, .v3 = null };
}

// From T_Snnn_xbb.c:15418:15438
// struct  Ul_Ui_L  {
//   __tsu64 v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Ul_Ui_L layout" {
    var lv: c.Ul_Ui_L = undefined;
    try testing.expectSize(c.Ul_Ui_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ui_L C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_L(), .{ .v1 = 6968, .v2 = 31951, .v3 = 7933 });
    try testing.expectOk(c.assert_ret_Ul_Ui_L());
    try testing.expectOk(c.send_Ul_Ui_L());
    try testing.expectOk(c.recv_Ul_Ui_L(.{ .v1 = 6968, .v2 = 31951, .v3 = 7933 }));
}
pub export fn zig_recv_Ul_Ui_L(lv: c.Ul_Ui_L) c_int {
    if (lv.v1 != 6968) return 1;
    if (lv.v2 != 31951) return 2;
    if (lv.v3 != 7933) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_L() c.Ul_Ui_L {
    return .{ .v1 = 6968, .v2 = 31951, .v3 = 7933 };
}

// From T_Snnn_xbb.c:15443:15463
// struct  Ul_Ui_S  {
//   __tsu64 v1;
//   unsigned int v2;
//   short v3;
// };

test "Ul_Ui_S layout" {
    var lv: c.Ul_Ui_S = undefined;
    try testing.expectSize(c.Ul_Ui_S, 16);
    try testing.expectAlign(c.Ul_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Ui_S C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_S(), .{ .v1 = 28303, .v2 = 27593, .v3 = 32181 });
    try testing.expectOk(c.assert_ret_Ul_Ui_S());
    try testing.expectOk(c.send_Ul_Ui_S());
    try testing.expectOk(c.recv_Ul_Ui_S(.{ .v1 = 28303, .v2 = 27593, .v3 = 32181 }));
}
pub export fn zig_recv_Ul_Ui_S(lv: c.Ul_Ui_S) c_int {
    if (lv.v1 != 28303) return 1;
    if (lv.v2 != 27593) return 2;
    if (lv.v3 != 32181) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_S() c.Ul_Ui_S {
    return .{ .v1 = 28303, .v2 = 27593, .v3 = 32181 };
}

// From T_Snnn_xbb.c:15468:15488
// struct  Ul_Ui_Uc  {
//   __tsu64 v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Ul_Ui_Uc layout" {
    var lv: c.Ul_Ui_Uc = undefined;
    try testing.expectSize(c.Ul_Ui_Uc, 16);
    try testing.expectAlign(c.Ul_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Ui_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_Uc(), .{ .v1 = 2033, .v2 = 2860, .v3 = 81 });
    try testing.expectOk(c.assert_ret_Ul_Ui_Uc());
    try testing.expectOk(c.send_Ul_Ui_Uc());
    try testing.expectOk(c.recv_Ul_Ui_Uc(.{ .v1 = 2033, .v2 = 2860, .v3 = 81 }));
}
pub export fn zig_recv_Ul_Ui_Uc(lv: c.Ul_Ui_Uc) c_int {
    if (lv.v1 != 2033) return 1;
    if (lv.v2 != 2860) return 2;
    if (lv.v3 != 81) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_Uc() c.Ul_Ui_Uc {
    return .{ .v1 = 2033, .v2 = 2860, .v3 = 81 };
}

// From T_Snnn_xbb.c:15493:15513
// struct  Ul_Ui_Ui  {
//   __tsu64 v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Ul_Ui_Ui layout" {
    var lv: c.Ul_Ui_Ui = undefined;
    try testing.expectSize(c.Ul_Ui_Ui, 16);
    try testing.expectAlign(c.Ul_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Ui_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_Ui(), .{ .v1 = 3618, .v2 = 21646, .v3 = 30807 });
    try testing.expectOk(c.assert_ret_Ul_Ui_Ui());
    try testing.expectOk(c.send_Ul_Ui_Ui());
    try testing.expectOk(c.recv_Ul_Ui_Ui(.{ .v1 = 3618, .v2 = 21646, .v3 = 30807 }));
}
pub export fn zig_recv_Ul_Ui_Ui(lv: c.Ul_Ui_Ui) c_int {
    if (lv.v1 != 3618) return 1;
    if (lv.v2 != 21646) return 2;
    if (lv.v3 != 30807) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_Ui() c.Ul_Ui_Ui {
    return .{ .v1 = 3618, .v2 = 21646, .v3 = 30807 };
}

// From T_Snnn_xbb.c:15518:15538
// struct  Ul_Ui_Ul  {
//   __tsu64 v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Ul_Ui_Ul layout" {
    var lv: c.Ul_Ui_Ul = undefined;
    try testing.expectSize(c.Ul_Ui_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ui_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_Ul(), .{ .v1 = 20561, .v2 = 27761, .v3 = 14975 });
    try testing.expectOk(c.assert_ret_Ul_Ui_Ul());
    try testing.expectOk(c.send_Ul_Ui_Ul());
    try testing.expectOk(c.recv_Ul_Ui_Ul(.{ .v1 = 20561, .v2 = 27761, .v3 = 14975 }));
}
pub export fn zig_recv_Ul_Ui_Ul(lv: c.Ul_Ui_Ul) c_int {
    if (lv.v1 != 20561) return 1;
    if (lv.v2 != 27761) return 2;
    if (lv.v3 != 14975) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_Ul() c.Ul_Ui_Ul {
    return .{ .v1 = 20561, .v2 = 27761, .v3 = 14975 };
}

// From T_Snnn_xbb.c:15543:15563
// struct  Ul_Ui_Us  {
//   __tsu64 v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Ul_Ui_Us layout" {
    var lv: c.Ul_Ui_Us = undefined;
    try testing.expectSize(c.Ul_Ui_Us, 16);
    try testing.expectAlign(c.Ul_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Ui_Us C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_Us(), .{ .v1 = 32483, .v2 = 13395, .v3 = 8916 });
    try testing.expectOk(c.assert_ret_Ul_Ui_Us());
    try testing.expectOk(c.send_Ul_Ui_Us());
    try testing.expectOk(c.recv_Ul_Ui_Us(.{ .v1 = 32483, .v2 = 13395, .v3 = 8916 }));
}
pub export fn zig_recv_Ul_Ui_Us(lv: c.Ul_Ui_Us) c_int {
    if (lv.v1 != 32483) return 1;
    if (lv.v2 != 13395) return 2;
    if (lv.v3 != 8916) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_Us() c.Ul_Ui_Us {
    return .{ .v1 = 32483, .v2 = 13395, .v3 = 8916 };
}

// From T_Snnn_xbb.c:15568:15588
// struct  Ul_Ui_Vp  {
//   __tsu64 v1;
//   unsigned int v2;
//   void *v3;
// };

test "Ul_Ui_Vp layout" {
    var lv: c.Ul_Ui_Vp = undefined;
    try testing.expectSize(c.Ul_Ui_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Ui_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_Ui_Vp(), .{ .v1 = 21478, .v2 = 4637, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Ui_Vp());
    try testing.expectOk(c.send_Ul_Ui_Vp());
    try testing.expectOk(c.recv_Ul_Ui_Vp(.{ .v1 = 21478, .v2 = 4637, .v3 = null }));
}
pub export fn zig_recv_Ul_Ui_Vp(lv: c.Ul_Ui_Vp) c_int {
    if (lv.v1 != 21478) return 1;
    if (lv.v2 != 4637) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ui_Vp() c.Ul_Ui_Vp {
    return .{ .v1 = 21478, .v2 = 4637, .v3 = null };
}

// From T_Snnn_xbb.c:15593:15611
// struct  Ul_Ul  {
//   __tsu64 v1;
//   __tsu64 v2;
// };

test "Ul_Ul layout" {
    var lv: c.Ul_Ul = undefined;
    try testing.expectSize(c.Ul_Ul, 16);
    try testing.expectAlign(c.Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_Ul(), .{ .v1 = 21329, .v2 = 8885 });
    try testing.expectOk(c.assert_ret_Ul_Ul());
    try testing.expectOk(c.send_Ul_Ul());
    try testing.expectOk(c.recv_Ul_Ul(.{ .v1 = 21329, .v2 = 8885 }));
}
pub export fn zig_recv_Ul_Ul(lv: c.Ul_Ul) c_int {
    if (lv.v1 != 21329) return 1;
    if (lv.v2 != 8885) return 2;
    return 0;
}
pub export fn zig_ret_Ul_Ul() c.Ul_Ul {
    return .{ .v1 = 21329, .v2 = 8885 };
}

// From T_Snnn_xbb.c:16340:16360
// struct  Ul_Ul_C  {
//   __tsu64 v1;
//   __tsu64 v2;
//   char v3;
// };

test "Ul_Ul_C layout" {
    var lv: c.Ul_Ul_C = undefined;
    try testing.expectSize(c.Ul_Ul_C, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_C C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_C(), .{ .v1 = 24860, .v2 = 9133, .v3 = 90 });
    try testing.expectOk(c.assert_ret_Ul_Ul_C());
    try testing.expectOk(c.send_Ul_Ul_C());
    try testing.expectOk(c.recv_Ul_Ul_C(.{ .v1 = 24860, .v2 = 9133, .v3 = 90 }));
}
pub export fn zig_recv_Ul_Ul_C(lv: c.Ul_Ul_C) c_int {
    if (lv.v1 != 24860) return 1;
    if (lv.v2 != 9133) return 2;
    if (lv.v3 != 90) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_C() c.Ul_Ul_C {
    return .{ .v1 = 24860, .v2 = 9133, .v3 = 90 };
}

// From T_Snnn_xbb.c:16365:16385
// struct  Ul_Ul_D  {
//   __tsu64 v1;
//   __tsu64 v2;
//   double v3;
// };

test "Ul_Ul_D layout" {
    var lv: c.Ul_Ul_D = undefined;
    try testing.expectSize(c.Ul_Ul_D, 24);
    try testing.expectAlign(c.Ul_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_D C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_D(), .{ .v1 = 16601, .v2 = 13026, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Ul_Ul_D());
    try testing.expectOk(c.send_Ul_Ul_D());
    try testing.expectOk(c.recv_Ul_Ul_D(.{ .v1 = 16601, .v2 = 13026, .v3 = -0.25 }));
}
pub export fn zig_recv_Ul_Ul_D(lv: c.Ul_Ul_D) c_int {
    if (lv.v1 != 16601) return 1;
    if (lv.v2 != 13026) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_D() c.Ul_Ul_D {
    return .{ .v1 = 16601, .v2 = 13026, .v3 = -0.25 };
}

// From T_Snnn_xbb.c:16390:16410
// struct  Ul_Ul_F  {
//   __tsu64 v1;
//   __tsu64 v2;
//   float v3;
// };

test "Ul_Ul_F layout" {
    var lv: c.Ul_Ul_F = undefined;
    try testing.expectSize(c.Ul_Ul_F, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_F C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_F(), .{ .v1 = 30369, .v2 = 8873, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Ul_Ul_F());
    try testing.expectOk(c.send_Ul_Ul_F());
    try testing.expectOk(c.recv_Ul_Ul_F(.{ .v1 = 30369, .v2 = 8873, .v3 = -0.25 }));
}
pub export fn zig_recv_Ul_Ul_F(lv: c.Ul_Ul_F) c_int {
    if (lv.v1 != 30369) return 1;
    if (lv.v2 != 8873) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_F() c.Ul_Ul_F {
    return .{ .v1 = 30369, .v2 = 8873, .v3 = -0.25 };
}

// From T_Snnn_xbb.c:16415:16435
// struct  Ul_Ul_I  {
//   __tsu64 v1;
//   __tsu64 v2;
//   int v3;
// };

test "Ul_Ul_I layout" {
    var lv: c.Ul_Ul_I = undefined;
    try testing.expectSize(c.Ul_Ul_I, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_I C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_I(), .{ .v1 = 12703, .v2 = 15563, .v3 = 26532 });
    try testing.expectOk(c.assert_ret_Ul_Ul_I());
    try testing.expectOk(c.send_Ul_Ul_I());
    try testing.expectOk(c.recv_Ul_Ul_I(.{ .v1 = 12703, .v2 = 15563, .v3 = 26532 }));
}
pub export fn zig_recv_Ul_Ul_I(lv: c.Ul_Ul_I) c_int {
    if (lv.v1 != 12703) return 1;
    if (lv.v2 != 15563) return 2;
    if (lv.v3 != 26532) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_I() c.Ul_Ul_I {
    return .{ .v1 = 12703, .v2 = 15563, .v3 = 26532 };
}

// From T_Snnn_xbb.c:16440:16460
// struct  Ul_Ul_Ip  {
//   __tsu64 v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Ul_Ul_Ip layout" {
    var lv: c.Ul_Ul_Ip = undefined;
    try testing.expectSize(c.Ul_Ul_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_Ip(), .{ .v1 = 18635, .v2 = 1782, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Ul_Ip());
    try testing.expectOk(c.send_Ul_Ul_Ip());
    try testing.expectOk(c.recv_Ul_Ul_Ip(.{ .v1 = 18635, .v2 = 1782, .v3 = null }));
}
pub export fn zig_recv_Ul_Ul_Ip(lv: c.Ul_Ul_Ip) c_int {
    if (lv.v1 != 18635) return 1;
    if (lv.v2 != 1782) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_Ip() c.Ul_Ul_Ip {
    return .{ .v1 = 18635, .v2 = 1782, .v3 = null };
}

// From T_Snnn_xbb.c:16465:16485
// struct  Ul_Ul_L  {
//   __tsu64 v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Ul_Ul_L layout" {
    var lv: c.Ul_Ul_L = undefined;
    try testing.expectSize(c.Ul_Ul_L, 24);
    try testing.expectAlign(c.Ul_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_L C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_L(), .{ .v1 = 4753, .v2 = 14056, .v3 = 2292 });
    try testing.expectOk(c.assert_ret_Ul_Ul_L());
    try testing.expectOk(c.send_Ul_Ul_L());
    try testing.expectOk(c.recv_Ul_Ul_L(.{ .v1 = 4753, .v2 = 14056, .v3 = 2292 }));
}
pub export fn zig_recv_Ul_Ul_L(lv: c.Ul_Ul_L) c_int {
    if (lv.v1 != 4753) return 1;
    if (lv.v2 != 14056) return 2;
    if (lv.v3 != 2292) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_L() c.Ul_Ul_L {
    return .{ .v1 = 4753, .v2 = 14056, .v3 = 2292 };
}

// From T_Snnn_xbb.c:16490:16510
// struct  Ul_Ul_S  {
//   __tsu64 v1;
//   __tsu64 v2;
//   short v3;
// };

test "Ul_Ul_S layout" {
    var lv: c.Ul_Ul_S = undefined;
    try testing.expectSize(c.Ul_Ul_S, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_S C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_S(), .{ .v1 = 13277, .v2 = 14126, .v3 = 24506 });
    try testing.expectOk(c.assert_ret_Ul_Ul_S());
    try testing.expectOk(c.send_Ul_Ul_S());
    try testing.expectOk(c.recv_Ul_Ul_S(.{ .v1 = 13277, .v2 = 14126, .v3 = 24506 }));
}
pub export fn zig_recv_Ul_Ul_S(lv: c.Ul_Ul_S) c_int {
    if (lv.v1 != 13277) return 1;
    if (lv.v2 != 14126) return 2;
    if (lv.v3 != 24506) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_S() c.Ul_Ul_S {
    return .{ .v1 = 13277, .v2 = 14126, .v3 = 24506 };
}

// From T_Snnn_xbb.c:16515:16535
// struct  Ul_Ul_Uc  {
//   __tsu64 v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Ul_Ul_Uc layout" {
    var lv: c.Ul_Ul_Uc = undefined;
    try testing.expectSize(c.Ul_Ul_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_Uc(), .{ .v1 = 28837, .v2 = 22666, .v3 = 112 });
    try testing.expectOk(c.assert_ret_Ul_Ul_Uc());
    try testing.expectOk(c.send_Ul_Ul_Uc());
    try testing.expectOk(c.recv_Ul_Ul_Uc(.{ .v1 = 28837, .v2 = 22666, .v3 = 112 }));
}
pub export fn zig_recv_Ul_Ul_Uc(lv: c.Ul_Ul_Uc) c_int {
    if (lv.v1 != 28837) return 1;
    if (lv.v2 != 22666) return 2;
    if (lv.v3 != 112) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_Uc() c.Ul_Ul_Uc {
    return .{ .v1 = 28837, .v2 = 22666, .v3 = 112 };
}

// From T_Snnn_xbb.c:16540:16560
// struct  Ul_Ul_Ui  {
//   __tsu64 v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Ul_Ul_Ui layout" {
    var lv: c.Ul_Ul_Ui = undefined;
    try testing.expectSize(c.Ul_Ul_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_Ui(), .{ .v1 = 1478, .v2 = 21614, .v3 = 19239 });
    try testing.expectOk(c.assert_ret_Ul_Ul_Ui());
    try testing.expectOk(c.send_Ul_Ul_Ui());
    try testing.expectOk(c.recv_Ul_Ul_Ui(.{ .v1 = 1478, .v2 = 21614, .v3 = 19239 }));
}
pub export fn zig_recv_Ul_Ul_Ui(lv: c.Ul_Ul_Ui) c_int {
    if (lv.v1 != 1478) return 1;
    if (lv.v2 != 21614) return 2;
    if (lv.v3 != 19239) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_Ui() c.Ul_Ul_Ui {
    return .{ .v1 = 1478, .v2 = 21614, .v3 = 19239 };
}

// From T_Snnn_xbb.c:16565:16585
// struct  Ul_Ul_Ul  {
//   __tsu64 v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Ul_Ul_Ul layout" {
    var lv: c.Ul_Ul_Ul = undefined;
    try testing.expectSize(c.Ul_Ul_Ul, 24);
    try testing.expectAlign(c.Ul_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_Ul(), .{ .v1 = 3139, .v2 = 24472, .v3 = 2247 });
    try testing.expectOk(c.assert_ret_Ul_Ul_Ul());
    try testing.expectOk(c.send_Ul_Ul_Ul());
    try testing.expectOk(c.recv_Ul_Ul_Ul(.{ .v1 = 3139, .v2 = 24472, .v3 = 2247 }));
}
pub export fn zig_recv_Ul_Ul_Ul(lv: c.Ul_Ul_Ul) c_int {
    if (lv.v1 != 3139) return 1;
    if (lv.v2 != 24472) return 2;
    if (lv.v3 != 2247) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_Ul() c.Ul_Ul_Ul {
    return .{ .v1 = 3139, .v2 = 24472, .v3 = 2247 };
}

// From T_Snnn_xbb.c:16590:16610
// struct  Ul_Ul_Us  {
//   __tsu64 v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Ul_Ul_Us layout" {
    var lv: c.Ul_Ul_Us = undefined;
    try testing.expectSize(c.Ul_Ul_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_Us C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_Us(), .{ .v1 = 27076, .v2 = 8474, .v3 = 9430 });
    try testing.expectOk(c.assert_ret_Ul_Ul_Us());
    try testing.expectOk(c.send_Ul_Ul_Us());
    try testing.expectOk(c.recv_Ul_Ul_Us(.{ .v1 = 27076, .v2 = 8474, .v3 = 9430 }));
}
pub export fn zig_recv_Ul_Ul_Us(lv: c.Ul_Ul_Us) c_int {
    if (lv.v1 != 27076) return 1;
    if (lv.v2 != 8474) return 2;
    if (lv.v3 != 9430) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_Us() c.Ul_Ul_Us {
    return .{ .v1 = 27076, .v2 = 8474, .v3 = 9430 };
}

// From T_Snnn_xbb.c:16615:16635
// struct  Ul_Ul_Vp  {
//   __tsu64 v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Ul_Ul_Vp layout" {
    var lv: c.Ul_Ul_Vp = undefined;
    try testing.expectSize(c.Ul_Ul_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}
test "Ul_Ul_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_Ul_Vp(), .{ .v1 = 7942, .v2 = 18058, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Ul_Vp());
    try testing.expectOk(c.send_Ul_Ul_Vp());
    try testing.expectOk(c.recv_Ul_Ul_Vp(.{ .v1 = 7942, .v2 = 18058, .v3 = null }));
}
pub export fn zig_recv_Ul_Ul_Vp(lv: c.Ul_Ul_Vp) c_int {
    if (lv.v1 != 7942) return 1;
    if (lv.v2 != 18058) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Ul_Vp() c.Ul_Ul_Vp {
    return .{ .v1 = 7942, .v2 = 18058, .v3 = null };
}

// From T_Snnn_xbb.c:16640:16658
// struct  Ul_Us  {
//   __tsu64 v1;
//   unsigned short v2;
// };

test "Ul_Us layout" {
    var lv: c.Ul_Us = undefined;
    try testing.expectSize(c.Ul_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_Us C calls" {
    try testing.expectEqual(c.ret_Ul_Us(), .{ .v1 = 2643, .v2 = 28366 });
    try testing.expectOk(c.assert_ret_Ul_Us());
    try testing.expectOk(c.send_Ul_Us());
    try testing.expectOk(c.recv_Ul_Us(.{ .v1 = 2643, .v2 = 28366 }));
}
pub export fn zig_recv_Ul_Us(lv: c.Ul_Us) c_int {
    if (lv.v1 != 2643) return 1;
    if (lv.v2 != 28366) return 2;
    return 0;
}
pub export fn zig_ret_Ul_Us() c.Ul_Us {
    return .{ .v1 = 2643, .v2 = 28366 };
}

// From T_Snnn_xbb.c:17387:17407
// struct  Ul_Us_C  {
//   __tsu64 v1;
//   unsigned short v2;
//   char v3;
// };

test "Ul_Us_C layout" {
    var lv: c.Ul_Us_C = undefined;
    try testing.expectSize(c.Ul_Us_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_Us_C C calls" {
    try testing.expectEqual(c.ret_Ul_Us_C(), .{ .v1 = 3725, .v2 = 2617, .v3 = 120 });
    try testing.expectOk(c.assert_ret_Ul_Us_C());
    try testing.expectOk(c.send_Ul_Us_C());
    try testing.expectOk(c.recv_Ul_Us_C(.{ .v1 = 3725, .v2 = 2617, .v3 = 120 }));
}
pub export fn zig_recv_Ul_Us_C(lv: c.Ul_Us_C) c_int {
    if (lv.v1 != 3725) return 1;
    if (lv.v2 != 2617) return 2;
    if (lv.v3 != 120) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_C() c.Ul_Us_C {
    return .{ .v1 = 3725, .v2 = 2617, .v3 = 120 };
}

// From T_Snnn_xbb.c:17412:17432
// struct  Ul_Us_D  {
//   __tsu64 v1;
//   unsigned short v2;
//   double v3;
// };

test "Ul_Us_D layout" {
    var lv: c.Ul_Us_D = undefined;
    try testing.expectSize(c.Ul_Us_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Us_D C calls" {
    try testing.expectEqual(c.ret_Ul_Us_D(), .{ .v1 = 18843, .v2 = 22623, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Ul_Us_D());
    try testing.expectOk(c.send_Ul_Us_D());
    try testing.expectOk(c.recv_Ul_Us_D(.{ .v1 = 18843, .v2 = 22623, .v3 = 0.875 }));
}
pub export fn zig_recv_Ul_Us_D(lv: c.Ul_Us_D) c_int {
    if (lv.v1 != 18843) return 1;
    if (lv.v2 != 22623) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_D() c.Ul_Us_D {
    return .{ .v1 = 18843, .v2 = 22623, .v3 = 0.875 };
}

// From T_Snnn_xbb.c:17437:17457
// struct  Ul_Us_F  {
//   __tsu64 v1;
//   unsigned short v2;
//   float v3;
// };

test "Ul_Us_F layout" {
    var lv: c.Ul_Us_F = undefined;
    try testing.expectSize(c.Ul_Us_F, 16);
    try testing.expectAlign(c.Ul_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Us_F C calls" {
    try testing.expectEqual(c.ret_Ul_Us_F(), .{ .v1 = 28743, .v2 = 16957, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Ul_Us_F());
    try testing.expectOk(c.send_Ul_Us_F());
    try testing.expectOk(c.recv_Ul_Us_F(.{ .v1 = 28743, .v2 = 16957, .v3 = 1.0 }));
}
pub export fn zig_recv_Ul_Us_F(lv: c.Ul_Us_F) c_int {
    if (lv.v1 != 28743) return 1;
    if (lv.v2 != 16957) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_F() c.Ul_Us_F {
    return .{ .v1 = 28743, .v2 = 16957, .v3 = 1.0 };
}

// From T_Snnn_xbb.c:17462:17482
// struct  Ul_Us_I  {
//   __tsu64 v1;
//   unsigned short v2;
//   int v3;
// };

test "Ul_Us_I layout" {
    var lv: c.Ul_Us_I = undefined;
    try testing.expectSize(c.Ul_Us_I, 16);
    try testing.expectAlign(c.Ul_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Us_I C calls" {
    try testing.expectEqual(c.ret_Ul_Us_I(), .{ .v1 = 740, .v2 = 5377, .v3 = 29762 });
    try testing.expectOk(c.assert_ret_Ul_Us_I());
    try testing.expectOk(c.send_Ul_Us_I());
    try testing.expectOk(c.recv_Ul_Us_I(.{ .v1 = 740, .v2 = 5377, .v3 = 29762 }));
}
pub export fn zig_recv_Ul_Us_I(lv: c.Ul_Us_I) c_int {
    if (lv.v1 != 740) return 1;
    if (lv.v2 != 5377) return 2;
    if (lv.v3 != 29762) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_I() c.Ul_Us_I {
    return .{ .v1 = 740, .v2 = 5377, .v3 = 29762 };
}

// From T_Snnn_xbb.c:17487:17507
// struct  Ul_Us_Ip  {
//   __tsu64 v1;
//   unsigned short v2;
//   int *v3;
// };

test "Ul_Us_Ip layout" {
    var lv: c.Ul_Us_Ip = undefined;
    try testing.expectSize(c.Ul_Us_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Us_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_Us_Ip(), .{ .v1 = 3105, .v2 = 17049, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Us_Ip());
    try testing.expectOk(c.send_Ul_Us_Ip());
    try testing.expectOk(c.recv_Ul_Us_Ip(.{ .v1 = 3105, .v2 = 17049, .v3 = null }));
}
pub export fn zig_recv_Ul_Us_Ip(lv: c.Ul_Us_Ip) c_int {
    if (lv.v1 != 3105) return 1;
    if (lv.v2 != 17049) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_Ip() c.Ul_Us_Ip {
    return .{ .v1 = 3105, .v2 = 17049, .v3 = null };
}

// From T_Snnn_xbb.c:17512:17532
// struct  Ul_Us_L  {
//   __tsu64 v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Ul_Us_L layout" {
    var lv: c.Ul_Us_L = undefined;
    try testing.expectSize(c.Ul_Us_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Us_L C calls" {
    try testing.expectEqual(c.ret_Ul_Us_L(), .{ .v1 = 26785, .v2 = 14066, .v3 = 4067 });
    try testing.expectOk(c.assert_ret_Ul_Us_L());
    try testing.expectOk(c.send_Ul_Us_L());
    try testing.expectOk(c.recv_Ul_Us_L(.{ .v1 = 26785, .v2 = 14066, .v3 = 4067 }));
}
pub export fn zig_recv_Ul_Us_L(lv: c.Ul_Us_L) c_int {
    if (lv.v1 != 26785) return 1;
    if (lv.v2 != 14066) return 2;
    if (lv.v3 != 4067) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_L() c.Ul_Us_L {
    return .{ .v1 = 26785, .v2 = 14066, .v3 = 4067 };
}

// From T_Snnn_xbb.c:17537:17557
// struct  Ul_Us_S  {
//   __tsu64 v1;
//   unsigned short v2;
//   short v3;
// };

test "Ul_Us_S layout" {
    var lv: c.Ul_Us_S = undefined;
    try testing.expectSize(c.Ul_Us_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_Us_S C calls" {
    try testing.expectEqual(c.ret_Ul_Us_S(), .{ .v1 = 16835, .v2 = 29577, .v3 = 24424 });
    try testing.expectOk(c.assert_ret_Ul_Us_S());
    try testing.expectOk(c.send_Ul_Us_S());
    try testing.expectOk(c.recv_Ul_Us_S(.{ .v1 = 16835, .v2 = 29577, .v3 = 24424 }));
}
pub export fn zig_recv_Ul_Us_S(lv: c.Ul_Us_S) c_int {
    if (lv.v1 != 16835) return 1;
    if (lv.v2 != 29577) return 2;
    if (lv.v3 != 24424) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_S() c.Ul_Us_S {
    return .{ .v1 = 16835, .v2 = 29577, .v3 = 24424 };
}

// From T_Snnn_xbb.c:17562:17582
// struct  Ul_Us_Uc  {
//   __tsu64 v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Ul_Us_Uc layout" {
    var lv: c.Ul_Us_Uc = undefined;
    try testing.expectSize(c.Ul_Us_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_Us_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_Us_Uc(), .{ .v1 = 11719, .v2 = 12708, .v3 = 67 });
    try testing.expectOk(c.assert_ret_Ul_Us_Uc());
    try testing.expectOk(c.send_Ul_Us_Uc());
    try testing.expectOk(c.recv_Ul_Us_Uc(.{ .v1 = 11719, .v2 = 12708, .v3 = 67 }));
}
pub export fn zig_recv_Ul_Us_Uc(lv: c.Ul_Us_Uc) c_int {
    if (lv.v1 != 11719) return 1;
    if (lv.v2 != 12708) return 2;
    if (lv.v3 != 67) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_Uc() c.Ul_Us_Uc {
    return .{ .v1 = 11719, .v2 = 12708, .v3 = 67 };
}

// From T_Snnn_xbb.c:17587:17607
// struct  Ul_Us_Ui  {
//   __tsu64 v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Ul_Us_Ui layout" {
    var lv: c.Ul_Us_Ui = undefined;
    try testing.expectSize(c.Ul_Us_Ui, 16);
    try testing.expectAlign(c.Ul_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}
test "Ul_Us_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_Us_Ui(), .{ .v1 = 26605, .v2 = 10106, .v3 = 23753 });
    try testing.expectOk(c.assert_ret_Ul_Us_Ui());
    try testing.expectOk(c.send_Ul_Us_Ui());
    try testing.expectOk(c.recv_Ul_Us_Ui(.{ .v1 = 26605, .v2 = 10106, .v3 = 23753 }));
}
pub export fn zig_recv_Ul_Us_Ui(lv: c.Ul_Us_Ui) c_int {
    if (lv.v1 != 26605) return 1;
    if (lv.v2 != 10106) return 2;
    if (lv.v3 != 23753) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_Ui() c.Ul_Us_Ui {
    return .{ .v1 = 26605, .v2 = 10106, .v3 = 23753 };
}

// From T_Snnn_xbb.c:17612:17632
// struct  Ul_Us_Ul  {
//   __tsu64 v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Ul_Us_Ul layout" {
    var lv: c.Ul_Us_Ul = undefined;
    try testing.expectSize(c.Ul_Us_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Us_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_Us_Ul(), .{ .v1 = 1091, .v2 = 31951, .v3 = 2537 });
    try testing.expectOk(c.assert_ret_Ul_Us_Ul());
    try testing.expectOk(c.send_Ul_Us_Ul());
    try testing.expectOk(c.recv_Ul_Us_Ul(.{ .v1 = 1091, .v2 = 31951, .v3 = 2537 }));
}
pub export fn zig_recv_Ul_Us_Ul(lv: c.Ul_Us_Ul) c_int {
    if (lv.v1 != 1091) return 1;
    if (lv.v2 != 31951) return 2;
    if (lv.v3 != 2537) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_Ul() c.Ul_Us_Ul {
    return .{ .v1 = 1091, .v2 = 31951, .v3 = 2537 };
}

// From T_Snnn_xbb.c:17637:17657
// struct  Ul_Us_Us  {
//   __tsu64 v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Ul_Us_Us layout" {
    var lv: c.Ul_Us_Us = undefined;
    try testing.expectSize(c.Ul_Us_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}
test "Ul_Us_Us C calls" {
    try testing.expectEqual(c.ret_Ul_Us_Us(), .{ .v1 = 6339, .v2 = 31142, .v3 = 16115 });
    try testing.expectOk(c.assert_ret_Ul_Us_Us());
    try testing.expectOk(c.send_Ul_Us_Us());
    try testing.expectOk(c.recv_Ul_Us_Us(.{ .v1 = 6339, .v2 = 31142, .v3 = 16115 }));
}
pub export fn zig_recv_Ul_Us_Us(lv: c.Ul_Us_Us) c_int {
    if (lv.v1 != 6339) return 1;
    if (lv.v2 != 31142) return 2;
    if (lv.v3 != 16115) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_Us() c.Ul_Us_Us {
    return .{ .v1 = 6339, .v2 = 31142, .v3 = 16115 };
}

// From T_Snnn_xbb.c:17662:17682
// struct  Ul_Us_Vp  {
//   __tsu64 v1;
//   unsigned short v2;
//   void *v3;
// };

test "Ul_Us_Vp layout" {
    var lv: c.Ul_Us_Vp = undefined;
    try testing.expectSize(c.Ul_Us_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Us_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_Us_Vp(), .{ .v1 = 18681, .v2 = 2174, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Us_Vp());
    try testing.expectOk(c.send_Ul_Us_Vp());
    try testing.expectOk(c.recv_Ul_Us_Vp(.{ .v1 = 18681, .v2 = 2174, .v3 = null }));
}
pub export fn zig_recv_Ul_Us_Vp(lv: c.Ul_Us_Vp) c_int {
    if (lv.v1 != 18681) return 1;
    if (lv.v2 != 2174) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Us_Vp() c.Ul_Us_Vp {
    return .{ .v1 = 18681, .v2 = 2174, .v3 = null };
}

// From T_Snnn_xbb.c:17687:17705
// struct  Ul_Vp  {
//   __tsu64 v1;
//   void *v2;
// };

test "Ul_Vp layout" {
    var lv: c.Ul_Vp = undefined;
    try testing.expectSize(c.Ul_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
test "Ul_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_Vp(), .{ .v1 = 7138, .v2 = null });
    try testing.expectOk(c.assert_ret_Ul_Vp());
    try testing.expectOk(c.send_Ul_Vp());
    try testing.expectOk(c.recv_Ul_Vp(.{ .v1 = 7138, .v2 = null }));
}
pub export fn zig_recv_Ul_Vp(lv: c.Ul_Vp) c_int {
    if (lv.v1 != 7138) return 1;
    if (lv.v2 != null) return 2;
    return 0;
}
pub export fn zig_ret_Ul_Vp() c.Ul_Vp {
    return .{ .v1 = 7138, .v2 = null };
}

// From T_Snnn_xbb.c:18434:18454
// struct  Ul_Vp_C  {
//   __tsu64 v1;
//   void *v2;
//   char v3;
// };

test "Ul_Vp_C layout" {
    var lv: c.Ul_Vp_C = undefined;
    try testing.expectSize(c.Ul_Vp_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_C C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_C(), .{ .v1 = 12084, .v2 = null, .v3 = 77 });
    try testing.expectOk(c.assert_ret_Ul_Vp_C());
    try testing.expectOk(c.send_Ul_Vp_C());
    try testing.expectOk(c.recv_Ul_Vp_C(.{ .v1 = 12084, .v2 = null, .v3 = 77 }));
}
pub export fn zig_recv_Ul_Vp_C(lv: c.Ul_Vp_C) c_int {
    if (lv.v1 != 12084) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 77) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_C() c.Ul_Vp_C {
    return .{ .v1 = 12084, .v2 = null, .v3 = 77 };
}

// From T_Snnn_xbb.c:18459:18479
// struct  Ul_Vp_D  {
//   __tsu64 v1;
//   void *v2;
//   double v3;
// };

test "Ul_Vp_D layout" {
    var lv: c.Ul_Vp_D = undefined;
    try testing.expectSize(c.Ul_Vp_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_D C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_D(), .{ .v1 = 26067, .v2 = null, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Ul_Vp_D());
    try testing.expectOk(c.send_Ul_Vp_D());
    try testing.expectOk(c.recv_Ul_Vp_D(.{ .v1 = 26067, .v2 = null, .v3 = -2.125 }));
}
pub export fn zig_recv_Ul_Vp_D(lv: c.Ul_Vp_D) c_int {
    if (lv.v1 != 26067) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_D() c.Ul_Vp_D {
    return .{ .v1 = 26067, .v2 = null, .v3 = -2.125 };
}

// From T_Snnn_xbb.c:18484:18504
// struct  Ul_Vp_F  {
//   __tsu64 v1;
//   void *v2;
//   float v3;
// };

test "Ul_Vp_F layout" {
    var lv: c.Ul_Vp_F = undefined;
    try testing.expectSize(c.Ul_Vp_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_F C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_F(), .{ .v1 = 14892, .v2 = null, .v3 = 0.5 });
    try testing.expectOk(c.assert_ret_Ul_Vp_F());
    try testing.expectOk(c.send_Ul_Vp_F());
    try testing.expectOk(c.recv_Ul_Vp_F(.{ .v1 = 14892, .v2 = null, .v3 = 0.5 }));
}
pub export fn zig_recv_Ul_Vp_F(lv: c.Ul_Vp_F) c_int {
    if (lv.v1 != 14892) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 0.5) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_F() c.Ul_Vp_F {
    return .{ .v1 = 14892, .v2 = null, .v3 = 0.5 };
}

// From T_Snnn_xbb.c:18509:18529
// struct  Ul_Vp_I  {
//   __tsu64 v1;
//   void *v2;
//   int v3;
// };

test "Ul_Vp_I layout" {
    var lv: c.Ul_Vp_I = undefined;
    try testing.expectSize(c.Ul_Vp_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_I C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_I(), .{ .v1 = 7902, .v2 = null, .v3 = 16411 });
    try testing.expectOk(c.assert_ret_Ul_Vp_I());
    try testing.expectOk(c.send_Ul_Vp_I());
    try testing.expectOk(c.recv_Ul_Vp_I(.{ .v1 = 7902, .v2 = null, .v3 = 16411 }));
}
pub export fn zig_recv_Ul_Vp_I(lv: c.Ul_Vp_I) c_int {
    if (lv.v1 != 7902) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 16411) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_I() c.Ul_Vp_I {
    return .{ .v1 = 7902, .v2 = null, .v3 = 16411 };
}

// From T_Snnn_xbb.c:18534:18554
// struct  Ul_Vp_Ip  {
//   __tsu64 v1;
//   void *v2;
//   int *v3;
// };

test "Ul_Vp_Ip layout" {
    var lv: c.Ul_Vp_Ip = undefined;
    try testing.expectSize(c.Ul_Vp_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_Ip C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_Ip(), .{ .v1 = 3098, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Vp_Ip());
    try testing.expectOk(c.send_Ul_Vp_Ip());
    try testing.expectOk(c.recv_Ul_Vp_Ip(.{ .v1 = 3098, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_Ul_Vp_Ip(lv: c.Ul_Vp_Ip) c_int {
    if (lv.v1 != 3098) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_Ip() c.Ul_Vp_Ip {
    return .{ .v1 = 3098, .v2 = null, .v3 = null };
}

// From T_Snnn_xbb.c:18559:18579
// struct  Ul_Vp_L  {
//   __tsu64 v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Ul_Vp_L layout" {
    var lv: c.Ul_Vp_L = undefined;
    try testing.expectSize(c.Ul_Vp_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_L C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_L(), .{ .v1 = 10634, .v2 = null, .v3 = 13712 });
    try testing.expectOk(c.assert_ret_Ul_Vp_L());
    try testing.expectOk(c.send_Ul_Vp_L());
    try testing.expectOk(c.recv_Ul_Vp_L(.{ .v1 = 10634, .v2 = null, .v3 = 13712 }));
}
pub export fn zig_recv_Ul_Vp_L(lv: c.Ul_Vp_L) c_int {
    if (lv.v1 != 10634) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 13712) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_L() c.Ul_Vp_L {
    return .{ .v1 = 10634, .v2 = null, .v3 = 13712 };
}

// From T_Snnn_xbb.c:18584:18604
// struct  Ul_Vp_S  {
//   __tsu64 v1;
//   void *v2;
//   short v3;
// };

test "Ul_Vp_S layout" {
    var lv: c.Ul_Vp_S = undefined;
    try testing.expectSize(c.Ul_Vp_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_S C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_S(), .{ .v1 = 13103, .v2 = null, .v3 = 26544 });
    try testing.expectOk(c.assert_ret_Ul_Vp_S());
    try testing.expectOk(c.send_Ul_Vp_S());
    try testing.expectOk(c.recv_Ul_Vp_S(.{ .v1 = 13103, .v2 = null, .v3 = 26544 }));
}
pub export fn zig_recv_Ul_Vp_S(lv: c.Ul_Vp_S) c_int {
    if (lv.v1 != 13103) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 26544) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_S() c.Ul_Vp_S {
    return .{ .v1 = 13103, .v2 = null, .v3 = 26544 };
}

// From T_Snnn_xbb.c:18609:18629
// struct  Ul_Vp_Uc  {
//   __tsu64 v1;
//   void *v2;
//   unsigned char v3;
// };

test "Ul_Vp_Uc layout" {
    var lv: c.Ul_Vp_Uc = undefined;
    try testing.expectSize(c.Ul_Vp_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_Uc C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_Uc(), .{ .v1 = 7202, .v2 = null, .v3 = 80 });
    try testing.expectOk(c.assert_ret_Ul_Vp_Uc());
    try testing.expectOk(c.send_Ul_Vp_Uc());
    try testing.expectOk(c.recv_Ul_Vp_Uc(.{ .v1 = 7202, .v2 = null, .v3 = 80 }));
}
pub export fn zig_recv_Ul_Vp_Uc(lv: c.Ul_Vp_Uc) c_int {
    if (lv.v1 != 7202) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 80) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_Uc() c.Ul_Vp_Uc {
    return .{ .v1 = 7202, .v2 = null, .v3 = 80 };
}

// From T_Snnn_xbb.c:18634:18654
// struct  Ul_Vp_Ui  {
//   __tsu64 v1;
//   void *v2;
//   unsigned int v3;
// };

test "Ul_Vp_Ui layout" {
    var lv: c.Ul_Vp_Ui = undefined;
    try testing.expectSize(c.Ul_Vp_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_Ui C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_Ui(), .{ .v1 = 22663, .v2 = null, .v3 = 1363 });
    try testing.expectOk(c.assert_ret_Ul_Vp_Ui());
    try testing.expectOk(c.send_Ul_Vp_Ui());
    try testing.expectOk(c.recv_Ul_Vp_Ui(.{ .v1 = 22663, .v2 = null, .v3 = 1363 }));
}
pub export fn zig_recv_Ul_Vp_Ui(lv: c.Ul_Vp_Ui) c_int {
    if (lv.v1 != 22663) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 1363) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_Ui() c.Ul_Vp_Ui {
    return .{ .v1 = 22663, .v2 = null, .v3 = 1363 };
}

// From T_Snnn_xbb.c:18659:18679
// struct  Ul_Vp_Ul  {
//   __tsu64 v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Ul_Vp_Ul layout" {
    var lv: c.Ul_Vp_Ul = undefined;
    try testing.expectSize(c.Ul_Vp_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_Ul C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_Ul(), .{ .v1 = 18470, .v2 = null, .v3 = 9482 });
    try testing.expectOk(c.assert_ret_Ul_Vp_Ul());
    try testing.expectOk(c.send_Ul_Vp_Ul());
    try testing.expectOk(c.recv_Ul_Vp_Ul(.{ .v1 = 18470, .v2 = null, .v3 = 9482 }));
}
pub export fn zig_recv_Ul_Vp_Ul(lv: c.Ul_Vp_Ul) c_int {
    if (lv.v1 != 18470) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 9482) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_Ul() c.Ul_Vp_Ul {
    return .{ .v1 = 18470, .v2 = null, .v3 = 9482 };
}

// From T_Snnn_xbb.c:18684:18704
// struct  Ul_Vp_Us  {
//   __tsu64 v1;
//   void *v2;
//   unsigned short v3;
// };

test "Ul_Vp_Us layout" {
    var lv: c.Ul_Vp_Us = undefined;
    try testing.expectSize(c.Ul_Vp_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_Us C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_Us(), .{ .v1 = 28776, .v2 = null, .v3 = 16723 });
    try testing.expectOk(c.assert_ret_Ul_Vp_Us());
    try testing.expectOk(c.send_Ul_Vp_Us());
    try testing.expectOk(c.recv_Ul_Vp_Us(.{ .v1 = 28776, .v2 = null, .v3 = 16723 }));
}
pub export fn zig_recv_Ul_Vp_Us(lv: c.Ul_Vp_Us) c_int {
    if (lv.v1 != 28776) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 16723) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_Us() c.Ul_Vp_Us {
    return .{ .v1 = 28776, .v2 = null, .v3 = 16723 };
}

// From T_Snnn_xbb.c:18709:18729
// struct  Ul_Vp_Vp  {
//   __tsu64 v1;
//   void *v2;
//   void *v3;
// };

test "Ul_Vp_Vp layout" {
    var lv: c.Ul_Vp_Vp = undefined;
    try testing.expectSize(c.Ul_Vp_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Ul_Vp_Vp C calls" {
    try testing.expectEqual(c.ret_Ul_Vp_Vp(), .{ .v1 = 25197, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Ul_Vp_Vp());
    try testing.expectOk(c.send_Ul_Vp_Vp());
    try testing.expectOk(c.recv_Ul_Vp_Vp(.{ .v1 = 25197, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_Ul_Vp_Vp(lv: c.Ul_Vp_Vp) c_int {
    if (lv.v1 != 25197) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Ul_Vp_Vp() c.Ul_Vp_Vp {
    return .{ .v1 = 25197, .v2 = null, .v3 = null };
}

// From T_Snnn_xbb.c:18734:18750
// struct  Us  {
//   unsigned short v1;
// };

test "Us layout" {
    var lv: c.Us = undefined;
    try testing.expectSize(c.Us, 2);
    try testing.expectAlign(c.Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "Us C calls" {
    try testing.expectEqual(c.ret_Us(), .{ .v1 = 8994 });
    try testing.expectOk(c.assert_ret_Us());
    try testing.expectOk(c.send_Us());
    try testing.expectOk(c.recv_Us(.{ .v1 = 8994 }));
}
pub export fn zig_recv_Us(lv: c.Us) c_int {
    if (lv.v1 != 8994) return 1;
    return 0;
}
pub export fn zig_ret_Us() c.Us {
    return .{ .v1 = 8994 };
}

// From T_Snnn_xbb.c:49055:49073
// struct  Us_C  {
//   unsigned short v1;
//   char v2;
// };

test "Us_C layout" {
    var lv: c.Us_C = undefined;
    try testing.expectSize(c.Us_C, 4);
    try testing.expectAlign(c.Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "Us_C C calls" {
    try testing.expectEqual(c.ret_Us_C(), .{ .v1 = 16644, .v2 = 68 });
    try testing.expectOk(c.assert_ret_Us_C());
    try testing.expectOk(c.send_Us_C());
    try testing.expectOk(c.recv_Us_C(.{ .v1 = 16644, .v2 = 68 }));
}
pub export fn zig_recv_Us_C(lv: c.Us_C) c_int {
    if (lv.v1 != 16644) return 1;
    if (lv.v2 != 68) return 2;
    return 0;
}
pub export fn zig_ret_Us_C() c.Us_C {
    return .{ .v1 = 16644, .v2 = 68 };
}

// From T_Snnn_xbb.c:49802:49822
// struct  Us_C_C  {
//   unsigned short v1;
//   char v2;
//   char v3;
// };

test "Us_C_C layout" {
    var lv: c.Us_C_C = undefined;
    try testing.expectSize(c.Us_C_C, 4);
    try testing.expectAlign(c.Us_C_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "Us_C_C C calls" {
    try testing.expectEqual(c.ret_Us_C_C(), .{ .v1 = 2512, .v2 = 99, .v3 = 60 });
    try testing.expectOk(c.assert_ret_Us_C_C());
    try testing.expectOk(c.send_Us_C_C());
    try testing.expectOk(c.recv_Us_C_C(.{ .v1 = 2512, .v2 = 99, .v3 = 60 }));
}
pub export fn zig_recv_Us_C_C(lv: c.Us_C_C) c_int {
    if (lv.v1 != 2512) return 1;
    if (lv.v2 != 99) return 2;
    if (lv.v3 != 60) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_C() c.Us_C_C {
    return .{ .v1 = 2512, .v2 = 99, .v3 = 60 };
}

// From T_Snnn_xbb.c:49827:49847
// struct  Us_C_D  {
//   unsigned short v1;
//   char v2;
//   double v3;
// };

test "Us_C_D layout" {
    var lv: c.Us_C_D = undefined;
    try testing.expectSize(c.Us_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_C_D C calls" {
    try testing.expectEqual(c.ret_Us_C_D(), .{ .v1 = 21959, .v2 = 16, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Us_C_D());
    try testing.expectOk(c.send_Us_C_D());
    try testing.expectOk(c.recv_Us_C_D(.{ .v1 = 21959, .v2 = 16, .v3 = 4.5 }));
}
pub export fn zig_recv_Us_C_D(lv: c.Us_C_D) c_int {
    if (lv.v1 != 21959) return 1;
    if (lv.v2 != 16) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_D() c.Us_C_D {
    return .{ .v1 = 21959, .v2 = 16, .v3 = 4.5 };
}

// From T_Snnn_xbb.c:49852:49872
// struct  Us_C_F  {
//   unsigned short v1;
//   char v2;
//   float v3;
// };

test "Us_C_F layout" {
    var lv: c.Us_C_F = undefined;
    try testing.expectSize(c.Us_C_F, 8);
    try testing.expectAlign(c.Us_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_C_F C calls" {
    try testing.expectEqual(c.ret_Us_C_F(), .{ .v1 = 2567, .v2 = 34, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Us_C_F());
    try testing.expectOk(c.send_Us_C_F());
    try testing.expectOk(c.recv_Us_C_F(.{ .v1 = 2567, .v2 = 34, .v3 = 4.5 }));
}
pub export fn zig_recv_Us_C_F(lv: c.Us_C_F) c_int {
    if (lv.v1 != 2567) return 1;
    if (lv.v2 != 34) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_F() c.Us_C_F {
    return .{ .v1 = 2567, .v2 = 34, .v3 = 4.5 };
}

// From T_Snnn_xbb.c:49877:49897
// struct  Us_C_I  {
//   unsigned short v1;
//   char v2;
//   int v3;
// };

test "Us_C_I layout" {
    var lv: c.Us_C_I = undefined;
    try testing.expectSize(c.Us_C_I, 8);
    try testing.expectAlign(c.Us_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_C_I C calls" {
    try testing.expectEqual(c.ret_Us_C_I(), .{ .v1 = 15462, .v2 = 25, .v3 = 9740 });
    try testing.expectOk(c.assert_ret_Us_C_I());
    try testing.expectOk(c.send_Us_C_I());
    try testing.expectOk(c.recv_Us_C_I(.{ .v1 = 15462, .v2 = 25, .v3 = 9740 }));
}
pub export fn zig_recv_Us_C_I(lv: c.Us_C_I) c_int {
    if (lv.v1 != 15462) return 1;
    if (lv.v2 != 25) return 2;
    if (lv.v3 != 9740) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_I() c.Us_C_I {
    return .{ .v1 = 15462, .v2 = 25, .v3 = 9740 };
}

// From T_Snnn_xbb.c:49902:49922
// struct  Us_C_Ip  {
//   unsigned short v1;
//   char v2;
//   int *v3;
// };

test "Us_C_Ip layout" {
    var lv: c.Us_C_Ip = undefined;
    try testing.expectSize(c.Us_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_C_Ip C calls" {
    try testing.expectEqual(c.ret_Us_C_Ip(), .{ .v1 = 21044, .v2 = 85, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_C_Ip());
    try testing.expectOk(c.send_Us_C_Ip());
    try testing.expectOk(c.recv_Us_C_Ip(.{ .v1 = 21044, .v2 = 85, .v3 = null }));
}
pub export fn zig_recv_Us_C_Ip(lv: c.Us_C_Ip) c_int {
    if (lv.v1 != 21044) return 1;
    if (lv.v2 != 85) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_Ip() c.Us_C_Ip {
    return .{ .v1 = 21044, .v2 = 85, .v3 = null };
}

// From T_Snnn_xbb.c:49927:49947
// struct  Us_C_L  {
//   unsigned short v1;
//   char v2;
//   __tsi64 v3;
// };

test "Us_C_L layout" {
    var lv: c.Us_C_L = undefined;
    try testing.expectSize(c.Us_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_C_L C calls" {
    try testing.expectEqual(c.ret_Us_C_L(), .{ .v1 = 15192, .v2 = 103, .v3 = 19299 });
    try testing.expectOk(c.assert_ret_Us_C_L());
    try testing.expectOk(c.send_Us_C_L());
    try testing.expectOk(c.recv_Us_C_L(.{ .v1 = 15192, .v2 = 103, .v3 = 19299 }));
}
pub export fn zig_recv_Us_C_L(lv: c.Us_C_L) c_int {
    if (lv.v1 != 15192) return 1;
    if (lv.v2 != 103) return 2;
    if (lv.v3 != 19299) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_L() c.Us_C_L {
    return .{ .v1 = 15192, .v2 = 103, .v3 = 19299 };
}

// From T_Snnn_xbb.c:49952:49972
// struct  Us_C_S  {
//   unsigned short v1;
//   char v2;
//   short v3;
// };

test "Us_C_S layout" {
    var lv: c.Us_C_S = undefined;
    try testing.expectSize(c.Us_C_S, 6);
    try testing.expectAlign(c.Us_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_C_S C calls" {
    try testing.expectEqual(c.ret_Us_C_S(), .{ .v1 = 23346, .v2 = 103, .v3 = 22139 });
    try testing.expectOk(c.assert_ret_Us_C_S());
    try testing.expectOk(c.send_Us_C_S());
    try testing.expectOk(c.recv_Us_C_S(.{ .v1 = 23346, .v2 = 103, .v3 = 22139 }));
}
pub export fn zig_recv_Us_C_S(lv: c.Us_C_S) c_int {
    if (lv.v1 != 23346) return 1;
    if (lv.v2 != 103) return 2;
    if (lv.v3 != 22139) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_S() c.Us_C_S {
    return .{ .v1 = 23346, .v2 = 103, .v3 = 22139 };
}

// From T_Snnn_xbb.c:49977:49997
// struct  Us_C_Uc  {
//   unsigned short v1;
//   char v2;
//   unsigned char v3;
// };

test "Us_C_Uc layout" {
    var lv: c.Us_C_Uc = undefined;
    try testing.expectSize(c.Us_C_Uc, 4);
    try testing.expectAlign(c.Us_C_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "Us_C_Uc C calls" {
    try testing.expectEqual(c.ret_Us_C_Uc(), .{ .v1 = 3179, .v2 = 4, .v3 = 73 });
    try testing.expectOk(c.assert_ret_Us_C_Uc());
    try testing.expectOk(c.send_Us_C_Uc());
    try testing.expectOk(c.recv_Us_C_Uc(.{ .v1 = 3179, .v2 = 4, .v3 = 73 }));
}
pub export fn zig_recv_Us_C_Uc(lv: c.Us_C_Uc) c_int {
    if (lv.v1 != 3179) return 1;
    if (lv.v2 != 4) return 2;
    if (lv.v3 != 73) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_Uc() c.Us_C_Uc {
    return .{ .v1 = 3179, .v2 = 4, .v3 = 73 };
}

// From T_Snnn_xbb.c:50002:50022
// struct  Us_C_Ui  {
//   unsigned short v1;
//   char v2;
//   unsigned int v3;
// };

test "Us_C_Ui layout" {
    var lv: c.Us_C_Ui = undefined;
    try testing.expectSize(c.Us_C_Ui, 8);
    try testing.expectAlign(c.Us_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_C_Ui C calls" {
    try testing.expectEqual(c.ret_Us_C_Ui(), .{ .v1 = 19277, .v2 = 98, .v3 = 28789 });
    try testing.expectOk(c.assert_ret_Us_C_Ui());
    try testing.expectOk(c.send_Us_C_Ui());
    try testing.expectOk(c.recv_Us_C_Ui(.{ .v1 = 19277, .v2 = 98, .v3 = 28789 }));
}
pub export fn zig_recv_Us_C_Ui(lv: c.Us_C_Ui) c_int {
    if (lv.v1 != 19277) return 1;
    if (lv.v2 != 98) return 2;
    if (lv.v3 != 28789) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_Ui() c.Us_C_Ui {
    return .{ .v1 = 19277, .v2 = 98, .v3 = 28789 };
}

// From T_Snnn_xbb.c:50027:50047
// struct  Us_C_Ul  {
//   unsigned short v1;
//   char v2;
//   __tsu64 v3;
// };

test "Us_C_Ul layout" {
    var lv: c.Us_C_Ul = undefined;
    try testing.expectSize(c.Us_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_C_Ul C calls" {
    try testing.expectEqual(c.ret_Us_C_Ul(), .{ .v1 = 24703, .v2 = 76, .v3 = 15589 });
    try testing.expectOk(c.assert_ret_Us_C_Ul());
    try testing.expectOk(c.send_Us_C_Ul());
    try testing.expectOk(c.recv_Us_C_Ul(.{ .v1 = 24703, .v2 = 76, .v3 = 15589 }));
}
pub export fn zig_recv_Us_C_Ul(lv: c.Us_C_Ul) c_int {
    if (lv.v1 != 24703) return 1;
    if (lv.v2 != 76) return 2;
    if (lv.v3 != 15589) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_Ul() c.Us_C_Ul {
    return .{ .v1 = 24703, .v2 = 76, .v3 = 15589 };
}

// From T_Snnn_xbb.c:50052:50072
// struct  Us_C_Us  {
//   unsigned short v1;
//   char v2;
//   unsigned short v3;
// };

test "Us_C_Us layout" {
    var lv: c.Us_C_Us = undefined;
    try testing.expectSize(c.Us_C_Us, 6);
    try testing.expectAlign(c.Us_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_C_Us C calls" {
    try testing.expectEqual(c.ret_Us_C_Us(), .{ .v1 = 12247, .v2 = 66, .v3 = 10022 });
    try testing.expectOk(c.assert_ret_Us_C_Us());
    try testing.expectOk(c.send_Us_C_Us());
    try testing.expectOk(c.recv_Us_C_Us(.{ .v1 = 12247, .v2 = 66, .v3 = 10022 }));
}
pub export fn zig_recv_Us_C_Us(lv: c.Us_C_Us) c_int {
    if (lv.v1 != 12247) return 1;
    if (lv.v2 != 66) return 2;
    if (lv.v3 != 10022) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_Us() c.Us_C_Us {
    return .{ .v1 = 12247, .v2 = 66, .v3 = 10022 };
}

// From T_Snnn_xbb.c:50077:50097
// struct  Us_C_Vp  {
//   unsigned short v1;
//   char v2;
//   void *v3;
// };

test "Us_C_Vp layout" {
    var lv: c.Us_C_Vp = undefined;
    try testing.expectSize(c.Us_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_C_Vp C calls" {
    try testing.expectEqual(c.ret_Us_C_Vp(), .{ .v1 = 5932, .v2 = 39, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_C_Vp());
    try testing.expectOk(c.send_Us_C_Vp());
    try testing.expectOk(c.recv_Us_C_Vp(.{ .v1 = 5932, .v2 = 39, .v3 = null }));
}
pub export fn zig_recv_Us_C_Vp(lv: c.Us_C_Vp) c_int {
    if (lv.v1 != 5932) return 1;
    if (lv.v2 != 39) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_C_Vp() c.Us_C_Vp {
    return .{ .v1 = 5932, .v2 = 39, .v3 = null };
}

// From T_Snnn_xbb.c:50102:50120
// struct  Us_D  {
//   unsigned short v1;
//   double v2;
// };

test "Us_D layout" {
    var lv: c.Us_D = undefined;
    try testing.expectSize(c.Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Us_D C calls" {
    try testing.expectEqual(c.ret_Us_D(), .{ .v1 = 18580, .v2 = -2.125 });
    try testing.expectOk(c.assert_ret_Us_D());
    try testing.expectOk(c.send_Us_D());
    try testing.expectOk(c.recv_Us_D(.{ .v1 = 18580, .v2 = -2.125 }));
}
pub export fn zig_recv_Us_D(lv: c.Us_D) c_int {
    if (lv.v1 != 18580) return 1;
    if (lv.v2 != -2.125) return 2;
    return 0;
}
pub export fn zig_ret_Us_D() c.Us_D {
    return .{ .v1 = 18580, .v2 = -2.125 };
}

// From T_Snnn_xbb.c:50849:50869
// struct  Us_D_C  {
//   unsigned short v1;
//   double v2;
//   char v3;
// };

test "Us_D_C layout" {
    var lv: c.Us_D_C = undefined;
    try testing.expectSize(c.Us_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_C C calls" {
    try testing.expectEqual(c.ret_Us_D_C(), .{ .v1 = 11240, .v2 = 4.5, .v3 = 72 });
    try testing.expectOk(c.assert_ret_Us_D_C());
    try testing.expectOk(c.send_Us_D_C());
    try testing.expectOk(c.recv_Us_D_C(.{ .v1 = 11240, .v2 = 4.5, .v3 = 72 }));
}
pub export fn zig_recv_Us_D_C(lv: c.Us_D_C) c_int {
    if (lv.v1 != 11240) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 72) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_C() c.Us_D_C {
    return .{ .v1 = 11240, .v2 = 4.5, .v3 = 72 };
}

// From T_Snnn_xbb.c:50874:50894
// struct  Us_D_D  {
//   unsigned short v1;
//   double v2;
//   double v3;
// };

test "Us_D_D layout" {
    var lv: c.Us_D_D = undefined;
    try testing.expectSize(c.Us_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_D C calls" {
    try testing.expectEqual(c.ret_Us_D_D(), .{ .v1 = 11524, .v2 = 1.0, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Us_D_D());
    try testing.expectOk(c.send_Us_D_D());
    try testing.expectOk(c.recv_Us_D_D(.{ .v1 = 11524, .v2 = 1.0, .v3 = 0.875 }));
}
pub export fn zig_recv_Us_D_D(lv: c.Us_D_D) c_int {
    if (lv.v1 != 11524) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_D() c.Us_D_D {
    return .{ .v1 = 11524, .v2 = 1.0, .v3 = 0.875 };
}

// From T_Snnn_xbb.c:50899:50919
// struct  Us_D_F  {
//   unsigned short v1;
//   double v2;
//   float v3;
// };

test "Us_D_F layout" {
    var lv: c.Us_D_F = undefined;
    try testing.expectSize(c.Us_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_F C calls" {
    try testing.expectEqual(c.ret_Us_D_F(), .{ .v1 = 6365, .v2 = 7.0, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Us_D_F());
    try testing.expectOk(c.send_Us_D_F());
    try testing.expectOk(c.recv_Us_D_F(.{ .v1 = 6365, .v2 = 7.0, .v3 = 7.0 }));
}
pub export fn zig_recv_Us_D_F(lv: c.Us_D_F) c_int {
    if (lv.v1 != 6365) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_F() c.Us_D_F {
    return .{ .v1 = 6365, .v2 = 7.0, .v3 = 7.0 };
}

// From T_Snnn_xbb.c:50924:50944
// struct  Us_D_I  {
//   unsigned short v1;
//   double v2;
//   int v3;
// };

test "Us_D_I layout" {
    var lv: c.Us_D_I = undefined;
    try testing.expectSize(c.Us_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_I C calls" {
    try testing.expectEqual(c.ret_Us_D_I(), .{ .v1 = 29281, .v2 = -2.125, .v3 = 22252 });
    try testing.expectOk(c.assert_ret_Us_D_I());
    try testing.expectOk(c.send_Us_D_I());
    try testing.expectOk(c.recv_Us_D_I(.{ .v1 = 29281, .v2 = -2.125, .v3 = 22252 }));
}
pub export fn zig_recv_Us_D_I(lv: c.Us_D_I) c_int {
    if (lv.v1 != 29281) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 22252) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_I() c.Us_D_I {
    return .{ .v1 = 29281, .v2 = -2.125, .v3 = 22252 };
}

// From T_Snnn_xbb.c:50949:50969
// struct  Us_D_Ip  {
//   unsigned short v1;
//   double v2;
//   int *v3;
// };

test "Us_D_Ip layout" {
    var lv: c.Us_D_Ip = undefined;
    try testing.expectSize(c.Us_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_Ip C calls" {
    try testing.expectEqual(c.ret_Us_D_Ip(), .{ .v1 = 23514, .v2 = 1.0, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_D_Ip());
    try testing.expectOk(c.send_Us_D_Ip());
    try testing.expectOk(c.recv_Us_D_Ip(.{ .v1 = 23514, .v2 = 1.0, .v3 = null }));
}
pub export fn zig_recv_Us_D_Ip(lv: c.Us_D_Ip) c_int {
    if (lv.v1 != 23514) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_Ip() c.Us_D_Ip {
    return .{ .v1 = 23514, .v2 = 1.0, .v3 = null };
}

// From T_Snnn_xbb.c:50974:50994
// struct  Us_D_L  {
//   unsigned short v1;
//   double v2;
//   __tsi64 v3;
// };

test "Us_D_L layout" {
    var lv: c.Us_D_L = undefined;
    try testing.expectSize(c.Us_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_L C calls" {
    try testing.expectEqual(c.ret_Us_D_L(), .{ .v1 = 19759, .v2 = -0.25, .v3 = 511 });
    try testing.expectOk(c.assert_ret_Us_D_L());
    try testing.expectOk(c.send_Us_D_L());
    try testing.expectOk(c.recv_Us_D_L(.{ .v1 = 19759, .v2 = -0.25, .v3 = 511 }));
}
pub export fn zig_recv_Us_D_L(lv: c.Us_D_L) c_int {
    if (lv.v1 != 19759) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 511) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_L() c.Us_D_L {
    return .{ .v1 = 19759, .v2 = -0.25, .v3 = 511 };
}

// From T_Snnn_xbb.c:50999:51019
// struct  Us_D_S  {
//   unsigned short v1;
//   double v2;
//   short v3;
// };

test "Us_D_S layout" {
    var lv: c.Us_D_S = undefined;
    try testing.expectSize(c.Us_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_S C calls" {
    try testing.expectEqual(c.ret_Us_D_S(), .{ .v1 = 9683, .v2 = -0.25, .v3 = 7749 });
    try testing.expectOk(c.assert_ret_Us_D_S());
    try testing.expectOk(c.send_Us_D_S());
    try testing.expectOk(c.recv_Us_D_S(.{ .v1 = 9683, .v2 = -0.25, .v3 = 7749 }));
}
pub export fn zig_recv_Us_D_S(lv: c.Us_D_S) c_int {
    if (lv.v1 != 9683) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 7749) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_S() c.Us_D_S {
    return .{ .v1 = 9683, .v2 = -0.25, .v3 = 7749 };
}

// From T_Snnn_xbb.c:51024:51044
// struct  Us_D_Uc  {
//   unsigned short v1;
//   double v2;
//   unsigned char v3;
// };

test "Us_D_Uc layout" {
    var lv: c.Us_D_Uc = undefined;
    try testing.expectSize(c.Us_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_Uc C calls" {
    try testing.expectEqual(c.ret_Us_D_Uc(), .{ .v1 = 29022, .v2 = -2.125, .v3 = 20 });
    try testing.expectOk(c.assert_ret_Us_D_Uc());
    try testing.expectOk(c.send_Us_D_Uc());
    try testing.expectOk(c.recv_Us_D_Uc(.{ .v1 = 29022, .v2 = -2.125, .v3 = 20 }));
}
pub export fn zig_recv_Us_D_Uc(lv: c.Us_D_Uc) c_int {
    if (lv.v1 != 29022) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 20) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_Uc() c.Us_D_Uc {
    return .{ .v1 = 29022, .v2 = -2.125, .v3 = 20 };
}

// From T_Snnn_xbb.c:51049:51069
// struct  Us_D_Ui  {
//   unsigned short v1;
//   double v2;
//   unsigned int v3;
// };

test "Us_D_Ui layout" {
    var lv: c.Us_D_Ui = undefined;
    try testing.expectSize(c.Us_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_Ui C calls" {
    try testing.expectEqual(c.ret_Us_D_Ui(), .{ .v1 = 32591, .v2 = 0.5, .v3 = 30269 });
    try testing.expectOk(c.assert_ret_Us_D_Ui());
    try testing.expectOk(c.send_Us_D_Ui());
    try testing.expectOk(c.recv_Us_D_Ui(.{ .v1 = 32591, .v2 = 0.5, .v3 = 30269 }));
}
pub export fn zig_recv_Us_D_Ui(lv: c.Us_D_Ui) c_int {
    if (lv.v1 != 32591) return 1;
    if (lv.v2 != 0.5) return 2;
    if (lv.v3 != 30269) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_Ui() c.Us_D_Ui {
    return .{ .v1 = 32591, .v2 = 0.5, .v3 = 30269 };
}

// From T_Snnn_xbb.c:51074:51094
// struct  Us_D_Ul  {
//   unsigned short v1;
//   double v2;
//   __tsu64 v3;
// };

test "Us_D_Ul layout" {
    var lv: c.Us_D_Ul = undefined;
    try testing.expectSize(c.Us_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_Ul C calls" {
    try testing.expectEqual(c.ret_Us_D_Ul(), .{ .v1 = 4318, .v2 = 7.0, .v3 = 28610 });
    try testing.expectOk(c.assert_ret_Us_D_Ul());
    try testing.expectOk(c.send_Us_D_Ul());
    try testing.expectOk(c.recv_Us_D_Ul(.{ .v1 = 4318, .v2 = 7.0, .v3 = 28610 }));
}
pub export fn zig_recv_Us_D_Ul(lv: c.Us_D_Ul) c_int {
    if (lv.v1 != 4318) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 28610) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_Ul() c.Us_D_Ul {
    return .{ .v1 = 4318, .v2 = 7.0, .v3 = 28610 };
}

// From T_Snnn_xbb.c:51099:51119
// struct  Us_D_Us  {
//   unsigned short v1;
//   double v2;
//   unsigned short v3;
// };

test "Us_D_Us layout" {
    var lv: c.Us_D_Us = undefined;
    try testing.expectSize(c.Us_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_Us C calls" {
    try testing.expectEqual(c.ret_Us_D_Us(), .{ .v1 = 30198, .v2 = 4.5, .v3 = 22443 });
    try testing.expectOk(c.assert_ret_Us_D_Us());
    try testing.expectOk(c.send_Us_D_Us());
    try testing.expectOk(c.recv_Us_D_Us(.{ .v1 = 30198, .v2 = 4.5, .v3 = 22443 }));
}
pub export fn zig_recv_Us_D_Us(lv: c.Us_D_Us) c_int {
    if (lv.v1 != 30198) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 22443) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_Us() c.Us_D_Us {
    return .{ .v1 = 30198, .v2 = 4.5, .v3 = 22443 };
}

// From T_Snnn_xbb.c:51124:51144
// struct  Us_D_Vp  {
//   unsigned short v1;
//   double v2;
//   void *v3;
// };

test "Us_D_Vp layout" {
    var lv: c.Us_D_Vp = undefined;
    try testing.expectSize(c.Us_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_D_Vp C calls" {
    try testing.expectEqual(c.ret_Us_D_Vp(), .{ .v1 = 1904, .v2 = 1.0, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_D_Vp());
    try testing.expectOk(c.send_Us_D_Vp());
    try testing.expectOk(c.recv_Us_D_Vp(.{ .v1 = 1904, .v2 = 1.0, .v3 = null }));
}
pub export fn zig_recv_Us_D_Vp(lv: c.Us_D_Vp) c_int {
    if (lv.v1 != 1904) return 1;
    if (lv.v2 != 1.0) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_D_Vp() c.Us_D_Vp {
    return .{ .v1 = 1904, .v2 = 1.0, .v3 = null };
}

// From T_Snnn_xbb.c:51149:51167
// struct  Us_F  {
//   unsigned short v1;
//   float v2;
// };

test "Us_F layout" {
    var lv: c.Us_F = undefined;
    try testing.expectSize(c.Us_F, 8);
    try testing.expectAlign(c.Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Us_F C calls" {
    try testing.expectEqual(c.ret_Us_F(), .{ .v1 = 26991, .v2 = 0.5 });
    try testing.expectOk(c.assert_ret_Us_F());
    try testing.expectOk(c.send_Us_F());
    try testing.expectOk(c.recv_Us_F(.{ .v1 = 26991, .v2 = 0.5 }));
}
pub export fn zig_recv_Us_F(lv: c.Us_F) c_int {
    if (lv.v1 != 26991) return 1;
    if (lv.v2 != 0.5) return 2;
    return 0;
}
pub export fn zig_ret_Us_F() c.Us_F {
    return .{ .v1 = 26991, .v2 = 0.5 };
}

// From T_Snnn_xbb.c:51896:51916
// struct  Us_F_C  {
//   unsigned short v1;
//   float v2;
//   char v3;
// };

test "Us_F_C layout" {
    var lv: c.Us_F_C = undefined;
    try testing.expectSize(c.Us_F_C, 12);
    try testing.expectAlign(c.Us_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_C C calls" {
    try testing.expectEqual(c.ret_Us_F_C(), .{ .v1 = 27059, .v2 = 7.0, .v3 = 87 });
    try testing.expectOk(c.assert_ret_Us_F_C());
    try testing.expectOk(c.send_Us_F_C());
    try testing.expectOk(c.recv_Us_F_C(.{ .v1 = 27059, .v2 = 7.0, .v3 = 87 }));
}
pub export fn zig_recv_Us_F_C(lv: c.Us_F_C) c_int {
    if (lv.v1 != 27059) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 87) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_C() c.Us_F_C {
    return .{ .v1 = 27059, .v2 = 7.0, .v3 = 87 };
}

// From T_Snnn_xbb.c:51921:51941
// struct  Us_F_D  {
//   unsigned short v1;
//   float v2;
//   double v3;
// };

test "Us_F_D layout" {
    var lv: c.Us_F_D = undefined;
    try testing.expectSize(c.Us_F_D, 16);
    try testing.expectAlign(c.Us_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_D C calls" {
    try testing.expectEqual(c.ret_Us_F_D(), .{ .v1 = 18964, .v2 = 7.0, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Us_F_D());
    try testing.expectOk(c.send_Us_F_D());
    try testing.expectOk(c.recv_Us_F_D(.{ .v1 = 18964, .v2 = 7.0, .v3 = 1.0 }));
}
pub export fn zig_recv_Us_F_D(lv: c.Us_F_D) c_int {
    if (lv.v1 != 18964) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_D() c.Us_F_D {
    return .{ .v1 = 18964, .v2 = 7.0, .v3 = 1.0 };
}

// From T_Snnn_xbb.c:51946:51966
// struct  Us_F_F  {
//   unsigned short v1;
//   float v2;
//   float v3;
// };

test "Us_F_F layout" {
    var lv: c.Us_F_F = undefined;
    try testing.expectSize(c.Us_F_F, 12);
    try testing.expectAlign(c.Us_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_F C calls" {
    try testing.expectEqual(c.ret_Us_F_F(), .{ .v1 = 18550, .v2 = 7.0, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Us_F_F());
    try testing.expectOk(c.send_Us_F_F());
    try testing.expectOk(c.recv_Us_F_F(.{ .v1 = 18550, .v2 = 7.0, .v3 = 1.0 }));
}
pub export fn zig_recv_Us_F_F(lv: c.Us_F_F) c_int {
    if (lv.v1 != 18550) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_F() c.Us_F_F {
    return .{ .v1 = 18550, .v2 = 7.0, .v3 = 1.0 };
}

// From T_Snnn_xbb.c:51971:51991
// struct  Us_F_I  {
//   unsigned short v1;
//   float v2;
//   int v3;
// };

test "Us_F_I layout" {
    var lv: c.Us_F_I = undefined;
    try testing.expectSize(c.Us_F_I, 12);
    try testing.expectAlign(c.Us_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_I C calls" {
    try testing.expectEqual(c.ret_Us_F_I(), .{ .v1 = 22098, .v2 = -2.125, .v3 = 5743 });
    try testing.expectOk(c.assert_ret_Us_F_I());
    try testing.expectOk(c.send_Us_F_I());
    try testing.expectOk(c.recv_Us_F_I(.{ .v1 = 22098, .v2 = -2.125, .v3 = 5743 }));
}
pub export fn zig_recv_Us_F_I(lv: c.Us_F_I) c_int {
    if (lv.v1 != 22098) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 5743) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_I() c.Us_F_I {
    return .{ .v1 = 22098, .v2 = -2.125, .v3 = 5743 };
}

// From T_Snnn_xbb.c:51996:52016
// struct  Us_F_Ip  {
//   unsigned short v1;
//   float v2;
//   int *v3;
// };

test "Us_F_Ip layout" {
    var lv: c.Us_F_Ip = undefined;
    try testing.expectSize(c.Us_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_Ip C calls" {
    try testing.expectEqual(c.ret_Us_F_Ip(), .{ .v1 = 5299, .v2 = -0.25, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_F_Ip());
    try testing.expectOk(c.send_Us_F_Ip());
    try testing.expectOk(c.recv_Us_F_Ip(.{ .v1 = 5299, .v2 = -0.25, .v3 = null }));
}
pub export fn zig_recv_Us_F_Ip(lv: c.Us_F_Ip) c_int {
    if (lv.v1 != 5299) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_Ip() c.Us_F_Ip {
    return .{ .v1 = 5299, .v2 = -0.25, .v3 = null };
}

// From T_Snnn_xbb.c:52021:52041
// struct  Us_F_L  {
//   unsigned short v1;
//   float v2;
//   __tsi64 v3;
// };

test "Us_F_L layout" {
    var lv: c.Us_F_L = undefined;
    try testing.expectSize(c.Us_F_L, 16);
    try testing.expectAlign(c.Us_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_L C calls" {
    try testing.expectEqual(c.ret_Us_F_L(), .{ .v1 = 27576, .v2 = 0.875, .v3 = 12334 });
    try testing.expectOk(c.assert_ret_Us_F_L());
    try testing.expectOk(c.send_Us_F_L());
    try testing.expectOk(c.recv_Us_F_L(.{ .v1 = 27576, .v2 = 0.875, .v3 = 12334 }));
}
pub export fn zig_recv_Us_F_L(lv: c.Us_F_L) c_int {
    if (lv.v1 != 27576) return 1;
    if (lv.v2 != 0.875) return 2;
    if (lv.v3 != 12334) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_L() c.Us_F_L {
    return .{ .v1 = 27576, .v2 = 0.875, .v3 = 12334 };
}

// From T_Snnn_xbb.c:52046:52066
// struct  Us_F_S  {
//   unsigned short v1;
//   float v2;
//   short v3;
// };

test "Us_F_S layout" {
    var lv: c.Us_F_S = undefined;
    try testing.expectSize(c.Us_F_S, 12);
    try testing.expectAlign(c.Us_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_S C calls" {
    try testing.expectEqual(c.ret_Us_F_S(), .{ .v1 = 1064, .v2 = -2.125, .v3 = 21363 });
    try testing.expectOk(c.assert_ret_Us_F_S());
    try testing.expectOk(c.send_Us_F_S());
    try testing.expectOk(c.recv_Us_F_S(.{ .v1 = 1064, .v2 = -2.125, .v3 = 21363 }));
}
pub export fn zig_recv_Us_F_S(lv: c.Us_F_S) c_int {
    if (lv.v1 != 1064) return 1;
    if (lv.v2 != -2.125) return 2;
    if (lv.v3 != 21363) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_S() c.Us_F_S {
    return .{ .v1 = 1064, .v2 = -2.125, .v3 = 21363 };
}

// From T_Snnn_xbb.c:52071:52091
// struct  Us_F_Uc  {
//   unsigned short v1;
//   float v2;
//   unsigned char v3;
// };

test "Us_F_Uc layout" {
    var lv: c.Us_F_Uc = undefined;
    try testing.expectSize(c.Us_F_Uc, 12);
    try testing.expectAlign(c.Us_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_Uc C calls" {
    try testing.expectEqual(c.ret_Us_F_Uc(), .{ .v1 = 7692, .v2 = 4.5, .v3 = 76 });
    try testing.expectOk(c.assert_ret_Us_F_Uc());
    try testing.expectOk(c.send_Us_F_Uc());
    try testing.expectOk(c.recv_Us_F_Uc(.{ .v1 = 7692, .v2 = 4.5, .v3 = 76 }));
}
pub export fn zig_recv_Us_F_Uc(lv: c.Us_F_Uc) c_int {
    if (lv.v1 != 7692) return 1;
    if (lv.v2 != 4.5) return 2;
    if (lv.v3 != 76) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_Uc() c.Us_F_Uc {
    return .{ .v1 = 7692, .v2 = 4.5, .v3 = 76 };
}

// From T_Snnn_xbb.c:52096:52116
// struct  Us_F_Ui  {
//   unsigned short v1;
//   float v2;
//   unsigned int v3;
// };

test "Us_F_Ui layout" {
    var lv: c.Us_F_Ui = undefined;
    try testing.expectSize(c.Us_F_Ui, 12);
    try testing.expectAlign(c.Us_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_Ui C calls" {
    try testing.expectEqual(c.ret_Us_F_Ui(), .{ .v1 = 26868, .v2 = -0.25, .v3 = 26494 });
    try testing.expectOk(c.assert_ret_Us_F_Ui());
    try testing.expectOk(c.send_Us_F_Ui());
    try testing.expectOk(c.recv_Us_F_Ui(.{ .v1 = 26868, .v2 = -0.25, .v3 = 26494 }));
}
pub export fn zig_recv_Us_F_Ui(lv: c.Us_F_Ui) c_int {
    if (lv.v1 != 26868) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != 26494) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_Ui() c.Us_F_Ui {
    return .{ .v1 = 26868, .v2 = -0.25, .v3 = 26494 };
}

// From T_Snnn_xbb.c:52121:52141
// struct  Us_F_Ul  {
//   unsigned short v1;
//   float v2;
//   __tsu64 v3;
// };

test "Us_F_Ul layout" {
    var lv: c.Us_F_Ul = undefined;
    try testing.expectSize(c.Us_F_Ul, 16);
    try testing.expectAlign(c.Us_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_Ul C calls" {
    try testing.expectEqual(c.ret_Us_F_Ul(), .{ .v1 = 19238, .v2 = 7.0, .v3 = 27012 });
    try testing.expectOk(c.assert_ret_Us_F_Ul());
    try testing.expectOk(c.send_Us_F_Ul());
    try testing.expectOk(c.recv_Us_F_Ul(.{ .v1 = 19238, .v2 = 7.0, .v3 = 27012 }));
}
pub export fn zig_recv_Us_F_Ul(lv: c.Us_F_Ul) c_int {
    if (lv.v1 != 19238) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 27012) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_Ul() c.Us_F_Ul {
    return .{ .v1 = 19238, .v2 = 7.0, .v3 = 27012 };
}

// From T_Snnn_xbb.c:52146:52166
// struct  Us_F_Us  {
//   unsigned short v1;
//   float v2;
//   unsigned short v3;
// };

test "Us_F_Us layout" {
    var lv: c.Us_F_Us = undefined;
    try testing.expectSize(c.Us_F_Us, 12);
    try testing.expectAlign(c.Us_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_Us C calls" {
    try testing.expectEqual(c.ret_Us_F_Us(), .{ .v1 = 24992, .v2 = 7.0, .v3 = 6846 });
    try testing.expectOk(c.assert_ret_Us_F_Us());
    try testing.expectOk(c.send_Us_F_Us());
    try testing.expectOk(c.recv_Us_F_Us(.{ .v1 = 24992, .v2 = 7.0, .v3 = 6846 }));
}
pub export fn zig_recv_Us_F_Us(lv: c.Us_F_Us) c_int {
    if (lv.v1 != 24992) return 1;
    if (lv.v2 != 7.0) return 2;
    if (lv.v3 != 6846) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_Us() c.Us_F_Us {
    return .{ .v1 = 24992, .v2 = 7.0, .v3 = 6846 };
}

// From T_Snnn_xbb.c:52171:52191
// struct  Us_F_Vp  {
//   unsigned short v1;
//   float v2;
//   void *v3;
// };

test "Us_F_Vp layout" {
    var lv: c.Us_F_Vp = undefined;
    try testing.expectSize(c.Us_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_F_Vp C calls" {
    try testing.expectEqual(c.ret_Us_F_Vp(), .{ .v1 = 17908, .v2 = -0.25, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_F_Vp());
    try testing.expectOk(c.send_Us_F_Vp());
    try testing.expectOk(c.recv_Us_F_Vp(.{ .v1 = 17908, .v2 = -0.25, .v3 = null }));
}
pub export fn zig_recv_Us_F_Vp(lv: c.Us_F_Vp) c_int {
    if (lv.v1 != 17908) return 1;
    if (lv.v2 != -0.25) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_F_Vp() c.Us_F_Vp {
    return .{ .v1 = 17908, .v2 = -0.25, .v3 = null };
}

// From T_Snnn_xbb.c:52196:52214
// struct  Us_I  {
//   unsigned short v1;
//   int v2;
// };

test "Us_I layout" {
    var lv: c.Us_I = undefined;
    try testing.expectSize(c.Us_I, 8);
    try testing.expectAlign(c.Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Us_I C calls" {
    try testing.expectEqual(c.ret_Us_I(), .{ .v1 = 30600, .v2 = 1719 });
    try testing.expectOk(c.assert_ret_Us_I());
    try testing.expectOk(c.send_Us_I());
    try testing.expectOk(c.recv_Us_I(.{ .v1 = 30600, .v2 = 1719 }));
}
pub export fn zig_recv_Us_I(lv: c.Us_I) c_int {
    if (lv.v1 != 30600) return 1;
    if (lv.v2 != 1719) return 2;
    return 0;
}
pub export fn zig_ret_Us_I() c.Us_I {
    return .{ .v1 = 30600, .v2 = 1719 };
}

// From T_Snnn_xbb.c:52943:52963
// struct  Us_I_C  {
//   unsigned short v1;
//   int v2;
//   char v3;
// };

test "Us_I_C layout" {
    var lv: c.Us_I_C = undefined;
    try testing.expectSize(c.Us_I_C, 12);
    try testing.expectAlign(c.Us_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_C C calls" {
    try testing.expectEqual(c.ret_Us_I_C(), .{ .v1 = 13661, .v2 = 5376, .v3 = 111 });
    try testing.expectOk(c.assert_ret_Us_I_C());
    try testing.expectOk(c.send_Us_I_C());
    try testing.expectOk(c.recv_Us_I_C(.{ .v1 = 13661, .v2 = 5376, .v3 = 111 }));
}
pub export fn zig_recv_Us_I_C(lv: c.Us_I_C) c_int {
    if (lv.v1 != 13661) return 1;
    if (lv.v2 != 5376) return 2;
    if (lv.v3 != 111) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_C() c.Us_I_C {
    return .{ .v1 = 13661, .v2 = 5376, .v3 = 111 };
}

// From T_Snnn_xbb.c:52968:52988
// struct  Us_I_D  {
//   unsigned short v1;
//   int v2;
//   double v3;
// };

test "Us_I_D layout" {
    var lv: c.Us_I_D = undefined;
    try testing.expectSize(c.Us_I_D, 16);
    try testing.expectAlign(c.Us_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_D C calls" {
    try testing.expectEqual(c.ret_Us_I_D(), .{ .v1 = 8903, .v2 = 26042, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Us_I_D());
    try testing.expectOk(c.send_Us_I_D());
    try testing.expectOk(c.recv_Us_I_D(.{ .v1 = 8903, .v2 = 26042, .v3 = -2.125 }));
}
pub export fn zig_recv_Us_I_D(lv: c.Us_I_D) c_int {
    if (lv.v1 != 8903) return 1;
    if (lv.v2 != 26042) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_D() c.Us_I_D {
    return .{ .v1 = 8903, .v2 = 26042, .v3 = -2.125 };
}

// From T_Snnn_xbb.c:52993:53013
// struct  Us_I_F  {
//   unsigned short v1;
//   int v2;
//   float v3;
// };

test "Us_I_F layout" {
    var lv: c.Us_I_F = undefined;
    try testing.expectSize(c.Us_I_F, 12);
    try testing.expectAlign(c.Us_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_F C calls" {
    try testing.expectEqual(c.ret_Us_I_F(), .{ .v1 = 20027, .v2 = 12274, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Us_I_F());
    try testing.expectOk(c.send_Us_I_F());
    try testing.expectOk(c.recv_Us_I_F(.{ .v1 = 20027, .v2 = 12274, .v3 = 0.875 }));
}
pub export fn zig_recv_Us_I_F(lv: c.Us_I_F) c_int {
    if (lv.v1 != 20027) return 1;
    if (lv.v2 != 12274) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_F() c.Us_I_F {
    return .{ .v1 = 20027, .v2 = 12274, .v3 = 0.875 };
}

// From T_Snnn_xbb.c:53018:53038
// struct  Us_I_I  {
//   unsigned short v1;
//   int v2;
//   int v3;
// };

test "Us_I_I layout" {
    var lv: c.Us_I_I = undefined;
    try testing.expectSize(c.Us_I_I, 12);
    try testing.expectAlign(c.Us_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_I C calls" {
    try testing.expectEqual(c.ret_Us_I_I(), .{ .v1 = 16614, .v2 = 20431, .v3 = 2793 });
    try testing.expectOk(c.assert_ret_Us_I_I());
    try testing.expectOk(c.send_Us_I_I());
    try testing.expectOk(c.recv_Us_I_I(.{ .v1 = 16614, .v2 = 20431, .v3 = 2793 }));
}
pub export fn zig_recv_Us_I_I(lv: c.Us_I_I) c_int {
    if (lv.v1 != 16614) return 1;
    if (lv.v2 != 20431) return 2;
    if (lv.v3 != 2793) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_I() c.Us_I_I {
    return .{ .v1 = 16614, .v2 = 20431, .v3 = 2793 };
}

// From T_Snnn_xbb.c:53043:53063
// struct  Us_I_Ip  {
//   unsigned short v1;
//   int v2;
//   int *v3;
// };

test "Us_I_Ip layout" {
    var lv: c.Us_I_Ip = undefined;
    try testing.expectSize(c.Us_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_Ip C calls" {
    try testing.expectEqual(c.ret_Us_I_Ip(), .{ .v1 = 28542, .v2 = 11599, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_I_Ip());
    try testing.expectOk(c.send_Us_I_Ip());
    try testing.expectOk(c.recv_Us_I_Ip(.{ .v1 = 28542, .v2 = 11599, .v3 = null }));
}
pub export fn zig_recv_Us_I_Ip(lv: c.Us_I_Ip) c_int {
    if (lv.v1 != 28542) return 1;
    if (lv.v2 != 11599) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_Ip() c.Us_I_Ip {
    return .{ .v1 = 28542, .v2 = 11599, .v3 = null };
}

// From T_Snnn_xbb.c:53068:53088
// struct  Us_I_L  {
//   unsigned short v1;
//   int v2;
//   __tsi64 v3;
// };

test "Us_I_L layout" {
    var lv: c.Us_I_L = undefined;
    try testing.expectSize(c.Us_I_L, 16);
    try testing.expectAlign(c.Us_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_L C calls" {
    try testing.expectEqual(c.ret_Us_I_L(), .{ .v1 = 10367, .v2 = 14385, .v3 = 15994 });
    try testing.expectOk(c.assert_ret_Us_I_L());
    try testing.expectOk(c.send_Us_I_L());
    try testing.expectOk(c.recv_Us_I_L(.{ .v1 = 10367, .v2 = 14385, .v3 = 15994 }));
}
pub export fn zig_recv_Us_I_L(lv: c.Us_I_L) c_int {
    if (lv.v1 != 10367) return 1;
    if (lv.v2 != 14385) return 2;
    if (lv.v3 != 15994) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_L() c.Us_I_L {
    return .{ .v1 = 10367, .v2 = 14385, .v3 = 15994 };
}

// From T_Snnn_xbb.c:53093:53113
// struct  Us_I_S  {
//   unsigned short v1;
//   int v2;
//   short v3;
// };

test "Us_I_S layout" {
    var lv: c.Us_I_S = undefined;
    try testing.expectSize(c.Us_I_S, 12);
    try testing.expectAlign(c.Us_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_S C calls" {
    try testing.expectEqual(c.ret_Us_I_S(), .{ .v1 = 11579, .v2 = 6917, .v3 = 7261 });
    try testing.expectOk(c.assert_ret_Us_I_S());
    try testing.expectOk(c.send_Us_I_S());
    try testing.expectOk(c.recv_Us_I_S(.{ .v1 = 11579, .v2 = 6917, .v3 = 7261 }));
}
pub export fn zig_recv_Us_I_S(lv: c.Us_I_S) c_int {
    if (lv.v1 != 11579) return 1;
    if (lv.v2 != 6917) return 2;
    if (lv.v3 != 7261) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_S() c.Us_I_S {
    return .{ .v1 = 11579, .v2 = 6917, .v3 = 7261 };
}

// From T_Snnn_xbb.c:53118:53138
// struct  Us_I_Uc  {
//   unsigned short v1;
//   int v2;
//   unsigned char v3;
// };

test "Us_I_Uc layout" {
    var lv: c.Us_I_Uc = undefined;
    try testing.expectSize(c.Us_I_Uc, 12);
    try testing.expectAlign(c.Us_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_Uc C calls" {
    try testing.expectEqual(c.ret_Us_I_Uc(), .{ .v1 = 26644, .v2 = 29019, .v3 = 82 });
    try testing.expectOk(c.assert_ret_Us_I_Uc());
    try testing.expectOk(c.send_Us_I_Uc());
    try testing.expectOk(c.recv_Us_I_Uc(.{ .v1 = 26644, .v2 = 29019, .v3 = 82 }));
}
pub export fn zig_recv_Us_I_Uc(lv: c.Us_I_Uc) c_int {
    if (lv.v1 != 26644) return 1;
    if (lv.v2 != 29019) return 2;
    if (lv.v3 != 82) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_Uc() c.Us_I_Uc {
    return .{ .v1 = 26644, .v2 = 29019, .v3 = 82 };
}

// From T_Snnn_xbb.c:53143:53163
// struct  Us_I_Ui  {
//   unsigned short v1;
//   int v2;
//   unsigned int v3;
// };

test "Us_I_Ui layout" {
    var lv: c.Us_I_Ui = undefined;
    try testing.expectSize(c.Us_I_Ui, 12);
    try testing.expectAlign(c.Us_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_Ui C calls" {
    try testing.expectEqual(c.ret_Us_I_Ui(), .{ .v1 = 19361, .v2 = 28469, .v3 = 7208 });
    try testing.expectOk(c.assert_ret_Us_I_Ui());
    try testing.expectOk(c.send_Us_I_Ui());
    try testing.expectOk(c.recv_Us_I_Ui(.{ .v1 = 19361, .v2 = 28469, .v3 = 7208 }));
}
pub export fn zig_recv_Us_I_Ui(lv: c.Us_I_Ui) c_int {
    if (lv.v1 != 19361) return 1;
    if (lv.v2 != 28469) return 2;
    if (lv.v3 != 7208) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_Ui() c.Us_I_Ui {
    return .{ .v1 = 19361, .v2 = 28469, .v3 = 7208 };
}

// From T_Snnn_xbb.c:53168:53188
// struct  Us_I_Ul  {
//   unsigned short v1;
//   int v2;
//   __tsu64 v3;
// };

test "Us_I_Ul layout" {
    var lv: c.Us_I_Ul = undefined;
    try testing.expectSize(c.Us_I_Ul, 16);
    try testing.expectAlign(c.Us_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_Ul C calls" {
    try testing.expectEqual(c.ret_Us_I_Ul(), .{ .v1 = 28076, .v2 = 27483, .v3 = 30933 });
    try testing.expectOk(c.assert_ret_Us_I_Ul());
    try testing.expectOk(c.send_Us_I_Ul());
    try testing.expectOk(c.recv_Us_I_Ul(.{ .v1 = 28076, .v2 = 27483, .v3 = 30933 }));
}
pub export fn zig_recv_Us_I_Ul(lv: c.Us_I_Ul) c_int {
    if (lv.v1 != 28076) return 1;
    if (lv.v2 != 27483) return 2;
    if (lv.v3 != 30933) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_Ul() c.Us_I_Ul {
    return .{ .v1 = 28076, .v2 = 27483, .v3 = 30933 };
}

// From T_Snnn_xbb.c:53193:53213
// struct  Us_I_Us  {
//   unsigned short v1;
//   int v2;
//   unsigned short v3;
// };

test "Us_I_Us layout" {
    var lv: c.Us_I_Us = undefined;
    try testing.expectSize(c.Us_I_Us, 12);
    try testing.expectAlign(c.Us_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_Us C calls" {
    try testing.expectEqual(c.ret_Us_I_Us(), .{ .v1 = 15877, .v2 = 5090, .v3 = 1580 });
    try testing.expectOk(c.assert_ret_Us_I_Us());
    try testing.expectOk(c.send_Us_I_Us());
    try testing.expectOk(c.recv_Us_I_Us(.{ .v1 = 15877, .v2 = 5090, .v3 = 1580 }));
}
pub export fn zig_recv_Us_I_Us(lv: c.Us_I_Us) c_int {
    if (lv.v1 != 15877) return 1;
    if (lv.v2 != 5090) return 2;
    if (lv.v3 != 1580) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_Us() c.Us_I_Us {
    return .{ .v1 = 15877, .v2 = 5090, .v3 = 1580 };
}

// From T_Snnn_xbb.c:53218:53238
// struct  Us_I_Vp  {
//   unsigned short v1;
//   int v2;
//   void *v3;
// };

test "Us_I_Vp layout" {
    var lv: c.Us_I_Vp = undefined;
    try testing.expectSize(c.Us_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_I_Vp C calls" {
    try testing.expectEqual(c.ret_Us_I_Vp(), .{ .v1 = 1804, .v2 = 13795, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_I_Vp());
    try testing.expectOk(c.send_Us_I_Vp());
    try testing.expectOk(c.recv_Us_I_Vp(.{ .v1 = 1804, .v2 = 13795, .v3 = null }));
}
pub export fn zig_recv_Us_I_Vp(lv: c.Us_I_Vp) c_int {
    if (lv.v1 != 1804) return 1;
    if (lv.v2 != 13795) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_I_Vp() c.Us_I_Vp {
    return .{ .v1 = 1804, .v2 = 13795, .v3 = null };
}

// From T_Snnn_xbb.c:53243:53261
// struct  Us_Ip  {
//   unsigned short v1;
//   int *v2;
// };

test "Us_Ip layout" {
    var lv: c.Us_Ip = undefined;
    try testing.expectSize(c.Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Us_Ip C calls" {
    try testing.expectEqual(c.ret_Us_Ip(), .{ .v1 = 28828, .v2 = null });
    try testing.expectOk(c.assert_ret_Us_Ip());
    try testing.expectOk(c.send_Us_Ip());
    try testing.expectOk(c.recv_Us_Ip(.{ .v1 = 28828, .v2 = null }));
}
pub export fn zig_recv_Us_Ip(lv: c.Us_Ip) c_int {
    if (lv.v1 != 28828) return 1;
    if (lv.v2 != null) return 2;
    return 0;
}
pub export fn zig_ret_Us_Ip() c.Us_Ip {
    return .{ .v1 = 28828, .v2 = null };
}

// From T_Snnn_xbb.c:53990:54010
// struct  Us_Ip_C  {
//   unsigned short v1;
//   int *v2;
//   char v3;
// };

test "Us_Ip_C layout" {
    var lv: c.Us_Ip_C = undefined;
    try testing.expectSize(c.Us_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_C C calls" {
    try testing.expectEqual(c.ret_Us_Ip_C(), .{ .v1 = 11358, .v2 = null, .v3 = 95 });
    try testing.expectOk(c.assert_ret_Us_Ip_C());
    try testing.expectOk(c.send_Us_Ip_C());
    try testing.expectOk(c.recv_Us_Ip_C(.{ .v1 = 11358, .v2 = null, .v3 = 95 }));
}
pub export fn zig_recv_Us_Ip_C(lv: c.Us_Ip_C) c_int {
    if (lv.v1 != 11358) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 95) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_C() c.Us_Ip_C {
    return .{ .v1 = 11358, .v2 = null, .v3 = 95 };
}

// From T_Snnn_xbb.c:54015:54035
// struct  Us_Ip_D  {
//   unsigned short v1;
//   int *v2;
//   double v3;
// };

test "Us_Ip_D layout" {
    var lv: c.Us_Ip_D = undefined;
    try testing.expectSize(c.Us_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_D C calls" {
    try testing.expectEqual(c.ret_Us_Ip_D(), .{ .v1 = 32334, .v2 = null, .v3 = 4.5 });
    try testing.expectOk(c.assert_ret_Us_Ip_D());
    try testing.expectOk(c.send_Us_Ip_D());
    try testing.expectOk(c.recv_Us_Ip_D(.{ .v1 = 32334, .v2 = null, .v3 = 4.5 }));
}
pub export fn zig_recv_Us_Ip_D(lv: c.Us_Ip_D) c_int {
    if (lv.v1 != 32334) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 4.5) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_D() c.Us_Ip_D {
    return .{ .v1 = 32334, .v2 = null, .v3 = 4.5 };
}

// From T_Snnn_xbb.c:54040:54060
// struct  Us_Ip_F  {
//   unsigned short v1;
//   int *v2;
//   float v3;
// };

test "Us_Ip_F layout" {
    var lv: c.Us_Ip_F = undefined;
    try testing.expectSize(c.Us_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_F C calls" {
    try testing.expectEqual(c.ret_Us_Ip_F(), .{ .v1 = 19476, .v2 = null, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Us_Ip_F());
    try testing.expectOk(c.send_Us_Ip_F());
    try testing.expectOk(c.recv_Us_Ip_F(.{ .v1 = 19476, .v2 = null, .v3 = -2.125 }));
}
pub export fn zig_recv_Us_Ip_F(lv: c.Us_Ip_F) c_int {
    if (lv.v1 != 19476) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_F() c.Us_Ip_F {
    return .{ .v1 = 19476, .v2 = null, .v3 = -2.125 };
}

// From T_Snnn_xbb.c:54065:54085
// struct  Us_Ip_I  {
//   unsigned short v1;
//   int *v2;
//   int v3;
// };

test "Us_Ip_I layout" {
    var lv: c.Us_Ip_I = undefined;
    try testing.expectSize(c.Us_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_I C calls" {
    try testing.expectEqual(c.ret_Us_Ip_I(), .{ .v1 = 14363, .v2 = null, .v3 = 12277 });
    try testing.expectOk(c.assert_ret_Us_Ip_I());
    try testing.expectOk(c.send_Us_Ip_I());
    try testing.expectOk(c.recv_Us_Ip_I(.{ .v1 = 14363, .v2 = null, .v3 = 12277 }));
}
pub export fn zig_recv_Us_Ip_I(lv: c.Us_Ip_I) c_int {
    if (lv.v1 != 14363) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 12277) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_I() c.Us_Ip_I {
    return .{ .v1 = 14363, .v2 = null, .v3 = 12277 };
}

// From T_Snnn_xbb.c:54090:54110
// struct  Us_Ip_Ip  {
//   unsigned short v1;
//   int *v2;
//   int *v3;
// };

test "Us_Ip_Ip layout" {
    var lv: c.Us_Ip_Ip = undefined;
    try testing.expectSize(c.Us_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_Ip C calls" {
    try testing.expectEqual(c.ret_Us_Ip_Ip(), .{ .v1 = 27094, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Ip_Ip());
    try testing.expectOk(c.send_Us_Ip_Ip());
    try testing.expectOk(c.recv_Us_Ip_Ip(.{ .v1 = 27094, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_Us_Ip_Ip(lv: c.Us_Ip_Ip) c_int {
    if (lv.v1 != 27094) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_Ip() c.Us_Ip_Ip {
    return .{ .v1 = 27094, .v2 = null, .v3 = null };
}

// From T_Snnn_xbb.c:54115:54135
// struct  Us_Ip_L  {
//   unsigned short v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Us_Ip_L layout" {
    var lv: c.Us_Ip_L = undefined;
    try testing.expectSize(c.Us_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_L C calls" {
    try testing.expectEqual(c.ret_Us_Ip_L(), .{ .v1 = 7648, .v2 = null, .v3 = 28696 });
    try testing.expectOk(c.assert_ret_Us_Ip_L());
    try testing.expectOk(c.send_Us_Ip_L());
    try testing.expectOk(c.recv_Us_Ip_L(.{ .v1 = 7648, .v2 = null, .v3 = 28696 }));
}
pub export fn zig_recv_Us_Ip_L(lv: c.Us_Ip_L) c_int {
    if (lv.v1 != 7648) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 28696) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_L() c.Us_Ip_L {
    return .{ .v1 = 7648, .v2 = null, .v3 = 28696 };
}

// From T_Snnn_xbb.c:54140:54160
// struct  Us_Ip_S  {
//   unsigned short v1;
//   int *v2;
//   short v3;
// };

test "Us_Ip_S layout" {
    var lv: c.Us_Ip_S = undefined;
    try testing.expectSize(c.Us_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_S C calls" {
    try testing.expectEqual(c.ret_Us_Ip_S(), .{ .v1 = 15817, .v2 = null, .v3 = 7907 });
    try testing.expectOk(c.assert_ret_Us_Ip_S());
    try testing.expectOk(c.send_Us_Ip_S());
    try testing.expectOk(c.recv_Us_Ip_S(.{ .v1 = 15817, .v2 = null, .v3 = 7907 }));
}
pub export fn zig_recv_Us_Ip_S(lv: c.Us_Ip_S) c_int {
    if (lv.v1 != 15817) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 7907) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_S() c.Us_Ip_S {
    return .{ .v1 = 15817, .v2 = null, .v3 = 7907 };
}

// From T_Snnn_xbb.c:54165:54185
// struct  Us_Ip_Uc  {
//   unsigned short v1;
//   int *v2;
//   unsigned char v3;
// };

test "Us_Ip_Uc layout" {
    var lv: c.Us_Ip_Uc = undefined;
    try testing.expectSize(c.Us_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_Uc C calls" {
    try testing.expectEqual(c.ret_Us_Ip_Uc(), .{ .v1 = 3074, .v2 = null, .v3 = 5 });
    try testing.expectOk(c.assert_ret_Us_Ip_Uc());
    try testing.expectOk(c.send_Us_Ip_Uc());
    try testing.expectOk(c.recv_Us_Ip_Uc(.{ .v1 = 3074, .v2 = null, .v3 = 5 }));
}
pub export fn zig_recv_Us_Ip_Uc(lv: c.Us_Ip_Uc) c_int {
    if (lv.v1 != 3074) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 5) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_Uc() c.Us_Ip_Uc {
    return .{ .v1 = 3074, .v2 = null, .v3 = 5 };
}

// From T_Snnn_xbb.c:54190:54210
// struct  Us_Ip_Ui  {
//   unsigned short v1;
//   int *v2;
//   unsigned int v3;
// };

test "Us_Ip_Ui layout" {
    var lv: c.Us_Ip_Ui = undefined;
    try testing.expectSize(c.Us_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_Ui C calls" {
    try testing.expectEqual(c.ret_Us_Ip_Ui(), .{ .v1 = 1622, .v2 = null, .v3 = 7385 });
    try testing.expectOk(c.assert_ret_Us_Ip_Ui());
    try testing.expectOk(c.send_Us_Ip_Ui());
    try testing.expectOk(c.recv_Us_Ip_Ui(.{ .v1 = 1622, .v2 = null, .v3 = 7385 }));
}
pub export fn zig_recv_Us_Ip_Ui(lv: c.Us_Ip_Ui) c_int {
    if (lv.v1 != 1622) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 7385) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_Ui() c.Us_Ip_Ui {
    return .{ .v1 = 1622, .v2 = null, .v3 = 7385 };
}

// From T_Snnn_xbb.c:54215:54235
// struct  Us_Ip_Ul  {
//   unsigned short v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Us_Ip_Ul layout" {
    var lv: c.Us_Ip_Ul = undefined;
    try testing.expectSize(c.Us_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_Ul C calls" {
    try testing.expectEqual(c.ret_Us_Ip_Ul(), .{ .v1 = 4903, .v2 = null, .v3 = 12817 });
    try testing.expectOk(c.assert_ret_Us_Ip_Ul());
    try testing.expectOk(c.send_Us_Ip_Ul());
    try testing.expectOk(c.recv_Us_Ip_Ul(.{ .v1 = 4903, .v2 = null, .v3 = 12817 }));
}
pub export fn zig_recv_Us_Ip_Ul(lv: c.Us_Ip_Ul) c_int {
    if (lv.v1 != 4903) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 12817) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_Ul() c.Us_Ip_Ul {
    return .{ .v1 = 4903, .v2 = null, .v3 = 12817 };
}

// From T_Snnn_xbb.c:54240:54260
// struct  Us_Ip_Us  {
//   unsigned short v1;
//   int *v2;
//   unsigned short v3;
// };

test "Us_Ip_Us layout" {
    var lv: c.Us_Ip_Us = undefined;
    try testing.expectSize(c.Us_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_Us C calls" {
    try testing.expectEqual(c.ret_Us_Ip_Us(), .{ .v1 = 13416, .v2 = null, .v3 = 15710 });
    try testing.expectOk(c.assert_ret_Us_Ip_Us());
    try testing.expectOk(c.send_Us_Ip_Us());
    try testing.expectOk(c.recv_Us_Ip_Us(.{ .v1 = 13416, .v2 = null, .v3 = 15710 }));
}
pub export fn zig_recv_Us_Ip_Us(lv: c.Us_Ip_Us) c_int {
    if (lv.v1 != 13416) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 15710) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_Us() c.Us_Ip_Us {
    return .{ .v1 = 13416, .v2 = null, .v3 = 15710 };
}

// From T_Snnn_xbb.c:54265:54285
// struct  Us_Ip_Vp  {
//   unsigned short v1;
//   int *v2;
//   void *v3;
// };

test "Us_Ip_Vp layout" {
    var lv: c.Us_Ip_Vp = undefined;
    try testing.expectSize(c.Us_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Ip_Vp C calls" {
    try testing.expectEqual(c.ret_Us_Ip_Vp(), .{ .v1 = 24100, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Ip_Vp());
    try testing.expectOk(c.send_Us_Ip_Vp());
    try testing.expectOk(c.recv_Us_Ip_Vp(.{ .v1 = 24100, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_Us_Ip_Vp(lv: c.Us_Ip_Vp) c_int {
    if (lv.v1 != 24100) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ip_Vp() c.Us_Ip_Vp {
    return .{ .v1 = 24100, .v2 = null, .v3 = null };
}

// From T_Snnn_xbb.c:54290:54308
// struct  Us_L  {
//   unsigned short v1;
//   __tsi64 v2;
// };

test "Us_L layout" {
    var lv: c.Us_L = undefined;
    try testing.expectSize(c.Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Us_L C calls" {
    try testing.expectEqual(c.ret_Us_L(), .{ .v1 = 24913, .v2 = 9960 });
    try testing.expectOk(c.assert_ret_Us_L());
    try testing.expectOk(c.send_Us_L());
    try testing.expectOk(c.recv_Us_L(.{ .v1 = 24913, .v2 = 9960 }));
}
pub export fn zig_recv_Us_L(lv: c.Us_L) c_int {
    if (lv.v1 != 24913) return 1;
    if (lv.v2 != 9960) return 2;
    return 0;
}
pub export fn zig_ret_Us_L() c.Us_L {
    return .{ .v1 = 24913, .v2 = 9960 };
}

// From T_Snnn_xbb.c:55037:55057
// struct  Us_L_C  {
//   unsigned short v1;
//   __tsi64 v2;
//   char v3;
// };

test "Us_L_C layout" {
    var lv: c.Us_L_C = undefined;
    try testing.expectSize(c.Us_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_C C calls" {
    try testing.expectEqual(c.ret_Us_L_C(), .{ .v1 = 10232, .v2 = 9213, .v3 = 44 });
    try testing.expectOk(c.assert_ret_Us_L_C());
    try testing.expectOk(c.send_Us_L_C());
    try testing.expectOk(c.recv_Us_L_C(.{ .v1 = 10232, .v2 = 9213, .v3 = 44 }));
}
pub export fn zig_recv_Us_L_C(lv: c.Us_L_C) c_int {
    if (lv.v1 != 10232) return 1;
    if (lv.v2 != 9213) return 2;
    if (lv.v3 != 44) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_C() c.Us_L_C {
    return .{ .v1 = 10232, .v2 = 9213, .v3 = 44 };
}

// From T_Snnn_xbb.c:55062:55082
// struct  Us_L_D  {
//   unsigned short v1;
//   __tsi64 v2;
//   double v3;
// };

test "Us_L_D layout" {
    var lv: c.Us_L_D = undefined;
    try testing.expectSize(c.Us_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_D C calls" {
    try testing.expectEqual(c.ret_Us_L_D(), .{ .v1 = 23248, .v2 = 22734, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Us_L_D());
    try testing.expectOk(c.send_Us_L_D());
    try testing.expectOk(c.recv_Us_L_D(.{ .v1 = 23248, .v2 = 22734, .v3 = -0.25 }));
}
pub export fn zig_recv_Us_L_D(lv: c.Us_L_D) c_int {
    if (lv.v1 != 23248) return 1;
    if (lv.v2 != 22734) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_D() c.Us_L_D {
    return .{ .v1 = 23248, .v2 = 22734, .v3 = -0.25 };
}

// From T_Snnn_xbb.c:55087:55107
// struct  Us_L_F  {
//   unsigned short v1;
//   __tsi64 v2;
//   float v3;
// };

test "Us_L_F layout" {
    var lv: c.Us_L_F = undefined;
    try testing.expectSize(c.Us_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_F C calls" {
    try testing.expectEqual(c.ret_Us_L_F(), .{ .v1 = 24117, .v2 = 9201, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Us_L_F());
    try testing.expectOk(c.send_Us_L_F());
    try testing.expectOk(c.recv_Us_L_F(.{ .v1 = 24117, .v2 = 9201, .v3 = -0.25 }));
}
pub export fn zig_recv_Us_L_F(lv: c.Us_L_F) c_int {
    if (lv.v1 != 24117) return 1;
    if (lv.v2 != 9201) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_F() c.Us_L_F {
    return .{ .v1 = 24117, .v2 = 9201, .v3 = -0.25 };
}

// From T_Snnn_xbb.c:55112:55132
// struct  Us_L_I  {
//   unsigned short v1;
//   __tsi64 v2;
//   int v3;
// };

test "Us_L_I layout" {
    var lv: c.Us_L_I = undefined;
    try testing.expectSize(c.Us_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_I C calls" {
    try testing.expectEqual(c.ret_Us_L_I(), .{ .v1 = 3504, .v2 = 11336, .v3 = 24471 });
    try testing.expectOk(c.assert_ret_Us_L_I());
    try testing.expectOk(c.send_Us_L_I());
    try testing.expectOk(c.recv_Us_L_I(.{ .v1 = 3504, .v2 = 11336, .v3 = 24471 }));
}
pub export fn zig_recv_Us_L_I(lv: c.Us_L_I) c_int {
    if (lv.v1 != 3504) return 1;
    if (lv.v2 != 11336) return 2;
    if (lv.v3 != 24471) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_I() c.Us_L_I {
    return .{ .v1 = 3504, .v2 = 11336, .v3 = 24471 };
}

// From T_Snnn_xbb.c:55137:55157
// struct  Us_L_Ip  {
//   unsigned short v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Us_L_Ip layout" {
    var lv: c.Us_L_Ip = undefined;
    try testing.expectSize(c.Us_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_Ip C calls" {
    try testing.expectEqual(c.ret_Us_L_Ip(), .{ .v1 = 21042, .v2 = 20614, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_L_Ip());
    try testing.expectOk(c.send_Us_L_Ip());
    try testing.expectOk(c.recv_Us_L_Ip(.{ .v1 = 21042, .v2 = 20614, .v3 = null }));
}
pub export fn zig_recv_Us_L_Ip(lv: c.Us_L_Ip) c_int {
    if (lv.v1 != 21042) return 1;
    if (lv.v2 != 20614) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_Ip() c.Us_L_Ip {
    return .{ .v1 = 21042, .v2 = 20614, .v3 = null };
}

// From T_Snnn_xbb.c:55162:55182
// struct  Us_L_L  {
//   unsigned short v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Us_L_L layout" {
    var lv: c.Us_L_L = undefined;
    try testing.expectSize(c.Us_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_L C calls" {
    try testing.expectEqual(c.ret_Us_L_L(), .{ .v1 = 1123, .v2 = 30030, .v3 = 14538 });
    try testing.expectOk(c.assert_ret_Us_L_L());
    try testing.expectOk(c.send_Us_L_L());
    try testing.expectOk(c.recv_Us_L_L(.{ .v1 = 1123, .v2 = 30030, .v3 = 14538 }));
}
pub export fn zig_recv_Us_L_L(lv: c.Us_L_L) c_int {
    if (lv.v1 != 1123) return 1;
    if (lv.v2 != 30030) return 2;
    if (lv.v3 != 14538) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_L() c.Us_L_L {
    return .{ .v1 = 1123, .v2 = 30030, .v3 = 14538 };
}

// From T_Snnn_xbb.c:55187:55207
// struct  Us_L_S  {
//   unsigned short v1;
//   __tsi64 v2;
//   short v3;
// };

test "Us_L_S layout" {
    var lv: c.Us_L_S = undefined;
    try testing.expectSize(c.Us_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_S C calls" {
    try testing.expectEqual(c.ret_Us_L_S(), .{ .v1 = 22132, .v2 = 25058, .v3 = 25622 });
    try testing.expectOk(c.assert_ret_Us_L_S());
    try testing.expectOk(c.send_Us_L_S());
    try testing.expectOk(c.recv_Us_L_S(.{ .v1 = 22132, .v2 = 25058, .v3 = 25622 }));
}
pub export fn zig_recv_Us_L_S(lv: c.Us_L_S) c_int {
    if (lv.v1 != 22132) return 1;
    if (lv.v2 != 25058) return 2;
    if (lv.v3 != 25622) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_S() c.Us_L_S {
    return .{ .v1 = 22132, .v2 = 25058, .v3 = 25622 };
}

// From T_Snnn_xbb.c:55212:55232
// struct  Us_L_Uc  {
//   unsigned short v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Us_L_Uc layout" {
    var lv: c.Us_L_Uc = undefined;
    try testing.expectSize(c.Us_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_Uc C calls" {
    try testing.expectEqual(c.ret_Us_L_Uc(), .{ .v1 = 18839, .v2 = 17575, .v3 = 11 });
    try testing.expectOk(c.assert_ret_Us_L_Uc());
    try testing.expectOk(c.send_Us_L_Uc());
    try testing.expectOk(c.recv_Us_L_Uc(.{ .v1 = 18839, .v2 = 17575, .v3 = 11 }));
}
pub export fn zig_recv_Us_L_Uc(lv: c.Us_L_Uc) c_int {
    if (lv.v1 != 18839) return 1;
    if (lv.v2 != 17575) return 2;
    if (lv.v3 != 11) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_Uc() c.Us_L_Uc {
    return .{ .v1 = 18839, .v2 = 17575, .v3 = 11 };
}

// From T_Snnn_xbb.c:55237:55257
// struct  Us_L_Ui  {
//   unsigned short v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Us_L_Ui layout" {
    var lv: c.Us_L_Ui = undefined;
    try testing.expectSize(c.Us_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_Ui C calls" {
    try testing.expectEqual(c.ret_Us_L_Ui(), .{ .v1 = 13426, .v2 = 7778, .v3 = 20282 });
    try testing.expectOk(c.assert_ret_Us_L_Ui());
    try testing.expectOk(c.send_Us_L_Ui());
    try testing.expectOk(c.recv_Us_L_Ui(.{ .v1 = 13426, .v2 = 7778, .v3 = 20282 }));
}
pub export fn zig_recv_Us_L_Ui(lv: c.Us_L_Ui) c_int {
    if (lv.v1 != 13426) return 1;
    if (lv.v2 != 7778) return 2;
    if (lv.v3 != 20282) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_Ui() c.Us_L_Ui {
    return .{ .v1 = 13426, .v2 = 7778, .v3 = 20282 };
}

// From T_Snnn_xbb.c:55262:55282
// struct  Us_L_Ul  {
//   unsigned short v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Us_L_Ul layout" {
    var lv: c.Us_L_Ul = undefined;
    try testing.expectSize(c.Us_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_Ul C calls" {
    try testing.expectEqual(c.ret_Us_L_Ul(), .{ .v1 = 8840, .v2 = 7536, .v3 = 11028 });
    try testing.expectOk(c.assert_ret_Us_L_Ul());
    try testing.expectOk(c.send_Us_L_Ul());
    try testing.expectOk(c.recv_Us_L_Ul(.{ .v1 = 8840, .v2 = 7536, .v3 = 11028 }));
}
pub export fn zig_recv_Us_L_Ul(lv: c.Us_L_Ul) c_int {
    if (lv.v1 != 8840) return 1;
    if (lv.v2 != 7536) return 2;
    if (lv.v3 != 11028) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_Ul() c.Us_L_Ul {
    return .{ .v1 = 8840, .v2 = 7536, .v3 = 11028 };
}

// From T_Snnn_xbb.c:55287:55307
// struct  Us_L_Us  {
//   unsigned short v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Us_L_Us layout" {
    var lv: c.Us_L_Us = undefined;
    try testing.expectSize(c.Us_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_Us C calls" {
    try testing.expectEqual(c.ret_Us_L_Us(), .{ .v1 = 24633, .v2 = 16410, .v3 = 9161 });
    try testing.expectOk(c.assert_ret_Us_L_Us());
    try testing.expectOk(c.send_Us_L_Us());
    try testing.expectOk(c.recv_Us_L_Us(.{ .v1 = 24633, .v2 = 16410, .v3 = 9161 }));
}
pub export fn zig_recv_Us_L_Us(lv: c.Us_L_Us) c_int {
    if (lv.v1 != 24633) return 1;
    if (lv.v2 != 16410) return 2;
    if (lv.v3 != 9161) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_Us() c.Us_L_Us {
    return .{ .v1 = 24633, .v2 = 16410, .v3 = 9161 };
}

// From T_Snnn_xbb.c:55312:55332
// struct  Us_L_Vp  {
//   unsigned short v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Us_L_Vp layout" {
    var lv: c.Us_L_Vp = undefined;
    try testing.expectSize(c.Us_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_L_Vp C calls" {
    try testing.expectEqual(c.ret_Us_L_Vp(), .{ .v1 = 21267, .v2 = 5661, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_L_Vp());
    try testing.expectOk(c.send_Us_L_Vp());
    try testing.expectOk(c.recv_Us_L_Vp(.{ .v1 = 21267, .v2 = 5661, .v3 = null }));
}
pub export fn zig_recv_Us_L_Vp(lv: c.Us_L_Vp) c_int {
    if (lv.v1 != 21267) return 1;
    if (lv.v2 != 5661) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_L_Vp() c.Us_L_Vp {
    return .{ .v1 = 21267, .v2 = 5661, .v3 = null };
}

// From T_Snnn_xbb.c:55337:55355
// struct  Us_S  {
//   unsigned short v1;
//   short v2;
// };

test "Us_S layout" {
    var lv: c.Us_S = undefined;
    try testing.expectSize(c.Us_S, 4);
    try testing.expectAlign(c.Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "Us_S C calls" {
    try testing.expectEqual(c.ret_Us_S(), .{ .v1 = 24727, .v2 = 29166 });
    try testing.expectOk(c.assert_ret_Us_S());
    try testing.expectOk(c.send_Us_S());
    try testing.expectOk(c.recv_Us_S(.{ .v1 = 24727, .v2 = 29166 }));
}
pub export fn zig_recv_Us_S(lv: c.Us_S) c_int {
    if (lv.v1 != 24727) return 1;
    if (lv.v2 != 29166) return 2;
    return 0;
}
pub export fn zig_ret_Us_S() c.Us_S {
    return .{ .v1 = 24727, .v2 = 29166 };
}

// From T_Snnn_xbb.c:56084:56104
// struct  Us_S_C  {
//   unsigned short v1;
//   short v2;
//   char v3;
// };

test "Us_S_C layout" {
    var lv: c.Us_S_C = undefined;
    try testing.expectSize(c.Us_S_C, 6);
    try testing.expectAlign(c.Us_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_S_C C calls" {
    try testing.expectEqual(c.ret_Us_S_C(), .{ .v1 = 10311, .v2 = 30465, .v3 = 91 });
    try testing.expectOk(c.assert_ret_Us_S_C());
    try testing.expectOk(c.send_Us_S_C());
    try testing.expectOk(c.recv_Us_S_C(.{ .v1 = 10311, .v2 = 30465, .v3 = 91 }));
}
pub export fn zig_recv_Us_S_C(lv: c.Us_S_C) c_int {
    if (lv.v1 != 10311) return 1;
    if (lv.v2 != 30465) return 2;
    if (lv.v3 != 91) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_C() c.Us_S_C {
    return .{ .v1 = 10311, .v2 = 30465, .v3 = 91 };
}

// From T_Snnn_xbb.c:56109:56129
// struct  Us_S_D  {
//   unsigned short v1;
//   short v2;
//   double v3;
// };

test "Us_S_D layout" {
    var lv: c.Us_S_D = undefined;
    try testing.expectSize(c.Us_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_S_D C calls" {
    try testing.expectEqual(c.ret_Us_S_D(), .{ .v1 = 23117, .v2 = 19592, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Us_S_D());
    try testing.expectOk(c.send_Us_S_D());
    try testing.expectOk(c.recv_Us_S_D(.{ .v1 = 23117, .v2 = 19592, .v3 = 0.875 }));
}
pub export fn zig_recv_Us_S_D(lv: c.Us_S_D) c_int {
    if (lv.v1 != 23117) return 1;
    if (lv.v2 != 19592) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_D() c.Us_S_D {
    return .{ .v1 = 23117, .v2 = 19592, .v3 = 0.875 };
}

// From T_Snnn_xbb.c:56134:56154
// struct  Us_S_F  {
//   unsigned short v1;
//   short v2;
//   float v3;
// };

test "Us_S_F layout" {
    var lv: c.Us_S_F = undefined;
    try testing.expectSize(c.Us_S_F, 8);
    try testing.expectAlign(c.Us_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_S_F C calls" {
    try testing.expectEqual(c.ret_Us_S_F(), .{ .v1 = 15422, .v2 = 892, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Us_S_F());
    try testing.expectOk(c.send_Us_S_F());
    try testing.expectOk(c.recv_Us_S_F(.{ .v1 = 15422, .v2 = 892, .v3 = -0.25 }));
}
pub export fn zig_recv_Us_S_F(lv: c.Us_S_F) c_int {
    if (lv.v1 != 15422) return 1;
    if (lv.v2 != 892) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_F() c.Us_S_F {
    return .{ .v1 = 15422, .v2 = 892, .v3 = -0.25 };
}

// From T_Snnn_xbb.c:56159:56179
// struct  Us_S_I  {
//   unsigned short v1;
//   short v2;
//   int v3;
// };

test "Us_S_I layout" {
    var lv: c.Us_S_I = undefined;
    try testing.expectSize(c.Us_S_I, 8);
    try testing.expectAlign(c.Us_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_S_I C calls" {
    try testing.expectEqual(c.ret_Us_S_I(), .{ .v1 = 23242, .v2 = 26561, .v3 = 3363 });
    try testing.expectOk(c.assert_ret_Us_S_I());
    try testing.expectOk(c.send_Us_S_I());
    try testing.expectOk(c.recv_Us_S_I(.{ .v1 = 23242, .v2 = 26561, .v3 = 3363 }));
}
pub export fn zig_recv_Us_S_I(lv: c.Us_S_I) c_int {
    if (lv.v1 != 23242) return 1;
    if (lv.v2 != 26561) return 2;
    if (lv.v3 != 3363) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_I() c.Us_S_I {
    return .{ .v1 = 23242, .v2 = 26561, .v3 = 3363 };
}

// From T_Snnn_xbb.c:56184:56204
// struct  Us_S_Ip  {
//   unsigned short v1;
//   short v2;
//   int *v3;
// };

test "Us_S_Ip layout" {
    var lv: c.Us_S_Ip = undefined;
    try testing.expectSize(c.Us_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_S_Ip C calls" {
    try testing.expectEqual(c.ret_Us_S_Ip(), .{ .v1 = 20985, .v2 = 3457, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_S_Ip());
    try testing.expectOk(c.send_Us_S_Ip());
    try testing.expectOk(c.recv_Us_S_Ip(.{ .v1 = 20985, .v2 = 3457, .v3 = null }));
}
pub export fn zig_recv_Us_S_Ip(lv: c.Us_S_Ip) c_int {
    if (lv.v1 != 20985) return 1;
    if (lv.v2 != 3457) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_Ip() c.Us_S_Ip {
    return .{ .v1 = 20985, .v2 = 3457, .v3 = null };
}

// From T_Snnn_xbb.c:56209:56229
// struct  Us_S_L  {
//   unsigned short v1;
//   short v2;
//   __tsi64 v3;
// };

test "Us_S_L layout" {
    var lv: c.Us_S_L = undefined;
    try testing.expectSize(c.Us_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_S_L C calls" {
    try testing.expectEqual(c.ret_Us_S_L(), .{ .v1 = 18517, .v2 = 5247, .v3 = 15555 });
    try testing.expectOk(c.assert_ret_Us_S_L());
    try testing.expectOk(c.send_Us_S_L());
    try testing.expectOk(c.recv_Us_S_L(.{ .v1 = 18517, .v2 = 5247, .v3 = 15555 }));
}
pub export fn zig_recv_Us_S_L(lv: c.Us_S_L) c_int {
    if (lv.v1 != 18517) return 1;
    if (lv.v2 != 5247) return 2;
    if (lv.v3 != 15555) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_L() c.Us_S_L {
    return .{ .v1 = 18517, .v2 = 5247, .v3 = 15555 };
}

// From T_Snnn_xbb.c:56234:56254
// struct  Us_S_S  {
//   unsigned short v1;
//   short v2;
//   short v3;
// };

test "Us_S_S layout" {
    var lv: c.Us_S_S = undefined;
    try testing.expectSize(c.Us_S_S, 6);
    try testing.expectAlign(c.Us_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_S_S C calls" {
    try testing.expectEqual(c.ret_Us_S_S(), .{ .v1 = 11754, .v2 = 6358, .v3 = 12603 });
    try testing.expectOk(c.assert_ret_Us_S_S());
    try testing.expectOk(c.send_Us_S_S());
    try testing.expectOk(c.recv_Us_S_S(.{ .v1 = 11754, .v2 = 6358, .v3 = 12603 }));
}
pub export fn zig_recv_Us_S_S(lv: c.Us_S_S) c_int {
    if (lv.v1 != 11754) return 1;
    if (lv.v2 != 6358) return 2;
    if (lv.v3 != 12603) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_S() c.Us_S_S {
    return .{ .v1 = 11754, .v2 = 6358, .v3 = 12603 };
}

// From T_Snnn_xbb.c:56259:56279
// struct  Us_S_Uc  {
//   unsigned short v1;
//   short v2;
//   unsigned char v3;
// };

test "Us_S_Uc layout" {
    var lv: c.Us_S_Uc = undefined;
    try testing.expectSize(c.Us_S_Uc, 6);
    try testing.expectAlign(c.Us_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_S_Uc C calls" {
    try testing.expectEqual(c.ret_Us_S_Uc(), .{ .v1 = 21651, .v2 = 302, .v3 = 58 });
    try testing.expectOk(c.assert_ret_Us_S_Uc());
    try testing.expectOk(c.send_Us_S_Uc());
    try testing.expectOk(c.recv_Us_S_Uc(.{ .v1 = 21651, .v2 = 302, .v3 = 58 }));
}
pub export fn zig_recv_Us_S_Uc(lv: c.Us_S_Uc) c_int {
    if (lv.v1 != 21651) return 1;
    if (lv.v2 != 302) return 2;
    if (lv.v3 != 58) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_Uc() c.Us_S_Uc {
    return .{ .v1 = 21651, .v2 = 302, .v3 = 58 };
}

// From T_Snnn_xbb.c:56284:56304
// struct  Us_S_Ui  {
//   unsigned short v1;
//   short v2;
//   unsigned int v3;
// };

test "Us_S_Ui layout" {
    var lv: c.Us_S_Ui = undefined;
    try testing.expectSize(c.Us_S_Ui, 8);
    try testing.expectAlign(c.Us_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_S_Ui C calls" {
    try testing.expectEqual(c.ret_Us_S_Ui(), .{ .v1 = 7044, .v2 = 24986, .v3 = 27224 });
    try testing.expectOk(c.assert_ret_Us_S_Ui());
    try testing.expectOk(c.send_Us_S_Ui());
    try testing.expectOk(c.recv_Us_S_Ui(.{ .v1 = 7044, .v2 = 24986, .v3 = 27224 }));
}
pub export fn zig_recv_Us_S_Ui(lv: c.Us_S_Ui) c_int {
    if (lv.v1 != 7044) return 1;
    if (lv.v2 != 24986) return 2;
    if (lv.v3 != 27224) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_Ui() c.Us_S_Ui {
    return .{ .v1 = 7044, .v2 = 24986, .v3 = 27224 };
}

// From T_Snnn_xbb.c:56309:56329
// struct  Us_S_Ul  {
//   unsigned short v1;
//   short v2;
//   __tsu64 v3;
// };

test "Us_S_Ul layout" {
    var lv: c.Us_S_Ul = undefined;
    try testing.expectSize(c.Us_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_S_Ul C calls" {
    try testing.expectEqual(c.ret_Us_S_Ul(), .{ .v1 = 26369, .v2 = 29978, .v3 = 8606 });
    try testing.expectOk(c.assert_ret_Us_S_Ul());
    try testing.expectOk(c.send_Us_S_Ul());
    try testing.expectOk(c.recv_Us_S_Ul(.{ .v1 = 26369, .v2 = 29978, .v3 = 8606 }));
}
pub export fn zig_recv_Us_S_Ul(lv: c.Us_S_Ul) c_int {
    if (lv.v1 != 26369) return 1;
    if (lv.v2 != 29978) return 2;
    if (lv.v3 != 8606) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_Ul() c.Us_S_Ul {
    return .{ .v1 = 26369, .v2 = 29978, .v3 = 8606 };
}

// From T_Snnn_xbb.c:56334:56354
// struct  Us_S_Us  {
//   unsigned short v1;
//   short v2;
//   unsigned short v3;
// };

test "Us_S_Us layout" {
    var lv: c.Us_S_Us = undefined;
    try testing.expectSize(c.Us_S_Us, 6);
    try testing.expectAlign(c.Us_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_S_Us C calls" {
    try testing.expectEqual(c.ret_Us_S_Us(), .{ .v1 = 3928, .v2 = 25056, .v3 = 13273 });
    try testing.expectOk(c.assert_ret_Us_S_Us());
    try testing.expectOk(c.send_Us_S_Us());
    try testing.expectOk(c.recv_Us_S_Us(.{ .v1 = 3928, .v2 = 25056, .v3 = 13273 }));
}
pub export fn zig_recv_Us_S_Us(lv: c.Us_S_Us) c_int {
    if (lv.v1 != 3928) return 1;
    if (lv.v2 != 25056) return 2;
    if (lv.v3 != 13273) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_Us() c.Us_S_Us {
    return .{ .v1 = 3928, .v2 = 25056, .v3 = 13273 };
}

// From T_Snnn_xbb.c:56359:56379
// struct  Us_S_Vp  {
//   unsigned short v1;
//   short v2;
//   void *v3;
// };

test "Us_S_Vp layout" {
    var lv: c.Us_S_Vp = undefined;
    try testing.expectSize(c.Us_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_S_Vp C calls" {
    try testing.expectEqual(c.ret_Us_S_Vp(), .{ .v1 = 10313, .v2 = 21627, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_S_Vp());
    try testing.expectOk(c.send_Us_S_Vp());
    try testing.expectOk(c.recv_Us_S_Vp(.{ .v1 = 10313, .v2 = 21627, .v3 = null }));
}
pub export fn zig_recv_Us_S_Vp(lv: c.Us_S_Vp) c_int {
    if (lv.v1 != 10313) return 1;
    if (lv.v2 != 21627) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_S_Vp() c.Us_S_Vp {
    return .{ .v1 = 10313, .v2 = 21627, .v3 = null };
}

// From T_Snnn_xbb.c:56384:56402
// struct  Us_Uc  {
//   unsigned short v1;
//   unsigned char v2;
// };

test "Us_Uc layout" {
    var lv: c.Us_Uc = undefined;
    try testing.expectSize(c.Us_Uc, 4);
    try testing.expectAlign(c.Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "Us_Uc C calls" {
    try testing.expectEqual(c.ret_Us_Uc(), .{ .v1 = 10039, .v2 = 48 });
    try testing.expectOk(c.assert_ret_Us_Uc());
    try testing.expectOk(c.send_Us_Uc());
    try testing.expectOk(c.recv_Us_Uc(.{ .v1 = 10039, .v2 = 48 }));
}
pub export fn zig_recv_Us_Uc(lv: c.Us_Uc) c_int {
    if (lv.v1 != 10039) return 1;
    if (lv.v2 != 48) return 2;
    return 0;
}
pub export fn zig_ret_Us_Uc() c.Us_Uc {
    return .{ .v1 = 10039, .v2 = 48 };
}

// From T_Snnn_xbb.c:57131:57151
// struct  Us_Uc_C  {
//   unsigned short v1;
//   unsigned char v2;
//   char v3;
// };

test "Us_Uc_C layout" {
    var lv: c.Us_Uc_C = undefined;
    try testing.expectSize(c.Us_Uc_C, 4);
    try testing.expectAlign(c.Us_Uc_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "Us_Uc_C C calls" {
    try testing.expectEqual(c.ret_Us_Uc_C(), .{ .v1 = 1784, .v2 = 122, .v3 = 9 });
    try testing.expectOk(c.assert_ret_Us_Uc_C());
    try testing.expectOk(c.send_Us_Uc_C());
    try testing.expectOk(c.recv_Us_Uc_C(.{ .v1 = 1784, .v2 = 122, .v3 = 9 }));
}
pub export fn zig_recv_Us_Uc_C(lv: c.Us_Uc_C) c_int {
    if (lv.v1 != 1784) return 1;
    if (lv.v2 != 122) return 2;
    if (lv.v3 != 9) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_C() c.Us_Uc_C {
    return .{ .v1 = 1784, .v2 = 122, .v3 = 9 };
}

// From T_Snnn_xbb.c:57156:57176
// struct  Us_Uc_D  {
//   unsigned short v1;
//   unsigned char v2;
//   double v3;
// };

test "Us_Uc_D layout" {
    var lv: c.Us_Uc_D = undefined;
    try testing.expectSize(c.Us_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Uc_D C calls" {
    try testing.expectEqual(c.ret_Us_Uc_D(), .{ .v1 = 21665, .v2 = 0, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Us_Uc_D());
    try testing.expectOk(c.send_Us_Uc_D());
    try testing.expectOk(c.recv_Us_Uc_D(.{ .v1 = 21665, .v2 = 0, .v3 = -2.125 }));
}
pub export fn zig_recv_Us_Uc_D(lv: c.Us_Uc_D) c_int {
    if (lv.v1 != 21665) return 1;
    if (lv.v2 != 0) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_D() c.Us_Uc_D {
    return .{ .v1 = 21665, .v2 = 0, .v3 = -2.125 };
}

// From T_Snnn_xbb.c:57181:57201
// struct  Us_Uc_F  {
//   unsigned short v1;
//   unsigned char v2;
//   float v3;
// };

test "Us_Uc_F layout" {
    var lv: c.Us_Uc_F = undefined;
    try testing.expectSize(c.Us_Uc_F, 8);
    try testing.expectAlign(c.Us_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Uc_F C calls" {
    try testing.expectEqual(c.ret_Us_Uc_F(), .{ .v1 = 30089, .v2 = 102, .v3 = 1.0 });
    try testing.expectOk(c.assert_ret_Us_Uc_F());
    try testing.expectOk(c.send_Us_Uc_F());
    try testing.expectOk(c.recv_Us_Uc_F(.{ .v1 = 30089, .v2 = 102, .v3 = 1.0 }));
}
pub export fn zig_recv_Us_Uc_F(lv: c.Us_Uc_F) c_int {
    if (lv.v1 != 30089) return 1;
    if (lv.v2 != 102) return 2;
    if (lv.v3 != 1.0) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_F() c.Us_Uc_F {
    return .{ .v1 = 30089, .v2 = 102, .v3 = 1.0 };
}

// From T_Snnn_xbb.c:57206:57226
// struct  Us_Uc_I  {
//   unsigned short v1;
//   unsigned char v2;
//   int v3;
// };

test "Us_Uc_I layout" {
    var lv: c.Us_Uc_I = undefined;
    try testing.expectSize(c.Us_Uc_I, 8);
    try testing.expectAlign(c.Us_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Uc_I C calls" {
    try testing.expectEqual(c.ret_Us_Uc_I(), .{ .v1 = 32018, .v2 = 76, .v3 = 22674 });
    try testing.expectOk(c.assert_ret_Us_Uc_I());
    try testing.expectOk(c.send_Us_Uc_I());
    try testing.expectOk(c.recv_Us_Uc_I(.{ .v1 = 32018, .v2 = 76, .v3 = 22674 }));
}
pub export fn zig_recv_Us_Uc_I(lv: c.Us_Uc_I) c_int {
    if (lv.v1 != 32018) return 1;
    if (lv.v2 != 76) return 2;
    if (lv.v3 != 22674) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_I() c.Us_Uc_I {
    return .{ .v1 = 32018, .v2 = 76, .v3 = 22674 };
}

// From T_Snnn_xbb.c:57231:57251
// struct  Us_Uc_Ip  {
//   unsigned short v1;
//   unsigned char v2;
//   int *v3;
// };

test "Us_Uc_Ip layout" {
    var lv: c.Us_Uc_Ip = undefined;
    try testing.expectSize(c.Us_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Uc_Ip C calls" {
    try testing.expectEqual(c.ret_Us_Uc_Ip(), .{ .v1 = 5672, .v2 = 26, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Uc_Ip());
    try testing.expectOk(c.send_Us_Uc_Ip());
    try testing.expectOk(c.recv_Us_Uc_Ip(.{ .v1 = 5672, .v2 = 26, .v3 = null }));
}
pub export fn zig_recv_Us_Uc_Ip(lv: c.Us_Uc_Ip) c_int {
    if (lv.v1 != 5672) return 1;
    if (lv.v2 != 26) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_Ip() c.Us_Uc_Ip {
    return .{ .v1 = 5672, .v2 = 26, .v3 = null };
}

// From T_Snnn_xbb.c:57256:57276
// struct  Us_Uc_L  {
//   unsigned short v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Us_Uc_L layout" {
    var lv: c.Us_Uc_L = undefined;
    try testing.expectSize(c.Us_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Uc_L C calls" {
    try testing.expectEqual(c.ret_Us_Uc_L(), .{ .v1 = 13171, .v2 = 48, .v3 = 11522 });
    try testing.expectOk(c.assert_ret_Us_Uc_L());
    try testing.expectOk(c.send_Us_Uc_L());
    try testing.expectOk(c.recv_Us_Uc_L(.{ .v1 = 13171, .v2 = 48, .v3 = 11522 }));
}
pub export fn zig_recv_Us_Uc_L(lv: c.Us_Uc_L) c_int {
    if (lv.v1 != 13171) return 1;
    if (lv.v2 != 48) return 2;
    if (lv.v3 != 11522) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_L() c.Us_Uc_L {
    return .{ .v1 = 13171, .v2 = 48, .v3 = 11522 };
}

// From T_Snnn_xbb.c:57281:57301
// struct  Us_Uc_S  {
//   unsigned short v1;
//   unsigned char v2;
//   short v3;
// };

test "Us_Uc_S layout" {
    var lv: c.Us_Uc_S = undefined;
    try testing.expectSize(c.Us_Uc_S, 6);
    try testing.expectAlign(c.Us_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Uc_S C calls" {
    try testing.expectEqual(c.ret_Us_Uc_S(), .{ .v1 = 13689, .v2 = 78, .v3 = 3457 });
    try testing.expectOk(c.assert_ret_Us_Uc_S());
    try testing.expectOk(c.send_Us_Uc_S());
    try testing.expectOk(c.recv_Us_Uc_S(.{ .v1 = 13689, .v2 = 78, .v3 = 3457 }));
}
pub export fn zig_recv_Us_Uc_S(lv: c.Us_Uc_S) c_int {
    if (lv.v1 != 13689) return 1;
    if (lv.v2 != 78) return 2;
    if (lv.v3 != 3457) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_S() c.Us_Uc_S {
    return .{ .v1 = 13689, .v2 = 78, .v3 = 3457 };
}

// From T_Snnn_xbb.c:57306:57326
// struct  Us_Uc_Uc  {
//   unsigned short v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Us_Uc_Uc layout" {
    var lv: c.Us_Uc_Uc = undefined;
    try testing.expectSize(c.Us_Uc_Uc, 4);
    try testing.expectAlign(c.Us_Uc_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}
test "Us_Uc_Uc C calls" {
    try testing.expectEqual(c.ret_Us_Uc_Uc(), .{ .v1 = 32576, .v2 = 114, .v3 = 6 });
    try testing.expectOk(c.assert_ret_Us_Uc_Uc());
    try testing.expectOk(c.send_Us_Uc_Uc());
    try testing.expectOk(c.recv_Us_Uc_Uc(.{ .v1 = 32576, .v2 = 114, .v3 = 6 }));
}
pub export fn zig_recv_Us_Uc_Uc(lv: c.Us_Uc_Uc) c_int {
    if (lv.v1 != 32576) return 1;
    if (lv.v2 != 114) return 2;
    if (lv.v3 != 6) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_Uc() c.Us_Uc_Uc {
    return .{ .v1 = 32576, .v2 = 114, .v3 = 6 };
}

// From T_Snnn_xbb.c:57331:57351
// struct  Us_Uc_Ui  {
//   unsigned short v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Us_Uc_Ui layout" {
    var lv: c.Us_Uc_Ui = undefined;
    try testing.expectSize(c.Us_Uc_Ui, 8);
    try testing.expectAlign(c.Us_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Uc_Ui C calls" {
    try testing.expectEqual(c.ret_Us_Uc_Ui(), .{ .v1 = 8544, .v2 = 77, .v3 = 31566 });
    try testing.expectOk(c.assert_ret_Us_Uc_Ui());
    try testing.expectOk(c.send_Us_Uc_Ui());
    try testing.expectOk(c.recv_Us_Uc_Ui(.{ .v1 = 8544, .v2 = 77, .v3 = 31566 }));
}
pub export fn zig_recv_Us_Uc_Ui(lv: c.Us_Uc_Ui) c_int {
    if (lv.v1 != 8544) return 1;
    if (lv.v2 != 77) return 2;
    if (lv.v3 != 31566) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_Ui() c.Us_Uc_Ui {
    return .{ .v1 = 8544, .v2 = 77, .v3 = 31566 };
}

// From T_Snnn_xbb.c:57356:57376
// struct  Us_Uc_Ul  {
//   unsigned short v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Us_Uc_Ul layout" {
    var lv: c.Us_Uc_Ul = undefined;
    try testing.expectSize(c.Us_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Uc_Ul C calls" {
    try testing.expectEqual(c.ret_Us_Uc_Ul(), .{ .v1 = 30788, .v2 = 29, .v3 = 22665 });
    try testing.expectOk(c.assert_ret_Us_Uc_Ul());
    try testing.expectOk(c.send_Us_Uc_Ul());
    try testing.expectOk(c.recv_Us_Uc_Ul(.{ .v1 = 30788, .v2 = 29, .v3 = 22665 }));
}
pub export fn zig_recv_Us_Uc_Ul(lv: c.Us_Uc_Ul) c_int {
    if (lv.v1 != 30788) return 1;
    if (lv.v2 != 29) return 2;
    if (lv.v3 != 22665) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_Ul() c.Us_Uc_Ul {
    return .{ .v1 = 30788, .v2 = 29, .v3 = 22665 };
}

// From T_Snnn_xbb.c:57381:57401
// struct  Us_Uc_Us  {
//   unsigned short v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Us_Uc_Us layout" {
    var lv: c.Us_Uc_Us = undefined;
    try testing.expectSize(c.Us_Uc_Us, 6);
    try testing.expectAlign(c.Us_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Uc_Us C calls" {
    try testing.expectEqual(c.ret_Us_Uc_Us(), .{ .v1 = 28438, .v2 = 88, .v3 = 26894 });
    try testing.expectOk(c.assert_ret_Us_Uc_Us());
    try testing.expectOk(c.send_Us_Uc_Us());
    try testing.expectOk(c.recv_Us_Uc_Us(.{ .v1 = 28438, .v2 = 88, .v3 = 26894 }));
}
pub export fn zig_recv_Us_Uc_Us(lv: c.Us_Uc_Us) c_int {
    if (lv.v1 != 28438) return 1;
    if (lv.v2 != 88) return 2;
    if (lv.v3 != 26894) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_Us() c.Us_Uc_Us {
    return .{ .v1 = 28438, .v2 = 88, .v3 = 26894 };
}

// From T_Snnn_xbb.c:57406:57426
// struct  Us_Uc_Vp  {
//   unsigned short v1;
//   unsigned char v2;
//   void *v3;
// };

test "Us_Uc_Vp layout" {
    var lv: c.Us_Uc_Vp = undefined;
    try testing.expectSize(c.Us_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Uc_Vp C calls" {
    try testing.expectEqual(c.ret_Us_Uc_Vp(), .{ .v1 = 19528, .v2 = 87, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Uc_Vp());
    try testing.expectOk(c.send_Us_Uc_Vp());
    try testing.expectOk(c.recv_Us_Uc_Vp(.{ .v1 = 19528, .v2 = 87, .v3 = null }));
}
pub export fn zig_recv_Us_Uc_Vp(lv: c.Us_Uc_Vp) c_int {
    if (lv.v1 != 19528) return 1;
    if (lv.v2 != 87) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Uc_Vp() c.Us_Uc_Vp {
    return .{ .v1 = 19528, .v2 = 87, .v3 = null };
}

// From T_Snnn_xbb.c:57431:57449
// struct  Us_Ui  {
//   unsigned short v1;
//   unsigned int v2;
// };

test "Us_Ui layout" {
    var lv: c.Us_Ui = undefined;
    try testing.expectSize(c.Us_Ui, 8);
    try testing.expectAlign(c.Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}
test "Us_Ui C calls" {
    try testing.expectEqual(c.ret_Us_Ui(), .{ .v1 = 22821, .v2 = 31463 });
    try testing.expectOk(c.assert_ret_Us_Ui());
    try testing.expectOk(c.send_Us_Ui());
    try testing.expectOk(c.recv_Us_Ui(.{ .v1 = 22821, .v2 = 31463 }));
}
pub export fn zig_recv_Us_Ui(lv: c.Us_Ui) c_int {
    if (lv.v1 != 22821) return 1;
    if (lv.v2 != 31463) return 2;
    return 0;
}
pub export fn zig_ret_Us_Ui() c.Us_Ui {
    return .{ .v1 = 22821, .v2 = 31463 };
}

// From T_Snnn_xbb.c:58178:58198
// struct  Us_Ui_C  {
//   unsigned short v1;
//   unsigned int v2;
//   char v3;
// };

test "Us_Ui_C layout" {
    var lv: c.Us_Ui_C = undefined;
    try testing.expectSize(c.Us_Ui_C, 12);
    try testing.expectAlign(c.Us_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_C C calls" {
    try testing.expectEqual(c.ret_Us_Ui_C(), .{ .v1 = 32462, .v2 = 8790, .v3 = 63 });
    try testing.expectOk(c.assert_ret_Us_Ui_C());
    try testing.expectOk(c.send_Us_Ui_C());
    try testing.expectOk(c.recv_Us_Ui_C(.{ .v1 = 32462, .v2 = 8790, .v3 = 63 }));
}
pub export fn zig_recv_Us_Ui_C(lv: c.Us_Ui_C) c_int {
    if (lv.v1 != 32462) return 1;
    if (lv.v2 != 8790) return 2;
    if (lv.v3 != 63) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_C() c.Us_Ui_C {
    return .{ .v1 = 32462, .v2 = 8790, .v3 = 63 };
}

// From T_Snnn_xbb.c:58203:58223
// struct  Us_Ui_D  {
//   unsigned short v1;
//   unsigned int v2;
//   double v3;
// };

test "Us_Ui_D layout" {
    var lv: c.Us_Ui_D = undefined;
    try testing.expectSize(c.Us_Ui_D, 16);
    try testing.expectAlign(c.Us_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_D C calls" {
    try testing.expectEqual(c.ret_Us_Ui_D(), .{ .v1 = 12024, .v2 = 26928, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Us_Ui_D());
    try testing.expectOk(c.send_Us_Ui_D());
    try testing.expectOk(c.recv_Us_Ui_D(.{ .v1 = 12024, .v2 = 26928, .v3 = -0.25 }));
}
pub export fn zig_recv_Us_Ui_D(lv: c.Us_Ui_D) c_int {
    if (lv.v1 != 12024) return 1;
    if (lv.v2 != 26928) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_D() c.Us_Ui_D {
    return .{ .v1 = 12024, .v2 = 26928, .v3 = -0.25 };
}

// From T_Snnn_xbb.c:58228:58248
// struct  Us_Ui_F  {
//   unsigned short v1;
//   unsigned int v2;
//   float v3;
// };

test "Us_Ui_F layout" {
    var lv: c.Us_Ui_F = undefined;
    try testing.expectSize(c.Us_Ui_F, 12);
    try testing.expectAlign(c.Us_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_F C calls" {
    try testing.expectEqual(c.ret_Us_Ui_F(), .{ .v1 = 18149, .v2 = 22194, .v3 = -2.125 });
    try testing.expectOk(c.assert_ret_Us_Ui_F());
    try testing.expectOk(c.send_Us_Ui_F());
    try testing.expectOk(c.recv_Us_Ui_F(.{ .v1 = 18149, .v2 = 22194, .v3 = -2.125 }));
}
pub export fn zig_recv_Us_Ui_F(lv: c.Us_Ui_F) c_int {
    if (lv.v1 != 18149) return 1;
    if (lv.v2 != 22194) return 2;
    if (lv.v3 != -2.125) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_F() c.Us_Ui_F {
    return .{ .v1 = 18149, .v2 = 22194, .v3 = -2.125 };
}

// From T_Snnn_xbb.c:58253:58273
// struct  Us_Ui_I  {
//   unsigned short v1;
//   unsigned int v2;
//   int v3;
// };

test "Us_Ui_I layout" {
    var lv: c.Us_Ui_I = undefined;
    try testing.expectSize(c.Us_Ui_I, 12);
    try testing.expectAlign(c.Us_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_I C calls" {
    try testing.expectEqual(c.ret_Us_Ui_I(), .{ .v1 = 20073, .v2 = 9610, .v3 = 6587 });
    try testing.expectOk(c.assert_ret_Us_Ui_I());
    try testing.expectOk(c.send_Us_Ui_I());
    try testing.expectOk(c.recv_Us_Ui_I(.{ .v1 = 20073, .v2 = 9610, .v3 = 6587 }));
}
pub export fn zig_recv_Us_Ui_I(lv: c.Us_Ui_I) c_int {
    if (lv.v1 != 20073) return 1;
    if (lv.v2 != 9610) return 2;
    if (lv.v3 != 6587) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_I() c.Us_Ui_I {
    return .{ .v1 = 20073, .v2 = 9610, .v3 = 6587 };
}

// From T_Snnn_xbb.c:58278:58298
// struct  Us_Ui_Ip  {
//   unsigned short v1;
//   unsigned int v2;
//   int *v3;
// };

test "Us_Ui_Ip layout" {
    var lv: c.Us_Ui_Ip = undefined;
    try testing.expectSize(c.Us_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_Ip C calls" {
    try testing.expectEqual(c.ret_Us_Ui_Ip(), .{ .v1 = 5912, .v2 = 5511, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Ui_Ip());
    try testing.expectOk(c.send_Us_Ui_Ip());
    try testing.expectOk(c.recv_Us_Ui_Ip(.{ .v1 = 5912, .v2 = 5511, .v3 = null }));
}
pub export fn zig_recv_Us_Ui_Ip(lv: c.Us_Ui_Ip) c_int {
    if (lv.v1 != 5912) return 1;
    if (lv.v2 != 5511) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_Ip() c.Us_Ui_Ip {
    return .{ .v1 = 5912, .v2 = 5511, .v3 = null };
}

// From T_Snnn_xbb.c:58303:58323
// struct  Us_Ui_L  {
//   unsigned short v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Us_Ui_L layout" {
    var lv: c.Us_Ui_L = undefined;
    try testing.expectSize(c.Us_Ui_L, 16);
    try testing.expectAlign(c.Us_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_L C calls" {
    try testing.expectEqual(c.ret_Us_Ui_L(), .{ .v1 = 3295, .v2 = 3241, .v3 = 591 });
    try testing.expectOk(c.assert_ret_Us_Ui_L());
    try testing.expectOk(c.send_Us_Ui_L());
    try testing.expectOk(c.recv_Us_Ui_L(.{ .v1 = 3295, .v2 = 3241, .v3 = 591 }));
}
pub export fn zig_recv_Us_Ui_L(lv: c.Us_Ui_L) c_int {
    if (lv.v1 != 3295) return 1;
    if (lv.v2 != 3241) return 2;
    if (lv.v3 != 591) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_L() c.Us_Ui_L {
    return .{ .v1 = 3295, .v2 = 3241, .v3 = 591 };
}

// From T_Snnn_xbb.c:58328:58348
// struct  Us_Ui_S  {
//   unsigned short v1;
//   unsigned int v2;
//   short v3;
// };

test "Us_Ui_S layout" {
    var lv: c.Us_Ui_S = undefined;
    try testing.expectSize(c.Us_Ui_S, 12);
    try testing.expectAlign(c.Us_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_S C calls" {
    try testing.expectEqual(c.ret_Us_Ui_S(), .{ .v1 = 190, .v2 = 10192, .v3 = 3934 });
    try testing.expectOk(c.assert_ret_Us_Ui_S());
    try testing.expectOk(c.send_Us_Ui_S());
    try testing.expectOk(c.recv_Us_Ui_S(.{ .v1 = 190, .v2 = 10192, .v3 = 3934 }));
}
pub export fn zig_recv_Us_Ui_S(lv: c.Us_Ui_S) c_int {
    if (lv.v1 != 190) return 1;
    if (lv.v2 != 10192) return 2;
    if (lv.v3 != 3934) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_S() c.Us_Ui_S {
    return .{ .v1 = 190, .v2 = 10192, .v3 = 3934 };
}

// From T_Snnn_xbb.c:58353:58373
// struct  Us_Ui_Uc  {
//   unsigned short v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Us_Ui_Uc layout" {
    var lv: c.Us_Ui_Uc = undefined;
    try testing.expectSize(c.Us_Ui_Uc, 12);
    try testing.expectAlign(c.Us_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_Uc C calls" {
    try testing.expectEqual(c.ret_Us_Ui_Uc(), .{ .v1 = 27974, .v2 = 12257, .v3 = 100 });
    try testing.expectOk(c.assert_ret_Us_Ui_Uc());
    try testing.expectOk(c.send_Us_Ui_Uc());
    try testing.expectOk(c.recv_Us_Ui_Uc(.{ .v1 = 27974, .v2 = 12257, .v3 = 100 }));
}
pub export fn zig_recv_Us_Ui_Uc(lv: c.Us_Ui_Uc) c_int {
    if (lv.v1 != 27974) return 1;
    if (lv.v2 != 12257) return 2;
    if (lv.v3 != 100) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_Uc() c.Us_Ui_Uc {
    return .{ .v1 = 27974, .v2 = 12257, .v3 = 100 };
}

// From T_Snnn_xbb.c:58378:58398
// struct  Us_Ui_Ui  {
//   unsigned short v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Us_Ui_Ui layout" {
    var lv: c.Us_Ui_Ui = undefined;
    try testing.expectSize(c.Us_Ui_Ui, 12);
    try testing.expectAlign(c.Us_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_Ui C calls" {
    try testing.expectEqual(c.ret_Us_Ui_Ui(), .{ .v1 = 3493, .v2 = 11093, .v3 = 28185 });
    try testing.expectOk(c.assert_ret_Us_Ui_Ui());
    try testing.expectOk(c.send_Us_Ui_Ui());
    try testing.expectOk(c.recv_Us_Ui_Ui(.{ .v1 = 3493, .v2 = 11093, .v3 = 28185 }));
}
pub export fn zig_recv_Us_Ui_Ui(lv: c.Us_Ui_Ui) c_int {
    if (lv.v1 != 3493) return 1;
    if (lv.v2 != 11093) return 2;
    if (lv.v3 != 28185) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_Ui() c.Us_Ui_Ui {
    return .{ .v1 = 3493, .v2 = 11093, .v3 = 28185 };
}

// From T_Snnn_xbb.c:58403:58423
// struct  Us_Ui_Ul  {
//   unsigned short v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Us_Ui_Ul layout" {
    var lv: c.Us_Ui_Ul = undefined;
    try testing.expectSize(c.Us_Ui_Ul, 16);
    try testing.expectAlign(c.Us_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_Ul C calls" {
    try testing.expectEqual(c.ret_Us_Ui_Ul(), .{ .v1 = 20393, .v2 = 2406, .v3 = 17503 });
    try testing.expectOk(c.assert_ret_Us_Ui_Ul());
    try testing.expectOk(c.send_Us_Ui_Ul());
    try testing.expectOk(c.recv_Us_Ui_Ul(.{ .v1 = 20393, .v2 = 2406, .v3 = 17503 }));
}
pub export fn zig_recv_Us_Ui_Ul(lv: c.Us_Ui_Ul) c_int {
    if (lv.v1 != 20393) return 1;
    if (lv.v2 != 2406) return 2;
    if (lv.v3 != 17503) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_Ul() c.Us_Ui_Ul {
    return .{ .v1 = 20393, .v2 = 2406, .v3 = 17503 };
}

// From T_Snnn_xbb.c:58428:58448
// struct  Us_Ui_Us  {
//   unsigned short v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Us_Ui_Us layout" {
    var lv: c.Us_Ui_Us = undefined;
    try testing.expectSize(c.Us_Ui_Us, 12);
    try testing.expectAlign(c.Us_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_Us C calls" {
    try testing.expectEqual(c.ret_Us_Ui_Us(), .{ .v1 = 14950, .v2 = 28030, .v3 = 26040 });
    try testing.expectOk(c.assert_ret_Us_Ui_Us());
    try testing.expectOk(c.send_Us_Ui_Us());
    try testing.expectOk(c.recv_Us_Ui_Us(.{ .v1 = 14950, .v2 = 28030, .v3 = 26040 }));
}
pub export fn zig_recv_Us_Ui_Us(lv: c.Us_Ui_Us) c_int {
    if (lv.v1 != 14950) return 1;
    if (lv.v2 != 28030) return 2;
    if (lv.v3 != 26040) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_Us() c.Us_Ui_Us {
    return .{ .v1 = 14950, .v2 = 28030, .v3 = 26040 };
}

// From T_Snnn_xbb.c:58453:58473
// struct  Us_Ui_Vp  {
//   unsigned short v1;
//   unsigned int v2;
//   void *v3;
// };

test "Us_Ui_Vp layout" {
    var lv: c.Us_Ui_Vp = undefined;
    try testing.expectSize(c.Us_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}
test "Us_Ui_Vp C calls" {
    try testing.expectEqual(c.ret_Us_Ui_Vp(), .{ .v1 = 13015, .v2 = 7991, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Ui_Vp());
    try testing.expectOk(c.send_Us_Ui_Vp());
    try testing.expectOk(c.recv_Us_Ui_Vp(.{ .v1 = 13015, .v2 = 7991, .v3 = null }));
}
pub export fn zig_recv_Us_Ui_Vp(lv: c.Us_Ui_Vp) c_int {
    if (lv.v1 != 13015) return 1;
    if (lv.v2 != 7991) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ui_Vp() c.Us_Ui_Vp {
    return .{ .v1 = 13015, .v2 = 7991, .v3 = null };
}

// From T_Snnn_xbb.c:58478:58496
// struct  Us_Ul  {
//   unsigned short v1;
//   __tsu64 v2;
// };

test "Us_Ul layout" {
    var lv: c.Us_Ul = undefined;
    try testing.expectSize(c.Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Us_Ul C calls" {
    try testing.expectEqual(c.ret_Us_Ul(), .{ .v1 = 16401, .v2 = 4479 });
    try testing.expectOk(c.assert_ret_Us_Ul());
    try testing.expectOk(c.send_Us_Ul());
    try testing.expectOk(c.recv_Us_Ul(.{ .v1 = 16401, .v2 = 4479 }));
}
pub export fn zig_recv_Us_Ul(lv: c.Us_Ul) c_int {
    if (lv.v1 != 16401) return 1;
    if (lv.v2 != 4479) return 2;
    return 0;
}
pub export fn zig_ret_Us_Ul() c.Us_Ul {
    return .{ .v1 = 16401, .v2 = 4479 };
}

// From T_Snnn_xbb.c:59225:59245
// struct  Us_Ul_C  {
//   unsigned short v1;
//   __tsu64 v2;
//   char v3;
// };

test "Us_Ul_C layout" {
    var lv: c.Us_Ul_C = undefined;
    try testing.expectSize(c.Us_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_C C calls" {
    try testing.expectEqual(c.ret_Us_Ul_C(), .{ .v1 = 26329, .v2 = 27940, .v3 = 45 });
    try testing.expectOk(c.assert_ret_Us_Ul_C());
    try testing.expectOk(c.send_Us_Ul_C());
    try testing.expectOk(c.recv_Us_Ul_C(.{ .v1 = 26329, .v2 = 27940, .v3 = 45 }));
}
pub export fn zig_recv_Us_Ul_C(lv: c.Us_Ul_C) c_int {
    if (lv.v1 != 26329) return 1;
    if (lv.v2 != 27940) return 2;
    if (lv.v3 != 45) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_C() c.Us_Ul_C {
    return .{ .v1 = 26329, .v2 = 27940, .v3 = 45 };
}

// From T_Snnn_xbb.c:59250:59270
// struct  Us_Ul_D  {
//   unsigned short v1;
//   __tsu64 v2;
//   double v3;
// };

test "Us_Ul_D layout" {
    var lv: c.Us_Ul_D = undefined;
    try testing.expectSize(c.Us_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_D C calls" {
    try testing.expectEqual(c.ret_Us_Ul_D(), .{ .v1 = 17927, .v2 = 8476, .v3 = 0.875 });
    try testing.expectOk(c.assert_ret_Us_Ul_D());
    try testing.expectOk(c.send_Us_Ul_D());
    try testing.expectOk(c.recv_Us_Ul_D(.{ .v1 = 17927, .v2 = 8476, .v3 = 0.875 }));
}
pub export fn zig_recv_Us_Ul_D(lv: c.Us_Ul_D) c_int {
    if (lv.v1 != 17927) return 1;
    if (lv.v2 != 8476) return 2;
    if (lv.v3 != 0.875) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_D() c.Us_Ul_D {
    return .{ .v1 = 17927, .v2 = 8476, .v3 = 0.875 };
}

// From T_Snnn_xbb.c:59275:59295
// struct  Us_Ul_F  {
//   unsigned short v1;
//   __tsu64 v2;
//   float v3;
// };

test "Us_Ul_F layout" {
    var lv: c.Us_Ul_F = undefined;
    try testing.expectSize(c.Us_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_F C calls" {
    try testing.expectEqual(c.ret_Us_Ul_F(), .{ .v1 = 20120, .v2 = 14441, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Us_Ul_F());
    try testing.expectOk(c.send_Us_Ul_F());
    try testing.expectOk(c.recv_Us_Ul_F(.{ .v1 = 20120, .v2 = 14441, .v3 = -0.25 }));
}
pub export fn zig_recv_Us_Ul_F(lv: c.Us_Ul_F) c_int {
    if (lv.v1 != 20120) return 1;
    if (lv.v2 != 14441) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_F() c.Us_Ul_F {
    return .{ .v1 = 20120, .v2 = 14441, .v3 = -0.25 };
}

// From T_Snnn_xbb.c:59300:59320
// struct  Us_Ul_I  {
//   unsigned short v1;
//   __tsu64 v2;
//   int v3;
// };

test "Us_Ul_I layout" {
    var lv: c.Us_Ul_I = undefined;
    try testing.expectSize(c.Us_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_I C calls" {
    try testing.expectEqual(c.ret_Us_Ul_I(), .{ .v1 = 8727, .v2 = 14648, .v3 = 27507 });
    try testing.expectOk(c.assert_ret_Us_Ul_I());
    try testing.expectOk(c.send_Us_Ul_I());
    try testing.expectOk(c.recv_Us_Ul_I(.{ .v1 = 8727, .v2 = 14648, .v3 = 27507 }));
}
pub export fn zig_recv_Us_Ul_I(lv: c.Us_Ul_I) c_int {
    if (lv.v1 != 8727) return 1;
    if (lv.v2 != 14648) return 2;
    if (lv.v3 != 27507) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_I() c.Us_Ul_I {
    return .{ .v1 = 8727, .v2 = 14648, .v3 = 27507 };
}

// From T_Snnn_xbb.c:59325:59345
// struct  Us_Ul_Ip  {
//   unsigned short v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Us_Ul_Ip layout" {
    var lv: c.Us_Ul_Ip = undefined;
    try testing.expectSize(c.Us_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_Ip C calls" {
    try testing.expectEqual(c.ret_Us_Ul_Ip(), .{ .v1 = 24923, .v2 = 3980, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Ul_Ip());
    try testing.expectOk(c.send_Us_Ul_Ip());
    try testing.expectOk(c.recv_Us_Ul_Ip(.{ .v1 = 24923, .v2 = 3980, .v3 = null }));
}
pub export fn zig_recv_Us_Ul_Ip(lv: c.Us_Ul_Ip) c_int {
    if (lv.v1 != 24923) return 1;
    if (lv.v2 != 3980) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_Ip() c.Us_Ul_Ip {
    return .{ .v1 = 24923, .v2 = 3980, .v3 = null };
}

// From T_Snnn_xbb.c:59350:59370
// struct  Us_Ul_L  {
//   unsigned short v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Us_Ul_L layout" {
    var lv: c.Us_Ul_L = undefined;
    try testing.expectSize(c.Us_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_L C calls" {
    try testing.expectEqual(c.ret_Us_Ul_L(), .{ .v1 = 14072, .v2 = 26693, .v3 = 704 });
    try testing.expectOk(c.assert_ret_Us_Ul_L());
    try testing.expectOk(c.send_Us_Ul_L());
    try testing.expectOk(c.recv_Us_Ul_L(.{ .v1 = 14072, .v2 = 26693, .v3 = 704 }));
}
pub export fn zig_recv_Us_Ul_L(lv: c.Us_Ul_L) c_int {
    if (lv.v1 != 14072) return 1;
    if (lv.v2 != 26693) return 2;
    if (lv.v3 != 704) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_L() c.Us_Ul_L {
    return .{ .v1 = 14072, .v2 = 26693, .v3 = 704 };
}

// From T_Snnn_xbb.c:59375:59395
// struct  Us_Ul_S  {
//   unsigned short v1;
//   __tsu64 v2;
//   short v3;
// };

test "Us_Ul_S layout" {
    var lv: c.Us_Ul_S = undefined;
    try testing.expectSize(c.Us_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_S C calls" {
    try testing.expectEqual(c.ret_Us_Ul_S(), .{ .v1 = 29540, .v2 = 2724, .v3 = 23630 });
    try testing.expectOk(c.assert_ret_Us_Ul_S());
    try testing.expectOk(c.send_Us_Ul_S());
    try testing.expectOk(c.recv_Us_Ul_S(.{ .v1 = 29540, .v2 = 2724, .v3 = 23630 }));
}
pub export fn zig_recv_Us_Ul_S(lv: c.Us_Ul_S) c_int {
    if (lv.v1 != 29540) return 1;
    if (lv.v2 != 2724) return 2;
    if (lv.v3 != 23630) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_S() c.Us_Ul_S {
    return .{ .v1 = 29540, .v2 = 2724, .v3 = 23630 };
}

// From T_Snnn_xbb.c:59400:59420
// struct  Us_Ul_Uc  {
//   unsigned short v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Us_Ul_Uc layout" {
    var lv: c.Us_Ul_Uc = undefined;
    try testing.expectSize(c.Us_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_Uc C calls" {
    try testing.expectEqual(c.ret_Us_Ul_Uc(), .{ .v1 = 2843, .v2 = 9302, .v3 = 9 });
    try testing.expectOk(c.assert_ret_Us_Ul_Uc());
    try testing.expectOk(c.send_Us_Ul_Uc());
    try testing.expectOk(c.recv_Us_Ul_Uc(.{ .v1 = 2843, .v2 = 9302, .v3 = 9 }));
}
pub export fn zig_recv_Us_Ul_Uc(lv: c.Us_Ul_Uc) c_int {
    if (lv.v1 != 2843) return 1;
    if (lv.v2 != 9302) return 2;
    if (lv.v3 != 9) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_Uc() c.Us_Ul_Uc {
    return .{ .v1 = 2843, .v2 = 9302, .v3 = 9 };
}

// From T_Snnn_xbb.c:59425:59445
// struct  Us_Ul_Ui  {
//   unsigned short v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Us_Ul_Ui layout" {
    var lv: c.Us_Ul_Ui = undefined;
    try testing.expectSize(c.Us_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_Ui C calls" {
    try testing.expectEqual(c.ret_Us_Ul_Ui(), .{ .v1 = 1936, .v2 = 23128, .v3 = 25427 });
    try testing.expectOk(c.assert_ret_Us_Ul_Ui());
    try testing.expectOk(c.send_Us_Ul_Ui());
    try testing.expectOk(c.recv_Us_Ul_Ui(.{ .v1 = 1936, .v2 = 23128, .v3 = 25427 }));
}
pub export fn zig_recv_Us_Ul_Ui(lv: c.Us_Ul_Ui) c_int {
    if (lv.v1 != 1936) return 1;
    if (lv.v2 != 23128) return 2;
    if (lv.v3 != 25427) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_Ui() c.Us_Ul_Ui {
    return .{ .v1 = 1936, .v2 = 23128, .v3 = 25427 };
}

// From T_Snnn_xbb.c:59450:59470
// struct  Us_Ul_Ul  {
//   unsigned short v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Us_Ul_Ul layout" {
    var lv: c.Us_Ul_Ul = undefined;
    try testing.expectSize(c.Us_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_Ul C calls" {
    try testing.expectEqual(c.ret_Us_Ul_Ul(), .{ .v1 = 21746, .v2 = 21824, .v3 = 14878 });
    try testing.expectOk(c.assert_ret_Us_Ul_Ul());
    try testing.expectOk(c.send_Us_Ul_Ul());
    try testing.expectOk(c.recv_Us_Ul_Ul(.{ .v1 = 21746, .v2 = 21824, .v3 = 14878 }));
}
pub export fn zig_recv_Us_Ul_Ul(lv: c.Us_Ul_Ul) c_int {
    if (lv.v1 != 21746) return 1;
    if (lv.v2 != 21824) return 2;
    if (lv.v3 != 14878) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_Ul() c.Us_Ul_Ul {
    return .{ .v1 = 21746, .v2 = 21824, .v3 = 14878 };
}

// From T_Snnn_xbb.c:59475:59495
// struct  Us_Ul_Us  {
//   unsigned short v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Us_Ul_Us layout" {
    var lv: c.Us_Ul_Us = undefined;
    try testing.expectSize(c.Us_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_Us C calls" {
    try testing.expectEqual(c.ret_Us_Ul_Us(), .{ .v1 = 26984, .v2 = 13299, .v3 = 17140 });
    try testing.expectOk(c.assert_ret_Us_Ul_Us());
    try testing.expectOk(c.send_Us_Ul_Us());
    try testing.expectOk(c.recv_Us_Ul_Us(.{ .v1 = 26984, .v2 = 13299, .v3 = 17140 }));
}
pub export fn zig_recv_Us_Ul_Us(lv: c.Us_Ul_Us) c_int {
    if (lv.v1 != 26984) return 1;
    if (lv.v2 != 13299) return 2;
    if (lv.v3 != 17140) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_Us() c.Us_Ul_Us {
    return .{ .v1 = 26984, .v2 = 13299, .v3 = 17140 };
}

// From T_Snnn_xbb.c:59500:59520
// struct  Us_Ul_Vp  {
//   unsigned short v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Us_Ul_Vp layout" {
    var lv: c.Us_Ul_Vp = undefined;
    try testing.expectSize(c.Us_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}
test "Us_Ul_Vp C calls" {
    try testing.expectEqual(c.ret_Us_Ul_Vp(), .{ .v1 = 30518, .v2 = 21741, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Ul_Vp());
    try testing.expectOk(c.send_Us_Ul_Vp());
    try testing.expectOk(c.recv_Us_Ul_Vp(.{ .v1 = 30518, .v2 = 21741, .v3 = null }));
}
pub export fn zig_recv_Us_Ul_Vp(lv: c.Us_Ul_Vp) c_int {
    if (lv.v1 != 30518) return 1;
    if (lv.v2 != 21741) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Ul_Vp() c.Us_Ul_Vp {
    return .{ .v1 = 30518, .v2 = 21741, .v3 = null };
}

// From T_Snnn_xbb.c:59525:59543
// struct  Us_Us  {
//   unsigned short v1;
//   unsigned short v2;
// };

test "Us_Us layout" {
    var lv: c.Us_Us = undefined;
    try testing.expectSize(c.Us_Us, 4);
    try testing.expectAlign(c.Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}
test "Us_Us C calls" {
    try testing.expectEqual(c.ret_Us_Us(), .{ .v1 = 22395, .v2 = 24860 });
    try testing.expectOk(c.assert_ret_Us_Us());
    try testing.expectOk(c.send_Us_Us());
    try testing.expectOk(c.recv_Us_Us(.{ .v1 = 22395, .v2 = 24860 }));
}
pub export fn zig_recv_Us_Us(lv: c.Us_Us) c_int {
    if (lv.v1 != 22395) return 1;
    if (lv.v2 != 24860) return 2;
    return 0;
}
pub export fn zig_ret_Us_Us() c.Us_Us {
    return .{ .v1 = 22395, .v2 = 24860 };
}

// From T_Snnn_xbb.c:60272:60292
// struct  Us_Us_C  {
//   unsigned short v1;
//   unsigned short v2;
//   char v3;
// };

test "Us_Us_C layout" {
    var lv: c.Us_Us_C = undefined;
    try testing.expectSize(c.Us_Us_C, 6);
    try testing.expectAlign(c.Us_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Us_C C calls" {
    try testing.expectEqual(c.ret_Us_Us_C(), .{ .v1 = 29095, .v2 = 16896, .v3 = 12 });
    try testing.expectOk(c.assert_ret_Us_Us_C());
    try testing.expectOk(c.send_Us_Us_C());
    try testing.expectOk(c.recv_Us_Us_C(.{ .v1 = 29095, .v2 = 16896, .v3 = 12 }));
}
pub export fn zig_recv_Us_Us_C(lv: c.Us_Us_C) c_int {
    if (lv.v1 != 29095) return 1;
    if (lv.v2 != 16896) return 2;
    if (lv.v3 != 12) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_C() c.Us_Us_C {
    return .{ .v1 = 29095, .v2 = 16896, .v3 = 12 };
}

// From T_Snnn_xbb.c:60297:60317
// struct  Us_Us_D  {
//   unsigned short v1;
//   unsigned short v2;
//   double v3;
// };

test "Us_Us_D layout" {
    var lv: c.Us_Us_D = undefined;
    try testing.expectSize(c.Us_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Us_D C calls" {
    try testing.expectEqual(c.ret_Us_Us_D(), .{ .v1 = 32400, .v2 = 24920, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Us_Us_D());
    try testing.expectOk(c.send_Us_Us_D());
    try testing.expectOk(c.recv_Us_Us_D(.{ .v1 = 32400, .v2 = 24920, .v3 = 7.0 }));
}
pub export fn zig_recv_Us_Us_D(lv: c.Us_Us_D) c_int {
    if (lv.v1 != 32400) return 1;
    if (lv.v2 != 24920) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_D() c.Us_Us_D {
    return .{ .v1 = 32400, .v2 = 24920, .v3 = 7.0 };
}

// From T_Snnn_xbb.c:60322:60342
// struct  Us_Us_F  {
//   unsigned short v1;
//   unsigned short v2;
//   float v3;
// };

test "Us_Us_F layout" {
    var lv: c.Us_Us_F = undefined;
    try testing.expectSize(c.Us_Us_F, 8);
    try testing.expectAlign(c.Us_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Us_F C calls" {
    try testing.expectEqual(c.ret_Us_Us_F(), .{ .v1 = 27252, .v2 = 23171, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Us_Us_F());
    try testing.expectOk(c.send_Us_Us_F());
    try testing.expectOk(c.recv_Us_Us_F(.{ .v1 = 27252, .v2 = 23171, .v3 = 7.0 }));
}
pub export fn zig_recv_Us_Us_F(lv: c.Us_Us_F) c_int {
    if (lv.v1 != 27252) return 1;
    if (lv.v2 != 23171) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_F() c.Us_Us_F {
    return .{ .v1 = 27252, .v2 = 23171, .v3 = 7.0 };
}

// From T_Snnn_xbb.c:60347:60367
// struct  Us_Us_I  {
//   unsigned short v1;
//   unsigned short v2;
//   int v3;
// };

test "Us_Us_I layout" {
    var lv: c.Us_Us_I = undefined;
    try testing.expectSize(c.Us_Us_I, 8);
    try testing.expectAlign(c.Us_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Us_I C calls" {
    try testing.expectEqual(c.ret_Us_Us_I(), .{ .v1 = 30675, .v2 = 20018, .v3 = 11813 });
    try testing.expectOk(c.assert_ret_Us_Us_I());
    try testing.expectOk(c.send_Us_Us_I());
    try testing.expectOk(c.recv_Us_Us_I(.{ .v1 = 30675, .v2 = 20018, .v3 = 11813 }));
}
pub export fn zig_recv_Us_Us_I(lv: c.Us_Us_I) c_int {
    if (lv.v1 != 30675) return 1;
    if (lv.v2 != 20018) return 2;
    if (lv.v3 != 11813) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_I() c.Us_Us_I {
    return .{ .v1 = 30675, .v2 = 20018, .v3 = 11813 };
}

// From T_Snnn_xbb.c:60372:60392
// struct  Us_Us_Ip  {
//   unsigned short v1;
//   unsigned short v2;
//   int *v3;
// };

test "Us_Us_Ip layout" {
    var lv: c.Us_Us_Ip = undefined;
    try testing.expectSize(c.Us_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Us_Ip C calls" {
    try testing.expectEqual(c.ret_Us_Us_Ip(), .{ .v1 = 12267, .v2 = 8588, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Us_Ip());
    try testing.expectOk(c.send_Us_Us_Ip());
    try testing.expectOk(c.recv_Us_Us_Ip(.{ .v1 = 12267, .v2 = 8588, .v3 = null }));
}
pub export fn zig_recv_Us_Us_Ip(lv: c.Us_Us_Ip) c_int {
    if (lv.v1 != 12267) return 1;
    if (lv.v2 != 8588) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_Ip() c.Us_Us_Ip {
    return .{ .v1 = 12267, .v2 = 8588, .v3 = null };
}

// From T_Snnn_xbb.c:60397:60417
// struct  Us_Us_L  {
//   unsigned short v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Us_Us_L layout" {
    var lv: c.Us_Us_L = undefined;
    try testing.expectSize(c.Us_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Us_L C calls" {
    try testing.expectEqual(c.ret_Us_Us_L(), .{ .v1 = 27707, .v2 = 22062, .v3 = 7550 });
    try testing.expectOk(c.assert_ret_Us_Us_L());
    try testing.expectOk(c.send_Us_Us_L());
    try testing.expectOk(c.recv_Us_Us_L(.{ .v1 = 27707, .v2 = 22062, .v3 = 7550 }));
}
pub export fn zig_recv_Us_Us_L(lv: c.Us_Us_L) c_int {
    if (lv.v1 != 27707) return 1;
    if (lv.v2 != 22062) return 2;
    if (lv.v3 != 7550) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_L() c.Us_Us_L {
    return .{ .v1 = 27707, .v2 = 22062, .v3 = 7550 };
}

// From T_Snnn_xbb.c:60422:60442
// struct  Us_Us_S  {
//   unsigned short v1;
//   unsigned short v2;
//   short v3;
// };

test "Us_Us_S layout" {
    var lv: c.Us_Us_S = undefined;
    try testing.expectSize(c.Us_Us_S, 6);
    try testing.expectAlign(c.Us_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Us_S C calls" {
    try testing.expectEqual(c.ret_Us_Us_S(), .{ .v1 = 26438, .v2 = 9267, .v3 = 12429 });
    try testing.expectOk(c.assert_ret_Us_Us_S());
    try testing.expectOk(c.send_Us_Us_S());
    try testing.expectOk(c.recv_Us_Us_S(.{ .v1 = 26438, .v2 = 9267, .v3 = 12429 }));
}
pub export fn zig_recv_Us_Us_S(lv: c.Us_Us_S) c_int {
    if (lv.v1 != 26438) return 1;
    if (lv.v2 != 9267) return 2;
    if (lv.v3 != 12429) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_S() c.Us_Us_S {
    return .{ .v1 = 26438, .v2 = 9267, .v3 = 12429 };
}

// From T_Snnn_xbb.c:60447:60467
// struct  Us_Us_Uc  {
//   unsigned short v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Us_Us_Uc layout" {
    var lv: c.Us_Us_Uc = undefined;
    try testing.expectSize(c.Us_Us_Uc, 6);
    try testing.expectAlign(c.Us_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Us_Uc C calls" {
    try testing.expectEqual(c.ret_Us_Us_Uc(), .{ .v1 = 16024, .v2 = 16604, .v3 = 8 });
    try testing.expectOk(c.assert_ret_Us_Us_Uc());
    try testing.expectOk(c.send_Us_Us_Uc());
    try testing.expectOk(c.recv_Us_Us_Uc(.{ .v1 = 16024, .v2 = 16604, .v3 = 8 }));
}
pub export fn zig_recv_Us_Us_Uc(lv: c.Us_Us_Uc) c_int {
    if (lv.v1 != 16024) return 1;
    if (lv.v2 != 16604) return 2;
    if (lv.v3 != 8) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_Uc() c.Us_Us_Uc {
    return .{ .v1 = 16024, .v2 = 16604, .v3 = 8 };
}

// From T_Snnn_xbb.c:60472:60492
// struct  Us_Us_Ui  {
//   unsigned short v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Us_Us_Ui layout" {
    var lv: c.Us_Us_Ui = undefined;
    try testing.expectSize(c.Us_Us_Ui, 8);
    try testing.expectAlign(c.Us_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Us_Ui C calls" {
    try testing.expectEqual(c.ret_Us_Us_Ui(), .{ .v1 = 31707, .v2 = 32474, .v3 = 20286 });
    try testing.expectOk(c.assert_ret_Us_Us_Ui());
    try testing.expectOk(c.send_Us_Us_Ui());
    try testing.expectOk(c.recv_Us_Us_Ui(.{ .v1 = 31707, .v2 = 32474, .v3 = 20286 }));
}
pub export fn zig_recv_Us_Us_Ui(lv: c.Us_Us_Ui) c_int {
    if (lv.v1 != 31707) return 1;
    if (lv.v2 != 32474) return 2;
    if (lv.v3 != 20286) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_Ui() c.Us_Us_Ui {
    return .{ .v1 = 31707, .v2 = 32474, .v3 = 20286 };
}

// From T_Snnn_xbb.c:60497:60517
// struct  Us_Us_Ul  {
//   unsigned short v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Us_Us_Ul layout" {
    var lv: c.Us_Us_Ul = undefined;
    try testing.expectSize(c.Us_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Us_Ul C calls" {
    try testing.expectEqual(c.ret_Us_Us_Ul(), .{ .v1 = 23168, .v2 = 25230, .v3 = 32395 });
    try testing.expectOk(c.assert_ret_Us_Us_Ul());
    try testing.expectOk(c.send_Us_Us_Ul());
    try testing.expectOk(c.recv_Us_Us_Ul(.{ .v1 = 23168, .v2 = 25230, .v3 = 32395 }));
}
pub export fn zig_recv_Us_Us_Ul(lv: c.Us_Us_Ul) c_int {
    if (lv.v1 != 23168) return 1;
    if (lv.v2 != 25230) return 2;
    if (lv.v3 != 32395) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_Ul() c.Us_Us_Ul {
    return .{ .v1 = 23168, .v2 = 25230, .v3 = 32395 };
}

// From T_Snnn_xbb.c:60522:60542
// struct  Us_Us_Us  {
//   unsigned short v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Us_Us_Us layout" {
    var lv: c.Us_Us_Us = undefined;
    try testing.expectSize(c.Us_Us_Us, 6);
    try testing.expectAlign(c.Us_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}
test "Us_Us_Us C calls" {
    try testing.expectEqual(c.ret_Us_Us_Us(), .{ .v1 = 22020, .v2 = 15748, .v3 = 19041 });
    try testing.expectOk(c.assert_ret_Us_Us_Us());
    try testing.expectOk(c.send_Us_Us_Us());
    try testing.expectOk(c.recv_Us_Us_Us(.{ .v1 = 22020, .v2 = 15748, .v3 = 19041 }));
}
pub export fn zig_recv_Us_Us_Us(lv: c.Us_Us_Us) c_int {
    if (lv.v1 != 22020) return 1;
    if (lv.v2 != 15748) return 2;
    if (lv.v3 != 19041) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_Us() c.Us_Us_Us {
    return .{ .v1 = 22020, .v2 = 15748, .v3 = 19041 };
}

// From T_Snnn_xbb.c:60547:60567
// struct  Us_Us_Vp  {
//   unsigned short v1;
//   unsigned short v2;
//   void *v3;
// };

test "Us_Us_Vp layout" {
    var lv: c.Us_Us_Vp = undefined;
    try testing.expectSize(c.Us_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}
test "Us_Us_Vp C calls" {
    try testing.expectEqual(c.ret_Us_Us_Vp(), .{ .v1 = 2680, .v2 = 25163, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Us_Vp());
    try testing.expectOk(c.send_Us_Us_Vp());
    try testing.expectOk(c.recv_Us_Us_Vp(.{ .v1 = 2680, .v2 = 25163, .v3 = null }));
}
pub export fn zig_recv_Us_Us_Vp(lv: c.Us_Us_Vp) c_int {
    if (lv.v1 != 2680) return 1;
    if (lv.v2 != 25163) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Us_Vp() c.Us_Us_Vp {
    return .{ .v1 = 2680, .v2 = 25163, .v3 = null };
}

// From T_Snnn_xbb.c:60572:60590
// struct  Us_Vp  {
//   unsigned short v1;
//   void *v2;
// };

test "Us_Vp layout" {
    var lv: c.Us_Vp = undefined;
    try testing.expectSize(c.Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
test "Us_Vp C calls" {
    try testing.expectEqual(c.ret_Us_Vp(), .{ .v1 = 27963, .v2 = null });
    try testing.expectOk(c.assert_ret_Us_Vp());
    try testing.expectOk(c.send_Us_Vp());
    try testing.expectOk(c.recv_Us_Vp(.{ .v1 = 27963, .v2 = null }));
}
pub export fn zig_recv_Us_Vp(lv: c.Us_Vp) c_int {
    if (lv.v1 != 27963) return 1;
    if (lv.v2 != null) return 2;
    return 0;
}
pub export fn zig_ret_Us_Vp() c.Us_Vp {
    return .{ .v1 = 27963, .v2 = null };
}

// From T_Snnn_xbb.c:61319:61339
// struct  Us_Vp_C  {
//   unsigned short v1;
//   void *v2;
//   char v3;
// };

test "Us_Vp_C layout" {
    var lv: c.Us_Vp_C = undefined;
    try testing.expectSize(c.Us_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_C C calls" {
    try testing.expectEqual(c.ret_Us_Vp_C(), .{ .v1 = 13429, .v2 = null, .v3 = 114 });
    try testing.expectOk(c.assert_ret_Us_Vp_C());
    try testing.expectOk(c.send_Us_Vp_C());
    try testing.expectOk(c.recv_Us_Vp_C(.{ .v1 = 13429, .v2 = null, .v3 = 114 }));
}
pub export fn zig_recv_Us_Vp_C(lv: c.Us_Vp_C) c_int {
    if (lv.v1 != 13429) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 114) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_C() c.Us_Vp_C {
    return .{ .v1 = 13429, .v2 = null, .v3 = 114 };
}

// From T_Snnn_xbb.c:61344:61364
// struct  Us_Vp_D  {
//   unsigned short v1;
//   void *v2;
//   double v3;
// };

test "Us_Vp_D layout" {
    var lv: c.Us_Vp_D = undefined;
    try testing.expectSize(c.Us_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_D C calls" {
    try testing.expectEqual(c.ret_Us_Vp_D(), .{ .v1 = 14615, .v2 = null, .v3 = 7.0 });
    try testing.expectOk(c.assert_ret_Us_Vp_D());
    try testing.expectOk(c.send_Us_Vp_D());
    try testing.expectOk(c.recv_Us_Vp_D(.{ .v1 = 14615, .v2 = null, .v3 = 7.0 }));
}
pub export fn zig_recv_Us_Vp_D(lv: c.Us_Vp_D) c_int {
    if (lv.v1 != 14615) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 7.0) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_D() c.Us_Vp_D {
    return .{ .v1 = 14615, .v2 = null, .v3 = 7.0 };
}

// From T_Snnn_xbb.c:61369:61389
// struct  Us_Vp_F  {
//   unsigned short v1;
//   void *v2;
//   float v3;
// };

test "Us_Vp_F layout" {
    var lv: c.Us_Vp_F = undefined;
    try testing.expectSize(c.Us_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_F C calls" {
    try testing.expectEqual(c.ret_Us_Vp_F(), .{ .v1 = 25809, .v2 = null, .v3 = -0.25 });
    try testing.expectOk(c.assert_ret_Us_Vp_F());
    try testing.expectOk(c.send_Us_Vp_F());
    try testing.expectOk(c.recv_Us_Vp_F(.{ .v1 = 25809, .v2 = null, .v3 = -0.25 }));
}
pub export fn zig_recv_Us_Vp_F(lv: c.Us_Vp_F) c_int {
    if (lv.v1 != 25809) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != -0.25) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_F() c.Us_Vp_F {
    return .{ .v1 = 25809, .v2 = null, .v3 = -0.25 };
}

// From T_Snnn_xbb.c:61394:61414
// struct  Us_Vp_I  {
//   unsigned short v1;
//   void *v2;
//   int v3;
// };

test "Us_Vp_I layout" {
    var lv: c.Us_Vp_I = undefined;
    try testing.expectSize(c.Us_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_I C calls" {
    try testing.expectEqual(c.ret_Us_Vp_I(), .{ .v1 = 21154, .v2 = null, .v3 = 12034 });
    try testing.expectOk(c.assert_ret_Us_Vp_I());
    try testing.expectOk(c.send_Us_Vp_I());
    try testing.expectOk(c.recv_Us_Vp_I(.{ .v1 = 21154, .v2 = null, .v3 = 12034 }));
}
pub export fn zig_recv_Us_Vp_I(lv: c.Us_Vp_I) c_int {
    if (lv.v1 != 21154) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 12034) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_I() c.Us_Vp_I {
    return .{ .v1 = 21154, .v2 = null, .v3 = 12034 };
}

// From T_Snnn_xbb.c:61419:61439
// struct  Us_Vp_Ip  {
//   unsigned short v1;
//   void *v2;
//   int *v3;
// };

test "Us_Vp_Ip layout" {
    var lv: c.Us_Vp_Ip = undefined;
    try testing.expectSize(c.Us_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_Ip C calls" {
    try testing.expectEqual(c.ret_Us_Vp_Ip(), .{ .v1 = 1558, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Vp_Ip());
    try testing.expectOk(c.send_Us_Vp_Ip());
    try testing.expectOk(c.recv_Us_Vp_Ip(.{ .v1 = 1558, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_Us_Vp_Ip(lv: c.Us_Vp_Ip) c_int {
    if (lv.v1 != 1558) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_Ip() c.Us_Vp_Ip {
    return .{ .v1 = 1558, .v2 = null, .v3 = null };
}

// From T_Snnn_xbb.c:61444:61464
// struct  Us_Vp_L  {
//   unsigned short v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Us_Vp_L layout" {
    var lv: c.Us_Vp_L = undefined;
    try testing.expectSize(c.Us_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_L C calls" {
    try testing.expectEqual(c.ret_Us_Vp_L(), .{ .v1 = 3956, .v2 = null, .v3 = 28044 });
    try testing.expectOk(c.assert_ret_Us_Vp_L());
    try testing.expectOk(c.send_Us_Vp_L());
    try testing.expectOk(c.recv_Us_Vp_L(.{ .v1 = 3956, .v2 = null, .v3 = 28044 }));
}
pub export fn zig_recv_Us_Vp_L(lv: c.Us_Vp_L) c_int {
    if (lv.v1 != 3956) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 28044) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_L() c.Us_Vp_L {
    return .{ .v1 = 3956, .v2 = null, .v3 = 28044 };
}

// From T_Snnn_xbb.c:61469:61489
// struct  Us_Vp_S  {
//   unsigned short v1;
//   void *v2;
//   short v3;
// };

test "Us_Vp_S layout" {
    var lv: c.Us_Vp_S = undefined;
    try testing.expectSize(c.Us_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_S C calls" {
    try testing.expectEqual(c.ret_Us_Vp_S(), .{ .v1 = 19785, .v2 = null, .v3 = 32420 });
    try testing.expectOk(c.assert_ret_Us_Vp_S());
    try testing.expectOk(c.send_Us_Vp_S());
    try testing.expectOk(c.recv_Us_Vp_S(.{ .v1 = 19785, .v2 = null, .v3 = 32420 }));
}
pub export fn zig_recv_Us_Vp_S(lv: c.Us_Vp_S) c_int {
    if (lv.v1 != 19785) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 32420) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_S() c.Us_Vp_S {
    return .{ .v1 = 19785, .v2 = null, .v3 = 32420 };
}

// From T_Snnn_xbb.c:61494:61514
// struct  Us_Vp_Uc  {
//   unsigned short v1;
//   void *v2;
//   unsigned char v3;
// };

test "Us_Vp_Uc layout" {
    var lv: c.Us_Vp_Uc = undefined;
    try testing.expectSize(c.Us_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_Uc C calls" {
    try testing.expectEqual(c.ret_Us_Vp_Uc(), .{ .v1 = 12798, .v2 = null, .v3 = 106 });
    try testing.expectOk(c.assert_ret_Us_Vp_Uc());
    try testing.expectOk(c.send_Us_Vp_Uc());
    try testing.expectOk(c.recv_Us_Vp_Uc(.{ .v1 = 12798, .v2 = null, .v3 = 106 }));
}
pub export fn zig_recv_Us_Vp_Uc(lv: c.Us_Vp_Uc) c_int {
    if (lv.v1 != 12798) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 106) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_Uc() c.Us_Vp_Uc {
    return .{ .v1 = 12798, .v2 = null, .v3 = 106 };
}

// From T_Snnn_xbb.c:61519:61539
// struct  Us_Vp_Ui  {
//   unsigned short v1;
//   void *v2;
//   unsigned int v3;
// };

test "Us_Vp_Ui layout" {
    var lv: c.Us_Vp_Ui = undefined;
    try testing.expectSize(c.Us_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_Ui C calls" {
    try testing.expectEqual(c.ret_Us_Vp_Ui(), .{ .v1 = 18555, .v2 = null, .v3 = 25756 });
    try testing.expectOk(c.assert_ret_Us_Vp_Ui());
    try testing.expectOk(c.send_Us_Vp_Ui());
    try testing.expectOk(c.recv_Us_Vp_Ui(.{ .v1 = 18555, .v2 = null, .v3 = 25756 }));
}
pub export fn zig_recv_Us_Vp_Ui(lv: c.Us_Vp_Ui) c_int {
    if (lv.v1 != 18555) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 25756) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_Ui() c.Us_Vp_Ui {
    return .{ .v1 = 18555, .v2 = null, .v3 = 25756 };
}

// From T_Snnn_xbb.c:61544:61564
// struct  Us_Vp_Ul  {
//   unsigned short v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Us_Vp_Ul layout" {
    var lv: c.Us_Vp_Ul = undefined;
    try testing.expectSize(c.Us_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_Ul C calls" {
    try testing.expectEqual(c.ret_Us_Vp_Ul(), .{ .v1 = 25009, .v2 = null, .v3 = 2138 });
    try testing.expectOk(c.assert_ret_Us_Vp_Ul());
    try testing.expectOk(c.send_Us_Vp_Ul());
    try testing.expectOk(c.recv_Us_Vp_Ul(.{ .v1 = 25009, .v2 = null, .v3 = 2138 }));
}
pub export fn zig_recv_Us_Vp_Ul(lv: c.Us_Vp_Ul) c_int {
    if (lv.v1 != 25009) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 2138) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_Ul() c.Us_Vp_Ul {
    return .{ .v1 = 25009, .v2 = null, .v3 = 2138 };
}

// From T_Snnn_xbb.c:61569:61589
// struct  Us_Vp_Us  {
//   unsigned short v1;
//   void *v2;
//   unsigned short v3;
// };

test "Us_Vp_Us layout" {
    var lv: c.Us_Vp_Us = undefined;
    try testing.expectSize(c.Us_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_Us C calls" {
    try testing.expectEqual(c.ret_Us_Vp_Us(), .{ .v1 = 32123, .v2 = null, .v3 = 5039 });
    try testing.expectOk(c.assert_ret_Us_Vp_Us());
    try testing.expectOk(c.send_Us_Vp_Us());
    try testing.expectOk(c.recv_Us_Vp_Us(.{ .v1 = 32123, .v2 = null, .v3 = 5039 }));
}
pub export fn zig_recv_Us_Vp_Us(lv: c.Us_Vp_Us) c_int {
    if (lv.v1 != 32123) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != 5039) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_Us() c.Us_Vp_Us {
    return .{ .v1 = 32123, .v2 = null, .v3 = 5039 };
}

// From T_Snnn_xbb.c:61594:61614
// struct  Us_Vp_Vp  {
//   unsigned short v1;
//   void *v2;
//   void *v3;
// };

test "Us_Vp_Vp layout" {
    var lv: c.Us_Vp_Vp = undefined;
    try testing.expectSize(c.Us_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
test "Us_Vp_Vp C calls" {
    try testing.expectEqual(c.ret_Us_Vp_Vp(), .{ .v1 = 29460, .v2 = null, .v3 = null });
    try testing.expectOk(c.assert_ret_Us_Vp_Vp());
    try testing.expectOk(c.send_Us_Vp_Vp());
    try testing.expectOk(c.recv_Us_Vp_Vp(.{ .v1 = 29460, .v2 = null, .v3 = null }));
}
pub export fn zig_recv_Us_Vp_Vp(lv: c.Us_Vp_Vp) c_int {
    if (lv.v1 != 29460) return 1;
    if (lv.v2 != null) return 2;
    if (lv.v3 != null) return 3;
    return 0;
}
pub export fn zig_ret_Us_Vp_Vp() c.Us_Vp_Vp {
    return .{ .v1 = 29460, .v2 = null, .v3 = null };
}

// From T_Snnn_xbb.c:61619:61635
// struct  Vp  {
//   void *v1;
// };

test "Vp layout" {
    var lv: c.Vp = undefined;
    try testing.expectSize(c.Vp, ABISELECT(8, 4));
    try testing.expectAlign(c.Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "Vp C calls" {
    try testing.expectEqual(c.ret_Vp(), .{ .v1 = null });
    try testing.expectOk(c.assert_ret_Vp());
    try testing.expectOk(c.send_Vp());
    try testing.expectOk(c.recv_Vp(.{ .v1 = null }));
}
pub export fn zig_recv_Vp(lv: c.Vp) c_int {
    if (lv.v1 != null) return 1;
    return 0;
}
pub export fn zig_ret_Vp() c.Vp {
    return .{ .v1 = null };
}
