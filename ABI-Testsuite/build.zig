const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    const exe = b.addExecutable("layerz", "test/testsuite.zig");
    exe.linkLibC();
    exe.setTarget(target);
    exe.setBuildMode(mode);
    exe.install();

    const run = b.step("run", "Run ABI test suite");
    run.dependOn(&exe.run().step);

    addTestFile(b, &exe.step, "struct_layout_tests/BFs64_BFs64");

    const all_tests = b.step("test", "Tests");
    const tests = b.addTest("zig_test/T_Snnn_xbc.zig");
    // tests.linkLibC();
    // tests.addIncludePath("src/include");
    tests.addIncludePath("zig_test");
    all_tests.dependOn(&tests.step);
}

fn addTestFile(b: *std.build.Builder, exe: *std.build.Step, comptime name: []const u8) void {
    const zig_test = b.addTranslateC(.{ .path = "test/" ++ name ++ ".c" });
    zig_test.addIncludeDir("test/common");
    zig_test.output_dir = "zig_test";

    exe.dependOn(&zig_test.step);
}
