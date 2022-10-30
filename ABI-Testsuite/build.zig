const std = @import("std");
const Builder = std.build.Builder;

pub fn build(b: *Builder) void {
    // const rel_opts = b.standardReleaseOptions();
    // const target = b.standardTargetOptions(.{});

    const test_step = b.step("test", "Test the program");

    addTest(b, test_step, "T_Snnn_xav");
    addTest(b, test_step, "T_Snnn_xaw");
    addTest(b, test_step, "T_Snnn_xax");
    addTest(b, test_step, "T_Snnn_xay");
    addTest(b, test_step, "T_Snnn_xaz");
    addTest(b, test_step, "T_Snnn_xba");
    addTest(b, test_step, "T_Snnn_xbb");
    addTest(b, test_step, "T_Snnn_xbc");

    b.default_step.dependOn(test_step);
}

fn addTest(b: *Builder, test_step: *std.build.Step, comptime name: []const u8) void {
    const c_obj = b.addObject(name ++ ".aux", null);
    c_obj.addCSourceFile("zig_test/" ++ name ++ ".aux.c", &[_][]const u8{"-std=c99"});
    // c_obj.setBuildMode(rel_opts);
    // c_obj.target = target;

    const main = b.addTest("zig_test/" ++ name ++ ".zig");
    // main.setBuildMode(rel_opts);
    main.addObject(c_obj);
    main.addIncludePath("zig_test");
    // main.target = target;

    test_step.dependOn(&main.step);
}
