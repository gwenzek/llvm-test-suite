const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xba.h");
});

// From T_Snnn_xba.c:540:548
test "Uc_D_C" {
    var lv: c.Uc_D_C = undefined;
    try testing.expectSize(c.Uc_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:565:573
test "Uc_D_D" {
    var lv: c.Uc_D_D = undefined;
    try testing.expectSize(c.Uc_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:590:598
test "Uc_D_F" {
    var lv: c.Uc_D_F = undefined;
    try testing.expectSize(c.Uc_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:615:623
test "Uc_D_I" {
    var lv: c.Uc_D_I = undefined;
    try testing.expectSize(c.Uc_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:640:648
test "Uc_D_Ip" {
    var lv: c.Uc_D_Ip = undefined;
    try testing.expectSize(c.Uc_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:665:673
test "Uc_D_L" {
    var lv: c.Uc_D_L = undefined;
    try testing.expectSize(c.Uc_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:690:698
test "Uc_D_S" {
    var lv: c.Uc_D_S = undefined;
    try testing.expectSize(c.Uc_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:715:723
test "Uc_D_Uc" {
    var lv: c.Uc_D_Uc = undefined;
    try testing.expectSize(c.Uc_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:740:748
test "Uc_D_Ui" {
    var lv: c.Uc_D_Ui = undefined;
    try testing.expectSize(c.Uc_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:765:773
test "Uc_D_Ul" {
    var lv: c.Uc_D_Ul = undefined;
    try testing.expectSize(c.Uc_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:790:798
test "Uc_D_Us" {
    var lv: c.Uc_D_Us = undefined;
    try testing.expectSize(c.Uc_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:815:823
test "Uc_D_Vp" {
    var lv: c.Uc_D_Vp = undefined;
    try testing.expectSize(c.Uc_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:839:846
test "Uc_F" {
    var lv: c.Uc_F = undefined;
    try testing.expectSize(c.Uc_F, 8);
    try testing.expectAlign(c.Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:1587:1595
test "Uc_F_C" {
    var lv: c.Uc_F_C = undefined;
    try testing.expectSize(c.Uc_F_C, 12);
    try testing.expectAlign(c.Uc_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1612:1620
test "Uc_F_D" {
    var lv: c.Uc_F_D = undefined;
    try testing.expectSize(c.Uc_F_D, 16);
    try testing.expectAlign(c.Uc_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1637:1645
test "Uc_F_F" {
    var lv: c.Uc_F_F = undefined;
    try testing.expectSize(c.Uc_F_F, 12);
    try testing.expectAlign(c.Uc_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1662:1670
test "Uc_F_I" {
    var lv: c.Uc_F_I = undefined;
    try testing.expectSize(c.Uc_F_I, 12);
    try testing.expectAlign(c.Uc_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1687:1695
test "Uc_F_Ip" {
    var lv: c.Uc_F_Ip = undefined;
    try testing.expectSize(c.Uc_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1712:1720
test "Uc_F_L" {
    var lv: c.Uc_F_L = undefined;
    try testing.expectSize(c.Uc_F_L, 16);
    try testing.expectAlign(c.Uc_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1737:1745
test "Uc_F_S" {
    var lv: c.Uc_F_S = undefined;
    try testing.expectSize(c.Uc_F_S, 12);
    try testing.expectAlign(c.Uc_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1762:1770
test "Uc_F_Uc" {
    var lv: c.Uc_F_Uc = undefined;
    try testing.expectSize(c.Uc_F_Uc, 12);
    try testing.expectAlign(c.Uc_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1787:1795
test "Uc_F_Ui" {
    var lv: c.Uc_F_Ui = undefined;
    try testing.expectSize(c.Uc_F_Ui, 12);
    try testing.expectAlign(c.Uc_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1812:1820
test "Uc_F_Ul" {
    var lv: c.Uc_F_Ul = undefined;
    try testing.expectSize(c.Uc_F_Ul, 16);
    try testing.expectAlign(c.Uc_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1837:1845
test "Uc_F_Us" {
    var lv: c.Uc_F_Us = undefined;
    try testing.expectSize(c.Uc_F_Us, 12);
    try testing.expectAlign(c.Uc_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1862:1870
test "Uc_F_Vp" {
    var lv: c.Uc_F_Vp = undefined;
    try testing.expectSize(c.Uc_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:1886:1893
test "Uc_I" {
    var lv: c.Uc_I = undefined;
    try testing.expectSize(c.Uc_I, 8);
    try testing.expectAlign(c.Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:2634:2642
test "Uc_I_C" {
    var lv: c.Uc_I_C = undefined;
    try testing.expectSize(c.Uc_I_C, 12);
    try testing.expectAlign(c.Uc_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2659:2667
test "Uc_I_D" {
    var lv: c.Uc_I_D = undefined;
    try testing.expectSize(c.Uc_I_D, 16);
    try testing.expectAlign(c.Uc_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2684:2692
test "Uc_I_F" {
    var lv: c.Uc_I_F = undefined;
    try testing.expectSize(c.Uc_I_F, 12);
    try testing.expectAlign(c.Uc_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2709:2717
test "Uc_I_I" {
    var lv: c.Uc_I_I = undefined;
    try testing.expectSize(c.Uc_I_I, 12);
    try testing.expectAlign(c.Uc_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2734:2742
test "Uc_I_Ip" {
    var lv: c.Uc_I_Ip = undefined;
    try testing.expectSize(c.Uc_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2759:2767
test "Uc_I_L" {
    var lv: c.Uc_I_L = undefined;
    try testing.expectSize(c.Uc_I_L, 16);
    try testing.expectAlign(c.Uc_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2784:2792
test "Uc_I_S" {
    var lv: c.Uc_I_S = undefined;
    try testing.expectSize(c.Uc_I_S, 12);
    try testing.expectAlign(c.Uc_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2809:2817
test "Uc_I_Uc" {
    var lv: c.Uc_I_Uc = undefined;
    try testing.expectSize(c.Uc_I_Uc, 12);
    try testing.expectAlign(c.Uc_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2834:2842
test "Uc_I_Ui" {
    var lv: c.Uc_I_Ui = undefined;
    try testing.expectSize(c.Uc_I_Ui, 12);
    try testing.expectAlign(c.Uc_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2859:2867
test "Uc_I_Ul" {
    var lv: c.Uc_I_Ul = undefined;
    try testing.expectSize(c.Uc_I_Ul, 16);
    try testing.expectAlign(c.Uc_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2884:2892
test "Uc_I_Us" {
    var lv: c.Uc_I_Us = undefined;
    try testing.expectSize(c.Uc_I_Us, 12);
    try testing.expectAlign(c.Uc_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2909:2917
test "Uc_I_Vp" {
    var lv: c.Uc_I_Vp = undefined;
    try testing.expectSize(c.Uc_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:2933:2940
test "Uc_Ip" {
    var lv: c.Uc_Ip = undefined;
    try testing.expectSize(c.Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:3681:3689
test "Uc_Ip_C" {
    var lv: c.Uc_Ip_C = undefined;
    try testing.expectSize(c.Uc_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3706:3714
test "Uc_Ip_D" {
    var lv: c.Uc_Ip_D = undefined;
    try testing.expectSize(c.Uc_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3731:3739
test "Uc_Ip_F" {
    var lv: c.Uc_Ip_F = undefined;
    try testing.expectSize(c.Uc_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3756:3764
test "Uc_Ip_I" {
    var lv: c.Uc_Ip_I = undefined;
    try testing.expectSize(c.Uc_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3781:3789
test "Uc_Ip_Ip" {
    var lv: c.Uc_Ip_Ip = undefined;
    try testing.expectSize(c.Uc_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3806:3814
test "Uc_Ip_L" {
    var lv: c.Uc_Ip_L = undefined;
    try testing.expectSize(c.Uc_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3831:3839
test "Uc_Ip_S" {
    var lv: c.Uc_Ip_S = undefined;
    try testing.expectSize(c.Uc_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3856:3864
test "Uc_Ip_Uc" {
    var lv: c.Uc_Ip_Uc = undefined;
    try testing.expectSize(c.Uc_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3881:3889
test "Uc_Ip_Ui" {
    var lv: c.Uc_Ip_Ui = undefined;
    try testing.expectSize(c.Uc_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3906:3914
test "Uc_Ip_Ul" {
    var lv: c.Uc_Ip_Ul = undefined;
    try testing.expectSize(c.Uc_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3931:3939
test "Uc_Ip_Us" {
    var lv: c.Uc_Ip_Us = undefined;
    try testing.expectSize(c.Uc_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3956:3964
test "Uc_Ip_Vp" {
    var lv: c.Uc_Ip_Vp = undefined;
    try testing.expectSize(c.Uc_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:3980:3987
test "Uc_L" {
    var lv: c.Uc_L = undefined;
    try testing.expectSize(c.Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:4728:4736
test "Uc_L_C" {
    var lv: c.Uc_L_C = undefined;
    try testing.expectSize(c.Uc_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4753:4761
test "Uc_L_D" {
    var lv: c.Uc_L_D = undefined;
    try testing.expectSize(c.Uc_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4778:4786
test "Uc_L_F" {
    var lv: c.Uc_L_F = undefined;
    try testing.expectSize(c.Uc_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4803:4811
test "Uc_L_I" {
    var lv: c.Uc_L_I = undefined;
    try testing.expectSize(c.Uc_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4828:4836
test "Uc_L_Ip" {
    var lv: c.Uc_L_Ip = undefined;
    try testing.expectSize(c.Uc_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4853:4861
test "Uc_L_L" {
    var lv: c.Uc_L_L = undefined;
    try testing.expectSize(c.Uc_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4878:4886
test "Uc_L_S" {
    var lv: c.Uc_L_S = undefined;
    try testing.expectSize(c.Uc_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4903:4911
test "Uc_L_Uc" {
    var lv: c.Uc_L_Uc = undefined;
    try testing.expectSize(c.Uc_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4928:4936
test "Uc_L_Ui" {
    var lv: c.Uc_L_Ui = undefined;
    try testing.expectSize(c.Uc_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4953:4961
test "Uc_L_Ul" {
    var lv: c.Uc_L_Ul = undefined;
    try testing.expectSize(c.Uc_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:4978:4986
test "Uc_L_Us" {
    var lv: c.Uc_L_Us = undefined;
    try testing.expectSize(c.Uc_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:5003:5011
test "Uc_L_Vp" {
    var lv: c.Uc_L_Vp = undefined;
    try testing.expectSize(c.Uc_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:5027:5034
test "Uc_S" {
    var lv: c.Uc_S = undefined;
    try testing.expectSize(c.Uc_S, 4);
    try testing.expectAlign(c.Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xba.c:5775:5783
test "Uc_S_C" {
    var lv: c.Uc_S_C = undefined;
    try testing.expectSize(c.Uc_S_C, 6);
    try testing.expectAlign(c.Uc_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:5800:5808
test "Uc_S_D" {
    var lv: c.Uc_S_D = undefined;
    try testing.expectSize(c.Uc_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:5825:5833
test "Uc_S_F" {
    var lv: c.Uc_S_F = undefined;
    try testing.expectSize(c.Uc_S_F, 8);
    try testing.expectAlign(c.Uc_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:5850:5858
test "Uc_S_I" {
    var lv: c.Uc_S_I = undefined;
    try testing.expectSize(c.Uc_S_I, 8);
    try testing.expectAlign(c.Uc_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:5875:5883
test "Uc_S_Ip" {
    var lv: c.Uc_S_Ip = undefined;
    try testing.expectSize(c.Uc_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:5900:5908
test "Uc_S_L" {
    var lv: c.Uc_S_L = undefined;
    try testing.expectSize(c.Uc_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:5925:5933
test "Uc_S_S" {
    var lv: c.Uc_S_S = undefined;
    try testing.expectSize(c.Uc_S_S, 6);
    try testing.expectAlign(c.Uc_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:5950:5958
test "Uc_S_Uc" {
    var lv: c.Uc_S_Uc = undefined;
    try testing.expectSize(c.Uc_S_Uc, 6);
    try testing.expectAlign(c.Uc_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:5975:5983
test "Uc_S_Ui" {
    var lv: c.Uc_S_Ui = undefined;
    try testing.expectSize(c.Uc_S_Ui, 8);
    try testing.expectAlign(c.Uc_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:6000:6008
test "Uc_S_Ul" {
    var lv: c.Uc_S_Ul = undefined;
    try testing.expectSize(c.Uc_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:6025:6033
test "Uc_S_Us" {
    var lv: c.Uc_S_Us = undefined;
    try testing.expectSize(c.Uc_S_Us, 6);
    try testing.expectAlign(c.Uc_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:6050:6058
test "Uc_S_Vp" {
    var lv: c.Uc_S_Vp = undefined;
    try testing.expectSize(c.Uc_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:6074:6081
test "Uc_Uc" {
    var lv: c.Uc_Uc = undefined;
    try testing.expectSize(c.Uc_Uc, 2);
    try testing.expectAlign(c.Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Snnn_xba.c:6822:6830
test "Uc_Uc_C" {
    var lv: c.Uc_Uc_C = undefined;
    try testing.expectSize(c.Uc_Uc_C, 3);
    try testing.expectAlign(c.Uc_Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xba.c:6847:6855
test "Uc_Uc_D" {
    var lv: c.Uc_Uc_D = undefined;
    try testing.expectSize(c.Uc_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:6872:6880
test "Uc_Uc_F" {
    var lv: c.Uc_Uc_F = undefined;
    try testing.expectSize(c.Uc_Uc_F, 8);
    try testing.expectAlign(c.Uc_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:6897:6905
test "Uc_Uc_I" {
    var lv: c.Uc_Uc_I = undefined;
    try testing.expectSize(c.Uc_Uc_I, 8);
    try testing.expectAlign(c.Uc_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:6922:6930
test "Uc_Uc_Ip" {
    var lv: c.Uc_Uc_Ip = undefined;
    try testing.expectSize(c.Uc_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:6947:6955
test "Uc_Uc_L" {
    var lv: c.Uc_Uc_L = undefined;
    try testing.expectSize(c.Uc_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:6972:6980
test "Uc_Uc_S" {
    var lv: c.Uc_Uc_S = undefined;
    try testing.expectSize(c.Uc_Uc_S, 4);
    try testing.expectAlign(c.Uc_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xba.c:6997:7005
test "Uc_Uc_Uc" {
    var lv: c.Uc_Uc_Uc = undefined;
    try testing.expectSize(c.Uc_Uc_Uc, 3);
    try testing.expectAlign(c.Uc_Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xba.c:7022:7030
test "Uc_Uc_Ui" {
    var lv: c.Uc_Uc_Ui = undefined;
    try testing.expectSize(c.Uc_Uc_Ui, 8);
    try testing.expectAlign(c.Uc_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:7047:7055
test "Uc_Uc_Ul" {
    var lv: c.Uc_Uc_Ul = undefined;
    try testing.expectSize(c.Uc_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:7072:7080
test "Uc_Uc_Us" {
    var lv: c.Uc_Uc_Us = undefined;
    try testing.expectSize(c.Uc_Uc_Us, 4);
    try testing.expectAlign(c.Uc_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xba.c:7097:7105
test "Uc_Uc_Vp" {
    var lv: c.Uc_Uc_Vp = undefined;
    try testing.expectSize(c.Uc_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:7121:7128
test "Uc_Ui" {
    var lv: c.Uc_Ui = undefined;
    try testing.expectSize(c.Uc_Ui, 8);
    try testing.expectAlign(c.Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:7869:7877
test "Uc_Ui_C" {
    var lv: c.Uc_Ui_C = undefined;
    try testing.expectSize(c.Uc_Ui_C, 12);
    try testing.expectAlign(c.Uc_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:7894:7902
test "Uc_Ui_D" {
    var lv: c.Uc_Ui_D = undefined;
    try testing.expectSize(c.Uc_Ui_D, 16);
    try testing.expectAlign(c.Uc_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:7919:7927
test "Uc_Ui_F" {
    var lv: c.Uc_Ui_F = undefined;
    try testing.expectSize(c.Uc_Ui_F, 12);
    try testing.expectAlign(c.Uc_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:7944:7952
test "Uc_Ui_I" {
    var lv: c.Uc_Ui_I = undefined;
    try testing.expectSize(c.Uc_Ui_I, 12);
    try testing.expectAlign(c.Uc_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:7969:7977
test "Uc_Ui_Ip" {
    var lv: c.Uc_Ui_Ip = undefined;
    try testing.expectSize(c.Uc_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:7994:8002
test "Uc_Ui_L" {
    var lv: c.Uc_Ui_L = undefined;
    try testing.expectSize(c.Uc_Ui_L, 16);
    try testing.expectAlign(c.Uc_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8019:8027
test "Uc_Ui_S" {
    var lv: c.Uc_Ui_S = undefined;
    try testing.expectSize(c.Uc_Ui_S, 12);
    try testing.expectAlign(c.Uc_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8044:8052
test "Uc_Ui_Uc" {
    var lv: c.Uc_Ui_Uc = undefined;
    try testing.expectSize(c.Uc_Ui_Uc, 12);
    try testing.expectAlign(c.Uc_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8069:8077
test "Uc_Ui_Ui" {
    var lv: c.Uc_Ui_Ui = undefined;
    try testing.expectSize(c.Uc_Ui_Ui, 12);
    try testing.expectAlign(c.Uc_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8094:8102
test "Uc_Ui_Ul" {
    var lv: c.Uc_Ui_Ul = undefined;
    try testing.expectSize(c.Uc_Ui_Ul, 16);
    try testing.expectAlign(c.Uc_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8119:8127
test "Uc_Ui_Us" {
    var lv: c.Uc_Ui_Us = undefined;
    try testing.expectSize(c.Uc_Ui_Us, 12);
    try testing.expectAlign(c.Uc_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8144:8152
test "Uc_Ui_Vp" {
    var lv: c.Uc_Ui_Vp = undefined;
    try testing.expectSize(c.Uc_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:8168:8175
test "Uc_Ul" {
    var lv: c.Uc_Ul = undefined;
    try testing.expectSize(c.Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:8916:8924
test "Uc_Ul_C" {
    var lv: c.Uc_Ul_C = undefined;
    try testing.expectSize(c.Uc_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:8941:8949
test "Uc_Ul_D" {
    var lv: c.Uc_Ul_D = undefined;
    try testing.expectSize(c.Uc_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:8966:8974
test "Uc_Ul_F" {
    var lv: c.Uc_Ul_F = undefined;
    try testing.expectSize(c.Uc_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:8991:8999
test "Uc_Ul_I" {
    var lv: c.Uc_Ul_I = undefined;
    try testing.expectSize(c.Uc_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9016:9024
test "Uc_Ul_Ip" {
    var lv: c.Uc_Ul_Ip = undefined;
    try testing.expectSize(c.Uc_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9041:9049
test "Uc_Ul_L" {
    var lv: c.Uc_Ul_L = undefined;
    try testing.expectSize(c.Uc_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9066:9074
test "Uc_Ul_S" {
    var lv: c.Uc_Ul_S = undefined;
    try testing.expectSize(c.Uc_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9091:9099
test "Uc_Ul_Uc" {
    var lv: c.Uc_Ul_Uc = undefined;
    try testing.expectSize(c.Uc_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9116:9124
test "Uc_Ul_Ui" {
    var lv: c.Uc_Ul_Ui = undefined;
    try testing.expectSize(c.Uc_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9141:9149
test "Uc_Ul_Ul" {
    var lv: c.Uc_Ul_Ul = undefined;
    try testing.expectSize(c.Uc_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Uc_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9166:9174
test "Uc_Ul_Us" {
    var lv: c.Uc_Ul_Us = undefined;
    try testing.expectSize(c.Uc_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9191:9199
test "Uc_Ul_Vp" {
    var lv: c.Uc_Ul_Vp = undefined;
    try testing.expectSize(c.Uc_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:9215:9222
test "Uc_Us" {
    var lv: c.Uc_Us = undefined;
    try testing.expectSize(c.Uc_Us, 4);
    try testing.expectAlign(c.Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xba.c:9963:9971
test "Uc_Us_C" {
    var lv: c.Uc_Us_C = undefined;
    try testing.expectSize(c.Uc_Us_C, 6);
    try testing.expectAlign(c.Uc_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:9988:9996
test "Uc_Us_D" {
    var lv: c.Uc_Us_D = undefined;
    try testing.expectSize(c.Uc_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:10013:10021
test "Uc_Us_F" {
    var lv: c.Uc_Us_F = undefined;
    try testing.expectSize(c.Uc_Us_F, 8);
    try testing.expectAlign(c.Uc_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10038:10046
test "Uc_Us_I" {
    var lv: c.Uc_Us_I = undefined;
    try testing.expectSize(c.Uc_Us_I, 8);
    try testing.expectAlign(c.Uc_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10063:10071
test "Uc_Us_Ip" {
    var lv: c.Uc_Us_Ip = undefined;
    try testing.expectSize(c.Uc_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:10088:10096
test "Uc_Us_L" {
    var lv: c.Uc_Us_L = undefined;
    try testing.expectSize(c.Uc_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:10113:10121
test "Uc_Us_S" {
    var lv: c.Uc_Us_S = undefined;
    try testing.expectSize(c.Uc_Us_S, 6);
    try testing.expectAlign(c.Uc_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10138:10146
test "Uc_Us_Uc" {
    var lv: c.Uc_Us_Uc = undefined;
    try testing.expectSize(c.Uc_Us_Uc, 6);
    try testing.expectAlign(c.Uc_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10163:10171
test "Uc_Us_Ui" {
    var lv: c.Uc_Us_Ui = undefined;
    try testing.expectSize(c.Uc_Us_Ui, 8);
    try testing.expectAlign(c.Uc_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10188:10196
test "Uc_Us_Ul" {
    var lv: c.Uc_Us_Ul = undefined;
    try testing.expectSize(c.Uc_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:10213:10221
test "Uc_Us_Us" {
    var lv: c.Uc_Us_Us = undefined;
    try testing.expectSize(c.Uc_Us_Us, 6);
    try testing.expectAlign(c.Uc_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xba.c:10238:10246
test "Uc_Us_Vp" {
    var lv: c.Uc_Us_Vp = undefined;
    try testing.expectSize(c.Uc_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:10262:10269
test "Uc_Vp" {
    var lv: c.Uc_Vp = undefined;
    try testing.expectSize(c.Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:11010:11018
test "Uc_Vp_C" {
    var lv: c.Uc_Vp_C = undefined;
    try testing.expectSize(c.Uc_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11035:11043
test "Uc_Vp_D" {
    var lv: c.Uc_Vp_D = undefined;
    try testing.expectSize(c.Uc_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11060:11068
test "Uc_Vp_F" {
    var lv: c.Uc_Vp_F = undefined;
    try testing.expectSize(c.Uc_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11085:11093
test "Uc_Vp_I" {
    var lv: c.Uc_Vp_I = undefined;
    try testing.expectSize(c.Uc_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11110:11118
test "Uc_Vp_Ip" {
    var lv: c.Uc_Vp_Ip = undefined;
    try testing.expectSize(c.Uc_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11135:11143
test "Uc_Vp_L" {
    var lv: c.Uc_Vp_L = undefined;
    try testing.expectSize(c.Uc_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11160:11168
test "Uc_Vp_S" {
    var lv: c.Uc_Vp_S = undefined;
    try testing.expectSize(c.Uc_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11185:11193
test "Uc_Vp_Uc" {
    var lv: c.Uc_Vp_Uc = undefined;
    try testing.expectSize(c.Uc_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11210:11218
test "Uc_Vp_Ui" {
    var lv: c.Uc_Vp_Ui = undefined;
    try testing.expectSize(c.Uc_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11235:11243
test "Uc_Vp_Ul" {
    var lv: c.Uc_Vp_Ul = undefined;
    try testing.expectSize(c.Uc_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Uc_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11260:11268
test "Uc_Vp_Us" {
    var lv: c.Uc_Vp_Us = undefined;
    try testing.expectSize(c.Uc_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11285:11293
test "Uc_Vp_Vp" {
    var lv: c.Uc_Vp_Vp = undefined;
    try testing.expectSize(c.Uc_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Uc_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:11308:11314
test "Ui" {
    var lv: c.Ui = undefined;
    try testing.expectSize(c.Ui, 4);
    try testing.expectAlign(c.Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Snnn_xba.c:41630:41637
test "Ui_C" {
    var lv: c.Ui_C = undefined;
    try testing.expectSize(c.Ui_C, 8);
    try testing.expectAlign(c.Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:42378:42386
test "Ui_C_C" {
    var lv: c.Ui_C_C = undefined;
    try testing.expectSize(c.Ui_C_C, 8);
    try testing.expectAlign(c.Ui_C_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xba.c:42403:42411
test "Ui_C_D" {
    var lv: c.Ui_C_D = undefined;
    try testing.expectSize(c.Ui_C_D, 16);
    try testing.expectAlign(c.Ui_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42428:42436
test "Ui_C_F" {
    var lv: c.Ui_C_F = undefined;
    try testing.expectSize(c.Ui_C_F, 12);
    try testing.expectAlign(c.Ui_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42453:42461
test "Ui_C_I" {
    var lv: c.Ui_C_I = undefined;
    try testing.expectSize(c.Ui_C_I, 12);
    try testing.expectAlign(c.Ui_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42478:42486
test "Ui_C_Ip" {
    var lv: c.Ui_C_Ip = undefined;
    try testing.expectSize(c.Ui_C_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42503:42511
test "Ui_C_L" {
    var lv: c.Ui_C_L = undefined;
    try testing.expectSize(c.Ui_C_L, 16);
    try testing.expectAlign(c.Ui_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42528:42536
test "Ui_C_S" {
    var lv: c.Ui_C_S = undefined;
    try testing.expectSize(c.Ui_C_S, 8);
    try testing.expectAlign(c.Ui_C_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:42553:42561
test "Ui_C_Uc" {
    var lv: c.Ui_C_Uc = undefined;
    try testing.expectSize(c.Ui_C_Uc, 8);
    try testing.expectAlign(c.Ui_C_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xba.c:42578:42586
test "Ui_C_Ui" {
    var lv: c.Ui_C_Ui = undefined;
    try testing.expectSize(c.Ui_C_Ui, 12);
    try testing.expectAlign(c.Ui_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42603:42611
test "Ui_C_Ul" {
    var lv: c.Ui_C_Ul = undefined;
    try testing.expectSize(c.Ui_C_Ul, 16);
    try testing.expectAlign(c.Ui_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42628:42636
test "Ui_C_Us" {
    var lv: c.Ui_C_Us = undefined;
    try testing.expectSize(c.Ui_C_Us, 8);
    try testing.expectAlign(c.Ui_C_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:42653:42661
test "Ui_C_Vp" {
    var lv: c.Ui_C_Vp = undefined;
    try testing.expectSize(c.Ui_C_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:42677:42684
test "Ui_D" {
    var lv: c.Ui_D = undefined;
    try testing.expectSize(c.Ui_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:43425:43433
test "Ui_D_C" {
    var lv: c.Ui_D_C = undefined;
    try testing.expectSize(c.Ui_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43450:43458
test "Ui_D_D" {
    var lv: c.Ui_D_D = undefined;
    try testing.expectSize(c.Ui_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43475:43483
test "Ui_D_F" {
    var lv: c.Ui_D_F = undefined;
    try testing.expectSize(c.Ui_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43500:43508
test "Ui_D_I" {
    var lv: c.Ui_D_I = undefined;
    try testing.expectSize(c.Ui_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43525:43533
test "Ui_D_Ip" {
    var lv: c.Ui_D_Ip = undefined;
    try testing.expectSize(c.Ui_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43550:43558
test "Ui_D_L" {
    var lv: c.Ui_D_L = undefined;
    try testing.expectSize(c.Ui_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43575:43583
test "Ui_D_S" {
    var lv: c.Ui_D_S = undefined;
    try testing.expectSize(c.Ui_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43600:43608
test "Ui_D_Uc" {
    var lv: c.Ui_D_Uc = undefined;
    try testing.expectSize(c.Ui_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43625:43633
test "Ui_D_Ui" {
    var lv: c.Ui_D_Ui = undefined;
    try testing.expectSize(c.Ui_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43650:43658
test "Ui_D_Ul" {
    var lv: c.Ui_D_Ul = undefined;
    try testing.expectSize(c.Ui_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43675:43683
test "Ui_D_Us" {
    var lv: c.Ui_D_Us = undefined;
    try testing.expectSize(c.Ui_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43700:43708
test "Ui_D_Vp" {
    var lv: c.Ui_D_Vp = undefined;
    try testing.expectSize(c.Ui_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:43724:43731
test "Ui_F" {
    var lv: c.Ui_F = undefined;
    try testing.expectSize(c.Ui_F, 8);
    try testing.expectAlign(c.Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:44472:44480
test "Ui_F_C" {
    var lv: c.Ui_F_C = undefined;
    try testing.expectSize(c.Ui_F_C, 12);
    try testing.expectAlign(c.Ui_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44497:44505
test "Ui_F_D" {
    var lv: c.Ui_F_D = undefined;
    try testing.expectSize(c.Ui_F_D, 16);
    try testing.expectAlign(c.Ui_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44522:44530
test "Ui_F_F" {
    var lv: c.Ui_F_F = undefined;
    try testing.expectSize(c.Ui_F_F, 12);
    try testing.expectAlign(c.Ui_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44547:44555
test "Ui_F_I" {
    var lv: c.Ui_F_I = undefined;
    try testing.expectSize(c.Ui_F_I, 12);
    try testing.expectAlign(c.Ui_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44572:44580
test "Ui_F_Ip" {
    var lv: c.Ui_F_Ip = undefined;
    try testing.expectSize(c.Ui_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44597:44605
test "Ui_F_L" {
    var lv: c.Ui_F_L = undefined;
    try testing.expectSize(c.Ui_F_L, 16);
    try testing.expectAlign(c.Ui_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44622:44630
test "Ui_F_S" {
    var lv: c.Ui_F_S = undefined;
    try testing.expectSize(c.Ui_F_S, 12);
    try testing.expectAlign(c.Ui_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44647:44655
test "Ui_F_Uc" {
    var lv: c.Ui_F_Uc = undefined;
    try testing.expectSize(c.Ui_F_Uc, 12);
    try testing.expectAlign(c.Ui_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44672:44680
test "Ui_F_Ui" {
    var lv: c.Ui_F_Ui = undefined;
    try testing.expectSize(c.Ui_F_Ui, 12);
    try testing.expectAlign(c.Ui_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44697:44705
test "Ui_F_Ul" {
    var lv: c.Ui_F_Ul = undefined;
    try testing.expectSize(c.Ui_F_Ul, 16);
    try testing.expectAlign(c.Ui_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44722:44730
test "Ui_F_Us" {
    var lv: c.Ui_F_Us = undefined;
    try testing.expectSize(c.Ui_F_Us, 12);
    try testing.expectAlign(c.Ui_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44747:44755
test "Ui_F_Vp" {
    var lv: c.Ui_F_Vp = undefined;
    try testing.expectSize(c.Ui_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:44771:44778
test "Ui_I" {
    var lv: c.Ui_I = undefined;
    try testing.expectSize(c.Ui_I, 8);
    try testing.expectAlign(c.Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:45519:45527
test "Ui_I_C" {
    var lv: c.Ui_I_C = undefined;
    try testing.expectSize(c.Ui_I_C, 12);
    try testing.expectAlign(c.Ui_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45544:45552
test "Ui_I_D" {
    var lv: c.Ui_I_D = undefined;
    try testing.expectSize(c.Ui_I_D, 16);
    try testing.expectAlign(c.Ui_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45569:45577
test "Ui_I_F" {
    var lv: c.Ui_I_F = undefined;
    try testing.expectSize(c.Ui_I_F, 12);
    try testing.expectAlign(c.Ui_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45594:45602
test "Ui_I_I" {
    var lv: c.Ui_I_I = undefined;
    try testing.expectSize(c.Ui_I_I, 12);
    try testing.expectAlign(c.Ui_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45619:45627
test "Ui_I_Ip" {
    var lv: c.Ui_I_Ip = undefined;
    try testing.expectSize(c.Ui_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45644:45652
test "Ui_I_L" {
    var lv: c.Ui_I_L = undefined;
    try testing.expectSize(c.Ui_I_L, 16);
    try testing.expectAlign(c.Ui_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45669:45677
test "Ui_I_S" {
    var lv: c.Ui_I_S = undefined;
    try testing.expectSize(c.Ui_I_S, 12);
    try testing.expectAlign(c.Ui_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45694:45702
test "Ui_I_Uc" {
    var lv: c.Ui_I_Uc = undefined;
    try testing.expectSize(c.Ui_I_Uc, 12);
    try testing.expectAlign(c.Ui_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45719:45727
test "Ui_I_Ui" {
    var lv: c.Ui_I_Ui = undefined;
    try testing.expectSize(c.Ui_I_Ui, 12);
    try testing.expectAlign(c.Ui_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45744:45752
test "Ui_I_Ul" {
    var lv: c.Ui_I_Ul = undefined;
    try testing.expectSize(c.Ui_I_Ul, 16);
    try testing.expectAlign(c.Ui_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45769:45777
test "Ui_I_Us" {
    var lv: c.Ui_I_Us = undefined;
    try testing.expectSize(c.Ui_I_Us, 12);
    try testing.expectAlign(c.Ui_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45794:45802
test "Ui_I_Vp" {
    var lv: c.Ui_I_Vp = undefined;
    try testing.expectSize(c.Ui_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:45818:45825
test "Ui_Ip" {
    var lv: c.Ui_Ip = undefined;
    try testing.expectSize(c.Ui_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:46566:46574
test "Ui_Ip_C" {
    var lv: c.Ui_Ip_C = undefined;
    try testing.expectSize(c.Ui_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46591:46599
test "Ui_Ip_D" {
    var lv: c.Ui_Ip_D = undefined;
    try testing.expectSize(c.Ui_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46616:46624
test "Ui_Ip_F" {
    var lv: c.Ui_Ip_F = undefined;
    try testing.expectSize(c.Ui_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46641:46649
test "Ui_Ip_I" {
    var lv: c.Ui_Ip_I = undefined;
    try testing.expectSize(c.Ui_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46666:46674
test "Ui_Ip_Ip" {
    var lv: c.Ui_Ip_Ip = undefined;
    try testing.expectSize(c.Ui_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46691:46699
test "Ui_Ip_L" {
    var lv: c.Ui_Ip_L = undefined;
    try testing.expectSize(c.Ui_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46716:46724
test "Ui_Ip_S" {
    var lv: c.Ui_Ip_S = undefined;
    try testing.expectSize(c.Ui_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46741:46749
test "Ui_Ip_Uc" {
    var lv: c.Ui_Ip_Uc = undefined;
    try testing.expectSize(c.Ui_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46766:46774
test "Ui_Ip_Ui" {
    var lv: c.Ui_Ip_Ui = undefined;
    try testing.expectSize(c.Ui_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46791:46799
test "Ui_Ip_Ul" {
    var lv: c.Ui_Ip_Ul = undefined;
    try testing.expectSize(c.Ui_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46816:46824
test "Ui_Ip_Us" {
    var lv: c.Ui_Ip_Us = undefined;
    try testing.expectSize(c.Ui_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46841:46849
test "Ui_Ip_Vp" {
    var lv: c.Ui_Ip_Vp = undefined;
    try testing.expectSize(c.Ui_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:46865:46872
test "Ui_L" {
    var lv: c.Ui_L = undefined;
    try testing.expectSize(c.Ui_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:47613:47621
test "Ui_L_C" {
    var lv: c.Ui_L_C = undefined;
    try testing.expectSize(c.Ui_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47638:47646
test "Ui_L_D" {
    var lv: c.Ui_L_D = undefined;
    try testing.expectSize(c.Ui_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47663:47671
test "Ui_L_F" {
    var lv: c.Ui_L_F = undefined;
    try testing.expectSize(c.Ui_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47688:47696
test "Ui_L_I" {
    var lv: c.Ui_L_I = undefined;
    try testing.expectSize(c.Ui_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47713:47721
test "Ui_L_Ip" {
    var lv: c.Ui_L_Ip = undefined;
    try testing.expectSize(c.Ui_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47738:47746
test "Ui_L_L" {
    var lv: c.Ui_L_L = undefined;
    try testing.expectSize(c.Ui_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47763:47771
test "Ui_L_S" {
    var lv: c.Ui_L_S = undefined;
    try testing.expectSize(c.Ui_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47788:47796
test "Ui_L_Uc" {
    var lv: c.Ui_L_Uc = undefined;
    try testing.expectSize(c.Ui_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47813:47821
test "Ui_L_Ui" {
    var lv: c.Ui_L_Ui = undefined;
    try testing.expectSize(c.Ui_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47838:47846
test "Ui_L_Ul" {
    var lv: c.Ui_L_Ul = undefined;
    try testing.expectSize(c.Ui_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47863:47871
test "Ui_L_Us" {
    var lv: c.Ui_L_Us = undefined;
    try testing.expectSize(c.Ui_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47888:47896
test "Ui_L_Vp" {
    var lv: c.Ui_L_Vp = undefined;
    try testing.expectSize(c.Ui_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:47912:47919
test "Ui_S" {
    var lv: c.Ui_S = undefined;
    try testing.expectSize(c.Ui_S, 8);
    try testing.expectAlign(c.Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:48660:48668
test "Ui_S_C" {
    var lv: c.Ui_S_C = undefined;
    try testing.expectSize(c.Ui_S_C, 8);
    try testing.expectAlign(c.Ui_S_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:48685:48693
test "Ui_S_D" {
    var lv: c.Ui_S_D = undefined;
    try testing.expectSize(c.Ui_S_D, 16);
    try testing.expectAlign(c.Ui_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48710:48718
test "Ui_S_F" {
    var lv: c.Ui_S_F = undefined;
    try testing.expectSize(c.Ui_S_F, 12);
    try testing.expectAlign(c.Ui_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48735:48743
test "Ui_S_I" {
    var lv: c.Ui_S_I = undefined;
    try testing.expectSize(c.Ui_S_I, 12);
    try testing.expectAlign(c.Ui_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48760:48768
test "Ui_S_Ip" {
    var lv: c.Ui_S_Ip = undefined;
    try testing.expectSize(c.Ui_S_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48785:48793
test "Ui_S_L" {
    var lv: c.Ui_S_L = undefined;
    try testing.expectSize(c.Ui_S_L, 16);
    try testing.expectAlign(c.Ui_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48810:48818
test "Ui_S_S" {
    var lv: c.Ui_S_S = undefined;
    try testing.expectSize(c.Ui_S_S, 8);
    try testing.expectAlign(c.Ui_S_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:48835:48843
test "Ui_S_Uc" {
    var lv: c.Ui_S_Uc = undefined;
    try testing.expectSize(c.Ui_S_Uc, 8);
    try testing.expectAlign(c.Ui_S_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:48860:48868
test "Ui_S_Ui" {
    var lv: c.Ui_S_Ui = undefined;
    try testing.expectSize(c.Ui_S_Ui, 12);
    try testing.expectAlign(c.Ui_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48885:48893
test "Ui_S_Ul" {
    var lv: c.Ui_S_Ul = undefined;
    try testing.expectSize(c.Ui_S_Ul, 16);
    try testing.expectAlign(c.Ui_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48910:48918
test "Ui_S_Us" {
    var lv: c.Ui_S_Us = undefined;
    try testing.expectSize(c.Ui_S_Us, 8);
    try testing.expectAlign(c.Ui_S_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:48935:48943
test "Ui_S_Vp" {
    var lv: c.Ui_S_Vp = undefined;
    try testing.expectSize(c.Ui_S_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:48959:48966
test "Ui_Uc" {
    var lv: c.Ui_Uc = undefined;
    try testing.expectSize(c.Ui_Uc, 8);
    try testing.expectAlign(c.Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:49707:49715
test "Ui_Uc_C" {
    var lv: c.Ui_Uc_C = undefined;
    try testing.expectSize(c.Ui_Uc_C, 8);
    try testing.expectAlign(c.Ui_Uc_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xba.c:49732:49740
test "Ui_Uc_D" {
    var lv: c.Ui_Uc_D = undefined;
    try testing.expectSize(c.Ui_Uc_D, 16);
    try testing.expectAlign(c.Ui_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49757:49765
test "Ui_Uc_F" {
    var lv: c.Ui_Uc_F = undefined;
    try testing.expectSize(c.Ui_Uc_F, 12);
    try testing.expectAlign(c.Ui_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49782:49790
test "Ui_Uc_I" {
    var lv: c.Ui_Uc_I = undefined;
    try testing.expectSize(c.Ui_Uc_I, 12);
    try testing.expectAlign(c.Ui_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49807:49815
test "Ui_Uc_Ip" {
    var lv: c.Ui_Uc_Ip = undefined;
    try testing.expectSize(c.Ui_Uc_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49832:49840
test "Ui_Uc_L" {
    var lv: c.Ui_Uc_L = undefined;
    try testing.expectSize(c.Ui_Uc_L, 16);
    try testing.expectAlign(c.Ui_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49857:49865
test "Ui_Uc_S" {
    var lv: c.Ui_Uc_S = undefined;
    try testing.expectSize(c.Ui_Uc_S, 8);
    try testing.expectAlign(c.Ui_Uc_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:49882:49890
test "Ui_Uc_Uc" {
    var lv: c.Ui_Uc_Uc = undefined;
    try testing.expectSize(c.Ui_Uc_Uc, 8);
    try testing.expectAlign(c.Ui_Uc_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 5);
}

// From T_Snnn_xba.c:49907:49915
test "Ui_Uc_Ui" {
    var lv: c.Ui_Uc_Ui = undefined;
    try testing.expectSize(c.Ui_Uc_Ui, 12);
    try testing.expectAlign(c.Ui_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49932:49940
test "Ui_Uc_Ul" {
    var lv: c.Ui_Uc_Ul = undefined;
    try testing.expectSize(c.Ui_Uc_Ul, 16);
    try testing.expectAlign(c.Ui_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:49957:49965
test "Ui_Uc_Us" {
    var lv: c.Ui_Uc_Us = undefined;
    try testing.expectSize(c.Ui_Uc_Us, 8);
    try testing.expectAlign(c.Ui_Uc_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:49982:49990
test "Ui_Uc_Vp" {
    var lv: c.Ui_Uc_Vp = undefined;
    try testing.expectSize(c.Ui_Uc_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50006:50013
test "Ui_Ui" {
    var lv: c.Ui_Ui = undefined;
    try testing.expectSize(c.Ui_Ui, 8);
    try testing.expectAlign(c.Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:50754:50762
test "Ui_Ui_C" {
    var lv: c.Ui_Ui_C = undefined;
    try testing.expectSize(c.Ui_Ui_C, 12);
    try testing.expectAlign(c.Ui_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50779:50787
test "Ui_Ui_D" {
    var lv: c.Ui_Ui_D = undefined;
    try testing.expectSize(c.Ui_Ui_D, 16);
    try testing.expectAlign(c.Ui_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50804:50812
test "Ui_Ui_F" {
    var lv: c.Ui_Ui_F = undefined;
    try testing.expectSize(c.Ui_Ui_F, 12);
    try testing.expectAlign(c.Ui_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50829:50837
test "Ui_Ui_I" {
    var lv: c.Ui_Ui_I = undefined;
    try testing.expectSize(c.Ui_Ui_I, 12);
    try testing.expectAlign(c.Ui_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50854:50862
test "Ui_Ui_Ip" {
    var lv: c.Ui_Ui_Ip = undefined;
    try testing.expectSize(c.Ui_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50879:50887
test "Ui_Ui_L" {
    var lv: c.Ui_Ui_L = undefined;
    try testing.expectSize(c.Ui_Ui_L, 16);
    try testing.expectAlign(c.Ui_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50904:50912
test "Ui_Ui_S" {
    var lv: c.Ui_Ui_S = undefined;
    try testing.expectSize(c.Ui_Ui_S, 12);
    try testing.expectAlign(c.Ui_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50929:50937
test "Ui_Ui_Uc" {
    var lv: c.Ui_Ui_Uc = undefined;
    try testing.expectSize(c.Ui_Ui_Uc, 12);
    try testing.expectAlign(c.Ui_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50954:50962
test "Ui_Ui_Ui" {
    var lv: c.Ui_Ui_Ui = undefined;
    try testing.expectSize(c.Ui_Ui_Ui, 12);
    try testing.expectAlign(c.Ui_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:50979:50987
test "Ui_Ui_Ul" {
    var lv: c.Ui_Ui_Ul = undefined;
    try testing.expectSize(c.Ui_Ui_Ul, 16);
    try testing.expectAlign(c.Ui_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:51004:51012
test "Ui_Ui_Us" {
    var lv: c.Ui_Ui_Us = undefined;
    try testing.expectSize(c.Ui_Ui_Us, 12);
    try testing.expectAlign(c.Ui_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:51029:51037
test "Ui_Ui_Vp" {
    var lv: c.Ui_Ui_Vp = undefined;
    try testing.expectSize(c.Ui_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:51053:51060
test "Ui_Ul" {
    var lv: c.Ui_Ul = undefined;
    try testing.expectSize(c.Ui_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:51801:51809
test "Ui_Ul_C" {
    var lv: c.Ui_Ul_C = undefined;
    try testing.expectSize(c.Ui_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51826:51834
test "Ui_Ul_D" {
    var lv: c.Ui_Ul_D = undefined;
    try testing.expectSize(c.Ui_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51851:51859
test "Ui_Ul_F" {
    var lv: c.Ui_Ul_F = undefined;
    try testing.expectSize(c.Ui_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51876:51884
test "Ui_Ul_I" {
    var lv: c.Ui_Ul_I = undefined;
    try testing.expectSize(c.Ui_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51901:51909
test "Ui_Ul_Ip" {
    var lv: c.Ui_Ul_Ip = undefined;
    try testing.expectSize(c.Ui_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51926:51934
test "Ui_Ul_L" {
    var lv: c.Ui_Ul_L = undefined;
    try testing.expectSize(c.Ui_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51951:51959
test "Ui_Ul_S" {
    var lv: c.Ui_Ul_S = undefined;
    try testing.expectSize(c.Ui_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:51976:51984
test "Ui_Ul_Uc" {
    var lv: c.Ui_Ul_Uc = undefined;
    try testing.expectSize(c.Ui_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:52001:52009
test "Ui_Ul_Ui" {
    var lv: c.Ui_Ul_Ui = undefined;
    try testing.expectSize(c.Ui_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:52026:52034
test "Ui_Ul_Ul" {
    var lv: c.Ui_Ul_Ul = undefined;
    try testing.expectSize(c.Ui_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ui_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:52051:52059
test "Ui_Ul_Us" {
    var lv: c.Ui_Ul_Us = undefined;
    try testing.expectSize(c.Ui_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:52076:52084
test "Ui_Ul_Vp" {
    var lv: c.Ui_Ul_Vp = undefined;
    try testing.expectSize(c.Ui_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xba.c:52100:52107
test "Ui_Us" {
    var lv: c.Ui_Us = undefined;
    try testing.expectSize(c.Ui_Us, 8);
    try testing.expectAlign(c.Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xba.c:52848:52856
test "Ui_Us_C" {
    var lv: c.Ui_Us_C = undefined;
    try testing.expectSize(c.Ui_Us_C, 8);
    try testing.expectAlign(c.Ui_Us_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:52873:52881
test "Ui_Us_D" {
    var lv: c.Ui_Us_D = undefined;
    try testing.expectSize(c.Ui_Us_D, 16);
    try testing.expectAlign(c.Ui_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:52898:52906
test "Ui_Us_F" {
    var lv: c.Ui_Us_F = undefined;
    try testing.expectSize(c.Ui_Us_F, 12);
    try testing.expectAlign(c.Ui_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:52923:52931
test "Ui_Us_I" {
    var lv: c.Ui_Us_I = undefined;
    try testing.expectSize(c.Ui_Us_I, 12);
    try testing.expectAlign(c.Ui_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:52948:52956
test "Ui_Us_Ip" {
    var lv: c.Ui_Us_Ip = undefined;
    try testing.expectSize(c.Ui_Us_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:52973:52981
test "Ui_Us_L" {
    var lv: c.Ui_Us_L = undefined;
    try testing.expectSize(c.Ui_Us_L, 16);
    try testing.expectAlign(c.Ui_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:52998:53006
test "Ui_Us_S" {
    var lv: c.Ui_Us_S = undefined;
    try testing.expectSize(c.Ui_Us_S, 8);
    try testing.expectAlign(c.Ui_Us_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:53023:53031
test "Ui_Us_Uc" {
    var lv: c.Ui_Us_Uc = undefined;
    try testing.expectSize(c.Ui_Us_Uc, 8);
    try testing.expectAlign(c.Ui_Us_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:53048:53056
test "Ui_Us_Ui" {
    var lv: c.Ui_Us_Ui = undefined;
    try testing.expectSize(c.Ui_Us_Ui, 12);
    try testing.expectAlign(c.Ui_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:53073:53081
test "Ui_Us_Ul" {
    var lv: c.Ui_Us_Ul = undefined;
    try testing.expectSize(c.Ui_Us_Ul, 16);
    try testing.expectAlign(c.Ui_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:53098:53106
test "Ui_Us_Us" {
    var lv: c.Ui_Us_Us = undefined;
    try testing.expectSize(c.Ui_Us_Us, 8);
    try testing.expectAlign(c.Ui_Us_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 6);
}

// From T_Snnn_xba.c:53123:53131
test "Ui_Us_Vp" {
    var lv: c.Ui_Us_Vp = undefined;
    try testing.expectSize(c.Ui_Us_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ui_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xba.c:53147:53154
test "Ui_Vp" {
    var lv: c.Ui_Vp = undefined;
    try testing.expectSize(c.Ui_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xba.c:53895:53903
test "Ui_Vp_C" {
    var lv: c.Ui_Vp_C = undefined;
    try testing.expectSize(c.Ui_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:53920:53928
test "Ui_Vp_D" {
    var lv: c.Ui_Vp_D = undefined;
    try testing.expectSize(c.Ui_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:53945:53953
test "Ui_Vp_F" {
    var lv: c.Ui_Vp_F = undefined;
    try testing.expectSize(c.Ui_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:53970:53978
test "Ui_Vp_I" {
    var lv: c.Ui_Vp_I = undefined;
    try testing.expectSize(c.Ui_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:53995:54003
test "Ui_Vp_Ip" {
    var lv: c.Ui_Vp_Ip = undefined;
    try testing.expectSize(c.Ui_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54020:54028
test "Ui_Vp_L" {
    var lv: c.Ui_Vp_L = undefined;
    try testing.expectSize(c.Ui_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54045:54053
test "Ui_Vp_S" {
    var lv: c.Ui_Vp_S = undefined;
    try testing.expectSize(c.Ui_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54070:54078
test "Ui_Vp_Uc" {
    var lv: c.Ui_Vp_Uc = undefined;
    try testing.expectSize(c.Ui_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54095:54103
test "Ui_Vp_Ui" {
    var lv: c.Ui_Vp_Ui = undefined;
    try testing.expectSize(c.Ui_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54120:54128
test "Ui_Vp_Ul" {
    var lv: c.Ui_Vp_Ul = undefined;
    try testing.expectSize(c.Ui_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ui_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54145:54153
test "Ui_Vp_Us" {
    var lv: c.Ui_Vp_Us = undefined;
    try testing.expectSize(c.Ui_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54170:54178
test "Ui_Vp_Vp" {
    var lv: c.Ui_Vp_Vp = undefined;
    try testing.expectSize(c.Ui_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ui_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xba.c:54193:54199
test "Ul" {
    var lv: c.Ul = undefined;
    try testing.expectSize(c.Ul, 8);
    try testing.expectAlign(c.Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
