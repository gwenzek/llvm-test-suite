#include "T_Snnn_xbb.h"

int recv_Ul_C(struct Ul_C lv){
  if (lv.v1 != 17226) return 1;
  if (lv.v2 != 3) return 2;
  return 0;
}
struct Ul_C ret_Ul_C(){
  struct Ul_C lv;
  lv.v1 = 17226;
  lv.v2 = 3;
  return lv;
}
int zig_recv_Ul_C(struct Ul_C);
int send_Ul_C(){
  struct Ul_C lv;
  lv.v1 = 17226;
  lv.v2 = 3;
  return zig_recv_Ul_C(lv);
}

int recv_Ul_C_C(struct Ul_C_C lv){
  if (lv.v1 != 31250) return 1;
  if (lv.v2 != 54) return 2;
  if (lv.v3 != 2) return 3;
  return 0;
}
struct Ul_C_C ret_Ul_C_C(){
  struct Ul_C_C lv;
  lv.v1 = 31250;
  lv.v2 = 54;
  lv.v3 = 2;
  return lv;
}
int zig_recv_Ul_C_C(struct Ul_C_C);
int send_Ul_C_C(){
  struct Ul_C_C lv;
  lv.v1 = 31250;
  lv.v2 = 54;
  lv.v3 = 2;
  return zig_recv_Ul_C_C(lv);
}

