const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xbb.h");
});

// From T_Snnn_xbb.c:6170:6188
// struct  Ul_C  {
//   __tsu64 v1;
//   char v2;
// };

test "Ul_C" {
    var lv: c.Ul_C = undefined;
    try testing.expectSize(c.Ul_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:6917:6937
// struct  Ul_C_C  {
//   __tsu64 v1;
//   char v2;
//   char v3;
// };

test "Ul_C_C" {
    var lv: c.Ul_C_C = undefined;
    try testing.expectSize(c.Ul_C_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xbb.c:6942:6962
// struct  Ul_C_D  {
//   __tsu64 v1;
//   char v2;
//   double v3;
// };

test "Ul_C_D" {
    var lv: c.Ul_C_D = undefined;
    try testing.expectSize(c.Ul_C_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:6967:6987
// struct  Ul_C_F  {
//   __tsu64 v1;
//   char v2;
//   float v3;
// };

test "Ul_C_F" {
    var lv: c.Ul_C_F = undefined;
    try testing.expectSize(c.Ul_C_F, 16);
    try testing.expectAlign(c.Ul_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:6992:7012
// struct  Ul_C_I  {
//   __tsu64 v1;
//   char v2;
//   int v3;
// };

test "Ul_C_I" {
    var lv: c.Ul_C_I = undefined;
    try testing.expectSize(c.Ul_C_I, 16);
    try testing.expectAlign(c.Ul_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:7017:7037
// struct  Ul_C_Ip  {
//   __tsu64 v1;
//   char v2;
//   int *v3;
// };

test "Ul_C_Ip" {
    var lv: c.Ul_C_Ip = undefined;
    try testing.expectSize(c.Ul_C_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:7042:7062
// struct  Ul_C_L  {
//   __tsu64 v1;
//   char v2;
//   __tsi64 v3;
// };

test "Ul_C_L" {
    var lv: c.Ul_C_L = undefined;
    try testing.expectSize(c.Ul_C_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:7067:7087
// struct  Ul_C_S  {
//   __tsu64 v1;
//   char v2;
//   short v3;
// };

test "Ul_C_S" {
    var lv: c.Ul_C_S = undefined;
    try testing.expectSize(c.Ul_C_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:7092:7112
// struct  Ul_C_Uc  {
//   __tsu64 v1;
//   char v2;
//   unsigned char v3;
// };

test "Ul_C_Uc" {
    var lv: c.Ul_C_Uc = undefined;
    try testing.expectSize(c.Ul_C_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xbb.c:7117:7137
// struct  Ul_C_Ui  {
//   __tsu64 v1;
//   char v2;
//   unsigned int v3;
// };

test "Ul_C_Ui" {
    var lv: c.Ul_C_Ui = undefined;
    try testing.expectSize(c.Ul_C_Ui, 16);
    try testing.expectAlign(c.Ul_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:7142:7162
// struct  Ul_C_Ul  {
//   __tsu64 v1;
//   char v2;
//   __tsu64 v3;
// };

test "Ul_C_Ul" {
    var lv: c.Ul_C_Ul = undefined;
    try testing.expectSize(c.Ul_C_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:7167:7187
// struct  Ul_C_Us  {
//   __tsu64 v1;
//   char v2;
//   unsigned short v3;
// };

test "Ul_C_Us" {
    var lv: c.Ul_C_Us = undefined;
    try testing.expectSize(c.Ul_C_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:7192:7212
// struct  Ul_C_Vp  {
//   __tsu64 v1;
//   char v2;
//   void *v3;
// };

test "Ul_C_Vp" {
    var lv: c.Ul_C_Vp = undefined;
    try testing.expectSize(c.Ul_C_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:7217:7235
// struct  Ul_D  {
//   __tsu64 v1;
//   double v2;
// };

test "Ul_D" {
    var lv: c.Ul_D = undefined;
    try testing.expectSize(c.Ul_D, 16);
    try testing.expectAlign(c.Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:7964:7984
// struct  Ul_D_C  {
//   __tsu64 v1;
//   double v2;
//   char v3;
// };

test "Ul_D_C" {
    var lv: c.Ul_D_C = undefined;
    try testing.expectSize(c.Ul_D_C, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:7989:8009
// struct  Ul_D_D  {
//   __tsu64 v1;
//   double v2;
//   double v3;
// };

test "Ul_D_D" {
    var lv: c.Ul_D_D = undefined;
    try testing.expectSize(c.Ul_D_D, 24);
    try testing.expectAlign(c.Ul_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8014:8034
// struct  Ul_D_F  {
//   __tsu64 v1;
//   double v2;
//   float v3;
// };

test "Ul_D_F" {
    var lv: c.Ul_D_F = undefined;
    try testing.expectSize(c.Ul_D_F, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8039:8059
// struct  Ul_D_I  {
//   __tsu64 v1;
//   double v2;
//   int v3;
// };

test "Ul_D_I" {
    var lv: c.Ul_D_I = undefined;
    try testing.expectSize(c.Ul_D_I, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8064:8084
// struct  Ul_D_Ip  {
//   __tsu64 v1;
//   double v2;
//   int *v3;
// };

test "Ul_D_Ip" {
    var lv: c.Ul_D_Ip = undefined;
    try testing.expectSize(c.Ul_D_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8089:8109
// struct  Ul_D_L  {
//   __tsu64 v1;
//   double v2;
//   __tsi64 v3;
// };

test "Ul_D_L" {
    var lv: c.Ul_D_L = undefined;
    try testing.expectSize(c.Ul_D_L, 24);
    try testing.expectAlign(c.Ul_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8114:8134
// struct  Ul_D_S  {
//   __tsu64 v1;
//   double v2;
//   short v3;
// };

test "Ul_D_S" {
    var lv: c.Ul_D_S = undefined;
    try testing.expectSize(c.Ul_D_S, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8139:8159
// struct  Ul_D_Uc  {
//   __tsu64 v1;
//   double v2;
//   unsigned char v3;
// };

test "Ul_D_Uc" {
    var lv: c.Ul_D_Uc = undefined;
    try testing.expectSize(c.Ul_D_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8164:8184
// struct  Ul_D_Ui  {
//   __tsu64 v1;
//   double v2;
//   unsigned int v3;
// };

test "Ul_D_Ui" {
    var lv: c.Ul_D_Ui = undefined;
    try testing.expectSize(c.Ul_D_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8189:8209
// struct  Ul_D_Ul  {
//   __tsu64 v1;
//   double v2;
//   __tsu64 v3;
// };

test "Ul_D_Ul" {
    var lv: c.Ul_D_Ul = undefined;
    try testing.expectSize(c.Ul_D_Ul, 24);
    try testing.expectAlign(c.Ul_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8214:8234
// struct  Ul_D_Us  {
//   __tsu64 v1;
//   double v2;
//   unsigned short v3;
// };

test "Ul_D_Us" {
    var lv: c.Ul_D_Us = undefined;
    try testing.expectSize(c.Ul_D_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8239:8259
// struct  Ul_D_Vp  {
//   __tsu64 v1;
//   double v2;
//   void *v3;
// };

test "Ul_D_Vp" {
    var lv: c.Ul_D_Vp = undefined;
    try testing.expectSize(c.Ul_D_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:8264:8282
// struct  Ul_F  {
//   __tsu64 v1;
//   float v2;
// };

test "Ul_F" {
    var lv: c.Ul_F = undefined;
    try testing.expectSize(c.Ul_F, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:9011:9031
// struct  Ul_F_C  {
//   __tsu64 v1;
//   float v2;
//   char v3;
// };

test "Ul_F_C" {
    var lv: c.Ul_F_C = undefined;
    try testing.expectSize(c.Ul_F_C, 16);
    try testing.expectAlign(c.Ul_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9036:9056
// struct  Ul_F_D  {
//   __tsu64 v1;
//   float v2;
//   double v3;
// };

test "Ul_F_D" {
    var lv: c.Ul_F_D = undefined;
    try testing.expectSize(c.Ul_F_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:9061:9081
// struct  Ul_F_F  {
//   __tsu64 v1;
//   float v2;
//   float v3;
// };

test "Ul_F_F" {
    var lv: c.Ul_F_F = undefined;
    try testing.expectSize(c.Ul_F_F, 16);
    try testing.expectAlign(c.Ul_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9086:9106
// struct  Ul_F_I  {
//   __tsu64 v1;
//   float v2;
//   int v3;
// };

test "Ul_F_I" {
    var lv: c.Ul_F_I = undefined;
    try testing.expectSize(c.Ul_F_I, 16);
    try testing.expectAlign(c.Ul_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9111:9131
// struct  Ul_F_Ip  {
//   __tsu64 v1;
//   float v2;
//   int *v3;
// };

test "Ul_F_Ip" {
    var lv: c.Ul_F_Ip = undefined;
    try testing.expectSize(c.Ul_F_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:9136:9156
// struct  Ul_F_L  {
//   __tsu64 v1;
//   float v2;
//   __tsi64 v3;
// };

test "Ul_F_L" {
    var lv: c.Ul_F_L = undefined;
    try testing.expectSize(c.Ul_F_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:9161:9181
// struct  Ul_F_S  {
//   __tsu64 v1;
//   float v2;
//   short v3;
// };

test "Ul_F_S" {
    var lv: c.Ul_F_S = undefined;
    try testing.expectSize(c.Ul_F_S, 16);
    try testing.expectAlign(c.Ul_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9186:9206
// struct  Ul_F_Uc  {
//   __tsu64 v1;
//   float v2;
//   unsigned char v3;
// };

test "Ul_F_Uc" {
    var lv: c.Ul_F_Uc = undefined;
    try testing.expectSize(c.Ul_F_Uc, 16);
    try testing.expectAlign(c.Ul_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9211:9231
// struct  Ul_F_Ui  {
//   __tsu64 v1;
//   float v2;
//   unsigned int v3;
// };

test "Ul_F_Ui" {
    var lv: c.Ul_F_Ui = undefined;
    try testing.expectSize(c.Ul_F_Ui, 16);
    try testing.expectAlign(c.Ul_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9236:9256
// struct  Ul_F_Ul  {
//   __tsu64 v1;
//   float v2;
//   __tsu64 v3;
// };

test "Ul_F_Ul" {
    var lv: c.Ul_F_Ul = undefined;
    try testing.expectSize(c.Ul_F_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:9261:9281
// struct  Ul_F_Us  {
//   __tsu64 v1;
//   float v2;
//   unsigned short v3;
// };

test "Ul_F_Us" {
    var lv: c.Ul_F_Us = undefined;
    try testing.expectSize(c.Ul_F_Us, 16);
    try testing.expectAlign(c.Ul_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:9286:9306
// struct  Ul_F_Vp  {
//   __tsu64 v1;
//   float v2;
//   void *v3;
// };

test "Ul_F_Vp" {
    var lv: c.Ul_F_Vp = undefined;
    try testing.expectSize(c.Ul_F_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:9311:9329
// struct  Ul_I  {
//   __tsu64 v1;
//   int v2;
// };

test "Ul_I" {
    var lv: c.Ul_I = undefined;
    try testing.expectSize(c.Ul_I, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:10058:10078
// struct  Ul_I_C  {
//   __tsu64 v1;
//   int v2;
//   char v3;
// };

test "Ul_I_C" {
    var lv: c.Ul_I_C = undefined;
    try testing.expectSize(c.Ul_I_C, 16);
    try testing.expectAlign(c.Ul_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10083:10103
// struct  Ul_I_D  {
//   __tsu64 v1;
//   int v2;
//   double v3;
// };

test "Ul_I_D" {
    var lv: c.Ul_I_D = undefined;
    try testing.expectSize(c.Ul_I_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:10108:10128
// struct  Ul_I_F  {
//   __tsu64 v1;
//   int v2;
//   float v3;
// };

test "Ul_I_F" {
    var lv: c.Ul_I_F = undefined;
    try testing.expectSize(c.Ul_I_F, 16);
    try testing.expectAlign(c.Ul_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10133:10153
// struct  Ul_I_I  {
//   __tsu64 v1;
//   int v2;
//   int v3;
// };

test "Ul_I_I" {
    var lv: c.Ul_I_I = undefined;
    try testing.expectSize(c.Ul_I_I, 16);
    try testing.expectAlign(c.Ul_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10158:10178
// struct  Ul_I_Ip  {
//   __tsu64 v1;
//   int v2;
//   int *v3;
// };

test "Ul_I_Ip" {
    var lv: c.Ul_I_Ip = undefined;
    try testing.expectSize(c.Ul_I_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:10183:10203
// struct  Ul_I_L  {
//   __tsu64 v1;
//   int v2;
//   __tsi64 v3;
// };

test "Ul_I_L" {
    var lv: c.Ul_I_L = undefined;
    try testing.expectSize(c.Ul_I_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:10208:10228
// struct  Ul_I_S  {
//   __tsu64 v1;
//   int v2;
//   short v3;
// };

test "Ul_I_S" {
    var lv: c.Ul_I_S = undefined;
    try testing.expectSize(c.Ul_I_S, 16);
    try testing.expectAlign(c.Ul_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10233:10253
// struct  Ul_I_Uc  {
//   __tsu64 v1;
//   int v2;
//   unsigned char v3;
// };

test "Ul_I_Uc" {
    var lv: c.Ul_I_Uc = undefined;
    try testing.expectSize(c.Ul_I_Uc, 16);
    try testing.expectAlign(c.Ul_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10258:10278
// struct  Ul_I_Ui  {
//   __tsu64 v1;
//   int v2;
//   unsigned int v3;
// };

test "Ul_I_Ui" {
    var lv: c.Ul_I_Ui = undefined;
    try testing.expectSize(c.Ul_I_Ui, 16);
    try testing.expectAlign(c.Ul_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10283:10303
// struct  Ul_I_Ul  {
//   __tsu64 v1;
//   int v2;
//   __tsu64 v3;
// };

test "Ul_I_Ul" {
    var lv: c.Ul_I_Ul = undefined;
    try testing.expectSize(c.Ul_I_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:10308:10328
// struct  Ul_I_Us  {
//   __tsu64 v1;
//   int v2;
//   unsigned short v3;
// };

test "Ul_I_Us" {
    var lv: c.Ul_I_Us = undefined;
    try testing.expectSize(c.Ul_I_Us, 16);
    try testing.expectAlign(c.Ul_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:10333:10353
// struct  Ul_I_Vp  {
//   __tsu64 v1;
//   int v2;
//   void *v3;
// };

test "Ul_I_Vp" {
    var lv: c.Ul_I_Vp = undefined;
    try testing.expectSize(c.Ul_I_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:10358:10376
// struct  Ul_Ip  {
//   __tsu64 v1;
//   int *v2;
// };

test "Ul_Ip" {
    var lv: c.Ul_Ip = undefined;
    try testing.expectSize(c.Ul_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:11105:11125
// struct  Ul_Ip_C  {
//   __tsu64 v1;
//   int *v2;
//   char v3;
// };

test "Ul_Ip_C" {
    var lv: c.Ul_Ip_C = undefined;
    try testing.expectSize(c.Ul_Ip_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11130:11150
// struct  Ul_Ip_D  {
//   __tsu64 v1;
//   int *v2;
//   double v3;
// };

test "Ul_Ip_D" {
    var lv: c.Ul_Ip_D = undefined;
    try testing.expectSize(c.Ul_Ip_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11155:11175
// struct  Ul_Ip_F  {
//   __tsu64 v1;
//   int *v2;
//   float v3;
// };

test "Ul_Ip_F" {
    var lv: c.Ul_Ip_F = undefined;
    try testing.expectSize(c.Ul_Ip_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11180:11200
// struct  Ul_Ip_I  {
//   __tsu64 v1;
//   int *v2;
//   int v3;
// };

test "Ul_Ip_I" {
    var lv: c.Ul_Ip_I = undefined;
    try testing.expectSize(c.Ul_Ip_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11205:11225
// struct  Ul_Ip_Ip  {
//   __tsu64 v1;
//   int *v2;
//   int *v3;
// };

test "Ul_Ip_Ip" {
    var lv: c.Ul_Ip_Ip = undefined;
    try testing.expectSize(c.Ul_Ip_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11230:11250
// struct  Ul_Ip_L  {
//   __tsu64 v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Ul_Ip_L" {
    var lv: c.Ul_Ip_L = undefined;
    try testing.expectSize(c.Ul_Ip_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11255:11275
// struct  Ul_Ip_S  {
//   __tsu64 v1;
//   int *v2;
//   short v3;
// };

test "Ul_Ip_S" {
    var lv: c.Ul_Ip_S = undefined;
    try testing.expectSize(c.Ul_Ip_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11280:11300
// struct  Ul_Ip_Uc  {
//   __tsu64 v1;
//   int *v2;
//   unsigned char v3;
// };

test "Ul_Ip_Uc" {
    var lv: c.Ul_Ip_Uc = undefined;
    try testing.expectSize(c.Ul_Ip_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11305:11325
// struct  Ul_Ip_Ui  {
//   __tsu64 v1;
//   int *v2;
//   unsigned int v3;
// };

test "Ul_Ip_Ui" {
    var lv: c.Ul_Ip_Ui = undefined;
    try testing.expectSize(c.Ul_Ip_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11330:11350
// struct  Ul_Ip_Ul  {
//   __tsu64 v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Ul_Ip_Ul" {
    var lv: c.Ul_Ip_Ul = undefined;
    try testing.expectSize(c.Ul_Ip_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11355:11375
// struct  Ul_Ip_Us  {
//   __tsu64 v1;
//   int *v2;
//   unsigned short v3;
// };

test "Ul_Ip_Us" {
    var lv: c.Ul_Ip_Us = undefined;
    try testing.expectSize(c.Ul_Ip_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11380:11400
// struct  Ul_Ip_Vp  {
//   __tsu64 v1;
//   int *v2;
//   void *v3;
// };

test "Ul_Ip_Vp" {
    var lv: c.Ul_Ip_Vp = undefined;
    try testing.expectSize(c.Ul_Ip_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:11405:11423
// struct  Ul_L  {
//   __tsu64 v1;
//   __tsi64 v2;
// };

test "Ul_L" {
    var lv: c.Ul_L = undefined;
    try testing.expectSize(c.Ul_L, 16);
    try testing.expectAlign(c.Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:12152:12172
// struct  Ul_L_C  {
//   __tsu64 v1;
//   __tsi64 v2;
//   char v3;
// };

test "Ul_L_C" {
    var lv: c.Ul_L_C = undefined;
    try testing.expectSize(c.Ul_L_C, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12177:12197
// struct  Ul_L_D  {
//   __tsu64 v1;
//   __tsi64 v2;
//   double v3;
// };

test "Ul_L_D" {
    var lv: c.Ul_L_D = undefined;
    try testing.expectSize(c.Ul_L_D, 24);
    try testing.expectAlign(c.Ul_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12202:12222
// struct  Ul_L_F  {
//   __tsu64 v1;
//   __tsi64 v2;
//   float v3;
// };

test "Ul_L_F" {
    var lv: c.Ul_L_F = undefined;
    try testing.expectSize(c.Ul_L_F, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12227:12247
// struct  Ul_L_I  {
//   __tsu64 v1;
//   __tsi64 v2;
//   int v3;
// };

test "Ul_L_I" {
    var lv: c.Ul_L_I = undefined;
    try testing.expectSize(c.Ul_L_I, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12252:12272
// struct  Ul_L_Ip  {
//   __tsu64 v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Ul_L_Ip" {
    var lv: c.Ul_L_Ip = undefined;
    try testing.expectSize(c.Ul_L_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12277:12297
// struct  Ul_L_L  {
//   __tsu64 v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Ul_L_L" {
    var lv: c.Ul_L_L = undefined;
    try testing.expectSize(c.Ul_L_L, 24);
    try testing.expectAlign(c.Ul_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12302:12322
// struct  Ul_L_S  {
//   __tsu64 v1;
//   __tsi64 v2;
//   short v3;
// };

test "Ul_L_S" {
    var lv: c.Ul_L_S = undefined;
    try testing.expectSize(c.Ul_L_S, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12327:12347
// struct  Ul_L_Uc  {
//   __tsu64 v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Ul_L_Uc" {
    var lv: c.Ul_L_Uc = undefined;
    try testing.expectSize(c.Ul_L_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12352:12372
// struct  Ul_L_Ui  {
//   __tsu64 v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Ul_L_Ui" {
    var lv: c.Ul_L_Ui = undefined;
    try testing.expectSize(c.Ul_L_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12377:12397
// struct  Ul_L_Ul  {
//   __tsu64 v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Ul_L_Ul" {
    var lv: c.Ul_L_Ul = undefined;
    try testing.expectSize(c.Ul_L_Ul, 24);
    try testing.expectAlign(c.Ul_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12402:12422
// struct  Ul_L_Us  {
//   __tsu64 v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Ul_L_Us" {
    var lv: c.Ul_L_Us = undefined;
    try testing.expectSize(c.Ul_L_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12427:12447
// struct  Ul_L_Vp  {
//   __tsu64 v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Ul_L_Vp" {
    var lv: c.Ul_L_Vp = undefined;
    try testing.expectSize(c.Ul_L_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:12452:12470
// struct  Ul_S  {
//   __tsu64 v1;
//   short v2;
// };

test "Ul_S" {
    var lv: c.Ul_S = undefined;
    try testing.expectSize(c.Ul_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:13199:13219
// struct  Ul_S_C  {
//   __tsu64 v1;
//   short v2;
//   char v3;
// };

test "Ul_S_C" {
    var lv: c.Ul_S_C = undefined;
    try testing.expectSize(c.Ul_S_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:13224:13244
// struct  Ul_S_D  {
//   __tsu64 v1;
//   short v2;
//   double v3;
// };

test "Ul_S_D" {
    var lv: c.Ul_S_D = undefined;
    try testing.expectSize(c.Ul_S_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:13249:13269
// struct  Ul_S_F  {
//   __tsu64 v1;
//   short v2;
//   float v3;
// };

test "Ul_S_F" {
    var lv: c.Ul_S_F = undefined;
    try testing.expectSize(c.Ul_S_F, 16);
    try testing.expectAlign(c.Ul_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:13274:13294
// struct  Ul_S_I  {
//   __tsu64 v1;
//   short v2;
//   int v3;
// };

test "Ul_S_I" {
    var lv: c.Ul_S_I = undefined;
    try testing.expectSize(c.Ul_S_I, 16);
    try testing.expectAlign(c.Ul_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:13299:13319
// struct  Ul_S_Ip  {
//   __tsu64 v1;
//   short v2;
//   int *v3;
// };

test "Ul_S_Ip" {
    var lv: c.Ul_S_Ip = undefined;
    try testing.expectSize(c.Ul_S_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:13324:13344
// struct  Ul_S_L  {
//   __tsu64 v1;
//   short v2;
//   __tsi64 v3;
// };

test "Ul_S_L" {
    var lv: c.Ul_S_L = undefined;
    try testing.expectSize(c.Ul_S_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:13349:13369
// struct  Ul_S_S  {
//   __tsu64 v1;
//   short v2;
//   short v3;
// };

test "Ul_S_S" {
    var lv: c.Ul_S_S = undefined;
    try testing.expectSize(c.Ul_S_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:13374:13394
// struct  Ul_S_Uc  {
//   __tsu64 v1;
//   short v2;
//   unsigned char v3;
// };

test "Ul_S_Uc" {
    var lv: c.Ul_S_Uc = undefined;
    try testing.expectSize(c.Ul_S_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:13399:13419
// struct  Ul_S_Ui  {
//   __tsu64 v1;
//   short v2;
//   unsigned int v3;
// };

test "Ul_S_Ui" {
    var lv: c.Ul_S_Ui = undefined;
    try testing.expectSize(c.Ul_S_Ui, 16);
    try testing.expectAlign(c.Ul_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:13424:13444
// struct  Ul_S_Ul  {
//   __tsu64 v1;
//   short v2;
//   __tsu64 v3;
// };

test "Ul_S_Ul" {
    var lv: c.Ul_S_Ul = undefined;
    try testing.expectSize(c.Ul_S_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:13449:13469
// struct  Ul_S_Us  {
//   __tsu64 v1;
//   short v2;
//   unsigned short v3;
// };

test "Ul_S_Us" {
    var lv: c.Ul_S_Us = undefined;
    try testing.expectSize(c.Ul_S_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:13474:13494
// struct  Ul_S_Vp  {
//   __tsu64 v1;
//   short v2;
//   void *v3;
// };

test "Ul_S_Vp" {
    var lv: c.Ul_S_Vp = undefined;
    try testing.expectSize(c.Ul_S_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:13499:13517
// struct  Ul_Uc  {
//   __tsu64 v1;
//   unsigned char v2;
// };

test "Ul_Uc" {
    var lv: c.Ul_Uc = undefined;
    try testing.expectSize(c.Ul_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:14246:14266
// struct  Ul_Uc_C  {
//   __tsu64 v1;
//   unsigned char v2;
//   char v3;
// };

test "Ul_Uc_C" {
    var lv: c.Ul_Uc_C = undefined;
    try testing.expectSize(c.Ul_Uc_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xbb.c:14271:14291
// struct  Ul_Uc_D  {
//   __tsu64 v1;
//   unsigned char v2;
//   double v3;
// };

test "Ul_Uc_D" {
    var lv: c.Ul_Uc_D = undefined;
    try testing.expectSize(c.Ul_Uc_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:14296:14316
// struct  Ul_Uc_F  {
//   __tsu64 v1;
//   unsigned char v2;
//   float v3;
// };

test "Ul_Uc_F" {
    var lv: c.Ul_Uc_F = undefined;
    try testing.expectSize(c.Ul_Uc_F, 16);
    try testing.expectAlign(c.Ul_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:14321:14341
// struct  Ul_Uc_I  {
//   __tsu64 v1;
//   unsigned char v2;
//   int v3;
// };

test "Ul_Uc_I" {
    var lv: c.Ul_Uc_I = undefined;
    try testing.expectSize(c.Ul_Uc_I, 16);
    try testing.expectAlign(c.Ul_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:14346:14366
// struct  Ul_Uc_Ip  {
//   __tsu64 v1;
//   unsigned char v2;
//   int *v3;
// };

test "Ul_Uc_Ip" {
    var lv: c.Ul_Uc_Ip = undefined;
    try testing.expectSize(c.Ul_Uc_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:14371:14391
// struct  Ul_Uc_L  {
//   __tsu64 v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Ul_Uc_L" {
    var lv: c.Ul_Uc_L = undefined;
    try testing.expectSize(c.Ul_Uc_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:14396:14416
// struct  Ul_Uc_S  {
//   __tsu64 v1;
//   unsigned char v2;
//   short v3;
// };

test "Ul_Uc_S" {
    var lv: c.Ul_Uc_S = undefined;
    try testing.expectSize(c.Ul_Uc_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:14421:14441
// struct  Ul_Uc_Uc  {
//   __tsu64 v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Ul_Uc_Uc" {
    var lv: c.Ul_Uc_Uc = undefined;
    try testing.expectSize(c.Ul_Uc_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xbb.c:14446:14466
// struct  Ul_Uc_Ui  {
//   __tsu64 v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Ul_Uc_Ui" {
    var lv: c.Ul_Uc_Ui = undefined;
    try testing.expectSize(c.Ul_Uc_Ui, 16);
    try testing.expectAlign(c.Ul_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:14471:14491
// struct  Ul_Uc_Ul  {
//   __tsu64 v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Ul_Uc_Ul" {
    var lv: c.Ul_Uc_Ul = undefined;
    try testing.expectSize(c.Ul_Uc_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:14496:14516
// struct  Ul_Uc_Us  {
//   __tsu64 v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Ul_Uc_Us" {
    var lv: c.Ul_Uc_Us = undefined;
    try testing.expectSize(c.Ul_Uc_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:14521:14541
// struct  Ul_Uc_Vp  {
//   __tsu64 v1;
//   unsigned char v2;
//   void *v3;
// };

test "Ul_Uc_Vp" {
    var lv: c.Ul_Uc_Vp = undefined;
    try testing.expectSize(c.Ul_Uc_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:14546:14564
// struct  Ul_Ui  {
//   __tsu64 v1;
//   unsigned int v2;
// };

test "Ul_Ui" {
    var lv: c.Ul_Ui = undefined;
    try testing.expectSize(c.Ul_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:15293:15313
// struct  Ul_Ui_C  {
//   __tsu64 v1;
//   unsigned int v2;
//   char v3;
// };

test "Ul_Ui_C" {
    var lv: c.Ul_Ui_C = undefined;
    try testing.expectSize(c.Ul_Ui_C, 16);
    try testing.expectAlign(c.Ul_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15318:15338
// struct  Ul_Ui_D  {
//   __tsu64 v1;
//   unsigned int v2;
//   double v3;
// };

test "Ul_Ui_D" {
    var lv: c.Ul_Ui_D = undefined;
    try testing.expectSize(c.Ul_Ui_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:15343:15363
// struct  Ul_Ui_F  {
//   __tsu64 v1;
//   unsigned int v2;
//   float v3;
// };

test "Ul_Ui_F" {
    var lv: c.Ul_Ui_F = undefined;
    try testing.expectSize(c.Ul_Ui_F, 16);
    try testing.expectAlign(c.Ul_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15368:15388
// struct  Ul_Ui_I  {
//   __tsu64 v1;
//   unsigned int v2;
//   int v3;
// };

test "Ul_Ui_I" {
    var lv: c.Ul_Ui_I = undefined;
    try testing.expectSize(c.Ul_Ui_I, 16);
    try testing.expectAlign(c.Ul_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15393:15413
// struct  Ul_Ui_Ip  {
//   __tsu64 v1;
//   unsigned int v2;
//   int *v3;
// };

test "Ul_Ui_Ip" {
    var lv: c.Ul_Ui_Ip = undefined;
    try testing.expectSize(c.Ul_Ui_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:15418:15438
// struct  Ul_Ui_L  {
//   __tsu64 v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Ul_Ui_L" {
    var lv: c.Ul_Ui_L = undefined;
    try testing.expectSize(c.Ul_Ui_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:15443:15463
// struct  Ul_Ui_S  {
//   __tsu64 v1;
//   unsigned int v2;
//   short v3;
// };

test "Ul_Ui_S" {
    var lv: c.Ul_Ui_S = undefined;
    try testing.expectSize(c.Ul_Ui_S, 16);
    try testing.expectAlign(c.Ul_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15468:15488
// struct  Ul_Ui_Uc  {
//   __tsu64 v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Ul_Ui_Uc" {
    var lv: c.Ul_Ui_Uc = undefined;
    try testing.expectSize(c.Ul_Ui_Uc, 16);
    try testing.expectAlign(c.Ul_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15493:15513
// struct  Ul_Ui_Ui  {
//   __tsu64 v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Ul_Ui_Ui" {
    var lv: c.Ul_Ui_Ui = undefined;
    try testing.expectSize(c.Ul_Ui_Ui, 16);
    try testing.expectAlign(c.Ul_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15518:15538
// struct  Ul_Ui_Ul  {
//   __tsu64 v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Ul_Ui_Ul" {
    var lv: c.Ul_Ui_Ul = undefined;
    try testing.expectSize(c.Ul_Ui_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:15543:15563
// struct  Ul_Ui_Us  {
//   __tsu64 v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Ul_Ui_Us" {
    var lv: c.Ul_Ui_Us = undefined;
    try testing.expectSize(c.Ul_Ui_Us, 16);
    try testing.expectAlign(c.Ul_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:15568:15588
// struct  Ul_Ui_Vp  {
//   __tsu64 v1;
//   unsigned int v2;
//   void *v3;
// };

test "Ul_Ui_Vp" {
    var lv: c.Ul_Ui_Vp = undefined;
    try testing.expectSize(c.Ul_Ui_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:15593:15611
// struct  Ul_Ul  {
//   __tsu64 v1;
//   __tsu64 v2;
// };

test "Ul_Ul" {
    var lv: c.Ul_Ul = undefined;
    try testing.expectSize(c.Ul_Ul, 16);
    try testing.expectAlign(c.Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:16340:16360
// struct  Ul_Ul_C  {
//   __tsu64 v1;
//   __tsu64 v2;
//   char v3;
// };

test "Ul_Ul_C" {
    var lv: c.Ul_Ul_C = undefined;
    try testing.expectSize(c.Ul_Ul_C, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16365:16385
// struct  Ul_Ul_D  {
//   __tsu64 v1;
//   __tsu64 v2;
//   double v3;
// };

test "Ul_Ul_D" {
    var lv: c.Ul_Ul_D = undefined;
    try testing.expectSize(c.Ul_Ul_D, 24);
    try testing.expectAlign(c.Ul_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16390:16410
// struct  Ul_Ul_F  {
//   __tsu64 v1;
//   __tsu64 v2;
//   float v3;
// };

test "Ul_Ul_F" {
    var lv: c.Ul_Ul_F = undefined;
    try testing.expectSize(c.Ul_Ul_F, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16415:16435
// struct  Ul_Ul_I  {
//   __tsu64 v1;
//   __tsu64 v2;
//   int v3;
// };

test "Ul_Ul_I" {
    var lv: c.Ul_Ul_I = undefined;
    try testing.expectSize(c.Ul_Ul_I, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16440:16460
// struct  Ul_Ul_Ip  {
//   __tsu64 v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Ul_Ul_Ip" {
    var lv: c.Ul_Ul_Ip = undefined;
    try testing.expectSize(c.Ul_Ul_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16465:16485
// struct  Ul_Ul_L  {
//   __tsu64 v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Ul_Ul_L" {
    var lv: c.Ul_Ul_L = undefined;
    try testing.expectSize(c.Ul_Ul_L, 24);
    try testing.expectAlign(c.Ul_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16490:16510
// struct  Ul_Ul_S  {
//   __tsu64 v1;
//   __tsu64 v2;
//   short v3;
// };

test "Ul_Ul_S" {
    var lv: c.Ul_Ul_S = undefined;
    try testing.expectSize(c.Ul_Ul_S, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16515:16535
// struct  Ul_Ul_Uc  {
//   __tsu64 v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Ul_Ul_Uc" {
    var lv: c.Ul_Ul_Uc = undefined;
    try testing.expectSize(c.Ul_Ul_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16540:16560
// struct  Ul_Ul_Ui  {
//   __tsu64 v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Ul_Ul_Ui" {
    var lv: c.Ul_Ul_Ui = undefined;
    try testing.expectSize(c.Ul_Ul_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16565:16585
// struct  Ul_Ul_Ul  {
//   __tsu64 v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Ul_Ul_Ul" {
    var lv: c.Ul_Ul_Ul = undefined;
    try testing.expectSize(c.Ul_Ul_Ul, 24);
    try testing.expectAlign(c.Ul_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16590:16610
// struct  Ul_Ul_Us  {
//   __tsu64 v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Ul_Ul_Us" {
    var lv: c.Ul_Ul_Us = undefined;
    try testing.expectSize(c.Ul_Ul_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16615:16635
// struct  Ul_Ul_Vp  {
//   __tsu64 v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Ul_Ul_Vp" {
    var lv: c.Ul_Ul_Vp = undefined;
    try testing.expectSize(c.Ul_Ul_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xbb.c:16640:16658
// struct  Ul_Us  {
//   __tsu64 v1;
//   unsigned short v2;
// };

test "Ul_Us" {
    var lv: c.Ul_Us = undefined;
    try testing.expectSize(c.Ul_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:17387:17407
// struct  Ul_Us_C  {
//   __tsu64 v1;
//   unsigned short v2;
//   char v3;
// };

test "Ul_Us_C" {
    var lv: c.Ul_Us_C = undefined;
    try testing.expectSize(c.Ul_Us_C, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:17412:17432
// struct  Ul_Us_D  {
//   __tsu64 v1;
//   unsigned short v2;
//   double v3;
// };

test "Ul_Us_D" {
    var lv: c.Ul_Us_D = undefined;
    try testing.expectSize(c.Ul_Us_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:17437:17457
// struct  Ul_Us_F  {
//   __tsu64 v1;
//   unsigned short v2;
//   float v3;
// };

test "Ul_Us_F" {
    var lv: c.Ul_Us_F = undefined;
    try testing.expectSize(c.Ul_Us_F, 16);
    try testing.expectAlign(c.Ul_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:17462:17482
// struct  Ul_Us_I  {
//   __tsu64 v1;
//   unsigned short v2;
//   int v3;
// };

test "Ul_Us_I" {
    var lv: c.Ul_Us_I = undefined;
    try testing.expectSize(c.Ul_Us_I, 16);
    try testing.expectAlign(c.Ul_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:17487:17507
// struct  Ul_Us_Ip  {
//   __tsu64 v1;
//   unsigned short v2;
//   int *v3;
// };

test "Ul_Us_Ip" {
    var lv: c.Ul_Us_Ip = undefined;
    try testing.expectSize(c.Ul_Us_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:17512:17532
// struct  Ul_Us_L  {
//   __tsu64 v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Ul_Us_L" {
    var lv: c.Ul_Us_L = undefined;
    try testing.expectSize(c.Ul_Us_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:17537:17557
// struct  Ul_Us_S  {
//   __tsu64 v1;
//   unsigned short v2;
//   short v3;
// };

test "Ul_Us_S" {
    var lv: c.Ul_Us_S = undefined;
    try testing.expectSize(c.Ul_Us_S, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:17562:17582
// struct  Ul_Us_Uc  {
//   __tsu64 v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Ul_Us_Uc" {
    var lv: c.Ul_Us_Uc = undefined;
    try testing.expectSize(c.Ul_Us_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:17587:17607
// struct  Ul_Us_Ui  {
//   __tsu64 v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Ul_Us_Ui" {
    var lv: c.Ul_Us_Ui = undefined;
    try testing.expectSize(c.Ul_Us_Ui, 16);
    try testing.expectAlign(c.Ul_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xbb.c:17612:17632
// struct  Ul_Us_Ul  {
//   __tsu64 v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Ul_Us_Ul" {
    var lv: c.Ul_Us_Ul = undefined;
    try testing.expectSize(c.Ul_Us_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:17637:17657
// struct  Ul_Us_Us  {
//   __tsu64 v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Ul_Us_Us" {
    var lv: c.Ul_Us_Us = undefined;
    try testing.expectSize(c.Ul_Us_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xbb.c:17662:17682
// struct  Ul_Us_Vp  {
//   __tsu64 v1;
//   unsigned short v2;
//   void *v3;
// };

test "Ul_Us_Vp" {
    var lv: c.Ul_Us_Vp = undefined;
    try testing.expectSize(c.Ul_Us_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:17687:17705
// struct  Ul_Vp  {
//   __tsu64 v1;
//   void *v2;
// };

test "Ul_Vp" {
    var lv: c.Ul_Vp = undefined;
    try testing.expectSize(c.Ul_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xbb.c:18434:18454
// struct  Ul_Vp_C  {
//   __tsu64 v1;
//   void *v2;
//   char v3;
// };

test "Ul_Vp_C" {
    var lv: c.Ul_Vp_C = undefined;
    try testing.expectSize(c.Ul_Vp_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18459:18479
// struct  Ul_Vp_D  {
//   __tsu64 v1;
//   void *v2;
//   double v3;
// };

test "Ul_Vp_D" {
    var lv: c.Ul_Vp_D = undefined;
    try testing.expectSize(c.Ul_Vp_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18484:18504
// struct  Ul_Vp_F  {
//   __tsu64 v1;
//   void *v2;
//   float v3;
// };

test "Ul_Vp_F" {
    var lv: c.Ul_Vp_F = undefined;
    try testing.expectSize(c.Ul_Vp_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18509:18529
// struct  Ul_Vp_I  {
//   __tsu64 v1;
//   void *v2;
//   int v3;
// };

test "Ul_Vp_I" {
    var lv: c.Ul_Vp_I = undefined;
    try testing.expectSize(c.Ul_Vp_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18534:18554
// struct  Ul_Vp_Ip  {
//   __tsu64 v1;
//   void *v2;
//   int *v3;
// };

test "Ul_Vp_Ip" {
    var lv: c.Ul_Vp_Ip = undefined;
    try testing.expectSize(c.Ul_Vp_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18559:18579
// struct  Ul_Vp_L  {
//   __tsu64 v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Ul_Vp_L" {
    var lv: c.Ul_Vp_L = undefined;
    try testing.expectSize(c.Ul_Vp_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18584:18604
// struct  Ul_Vp_S  {
//   __tsu64 v1;
//   void *v2;
//   short v3;
// };

test "Ul_Vp_S" {
    var lv: c.Ul_Vp_S = undefined;
    try testing.expectSize(c.Ul_Vp_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18609:18629
// struct  Ul_Vp_Uc  {
//   __tsu64 v1;
//   void *v2;
//   unsigned char v3;
// };

test "Ul_Vp_Uc" {
    var lv: c.Ul_Vp_Uc = undefined;
    try testing.expectSize(c.Ul_Vp_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18634:18654
// struct  Ul_Vp_Ui  {
//   __tsu64 v1;
//   void *v2;
//   unsigned int v3;
// };

test "Ul_Vp_Ui" {
    var lv: c.Ul_Vp_Ui = undefined;
    try testing.expectSize(c.Ul_Vp_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18659:18679
// struct  Ul_Vp_Ul  {
//   __tsu64 v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Ul_Vp_Ul" {
    var lv: c.Ul_Vp_Ul = undefined;
    try testing.expectSize(c.Ul_Vp_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Ul_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18684:18704
// struct  Ul_Vp_Us  {
//   __tsu64 v1;
//   void *v2;
//   unsigned short v3;
// };

test "Ul_Vp_Us" {
    var lv: c.Ul_Vp_Us = undefined;
    try testing.expectSize(c.Ul_Vp_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18709:18729
// struct  Ul_Vp_Vp  {
//   __tsu64 v1;
//   void *v2;
//   void *v3;
// };

test "Ul_Vp_Vp" {
    var lv: c.Ul_Vp_Vp = undefined;
    try testing.expectSize(c.Ul_Vp_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Ul_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:18734:18750
// struct  Us  {
//   unsigned short v1;
// };

test "Us" {
    var lv: c.Us = undefined;
    try testing.expectSize(c.Us, 2);
    try testing.expectAlign(c.Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Snnn_xbb.c:49055:49073
// struct  Us_C  {
//   unsigned short v1;
//   char v2;
// };

test "Us_C" {
    var lv: c.Us_C = undefined;
    try testing.expectSize(c.Us_C, 4);
    try testing.expectAlign(c.Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xbb.c:49802:49822
// struct  Us_C_C  {
//   unsigned short v1;
//   char v2;
//   char v3;
// };

test "Us_C_C" {
    var lv: c.Us_C_C = undefined;
    try testing.expectSize(c.Us_C_C, 4);
    try testing.expectAlign(c.Us_C_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xbb.c:49827:49847
// struct  Us_C_D  {
//   unsigned short v1;
//   char v2;
//   double v3;
// };

test "Us_C_D" {
    var lv: c.Us_C_D = undefined;
    try testing.expectSize(c.Us_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:49852:49872
// struct  Us_C_F  {
//   unsigned short v1;
//   char v2;
//   float v3;
// };

test "Us_C_F" {
    var lv: c.Us_C_F = undefined;
    try testing.expectSize(c.Us_C_F, 8);
    try testing.expectAlign(c.Us_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:49877:49897
// struct  Us_C_I  {
//   unsigned short v1;
//   char v2;
//   int v3;
// };

test "Us_C_I" {
    var lv: c.Us_C_I = undefined;
    try testing.expectSize(c.Us_C_I, 8);
    try testing.expectAlign(c.Us_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:49902:49922
// struct  Us_C_Ip  {
//   unsigned short v1;
//   char v2;
//   int *v3;
// };

test "Us_C_Ip" {
    var lv: c.Us_C_Ip = undefined;
    try testing.expectSize(c.Us_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:49927:49947
// struct  Us_C_L  {
//   unsigned short v1;
//   char v2;
//   __tsi64 v3;
// };

test "Us_C_L" {
    var lv: c.Us_C_L = undefined;
    try testing.expectSize(c.Us_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:49952:49972
// struct  Us_C_S  {
//   unsigned short v1;
//   char v2;
//   short v3;
// };

test "Us_C_S" {
    var lv: c.Us_C_S = undefined;
    try testing.expectSize(c.Us_C_S, 6);
    try testing.expectAlign(c.Us_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:49977:49997
// struct  Us_C_Uc  {
//   unsigned short v1;
//   char v2;
//   unsigned char v3;
// };

test "Us_C_Uc" {
    var lv: c.Us_C_Uc = undefined;
    try testing.expectSize(c.Us_C_Uc, 4);
    try testing.expectAlign(c.Us_C_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xbb.c:50002:50022
// struct  Us_C_Ui  {
//   unsigned short v1;
//   char v2;
//   unsigned int v3;
// };

test "Us_C_Ui" {
    var lv: c.Us_C_Ui = undefined;
    try testing.expectSize(c.Us_C_Ui, 8);
    try testing.expectAlign(c.Us_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:50027:50047
// struct  Us_C_Ul  {
//   unsigned short v1;
//   char v2;
//   __tsu64 v3;
// };

test "Us_C_Ul" {
    var lv: c.Us_C_Ul = undefined;
    try testing.expectSize(c.Us_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:50052:50072
// struct  Us_C_Us  {
//   unsigned short v1;
//   char v2;
//   unsigned short v3;
// };

test "Us_C_Us" {
    var lv: c.Us_C_Us = undefined;
    try testing.expectSize(c.Us_C_Us, 6);
    try testing.expectAlign(c.Us_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:50077:50097
// struct  Us_C_Vp  {
//   unsigned short v1;
//   char v2;
//   void *v3;
// };

test "Us_C_Vp" {
    var lv: c.Us_C_Vp = undefined;
    try testing.expectSize(c.Us_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:50102:50120
// struct  Us_D  {
//   unsigned short v1;
//   double v2;
// };

test "Us_D" {
    var lv: c.Us_D = undefined;
    try testing.expectSize(c.Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:50849:50869
// struct  Us_D_C  {
//   unsigned short v1;
//   double v2;
//   char v3;
// };

test "Us_D_C" {
    var lv: c.Us_D_C = undefined;
    try testing.expectSize(c.Us_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:50874:50894
// struct  Us_D_D  {
//   unsigned short v1;
//   double v2;
//   double v3;
// };

test "Us_D_D" {
    var lv: c.Us_D_D = undefined;
    try testing.expectSize(c.Us_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:50899:50919
// struct  Us_D_F  {
//   unsigned short v1;
//   double v2;
//   float v3;
// };

test "Us_D_F" {
    var lv: c.Us_D_F = undefined;
    try testing.expectSize(c.Us_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:50924:50944
// struct  Us_D_I  {
//   unsigned short v1;
//   double v2;
//   int v3;
// };

test "Us_D_I" {
    var lv: c.Us_D_I = undefined;
    try testing.expectSize(c.Us_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:50949:50969
// struct  Us_D_Ip  {
//   unsigned short v1;
//   double v2;
//   int *v3;
// };

test "Us_D_Ip" {
    var lv: c.Us_D_Ip = undefined;
    try testing.expectSize(c.Us_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:50974:50994
// struct  Us_D_L  {
//   unsigned short v1;
//   double v2;
//   __tsi64 v3;
// };

test "Us_D_L" {
    var lv: c.Us_D_L = undefined;
    try testing.expectSize(c.Us_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:50999:51019
// struct  Us_D_S  {
//   unsigned short v1;
//   double v2;
//   short v3;
// };

test "Us_D_S" {
    var lv: c.Us_D_S = undefined;
    try testing.expectSize(c.Us_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51024:51044
// struct  Us_D_Uc  {
//   unsigned short v1;
//   double v2;
//   unsigned char v3;
// };

test "Us_D_Uc" {
    var lv: c.Us_D_Uc = undefined;
    try testing.expectSize(c.Us_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51049:51069
// struct  Us_D_Ui  {
//   unsigned short v1;
//   double v2;
//   unsigned int v3;
// };

test "Us_D_Ui" {
    var lv: c.Us_D_Ui = undefined;
    try testing.expectSize(c.Us_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51074:51094
// struct  Us_D_Ul  {
//   unsigned short v1;
//   double v2;
//   __tsu64 v3;
// };

test "Us_D_Ul" {
    var lv: c.Us_D_Ul = undefined;
    try testing.expectSize(c.Us_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51099:51119
// struct  Us_D_Us  {
//   unsigned short v1;
//   double v2;
//   unsigned short v3;
// };

test "Us_D_Us" {
    var lv: c.Us_D_Us = undefined;
    try testing.expectSize(c.Us_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51124:51144
// struct  Us_D_Vp  {
//   unsigned short v1;
//   double v2;
//   void *v3;
// };

test "Us_D_Vp" {
    var lv: c.Us_D_Vp = undefined;
    try testing.expectSize(c.Us_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:51149:51167
// struct  Us_F  {
//   unsigned short v1;
//   float v2;
// };

test "Us_F" {
    var lv: c.Us_F = undefined;
    try testing.expectSize(c.Us_F, 8);
    try testing.expectAlign(c.Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xbb.c:51896:51916
// struct  Us_F_C  {
//   unsigned short v1;
//   float v2;
//   char v3;
// };

test "Us_F_C" {
    var lv: c.Us_F_C = undefined;
    try testing.expectSize(c.Us_F_C, 12);
    try testing.expectAlign(c.Us_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:51921:51941
// struct  Us_F_D  {
//   unsigned short v1;
//   float v2;
//   double v3;
// };

test "Us_F_D" {
    var lv: c.Us_F_D = undefined;
    try testing.expectSize(c.Us_F_D, 16);
    try testing.expectAlign(c.Us_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:51946:51966
// struct  Us_F_F  {
//   unsigned short v1;
//   float v2;
//   float v3;
// };

test "Us_F_F" {
    var lv: c.Us_F_F = undefined;
    try testing.expectSize(c.Us_F_F, 12);
    try testing.expectAlign(c.Us_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:51971:51991
// struct  Us_F_I  {
//   unsigned short v1;
//   float v2;
//   int v3;
// };

test "Us_F_I" {
    var lv: c.Us_F_I = undefined;
    try testing.expectSize(c.Us_F_I, 12);
    try testing.expectAlign(c.Us_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:51996:52016
// struct  Us_F_Ip  {
//   unsigned short v1;
//   float v2;
//   int *v3;
// };

test "Us_F_Ip" {
    var lv: c.Us_F_Ip = undefined;
    try testing.expectSize(c.Us_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52021:52041
// struct  Us_F_L  {
//   unsigned short v1;
//   float v2;
//   __tsi64 v3;
// };

test "Us_F_L" {
    var lv: c.Us_F_L = undefined;
    try testing.expectSize(c.Us_F_L, 16);
    try testing.expectAlign(c.Us_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52046:52066
// struct  Us_F_S  {
//   unsigned short v1;
//   float v2;
//   short v3;
// };

test "Us_F_S" {
    var lv: c.Us_F_S = undefined;
    try testing.expectSize(c.Us_F_S, 12);
    try testing.expectAlign(c.Us_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52071:52091
// struct  Us_F_Uc  {
//   unsigned short v1;
//   float v2;
//   unsigned char v3;
// };

test "Us_F_Uc" {
    var lv: c.Us_F_Uc = undefined;
    try testing.expectSize(c.Us_F_Uc, 12);
    try testing.expectAlign(c.Us_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52096:52116
// struct  Us_F_Ui  {
//   unsigned short v1;
//   float v2;
//   unsigned int v3;
// };

test "Us_F_Ui" {
    var lv: c.Us_F_Ui = undefined;
    try testing.expectSize(c.Us_F_Ui, 12);
    try testing.expectAlign(c.Us_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52121:52141
// struct  Us_F_Ul  {
//   unsigned short v1;
//   float v2;
//   __tsu64 v3;
// };

test "Us_F_Ul" {
    var lv: c.Us_F_Ul = undefined;
    try testing.expectSize(c.Us_F_Ul, 16);
    try testing.expectAlign(c.Us_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52146:52166
// struct  Us_F_Us  {
//   unsigned short v1;
//   float v2;
//   unsigned short v3;
// };

test "Us_F_Us" {
    var lv: c.Us_F_Us = undefined;
    try testing.expectSize(c.Us_F_Us, 12);
    try testing.expectAlign(c.Us_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52171:52191
// struct  Us_F_Vp  {
//   unsigned short v1;
//   float v2;
//   void *v3;
// };

test "Us_F_Vp" {
    var lv: c.Us_F_Vp = undefined;
    try testing.expectSize(c.Us_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52196:52214
// struct  Us_I  {
//   unsigned short v1;
//   int v2;
// };

test "Us_I" {
    var lv: c.Us_I = undefined;
    try testing.expectSize(c.Us_I, 8);
    try testing.expectAlign(c.Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xbb.c:52943:52963
// struct  Us_I_C  {
//   unsigned short v1;
//   int v2;
//   char v3;
// };

test "Us_I_C" {
    var lv: c.Us_I_C = undefined;
    try testing.expectSize(c.Us_I_C, 12);
    try testing.expectAlign(c.Us_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52968:52988
// struct  Us_I_D  {
//   unsigned short v1;
//   int v2;
//   double v3;
// };

test "Us_I_D" {
    var lv: c.Us_I_D = undefined;
    try testing.expectSize(c.Us_I_D, 16);
    try testing.expectAlign(c.Us_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:52993:53013
// struct  Us_I_F  {
//   unsigned short v1;
//   int v2;
//   float v3;
// };

test "Us_I_F" {
    var lv: c.Us_I_F = undefined;
    try testing.expectSize(c.Us_I_F, 12);
    try testing.expectAlign(c.Us_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53018:53038
// struct  Us_I_I  {
//   unsigned short v1;
//   int v2;
//   int v3;
// };

test "Us_I_I" {
    var lv: c.Us_I_I = undefined;
    try testing.expectSize(c.Us_I_I, 12);
    try testing.expectAlign(c.Us_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53043:53063
// struct  Us_I_Ip  {
//   unsigned short v1;
//   int v2;
//   int *v3;
// };

test "Us_I_Ip" {
    var lv: c.Us_I_Ip = undefined;
    try testing.expectSize(c.Us_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53068:53088
// struct  Us_I_L  {
//   unsigned short v1;
//   int v2;
//   __tsi64 v3;
// };

test "Us_I_L" {
    var lv: c.Us_I_L = undefined;
    try testing.expectSize(c.Us_I_L, 16);
    try testing.expectAlign(c.Us_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53093:53113
// struct  Us_I_S  {
//   unsigned short v1;
//   int v2;
//   short v3;
// };

test "Us_I_S" {
    var lv: c.Us_I_S = undefined;
    try testing.expectSize(c.Us_I_S, 12);
    try testing.expectAlign(c.Us_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53118:53138
// struct  Us_I_Uc  {
//   unsigned short v1;
//   int v2;
//   unsigned char v3;
// };

test "Us_I_Uc" {
    var lv: c.Us_I_Uc = undefined;
    try testing.expectSize(c.Us_I_Uc, 12);
    try testing.expectAlign(c.Us_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53143:53163
// struct  Us_I_Ui  {
//   unsigned short v1;
//   int v2;
//   unsigned int v3;
// };

test "Us_I_Ui" {
    var lv: c.Us_I_Ui = undefined;
    try testing.expectSize(c.Us_I_Ui, 12);
    try testing.expectAlign(c.Us_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53168:53188
// struct  Us_I_Ul  {
//   unsigned short v1;
//   int v2;
//   __tsu64 v3;
// };

test "Us_I_Ul" {
    var lv: c.Us_I_Ul = undefined;
    try testing.expectSize(c.Us_I_Ul, 16);
    try testing.expectAlign(c.Us_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53193:53213
// struct  Us_I_Us  {
//   unsigned short v1;
//   int v2;
//   unsigned short v3;
// };

test "Us_I_Us" {
    var lv: c.Us_I_Us = undefined;
    try testing.expectSize(c.Us_I_Us, 12);
    try testing.expectAlign(c.Us_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53218:53238
// struct  Us_I_Vp  {
//   unsigned short v1;
//   int v2;
//   void *v3;
// };

test "Us_I_Vp" {
    var lv: c.Us_I_Vp = undefined;
    try testing.expectSize(c.Us_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:53243:53261
// struct  Us_Ip  {
//   unsigned short v1;
//   int *v2;
// };

test "Us_Ip" {
    var lv: c.Us_Ip = undefined;
    try testing.expectSize(c.Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:53990:54010
// struct  Us_Ip_C  {
//   unsigned short v1;
//   int *v2;
//   char v3;
// };

test "Us_Ip_C" {
    var lv: c.Us_Ip_C = undefined;
    try testing.expectSize(c.Us_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54015:54035
// struct  Us_Ip_D  {
//   unsigned short v1;
//   int *v2;
//   double v3;
// };

test "Us_Ip_D" {
    var lv: c.Us_Ip_D = undefined;
    try testing.expectSize(c.Us_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54040:54060
// struct  Us_Ip_F  {
//   unsigned short v1;
//   int *v2;
//   float v3;
// };

test "Us_Ip_F" {
    var lv: c.Us_Ip_F = undefined;
    try testing.expectSize(c.Us_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54065:54085
// struct  Us_Ip_I  {
//   unsigned short v1;
//   int *v2;
//   int v3;
// };

test "Us_Ip_I" {
    var lv: c.Us_Ip_I = undefined;
    try testing.expectSize(c.Us_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54090:54110
// struct  Us_Ip_Ip  {
//   unsigned short v1;
//   int *v2;
//   int *v3;
// };

test "Us_Ip_Ip" {
    var lv: c.Us_Ip_Ip = undefined;
    try testing.expectSize(c.Us_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54115:54135
// struct  Us_Ip_L  {
//   unsigned short v1;
//   int *v2;
//   __tsi64 v3;
// };

test "Us_Ip_L" {
    var lv: c.Us_Ip_L = undefined;
    try testing.expectSize(c.Us_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54140:54160
// struct  Us_Ip_S  {
//   unsigned short v1;
//   int *v2;
//   short v3;
// };

test "Us_Ip_S" {
    var lv: c.Us_Ip_S = undefined;
    try testing.expectSize(c.Us_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54165:54185
// struct  Us_Ip_Uc  {
//   unsigned short v1;
//   int *v2;
//   unsigned char v3;
// };

test "Us_Ip_Uc" {
    var lv: c.Us_Ip_Uc = undefined;
    try testing.expectSize(c.Us_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54190:54210
// struct  Us_Ip_Ui  {
//   unsigned short v1;
//   int *v2;
//   unsigned int v3;
// };

test "Us_Ip_Ui" {
    var lv: c.Us_Ip_Ui = undefined;
    try testing.expectSize(c.Us_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54215:54235
// struct  Us_Ip_Ul  {
//   unsigned short v1;
//   int *v2;
//   __tsu64 v3;
// };

test "Us_Ip_Ul" {
    var lv: c.Us_Ip_Ul = undefined;
    try testing.expectSize(c.Us_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54240:54260
// struct  Us_Ip_Us  {
//   unsigned short v1;
//   int *v2;
//   unsigned short v3;
// };

test "Us_Ip_Us" {
    var lv: c.Us_Ip_Us = undefined;
    try testing.expectSize(c.Us_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54265:54285
// struct  Us_Ip_Vp  {
//   unsigned short v1;
//   int *v2;
//   void *v3;
// };

test "Us_Ip_Vp" {
    var lv: c.Us_Ip_Vp = undefined;
    try testing.expectSize(c.Us_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:54290:54308
// struct  Us_L  {
//   unsigned short v1;
//   __tsi64 v2;
// };

test "Us_L" {
    var lv: c.Us_L = undefined;
    try testing.expectSize(c.Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:55037:55057
// struct  Us_L_C  {
//   unsigned short v1;
//   __tsi64 v2;
//   char v3;
// };

test "Us_L_C" {
    var lv: c.Us_L_C = undefined;
    try testing.expectSize(c.Us_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55062:55082
// struct  Us_L_D  {
//   unsigned short v1;
//   __tsi64 v2;
//   double v3;
// };

test "Us_L_D" {
    var lv: c.Us_L_D = undefined;
    try testing.expectSize(c.Us_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55087:55107
// struct  Us_L_F  {
//   unsigned short v1;
//   __tsi64 v2;
//   float v3;
// };

test "Us_L_F" {
    var lv: c.Us_L_F = undefined;
    try testing.expectSize(c.Us_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55112:55132
// struct  Us_L_I  {
//   unsigned short v1;
//   __tsi64 v2;
//   int v3;
// };

test "Us_L_I" {
    var lv: c.Us_L_I = undefined;
    try testing.expectSize(c.Us_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55137:55157
// struct  Us_L_Ip  {
//   unsigned short v1;
//   __tsi64 v2;
//   int *v3;
// };

test "Us_L_Ip" {
    var lv: c.Us_L_Ip = undefined;
    try testing.expectSize(c.Us_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55162:55182
// struct  Us_L_L  {
//   unsigned short v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "Us_L_L" {
    var lv: c.Us_L_L = undefined;
    try testing.expectSize(c.Us_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55187:55207
// struct  Us_L_S  {
//   unsigned short v1;
//   __tsi64 v2;
//   short v3;
// };

test "Us_L_S" {
    var lv: c.Us_L_S = undefined;
    try testing.expectSize(c.Us_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55212:55232
// struct  Us_L_Uc  {
//   unsigned short v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "Us_L_Uc" {
    var lv: c.Us_L_Uc = undefined;
    try testing.expectSize(c.Us_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55237:55257
// struct  Us_L_Ui  {
//   unsigned short v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "Us_L_Ui" {
    var lv: c.Us_L_Ui = undefined;
    try testing.expectSize(c.Us_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55262:55282
// struct  Us_L_Ul  {
//   unsigned short v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "Us_L_Ul" {
    var lv: c.Us_L_Ul = undefined;
    try testing.expectSize(c.Us_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55287:55307
// struct  Us_L_Us  {
//   unsigned short v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "Us_L_Us" {
    var lv: c.Us_L_Us = undefined;
    try testing.expectSize(c.Us_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55312:55332
// struct  Us_L_Vp  {
//   unsigned short v1;
//   __tsi64 v2;
//   void *v3;
// };

test "Us_L_Vp" {
    var lv: c.Us_L_Vp = undefined;
    try testing.expectSize(c.Us_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:55337:55355
// struct  Us_S  {
//   unsigned short v1;
//   short v2;
// };

test "Us_S" {
    var lv: c.Us_S = undefined;
    try testing.expectSize(c.Us_S, 4);
    try testing.expectAlign(c.Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xbb.c:56084:56104
// struct  Us_S_C  {
//   unsigned short v1;
//   short v2;
//   char v3;
// };

test "Us_S_C" {
    var lv: c.Us_S_C = undefined;
    try testing.expectSize(c.Us_S_C, 6);
    try testing.expectAlign(c.Us_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56109:56129
// struct  Us_S_D  {
//   unsigned short v1;
//   short v2;
//   double v3;
// };

test "Us_S_D" {
    var lv: c.Us_S_D = undefined;
    try testing.expectSize(c.Us_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:56134:56154
// struct  Us_S_F  {
//   unsigned short v1;
//   short v2;
//   float v3;
// };

test "Us_S_F" {
    var lv: c.Us_S_F = undefined;
    try testing.expectSize(c.Us_S_F, 8);
    try testing.expectAlign(c.Us_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56159:56179
// struct  Us_S_I  {
//   unsigned short v1;
//   short v2;
//   int v3;
// };

test "Us_S_I" {
    var lv: c.Us_S_I = undefined;
    try testing.expectSize(c.Us_S_I, 8);
    try testing.expectAlign(c.Us_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56184:56204
// struct  Us_S_Ip  {
//   unsigned short v1;
//   short v2;
//   int *v3;
// };

test "Us_S_Ip" {
    var lv: c.Us_S_Ip = undefined;
    try testing.expectSize(c.Us_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:56209:56229
// struct  Us_S_L  {
//   unsigned short v1;
//   short v2;
//   __tsi64 v3;
// };

test "Us_S_L" {
    var lv: c.Us_S_L = undefined;
    try testing.expectSize(c.Us_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:56234:56254
// struct  Us_S_S  {
//   unsigned short v1;
//   short v2;
//   short v3;
// };

test "Us_S_S" {
    var lv: c.Us_S_S = undefined;
    try testing.expectSize(c.Us_S_S, 6);
    try testing.expectAlign(c.Us_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56259:56279
// struct  Us_S_Uc  {
//   unsigned short v1;
//   short v2;
//   unsigned char v3;
// };

test "Us_S_Uc" {
    var lv: c.Us_S_Uc = undefined;
    try testing.expectSize(c.Us_S_Uc, 6);
    try testing.expectAlign(c.Us_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56284:56304
// struct  Us_S_Ui  {
//   unsigned short v1;
//   short v2;
//   unsigned int v3;
// };

test "Us_S_Ui" {
    var lv: c.Us_S_Ui = undefined;
    try testing.expectSize(c.Us_S_Ui, 8);
    try testing.expectAlign(c.Us_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56309:56329
// struct  Us_S_Ul  {
//   unsigned short v1;
//   short v2;
//   __tsu64 v3;
// };

test "Us_S_Ul" {
    var lv: c.Us_S_Ul = undefined;
    try testing.expectSize(c.Us_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:56334:56354
// struct  Us_S_Us  {
//   unsigned short v1;
//   short v2;
//   unsigned short v3;
// };

test "Us_S_Us" {
    var lv: c.Us_S_Us = undefined;
    try testing.expectSize(c.Us_S_Us, 6);
    try testing.expectAlign(c.Us_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:56359:56379
// struct  Us_S_Vp  {
//   unsigned short v1;
//   short v2;
//   void *v3;
// };

test "Us_S_Vp" {
    var lv: c.Us_S_Vp = undefined;
    try testing.expectSize(c.Us_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:56384:56402
// struct  Us_Uc  {
//   unsigned short v1;
//   unsigned char v2;
// };

test "Us_Uc" {
    var lv: c.Us_Uc = undefined;
    try testing.expectSize(c.Us_Uc, 4);
    try testing.expectAlign(c.Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xbb.c:57131:57151
// struct  Us_Uc_C  {
//   unsigned short v1;
//   unsigned char v2;
//   char v3;
// };

test "Us_Uc_C" {
    var lv: c.Us_Uc_C = undefined;
    try testing.expectSize(c.Us_Uc_C, 4);
    try testing.expectAlign(c.Us_Uc_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xbb.c:57156:57176
// struct  Us_Uc_D  {
//   unsigned short v1;
//   unsigned char v2;
//   double v3;
// };

test "Us_Uc_D" {
    var lv: c.Us_Uc_D = undefined;
    try testing.expectSize(c.Us_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:57181:57201
// struct  Us_Uc_F  {
//   unsigned short v1;
//   unsigned char v2;
//   float v3;
// };

test "Us_Uc_F" {
    var lv: c.Us_Uc_F = undefined;
    try testing.expectSize(c.Us_Uc_F, 8);
    try testing.expectAlign(c.Us_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:57206:57226
// struct  Us_Uc_I  {
//   unsigned short v1;
//   unsigned char v2;
//   int v3;
// };

test "Us_Uc_I" {
    var lv: c.Us_Uc_I = undefined;
    try testing.expectSize(c.Us_Uc_I, 8);
    try testing.expectAlign(c.Us_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:57231:57251
// struct  Us_Uc_Ip  {
//   unsigned short v1;
//   unsigned char v2;
//   int *v3;
// };

test "Us_Uc_Ip" {
    var lv: c.Us_Uc_Ip = undefined;
    try testing.expectSize(c.Us_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:57256:57276
// struct  Us_Uc_L  {
//   unsigned short v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "Us_Uc_L" {
    var lv: c.Us_Uc_L = undefined;
    try testing.expectSize(c.Us_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:57281:57301
// struct  Us_Uc_S  {
//   unsigned short v1;
//   unsigned char v2;
//   short v3;
// };

test "Us_Uc_S" {
    var lv: c.Us_Uc_S = undefined;
    try testing.expectSize(c.Us_Uc_S, 6);
    try testing.expectAlign(c.Us_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:57306:57326
// struct  Us_Uc_Uc  {
//   unsigned short v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "Us_Uc_Uc" {
    var lv: c.Us_Uc_Uc = undefined;
    try testing.expectSize(c.Us_Uc_Uc, 4);
    try testing.expectAlign(c.Us_Uc_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 3);
}

// From T_Snnn_xbb.c:57331:57351
// struct  Us_Uc_Ui  {
//   unsigned short v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "Us_Uc_Ui" {
    var lv: c.Us_Uc_Ui = undefined;
    try testing.expectSize(c.Us_Uc_Ui, 8);
    try testing.expectAlign(c.Us_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:57356:57376
// struct  Us_Uc_Ul  {
//   unsigned short v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "Us_Uc_Ul" {
    var lv: c.Us_Uc_Ul = undefined;
    try testing.expectSize(c.Us_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:57381:57401
// struct  Us_Uc_Us  {
//   unsigned short v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "Us_Uc_Us" {
    var lv: c.Us_Uc_Us = undefined;
    try testing.expectSize(c.Us_Uc_Us, 6);
    try testing.expectAlign(c.Us_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:57406:57426
// struct  Us_Uc_Vp  {
//   unsigned short v1;
//   unsigned char v2;
//   void *v3;
// };

test "Us_Uc_Vp" {
    var lv: c.Us_Uc_Vp = undefined;
    try testing.expectSize(c.Us_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:57431:57449
// struct  Us_Ui  {
//   unsigned short v1;
//   unsigned int v2;
// };

test "Us_Ui" {
    var lv: c.Us_Ui = undefined;
    try testing.expectSize(c.Us_Ui, 8);
    try testing.expectAlign(c.Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xbb.c:58178:58198
// struct  Us_Ui_C  {
//   unsigned short v1;
//   unsigned int v2;
//   char v3;
// };

test "Us_Ui_C" {
    var lv: c.Us_Ui_C = undefined;
    try testing.expectSize(c.Us_Ui_C, 12);
    try testing.expectAlign(c.Us_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58203:58223
// struct  Us_Ui_D  {
//   unsigned short v1;
//   unsigned int v2;
//   double v3;
// };

test "Us_Ui_D" {
    var lv: c.Us_Ui_D = undefined;
    try testing.expectSize(c.Us_Ui_D, 16);
    try testing.expectAlign(c.Us_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58228:58248
// struct  Us_Ui_F  {
//   unsigned short v1;
//   unsigned int v2;
//   float v3;
// };

test "Us_Ui_F" {
    var lv: c.Us_Ui_F = undefined;
    try testing.expectSize(c.Us_Ui_F, 12);
    try testing.expectAlign(c.Us_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58253:58273
// struct  Us_Ui_I  {
//   unsigned short v1;
//   unsigned int v2;
//   int v3;
// };

test "Us_Ui_I" {
    var lv: c.Us_Ui_I = undefined;
    try testing.expectSize(c.Us_Ui_I, 12);
    try testing.expectAlign(c.Us_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58278:58298
// struct  Us_Ui_Ip  {
//   unsigned short v1;
//   unsigned int v2;
//   int *v3;
// };

test "Us_Ui_Ip" {
    var lv: c.Us_Ui_Ip = undefined;
    try testing.expectSize(c.Us_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58303:58323
// struct  Us_Ui_L  {
//   unsigned short v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "Us_Ui_L" {
    var lv: c.Us_Ui_L = undefined;
    try testing.expectSize(c.Us_Ui_L, 16);
    try testing.expectAlign(c.Us_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58328:58348
// struct  Us_Ui_S  {
//   unsigned short v1;
//   unsigned int v2;
//   short v3;
// };

test "Us_Ui_S" {
    var lv: c.Us_Ui_S = undefined;
    try testing.expectSize(c.Us_Ui_S, 12);
    try testing.expectAlign(c.Us_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58353:58373
// struct  Us_Ui_Uc  {
//   unsigned short v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "Us_Ui_Uc" {
    var lv: c.Us_Ui_Uc = undefined;
    try testing.expectSize(c.Us_Ui_Uc, 12);
    try testing.expectAlign(c.Us_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58378:58398
// struct  Us_Ui_Ui  {
//   unsigned short v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "Us_Ui_Ui" {
    var lv: c.Us_Ui_Ui = undefined;
    try testing.expectSize(c.Us_Ui_Ui, 12);
    try testing.expectAlign(c.Us_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58403:58423
// struct  Us_Ui_Ul  {
//   unsigned short v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "Us_Ui_Ul" {
    var lv: c.Us_Ui_Ul = undefined;
    try testing.expectSize(c.Us_Ui_Ul, 16);
    try testing.expectAlign(c.Us_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58428:58448
// struct  Us_Ui_Us  {
//   unsigned short v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "Us_Ui_Us" {
    var lv: c.Us_Ui_Us = undefined;
    try testing.expectSize(c.Us_Ui_Us, 12);
    try testing.expectAlign(c.Us_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58453:58473
// struct  Us_Ui_Vp  {
//   unsigned short v1;
//   unsigned int v2;
//   void *v3;
// };

test "Us_Ui_Vp" {
    var lv: c.Us_Ui_Vp = undefined;
    try testing.expectSize(c.Us_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xbb.c:58478:58496
// struct  Us_Ul  {
//   unsigned short v1;
//   __tsu64 v2;
// };

test "Us_Ul" {
    var lv: c.Us_Ul = undefined;
    try testing.expectSize(c.Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:59225:59245
// struct  Us_Ul_C  {
//   unsigned short v1;
//   __tsu64 v2;
//   char v3;
// };

test "Us_Ul_C" {
    var lv: c.Us_Ul_C = undefined;
    try testing.expectSize(c.Us_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59250:59270
// struct  Us_Ul_D  {
//   unsigned short v1;
//   __tsu64 v2;
//   double v3;
// };

test "Us_Ul_D" {
    var lv: c.Us_Ul_D = undefined;
    try testing.expectSize(c.Us_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59275:59295
// struct  Us_Ul_F  {
//   unsigned short v1;
//   __tsu64 v2;
//   float v3;
// };

test "Us_Ul_F" {
    var lv: c.Us_Ul_F = undefined;
    try testing.expectSize(c.Us_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59300:59320
// struct  Us_Ul_I  {
//   unsigned short v1;
//   __tsu64 v2;
//   int v3;
// };

test "Us_Ul_I" {
    var lv: c.Us_Ul_I = undefined;
    try testing.expectSize(c.Us_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59325:59345
// struct  Us_Ul_Ip  {
//   unsigned short v1;
//   __tsu64 v2;
//   int *v3;
// };

test "Us_Ul_Ip" {
    var lv: c.Us_Ul_Ip = undefined;
    try testing.expectSize(c.Us_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59350:59370
// struct  Us_Ul_L  {
//   unsigned short v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "Us_Ul_L" {
    var lv: c.Us_Ul_L = undefined;
    try testing.expectSize(c.Us_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59375:59395
// struct  Us_Ul_S  {
//   unsigned short v1;
//   __tsu64 v2;
//   short v3;
// };

test "Us_Ul_S" {
    var lv: c.Us_Ul_S = undefined;
    try testing.expectSize(c.Us_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59400:59420
// struct  Us_Ul_Uc  {
//   unsigned short v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "Us_Ul_Uc" {
    var lv: c.Us_Ul_Uc = undefined;
    try testing.expectSize(c.Us_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59425:59445
// struct  Us_Ul_Ui  {
//   unsigned short v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "Us_Ul_Ui" {
    var lv: c.Us_Ul_Ui = undefined;
    try testing.expectSize(c.Us_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59450:59470
// struct  Us_Ul_Ul  {
//   unsigned short v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "Us_Ul_Ul" {
    var lv: c.Us_Ul_Ul = undefined;
    try testing.expectSize(c.Us_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.Us_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59475:59495
// struct  Us_Ul_Us  {
//   unsigned short v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "Us_Ul_Us" {
    var lv: c.Us_Ul_Us = undefined;
    try testing.expectSize(c.Us_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59500:59520
// struct  Us_Ul_Vp  {
//   unsigned short v1;
//   __tsu64 v2;
//   void *v3;
// };

test "Us_Ul_Vp" {
    var lv: c.Us_Ul_Vp = undefined;
    try testing.expectSize(c.Us_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xbb.c:59525:59543
// struct  Us_Us  {
//   unsigned short v1;
//   unsigned short v2;
// };

test "Us_Us" {
    var lv: c.Us_Us = undefined;
    try testing.expectSize(c.Us_Us, 4);
    try testing.expectAlign(c.Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xbb.c:60272:60292
// struct  Us_Us_C  {
//   unsigned short v1;
//   unsigned short v2;
//   char v3;
// };

test "Us_Us_C" {
    var lv: c.Us_Us_C = undefined;
    try testing.expectSize(c.Us_Us_C, 6);
    try testing.expectAlign(c.Us_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60297:60317
// struct  Us_Us_D  {
//   unsigned short v1;
//   unsigned short v2;
//   double v3;
// };

test "Us_Us_D" {
    var lv: c.Us_Us_D = undefined;
    try testing.expectSize(c.Us_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:60322:60342
// struct  Us_Us_F  {
//   unsigned short v1;
//   unsigned short v2;
//   float v3;
// };

test "Us_Us_F" {
    var lv: c.Us_Us_F = undefined;
    try testing.expectSize(c.Us_Us_F, 8);
    try testing.expectAlign(c.Us_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60347:60367
// struct  Us_Us_I  {
//   unsigned short v1;
//   unsigned short v2;
//   int v3;
// };

test "Us_Us_I" {
    var lv: c.Us_Us_I = undefined;
    try testing.expectSize(c.Us_Us_I, 8);
    try testing.expectAlign(c.Us_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60372:60392
// struct  Us_Us_Ip  {
//   unsigned short v1;
//   unsigned short v2;
//   int *v3;
// };

test "Us_Us_Ip" {
    var lv: c.Us_Us_Ip = undefined;
    try testing.expectSize(c.Us_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:60397:60417
// struct  Us_Us_L  {
//   unsigned short v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "Us_Us_L" {
    var lv: c.Us_Us_L = undefined;
    try testing.expectSize(c.Us_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:60422:60442
// struct  Us_Us_S  {
//   unsigned short v1;
//   unsigned short v2;
//   short v3;
// };

test "Us_Us_S" {
    var lv: c.Us_Us_S = undefined;
    try testing.expectSize(c.Us_Us_S, 6);
    try testing.expectAlign(c.Us_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60447:60467
// struct  Us_Us_Uc  {
//   unsigned short v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "Us_Us_Uc" {
    var lv: c.Us_Us_Uc = undefined;
    try testing.expectSize(c.Us_Us_Uc, 6);
    try testing.expectAlign(c.Us_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60472:60492
// struct  Us_Us_Ui  {
//   unsigned short v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "Us_Us_Ui" {
    var lv: c.Us_Us_Ui = undefined;
    try testing.expectSize(c.Us_Us_Ui, 8);
    try testing.expectAlign(c.Us_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60497:60517
// struct  Us_Us_Ul  {
//   unsigned short v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "Us_Us_Ul" {
    var lv: c.Us_Us_Ul = undefined;
    try testing.expectSize(c.Us_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.Us_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:60522:60542
// struct  Us_Us_Us  {
//   unsigned short v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "Us_Us_Us" {
    var lv: c.Us_Us_Us = undefined;
    try testing.expectSize(c.Us_Us_Us, 6);
    try testing.expectAlign(c.Us_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xbb.c:60547:60567
// struct  Us_Us_Vp  {
//   unsigned short v1;
//   unsigned short v2;
//   void *v3;
// };

test "Us_Us_Vp" {
    var lv: c.Us_Us_Vp = undefined;
    try testing.expectSize(c.Us_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:60572:60590
// struct  Us_Vp  {
//   unsigned short v1;
//   void *v2;
// };

test "Us_Vp" {
    var lv: c.Us_Vp = undefined;
    try testing.expectSize(c.Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xbb.c:61319:61339
// struct  Us_Vp_C  {
//   unsigned short v1;
//   void *v2;
//   char v3;
// };

test "Us_Vp_C" {
    var lv: c.Us_Vp_C = undefined;
    try testing.expectSize(c.Us_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61344:61364
// struct  Us_Vp_D  {
//   unsigned short v1;
//   void *v2;
//   double v3;
// };

test "Us_Vp_D" {
    var lv: c.Us_Vp_D = undefined;
    try testing.expectSize(c.Us_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61369:61389
// struct  Us_Vp_F  {
//   unsigned short v1;
//   void *v2;
//   float v3;
// };

test "Us_Vp_F" {
    var lv: c.Us_Vp_F = undefined;
    try testing.expectSize(c.Us_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61394:61414
// struct  Us_Vp_I  {
//   unsigned short v1;
//   void *v2;
//   int v3;
// };

test "Us_Vp_I" {
    var lv: c.Us_Vp_I = undefined;
    try testing.expectSize(c.Us_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61419:61439
// struct  Us_Vp_Ip  {
//   unsigned short v1;
//   void *v2;
//   int *v3;
// };

test "Us_Vp_Ip" {
    var lv: c.Us_Vp_Ip = undefined;
    try testing.expectSize(c.Us_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61444:61464
// struct  Us_Vp_L  {
//   unsigned short v1;
//   void *v2;
//   __tsi64 v3;
// };

test "Us_Vp_L" {
    var lv: c.Us_Vp_L = undefined;
    try testing.expectSize(c.Us_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61469:61489
// struct  Us_Vp_S  {
//   unsigned short v1;
//   void *v2;
//   short v3;
// };

test "Us_Vp_S" {
    var lv: c.Us_Vp_S = undefined;
    try testing.expectSize(c.Us_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61494:61514
// struct  Us_Vp_Uc  {
//   unsigned short v1;
//   void *v2;
//   unsigned char v3;
// };

test "Us_Vp_Uc" {
    var lv: c.Us_Vp_Uc = undefined;
    try testing.expectSize(c.Us_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61519:61539
// struct  Us_Vp_Ui  {
//   unsigned short v1;
//   void *v2;
//   unsigned int v3;
// };

test "Us_Vp_Ui" {
    var lv: c.Us_Vp_Ui = undefined;
    try testing.expectSize(c.Us_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61544:61564
// struct  Us_Vp_Ul  {
//   unsigned short v1;
//   void *v2;
//   __tsu64 v3;
// };

test "Us_Vp_Ul" {
    var lv: c.Us_Vp_Ul = undefined;
    try testing.expectSize(c.Us_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.Us_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61569:61589
// struct  Us_Vp_Us  {
//   unsigned short v1;
//   void *v2;
//   unsigned short v3;
// };

test "Us_Vp_Us" {
    var lv: c.Us_Vp_Us = undefined;
    try testing.expectSize(c.Us_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61594:61614
// struct  Us_Vp_Vp  {
//   unsigned short v1;
//   void *v2;
//   void *v3;
// };

test "Us_Vp_Vp" {
    var lv: c.Us_Vp_Vp = undefined;
    try testing.expectSize(c.Us_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.Us_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xbb.c:61619:61635
// struct  Vp  {
//   void *v1;
// };

test "Vp" {
    var lv: c.Vp = undefined;
    try testing.expectSize(c.Vp, ABISELECT(8, 4));
    try testing.expectAlign(c.Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
