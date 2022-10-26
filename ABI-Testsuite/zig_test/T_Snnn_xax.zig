const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xax.h");
});

// From T_Snnn_xax.c:19700:19707
test "F_C" {
    var lv: c.F_C = undefined;
    try testing.expectSize(c.F_C, 8);
    try testing.expectAlign(c.F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:20448:20456
test "F_C_C" {
    var lv: c.F_C_C = undefined;
    try testing.expectSize(c.F_C_C, 8);
    try testing.expectAlign(c.F_C_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xax.c:20473:20481
test "F_C_D" {
    var lv: c.F_C_D = undefined;
    try testing.expectSize(c.F_C_D, 16);
    try testing.expectAlign(c.F_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:20498:20506
test "F_C_F" {
    var lv: c.F_C_F = undefined;
    try testing.expectSize(c.F_C_F, 12);
    try testing.expectAlign(c.F_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:20523:20531
test "F_C_I" {
    var lv: c.F_C_I = undefined;
    try testing.expectSize(c.F_C_I, 12);
    try testing.expectAlign(c.F_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:20548:20556
test "F_C_Ip" {
    var lv: c.F_C_Ip = undefined;
    try testing.expectSize(c.F_C_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:20573:20581
test "F_C_L" {
    var lv: c.F_C_L = undefined;
    try testing.expectSize(c.F_C_L, 16);
    try testing.expectAlign(c.F_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:20598:20606
test "F_C_S" {
    var lv: c.F_C_S = undefined;
    try testing.expectSize(c.F_C_S, 8);
    try testing.expectAlign(c.F_C_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:20623:20631
test "F_C_Uc" {
    var lv: c.F_C_Uc = undefined;
    try testing.expectSize(c.F_C_Uc, 8);
    try testing.expectAlign(c.F_C_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xax.c:20648:20656
test "F_C_Ui" {
    var lv: c.F_C_Ui = undefined;
    try testing.expectSize(c.F_C_Ui, 12);
    try testing.expectAlign(c.F_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:20673:20681
test "F_C_Ul" {
    var lv: c.F_C_Ul = undefined;
    try testing.expectSize(c.F_C_Ul, 16);
    try testing.expectAlign(c.F_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:20698:20706
test "F_C_Us" {
    var lv: c.F_C_Us = undefined;
    try testing.expectSize(c.F_C_Us, 8);
    try testing.expectAlign(c.F_C_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:20723:20731
test "F_C_Vp" {
    var lv: c.F_C_Vp = undefined;
    try testing.expectSize(c.F_C_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:20747:20754
test "F_D" {
    var lv: c.F_D = undefined;
    try testing.expectSize(c.F_D, ABISELECT(16, 12));
    try testing.expectAlign(c.F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xax.c:21495:21503
test "F_D_C" {
    var lv: c.F_D_C = undefined;
    try testing.expectSize(c.F_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21520:21528
test "F_D_D" {
    var lv: c.F_D_D = undefined;
    try testing.expectSize(c.F_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21545:21553
test "F_D_F" {
    var lv: c.F_D_F = undefined;
    try testing.expectSize(c.F_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21570:21578
test "F_D_I" {
    var lv: c.F_D_I = undefined;
    try testing.expectSize(c.F_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21595:21603
test "F_D_Ip" {
    var lv: c.F_D_Ip = undefined;
    try testing.expectSize(c.F_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21620:21628
test "F_D_L" {
    var lv: c.F_D_L = undefined;
    try testing.expectSize(c.F_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21645:21653
test "F_D_S" {
    var lv: c.F_D_S = undefined;
    try testing.expectSize(c.F_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21670:21678
test "F_D_Uc" {
    var lv: c.F_D_Uc = undefined;
    try testing.expectSize(c.F_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21695:21703
test "F_D_Ui" {
    var lv: c.F_D_Ui = undefined;
    try testing.expectSize(c.F_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21720:21728
test "F_D_Ul" {
    var lv: c.F_D_Ul = undefined;
    try testing.expectSize(c.F_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21745:21753
test "F_D_Us" {
    var lv: c.F_D_Us = undefined;
    try testing.expectSize(c.F_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21770:21778
test "F_D_Vp" {
    var lv: c.F_D_Vp = undefined;
    try testing.expectSize(c.F_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:21794:21801
test "F_F" {
    var lv: c.F_F = undefined;
    try testing.expectSize(c.F_F, 8);
    try testing.expectAlign(c.F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:22542:22550
test "F_F_C" {
    var lv: c.F_F_C = undefined;
    try testing.expectSize(c.F_F_C, 12);
    try testing.expectAlign(c.F_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22567:22575
test "F_F_D" {
    var lv: c.F_F_D = undefined;
    try testing.expectSize(c.F_F_D, 16);
    try testing.expectAlign(c.F_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22592:22600
test "F_F_F" {
    var lv: c.F_F_F = undefined;
    try testing.expectSize(c.F_F_F, 12);
    try testing.expectAlign(c.F_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22617:22625
test "F_F_I" {
    var lv: c.F_F_I = undefined;
    try testing.expectSize(c.F_F_I, 12);
    try testing.expectAlign(c.F_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22642:22650
test "F_F_Ip" {
    var lv: c.F_F_Ip = undefined;
    try testing.expectSize(c.F_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22667:22675
test "F_F_L" {
    var lv: c.F_F_L = undefined;
    try testing.expectSize(c.F_F_L, 16);
    try testing.expectAlign(c.F_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22692:22700
test "F_F_S" {
    var lv: c.F_F_S = undefined;
    try testing.expectSize(c.F_F_S, 12);
    try testing.expectAlign(c.F_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22717:22725
test "F_F_Uc" {
    var lv: c.F_F_Uc = undefined;
    try testing.expectSize(c.F_F_Uc, 12);
    try testing.expectAlign(c.F_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22742:22750
test "F_F_Ui" {
    var lv: c.F_F_Ui = undefined;
    try testing.expectSize(c.F_F_Ui, 12);
    try testing.expectAlign(c.F_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22767:22775
test "F_F_Ul" {
    var lv: c.F_F_Ul = undefined;
    try testing.expectSize(c.F_F_Ul, 16);
    try testing.expectAlign(c.F_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22792:22800
test "F_F_Us" {
    var lv: c.F_F_Us = undefined;
    try testing.expectSize(c.F_F_Us, 12);
    try testing.expectAlign(c.F_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22817:22825
test "F_F_Vp" {
    var lv: c.F_F_Vp = undefined;
    try testing.expectSize(c.F_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:22841:22848
test "F_I" {
    var lv: c.F_I = undefined;
    try testing.expectSize(c.F_I, 8);
    try testing.expectAlign(c.F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:23589:23597
test "F_I_C" {
    var lv: c.F_I_C = undefined;
    try testing.expectSize(c.F_I_C, 12);
    try testing.expectAlign(c.F_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23614:23622
test "F_I_D" {
    var lv: c.F_I_D = undefined;
    try testing.expectSize(c.F_I_D, 16);
    try testing.expectAlign(c.F_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23639:23647
test "F_I_F" {
    var lv: c.F_I_F = undefined;
    try testing.expectSize(c.F_I_F, 12);
    try testing.expectAlign(c.F_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23664:23672
test "F_I_I" {
    var lv: c.F_I_I = undefined;
    try testing.expectSize(c.F_I_I, 12);
    try testing.expectAlign(c.F_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23689:23697
test "F_I_Ip" {
    var lv: c.F_I_Ip = undefined;
    try testing.expectSize(c.F_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23714:23722
test "F_I_L" {
    var lv: c.F_I_L = undefined;
    try testing.expectSize(c.F_I_L, 16);
    try testing.expectAlign(c.F_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23739:23747
test "F_I_S" {
    var lv: c.F_I_S = undefined;
    try testing.expectSize(c.F_I_S, 12);
    try testing.expectAlign(c.F_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23764:23772
test "F_I_Uc" {
    var lv: c.F_I_Uc = undefined;
    try testing.expectSize(c.F_I_Uc, 12);
    try testing.expectAlign(c.F_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23789:23797
test "F_I_Ui" {
    var lv: c.F_I_Ui = undefined;
    try testing.expectSize(c.F_I_Ui, 12);
    try testing.expectAlign(c.F_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23814:23822
test "F_I_Ul" {
    var lv: c.F_I_Ul = undefined;
    try testing.expectSize(c.F_I_Ul, 16);
    try testing.expectAlign(c.F_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23839:23847
test "F_I_Us" {
    var lv: c.F_I_Us = undefined;
    try testing.expectSize(c.F_I_Us, 12);
    try testing.expectAlign(c.F_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23864:23872
test "F_I_Vp" {
    var lv: c.F_I_Vp = undefined;
    try testing.expectSize(c.F_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:23888:23895
test "F_Ip" {
    var lv: c.F_Ip = undefined;
    try testing.expectSize(c.F_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xax.c:24636:24644
test "F_Ip_C" {
    var lv: c.F_Ip_C = undefined;
    try testing.expectSize(c.F_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24661:24669
test "F_Ip_D" {
    var lv: c.F_Ip_D = undefined;
    try testing.expectSize(c.F_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24686:24694
test "F_Ip_F" {
    var lv: c.F_Ip_F = undefined;
    try testing.expectSize(c.F_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24711:24719
test "F_Ip_I" {
    var lv: c.F_Ip_I = undefined;
    try testing.expectSize(c.F_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24736:24744
test "F_Ip_Ip" {
    var lv: c.F_Ip_Ip = undefined;
    try testing.expectSize(c.F_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24761:24769
test "F_Ip_L" {
    var lv: c.F_Ip_L = undefined;
    try testing.expectSize(c.F_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24786:24794
test "F_Ip_S" {
    var lv: c.F_Ip_S = undefined;
    try testing.expectSize(c.F_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24811:24819
test "F_Ip_Uc" {
    var lv: c.F_Ip_Uc = undefined;
    try testing.expectSize(c.F_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24836:24844
test "F_Ip_Ui" {
    var lv: c.F_Ip_Ui = undefined;
    try testing.expectSize(c.F_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24861:24869
test "F_Ip_Ul" {
    var lv: c.F_Ip_Ul = undefined;
    try testing.expectSize(c.F_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24886:24894
test "F_Ip_Us" {
    var lv: c.F_Ip_Us = undefined;
    try testing.expectSize(c.F_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24911:24919
test "F_Ip_Vp" {
    var lv: c.F_Ip_Vp = undefined;
    try testing.expectSize(c.F_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:24935:24942
test "F_L" {
    var lv: c.F_L = undefined;
    try testing.expectSize(c.F_L, ABISELECT(16, 12));
    try testing.expectAlign(c.F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xax.c:25683:25691
test "F_L_C" {
    var lv: c.F_L_C = undefined;
    try testing.expectSize(c.F_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25708:25716
test "F_L_D" {
    var lv: c.F_L_D = undefined;
    try testing.expectSize(c.F_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25733:25741
test "F_L_F" {
    var lv: c.F_L_F = undefined;
    try testing.expectSize(c.F_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25758:25766
test "F_L_I" {
    var lv: c.F_L_I = undefined;
    try testing.expectSize(c.F_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25783:25791
test "F_L_Ip" {
    var lv: c.F_L_Ip = undefined;
    try testing.expectSize(c.F_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25808:25816
test "F_L_L" {
    var lv: c.F_L_L = undefined;
    try testing.expectSize(c.F_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25833:25841
test "F_L_S" {
    var lv: c.F_L_S = undefined;
    try testing.expectSize(c.F_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25858:25866
test "F_L_Uc" {
    var lv: c.F_L_Uc = undefined;
    try testing.expectSize(c.F_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25883:25891
test "F_L_Ui" {
    var lv: c.F_L_Ui = undefined;
    try testing.expectSize(c.F_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25908:25916
test "F_L_Ul" {
    var lv: c.F_L_Ul = undefined;
    try testing.expectSize(c.F_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25933:25941
test "F_L_Us" {
    var lv: c.F_L_Us = undefined;
    try testing.expectSize(c.F_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25958:25966
test "F_L_Vp" {
    var lv: c.F_L_Vp = undefined;
    try testing.expectSize(c.F_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:25982:25989
test "F_S" {
    var lv: c.F_S = undefined;
    try testing.expectSize(c.F_S, 8);
    try testing.expectAlign(c.F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:26730:26738
test "F_S_C" {
    var lv: c.F_S_C = undefined;
    try testing.expectSize(c.F_S_C, 8);
    try testing.expectAlign(c.F_S_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:26755:26763
test "F_S_D" {
    var lv: c.F_S_D = undefined;
    try testing.expectSize(c.F_S_D, 16);
    try testing.expectAlign(c.F_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:26780:26788
test "F_S_F" {
    var lv: c.F_S_F = undefined;
    try testing.expectSize(c.F_S_F, 12);
    try testing.expectAlign(c.F_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:26805:26813
test "F_S_I" {
    var lv: c.F_S_I = undefined;
    try testing.expectSize(c.F_S_I, 12);
    try testing.expectAlign(c.F_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:26830:26838
test "F_S_Ip" {
    var lv: c.F_S_Ip = undefined;
    try testing.expectSize(c.F_S_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:26855:26863
test "F_S_L" {
    var lv: c.F_S_L = undefined;
    try testing.expectSize(c.F_S_L, 16);
    try testing.expectAlign(c.F_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:26880:26888
test "F_S_S" {
    var lv: c.F_S_S = undefined;
    try testing.expectSize(c.F_S_S, 8);
    try testing.expectAlign(c.F_S_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:26905:26913
test "F_S_Uc" {
    var lv: c.F_S_Uc = undefined;
    try testing.expectSize(c.F_S_Uc, 8);
    try testing.expectAlign(c.F_S_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:26930:26938
test "F_S_Ui" {
    var lv: c.F_S_Ui = undefined;
    try testing.expectSize(c.F_S_Ui, 12);
    try testing.expectAlign(c.F_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:26955:26963
test "F_S_Ul" {
    var lv: c.F_S_Ul = undefined;
    try testing.expectSize(c.F_S_Ul, 16);
    try testing.expectAlign(c.F_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:26980:26988
test "F_S_Us" {
    var lv: c.F_S_Us = undefined;
    try testing.expectSize(c.F_S_Us, 8);
    try testing.expectAlign(c.F_S_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:27005:27013
test "F_S_Vp" {
    var lv: c.F_S_Vp = undefined;
    try testing.expectSize(c.F_S_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:27029:27036
test "F_Uc" {
    var lv: c.F_Uc = undefined;
    try testing.expectSize(c.F_Uc, 8);
    try testing.expectAlign(c.F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:27777:27785
test "F_Uc_C" {
    var lv: c.F_Uc_C = undefined;
    try testing.expectSize(c.F_Uc_C, 8);
    try testing.expectAlign(c.F_Uc_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xax.c:27802:27810
test "F_Uc_D" {
    var lv: c.F_Uc_D = undefined;
    try testing.expectSize(c.F_Uc_D, 16);
    try testing.expectAlign(c.F_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:27827:27835
test "F_Uc_F" {
    var lv: c.F_Uc_F = undefined;
    try testing.expectSize(c.F_Uc_F, 12);
    try testing.expectAlign(c.F_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:27852:27860
test "F_Uc_I" {
    var lv: c.F_Uc_I = undefined;
    try testing.expectSize(c.F_Uc_I, 12);
    try testing.expectAlign(c.F_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:27877:27885
test "F_Uc_Ip" {
    var lv: c.F_Uc_Ip = undefined;
    try testing.expectSize(c.F_Uc_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:27902:27910
test "F_Uc_L" {
    var lv: c.F_Uc_L = undefined;
    try testing.expectSize(c.F_Uc_L, 16);
    try testing.expectAlign(c.F_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:27927:27935
test "F_Uc_S" {
    var lv: c.F_Uc_S = undefined;
    try testing.expectSize(c.F_Uc_S, 8);
    try testing.expectAlign(c.F_Uc_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:27952:27960
test "F_Uc_Uc" {
    var lv: c.F_Uc_Uc = undefined;
    try testing.expectSize(c.F_Uc_Uc, 8);
    try testing.expectAlign(c.F_Uc_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xax.c:27977:27985
test "F_Uc_Ui" {
    var lv: c.F_Uc_Ui = undefined;
    try testing.expectSize(c.F_Uc_Ui, 12);
    try testing.expectAlign(c.F_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:28002:28010
test "F_Uc_Ul" {
    var lv: c.F_Uc_Ul = undefined;
    try testing.expectSize(c.F_Uc_Ul, 16);
    try testing.expectAlign(c.F_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:28027:28035
test "F_Uc_Us" {
    var lv: c.F_Uc_Us = undefined;
    try testing.expectSize(c.F_Uc_Us, 8);
    try testing.expectAlign(c.F_Uc_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:28052:28060
test "F_Uc_Vp" {
    var lv: c.F_Uc_Vp = undefined;
    try testing.expectSize(c.F_Uc_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:28076:28083
test "F_Ui" {
    var lv: c.F_Ui = undefined;
    try testing.expectSize(c.F_Ui, 8);
    try testing.expectAlign(c.F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:28824:28832
test "F_Ui_C" {
    var lv: c.F_Ui_C = undefined;
    try testing.expectSize(c.F_Ui_C, 12);
    try testing.expectAlign(c.F_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:28849:28857
test "F_Ui_D" {
    var lv: c.F_Ui_D = undefined;
    try testing.expectSize(c.F_Ui_D, 16);
    try testing.expectAlign(c.F_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:28874:28882
test "F_Ui_F" {
    var lv: c.F_Ui_F = undefined;
    try testing.expectSize(c.F_Ui_F, 12);
    try testing.expectAlign(c.F_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:28899:28907
test "F_Ui_I" {
    var lv: c.F_Ui_I = undefined;
    try testing.expectSize(c.F_Ui_I, 12);
    try testing.expectAlign(c.F_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:28924:28932
test "F_Ui_Ip" {
    var lv: c.F_Ui_Ip = undefined;
    try testing.expectSize(c.F_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:28949:28957
test "F_Ui_L" {
    var lv: c.F_Ui_L = undefined;
    try testing.expectSize(c.F_Ui_L, 16);
    try testing.expectAlign(c.F_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:28974:28982
test "F_Ui_S" {
    var lv: c.F_Ui_S = undefined;
    try testing.expectSize(c.F_Ui_S, 12);
    try testing.expectAlign(c.F_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:28999:29007
test "F_Ui_Uc" {
    var lv: c.F_Ui_Uc = undefined;
    try testing.expectSize(c.F_Ui_Uc, 12);
    try testing.expectAlign(c.F_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:29024:29032
test "F_Ui_Ui" {
    var lv: c.F_Ui_Ui = undefined;
    try testing.expectSize(c.F_Ui_Ui, 12);
    try testing.expectAlign(c.F_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:29049:29057
test "F_Ui_Ul" {
    var lv: c.F_Ui_Ul = undefined;
    try testing.expectSize(c.F_Ui_Ul, 16);
    try testing.expectAlign(c.F_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:29074:29082
test "F_Ui_Us" {
    var lv: c.F_Ui_Us = undefined;
    try testing.expectSize(c.F_Ui_Us, 12);
    try testing.expectAlign(c.F_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:29099:29107
test "F_Ui_Vp" {
    var lv: c.F_Ui_Vp = undefined;
    try testing.expectSize(c.F_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:29123:29130
test "F_Ul" {
    var lv: c.F_Ul = undefined;
    try testing.expectSize(c.F_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xax.c:29871:29879
test "F_Ul_C" {
    var lv: c.F_Ul_C = undefined;
    try testing.expectSize(c.F_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:29896:29904
test "F_Ul_D" {
    var lv: c.F_Ul_D = undefined;
    try testing.expectSize(c.F_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:29921:29929
test "F_Ul_F" {
    var lv: c.F_Ul_F = undefined;
    try testing.expectSize(c.F_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:29946:29954
test "F_Ul_I" {
    var lv: c.F_Ul_I = undefined;
    try testing.expectSize(c.F_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:29971:29979
test "F_Ul_Ip" {
    var lv: c.F_Ul_Ip = undefined;
    try testing.expectSize(c.F_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:29996:30004
test "F_Ul_L" {
    var lv: c.F_Ul_L = undefined;
    try testing.expectSize(c.F_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:30021:30029
test "F_Ul_S" {
    var lv: c.F_Ul_S = undefined;
    try testing.expectSize(c.F_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:30046:30054
test "F_Ul_Uc" {
    var lv: c.F_Ul_Uc = undefined;
    try testing.expectSize(c.F_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:30071:30079
test "F_Ul_Ui" {
    var lv: c.F_Ul_Ui = undefined;
    try testing.expectSize(c.F_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:30096:30104
test "F_Ul_Ul" {
    var lv: c.F_Ul_Ul = undefined;
    try testing.expectSize(c.F_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.F_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:30121:30129
test "F_Ul_Us" {
    var lv: c.F_Ul_Us = undefined;
    try testing.expectSize(c.F_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:30146:30154
test "F_Ul_Vp" {
    var lv: c.F_Ul_Vp = undefined;
    try testing.expectSize(c.F_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:30170:30177
test "F_Us" {
    var lv: c.F_Us = undefined;
    try testing.expectSize(c.F_Us, 8);
    try testing.expectAlign(c.F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:30918:30926
test "F_Us_C" {
    var lv: c.F_Us_C = undefined;
    try testing.expectSize(c.F_Us_C, 8);
    try testing.expectAlign(c.F_Us_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:30943:30951
test "F_Us_D" {
    var lv: c.F_Us_D = undefined;
    try testing.expectSize(c.F_Us_D, 16);
    try testing.expectAlign(c.F_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:30968:30976
test "F_Us_F" {
    var lv: c.F_Us_F = undefined;
    try testing.expectSize(c.F_Us_F, 12);
    try testing.expectAlign(c.F_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:30993:31001
test "F_Us_I" {
    var lv: c.F_Us_I = undefined;
    try testing.expectSize(c.F_Us_I, 12);
    try testing.expectAlign(c.F_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:31018:31026
test "F_Us_Ip" {
    var lv: c.F_Us_Ip = undefined;
    try testing.expectSize(c.F_Us_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:31043:31051
test "F_Us_L" {
    var lv: c.F_Us_L = undefined;
    try testing.expectSize(c.F_Us_L, 16);
    try testing.expectAlign(c.F_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:31068:31076
test "F_Us_S" {
    var lv: c.F_Us_S = undefined;
    try testing.expectSize(c.F_Us_S, 8);
    try testing.expectAlign(c.F_Us_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:31093:31101
test "F_Us_Uc" {
    var lv: c.F_Us_Uc = undefined;
    try testing.expectSize(c.F_Us_Uc, 8);
    try testing.expectAlign(c.F_Us_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:31118:31126
test "F_Us_Ui" {
    var lv: c.F_Us_Ui = undefined;
    try testing.expectSize(c.F_Us_Ui, 12);
    try testing.expectAlign(c.F_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:31143:31151
test "F_Us_Ul" {
    var lv: c.F_Us_Ul = undefined;
    try testing.expectSize(c.F_Us_Ul, 16);
    try testing.expectAlign(c.F_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:31168:31176
test "F_Us_Us" {
    var lv: c.F_Us_Us = undefined;
    try testing.expectSize(c.F_Us_Us, 8);
    try testing.expectAlign(c.F_Us_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:31193:31201
test "F_Us_Vp" {
    var lv: c.F_Us_Vp = undefined;
    try testing.expectSize(c.F_Us_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.F_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:31217:31224
test "F_Vp" {
    var lv: c.F_Vp = undefined;
    try testing.expectSize(c.F_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xax.c:31965:31973
test "F_Vp_C" {
    var lv: c.F_Vp_C = undefined;
    try testing.expectSize(c.F_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:31990:31998
test "F_Vp_D" {
    var lv: c.F_Vp_D = undefined;
    try testing.expectSize(c.F_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:32015:32023
test "F_Vp_F" {
    var lv: c.F_Vp_F = undefined;
    try testing.expectSize(c.F_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:32040:32048
test "F_Vp_I" {
    var lv: c.F_Vp_I = undefined;
    try testing.expectSize(c.F_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:32065:32073
test "F_Vp_Ip" {
    var lv: c.F_Vp_Ip = undefined;
    try testing.expectSize(c.F_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:32090:32098
test "F_Vp_L" {
    var lv: c.F_Vp_L = undefined;
    try testing.expectSize(c.F_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:32115:32123
test "F_Vp_S" {
    var lv: c.F_Vp_S = undefined;
    try testing.expectSize(c.F_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:32140:32148
test "F_Vp_Uc" {
    var lv: c.F_Vp_Uc = undefined;
    try testing.expectSize(c.F_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:32165:32173
test "F_Vp_Ui" {
    var lv: c.F_Vp_Ui = undefined;
    try testing.expectSize(c.F_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:32190:32198
test "F_Vp_Ul" {
    var lv: c.F_Vp_Ul = undefined;
    try testing.expectSize(c.F_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.F_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:32215:32223
test "F_Vp_Us" {
    var lv: c.F_Vp_Us = undefined;
    try testing.expectSize(c.F_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:32240:32248
test "F_Vp_Vp" {
    var lv: c.F_Vp_Vp = undefined;
    try testing.expectSize(c.F_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.F_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:32263:32269
test "I" {
    var lv: c.I = undefined;
    try testing.expectSize(c.I, 4);
    try testing.expectAlign(c.I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Snnn_xax.c:62585:62592
test "I_C" {
    var lv: c.I_C = undefined;
    try testing.expectSize(c.I_C, 8);
    try testing.expectAlign(c.I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:63333:63341
test "I_C_C" {
    var lv: c.I_C_C = undefined;
    try testing.expectSize(c.I_C_C, 8);
    try testing.expectAlign(c.I_C_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xax.c:63358:63366
test "I_C_D" {
    var lv: c.I_C_D = undefined;
    try testing.expectSize(c.I_C_D, 16);
    try testing.expectAlign(c.I_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:63383:63391
test "I_C_F" {
    var lv: c.I_C_F = undefined;
    try testing.expectSize(c.I_C_F, 12);
    try testing.expectAlign(c.I_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:63408:63416
test "I_C_I" {
    var lv: c.I_C_I = undefined;
    try testing.expectSize(c.I_C_I, 12);
    try testing.expectAlign(c.I_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:63433:63441
test "I_C_Ip" {
    var lv: c.I_C_Ip = undefined;
    try testing.expectSize(c.I_C_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:63458:63466
test "I_C_L" {
    var lv: c.I_C_L = undefined;
    try testing.expectSize(c.I_C_L, 16);
    try testing.expectAlign(c.I_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:63483:63491
test "I_C_S" {
    var lv: c.I_C_S = undefined;
    try testing.expectSize(c.I_C_S, 8);
    try testing.expectAlign(c.I_C_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:63508:63516
test "I_C_Uc" {
    var lv: c.I_C_Uc = undefined;
    try testing.expectSize(c.I_C_Uc, 8);
    try testing.expectAlign(c.I_C_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xax.c:63533:63541
test "I_C_Ui" {
    var lv: c.I_C_Ui = undefined;
    try testing.expectSize(c.I_C_Ui, 12);
    try testing.expectAlign(c.I_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:63558:63566
test "I_C_Ul" {
    var lv: c.I_C_Ul = undefined;
    try testing.expectSize(c.I_C_Ul, 16);
    try testing.expectAlign(c.I_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:63583:63591
test "I_C_Us" {
    var lv: c.I_C_Us = undefined;
    try testing.expectSize(c.I_C_Us, 8);
    try testing.expectAlign(c.I_C_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:63608:63616
test "I_C_Vp" {
    var lv: c.I_C_Vp = undefined;
    try testing.expectSize(c.I_C_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:63632:63639
test "I_D" {
    var lv: c.I_D = undefined;
    try testing.expectSize(c.I_D, ABISELECT(16, 12));
    try testing.expectAlign(c.I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xax.c:64380:64388
test "I_D_C" {
    var lv: c.I_D_C = undefined;
    try testing.expectSize(c.I_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64405:64413
test "I_D_D" {
    var lv: c.I_D_D = undefined;
    try testing.expectSize(c.I_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64430:64438
test "I_D_F" {
    var lv: c.I_D_F = undefined;
    try testing.expectSize(c.I_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64455:64463
test "I_D_I" {
    var lv: c.I_D_I = undefined;
    try testing.expectSize(c.I_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64480:64488
test "I_D_Ip" {
    var lv: c.I_D_Ip = undefined;
    try testing.expectSize(c.I_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64505:64513
test "I_D_L" {
    var lv: c.I_D_L = undefined;
    try testing.expectSize(c.I_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64530:64538
test "I_D_S" {
    var lv: c.I_D_S = undefined;
    try testing.expectSize(c.I_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64555:64563
test "I_D_Uc" {
    var lv: c.I_D_Uc = undefined;
    try testing.expectSize(c.I_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64580:64588
test "I_D_Ui" {
    var lv: c.I_D_Ui = undefined;
    try testing.expectSize(c.I_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64605:64613
test "I_D_Ul" {
    var lv: c.I_D_Ul = undefined;
    try testing.expectSize(c.I_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64630:64638
test "I_D_Us" {
    var lv: c.I_D_Us = undefined;
    try testing.expectSize(c.I_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64655:64663
test "I_D_Vp" {
    var lv: c.I_D_Vp = undefined;
    try testing.expectSize(c.I_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:64679:64686
test "I_F" {
    var lv: c.I_F = undefined;
    try testing.expectSize(c.I_F, 8);
    try testing.expectAlign(c.I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:65427:65435
test "I_F_C" {
    var lv: c.I_F_C = undefined;
    try testing.expectSize(c.I_F_C, 12);
    try testing.expectAlign(c.I_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65452:65460
test "I_F_D" {
    var lv: c.I_F_D = undefined;
    try testing.expectSize(c.I_F_D, 16);
    try testing.expectAlign(c.I_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65477:65485
test "I_F_F" {
    var lv: c.I_F_F = undefined;
    try testing.expectSize(c.I_F_F, 12);
    try testing.expectAlign(c.I_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65502:65510
test "I_F_I" {
    var lv: c.I_F_I = undefined;
    try testing.expectSize(c.I_F_I, 12);
    try testing.expectAlign(c.I_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65527:65535
test "I_F_Ip" {
    var lv: c.I_F_Ip = undefined;
    try testing.expectSize(c.I_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65552:65560
test "I_F_L" {
    var lv: c.I_F_L = undefined;
    try testing.expectSize(c.I_F_L, 16);
    try testing.expectAlign(c.I_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65577:65585
test "I_F_S" {
    var lv: c.I_F_S = undefined;
    try testing.expectSize(c.I_F_S, 12);
    try testing.expectAlign(c.I_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65602:65610
test "I_F_Uc" {
    var lv: c.I_F_Uc = undefined;
    try testing.expectSize(c.I_F_Uc, 12);
    try testing.expectAlign(c.I_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65627:65635
test "I_F_Ui" {
    var lv: c.I_F_Ui = undefined;
    try testing.expectSize(c.I_F_Ui, 12);
    try testing.expectAlign(c.I_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65652:65660
test "I_F_Ul" {
    var lv: c.I_F_Ul = undefined;
    try testing.expectSize(c.I_F_Ul, 16);
    try testing.expectAlign(c.I_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65677:65685
test "I_F_Us" {
    var lv: c.I_F_Us = undefined;
    try testing.expectSize(c.I_F_Us, 12);
    try testing.expectAlign(c.I_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65702:65710
test "I_F_Vp" {
    var lv: c.I_F_Vp = undefined;
    try testing.expectSize(c.I_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:65726:65733
test "I_I" {
    var lv: c.I_I = undefined;
    try testing.expectSize(c.I_I, 8);
    try testing.expectAlign(c.I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:66474:66482
test "I_I_C" {
    var lv: c.I_I_C = undefined;
    try testing.expectSize(c.I_I_C, 12);
    try testing.expectAlign(c.I_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66499:66507
test "I_I_D" {
    var lv: c.I_I_D = undefined;
    try testing.expectSize(c.I_I_D, 16);
    try testing.expectAlign(c.I_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66524:66532
test "I_I_F" {
    var lv: c.I_I_F = undefined;
    try testing.expectSize(c.I_I_F, 12);
    try testing.expectAlign(c.I_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66549:66557
test "I_I_I" {
    var lv: c.I_I_I = undefined;
    try testing.expectSize(c.I_I_I, 12);
    try testing.expectAlign(c.I_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66574:66582
test "I_I_Ip" {
    var lv: c.I_I_Ip = undefined;
    try testing.expectSize(c.I_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66599:66607
test "I_I_L" {
    var lv: c.I_I_L = undefined;
    try testing.expectSize(c.I_I_L, 16);
    try testing.expectAlign(c.I_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66624:66632
test "I_I_S" {
    var lv: c.I_I_S = undefined;
    try testing.expectSize(c.I_I_S, 12);
    try testing.expectAlign(c.I_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66649:66657
test "I_I_Uc" {
    var lv: c.I_I_Uc = undefined;
    try testing.expectSize(c.I_I_Uc, 12);
    try testing.expectAlign(c.I_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66674:66682
test "I_I_Ui" {
    var lv: c.I_I_Ui = undefined;
    try testing.expectSize(c.I_I_Ui, 12);
    try testing.expectAlign(c.I_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66699:66707
test "I_I_Ul" {
    var lv: c.I_I_Ul = undefined;
    try testing.expectSize(c.I_I_Ul, 16);
    try testing.expectAlign(c.I_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66724:66732
test "I_I_Us" {
    var lv: c.I_I_Us = undefined;
    try testing.expectSize(c.I_I_Us, 12);
    try testing.expectAlign(c.I_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66749:66757
test "I_I_Vp" {
    var lv: c.I_I_Vp = undefined;
    try testing.expectSize(c.I_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:66773:66780
test "I_Ip" {
    var lv: c.I_Ip = undefined;
    try testing.expectSize(c.I_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xax.c:67521:67529
test "I_Ip_C" {
    var lv: c.I_Ip_C = undefined;
    try testing.expectSize(c.I_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67546:67554
test "I_Ip_D" {
    var lv: c.I_Ip_D = undefined;
    try testing.expectSize(c.I_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67571:67579
test "I_Ip_F" {
    var lv: c.I_Ip_F = undefined;
    try testing.expectSize(c.I_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67596:67604
test "I_Ip_I" {
    var lv: c.I_Ip_I = undefined;
    try testing.expectSize(c.I_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67621:67629
test "I_Ip_Ip" {
    var lv: c.I_Ip_Ip = undefined;
    try testing.expectSize(c.I_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67646:67654
test "I_Ip_L" {
    var lv: c.I_Ip_L = undefined;
    try testing.expectSize(c.I_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67671:67679
test "I_Ip_S" {
    var lv: c.I_Ip_S = undefined;
    try testing.expectSize(c.I_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67696:67704
test "I_Ip_Uc" {
    var lv: c.I_Ip_Uc = undefined;
    try testing.expectSize(c.I_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67721:67729
test "I_Ip_Ui" {
    var lv: c.I_Ip_Ui = undefined;
    try testing.expectSize(c.I_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67746:67754
test "I_Ip_Ul" {
    var lv: c.I_Ip_Ul = undefined;
    try testing.expectSize(c.I_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67771:67779
test "I_Ip_Us" {
    var lv: c.I_Ip_Us = undefined;
    try testing.expectSize(c.I_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67796:67804
test "I_Ip_Vp" {
    var lv: c.I_Ip_Vp = undefined;
    try testing.expectSize(c.I_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:67820:67827
test "I_L" {
    var lv: c.I_L = undefined;
    try testing.expectSize(c.I_L, ABISELECT(16, 12));
    try testing.expectAlign(c.I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xax.c:68568:68576
test "I_L_C" {
    var lv: c.I_L_C = undefined;
    try testing.expectSize(c.I_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68593:68601
test "I_L_D" {
    var lv: c.I_L_D = undefined;
    try testing.expectSize(c.I_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68618:68626
test "I_L_F" {
    var lv: c.I_L_F = undefined;
    try testing.expectSize(c.I_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68643:68651
test "I_L_I" {
    var lv: c.I_L_I = undefined;
    try testing.expectSize(c.I_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68668:68676
test "I_L_Ip" {
    var lv: c.I_L_Ip = undefined;
    try testing.expectSize(c.I_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68693:68701
test "I_L_L" {
    var lv: c.I_L_L = undefined;
    try testing.expectSize(c.I_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68718:68726
test "I_L_S" {
    var lv: c.I_L_S = undefined;
    try testing.expectSize(c.I_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68743:68751
test "I_L_Uc" {
    var lv: c.I_L_Uc = undefined;
    try testing.expectSize(c.I_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68768:68776
test "I_L_Ui" {
    var lv: c.I_L_Ui = undefined;
    try testing.expectSize(c.I_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68793:68801
test "I_L_Ul" {
    var lv: c.I_L_Ul = undefined;
    try testing.expectSize(c.I_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68818:68826
test "I_L_Us" {
    var lv: c.I_L_Us = undefined;
    try testing.expectSize(c.I_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68843:68851
test "I_L_Vp" {
    var lv: c.I_L_Vp = undefined;
    try testing.expectSize(c.I_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:68867:68874
test "I_S" {
    var lv: c.I_S = undefined;
    try testing.expectSize(c.I_S, 8);
    try testing.expectAlign(c.I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:69615:69623
test "I_S_C" {
    var lv: c.I_S_C = undefined;
    try testing.expectSize(c.I_S_C, 8);
    try testing.expectAlign(c.I_S_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:69640:69648
test "I_S_D" {
    var lv: c.I_S_D = undefined;
    try testing.expectSize(c.I_S_D, 16);
    try testing.expectAlign(c.I_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:69665:69673
test "I_S_F" {
    var lv: c.I_S_F = undefined;
    try testing.expectSize(c.I_S_F, 12);
    try testing.expectAlign(c.I_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:69690:69698
test "I_S_I" {
    var lv: c.I_S_I = undefined;
    try testing.expectSize(c.I_S_I, 12);
    try testing.expectAlign(c.I_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:69715:69723
test "I_S_Ip" {
    var lv: c.I_S_Ip = undefined;
    try testing.expectSize(c.I_S_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:69740:69748
test "I_S_L" {
    var lv: c.I_S_L = undefined;
    try testing.expectSize(c.I_S_L, 16);
    try testing.expectAlign(c.I_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:69765:69773
test "I_S_S" {
    var lv: c.I_S_S = undefined;
    try testing.expectSize(c.I_S_S, 8);
    try testing.expectAlign(c.I_S_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:69790:69798
test "I_S_Uc" {
    var lv: c.I_S_Uc = undefined;
    try testing.expectSize(c.I_S_Uc, 8);
    try testing.expectAlign(c.I_S_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:69815:69823
test "I_S_Ui" {
    var lv: c.I_S_Ui = undefined;
    try testing.expectSize(c.I_S_Ui, 12);
    try testing.expectAlign(c.I_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:69840:69848
test "I_S_Ul" {
    var lv: c.I_S_Ul = undefined;
    try testing.expectSize(c.I_S_Ul, 16);
    try testing.expectAlign(c.I_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:69865:69873
test "I_S_Us" {
    var lv: c.I_S_Us = undefined;
    try testing.expectSize(c.I_S_Us, 8);
    try testing.expectAlign(c.I_S_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:69890:69898
test "I_S_Vp" {
    var lv: c.I_S_Vp = undefined;
    try testing.expectSize(c.I_S_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:69914:69921
test "I_Uc" {
    var lv: c.I_Uc = undefined;
    try testing.expectSize(c.I_Uc, 8);
    try testing.expectAlign(c.I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:70662:70670
test "I_Uc_C" {
    var lv: c.I_Uc_C = undefined;
    try testing.expectSize(c.I_Uc_C, 8);
    try testing.expectAlign(c.I_Uc_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xax.c:70687:70695
test "I_Uc_D" {
    var lv: c.I_Uc_D = undefined;
    try testing.expectSize(c.I_Uc_D, 16);
    try testing.expectAlign(c.I_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:70712:70720
test "I_Uc_F" {
    var lv: c.I_Uc_F = undefined;
    try testing.expectSize(c.I_Uc_F, 12);
    try testing.expectAlign(c.I_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:70737:70745
test "I_Uc_I" {
    var lv: c.I_Uc_I = undefined;
    try testing.expectSize(c.I_Uc_I, 12);
    try testing.expectAlign(c.I_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:70762:70770
test "I_Uc_Ip" {
    var lv: c.I_Uc_Ip = undefined;
    try testing.expectSize(c.I_Uc_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:70787:70795
test "I_Uc_L" {
    var lv: c.I_Uc_L = undefined;
    try testing.expectSize(c.I_Uc_L, 16);
    try testing.expectAlign(c.I_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:70812:70820
test "I_Uc_S" {
    var lv: c.I_Uc_S = undefined;
    try testing.expectSize(c.I_Uc_S, 8);
    try testing.expectAlign(c.I_Uc_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:70837:70845
test "I_Uc_Uc" {
    var lv: c.I_Uc_Uc = undefined;
    try testing.expectSize(c.I_Uc_Uc, 8);
    try testing.expectAlign(c.I_Uc_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xax.c:70862:70870
test "I_Uc_Ui" {
    var lv: c.I_Uc_Ui = undefined;
    try testing.expectSize(c.I_Uc_Ui, 12);
    try testing.expectAlign(c.I_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:70887:70895
test "I_Uc_Ul" {
    var lv: c.I_Uc_Ul = undefined;
    try testing.expectSize(c.I_Uc_Ul, 16);
    try testing.expectAlign(c.I_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:70912:70920
test "I_Uc_Us" {
    var lv: c.I_Uc_Us = undefined;
    try testing.expectSize(c.I_Uc_Us, 8);
    try testing.expectAlign(c.I_Uc_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:70937:70945
test "I_Uc_Vp" {
    var lv: c.I_Uc_Vp = undefined;
    try testing.expectSize(c.I_Uc_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:70961:70968
test "I_Ui" {
    var lv: c.I_Ui = undefined;
    try testing.expectSize(c.I_Ui, 8);
    try testing.expectAlign(c.I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:71709:71717
test "I_Ui_C" {
    var lv: c.I_Ui_C = undefined;
    try testing.expectSize(c.I_Ui_C, 12);
    try testing.expectAlign(c.I_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:71734:71742
test "I_Ui_D" {
    var lv: c.I_Ui_D = undefined;
    try testing.expectSize(c.I_Ui_D, 16);
    try testing.expectAlign(c.I_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:71759:71767
test "I_Ui_F" {
    var lv: c.I_Ui_F = undefined;
    try testing.expectSize(c.I_Ui_F, 12);
    try testing.expectAlign(c.I_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:71784:71792
test "I_Ui_I" {
    var lv: c.I_Ui_I = undefined;
    try testing.expectSize(c.I_Ui_I, 12);
    try testing.expectAlign(c.I_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:71809:71817
test "I_Ui_Ip" {
    var lv: c.I_Ui_Ip = undefined;
    try testing.expectSize(c.I_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:71834:71842
test "I_Ui_L" {
    var lv: c.I_Ui_L = undefined;
    try testing.expectSize(c.I_Ui_L, 16);
    try testing.expectAlign(c.I_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:71859:71867
test "I_Ui_S" {
    var lv: c.I_Ui_S = undefined;
    try testing.expectSize(c.I_Ui_S, 12);
    try testing.expectAlign(c.I_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:71884:71892
test "I_Ui_Uc" {
    var lv: c.I_Ui_Uc = undefined;
    try testing.expectSize(c.I_Ui_Uc, 12);
    try testing.expectAlign(c.I_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:71909:71917
test "I_Ui_Ui" {
    var lv: c.I_Ui_Ui = undefined;
    try testing.expectSize(c.I_Ui_Ui, 12);
    try testing.expectAlign(c.I_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:71934:71942
test "I_Ui_Ul" {
    var lv: c.I_Ui_Ul = undefined;
    try testing.expectSize(c.I_Ui_Ul, 16);
    try testing.expectAlign(c.I_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:71959:71967
test "I_Ui_Us" {
    var lv: c.I_Ui_Us = undefined;
    try testing.expectSize(c.I_Ui_Us, 12);
    try testing.expectAlign(c.I_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:71984:71992
test "I_Ui_Vp" {
    var lv: c.I_Ui_Vp = undefined;
    try testing.expectSize(c.I_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:72008:72015
test "I_Ul" {
    var lv: c.I_Ul = undefined;
    try testing.expectSize(c.I_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xax.c:72756:72764
test "I_Ul_C" {
    var lv: c.I_Ul_C = undefined;
    try testing.expectSize(c.I_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:72781:72789
test "I_Ul_D" {
    var lv: c.I_Ul_D = undefined;
    try testing.expectSize(c.I_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:72806:72814
test "I_Ul_F" {
    var lv: c.I_Ul_F = undefined;
    try testing.expectSize(c.I_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:72831:72839
test "I_Ul_I" {
    var lv: c.I_Ul_I = undefined;
    try testing.expectSize(c.I_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:72856:72864
test "I_Ul_Ip" {
    var lv: c.I_Ul_Ip = undefined;
    try testing.expectSize(c.I_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:72881:72889
test "I_Ul_L" {
    var lv: c.I_Ul_L = undefined;
    try testing.expectSize(c.I_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:72906:72914
test "I_Ul_S" {
    var lv: c.I_Ul_S = undefined;
    try testing.expectSize(c.I_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:72931:72939
test "I_Ul_Uc" {
    var lv: c.I_Ul_Uc = undefined;
    try testing.expectSize(c.I_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:72956:72964
test "I_Ul_Ui" {
    var lv: c.I_Ul_Ui = undefined;
    try testing.expectSize(c.I_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:72981:72989
test "I_Ul_Ul" {
    var lv: c.I_Ul_Ul = undefined;
    try testing.expectSize(c.I_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.I_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:73006:73014
test "I_Ul_Us" {
    var lv: c.I_Ul_Us = undefined;
    try testing.expectSize(c.I_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:73031:73039
test "I_Ul_Vp" {
    var lv: c.I_Ul_Vp = undefined;
    try testing.expectSize(c.I_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xax.c:73055:73062
test "I_Us" {
    var lv: c.I_Us = undefined;
    try testing.expectSize(c.I_Us, 8);
    try testing.expectAlign(c.I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xax.c:73803:73811
test "I_Us_C" {
    var lv: c.I_Us_C = undefined;
    try testing.expectSize(c.I_Us_C, 8);
    try testing.expectAlign(c.I_Us_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:73828:73836
test "I_Us_D" {
    var lv: c.I_Us_D = undefined;
    try testing.expectSize(c.I_Us_D, 16);
    try testing.expectAlign(c.I_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:73853:73861
test "I_Us_F" {
    var lv: c.I_Us_F = undefined;
    try testing.expectSize(c.I_Us_F, 12);
    try testing.expectAlign(c.I_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:73878:73886
test "I_Us_I" {
    var lv: c.I_Us_I = undefined;
    try testing.expectSize(c.I_Us_I, 12);
    try testing.expectAlign(c.I_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:73903:73911
test "I_Us_Ip" {
    var lv: c.I_Us_Ip = undefined;
    try testing.expectSize(c.I_Us_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:73928:73936
test "I_Us_L" {
    var lv: c.I_Us_L = undefined;
    try testing.expectSize(c.I_Us_L, 16);
    try testing.expectAlign(c.I_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:73953:73961
test "I_Us_S" {
    var lv: c.I_Us_S = undefined;
    try testing.expectSize(c.I_Us_S, 8);
    try testing.expectAlign(c.I_Us_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:73978:73986
test "I_Us_Uc" {
    var lv: c.I_Us_Uc = undefined;
    try testing.expectSize(c.I_Us_Uc, 8);
    try testing.expectAlign(c.I_Us_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:74003:74011
test "I_Us_Ui" {
    var lv: c.I_Us_Ui = undefined;
    try testing.expectSize(c.I_Us_Ui, 12);
    try testing.expectAlign(c.I_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:74028:74036
test "I_Us_Ul" {
    var lv: c.I_Us_Ul = undefined;
    try testing.expectSize(c.I_Us_Ul, 16);
    try testing.expectAlign(c.I_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:74053:74061
test "I_Us_Us" {
    var lv: c.I_Us_Us = undefined;
    try testing.expectSize(c.I_Us_Us, 8);
    try testing.expectAlign(c.I_Us_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xax.c:74078:74086
test "I_Us_Vp" {
    var lv: c.I_Us_Vp = undefined;
    try testing.expectSize(c.I_Us_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.I_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xax.c:74102:74109
test "I_Vp" {
    var lv: c.I_Vp = undefined;
    try testing.expectSize(c.I_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xax.c:74850:74858
test "I_Vp_C" {
    var lv: c.I_Vp_C = undefined;
    try testing.expectSize(c.I_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:74875:74883
test "I_Vp_D" {
    var lv: c.I_Vp_D = undefined;
    try testing.expectSize(c.I_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:74900:74908
test "I_Vp_F" {
    var lv: c.I_Vp_F = undefined;
    try testing.expectSize(c.I_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:74925:74933
test "I_Vp_I" {
    var lv: c.I_Vp_I = undefined;
    try testing.expectSize(c.I_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:74950:74958
test "I_Vp_Ip" {
    var lv: c.I_Vp_Ip = undefined;
    try testing.expectSize(c.I_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:74975:74983
test "I_Vp_L" {
    var lv: c.I_Vp_L = undefined;
    try testing.expectSize(c.I_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:75000:75008
test "I_Vp_S" {
    var lv: c.I_Vp_S = undefined;
    try testing.expectSize(c.I_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:75025:75033
test "I_Vp_Uc" {
    var lv: c.I_Vp_Uc = undefined;
    try testing.expectSize(c.I_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:75050:75058
test "I_Vp_Ui" {
    var lv: c.I_Vp_Ui = undefined;
    try testing.expectSize(c.I_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:75075:75083
test "I_Vp_Ul" {
    var lv: c.I_Vp_Ul = undefined;
    try testing.expectSize(c.I_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.I_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:75100:75108
test "I_Vp_Us" {
    var lv: c.I_Vp_Us = undefined;
    try testing.expectSize(c.I_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:75125:75133
test "I_Vp_Vp" {
    var lv: c.I_Vp_Vp = undefined;
    try testing.expectSize(c.I_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.I_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xax.c:75148:75154
test "Ip" {
    var lv: c.Ip = undefined;
    try testing.expectSize(c.Ip, ABISELECT(8, 4));
    try testing.expectAlign(c.Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
