const std = @import("std");
const testing = @import("testing.zig");
const builtin = @import("builtin");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xav.h");
});

// From T_Snnn_xav.c:63393:63409
// struct  C  {
//   char v1;
// };

test "C: layout" {
    var lv: c.C = undefined;
    try testing.expectSize(c.C, 1);
    try testing.expectAlign(c.C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "C: Zig passes to C" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    try testing.expectOk(c.assert_C(.{ .v1 = 19 }));
}
test "C: Zig returns to C" {
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectOk(c.assert_ret_C());
}
test "C: C passes to Zig" {
    try testing.expectOk(c.send_C());
}
test "C: C returns to Zig" {
    if (comptime builtin.cpu.arch.isPPC()) return error.SkipZigTest;
    if (builtin.cpu.arch == .x86) return error.SkipZigTest;
    try testing.expectEqual(c.ret_C(), .{ .v1 = 19 });
}
pub export fn zig_assert_C(lv: c.C) c_int {
    var err: c_int = 0;
    if (lv.v1 != 19) err = 1;
    if (err != 0) std.debug.print("Received {}", .{lv});
    return err;
}
pub export fn zig_ret_C() c.C {
    return .{ .v1 = 19 };
}
