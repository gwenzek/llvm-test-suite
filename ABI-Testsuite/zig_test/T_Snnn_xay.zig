const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xay.h");
});

// From T_Snnn_xay.c:27101:27119
// struct  Ip_C  {
//   int *v1;
//   char v2;
// };

test "Ip_C" {
    var lv: c.Ip_C = undefined;
    try testing.expectSize(c.Ip_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:27848:27868
// struct  Ip_C_C  {
//   int *v1;
//   char v2;
//   char v3;
// };

test "Ip_C_C" {
    var lv: c.Ip_C_C = undefined;
    try testing.expectSize(c.Ip_C_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xay.c:27873:27893
// struct  Ip_C_D  {
//   int *v1;
//   char v2;
//   double v3;
// };

test "Ip_C_D" {
    var lv: c.Ip_C_D = undefined;
    try testing.expectSize(c.Ip_C_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:27898:27918
// struct  Ip_C_F  {
//   int *v1;
//   char v2;
//   float v3;
// };

test "Ip_C_F" {
    var lv: c.Ip_C_F = undefined;
    try testing.expectSize(c.Ip_C_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:27923:27943
// struct  Ip_C_I  {
//   int *v1;
//   char v2;
//   int v3;
// };

test "Ip_C_I" {
    var lv: c.Ip_C_I = undefined;
    try testing.expectSize(c.Ip_C_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:27948:27968
// struct  Ip_C_Ip  {
//   int *v1;
//   char v2;
//   int *v3;
// };

test "Ip_C_Ip" {
    var lv: c.Ip_C_Ip = undefined;
    try testing.expectSize(c.Ip_C_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:27973:27993
// struct  Ip_C_L  {
//   int *v1;
//   char v2;
//   __tsi64 v3;
// };

test "Ip_C_L" {
    var lv: c.Ip_C_L = undefined;
    try testing.expectSize(c.Ip_C_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:27998:28018
// struct  Ip_C_S  {
//   int *v1;
//   char v2;
//   short v3;
// };

test "Ip_C_S" {
    var lv: c.Ip_C_S = undefined;
    try testing.expectSize(c.Ip_C_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:28023:28043
// struct  Ip_C_Uc  {
//   int *v1;
//   char v2;
//   unsigned char v3;
// };

test "Ip_C_Uc" {
    var lv: c.Ip_C_Uc = undefined;
    try testing.expectSize(c.Ip_C_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xay.c:28048:28068
// struct  Ip_C_Ui  {
//   int *v1;
//   char v2;
//   unsigned int v3;
// };

test "Ip_C_Ui" {
    var lv: c.Ip_C_Ui = undefined;
    try testing.expectSize(c.Ip_C_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:28073:28093
// struct  Ip_C_Ul  {
//   int *v1;
//   char v2;
//   __tsu64 v3;
// };

test "Ip_C_Ul" {
    var lv: c.Ip_C_Ul = undefined;
    try testing.expectSize(c.Ip_C_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:28098:28118
// struct  Ip_C_Us  {
//   int *v1;
//   char v2;
//   unsigned short v3;
// };

test "Ip_C_Us" {
    var lv: c.Ip_C_Us = undefined;
    try testing.expectSize(c.Ip_C_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:28123:28143
// struct  Ip_C_Vp  {
//   int *v1;
//   char v2;
//   void *v3;
// };

test "Ip_C_Vp" {
    var lv: c.Ip_C_Vp = undefined;
    try testing.expectSize(c.Ip_C_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:28148:28166
// struct  Ip_D  {
//   int *v1;
//   double v2;
// };

test "Ip_D" {
    var lv: c.Ip_D = undefined;
    try testing.expectSize(c.Ip_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:28895:28915
// struct  Ip_D_C  {
//   int *v1;
//   double v2;
//   char v3;
// };

test "Ip_D_C" {
    var lv: c.Ip_D_C = undefined;
    try testing.expectSize(c.Ip_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:28920:28940
// struct  Ip_D_D  {
//   int *v1;
//   double v2;
//   double v3;
// };

test "Ip_D_D" {
    var lv: c.Ip_D_D = undefined;
    try testing.expectSize(c.Ip_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:28945:28965
// struct  Ip_D_F  {
//   int *v1;
//   double v2;
//   float v3;
// };

test "Ip_D_F" {
    var lv: c.Ip_D_F = undefined;
    try testing.expectSize(c.Ip_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:28970:28990
// struct  Ip_D_I  {
//   int *v1;
//   double v2;
//   int v3;
// };

test "Ip_D_I" {
    var lv: c.Ip_D_I = undefined;
    try testing.expectSize(c.Ip_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:28995:29015
// struct  Ip_D_Ip  {
//   int *v1;
//   double v2;
//   int *v3;
// };

test "Ip_D_Ip" {
    var lv: c.Ip_D_Ip = undefined;
    try testing.expectSize(c.Ip_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29020:29040
// struct  Ip_D_L  {
//   int *v1;
//   double v2;
//   __tsi64 v3;
// };

test "Ip_D_L" {
    var lv: c.Ip_D_L = undefined;
    try testing.expectSize(c.Ip_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29045:29065
// struct  Ip_D_S  {
//   int *v1;
//   double v2;
//   short v3;
// };

test "Ip_D_S" {
    var lv: c.Ip_D_S = undefined;
    try testing.expectSize(c.Ip_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29070:29090
// struct  Ip_D_Uc  {
//   int *v1;
//   double v2;
//   unsigned char v3;
// };

test "Ip_D_Uc" {
    var lv: c.Ip_D_Uc = undefined;
    try testing.expectSize(c.Ip_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29095:29115
// struct  Ip_D_Ui  {
//   int *v1;
//   double v2;
//   unsigned int v3;
// };

test "Ip_D_Ui" {
    var lv: c.Ip_D_Ui = undefined;
    try testing.expectSize(c.Ip_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29120:29140
// struct  Ip_D_Ul  {
//   int *v1;
//   double v2;
//   __tsu64 v3;
// };

test "Ip_D_Ul" {
    var lv: c.Ip_D_Ul = undefined;
    try testing.expectSize(c.Ip_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29145:29165
// struct  Ip_D_Us  {
//   int *v1;
//   double v2;
//   unsigned short v3;
// };

test "Ip_D_Us" {
    var lv: c.Ip_D_Us = undefined;
    try testing.expectSize(c.Ip_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29170:29190
// struct  Ip_D_Vp  {
//   int *v1;
//   double v2;
//   void *v3;
// };

test "Ip_D_Vp" {
    var lv: c.Ip_D_Vp = undefined;
    try testing.expectSize(c.Ip_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:29195:29213
// struct  Ip_F  {
//   int *v1;
//   float v2;
// };

test "Ip_F" {
    var lv: c.Ip_F = undefined;
    try testing.expectSize(c.Ip_F, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:29942:29962
// struct  Ip_F_C  {
//   int *v1;
//   float v2;
//   char v3;
// };

test "Ip_F_C" {
    var lv: c.Ip_F_C = undefined;
    try testing.expectSize(c.Ip_F_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:29967:29987
// struct  Ip_F_D  {
//   int *v1;
//   float v2;
//   double v3;
// };

test "Ip_F_D" {
    var lv: c.Ip_F_D = undefined;
    try testing.expectSize(c.Ip_F_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:29992:30012
// struct  Ip_F_F  {
//   int *v1;
//   float v2;
//   float v3;
// };

test "Ip_F_F" {
    var lv: c.Ip_F_F = undefined;
    try testing.expectSize(c.Ip_F_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30017:30037
// struct  Ip_F_I  {
//   int *v1;
//   float v2;
//   int v3;
// };

test "Ip_F_I" {
    var lv: c.Ip_F_I = undefined;
    try testing.expectSize(c.Ip_F_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30042:30062
// struct  Ip_F_Ip  {
//   int *v1;
//   float v2;
//   int *v3;
// };

test "Ip_F_Ip" {
    var lv: c.Ip_F_Ip = undefined;
    try testing.expectSize(c.Ip_F_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:30067:30087
// struct  Ip_F_L  {
//   int *v1;
//   float v2;
//   __tsi64 v3;
// };

test "Ip_F_L" {
    var lv: c.Ip_F_L = undefined;
    try testing.expectSize(c.Ip_F_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:30092:30112
// struct  Ip_F_S  {
//   int *v1;
//   float v2;
//   short v3;
// };

test "Ip_F_S" {
    var lv: c.Ip_F_S = undefined;
    try testing.expectSize(c.Ip_F_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30117:30137
// struct  Ip_F_Uc  {
//   int *v1;
//   float v2;
//   unsigned char v3;
// };

test "Ip_F_Uc" {
    var lv: c.Ip_F_Uc = undefined;
    try testing.expectSize(c.Ip_F_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30142:30162
// struct  Ip_F_Ui  {
//   int *v1;
//   float v2;
//   unsigned int v3;
// };

test "Ip_F_Ui" {
    var lv: c.Ip_F_Ui = undefined;
    try testing.expectSize(c.Ip_F_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30167:30187
// struct  Ip_F_Ul  {
//   int *v1;
//   float v2;
//   __tsu64 v3;
// };

test "Ip_F_Ul" {
    var lv: c.Ip_F_Ul = undefined;
    try testing.expectSize(c.Ip_F_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:30192:30212
// struct  Ip_F_Us  {
//   int *v1;
//   float v2;
//   unsigned short v3;
// };

test "Ip_F_Us" {
    var lv: c.Ip_F_Us = undefined;
    try testing.expectSize(c.Ip_F_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:30217:30237
// struct  Ip_F_Vp  {
//   int *v1;
//   float v2;
//   void *v3;
// };

test "Ip_F_Vp" {
    var lv: c.Ip_F_Vp = undefined;
    try testing.expectSize(c.Ip_F_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:30242:30260
// struct  Ip_I  {
//   int *v1;
//   int v2;
// };

test "Ip_I" {
    var lv: c.Ip_I = undefined;
    try testing.expectSize(c.Ip_I, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:30989:31009
// struct  Ip_I_C  {
//   int *v1;
//   int v2;
//   char v3;
// };

test "Ip_I_C" {
    var lv: c.Ip_I_C = undefined;
    try testing.expectSize(c.Ip_I_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31014:31034
// struct  Ip_I_D  {
//   int *v1;
//   int v2;
//   double v3;
// };

test "Ip_I_D" {
    var lv: c.Ip_I_D = undefined;
    try testing.expectSize(c.Ip_I_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:31039:31059
// struct  Ip_I_F  {
//   int *v1;
//   int v2;
//   float v3;
// };

test "Ip_I_F" {
    var lv: c.Ip_I_F = undefined;
    try testing.expectSize(c.Ip_I_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31064:31084
// struct  Ip_I_I  {
//   int *v1;
//   int v2;
//   int v3;
// };

test "Ip_I_I" {
    var lv: c.Ip_I_I = undefined;
    try testing.expectSize(c.Ip_I_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31089:31109
// struct  Ip_I_Ip  {
//   int *v1;
//   int v2;
//   int *v3;
// };

test "Ip_I_Ip" {
    var lv: c.Ip_I_Ip = undefined;
    try testing.expectSize(c.Ip_I_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:31114:31134
// struct  Ip_I_L  {
//   int *v1;
//   int v2;
//   __tsi64 v3;
// };

test "Ip_I_L" {
    var lv: c.Ip_I_L = undefined;
    try testing.expectSize(c.Ip_I_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:31139:31159
// struct  Ip_I_S  {
//   int *v1;
//   int v2;
//   short v3;
// };

test "Ip_I_S" {
    var lv: c.Ip_I_S = undefined;
    try testing.expectSize(c.Ip_I_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31164:31184
// struct  Ip_I_Uc  {
//   int *v1;
//   int v2;
//   unsigned char v3;
// };

test "Ip_I_Uc" {
    var lv: c.Ip_I_Uc = undefined;
    try testing.expectSize(c.Ip_I_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31189:31209
// struct  Ip_I_Ui  {
//   int *v1;
//   int v2;
//   unsigned int v3;
// };

test "Ip_I_Ui" {
    var lv: c.Ip_I_Ui = undefined;
    try testing.expectSize(c.Ip_I_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31214:31234
// struct  Ip_I_Ul  {
//   int *v1;
//   int v2;
//   __tsu64 v3;
// };

test "Ip_I_Ul" {
    var lv: c.Ip_I_Ul = undefined;
    try testing.expectSize(c.Ip_I_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:31239:31259
// struct  Ip_I_Us  {
//   int *v1;
//   int v2;
//   unsigned short v3;
// };

test "Ip_I_Us" {
    var lv: c.Ip_I_Us = undefined;
    try testing.expectSize(c.Ip_I_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:31264:31284
// struct  Ip_I_Vp  {
//   int *v1;
//   int v2;
//   void *v3;
// };

test "Ip_I_Vp" {
    var lv: c.Ip_I_Vp = undefined;
    try testing.expectSize(c.Ip_I_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:31289:31307
// struct  Ip_Ip  {
//   int *v1;
//   int *v2;
// };

test "Ip_Ip" {
    var lv: c.Ip_Ip = undefined;
    try testing.expectSize(c.Ip_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:32036:32056
// struct  Ip_Ip_C  {
//   int *v1;
//   int *v2;
//   char v3;
// };

test "Ip_Ip_C" {
    var lv: c.Ip_Ip_C = undefined;
    try testing.expectSize(c.Ip_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32061:32081
// struct  Ip_Ip_D  {
//   int *v1;
//   int *v2;
//   double v3;
// };

test "Ip_Ip_D" {
    var lv: c.Ip_Ip_D = undefined;
    try testing.expectSize(c.Ip_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32086:32106
// struct  Ip_Ip_F  {
//   int *v1;
//   int *v2;
//   float v3;
// };

test "Ip_Ip_F" {
    var lv: c.Ip_Ip_F = undefined;
    try testing.expectSize(c.Ip_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32111:32131
// struct  Ip_Ip_I  {
//   int *v1;
//   int *v2;
//   int v3;
// };

test "Ip_Ip_I" {
    var lv: c.Ip_Ip_I = undefined;
    try testing.expectSize(c.Ip_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32136:32156
// struct  Ip_Ip_Ip  {
//   int *v1;
//   int *v2;
//   int *v3;
// };

test "Ip_Ip_Ip" {
    var lv: c.Ip_Ip_Ip = undefined;
    try testing.expectSize(c.Ip_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32161:32181
// struct  Ip_Ip_L  {
//   int *v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Ip_Ip_L" {
    var lv: c.Ip_Ip_L = undefined;
    try testing.expectSize(c.Ip_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32186:32206
// struct  Ip_Ip_S  {
//   int *v1;
//   int *v2;
//   short v3;
// };

test "Ip_Ip_S" {
    var lv: c.Ip_Ip_S = undefined;
    try testing.expectSize(c.Ip_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32211:32231
// struct  Ip_Ip_Uc  {
//   int *v1;
//   int *v2;
//   unsigned char v3;
// };

test "Ip_Ip_Uc" {
    var lv: c.Ip_Ip_Uc = undefined;
    try testing.expectSize(c.Ip_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32236:32256
// struct  Ip_Ip_Ui  {
//   int *v1;
//   int *v2;
//   unsigned int v3;
// };

test "Ip_Ip_Ui" {
    var lv: c.Ip_Ip_Ui = undefined;
    try testing.expectSize(c.Ip_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32261:32281
// struct  Ip_Ip_Ul  {
//   int *v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Ip_Ip_Ul" {
    var lv: c.Ip_Ip_Ul = undefined;
    try testing.expectSize(c.Ip_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32286:32306
// struct  Ip_Ip_Us  {
//   int *v1;
//   int *v2;
//   unsigned short v3;
// };

test "Ip_Ip_Us" {
    var lv: c.Ip_Ip_Us = undefined;
    try testing.expectSize(c.Ip_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32311:32331
// struct  Ip_Ip_Vp  {
//   int *v1;
//   int *v2;
//   void *v3;
// };

test "Ip_Ip_Vp" {
    var lv: c.Ip_Ip_Vp = undefined;
    try testing.expectSize(c.Ip_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:32336:32354
// struct  Ip_L  {
//   int *v1;
//   __tsi64 v2;
// };

test "Ip_L" {
    var lv: c.Ip_L = undefined;
    try testing.expectSize(c.Ip_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:33083:33103
// struct  Ip_L_C  {
//   int *v1;
//   __tsi64 v2;
//   char v3;
// };

test "Ip_L_C" {
    var lv: c.Ip_L_C = undefined;
    try testing.expectSize(c.Ip_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33108:33128
// struct  Ip_L_D  {
//   int *v1;
//   __tsi64 v2;
//   double v3;
// };

test "Ip_L_D" {
    var lv: c.Ip_L_D = undefined;
    try testing.expectSize(c.Ip_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33133:33153
// struct  Ip_L_F  {
//   int *v1;
//   __tsi64 v2;
//   float v3;
// };

test "Ip_L_F" {
    var lv: c.Ip_L_F = undefined;
    try testing.expectSize(c.Ip_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33158:33178
// struct  Ip_L_I  {
//   int *v1;
//   __tsi64 v2;
//   int v3;
// };

test "Ip_L_I" {
    var lv: c.Ip_L_I = undefined;
    try testing.expectSize(c.Ip_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33183:33203
// struct  Ip_L_Ip  {
//   int *v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Ip_L_Ip" {
    var lv: c.Ip_L_Ip = undefined;
    try testing.expectSize(c.Ip_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33208:33228
// struct  Ip_L_L  {
//   int *v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Ip_L_L" {
    var lv: c.Ip_L_L = undefined;
    try testing.expectSize(c.Ip_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33233:33253
// struct  Ip_L_S  {
//   int *v1;
//   __tsi64 v2;
//   short v3;
// };

test "Ip_L_S" {
    var lv: c.Ip_L_S = undefined;
    try testing.expectSize(c.Ip_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33258:33278
// struct  Ip_L_Uc  {
//   int *v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Ip_L_Uc" {
    var lv: c.Ip_L_Uc = undefined;
    try testing.expectSize(c.Ip_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33283:33303
// struct  Ip_L_Ui  {
//   int *v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Ip_L_Ui" {
    var lv: c.Ip_L_Ui = undefined;
    try testing.expectSize(c.Ip_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33308:33328
// struct  Ip_L_Ul  {
//   int *v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Ip_L_Ul" {
    var lv: c.Ip_L_Ul = undefined;
    try testing.expectSize(c.Ip_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33333:33353
// struct  Ip_L_Us  {
//   int *v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Ip_L_Us" {
    var lv: c.Ip_L_Us = undefined;
    try testing.expectSize(c.Ip_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33358:33378
// struct  Ip_L_Vp  {
//   int *v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Ip_L_Vp" {
    var lv: c.Ip_L_Vp = undefined;
    try testing.expectSize(c.Ip_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:33383:33401
// struct  Ip_S  {
//   int *v1;
//   short v2;
// };

test "Ip_S" {
    var lv: c.Ip_S = undefined;
    try testing.expectSize(c.Ip_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:34130:34150
// struct  Ip_S_C  {
//   int *v1;
//   short v2;
//   char v3;
// };

test "Ip_S_C" {
    var lv: c.Ip_S_C = undefined;
    try testing.expectSize(c.Ip_S_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:34155:34175
// struct  Ip_S_D  {
//   int *v1;
//   short v2;
//   double v3;
// };

test "Ip_S_D" {
    var lv: c.Ip_S_D = undefined;
    try testing.expectSize(c.Ip_S_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:34180:34200
// struct  Ip_S_F  {
//   int *v1;
//   short v2;
//   float v3;
// };

test "Ip_S_F" {
    var lv: c.Ip_S_F = undefined;
    try testing.expectSize(c.Ip_S_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:34205:34225
// struct  Ip_S_I  {
//   int *v1;
//   short v2;
//   int v3;
// };

test "Ip_S_I" {
    var lv: c.Ip_S_I = undefined;
    try testing.expectSize(c.Ip_S_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:34230:34250
// struct  Ip_S_Ip  {
//   int *v1;
//   short v2;
//   int *v3;
// };

test "Ip_S_Ip" {
    var lv: c.Ip_S_Ip = undefined;
    try testing.expectSize(c.Ip_S_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:34255:34275
// struct  Ip_S_L  {
//   int *v1;
//   short v2;
//   __tsi64 v3;
// };

test "Ip_S_L" {
    var lv: c.Ip_S_L = undefined;
    try testing.expectSize(c.Ip_S_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:34280:34300
// struct  Ip_S_S  {
//   int *v1;
//   short v2;
//   short v3;
// };

test "Ip_S_S" {
    var lv: c.Ip_S_S = undefined;
    try testing.expectSize(c.Ip_S_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:34305:34325
// struct  Ip_S_Uc  {
//   int *v1;
//   short v2;
//   unsigned char v3;
// };

test "Ip_S_Uc" {
    var lv: c.Ip_S_Uc = undefined;
    try testing.expectSize(c.Ip_S_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:34330:34350
// struct  Ip_S_Ui  {
//   int *v1;
//   short v2;
//   unsigned int v3;
// };

test "Ip_S_Ui" {
    var lv: c.Ip_S_Ui = undefined;
    try testing.expectSize(c.Ip_S_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:34355:34375
// struct  Ip_S_Ul  {
//   int *v1;
//   short v2;
//   __tsu64 v3;
// };

test "Ip_S_Ul" {
    var lv: c.Ip_S_Ul = undefined;
    try testing.expectSize(c.Ip_S_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:34380:34400
// struct  Ip_S_Us  {
//   int *v1;
//   short v2;
//   unsigned short v3;
// };

test "Ip_S_Us" {
    var lv: c.Ip_S_Us = undefined;
    try testing.expectSize(c.Ip_S_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:34405:34425
// struct  Ip_S_Vp  {
//   int *v1;
//   short v2;
//   void *v3;
// };

test "Ip_S_Vp" {
    var lv: c.Ip_S_Vp = undefined;
    try testing.expectSize(c.Ip_S_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:34430:34448
// struct  Ip_Uc  {
//   int *v1;
//   unsigned char v2;
// };

test "Ip_Uc" {
    var lv: c.Ip_Uc = undefined;
    try testing.expectSize(c.Ip_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:35177:35197
// struct  Ip_Uc_C  {
//   int *v1;
//   unsigned char v2;
//   char v3;
// };

test "Ip_Uc_C" {
    var lv: c.Ip_Uc_C = undefined;
    try testing.expectSize(c.Ip_Uc_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xay.c:35202:35222
// struct  Ip_Uc_D  {
//   int *v1;
//   unsigned char v2;
//   double v3;
// };

test "Ip_Uc_D" {
    var lv: c.Ip_Uc_D = undefined;
    try testing.expectSize(c.Ip_Uc_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:35227:35247
// struct  Ip_Uc_F  {
//   int *v1;
//   unsigned char v2;
//   float v3;
// };

test "Ip_Uc_F" {
    var lv: c.Ip_Uc_F = undefined;
    try testing.expectSize(c.Ip_Uc_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:35252:35272
// struct  Ip_Uc_I  {
//   int *v1;
//   unsigned char v2;
//   int v3;
// };

test "Ip_Uc_I" {
    var lv: c.Ip_Uc_I = undefined;
    try testing.expectSize(c.Ip_Uc_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:35277:35297
// struct  Ip_Uc_Ip  {
//   int *v1;
//   unsigned char v2;
//   int *v3;
// };

test "Ip_Uc_Ip" {
    var lv: c.Ip_Uc_Ip = undefined;
    try testing.expectSize(c.Ip_Uc_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:35302:35322
// struct  Ip_Uc_L  {
//   int *v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Ip_Uc_L" {
    var lv: c.Ip_Uc_L = undefined;
    try testing.expectSize(c.Ip_Uc_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:35327:35347
// struct  Ip_Uc_S  {
//   int *v1;
//   unsigned char v2;
//   short v3;
// };

test "Ip_Uc_S" {
    var lv: c.Ip_Uc_S = undefined;
    try testing.expectSize(c.Ip_Uc_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:35352:35372
// struct  Ip_Uc_Uc  {
//   int *v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Ip_Uc_Uc" {
    var lv: c.Ip_Uc_Uc = undefined;
    try testing.expectSize(c.Ip_Uc_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(9, 5));
}

// From T_Snnn_xay.c:35377:35397
// struct  Ip_Uc_Ui  {
//   int *v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Ip_Uc_Ui" {
    var lv: c.Ip_Uc_Ui = undefined;
    try testing.expectSize(c.Ip_Uc_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:35402:35422
// struct  Ip_Uc_Ul  {
//   int *v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Ip_Uc_Ul" {
    var lv: c.Ip_Uc_Ul = undefined;
    try testing.expectSize(c.Ip_Uc_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:35427:35447
// struct  Ip_Uc_Us  {
//   int *v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Ip_Uc_Us" {
    var lv: c.Ip_Uc_Us = undefined;
    try testing.expectSize(c.Ip_Uc_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:35452:35472
// struct  Ip_Uc_Vp  {
//   int *v1;
//   unsigned char v2;
//   void *v3;
// };

test "Ip_Uc_Vp" {
    var lv: c.Ip_Uc_Vp = undefined;
    try testing.expectSize(c.Ip_Uc_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:35477:35495
// struct  Ip_Ui  {
//   int *v1;
//   unsigned int v2;
// };

test "Ip_Ui" {
    var lv: c.Ip_Ui = undefined;
    try testing.expectSize(c.Ip_Ui, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:36224:36244
// struct  Ip_Ui_C  {
//   int *v1;
//   unsigned int v2;
//   char v3;
// };

test "Ip_Ui_C" {
    var lv: c.Ip_Ui_C = undefined;
    try testing.expectSize(c.Ip_Ui_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36249:36269
// struct  Ip_Ui_D  {
//   int *v1;
//   unsigned int v2;
//   double v3;
// };

test "Ip_Ui_D" {
    var lv: c.Ip_Ui_D = undefined;
    try testing.expectSize(c.Ip_Ui_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:36274:36294
// struct  Ip_Ui_F  {
//   int *v1;
//   unsigned int v2;
//   float v3;
// };

test "Ip_Ui_F" {
    var lv: c.Ip_Ui_F = undefined;
    try testing.expectSize(c.Ip_Ui_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36299:36319
// struct  Ip_Ui_I  {
//   int *v1;
//   unsigned int v2;
//   int v3;
// };

test "Ip_Ui_I" {
    var lv: c.Ip_Ui_I = undefined;
    try testing.expectSize(c.Ip_Ui_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36324:36344
// struct  Ip_Ui_Ip  {
//   int *v1;
//   unsigned int v2;
//   int *v3;
// };

test "Ip_Ui_Ip" {
    var lv: c.Ip_Ui_Ip = undefined;
    try testing.expectSize(c.Ip_Ui_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:36349:36369
// struct  Ip_Ui_L  {
//   int *v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Ip_Ui_L" {
    var lv: c.Ip_Ui_L = undefined;
    try testing.expectSize(c.Ip_Ui_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:36374:36394
// struct  Ip_Ui_S  {
//   int *v1;
//   unsigned int v2;
//   short v3;
// };

test "Ip_Ui_S" {
    var lv: c.Ip_Ui_S = undefined;
    try testing.expectSize(c.Ip_Ui_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36399:36419
// struct  Ip_Ui_Uc  {
//   int *v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Ip_Ui_Uc" {
    var lv: c.Ip_Ui_Uc = undefined;
    try testing.expectSize(c.Ip_Ui_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36424:36444
// struct  Ip_Ui_Ui  {
//   int *v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Ip_Ui_Ui" {
    var lv: c.Ip_Ui_Ui = undefined;
    try testing.expectSize(c.Ip_Ui_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36449:36469
// struct  Ip_Ui_Ul  {
//   int *v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Ip_Ui_Ul" {
    var lv: c.Ip_Ui_Ul = undefined;
    try testing.expectSize(c.Ip_Ui_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:36474:36494
// struct  Ip_Ui_Us  {
//   int *v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Ip_Ui_Us" {
    var lv: c.Ip_Ui_Us = undefined;
    try testing.expectSize(c.Ip_Ui_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:36499:36519
// struct  Ip_Ui_Vp  {
//   int *v1;
//   unsigned int v2;
//   void *v3;
// };

test "Ip_Ui_Vp" {
    var lv: c.Ip_Ui_Vp = undefined;
    try testing.expectSize(c.Ip_Ui_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:36524:36542
// struct  Ip_Ul  {
//   int *v1;
//   __tsu64 v2;
// };

test "Ip_Ul" {
    var lv: c.Ip_Ul = undefined;
    try testing.expectSize(c.Ip_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:37271:37291
// struct  Ip_Ul_C  {
//   int *v1;
//   __tsu64 v2;
//   char v3;
// };

test "Ip_Ul_C" {
    var lv: c.Ip_Ul_C = undefined;
    try testing.expectSize(c.Ip_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37296:37316
// struct  Ip_Ul_D  {
//   int *v1;
//   __tsu64 v2;
//   double v3;
// };

test "Ip_Ul_D" {
    var lv: c.Ip_Ul_D = undefined;
    try testing.expectSize(c.Ip_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37321:37341
// struct  Ip_Ul_F  {
//   int *v1;
//   __tsu64 v2;
//   float v3;
// };

test "Ip_Ul_F" {
    var lv: c.Ip_Ul_F = undefined;
    try testing.expectSize(c.Ip_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37346:37366
// struct  Ip_Ul_I  {
//   int *v1;
//   __tsu64 v2;
//   int v3;
// };

test "Ip_Ul_I" {
    var lv: c.Ip_Ul_I = undefined;
    try testing.expectSize(c.Ip_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37371:37391
// struct  Ip_Ul_Ip  {
//   int *v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Ip_Ul_Ip" {
    var lv: c.Ip_Ul_Ip = undefined;
    try testing.expectSize(c.Ip_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37396:37416
// struct  Ip_Ul_L  {
//   int *v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Ip_Ul_L" {
    var lv: c.Ip_Ul_L = undefined;
    try testing.expectSize(c.Ip_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37421:37441
// struct  Ip_Ul_S  {
//   int *v1;
//   __tsu64 v2;
//   short v3;
// };

test "Ip_Ul_S" {
    var lv: c.Ip_Ul_S = undefined;
    try testing.expectSize(c.Ip_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37446:37466
// struct  Ip_Ul_Uc  {
//   int *v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Ip_Ul_Uc" {
    var lv: c.Ip_Ul_Uc = undefined;
    try testing.expectSize(c.Ip_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37471:37491
// struct  Ip_Ul_Ui  {
//   int *v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Ip_Ul_Ui" {
    var lv: c.Ip_Ul_Ui = undefined;
    try testing.expectSize(c.Ip_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37496:37516
// struct  Ip_Ul_Ul  {
//   int *v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Ip_Ul_Ul" {
    var lv: c.Ip_Ul_Ul = undefined;
    try testing.expectSize(c.Ip_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ip_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37521:37541
// struct  Ip_Ul_Us  {
//   int *v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Ip_Ul_Us" {
    var lv: c.Ip_Ul_Us = undefined;
    try testing.expectSize(c.Ip_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37546:37566
// struct  Ip_Ul_Vp  {
//   int *v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Ip_Ul_Vp" {
    var lv: c.Ip_Ul_Vp = undefined;
    try testing.expectSize(c.Ip_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:37571:37589
// struct  Ip_Us  {
//   int *v1;
//   unsigned short v2;
// };

test "Ip_Us" {
    var lv: c.Ip_Us = undefined;
    try testing.expectSize(c.Ip_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:38318:38338
// struct  Ip_Us_C  {
//   int *v1;
//   unsigned short v2;
//   char v3;
// };

test "Ip_Us_C" {
    var lv: c.Ip_Us_C = undefined;
    try testing.expectSize(c.Ip_Us_C, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:38343:38363
// struct  Ip_Us_D  {
//   int *v1;
//   unsigned short v2;
//   double v3;
// };

test "Ip_Us_D" {
    var lv: c.Ip_Us_D = undefined;
    try testing.expectSize(c.Ip_Us_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:38368:38388
// struct  Ip_Us_F  {
//   int *v1;
//   unsigned short v2;
//   float v3;
// };

test "Ip_Us_F" {
    var lv: c.Ip_Us_F = undefined;
    try testing.expectSize(c.Ip_Us_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:38393:38413
// struct  Ip_Us_I  {
//   int *v1;
//   unsigned short v2;
//   int v3;
// };

test "Ip_Us_I" {
    var lv: c.Ip_Us_I = undefined;
    try testing.expectSize(c.Ip_Us_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:38418:38438
// struct  Ip_Us_Ip  {
//   int *v1;
//   unsigned short v2;
//   int *v3;
// };

test "Ip_Us_Ip" {
    var lv: c.Ip_Us_Ip = undefined;
    try testing.expectSize(c.Ip_Us_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:38443:38463
// struct  Ip_Us_L  {
//   int *v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Ip_Us_L" {
    var lv: c.Ip_Us_L = undefined;
    try testing.expectSize(c.Ip_Us_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:38468:38488
// struct  Ip_Us_S  {
//   int *v1;
//   unsigned short v2;
//   short v3;
// };

test "Ip_Us_S" {
    var lv: c.Ip_Us_S = undefined;
    try testing.expectSize(c.Ip_Us_S, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:38493:38513
// struct  Ip_Us_Uc  {
//   int *v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Ip_Us_Uc" {
    var lv: c.Ip_Us_Uc = undefined;
    try testing.expectSize(c.Ip_Us_Uc, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:38518:38538
// struct  Ip_Us_Ui  {
//   int *v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Ip_Us_Ui" {
    var lv: c.Ip_Us_Ui = undefined;
    try testing.expectSize(c.Ip_Us_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ip_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(12, 8));
}

// From T_Snnn_xay.c:38543:38563
// struct  Ip_Us_Ul  {
//   int *v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Ip_Us_Ul" {
    var lv: c.Ip_Us_Ul = undefined;
    try testing.expectSize(c.Ip_Us_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:38568:38588
// struct  Ip_Us_Us  {
//   int *v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Ip_Us_Us" {
    var lv: c.Ip_Us_Us = undefined;
    try testing.expectSize(c.Ip_Us_Us, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(10, 6));
}

// From T_Snnn_xay.c:38593:38613
// struct  Ip_Us_Vp  {
//   int *v1;
//   unsigned short v2;
//   void *v3;
// };

test "Ip_Us_Vp" {
    var lv: c.Ip_Us_Vp = undefined;
    try testing.expectSize(c.Ip_Us_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:38618:38636
// struct  Ip_Vp  {
//   int *v1;
//   void *v2;
// };

test "Ip_Vp" {
    var lv: c.Ip_Vp = undefined;
    try testing.expectSize(c.Ip_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xay.c:39365:39385
// struct  Ip_Vp_C  {
//   int *v1;
//   void *v2;
//   char v3;
// };

test "Ip_Vp_C" {
    var lv: c.Ip_Vp_C = undefined;
    try testing.expectSize(c.Ip_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39390:39410
// struct  Ip_Vp_D  {
//   int *v1;
//   void *v2;
//   double v3;
// };

test "Ip_Vp_D" {
    var lv: c.Ip_Vp_D = undefined;
    try testing.expectSize(c.Ip_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39415:39435
// struct  Ip_Vp_F  {
//   int *v1;
//   void *v2;
//   float v3;
// };

test "Ip_Vp_F" {
    var lv: c.Ip_Vp_F = undefined;
    try testing.expectSize(c.Ip_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39440:39460
// struct  Ip_Vp_I  {
//   int *v1;
//   void *v2;
//   int v3;
// };

test "Ip_Vp_I" {
    var lv: c.Ip_Vp_I = undefined;
    try testing.expectSize(c.Ip_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39465:39485
// struct  Ip_Vp_Ip  {
//   int *v1;
//   void *v2;
//   int *v3;
// };

test "Ip_Vp_Ip" {
    var lv: c.Ip_Vp_Ip = undefined;
    try testing.expectSize(c.Ip_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39490:39510
// struct  Ip_Vp_L  {
//   int *v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Ip_Vp_L" {
    var lv: c.Ip_Vp_L = undefined;
    try testing.expectSize(c.Ip_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39515:39535
// struct  Ip_Vp_S  {
//   int *v1;
//   void *v2;
//   short v3;
// };

test "Ip_Vp_S" {
    var lv: c.Ip_Vp_S = undefined;
    try testing.expectSize(c.Ip_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39540:39560
// struct  Ip_Vp_Uc  {
//   int *v1;
//   void *v2;
//   unsigned char v3;
// };

test "Ip_Vp_Uc" {
    var lv: c.Ip_Vp_Uc = undefined;
    try testing.expectSize(c.Ip_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39565:39585
// struct  Ip_Vp_Ui  {
//   int *v1;
//   void *v2;
//   unsigned int v3;
// };

test "Ip_Vp_Ui" {
    var lv: c.Ip_Vp_Ui = undefined;
    try testing.expectSize(c.Ip_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39590:39610
// struct  Ip_Vp_Ul  {
//   int *v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Ip_Vp_Ul" {
    var lv: c.Ip_Vp_Ul = undefined;
    try testing.expectSize(c.Ip_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Ip_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39615:39635
// struct  Ip_Vp_Us  {
//   int *v1;
//   void *v2;
//   unsigned short v3;
// };

test "Ip_Vp_Us" {
    var lv: c.Ip_Vp_Us = undefined;
    try testing.expectSize(c.Ip_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39640:39660
// struct  Ip_Vp_Vp  {
//   int *v1;
//   void *v2;
//   void *v3;
// };

test "Ip_Vp_Vp" {
    var lv: c.Ip_Vp_Vp = undefined;
    try testing.expectSize(c.Ip_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Ip_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xay.c:39665:39681
// struct  L  {
//   __tsi64 v1;
// };

test "L" {
    var lv: c.L = undefined;
    try testing.expectSize(c.L, 8);
    try testing.expectAlign(c.L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Snnn_xay.c:69986:70004
// struct  L_C  {
//   __tsi64 v1;
//   char v2;
// };

test "L_C" {
    var lv: c.L_C = undefined;
    try testing.expectSize(c.L_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:70733:70753
// struct  L_C_C  {
//   __tsi64 v1;
//   char v2;
//   char v3;
// };

test "L_C_C" {
    var lv: c.L_C_C = undefined;
    try testing.expectSize(c.L_C_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xay.c:70758:70778
// struct  L_C_D  {
//   __tsi64 v1;
//   char v2;
//   double v3;
// };

test "L_C_D" {
    var lv: c.L_C_D = undefined;
    try testing.expectSize(c.L_C_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:70783:70803
// struct  L_C_F  {
//   __tsi64 v1;
//   char v2;
//   float v3;
// };

test "L_C_F" {
    var lv: c.L_C_F = undefined;
    try testing.expectSize(c.L_C_F, 16);
    try testing.expectAlign(c.L_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:70808:70828
// struct  L_C_I  {
//   __tsi64 v1;
//   char v2;
//   int v3;
// };

test "L_C_I" {
    var lv: c.L_C_I = undefined;
    try testing.expectSize(c.L_C_I, 16);
    try testing.expectAlign(c.L_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:70833:70853
// struct  L_C_Ip  {
//   __tsi64 v1;
//   char v2;
//   int *v3;
// };

test "L_C_Ip" {
    var lv: c.L_C_Ip = undefined;
    try testing.expectSize(c.L_C_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:70858:70878
// struct  L_C_L  {
//   __tsi64 v1;
//   char v2;
//   __tsi64 v3;
// };

test "L_C_L" {
    var lv: c.L_C_L = undefined;
    try testing.expectSize(c.L_C_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:70883:70903
// struct  L_C_S  {
//   __tsi64 v1;
//   char v2;
//   short v3;
// };

test "L_C_S" {
    var lv: c.L_C_S = undefined;
    try testing.expectSize(c.L_C_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:70908:70928
// struct  L_C_Uc  {
//   __tsi64 v1;
//   char v2;
//   unsigned char v3;
// };

test "L_C_Uc" {
    var lv: c.L_C_Uc = undefined;
    try testing.expectSize(c.L_C_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xay.c:70933:70953
// struct  L_C_Ui  {
//   __tsi64 v1;
//   char v2;
//   unsigned int v3;
// };

test "L_C_Ui" {
    var lv: c.L_C_Ui = undefined;
    try testing.expectSize(c.L_C_Ui, 16);
    try testing.expectAlign(c.L_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:70958:70978
// struct  L_C_Ul  {
//   __tsi64 v1;
//   char v2;
//   __tsu64 v3;
// };

test "L_C_Ul" {
    var lv: c.L_C_Ul = undefined;
    try testing.expectSize(c.L_C_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:70983:71003
// struct  L_C_Us  {
//   __tsi64 v1;
//   char v2;
//   unsigned short v3;
// };

test "L_C_Us" {
    var lv: c.L_C_Us = undefined;
    try testing.expectSize(c.L_C_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:71008:71028
// struct  L_C_Vp  {
//   __tsi64 v1;
//   char v2;
//   void *v3;
// };

test "L_C_Vp" {
    var lv: c.L_C_Vp = undefined;
    try testing.expectSize(c.L_C_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:71033:71051
// struct  L_D  {
//   __tsi64 v1;
//   double v2;
// };

test "L_D" {
    var lv: c.L_D = undefined;
    try testing.expectSize(c.L_D, 16);
    try testing.expectAlign(c.L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:71780:71800
// struct  L_D_C  {
//   __tsi64 v1;
//   double v2;
//   char v3;
// };

test "L_D_C" {
    var lv: c.L_D_C = undefined;
    try testing.expectSize(c.L_D_C, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71805:71825
// struct  L_D_D  {
//   __tsi64 v1;
//   double v2;
//   double v3;
// };

test "L_D_D" {
    var lv: c.L_D_D = undefined;
    try testing.expectSize(c.L_D_D, 24);
    try testing.expectAlign(c.L_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71830:71850
// struct  L_D_F  {
//   __tsi64 v1;
//   double v2;
//   float v3;
// };

test "L_D_F" {
    var lv: c.L_D_F = undefined;
    try testing.expectSize(c.L_D_F, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71855:71875
// struct  L_D_I  {
//   __tsi64 v1;
//   double v2;
//   int v3;
// };

test "L_D_I" {
    var lv: c.L_D_I = undefined;
    try testing.expectSize(c.L_D_I, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71880:71900
// struct  L_D_Ip  {
//   __tsi64 v1;
//   double v2;
//   int *v3;
// };

test "L_D_Ip" {
    var lv: c.L_D_Ip = undefined;
    try testing.expectSize(c.L_D_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71905:71925
// struct  L_D_L  {
//   __tsi64 v1;
//   double v2;
//   __tsi64 v3;
// };

test "L_D_L" {
    var lv: c.L_D_L = undefined;
    try testing.expectSize(c.L_D_L, 24);
    try testing.expectAlign(c.L_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71930:71950
// struct  L_D_S  {
//   __tsi64 v1;
//   double v2;
//   short v3;
// };

test "L_D_S" {
    var lv: c.L_D_S = undefined;
    try testing.expectSize(c.L_D_S, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71955:71975
// struct  L_D_Uc  {
//   __tsi64 v1;
//   double v2;
//   unsigned char v3;
// };

test "L_D_Uc" {
    var lv: c.L_D_Uc = undefined;
    try testing.expectSize(c.L_D_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:71980:72000
// struct  L_D_Ui  {
//   __tsi64 v1;
//   double v2;
//   unsigned int v3;
// };

test "L_D_Ui" {
    var lv: c.L_D_Ui = undefined;
    try testing.expectSize(c.L_D_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:72005:72025
// struct  L_D_Ul  {
//   __tsi64 v1;
//   double v2;
//   __tsu64 v3;
// };

test "L_D_Ul" {
    var lv: c.L_D_Ul = undefined;
    try testing.expectSize(c.L_D_Ul, 24);
    try testing.expectAlign(c.L_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:72030:72050
// struct  L_D_Us  {
//   __tsi64 v1;
//   double v2;
//   unsigned short v3;
// };

test "L_D_Us" {
    var lv: c.L_D_Us = undefined;
    try testing.expectSize(c.L_D_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:72055:72075
// struct  L_D_Vp  {
//   __tsi64 v1;
//   double v2;
//   void *v3;
// };

test "L_D_Vp" {
    var lv: c.L_D_Vp = undefined;
    try testing.expectSize(c.L_D_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.L_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:72080:72098
// struct  L_F  {
//   __tsi64 v1;
//   float v2;
// };

test "L_F" {
    var lv: c.L_F = undefined;
    try testing.expectSize(c.L_F, ABISELECT(16, 12));
    try testing.expectAlign(c.L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:72827:72847
// struct  L_F_C  {
//   __tsi64 v1;
//   float v2;
//   char v3;
// };

test "L_F_C" {
    var lv: c.L_F_C = undefined;
    try testing.expectSize(c.L_F_C, 16);
    try testing.expectAlign(c.L_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:72852:72872
// struct  L_F_D  {
//   __tsi64 v1;
//   float v2;
//   double v3;
// };

test "L_F_D" {
    var lv: c.L_F_D = undefined;
    try testing.expectSize(c.L_F_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:72877:72897
// struct  L_F_F  {
//   __tsi64 v1;
//   float v2;
//   float v3;
// };

test "L_F_F" {
    var lv: c.L_F_F = undefined;
    try testing.expectSize(c.L_F_F, 16);
    try testing.expectAlign(c.L_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:72902:72922
// struct  L_F_I  {
//   __tsi64 v1;
//   float v2;
//   int v3;
// };

test "L_F_I" {
    var lv: c.L_F_I = undefined;
    try testing.expectSize(c.L_F_I, 16);
    try testing.expectAlign(c.L_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:72927:72947
// struct  L_F_Ip  {
//   __tsi64 v1;
//   float v2;
//   int *v3;
// };

test "L_F_Ip" {
    var lv: c.L_F_Ip = undefined;
    try testing.expectSize(c.L_F_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:72952:72972
// struct  L_F_L  {
//   __tsi64 v1;
//   float v2;
//   __tsi64 v3;
// };

test "L_F_L" {
    var lv: c.L_F_L = undefined;
    try testing.expectSize(c.L_F_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:72977:72997
// struct  L_F_S  {
//   __tsi64 v1;
//   float v2;
//   short v3;
// };

test "L_F_S" {
    var lv: c.L_F_S = undefined;
    try testing.expectSize(c.L_F_S, 16);
    try testing.expectAlign(c.L_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73002:73022
// struct  L_F_Uc  {
//   __tsi64 v1;
//   float v2;
//   unsigned char v3;
// };

test "L_F_Uc" {
    var lv: c.L_F_Uc = undefined;
    try testing.expectSize(c.L_F_Uc, 16);
    try testing.expectAlign(c.L_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73027:73047
// struct  L_F_Ui  {
//   __tsi64 v1;
//   float v2;
//   unsigned int v3;
// };

test "L_F_Ui" {
    var lv: c.L_F_Ui = undefined;
    try testing.expectSize(c.L_F_Ui, 16);
    try testing.expectAlign(c.L_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73052:73072
// struct  L_F_Ul  {
//   __tsi64 v1;
//   float v2;
//   __tsu64 v3;
// };

test "L_F_Ul" {
    var lv: c.L_F_Ul = undefined;
    try testing.expectSize(c.L_F_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:73077:73097
// struct  L_F_Us  {
//   __tsi64 v1;
//   float v2;
//   unsigned short v3;
// };

test "L_F_Us" {
    var lv: c.L_F_Us = undefined;
    try testing.expectSize(c.L_F_Us, 16);
    try testing.expectAlign(c.L_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73102:73122
// struct  L_F_Vp  {
//   __tsi64 v1;
//   float v2;
//   void *v3;
// };

test "L_F_Vp" {
    var lv: c.L_F_Vp = undefined;
    try testing.expectSize(c.L_F_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:73127:73145
// struct  L_I  {
//   __tsi64 v1;
//   int v2;
// };

test "L_I" {
    var lv: c.L_I = undefined;
    try testing.expectSize(c.L_I, ABISELECT(16, 12));
    try testing.expectAlign(c.L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:73874:73894
// struct  L_I_C  {
//   __tsi64 v1;
//   int v2;
//   char v3;
// };

test "L_I_C" {
    var lv: c.L_I_C = undefined;
    try testing.expectSize(c.L_I_C, 16);
    try testing.expectAlign(c.L_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73899:73919
// struct  L_I_D  {
//   __tsi64 v1;
//   int v2;
//   double v3;
// };

test "L_I_D" {
    var lv: c.L_I_D = undefined;
    try testing.expectSize(c.L_I_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:73924:73944
// struct  L_I_F  {
//   __tsi64 v1;
//   int v2;
//   float v3;
// };

test "L_I_F" {
    var lv: c.L_I_F = undefined;
    try testing.expectSize(c.L_I_F, 16);
    try testing.expectAlign(c.L_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73949:73969
// struct  L_I_I  {
//   __tsi64 v1;
//   int v2;
//   int v3;
// };

test "L_I_I" {
    var lv: c.L_I_I = undefined;
    try testing.expectSize(c.L_I_I, 16);
    try testing.expectAlign(c.L_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:73974:73994
// struct  L_I_Ip  {
//   __tsi64 v1;
//   int v2;
//   int *v3;
// };

test "L_I_Ip" {
    var lv: c.L_I_Ip = undefined;
    try testing.expectSize(c.L_I_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:73999:74019
// struct  L_I_L  {
//   __tsi64 v1;
//   int v2;
//   __tsi64 v3;
// };

test "L_I_L" {
    var lv: c.L_I_L = undefined;
    try testing.expectSize(c.L_I_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74024:74044
// struct  L_I_S  {
//   __tsi64 v1;
//   int v2;
//   short v3;
// };

test "L_I_S" {
    var lv: c.L_I_S = undefined;
    try testing.expectSize(c.L_I_S, 16);
    try testing.expectAlign(c.L_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:74049:74069
// struct  L_I_Uc  {
//   __tsi64 v1;
//   int v2;
//   unsigned char v3;
// };

test "L_I_Uc" {
    var lv: c.L_I_Uc = undefined;
    try testing.expectSize(c.L_I_Uc, 16);
    try testing.expectAlign(c.L_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:74074:74094
// struct  L_I_Ui  {
//   __tsi64 v1;
//   int v2;
//   unsigned int v3;
// };

test "L_I_Ui" {
    var lv: c.L_I_Ui = undefined;
    try testing.expectSize(c.L_I_Ui, 16);
    try testing.expectAlign(c.L_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:74099:74119
// struct  L_I_Ul  {
//   __tsi64 v1;
//   int v2;
//   __tsu64 v3;
// };

test "L_I_Ul" {
    var lv: c.L_I_Ul = undefined;
    try testing.expectSize(c.L_I_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74124:74144
// struct  L_I_Us  {
//   __tsi64 v1;
//   int v2;
//   unsigned short v3;
// };

test "L_I_Us" {
    var lv: c.L_I_Us = undefined;
    try testing.expectSize(c.L_I_Us, 16);
    try testing.expectAlign(c.L_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:74149:74169
// struct  L_I_Vp  {
//   __tsi64 v1;
//   int v2;
//   void *v3;
// };

test "L_I_Vp" {
    var lv: c.L_I_Vp = undefined;
    try testing.expectSize(c.L_I_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74174:74192
// struct  L_Ip  {
//   __tsi64 v1;
//   int *v2;
// };

test "L_Ip" {
    var lv: c.L_Ip = undefined;
    try testing.expectSize(c.L_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:74921:74941
// struct  L_Ip_C  {
//   __tsi64 v1;
//   int *v2;
//   char v3;
// };

test "L_Ip_C" {
    var lv: c.L_Ip_C = undefined;
    try testing.expectSize(c.L_Ip_C, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74946:74966
// struct  L_Ip_D  {
//   __tsi64 v1;
//   int *v2;
//   double v3;
// };

test "L_Ip_D" {
    var lv: c.L_Ip_D = undefined;
    try testing.expectSize(c.L_Ip_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74971:74991
// struct  L_Ip_F  {
//   __tsi64 v1;
//   int *v2;
//   float v3;
// };

test "L_Ip_F" {
    var lv: c.L_Ip_F = undefined;
    try testing.expectSize(c.L_Ip_F, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:74996:75016
// struct  L_Ip_I  {
//   __tsi64 v1;
//   int *v2;
//   int v3;
// };

test "L_Ip_I" {
    var lv: c.L_Ip_I = undefined;
    try testing.expectSize(c.L_Ip_I, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75021:75041
// struct  L_Ip_Ip  {
//   __tsi64 v1;
//   int *v2;
//   int *v3;
// };

test "L_Ip_Ip" {
    var lv: c.L_Ip_Ip = undefined;
    try testing.expectSize(c.L_Ip_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75046:75066
// struct  L_Ip_L  {
//   __tsi64 v1;
//   int *v2;
//   __tsi64 v3;
// };

test "L_Ip_L" {
    var lv: c.L_Ip_L = undefined;
    try testing.expectSize(c.L_Ip_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75071:75091
// struct  L_Ip_S  {
//   __tsi64 v1;
//   int *v2;
//   short v3;
// };

test "L_Ip_S" {
    var lv: c.L_Ip_S = undefined;
    try testing.expectSize(c.L_Ip_S, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75096:75116
// struct  L_Ip_Uc  {
//   __tsi64 v1;
//   int *v2;
//   unsigned char v3;
// };

test "L_Ip_Uc" {
    var lv: c.L_Ip_Uc = undefined;
    try testing.expectSize(c.L_Ip_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75121:75141
// struct  L_Ip_Ui  {
//   __tsi64 v1;
//   int *v2;
//   unsigned int v3;
// };

test "L_Ip_Ui" {
    var lv: c.L_Ip_Ui = undefined;
    try testing.expectSize(c.L_Ip_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75146:75166
// struct  L_Ip_Ul  {
//   __tsi64 v1;
//   int *v2;
//   __tsu64 v3;
// };

test "L_Ip_Ul" {
    var lv: c.L_Ip_Ul = undefined;
    try testing.expectSize(c.L_Ip_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75171:75191
// struct  L_Ip_Us  {
//   __tsi64 v1;
//   int *v2;
//   unsigned short v3;
// };

test "L_Ip_Us" {
    var lv: c.L_Ip_Us = undefined;
    try testing.expectSize(c.L_Ip_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75196:75216
// struct  L_Ip_Vp  {
//   __tsi64 v1;
//   int *v2;
//   void *v3;
// };

test "L_Ip_Vp" {
    var lv: c.L_Ip_Vp = undefined;
    try testing.expectSize(c.L_Ip_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:75221:75239
// struct  L_L  {
//   __tsi64 v1;
//   __tsi64 v2;
// };

test "L_L" {
    var lv: c.L_L = undefined;
    try testing.expectSize(c.L_L, 16);
    try testing.expectAlign(c.L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:75968:75988
// struct  L_L_C  {
//   __tsi64 v1;
//   __tsi64 v2;
//   char v3;
// };

test "L_L_C" {
    var lv: c.L_L_C = undefined;
    try testing.expectSize(c.L_L_C, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:75993:76013
// struct  L_L_D  {
//   __tsi64 v1;
//   __tsi64 v2;
//   double v3;
// };

test "L_L_D" {
    var lv: c.L_L_D = undefined;
    try testing.expectSize(c.L_L_D, 24);
    try testing.expectAlign(c.L_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76018:76038
// struct  L_L_F  {
//   __tsi64 v1;
//   __tsi64 v2;
//   float v3;
// };

test "L_L_F" {
    var lv: c.L_L_F = undefined;
    try testing.expectSize(c.L_L_F, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76043:76063
// struct  L_L_I  {
//   __tsi64 v1;
//   __tsi64 v2;
//   int v3;
// };

test "L_L_I" {
    var lv: c.L_L_I = undefined;
    try testing.expectSize(c.L_L_I, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76068:76088
// struct  L_L_Ip  {
//   __tsi64 v1;
//   __tsi64 v2;
//   int *v3;
// };

test "L_L_Ip" {
    var lv: c.L_L_Ip = undefined;
    try testing.expectSize(c.L_L_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76093:76113
// struct  L_L_L  {
//   __tsi64 v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "L_L_L" {
    var lv: c.L_L_L = undefined;
    try testing.expectSize(c.L_L_L, 24);
    try testing.expectAlign(c.L_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76118:76138
// struct  L_L_S  {
//   __tsi64 v1;
//   __tsi64 v2;
//   short v3;
// };

test "L_L_S" {
    var lv: c.L_L_S = undefined;
    try testing.expectSize(c.L_L_S, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76143:76163
// struct  L_L_Uc  {
//   __tsi64 v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "L_L_Uc" {
    var lv: c.L_L_Uc = undefined;
    try testing.expectSize(c.L_L_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76168:76188
// struct  L_L_Ui  {
//   __tsi64 v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "L_L_Ui" {
    var lv: c.L_L_Ui = undefined;
    try testing.expectSize(c.L_L_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76193:76213
// struct  L_L_Ul  {
//   __tsi64 v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "L_L_Ul" {
    var lv: c.L_L_Ul = undefined;
    try testing.expectSize(c.L_L_Ul, 24);
    try testing.expectAlign(c.L_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76218:76238
// struct  L_L_Us  {
//   __tsi64 v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "L_L_Us" {
    var lv: c.L_L_Us = undefined;
    try testing.expectSize(c.L_L_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76243:76263
// struct  L_L_Vp  {
//   __tsi64 v1;
//   __tsi64 v2;
//   void *v3;
// };

test "L_L_Vp" {
    var lv: c.L_L_Vp = undefined;
    try testing.expectSize(c.L_L_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.L_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xay.c:76268:76286
// struct  L_S  {
//   __tsi64 v1;
//   short v2;
// };

test "L_S" {
    var lv: c.L_S = undefined;
    try testing.expectSize(c.L_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:77015:77035
// struct  L_S_C  {
//   __tsi64 v1;
//   short v2;
//   char v3;
// };

test "L_S_C" {
    var lv: c.L_S_C = undefined;
    try testing.expectSize(c.L_S_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:77040:77060
// struct  L_S_D  {
//   __tsi64 v1;
//   short v2;
//   double v3;
// };

test "L_S_D" {
    var lv: c.L_S_D = undefined;
    try testing.expectSize(c.L_S_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:77065:77085
// struct  L_S_F  {
//   __tsi64 v1;
//   short v2;
//   float v3;
// };

test "L_S_F" {
    var lv: c.L_S_F = undefined;
    try testing.expectSize(c.L_S_F, 16);
    try testing.expectAlign(c.L_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:77090:77110
// struct  L_S_I  {
//   __tsi64 v1;
//   short v2;
//   int v3;
// };

test "L_S_I" {
    var lv: c.L_S_I = undefined;
    try testing.expectSize(c.L_S_I, 16);
    try testing.expectAlign(c.L_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:77115:77135
// struct  L_S_Ip  {
//   __tsi64 v1;
//   short v2;
//   int *v3;
// };

test "L_S_Ip" {
    var lv: c.L_S_Ip = undefined;
    try testing.expectSize(c.L_S_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:77140:77160
// struct  L_S_L  {
//   __tsi64 v1;
//   short v2;
//   __tsi64 v3;
// };

test "L_S_L" {
    var lv: c.L_S_L = undefined;
    try testing.expectSize(c.L_S_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:77165:77185
// struct  L_S_S  {
//   __tsi64 v1;
//   short v2;
//   short v3;
// };

test "L_S_S" {
    var lv: c.L_S_S = undefined;
    try testing.expectSize(c.L_S_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:77190:77210
// struct  L_S_Uc  {
//   __tsi64 v1;
//   short v2;
//   unsigned char v3;
// };

test "L_S_Uc" {
    var lv: c.L_S_Uc = undefined;
    try testing.expectSize(c.L_S_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:77215:77235
// struct  L_S_Ui  {
//   __tsi64 v1;
//   short v2;
//   unsigned int v3;
// };

test "L_S_Ui" {
    var lv: c.L_S_Ui = undefined;
    try testing.expectSize(c.L_S_Ui, 16);
    try testing.expectAlign(c.L_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:77240:77260
// struct  L_S_Ul  {
//   __tsi64 v1;
//   short v2;
//   __tsu64 v3;
// };

test "L_S_Ul" {
    var lv: c.L_S_Ul = undefined;
    try testing.expectSize(c.L_S_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:77265:77285
// struct  L_S_Us  {
//   __tsi64 v1;
//   short v2;
//   unsigned short v3;
// };

test "L_S_Us" {
    var lv: c.L_S_Us = undefined;
    try testing.expectSize(c.L_S_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:77290:77310
// struct  L_S_Vp  {
//   __tsi64 v1;
//   short v2;
//   void *v3;
// };

test "L_S_Vp" {
    var lv: c.L_S_Vp = undefined;
    try testing.expectSize(c.L_S_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:77315:77333
// struct  L_Uc  {
//   __tsi64 v1;
//   unsigned char v2;
// };

test "L_Uc" {
    var lv: c.L_Uc = undefined;
    try testing.expectSize(c.L_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xay.c:78062:78082
// struct  L_Uc_C  {
//   __tsi64 v1;
//   unsigned char v2;
//   char v3;
// };

test "L_Uc_C" {
    var lv: c.L_Uc_C = undefined;
    try testing.expectSize(c.L_Uc_C, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xay.c:78087:78107
// struct  L_Uc_D  {
//   __tsi64 v1;
//   unsigned char v2;
//   double v3;
// };

test "L_Uc_D" {
    var lv: c.L_Uc_D = undefined;
    try testing.expectSize(c.L_Uc_D, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:78112:78132
// struct  L_Uc_F  {
//   __tsi64 v1;
//   unsigned char v2;
//   float v3;
// };

test "L_Uc_F" {
    var lv: c.L_Uc_F = undefined;
    try testing.expectSize(c.L_Uc_F, 16);
    try testing.expectAlign(c.L_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:78137:78157
// struct  L_Uc_I  {
//   __tsi64 v1;
//   unsigned char v2;
//   int v3;
// };

test "L_Uc_I" {
    var lv: c.L_Uc_I = undefined;
    try testing.expectSize(c.L_Uc_I, 16);
    try testing.expectAlign(c.L_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:78162:78182
// struct  L_Uc_Ip  {
//   __tsi64 v1;
//   unsigned char v2;
//   int *v3;
// };

test "L_Uc_Ip" {
    var lv: c.L_Uc_Ip = undefined;
    try testing.expectSize(c.L_Uc_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:78187:78207
// struct  L_Uc_L  {
//   __tsi64 v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "L_Uc_L" {
    var lv: c.L_Uc_L = undefined;
    try testing.expectSize(c.L_Uc_L, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:78212:78232
// struct  L_Uc_S  {
//   __tsi64 v1;
//   unsigned char v2;
//   short v3;
// };

test "L_Uc_S" {
    var lv: c.L_Uc_S = undefined;
    try testing.expectSize(c.L_Uc_S, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:78237:78257
// struct  L_Uc_Uc  {
//   __tsi64 v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "L_Uc_Uc" {
    var lv: c.L_Uc_Uc = undefined;
    try testing.expectSize(c.L_Uc_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xay.c:78262:78282
// struct  L_Uc_Ui  {
//   __tsi64 v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "L_Uc_Ui" {
    var lv: c.L_Uc_Ui = undefined;
    try testing.expectSize(c.L_Uc_Ui, 16);
    try testing.expectAlign(c.L_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xay.c:78287:78307
// struct  L_Uc_Ul  {
//   __tsi64 v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "L_Uc_Ul" {
    var lv: c.L_Uc_Ul = undefined;
    try testing.expectSize(c.L_Uc_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.L_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:78312:78332
// struct  L_Uc_Us  {
//   __tsi64 v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "L_Uc_Us" {
    var lv: c.L_Uc_Us = undefined;
    try testing.expectSize(c.L_Uc_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xay.c:78337:78357
// struct  L_Uc_Vp  {
//   __tsi64 v1;
//   unsigned char v2;
//   void *v3;
// };

test "L_Uc_Vp" {
    var lv: c.L_Uc_Vp = undefined;
    try testing.expectSize(c.L_Uc_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.L_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xay.c:78362:78380
// struct  L_Ui  {
//   __tsi64 v1;
//   unsigned int v2;
// };

test "L_Ui" {
    var lv: c.L_Ui = undefined;
    try testing.expectSize(c.L_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}
