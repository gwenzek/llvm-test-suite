const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xav.h");
});

// From T_Snnn_xav.c:63402:63408
test "C" {
    var lv: c.C = undefined;
    try testing.expectSize(c.C, 1);
    try testing.expectAlign(c.C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
