const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xav.h");
});

// From T_Snnn_xav.c:63393:63409
// struct  C  {
//   char v1;
// };

test "C layout" {
    var lv: c.C = undefined;
    try testing.expectSize(c.C, 1);
    try testing.expectAlign(c.C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
test "C C calls" {
    try testing.expectEqual(c.ret_C(), .{ .v1 = 19 });
    try testing.expectOk(c.assert_ret_C());
    try testing.expectOk(c.send_C());
    try testing.expectOk(c.assert_C(.{ .v1 = 19 }));
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
