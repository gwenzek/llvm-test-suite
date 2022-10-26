const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xbc.h");
});

// From T_Snnn_xbc.c:13661:13668
test "Vp_C" {
    var lv: c.Vp_C = undefined;
    try testing.expectSize(c.Vp_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:14409:14417
test "Vp_C_C" {
    var lv: c.Vp_C_C = undefined;
    try testing.expectSize(c.Vp_C_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xbc.c:14434:14442
test "Vp_C_D" {
    var lv: c.Vp_C_D = undefined;
    try testing.expectSize(c.Vp_C_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:14459:14467
test "Vp_C_F" {
    var lv: c.Vp_C_F = undefined;
    try testing.expectSize(c.Vp_C_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:14484:14492
test "Vp_C_I" {
    var lv: c.Vp_C_I = undefined;
    try testing.expectSize(c.Vp_C_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:14509:14517
test "Vp_C_Ip" {
    var lv: c.Vp_C_Ip = undefined;
    try testing.expectSize(c.Vp_C_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:14534:14542
test "Vp_C_L" {
    var lv: c.Vp_C_L = undefined;
    try testing.expectSize(c.Vp_C_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:14559:14567
test "Vp_C_S" {
    var lv: c.Vp_C_S = undefined;
    try testing.expectSize(c.Vp_C_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:14584:14592
test "Vp_C_Uc" {
    var lv: c.Vp_C_Uc = undefined;
    try testing.expectSize(c.Vp_C_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xbc.c:14609:14617
test "Vp_C_Ui" {
    var lv: c.Vp_C_Ui = undefined;
    try testing.expectSize(c.Vp_C_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:14634:14642
test "Vp_C_Ul" {
    var lv: c.Vp_C_Ul = undefined;
    try testing.expectSize(c.Vp_C_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:14659:14667
test "Vp_C_Us" {
    var lv: c.Vp_C_Us = undefined;
    try testing.expectSize(c.Vp_C_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:14684:14692
test "Vp_C_Vp" {
    var lv: c.Vp_C_Vp = undefined;
    try testing.expectSize(c.Vp_C_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:14708:14715
test "Vp_D" {
    var lv: c.Vp_D = undefined;
    try testing.expectSize(c.Vp_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:15456:15464
test "Vp_D_C" {
    var lv: c.Vp_D_C = undefined;
    try testing.expectSize(c.Vp_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15481:15489
test "Vp_D_D" {
    var lv: c.Vp_D_D = undefined;
    try testing.expectSize(c.Vp_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15506:15514
test "Vp_D_F" {
    var lv: c.Vp_D_F = undefined;
    try testing.expectSize(c.Vp_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15531:15539
test "Vp_D_I" {
    var lv: c.Vp_D_I = undefined;
    try testing.expectSize(c.Vp_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15556:15564
test "Vp_D_Ip" {
    var lv: c.Vp_D_Ip = undefined;
    try testing.expectSize(c.Vp_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15581:15589
test "Vp_D_L" {
    var lv: c.Vp_D_L = undefined;
    try testing.expectSize(c.Vp_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15606:15614
test "Vp_D_S" {
    var lv: c.Vp_D_S = undefined;
    try testing.expectSize(c.Vp_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15631:15639
test "Vp_D_Uc" {
    var lv: c.Vp_D_Uc = undefined;
    try testing.expectSize(c.Vp_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15656:15664
test "Vp_D_Ui" {
    var lv: c.Vp_D_Ui = undefined;
    try testing.expectSize(c.Vp_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15681:15689
test "Vp_D_Ul" {
    var lv: c.Vp_D_Ul = undefined;
    try testing.expectSize(c.Vp_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15706:15714
test "Vp_D_Us" {
    var lv: c.Vp_D_Us = undefined;
    try testing.expectSize(c.Vp_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15731:15739
test "Vp_D_Vp" {
    var lv: c.Vp_D_Vp = undefined;
    try testing.expectSize(c.Vp_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:15755:15762
test "Vp_F" {
    var lv: c.Vp_F = undefined;
    try testing.expectSize(c.Vp_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:16503:16511
test "Vp_F_C" {
    var lv: c.Vp_F_C = undefined;
    try testing.expectSize(c.Vp_F_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:16528:16536
test "Vp_F_D" {
    var lv: c.Vp_F_D = undefined;
    try testing.expectSize(c.Vp_F_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:16553:16561
test "Vp_F_F" {
    var lv: c.Vp_F_F = undefined;
    try testing.expectSize(c.Vp_F_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:16578:16586
test "Vp_F_I" {
    var lv: c.Vp_F_I = undefined;
    try testing.expectSize(c.Vp_F_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:16603:16611
test "Vp_F_Ip" {
    var lv: c.Vp_F_Ip = undefined;
    try testing.expectSize(c.Vp_F_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:16628:16636
test "Vp_F_L" {
    var lv: c.Vp_F_L = undefined;
    try testing.expectSize(c.Vp_F_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:16653:16661
test "Vp_F_S" {
    var lv: c.Vp_F_S = undefined;
    try testing.expectSize(c.Vp_F_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:16678:16686
test "Vp_F_Uc" {
    var lv: c.Vp_F_Uc = undefined;
    try testing.expectSize(c.Vp_F_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:16703:16711
test "Vp_F_Ui" {
    var lv: c.Vp_F_Ui = undefined;
    try testing.expectSize(c.Vp_F_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:16728:16736
test "Vp_F_Ul" {
    var lv: c.Vp_F_Ul = undefined;
    try testing.expectSize(c.Vp_F_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:16753:16761
test "Vp_F_Us" {
    var lv: c.Vp_F_Us = undefined;
    try testing.expectSize(c.Vp_F_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:16778:16786
test "Vp_F_Vp" {
    var lv: c.Vp_F_Vp = undefined;
    try testing.expectSize(c.Vp_F_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:16802:16809
test "Vp_I" {
    var lv: c.Vp_I = undefined;
    try testing.expectSize(c.Vp_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:17550:17558
test "Vp_I_C" {
    var lv: c.Vp_I_C = undefined;
    try testing.expectSize(c.Vp_I_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:17575:17583
test "Vp_I_D" {
    var lv: c.Vp_I_D = undefined;
    try testing.expectSize(c.Vp_I_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:17600:17608
test "Vp_I_F" {
    var lv: c.Vp_I_F = undefined;
    try testing.expectSize(c.Vp_I_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:17625:17633
test "Vp_I_I" {
    var lv: c.Vp_I_I = undefined;
    try testing.expectSize(c.Vp_I_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:17650:17658
test "Vp_I_Ip" {
    var lv: c.Vp_I_Ip = undefined;
    try testing.expectSize(c.Vp_I_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:17675:17683
test "Vp_I_L" {
    var lv: c.Vp_I_L = undefined;
    try testing.expectSize(c.Vp_I_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:17700:17708
test "Vp_I_S" {
    var lv: c.Vp_I_S = undefined;
    try testing.expectSize(c.Vp_I_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:17725:17733
test "Vp_I_Uc" {
    var lv: c.Vp_I_Uc = undefined;
    try testing.expectSize(c.Vp_I_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:17750:17758
test "Vp_I_Ui" {
    var lv: c.Vp_I_Ui = undefined;
    try testing.expectSize(c.Vp_I_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:17775:17783
test "Vp_I_Ul" {
    var lv: c.Vp_I_Ul = undefined;
    try testing.expectSize(c.Vp_I_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:17800:17808
test "Vp_I_Us" {
    var lv: c.Vp_I_Us = undefined;
    try testing.expectSize(c.Vp_I_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:17825:17833
test "Vp_I_Vp" {
    var lv: c.Vp_I_Vp = undefined;
    try testing.expectSize(c.Vp_I_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:17849:17856
test "Vp_Ip" {
    var lv: c.Vp_Ip = undefined;
    try testing.expectSize(c.Vp_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:18597:18605
test "Vp_Ip_C" {
    var lv: c.Vp_Ip_C = undefined;
    try testing.expectSize(c.Vp_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18622:18630
test "Vp_Ip_D" {
    var lv: c.Vp_Ip_D = undefined;
    try testing.expectSize(c.Vp_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18647:18655
test "Vp_Ip_F" {
    var lv: c.Vp_Ip_F = undefined;
    try testing.expectSize(c.Vp_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18672:18680
test "Vp_Ip_I" {
    var lv: c.Vp_Ip_I = undefined;
    try testing.expectSize(c.Vp_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18697:18705
test "Vp_Ip_Ip" {
    var lv: c.Vp_Ip_Ip = undefined;
    try testing.expectSize(c.Vp_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18722:18730
test "Vp_Ip_L" {
    var lv: c.Vp_Ip_L = undefined;
    try testing.expectSize(c.Vp_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18747:18755
test "Vp_Ip_S" {
    var lv: c.Vp_Ip_S = undefined;
    try testing.expectSize(c.Vp_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18772:18780
test "Vp_Ip_Uc" {
    var lv: c.Vp_Ip_Uc = undefined;
    try testing.expectSize(c.Vp_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18797:18805
test "Vp_Ip_Ui" {
    var lv: c.Vp_Ip_Ui = undefined;
    try testing.expectSize(c.Vp_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18822:18830
test "Vp_Ip_Ul" {
    var lv: c.Vp_Ip_Ul = undefined;
    try testing.expectSize(c.Vp_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18847:18855
test "Vp_Ip_Us" {
    var lv: c.Vp_Ip_Us = undefined;
    try testing.expectSize(c.Vp_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18872:18880
test "Vp_Ip_Vp" {
    var lv: c.Vp_Ip_Vp = undefined;
    try testing.expectSize(c.Vp_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:18896:18903
test "Vp_L" {
    var lv: c.Vp_L = undefined;
    try testing.expectSize(c.Vp_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:19644:19652
test "Vp_L_C" {
    var lv: c.Vp_L_C = undefined;
    try testing.expectSize(c.Vp_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19669:19677
test "Vp_L_D" {
    var lv: c.Vp_L_D = undefined;
    try testing.expectSize(c.Vp_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19694:19702
test "Vp_L_F" {
    var lv: c.Vp_L_F = undefined;
    try testing.expectSize(c.Vp_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19719:19727
test "Vp_L_I" {
    var lv: c.Vp_L_I = undefined;
    try testing.expectSize(c.Vp_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19744:19752
test "Vp_L_Ip" {
    var lv: c.Vp_L_Ip = undefined;
    try testing.expectSize(c.Vp_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19769:19777
test "Vp_L_L" {
    var lv: c.Vp_L_L = undefined;
    try testing.expectSize(c.Vp_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19794:19802
test "Vp_L_S" {
    var lv: c.Vp_L_S = undefined;
    try testing.expectSize(c.Vp_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19819:19827
test "Vp_L_Uc" {
    var lv: c.Vp_L_Uc = undefined;
    try testing.expectSize(c.Vp_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19844:19852
test "Vp_L_Ui" {
    var lv: c.Vp_L_Ui = undefined;
    try testing.expectSize(c.Vp_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19869:19877
test "Vp_L_Ul" {
    var lv: c.Vp_L_Ul = undefined;
    try testing.expectSize(c.Vp_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19894:19902
test "Vp_L_Us" {
    var lv: c.Vp_L_Us = undefined;
    try testing.expectSize(c.Vp_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19919:19927
test "Vp_L_Vp" {
    var lv: c.Vp_L_Vp = undefined;
    try testing.expectSize(c.Vp_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:19943:19950
test "Vp_S" {
    var lv: c.Vp_S = undefined;
    try testing.expectSize(c.Vp_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:20691:20699
test "Vp_S_C" {
    var lv: c.Vp_S_C = undefined;
    try testing.expectSize(c.Vp_S_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:20716:20724
test "Vp_S_D" {
    var lv: c.Vp_S_D = undefined;
    try testing.expectSize(c.Vp_S_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:20741:20749
test "Vp_S_F" {
    var lv: c.Vp_S_F = undefined;
    try testing.expectSize(c.Vp_S_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:20766:20774
test "Vp_S_I" {
    var lv: c.Vp_S_I = undefined;
    try testing.expectSize(c.Vp_S_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:20791:20799
test "Vp_S_Ip" {
    var lv: c.Vp_S_Ip = undefined;
    try testing.expectSize(c.Vp_S_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:20816:20824
test "Vp_S_L" {
    var lv: c.Vp_S_L = undefined;
    try testing.expectSize(c.Vp_S_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:20841:20849
test "Vp_S_S" {
    var lv: c.Vp_S_S = undefined;
    try testing.expectSize(c.Vp_S_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:20866:20874
test "Vp_S_Uc" {
    var lv: c.Vp_S_Uc = undefined;
    try testing.expectSize(c.Vp_S_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:20891:20899
test "Vp_S_Ui" {
    var lv: c.Vp_S_Ui = undefined;
    try testing.expectSize(c.Vp_S_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:20916:20924
test "Vp_S_Ul" {
    var lv: c.Vp_S_Ul = undefined;
    try testing.expectSize(c.Vp_S_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:20941:20949
test "Vp_S_Us" {
    var lv: c.Vp_S_Us = undefined;
    try testing.expectSize(c.Vp_S_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:20966:20974
test "Vp_S_Vp" {
    var lv: c.Vp_S_Vp = undefined;
    try testing.expectSize(c.Vp_S_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:20990:20997
test "Vp_Uc" {
    var lv: c.Vp_Uc = undefined;
    try testing.expectSize(c.Vp_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:21738:21746
test "Vp_Uc_C" {
    var lv: c.Vp_Uc_C = undefined;
    try testing.expectSize(c.Vp_Uc_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xbc.c:21763:21771
test "Vp_Uc_D" {
    var lv: c.Vp_Uc_D = undefined;
    try testing.expectSize(c.Vp_Uc_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:21788:21796
test "Vp_Uc_F" {
    var lv: c.Vp_Uc_F = undefined;
    try testing.expectSize(c.Vp_Uc_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:21813:21821
test "Vp_Uc_I" {
    var lv: c.Vp_Uc_I = undefined;
    try testing.expectSize(c.Vp_Uc_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:21838:21846
test "Vp_Uc_Ip" {
    var lv: c.Vp_Uc_Ip = undefined;
    try testing.expectSize(c.Vp_Uc_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:21863:21871
test "Vp_Uc_L" {
    var lv: c.Vp_Uc_L = undefined;
    try testing.expectSize(c.Vp_Uc_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:21888:21896
test "Vp_Uc_S" {
    var lv: c.Vp_Uc_S = undefined;
    try testing.expectSize(c.Vp_Uc_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:21913:21921
test "Vp_Uc_Uc" {
    var lv: c.Vp_Uc_Uc = undefined;
    try testing.expectSize(c.Vp_Uc_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xbc.c:21938:21946
test "Vp_Uc_Ui" {
    var lv: c.Vp_Uc_Ui = undefined;
    try testing.expectSize(c.Vp_Uc_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:21963:21971
test "Vp_Uc_Ul" {
    var lv: c.Vp_Uc_Ul = undefined;
    try testing.expectSize(c.Vp_Uc_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:21988:21996
test "Vp_Uc_Us" {
    var lv: c.Vp_Uc_Us = undefined;
    try testing.expectSize(c.Vp_Uc_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:22013:22021
test "Vp_Uc_Vp" {
    var lv: c.Vp_Uc_Vp = undefined;
    try testing.expectSize(c.Vp_Uc_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:22037:22044
test "Vp_Ui" {
    var lv: c.Vp_Ui = undefined;
    try testing.expectSize(c.Vp_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:22785:22793
test "Vp_Ui_C" {
    var lv: c.Vp_Ui_C = undefined;
    try testing.expectSize(c.Vp_Ui_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:22810:22818
test "Vp_Ui_D" {
    var lv: c.Vp_Ui_D = undefined;
    try testing.expectSize(c.Vp_Ui_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:22835:22843
test "Vp_Ui_F" {
    var lv: c.Vp_Ui_F = undefined;
    try testing.expectSize(c.Vp_Ui_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:22860:22868
test "Vp_Ui_I" {
    var lv: c.Vp_Ui_I = undefined;
    try testing.expectSize(c.Vp_Ui_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:22885:22893
test "Vp_Ui_Ip" {
    var lv: c.Vp_Ui_Ip = undefined;
    try testing.expectSize(c.Vp_Ui_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:22910:22918
test "Vp_Ui_L" {
    var lv: c.Vp_Ui_L = undefined;
    try testing.expectSize(c.Vp_Ui_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:22935:22943
test "Vp_Ui_S" {
    var lv: c.Vp_Ui_S = undefined;
    try testing.expectSize(c.Vp_Ui_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:22960:22968
test "Vp_Ui_Uc" {
    var lv: c.Vp_Ui_Uc = undefined;
    try testing.expectSize(c.Vp_Ui_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:22985:22993
test "Vp_Ui_Ui" {
    var lv: c.Vp_Ui_Ui = undefined;
    try testing.expectSize(c.Vp_Ui_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:23010:23018
test "Vp_Ui_Ul" {
    var lv: c.Vp_Ui_Ul = undefined;
    try testing.expectSize(c.Vp_Ui_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:23035:23043
test "Vp_Ui_Us" {
    var lv: c.Vp_Ui_Us = undefined;
    try testing.expectSize(c.Vp_Ui_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:23060:23068
test "Vp_Ui_Vp" {
    var lv: c.Vp_Ui_Vp = undefined;
    try testing.expectSize(c.Vp_Ui_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:23084:23091
test "Vp_Ul" {
    var lv: c.Vp_Ul = undefined;
    try testing.expectSize(c.Vp_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:23832:23840
test "Vp_Ul_C" {
    var lv: c.Vp_Ul_C = undefined;
    try testing.expectSize(c.Vp_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:23857:23865
test "Vp_Ul_D" {
    var lv: c.Vp_Ul_D = undefined;
    try testing.expectSize(c.Vp_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:23882:23890
test "Vp_Ul_F" {
    var lv: c.Vp_Ul_F = undefined;
    try testing.expectSize(c.Vp_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:23907:23915
test "Vp_Ul_I" {
    var lv: c.Vp_Ul_I = undefined;
    try testing.expectSize(c.Vp_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:23932:23940
test "Vp_Ul_Ip" {
    var lv: c.Vp_Ul_Ip = undefined;
    try testing.expectSize(c.Vp_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:23957:23965
test "Vp_Ul_L" {
    var lv: c.Vp_Ul_L = undefined;
    try testing.expectSize(c.Vp_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:23982:23990
test "Vp_Ul_S" {
    var lv: c.Vp_Ul_S = undefined;
    try testing.expectSize(c.Vp_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:24007:24015
test "Vp_Ul_Uc" {
    var lv: c.Vp_Ul_Uc = undefined;
    try testing.expectSize(c.Vp_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:24032:24040
test "Vp_Ul_Ui" {
    var lv: c.Vp_Ul_Ui = undefined;
    try testing.expectSize(c.Vp_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:24057:24065
test "Vp_Ul_Ul" {
    var lv: c.Vp_Ul_Ul = undefined;
    try testing.expectSize(c.Vp_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Vp_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:24082:24090
test "Vp_Ul_Us" {
    var lv: c.Vp_Ul_Us = undefined;
    try testing.expectSize(c.Vp_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:24107:24115
test "Vp_Ul_Vp" {
    var lv: c.Vp_Ul_Vp = undefined;
    try testing.expectSize(c.Vp_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbc.c:24131:24138
test "Vp_Us" {
    var lv: c.Vp_Us = undefined;
    try testing.expectSize(c.Vp_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:24879:24887
test "Vp_Us_C" {
    var lv: c.Vp_Us_C = undefined;
    try testing.expectSize(c.Vp_Us_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:24904:24912
test "Vp_Us_D" {
    var lv: c.Vp_Us_D = undefined;
    try testing.expectSize(c.Vp_Us_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:24929:24937
test "Vp_Us_F" {
    var lv: c.Vp_Us_F = undefined;
    try testing.expectSize(c.Vp_Us_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:24954:24962
test "Vp_Us_I" {
    var lv: c.Vp_Us_I = undefined;
    try testing.expectSize(c.Vp_Us_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:24979:24987
test "Vp_Us_Ip" {
    var lv: c.Vp_Us_Ip = undefined;
    try testing.expectSize(c.Vp_Us_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:25004:25012
test "Vp_Us_L" {
    var lv: c.Vp_Us_L = undefined;
    try testing.expectSize(c.Vp_Us_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:25029:25037
test "Vp_Us_S" {
    var lv: c.Vp_Us_S = undefined;
    try testing.expectSize(c.Vp_Us_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:25054:25062
test "Vp_Us_Uc" {
    var lv: c.Vp_Us_Uc = undefined;
    try testing.expectSize(c.Vp_Us_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:25079:25087
test "Vp_Us_Ui" {
    var lv: c.Vp_Us_Ui = undefined;
    try testing.expectSize(c.Vp_Us_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Vp_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xbc.c:25104:25112
test "Vp_Us_Ul" {
    var lv: c.Vp_Us_Ul = undefined;
    try testing.expectSize(c.Vp_Us_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:25129:25137
test "Vp_Us_Us" {
    var lv: c.Vp_Us_Us = undefined;
    try testing.expectSize(c.Vp_Us_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xbc.c:25154:25162
test "Vp_Us_Vp" {
    var lv: c.Vp_Us_Vp = undefined;
    try testing.expectSize(c.Vp_Us_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:25178:25185
test "Vp_Vp" {
    var lv: c.Vp_Vp = undefined;
    try testing.expectSize(c.Vp_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbc.c:25926:25934
test "Vp_Vp_C" {
    var lv: c.Vp_Vp_C = undefined;
    try testing.expectSize(c.Vp_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:25951:25959
test "Vp_Vp_D" {
    var lv: c.Vp_Vp_D = undefined;
    try testing.expectSize(c.Vp_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:25976:25984
test "Vp_Vp_F" {
    var lv: c.Vp_Vp_F = undefined;
    try testing.expectSize(c.Vp_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:26001:26009
test "Vp_Vp_I" {
    var lv: c.Vp_Vp_I = undefined;
    try testing.expectSize(c.Vp_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:26026:26034
test "Vp_Vp_Ip" {
    var lv: c.Vp_Vp_Ip = undefined;
    try testing.expectSize(c.Vp_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:26051:26059
test "Vp_Vp_L" {
    var lv: c.Vp_Vp_L = undefined;
    try testing.expectSize(c.Vp_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:26076:26084
test "Vp_Vp_S" {
    var lv: c.Vp_Vp_S = undefined;
    try testing.expectSize(c.Vp_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:26101:26109
test "Vp_Vp_Uc" {
    var lv: c.Vp_Vp_Uc = undefined;
    try testing.expectSize(c.Vp_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:26126:26134
test "Vp_Vp_Ui" {
    var lv: c.Vp_Vp_Ui = undefined;
    try testing.expectSize(c.Vp_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:26151:26159
test "Vp_Vp_Ul" {
    var lv: c.Vp_Vp_Ul = undefined;
    try testing.expectSize(c.Vp_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Vp_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:26176:26184
test "Vp_Vp_Us" {
    var lv: c.Vp_Vp_Us = undefined;
    try testing.expectSize(c.Vp_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbc.c:26201:26209
test "Vp_Vp_Vp" {
    var lv: c.Vp_Vp_Vp = undefined;
    try testing.expectSize(c.Vp_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Vp_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}
