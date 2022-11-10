const std = @import("std");
const builtin = @import("builtin");

pub const expectEqual = std.testing.expectEqual;

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

pub inline fn expectOk(c_err: c_int) !void {
    if (c_err != 0) {
        std.debug.print("ABI mismatch on field v{d}.\n", .{c_err});
        return error.TestExpectedEqual;
    }
}

pub inline fn expectFail(c_err: c_int) !void {
    if (c_err != 0) {
        std.debug.print("ABI mismatch on field v{d}.\n", .{c_err});
        return error.TestUnexpectedResult;
    }
    std.debug.print("no ABI mismatch, test should be upgraded to expectOk.\n", .{});
    return error.TestUnexpectedResult;
}

pub inline fn expectOutcome(c_err: c_int, expected_outcome: bool) !void {
    return if (expected_outcome) expectOk(c_err) else expectFail(c_err);
}
