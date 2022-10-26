const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xaz.h");
});

// From T_Snnn_xaz.c:670:678
test "L_Ui_C" {
    var lv: c.L_Ui_C = undefined;
    try testing.expectSize(c.L_Ui_C, 16);
    try testing.expectAlign(c.L_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaz.c:695:703
test "L_Ui_D" {
    var lv: c.L_Ui_D = undefined;
    try testing.expectSize(c.L_Ui_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:720:728
test "L_Ui_F" {
    var lv: c.L_Ui_F = undefined;
    try testing.expectSize(c.L_Ui_F, 16);
    try testing.expectAlign(c.L_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaz.c:745:753
test "L_Ui_I" {
    var lv: c.L_Ui_I = undefined;
    try testing.expectSize(c.L_Ui_I, 16);
    try testing.expectAlign(c.L_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaz.c:770:778
test "L_Ui_Ip" {
    var lv: c.L_Ui_Ip = undefined;
    try testing.expectSize(c.L_Ui_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:795:803
test "L_Ui_L" {
    var lv: c.L_Ui_L = undefined;
    try testing.expectSize(c.L_Ui_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:820:828
test "L_Ui_S" {
    var lv: c.L_Ui_S = undefined;
    try testing.expectSize(c.L_Ui_S, 16);
    try testing.expectAlign(c.L_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaz.c:845:853
test "L_Ui_Uc" {
    var lv: c.L_Ui_Uc = undefined;
    try testing.expectSize(c.L_Ui_Uc, 16);
    try testing.expectAlign(c.L_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaz.c:870:878
test "L_Ui_Ui" {
    var lv: c.L_Ui_Ui = undefined;
    try testing.expectSize(c.L_Ui_Ui, 16);
    try testing.expectAlign(c.L_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaz.c:895:903
test "L_Ui_Ul" {
    var lv: c.L_Ui_Ul = undefined;
    try testing.expectSize(c.L_Ui_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:920:928
test "L_Ui_Us" {
    var lv: c.L_Ui_Us = undefined;
    try testing.expectSize(c.L_Ui_Us, 16);
    try testing.expectAlign(c.L_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaz.c:945:953
test "L_Ui_Vp" {
    var lv: c.L_Ui_Vp = undefined;
    try testing.expectSize(c.L_Ui_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:969:976
test "L_Ul" {
    var lv: c.L_Ul = undefined;
    try testing.expectSize(c.L_Ul, 16);
    try testing.expectAlign(c.L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaz.c:1717:1725
test "L_Ul_C" {
    var lv: c.L_Ul_C = undefined;
    try testing.expectSize(c.L_Ul_C, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:1742:1750
test "L_Ul_D" {
    var lv: c.L_Ul_D = undefined;
    try testing.expectSize(c.L_Ul_D, 24);
    try testing.expectAlign(c.L_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:1767:1775
test "L_Ul_F" {
    var lv: c.L_Ul_F = undefined;
    try testing.expectSize(c.L_Ul_F, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:1792:1800
test "L_Ul_I" {
    var lv: c.L_Ul_I = undefined;
    try testing.expectSize(c.L_Ul_I, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:1817:1825
test "L_Ul_Ip" {
    var lv: c.L_Ul_Ip = undefined;
    try testing.expectSize(c.L_Ul_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:1842:1850
test "L_Ul_L" {
    var lv: c.L_Ul_L = undefined;
    try testing.expectSize(c.L_Ul_L, 24);
    try testing.expectAlign(c.L_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:1867:1875
test "L_Ul_S" {
    var lv: c.L_Ul_S = undefined;
    try testing.expectSize(c.L_Ul_S, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:1892:1900
test "L_Ul_Uc" {
    var lv: c.L_Ul_Uc = undefined;
    try testing.expectSize(c.L_Ul_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:1917:1925
test "L_Ul_Ui" {
    var lv: c.L_Ul_Ui = undefined;
    try testing.expectSize(c.L_Ul_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:1942:1950
test "L_Ul_Ul" {
    var lv: c.L_Ul_Ul = undefined;
    try testing.expectSize(c.L_Ul_Ul, 24);
    try testing.expectAlign(c.L_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:1967:1975
test "L_Ul_Us" {
    var lv: c.L_Ul_Us = undefined;
    try testing.expectSize(c.L_Ul_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:1992:2000
test "L_Ul_Vp" {
    var lv: c.L_Ul_Vp = undefined;
    try testing.expectSize(c.L_Ul_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaz.c:2016:2023
test "L_Us" {
    var lv: c.L_Us = undefined;
    try testing.expectSize(c.L_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaz.c:2764:2772
test "L_Us_C" {
    var lv: c.L_Us_C = undefined;
    try testing.expectSize(c.L_Us_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaz.c:2789:2797
test "L_Us_D" {
    var lv: c.L_Us_D = undefined;
    try testing.expectSize(c.L_Us_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:2814:2822
test "L_Us_F" {
    var lv: c.L_Us_F = undefined;
    try testing.expectSize(c.L_Us_F, 16);
    try testing.expectAlign(c.L_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaz.c:2839:2847
test "L_Us_I" {
    var lv: c.L_Us_I = undefined;
    try testing.expectSize(c.L_Us_I, 16);
    try testing.expectAlign(c.L_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaz.c:2864:2872
test "L_Us_Ip" {
    var lv: c.L_Us_Ip = undefined;
    try testing.expectSize(c.L_Us_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:2889:2897
test "L_Us_L" {
    var lv: c.L_Us_L = undefined;
    try testing.expectSize(c.L_Us_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:2914:2922
test "L_Us_S" {
    var lv: c.L_Us_S = undefined;
    try testing.expectSize(c.L_Us_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaz.c:2939:2947
test "L_Us_Uc" {
    var lv: c.L_Us_Uc = undefined;
    try testing.expectSize(c.L_Us_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaz.c:2964:2972
test "L_Us_Ui" {
    var lv: c.L_Us_Ui = undefined;
    try testing.expectSize(c.L_Us_Ui, 16);
    try testing.expectAlign(c.L_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaz.c:2989:2997
test "L_Us_Ul" {
    var lv: c.L_Us_Ul = undefined;
    try testing.expectSize(c.L_Us_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:3014:3022
test "L_Us_Us" {
    var lv: c.L_Us_Us = undefined;
    try testing.expectSize(c.L_Us_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaz.c:3039:3047
test "L_Us_Vp" {
    var lv: c.L_Us_Vp = undefined;
    try testing.expectSize(c.L_Us_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:3063:3070
test "L_Vp" {
    var lv: c.L_Vp = undefined;
    try testing.expectSize(c.L_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaz.c:3811:3819
test "L_Vp_C" {
    var lv: c.L_Vp_C = undefined;
    try testing.expectSize(c.L_Vp_C, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:3836:3844
test "L_Vp_D" {
    var lv: c.L_Vp_D = undefined;
    try testing.expectSize(c.L_Vp_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:3861:3869
test "L_Vp_F" {
    var lv: c.L_Vp_F = undefined;
    try testing.expectSize(c.L_Vp_F, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:3886:3894
test "L_Vp_I" {
    var lv: c.L_Vp_I = undefined;
    try testing.expectSize(c.L_Vp_I, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:3911:3919
test "L_Vp_Ip" {
    var lv: c.L_Vp_Ip = undefined;
    try testing.expectSize(c.L_Vp_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:3936:3944
test "L_Vp_L" {
    var lv: c.L_Vp_L = undefined;
    try testing.expectSize(c.L_Vp_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:3961:3969
test "L_Vp_S" {
    var lv: c.L_Vp_S = undefined;
    try testing.expectSize(c.L_Vp_S, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:3986:3994
test "L_Vp_Uc" {
    var lv: c.L_Vp_Uc = undefined;
    try testing.expectSize(c.L_Vp_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:4011:4019
test "L_Vp_Ui" {
    var lv: c.L_Vp_Ui = undefined;
    try testing.expectSize(c.L_Vp_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:4036:4044
test "L_Vp_Ul" {
    var lv: c.L_Vp_Ul = undefined;
    try testing.expectSize(c.L_Vp_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:4061:4069
test "L_Vp_Us" {
    var lv: c.L_Vp_Us = undefined;
    try testing.expectSize(c.L_Vp_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:4086:4094
test "L_Vp_Vp" {
    var lv: c.L_Vp_Vp = undefined;
    try testing.expectSize(c.L_Vp_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:4109:4115
test "S" {
    var lv: c.S = undefined;
    try testing.expectSize(c.S, 2);
    try testing.expectAlign(c.S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Snnn_xaz.c:34431:34438
test "S_C" {
    var lv: c.S_C = undefined;
    try testing.expectSize(c.S_C, 4);
    try testing.expectAlign(c.S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xaz.c:35179:35187
test "S_C_C" {
    var lv: c.S_C_C = undefined;
    try testing.expectSize(c.S_C_C, 4);
    try testing.expectAlign(c.S_C_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xaz.c:35204:35212
test "S_C_D" {
    var lv: c.S_C_D = undefined;
    try testing.expectSize(c.S_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:35229:35237
test "S_C_F" {
    var lv: c.S_C_F = undefined;
    try testing.expectSize(c.S_C_F, 8);
    try testing.expectAlign(c.S_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:35254:35262
test "S_C_I" {
    var lv: c.S_C_I = undefined;
    try testing.expectSize(c.S_C_I, 8);
    try testing.expectAlign(c.S_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:35279:35287
test "S_C_Ip" {
    var lv: c.S_C_Ip = undefined;
    try testing.expectSize(c.S_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:35304:35312
test "S_C_L" {
    var lv: c.S_C_L = undefined;
    try testing.expectSize(c.S_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:35329:35337
test "S_C_S" {
    var lv: c.S_C_S = undefined;
    try testing.expectSize(c.S_C_S, 6);
    try testing.expectAlign(c.S_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:35354:35362
test "S_C_Uc" {
    var lv: c.S_C_Uc = undefined;
    try testing.expectSize(c.S_C_Uc, 4);
    try testing.expectAlign(c.S_C_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xaz.c:35379:35387
test "S_C_Ui" {
    var lv: c.S_C_Ui = undefined;
    try testing.expectSize(c.S_C_Ui, 8);
    try testing.expectAlign(c.S_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:35404:35412
test "S_C_Ul" {
    var lv: c.S_C_Ul = undefined;
    try testing.expectSize(c.S_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:35429:35437
test "S_C_Us" {
    var lv: c.S_C_Us = undefined;
    try testing.expectSize(c.S_C_Us, 6);
    try testing.expectAlign(c.S_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:35454:35462
test "S_C_Vp" {
    var lv: c.S_C_Vp = undefined;
    try testing.expectSize(c.S_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:35478:35485
test "S_D" {
    var lv: c.S_D = undefined;
    try testing.expectSize(c.S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:36226:36234
test "S_D_C" {
    var lv: c.S_D_C = undefined;
    try testing.expectSize(c.S_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36251:36259
test "S_D_D" {
    var lv: c.S_D_D = undefined;
    try testing.expectSize(c.S_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.S_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36276:36284
test "S_D_F" {
    var lv: c.S_D_F = undefined;
    try testing.expectSize(c.S_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36301:36309
test "S_D_I" {
    var lv: c.S_D_I = undefined;
    try testing.expectSize(c.S_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36326:36334
test "S_D_Ip" {
    var lv: c.S_D_Ip = undefined;
    try testing.expectSize(c.S_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36351:36359
test "S_D_L" {
    var lv: c.S_D_L = undefined;
    try testing.expectSize(c.S_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.S_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36376:36384
test "S_D_S" {
    var lv: c.S_D_S = undefined;
    try testing.expectSize(c.S_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36401:36409
test "S_D_Uc" {
    var lv: c.S_D_Uc = undefined;
    try testing.expectSize(c.S_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36426:36434
test "S_D_Ui" {
    var lv: c.S_D_Ui = undefined;
    try testing.expectSize(c.S_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36451:36459
test "S_D_Ul" {
    var lv: c.S_D_Ul = undefined;
    try testing.expectSize(c.S_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.S_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36476:36484
test "S_D_Us" {
    var lv: c.S_D_Us = undefined;
    try testing.expectSize(c.S_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36501:36509
test "S_D_Vp" {
    var lv: c.S_D_Vp = undefined;
    try testing.expectSize(c.S_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.S_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:36525:36532
test "S_F" {
    var lv: c.S_F = undefined;
    try testing.expectSize(c.S_F, 8);
    try testing.expectAlign(c.S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xaz.c:37273:37281
test "S_F_C" {
    var lv: c.S_F_C = undefined;
    try testing.expectSize(c.S_F_C, 12);
    try testing.expectAlign(c.S_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37298:37306
test "S_F_D" {
    var lv: c.S_F_D = undefined;
    try testing.expectSize(c.S_F_D, 16);
    try testing.expectAlign(c.S_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37323:37331
test "S_F_F" {
    var lv: c.S_F_F = undefined;
    try testing.expectSize(c.S_F_F, 12);
    try testing.expectAlign(c.S_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37348:37356
test "S_F_I" {
    var lv: c.S_F_I = undefined;
    try testing.expectSize(c.S_F_I, 12);
    try testing.expectAlign(c.S_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37373:37381
test "S_F_Ip" {
    var lv: c.S_F_Ip = undefined;
    try testing.expectSize(c.S_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.S_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37398:37406
test "S_F_L" {
    var lv: c.S_F_L = undefined;
    try testing.expectSize(c.S_F_L, 16);
    try testing.expectAlign(c.S_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37423:37431
test "S_F_S" {
    var lv: c.S_F_S = undefined;
    try testing.expectSize(c.S_F_S, 12);
    try testing.expectAlign(c.S_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37448:37456
test "S_F_Uc" {
    var lv: c.S_F_Uc = undefined;
    try testing.expectSize(c.S_F_Uc, 12);
    try testing.expectAlign(c.S_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37473:37481
test "S_F_Ui" {
    var lv: c.S_F_Ui = undefined;
    try testing.expectSize(c.S_F_Ui, 12);
    try testing.expectAlign(c.S_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37498:37506
test "S_F_Ul" {
    var lv: c.S_F_Ul = undefined;
    try testing.expectSize(c.S_F_Ul, 16);
    try testing.expectAlign(c.S_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37523:37531
test "S_F_Us" {
    var lv: c.S_F_Us = undefined;
    try testing.expectSize(c.S_F_Us, 12);
    try testing.expectAlign(c.S_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37548:37556
test "S_F_Vp" {
    var lv: c.S_F_Vp = undefined;
    try testing.expectSize(c.S_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.S_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:37572:37579
test "S_I" {
    var lv: c.S_I = undefined;
    try testing.expectSize(c.S_I, 8);
    try testing.expectAlign(c.S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xaz.c:38320:38328
test "S_I_C" {
    var lv: c.S_I_C = undefined;
    try testing.expectSize(c.S_I_C, 12);
    try testing.expectAlign(c.S_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38345:38353
test "S_I_D" {
    var lv: c.S_I_D = undefined;
    try testing.expectSize(c.S_I_D, 16);
    try testing.expectAlign(c.S_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38370:38378
test "S_I_F" {
    var lv: c.S_I_F = undefined;
    try testing.expectSize(c.S_I_F, 12);
    try testing.expectAlign(c.S_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38395:38403
test "S_I_I" {
    var lv: c.S_I_I = undefined;
    try testing.expectSize(c.S_I_I, 12);
    try testing.expectAlign(c.S_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38420:38428
test "S_I_Ip" {
    var lv: c.S_I_Ip = undefined;
    try testing.expectSize(c.S_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.S_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38445:38453
test "S_I_L" {
    var lv: c.S_I_L = undefined;
    try testing.expectSize(c.S_I_L, 16);
    try testing.expectAlign(c.S_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38470:38478
test "S_I_S" {
    var lv: c.S_I_S = undefined;
    try testing.expectSize(c.S_I_S, 12);
    try testing.expectAlign(c.S_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38495:38503
test "S_I_Uc" {
    var lv: c.S_I_Uc = undefined;
    try testing.expectSize(c.S_I_Uc, 12);
    try testing.expectAlign(c.S_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38520:38528
test "S_I_Ui" {
    var lv: c.S_I_Ui = undefined;
    try testing.expectSize(c.S_I_Ui, 12);
    try testing.expectAlign(c.S_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38545:38553
test "S_I_Ul" {
    var lv: c.S_I_Ul = undefined;
    try testing.expectSize(c.S_I_Ul, 16);
    try testing.expectAlign(c.S_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38570:38578
test "S_I_Us" {
    var lv: c.S_I_Us = undefined;
    try testing.expectSize(c.S_I_Us, 12);
    try testing.expectAlign(c.S_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38595:38603
test "S_I_Vp" {
    var lv: c.S_I_Vp = undefined;
    try testing.expectSize(c.S_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.S_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:38619:38626
test "S_Ip" {
    var lv: c.S_Ip = undefined;
    try testing.expectSize(c.S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:39367:39375
test "S_Ip_C" {
    var lv: c.S_Ip_C = undefined;
    try testing.expectSize(c.S_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39392:39400
test "S_Ip_D" {
    var lv: c.S_Ip_D = undefined;
    try testing.expectSize(c.S_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39417:39425
test "S_Ip_F" {
    var lv: c.S_Ip_F = undefined;
    try testing.expectSize(c.S_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39442:39450
test "S_Ip_I" {
    var lv: c.S_Ip_I = undefined;
    try testing.expectSize(c.S_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39467:39475
test "S_Ip_Ip" {
    var lv: c.S_Ip_Ip = undefined;
    try testing.expectSize(c.S_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39492:39500
test "S_Ip_L" {
    var lv: c.S_Ip_L = undefined;
    try testing.expectSize(c.S_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39517:39525
test "S_Ip_S" {
    var lv: c.S_Ip_S = undefined;
    try testing.expectSize(c.S_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39542:39550
test "S_Ip_Uc" {
    var lv: c.S_Ip_Uc = undefined;
    try testing.expectSize(c.S_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39567:39575
test "S_Ip_Ui" {
    var lv: c.S_Ip_Ui = undefined;
    try testing.expectSize(c.S_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39592:39600
test "S_Ip_Ul" {
    var lv: c.S_Ip_Ul = undefined;
    try testing.expectSize(c.S_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39617:39625
test "S_Ip_Us" {
    var lv: c.S_Ip_Us = undefined;
    try testing.expectSize(c.S_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39642:39650
test "S_Ip_Vp" {
    var lv: c.S_Ip_Vp = undefined;
    try testing.expectSize(c.S_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:39666:39673
test "S_L" {
    var lv: c.S_L = undefined;
    try testing.expectSize(c.S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:40414:40422
test "S_L_C" {
    var lv: c.S_L_C = undefined;
    try testing.expectSize(c.S_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40439:40447
test "S_L_D" {
    var lv: c.S_L_D = undefined;
    try testing.expectSize(c.S_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.S_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40464:40472
test "S_L_F" {
    var lv: c.S_L_F = undefined;
    try testing.expectSize(c.S_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40489:40497
test "S_L_I" {
    var lv: c.S_L_I = undefined;
    try testing.expectSize(c.S_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40514:40522
test "S_L_Ip" {
    var lv: c.S_L_Ip = undefined;
    try testing.expectSize(c.S_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40539:40547
test "S_L_L" {
    var lv: c.S_L_L = undefined;
    try testing.expectSize(c.S_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.S_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40564:40572
test "S_L_S" {
    var lv: c.S_L_S = undefined;
    try testing.expectSize(c.S_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40589:40597
test "S_L_Uc" {
    var lv: c.S_L_Uc = undefined;
    try testing.expectSize(c.S_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40614:40622
test "S_L_Ui" {
    var lv: c.S_L_Ui = undefined;
    try testing.expectSize(c.S_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40639:40647
test "S_L_Ul" {
    var lv: c.S_L_Ul = undefined;
    try testing.expectSize(c.S_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.S_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40664:40672
test "S_L_Us" {
    var lv: c.S_L_Us = undefined;
    try testing.expectSize(c.S_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40689:40697
test "S_L_Vp" {
    var lv: c.S_L_Vp = undefined;
    try testing.expectSize(c.S_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.S_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:40713:40720
test "S_S" {
    var lv: c.S_S = undefined;
    try testing.expectSize(c.S_S, 4);
    try testing.expectAlign(c.S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xaz.c:41461:41469
test "S_S_C" {
    var lv: c.S_S_C = undefined;
    try testing.expectSize(c.S_S_C, 6);
    try testing.expectAlign(c.S_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:41486:41494
test "S_S_D" {
    var lv: c.S_S_D = undefined;
    try testing.expectSize(c.S_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:41511:41519
test "S_S_F" {
    var lv: c.S_S_F = undefined;
    try testing.expectSize(c.S_S_F, 8);
    try testing.expectAlign(c.S_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:41536:41544
test "S_S_I" {
    var lv: c.S_S_I = undefined;
    try testing.expectSize(c.S_S_I, 8);
    try testing.expectAlign(c.S_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:41561:41569
test "S_S_Ip" {
    var lv: c.S_S_Ip = undefined;
    try testing.expectSize(c.S_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:41586:41594
test "S_S_L" {
    var lv: c.S_S_L = undefined;
    try testing.expectSize(c.S_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:41611:41619
test "S_S_S" {
    var lv: c.S_S_S = undefined;
    try testing.expectSize(c.S_S_S, 6);
    try testing.expectAlign(c.S_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:41636:41644
test "S_S_Uc" {
    var lv: c.S_S_Uc = undefined;
    try testing.expectSize(c.S_S_Uc, 6);
    try testing.expectAlign(c.S_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:41661:41669
test "S_S_Ui" {
    var lv: c.S_S_Ui = undefined;
    try testing.expectSize(c.S_S_Ui, 8);
    try testing.expectAlign(c.S_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:41686:41694
test "S_S_Ul" {
    var lv: c.S_S_Ul = undefined;
    try testing.expectSize(c.S_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:41711:41719
test "S_S_Us" {
    var lv: c.S_S_Us = undefined;
    try testing.expectSize(c.S_S_Us, 6);
    try testing.expectAlign(c.S_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:41736:41744
test "S_S_Vp" {
    var lv: c.S_S_Vp = undefined;
    try testing.expectSize(c.S_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:41760:41767
test "S_Uc" {
    var lv: c.S_Uc = undefined;
    try testing.expectSize(c.S_Uc, 4);
    try testing.expectAlign(c.S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xaz.c:42508:42516
test "S_Uc_C" {
    var lv: c.S_Uc_C = undefined;
    try testing.expectSize(c.S_Uc_C, 4);
    try testing.expectAlign(c.S_Uc_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xaz.c:42533:42541
test "S_Uc_D" {
    var lv: c.S_Uc_D = undefined;
    try testing.expectSize(c.S_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:42558:42566
test "S_Uc_F" {
    var lv: c.S_Uc_F = undefined;
    try testing.expectSize(c.S_Uc_F, 8);
    try testing.expectAlign(c.S_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:42583:42591
test "S_Uc_I" {
    var lv: c.S_Uc_I = undefined;
    try testing.expectSize(c.S_Uc_I, 8);
    try testing.expectAlign(c.S_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:42608:42616
test "S_Uc_Ip" {
    var lv: c.S_Uc_Ip = undefined;
    try testing.expectSize(c.S_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:42633:42641
test "S_Uc_L" {
    var lv: c.S_Uc_L = undefined;
    try testing.expectSize(c.S_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:42658:42666
test "S_Uc_S" {
    var lv: c.S_Uc_S = undefined;
    try testing.expectSize(c.S_Uc_S, 6);
    try testing.expectAlign(c.S_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:42683:42691
test "S_Uc_Uc" {
    var lv: c.S_Uc_Uc = undefined;
    try testing.expectSize(c.S_Uc_Uc, 4);
    try testing.expectAlign(c.S_Uc_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xaz.c:42708:42716
test "S_Uc_Ui" {
    var lv: c.S_Uc_Ui = undefined;
    try testing.expectSize(c.S_Uc_Ui, 8);
    try testing.expectAlign(c.S_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:42733:42741
test "S_Uc_Ul" {
    var lv: c.S_Uc_Ul = undefined;
    try testing.expectSize(c.S_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:42758:42766
test "S_Uc_Us" {
    var lv: c.S_Uc_Us = undefined;
    try testing.expectSize(c.S_Uc_Us, 6);
    try testing.expectAlign(c.S_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:42783:42791
test "S_Uc_Vp" {
    var lv: c.S_Uc_Vp = undefined;
    try testing.expectSize(c.S_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:42807:42814
test "S_Ui" {
    var lv: c.S_Ui = undefined;
    try testing.expectSize(c.S_Ui, 8);
    try testing.expectAlign(c.S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xaz.c:43555:43563
test "S_Ui_C" {
    var lv: c.S_Ui_C = undefined;
    try testing.expectSize(c.S_Ui_C, 12);
    try testing.expectAlign(c.S_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43580:43588
test "S_Ui_D" {
    var lv: c.S_Ui_D = undefined;
    try testing.expectSize(c.S_Ui_D, 16);
    try testing.expectAlign(c.S_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43605:43613
test "S_Ui_F" {
    var lv: c.S_Ui_F = undefined;
    try testing.expectSize(c.S_Ui_F, 12);
    try testing.expectAlign(c.S_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43630:43638
test "S_Ui_I" {
    var lv: c.S_Ui_I = undefined;
    try testing.expectSize(c.S_Ui_I, 12);
    try testing.expectAlign(c.S_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43655:43663
test "S_Ui_Ip" {
    var lv: c.S_Ui_Ip = undefined;
    try testing.expectSize(c.S_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43680:43688
test "S_Ui_L" {
    var lv: c.S_Ui_L = undefined;
    try testing.expectSize(c.S_Ui_L, 16);
    try testing.expectAlign(c.S_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43705:43713
test "S_Ui_S" {
    var lv: c.S_Ui_S = undefined;
    try testing.expectSize(c.S_Ui_S, 12);
    try testing.expectAlign(c.S_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43730:43738
test "S_Ui_Uc" {
    var lv: c.S_Ui_Uc = undefined;
    try testing.expectSize(c.S_Ui_Uc, 12);
    try testing.expectAlign(c.S_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43755:43763
test "S_Ui_Ui" {
    var lv: c.S_Ui_Ui = undefined;
    try testing.expectSize(c.S_Ui_Ui, 12);
    try testing.expectAlign(c.S_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43780:43788
test "S_Ui_Ul" {
    var lv: c.S_Ui_Ul = undefined;
    try testing.expectSize(c.S_Ui_Ul, 16);
    try testing.expectAlign(c.S_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43805:43813
test "S_Ui_Us" {
    var lv: c.S_Ui_Us = undefined;
    try testing.expectSize(c.S_Ui_Us, 12);
    try testing.expectAlign(c.S_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43830:43838
test "S_Ui_Vp" {
    var lv: c.S_Ui_Vp = undefined;
    try testing.expectSize(c.S_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaz.c:43854:43861
test "S_Ul" {
    var lv: c.S_Ul = undefined;
    try testing.expectSize(c.S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:44602:44610
test "S_Ul_C" {
    var lv: c.S_Ul_C = undefined;
    try testing.expectSize(c.S_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44627:44635
test "S_Ul_D" {
    var lv: c.S_Ul_D = undefined;
    try testing.expectSize(c.S_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.S_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44652:44660
test "S_Ul_F" {
    var lv: c.S_Ul_F = undefined;
    try testing.expectSize(c.S_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44677:44685
test "S_Ul_I" {
    var lv: c.S_Ul_I = undefined;
    try testing.expectSize(c.S_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44702:44710
test "S_Ul_Ip" {
    var lv: c.S_Ul_Ip = undefined;
    try testing.expectSize(c.S_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44727:44735
test "S_Ul_L" {
    var lv: c.S_Ul_L = undefined;
    try testing.expectSize(c.S_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.S_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44752:44760
test "S_Ul_S" {
    var lv: c.S_Ul_S = undefined;
    try testing.expectSize(c.S_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44777:44785
test "S_Ul_Uc" {
    var lv: c.S_Ul_Uc = undefined;
    try testing.expectSize(c.S_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44802:44810
test "S_Ul_Ui" {
    var lv: c.S_Ul_Ui = undefined;
    try testing.expectSize(c.S_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44827:44835
test "S_Ul_Ul" {
    var lv: c.S_Ul_Ul = undefined;
    try testing.expectSize(c.S_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.S_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44852:44860
test "S_Ul_Us" {
    var lv: c.S_Ul_Us = undefined;
    try testing.expectSize(c.S_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44877:44885
test "S_Ul_Vp" {
    var lv: c.S_Ul_Vp = undefined;
    try testing.expectSize(c.S_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaz.c:44901:44908
test "S_Us" {
    var lv: c.S_Us = undefined;
    try testing.expectSize(c.S_Us, 4);
    try testing.expectAlign(c.S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xaz.c:45649:45657
test "S_Us_C" {
    var lv: c.S_Us_C = undefined;
    try testing.expectSize(c.S_Us_C, 6);
    try testing.expectAlign(c.S_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:45674:45682
test "S_Us_D" {
    var lv: c.S_Us_D = undefined;
    try testing.expectSize(c.S_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:45699:45707
test "S_Us_F" {
    var lv: c.S_Us_F = undefined;
    try testing.expectSize(c.S_Us_F, 8);
    try testing.expectAlign(c.S_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:45724:45732
test "S_Us_I" {
    var lv: c.S_Us_I = undefined;
    try testing.expectSize(c.S_Us_I, 8);
    try testing.expectAlign(c.S_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:45749:45757
test "S_Us_Ip" {
    var lv: c.S_Us_Ip = undefined;
    try testing.expectSize(c.S_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:45774:45782
test "S_Us_L" {
    var lv: c.S_Us_L = undefined;
    try testing.expectSize(c.S_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:45799:45807
test "S_Us_S" {
    var lv: c.S_Us_S = undefined;
    try testing.expectSize(c.S_Us_S, 6);
    try testing.expectAlign(c.S_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:45824:45832
test "S_Us_Uc" {
    var lv: c.S_Us_Uc = undefined;
    try testing.expectSize(c.S_Us_Uc, 6);
    try testing.expectAlign(c.S_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:45849:45857
test "S_Us_Ui" {
    var lv: c.S_Us_Ui = undefined;
    try testing.expectSize(c.S_Us_Ui, 8);
    try testing.expectAlign(c.S_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:45874:45882
test "S_Us_Ul" {
    var lv: c.S_Us_Ul = undefined;
    try testing.expectSize(c.S_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.S_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:45899:45907
test "S_Us_Us" {
    var lv: c.S_Us_Us = undefined;
    try testing.expectSize(c.S_Us_Us, 6);
    try testing.expectAlign(c.S_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:45924:45932
test "S_Us_Vp" {
    var lv: c.S_Us_Vp = undefined;
    try testing.expectSize(c.S_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:45948:45955
test "S_Vp" {
    var lv: c.S_Vp = undefined;
    try testing.expectSize(c.S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:46696:46704
test "S_Vp_C" {
    var lv: c.S_Vp_C = undefined;
    try testing.expectSize(c.S_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46721:46729
test "S_Vp_D" {
    var lv: c.S_Vp_D = undefined;
    try testing.expectSize(c.S_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46746:46754
test "S_Vp_F" {
    var lv: c.S_Vp_F = undefined;
    try testing.expectSize(c.S_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46771:46779
test "S_Vp_I" {
    var lv: c.S_Vp_I = undefined;
    try testing.expectSize(c.S_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46796:46804
test "S_Vp_Ip" {
    var lv: c.S_Vp_Ip = undefined;
    try testing.expectSize(c.S_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46821:46829
test "S_Vp_L" {
    var lv: c.S_Vp_L = undefined;
    try testing.expectSize(c.S_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46846:46854
test "S_Vp_S" {
    var lv: c.S_Vp_S = undefined;
    try testing.expectSize(c.S_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46871:46879
test "S_Vp_Uc" {
    var lv: c.S_Vp_Uc = undefined;
    try testing.expectSize(c.S_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46896:46904
test "S_Vp_Ui" {
    var lv: c.S_Vp_Ui = undefined;
    try testing.expectSize(c.S_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46921:46929
test "S_Vp_Ul" {
    var lv: c.S_Vp_Ul = undefined;
    try testing.expectSize(c.S_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.S_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46946:46954
test "S_Vp_Us" {
    var lv: c.S_Vp_Us = undefined;
    try testing.expectSize(c.S_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46971:46979
test "S_Vp_Vp" {
    var lv: c.S_Vp_Vp = undefined;
    try testing.expectSize(c.S_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.S_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaz.c:46994:47000
test "Uc" {
    var lv: c.Uc = undefined;
    try testing.expectSize(c.Uc, 1);
    try testing.expectAlign(c.Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Snnn_xaz.c:77316:77323
test "Uc_C" {
    var lv: c.Uc_C = undefined;
    try testing.expectSize(c.Uc_C, 2);
    try testing.expectAlign(c.Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Snnn_xaz.c:78064:78072
test "Uc_C_C" {
    var lv: c.Uc_C_C = undefined;
    try testing.expectSize(c.Uc_C_C, 3);
    try testing.expectAlign(c.Uc_C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaz.c:78089:78097
test "Uc_C_D" {
    var lv: c.Uc_C_D = undefined;
    try testing.expectSize(c.Uc_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:78114:78122
test "Uc_C_F" {
    var lv: c.Uc_C_F = undefined;
    try testing.expectSize(c.Uc_C_F, 8);
    try testing.expectAlign(c.Uc_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:78139:78147
test "Uc_C_I" {
    var lv: c.Uc_C_I = undefined;
    try testing.expectSize(c.Uc_C_I, 8);
    try testing.expectAlign(c.Uc_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:78164:78172
test "Uc_C_Ip" {
    var lv: c.Uc_C_Ip = undefined;
    try testing.expectSize(c.Uc_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:78189:78197
test "Uc_C_L" {
    var lv: c.Uc_C_L = undefined;
    try testing.expectSize(c.Uc_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:78214:78222
test "Uc_C_S" {
    var lv: c.Uc_C_S = undefined;
    try testing.expectSize(c.Uc_C_S, 4);
    try testing.expectAlign(c.Uc_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaz.c:78239:78247
test "Uc_C_Uc" {
    var lv: c.Uc_C_Uc = undefined;
    try testing.expectSize(c.Uc_C_Uc, 3);
    try testing.expectAlign(c.Uc_C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaz.c:78264:78272
test "Uc_C_Ui" {
    var lv: c.Uc_C_Ui = undefined;
    try testing.expectSize(c.Uc_C_Ui, 8);
    try testing.expectAlign(c.Uc_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaz.c:78289:78297
test "Uc_C_Ul" {
    var lv: c.Uc_C_Ul = undefined;
    try testing.expectSize(c.Uc_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:78314:78322
test "Uc_C_Us" {
    var lv: c.Uc_C_Us = undefined;
    try testing.expectSize(c.Uc_C_Us, 4);
    try testing.expectAlign(c.Uc_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaz.c:78339:78347
test "Uc_C_Vp" {
    var lv: c.Uc_C_Vp = undefined;
    try testing.expectSize(c.Uc_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Uc_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaz.c:78363:78370
test "Uc_D" {
    var lv: c.Uc_D = undefined;
    try testing.expectSize(c.Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}
