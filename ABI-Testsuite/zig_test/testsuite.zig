const std = @import("std");
const testing = std.testing;

pub inline fn expectSize(comptime t: type, size: u32) !void {
    try std.testing.expectEqual(size, @sizeOf(t));
}

pub inline fn expectAlign(comptime t: type, alignment: u32) !void {
    try std.testing.expectEqual(alignment, @alignOf(t));
}

pub fn expectFieldOffset(ps: anytype, pf: anytype, ofst: usize) !void {
    try std.testing.expect(@ptrToInt(ps) <= @ptrToInt(pf));
    try std.testing.expectEqual(ofst, @ptrToInt(pf) - @ptrToInt(ps));
}

pub inline fn ABISELECT(a: u8, b: u8) u8 {
    return if (@sizeOf(c_ulong) == 8) a else b;
}