int recv_Ul_C_D(struct Ul_C_D lv){
  if (lv.v1 != 32764) return 1;
  if (lv.v2 != 48) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Ul_C_D ret_Ul_C_D(){
  struct Ul_C_D lv;
  lv.v1 = 32764;
  lv.v2 = 48;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Ul_C_D(struct Ul_C_D);
int send_Ul_C_D(){
  struct Ul_C_D lv;
  lv.v1 = 32764;
  lv.v2 = 48;
  lv.v3 = 7.0;
  return zig_recv_Ul_C_D(lv);
}

int recv_Ul_C_F(struct Ul_C_F lv){
  if (lv.v1 != 26431) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ul_C_F ret_Ul_C_F(){
  struct Ul_C_F lv;
  lv.v1 = 26431;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ul_C_F(struct Ul_C_F);
int send_Ul_C_F(){
  struct Ul_C_F lv;
  lv.v1 = 26431;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return zig_recv_Ul_C_F(lv);
}

int recv_Ul_C_I(struct Ul_C_I lv){
  if (lv.v1 != 28045) return 1;
  if (lv.v2 != 93) return 2;
  if (lv.v3 != 27716) return 3;
  return 0;
}
struct Ul_C_I ret_Ul_C_I(){
  struct Ul_C_I lv;
  lv.v1 = 28045;
  lv.v2 = 93;
  lv.v3 = 27716;
  return lv;
}
int zig_recv_Ul_C_I(struct Ul_C_I);
int send_Ul_C_I(){
  struct Ul_C_I lv;
  lv.v1 = 28045;
  lv.v2 = 93;
  lv.v3 = 27716;
  return zig_recv_Ul_C_I(lv);
}

int recv_Ul_C_Ip(struct Ul_C_Ip lv){
  if (lv.v1 != 26155) return 1;
  if (lv.v2 != 27) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_C_Ip ret_Ul_C_Ip(){
  struct Ul_C_Ip lv;
  lv.v1 = 26155;
  lv.v2 = 27;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_C_Ip(struct Ul_C_Ip);
int send_Ul_C_Ip(){
  struct Ul_C_Ip lv;
  lv.v1 = 26155;
  lv.v2 = 27;
  lv.v3 = 0;
  return zig_recv_Ul_C_Ip(lv);
}

int recv_Ul_C_L(struct Ul_C_L lv){
  if (lv.v1 != 12487) return 1;
  if (lv.v2 != 95) return 2;
  if (lv.v3 != 31393) return 3;
  return 0;
}
struct Ul_C_L ret_Ul_C_L(){
  struct Ul_C_L lv;
  lv.v1 = 12487;
  lv.v2 = 95;
  lv.v3 = 31393;
  return lv;
}
int zig_recv_Ul_C_L(struct Ul_C_L);
int send_Ul_C_L(){
  struct Ul_C_L lv;
  lv.v1 = 12487;
  lv.v2 = 95;
  lv.v3 = 31393;
  return zig_recv_Ul_C_L(lv);
}

int recv_Ul_C_S(struct Ul_C_S lv){
  if (lv.v1 != 14961) return 1;
  if (lv.v2 != 23) return 2;
  if (lv.v3 != 31866) return 3;
  return 0;
}
struct Ul_C_S ret_Ul_C_S(){
  struct Ul_C_S lv;
  lv.v1 = 14961;
  lv.v2 = 23;
  lv.v3 = 31866;
  return lv;
}
int zig_recv_Ul_C_S(struct Ul_C_S);
int send_Ul_C_S(){
  struct Ul_C_S lv;
  lv.v1 = 14961;
  lv.v2 = 23;
  lv.v3 = 31866;
  return zig_recv_Ul_C_S(lv);
}

int recv_Ul_C_Uc(struct Ul_C_Uc lv){
  if (lv.v1 != 20515) return 1;
  if (lv.v2 != 44) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_C_Uc ret_Ul_C_Uc(){
  struct Ul_C_Uc lv;
  lv.v1 = 20515;
  lv.v2 = 44;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_C_Uc(struct Ul_C_Uc);
int send_Ul_C_Uc(){
  struct Ul_C_Uc lv;
  lv.v1 = 20515;
  lv.v2 = 44;
  lv.v3 = 0;
  return zig_recv_Ul_C_Uc(lv);
}

int recv_Ul_C_Ui(struct Ul_C_Ui lv){
  if (lv.v1 != 7205) return 1;
  if (lv.v2 != 105) return 2;
  if (lv.v3 != 26514) return 3;
  return 0;
}
struct Ul_C_Ui ret_Ul_C_Ui(){
  struct Ul_C_Ui lv;
  lv.v1 = 7205;
  lv.v2 = 105;
  lv.v3 = 26514;
  return lv;
}
int zig_recv_Ul_C_Ui(struct Ul_C_Ui);
int send_Ul_C_Ui(){
  struct Ul_C_Ui lv;
  lv.v1 = 7205;
  lv.v2 = 105;
  lv.v3 = 26514;
  return zig_recv_Ul_C_Ui(lv);
}

int recv_Ul_C_Ul(struct Ul_C_Ul lv){
  if (lv.v1 != 2127) return 1;
  if (lv.v2 != 88) return 2;
  if (lv.v3 != 18212) return 3;
  return 0;
}
struct Ul_C_Ul ret_Ul_C_Ul(){
  struct Ul_C_Ul lv;
  lv.v1 = 2127;
  lv.v2 = 88;
  lv.v3 = 18212;
  return lv;
}
int zig_recv_Ul_C_Ul(struct Ul_C_Ul);
int send_Ul_C_Ul(){
  struct Ul_C_Ul lv;
  lv.v1 = 2127;
  lv.v2 = 88;
  lv.v3 = 18212;
  return zig_recv_Ul_C_Ul(lv);
}

int recv_Ul_C_Us(struct Ul_C_Us lv){
  if (lv.v1 != 6233) return 1;
  if (lv.v2 != 70) return 2;
  if (lv.v3 != 1747) return 3;
  return 0;
}
struct Ul_C_Us ret_Ul_C_Us(){
  struct Ul_C_Us lv;
  lv.v1 = 6233;
  lv.v2 = 70;
  lv.v3 = 1747;
  return lv;
}
int zig_recv_Ul_C_Us(struct Ul_C_Us);
int send_Ul_C_Us(){
  struct Ul_C_Us lv;
  lv.v1 = 6233;
  lv.v2 = 70;
  lv.v3 = 1747;
  return zig_recv_Ul_C_Us(lv);
}

int recv_Ul_C_Vp(struct Ul_C_Vp lv){
  if (lv.v1 != 32602) return 1;
  if (lv.v2 != 34) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_C_Vp ret_Ul_C_Vp(){
  struct Ul_C_Vp lv;
  lv.v1 = 32602;
  lv.v2 = 34;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_C_Vp(struct Ul_C_Vp);
int send_Ul_C_Vp(){
  struct Ul_C_Vp lv;
  lv.v1 = 32602;
  lv.v2 = 34;
  lv.v3 = 0;
  return zig_recv_Ul_C_Vp(lv);
}

int recv_Ul_D(struct Ul_D lv){
  if (lv.v1 != 10715) return 1;
  if (lv.v2 != 4.5) return 2;
  return 0;
}
struct Ul_D ret_Ul_D(){
  struct Ul_D lv;
  lv.v1 = 10715;
  lv.v2 = 4.5;
  return lv;
}
int zig_recv_Ul_D(struct Ul_D);
int send_Ul_D(){
  struct Ul_D lv;
  lv.v1 = 10715;
  lv.v2 = 4.5;
  return zig_recv_Ul_D(lv);
}

int recv_Ul_D_C(struct Ul_D_C lv){
  if (lv.v1 != 25643) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 22) return 3;
  return 0;
}
struct Ul_D_C ret_Ul_D_C(){
  struct Ul_D_C lv;
  lv.v1 = 25643;
  lv.v2 = 4.5;
  lv.v3 = 22;
  return lv;
}
int zig_recv_Ul_D_C(struct Ul_D_C);
int send_Ul_D_C(){
  struct Ul_D_C lv;
  lv.v1 = 25643;
  lv.v2 = 4.5;
  lv.v3 = 22;
  return zig_recv_Ul_D_C(lv);
}

int recv_Ul_D_D(struct Ul_D_D lv){
  if (lv.v1 != 621) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Ul_D_D ret_Ul_D_D(){
  struct Ul_D_D lv;
  lv.v1 = 621;
  lv.v2 = -0.25;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Ul_D_D(struct Ul_D_D);
int send_Ul_D_D(){
  struct Ul_D_D lv;
  lv.v1 = 621;
  lv.v2 = -0.25;
  lv.v3 = -0.25;
  return zig_recv_Ul_D_D(lv);
}

int recv_Ul_D_F(struct Ul_D_F lv){
  if (lv.v1 != 11575) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Ul_D_F ret_Ul_D_F(){
  struct Ul_D_F lv;
  lv.v1 = 11575;
  lv.v2 = -2.125;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Ul_D_F(struct Ul_D_F);
int send_Ul_D_F(){
  struct Ul_D_F lv;
  lv.v1 = 11575;
  lv.v2 = -2.125;
  lv.v3 = -2.125;
  return zig_recv_Ul_D_F(lv);
}

int recv_Ul_D_I(struct Ul_D_I lv){
  if (lv.v1 != 23336) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 8615) return 3;
  return 0;
}
struct Ul_D_I ret_Ul_D_I(){
  struct Ul_D_I lv;
  lv.v1 = 23336;
  lv.v2 = -2.125;
  lv.v3 = 8615;
  return lv;
}
int zig_recv_Ul_D_I(struct Ul_D_I);
int send_Ul_D_I(){
  struct Ul_D_I lv;
  lv.v1 = 23336;
  lv.v2 = -2.125;
  lv.v3 = 8615;
  return zig_recv_Ul_D_I(lv);
}

int recv_Ul_D_Ip(struct Ul_D_Ip lv){
  if (lv.v1 != 30759) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_D_Ip ret_Ul_D_Ip(){
  struct Ul_D_Ip lv;
  lv.v1 = 30759;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_D_Ip(struct Ul_D_Ip);
int send_Ul_D_Ip(){
  struct Ul_D_Ip lv;
  lv.v1 = 30759;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return zig_recv_Ul_D_Ip(lv);
}

int recv_Ul_D_L(struct Ul_D_L lv){
  if (lv.v1 != 16615) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 23672) return 3;
  return 0;
}
struct Ul_D_L ret_Ul_D_L(){
  struct Ul_D_L lv;
  lv.v1 = 16615;
  lv.v2 = 7.0;
  lv.v3 = 23672;
  return lv;
}
int zig_recv_Ul_D_L(struct Ul_D_L);
int send_Ul_D_L(){
  struct Ul_D_L lv;
  lv.v1 = 16615;
  lv.v2 = 7.0;
  lv.v3 = 23672;
  return zig_recv_Ul_D_L(lv);
}

int recv_Ul_D_S(struct Ul_D_S lv){
  if (lv.v1 != 6119) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 20846) return 3;
  return 0;
}
struct Ul_D_S ret_Ul_D_S(){
  struct Ul_D_S lv;
  lv.v1 = 6119;
  lv.v2 = 1.0;
  lv.v3 = 20846;
  return lv;
}
int zig_recv_Ul_D_S(struct Ul_D_S);
int send_Ul_D_S(){
  struct Ul_D_S lv;
  lv.v1 = 6119;
  lv.v2 = 1.0;
  lv.v3 = 20846;
  return zig_recv_Ul_D_S(lv);
}

int recv_Ul_D_Uc(struct Ul_D_Uc lv){
  if (lv.v1 != 8747) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 71) return 3;
  return 0;
}
struct Ul_D_Uc ret_Ul_D_Uc(){
  struct Ul_D_Uc lv;
  lv.v1 = 8747;
  lv.v2 = -2.125;
  lv.v3 = 71;
  return lv;
}
int zig_recv_Ul_D_Uc(struct Ul_D_Uc);
int send_Ul_D_Uc(){
  struct Ul_D_Uc lv;
  lv.v1 = 8747;
  lv.v2 = -2.125;
  lv.v3 = 71;
  return zig_recv_Ul_D_Uc(lv);
}

int recv_Ul_D_Ui(struct Ul_D_Ui lv){
  if (lv.v1 != 12376) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 7325) return 3;
  return 0;
}
struct Ul_D_Ui ret_Ul_D_Ui(){
  struct Ul_D_Ui lv;
  lv.v1 = 12376;
  lv.v2 = 1.0;
  lv.v3 = 7325;
  return lv;
}
int zig_recv_Ul_D_Ui(struct Ul_D_Ui);
int send_Ul_D_Ui(){
  struct Ul_D_Ui lv;
  lv.v1 = 12376;
  lv.v2 = 1.0;
  lv.v3 = 7325;
  return zig_recv_Ul_D_Ui(lv);
}

int recv_Ul_D_Ul(struct Ul_D_Ul lv){
  if (lv.v1 != 8264) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 2350) return 3;
  return 0;
}
struct Ul_D_Ul ret_Ul_D_Ul(){
  struct Ul_D_Ul lv;
  lv.v1 = 8264;
  lv.v2 = 1.0;
  lv.v3 = 2350;
  return lv;
}
int zig_recv_Ul_D_Ul(struct Ul_D_Ul);
int send_Ul_D_Ul(){
  struct Ul_D_Ul lv;
  lv.v1 = 8264;
  lv.v2 = 1.0;
  lv.v3 = 2350;
  return zig_recv_Ul_D_Ul(lv);
}

int recv_Ul_D_Us(struct Ul_D_Us lv){
  if (lv.v1 != 14812) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 7431) return 3;
  return 0;
}
struct Ul_D_Us ret_Ul_D_Us(){
  struct Ul_D_Us lv;
  lv.v1 = 14812;
  lv.v2 = 4.5;
  lv.v3 = 7431;
  return lv;
}
int zig_recv_Ul_D_Us(struct Ul_D_Us);
int send_Ul_D_Us(){
  struct Ul_D_Us lv;
  lv.v1 = 14812;
  lv.v2 = 4.5;
  lv.v3 = 7431;
  return zig_recv_Ul_D_Us(lv);
}

int recv_Ul_D_Vp(struct Ul_D_Vp lv){
  if (lv.v1 != 16222) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_D_Vp ret_Ul_D_Vp(){
  struct Ul_D_Vp lv;
  lv.v1 = 16222;
  lv.v2 = 0.5;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_D_Vp(struct Ul_D_Vp);
int send_Ul_D_Vp(){
  struct Ul_D_Vp lv;
  lv.v1 = 16222;
  lv.v2 = 0.5;
  lv.v3 = 0;
  return zig_recv_Ul_D_Vp(lv);
}

int recv_Ul_F(struct Ul_F lv){
  if (lv.v1 != 20297) return 1;
  if (lv.v2 != 0.5) return 2;
  return 0;
}
struct Ul_F ret_Ul_F(){
  struct Ul_F lv;
  lv.v1 = 20297;
  lv.v2 = 0.5;
  return lv;
}
int zig_recv_Ul_F(struct Ul_F);
int send_Ul_F(){
  struct Ul_F lv;
  lv.v1 = 20297;
  lv.v2 = 0.5;
  return zig_recv_Ul_F(lv);
}

int recv_Ul_F_C(struct Ul_F_C lv){
  if (lv.v1 != 5068) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 32) return 3;
  return 0;
}
struct Ul_F_C ret_Ul_F_C(){
  struct Ul_F_C lv;
  lv.v1 = 5068;
  lv.v2 = -0.25;
  lv.v3 = 32;
  return lv;
}
int zig_recv_Ul_F_C(struct Ul_F_C);
int send_Ul_F_C(){
  struct Ul_F_C lv;
  lv.v1 = 5068;
  lv.v2 = -0.25;
  lv.v3 = 32;
  return zig_recv_Ul_F_C(lv);
}

int recv_Ul_F_D(struct Ul_F_D lv){
  if (lv.v1 != 23787) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ul_F_D ret_Ul_F_D(){
  struct Ul_F_D lv;
  lv.v1 = 23787;
  lv.v2 = -2.125;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ul_F_D(struct Ul_F_D);
int send_Ul_F_D(){
  struct Ul_F_D lv;
  lv.v1 = 23787;
  lv.v2 = -2.125;
  lv.v3 = 0.5;
  return zig_recv_Ul_F_D(lv);
}

int recv_Ul_F_F(struct Ul_F_F lv){
  if (lv.v1 != 4545) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Ul_F_F ret_Ul_F_F(){
  struct Ul_F_F lv;
  lv.v1 = 4545;
  lv.v2 = 1.0;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Ul_F_F(struct Ul_F_F);
int send_Ul_F_F(){
  struct Ul_F_F lv;
  lv.v1 = 4545;
  lv.v2 = 1.0;
  lv.v3 = 0.875;
  return zig_recv_Ul_F_F(lv);
}

int recv_Ul_F_I(struct Ul_F_I lv){
  if (lv.v1 != 11) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 28962) return 3;
  return 0;
}
struct Ul_F_I ret_Ul_F_I(){
  struct Ul_F_I lv;
  lv.v1 = 11;
  lv.v2 = 1.0;
  lv.v3 = 28962;
  return lv;
}
int zig_recv_Ul_F_I(struct Ul_F_I);
int send_Ul_F_I(){
  struct Ul_F_I lv;
  lv.v1 = 11;
  lv.v2 = 1.0;
  lv.v3 = 28962;
  return zig_recv_Ul_F_I(lv);
}

int recv_Ul_F_Ip(struct Ul_F_Ip lv){
  if (lv.v1 != 10728) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_F_Ip ret_Ul_F_Ip(){
  struct Ul_F_Ip lv;
  lv.v1 = 10728;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_F_Ip(struct Ul_F_Ip);
int send_Ul_F_Ip(){
  struct Ul_F_Ip lv;
  lv.v1 = 10728;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return zig_recv_Ul_F_Ip(lv);
}

int recv_Ul_F_L(struct Ul_F_L lv){
  if (lv.v1 != 29862) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 30894) return 3;
  return 0;
}
struct Ul_F_L ret_Ul_F_L(){
  struct Ul_F_L lv;
  lv.v1 = 29862;
  lv.v2 = 1.0;
  lv.v3 = 30894;
  return lv;
}
int zig_recv_Ul_F_L(struct Ul_F_L);
int send_Ul_F_L(){
  struct Ul_F_L lv;
  lv.v1 = 29862;
  lv.v2 = 1.0;
  lv.v3 = 30894;
  return zig_recv_Ul_F_L(lv);
}

int recv_Ul_F_S(struct Ul_F_S lv){
  if (lv.v1 != 16621) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 19094) return 3;
  return 0;
}
struct Ul_F_S ret_Ul_F_S(){
  struct Ul_F_S lv;
  lv.v1 = 16621;
  lv.v2 = 7.0;
  lv.v3 = 19094;
  return lv;
}
int zig_recv_Ul_F_S(struct Ul_F_S);
int send_Ul_F_S(){
  struct Ul_F_S lv;
  lv.v1 = 16621;
  lv.v2 = 7.0;
  lv.v3 = 19094;
  return zig_recv_Ul_F_S(lv);
}

int recv_Ul_F_Uc(struct Ul_F_Uc lv){
  if (lv.v1 != 5394) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 26) return 3;
  return 0;
}
struct Ul_F_Uc ret_Ul_F_Uc(){
  struct Ul_F_Uc lv;
  lv.v1 = 5394;
  lv.v2 = 7.0;
  lv.v3 = 26;
  return lv;
}
int zig_recv_Ul_F_Uc(struct Ul_F_Uc);
int send_Ul_F_Uc(){
  struct Ul_F_Uc lv;
  lv.v1 = 5394;
  lv.v2 = 7.0;
  lv.v3 = 26;
  return zig_recv_Ul_F_Uc(lv);
}

int recv_Ul_F_Ui(struct Ul_F_Ui lv){
  if (lv.v1 != 18558) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 23737) return 3;
  return 0;
}
struct Ul_F_Ui ret_Ul_F_Ui(){
  struct Ul_F_Ui lv;
  lv.v1 = 18558;
  lv.v2 = 0.875;
  lv.v3 = 23737;
  return lv;
}
int zig_recv_Ul_F_Ui(struct Ul_F_Ui);
int send_Ul_F_Ui(){
  struct Ul_F_Ui lv;
  lv.v1 = 18558;
  lv.v2 = 0.875;
  lv.v3 = 23737;
  return zig_recv_Ul_F_Ui(lv);
}

int recv_Ul_F_Ul(struct Ul_F_Ul lv){
  if (lv.v1 != 19145) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 26272) return 3;
  return 0;
}
struct Ul_F_Ul ret_Ul_F_Ul(){
  struct Ul_F_Ul lv;
  lv.v1 = 19145;
  lv.v2 = 0.875;
  lv.v3 = 26272;
  return lv;
}
int zig_recv_Ul_F_Ul(struct Ul_F_Ul);
int send_Ul_F_Ul(){
  struct Ul_F_Ul lv;
  lv.v1 = 19145;
  lv.v2 = 0.875;
  lv.v3 = 26272;
  return zig_recv_Ul_F_Ul(lv);
}

int recv_Ul_F_Us(struct Ul_F_Us lv){
  if (lv.v1 != 12786) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 32561) return 3;
  return 0;
}
struct Ul_F_Us ret_Ul_F_Us(){
  struct Ul_F_Us lv;
  lv.v1 = 12786;
  lv.v2 = 4.5;
  lv.v3 = 32561;
  return lv;
}
int zig_recv_Ul_F_Us(struct Ul_F_Us);
int send_Ul_F_Us(){
  struct Ul_F_Us lv;
  lv.v1 = 12786;
  lv.v2 = 4.5;
  lv.v3 = 32561;
  return zig_recv_Ul_F_Us(lv);
}

int recv_Ul_F_Vp(struct Ul_F_Vp lv){
  if (lv.v1 != 8407) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_F_Vp ret_Ul_F_Vp(){
  struct Ul_F_Vp lv;
  lv.v1 = 8407;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_F_Vp(struct Ul_F_Vp);
int send_Ul_F_Vp(){
  struct Ul_F_Vp lv;
  lv.v1 = 8407;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return zig_recv_Ul_F_Vp(lv);
}

int recv_Ul_I(struct Ul_I lv){
  if (lv.v1 != 9001) return 1;
  if (lv.v2 != 14566) return 2;
  return 0;
}
struct Ul_I ret_Ul_I(){
  struct Ul_I lv;
  lv.v1 = 9001;
  lv.v2 = 14566;
  return lv;
}
int zig_recv_Ul_I(struct Ul_I);
int send_Ul_I(){
  struct Ul_I lv;
  lv.v1 = 9001;
  lv.v2 = 14566;
  return zig_recv_Ul_I(lv);
}

int recv_Ul_I_C(struct Ul_I_C lv){
  if (lv.v1 != 26130) return 1;
  if (lv.v2 != 8317) return 2;
  if (lv.v3 != 100) return 3;
  return 0;
}
struct Ul_I_C ret_Ul_I_C(){
  struct Ul_I_C lv;
  lv.v1 = 26130;
  lv.v2 = 8317;
  lv.v3 = 100;
  return lv;
}
int zig_recv_Ul_I_C(struct Ul_I_C);
int send_Ul_I_C(){
  struct Ul_I_C lv;
  lv.v1 = 26130;
  lv.v2 = 8317;
  lv.v3 = 100;
  return zig_recv_Ul_I_C(lv);
}

int recv_Ul_I_D(struct Ul_I_D lv){
  if (lv.v1 != 16377) return 1;
  if (lv.v2 != 29653) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ul_I_D ret_Ul_I_D(){
  struct Ul_I_D lv;
  lv.v1 = 16377;
  lv.v2 = 29653;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ul_I_D(struct Ul_I_D);
int send_Ul_I_D(){
  struct Ul_I_D lv;
  lv.v1 = 16377;
  lv.v2 = 29653;
  lv.v3 = 0.5;
  return zig_recv_Ul_I_D(lv);
}

int recv_Ul_I_F(struct Ul_I_F lv){
  if (lv.v1 != 6558) return 1;
  if (lv.v2 != 14172) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Ul_I_F ret_Ul_I_F(){
  struct Ul_I_F lv;
  lv.v1 = 6558;
  lv.v2 = 14172;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Ul_I_F(struct Ul_I_F);
int send_Ul_I_F(){
  struct Ul_I_F lv;
  lv.v1 = 6558;
  lv.v2 = 14172;
  lv.v3 = 0.875;
  return zig_recv_Ul_I_F(lv);
}

int recv_Ul_I_I(struct Ul_I_I lv){
  if (lv.v1 != 21186) return 1;
  if (lv.v2 != 27875) return 2;
  if (lv.v3 != 12292) return 3;
  return 0;
}
struct Ul_I_I ret_Ul_I_I(){
  struct Ul_I_I lv;
  lv.v1 = 21186;
  lv.v2 = 27875;
  lv.v3 = 12292;
  return lv;
}
int zig_recv_Ul_I_I(struct Ul_I_I);
int send_Ul_I_I(){
  struct Ul_I_I lv;
  lv.v1 = 21186;
  lv.v2 = 27875;
  lv.v3 = 12292;
  return zig_recv_Ul_I_I(lv);
}

int recv_Ul_I_Ip(struct Ul_I_Ip lv){
  if (lv.v1 != 19268) return 1;
  if (lv.v2 != 7953) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_I_Ip ret_Ul_I_Ip(){
  struct Ul_I_Ip lv;
  lv.v1 = 19268;
  lv.v2 = 7953;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_I_Ip(struct Ul_I_Ip);
int send_Ul_I_Ip(){
  struct Ul_I_Ip lv;
  lv.v1 = 19268;
  lv.v2 = 7953;
  lv.v3 = 0;
  return zig_recv_Ul_I_Ip(lv);
}

int recv_Ul_I_L(struct Ul_I_L lv){
  if (lv.v1 != 1812) return 1;
  if (lv.v2 != 15113) return 2;
  if (lv.v3 != 12160) return 3;
  return 0;
}
struct Ul_I_L ret_Ul_I_L(){
  struct Ul_I_L lv;
  lv.v1 = 1812;
  lv.v2 = 15113;
  lv.v3 = 12160;
  return lv;
}
int zig_recv_Ul_I_L(struct Ul_I_L);
int send_Ul_I_L(){
  struct Ul_I_L lv;
  lv.v1 = 1812;
  lv.v2 = 15113;
  lv.v3 = 12160;
  return zig_recv_Ul_I_L(lv);
}

int recv_Ul_I_S(struct Ul_I_S lv){
  if (lv.v1 != 24576) return 1;
  if (lv.v2 != 10804) return 2;
  if (lv.v3 != 566) return 3;
  return 0;
}
struct Ul_I_S ret_Ul_I_S(){
  struct Ul_I_S lv;
  lv.v1 = 24576;
  lv.v2 = 10804;
  lv.v3 = 566;
  return lv;
}
int zig_recv_Ul_I_S(struct Ul_I_S);
int send_Ul_I_S(){
  struct Ul_I_S lv;
  lv.v1 = 24576;
  lv.v2 = 10804;
  lv.v3 = 566;
  return zig_recv_Ul_I_S(lv);
}

int recv_Ul_I_Uc(struct Ul_I_Uc lv){
  if (lv.v1 != 4343) return 1;
  if (lv.v2 != 4509) return 2;
  if (lv.v3 != 97) return 3;
  return 0;
}
struct Ul_I_Uc ret_Ul_I_Uc(){
  struct Ul_I_Uc lv;
  lv.v1 = 4343;
  lv.v2 = 4509;
  lv.v3 = 97;
  return lv;
}
int zig_recv_Ul_I_Uc(struct Ul_I_Uc);
int send_Ul_I_Uc(){
  struct Ul_I_Uc lv;
  lv.v1 = 4343;
  lv.v2 = 4509;
  lv.v3 = 97;
  return zig_recv_Ul_I_Uc(lv);
}

int recv_Ul_I_Ui(struct Ul_I_Ui lv){
  if (lv.v1 != 22220) return 1;
  if (lv.v2 != 2803) return 2;
  if (lv.v3 != 31274) return 3;
  return 0;
}
struct Ul_I_Ui ret_Ul_I_Ui(){
  struct Ul_I_Ui lv;
  lv.v1 = 22220;
  lv.v2 = 2803;
  lv.v3 = 31274;
  return lv;
}
int zig_recv_Ul_I_Ui(struct Ul_I_Ui);
int send_Ul_I_Ui(){
  struct Ul_I_Ui lv;
  lv.v1 = 22220;
  lv.v2 = 2803;
  lv.v3 = 31274;
  return zig_recv_Ul_I_Ui(lv);
}

int recv_Ul_I_Ul(struct Ul_I_Ul lv){
  if (lv.v1 != 23345) return 1;
  if (lv.v2 != 16816) return 2;
  if (lv.v3 != 1382) return 3;
  return 0;
}
struct Ul_I_Ul ret_Ul_I_Ul(){
  struct Ul_I_Ul lv;
  lv.v1 = 23345;
  lv.v2 = 16816;
  lv.v3 = 1382;
  return lv;
}
int zig_recv_Ul_I_Ul(struct Ul_I_Ul);
int send_Ul_I_Ul(){
  struct Ul_I_Ul lv;
  lv.v1 = 23345;
  lv.v2 = 16816;
  lv.v3 = 1382;
  return zig_recv_Ul_I_Ul(lv);
}

int recv_Ul_I_Us(struct Ul_I_Us lv){
  if (lv.v1 != 26785) return 1;
  if (lv.v2 != 19005) return 2;
  if (lv.v3 != 25704) return 3;
  return 0;
}
struct Ul_I_Us ret_Ul_I_Us(){
  struct Ul_I_Us lv;
  lv.v1 = 26785;
  lv.v2 = 19005;
  lv.v3 = 25704;
  return lv;
}
int zig_recv_Ul_I_Us(struct Ul_I_Us);
int send_Ul_I_Us(){
  struct Ul_I_Us lv;
  lv.v1 = 26785;
  lv.v2 = 19005;
  lv.v3 = 25704;
  return zig_recv_Ul_I_Us(lv);
}

int recv_Ul_I_Vp(struct Ul_I_Vp lv){
  if (lv.v1 != 15755) return 1;
  if (lv.v2 != 32345) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_I_Vp ret_Ul_I_Vp(){
  struct Ul_I_Vp lv;
  lv.v1 = 15755;
  lv.v2 = 32345;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_I_Vp(struct Ul_I_Vp);
int send_Ul_I_Vp(){
  struct Ul_I_Vp lv;
  lv.v1 = 15755;
  lv.v2 = 32345;
  lv.v3 = 0;
  return zig_recv_Ul_I_Vp(lv);
}

int recv_Ul_Ip(struct Ul_Ip lv){
  if (lv.v1 != 26902) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct Ul_Ip ret_Ul_Ip(){
  struct Ul_Ip lv;
  lv.v1 = 26902;
  lv.v2 = 0;
  return lv;
}
int zig_recv_Ul_Ip(struct Ul_Ip);
int send_Ul_Ip(){
  struct Ul_Ip lv;
  lv.v1 = 26902;
  lv.v2 = 0;
  return zig_recv_Ul_Ip(lv);
}

int recv_Ul_Ip_C(struct Ul_Ip_C lv){
  if (lv.v1 != 11062) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 31) return 3;
  return 0;
}
struct Ul_Ip_C ret_Ul_Ip_C(){
  struct Ul_Ip_C lv;
  lv.v1 = 11062;
  lv.v2 = 0;
  lv.v3 = 31;
  return lv;
}
int zig_recv_Ul_Ip_C(struct Ul_Ip_C);
int send_Ul_Ip_C(){
  struct Ul_Ip_C lv;
  lv.v1 = 11062;
  lv.v2 = 0;
  lv.v3 = 31;
  return zig_recv_Ul_Ip_C(lv);
}

int recv_Ul_Ip_D(struct Ul_Ip_D lv){
  if (lv.v1 != 3475) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Ul_Ip_D ret_Ul_Ip_D(){
  struct Ul_Ip_D lv;
  lv.v1 = 3475;
  lv.v2 = 0;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Ul_Ip_D(struct Ul_Ip_D);
int send_Ul_Ip_D(){
  struct Ul_Ip_D lv;
  lv.v1 = 3475;
  lv.v2 = 0;
  lv.v3 = 0.875;
  return zig_recv_Ul_Ip_D(lv);
}

int recv_Ul_Ip_F(struct Ul_Ip_F lv){
  if (lv.v1 != 6436) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Ul_Ip_F ret_Ul_Ip_F(){
  struct Ul_Ip_F lv;
  lv.v1 = 6436;
  lv.v2 = 0;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Ul_Ip_F(struct Ul_Ip_F);
int send_Ul_Ip_F(){
  struct Ul_Ip_F lv;
  lv.v1 = 6436;
  lv.v2 = 0;
  lv.v3 = 4.5;
  return zig_recv_Ul_Ip_F(lv);
}

int recv_Ul_Ip_I(struct Ul_Ip_I lv){
  if (lv.v1 != 9802) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 30741) return 3;
  return 0;
}
struct Ul_Ip_I ret_Ul_Ip_I(){
  struct Ul_Ip_I lv;
  lv.v1 = 9802;
  lv.v2 = 0;
  lv.v3 = 30741;
  return lv;
}
int zig_recv_Ul_Ip_I(struct Ul_Ip_I);
int send_Ul_Ip_I(){
  struct Ul_Ip_I lv;
  lv.v1 = 9802;
  lv.v2 = 0;
  lv.v3 = 30741;
  return zig_recv_Ul_Ip_I(lv);
}

int recv_Ul_Ip_Ip(struct Ul_Ip_Ip lv){
  if (lv.v1 != 1518) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Ip_Ip ret_Ul_Ip_Ip(){
  struct Ul_Ip_Ip lv;
  lv.v1 = 1518;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Ip_Ip(struct Ul_Ip_Ip);
int send_Ul_Ip_Ip(){
  struct Ul_Ip_Ip lv;
  lv.v1 = 1518;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Ul_Ip_Ip(lv);
}

int recv_Ul_Ip_L(struct Ul_Ip_L lv){
  if (lv.v1 != 31264) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 30076) return 3;
  return 0;
}
struct Ul_Ip_L ret_Ul_Ip_L(){
  struct Ul_Ip_L lv;
  lv.v1 = 31264;
  lv.v2 = 0;
  lv.v3 = 30076;
  return lv;
}
int zig_recv_Ul_Ip_L(struct Ul_Ip_L);
int send_Ul_Ip_L(){
  struct Ul_Ip_L lv;
  lv.v1 = 31264;
  lv.v2 = 0;
  lv.v3 = 30076;
  return zig_recv_Ul_Ip_L(lv);
}

int recv_Ul_Ip_S(struct Ul_Ip_S lv){
  if (lv.v1 != 22879) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 23485) return 3;
  return 0;
}
struct Ul_Ip_S ret_Ul_Ip_S(){
  struct Ul_Ip_S lv;
  lv.v1 = 22879;
  lv.v2 = 0;
  lv.v3 = 23485;
  return lv;
}
int zig_recv_Ul_Ip_S(struct Ul_Ip_S);
int send_Ul_Ip_S(){
  struct Ul_Ip_S lv;
  lv.v1 = 22879;
  lv.v2 = 0;
  lv.v3 = 23485;
  return zig_recv_Ul_Ip_S(lv);
}

int recv_Ul_Ip_Uc(struct Ul_Ip_Uc lv){
  if (lv.v1 != 14255) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 118) return 3;
  return 0;
}
struct Ul_Ip_Uc ret_Ul_Ip_Uc(){
  struct Ul_Ip_Uc lv;
  lv.v1 = 14255;
  lv.v2 = 0;
  lv.v3 = 118;
  return lv;
}
int zig_recv_Ul_Ip_Uc(struct Ul_Ip_Uc);
int send_Ul_Ip_Uc(){
  struct Ul_Ip_Uc lv;
  lv.v1 = 14255;
  lv.v2 = 0;
  lv.v3 = 118;
  return zig_recv_Ul_Ip_Uc(lv);
}

int recv_Ul_Ip_Ui(struct Ul_Ip_Ui lv){
  if (lv.v1 != 5959) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 12355) return 3;
  return 0;
}
struct Ul_Ip_Ui ret_Ul_Ip_Ui(){
  struct Ul_Ip_Ui lv;
  lv.v1 = 5959;
  lv.v2 = 0;
  lv.v3 = 12355;
  return lv;
}
int zig_recv_Ul_Ip_Ui(struct Ul_Ip_Ui);
int send_Ul_Ip_Ui(){
  struct Ul_Ip_Ui lv;
  lv.v1 = 5959;
  lv.v2 = 0;
  lv.v3 = 12355;
  return zig_recv_Ul_Ip_Ui(lv);
}

int recv_Ul_Ip_Ul(struct Ul_Ip_Ul lv){
  if (lv.v1 != 8777) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 760) return 3;
  return 0;
}
struct Ul_Ip_Ul ret_Ul_Ip_Ul(){
  struct Ul_Ip_Ul lv;
  lv.v1 = 8777;
  lv.v2 = 0;
  lv.v3 = 760;
  return lv;
}
int zig_recv_Ul_Ip_Ul(struct Ul_Ip_Ul);
int send_Ul_Ip_Ul(){
  struct Ul_Ip_Ul lv;
  lv.v1 = 8777;
  lv.v2 = 0;
  lv.v3 = 760;
  return zig_recv_Ul_Ip_Ul(lv);
}

int recv_Ul_Ip_Us(struct Ul_Ip_Us lv){
  if (lv.v1 != 16734) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 28745) return 3;
  return 0;
}
struct Ul_Ip_Us ret_Ul_Ip_Us(){
  struct Ul_Ip_Us lv;
  lv.v1 = 16734;
  lv.v2 = 0;
  lv.v3 = 28745;
  return lv;
}
int zig_recv_Ul_Ip_Us(struct Ul_Ip_Us);
int send_Ul_Ip_Us(){
  struct Ul_Ip_Us lv;
  lv.v1 = 16734;
  lv.v2 = 0;
  lv.v3 = 28745;
  return zig_recv_Ul_Ip_Us(lv);
}

int recv_Ul_Ip_Vp(struct Ul_Ip_Vp lv){
  if (lv.v1 != 21721) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Ip_Vp ret_Ul_Ip_Vp(){
  struct Ul_Ip_Vp lv;
  lv.v1 = 21721;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Ip_Vp(struct Ul_Ip_Vp);
int send_Ul_Ip_Vp(){
  struct Ul_Ip_Vp lv;
  lv.v1 = 21721;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Ul_Ip_Vp(lv);
}

int recv_Ul_L(struct Ul_L lv){
  if (lv.v1 != 15343) return 1;
  if (lv.v2 != 30563) return 2;
  return 0;
}
struct Ul_L ret_Ul_L(){
  struct Ul_L lv;
  lv.v1 = 15343;
  lv.v2 = 30563;
  return lv;
}
int zig_recv_Ul_L(struct Ul_L);
int send_Ul_L(){
  struct Ul_L lv;
  lv.v1 = 15343;
  lv.v2 = 30563;
  return zig_recv_Ul_L(lv);
}

int recv_Ul_L_C(struct Ul_L_C lv){
  if (lv.v1 != 28130) return 1;
  if (lv.v2 != 18916) return 2;
  if (lv.v3 != 10) return 3;
  return 0;
}
struct Ul_L_C ret_Ul_L_C(){
  struct Ul_L_C lv;
  lv.v1 = 28130;
  lv.v2 = 18916;
  lv.v3 = 10;
  return lv;
}
int zig_recv_Ul_L_C(struct Ul_L_C);
int send_Ul_L_C(){
  struct Ul_L_C lv;
  lv.v1 = 28130;
  lv.v2 = 18916;
  lv.v3 = 10;
  return zig_recv_Ul_L_C(lv);
}

int recv_Ul_L_D(struct Ul_L_D lv){
  if (lv.v1 != 13861) return 1;
  if (lv.v2 != 9151) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ul_L_D ret_Ul_L_D(){
  struct Ul_L_D lv;
  lv.v1 = 13861;
  lv.v2 = 9151;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ul_L_D(struct Ul_L_D);
int send_Ul_L_D(){
  struct Ul_L_D lv;
  lv.v1 = 13861;
  lv.v2 = 9151;
  lv.v3 = 0.5;
  return zig_recv_Ul_L_D(lv);
}

int recv_Ul_L_F(struct Ul_L_F lv){
  if (lv.v1 != 22003) return 1;
  if (lv.v2 != 10595) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Ul_L_F ret_Ul_L_F(){
  struct Ul_L_F lv;
  lv.v1 = 22003;
  lv.v2 = 10595;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Ul_L_F(struct Ul_L_F);
int send_Ul_L_F(){
  struct Ul_L_F lv;
  lv.v1 = 22003;
  lv.v2 = 10595;
  lv.v3 = 7.0;
  return zig_recv_Ul_L_F(lv);
}

int recv_Ul_L_I(struct Ul_L_I lv){
  if (lv.v1 != 24399) return 1;
  if (lv.v2 != 7327) return 2;
  if (lv.v3 != 24391) return 3;
  return 0;
}
struct Ul_L_I ret_Ul_L_I(){
  struct Ul_L_I lv;
  lv.v1 = 24399;
  lv.v2 = 7327;
  lv.v3 = 24391;
  return lv;
}
int zig_recv_Ul_L_I(struct Ul_L_I);
int send_Ul_L_I(){
  struct Ul_L_I lv;
  lv.v1 = 24399;
  lv.v2 = 7327;
  lv.v3 = 24391;
  return zig_recv_Ul_L_I(lv);
}

int recv_Ul_L_Ip(struct Ul_L_Ip lv){
  if (lv.v1 != 29353) return 1;
  if (lv.v2 != 291) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_L_Ip ret_Ul_L_Ip(){
  struct Ul_L_Ip lv;
  lv.v1 = 29353;
  lv.v2 = 291;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_L_Ip(struct Ul_L_Ip);
int send_Ul_L_Ip(){
  struct Ul_L_Ip lv;
  lv.v1 = 29353;
  lv.v2 = 291;
  lv.v3 = 0;
  return zig_recv_Ul_L_Ip(lv);
}

int recv_Ul_L_L(struct Ul_L_L lv){
  if (lv.v1 != 31991) return 1;
  if (lv.v2 != 20178) return 2;
  if (lv.v3 != 30846) return 3;
  return 0;
}
struct Ul_L_L ret_Ul_L_L(){
  struct Ul_L_L lv;
  lv.v1 = 31991;
  lv.v2 = 20178;
  lv.v3 = 30846;
  return lv;
}
int zig_recv_Ul_L_L(struct Ul_L_L);
int send_Ul_L_L(){
  struct Ul_L_L lv;
  lv.v1 = 31991;
  lv.v2 = 20178;
  lv.v3 = 30846;
  return zig_recv_Ul_L_L(lv);
}

int recv_Ul_L_S(struct Ul_L_S lv){
  if (lv.v1 != 538) return 1;
  if (lv.v2 != 31083) return 2;
  if (lv.v3 != 25880) return 3;
  return 0;
}
struct Ul_L_S ret_Ul_L_S(){
  struct Ul_L_S lv;
  lv.v1 = 538;
  lv.v2 = 31083;
  lv.v3 = 25880;
  return lv;
}
int zig_recv_Ul_L_S(struct Ul_L_S);
int send_Ul_L_S(){
  struct Ul_L_S lv;
  lv.v1 = 538;
  lv.v2 = 31083;
  lv.v3 = 25880;
  return zig_recv_Ul_L_S(lv);
}

int recv_Ul_L_Uc(struct Ul_L_Uc lv){
  if (lv.v1 != 28879) return 1;
  if (lv.v2 != 7459) return 2;
  if (lv.v3 != 12) return 3;
  return 0;
}
struct Ul_L_Uc ret_Ul_L_Uc(){
  struct Ul_L_Uc lv;
  lv.v1 = 28879;
  lv.v2 = 7459;
  lv.v3 = 12;
  return lv;
}
int zig_recv_Ul_L_Uc(struct Ul_L_Uc);
int send_Ul_L_Uc(){
  struct Ul_L_Uc lv;
  lv.v1 = 28879;
  lv.v2 = 7459;
  lv.v3 = 12;
  return zig_recv_Ul_L_Uc(lv);
}

int recv_Ul_L_Ui(struct Ul_L_Ui lv){
  if (lv.v1 != 26709) return 1;
  if (lv.v2 != 19269) return 2;
  if (lv.v3 != 24646) return 3;
  return 0;
}
struct Ul_L_Ui ret_Ul_L_Ui(){
  struct Ul_L_Ui lv;
  lv.v1 = 26709;
  lv.v2 = 19269;
  lv.v3 = 24646;
  return lv;
}
int zig_recv_Ul_L_Ui(struct Ul_L_Ui);
int send_Ul_L_Ui(){
  struct Ul_L_Ui lv;
  lv.v1 = 26709;
  lv.v2 = 19269;
  lv.v3 = 24646;
  return zig_recv_Ul_L_Ui(lv);
}

int recv_Ul_L_Ul(struct Ul_L_Ul lv){
  if (lv.v1 != 20313) return 1;
  if (lv.v2 != 27484) return 2;
  if (lv.v3 != 30103) return 3;
  return 0;
}
struct Ul_L_Ul ret_Ul_L_Ul(){
  struct Ul_L_Ul lv;
  lv.v1 = 20313;
  lv.v2 = 27484;
  lv.v3 = 30103;
  return lv;
}
int zig_recv_Ul_L_Ul(struct Ul_L_Ul);
int send_Ul_L_Ul(){
  struct Ul_L_Ul lv;
  lv.v1 = 20313;
  lv.v2 = 27484;
  lv.v3 = 30103;
  return zig_recv_Ul_L_Ul(lv);
}

int recv_Ul_L_Us(struct Ul_L_Us lv){
  if (lv.v1 != 5364) return 1;
  if (lv.v2 != 21504) return 2;
  if (lv.v3 != 1770) return 3;
  return 0;
}
struct Ul_L_Us ret_Ul_L_Us(){
  struct Ul_L_Us lv;
  lv.v1 = 5364;
  lv.v2 = 21504;
  lv.v3 = 1770;
  return lv;
}
int zig_recv_Ul_L_Us(struct Ul_L_Us);
int send_Ul_L_Us(){
  struct Ul_L_Us lv;
  lv.v1 = 5364;
  lv.v2 = 21504;
  lv.v3 = 1770;
  return zig_recv_Ul_L_Us(lv);
}

int recv_Ul_L_Vp(struct Ul_L_Vp lv){
  if (lv.v1 != 4315) return 1;
  if (lv.v2 != 13921) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_L_Vp ret_Ul_L_Vp(){
  struct Ul_L_Vp lv;
  lv.v1 = 4315;
  lv.v2 = 13921;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_L_Vp(struct Ul_L_Vp);
int send_Ul_L_Vp(){
  struct Ul_L_Vp lv;
  lv.v1 = 4315;
  lv.v2 = 13921;
  lv.v3 = 0;
  return zig_recv_Ul_L_Vp(lv);
}

int recv_Ul_S(struct Ul_S lv){
  if (lv.v1 != 15495) return 1;
  if (lv.v2 != 24354) return 2;
  return 0;
}
struct Ul_S ret_Ul_S(){
  struct Ul_S lv;
  lv.v1 = 15495;
  lv.v2 = 24354;
  return lv;
}
int zig_recv_Ul_S(struct Ul_S);
int send_Ul_S(){
  struct Ul_S lv;
  lv.v1 = 15495;
  lv.v2 = 24354;
  return zig_recv_Ul_S(lv);
}

int recv_Ul_S_C(struct Ul_S_C lv){
  if (lv.v1 != 20311) return 1;
  if (lv.v2 != 15701) return 2;
  if (lv.v3 != 45) return 3;
  return 0;
}
struct Ul_S_C ret_Ul_S_C(){
  struct Ul_S_C lv;
  lv.v1 = 20311;
  lv.v2 = 15701;
  lv.v3 = 45;
  return lv;
}
int zig_recv_Ul_S_C(struct Ul_S_C);
int send_Ul_S_C(){
  struct Ul_S_C lv;
  lv.v1 = 20311;
  lv.v2 = 15701;
  lv.v3 = 45;
  return zig_recv_Ul_S_C(lv);
}

int recv_Ul_S_D(struct Ul_S_D lv){
  if (lv.v1 != 2529) return 1;
  if (lv.v2 != 28822) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Ul_S_D ret_Ul_S_D(){
  struct Ul_S_D lv;
  lv.v1 = 2529;
  lv.v2 = 28822;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Ul_S_D(struct Ul_S_D);
int send_Ul_S_D(){
  struct Ul_S_D lv;
  lv.v1 = 2529;
  lv.v2 = 28822;
  lv.v3 = 0.875;
  return zig_recv_Ul_S_D(lv);
}

int recv_Ul_S_F(struct Ul_S_F lv){
  if (lv.v1 != 17877) return 1;
  if (lv.v2 != 24298) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ul_S_F ret_Ul_S_F(){
  struct Ul_S_F lv;
  lv.v1 = 17877;
  lv.v2 = 24298;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ul_S_F(struct Ul_S_F);
int send_Ul_S_F(){
  struct Ul_S_F lv;
  lv.v1 = 17877;
  lv.v2 = 24298;
  lv.v3 = 0.5;
  return zig_recv_Ul_S_F(lv);
}

int recv_Ul_S_I(struct Ul_S_I lv){
  if (lv.v1 != 19761) return 1;
  if (lv.v2 != 8492) return 2;
  if (lv.v3 != 4769) return 3;
  return 0;
}
struct Ul_S_I ret_Ul_S_I(){
  struct Ul_S_I lv;
  lv.v1 = 19761;
  lv.v2 = 8492;
  lv.v3 = 4769;
  return lv;
}
int zig_recv_Ul_S_I(struct Ul_S_I);
int send_Ul_S_I(){
  struct Ul_S_I lv;
  lv.v1 = 19761;
  lv.v2 = 8492;
  lv.v3 = 4769;
  return zig_recv_Ul_S_I(lv);
}

int recv_Ul_S_Ip(struct Ul_S_Ip lv){
  if (lv.v1 != 21285) return 1;
  if (lv.v2 != 6075) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_S_Ip ret_Ul_S_Ip(){
  struct Ul_S_Ip lv;
  lv.v1 = 21285;
  lv.v2 = 6075;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_S_Ip(struct Ul_S_Ip);
int send_Ul_S_Ip(){
  struct Ul_S_Ip lv;
  lv.v1 = 21285;
  lv.v2 = 6075;
  lv.v3 = 0;
  return zig_recv_Ul_S_Ip(lv);
}

int recv_Ul_S_L(struct Ul_S_L lv){
  if (lv.v1 != 4325) return 1;
  if (lv.v2 != 4313) return 2;
  if (lv.v3 != 14475) return 3;
  return 0;
}
struct Ul_S_L ret_Ul_S_L(){
  struct Ul_S_L lv;
  lv.v1 = 4325;
  lv.v2 = 4313;
  lv.v3 = 14475;
  return lv;
}
int zig_recv_Ul_S_L(struct Ul_S_L);
int send_Ul_S_L(){
  struct Ul_S_L lv;
  lv.v1 = 4325;
  lv.v2 = 4313;
  lv.v3 = 14475;
  return zig_recv_Ul_S_L(lv);
}

int recv_Ul_S_S(struct Ul_S_S lv){
  if (lv.v1 != 28758) return 1;
  if (lv.v2 != 1479) return 2;
  if (lv.v3 != 15299) return 3;
  return 0;
}
struct Ul_S_S ret_Ul_S_S(){
  struct Ul_S_S lv;
  lv.v1 = 28758;
  lv.v2 = 1479;
  lv.v3 = 15299;
  return lv;
}
int zig_recv_Ul_S_S(struct Ul_S_S);
int send_Ul_S_S(){
  struct Ul_S_S lv;
  lv.v1 = 28758;
  lv.v2 = 1479;
  lv.v3 = 15299;
  return zig_recv_Ul_S_S(lv);
}

int recv_Ul_S_Uc(struct Ul_S_Uc lv){
  if (lv.v1 != 23482) return 1;
  if (lv.v2 != 14404) return 2;
  if (lv.v3 != 62) return 3;
  return 0;
}
struct Ul_S_Uc ret_Ul_S_Uc(){
  struct Ul_S_Uc lv;
  lv.v1 = 23482;
  lv.v2 = 14404;
  lv.v3 = 62;
  return lv;
}
int zig_recv_Ul_S_Uc(struct Ul_S_Uc);
int send_Ul_S_Uc(){
  struct Ul_S_Uc lv;
  lv.v1 = 23482;
  lv.v2 = 14404;
  lv.v3 = 62;
  return zig_recv_Ul_S_Uc(lv);
}

int recv_Ul_S_Ui(struct Ul_S_Ui lv){
  if (lv.v1 != 14460) return 1;
  if (lv.v2 != 21505) return 2;
  if (lv.v3 != 10097) return 3;
  return 0;
}
struct Ul_S_Ui ret_Ul_S_Ui(){
  struct Ul_S_Ui lv;
  lv.v1 = 14460;
  lv.v2 = 21505;
  lv.v3 = 10097;
  return lv;
}
int zig_recv_Ul_S_Ui(struct Ul_S_Ui);
int send_Ul_S_Ui(){
  struct Ul_S_Ui lv;
  lv.v1 = 14460;
  lv.v2 = 21505;
  lv.v3 = 10097;
  return zig_recv_Ul_S_Ui(lv);
}

int recv_Ul_S_Ul(struct Ul_S_Ul lv){
  if (lv.v1 != 1815) return 1;
  if (lv.v2 != 29350) return 2;
  if (lv.v3 != 3622) return 3;
  return 0;
}
struct Ul_S_Ul ret_Ul_S_Ul(){
  struct Ul_S_Ul lv;
  lv.v1 = 1815;
  lv.v2 = 29350;
  lv.v3 = 3622;
  return lv;
}
int zig_recv_Ul_S_Ul(struct Ul_S_Ul);
int send_Ul_S_Ul(){
  struct Ul_S_Ul lv;
  lv.v1 = 1815;
  lv.v2 = 29350;
  lv.v3 = 3622;
  return zig_recv_Ul_S_Ul(lv);
}

int recv_Ul_S_Us(struct Ul_S_Us lv){
  if (lv.v1 != 25777) return 1;
  if (lv.v2 != 20180) return 2;
  if (lv.v3 != 7276) return 3;
  return 0;
}
struct Ul_S_Us ret_Ul_S_Us(){
  struct Ul_S_Us lv;
  lv.v1 = 25777;
  lv.v2 = 20180;
  lv.v3 = 7276;
  return lv;
}
int zig_recv_Ul_S_Us(struct Ul_S_Us);
int send_Ul_S_Us(){
  struct Ul_S_Us lv;
  lv.v1 = 25777;
  lv.v2 = 20180;
  lv.v3 = 7276;
  return zig_recv_Ul_S_Us(lv);
}

int recv_Ul_S_Vp(struct Ul_S_Vp lv){
  if (lv.v1 != 28974) return 1;
  if (lv.v2 != 28956) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_S_Vp ret_Ul_S_Vp(){
  struct Ul_S_Vp lv;
  lv.v1 = 28974;
  lv.v2 = 28956;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_S_Vp(struct Ul_S_Vp);
int send_Ul_S_Vp(){
  struct Ul_S_Vp lv;
  lv.v1 = 28974;
  lv.v2 = 28956;
  lv.v3 = 0;
  return zig_recv_Ul_S_Vp(lv);
}

int recv_Ul_Uc(struct Ul_Uc lv){
  if (lv.v1 != 9532) return 1;
  if (lv.v2 != 30) return 2;
  return 0;
}
struct Ul_Uc ret_Ul_Uc(){
  struct Ul_Uc lv;
  lv.v1 = 9532;
  lv.v2 = 30;
  return lv;
}
int zig_recv_Ul_Uc(struct Ul_Uc);
int send_Ul_Uc(){
  struct Ul_Uc lv;
  lv.v1 = 9532;
  lv.v2 = 30;
  return zig_recv_Ul_Uc(lv);
}

int recv_Ul_Uc_C(struct Ul_Uc_C lv){
  if (lv.v1 != 28644) return 1;
  if (lv.v2 != 23) return 2;
  if (lv.v3 != 64) return 3;
  return 0;
}
struct Ul_Uc_C ret_Ul_Uc_C(){
  struct Ul_Uc_C lv;
  lv.v1 = 28644;
  lv.v2 = 23;
  lv.v3 = 64;
  return lv;
}
int zig_recv_Ul_Uc_C(struct Ul_Uc_C);
int send_Ul_Uc_C(){
  struct Ul_Uc_C lv;
  lv.v1 = 28644;
  lv.v2 = 23;
  lv.v3 = 64;
  return zig_recv_Ul_Uc_C(lv);
}

int recv_Ul_Uc_D(struct Ul_Uc_D lv){
  if (lv.v1 != 27342) return 1;
  if (lv.v2 != 53) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Ul_Uc_D ret_Ul_Uc_D(){
  struct Ul_Uc_D lv;
  lv.v1 = 27342;
  lv.v2 = 53;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Ul_Uc_D(struct Ul_Uc_D);
int send_Ul_Uc_D(){
  struct Ul_Uc_D lv;
  lv.v1 = 27342;
  lv.v2 = 53;
  lv.v3 = 7.0;
  return zig_recv_Ul_Uc_D(lv);
}

int recv_Ul_Uc_F(struct Ul_Uc_F lv){
  if (lv.v1 != 357) return 1;
  if (lv.v2 != 83) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Ul_Uc_F ret_Ul_Uc_F(){
  struct Ul_Uc_F lv;
  lv.v1 = 357;
  lv.v2 = 83;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Ul_Uc_F(struct Ul_Uc_F);
int send_Ul_Uc_F(){
  struct Ul_Uc_F lv;
  lv.v1 = 357;
  lv.v2 = 83;
  lv.v3 = 1.0;
  return zig_recv_Ul_Uc_F(lv);
}

int recv_Ul_Uc_I(struct Ul_Uc_I lv){
  if (lv.v1 != 9936) return 1;
  if (lv.v2 != 95) return 2;
  if (lv.v3 != 31107) return 3;
  return 0;
}
struct Ul_Uc_I ret_Ul_Uc_I(){
  struct Ul_Uc_I lv;
  lv.v1 = 9936;
  lv.v2 = 95;
  lv.v3 = 31107;
  return lv;
}
int zig_recv_Ul_Uc_I(struct Ul_Uc_I);
int send_Ul_Uc_I(){
  struct Ul_Uc_I lv;
  lv.v1 = 9936;
  lv.v2 = 95;
  lv.v3 = 31107;
  return zig_recv_Ul_Uc_I(lv);
}

int recv_Ul_Uc_Ip(struct Ul_Uc_Ip lv){
  if (lv.v1 != 28094) return 1;
  if (lv.v2 != 9) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Uc_Ip ret_Ul_Uc_Ip(){
  struct Ul_Uc_Ip lv;
  lv.v1 = 28094;
  lv.v2 = 9;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Uc_Ip(struct Ul_Uc_Ip);
int send_Ul_Uc_Ip(){
  struct Ul_Uc_Ip lv;
  lv.v1 = 28094;
  lv.v2 = 9;
  lv.v3 = 0;
  return zig_recv_Ul_Uc_Ip(lv);
}

int recv_Ul_Uc_L(struct Ul_Uc_L lv){
  if (lv.v1 != 15634) return 1;
  if (lv.v2 != 17) return 2;
  if (lv.v3 != 1241) return 3;
  return 0;
}
struct Ul_Uc_L ret_Ul_Uc_L(){
  struct Ul_Uc_L lv;
  lv.v1 = 15634;
  lv.v2 = 17;
  lv.v3 = 1241;
  return lv;
}
int zig_recv_Ul_Uc_L(struct Ul_Uc_L);
int send_Ul_Uc_L(){
  struct Ul_Uc_L lv;
  lv.v1 = 15634;
  lv.v2 = 17;
  lv.v3 = 1241;
  return zig_recv_Ul_Uc_L(lv);
}

int recv_Ul_Uc_S(struct Ul_Uc_S lv){
  if (lv.v1 != 30415) return 1;
  if (lv.v2 != 26) return 2;
  if (lv.v3 != 12477) return 3;
  return 0;
}
struct Ul_Uc_S ret_Ul_Uc_S(){
  struct Ul_Uc_S lv;
  lv.v1 = 30415;
  lv.v2 = 26;
  lv.v3 = 12477;
  return lv;
}
int zig_recv_Ul_Uc_S(struct Ul_Uc_S);
int send_Ul_Uc_S(){
  struct Ul_Uc_S lv;
  lv.v1 = 30415;
  lv.v2 = 26;
  lv.v3 = 12477;
  return zig_recv_Ul_Uc_S(lv);
}

int recv_Ul_Uc_Uc(struct Ul_Uc_Uc lv){
  if (lv.v1 != 17391) return 1;
  if (lv.v2 != 91) return 2;
  if (lv.v3 != 22) return 3;
  return 0;
}
struct Ul_Uc_Uc ret_Ul_Uc_Uc(){
  struct Ul_Uc_Uc lv;
  lv.v1 = 17391;
  lv.v2 = 91;
  lv.v3 = 22;
  return lv;
}
int zig_recv_Ul_Uc_Uc(struct Ul_Uc_Uc);
int send_Ul_Uc_Uc(){
  struct Ul_Uc_Uc lv;
  lv.v1 = 17391;
  lv.v2 = 91;
  lv.v3 = 22;
  return zig_recv_Ul_Uc_Uc(lv);
}

int recv_Ul_Uc_Ui(struct Ul_Uc_Ui lv){
  if (lv.v1 != 20042) return 1;
  if (lv.v2 != 52) return 2;
  if (lv.v3 != 19522) return 3;
  return 0;
}
struct Ul_Uc_Ui ret_Ul_Uc_Ui(){
  struct Ul_Uc_Ui lv;
  lv.v1 = 20042;
  lv.v2 = 52;
  lv.v3 = 19522;
  return lv;
}
int zig_recv_Ul_Uc_Ui(struct Ul_Uc_Ui);
int send_Ul_Uc_Ui(){
  struct Ul_Uc_Ui lv;
  lv.v1 = 20042;
  lv.v2 = 52;
  lv.v3 = 19522;
  return zig_recv_Ul_Uc_Ui(lv);
}

int recv_Ul_Uc_Ul(struct Ul_Uc_Ul lv){
  if (lv.v1 != 18223) return 1;
  if (lv.v2 != 65) return 2;
  if (lv.v3 != 26245) return 3;
  return 0;
}
struct Ul_Uc_Ul ret_Ul_Uc_Ul(){
  struct Ul_Uc_Ul lv;
  lv.v1 = 18223;
  lv.v2 = 65;
  lv.v3 = 26245;
  return lv;
}
int zig_recv_Ul_Uc_Ul(struct Ul_Uc_Ul);
int send_Ul_Uc_Ul(){
  struct Ul_Uc_Ul lv;
  lv.v1 = 18223;
  lv.v2 = 65;
  lv.v3 = 26245;
  return zig_recv_Ul_Uc_Ul(lv);
}

int recv_Ul_Uc_Us(struct Ul_Uc_Us lv){
  if (lv.v1 != 13507) return 1;
  if (lv.v2 != 81) return 2;
  if (lv.v3 != 16987) return 3;
  return 0;
}
struct Ul_Uc_Us ret_Ul_Uc_Us(){
  struct Ul_Uc_Us lv;
  lv.v1 = 13507;
  lv.v2 = 81;
  lv.v3 = 16987;
  return lv;
}
int zig_recv_Ul_Uc_Us(struct Ul_Uc_Us);
int send_Ul_Uc_Us(){
  struct Ul_Uc_Us lv;
  lv.v1 = 13507;
  lv.v2 = 81;
  lv.v3 = 16987;
  return zig_recv_Ul_Uc_Us(lv);
}

int recv_Ul_Uc_Vp(struct Ul_Uc_Vp lv){
  if (lv.v1 != 4951) return 1;
  if (lv.v2 != 65) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Uc_Vp ret_Ul_Uc_Vp(){
  struct Ul_Uc_Vp lv;
  lv.v1 = 4951;
  lv.v2 = 65;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Uc_Vp(struct Ul_Uc_Vp);
int send_Ul_Uc_Vp(){
  struct Ul_Uc_Vp lv;
  lv.v1 = 4951;
  lv.v2 = 65;
  lv.v3 = 0;
  return zig_recv_Ul_Uc_Vp(lv);
}

int recv_Ul_Ui(struct Ul_Ui lv){
  if (lv.v1 != 7789) return 1;
  if (lv.v2 != 28185) return 2;
  return 0;
}
struct Ul_Ui ret_Ul_Ui(){
  struct Ul_Ui lv;
  lv.v1 = 7789;
  lv.v2 = 28185;
  return lv;
}
int zig_recv_Ul_Ui(struct Ul_Ui);
int send_Ul_Ui(){
  struct Ul_Ui lv;
  lv.v1 = 7789;
  lv.v2 = 28185;
  return zig_recv_Ul_Ui(lv);
}

int recv_Ul_Ui_C(struct Ul_Ui_C lv){
  if (lv.v1 != 3948) return 1;
  if (lv.v2 != 28420) return 2;
  if (lv.v3 != 79) return 3;
  return 0;
}
struct Ul_Ui_C ret_Ul_Ui_C(){
  struct Ul_Ui_C lv;
  lv.v1 = 3948;
  lv.v2 = 28420;
  lv.v3 = 79;
  return lv;
}
int zig_recv_Ul_Ui_C(struct Ul_Ui_C);
int send_Ul_Ui_C(){
  struct Ul_Ui_C lv;
  lv.v1 = 3948;
  lv.v2 = 28420;
  lv.v3 = 79;
  return zig_recv_Ul_Ui_C(lv);
}

int recv_Ul_Ui_D(struct Ul_Ui_D lv){
  if (lv.v1 != 1908) return 1;
  if (lv.v2 != 4685) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Ul_Ui_D ret_Ul_Ui_D(){
  struct Ul_Ui_D lv;
  lv.v1 = 1908;
  lv.v2 = 4685;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Ul_Ui_D(struct Ul_Ui_D);
int send_Ul_Ui_D(){
  struct Ul_Ui_D lv;
  lv.v1 = 1908;
  lv.v2 = 4685;
  lv.v3 = 7.0;
  return zig_recv_Ul_Ui_D(lv);
}

int recv_Ul_Ui_F(struct Ul_Ui_F lv){
  if (lv.v1 != 24351) return 1;
  if (lv.v2 != 12662) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Ul_Ui_F ret_Ul_Ui_F(){
  struct Ul_Ui_F lv;
  lv.v1 = 24351;
  lv.v2 = 12662;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Ul_Ui_F(struct Ul_Ui_F);
int send_Ul_Ui_F(){
  struct Ul_Ui_F lv;
  lv.v1 = 24351;
  lv.v2 = 12662;
  lv.v3 = 4.5;
  return zig_recv_Ul_Ui_F(lv);
}

int recv_Ul_Ui_I(struct Ul_Ui_I lv){
  if (lv.v1 != 2857) return 1;
  if (lv.v2 != 5187) return 2;
  if (lv.v3 != 24559) return 3;
  return 0;
}
struct Ul_Ui_I ret_Ul_Ui_I(){
  struct Ul_Ui_I lv;
  lv.v1 = 2857;
  lv.v2 = 5187;
  lv.v3 = 24559;
  return lv;
}
int zig_recv_Ul_Ui_I(struct Ul_Ui_I);
int send_Ul_Ui_I(){
  struct Ul_Ui_I lv;
  lv.v1 = 2857;
  lv.v2 = 5187;
  lv.v3 = 24559;
  return zig_recv_Ul_Ui_I(lv);
}

int recv_Ul_Ui_Ip(struct Ul_Ui_Ip lv){
  if (lv.v1 != 2720) return 1;
  if (lv.v2 != 966) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Ui_Ip ret_Ul_Ui_Ip(){
  struct Ul_Ui_Ip lv;
  lv.v1 = 2720;
  lv.v2 = 966;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Ui_Ip(struct Ul_Ui_Ip);
int send_Ul_Ui_Ip(){
  struct Ul_Ui_Ip lv;
  lv.v1 = 2720;
  lv.v2 = 966;
  lv.v3 = 0;
  return zig_recv_Ul_Ui_Ip(lv);
}

int recv_Ul_Ui_L(struct Ul_Ui_L lv){
  if (lv.v1 != 6968) return 1;
  if (lv.v2 != 31951) return 2;
  if (lv.v3 != 7933) return 3;
  return 0;
}
struct Ul_Ui_L ret_Ul_Ui_L(){
  struct Ul_Ui_L lv;
  lv.v1 = 6968;
  lv.v2 = 31951;
  lv.v3 = 7933;
  return lv;
}
int zig_recv_Ul_Ui_L(struct Ul_Ui_L);
int send_Ul_Ui_L(){
  struct Ul_Ui_L lv;
  lv.v1 = 6968;
  lv.v2 = 31951;
  lv.v3 = 7933;
  return zig_recv_Ul_Ui_L(lv);
}

int recv_Ul_Ui_S(struct Ul_Ui_S lv){
  if (lv.v1 != 28303) return 1;
  if (lv.v2 != 27593) return 2;
  if (lv.v3 != 32181) return 3;
  return 0;
}
struct Ul_Ui_S ret_Ul_Ui_S(){
  struct Ul_Ui_S lv;
  lv.v1 = 28303;
  lv.v2 = 27593;
  lv.v3 = 32181;
  return lv;
}
int zig_recv_Ul_Ui_S(struct Ul_Ui_S);
int send_Ul_Ui_S(){
  struct Ul_Ui_S lv;
  lv.v1 = 28303;
  lv.v2 = 27593;
  lv.v3 = 32181;
  return zig_recv_Ul_Ui_S(lv);
}

int recv_Ul_Ui_Uc(struct Ul_Ui_Uc lv){
  if (lv.v1 != 2033) return 1;
  if (lv.v2 != 2860) return 2;
  if (lv.v3 != 81) return 3;
  return 0;
}
struct Ul_Ui_Uc ret_Ul_Ui_Uc(){
  struct Ul_Ui_Uc lv;
  lv.v1 = 2033;
  lv.v2 = 2860;
  lv.v3 = 81;
  return lv;
}
int zig_recv_Ul_Ui_Uc(struct Ul_Ui_Uc);
int send_Ul_Ui_Uc(){
  struct Ul_Ui_Uc lv;
  lv.v1 = 2033;
  lv.v2 = 2860;
  lv.v3 = 81;
  return zig_recv_Ul_Ui_Uc(lv);
}

int recv_Ul_Ui_Ui(struct Ul_Ui_Ui lv){
  if (lv.v1 != 3618) return 1;
  if (lv.v2 != 21646) return 2;
  if (lv.v3 != 30807) return 3;
  return 0;
}
struct Ul_Ui_Ui ret_Ul_Ui_Ui(){
  struct Ul_Ui_Ui lv;
  lv.v1 = 3618;
  lv.v2 = 21646;
  lv.v3 = 30807;
  return lv;
}
int zig_recv_Ul_Ui_Ui(struct Ul_Ui_Ui);
int send_Ul_Ui_Ui(){
  struct Ul_Ui_Ui lv;
  lv.v1 = 3618;
  lv.v2 = 21646;
  lv.v3 = 30807;
  return zig_recv_Ul_Ui_Ui(lv);
}

int recv_Ul_Ui_Ul(struct Ul_Ui_Ul lv){
  if (lv.v1 != 20561) return 1;
  if (lv.v2 != 27761) return 2;
  if (lv.v3 != 14975) return 3;
  return 0;
}
struct Ul_Ui_Ul ret_Ul_Ui_Ul(){
  struct Ul_Ui_Ul lv;
  lv.v1 = 20561;
  lv.v2 = 27761;
  lv.v3 = 14975;
  return lv;
}
int zig_recv_Ul_Ui_Ul(struct Ul_Ui_Ul);
int send_Ul_Ui_Ul(){
  struct Ul_Ui_Ul lv;
  lv.v1 = 20561;
  lv.v2 = 27761;
  lv.v3 = 14975;
  return zig_recv_Ul_Ui_Ul(lv);
}

int recv_Ul_Ui_Us(struct Ul_Ui_Us lv){
  if (lv.v1 != 32483) return 1;
  if (lv.v2 != 13395) return 2;
  if (lv.v3 != 8916) return 3;
  return 0;
}
struct Ul_Ui_Us ret_Ul_Ui_Us(){
  struct Ul_Ui_Us lv;
  lv.v1 = 32483;
  lv.v2 = 13395;
  lv.v3 = 8916;
  return lv;
}
int zig_recv_Ul_Ui_Us(struct Ul_Ui_Us);
int send_Ul_Ui_Us(){
  struct Ul_Ui_Us lv;
  lv.v1 = 32483;
  lv.v2 = 13395;
  lv.v3 = 8916;
  return zig_recv_Ul_Ui_Us(lv);
}

int recv_Ul_Ui_Vp(struct Ul_Ui_Vp lv){
  if (lv.v1 != 21478) return 1;
  if (lv.v2 != 4637) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Ui_Vp ret_Ul_Ui_Vp(){
  struct Ul_Ui_Vp lv;
  lv.v1 = 21478;
  lv.v2 = 4637;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Ui_Vp(struct Ul_Ui_Vp);
int send_Ul_Ui_Vp(){
  struct Ul_Ui_Vp lv;
  lv.v1 = 21478;
  lv.v2 = 4637;
  lv.v3 = 0;
  return zig_recv_Ul_Ui_Vp(lv);
}

int recv_Ul_Ul(struct Ul_Ul lv){
  if (lv.v1 != 21329) return 1;
  if (lv.v2 != 8885) return 2;
  return 0;
}
struct Ul_Ul ret_Ul_Ul(){
  struct Ul_Ul lv;
  lv.v1 = 21329;
  lv.v2 = 8885;
  return lv;
}
int zig_recv_Ul_Ul(struct Ul_Ul);
int send_Ul_Ul(){
  struct Ul_Ul lv;
  lv.v1 = 21329;
  lv.v2 = 8885;
  return zig_recv_Ul_Ul(lv);
}

int recv_Ul_Ul_C(struct Ul_Ul_C lv){
  if (lv.v1 != 24860) return 1;
  if (lv.v2 != 9133) return 2;
  if (lv.v3 != 90) return 3;
  return 0;
}
struct Ul_Ul_C ret_Ul_Ul_C(){
  struct Ul_Ul_C lv;
  lv.v1 = 24860;
  lv.v2 = 9133;
  lv.v3 = 90;
  return lv;
}
int zig_recv_Ul_Ul_C(struct Ul_Ul_C);
int send_Ul_Ul_C(){
  struct Ul_Ul_C lv;
  lv.v1 = 24860;
  lv.v2 = 9133;
  lv.v3 = 90;
  return zig_recv_Ul_Ul_C(lv);
}

int recv_Ul_Ul_D(struct Ul_Ul_D lv){
  if (lv.v1 != 16601) return 1;
  if (lv.v2 != 13026) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Ul_Ul_D ret_Ul_Ul_D(){
  struct Ul_Ul_D lv;
  lv.v1 = 16601;
  lv.v2 = 13026;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Ul_Ul_D(struct Ul_Ul_D);
int send_Ul_Ul_D(){
  struct Ul_Ul_D lv;
  lv.v1 = 16601;
  lv.v2 = 13026;
  lv.v3 = -0.25;
  return zig_recv_Ul_Ul_D(lv);
}

int recv_Ul_Ul_F(struct Ul_Ul_F lv){
  if (lv.v1 != 30369) return 1;
  if (lv.v2 != 8873) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Ul_Ul_F ret_Ul_Ul_F(){
  struct Ul_Ul_F lv;
  lv.v1 = 30369;
  lv.v2 = 8873;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Ul_Ul_F(struct Ul_Ul_F);
int send_Ul_Ul_F(){
  struct Ul_Ul_F lv;
  lv.v1 = 30369;
  lv.v2 = 8873;
  lv.v3 = -0.25;
  return zig_recv_Ul_Ul_F(lv);
}

int recv_Ul_Ul_I(struct Ul_Ul_I lv){
  if (lv.v1 != 12703) return 1;
  if (lv.v2 != 15563) return 2;
  if (lv.v3 != 26532) return 3;
  return 0;
}
struct Ul_Ul_I ret_Ul_Ul_I(){
  struct Ul_Ul_I lv;
  lv.v1 = 12703;
  lv.v2 = 15563;
  lv.v3 = 26532;
  return lv;
}
int zig_recv_Ul_Ul_I(struct Ul_Ul_I);
int send_Ul_Ul_I(){
  struct Ul_Ul_I lv;
  lv.v1 = 12703;
  lv.v2 = 15563;
  lv.v3 = 26532;
  return zig_recv_Ul_Ul_I(lv);
}

int recv_Ul_Ul_Ip(struct Ul_Ul_Ip lv){
  if (lv.v1 != 18635) return 1;
  if (lv.v2 != 1782) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Ul_Ip ret_Ul_Ul_Ip(){
  struct Ul_Ul_Ip lv;
  lv.v1 = 18635;
  lv.v2 = 1782;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Ul_Ip(struct Ul_Ul_Ip);
int send_Ul_Ul_Ip(){
  struct Ul_Ul_Ip lv;
  lv.v1 = 18635;
  lv.v2 = 1782;
  lv.v3 = 0;
  return zig_recv_Ul_Ul_Ip(lv);
}

int recv_Ul_Ul_L(struct Ul_Ul_L lv){
  if (lv.v1 != 4753) return 1;
  if (lv.v2 != 14056) return 2;
  if (lv.v3 != 2292) return 3;
  return 0;
}
struct Ul_Ul_L ret_Ul_Ul_L(){
  struct Ul_Ul_L lv;
  lv.v1 = 4753;
  lv.v2 = 14056;
  lv.v3 = 2292;
  return lv;
}
int zig_recv_Ul_Ul_L(struct Ul_Ul_L);
int send_Ul_Ul_L(){
  struct Ul_Ul_L lv;
  lv.v1 = 4753;
  lv.v2 = 14056;
  lv.v3 = 2292;
  return zig_recv_Ul_Ul_L(lv);
}

int recv_Ul_Ul_S(struct Ul_Ul_S lv){
  if (lv.v1 != 13277) return 1;
  if (lv.v2 != 14126) return 2;
  if (lv.v3 != 24506) return 3;
  return 0;
}
struct Ul_Ul_S ret_Ul_Ul_S(){
  struct Ul_Ul_S lv;
  lv.v1 = 13277;
  lv.v2 = 14126;
  lv.v3 = 24506;
  return lv;
}
int zig_recv_Ul_Ul_S(struct Ul_Ul_S);
int send_Ul_Ul_S(){
  struct Ul_Ul_S lv;
  lv.v1 = 13277;
  lv.v2 = 14126;
  lv.v3 = 24506;
  return zig_recv_Ul_Ul_S(lv);
}

int recv_Ul_Ul_Uc(struct Ul_Ul_Uc lv){
  if (lv.v1 != 28837) return 1;
  if (lv.v2 != 22666) return 2;
  if (lv.v3 != 112) return 3;
  return 0;
}
struct Ul_Ul_Uc ret_Ul_Ul_Uc(){
  struct Ul_Ul_Uc lv;
  lv.v1 = 28837;
  lv.v2 = 22666;
  lv.v3 = 112;
  return lv;
}
int zig_recv_Ul_Ul_Uc(struct Ul_Ul_Uc);
int send_Ul_Ul_Uc(){
  struct Ul_Ul_Uc lv;
  lv.v1 = 28837;
  lv.v2 = 22666;
  lv.v3 = 112;
  return zig_recv_Ul_Ul_Uc(lv);
}

int recv_Ul_Ul_Ui(struct Ul_Ul_Ui lv){
  if (lv.v1 != 1478) return 1;
  if (lv.v2 != 21614) return 2;
  if (lv.v3 != 19239) return 3;
  return 0;
}
struct Ul_Ul_Ui ret_Ul_Ul_Ui(){
  struct Ul_Ul_Ui lv;
  lv.v1 = 1478;
  lv.v2 = 21614;
  lv.v3 = 19239;
  return lv;
}
int zig_recv_Ul_Ul_Ui(struct Ul_Ul_Ui);
int send_Ul_Ul_Ui(){
  struct Ul_Ul_Ui lv;
  lv.v1 = 1478;
  lv.v2 = 21614;
  lv.v3 = 19239;
  return zig_recv_Ul_Ul_Ui(lv);
}

int recv_Ul_Ul_Ul(struct Ul_Ul_Ul lv){
  if (lv.v1 != 3139) return 1;
  if (lv.v2 != 24472) return 2;
  if (lv.v3 != 2247) return 3;
  return 0;
}
struct Ul_Ul_Ul ret_Ul_Ul_Ul(){
  struct Ul_Ul_Ul lv;
  lv.v1 = 3139;
  lv.v2 = 24472;
  lv.v3 = 2247;
  return lv;
}
int zig_recv_Ul_Ul_Ul(struct Ul_Ul_Ul);
int send_Ul_Ul_Ul(){
  struct Ul_Ul_Ul lv;
  lv.v1 = 3139;
  lv.v2 = 24472;
  lv.v3 = 2247;
  return zig_recv_Ul_Ul_Ul(lv);
}

int recv_Ul_Ul_Us(struct Ul_Ul_Us lv){
  if (lv.v1 != 27076) return 1;
  if (lv.v2 != 8474) return 2;
  if (lv.v3 != 9430) return 3;
  return 0;
}
struct Ul_Ul_Us ret_Ul_Ul_Us(){
  struct Ul_Ul_Us lv;
  lv.v1 = 27076;
  lv.v2 = 8474;
  lv.v3 = 9430;
  return lv;
}
int zig_recv_Ul_Ul_Us(struct Ul_Ul_Us);
int send_Ul_Ul_Us(){
  struct Ul_Ul_Us lv;
  lv.v1 = 27076;
  lv.v2 = 8474;
  lv.v3 = 9430;
  return zig_recv_Ul_Ul_Us(lv);
}

int recv_Ul_Ul_Vp(struct Ul_Ul_Vp lv){
  if (lv.v1 != 7942) return 1;
  if (lv.v2 != 18058) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Ul_Vp ret_Ul_Ul_Vp(){
  struct Ul_Ul_Vp lv;
  lv.v1 = 7942;
  lv.v2 = 18058;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Ul_Vp(struct Ul_Ul_Vp);
int send_Ul_Ul_Vp(){
  struct Ul_Ul_Vp lv;
  lv.v1 = 7942;
  lv.v2 = 18058;
  lv.v3 = 0;
  return zig_recv_Ul_Ul_Vp(lv);
}

int recv_Ul_Us(struct Ul_Us lv){
  if (lv.v1 != 2643) return 1;
  if (lv.v2 != 28366) return 2;
  return 0;
}
struct Ul_Us ret_Ul_Us(){
  struct Ul_Us lv;
  lv.v1 = 2643;
  lv.v2 = 28366;
  return lv;
}
int zig_recv_Ul_Us(struct Ul_Us);
int send_Ul_Us(){
  struct Ul_Us lv;
  lv.v1 = 2643;
  lv.v2 = 28366;
  return zig_recv_Ul_Us(lv);
}

int recv_Ul_Us_C(struct Ul_Us_C lv){
  if (lv.v1 != 3725) return 1;
  if (lv.v2 != 2617) return 2;
  if (lv.v3 != 120) return 3;
  return 0;
}
struct Ul_Us_C ret_Ul_Us_C(){
  struct Ul_Us_C lv;
  lv.v1 = 3725;
  lv.v2 = 2617;
  lv.v3 = 120;
  return lv;
}
int zig_recv_Ul_Us_C(struct Ul_Us_C);
int send_Ul_Us_C(){
  struct Ul_Us_C lv;
  lv.v1 = 3725;
  lv.v2 = 2617;
  lv.v3 = 120;
  return zig_recv_Ul_Us_C(lv);
}

int recv_Ul_Us_D(struct Ul_Us_D lv){
  if (lv.v1 != 18843) return 1;
  if (lv.v2 != 22623) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Ul_Us_D ret_Ul_Us_D(){
  struct Ul_Us_D lv;
  lv.v1 = 18843;
  lv.v2 = 22623;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Ul_Us_D(struct Ul_Us_D);
int send_Ul_Us_D(){
  struct Ul_Us_D lv;
  lv.v1 = 18843;
  lv.v2 = 22623;
  lv.v3 = 0.875;
  return zig_recv_Ul_Us_D(lv);
}

int recv_Ul_Us_F(struct Ul_Us_F lv){
  if (lv.v1 != 28743) return 1;
  if (lv.v2 != 16957) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Ul_Us_F ret_Ul_Us_F(){
  struct Ul_Us_F lv;
  lv.v1 = 28743;
  lv.v2 = 16957;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Ul_Us_F(struct Ul_Us_F);
int send_Ul_Us_F(){
  struct Ul_Us_F lv;
  lv.v1 = 28743;
  lv.v2 = 16957;
  lv.v3 = 1.0;
  return zig_recv_Ul_Us_F(lv);
}

int recv_Ul_Us_I(struct Ul_Us_I lv){
  if (lv.v1 != 740) return 1;
  if (lv.v2 != 5377) return 2;
  if (lv.v3 != 29762) return 3;
  return 0;
}
struct Ul_Us_I ret_Ul_Us_I(){
  struct Ul_Us_I lv;
  lv.v1 = 740;
  lv.v2 = 5377;
  lv.v3 = 29762;
  return lv;
}
int zig_recv_Ul_Us_I(struct Ul_Us_I);
int send_Ul_Us_I(){
  struct Ul_Us_I lv;
  lv.v1 = 740;
  lv.v2 = 5377;
  lv.v3 = 29762;
  return zig_recv_Ul_Us_I(lv);
}

int recv_Ul_Us_Ip(struct Ul_Us_Ip lv){
  if (lv.v1 != 3105) return 1;
  if (lv.v2 != 17049) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Us_Ip ret_Ul_Us_Ip(){
  struct Ul_Us_Ip lv;
  lv.v1 = 3105;
  lv.v2 = 17049;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Us_Ip(struct Ul_Us_Ip);
int send_Ul_Us_Ip(){
  struct Ul_Us_Ip lv;
  lv.v1 = 3105;
  lv.v2 = 17049;
  lv.v3 = 0;
  return zig_recv_Ul_Us_Ip(lv);
}

int recv_Ul_Us_L(struct Ul_Us_L lv){
  if (lv.v1 != 26785) return 1;
  if (lv.v2 != 14066) return 2;
  if (lv.v3 != 4067) return 3;
  return 0;
}
struct Ul_Us_L ret_Ul_Us_L(){
  struct Ul_Us_L lv;
  lv.v1 = 26785;
  lv.v2 = 14066;
  lv.v3 = 4067;
  return lv;
}
int zig_recv_Ul_Us_L(struct Ul_Us_L);
int send_Ul_Us_L(){
  struct Ul_Us_L lv;
  lv.v1 = 26785;
  lv.v2 = 14066;
  lv.v3 = 4067;
  return zig_recv_Ul_Us_L(lv);
}

int recv_Ul_Us_S(struct Ul_Us_S lv){
  if (lv.v1 != 16835) return 1;
  if (lv.v2 != 29577) return 2;
  if (lv.v3 != 24424) return 3;
  return 0;
}
struct Ul_Us_S ret_Ul_Us_S(){
  struct Ul_Us_S lv;
  lv.v1 = 16835;
  lv.v2 = 29577;
  lv.v3 = 24424;
  return lv;
}
int zig_recv_Ul_Us_S(struct Ul_Us_S);
int send_Ul_Us_S(){
  struct Ul_Us_S lv;
  lv.v1 = 16835;
  lv.v2 = 29577;
  lv.v3 = 24424;
  return zig_recv_Ul_Us_S(lv);
}

int recv_Ul_Us_Uc(struct Ul_Us_Uc lv){
  if (lv.v1 != 11719) return 1;
  if (lv.v2 != 12708) return 2;
  if (lv.v3 != 67) return 3;
  return 0;
}
struct Ul_Us_Uc ret_Ul_Us_Uc(){
  struct Ul_Us_Uc lv;
  lv.v1 = 11719;
  lv.v2 = 12708;
  lv.v3 = 67;
  return lv;
}
int zig_recv_Ul_Us_Uc(struct Ul_Us_Uc);
int send_Ul_Us_Uc(){
  struct Ul_Us_Uc lv;
  lv.v1 = 11719;
  lv.v2 = 12708;
  lv.v3 = 67;
  return zig_recv_Ul_Us_Uc(lv);
}

int recv_Ul_Us_Ui(struct Ul_Us_Ui lv){
  if (lv.v1 != 26605) return 1;
  if (lv.v2 != 10106) return 2;
  if (lv.v3 != 23753) return 3;
  return 0;
}
struct Ul_Us_Ui ret_Ul_Us_Ui(){
  struct Ul_Us_Ui lv;
  lv.v1 = 26605;
  lv.v2 = 10106;
  lv.v3 = 23753;
  return lv;
}
int zig_recv_Ul_Us_Ui(struct Ul_Us_Ui);
int send_Ul_Us_Ui(){
  struct Ul_Us_Ui lv;
  lv.v1 = 26605;
  lv.v2 = 10106;
  lv.v3 = 23753;
  return zig_recv_Ul_Us_Ui(lv);
}

int recv_Ul_Us_Ul(struct Ul_Us_Ul lv){
  if (lv.v1 != 1091) return 1;
  if (lv.v2 != 31951) return 2;
  if (lv.v3 != 2537) return 3;
  return 0;
}
struct Ul_Us_Ul ret_Ul_Us_Ul(){
  struct Ul_Us_Ul lv;
  lv.v1 = 1091;
  lv.v2 = 31951;
  lv.v3 = 2537;
  return lv;
}
int zig_recv_Ul_Us_Ul(struct Ul_Us_Ul);
int send_Ul_Us_Ul(){
  struct Ul_Us_Ul lv;
  lv.v1 = 1091;
  lv.v2 = 31951;
  lv.v3 = 2537;
  return zig_recv_Ul_Us_Ul(lv);
}

int recv_Ul_Us_Us(struct Ul_Us_Us lv){
  if (lv.v1 != 6339) return 1;
  if (lv.v2 != 31142) return 2;
  if (lv.v3 != 16115) return 3;
  return 0;
}
struct Ul_Us_Us ret_Ul_Us_Us(){
  struct Ul_Us_Us lv;
  lv.v1 = 6339;
  lv.v2 = 31142;
  lv.v3 = 16115;
  return lv;
}
int zig_recv_Ul_Us_Us(struct Ul_Us_Us);
int send_Ul_Us_Us(){
  struct Ul_Us_Us lv;
  lv.v1 = 6339;
  lv.v2 = 31142;
  lv.v3 = 16115;
  return zig_recv_Ul_Us_Us(lv);
}

int recv_Ul_Us_Vp(struct Ul_Us_Vp lv){
  if (lv.v1 != 18681) return 1;
  if (lv.v2 != 2174) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Us_Vp ret_Ul_Us_Vp(){
  struct Ul_Us_Vp lv;
  lv.v1 = 18681;
  lv.v2 = 2174;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Us_Vp(struct Ul_Us_Vp);
int send_Ul_Us_Vp(){
  struct Ul_Us_Vp lv;
  lv.v1 = 18681;
  lv.v2 = 2174;
  lv.v3 = 0;
  return zig_recv_Ul_Us_Vp(lv);
}

int recv_Ul_Vp(struct Ul_Vp lv){
  if (lv.v1 != 7138) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct Ul_Vp ret_Ul_Vp(){
  struct Ul_Vp lv;
  lv.v1 = 7138;
  lv.v2 = 0;
  return lv;
}
int zig_recv_Ul_Vp(struct Ul_Vp);
int send_Ul_Vp(){
  struct Ul_Vp lv;
  lv.v1 = 7138;
  lv.v2 = 0;
  return zig_recv_Ul_Vp(lv);
}

int recv_Ul_Vp_C(struct Ul_Vp_C lv){
  if (lv.v1 != 12084) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 77) return 3;
  return 0;
}
struct Ul_Vp_C ret_Ul_Vp_C(){
  struct Ul_Vp_C lv;
  lv.v1 = 12084;
  lv.v2 = 0;
  lv.v3 = 77;
  return lv;
}
int zig_recv_Ul_Vp_C(struct Ul_Vp_C);
int send_Ul_Vp_C(){
  struct Ul_Vp_C lv;
  lv.v1 = 12084;
  lv.v2 = 0;
  lv.v3 = 77;
  return zig_recv_Ul_Vp_C(lv);
}

int recv_Ul_Vp_D(struct Ul_Vp_D lv){
  if (lv.v1 != 26067) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Ul_Vp_D ret_Ul_Vp_D(){
  struct Ul_Vp_D lv;
  lv.v1 = 26067;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Ul_Vp_D(struct Ul_Vp_D);
int send_Ul_Vp_D(){
  struct Ul_Vp_D lv;
  lv.v1 = 26067;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return zig_recv_Ul_Vp_D(lv);
}

int recv_Ul_Vp_F(struct Ul_Vp_F lv){
  if (lv.v1 != 14892) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ul_Vp_F ret_Ul_Vp_F(){
  struct Ul_Vp_F lv;
  lv.v1 = 14892;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ul_Vp_F(struct Ul_Vp_F);
int send_Ul_Vp_F(){
  struct Ul_Vp_F lv;
  lv.v1 = 14892;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return zig_recv_Ul_Vp_F(lv);
}

int recv_Ul_Vp_I(struct Ul_Vp_I lv){
  if (lv.v1 != 7902) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 16411) return 3;
  return 0;
}
struct Ul_Vp_I ret_Ul_Vp_I(){
  struct Ul_Vp_I lv;
  lv.v1 = 7902;
  lv.v2 = 0;
  lv.v3 = 16411;
  return lv;
}
int zig_recv_Ul_Vp_I(struct Ul_Vp_I);
int send_Ul_Vp_I(){
  struct Ul_Vp_I lv;
  lv.v1 = 7902;
  lv.v2 = 0;
  lv.v3 = 16411;
  return zig_recv_Ul_Vp_I(lv);
}

int recv_Ul_Vp_Ip(struct Ul_Vp_Ip lv){
  if (lv.v1 != 3098) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Vp_Ip ret_Ul_Vp_Ip(){
  struct Ul_Vp_Ip lv;
  lv.v1 = 3098;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Vp_Ip(struct Ul_Vp_Ip);
int send_Ul_Vp_Ip(){
  struct Ul_Vp_Ip lv;
  lv.v1 = 3098;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Ul_Vp_Ip(lv);
}

int recv_Ul_Vp_L(struct Ul_Vp_L lv){
  if (lv.v1 != 10634) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 13712) return 3;
  return 0;
}
struct Ul_Vp_L ret_Ul_Vp_L(){
  struct Ul_Vp_L lv;
  lv.v1 = 10634;
  lv.v2 = 0;
  lv.v3 = 13712;
  return lv;
}
int zig_recv_Ul_Vp_L(struct Ul_Vp_L);
int send_Ul_Vp_L(){
  struct Ul_Vp_L lv;
  lv.v1 = 10634;
  lv.v2 = 0;
  lv.v3 = 13712;
  return zig_recv_Ul_Vp_L(lv);
}

int recv_Ul_Vp_S(struct Ul_Vp_S lv){
  if (lv.v1 != 13103) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 26544) return 3;
  return 0;
}
struct Ul_Vp_S ret_Ul_Vp_S(){
  struct Ul_Vp_S lv;
  lv.v1 = 13103;
  lv.v2 = 0;
  lv.v3 = 26544;
  return lv;
}
int zig_recv_Ul_Vp_S(struct Ul_Vp_S);
int send_Ul_Vp_S(){
  struct Ul_Vp_S lv;
  lv.v1 = 13103;
  lv.v2 = 0;
  lv.v3 = 26544;
  return zig_recv_Ul_Vp_S(lv);
}

int recv_Ul_Vp_Uc(struct Ul_Vp_Uc lv){
  if (lv.v1 != 7202) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 80) return 3;
  return 0;
}
struct Ul_Vp_Uc ret_Ul_Vp_Uc(){
  struct Ul_Vp_Uc lv;
  lv.v1 = 7202;
  lv.v2 = 0;
  lv.v3 = 80;
  return lv;
}
int zig_recv_Ul_Vp_Uc(struct Ul_Vp_Uc);
int send_Ul_Vp_Uc(){
  struct Ul_Vp_Uc lv;
  lv.v1 = 7202;
  lv.v2 = 0;
  lv.v3 = 80;
  return zig_recv_Ul_Vp_Uc(lv);
}

int recv_Ul_Vp_Ui(struct Ul_Vp_Ui lv){
  if (lv.v1 != 22663) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 1363) return 3;
  return 0;
}
struct Ul_Vp_Ui ret_Ul_Vp_Ui(){
  struct Ul_Vp_Ui lv;
  lv.v1 = 22663;
  lv.v2 = 0;
  lv.v3 = 1363;
  return lv;
}
int zig_recv_Ul_Vp_Ui(struct Ul_Vp_Ui);
int send_Ul_Vp_Ui(){
  struct Ul_Vp_Ui lv;
  lv.v1 = 22663;
  lv.v2 = 0;
  lv.v3 = 1363;
  return zig_recv_Ul_Vp_Ui(lv);
}

int recv_Ul_Vp_Ul(struct Ul_Vp_Ul lv){
  if (lv.v1 != 18470) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 9482) return 3;
  return 0;
}
struct Ul_Vp_Ul ret_Ul_Vp_Ul(){
  struct Ul_Vp_Ul lv;
  lv.v1 = 18470;
  lv.v2 = 0;
  lv.v3 = 9482;
  return lv;
}
int zig_recv_Ul_Vp_Ul(struct Ul_Vp_Ul);
int send_Ul_Vp_Ul(){
  struct Ul_Vp_Ul lv;
  lv.v1 = 18470;
  lv.v2 = 0;
  lv.v3 = 9482;
  return zig_recv_Ul_Vp_Ul(lv);
}

int recv_Ul_Vp_Us(struct Ul_Vp_Us lv){
  if (lv.v1 != 28776) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 16723) return 3;
  return 0;
}
struct Ul_Vp_Us ret_Ul_Vp_Us(){
  struct Ul_Vp_Us lv;
  lv.v1 = 28776;
  lv.v2 = 0;
  lv.v3 = 16723;
  return lv;
}
int zig_recv_Ul_Vp_Us(struct Ul_Vp_Us);
int send_Ul_Vp_Us(){
  struct Ul_Vp_Us lv;
  lv.v1 = 28776;
  lv.v2 = 0;
  lv.v3 = 16723;
  return zig_recv_Ul_Vp_Us(lv);
}

int recv_Ul_Vp_Vp(struct Ul_Vp_Vp lv){
  if (lv.v1 != 25197) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ul_Vp_Vp ret_Ul_Vp_Vp(){
  struct Ul_Vp_Vp lv;
  lv.v1 = 25197;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ul_Vp_Vp(struct Ul_Vp_Vp);
int send_Ul_Vp_Vp(){
  struct Ul_Vp_Vp lv;
  lv.v1 = 25197;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Ul_Vp_Vp(lv);
}

int recv_Us(struct Us lv){
  if (lv.v1 != 8994) return 1;
  return 0;
}
struct Us ret_Us(){
  struct Us lv;
  lv.v1 = 8994;
  return lv;
}
int zig_recv_Us(struct Us);
int send_Us(){
  struct Us lv;
  lv.v1 = 8994;
  return zig_recv_Us(lv);
}

int recv_Us_C(struct Us_C lv){
  if (lv.v1 != 16644) return 1;
  if (lv.v2 != 68) return 2;
  return 0;
}
struct Us_C ret_Us_C(){
  struct Us_C lv;
  lv.v1 = 16644;
  lv.v2 = 68;
  return lv;
}
int zig_recv_Us_C(struct Us_C);
int send_Us_C(){
  struct Us_C lv;
  lv.v1 = 16644;
  lv.v2 = 68;
  return zig_recv_Us_C(lv);
}

int recv_Us_C_C(struct Us_C_C lv){
  if (lv.v1 != 2512) return 1;
  if (lv.v2 != 99) return 2;
  if (lv.v3 != 60) return 3;
  return 0;
}
struct Us_C_C ret_Us_C_C(){
  struct Us_C_C lv;
  lv.v1 = 2512;
  lv.v2 = 99;
  lv.v3 = 60;
  return lv;
}
int zig_recv_Us_C_C(struct Us_C_C);
int send_Us_C_C(){
  struct Us_C_C lv;
  lv.v1 = 2512;
  lv.v2 = 99;
  lv.v3 = 60;
  return zig_recv_Us_C_C(lv);
}

int recv_Us_C_D(struct Us_C_D lv){
  if (lv.v1 != 21959) return 1;
  if (lv.v2 != 16) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Us_C_D ret_Us_C_D(){
  struct Us_C_D lv;
  lv.v1 = 21959;
  lv.v2 = 16;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Us_C_D(struct Us_C_D);
int send_Us_C_D(){
  struct Us_C_D lv;
  lv.v1 = 21959;
  lv.v2 = 16;
  lv.v3 = 4.5;
  return zig_recv_Us_C_D(lv);
}

int recv_Us_C_F(struct Us_C_F lv){
  if (lv.v1 != 2567) return 1;
  if (lv.v2 != 34) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Us_C_F ret_Us_C_F(){
  struct Us_C_F lv;
  lv.v1 = 2567;
  lv.v2 = 34;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Us_C_F(struct Us_C_F);
int send_Us_C_F(){
  struct Us_C_F lv;
  lv.v1 = 2567;
  lv.v2 = 34;
  lv.v3 = 4.5;
  return zig_recv_Us_C_F(lv);
}

int recv_Us_C_I(struct Us_C_I lv){
  if (lv.v1 != 15462) return 1;
  if (lv.v2 != 25) return 2;
  if (lv.v3 != 9740) return 3;
  return 0;
}
struct Us_C_I ret_Us_C_I(){
  struct Us_C_I lv;
  lv.v1 = 15462;
  lv.v2 = 25;
  lv.v3 = 9740;
  return lv;
}
int zig_recv_Us_C_I(struct Us_C_I);
int send_Us_C_I(){
  struct Us_C_I lv;
  lv.v1 = 15462;
  lv.v2 = 25;
  lv.v3 = 9740;
  return zig_recv_Us_C_I(lv);
}

int recv_Us_C_Ip(struct Us_C_Ip lv){
  if (lv.v1 != 21044) return 1;
  if (lv.v2 != 85) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_C_Ip ret_Us_C_Ip(){
  struct Us_C_Ip lv;
  lv.v1 = 21044;
  lv.v2 = 85;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_C_Ip(struct Us_C_Ip);
int send_Us_C_Ip(){
  struct Us_C_Ip lv;
  lv.v1 = 21044;
  lv.v2 = 85;
  lv.v3 = 0;
  return zig_recv_Us_C_Ip(lv);
}

int recv_Us_C_L(struct Us_C_L lv){
  if (lv.v1 != 15192) return 1;
  if (lv.v2 != 103) return 2;
  if (lv.v3 != 19299) return 3;
  return 0;
}
struct Us_C_L ret_Us_C_L(){
  struct Us_C_L lv;
  lv.v1 = 15192;
  lv.v2 = 103;
  lv.v3 = 19299;
  return lv;
}
int zig_recv_Us_C_L(struct Us_C_L);
int send_Us_C_L(){
  struct Us_C_L lv;
  lv.v1 = 15192;
  lv.v2 = 103;
  lv.v3 = 19299;
  return zig_recv_Us_C_L(lv);
}

int recv_Us_C_S(struct Us_C_S lv){
  if (lv.v1 != 23346) return 1;
  if (lv.v2 != 103) return 2;
  if (lv.v3 != 22139) return 3;
  return 0;
}
struct Us_C_S ret_Us_C_S(){
  struct Us_C_S lv;
  lv.v1 = 23346;
  lv.v2 = 103;
  lv.v3 = 22139;
  return lv;
}
int zig_recv_Us_C_S(struct Us_C_S);
int send_Us_C_S(){
  struct Us_C_S lv;
  lv.v1 = 23346;
  lv.v2 = 103;
  lv.v3 = 22139;
  return zig_recv_Us_C_S(lv);
}

int recv_Us_C_Uc(struct Us_C_Uc lv){
  if (lv.v1 != 3179) return 1;
  if (lv.v2 != 4) return 2;
  if (lv.v3 != 73) return 3;
  return 0;
}
struct Us_C_Uc ret_Us_C_Uc(){
  struct Us_C_Uc lv;
  lv.v1 = 3179;
  lv.v2 = 4;
  lv.v3 = 73;
  return lv;
}
int zig_recv_Us_C_Uc(struct Us_C_Uc);
int send_Us_C_Uc(){
  struct Us_C_Uc lv;
  lv.v1 = 3179;
  lv.v2 = 4;
  lv.v3 = 73;
  return zig_recv_Us_C_Uc(lv);
}

int recv_Us_C_Ui(struct Us_C_Ui lv){
  if (lv.v1 != 19277) return 1;
  if (lv.v2 != 98) return 2;
  if (lv.v3 != 28789) return 3;
  return 0;
}
struct Us_C_Ui ret_Us_C_Ui(){
  struct Us_C_Ui lv;
  lv.v1 = 19277;
  lv.v2 = 98;
  lv.v3 = 28789;
  return lv;
}
int zig_recv_Us_C_Ui(struct Us_C_Ui);
int send_Us_C_Ui(){
  struct Us_C_Ui lv;
  lv.v1 = 19277;
  lv.v2 = 98;
  lv.v3 = 28789;
  return zig_recv_Us_C_Ui(lv);
}

int recv_Us_C_Ul(struct Us_C_Ul lv){
  if (lv.v1 != 24703) return 1;
  if (lv.v2 != 76) return 2;
  if (lv.v3 != 15589) return 3;
  return 0;
}
struct Us_C_Ul ret_Us_C_Ul(){
  struct Us_C_Ul lv;
  lv.v1 = 24703;
  lv.v2 = 76;
  lv.v3 = 15589;
  return lv;
}
int zig_recv_Us_C_Ul(struct Us_C_Ul);
int send_Us_C_Ul(){
  struct Us_C_Ul lv;
  lv.v1 = 24703;
  lv.v2 = 76;
  lv.v3 = 15589;
  return zig_recv_Us_C_Ul(lv);
}

int recv_Us_C_Us(struct Us_C_Us lv){
  if (lv.v1 != 12247) return 1;
  if (lv.v2 != 66) return 2;
  if (lv.v3 != 10022) return 3;
  return 0;
}
struct Us_C_Us ret_Us_C_Us(){
  struct Us_C_Us lv;
  lv.v1 = 12247;
  lv.v2 = 66;
  lv.v3 = 10022;
  return lv;
}
int zig_recv_Us_C_Us(struct Us_C_Us);
int send_Us_C_Us(){
  struct Us_C_Us lv;
  lv.v1 = 12247;
  lv.v2 = 66;
  lv.v3 = 10022;
  return zig_recv_Us_C_Us(lv);
}

int recv_Us_C_Vp(struct Us_C_Vp lv){
  if (lv.v1 != 5932) return 1;
  if (lv.v2 != 39) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_C_Vp ret_Us_C_Vp(){
  struct Us_C_Vp lv;
  lv.v1 = 5932;
  lv.v2 = 39;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_C_Vp(struct Us_C_Vp);
int send_Us_C_Vp(){
  struct Us_C_Vp lv;
  lv.v1 = 5932;
  lv.v2 = 39;
  lv.v3 = 0;
  return zig_recv_Us_C_Vp(lv);
}

int recv_Us_D(struct Us_D lv){
  if (lv.v1 != 18580) return 1;
  if (lv.v2 != -2.125) return 2;
  return 0;
}
struct Us_D ret_Us_D(){
  struct Us_D lv;
  lv.v1 = 18580;
  lv.v2 = -2.125;
  return lv;
}
int zig_recv_Us_D(struct Us_D);
int send_Us_D(){
  struct Us_D lv;
  lv.v1 = 18580;
  lv.v2 = -2.125;
  return zig_recv_Us_D(lv);
}

int recv_Us_D_C(struct Us_D_C lv){
  if (lv.v1 != 11240) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 72) return 3;
  return 0;
}
struct Us_D_C ret_Us_D_C(){
  struct Us_D_C lv;
  lv.v1 = 11240;
  lv.v2 = 4.5;
  lv.v3 = 72;
  return lv;
}
int zig_recv_Us_D_C(struct Us_D_C);
int send_Us_D_C(){
  struct Us_D_C lv;
  lv.v1 = 11240;
  lv.v2 = 4.5;
  lv.v3 = 72;
  return zig_recv_Us_D_C(lv);
}

int recv_Us_D_D(struct Us_D_D lv){
  if (lv.v1 != 11524) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Us_D_D ret_Us_D_D(){
  struct Us_D_D lv;
  lv.v1 = 11524;
  lv.v2 = 1.0;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Us_D_D(struct Us_D_D);
int send_Us_D_D(){
  struct Us_D_D lv;
  lv.v1 = 11524;
  lv.v2 = 1.0;
  lv.v3 = 0.875;
  return zig_recv_Us_D_D(lv);
}

int recv_Us_D_F(struct Us_D_F lv){
  if (lv.v1 != 6365) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Us_D_F ret_Us_D_F(){
  struct Us_D_F lv;
  lv.v1 = 6365;
  lv.v2 = 7.0;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Us_D_F(struct Us_D_F);
int send_Us_D_F(){
  struct Us_D_F lv;
  lv.v1 = 6365;
  lv.v2 = 7.0;
  lv.v3 = 7.0;
  return zig_recv_Us_D_F(lv);
}

int recv_Us_D_I(struct Us_D_I lv){
  if (lv.v1 != 29281) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 22252) return 3;
  return 0;
}
struct Us_D_I ret_Us_D_I(){
  struct Us_D_I lv;
  lv.v1 = 29281;
  lv.v2 = -2.125;
  lv.v3 = 22252;
  return lv;
}
int zig_recv_Us_D_I(struct Us_D_I);
int send_Us_D_I(){
  struct Us_D_I lv;
  lv.v1 = 29281;
  lv.v2 = -2.125;
  lv.v3 = 22252;
  return zig_recv_Us_D_I(lv);
}

int recv_Us_D_Ip(struct Us_D_Ip lv){
  if (lv.v1 != 23514) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_D_Ip ret_Us_D_Ip(){
  struct Us_D_Ip lv;
  lv.v1 = 23514;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_D_Ip(struct Us_D_Ip);
int send_Us_D_Ip(){
  struct Us_D_Ip lv;
  lv.v1 = 23514;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return zig_recv_Us_D_Ip(lv);
}

int recv_Us_D_L(struct Us_D_L lv){
  if (lv.v1 != 19759) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 511) return 3;
  return 0;
}
struct Us_D_L ret_Us_D_L(){
  struct Us_D_L lv;
  lv.v1 = 19759;
  lv.v2 = -0.25;
  lv.v3 = 511;
  return lv;
}
int zig_recv_Us_D_L(struct Us_D_L);
int send_Us_D_L(){
  struct Us_D_L lv;
  lv.v1 = 19759;
  lv.v2 = -0.25;
  lv.v3 = 511;
  return zig_recv_Us_D_L(lv);
}

int recv_Us_D_S(struct Us_D_S lv){
  if (lv.v1 != 9683) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 7749) return 3;
  return 0;
}
struct Us_D_S ret_Us_D_S(){
  struct Us_D_S lv;
  lv.v1 = 9683;
  lv.v2 = -0.25;
  lv.v3 = 7749;
  return lv;
}
int zig_recv_Us_D_S(struct Us_D_S);
int send_Us_D_S(){
  struct Us_D_S lv;
  lv.v1 = 9683;
  lv.v2 = -0.25;
  lv.v3 = 7749;
  return zig_recv_Us_D_S(lv);
}

int recv_Us_D_Uc(struct Us_D_Uc lv){
  if (lv.v1 != 29022) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 20) return 3;
  return 0;
}
struct Us_D_Uc ret_Us_D_Uc(){
  struct Us_D_Uc lv;
  lv.v1 = 29022;
  lv.v2 = -2.125;
  lv.v3 = 20;
  return lv;
}
int zig_recv_Us_D_Uc(struct Us_D_Uc);
int send_Us_D_Uc(){
  struct Us_D_Uc lv;
  lv.v1 = 29022;
  lv.v2 = -2.125;
  lv.v3 = 20;
  return zig_recv_Us_D_Uc(lv);
}

int recv_Us_D_Ui(struct Us_D_Ui lv){
  if (lv.v1 != 32591) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 30269) return 3;
  return 0;
}
struct Us_D_Ui ret_Us_D_Ui(){
  struct Us_D_Ui lv;
  lv.v1 = 32591;
  lv.v2 = 0.5;
  lv.v3 = 30269;
  return lv;
}
int zig_recv_Us_D_Ui(struct Us_D_Ui);
int send_Us_D_Ui(){
  struct Us_D_Ui lv;
  lv.v1 = 32591;
  lv.v2 = 0.5;
  lv.v3 = 30269;
  return zig_recv_Us_D_Ui(lv);
}

int recv_Us_D_Ul(struct Us_D_Ul lv){
  if (lv.v1 != 4318) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 28610) return 3;
  return 0;
}
struct Us_D_Ul ret_Us_D_Ul(){
  struct Us_D_Ul lv;
  lv.v1 = 4318;
  lv.v2 = 7.0;
  lv.v3 = 28610;
  return lv;
}
int zig_recv_Us_D_Ul(struct Us_D_Ul);
int send_Us_D_Ul(){
  struct Us_D_Ul lv;
  lv.v1 = 4318;
  lv.v2 = 7.0;
  lv.v3 = 28610;
  return zig_recv_Us_D_Ul(lv);
}

int recv_Us_D_Us(struct Us_D_Us lv){
  if (lv.v1 != 30198) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 22443) return 3;
  return 0;
}
struct Us_D_Us ret_Us_D_Us(){
  struct Us_D_Us lv;
  lv.v1 = 30198;
  lv.v2 = 4.5;
  lv.v3 = 22443;
  return lv;
}
int zig_recv_Us_D_Us(struct Us_D_Us);
int send_Us_D_Us(){
  struct Us_D_Us lv;
  lv.v1 = 30198;
  lv.v2 = 4.5;
  lv.v3 = 22443;
  return zig_recv_Us_D_Us(lv);
}

int recv_Us_D_Vp(struct Us_D_Vp lv){
  if (lv.v1 != 1904) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_D_Vp ret_Us_D_Vp(){
  struct Us_D_Vp lv;
  lv.v1 = 1904;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_D_Vp(struct Us_D_Vp);
int send_Us_D_Vp(){
  struct Us_D_Vp lv;
  lv.v1 = 1904;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return zig_recv_Us_D_Vp(lv);
}

int recv_Us_F(struct Us_F lv){
  if (lv.v1 != 26991) return 1;
  if (lv.v2 != 0.5) return 2;
  return 0;
}
struct Us_F ret_Us_F(){
  struct Us_F lv;
  lv.v1 = 26991;
  lv.v2 = 0.5;
  return lv;
}
int zig_recv_Us_F(struct Us_F);
int send_Us_F(){
  struct Us_F lv;
  lv.v1 = 26991;
  lv.v2 = 0.5;
  return zig_recv_Us_F(lv);
}

int recv_Us_F_C(struct Us_F_C lv){
  if (lv.v1 != 27059) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 87) return 3;
  return 0;
}
struct Us_F_C ret_Us_F_C(){
  struct Us_F_C lv;
  lv.v1 = 27059;
  lv.v2 = 7.0;
  lv.v3 = 87;
  return lv;
}
int zig_recv_Us_F_C(struct Us_F_C);
int send_Us_F_C(){
  struct Us_F_C lv;
  lv.v1 = 27059;
  lv.v2 = 7.0;
  lv.v3 = 87;
  return zig_recv_Us_F_C(lv);
}

int recv_Us_F_D(struct Us_F_D lv){
  if (lv.v1 != 18964) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Us_F_D ret_Us_F_D(){
  struct Us_F_D lv;
  lv.v1 = 18964;
  lv.v2 = 7.0;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Us_F_D(struct Us_F_D);
int send_Us_F_D(){
  struct Us_F_D lv;
  lv.v1 = 18964;
  lv.v2 = 7.0;
  lv.v3 = 1.0;
  return zig_recv_Us_F_D(lv);
}

int recv_Us_F_F(struct Us_F_F lv){
  if (lv.v1 != 18550) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Us_F_F ret_Us_F_F(){
  struct Us_F_F lv;
  lv.v1 = 18550;
  lv.v2 = 7.0;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Us_F_F(struct Us_F_F);
int send_Us_F_F(){
  struct Us_F_F lv;
  lv.v1 = 18550;
  lv.v2 = 7.0;
  lv.v3 = 1.0;
  return zig_recv_Us_F_F(lv);
}

int recv_Us_F_I(struct Us_F_I lv){
  if (lv.v1 != 22098) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 5743) return 3;
  return 0;
}
struct Us_F_I ret_Us_F_I(){
  struct Us_F_I lv;
  lv.v1 = 22098;
  lv.v2 = -2.125;
  lv.v3 = 5743;
  return lv;
}
int zig_recv_Us_F_I(struct Us_F_I);
int send_Us_F_I(){
  struct Us_F_I lv;
  lv.v1 = 22098;
  lv.v2 = -2.125;
  lv.v3 = 5743;
  return zig_recv_Us_F_I(lv);
}

int recv_Us_F_Ip(struct Us_F_Ip lv){
  if (lv.v1 != 5299) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_F_Ip ret_Us_F_Ip(){
  struct Us_F_Ip lv;
  lv.v1 = 5299;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_F_Ip(struct Us_F_Ip);
int send_Us_F_Ip(){
  struct Us_F_Ip lv;
  lv.v1 = 5299;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return zig_recv_Us_F_Ip(lv);
}

int recv_Us_F_L(struct Us_F_L lv){
  if (lv.v1 != 27576) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 12334) return 3;
  return 0;
}
struct Us_F_L ret_Us_F_L(){
  struct Us_F_L lv;
  lv.v1 = 27576;
  lv.v2 = 0.875;
  lv.v3 = 12334;
  return lv;
}
int zig_recv_Us_F_L(struct Us_F_L);
int send_Us_F_L(){
  struct Us_F_L lv;
  lv.v1 = 27576;
  lv.v2 = 0.875;
  lv.v3 = 12334;
  return zig_recv_Us_F_L(lv);
}

int recv_Us_F_S(struct Us_F_S lv){
  if (lv.v1 != 1064) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 21363) return 3;
  return 0;
}
struct Us_F_S ret_Us_F_S(){
  struct Us_F_S lv;
  lv.v1 = 1064;
  lv.v2 = -2.125;
  lv.v3 = 21363;
  return lv;
}
int zig_recv_Us_F_S(struct Us_F_S);
int send_Us_F_S(){
  struct Us_F_S lv;
  lv.v1 = 1064;
  lv.v2 = -2.125;
  lv.v3 = 21363;
  return zig_recv_Us_F_S(lv);
}

int recv_Us_F_Uc(struct Us_F_Uc lv){
  if (lv.v1 != 7692) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 76) return 3;
  return 0;
}
struct Us_F_Uc ret_Us_F_Uc(){
  struct Us_F_Uc lv;
  lv.v1 = 7692;
  lv.v2 = 4.5;
  lv.v3 = 76;
  return lv;
}
int zig_recv_Us_F_Uc(struct Us_F_Uc);
int send_Us_F_Uc(){
  struct Us_F_Uc lv;
  lv.v1 = 7692;
  lv.v2 = 4.5;
  lv.v3 = 76;
  return zig_recv_Us_F_Uc(lv);
}

int recv_Us_F_Ui(struct Us_F_Ui lv){
  if (lv.v1 != 26868) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 26494) return 3;
  return 0;
}
struct Us_F_Ui ret_Us_F_Ui(){
  struct Us_F_Ui lv;
  lv.v1 = 26868;
  lv.v2 = -0.25;
  lv.v3 = 26494;
  return lv;
}
int zig_recv_Us_F_Ui(struct Us_F_Ui);
int send_Us_F_Ui(){
  struct Us_F_Ui lv;
  lv.v1 = 26868;
  lv.v2 = -0.25;
  lv.v3 = 26494;
  return zig_recv_Us_F_Ui(lv);
}

int recv_Us_F_Ul(struct Us_F_Ul lv){
  if (lv.v1 != 19238) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 27012) return 3;
  return 0;
}
struct Us_F_Ul ret_Us_F_Ul(){
  struct Us_F_Ul lv;
  lv.v1 = 19238;
  lv.v2 = 7.0;
  lv.v3 = 27012;
  return lv;
}
int zig_recv_Us_F_Ul(struct Us_F_Ul);
int send_Us_F_Ul(){
  struct Us_F_Ul lv;
  lv.v1 = 19238;
  lv.v2 = 7.0;
  lv.v3 = 27012;
  return zig_recv_Us_F_Ul(lv);
}

int recv_Us_F_Us(struct Us_F_Us lv){
  if (lv.v1 != 24992) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 6846) return 3;
  return 0;
}
struct Us_F_Us ret_Us_F_Us(){
  struct Us_F_Us lv;
  lv.v1 = 24992;
  lv.v2 = 7.0;
  lv.v3 = 6846;
  return lv;
}
int zig_recv_Us_F_Us(struct Us_F_Us);
int send_Us_F_Us(){
  struct Us_F_Us lv;
  lv.v1 = 24992;
  lv.v2 = 7.0;
  lv.v3 = 6846;
  return zig_recv_Us_F_Us(lv);
}

int recv_Us_F_Vp(struct Us_F_Vp lv){
  if (lv.v1 != 17908) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_F_Vp ret_Us_F_Vp(){
  struct Us_F_Vp lv;
  lv.v1 = 17908;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_F_Vp(struct Us_F_Vp);
int send_Us_F_Vp(){
  struct Us_F_Vp lv;
  lv.v1 = 17908;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return zig_recv_Us_F_Vp(lv);
}

int recv_Us_I(struct Us_I lv){
  if (lv.v1 != 30600) return 1;
  if (lv.v2 != 1719) return 2;
  return 0;
}
struct Us_I ret_Us_I(){
  struct Us_I lv;
  lv.v1 = 30600;
  lv.v2 = 1719;
  return lv;
}
int zig_recv_Us_I(struct Us_I);
int send_Us_I(){
  struct Us_I lv;
  lv.v1 = 30600;
  lv.v2 = 1719;
  return zig_recv_Us_I(lv);
}

int recv_Us_I_C(struct Us_I_C lv){
  if (lv.v1 != 13661) return 1;
  if (lv.v2 != 5376) return 2;
  if (lv.v3 != 111) return 3;
  return 0;
}
struct Us_I_C ret_Us_I_C(){
  struct Us_I_C lv;
  lv.v1 = 13661;
  lv.v2 = 5376;
  lv.v3 = 111;
  return lv;
}
int zig_recv_Us_I_C(struct Us_I_C);
int send_Us_I_C(){
  struct Us_I_C lv;
  lv.v1 = 13661;
  lv.v2 = 5376;
  lv.v3 = 111;
  return zig_recv_Us_I_C(lv);
}

int recv_Us_I_D(struct Us_I_D lv){
  if (lv.v1 != 8903) return 1;
  if (lv.v2 != 26042) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Us_I_D ret_Us_I_D(){
  struct Us_I_D lv;
  lv.v1 = 8903;
  lv.v2 = 26042;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Us_I_D(struct Us_I_D);
int send_Us_I_D(){
  struct Us_I_D lv;
  lv.v1 = 8903;
  lv.v2 = 26042;
  lv.v3 = -2.125;
  return zig_recv_Us_I_D(lv);
}

int recv_Us_I_F(struct Us_I_F lv){
  if (lv.v1 != 20027) return 1;
  if (lv.v2 != 12274) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Us_I_F ret_Us_I_F(){
  struct Us_I_F lv;
  lv.v1 = 20027;
  lv.v2 = 12274;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Us_I_F(struct Us_I_F);
int send_Us_I_F(){
  struct Us_I_F lv;
  lv.v1 = 20027;
  lv.v2 = 12274;
  lv.v3 = 0.875;
  return zig_recv_Us_I_F(lv);
}

int recv_Us_I_I(struct Us_I_I lv){
  if (lv.v1 != 16614) return 1;
  if (lv.v2 != 20431) return 2;
  if (lv.v3 != 2793) return 3;
  return 0;
}
struct Us_I_I ret_Us_I_I(){
  struct Us_I_I lv;
  lv.v1 = 16614;
  lv.v2 = 20431;
  lv.v3 = 2793;
  return lv;
}
int zig_recv_Us_I_I(struct Us_I_I);
int send_Us_I_I(){
  struct Us_I_I lv;
  lv.v1 = 16614;
  lv.v2 = 20431;
  lv.v3 = 2793;
  return zig_recv_Us_I_I(lv);
}

int recv_Us_I_Ip(struct Us_I_Ip lv){
  if (lv.v1 != 28542) return 1;
  if (lv.v2 != 11599) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_I_Ip ret_Us_I_Ip(){
  struct Us_I_Ip lv;
  lv.v1 = 28542;
  lv.v2 = 11599;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_I_Ip(struct Us_I_Ip);
int send_Us_I_Ip(){
  struct Us_I_Ip lv;
  lv.v1 = 28542;
  lv.v2 = 11599;
  lv.v3 = 0;
  return zig_recv_Us_I_Ip(lv);
}

int recv_Us_I_L(struct Us_I_L lv){
  if (lv.v1 != 10367) return 1;
  if (lv.v2 != 14385) return 2;
  if (lv.v3 != 15994) return 3;
  return 0;
}
struct Us_I_L ret_Us_I_L(){
  struct Us_I_L lv;
  lv.v1 = 10367;
  lv.v2 = 14385;
  lv.v3 = 15994;
  return lv;
}
int zig_recv_Us_I_L(struct Us_I_L);
int send_Us_I_L(){
  struct Us_I_L lv;
  lv.v1 = 10367;
  lv.v2 = 14385;
  lv.v3 = 15994;
  return zig_recv_Us_I_L(lv);
}

int recv_Us_I_S(struct Us_I_S lv){
  if (lv.v1 != 11579) return 1;
  if (lv.v2 != 6917) return 2;
  if (lv.v3 != 7261) return 3;
  return 0;
}
struct Us_I_S ret_Us_I_S(){
  struct Us_I_S lv;
  lv.v1 = 11579;
  lv.v2 = 6917;
  lv.v3 = 7261;
  return lv;
}
int zig_recv_Us_I_S(struct Us_I_S);
int send_Us_I_S(){
  struct Us_I_S lv;
  lv.v1 = 11579;
  lv.v2 = 6917;
  lv.v3 = 7261;
  return zig_recv_Us_I_S(lv);
}

int recv_Us_I_Uc(struct Us_I_Uc lv){
  if (lv.v1 != 26644) return 1;
  if (lv.v2 != 29019) return 2;
  if (lv.v3 != 82) return 3;
  return 0;
}
struct Us_I_Uc ret_Us_I_Uc(){
  struct Us_I_Uc lv;
  lv.v1 = 26644;
  lv.v2 = 29019;
  lv.v3 = 82;
  return lv;
}
int zig_recv_Us_I_Uc(struct Us_I_Uc);
int send_Us_I_Uc(){
  struct Us_I_Uc lv;
  lv.v1 = 26644;
  lv.v2 = 29019;
  lv.v3 = 82;
  return zig_recv_Us_I_Uc(lv);
}

int recv_Us_I_Ui(struct Us_I_Ui lv){
  if (lv.v1 != 19361) return 1;
  if (lv.v2 != 28469) return 2;
  if (lv.v3 != 7208) return 3;
  return 0;
}
struct Us_I_Ui ret_Us_I_Ui(){
  struct Us_I_Ui lv;
  lv.v1 = 19361;
  lv.v2 = 28469;
  lv.v3 = 7208;
  return lv;
}
int zig_recv_Us_I_Ui(struct Us_I_Ui);
int send_Us_I_Ui(){
  struct Us_I_Ui lv;
  lv.v1 = 19361;
  lv.v2 = 28469;
  lv.v3 = 7208;
  return zig_recv_Us_I_Ui(lv);
}

int recv_Us_I_Ul(struct Us_I_Ul lv){
  if (lv.v1 != 28076) return 1;
  if (lv.v2 != 27483) return 2;
  if (lv.v3 != 30933) return 3;
  return 0;
}
struct Us_I_Ul ret_Us_I_Ul(){
  struct Us_I_Ul lv;
  lv.v1 = 28076;
  lv.v2 = 27483;
  lv.v3 = 30933;
  return lv;
}
int zig_recv_Us_I_Ul(struct Us_I_Ul);
int send_Us_I_Ul(){
  struct Us_I_Ul lv;
  lv.v1 = 28076;
  lv.v2 = 27483;
  lv.v3 = 30933;
  return zig_recv_Us_I_Ul(lv);
}

int recv_Us_I_Us(struct Us_I_Us lv){
  if (lv.v1 != 15877) return 1;
  if (lv.v2 != 5090) return 2;
  if (lv.v3 != 1580) return 3;
  return 0;
}
struct Us_I_Us ret_Us_I_Us(){
  struct Us_I_Us lv;
  lv.v1 = 15877;
  lv.v2 = 5090;
  lv.v3 = 1580;
  return lv;
}
int zig_recv_Us_I_Us(struct Us_I_Us);
int send_Us_I_Us(){
  struct Us_I_Us lv;
  lv.v1 = 15877;
  lv.v2 = 5090;
  lv.v3 = 1580;
  return zig_recv_Us_I_Us(lv);
}

int recv_Us_I_Vp(struct Us_I_Vp lv){
  if (lv.v1 != 1804) return 1;
  if (lv.v2 != 13795) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_I_Vp ret_Us_I_Vp(){
  struct Us_I_Vp lv;
  lv.v1 = 1804;
  lv.v2 = 13795;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_I_Vp(struct Us_I_Vp);
int send_Us_I_Vp(){
  struct Us_I_Vp lv;
  lv.v1 = 1804;
  lv.v2 = 13795;
  lv.v3 = 0;
  return zig_recv_Us_I_Vp(lv);
}

int recv_Us_Ip(struct Us_Ip lv){
  if (lv.v1 != 28828) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct Us_Ip ret_Us_Ip(){
  struct Us_Ip lv;
  lv.v1 = 28828;
  lv.v2 = 0;
  return lv;
}
int zig_recv_Us_Ip(struct Us_Ip);
int send_Us_Ip(){
  struct Us_Ip lv;
  lv.v1 = 28828;
  lv.v2 = 0;
  return zig_recv_Us_Ip(lv);
}

int recv_Us_Ip_C(struct Us_Ip_C lv){
  if (lv.v1 != 11358) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 95) return 3;
  return 0;
}
struct Us_Ip_C ret_Us_Ip_C(){
  struct Us_Ip_C lv;
  lv.v1 = 11358;
  lv.v2 = 0;
  lv.v3 = 95;
  return lv;
}
int zig_recv_Us_Ip_C(struct Us_Ip_C);
int send_Us_Ip_C(){
  struct Us_Ip_C lv;
  lv.v1 = 11358;
  lv.v2 = 0;
  lv.v3 = 95;
  return zig_recv_Us_Ip_C(lv);
}

int recv_Us_Ip_D(struct Us_Ip_D lv){
  if (lv.v1 != 32334) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Us_Ip_D ret_Us_Ip_D(){
  struct Us_Ip_D lv;
  lv.v1 = 32334;
  lv.v2 = 0;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Us_Ip_D(struct Us_Ip_D);
int send_Us_Ip_D(){
  struct Us_Ip_D lv;
  lv.v1 = 32334;
  lv.v2 = 0;
  lv.v3 = 4.5;
  return zig_recv_Us_Ip_D(lv);
}

int recv_Us_Ip_F(struct Us_Ip_F lv){
  if (lv.v1 != 19476) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Us_Ip_F ret_Us_Ip_F(){
  struct Us_Ip_F lv;
  lv.v1 = 19476;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Us_Ip_F(struct Us_Ip_F);
int send_Us_Ip_F(){
  struct Us_Ip_F lv;
  lv.v1 = 19476;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return zig_recv_Us_Ip_F(lv);
}

int recv_Us_Ip_I(struct Us_Ip_I lv){
  if (lv.v1 != 14363) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 12277) return 3;
  return 0;
}
struct Us_Ip_I ret_Us_Ip_I(){
  struct Us_Ip_I lv;
  lv.v1 = 14363;
  lv.v2 = 0;
  lv.v3 = 12277;
  return lv;
}
int zig_recv_Us_Ip_I(struct Us_Ip_I);
int send_Us_Ip_I(){
  struct Us_Ip_I lv;
  lv.v1 = 14363;
  lv.v2 = 0;
  lv.v3 = 12277;
  return zig_recv_Us_Ip_I(lv);
}

int recv_Us_Ip_Ip(struct Us_Ip_Ip lv){
  if (lv.v1 != 27094) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Ip_Ip ret_Us_Ip_Ip(){
  struct Us_Ip_Ip lv;
  lv.v1 = 27094;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Ip_Ip(struct Us_Ip_Ip);
int send_Us_Ip_Ip(){
  struct Us_Ip_Ip lv;
  lv.v1 = 27094;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Us_Ip_Ip(lv);
}

int recv_Us_Ip_L(struct Us_Ip_L lv){
  if (lv.v1 != 7648) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 28696) return 3;
  return 0;
}
struct Us_Ip_L ret_Us_Ip_L(){
  struct Us_Ip_L lv;
  lv.v1 = 7648;
  lv.v2 = 0;
  lv.v3 = 28696;
  return lv;
}
int zig_recv_Us_Ip_L(struct Us_Ip_L);
int send_Us_Ip_L(){
  struct Us_Ip_L lv;
  lv.v1 = 7648;
  lv.v2 = 0;
  lv.v3 = 28696;
  return zig_recv_Us_Ip_L(lv);
}

int recv_Us_Ip_S(struct Us_Ip_S lv){
  if (lv.v1 != 15817) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7907) return 3;
  return 0;
}
struct Us_Ip_S ret_Us_Ip_S(){
  struct Us_Ip_S lv;
  lv.v1 = 15817;
  lv.v2 = 0;
  lv.v3 = 7907;
  return lv;
}
int zig_recv_Us_Ip_S(struct Us_Ip_S);
int send_Us_Ip_S(){
  struct Us_Ip_S lv;
  lv.v1 = 15817;
  lv.v2 = 0;
  lv.v3 = 7907;
  return zig_recv_Us_Ip_S(lv);
}

int recv_Us_Ip_Uc(struct Us_Ip_Uc lv){
  if (lv.v1 != 3074) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 5) return 3;
  return 0;
}
struct Us_Ip_Uc ret_Us_Ip_Uc(){
  struct Us_Ip_Uc lv;
  lv.v1 = 3074;
  lv.v2 = 0;
  lv.v3 = 5;
  return lv;
}
int zig_recv_Us_Ip_Uc(struct Us_Ip_Uc);
int send_Us_Ip_Uc(){
  struct Us_Ip_Uc lv;
  lv.v1 = 3074;
  lv.v2 = 0;
  lv.v3 = 5;
  return zig_recv_Us_Ip_Uc(lv);
}

int recv_Us_Ip_Ui(struct Us_Ip_Ui lv){
  if (lv.v1 != 1622) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7385) return 3;
  return 0;
}
struct Us_Ip_Ui ret_Us_Ip_Ui(){
  struct Us_Ip_Ui lv;
  lv.v1 = 1622;
  lv.v2 = 0;
  lv.v3 = 7385;
  return lv;
}
int zig_recv_Us_Ip_Ui(struct Us_Ip_Ui);
int send_Us_Ip_Ui(){
  struct Us_Ip_Ui lv;
  lv.v1 = 1622;
  lv.v2 = 0;
  lv.v3 = 7385;
  return zig_recv_Us_Ip_Ui(lv);
}

int recv_Us_Ip_Ul(struct Us_Ip_Ul lv){
  if (lv.v1 != 4903) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 12817) return 3;
  return 0;
}
struct Us_Ip_Ul ret_Us_Ip_Ul(){
  struct Us_Ip_Ul lv;
  lv.v1 = 4903;
  lv.v2 = 0;
  lv.v3 = 12817;
  return lv;
}
int zig_recv_Us_Ip_Ul(struct Us_Ip_Ul);
int send_Us_Ip_Ul(){
  struct Us_Ip_Ul lv;
  lv.v1 = 4903;
  lv.v2 = 0;
  lv.v3 = 12817;
  return zig_recv_Us_Ip_Ul(lv);
}

int recv_Us_Ip_Us(struct Us_Ip_Us lv){
  if (lv.v1 != 13416) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 15710) return 3;
  return 0;
}
struct Us_Ip_Us ret_Us_Ip_Us(){
  struct Us_Ip_Us lv;
  lv.v1 = 13416;
  lv.v2 = 0;
  lv.v3 = 15710;
  return lv;
}
int zig_recv_Us_Ip_Us(struct Us_Ip_Us);
int send_Us_Ip_Us(){
  struct Us_Ip_Us lv;
  lv.v1 = 13416;
  lv.v2 = 0;
  lv.v3 = 15710;
  return zig_recv_Us_Ip_Us(lv);
}

int recv_Us_Ip_Vp(struct Us_Ip_Vp lv){
  if (lv.v1 != 24100) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Ip_Vp ret_Us_Ip_Vp(){
  struct Us_Ip_Vp lv;
  lv.v1 = 24100;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Ip_Vp(struct Us_Ip_Vp);
int send_Us_Ip_Vp(){
  struct Us_Ip_Vp lv;
  lv.v1 = 24100;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Us_Ip_Vp(lv);
}

int recv_Us_L(struct Us_L lv){
  if (lv.v1 != 24913) return 1;
  if (lv.v2 != 9960) return 2;
  return 0;
}
struct Us_L ret_Us_L(){
  struct Us_L lv;
  lv.v1 = 24913;
  lv.v2 = 9960;
  return lv;
}
int zig_recv_Us_L(struct Us_L);
int send_Us_L(){
  struct Us_L lv;
  lv.v1 = 24913;
  lv.v2 = 9960;
  return zig_recv_Us_L(lv);
}

int recv_Us_L_C(struct Us_L_C lv){
  if (lv.v1 != 10232) return 1;
  if (lv.v2 != 9213) return 2;
  if (lv.v3 != 44) return 3;
  return 0;
}
struct Us_L_C ret_Us_L_C(){
  struct Us_L_C lv;
  lv.v1 = 10232;
  lv.v2 = 9213;
  lv.v3 = 44;
  return lv;
}
int zig_recv_Us_L_C(struct Us_L_C);
int send_Us_L_C(){
  struct Us_L_C lv;
  lv.v1 = 10232;
  lv.v2 = 9213;
  lv.v3 = 44;
  return zig_recv_Us_L_C(lv);
}

int recv_Us_L_D(struct Us_L_D lv){
  if (lv.v1 != 23248) return 1;
  if (lv.v2 != 22734) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Us_L_D ret_Us_L_D(){
  struct Us_L_D lv;
  lv.v1 = 23248;
  lv.v2 = 22734;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Us_L_D(struct Us_L_D);
int send_Us_L_D(){
  struct Us_L_D lv;
  lv.v1 = 23248;
  lv.v2 = 22734;
  lv.v3 = -0.25;
  return zig_recv_Us_L_D(lv);
}

int recv_Us_L_F(struct Us_L_F lv){
  if (lv.v1 != 24117) return 1;
  if (lv.v2 != 9201) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Us_L_F ret_Us_L_F(){
  struct Us_L_F lv;
  lv.v1 = 24117;
  lv.v2 = 9201;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Us_L_F(struct Us_L_F);
int send_Us_L_F(){
  struct Us_L_F lv;
  lv.v1 = 24117;
  lv.v2 = 9201;
  lv.v3 = -0.25;
  return zig_recv_Us_L_F(lv);
}

int recv_Us_L_I(struct Us_L_I lv){
  if (lv.v1 != 3504) return 1;
  if (lv.v2 != 11336) return 2;
  if (lv.v3 != 24471) return 3;
  return 0;
}
struct Us_L_I ret_Us_L_I(){
  struct Us_L_I lv;
  lv.v1 = 3504;
  lv.v2 = 11336;
  lv.v3 = 24471;
  return lv;
}
int zig_recv_Us_L_I(struct Us_L_I);
int send_Us_L_I(){
  struct Us_L_I lv;
  lv.v1 = 3504;
  lv.v2 = 11336;
  lv.v3 = 24471;
  return zig_recv_Us_L_I(lv);
}

int recv_Us_L_Ip(struct Us_L_Ip lv){
  if (lv.v1 != 21042) return 1;
  if (lv.v2 != 20614) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_L_Ip ret_Us_L_Ip(){
  struct Us_L_Ip lv;
  lv.v1 = 21042;
  lv.v2 = 20614;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_L_Ip(struct Us_L_Ip);
int send_Us_L_Ip(){
  struct Us_L_Ip lv;
  lv.v1 = 21042;
  lv.v2 = 20614;
  lv.v3 = 0;
  return zig_recv_Us_L_Ip(lv);
}

int recv_Us_L_L(struct Us_L_L lv){
  if (lv.v1 != 1123) return 1;
  if (lv.v2 != 30030) return 2;
  if (lv.v3 != 14538) return 3;
  return 0;
}
struct Us_L_L ret_Us_L_L(){
  struct Us_L_L lv;
  lv.v1 = 1123;
  lv.v2 = 30030;
  lv.v3 = 14538;
  return lv;
}
int zig_recv_Us_L_L(struct Us_L_L);
int send_Us_L_L(){
  struct Us_L_L lv;
  lv.v1 = 1123;
  lv.v2 = 30030;
  lv.v3 = 14538;
  return zig_recv_Us_L_L(lv);
}

int recv_Us_L_S(struct Us_L_S lv){
  if (lv.v1 != 22132) return 1;
  if (lv.v2 != 25058) return 2;
  if (lv.v3 != 25622) return 3;
  return 0;
}
struct Us_L_S ret_Us_L_S(){
  struct Us_L_S lv;
  lv.v1 = 22132;
  lv.v2 = 25058;
  lv.v3 = 25622;
  return lv;
}
int zig_recv_Us_L_S(struct Us_L_S);
int send_Us_L_S(){
  struct Us_L_S lv;
  lv.v1 = 22132;
  lv.v2 = 25058;
  lv.v3 = 25622;
  return zig_recv_Us_L_S(lv);
}

int recv_Us_L_Uc(struct Us_L_Uc lv){
  if (lv.v1 != 18839) return 1;
  if (lv.v2 != 17575) return 2;
  if (lv.v3 != 11) return 3;
  return 0;
}
struct Us_L_Uc ret_Us_L_Uc(){
  struct Us_L_Uc lv;
  lv.v1 = 18839;
  lv.v2 = 17575;
  lv.v3 = 11;
  return lv;
}
int zig_recv_Us_L_Uc(struct Us_L_Uc);
int send_Us_L_Uc(){
  struct Us_L_Uc lv;
  lv.v1 = 18839;
  lv.v2 = 17575;
  lv.v3 = 11;
  return zig_recv_Us_L_Uc(lv);
}

int recv_Us_L_Ui(struct Us_L_Ui lv){
  if (lv.v1 != 13426) return 1;
  if (lv.v2 != 7778) return 2;
  if (lv.v3 != 20282) return 3;
  return 0;
}
struct Us_L_Ui ret_Us_L_Ui(){
  struct Us_L_Ui lv;
  lv.v1 = 13426;
  lv.v2 = 7778;
  lv.v3 = 20282;
  return lv;
}
int zig_recv_Us_L_Ui(struct Us_L_Ui);
int send_Us_L_Ui(){
  struct Us_L_Ui lv;
  lv.v1 = 13426;
  lv.v2 = 7778;
  lv.v3 = 20282;
  return zig_recv_Us_L_Ui(lv);
}

int recv_Us_L_Ul(struct Us_L_Ul lv){
  if (lv.v1 != 8840) return 1;
  if (lv.v2 != 7536) return 2;
  if (lv.v3 != 11028) return 3;
  return 0;
}
struct Us_L_Ul ret_Us_L_Ul(){
  struct Us_L_Ul lv;
  lv.v1 = 8840;
  lv.v2 = 7536;
  lv.v3 = 11028;
  return lv;
}
int zig_recv_Us_L_Ul(struct Us_L_Ul);
int send_Us_L_Ul(){
  struct Us_L_Ul lv;
  lv.v1 = 8840;
  lv.v2 = 7536;
  lv.v3 = 11028;
  return zig_recv_Us_L_Ul(lv);
}

int recv_Us_L_Us(struct Us_L_Us lv){
  if (lv.v1 != 24633) return 1;
  if (lv.v2 != 16410) return 2;
  if (lv.v3 != 9161) return 3;
  return 0;
}
struct Us_L_Us ret_Us_L_Us(){
  struct Us_L_Us lv;
  lv.v1 = 24633;
  lv.v2 = 16410;
  lv.v3 = 9161;
  return lv;
}
int zig_recv_Us_L_Us(struct Us_L_Us);
int send_Us_L_Us(){
  struct Us_L_Us lv;
  lv.v1 = 24633;
  lv.v2 = 16410;
  lv.v3 = 9161;
  return zig_recv_Us_L_Us(lv);
}

int recv_Us_L_Vp(struct Us_L_Vp lv){
  if (lv.v1 != 21267) return 1;
  if (lv.v2 != 5661) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_L_Vp ret_Us_L_Vp(){
  struct Us_L_Vp lv;
  lv.v1 = 21267;
  lv.v2 = 5661;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_L_Vp(struct Us_L_Vp);
int send_Us_L_Vp(){
  struct Us_L_Vp lv;
  lv.v1 = 21267;
  lv.v2 = 5661;
  lv.v3 = 0;
  return zig_recv_Us_L_Vp(lv);
}

int recv_Us_S(struct Us_S lv){
  if (lv.v1 != 24727) return 1;
  if (lv.v2 != 29166) return 2;
  return 0;
}
struct Us_S ret_Us_S(){
  struct Us_S lv;
  lv.v1 = 24727;
  lv.v2 = 29166;
  return lv;
}
int zig_recv_Us_S(struct Us_S);
int send_Us_S(){
  struct Us_S lv;
  lv.v1 = 24727;
  lv.v2 = 29166;
  return zig_recv_Us_S(lv);
}

int recv_Us_S_C(struct Us_S_C lv){
  if (lv.v1 != 10311) return 1;
  if (lv.v2 != 30465) return 2;
  if (lv.v3 != 91) return 3;
  return 0;
}
struct Us_S_C ret_Us_S_C(){
  struct Us_S_C lv;
  lv.v1 = 10311;
  lv.v2 = 30465;
  lv.v3 = 91;
  return lv;
}
int zig_recv_Us_S_C(struct Us_S_C);
int send_Us_S_C(){
  struct Us_S_C lv;
  lv.v1 = 10311;
  lv.v2 = 30465;
  lv.v3 = 91;
  return zig_recv_Us_S_C(lv);
}

int recv_Us_S_D(struct Us_S_D lv){
  if (lv.v1 != 23117) return 1;
  if (lv.v2 != 19592) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Us_S_D ret_Us_S_D(){
  struct Us_S_D lv;
  lv.v1 = 23117;
  lv.v2 = 19592;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Us_S_D(struct Us_S_D);
int send_Us_S_D(){
  struct Us_S_D lv;
  lv.v1 = 23117;
  lv.v2 = 19592;
  lv.v3 = 0.875;
  return zig_recv_Us_S_D(lv);
}

int recv_Us_S_F(struct Us_S_F lv){
  if (lv.v1 != 15422) return 1;
  if (lv.v2 != 892) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Us_S_F ret_Us_S_F(){
  struct Us_S_F lv;
  lv.v1 = 15422;
  lv.v2 = 892;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Us_S_F(struct Us_S_F);
int send_Us_S_F(){
  struct Us_S_F lv;
  lv.v1 = 15422;
  lv.v2 = 892;
  lv.v3 = -0.25;
  return zig_recv_Us_S_F(lv);
}

int recv_Us_S_I(struct Us_S_I lv){
  if (lv.v1 != 23242) return 1;
  if (lv.v2 != 26561) return 2;
  if (lv.v3 != 3363) return 3;
  return 0;
}
struct Us_S_I ret_Us_S_I(){
  struct Us_S_I lv;
  lv.v1 = 23242;
  lv.v2 = 26561;
  lv.v3 = 3363;
  return lv;
}
int zig_recv_Us_S_I(struct Us_S_I);
int send_Us_S_I(){
  struct Us_S_I lv;
  lv.v1 = 23242;
  lv.v2 = 26561;
  lv.v3 = 3363;
  return zig_recv_Us_S_I(lv);
}

int recv_Us_S_Ip(struct Us_S_Ip lv){
  if (lv.v1 != 20985) return 1;
  if (lv.v2 != 3457) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_S_Ip ret_Us_S_Ip(){
  struct Us_S_Ip lv;
  lv.v1 = 20985;
  lv.v2 = 3457;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_S_Ip(struct Us_S_Ip);
int send_Us_S_Ip(){
  struct Us_S_Ip lv;
  lv.v1 = 20985;
  lv.v2 = 3457;
  lv.v3 = 0;
  return zig_recv_Us_S_Ip(lv);
}

int recv_Us_S_L(struct Us_S_L lv){
  if (lv.v1 != 18517) return 1;
  if (lv.v2 != 5247) return 2;
  if (lv.v3 != 15555) return 3;
  return 0;
}
struct Us_S_L ret_Us_S_L(){
  struct Us_S_L lv;
  lv.v1 = 18517;
  lv.v2 = 5247;
  lv.v3 = 15555;
  return lv;
}
int zig_recv_Us_S_L(struct Us_S_L);
int send_Us_S_L(){
  struct Us_S_L lv;
  lv.v1 = 18517;
  lv.v2 = 5247;
  lv.v3 = 15555;
  return zig_recv_Us_S_L(lv);
}

int recv_Us_S_S(struct Us_S_S lv){
  if (lv.v1 != 11754) return 1;
  if (lv.v2 != 6358) return 2;
  if (lv.v3 != 12603) return 3;
  return 0;
}
struct Us_S_S ret_Us_S_S(){
  struct Us_S_S lv;
  lv.v1 = 11754;
  lv.v2 = 6358;
  lv.v3 = 12603;
  return lv;
}
int zig_recv_Us_S_S(struct Us_S_S);
int send_Us_S_S(){
  struct Us_S_S lv;
  lv.v1 = 11754;
  lv.v2 = 6358;
  lv.v3 = 12603;
  return zig_recv_Us_S_S(lv);
}

int recv_Us_S_Uc(struct Us_S_Uc lv){
  if (lv.v1 != 21651) return 1;
  if (lv.v2 != 302) return 2;
  if (lv.v3 != 58) return 3;
  return 0;
}
struct Us_S_Uc ret_Us_S_Uc(){
  struct Us_S_Uc lv;
  lv.v1 = 21651;
  lv.v2 = 302;
  lv.v3 = 58;
  return lv;
}
int zig_recv_Us_S_Uc(struct Us_S_Uc);
int send_Us_S_Uc(){
  struct Us_S_Uc lv;
  lv.v1 = 21651;
  lv.v2 = 302;
  lv.v3 = 58;
  return zig_recv_Us_S_Uc(lv);
}

int recv_Us_S_Ui(struct Us_S_Ui lv){
  if (lv.v1 != 7044) return 1;
  if (lv.v2 != 24986) return 2;
  if (lv.v3 != 27224) return 3;
  return 0;
}
struct Us_S_Ui ret_Us_S_Ui(){
  struct Us_S_Ui lv;
  lv.v1 = 7044;
  lv.v2 = 24986;
  lv.v3 = 27224;
  return lv;
}
int zig_recv_Us_S_Ui(struct Us_S_Ui);
int send_Us_S_Ui(){
  struct Us_S_Ui lv;
  lv.v1 = 7044;
  lv.v2 = 24986;
  lv.v3 = 27224;
  return zig_recv_Us_S_Ui(lv);
}

int recv_Us_S_Ul(struct Us_S_Ul lv){
  if (lv.v1 != 26369) return 1;
  if (lv.v2 != 29978) return 2;
  if (lv.v3 != 8606) return 3;
  return 0;
}
struct Us_S_Ul ret_Us_S_Ul(){
  struct Us_S_Ul lv;
  lv.v1 = 26369;
  lv.v2 = 29978;
  lv.v3 = 8606;
  return lv;
}
int zig_recv_Us_S_Ul(struct Us_S_Ul);
int send_Us_S_Ul(){
  struct Us_S_Ul lv;
  lv.v1 = 26369;
  lv.v2 = 29978;
  lv.v3 = 8606;
  return zig_recv_Us_S_Ul(lv);
}

int recv_Us_S_Us(struct Us_S_Us lv){
  if (lv.v1 != 3928) return 1;
  if (lv.v2 != 25056) return 2;
  if (lv.v3 != 13273) return 3;
  return 0;
}
struct Us_S_Us ret_Us_S_Us(){
  struct Us_S_Us lv;
  lv.v1 = 3928;
  lv.v2 = 25056;
  lv.v3 = 13273;
  return lv;
}
int zig_recv_Us_S_Us(struct Us_S_Us);
int send_Us_S_Us(){
  struct Us_S_Us lv;
  lv.v1 = 3928;
  lv.v2 = 25056;
  lv.v3 = 13273;
  return zig_recv_Us_S_Us(lv);
}

int recv_Us_S_Vp(struct Us_S_Vp lv){
  if (lv.v1 != 10313) return 1;
  if (lv.v2 != 21627) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_S_Vp ret_Us_S_Vp(){
  struct Us_S_Vp lv;
  lv.v1 = 10313;
  lv.v2 = 21627;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_S_Vp(struct Us_S_Vp);
int send_Us_S_Vp(){
  struct Us_S_Vp lv;
  lv.v1 = 10313;
  lv.v2 = 21627;
  lv.v3 = 0;
  return zig_recv_Us_S_Vp(lv);
}

int recv_Us_Uc(struct Us_Uc lv){
  if (lv.v1 != 10039) return 1;
  if (lv.v2 != 48) return 2;
  return 0;
}
struct Us_Uc ret_Us_Uc(){
  struct Us_Uc lv;
  lv.v1 = 10039;
  lv.v2 = 48;
  return lv;
}
int zig_recv_Us_Uc(struct Us_Uc);
int send_Us_Uc(){
  struct Us_Uc lv;
  lv.v1 = 10039;
  lv.v2 = 48;
  return zig_recv_Us_Uc(lv);
}

int recv_Us_Uc_C(struct Us_Uc_C lv){
  if (lv.v1 != 1784) return 1;
  if (lv.v2 != 122) return 2;
  if (lv.v3 != 9) return 3;
  return 0;
}
struct Us_Uc_C ret_Us_Uc_C(){
  struct Us_Uc_C lv;
  lv.v1 = 1784;
  lv.v2 = 122;
  lv.v3 = 9;
  return lv;
}
int zig_recv_Us_Uc_C(struct Us_Uc_C);
int send_Us_Uc_C(){
  struct Us_Uc_C lv;
  lv.v1 = 1784;
  lv.v2 = 122;
  lv.v3 = 9;
  return zig_recv_Us_Uc_C(lv);
}

int recv_Us_Uc_D(struct Us_Uc_D lv){
  if (lv.v1 != 21665) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Us_Uc_D ret_Us_Uc_D(){
  struct Us_Uc_D lv;
  lv.v1 = 21665;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Us_Uc_D(struct Us_Uc_D);
int send_Us_Uc_D(){
  struct Us_Uc_D lv;
  lv.v1 = 21665;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return zig_recv_Us_Uc_D(lv);
}

int recv_Us_Uc_F(struct Us_Uc_F lv){
  if (lv.v1 != 30089) return 1;
  if (lv.v2 != 102) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Us_Uc_F ret_Us_Uc_F(){
  struct Us_Uc_F lv;
  lv.v1 = 30089;
  lv.v2 = 102;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Us_Uc_F(struct Us_Uc_F);
int send_Us_Uc_F(){
  struct Us_Uc_F lv;
  lv.v1 = 30089;
  lv.v2 = 102;
  lv.v3 = 1.0;
  return zig_recv_Us_Uc_F(lv);
}

int recv_Us_Uc_I(struct Us_Uc_I lv){
  if (lv.v1 != 32018) return 1;
  if (lv.v2 != 76) return 2;
  if (lv.v3 != 22674) return 3;
  return 0;
}
struct Us_Uc_I ret_Us_Uc_I(){
  struct Us_Uc_I lv;
  lv.v1 = 32018;
  lv.v2 = 76;
  lv.v3 = 22674;
  return lv;
}
int zig_recv_Us_Uc_I(struct Us_Uc_I);
int send_Us_Uc_I(){
  struct Us_Uc_I lv;
  lv.v1 = 32018;
  lv.v2 = 76;
  lv.v3 = 22674;
  return zig_recv_Us_Uc_I(lv);
}

int recv_Us_Uc_Ip(struct Us_Uc_Ip lv){
  if (lv.v1 != 5672) return 1;
  if (lv.v2 != 26) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Uc_Ip ret_Us_Uc_Ip(){
  struct Us_Uc_Ip lv;
  lv.v1 = 5672;
  lv.v2 = 26;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Uc_Ip(struct Us_Uc_Ip);
int send_Us_Uc_Ip(){
  struct Us_Uc_Ip lv;
  lv.v1 = 5672;
  lv.v2 = 26;
  lv.v3 = 0;
  return zig_recv_Us_Uc_Ip(lv);
}

int recv_Us_Uc_L(struct Us_Uc_L lv){
  if (lv.v1 != 13171) return 1;
  if (lv.v2 != 48) return 2;
  if (lv.v3 != 11522) return 3;
  return 0;
}
struct Us_Uc_L ret_Us_Uc_L(){
  struct Us_Uc_L lv;
  lv.v1 = 13171;
  lv.v2 = 48;
  lv.v3 = 11522;
  return lv;
}
int zig_recv_Us_Uc_L(struct Us_Uc_L);
int send_Us_Uc_L(){
  struct Us_Uc_L lv;
  lv.v1 = 13171;
  lv.v2 = 48;
  lv.v3 = 11522;
  return zig_recv_Us_Uc_L(lv);
}

int recv_Us_Uc_S(struct Us_Uc_S lv){
  if (lv.v1 != 13689) return 1;
  if (lv.v2 != 78) return 2;
  if (lv.v3 != 3457) return 3;
  return 0;
}
struct Us_Uc_S ret_Us_Uc_S(){
  struct Us_Uc_S lv;
  lv.v1 = 13689;
  lv.v2 = 78;
  lv.v3 = 3457;
  return lv;
}
int zig_recv_Us_Uc_S(struct Us_Uc_S);
int send_Us_Uc_S(){
  struct Us_Uc_S lv;
  lv.v1 = 13689;
  lv.v2 = 78;
  lv.v3 = 3457;
  return zig_recv_Us_Uc_S(lv);
}

int recv_Us_Uc_Uc(struct Us_Uc_Uc lv){
  if (lv.v1 != 32576) return 1;
  if (lv.v2 != 114) return 2;
  if (lv.v3 != 6) return 3;
  return 0;
}
struct Us_Uc_Uc ret_Us_Uc_Uc(){
  struct Us_Uc_Uc lv;
  lv.v1 = 32576;
  lv.v2 = 114;
  lv.v3 = 6;
  return lv;
}
int zig_recv_Us_Uc_Uc(struct Us_Uc_Uc);
int send_Us_Uc_Uc(){
  struct Us_Uc_Uc lv;
  lv.v1 = 32576;
  lv.v2 = 114;
  lv.v3 = 6;
  return zig_recv_Us_Uc_Uc(lv);
}

int recv_Us_Uc_Ui(struct Us_Uc_Ui lv){
  if (lv.v1 != 8544) return 1;
  if (lv.v2 != 77) return 2;
  if (lv.v3 != 31566) return 3;
  return 0;
}
struct Us_Uc_Ui ret_Us_Uc_Ui(){
  struct Us_Uc_Ui lv;
  lv.v1 = 8544;
  lv.v2 = 77;
  lv.v3 = 31566;
  return lv;
}
int zig_recv_Us_Uc_Ui(struct Us_Uc_Ui);
int send_Us_Uc_Ui(){
  struct Us_Uc_Ui lv;
  lv.v1 = 8544;
  lv.v2 = 77;
  lv.v3 = 31566;
  return zig_recv_Us_Uc_Ui(lv);
}

int recv_Us_Uc_Ul(struct Us_Uc_Ul lv){
  if (lv.v1 != 30788) return 1;
  if (lv.v2 != 29) return 2;
  if (lv.v3 != 22665) return 3;
  return 0;
}
struct Us_Uc_Ul ret_Us_Uc_Ul(){
  struct Us_Uc_Ul lv;
  lv.v1 = 30788;
  lv.v2 = 29;
  lv.v3 = 22665;
  return lv;
}
int zig_recv_Us_Uc_Ul(struct Us_Uc_Ul);
int send_Us_Uc_Ul(){
  struct Us_Uc_Ul lv;
  lv.v1 = 30788;
  lv.v2 = 29;
  lv.v3 = 22665;
  return zig_recv_Us_Uc_Ul(lv);
}

int recv_Us_Uc_Us(struct Us_Uc_Us lv){
  if (lv.v1 != 28438) return 1;
  if (lv.v2 != 88) return 2;
  if (lv.v3 != 26894) return 3;
  return 0;
}
struct Us_Uc_Us ret_Us_Uc_Us(){
  struct Us_Uc_Us lv;
  lv.v1 = 28438;
  lv.v2 = 88;
  lv.v3 = 26894;
  return lv;
}
int zig_recv_Us_Uc_Us(struct Us_Uc_Us);
int send_Us_Uc_Us(){
  struct Us_Uc_Us lv;
  lv.v1 = 28438;
  lv.v2 = 88;
  lv.v3 = 26894;
  return zig_recv_Us_Uc_Us(lv);
}

int recv_Us_Uc_Vp(struct Us_Uc_Vp lv){
  if (lv.v1 != 19528) return 1;
  if (lv.v2 != 87) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Uc_Vp ret_Us_Uc_Vp(){
  struct Us_Uc_Vp lv;
  lv.v1 = 19528;
  lv.v2 = 87;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Uc_Vp(struct Us_Uc_Vp);
int send_Us_Uc_Vp(){
  struct Us_Uc_Vp lv;
  lv.v1 = 19528;
  lv.v2 = 87;
  lv.v3 = 0;
  return zig_recv_Us_Uc_Vp(lv);
}

int recv_Us_Ui(struct Us_Ui lv){
  if (lv.v1 != 22821) return 1;
  if (lv.v2 != 31463) return 2;
  return 0;
}
struct Us_Ui ret_Us_Ui(){
  struct Us_Ui lv;
  lv.v1 = 22821;
  lv.v2 = 31463;
  return lv;
}
int zig_recv_Us_Ui(struct Us_Ui);
int send_Us_Ui(){
  struct Us_Ui lv;
  lv.v1 = 22821;
  lv.v2 = 31463;
  return zig_recv_Us_Ui(lv);
}

int recv_Us_Ui_C(struct Us_Ui_C lv){
  if (lv.v1 != 32462) return 1;
  if (lv.v2 != 8790) return 2;
  if (lv.v3 != 63) return 3;
  return 0;
}
struct Us_Ui_C ret_Us_Ui_C(){
  struct Us_Ui_C lv;
  lv.v1 = 32462;
  lv.v2 = 8790;
  lv.v3 = 63;
  return lv;
}
int zig_recv_Us_Ui_C(struct Us_Ui_C);
int send_Us_Ui_C(){
  struct Us_Ui_C lv;
  lv.v1 = 32462;
  lv.v2 = 8790;
  lv.v3 = 63;
  return zig_recv_Us_Ui_C(lv);
}

int recv_Us_Ui_D(struct Us_Ui_D lv){
  if (lv.v1 != 12024) return 1;
  if (lv.v2 != 26928) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Us_Ui_D ret_Us_Ui_D(){
  struct Us_Ui_D lv;
  lv.v1 = 12024;
  lv.v2 = 26928;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Us_Ui_D(struct Us_Ui_D);
int send_Us_Ui_D(){
  struct Us_Ui_D lv;
  lv.v1 = 12024;
  lv.v2 = 26928;
  lv.v3 = -0.25;
  return zig_recv_Us_Ui_D(lv);
}

int recv_Us_Ui_F(struct Us_Ui_F lv){
  if (lv.v1 != 18149) return 1;
  if (lv.v2 != 22194) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Us_Ui_F ret_Us_Ui_F(){
  struct Us_Ui_F lv;
  lv.v1 = 18149;
  lv.v2 = 22194;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Us_Ui_F(struct Us_Ui_F);
int send_Us_Ui_F(){
  struct Us_Ui_F lv;
  lv.v1 = 18149;
  lv.v2 = 22194;
  lv.v3 = -2.125;
  return zig_recv_Us_Ui_F(lv);
}

int recv_Us_Ui_I(struct Us_Ui_I lv){
  if (lv.v1 != 20073) return 1;
  if (lv.v2 != 9610) return 2;
  if (lv.v3 != 6587) return 3;
  return 0;
}
struct Us_Ui_I ret_Us_Ui_I(){
  struct Us_Ui_I lv;
  lv.v1 = 20073;
  lv.v2 = 9610;
  lv.v3 = 6587;
  return lv;
}
int zig_recv_Us_Ui_I(struct Us_Ui_I);
int send_Us_Ui_I(){
  struct Us_Ui_I lv;
  lv.v1 = 20073;
  lv.v2 = 9610;
  lv.v3 = 6587;
  return zig_recv_Us_Ui_I(lv);
}

int recv_Us_Ui_Ip(struct Us_Ui_Ip lv){
  if (lv.v1 != 5912) return 1;
  if (lv.v2 != 5511) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Ui_Ip ret_Us_Ui_Ip(){
  struct Us_Ui_Ip lv;
  lv.v1 = 5912;
  lv.v2 = 5511;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Ui_Ip(struct Us_Ui_Ip);
int send_Us_Ui_Ip(){
  struct Us_Ui_Ip lv;
  lv.v1 = 5912;
  lv.v2 = 5511;
  lv.v3 = 0;
  return zig_recv_Us_Ui_Ip(lv);
}

int recv_Us_Ui_L(struct Us_Ui_L lv){
  if (lv.v1 != 3295) return 1;
  if (lv.v2 != 3241) return 2;
  if (lv.v3 != 591) return 3;
  return 0;
}
struct Us_Ui_L ret_Us_Ui_L(){
  struct Us_Ui_L lv;
  lv.v1 = 3295;
  lv.v2 = 3241;
  lv.v3 = 591;
  return lv;
}
int zig_recv_Us_Ui_L(struct Us_Ui_L);
int send_Us_Ui_L(){
  struct Us_Ui_L lv;
  lv.v1 = 3295;
  lv.v2 = 3241;
  lv.v3 = 591;
  return zig_recv_Us_Ui_L(lv);
}

int recv_Us_Ui_S(struct Us_Ui_S lv){
  if (lv.v1 != 190) return 1;
  if (lv.v2 != 10192) return 2;
  if (lv.v3 != 3934) return 3;
  return 0;
}
struct Us_Ui_S ret_Us_Ui_S(){
  struct Us_Ui_S lv;
  lv.v1 = 190;
  lv.v2 = 10192;
  lv.v3 = 3934;
  return lv;
}
int zig_recv_Us_Ui_S(struct Us_Ui_S);
int send_Us_Ui_S(){
  struct Us_Ui_S lv;
  lv.v1 = 190;
  lv.v2 = 10192;
  lv.v3 = 3934;
  return zig_recv_Us_Ui_S(lv);
}

int recv_Us_Ui_Uc(struct Us_Ui_Uc lv){
  if (lv.v1 != 27974) return 1;
  if (lv.v2 != 12257) return 2;
  if (lv.v3 != 100) return 3;
  return 0;
}
struct Us_Ui_Uc ret_Us_Ui_Uc(){
  struct Us_Ui_Uc lv;
  lv.v1 = 27974;
  lv.v2 = 12257;
  lv.v3 = 100;
  return lv;
}
int zig_recv_Us_Ui_Uc(struct Us_Ui_Uc);
int send_Us_Ui_Uc(){
  struct Us_Ui_Uc lv;
  lv.v1 = 27974;
  lv.v2 = 12257;
  lv.v3 = 100;
  return zig_recv_Us_Ui_Uc(lv);
}

int recv_Us_Ui_Ui(struct Us_Ui_Ui lv){
  if (lv.v1 != 3493) return 1;
  if (lv.v2 != 11093) return 2;
  if (lv.v3 != 28185) return 3;
  return 0;
}
struct Us_Ui_Ui ret_Us_Ui_Ui(){
  struct Us_Ui_Ui lv;
  lv.v1 = 3493;
  lv.v2 = 11093;
  lv.v3 = 28185;
  return lv;
}
int zig_recv_Us_Ui_Ui(struct Us_Ui_Ui);
int send_Us_Ui_Ui(){
  struct Us_Ui_Ui lv;
  lv.v1 = 3493;
  lv.v2 = 11093;
  lv.v3 = 28185;
  return zig_recv_Us_Ui_Ui(lv);
}

int recv_Us_Ui_Ul(struct Us_Ui_Ul lv){
  if (lv.v1 != 20393) return 1;
  if (lv.v2 != 2406) return 2;
  if (lv.v3 != 17503) return 3;
  return 0;
}
struct Us_Ui_Ul ret_Us_Ui_Ul(){
  struct Us_Ui_Ul lv;
  lv.v1 = 20393;
  lv.v2 = 2406;
  lv.v3 = 17503;
  return lv;
}
int zig_recv_Us_Ui_Ul(struct Us_Ui_Ul);
int send_Us_Ui_Ul(){
  struct Us_Ui_Ul lv;
  lv.v1 = 20393;
  lv.v2 = 2406;
  lv.v3 = 17503;
  return zig_recv_Us_Ui_Ul(lv);
}

int recv_Us_Ui_Us(struct Us_Ui_Us lv){
  if (lv.v1 != 14950) return 1;
  if (lv.v2 != 28030) return 2;
  if (lv.v3 != 26040) return 3;
  return 0;
}
struct Us_Ui_Us ret_Us_Ui_Us(){
  struct Us_Ui_Us lv;
  lv.v1 = 14950;
  lv.v2 = 28030;
  lv.v3 = 26040;
  return lv;
}
int zig_recv_Us_Ui_Us(struct Us_Ui_Us);
int send_Us_Ui_Us(){
  struct Us_Ui_Us lv;
  lv.v1 = 14950;
  lv.v2 = 28030;
  lv.v3 = 26040;
  return zig_recv_Us_Ui_Us(lv);
}

int recv_Us_Ui_Vp(struct Us_Ui_Vp lv){
  if (lv.v1 != 13015) return 1;
  if (lv.v2 != 7991) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Ui_Vp ret_Us_Ui_Vp(){
  struct Us_Ui_Vp lv;
  lv.v1 = 13015;
  lv.v2 = 7991;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Ui_Vp(struct Us_Ui_Vp);
int send_Us_Ui_Vp(){
  struct Us_Ui_Vp lv;
  lv.v1 = 13015;
  lv.v2 = 7991;
  lv.v3 = 0;
  return zig_recv_Us_Ui_Vp(lv);
}

int recv_Us_Ul(struct Us_Ul lv){
  if (lv.v1 != 16401) return 1;
  if (lv.v2 != 4479) return 2;
  return 0;
}
struct Us_Ul ret_Us_Ul(){
  struct Us_Ul lv;
  lv.v1 = 16401;
  lv.v2 = 4479;
  return lv;
}
int zig_recv_Us_Ul(struct Us_Ul);
int send_Us_Ul(){
  struct Us_Ul lv;
  lv.v1 = 16401;
  lv.v2 = 4479;
  return zig_recv_Us_Ul(lv);
}

int recv_Us_Ul_C(struct Us_Ul_C lv){
  if (lv.v1 != 26329) return 1;
  if (lv.v2 != 27940) return 2;
  if (lv.v3 != 45) return 3;
  return 0;
}
struct Us_Ul_C ret_Us_Ul_C(){
  struct Us_Ul_C lv;
  lv.v1 = 26329;
  lv.v2 = 27940;
  lv.v3 = 45;
  return lv;
}
int zig_recv_Us_Ul_C(struct Us_Ul_C);
int send_Us_Ul_C(){
  struct Us_Ul_C lv;
  lv.v1 = 26329;
  lv.v2 = 27940;
  lv.v3 = 45;
  return zig_recv_Us_Ul_C(lv);
}

int recv_Us_Ul_D(struct Us_Ul_D lv){
  if (lv.v1 != 17927) return 1;
  if (lv.v2 != 8476) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Us_Ul_D ret_Us_Ul_D(){
  struct Us_Ul_D lv;
  lv.v1 = 17927;
  lv.v2 = 8476;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Us_Ul_D(struct Us_Ul_D);
int send_Us_Ul_D(){
  struct Us_Ul_D lv;
  lv.v1 = 17927;
  lv.v2 = 8476;
  lv.v3 = 0.875;
  return zig_recv_Us_Ul_D(lv);
}

int recv_Us_Ul_F(struct Us_Ul_F lv){
  if (lv.v1 != 20120) return 1;
  if (lv.v2 != 14441) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Us_Ul_F ret_Us_Ul_F(){
  struct Us_Ul_F lv;
  lv.v1 = 20120;
  lv.v2 = 14441;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Us_Ul_F(struct Us_Ul_F);
int send_Us_Ul_F(){
  struct Us_Ul_F lv;
  lv.v1 = 20120;
  lv.v2 = 14441;
  lv.v3 = -0.25;
  return zig_recv_Us_Ul_F(lv);
}

int recv_Us_Ul_I(struct Us_Ul_I lv){
  if (lv.v1 != 8727) return 1;
  if (lv.v2 != 14648) return 2;
  if (lv.v3 != 27507) return 3;
  return 0;
}
struct Us_Ul_I ret_Us_Ul_I(){
  struct Us_Ul_I lv;
  lv.v1 = 8727;
  lv.v2 = 14648;
  lv.v3 = 27507;
  return lv;
}
int zig_recv_Us_Ul_I(struct Us_Ul_I);
int send_Us_Ul_I(){
  struct Us_Ul_I lv;
  lv.v1 = 8727;
  lv.v2 = 14648;
  lv.v3 = 27507;
  return zig_recv_Us_Ul_I(lv);
}

int recv_Us_Ul_Ip(struct Us_Ul_Ip lv){
  if (lv.v1 != 24923) return 1;
  if (lv.v2 != 3980) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Ul_Ip ret_Us_Ul_Ip(){
  struct Us_Ul_Ip lv;
  lv.v1 = 24923;
  lv.v2 = 3980;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Ul_Ip(struct Us_Ul_Ip);
int send_Us_Ul_Ip(){
  struct Us_Ul_Ip lv;
  lv.v1 = 24923;
  lv.v2 = 3980;
  lv.v3 = 0;
  return zig_recv_Us_Ul_Ip(lv);
}

int recv_Us_Ul_L(struct Us_Ul_L lv){
  if (lv.v1 != 14072) return 1;
  if (lv.v2 != 26693) return 2;
  if (lv.v3 != 704) return 3;
  return 0;
}
struct Us_Ul_L ret_Us_Ul_L(){
  struct Us_Ul_L lv;
  lv.v1 = 14072;
  lv.v2 = 26693;
  lv.v3 = 704;
  return lv;
}
int zig_recv_Us_Ul_L(struct Us_Ul_L);
int send_Us_Ul_L(){
  struct Us_Ul_L lv;
  lv.v1 = 14072;
  lv.v2 = 26693;
  lv.v3 = 704;
  return zig_recv_Us_Ul_L(lv);
}

int recv_Us_Ul_S(struct Us_Ul_S lv){
  if (lv.v1 != 29540) return 1;
  if (lv.v2 != 2724) return 2;
  if (lv.v3 != 23630) return 3;
  return 0;
}
struct Us_Ul_S ret_Us_Ul_S(){
  struct Us_Ul_S lv;
  lv.v1 = 29540;
  lv.v2 = 2724;
  lv.v3 = 23630;
  return lv;
}
int zig_recv_Us_Ul_S(struct Us_Ul_S);
int send_Us_Ul_S(){
  struct Us_Ul_S lv;
  lv.v1 = 29540;
  lv.v2 = 2724;
  lv.v3 = 23630;
  return zig_recv_Us_Ul_S(lv);
}

int recv_Us_Ul_Uc(struct Us_Ul_Uc lv){
  if (lv.v1 != 2843) return 1;
  if (lv.v2 != 9302) return 2;
  if (lv.v3 != 9) return 3;
  return 0;
}
struct Us_Ul_Uc ret_Us_Ul_Uc(){
  struct Us_Ul_Uc lv;
  lv.v1 = 2843;
  lv.v2 = 9302;
  lv.v3 = 9;
  return lv;
}
int zig_recv_Us_Ul_Uc(struct Us_Ul_Uc);
int send_Us_Ul_Uc(){
  struct Us_Ul_Uc lv;
  lv.v1 = 2843;
  lv.v2 = 9302;
  lv.v3 = 9;
  return zig_recv_Us_Ul_Uc(lv);
}

int recv_Us_Ul_Ui(struct Us_Ul_Ui lv){
  if (lv.v1 != 1936) return 1;
  if (lv.v2 != 23128) return 2;
  if (lv.v3 != 25427) return 3;
  return 0;
}
struct Us_Ul_Ui ret_Us_Ul_Ui(){
  struct Us_Ul_Ui lv;
  lv.v1 = 1936;
  lv.v2 = 23128;
  lv.v3 = 25427;
  return lv;
}
int zig_recv_Us_Ul_Ui(struct Us_Ul_Ui);
int send_Us_Ul_Ui(){
  struct Us_Ul_Ui lv;
  lv.v1 = 1936;
  lv.v2 = 23128;
  lv.v3 = 25427;
  return zig_recv_Us_Ul_Ui(lv);
}

int recv_Us_Ul_Ul(struct Us_Ul_Ul lv){
  if (lv.v1 != 21746) return 1;
  if (lv.v2 != 21824) return 2;
  if (lv.v3 != 14878) return 3;
  return 0;
}
struct Us_Ul_Ul ret_Us_Ul_Ul(){
  struct Us_Ul_Ul lv;
  lv.v1 = 21746;
  lv.v2 = 21824;
  lv.v3 = 14878;
  return lv;
}
int zig_recv_Us_Ul_Ul(struct Us_Ul_Ul);
int send_Us_Ul_Ul(){
  struct Us_Ul_Ul lv;
  lv.v1 = 21746;
  lv.v2 = 21824;
  lv.v3 = 14878;
  return zig_recv_Us_Ul_Ul(lv);
}

int recv_Us_Ul_Us(struct Us_Ul_Us lv){
  if (lv.v1 != 26984) return 1;
  if (lv.v2 != 13299) return 2;
  if (lv.v3 != 17140) return 3;
  return 0;
}
struct Us_Ul_Us ret_Us_Ul_Us(){
  struct Us_Ul_Us lv;
  lv.v1 = 26984;
  lv.v2 = 13299;
  lv.v3 = 17140;
  return lv;
}
int zig_recv_Us_Ul_Us(struct Us_Ul_Us);
int send_Us_Ul_Us(){
  struct Us_Ul_Us lv;
  lv.v1 = 26984;
  lv.v2 = 13299;
  lv.v3 = 17140;
  return zig_recv_Us_Ul_Us(lv);
}

int recv_Us_Ul_Vp(struct Us_Ul_Vp lv){
  if (lv.v1 != 30518) return 1;
  if (lv.v2 != 21741) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Ul_Vp ret_Us_Ul_Vp(){
  struct Us_Ul_Vp lv;
  lv.v1 = 30518;
  lv.v2 = 21741;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Ul_Vp(struct Us_Ul_Vp);
int send_Us_Ul_Vp(){
  struct Us_Ul_Vp lv;
  lv.v1 = 30518;
  lv.v2 = 21741;
  lv.v3 = 0;
  return zig_recv_Us_Ul_Vp(lv);
}

int recv_Us_Us(struct Us_Us lv){
  if (lv.v1 != 22395) return 1;
  if (lv.v2 != 24860) return 2;
  return 0;
}
struct Us_Us ret_Us_Us(){
  struct Us_Us lv;
  lv.v1 = 22395;
  lv.v2 = 24860;
  return lv;
}
int zig_recv_Us_Us(struct Us_Us);
int send_Us_Us(){
  struct Us_Us lv;
  lv.v1 = 22395;
  lv.v2 = 24860;
  return zig_recv_Us_Us(lv);
}

int recv_Us_Us_C(struct Us_Us_C lv){
  if (lv.v1 != 29095) return 1;
  if (lv.v2 != 16896) return 2;
  if (lv.v3 != 12) return 3;
  return 0;
}
struct Us_Us_C ret_Us_Us_C(){
  struct Us_Us_C lv;
  lv.v1 = 29095;
  lv.v2 = 16896;
  lv.v3 = 12;
  return lv;
}
int zig_recv_Us_Us_C(struct Us_Us_C);
int send_Us_Us_C(){
  struct Us_Us_C lv;
  lv.v1 = 29095;
  lv.v2 = 16896;
  lv.v3 = 12;
  return zig_recv_Us_Us_C(lv);
}

int recv_Us_Us_D(struct Us_Us_D lv){
  if (lv.v1 != 32400) return 1;
  if (lv.v2 != 24920) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Us_Us_D ret_Us_Us_D(){
  struct Us_Us_D lv;
  lv.v1 = 32400;
  lv.v2 = 24920;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Us_Us_D(struct Us_Us_D);
int send_Us_Us_D(){
  struct Us_Us_D lv;
  lv.v1 = 32400;
  lv.v2 = 24920;
  lv.v3 = 7.0;
  return zig_recv_Us_Us_D(lv);
}

int recv_Us_Us_F(struct Us_Us_F lv){
  if (lv.v1 != 27252) return 1;
  if (lv.v2 != 23171) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Us_Us_F ret_Us_Us_F(){
  struct Us_Us_F lv;
  lv.v1 = 27252;
  lv.v2 = 23171;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Us_Us_F(struct Us_Us_F);
int send_Us_Us_F(){
  struct Us_Us_F lv;
  lv.v1 = 27252;
  lv.v2 = 23171;
  lv.v3 = 7.0;
  return zig_recv_Us_Us_F(lv);
}

int recv_Us_Us_I(struct Us_Us_I lv){
  if (lv.v1 != 30675) return 1;
  if (lv.v2 != 20018) return 2;
  if (lv.v3 != 11813) return 3;
  return 0;
}
struct Us_Us_I ret_Us_Us_I(){
  struct Us_Us_I lv;
  lv.v1 = 30675;
  lv.v2 = 20018;
  lv.v3 = 11813;
  return lv;
}
int zig_recv_Us_Us_I(struct Us_Us_I);
int send_Us_Us_I(){
  struct Us_Us_I lv;
  lv.v1 = 30675;
  lv.v2 = 20018;
  lv.v3 = 11813;
  return zig_recv_Us_Us_I(lv);
}

int recv_Us_Us_Ip(struct Us_Us_Ip lv){
  if (lv.v1 != 12267) return 1;
  if (lv.v2 != 8588) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Us_Ip ret_Us_Us_Ip(){
  struct Us_Us_Ip lv;
  lv.v1 = 12267;
  lv.v2 = 8588;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Us_Ip(struct Us_Us_Ip);
int send_Us_Us_Ip(){
  struct Us_Us_Ip lv;
  lv.v1 = 12267;
  lv.v2 = 8588;
  lv.v3 = 0;
  return zig_recv_Us_Us_Ip(lv);
}

int recv_Us_Us_L(struct Us_Us_L lv){
  if (lv.v1 != 27707) return 1;
  if (lv.v2 != 22062) return 2;
  if (lv.v3 != 7550) return 3;
  return 0;
}
struct Us_Us_L ret_Us_Us_L(){
  struct Us_Us_L lv;
  lv.v1 = 27707;
  lv.v2 = 22062;
  lv.v3 = 7550;
  return lv;
}
int zig_recv_Us_Us_L(struct Us_Us_L);
int send_Us_Us_L(){
  struct Us_Us_L lv;
  lv.v1 = 27707;
  lv.v2 = 22062;
  lv.v3 = 7550;
  return zig_recv_Us_Us_L(lv);
}

int recv_Us_Us_S(struct Us_Us_S lv){
  if (lv.v1 != 26438) return 1;
  if (lv.v2 != 9267) return 2;
  if (lv.v3 != 12429) return 3;
  return 0;
}
struct Us_Us_S ret_Us_Us_S(){
  struct Us_Us_S lv;
  lv.v1 = 26438;
  lv.v2 = 9267;
  lv.v3 = 12429;
  return lv;
}
int zig_recv_Us_Us_S(struct Us_Us_S);
int send_Us_Us_S(){
  struct Us_Us_S lv;
  lv.v1 = 26438;
  lv.v2 = 9267;
  lv.v3 = 12429;
  return zig_recv_Us_Us_S(lv);
}

int recv_Us_Us_Uc(struct Us_Us_Uc lv){
  if (lv.v1 != 16024) return 1;
  if (lv.v2 != 16604) return 2;
  if (lv.v3 != 8) return 3;
  return 0;
}
struct Us_Us_Uc ret_Us_Us_Uc(){
  struct Us_Us_Uc lv;
  lv.v1 = 16024;
  lv.v2 = 16604;
  lv.v3 = 8;
  return lv;
}
int zig_recv_Us_Us_Uc(struct Us_Us_Uc);
int send_Us_Us_Uc(){
  struct Us_Us_Uc lv;
  lv.v1 = 16024;
  lv.v2 = 16604;
  lv.v3 = 8;
  return zig_recv_Us_Us_Uc(lv);
}

int recv_Us_Us_Ui(struct Us_Us_Ui lv){
  if (lv.v1 != 31707) return 1;
  if (lv.v2 != 32474) return 2;
  if (lv.v3 != 20286) return 3;
  return 0;
}
struct Us_Us_Ui ret_Us_Us_Ui(){
  struct Us_Us_Ui lv;
  lv.v1 = 31707;
  lv.v2 = 32474;
  lv.v3 = 20286;
  return lv;
}
int zig_recv_Us_Us_Ui(struct Us_Us_Ui);
int send_Us_Us_Ui(){
  struct Us_Us_Ui lv;
  lv.v1 = 31707;
  lv.v2 = 32474;
  lv.v3 = 20286;
  return zig_recv_Us_Us_Ui(lv);
}

int recv_Us_Us_Ul(struct Us_Us_Ul lv){
  if (lv.v1 != 23168) return 1;
  if (lv.v2 != 25230) return 2;
  if (lv.v3 != 32395) return 3;
  return 0;
}
struct Us_Us_Ul ret_Us_Us_Ul(){
  struct Us_Us_Ul lv;
  lv.v1 = 23168;
  lv.v2 = 25230;
  lv.v3 = 32395;
  return lv;
}
int zig_recv_Us_Us_Ul(struct Us_Us_Ul);
int send_Us_Us_Ul(){
  struct Us_Us_Ul lv;
  lv.v1 = 23168;
  lv.v2 = 25230;
  lv.v3 = 32395;
  return zig_recv_Us_Us_Ul(lv);
}

int recv_Us_Us_Us(struct Us_Us_Us lv){
  if (lv.v1 != 22020) return 1;
  if (lv.v2 != 15748) return 2;
  if (lv.v3 != 19041) return 3;
  return 0;
}
struct Us_Us_Us ret_Us_Us_Us(){
  struct Us_Us_Us lv;
  lv.v1 = 22020;
  lv.v2 = 15748;
  lv.v3 = 19041;
  return lv;
}
int zig_recv_Us_Us_Us(struct Us_Us_Us);
int send_Us_Us_Us(){
  struct Us_Us_Us lv;
  lv.v1 = 22020;
  lv.v2 = 15748;
  lv.v3 = 19041;
  return zig_recv_Us_Us_Us(lv);
}

int recv_Us_Us_Vp(struct Us_Us_Vp lv){
  if (lv.v1 != 2680) return 1;
  if (lv.v2 != 25163) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Us_Vp ret_Us_Us_Vp(){
  struct Us_Us_Vp lv;
  lv.v1 = 2680;
  lv.v2 = 25163;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Us_Vp(struct Us_Us_Vp);
int send_Us_Us_Vp(){
  struct Us_Us_Vp lv;
  lv.v1 = 2680;
  lv.v2 = 25163;
  lv.v3 = 0;
  return zig_recv_Us_Us_Vp(lv);
}

int recv_Us_Vp(struct Us_Vp lv){
  if (lv.v1 != 27963) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct Us_Vp ret_Us_Vp(){
  struct Us_Vp lv;
  lv.v1 = 27963;
  lv.v2 = 0;
  return lv;
}
int zig_recv_Us_Vp(struct Us_Vp);
int send_Us_Vp(){
  struct Us_Vp lv;
  lv.v1 = 27963;
  lv.v2 = 0;
  return zig_recv_Us_Vp(lv);
}

int recv_Us_Vp_C(struct Us_Vp_C lv){
  if (lv.v1 != 13429) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 114) return 3;
  return 0;
}
struct Us_Vp_C ret_Us_Vp_C(){
  struct Us_Vp_C lv;
  lv.v1 = 13429;
  lv.v2 = 0;
  lv.v3 = 114;
  return lv;
}
int zig_recv_Us_Vp_C(struct Us_Vp_C);
int send_Us_Vp_C(){
  struct Us_Vp_C lv;
  lv.v1 = 13429;
  lv.v2 = 0;
  lv.v3 = 114;
  return zig_recv_Us_Vp_C(lv);
}

int recv_Us_Vp_D(struct Us_Vp_D lv){
  if (lv.v1 != 14615) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Us_Vp_D ret_Us_Vp_D(){
  struct Us_Vp_D lv;
  lv.v1 = 14615;
  lv.v2 = 0;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Us_Vp_D(struct Us_Vp_D);
int send_Us_Vp_D(){
  struct Us_Vp_D lv;
  lv.v1 = 14615;
  lv.v2 = 0;
  lv.v3 = 7.0;
  return zig_recv_Us_Vp_D(lv);
}

int recv_Us_Vp_F(struct Us_Vp_F lv){
  if (lv.v1 != 25809) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Us_Vp_F ret_Us_Vp_F(){
  struct Us_Vp_F lv;
  lv.v1 = 25809;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Us_Vp_F(struct Us_Vp_F);
int send_Us_Vp_F(){
  struct Us_Vp_F lv;
  lv.v1 = 25809;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return zig_recv_Us_Vp_F(lv);
}

int recv_Us_Vp_I(struct Us_Vp_I lv){
  if (lv.v1 != 21154) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 12034) return 3;
  return 0;
}
struct Us_Vp_I ret_Us_Vp_I(){
  struct Us_Vp_I lv;
  lv.v1 = 21154;
  lv.v2 = 0;
  lv.v3 = 12034;
  return lv;
}
int zig_recv_Us_Vp_I(struct Us_Vp_I);
int send_Us_Vp_I(){
  struct Us_Vp_I lv;
  lv.v1 = 21154;
  lv.v2 = 0;
  lv.v3 = 12034;
  return zig_recv_Us_Vp_I(lv);
}

int recv_Us_Vp_Ip(struct Us_Vp_Ip lv){
  if (lv.v1 != 1558) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Vp_Ip ret_Us_Vp_Ip(){
  struct Us_Vp_Ip lv;
  lv.v1 = 1558;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Vp_Ip(struct Us_Vp_Ip);
int send_Us_Vp_Ip(){
  struct Us_Vp_Ip lv;
  lv.v1 = 1558;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Us_Vp_Ip(lv);
}

int recv_Us_Vp_L(struct Us_Vp_L lv){
  if (lv.v1 != 3956) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 28044) return 3;
  return 0;
}
struct Us_Vp_L ret_Us_Vp_L(){
  struct Us_Vp_L lv;
  lv.v1 = 3956;
  lv.v2 = 0;
  lv.v3 = 28044;
  return lv;
}
int zig_recv_Us_Vp_L(struct Us_Vp_L);
int send_Us_Vp_L(){
  struct Us_Vp_L lv;
  lv.v1 = 3956;
  lv.v2 = 0;
  lv.v3 = 28044;
  return zig_recv_Us_Vp_L(lv);
}

int recv_Us_Vp_S(struct Us_Vp_S lv){
  if (lv.v1 != 19785) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 32420) return 3;
  return 0;
}
struct Us_Vp_S ret_Us_Vp_S(){
  struct Us_Vp_S lv;
  lv.v1 = 19785;
  lv.v2 = 0;
  lv.v3 = 32420;
  return lv;
}
int zig_recv_Us_Vp_S(struct Us_Vp_S);
int send_Us_Vp_S(){
  struct Us_Vp_S lv;
  lv.v1 = 19785;
  lv.v2 = 0;
  lv.v3 = 32420;
  return zig_recv_Us_Vp_S(lv);
}

int recv_Us_Vp_Uc(struct Us_Vp_Uc lv){
  if (lv.v1 != 12798) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 106) return 3;
  return 0;
}
struct Us_Vp_Uc ret_Us_Vp_Uc(){
  struct Us_Vp_Uc lv;
  lv.v1 = 12798;
  lv.v2 = 0;
  lv.v3 = 106;
  return lv;
}
int zig_recv_Us_Vp_Uc(struct Us_Vp_Uc);
int send_Us_Vp_Uc(){
  struct Us_Vp_Uc lv;
  lv.v1 = 12798;
  lv.v2 = 0;
  lv.v3 = 106;
  return zig_recv_Us_Vp_Uc(lv);
}

int recv_Us_Vp_Ui(struct Us_Vp_Ui lv){
  if (lv.v1 != 18555) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 25756) return 3;
  return 0;
}
struct Us_Vp_Ui ret_Us_Vp_Ui(){
  struct Us_Vp_Ui lv;
  lv.v1 = 18555;
  lv.v2 = 0;
  lv.v3 = 25756;
  return lv;
}
int zig_recv_Us_Vp_Ui(struct Us_Vp_Ui);
int send_Us_Vp_Ui(){
  struct Us_Vp_Ui lv;
  lv.v1 = 18555;
  lv.v2 = 0;
  lv.v3 = 25756;
  return zig_recv_Us_Vp_Ui(lv);
}

int recv_Us_Vp_Ul(struct Us_Vp_Ul lv){
  if (lv.v1 != 25009) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 2138) return 3;
  return 0;
}
struct Us_Vp_Ul ret_Us_Vp_Ul(){
  struct Us_Vp_Ul lv;
  lv.v1 = 25009;
  lv.v2 = 0;
  lv.v3 = 2138;
  return lv;
}
int zig_recv_Us_Vp_Ul(struct Us_Vp_Ul);
int send_Us_Vp_Ul(){
  struct Us_Vp_Ul lv;
  lv.v1 = 25009;
  lv.v2 = 0;
  lv.v3 = 2138;
  return zig_recv_Us_Vp_Ul(lv);
}

int recv_Us_Vp_Us(struct Us_Vp_Us lv){
  if (lv.v1 != 32123) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 5039) return 3;
  return 0;
}
struct Us_Vp_Us ret_Us_Vp_Us(){
  struct Us_Vp_Us lv;
  lv.v1 = 32123;
  lv.v2 = 0;
  lv.v3 = 5039;
  return lv;
}
int zig_recv_Us_Vp_Us(struct Us_Vp_Us);
int send_Us_Vp_Us(){
  struct Us_Vp_Us lv;
  lv.v1 = 32123;
  lv.v2 = 0;
  lv.v3 = 5039;
  return zig_recv_Us_Vp_Us(lv);
}

int recv_Us_Vp_Vp(struct Us_Vp_Vp lv){
  if (lv.v1 != 29460) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Us_Vp_Vp ret_Us_Vp_Vp(){
  struct Us_Vp_Vp lv;
  lv.v1 = 29460;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Us_Vp_Vp(struct Us_Vp_Vp);
int send_Us_Vp_Vp(){
  struct Us_Vp_Vp lv;
  lv.v1 = 29460;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Us_Vp_Vp(lv);
}

int recv_Vp(struct Vp lv){
  if (lv.v1 != 0) return 1;
  return 0;
}
struct Vp ret_Vp(){
  struct Vp lv;
  lv.v1 = 0;
  return lv;
}
int zig_recv_Vp(struct Vp);
int send_Vp(){
  struct Vp lv;
  lv.v1 = 0;
  return zig_recv_Vp(lv);
}

