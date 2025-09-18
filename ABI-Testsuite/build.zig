const std = @import("std");

pub fn build(b: *std.Build) void {
    const mode = b.standardOptimizeOption(.{});
    const target = b.standardTargetOptions(.{});

    const test_step = b.step("test", "Test the program");

    addTest(b, test_step, "T_Snnn_xav", target, mode);
    addTest(b, test_step, "T_Snnn_xaw", target, mode);
    addTest(b, test_step, "T_Snnn_xax", target, mode);
    addTest(b, test_step, "T_Snnn_xay", target, mode);
    addTest(b, test_step, "T_Snnn_xaz", target, mode);
    addTest(b, test_step, "T_Snnn_xba", target, mode);
    addTest(b, test_step, "T_Snnn_xbb", target, mode);
    addTest(b, test_step, "T_Snnn_xbc", target, mode);
    // add an --allow-empty
    addTest(b, test_step, "CT_Snen_xaa", target, mode);
    // addTest(b, test_step, "CT_Snen_xab", target);

    b.default_step.dependOn(test_step);
}

fn addTest(b: *std.Build, test_step: *std.Build.Step, comptime name: []const u8, target: std.Build.ResolvedTarget, mode: std.builtin.OptimizeMode) void {
    const test_module = b.addModule(name, .{
        .root_source_file = b.path(b.pathJoin(&.{ "zig_test", name ++ ".zig" })),
        .target = target,
        .optimize = mode,
    });
    test_module.addCSourceFile(.{
        .file = b.path(b.pathJoin(&.{ "zig_test", name ++ ".aux.c" })),
        .flags = &.{ "-std=c99", "-Werror" },
        .language = .c,
    });
    test_module.addIncludePath(b.path("zig_test"));

    const main = b.addTest(.{ .root_module = test_module, .use_llvm = false });
    test_step.dependOn(&main.step);
}
