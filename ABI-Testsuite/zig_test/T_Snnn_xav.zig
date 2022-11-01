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
    try testing.expectOk(c.recv_C(.{ .v1 = 19 }));
    try testing.expectEqual(c.ret_C(), .{ .v1 = 19 });
    try testing.expectOk(c.send_C());
}
pub export fn zig_recv_C(lv: c.C) c_int {
    if (lv.v1 != 19) return 1;
    return 0;
}
