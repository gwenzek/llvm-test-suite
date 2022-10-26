const utils = @import("testsuite.zig");
const std = @import("std");

const Empty = extern struct {};

test "empty" {
    try std.testing.expectEqual(0, @sizeOf(Empty));
    try std.testing.expectEqual(1, @alignOf(Empty));
}

const BFu1s_C_Uc = extern struct { v1: c_ushort, v2: u8, v3: u8 };

test "BFu1s_C_Uc" {
    var lv: BFu1s_C_Uc = undefined;
    try utils.expectSizeOf(lv, 4);
    try utils.expectAlignOf(lv, 2);
    utils.set_bf_and_test(&lv, &lv.v1, 0, 0, 1, 1, "BFu1s_C_Uc");
    utils.check_field_offset(&lv, &lv.v2, 1, "BFu1s_C_Uc.v2");
    utils.check_field_offset(&lv, &lv.v3, 2, "BFu1s_C_Uc.v3");
}

const Sf_BFu16i_BFu15s = extern struct { v1: Empty, v2: c_uint, v3: c_ushort };

test "Sf_BFu16i_BFu15s" {
    var lv: Sf_BFu16i_BFu15s = undefined;
    try utils.expectSizeOf(lv, 4);
    try utils.expectAlignOf(lv, 4);
    utils.check_field_offset(&lv, &lv.v1, 0, "Sf_BFu16i_BFu15s.v1");
    utils.set_bf_and_test(&lv, &lv.v2, 0, 0, 16, 1, "Sf_BFu16i_BFu15s");
    utils.set_bf_and_test(&lv, &lv.v2, 0, 0, 16, 1 << 15, "Sf_BFu16i_BFu15s");
    utils.set_bf_and_test(&lv, &lv.v3, 2, 0, 15, 1, "Sf_BFu16i_BFu15s");
    utils.set_bf_and_test(&lv, &lv.v3, 2, 0, 15, 1 << 14, "Sf_BFu16i_BFu15s");
}
