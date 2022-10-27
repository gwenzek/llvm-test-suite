const std = @import("std");
const testing = @import("testing.zig");
const ABISELECT = testing.ABISELECT;

pub const c = @cImport({
    @cInclude("T_Snnn_xaw.h");
});

// From T_Snnn_xaw.c:12293:12311
// struct  C_C  {
//   char v1;
//   char v2;
// };

test "C_C" {
    var lv: c.C_C = undefined;
    try testing.expectSize(c.C_C, 2);
    try testing.expectAlign(c.C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Snnn_xaw.c:13040:13060
// struct  C_C_C  {
//   char v1;
//   char v2;
//   char v3;
// };

test "C_C_C" {
    var lv: c.C_C_C = undefined;
    try testing.expectSize(c.C_C_C, 3);
    try testing.expectAlign(c.C_C_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:13065:13085
// struct  C_C_D  {
//   char v1;
//   char v2;
//   double v3;
// };

test "C_C_D" {
    var lv: c.C_C_D = undefined;
    try testing.expectSize(c.C_C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:13090:13110
// struct  C_C_F  {
//   char v1;
//   char v2;
//   float v3;
// };

test "C_C_F" {
    var lv: c.C_C_F = undefined;
    try testing.expectSize(c.C_C_F, 8);
    try testing.expectAlign(c.C_C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:13115:13135
// struct  C_C_I  {
//   char v1;
//   char v2;
//   int v3;
// };

test "C_C_I" {
    var lv: c.C_C_I = undefined;
    try testing.expectSize(c.C_C_I, 8);
    try testing.expectAlign(c.C_C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:13140:13160
// struct  C_C_Ip  {
//   char v1;
//   char v2;
//   int *v3;
// };

test "C_C_Ip" {
    var lv: c.C_C_Ip = undefined;
    try testing.expectSize(c.C_C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:13165:13185
// struct  C_C_L  {
//   char v1;
//   char v2;
//   __tsi64 v3;
// };

test "C_C_L" {
    var lv: c.C_C_L = undefined;
    try testing.expectSize(c.C_C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:13190:13210
// struct  C_C_S  {
//   char v1;
//   char v2;
//   short v3;
// };

test "C_C_S" {
    var lv: c.C_C_S = undefined;
    try testing.expectSize(c.C_C_S, 4);
    try testing.expectAlign(c.C_C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:13215:13235
// struct  C_C_Uc  {
//   char v1;
//   char v2;
//   unsigned char v3;
// };

test "C_C_Uc" {
    var lv: c.C_C_Uc = undefined;
    try testing.expectSize(c.C_C_Uc, 3);
    try testing.expectAlign(c.C_C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:13240:13260
// struct  C_C_Ui  {
//   char v1;
//   char v2;
//   unsigned int v3;
// };

test "C_C_Ui" {
    var lv: c.C_C_Ui = undefined;
    try testing.expectSize(c.C_C_Ui, 8);
    try testing.expectAlign(c.C_C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:13265:13285
// struct  C_C_Ul  {
//   char v1;
//   char v2;
//   __tsu64 v3;
// };

test "C_C_Ul" {
    var lv: c.C_C_Ul = undefined;
    try testing.expectSize(c.C_C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:13290:13310
// struct  C_C_Us  {
//   char v1;
//   char v2;
//   unsigned short v3;
// };

test "C_C_Us" {
    var lv: c.C_C_Us = undefined;
    try testing.expectSize(c.C_C_Us, 4);
    try testing.expectAlign(c.C_C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:13315:13335
// struct  C_C_Vp  {
//   char v1;
//   char v2;
//   void *v3;
// };

test "C_C_Vp" {
    var lv: c.C_C_Vp = undefined;
    try testing.expectSize(c.C_C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:13340:13358
// struct  C_D  {
//   char v1;
//   double v2;
// };

test "C_D" {
    var lv: c.C_D = undefined;
    try testing.expectSize(c.C_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:14087:14107
// struct  C_D_C  {
//   char v1;
//   double v2;
//   char v3;
// };

test "C_D_C" {
    var lv: c.C_D_C = undefined;
    try testing.expectSize(c.C_D_C, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14112:14132
// struct  C_D_D  {
//   char v1;
//   double v2;
//   double v3;
// };

test "C_D_D" {
    var lv: c.C_D_D = undefined;
    try testing.expectSize(c.C_D_D, ABISELECT(24, 20));
    try testing.expectAlign(c.C_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14137:14157
// struct  C_D_F  {
//   char v1;
//   double v2;
//   float v3;
// };

test "C_D_F" {
    var lv: c.C_D_F = undefined;
    try testing.expectSize(c.C_D_F, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14162:14182
// struct  C_D_I  {
//   char v1;
//   double v2;
//   int v3;
// };

test "C_D_I" {
    var lv: c.C_D_I = undefined;
    try testing.expectSize(c.C_D_I, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14187:14207
// struct  C_D_Ip  {
//   char v1;
//   double v2;
//   int *v3;
// };

test "C_D_Ip" {
    var lv: c.C_D_Ip = undefined;
    try testing.expectSize(c.C_D_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14212:14232
// struct  C_D_L  {
//   char v1;
//   double v2;
//   __tsi64 v3;
// };

test "C_D_L" {
    var lv: c.C_D_L = undefined;
    try testing.expectSize(c.C_D_L, ABISELECT(24, 20));
    try testing.expectAlign(c.C_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14237:14257
// struct  C_D_S  {
//   char v1;
//   double v2;
//   short v3;
// };

test "C_D_S" {
    var lv: c.C_D_S = undefined;
    try testing.expectSize(c.C_D_S, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14262:14282
// struct  C_D_Uc  {
//   char v1;
//   double v2;
//   unsigned char v3;
// };

test "C_D_Uc" {
    var lv: c.C_D_Uc = undefined;
    try testing.expectSize(c.C_D_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14287:14307
// struct  C_D_Ui  {
//   char v1;
//   double v2;
//   unsigned int v3;
// };

test "C_D_Ui" {
    var lv: c.C_D_Ui = undefined;
    try testing.expectSize(c.C_D_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14312:14332
// struct  C_D_Ul  {
//   char v1;
//   double v2;
//   __tsu64 v3;
// };

test "C_D_Ul" {
    var lv: c.C_D_Ul = undefined;
    try testing.expectSize(c.C_D_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.C_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14337:14357
// struct  C_D_Us  {
//   char v1;
//   double v2;
//   unsigned short v3;
// };

test "C_D_Us" {
    var lv: c.C_D_Us = undefined;
    try testing.expectSize(c.C_D_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14362:14382
// struct  C_D_Vp  {
//   char v1;
//   double v2;
//   void *v3;
// };

test "C_D_Vp" {
    var lv: c.C_D_Vp = undefined;
    try testing.expectSize(c.C_D_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.C_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:14387:14405
// struct  C_F  {
//   char v1;
//   float v2;
// };

test "C_F" {
    var lv: c.C_F = undefined;
    try testing.expectSize(c.C_F, 8);
    try testing.expectAlign(c.C_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xaw.c:15134:15154
// struct  C_F_C  {
//   char v1;
//   float v2;
//   char v3;
// };

test "C_F_C" {
    var lv: c.C_F_C = undefined;
    try testing.expectSize(c.C_F_C, 12);
    try testing.expectAlign(c.C_F_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15159:15179
// struct  C_F_D  {
//   char v1;
//   float v2;
//   double v3;
// };

test "C_F_D" {
    var lv: c.C_F_D = undefined;
    try testing.expectSize(c.C_F_D, 16);
    try testing.expectAlign(c.C_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15184:15204
// struct  C_F_F  {
//   char v1;
//   float v2;
//   float v3;
// };

test "C_F_F" {
    var lv: c.C_F_F = undefined;
    try testing.expectSize(c.C_F_F, 12);
    try testing.expectAlign(c.C_F_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15209:15229
// struct  C_F_I  {
//   char v1;
//   float v2;
//   int v3;
// };

test "C_F_I" {
    var lv: c.C_F_I = undefined;
    try testing.expectSize(c.C_F_I, 12);
    try testing.expectAlign(c.C_F_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15234:15254
// struct  C_F_Ip  {
//   char v1;
//   float v2;
//   int *v3;
// };

test "C_F_Ip" {
    var lv: c.C_F_Ip = undefined;
    try testing.expectSize(c.C_F_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.C_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15259:15279
// struct  C_F_L  {
//   char v1;
//   float v2;
//   __tsi64 v3;
// };

test "C_F_L" {
    var lv: c.C_F_L = undefined;
    try testing.expectSize(c.C_F_L, 16);
    try testing.expectAlign(c.C_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15284:15304
// struct  C_F_S  {
//   char v1;
//   float v2;
//   short v3;
// };

test "C_F_S" {
    var lv: c.C_F_S = undefined;
    try testing.expectSize(c.C_F_S, 12);
    try testing.expectAlign(c.C_F_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15309:15329
// struct  C_F_Uc  {
//   char v1;
//   float v2;
//   unsigned char v3;
// };

test "C_F_Uc" {
    var lv: c.C_F_Uc = undefined;
    try testing.expectSize(c.C_F_Uc, 12);
    try testing.expectAlign(c.C_F_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15334:15354
// struct  C_F_Ui  {
//   char v1;
//   float v2;
//   unsigned int v3;
// };

test "C_F_Ui" {
    var lv: c.C_F_Ui = undefined;
    try testing.expectSize(c.C_F_Ui, 12);
    try testing.expectAlign(c.C_F_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15359:15379
// struct  C_F_Ul  {
//   char v1;
//   float v2;
//   __tsu64 v3;
// };

test "C_F_Ul" {
    var lv: c.C_F_Ul = undefined;
    try testing.expectSize(c.C_F_Ul, 16);
    try testing.expectAlign(c.C_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15384:15404
// struct  C_F_Us  {
//   char v1;
//   float v2;
//   unsigned short v3;
// };

test "C_F_Us" {
    var lv: c.C_F_Us = undefined;
    try testing.expectSize(c.C_F_Us, 12);
    try testing.expectAlign(c.C_F_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15409:15429
// struct  C_F_Vp  {
//   char v1;
//   float v2;
//   void *v3;
// };

test "C_F_Vp" {
    var lv: c.C_F_Vp = undefined;
    try testing.expectSize(c.C_F_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.C_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:15434:15452
// struct  C_I  {
//   char v1;
//   int v2;
// };

test "C_I" {
    var lv: c.C_I = undefined;
    try testing.expectSize(c.C_I, 8);
    try testing.expectAlign(c.C_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xaw.c:16181:16201
// struct  C_I_C  {
//   char v1;
//   int v2;
//   char v3;
// };

test "C_I_C" {
    var lv: c.C_I_C = undefined;
    try testing.expectSize(c.C_I_C, 12);
    try testing.expectAlign(c.C_I_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16206:16226
// struct  C_I_D  {
//   char v1;
//   int v2;
//   double v3;
// };

test "C_I_D" {
    var lv: c.C_I_D = undefined;
    try testing.expectSize(c.C_I_D, 16);
    try testing.expectAlign(c.C_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16231:16251
// struct  C_I_F  {
//   char v1;
//   int v2;
//   float v3;
// };

test "C_I_F" {
    var lv: c.C_I_F = undefined;
    try testing.expectSize(c.C_I_F, 12);
    try testing.expectAlign(c.C_I_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16256:16276
// struct  C_I_I  {
//   char v1;
//   int v2;
//   int v3;
// };

test "C_I_I" {
    var lv: c.C_I_I = undefined;
    try testing.expectSize(c.C_I_I, 12);
    try testing.expectAlign(c.C_I_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16281:16301
// struct  C_I_Ip  {
//   char v1;
//   int v2;
//   int *v3;
// };

test "C_I_Ip" {
    var lv: c.C_I_Ip = undefined;
    try testing.expectSize(c.C_I_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.C_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16306:16326
// struct  C_I_L  {
//   char v1;
//   int v2;
//   __tsi64 v3;
// };

test "C_I_L" {
    var lv: c.C_I_L = undefined;
    try testing.expectSize(c.C_I_L, 16);
    try testing.expectAlign(c.C_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16331:16351
// struct  C_I_S  {
//   char v1;
//   int v2;
//   short v3;
// };

test "C_I_S" {
    var lv: c.C_I_S = undefined;
    try testing.expectSize(c.C_I_S, 12);
    try testing.expectAlign(c.C_I_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16356:16376
// struct  C_I_Uc  {
//   char v1;
//   int v2;
//   unsigned char v3;
// };

test "C_I_Uc" {
    var lv: c.C_I_Uc = undefined;
    try testing.expectSize(c.C_I_Uc, 12);
    try testing.expectAlign(c.C_I_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16381:16401
// struct  C_I_Ui  {
//   char v1;
//   int v2;
//   unsigned int v3;
// };

test "C_I_Ui" {
    var lv: c.C_I_Ui = undefined;
    try testing.expectSize(c.C_I_Ui, 12);
    try testing.expectAlign(c.C_I_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16406:16426
// struct  C_I_Ul  {
//   char v1;
//   int v2;
//   __tsu64 v3;
// };

test "C_I_Ul" {
    var lv: c.C_I_Ul = undefined;
    try testing.expectSize(c.C_I_Ul, 16);
    try testing.expectAlign(c.C_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16431:16451
// struct  C_I_Us  {
//   char v1;
//   int v2;
//   unsigned short v3;
// };

test "C_I_Us" {
    var lv: c.C_I_Us = undefined;
    try testing.expectSize(c.C_I_Us, 12);
    try testing.expectAlign(c.C_I_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16456:16476
// struct  C_I_Vp  {
//   char v1;
//   int v2;
//   void *v3;
// };

test "C_I_Vp" {
    var lv: c.C_I_Vp = undefined;
    try testing.expectSize(c.C_I_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.C_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:16481:16499
// struct  C_Ip  {
//   char v1;
//   int *v2;
// };

test "C_Ip" {
    var lv: c.C_Ip = undefined;
    try testing.expectSize(c.C_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:17228:17248
// struct  C_Ip_C  {
//   char v1;
//   int *v2;
//   char v3;
// };

test "C_Ip_C" {
    var lv: c.C_Ip_C = undefined;
    try testing.expectSize(c.C_Ip_C, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17253:17273
// struct  C_Ip_D  {
//   char v1;
//   int *v2;
//   double v3;
// };

test "C_Ip_D" {
    var lv: c.C_Ip_D = undefined;
    try testing.expectSize(c.C_Ip_D, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17278:17298
// struct  C_Ip_F  {
//   char v1;
//   int *v2;
//   float v3;
// };

test "C_Ip_F" {
    var lv: c.C_Ip_F = undefined;
    try testing.expectSize(c.C_Ip_F, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17303:17323
// struct  C_Ip_I  {
//   char v1;
//   int *v2;
//   int v3;
// };

test "C_Ip_I" {
    var lv: c.C_Ip_I = undefined;
    try testing.expectSize(c.C_Ip_I, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17328:17348
// struct  C_Ip_Ip  {
//   char v1;
//   int *v2;
//   int *v3;
// };

test "C_Ip_Ip" {
    var lv: c.C_Ip_Ip = undefined;
    try testing.expectSize(c.C_Ip_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17353:17373
// struct  C_Ip_L  {
//   char v1;
//   int *v2;
//   __tsi64 v3;
// };

test "C_Ip_L" {
    var lv: c.C_Ip_L = undefined;
    try testing.expectSize(c.C_Ip_L, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17378:17398
// struct  C_Ip_S  {
//   char v1;
//   int *v2;
//   short v3;
// };

test "C_Ip_S" {
    var lv: c.C_Ip_S = undefined;
    try testing.expectSize(c.C_Ip_S, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17403:17423
// struct  C_Ip_Uc  {
//   char v1;
//   int *v2;
//   unsigned char v3;
// };

test "C_Ip_Uc" {
    var lv: c.C_Ip_Uc = undefined;
    try testing.expectSize(c.C_Ip_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17428:17448
// struct  C_Ip_Ui  {
//   char v1;
//   int *v2;
//   unsigned int v3;
// };

test "C_Ip_Ui" {
    var lv: c.C_Ip_Ui = undefined;
    try testing.expectSize(c.C_Ip_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17453:17473
// struct  C_Ip_Ul  {
//   char v1;
//   int *v2;
//   __tsu64 v3;
// };

test "C_Ip_Ul" {
    var lv: c.C_Ip_Ul = undefined;
    try testing.expectSize(c.C_Ip_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17478:17498
// struct  C_Ip_Us  {
//   char v1;
//   int *v2;
//   unsigned short v3;
// };

test "C_Ip_Us" {
    var lv: c.C_Ip_Us = undefined;
    try testing.expectSize(c.C_Ip_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17503:17523
// struct  C_Ip_Vp  {
//   char v1;
//   int *v2;
//   void *v3;
// };

test "C_Ip_Vp" {
    var lv: c.C_Ip_Vp = undefined;
    try testing.expectSize(c.C_Ip_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:17528:17546
// struct  C_L  {
//   char v1;
//   __tsi64 v2;
// };

test "C_L" {
    var lv: c.C_L = undefined;
    try testing.expectSize(c.C_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:18275:18295
// struct  C_L_C  {
//   char v1;
//   __tsi64 v2;
//   char v3;
// };

test "C_L_C" {
    var lv: c.C_L_C = undefined;
    try testing.expectSize(c.C_L_C, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18300:18320
// struct  C_L_D  {
//   char v1;
//   __tsi64 v2;
//   double v3;
// };

test "C_L_D" {
    var lv: c.C_L_D = undefined;
    try testing.expectSize(c.C_L_D, ABISELECT(24, 20));
    try testing.expectAlign(c.C_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18325:18345
// struct  C_L_F  {
//   char v1;
//   __tsi64 v2;
//   float v3;
// };

test "C_L_F" {
    var lv: c.C_L_F = undefined;
    try testing.expectSize(c.C_L_F, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18350:18370
// struct  C_L_I  {
//   char v1;
//   __tsi64 v2;
//   int v3;
// };

test "C_L_I" {
    var lv: c.C_L_I = undefined;
    try testing.expectSize(c.C_L_I, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18375:18395
// struct  C_L_Ip  {
//   char v1;
//   __tsi64 v2;
//   int *v3;
// };

test "C_L_Ip" {
    var lv: c.C_L_Ip = undefined;
    try testing.expectSize(c.C_L_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18400:18420
// struct  C_L_L  {
//   char v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "C_L_L" {
    var lv: c.C_L_L = undefined;
    try testing.expectSize(c.C_L_L, ABISELECT(24, 20));
    try testing.expectAlign(c.C_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18425:18445
// struct  C_L_S  {
//   char v1;
//   __tsi64 v2;
//   short v3;
// };

test "C_L_S" {
    var lv: c.C_L_S = undefined;
    try testing.expectSize(c.C_L_S, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18450:18470
// struct  C_L_Uc  {
//   char v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "C_L_Uc" {
    var lv: c.C_L_Uc = undefined;
    try testing.expectSize(c.C_L_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18475:18495
// struct  C_L_Ui  {
//   char v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "C_L_Ui" {
    var lv: c.C_L_Ui = undefined;
    try testing.expectSize(c.C_L_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18500:18520
// struct  C_L_Ul  {
//   char v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "C_L_Ul" {
    var lv: c.C_L_Ul = undefined;
    try testing.expectSize(c.C_L_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.C_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18525:18545
// struct  C_L_Us  {
//   char v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "C_L_Us" {
    var lv: c.C_L_Us = undefined;
    try testing.expectSize(c.C_L_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18550:18570
// struct  C_L_Vp  {
//   char v1;
//   __tsi64 v2;
//   void *v3;
// };

test "C_L_Vp" {
    var lv: c.C_L_Vp = undefined;
    try testing.expectSize(c.C_L_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.C_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:18575:18593
// struct  C_S  {
//   char v1;
//   short v2;
// };

test "C_S" {
    var lv: c.C_S = undefined;
    try testing.expectSize(c.C_S, 4);
    try testing.expectAlign(c.C_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xaw.c:19322:19342
// struct  C_S_C  {
//   char v1;
//   short v2;
//   char v3;
// };

test "C_S_C" {
    var lv: c.C_S_C = undefined;
    try testing.expectSize(c.C_S_C, 6);
    try testing.expectAlign(c.C_S_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19347:19367
// struct  C_S_D  {
//   char v1;
//   short v2;
//   double v3;
// };

test "C_S_D" {
    var lv: c.C_S_D = undefined;
    try testing.expectSize(c.C_S_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:19372:19392
// struct  C_S_F  {
//   char v1;
//   short v2;
//   float v3;
// };

test "C_S_F" {
    var lv: c.C_S_F = undefined;
    try testing.expectSize(c.C_S_F, 8);
    try testing.expectAlign(c.C_S_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19397:19417
// struct  C_S_I  {
//   char v1;
//   short v2;
//   int v3;
// };

test "C_S_I" {
    var lv: c.C_S_I = undefined;
    try testing.expectSize(c.C_S_I, 8);
    try testing.expectAlign(c.C_S_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19422:19442
// struct  C_S_Ip  {
//   char v1;
//   short v2;
//   int *v3;
// };

test "C_S_Ip" {
    var lv: c.C_S_Ip = undefined;
    try testing.expectSize(c.C_S_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:19447:19467
// struct  C_S_L  {
//   char v1;
//   short v2;
//   __tsi64 v3;
// };

test "C_S_L" {
    var lv: c.C_S_L = undefined;
    try testing.expectSize(c.C_S_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:19472:19492
// struct  C_S_S  {
//   char v1;
//   short v2;
//   short v3;
// };

test "C_S_S" {
    var lv: c.C_S_S = undefined;
    try testing.expectSize(c.C_S_S, 6);
    try testing.expectAlign(c.C_S_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19497:19517
// struct  C_S_Uc  {
//   char v1;
//   short v2;
//   unsigned char v3;
// };

test "C_S_Uc" {
    var lv: c.C_S_Uc = undefined;
    try testing.expectSize(c.C_S_Uc, 6);
    try testing.expectAlign(c.C_S_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19522:19542
// struct  C_S_Ui  {
//   char v1;
//   short v2;
//   unsigned int v3;
// };

test "C_S_Ui" {
    var lv: c.C_S_Ui = undefined;
    try testing.expectSize(c.C_S_Ui, 8);
    try testing.expectAlign(c.C_S_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19547:19567
// struct  C_S_Ul  {
//   char v1;
//   short v2;
//   __tsu64 v3;
// };

test "C_S_Ul" {
    var lv: c.C_S_Ul = undefined;
    try testing.expectSize(c.C_S_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:19572:19592
// struct  C_S_Us  {
//   char v1;
//   short v2;
//   unsigned short v3;
// };

test "C_S_Us" {
    var lv: c.C_S_Us = undefined;
    try testing.expectSize(c.C_S_Us, 6);
    try testing.expectAlign(c.C_S_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:19597:19617
// struct  C_S_Vp  {
//   char v1;
//   short v2;
//   void *v3;
// };

test "C_S_Vp" {
    var lv: c.C_S_Vp = undefined;
    try testing.expectSize(c.C_S_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:19622:19640
// struct  C_Uc  {
//   char v1;
//   unsigned char v2;
// };

test "C_Uc" {
    var lv: c.C_Uc = undefined;
    try testing.expectSize(c.C_Uc, 2);
    try testing.expectAlign(c.C_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
}

// From T_Snnn_xaw.c:20369:20389
// struct  C_Uc_C  {
//   char v1;
//   unsigned char v2;
//   char v3;
// };

test "C_Uc_C" {
    var lv: c.C_Uc_C = undefined;
    try testing.expectSize(c.C_Uc_C, 3);
    try testing.expectAlign(c.C_Uc_C, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:20394:20414
// struct  C_Uc_D  {
//   char v1;
//   unsigned char v2;
//   double v3;
// };

test "C_Uc_D" {
    var lv: c.C_Uc_D = undefined;
    try testing.expectSize(c.C_Uc_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:20419:20439
// struct  C_Uc_F  {
//   char v1;
//   unsigned char v2;
//   float v3;
// };

test "C_Uc_F" {
    var lv: c.C_Uc_F = undefined;
    try testing.expectSize(c.C_Uc_F, 8);
    try testing.expectAlign(c.C_Uc_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:20444:20464
// struct  C_Uc_I  {
//   char v1;
//   unsigned char v2;
//   int v3;
// };

test "C_Uc_I" {
    var lv: c.C_Uc_I = undefined;
    try testing.expectSize(c.C_Uc_I, 8);
    try testing.expectAlign(c.C_Uc_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:20469:20489
// struct  C_Uc_Ip  {
//   char v1;
//   unsigned char v2;
//   int *v3;
// };

test "C_Uc_Ip" {
    var lv: c.C_Uc_Ip = undefined;
    try testing.expectSize(c.C_Uc_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:20494:20514
// struct  C_Uc_L  {
//   char v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "C_Uc_L" {
    var lv: c.C_Uc_L = undefined;
    try testing.expectSize(c.C_Uc_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:20519:20539
// struct  C_Uc_S  {
//   char v1;
//   unsigned char v2;
//   short v3;
// };

test "C_Uc_S" {
    var lv: c.C_Uc_S = undefined;
    try testing.expectSize(c.C_Uc_S, 4);
    try testing.expectAlign(c.C_Uc_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:20544:20564
// struct  C_Uc_Uc  {
//   char v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "C_Uc_Uc" {
    var lv: c.C_Uc_Uc = undefined;
    try testing.expectSize(c.C_Uc_Uc, 3);
    try testing.expectAlign(c.C_Uc_Uc, 1);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:20569:20589
// struct  C_Uc_Ui  {
//   char v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "C_Uc_Ui" {
    var lv: c.C_Uc_Ui = undefined;
    try testing.expectSize(c.C_Uc_Ui, 8);
    try testing.expectAlign(c.C_Uc_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:20594:20614
// struct  C_Uc_Ul  {
//   char v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "C_Uc_Ul" {
    var lv: c.C_Uc_Ul = undefined;
    try testing.expectSize(c.C_Uc_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:20619:20639
// struct  C_Uc_Us  {
//   char v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "C_Uc_Us" {
    var lv: c.C_Uc_Us = undefined;
    try testing.expectSize(c.C_Uc_Us, 4);
    try testing.expectAlign(c.C_Uc_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, 2);
}

// From T_Snnn_xaw.c:20644:20664
// struct  C_Uc_Vp  {
//   char v1;
//   unsigned char v2;
//   void *v3;
// };

test "C_Uc_Vp" {
    var lv: c.C_Uc_Vp = undefined;
    try testing.expectSize(c.C_Uc_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 1);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:20669:20687
// struct  C_Ui  {
//   char v1;
//   unsigned int v2;
// };

test "C_Ui" {
    var lv: c.C_Ui = undefined;
    try testing.expectSize(c.C_Ui, 8);
    try testing.expectAlign(c.C_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
}

// From T_Snnn_xaw.c:21416:21436
// struct  C_Ui_C  {
//   char v1;
//   unsigned int v2;
//   char v3;
// };

test "C_Ui_C" {
    var lv: c.C_Ui_C = undefined;
    try testing.expectSize(c.C_Ui_C, 12);
    try testing.expectAlign(c.C_Ui_C, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21441:21461
// struct  C_Ui_D  {
//   char v1;
//   unsigned int v2;
//   double v3;
// };

test "C_Ui_D" {
    var lv: c.C_Ui_D = undefined;
    try testing.expectSize(c.C_Ui_D, 16);
    try testing.expectAlign(c.C_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21466:21486
// struct  C_Ui_F  {
//   char v1;
//   unsigned int v2;
//   float v3;
// };

test "C_Ui_F" {
    var lv: c.C_Ui_F = undefined;
    try testing.expectSize(c.C_Ui_F, 12);
    try testing.expectAlign(c.C_Ui_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21491:21511
// struct  C_Ui_I  {
//   char v1;
//   unsigned int v2;
//   int v3;
// };

test "C_Ui_I" {
    var lv: c.C_Ui_I = undefined;
    try testing.expectSize(c.C_Ui_I, 12);
    try testing.expectAlign(c.C_Ui_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21516:21536
// struct  C_Ui_Ip  {
//   char v1;
//   unsigned int v2;
//   int *v3;
// };

test "C_Ui_Ip" {
    var lv: c.C_Ui_Ip = undefined;
    try testing.expectSize(c.C_Ui_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21541:21561
// struct  C_Ui_L  {
//   char v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "C_Ui_L" {
    var lv: c.C_Ui_L = undefined;
    try testing.expectSize(c.C_Ui_L, 16);
    try testing.expectAlign(c.C_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21566:21586
// struct  C_Ui_S  {
//   char v1;
//   unsigned int v2;
//   short v3;
// };

test "C_Ui_S" {
    var lv: c.C_Ui_S = undefined;
    try testing.expectSize(c.C_Ui_S, 12);
    try testing.expectAlign(c.C_Ui_S, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21591:21611
// struct  C_Ui_Uc  {
//   char v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "C_Ui_Uc" {
    var lv: c.C_Ui_Uc = undefined;
    try testing.expectSize(c.C_Ui_Uc, 12);
    try testing.expectAlign(c.C_Ui_Uc, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21616:21636
// struct  C_Ui_Ui  {
//   char v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "C_Ui_Ui" {
    var lv: c.C_Ui_Ui = undefined;
    try testing.expectSize(c.C_Ui_Ui, 12);
    try testing.expectAlign(c.C_Ui_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21641:21661
// struct  C_Ui_Ul  {
//   char v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "C_Ui_Ul" {
    var lv: c.C_Ui_Ul = undefined;
    try testing.expectSize(c.C_Ui_Ul, 16);
    try testing.expectAlign(c.C_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21666:21686
// struct  C_Ui_Us  {
//   char v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "C_Ui_Us" {
    var lv: c.C_Ui_Us = undefined;
    try testing.expectSize(c.C_Ui_Us, 12);
    try testing.expectAlign(c.C_Ui_Us, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21691:21711
// struct  C_Ui_Vp  {
//   char v1;
//   unsigned int v2;
//   void *v3;
// };

test "C_Ui_Vp" {
    var lv: c.C_Ui_Vp = undefined;
    try testing.expectSize(c.C_Ui_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 4);
    try testing.expectFieldOffset(&lv, &lv.v3, 8);
}

// From T_Snnn_xaw.c:21716:21734
// struct  C_Ul  {
//   char v1;
//   __tsu64 v2;
// };

test "C_Ul" {
    var lv: c.C_Ul = undefined;
    try testing.expectSize(c.C_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:22463:22483
// struct  C_Ul_C  {
//   char v1;
//   __tsu64 v2;
//   char v3;
// };

test "C_Ul_C" {
    var lv: c.C_Ul_C = undefined;
    try testing.expectSize(c.C_Ul_C, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22488:22508
// struct  C_Ul_D  {
//   char v1;
//   __tsu64 v2;
//   double v3;
// };

test "C_Ul_D" {
    var lv: c.C_Ul_D = undefined;
    try testing.expectSize(c.C_Ul_D, ABISELECT(24, 20));
    try testing.expectAlign(c.C_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22513:22533
// struct  C_Ul_F  {
//   char v1;
//   __tsu64 v2;
//   float v3;
// };

test "C_Ul_F" {
    var lv: c.C_Ul_F = undefined;
    try testing.expectSize(c.C_Ul_F, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22538:22558
// struct  C_Ul_I  {
//   char v1;
//   __tsu64 v2;
//   int v3;
// };

test "C_Ul_I" {
    var lv: c.C_Ul_I = undefined;
    try testing.expectSize(c.C_Ul_I, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22563:22583
// struct  C_Ul_Ip  {
//   char v1;
//   __tsu64 v2;
//   int *v3;
// };

test "C_Ul_Ip" {
    var lv: c.C_Ul_Ip = undefined;
    try testing.expectSize(c.C_Ul_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22588:22608
// struct  C_Ul_L  {
//   char v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "C_Ul_L" {
    var lv: c.C_Ul_L = undefined;
    try testing.expectSize(c.C_Ul_L, ABISELECT(24, 20));
    try testing.expectAlign(c.C_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22613:22633
// struct  C_Ul_S  {
//   char v1;
//   __tsu64 v2;
//   short v3;
// };

test "C_Ul_S" {
    var lv: c.C_Ul_S = undefined;
    try testing.expectSize(c.C_Ul_S, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22638:22658
// struct  C_Ul_Uc  {
//   char v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "C_Ul_Uc" {
    var lv: c.C_Ul_Uc = undefined;
    try testing.expectSize(c.C_Ul_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22663:22683
// struct  C_Ul_Ui  {
//   char v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "C_Ul_Ui" {
    var lv: c.C_Ul_Ui = undefined;
    try testing.expectSize(c.C_Ul_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22688:22708
// struct  C_Ul_Ul  {
//   char v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "C_Ul_Ul" {
    var lv: c.C_Ul_Ul = undefined;
    try testing.expectSize(c.C_Ul_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.C_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22713:22733
// struct  C_Ul_Us  {
//   char v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "C_Ul_Us" {
    var lv: c.C_Ul_Us = undefined;
    try testing.expectSize(c.C_Ul_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22738:22758
// struct  C_Ul_Vp  {
//   char v1;
//   __tsu64 v2;
//   void *v3;
// };

test "C_Ul_Vp" {
    var lv: c.C_Ul_Vp = undefined;
    try testing.expectSize(c.C_Ul_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:22763:22781
// struct  C_Us  {
//   char v1;
//   unsigned short v2;
// };

test "C_Us" {
    var lv: c.C_Us = undefined;
    try testing.expectSize(c.C_Us, 4);
    try testing.expectAlign(c.C_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
}

// From T_Snnn_xaw.c:23510:23530
// struct  C_Us_C  {
//   char v1;
//   unsigned short v2;
//   char v3;
// };

test "C_Us_C" {
    var lv: c.C_Us_C = undefined;
    try testing.expectSize(c.C_Us_C, 6);
    try testing.expectAlign(c.C_Us_C, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23535:23555
// struct  C_Us_D  {
//   char v1;
//   unsigned short v2;
//   double v3;
// };

test "C_Us_D" {
    var lv: c.C_Us_D = undefined;
    try testing.expectSize(c.C_Us_D, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:23560:23580
// struct  C_Us_F  {
//   char v1;
//   unsigned short v2;
//   float v3;
// };

test "C_Us_F" {
    var lv: c.C_Us_F = undefined;
    try testing.expectSize(c.C_Us_F, 8);
    try testing.expectAlign(c.C_Us_F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23585:23605
// struct  C_Us_I  {
//   char v1;
//   unsigned short v2;
//   int v3;
// };

test "C_Us_I" {
    var lv: c.C_Us_I = undefined;
    try testing.expectSize(c.C_Us_I, 8);
    try testing.expectAlign(c.C_Us_I, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23610:23630
// struct  C_Us_Ip  {
//   char v1;
//   unsigned short v2;
//   int *v3;
// };

test "C_Us_Ip" {
    var lv: c.C_Us_Ip = undefined;
    try testing.expectSize(c.C_Us_Ip, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:23635:23655
// struct  C_Us_L  {
//   char v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "C_Us_L" {
    var lv: c.C_Us_L = undefined;
    try testing.expectSize(c.C_Us_L, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:23660:23680
// struct  C_Us_S  {
//   char v1;
//   unsigned short v2;
//   short v3;
// };

test "C_Us_S" {
    var lv: c.C_Us_S = undefined;
    try testing.expectSize(c.C_Us_S, 6);
    try testing.expectAlign(c.C_Us_S, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23685:23705
// struct  C_Us_Uc  {
//   char v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "C_Us_Uc" {
    var lv: c.C_Us_Uc = undefined;
    try testing.expectSize(c.C_Us_Uc, 6);
    try testing.expectAlign(c.C_Us_Uc, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23710:23730
// struct  C_Us_Ui  {
//   char v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "C_Us_Ui" {
    var lv: c.C_Us_Ui = undefined;
    try testing.expectSize(c.C_Us_Ui, 8);
    try testing.expectAlign(c.C_Us_Ui, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23735:23755
// struct  C_Us_Ul  {
//   char v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "C_Us_Ul" {
    var lv: c.C_Us_Ul = undefined;
    try testing.expectSize(c.C_Us_Ul, ABISELECT(16, 12));
    try testing.expectAlign(c.C_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:23760:23780
// struct  C_Us_Us  {
//   char v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "C_Us_Us" {
    var lv: c.C_Us_Us = undefined;
    try testing.expectSize(c.C_Us_Us, 6);
    try testing.expectAlign(c.C_Us_Us, 2);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, 4);
}

// From T_Snnn_xaw.c:23785:23805
// struct  C_Us_Vp  {
//   char v1;
//   unsigned short v2;
//   void *v3;
// };

test "C_Us_Vp" {
    var lv: c.C_Us_Vp = undefined;
    try testing.expectSize(c.C_Us_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 2);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:23810:23828
// struct  C_Vp  {
//   char v1;
//   void *v2;
// };

test "C_Vp" {
    var lv: c.C_Vp = undefined;
    try testing.expectSize(c.C_Vp, ABISELECT(16, 8));
    try testing.expectAlign(c.C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
}

// From T_Snnn_xaw.c:24557:24577
// struct  C_Vp_C  {
//   char v1;
//   void *v2;
//   char v3;
// };

test "C_Vp_C" {
    var lv: c.C_Vp_C = undefined;
    try testing.expectSize(c.C_Vp_C, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24582:24602
// struct  C_Vp_D  {
//   char v1;
//   void *v2;
//   double v3;
// };

test "C_Vp_D" {
    var lv: c.C_Vp_D = undefined;
    try testing.expectSize(c.C_Vp_D, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24607:24627
// struct  C_Vp_F  {
//   char v1;
//   void *v2;
//   float v3;
// };

test "C_Vp_F" {
    var lv: c.C_Vp_F = undefined;
    try testing.expectSize(c.C_Vp_F, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24632:24652
// struct  C_Vp_I  {
//   char v1;
//   void *v2;
//   int v3;
// };

test "C_Vp_I" {
    var lv: c.C_Vp_I = undefined;
    try testing.expectSize(c.C_Vp_I, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24657:24677
// struct  C_Vp_Ip  {
//   char v1;
//   void *v2;
//   int *v3;
// };

test "C_Vp_Ip" {
    var lv: c.C_Vp_Ip = undefined;
    try testing.expectSize(c.C_Vp_Ip, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24682:24702
// struct  C_Vp_L  {
//   char v1;
//   void *v2;
//   __tsi64 v3;
// };

test "C_Vp_L" {
    var lv: c.C_Vp_L = undefined;
    try testing.expectSize(c.C_Vp_L, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24707:24727
// struct  C_Vp_S  {
//   char v1;
//   void *v2;
//   short v3;
// };

test "C_Vp_S" {
    var lv: c.C_Vp_S = undefined;
    try testing.expectSize(c.C_Vp_S, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24732:24752
// struct  C_Vp_Uc  {
//   char v1;
//   void *v2;
//   unsigned char v3;
// };

test "C_Vp_Uc" {
    var lv: c.C_Vp_Uc = undefined;
    try testing.expectSize(c.C_Vp_Uc, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24757:24777
// struct  C_Vp_Ui  {
//   char v1;
//   void *v2;
//   unsigned int v3;
// };

test "C_Vp_Ui" {
    var lv: c.C_Vp_Ui = undefined;
    try testing.expectSize(c.C_Vp_Ui, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24782:24802
// struct  C_Vp_Ul  {
//   char v1;
//   void *v2;
//   __tsu64 v3;
// };

test "C_Vp_Ul" {
    var lv: c.C_Vp_Ul = undefined;
    try testing.expectSize(c.C_Vp_Ul, ABISELECT(24, 16));
    try testing.expectAlign(c.C_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24807:24827
// struct  C_Vp_Us  {
//   char v1;
//   void *v2;
//   unsigned short v3;
// };

test "C_Vp_Us" {
    var lv: c.C_Vp_Us = undefined;
    try testing.expectSize(c.C_Vp_Us, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24832:24852
// struct  C_Vp_Vp  {
//   char v1;
//   void *v2;
//   void *v3;
// };

test "C_Vp_Vp" {
    var lv: c.C_Vp_Vp = undefined;
    try testing.expectSize(c.C_Vp_Vp, ABISELECT(24, 12));
    try testing.expectAlign(c.C_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 8));
}

// From T_Snnn_xaw.c:24857:24873
// struct  D  {
//   double v1;
// };

test "D" {
    var lv: c.D = undefined;
    try testing.expectSize(c.D, 8);
    try testing.expectAlign(c.D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}

// From T_Snnn_xaw.c:55178:55196
// struct  D_C  {
//   double v1;
//   char v2;
// };

test "D_C" {
    var lv: c.D_C = undefined;
    try testing.expectSize(c.D_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:55925:55945
// struct  D_C_C  {
//   double v1;
//   char v2;
//   char v3;
// };

test "D_C_C" {
    var lv: c.D_C_C = undefined;
    try testing.expectSize(c.D_C_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xaw.c:55950:55970
// struct  D_C_D  {
//   double v1;
//   char v2;
//   double v3;
// };

test "D_C_D" {
    var lv: c.D_C_D = undefined;
    try testing.expectSize(c.D_C_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_C_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:55975:55995
// struct  D_C_F  {
//   double v1;
//   char v2;
//   float v3;
// };

test "D_C_F" {
    var lv: c.D_C_F = undefined;
    try testing.expectSize(c.D_C_F, 16);
    try testing.expectAlign(c.D_C_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:56000:56020
// struct  D_C_I  {
//   double v1;
//   char v2;
//   int v3;
// };

test "D_C_I" {
    var lv: c.D_C_I = undefined;
    try testing.expectSize(c.D_C_I, 16);
    try testing.expectAlign(c.D_C_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:56025:56045
// struct  D_C_Ip  {
//   double v1;
//   char v2;
//   int *v3;
// };

test "D_C_Ip" {
    var lv: c.D_C_Ip = undefined;
    try testing.expectSize(c.D_C_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_C_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:56050:56070
// struct  D_C_L  {
//   double v1;
//   char v2;
//   __tsi64 v3;
// };

test "D_C_L" {
    var lv: c.D_C_L = undefined;
    try testing.expectSize(c.D_C_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_C_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:56075:56095
// struct  D_C_S  {
//   double v1;
//   char v2;
//   short v3;
// };

test "D_C_S" {
    var lv: c.D_C_S = undefined;
    try testing.expectSize(c.D_C_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:56100:56120
// struct  D_C_Uc  {
//   double v1;
//   char v2;
//   unsigned char v3;
// };

test "D_C_Uc" {
    var lv: c.D_C_Uc = undefined;
    try testing.expectSize(c.D_C_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xaw.c:56125:56145
// struct  D_C_Ui  {
//   double v1;
//   char v2;
//   unsigned int v3;
// };

test "D_C_Ui" {
    var lv: c.D_C_Ui = undefined;
    try testing.expectSize(c.D_C_Ui, 16);
    try testing.expectAlign(c.D_C_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:56150:56170
// struct  D_C_Ul  {
//   double v1;
//   char v2;
//   __tsu64 v3;
// };

test "D_C_Ul" {
    var lv: c.D_C_Ul = undefined;
    try testing.expectSize(c.D_C_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_C_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:56175:56195
// struct  D_C_Us  {
//   double v1;
//   char v2;
//   unsigned short v3;
// };

test "D_C_Us" {
    var lv: c.D_C_Us = undefined;
    try testing.expectSize(c.D_C_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_C_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:56200:56220
// struct  D_C_Vp  {
//   double v1;
//   char v2;
//   void *v3;
// };

test "D_C_Vp" {
    var lv: c.D_C_Vp = undefined;
    try testing.expectSize(c.D_C_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_C_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:56225:56243
// struct  D_D  {
//   double v1;
//   double v2;
// };

test "D_D" {
    var lv: c.D_D = undefined;
    try testing.expectSize(c.D_D, 16);
    try testing.expectAlign(c.D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:56972:56992
// struct  D_D_C  {
//   double v1;
//   double v2;
//   char v3;
// };

test "D_D_C" {
    var lv: c.D_D_C = undefined;
    try testing.expectSize(c.D_D_C, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:56997:57017
// struct  D_D_D  {
//   double v1;
//   double v2;
//   double v3;
// };

test "D_D_D" {
    var lv: c.D_D_D = undefined;
    try testing.expectSize(c.D_D_D, 24);
    try testing.expectAlign(c.D_D_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57022:57042
// struct  D_D_F  {
//   double v1;
//   double v2;
//   float v3;
// };

test "D_D_F" {
    var lv: c.D_D_F = undefined;
    try testing.expectSize(c.D_D_F, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57047:57067
// struct  D_D_I  {
//   double v1;
//   double v2;
//   int v3;
// };

test "D_D_I" {
    var lv: c.D_D_I = undefined;
    try testing.expectSize(c.D_D_I, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57072:57092
// struct  D_D_Ip  {
//   double v1;
//   double v2;
//   int *v3;
// };

test "D_D_Ip" {
    var lv: c.D_D_Ip = undefined;
    try testing.expectSize(c.D_D_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57097:57117
// struct  D_D_L  {
//   double v1;
//   double v2;
//   __tsi64 v3;
// };

test "D_D_L" {
    var lv: c.D_D_L = undefined;
    try testing.expectSize(c.D_D_L, 24);
    try testing.expectAlign(c.D_D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57122:57142
// struct  D_D_S  {
//   double v1;
//   double v2;
//   short v3;
// };

test "D_D_S" {
    var lv: c.D_D_S = undefined;
    try testing.expectSize(c.D_D_S, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57147:57167
// struct  D_D_Uc  {
//   double v1;
//   double v2;
//   unsigned char v3;
// };

test "D_D_Uc" {
    var lv: c.D_D_Uc = undefined;
    try testing.expectSize(c.D_D_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57172:57192
// struct  D_D_Ui  {
//   double v1;
//   double v2;
//   unsigned int v3;
// };

test "D_D_Ui" {
    var lv: c.D_D_Ui = undefined;
    try testing.expectSize(c.D_D_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57197:57217
// struct  D_D_Ul  {
//   double v1;
//   double v2;
//   __tsu64 v3;
// };

test "D_D_Ul" {
    var lv: c.D_D_Ul = undefined;
    try testing.expectSize(c.D_D_Ul, 24);
    try testing.expectAlign(c.D_D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57222:57242
// struct  D_D_Us  {
//   double v1;
//   double v2;
//   unsigned short v3;
// };

test "D_D_Us" {
    var lv: c.D_D_Us = undefined;
    try testing.expectSize(c.D_D_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57247:57267
// struct  D_D_Vp  {
//   double v1;
//   double v2;
//   void *v3;
// };

test "D_D_Vp" {
    var lv: c.D_D_Vp = undefined;
    try testing.expectSize(c.D_D_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.D_D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:57272:57290
// struct  D_F  {
//   double v1;
//   float v2;
// };

test "D_F" {
    var lv: c.D_F = undefined;
    try testing.expectSize(c.D_F, ABISELECT(16, 12));
    try testing.expectAlign(c.D_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:58019:58039
// struct  D_F_C  {
//   double v1;
//   float v2;
//   char v3;
// };

test "D_F_C" {
    var lv: c.D_F_C = undefined;
    try testing.expectSize(c.D_F_C, 16);
    try testing.expectAlign(c.D_F_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58044:58064
// struct  D_F_D  {
//   double v1;
//   float v2;
//   double v3;
// };

test "D_F_D" {
    var lv: c.D_F_D = undefined;
    try testing.expectSize(c.D_F_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_F_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:58069:58089
// struct  D_F_F  {
//   double v1;
//   float v2;
//   float v3;
// };

test "D_F_F" {
    var lv: c.D_F_F = undefined;
    try testing.expectSize(c.D_F_F, 16);
    try testing.expectAlign(c.D_F_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58094:58114
// struct  D_F_I  {
//   double v1;
//   float v2;
//   int v3;
// };

test "D_F_I" {
    var lv: c.D_F_I = undefined;
    try testing.expectSize(c.D_F_I, 16);
    try testing.expectAlign(c.D_F_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58119:58139
// struct  D_F_Ip  {
//   double v1;
//   float v2;
//   int *v3;
// };

test "D_F_Ip" {
    var lv: c.D_F_Ip = undefined;
    try testing.expectSize(c.D_F_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_F_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:58144:58164
// struct  D_F_L  {
//   double v1;
//   float v2;
//   __tsi64 v3;
// };

test "D_F_L" {
    var lv: c.D_F_L = undefined;
    try testing.expectSize(c.D_F_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_F_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:58169:58189
// struct  D_F_S  {
//   double v1;
//   float v2;
//   short v3;
// };

test "D_F_S" {
    var lv: c.D_F_S = undefined;
    try testing.expectSize(c.D_F_S, 16);
    try testing.expectAlign(c.D_F_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58194:58214
// struct  D_F_Uc  {
//   double v1;
//   float v2;
//   unsigned char v3;
// };

test "D_F_Uc" {
    var lv: c.D_F_Uc = undefined;
    try testing.expectSize(c.D_F_Uc, 16);
    try testing.expectAlign(c.D_F_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58219:58239
// struct  D_F_Ui  {
//   double v1;
//   float v2;
//   unsigned int v3;
// };

test "D_F_Ui" {
    var lv: c.D_F_Ui = undefined;
    try testing.expectSize(c.D_F_Ui, 16);
    try testing.expectAlign(c.D_F_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58244:58264
// struct  D_F_Ul  {
//   double v1;
//   float v2;
//   __tsu64 v3;
// };

test "D_F_Ul" {
    var lv: c.D_F_Ul = undefined;
    try testing.expectSize(c.D_F_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_F_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:58269:58289
// struct  D_F_Us  {
//   double v1;
//   float v2;
//   unsigned short v3;
// };

test "D_F_Us" {
    var lv: c.D_F_Us = undefined;
    try testing.expectSize(c.D_F_Us, 16);
    try testing.expectAlign(c.D_F_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:58294:58314
// struct  D_F_Vp  {
//   double v1;
//   float v2;
//   void *v3;
// };

test "D_F_Vp" {
    var lv: c.D_F_Vp = undefined;
    try testing.expectSize(c.D_F_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_F_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:58319:58337
// struct  D_I  {
//   double v1;
//   int v2;
// };

test "D_I" {
    var lv: c.D_I = undefined;
    try testing.expectSize(c.D_I, ABISELECT(16, 12));
    try testing.expectAlign(c.D_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:59066:59086
// struct  D_I_C  {
//   double v1;
//   int v2;
//   char v3;
// };

test "D_I_C" {
    var lv: c.D_I_C = undefined;
    try testing.expectSize(c.D_I_C, 16);
    try testing.expectAlign(c.D_I_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59091:59111
// struct  D_I_D  {
//   double v1;
//   int v2;
//   double v3;
// };

test "D_I_D" {
    var lv: c.D_I_D = undefined;
    try testing.expectSize(c.D_I_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_I_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:59116:59136
// struct  D_I_F  {
//   double v1;
//   int v2;
//   float v3;
// };

test "D_I_F" {
    var lv: c.D_I_F = undefined;
    try testing.expectSize(c.D_I_F, 16);
    try testing.expectAlign(c.D_I_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59141:59161
// struct  D_I_I  {
//   double v1;
//   int v2;
//   int v3;
// };

test "D_I_I" {
    var lv: c.D_I_I = undefined;
    try testing.expectSize(c.D_I_I, 16);
    try testing.expectAlign(c.D_I_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59166:59186
// struct  D_I_Ip  {
//   double v1;
//   int v2;
//   int *v3;
// };

test "D_I_Ip" {
    var lv: c.D_I_Ip = undefined;
    try testing.expectSize(c.D_I_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_I_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:59191:59211
// struct  D_I_L  {
//   double v1;
//   int v2;
//   __tsi64 v3;
// };

test "D_I_L" {
    var lv: c.D_I_L = undefined;
    try testing.expectSize(c.D_I_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_I_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:59216:59236
// struct  D_I_S  {
//   double v1;
//   int v2;
//   short v3;
// };

test "D_I_S" {
    var lv: c.D_I_S = undefined;
    try testing.expectSize(c.D_I_S, 16);
    try testing.expectAlign(c.D_I_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59241:59261
// struct  D_I_Uc  {
//   double v1;
//   int v2;
//   unsigned char v3;
// };

test "D_I_Uc" {
    var lv: c.D_I_Uc = undefined;
    try testing.expectSize(c.D_I_Uc, 16);
    try testing.expectAlign(c.D_I_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59266:59286
// struct  D_I_Ui  {
//   double v1;
//   int v2;
//   unsigned int v3;
// };

test "D_I_Ui" {
    var lv: c.D_I_Ui = undefined;
    try testing.expectSize(c.D_I_Ui, 16);
    try testing.expectAlign(c.D_I_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59291:59311
// struct  D_I_Ul  {
//   double v1;
//   int v2;
//   __tsu64 v3;
// };

test "D_I_Ul" {
    var lv: c.D_I_Ul = undefined;
    try testing.expectSize(c.D_I_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_I_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:59316:59336
// struct  D_I_Us  {
//   double v1;
//   int v2;
//   unsigned short v3;
// };

test "D_I_Us" {
    var lv: c.D_I_Us = undefined;
    try testing.expectSize(c.D_I_Us, 16);
    try testing.expectAlign(c.D_I_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:59341:59361
// struct  D_I_Vp  {
//   double v1;
//   int v2;
//   void *v3;
// };

test "D_I_Vp" {
    var lv: c.D_I_Vp = undefined;
    try testing.expectSize(c.D_I_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_I_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:59366:59384
// struct  D_Ip  {
//   double v1;
//   int *v2;
// };

test "D_Ip" {
    var lv: c.D_Ip = undefined;
    try testing.expectSize(c.D_Ip, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:60113:60133
// struct  D_Ip_C  {
//   double v1;
//   int *v2;
//   char v3;
// };

test "D_Ip_C" {
    var lv: c.D_Ip_C = undefined;
    try testing.expectSize(c.D_Ip_C, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60138:60158
// struct  D_Ip_D  {
//   double v1;
//   int *v2;
//   double v3;
// };

test "D_Ip_D" {
    var lv: c.D_Ip_D = undefined;
    try testing.expectSize(c.D_Ip_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ip_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60163:60183
// struct  D_Ip_F  {
//   double v1;
//   int *v2;
//   float v3;
// };

test "D_Ip_F" {
    var lv: c.D_Ip_F = undefined;
    try testing.expectSize(c.D_Ip_F, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60188:60208
// struct  D_Ip_I  {
//   double v1;
//   int *v2;
//   int v3;
// };

test "D_Ip_I" {
    var lv: c.D_Ip_I = undefined;
    try testing.expectSize(c.D_Ip_I, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60213:60233
// struct  D_Ip_Ip  {
//   double v1;
//   int *v2;
//   int *v3;
// };

test "D_Ip_Ip" {
    var lv: c.D_Ip_Ip = undefined;
    try testing.expectSize(c.D_Ip_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60238:60258
// struct  D_Ip_L  {
//   double v1;
//   int *v2;
//   __tsi64 v3;
// };

test "D_Ip_L" {
    var lv: c.D_Ip_L = undefined;
    try testing.expectSize(c.D_Ip_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ip_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60263:60283
// struct  D_Ip_S  {
//   double v1;
//   int *v2;
//   short v3;
// };

test "D_Ip_S" {
    var lv: c.D_Ip_S = undefined;
    try testing.expectSize(c.D_Ip_S, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60288:60308
// struct  D_Ip_Uc  {
//   double v1;
//   int *v2;
//   unsigned char v3;
// };

test "D_Ip_Uc" {
    var lv: c.D_Ip_Uc = undefined;
    try testing.expectSize(c.D_Ip_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60313:60333
// struct  D_Ip_Ui  {
//   double v1;
//   int *v2;
//   unsigned int v3;
// };

test "D_Ip_Ui" {
    var lv: c.D_Ip_Ui = undefined;
    try testing.expectSize(c.D_Ip_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60338:60358
// struct  D_Ip_Ul  {
//   double v1;
//   int *v2;
//   __tsu64 v3;
// };

test "D_Ip_Ul" {
    var lv: c.D_Ip_Ul = undefined;
    try testing.expectSize(c.D_Ip_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ip_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60363:60383
// struct  D_Ip_Us  {
//   double v1;
//   int *v2;
//   unsigned short v3;
// };

test "D_Ip_Us" {
    var lv: c.D_Ip_Us = undefined;
    try testing.expectSize(c.D_Ip_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60388:60408
// struct  D_Ip_Vp  {
//   double v1;
//   int *v2;
//   void *v3;
// };

test "D_Ip_Vp" {
    var lv: c.D_Ip_Vp = undefined;
    try testing.expectSize(c.D_Ip_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ip_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:60413:60431
// struct  D_L  {
//   double v1;
//   __tsi64 v2;
// };

test "D_L" {
    var lv: c.D_L = undefined;
    try testing.expectSize(c.D_L, 16);
    try testing.expectAlign(c.D_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:61160:61180
// struct  D_L_C  {
//   double v1;
//   __tsi64 v2;
//   char v3;
// };

test "D_L_C" {
    var lv: c.D_L_C = undefined;
    try testing.expectSize(c.D_L_C, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61185:61205
// struct  D_L_D  {
//   double v1;
//   __tsi64 v2;
//   double v3;
// };

test "D_L_D" {
    var lv: c.D_L_D = undefined;
    try testing.expectSize(c.D_L_D, 24);
    try testing.expectAlign(c.D_L_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61210:61230
// struct  D_L_F  {
//   double v1;
//   __tsi64 v2;
//   float v3;
// };

test "D_L_F" {
    var lv: c.D_L_F = undefined;
    try testing.expectSize(c.D_L_F, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61235:61255
// struct  D_L_I  {
//   double v1;
//   __tsi64 v2;
//   int v3;
// };

test "D_L_I" {
    var lv: c.D_L_I = undefined;
    try testing.expectSize(c.D_L_I, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61260:61280
// struct  D_L_Ip  {
//   double v1;
//   __tsi64 v2;
//   int *v3;
// };

test "D_L_Ip" {
    var lv: c.D_L_Ip = undefined;
    try testing.expectSize(c.D_L_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61285:61305
// struct  D_L_L  {
//   double v1;
//   __tsi64 v2;
//   __tsi64 v3;
// };

test "D_L_L" {
    var lv: c.D_L_L = undefined;
    try testing.expectSize(c.D_L_L, 24);
    try testing.expectAlign(c.D_L_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61310:61330
// struct  D_L_S  {
//   double v1;
//   __tsi64 v2;
//   short v3;
// };

test "D_L_S" {
    var lv: c.D_L_S = undefined;
    try testing.expectSize(c.D_L_S, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61335:61355
// struct  D_L_Uc  {
//   double v1;
//   __tsi64 v2;
//   unsigned char v3;
// };

test "D_L_Uc" {
    var lv: c.D_L_Uc = undefined;
    try testing.expectSize(c.D_L_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61360:61380
// struct  D_L_Ui  {
//   double v1;
//   __tsi64 v2;
//   unsigned int v3;
// };

test "D_L_Ui" {
    var lv: c.D_L_Ui = undefined;
    try testing.expectSize(c.D_L_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61385:61405
// struct  D_L_Ul  {
//   double v1;
//   __tsi64 v2;
//   __tsu64 v3;
// };

test "D_L_Ul" {
    var lv: c.D_L_Ul = undefined;
    try testing.expectSize(c.D_L_Ul, 24);
    try testing.expectAlign(c.D_L_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61410:61430
// struct  D_L_Us  {
//   double v1;
//   __tsi64 v2;
//   unsigned short v3;
// };

test "D_L_Us" {
    var lv: c.D_L_Us = undefined;
    try testing.expectSize(c.D_L_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61435:61455
// struct  D_L_Vp  {
//   double v1;
//   __tsi64 v2;
//   void *v3;
// };

test "D_L_Vp" {
    var lv: c.D_L_Vp = undefined;
    try testing.expectSize(c.D_L_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.D_L_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:61460:61478
// struct  D_S  {
//   double v1;
//   short v2;
// };

test "D_S" {
    var lv: c.D_S = undefined;
    try testing.expectSize(c.D_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:62207:62227
// struct  D_S_C  {
//   double v1;
//   short v2;
//   char v3;
// };

test "D_S_C" {
    var lv: c.D_S_C = undefined;
    try testing.expectSize(c.D_S_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:62232:62252
// struct  D_S_D  {
//   double v1;
//   short v2;
//   double v3;
// };

test "D_S_D" {
    var lv: c.D_S_D = undefined;
    try testing.expectSize(c.D_S_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_S_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:62257:62277
// struct  D_S_F  {
//   double v1;
//   short v2;
//   float v3;
// };

test "D_S_F" {
    var lv: c.D_S_F = undefined;
    try testing.expectSize(c.D_S_F, 16);
    try testing.expectAlign(c.D_S_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:62282:62302
// struct  D_S_I  {
//   double v1;
//   short v2;
//   int v3;
// };

test "D_S_I" {
    var lv: c.D_S_I = undefined;
    try testing.expectSize(c.D_S_I, 16);
    try testing.expectAlign(c.D_S_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:62307:62327
// struct  D_S_Ip  {
//   double v1;
//   short v2;
//   int *v3;
// };

test "D_S_Ip" {
    var lv: c.D_S_Ip = undefined;
    try testing.expectSize(c.D_S_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_S_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:62332:62352
// struct  D_S_L  {
//   double v1;
//   short v2;
//   __tsi64 v3;
// };

test "D_S_L" {
    var lv: c.D_S_L = undefined;
    try testing.expectSize(c.D_S_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_S_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:62357:62377
// struct  D_S_S  {
//   double v1;
//   short v2;
//   short v3;
// };

test "D_S_S" {
    var lv: c.D_S_S = undefined;
    try testing.expectSize(c.D_S_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:62382:62402
// struct  D_S_Uc  {
//   double v1;
//   short v2;
//   unsigned char v3;
// };

test "D_S_Uc" {
    var lv: c.D_S_Uc = undefined;
    try testing.expectSize(c.D_S_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:62407:62427
// struct  D_S_Ui  {
//   double v1;
//   short v2;
//   unsigned int v3;
// };

test "D_S_Ui" {
    var lv: c.D_S_Ui = undefined;
    try testing.expectSize(c.D_S_Ui, 16);
    try testing.expectAlign(c.D_S_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:62432:62452
// struct  D_S_Ul  {
//   double v1;
//   short v2;
//   __tsu64 v3;
// };

test "D_S_Ul" {
    var lv: c.D_S_Ul = undefined;
    try testing.expectSize(c.D_S_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_S_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:62457:62477
// struct  D_S_Us  {
//   double v1;
//   short v2;
//   unsigned short v3;
// };

test "D_S_Us" {
    var lv: c.D_S_Us = undefined;
    try testing.expectSize(c.D_S_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_S_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:62482:62502
// struct  D_S_Vp  {
//   double v1;
//   short v2;
//   void *v3;
// };

test "D_S_Vp" {
    var lv: c.D_S_Vp = undefined;
    try testing.expectSize(c.D_S_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_S_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:62507:62525
// struct  D_Uc  {
//   double v1;
//   unsigned char v2;
// };

test "D_Uc" {
    var lv: c.D_Uc = undefined;
    try testing.expectSize(c.D_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:63254:63274
// struct  D_Uc_C  {
//   double v1;
//   unsigned char v2;
//   char v3;
// };

test "D_Uc_C" {
    var lv: c.D_Uc_C = undefined;
    try testing.expectSize(c.D_Uc_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xaw.c:63279:63299
// struct  D_Uc_D  {
//   double v1;
//   unsigned char v2;
//   double v3;
// };

test "D_Uc_D" {
    var lv: c.D_Uc_D = undefined;
    try testing.expectSize(c.D_Uc_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Uc_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:63304:63324
// struct  D_Uc_F  {
//   double v1;
//   unsigned char v2;
//   float v3;
// };

test "D_Uc_F" {
    var lv: c.D_Uc_F = undefined;
    try testing.expectSize(c.D_Uc_F, 16);
    try testing.expectAlign(c.D_Uc_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:63329:63349
// struct  D_Uc_I  {
//   double v1;
//   unsigned char v2;
//   int v3;
// };

test "D_Uc_I" {
    var lv: c.D_Uc_I = undefined;
    try testing.expectSize(c.D_Uc_I, 16);
    try testing.expectAlign(c.D_Uc_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:63354:63374
// struct  D_Uc_Ip  {
//   double v1;
//   unsigned char v2;
//   int *v3;
// };

test "D_Uc_Ip" {
    var lv: c.D_Uc_Ip = undefined;
    try testing.expectSize(c.D_Uc_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Uc_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:63379:63399
// struct  D_Uc_L  {
//   double v1;
//   unsigned char v2;
//   __tsi64 v3;
// };

test "D_Uc_L" {
    var lv: c.D_Uc_L = undefined;
    try testing.expectSize(c.D_Uc_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Uc_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:63404:63424
// struct  D_Uc_S  {
//   double v1;
//   unsigned char v2;
//   short v3;
// };

test "D_Uc_S" {
    var lv: c.D_Uc_S = undefined;
    try testing.expectSize(c.D_Uc_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:63429:63449
// struct  D_Uc_Uc  {
//   double v1;
//   unsigned char v2;
//   unsigned char v3;
// };

test "D_Uc_Uc" {
    var lv: c.D_Uc_Uc = undefined;
    try testing.expectSize(c.D_Uc_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 9);
}

// From T_Snnn_xaw.c:63454:63474
// struct  D_Uc_Ui  {
//   double v1;
//   unsigned char v2;
//   unsigned int v3;
// };

test "D_Uc_Ui" {
    var lv: c.D_Uc_Ui = undefined;
    try testing.expectSize(c.D_Uc_Ui, 16);
    try testing.expectAlign(c.D_Uc_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:63479:63499
// struct  D_Uc_Ul  {
//   double v1;
//   unsigned char v2;
//   __tsu64 v3;
// };

test "D_Uc_Ul" {
    var lv: c.D_Uc_Ul = undefined;
    try testing.expectSize(c.D_Uc_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Uc_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:63504:63524
// struct  D_Uc_Us  {
//   double v1;
//   unsigned char v2;
//   unsigned short v3;
// };

test "D_Uc_Us" {
    var lv: c.D_Uc_Us = undefined;
    try testing.expectSize(c.D_Uc_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Uc_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:63529:63549
// struct  D_Uc_Vp  {
//   double v1;
//   unsigned char v2;
//   void *v3;
// };

test "D_Uc_Vp" {
    var lv: c.D_Uc_Vp = undefined;
    try testing.expectSize(c.D_Uc_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Uc_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:63554:63572
// struct  D_Ui  {
//   double v1;
//   unsigned int v2;
// };

test "D_Ui" {
    var lv: c.D_Ui = undefined;
    try testing.expectSize(c.D_Ui, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:64301:64321
// struct  D_Ui_C  {
//   double v1;
//   unsigned int v2;
//   char v3;
// };

test "D_Ui_C" {
    var lv: c.D_Ui_C = undefined;
    try testing.expectSize(c.D_Ui_C, 16);
    try testing.expectAlign(c.D_Ui_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64326:64346
// struct  D_Ui_D  {
//   double v1;
//   unsigned int v2;
//   double v3;
// };

test "D_Ui_D" {
    var lv: c.D_Ui_D = undefined;
    try testing.expectSize(c.D_Ui_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ui_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:64351:64371
// struct  D_Ui_F  {
//   double v1;
//   unsigned int v2;
//   float v3;
// };

test "D_Ui_F" {
    var lv: c.D_Ui_F = undefined;
    try testing.expectSize(c.D_Ui_F, 16);
    try testing.expectAlign(c.D_Ui_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64376:64396
// struct  D_Ui_I  {
//   double v1;
//   unsigned int v2;
//   int v3;
// };

test "D_Ui_I" {
    var lv: c.D_Ui_I = undefined;
    try testing.expectSize(c.D_Ui_I, 16);
    try testing.expectAlign(c.D_Ui_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64401:64421
// struct  D_Ui_Ip  {
//   double v1;
//   unsigned int v2;
//   int *v3;
// };

test "D_Ui_Ip" {
    var lv: c.D_Ui_Ip = undefined;
    try testing.expectSize(c.D_Ui_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ui_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:64426:64446
// struct  D_Ui_L  {
//   double v1;
//   unsigned int v2;
//   __tsi64 v3;
// };

test "D_Ui_L" {
    var lv: c.D_Ui_L = undefined;
    try testing.expectSize(c.D_Ui_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ui_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:64451:64471
// struct  D_Ui_S  {
//   double v1;
//   unsigned int v2;
//   short v3;
// };

test "D_Ui_S" {
    var lv: c.D_Ui_S = undefined;
    try testing.expectSize(c.D_Ui_S, 16);
    try testing.expectAlign(c.D_Ui_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64476:64496
// struct  D_Ui_Uc  {
//   double v1;
//   unsigned int v2;
//   unsigned char v3;
// };

test "D_Ui_Uc" {
    var lv: c.D_Ui_Uc = undefined;
    try testing.expectSize(c.D_Ui_Uc, 16);
    try testing.expectAlign(c.D_Ui_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64501:64521
// struct  D_Ui_Ui  {
//   double v1;
//   unsigned int v2;
//   unsigned int v3;
// };

test "D_Ui_Ui" {
    var lv: c.D_Ui_Ui = undefined;
    try testing.expectSize(c.D_Ui_Ui, 16);
    try testing.expectAlign(c.D_Ui_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64526:64546
// struct  D_Ui_Ul  {
//   double v1;
//   unsigned int v2;
//   __tsu64 v3;
// };

test "D_Ui_Ul" {
    var lv: c.D_Ui_Ul = undefined;
    try testing.expectSize(c.D_Ui_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ui_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:64551:64571
// struct  D_Ui_Us  {
//   double v1;
//   unsigned int v2;
//   unsigned short v3;
// };

test "D_Ui_Us" {
    var lv: c.D_Ui_Us = undefined;
    try testing.expectSize(c.D_Ui_Us, 16);
    try testing.expectAlign(c.D_Ui_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:64576:64596
// struct  D_Ui_Vp  {
//   double v1;
//   unsigned int v2;
//   void *v3;
// };

test "D_Ui_Vp" {
    var lv: c.D_Ui_Vp = undefined;
    try testing.expectSize(c.D_Ui_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Ui_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:64601:64619
// struct  D_Ul  {
//   double v1;
//   __tsu64 v2;
// };

test "D_Ul" {
    var lv: c.D_Ul = undefined;
    try testing.expectSize(c.D_Ul, 16);
    try testing.expectAlign(c.D_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:65348:65368
// struct  D_Ul_C  {
//   double v1;
//   __tsu64 v2;
//   char v3;
// };

test "D_Ul_C" {
    var lv: c.D_Ul_C = undefined;
    try testing.expectSize(c.D_Ul_C, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65373:65393
// struct  D_Ul_D  {
//   double v1;
//   __tsu64 v2;
//   double v3;
// };

test "D_Ul_D" {
    var lv: c.D_Ul_D = undefined;
    try testing.expectSize(c.D_Ul_D, 24);
    try testing.expectAlign(c.D_Ul_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65398:65418
// struct  D_Ul_F  {
//   double v1;
//   __tsu64 v2;
//   float v3;
// };

test "D_Ul_F" {
    var lv: c.D_Ul_F = undefined;
    try testing.expectSize(c.D_Ul_F, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65423:65443
// struct  D_Ul_I  {
//   double v1;
//   __tsu64 v2;
//   int v3;
// };

test "D_Ul_I" {
    var lv: c.D_Ul_I = undefined;
    try testing.expectSize(c.D_Ul_I, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65448:65468
// struct  D_Ul_Ip  {
//   double v1;
//   __tsu64 v2;
//   int *v3;
// };

test "D_Ul_Ip" {
    var lv: c.D_Ul_Ip = undefined;
    try testing.expectSize(c.D_Ul_Ip, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65473:65493
// struct  D_Ul_L  {
//   double v1;
//   __tsu64 v2;
//   __tsi64 v3;
// };

test "D_Ul_L" {
    var lv: c.D_Ul_L = undefined;
    try testing.expectSize(c.D_Ul_L, 24);
    try testing.expectAlign(c.D_Ul_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65498:65518
// struct  D_Ul_S  {
//   double v1;
//   __tsu64 v2;
//   short v3;
// };

test "D_Ul_S" {
    var lv: c.D_Ul_S = undefined;
    try testing.expectSize(c.D_Ul_S, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65523:65543
// struct  D_Ul_Uc  {
//   double v1;
//   __tsu64 v2;
//   unsigned char v3;
// };

test "D_Ul_Uc" {
    var lv: c.D_Ul_Uc = undefined;
    try testing.expectSize(c.D_Ul_Uc, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65548:65568
// struct  D_Ul_Ui  {
//   double v1;
//   __tsu64 v2;
//   unsigned int v3;
// };

test "D_Ul_Ui" {
    var lv: c.D_Ul_Ui = undefined;
    try testing.expectSize(c.D_Ul_Ui, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65573:65593
// struct  D_Ul_Ul  {
//   double v1;
//   __tsu64 v2;
//   __tsu64 v3;
// };

test "D_Ul_Ul" {
    var lv: c.D_Ul_Ul = undefined;
    try testing.expectSize(c.D_Ul_Ul, 24);
    try testing.expectAlign(c.D_Ul_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65598:65618
// struct  D_Ul_Us  {
//   double v1;
//   __tsu64 v2;
//   unsigned short v3;
// };

test "D_Ul_Us" {
    var lv: c.D_Ul_Us = undefined;
    try testing.expectSize(c.D_Ul_Us, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65623:65643
// struct  D_Ul_Vp  {
//   double v1;
//   __tsu64 v2;
//   void *v3;
// };

test "D_Ul_Vp" {
    var lv: c.D_Ul_Vp = undefined;
    try testing.expectSize(c.D_Ul_Vp, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Ul_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 16);
}

// From T_Snnn_xaw.c:65648:65666
// struct  D_Us  {
//   double v1;
//   unsigned short v2;
// };

test "D_Us" {
    var lv: c.D_Us = undefined;
    try testing.expectSize(c.D_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:66395:66415
// struct  D_Us_C  {
//   double v1;
//   unsigned short v2;
//   char v3;
// };

test "D_Us_C" {
    var lv: c.D_Us_C = undefined;
    try testing.expectSize(c.D_Us_C, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:66420:66440
// struct  D_Us_D  {
//   double v1;
//   unsigned short v2;
//   double v3;
// };

test "D_Us_D" {
    var lv: c.D_Us_D = undefined;
    try testing.expectSize(c.D_Us_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Us_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:66445:66465
// struct  D_Us_F  {
//   double v1;
//   unsigned short v2;
//   float v3;
// };

test "D_Us_F" {
    var lv: c.D_Us_F = undefined;
    try testing.expectSize(c.D_Us_F, 16);
    try testing.expectAlign(c.D_Us_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:66470:66490
// struct  D_Us_I  {
//   double v1;
//   unsigned short v2;
//   int v3;
// };

test "D_Us_I" {
    var lv: c.D_Us_I = undefined;
    try testing.expectSize(c.D_Us_I, 16);
    try testing.expectAlign(c.D_Us_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:66495:66515
// struct  D_Us_Ip  {
//   double v1;
//   unsigned short v2;
//   int *v3;
// };

test "D_Us_Ip" {
    var lv: c.D_Us_Ip = undefined;
    try testing.expectSize(c.D_Us_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Us_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:66520:66540
// struct  D_Us_L  {
//   double v1;
//   unsigned short v2;
//   __tsi64 v3;
// };

test "D_Us_L" {
    var lv: c.D_Us_L = undefined;
    try testing.expectSize(c.D_Us_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Us_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:66545:66565
// struct  D_Us_S  {
//   double v1;
//   unsigned short v2;
//   short v3;
// };

test "D_Us_S" {
    var lv: c.D_Us_S = undefined;
    try testing.expectSize(c.D_Us_S, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:66570:66590
// struct  D_Us_Uc  {
//   double v1;
//   unsigned short v2;
//   unsigned char v3;
// };

test "D_Us_Uc" {
    var lv: c.D_Us_Uc = undefined;
    try testing.expectSize(c.D_Us_Uc, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:66595:66615
// struct  D_Us_Ui  {
//   double v1;
//   unsigned short v2;
//   unsigned int v3;
// };

test "D_Us_Ui" {
    var lv: c.D_Us_Ui = undefined;
    try testing.expectSize(c.D_Us_Ui, 16);
    try testing.expectAlign(c.D_Us_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 12);
}

// From T_Snnn_xaw.c:66620:66640
// struct  D_Us_Ul  {
//   double v1;
//   unsigned short v2;
//   __tsu64 v3;
// };

test "D_Us_Ul" {
    var lv: c.D_Us_Ul = undefined;
    try testing.expectSize(c.D_Us_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Us_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:66645:66665
// struct  D_Us_Us  {
//   double v1;
//   unsigned short v2;
//   unsigned short v3;
// };

test "D_Us_Us" {
    var lv: c.D_Us_Us = undefined;
    try testing.expectSize(c.D_Us_Us, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Us_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, 10);
}

// From T_Snnn_xaw.c:66670:66690
// struct  D_Us_Vp  {
//   double v1;
//   unsigned short v2;
//   void *v3;
// };

test "D_Us_Vp" {
    var lv: c.D_Us_Vp = undefined;
    try testing.expectSize(c.D_Us_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Us_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:66695:66713
// struct  D_Vp  {
//   double v1;
//   void *v2;
// };

test "D_Vp" {
    var lv: c.D_Vp = undefined;
    try testing.expectSize(c.D_Vp, ABISELECT(16, 12));
    try testing.expectAlign(c.D_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
}

// From T_Snnn_xaw.c:67442:67462
// struct  D_Vp_C  {
//   double v1;
//   void *v2;
//   char v3;
// };

test "D_Vp_C" {
    var lv: c.D_Vp_C = undefined;
    try testing.expectSize(c.D_Vp_C, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_C, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67467:67487
// struct  D_Vp_D  {
//   double v1;
//   void *v2;
//   double v3;
// };

test "D_Vp_D" {
    var lv: c.D_Vp_D = undefined;
    try testing.expectSize(c.D_Vp_D, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Vp_D, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67492:67512
// struct  D_Vp_F  {
//   double v1;
//   void *v2;
//   float v3;
// };

test "D_Vp_F" {
    var lv: c.D_Vp_F = undefined;
    try testing.expectSize(c.D_Vp_F, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_F, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67517:67537
// struct  D_Vp_I  {
//   double v1;
//   void *v2;
//   int v3;
// };

test "D_Vp_I" {
    var lv: c.D_Vp_I = undefined;
    try testing.expectSize(c.D_Vp_I, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_I, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67542:67562
// struct  D_Vp_Ip  {
//   double v1;
//   void *v2;
//   int *v3;
// };

test "D_Vp_Ip" {
    var lv: c.D_Vp_Ip = undefined;
    try testing.expectSize(c.D_Vp_Ip, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Ip, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67567:67587
// struct  D_Vp_L  {
//   double v1;
//   void *v2;
//   __tsi64 v3;
// };

test "D_Vp_L" {
    var lv: c.D_Vp_L = undefined;
    try testing.expectSize(c.D_Vp_L, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Vp_L, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67592:67612
// struct  D_Vp_S  {
//   double v1;
//   void *v2;
//   short v3;
// };

test "D_Vp_S" {
    var lv: c.D_Vp_S = undefined;
    try testing.expectSize(c.D_Vp_S, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_S, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67617:67637
// struct  D_Vp_Uc  {
//   double v1;
//   void *v2;
//   unsigned char v3;
// };

test "D_Vp_Uc" {
    var lv: c.D_Vp_Uc = undefined;
    try testing.expectSize(c.D_Vp_Uc, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Uc, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67642:67662
// struct  D_Vp_Ui  {
//   double v1;
//   void *v2;
//   unsigned int v3;
// };

test "D_Vp_Ui" {
    var lv: c.D_Vp_Ui = undefined;
    try testing.expectSize(c.D_Vp_Ui, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Ui, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67667:67687
// struct  D_Vp_Ul  {
//   double v1;
//   void *v2;
//   __tsu64 v3;
// };

test "D_Vp_Ul" {
    var lv: c.D_Vp_Ul = undefined;
    try testing.expectSize(c.D_Vp_Ul, ABISELECT(24, 20));
    try testing.expectAlign(c.D_Vp_Ul, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67692:67712
// struct  D_Vp_Us  {
//   double v1;
//   void *v2;
//   unsigned short v3;
// };

test "D_Vp_Us" {
    var lv: c.D_Vp_Us = undefined;
    try testing.expectSize(c.D_Vp_Us, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Us, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67717:67737
// struct  D_Vp_Vp  {
//   double v1;
//   void *v2;
//   void *v3;
// };

test "D_Vp_Vp" {
    var lv: c.D_Vp_Vp = undefined;
    try testing.expectSize(c.D_Vp_Vp, ABISELECT(24, 16));
    try testing.expectAlign(c.D_Vp_Vp, ABISELECT(8, 4));
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
    try testing.expectFieldOffset(&lv, &lv.v2, 8);
    try testing.expectFieldOffset(&lv, &lv.v3, ABISELECT(16, 12));
}

// From T_Snnn_xaw.c:67742:67758
// struct  F  {
//   float v1;
// };

test "F" {
    var lv: c.F = undefined;
    try testing.expectSize(c.F, 4);
    try testing.expectAlign(c.F, 4);
    try testing.expectFieldOffset(&lv, &lv.v1, 0);
}
