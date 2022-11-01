#include "T_Snnn_xbc.h"

int recv_Vp_C(struct Vp_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 24) return 2;
  return 0;
}
struct Vp_C ret_Vp_C(){
  struct Vp_C lv;
  lv.v1 = 0;
  lv.v2 = 24;
  return lv;
}
int zig_recv_Vp_C(struct Vp_C);
int send_Vp_C(){
  struct Vp_C lv;
  lv.v1 = 0;
  lv.v2 = 24;
  return zig_recv_Vp_C(lv);
}

int recv_Vp_C_C(struct Vp_C_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 39) return 2;
  if (lv.v3 != 11) return 3;
  return 0;
}
struct Vp_C_C ret_Vp_C_C(){
  struct Vp_C_C lv;
  lv.v1 = 0;
  lv.v2 = 39;
  lv.v3 = 11;
  return lv;
}
int zig_recv_Vp_C_C(struct Vp_C_C);
int send_Vp_C_C(){
  struct Vp_C_C lv;
  lv.v1 = 0;
  lv.v2 = 39;
  lv.v3 = 11;
  return zig_recv_Vp_C_C(lv);
}

int recv_Vp_C_D(struct Vp_C_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 106) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Vp_C_D ret_Vp_C_D(){
  struct Vp_C_D lv;
  lv.v1 = 0;
  lv.v2 = 106;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Vp_C_D(struct Vp_C_D);
int send_Vp_C_D(){
  struct Vp_C_D lv;
  lv.v1 = 0;
  lv.v2 = 106;
  lv.v3 = -0.25;
  return zig_recv_Vp_C_D(lv);
}

int recv_Vp_C_F(struct Vp_C_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 57) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Vp_C_F ret_Vp_C_F(){
  struct Vp_C_F lv;
  lv.v1 = 0;
  lv.v2 = 57;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Vp_C_F(struct Vp_C_F);
int send_Vp_C_F(){
  struct Vp_C_F lv;
  lv.v1 = 0;
  lv.v2 = 57;
  lv.v3 = 7.0;
  return zig_recv_Vp_C_F(lv);
}

int recv_Vp_C_I(struct Vp_C_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 62) return 2;
  if (lv.v3 != 22912) return 3;
  return 0;
}
struct Vp_C_I ret_Vp_C_I(){
  struct Vp_C_I lv;
  lv.v1 = 0;
  lv.v2 = 62;
  lv.v3 = 22912;
  return lv;
}
int zig_recv_Vp_C_I(struct Vp_C_I);
int send_Vp_C_I(){
  struct Vp_C_I lv;
  lv.v1 = 0;
  lv.v2 = 62;
  lv.v3 = 22912;
  return zig_recv_Vp_C_I(lv);
}

int recv_Vp_C_Ip(struct Vp_C_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_C_Ip ret_Vp_C_Ip(){
  struct Vp_C_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_C_Ip(struct Vp_C_Ip);
int send_Vp_C_Ip(){
  struct Vp_C_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Vp_C_Ip(lv);
}

int recv_Vp_C_L(struct Vp_C_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 16) return 2;
  if (lv.v3 != 18116) return 3;
  return 0;
}
struct Vp_C_L ret_Vp_C_L(){
  struct Vp_C_L lv;
  lv.v1 = 0;
  lv.v2 = 16;
  lv.v3 = 18116;
  return lv;
}
int zig_recv_Vp_C_L(struct Vp_C_L);
int send_Vp_C_L(){
  struct Vp_C_L lv;
  lv.v1 = 0;
  lv.v2 = 16;
  lv.v3 = 18116;
  return zig_recv_Vp_C_L(lv);
}

int recv_Vp_C_S(struct Vp_C_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 81) return 2;
  if (lv.v3 != 27635) return 3;
  return 0;
}
struct Vp_C_S ret_Vp_C_S(){
  struct Vp_C_S lv;
  lv.v1 = 0;
  lv.v2 = 81;
  lv.v3 = 27635;
  return lv;
}
int zig_recv_Vp_C_S(struct Vp_C_S);
int send_Vp_C_S(){
  struct Vp_C_S lv;
  lv.v1 = 0;
  lv.v2 = 81;
  lv.v3 = 27635;
  return zig_recv_Vp_C_S(lv);
}

int recv_Vp_C_Uc(struct Vp_C_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 20) return 2;
  if (lv.v3 != 98) return 3;
  return 0;
}
struct Vp_C_Uc ret_Vp_C_Uc(){
  struct Vp_C_Uc lv;
  lv.v1 = 0;
  lv.v2 = 20;
  lv.v3 = 98;
  return lv;
}
int zig_recv_Vp_C_Uc(struct Vp_C_Uc);
int send_Vp_C_Uc(){
  struct Vp_C_Uc lv;
  lv.v1 = 0;
  lv.v2 = 20;
  lv.v3 = 98;
  return zig_recv_Vp_C_Uc(lv);
}

int recv_Vp_C_Ui(struct Vp_C_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 65) return 2;
  if (lv.v3 != 13797) return 3;
  return 0;
}
struct Vp_C_Ui ret_Vp_C_Ui(){
  struct Vp_C_Ui lv;
  lv.v1 = 0;
  lv.v2 = 65;
  lv.v3 = 13797;
  return lv;
}
int zig_recv_Vp_C_Ui(struct Vp_C_Ui);
int send_Vp_C_Ui(){
  struct Vp_C_Ui lv;
  lv.v1 = 0;
  lv.v2 = 65;
  lv.v3 = 13797;
  return zig_recv_Vp_C_Ui(lv);
}

int recv_Vp_C_Ul(struct Vp_C_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 96) return 2;
  if (lv.v3 != 18622) return 3;
  return 0;
}
struct Vp_C_Ul ret_Vp_C_Ul(){
  struct Vp_C_Ul lv;
  lv.v1 = 0;
  lv.v2 = 96;
  lv.v3 = 18622;
  return lv;
}
int zig_recv_Vp_C_Ul(struct Vp_C_Ul);
int send_Vp_C_Ul(){
  struct Vp_C_Ul lv;
  lv.v1 = 0;
  lv.v2 = 96;
  lv.v3 = 18622;
  return zig_recv_Vp_C_Ul(lv);
}

int recv_Vp_C_Us(struct Vp_C_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 109) return 2;
  if (lv.v3 != 24720) return 3;
  return 0;
}
struct Vp_C_Us ret_Vp_C_Us(){
  struct Vp_C_Us lv;
  lv.v1 = 0;
  lv.v2 = 109;
  lv.v3 = 24720;
  return lv;
}
int zig_recv_Vp_C_Us(struct Vp_C_Us);
int send_Vp_C_Us(){
  struct Vp_C_Us lv;
  lv.v1 = 0;
  lv.v2 = 109;
  lv.v3 = 24720;
  return zig_recv_Vp_C_Us(lv);
}

int recv_Vp_C_Vp(struct Vp_C_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 16) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_C_Vp ret_Vp_C_Vp(){
  struct Vp_C_Vp lv;
  lv.v1 = 0;
  lv.v2 = 16;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_C_Vp(struct Vp_C_Vp);
int send_Vp_C_Vp(){
  struct Vp_C_Vp lv;
  lv.v1 = 0;
  lv.v2 = 16;
  lv.v3 = 0;
  return zig_recv_Vp_C_Vp(lv);
}

int recv_Vp_D(struct Vp_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0.5) return 2;
  return 0;
}
struct Vp_D ret_Vp_D(){
  struct Vp_D lv;
  lv.v1 = 0;
  lv.v2 = 0.5;
  return lv;
}
int zig_recv_Vp_D(struct Vp_D);
int send_Vp_D(){
  struct Vp_D lv;
  lv.v1 = 0;
  lv.v2 = 0.5;
  return zig_recv_Vp_D(lv);
}

int recv_Vp_D_C(struct Vp_D_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 3) return 3;
  return 0;
}
struct Vp_D_C ret_Vp_D_C(){
  struct Vp_D_C lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 3;
  return lv;
}
int zig_recv_Vp_D_C(struct Vp_D_C);
int send_Vp_D_C(){
  struct Vp_D_C lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 3;
  return zig_recv_Vp_D_C(lv);
}

int recv_Vp_D_D(struct Vp_D_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Vp_D_D ret_Vp_D_D(){
  struct Vp_D_D lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Vp_D_D(struct Vp_D_D);
int send_Vp_D_D(){
  struct Vp_D_D lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = -2.125;
  return zig_recv_Vp_D_D(lv);
}

int recv_Vp_D_F(struct Vp_D_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Vp_D_F ret_Vp_D_F(){
  struct Vp_D_F lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Vp_D_F(struct Vp_D_F);
int send_Vp_D_F(){
  struct Vp_D_F lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = -0.25;
  return zig_recv_Vp_D_F(lv);
}

int recv_Vp_D_I(struct Vp_D_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 9961) return 3;
  return 0;
}
struct Vp_D_I ret_Vp_D_I(){
  struct Vp_D_I lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 9961;
  return lv;
}
int zig_recv_Vp_D_I(struct Vp_D_I);
int send_Vp_D_I(){
  struct Vp_D_I lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 9961;
  return zig_recv_Vp_D_I(lv);
}

int recv_Vp_D_Ip(struct Vp_D_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_D_Ip ret_Vp_D_Ip(){
  struct Vp_D_Ip lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_D_Ip(struct Vp_D_Ip);
int send_Vp_D_Ip(){
  struct Vp_D_Ip lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return zig_recv_Vp_D_Ip(lv);
}

int recv_Vp_D_L(struct Vp_D_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 17787) return 3;
  return 0;
}
struct Vp_D_L ret_Vp_D_L(){
  struct Vp_D_L lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 17787;
  return lv;
}
int zig_recv_Vp_D_L(struct Vp_D_L);
int send_Vp_D_L(){
  struct Vp_D_L lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 17787;
  return zig_recv_Vp_D_L(lv);
}

int recv_Vp_D_S(struct Vp_D_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 29276) return 3;
  return 0;
}
struct Vp_D_S ret_Vp_D_S(){
  struct Vp_D_S lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 29276;
  return lv;
}
int zig_recv_Vp_D_S(struct Vp_D_S);
int send_Vp_D_S(){
  struct Vp_D_S lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 29276;
  return zig_recv_Vp_D_S(lv);
}

int recv_Vp_D_Uc(struct Vp_D_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 26) return 3;
  return 0;
}
struct Vp_D_Uc ret_Vp_D_Uc(){
  struct Vp_D_Uc lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 26;
  return lv;
}
int zig_recv_Vp_D_Uc(struct Vp_D_Uc);
int send_Vp_D_Uc(){
  struct Vp_D_Uc lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 26;
  return zig_recv_Vp_D_Uc(lv);
}

int recv_Vp_D_Ui(struct Vp_D_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 1017) return 3;
  return 0;
}
struct Vp_D_Ui ret_Vp_D_Ui(){
  struct Vp_D_Ui lv;
  lv.v1 = 0;
  lv.v2 = 7.0;
  lv.v3 = 1017;
  return lv;
}
int zig_recv_Vp_D_Ui(struct Vp_D_Ui);
int send_Vp_D_Ui(){
  struct Vp_D_Ui lv;
  lv.v1 = 0;
  lv.v2 = 7.0;
  lv.v3 = 1017;
  return zig_recv_Vp_D_Ui(lv);
}

int recv_Vp_D_Ul(struct Vp_D_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 18055) return 3;
  return 0;
}
struct Vp_D_Ul ret_Vp_D_Ul(){
  struct Vp_D_Ul lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = 18055;
  return lv;
}
int zig_recv_Vp_D_Ul(struct Vp_D_Ul);
int send_Vp_D_Ul(){
  struct Vp_D_Ul lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = 18055;
  return zig_recv_Vp_D_Ul(lv);
}

int recv_Vp_D_Us(struct Vp_D_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 13068) return 3;
  return 0;
}
struct Vp_D_Us ret_Vp_D_Us(){
  struct Vp_D_Us lv;
  lv.v1 = 0;
  lv.v2 = 1.0;
  lv.v3 = 13068;
  return lv;
}
int zig_recv_Vp_D_Us(struct Vp_D_Us);
int send_Vp_D_Us(){
  struct Vp_D_Us lv;
  lv.v1 = 0;
  lv.v2 = 1.0;
  lv.v3 = 13068;
  return zig_recv_Vp_D_Us(lv);
}

int recv_Vp_D_Vp(struct Vp_D_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_D_Vp ret_Vp_D_Vp(){
  struct Vp_D_Vp lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_D_Vp(struct Vp_D_Vp);
int send_Vp_D_Vp(){
  struct Vp_D_Vp lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return zig_recv_Vp_D_Vp(lv);
}

int recv_Vp_F(struct Vp_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -2.125) return 2;
  return 0;
}
struct Vp_F ret_Vp_F(){
  struct Vp_F lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  return lv;
}
int zig_recv_Vp_F(struct Vp_F);
int send_Vp_F(){
  struct Vp_F lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  return zig_recv_Vp_F(lv);
}

int recv_Vp_F_C(struct Vp_F_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 23) return 3;
  return 0;
}
struct Vp_F_C ret_Vp_F_C(){
  struct Vp_F_C lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 23;
  return lv;
}
int zig_recv_Vp_F_C(struct Vp_F_C);
int send_Vp_F_C(){
  struct Vp_F_C lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 23;
  return zig_recv_Vp_F_C(lv);
}

int recv_Vp_F_D(struct Vp_F_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Vp_F_D ret_Vp_F_D(){
  struct Vp_F_D lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Vp_F_D(struct Vp_F_D);
int send_Vp_F_D(){
  struct Vp_F_D lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = -0.25;
  return zig_recv_Vp_F_D(lv);
}

int recv_Vp_F_F(struct Vp_F_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Vp_F_F ret_Vp_F_F(){
  struct Vp_F_F lv;
  lv.v1 = 0;
  lv.v2 = 7.0;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Vp_F_F(struct Vp_F_F);
int send_Vp_F_F(){
  struct Vp_F_F lv;
  lv.v1 = 0;
  lv.v2 = 7.0;
  lv.v3 = 4.5;
  return zig_recv_Vp_F_F(lv);
}

int recv_Vp_F_I(struct Vp_F_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 23844) return 3;
  return 0;
}
struct Vp_F_I ret_Vp_F_I(){
  struct Vp_F_I lv;
  lv.v1 = 0;
  lv.v2 = 1.0;
  lv.v3 = 23844;
  return lv;
}
int zig_recv_Vp_F_I(struct Vp_F_I);
int send_Vp_F_I(){
  struct Vp_F_I lv;
  lv.v1 = 0;
  lv.v2 = 1.0;
  lv.v3 = 23844;
  return zig_recv_Vp_F_I(lv);
}

int recv_Vp_F_Ip(struct Vp_F_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_F_Ip ret_Vp_F_Ip(){
  struct Vp_F_Ip lv;
  lv.v1 = 0;
  lv.v2 = 4.5;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_F_Ip(struct Vp_F_Ip);
int send_Vp_F_Ip(){
  struct Vp_F_Ip lv;
  lv.v1 = 0;
  lv.v2 = 4.5;
  lv.v3 = 0;
  return zig_recv_Vp_F_Ip(lv);
}

int recv_Vp_F_L(struct Vp_F_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 4038) return 3;
  return 0;
}
struct Vp_F_L ret_Vp_F_L(){
  struct Vp_F_L lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 4038;
  return lv;
}
int zig_recv_Vp_F_L(struct Vp_F_L);
int send_Vp_F_L(){
  struct Vp_F_L lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 4038;
  return zig_recv_Vp_F_L(lv);
}

int recv_Vp_F_S(struct Vp_F_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 23153) return 3;
  return 0;
}
struct Vp_F_S ret_Vp_F_S(){
  struct Vp_F_S lv;
  lv.v1 = 0;
  lv.v2 = 4.5;
  lv.v3 = 23153;
  return lv;
}
int zig_recv_Vp_F_S(struct Vp_F_S);
int send_Vp_F_S(){
  struct Vp_F_S lv;
  lv.v1 = 0;
  lv.v2 = 4.5;
  lv.v3 = 23153;
  return zig_recv_Vp_F_S(lv);
}

int recv_Vp_F_Uc(struct Vp_F_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 33) return 3;
  return 0;
}
struct Vp_F_Uc ret_Vp_F_Uc(){
  struct Vp_F_Uc lv;
  lv.v1 = 0;
  lv.v2 = 7.0;
  lv.v3 = 33;
  return lv;
}
int zig_recv_Vp_F_Uc(struct Vp_F_Uc);
int send_Vp_F_Uc(){
  struct Vp_F_Uc lv;
  lv.v1 = 0;
  lv.v2 = 7.0;
  lv.v3 = 33;
  return zig_recv_Vp_F_Uc(lv);
}

int recv_Vp_F_Ui(struct Vp_F_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 30633) return 3;
  return 0;
}
struct Vp_F_Ui ret_Vp_F_Ui(){
  struct Vp_F_Ui lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 30633;
  return lv;
}
int zig_recv_Vp_F_Ui(struct Vp_F_Ui);
int send_Vp_F_Ui(){
  struct Vp_F_Ui lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 30633;
  return zig_recv_Vp_F_Ui(lv);
}

int recv_Vp_F_Ul(struct Vp_F_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 8866) return 3;
  return 0;
}
struct Vp_F_Ul ret_Vp_F_Ul(){
  struct Vp_F_Ul lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 8866;
  return lv;
}
int zig_recv_Vp_F_Ul(struct Vp_F_Ul);
int send_Vp_F_Ul(){
  struct Vp_F_Ul lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 8866;
  return zig_recv_Vp_F_Ul(lv);
}

int recv_Vp_F_Us(struct Vp_F_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 6210) return 3;
  return 0;
}
struct Vp_F_Us ret_Vp_F_Us(){
  struct Vp_F_Us lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 6210;
  return lv;
}
int zig_recv_Vp_F_Us(struct Vp_F_Us);
int send_Vp_F_Us(){
  struct Vp_F_Us lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 6210;
  return zig_recv_Vp_F_Us(lv);
}

int recv_Vp_F_Vp(struct Vp_F_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_F_Vp ret_Vp_F_Vp(){
  struct Vp_F_Vp lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_F_Vp(struct Vp_F_Vp);
int send_Vp_F_Vp(){
  struct Vp_F_Vp lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return zig_recv_Vp_F_Vp(lv);
}

int recv_Vp_I(struct Vp_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 23393) return 2;
  return 0;
}
struct Vp_I ret_Vp_I(){
  struct Vp_I lv;
  lv.v1 = 0;
  lv.v2 = 23393;
  return lv;
}
int zig_recv_Vp_I(struct Vp_I);
int send_Vp_I(){
  struct Vp_I lv;
  lv.v1 = 0;
  lv.v2 = 23393;
  return zig_recv_Vp_I(lv);
}

int recv_Vp_I_C(struct Vp_I_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 1637) return 2;
  if (lv.v3 != 114) return 3;
  return 0;
}
struct Vp_I_C ret_Vp_I_C(){
  struct Vp_I_C lv;
  lv.v1 = 0;
  lv.v2 = 1637;
  lv.v3 = 114;
  return lv;
}
int zig_recv_Vp_I_C(struct Vp_I_C);
int send_Vp_I_C(){
  struct Vp_I_C lv;
  lv.v1 = 0;
  lv.v2 = 1637;
  lv.v3 = 114;
  return zig_recv_Vp_I_C(lv);
}

int recv_Vp_I_D(struct Vp_I_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 1972) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Vp_I_D ret_Vp_I_D(){
  struct Vp_I_D lv;
  lv.v1 = 0;
  lv.v2 = 1972;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Vp_I_D(struct Vp_I_D);
int send_Vp_I_D(){
  struct Vp_I_D lv;
  lv.v1 = 0;
  lv.v2 = 1972;
  lv.v3 = -2.125;
  return zig_recv_Vp_I_D(lv);
}

int recv_Vp_I_F(struct Vp_I_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 27881) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Vp_I_F ret_Vp_I_F(){
  struct Vp_I_F lv;
  lv.v1 = 0;
  lv.v2 = 27881;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Vp_I_F(struct Vp_I_F);
int send_Vp_I_F(){
  struct Vp_I_F lv;
  lv.v1 = 0;
  lv.v2 = 27881;
  lv.v3 = -2.125;
  return zig_recv_Vp_I_F(lv);
}

int recv_Vp_I_I(struct Vp_I_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 10924) return 2;
  if (lv.v3 != 24474) return 3;
  return 0;
}
struct Vp_I_I ret_Vp_I_I(){
  struct Vp_I_I lv;
  lv.v1 = 0;
  lv.v2 = 10924;
  lv.v3 = 24474;
  return lv;
}
int zig_recv_Vp_I_I(struct Vp_I_I);
int send_Vp_I_I(){
  struct Vp_I_I lv;
  lv.v1 = 0;
  lv.v2 = 10924;
  lv.v3 = 24474;
  return zig_recv_Vp_I_I(lv);
}

int recv_Vp_I_Ip(struct Vp_I_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 16922) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_I_Ip ret_Vp_I_Ip(){
  struct Vp_I_Ip lv;
  lv.v1 = 0;
  lv.v2 = 16922;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_I_Ip(struct Vp_I_Ip);
int send_Vp_I_Ip(){
  struct Vp_I_Ip lv;
  lv.v1 = 0;
  lv.v2 = 16922;
  lv.v3 = 0;
  return zig_recv_Vp_I_Ip(lv);
}

int recv_Vp_I_L(struct Vp_I_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 6583) return 2;
  if (lv.v3 != 21965) return 3;
  return 0;
}
struct Vp_I_L ret_Vp_I_L(){
  struct Vp_I_L lv;
  lv.v1 = 0;
  lv.v2 = 6583;
  lv.v3 = 21965;
  return lv;
}
int zig_recv_Vp_I_L(struct Vp_I_L);
int send_Vp_I_L(){
  struct Vp_I_L lv;
  lv.v1 = 0;
  lv.v2 = 6583;
  lv.v3 = 21965;
  return zig_recv_Vp_I_L(lv);
}

int recv_Vp_I_S(struct Vp_I_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 21480) return 2;
  if (lv.v3 != 25061) return 3;
  return 0;
}
struct Vp_I_S ret_Vp_I_S(){
  struct Vp_I_S lv;
  lv.v1 = 0;
  lv.v2 = 21480;
  lv.v3 = 25061;
  return lv;
}
int zig_recv_Vp_I_S(struct Vp_I_S);
int send_Vp_I_S(){
  struct Vp_I_S lv;
  lv.v1 = 0;
  lv.v2 = 21480;
  lv.v3 = 25061;
  return zig_recv_Vp_I_S(lv);
}

int recv_Vp_I_Uc(struct Vp_I_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 16553) return 2;
  if (lv.v3 != 97) return 3;
  return 0;
}
struct Vp_I_Uc ret_Vp_I_Uc(){
  struct Vp_I_Uc lv;
  lv.v1 = 0;
  lv.v2 = 16553;
  lv.v3 = 97;
  return lv;
}
int zig_recv_Vp_I_Uc(struct Vp_I_Uc);
int send_Vp_I_Uc(){
  struct Vp_I_Uc lv;
  lv.v1 = 0;
  lv.v2 = 16553;
  lv.v3 = 97;
  return zig_recv_Vp_I_Uc(lv);
}

int recv_Vp_I_Ui(struct Vp_I_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 19921) return 2;
  if (lv.v3 != 1267) return 3;
  return 0;
}
struct Vp_I_Ui ret_Vp_I_Ui(){
  struct Vp_I_Ui lv;
  lv.v1 = 0;
  lv.v2 = 19921;
  lv.v3 = 1267;
  return lv;
}
int zig_recv_Vp_I_Ui(struct Vp_I_Ui);
int send_Vp_I_Ui(){
  struct Vp_I_Ui lv;
  lv.v1 = 0;
  lv.v2 = 19921;
  lv.v3 = 1267;
  return zig_recv_Vp_I_Ui(lv);
}

int recv_Vp_I_Ul(struct Vp_I_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 20058) return 2;
  if (lv.v3 != 6949) return 3;
  return 0;
}
struct Vp_I_Ul ret_Vp_I_Ul(){
  struct Vp_I_Ul lv;
  lv.v1 = 0;
  lv.v2 = 20058;
  lv.v3 = 6949;
  return lv;
}
int zig_recv_Vp_I_Ul(struct Vp_I_Ul);
int send_Vp_I_Ul(){
  struct Vp_I_Ul lv;
  lv.v1 = 0;
  lv.v2 = 20058;
  lv.v3 = 6949;
  return zig_recv_Vp_I_Ul(lv);
}

int recv_Vp_I_Us(struct Vp_I_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 11156) return 2;
  if (lv.v3 != 2529) return 3;
  return 0;
}
struct Vp_I_Us ret_Vp_I_Us(){
  struct Vp_I_Us lv;
  lv.v1 = 0;
  lv.v2 = 11156;
  lv.v3 = 2529;
  return lv;
}
int zig_recv_Vp_I_Us(struct Vp_I_Us);
int send_Vp_I_Us(){
  struct Vp_I_Us lv;
  lv.v1 = 0;
  lv.v2 = 11156;
  lv.v3 = 2529;
  return zig_recv_Vp_I_Us(lv);
}

int recv_Vp_I_Vp(struct Vp_I_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 15788) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_I_Vp ret_Vp_I_Vp(){
  struct Vp_I_Vp lv;
  lv.v1 = 0;
  lv.v2 = 15788;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_I_Vp(struct Vp_I_Vp);
int send_Vp_I_Vp(){
  struct Vp_I_Vp lv;
  lv.v1 = 0;
  lv.v2 = 15788;
  lv.v3 = 0;
  return zig_recv_Vp_I_Vp(lv);
}

int recv_Vp_Ip(struct Vp_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct Vp_Ip ret_Vp_Ip(){
  struct Vp_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0;
  return lv;
}
int zig_recv_Vp_Ip(struct Vp_Ip);
int send_Vp_Ip(){
  struct Vp_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0;
  return zig_recv_Vp_Ip(lv);
}

int recv_Vp_Ip_C(struct Vp_Ip_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 53) return 3;
  return 0;
}
struct Vp_Ip_C ret_Vp_Ip_C(){
  struct Vp_Ip_C lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 53;
  return lv;
}
int zig_recv_Vp_Ip_C(struct Vp_Ip_C);
int send_Vp_Ip_C(){
  struct Vp_Ip_C lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 53;
  return zig_recv_Vp_Ip_C(lv);
}

int recv_Vp_Ip_D(struct Vp_Ip_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Vp_Ip_D ret_Vp_Ip_D(){
  struct Vp_Ip_D lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Vp_Ip_D(struct Vp_Ip_D);
int send_Vp_Ip_D(){
  struct Vp_Ip_D lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return zig_recv_Vp_Ip_D(lv);
}

int recv_Vp_Ip_F(struct Vp_Ip_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Vp_Ip_F ret_Vp_Ip_F(){
  struct Vp_Ip_F lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Vp_Ip_F(struct Vp_Ip_F);
int send_Vp_Ip_F(){
  struct Vp_Ip_F lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 1.0;
  return zig_recv_Vp_Ip_F(lv);
}

int recv_Vp_Ip_I(struct Vp_Ip_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 21941) return 3;
  return 0;
}
struct Vp_Ip_I ret_Vp_Ip_I(){
  struct Vp_Ip_I lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 21941;
  return lv;
}
int zig_recv_Vp_Ip_I(struct Vp_Ip_I);
int send_Vp_Ip_I(){
  struct Vp_Ip_I lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 21941;
  return zig_recv_Vp_Ip_I(lv);
}

int recv_Vp_Ip_Ip(struct Vp_Ip_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Ip_Ip ret_Vp_Ip_Ip(){
  struct Vp_Ip_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Ip_Ip(struct Vp_Ip_Ip);
int send_Vp_Ip_Ip(){
  struct Vp_Ip_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Vp_Ip_Ip(lv);
}

int recv_Vp_Ip_L(struct Vp_Ip_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 18116) return 3;
  return 0;
}
struct Vp_Ip_L ret_Vp_Ip_L(){
  struct Vp_Ip_L lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 18116;
  return lv;
}
int zig_recv_Vp_Ip_L(struct Vp_Ip_L);
int send_Vp_Ip_L(){
  struct Vp_Ip_L lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 18116;
  return zig_recv_Vp_Ip_L(lv);
}

int recv_Vp_Ip_S(struct Vp_Ip_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 31632) return 3;
  return 0;
}
struct Vp_Ip_S ret_Vp_Ip_S(){
  struct Vp_Ip_S lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 31632;
  return lv;
}
int zig_recv_Vp_Ip_S(struct Vp_Ip_S);
int send_Vp_Ip_S(){
  struct Vp_Ip_S lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 31632;
  return zig_recv_Vp_Ip_S(lv);
}

int recv_Vp_Ip_Uc(struct Vp_Ip_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 107) return 3;
  return 0;
}
struct Vp_Ip_Uc ret_Vp_Ip_Uc(){
  struct Vp_Ip_Uc lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 107;
  return lv;
}
int zig_recv_Vp_Ip_Uc(struct Vp_Ip_Uc);
int send_Vp_Ip_Uc(){
  struct Vp_Ip_Uc lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 107;
  return zig_recv_Vp_Ip_Uc(lv);
}

int recv_Vp_Ip_Ui(struct Vp_Ip_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 30947) return 3;
  return 0;
}
struct Vp_Ip_Ui ret_Vp_Ip_Ui(){
  struct Vp_Ip_Ui lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 30947;
  return lv;
}
int zig_recv_Vp_Ip_Ui(struct Vp_Ip_Ui);
int send_Vp_Ip_Ui(){
  struct Vp_Ip_Ui lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 30947;
  return zig_recv_Vp_Ip_Ui(lv);
}

int recv_Vp_Ip_Ul(struct Vp_Ip_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 10704) return 3;
  return 0;
}
struct Vp_Ip_Ul ret_Vp_Ip_Ul(){
  struct Vp_Ip_Ul lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 10704;
  return lv;
}
int zig_recv_Vp_Ip_Ul(struct Vp_Ip_Ul);
int send_Vp_Ip_Ul(){
  struct Vp_Ip_Ul lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 10704;
  return zig_recv_Vp_Ip_Ul(lv);
}

int recv_Vp_Ip_Us(struct Vp_Ip_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 8391) return 3;
  return 0;
}
struct Vp_Ip_Us ret_Vp_Ip_Us(){
  struct Vp_Ip_Us lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 8391;
  return lv;
}
int zig_recv_Vp_Ip_Us(struct Vp_Ip_Us);
int send_Vp_Ip_Us(){
  struct Vp_Ip_Us lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 8391;
  return zig_recv_Vp_Ip_Us(lv);
}

int recv_Vp_Ip_Vp(struct Vp_Ip_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Ip_Vp ret_Vp_Ip_Vp(){
  struct Vp_Ip_Vp lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Ip_Vp(struct Vp_Ip_Vp);
int send_Vp_Ip_Vp(){
  struct Vp_Ip_Vp lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Vp_Ip_Vp(lv);
}

int recv_Vp_L(struct Vp_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 15055) return 2;
  return 0;
}
struct Vp_L ret_Vp_L(){
  struct Vp_L lv;
  lv.v1 = 0;
  lv.v2 = 15055;
  return lv;
}
int zig_recv_Vp_L(struct Vp_L);
int send_Vp_L(){
  struct Vp_L lv;
  lv.v1 = 0;
  lv.v2 = 15055;
  return zig_recv_Vp_L(lv);
}

int recv_Vp_L_C(struct Vp_L_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 28354) return 2;
  if (lv.v3 != 25) return 3;
  return 0;
}
struct Vp_L_C ret_Vp_L_C(){
  struct Vp_L_C lv;
  lv.v1 = 0;
  lv.v2 = 28354;
  lv.v3 = 25;
  return lv;
}
int zig_recv_Vp_L_C(struct Vp_L_C);
int send_Vp_L_C(){
  struct Vp_L_C lv;
  lv.v1 = 0;
  lv.v2 = 28354;
  lv.v3 = 25;
  return zig_recv_Vp_L_C(lv);
}

int recv_Vp_L_D(struct Vp_L_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 32669) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Vp_L_D ret_Vp_L_D(){
  struct Vp_L_D lv;
  lv.v1 = 0;
  lv.v2 = 32669;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Vp_L_D(struct Vp_L_D);
int send_Vp_L_D(){
  struct Vp_L_D lv;
  lv.v1 = 0;
  lv.v2 = 32669;
  lv.v3 = 0.875;
  return zig_recv_Vp_L_D(lv);
}

int recv_Vp_L_F(struct Vp_L_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 19722) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Vp_L_F ret_Vp_L_F(){
  struct Vp_L_F lv;
  lv.v1 = 0;
  lv.v2 = 19722;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Vp_L_F(struct Vp_L_F);
int send_Vp_L_F(){
  struct Vp_L_F lv;
  lv.v1 = 0;
  lv.v2 = 19722;
  lv.v3 = 0.875;
  return zig_recv_Vp_L_F(lv);
}

int recv_Vp_L_I(struct Vp_L_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 22785) return 2;
  if (lv.v3 != 20916) return 3;
  return 0;
}
struct Vp_L_I ret_Vp_L_I(){
  struct Vp_L_I lv;
  lv.v1 = 0;
  lv.v2 = 22785;
  lv.v3 = 20916;
  return lv;
}
int zig_recv_Vp_L_I(struct Vp_L_I);
int send_Vp_L_I(){
  struct Vp_L_I lv;
  lv.v1 = 0;
  lv.v2 = 22785;
  lv.v3 = 20916;
  return zig_recv_Vp_L_I(lv);
}

int recv_Vp_L_Ip(struct Vp_L_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 28290) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_L_Ip ret_Vp_L_Ip(){
  struct Vp_L_Ip lv;
  lv.v1 = 0;
  lv.v2 = 28290;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_L_Ip(struct Vp_L_Ip);
int send_Vp_L_Ip(){
  struct Vp_L_Ip lv;
  lv.v1 = 0;
  lv.v2 = 28290;
  lv.v3 = 0;
  return zig_recv_Vp_L_Ip(lv);
}

int recv_Vp_L_L(struct Vp_L_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 28192) return 2;
  if (lv.v3 != 6050) return 3;
  return 0;
}
struct Vp_L_L ret_Vp_L_L(){
  struct Vp_L_L lv;
  lv.v1 = 0;
  lv.v2 = 28192;
  lv.v3 = 6050;
  return lv;
}
int zig_recv_Vp_L_L(struct Vp_L_L);
int send_Vp_L_L(){
  struct Vp_L_L lv;
  lv.v1 = 0;
  lv.v2 = 28192;
  lv.v3 = 6050;
  return zig_recv_Vp_L_L(lv);
}

int recv_Vp_L_S(struct Vp_L_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 56) return 2;
  if (lv.v3 != 14166) return 3;
  return 0;
}
struct Vp_L_S ret_Vp_L_S(){
  struct Vp_L_S lv;
  lv.v1 = 0;
  lv.v2 = 56;
  lv.v3 = 14166;
  return lv;
}
int zig_recv_Vp_L_S(struct Vp_L_S);
int send_Vp_L_S(){
  struct Vp_L_S lv;
  lv.v1 = 0;
  lv.v2 = 56;
  lv.v3 = 14166;
  return zig_recv_Vp_L_S(lv);
}

int recv_Vp_L_Uc(struct Vp_L_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 26724) return 2;
  if (lv.v3 != 65) return 3;
  return 0;
}
struct Vp_L_Uc ret_Vp_L_Uc(){
  struct Vp_L_Uc lv;
  lv.v1 = 0;
  lv.v2 = 26724;
  lv.v3 = 65;
  return lv;
}
int zig_recv_Vp_L_Uc(struct Vp_L_Uc);
int send_Vp_L_Uc(){
  struct Vp_L_Uc lv;
  lv.v1 = 0;
  lv.v2 = 26724;
  lv.v3 = 65;
  return zig_recv_Vp_L_Uc(lv);
}

int recv_Vp_L_Ui(struct Vp_L_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 17745) return 2;
  if (lv.v3 != 25100) return 3;
  return 0;
}
struct Vp_L_Ui ret_Vp_L_Ui(){
  struct Vp_L_Ui lv;
  lv.v1 = 0;
  lv.v2 = 17745;
  lv.v3 = 25100;
  return lv;
}
int zig_recv_Vp_L_Ui(struct Vp_L_Ui);
int send_Vp_L_Ui(){
  struct Vp_L_Ui lv;
  lv.v1 = 0;
  lv.v2 = 17745;
  lv.v3 = 25100;
  return zig_recv_Vp_L_Ui(lv);
}

int recv_Vp_L_Ul(struct Vp_L_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 28818) return 2;
  if (lv.v3 != 28707) return 3;
  return 0;
}
struct Vp_L_Ul ret_Vp_L_Ul(){
  struct Vp_L_Ul lv;
  lv.v1 = 0;
  lv.v2 = 28818;
  lv.v3 = 28707;
  return lv;
}
int zig_recv_Vp_L_Ul(struct Vp_L_Ul);
int send_Vp_L_Ul(){
  struct Vp_L_Ul lv;
  lv.v1 = 0;
  lv.v2 = 28818;
  lv.v3 = 28707;
  return zig_recv_Vp_L_Ul(lv);
}

int recv_Vp_L_Us(struct Vp_L_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 23192) return 2;
  if (lv.v3 != 1547) return 3;
  return 0;
}
struct Vp_L_Us ret_Vp_L_Us(){
  struct Vp_L_Us lv;
  lv.v1 = 0;
  lv.v2 = 23192;
  lv.v3 = 1547;
  return lv;
}
int zig_recv_Vp_L_Us(struct Vp_L_Us);
int send_Vp_L_Us(){
  struct Vp_L_Us lv;
  lv.v1 = 0;
  lv.v2 = 23192;
  lv.v3 = 1547;
  return zig_recv_Vp_L_Us(lv);
}

int recv_Vp_L_Vp(struct Vp_L_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 2020) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_L_Vp ret_Vp_L_Vp(){
  struct Vp_L_Vp lv;
  lv.v1 = 0;
  lv.v2 = 2020;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_L_Vp(struct Vp_L_Vp);
int send_Vp_L_Vp(){
  struct Vp_L_Vp lv;
  lv.v1 = 0;
  lv.v2 = 2020;
  lv.v3 = 0;
  return zig_recv_Vp_L_Vp(lv);
}

int recv_Vp_S(struct Vp_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 3165) return 2;
  return 0;
}
struct Vp_S ret_Vp_S(){
  struct Vp_S lv;
  lv.v1 = 0;
  lv.v2 = 3165;
  return lv;
}
int zig_recv_Vp_S(struct Vp_S);
int send_Vp_S(){
  struct Vp_S lv;
  lv.v1 = 0;
  lv.v2 = 3165;
  return zig_recv_Vp_S(lv);
}

int recv_Vp_S_C(struct Vp_S_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 20726) return 2;
  if (lv.v3 != 47) return 3;
  return 0;
}
struct Vp_S_C ret_Vp_S_C(){
  struct Vp_S_C lv;
  lv.v1 = 0;
  lv.v2 = 20726;
  lv.v3 = 47;
  return lv;
}
int zig_recv_Vp_S_C(struct Vp_S_C);
int send_Vp_S_C(){
  struct Vp_S_C lv;
  lv.v1 = 0;
  lv.v2 = 20726;
  lv.v3 = 47;
  return zig_recv_Vp_S_C(lv);
}

int recv_Vp_S_D(struct Vp_S_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 11541) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Vp_S_D ret_Vp_S_D(){
  struct Vp_S_D lv;
  lv.v1 = 0;
  lv.v2 = 11541;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Vp_S_D(struct Vp_S_D);
int send_Vp_S_D(){
  struct Vp_S_D lv;
  lv.v1 = 0;
  lv.v2 = 11541;
  lv.v3 = -0.25;
  return zig_recv_Vp_S_D(lv);
}

int recv_Vp_S_F(struct Vp_S_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 29716) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Vp_S_F ret_Vp_S_F(){
  struct Vp_S_F lv;
  lv.v1 = 0;
  lv.v2 = 29716;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Vp_S_F(struct Vp_S_F);
int send_Vp_S_F(){
  struct Vp_S_F lv;
  lv.v1 = 0;
  lv.v2 = 29716;
  lv.v3 = 0.5;
  return zig_recv_Vp_S_F(lv);
}

int recv_Vp_S_I(struct Vp_S_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 11380) return 2;
  if (lv.v3 != 937) return 3;
  return 0;
}
struct Vp_S_I ret_Vp_S_I(){
  struct Vp_S_I lv;
  lv.v1 = 0;
  lv.v2 = 11380;
  lv.v3 = 937;
  return lv;
}
int zig_recv_Vp_S_I(struct Vp_S_I);
int send_Vp_S_I(){
  struct Vp_S_I lv;
  lv.v1 = 0;
  lv.v2 = 11380;
  lv.v3 = 937;
  return zig_recv_Vp_S_I(lv);
}

int recv_Vp_S_Ip(struct Vp_S_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 7055) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_S_Ip ret_Vp_S_Ip(){
  struct Vp_S_Ip lv;
  lv.v1 = 0;
  lv.v2 = 7055;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_S_Ip(struct Vp_S_Ip);
int send_Vp_S_Ip(){
  struct Vp_S_Ip lv;
  lv.v1 = 0;
  lv.v2 = 7055;
  lv.v3 = 0;
  return zig_recv_Vp_S_Ip(lv);
}

int recv_Vp_S_L(struct Vp_S_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 22604) return 2;
  if (lv.v3 != 30928) return 3;
  return 0;
}
struct Vp_S_L ret_Vp_S_L(){
  struct Vp_S_L lv;
  lv.v1 = 0;
  lv.v2 = 22604;
  lv.v3 = 30928;
  return lv;
}
int zig_recv_Vp_S_L(struct Vp_S_L);
int send_Vp_S_L(){
  struct Vp_S_L lv;
  lv.v1 = 0;
  lv.v2 = 22604;
  lv.v3 = 30928;
  return zig_recv_Vp_S_L(lv);
}

int recv_Vp_S_S(struct Vp_S_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 7792) return 2;
  if (lv.v3 != 12301) return 3;
  return 0;
}
struct Vp_S_S ret_Vp_S_S(){
  struct Vp_S_S lv;
  lv.v1 = 0;
  lv.v2 = 7792;
  lv.v3 = 12301;
  return lv;
}
int zig_recv_Vp_S_S(struct Vp_S_S);
int send_Vp_S_S(){
  struct Vp_S_S lv;
  lv.v1 = 0;
  lv.v2 = 7792;
  lv.v3 = 12301;
  return zig_recv_Vp_S_S(lv);
}

int recv_Vp_S_Uc(struct Vp_S_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 20598) return 2;
  if (lv.v3 != 41) return 3;
  return 0;
}
struct Vp_S_Uc ret_Vp_S_Uc(){
  struct Vp_S_Uc lv;
  lv.v1 = 0;
  lv.v2 = 20598;
  lv.v3 = 41;
  return lv;
}
int zig_recv_Vp_S_Uc(struct Vp_S_Uc);
int send_Vp_S_Uc(){
  struct Vp_S_Uc lv;
  lv.v1 = 0;
  lv.v2 = 20598;
  lv.v3 = 41;
  return zig_recv_Vp_S_Uc(lv);
}

int recv_Vp_S_Ui(struct Vp_S_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 10315) return 2;
  if (lv.v3 != 28050) return 3;
  return 0;
}
struct Vp_S_Ui ret_Vp_S_Ui(){
  struct Vp_S_Ui lv;
  lv.v1 = 0;
  lv.v2 = 10315;
  lv.v3 = 28050;
  return lv;
}
int zig_recv_Vp_S_Ui(struct Vp_S_Ui);
int send_Vp_S_Ui(){
  struct Vp_S_Ui lv;
  lv.v1 = 0;
  lv.v2 = 10315;
  lv.v3 = 28050;
  return zig_recv_Vp_S_Ui(lv);
}

int recv_Vp_S_Ul(struct Vp_S_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 27563) return 2;
  if (lv.v3 != 25487) return 3;
  return 0;
}
struct Vp_S_Ul ret_Vp_S_Ul(){
  struct Vp_S_Ul lv;
  lv.v1 = 0;
  lv.v2 = 27563;
  lv.v3 = 25487;
  return lv;
}
int zig_recv_Vp_S_Ul(struct Vp_S_Ul);
int send_Vp_S_Ul(){
  struct Vp_S_Ul lv;
  lv.v1 = 0;
  lv.v2 = 27563;
  lv.v3 = 25487;
  return zig_recv_Vp_S_Ul(lv);
}

int recv_Vp_S_Us(struct Vp_S_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 25333) return 2;
  if (lv.v3 != 3161) return 3;
  return 0;
}
struct Vp_S_Us ret_Vp_S_Us(){
  struct Vp_S_Us lv;
  lv.v1 = 0;
  lv.v2 = 25333;
  lv.v3 = 3161;
  return lv;
}
int zig_recv_Vp_S_Us(struct Vp_S_Us);
int send_Vp_S_Us(){
  struct Vp_S_Us lv;
  lv.v1 = 0;
  lv.v2 = 25333;
  lv.v3 = 3161;
  return zig_recv_Vp_S_Us(lv);
}

int recv_Vp_S_Vp(struct Vp_S_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 19397) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_S_Vp ret_Vp_S_Vp(){
  struct Vp_S_Vp lv;
  lv.v1 = 0;
  lv.v2 = 19397;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_S_Vp(struct Vp_S_Vp);
int send_Vp_S_Vp(){
  struct Vp_S_Vp lv;
  lv.v1 = 0;
  lv.v2 = 19397;
  lv.v3 = 0;
  return zig_recv_Vp_S_Vp(lv);
}

int recv_Vp_Uc(struct Vp_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 45) return 2;
  return 0;
}
struct Vp_Uc ret_Vp_Uc(){
  struct Vp_Uc lv;
  lv.v1 = 0;
  lv.v2 = 45;
  return lv;
}
int zig_recv_Vp_Uc(struct Vp_Uc);
int send_Vp_Uc(){
  struct Vp_Uc lv;
  lv.v1 = 0;
  lv.v2 = 45;
  return zig_recv_Vp_Uc(lv);
}

int recv_Vp_Uc_C(struct Vp_Uc_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 20) return 2;
  if (lv.v3 != 19) return 3;
  return 0;
}
struct Vp_Uc_C ret_Vp_Uc_C(){
  struct Vp_Uc_C lv;
  lv.v1 = 0;
  lv.v2 = 20;
  lv.v3 = 19;
  return lv;
}
int zig_recv_Vp_Uc_C(struct Vp_Uc_C);
int send_Vp_Uc_C(){
  struct Vp_Uc_C lv;
  lv.v1 = 0;
  lv.v2 = 20;
  lv.v3 = 19;
  return zig_recv_Vp_Uc_C(lv);
}

int recv_Vp_Uc_D(struct Vp_Uc_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 50) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Vp_Uc_D ret_Vp_Uc_D(){
  struct Vp_Uc_D lv;
  lv.v1 = 0;
  lv.v2 = 50;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Vp_Uc_D(struct Vp_Uc_D);
int send_Vp_Uc_D(){
  struct Vp_Uc_D lv;
  lv.v1 = 0;
  lv.v2 = 50;
  lv.v3 = 0.5;
  return zig_recv_Vp_Uc_D(lv);
}

int recv_Vp_Uc_F(struct Vp_Uc_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 123) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Vp_Uc_F ret_Vp_Uc_F(){
  struct Vp_Uc_F lv;
  lv.v1 = 0;
  lv.v2 = 123;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Vp_Uc_F(struct Vp_Uc_F);
int send_Vp_Uc_F(){
  struct Vp_Uc_F lv;
  lv.v1 = 0;
  lv.v2 = 123;
  lv.v3 = 0.5;
  return zig_recv_Vp_Uc_F(lv);
}

int recv_Vp_Uc_I(struct Vp_Uc_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 114) return 2;
  if (lv.v3 != 26429) return 3;
  return 0;
}
struct Vp_Uc_I ret_Vp_Uc_I(){
  struct Vp_Uc_I lv;
  lv.v1 = 0;
  lv.v2 = 114;
  lv.v3 = 26429;
  return lv;
}
int zig_recv_Vp_Uc_I(struct Vp_Uc_I);
int send_Vp_Uc_I(){
  struct Vp_Uc_I lv;
  lv.v1 = 0;
  lv.v2 = 114;
  lv.v3 = 26429;
  return zig_recv_Vp_Uc_I(lv);
}

int recv_Vp_Uc_Ip(struct Vp_Uc_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 27) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Uc_Ip ret_Vp_Uc_Ip(){
  struct Vp_Uc_Ip lv;
  lv.v1 = 0;
  lv.v2 = 27;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Uc_Ip(struct Vp_Uc_Ip);
int send_Vp_Uc_Ip(){
  struct Vp_Uc_Ip lv;
  lv.v1 = 0;
  lv.v2 = 27;
  lv.v3 = 0;
  return zig_recv_Vp_Uc_Ip(lv);
}

int recv_Vp_Uc_L(struct Vp_Uc_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 122) return 2;
  if (lv.v3 != 7583) return 3;
  return 0;
}
struct Vp_Uc_L ret_Vp_Uc_L(){
  struct Vp_Uc_L lv;
  lv.v1 = 0;
  lv.v2 = 122;
  lv.v3 = 7583;
  return lv;
}
int zig_recv_Vp_Uc_L(struct Vp_Uc_L);
int send_Vp_Uc_L(){
  struct Vp_Uc_L lv;
  lv.v1 = 0;
  lv.v2 = 122;
  lv.v3 = 7583;
  return zig_recv_Vp_Uc_L(lv);
}

int recv_Vp_Uc_S(struct Vp_Uc_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 14) return 2;
  if (lv.v3 != 22906) return 3;
  return 0;
}
struct Vp_Uc_S ret_Vp_Uc_S(){
  struct Vp_Uc_S lv;
  lv.v1 = 0;
  lv.v2 = 14;
  lv.v3 = 22906;
  return lv;
}
int zig_recv_Vp_Uc_S(struct Vp_Uc_S);
int send_Vp_Uc_S(){
  struct Vp_Uc_S lv;
  lv.v1 = 0;
  lv.v2 = 14;
  lv.v3 = 22906;
  return zig_recv_Vp_Uc_S(lv);
}

int recv_Vp_Uc_Uc(struct Vp_Uc_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 61) return 2;
  if (lv.v3 != 71) return 3;
  return 0;
}
struct Vp_Uc_Uc ret_Vp_Uc_Uc(){
  struct Vp_Uc_Uc lv;
  lv.v1 = 0;
  lv.v2 = 61;
  lv.v3 = 71;
  return lv;
}
int zig_recv_Vp_Uc_Uc(struct Vp_Uc_Uc);
int send_Vp_Uc_Uc(){
  struct Vp_Uc_Uc lv;
  lv.v1 = 0;
  lv.v2 = 61;
  lv.v3 = 71;
  return zig_recv_Vp_Uc_Uc(lv);
}

int recv_Vp_Uc_Ui(struct Vp_Uc_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 68) return 2;
  if (lv.v3 != 31148) return 3;
  return 0;
}
struct Vp_Uc_Ui ret_Vp_Uc_Ui(){
  struct Vp_Uc_Ui lv;
  lv.v1 = 0;
  lv.v2 = 68;
  lv.v3 = 31148;
  return lv;
}
int zig_recv_Vp_Uc_Ui(struct Vp_Uc_Ui);
int send_Vp_Uc_Ui(){
  struct Vp_Uc_Ui lv;
  lv.v1 = 0;
  lv.v2 = 68;
  lv.v3 = 31148;
  return zig_recv_Vp_Uc_Ui(lv);
}

int recv_Vp_Uc_Ul(struct Vp_Uc_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 13) return 2;
  if (lv.v3 != 6117) return 3;
  return 0;
}
struct Vp_Uc_Ul ret_Vp_Uc_Ul(){
  struct Vp_Uc_Ul lv;
  lv.v1 = 0;
  lv.v2 = 13;
  lv.v3 = 6117;
  return lv;
}
int zig_recv_Vp_Uc_Ul(struct Vp_Uc_Ul);
int send_Vp_Uc_Ul(){
  struct Vp_Uc_Ul lv;
  lv.v1 = 0;
  lv.v2 = 13;
  lv.v3 = 6117;
  return zig_recv_Vp_Uc_Ul(lv);
}

int recv_Vp_Uc_Us(struct Vp_Uc_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 38) return 2;
  if (lv.v3 != 12337) return 3;
  return 0;
}
struct Vp_Uc_Us ret_Vp_Uc_Us(){
  struct Vp_Uc_Us lv;
  lv.v1 = 0;
  lv.v2 = 38;
  lv.v3 = 12337;
  return lv;
}
int zig_recv_Vp_Uc_Us(struct Vp_Uc_Us);
int send_Vp_Uc_Us(){
  struct Vp_Uc_Us lv;
  lv.v1 = 0;
  lv.v2 = 38;
  lv.v3 = 12337;
  return zig_recv_Vp_Uc_Us(lv);
}

int recv_Vp_Uc_Vp(struct Vp_Uc_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 39) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Uc_Vp ret_Vp_Uc_Vp(){
  struct Vp_Uc_Vp lv;
  lv.v1 = 0;
  lv.v2 = 39;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Uc_Vp(struct Vp_Uc_Vp);
int send_Vp_Uc_Vp(){
  struct Vp_Uc_Vp lv;
  lv.v1 = 0;
  lv.v2 = 39;
  lv.v3 = 0;
  return zig_recv_Vp_Uc_Vp(lv);
}

int recv_Vp_Ui(struct Vp_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 819) return 2;
  return 0;
}
struct Vp_Ui ret_Vp_Ui(){
  struct Vp_Ui lv;
  lv.v1 = 0;
  lv.v2 = 819;
  return lv;
}
int zig_recv_Vp_Ui(struct Vp_Ui);
int send_Vp_Ui(){
  struct Vp_Ui lv;
  lv.v1 = 0;
  lv.v2 = 819;
  return zig_recv_Vp_Ui(lv);
}

int recv_Vp_Ui_C(struct Vp_Ui_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 14926) return 2;
  if (lv.v3 != 98) return 3;
  return 0;
}
struct Vp_Ui_C ret_Vp_Ui_C(){
  struct Vp_Ui_C lv;
  lv.v1 = 0;
  lv.v2 = 14926;
  lv.v3 = 98;
  return lv;
}
int zig_recv_Vp_Ui_C(struct Vp_Ui_C);
int send_Vp_Ui_C(){
  struct Vp_Ui_C lv;
  lv.v1 = 0;
  lv.v2 = 14926;
  lv.v3 = 98;
  return zig_recv_Vp_Ui_C(lv);
}

int recv_Vp_Ui_D(struct Vp_Ui_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 13042) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Vp_Ui_D ret_Vp_Ui_D(){
  struct Vp_Ui_D lv;
  lv.v1 = 0;
  lv.v2 = 13042;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Vp_Ui_D(struct Vp_Ui_D);
int send_Vp_Ui_D(){
  struct Vp_Ui_D lv;
  lv.v1 = 0;
  lv.v2 = 13042;
  lv.v3 = -2.125;
  return zig_recv_Vp_Ui_D(lv);
}

int recv_Vp_Ui_F(struct Vp_Ui_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 6209) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Vp_Ui_F ret_Vp_Ui_F(){
  struct Vp_Ui_F lv;
  lv.v1 = 0;
  lv.v2 = 6209;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Vp_Ui_F(struct Vp_Ui_F);
int send_Vp_Ui_F(){
  struct Vp_Ui_F lv;
  lv.v1 = 0;
  lv.v2 = 6209;
  lv.v3 = 0.5;
  return zig_recv_Vp_Ui_F(lv);
}

int recv_Vp_Ui_I(struct Vp_Ui_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 15474) return 2;
  if (lv.v3 != 15360) return 3;
  return 0;
}
struct Vp_Ui_I ret_Vp_Ui_I(){
  struct Vp_Ui_I lv;
  lv.v1 = 0;
  lv.v2 = 15474;
  lv.v3 = 15360;
  return lv;
}
int zig_recv_Vp_Ui_I(struct Vp_Ui_I);
int send_Vp_Ui_I(){
  struct Vp_Ui_I lv;
  lv.v1 = 0;
  lv.v2 = 15474;
  lv.v3 = 15360;
  return zig_recv_Vp_Ui_I(lv);
}

int recv_Vp_Ui_Ip(struct Vp_Ui_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 14297) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Ui_Ip ret_Vp_Ui_Ip(){
  struct Vp_Ui_Ip lv;
  lv.v1 = 0;
  lv.v2 = 14297;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Ui_Ip(struct Vp_Ui_Ip);
int send_Vp_Ui_Ip(){
  struct Vp_Ui_Ip lv;
  lv.v1 = 0;
  lv.v2 = 14297;
  lv.v3 = 0;
  return zig_recv_Vp_Ui_Ip(lv);
}

int recv_Vp_Ui_L(struct Vp_Ui_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 31410) return 2;
  if (lv.v3 != 14978) return 3;
  return 0;
}
struct Vp_Ui_L ret_Vp_Ui_L(){
  struct Vp_Ui_L lv;
  lv.v1 = 0;
  lv.v2 = 31410;
  lv.v3 = 14978;
  return lv;
}
int zig_recv_Vp_Ui_L(struct Vp_Ui_L);
int send_Vp_Ui_L(){
  struct Vp_Ui_L lv;
  lv.v1 = 0;
  lv.v2 = 31410;
  lv.v3 = 14978;
  return zig_recv_Vp_Ui_L(lv);
}

int recv_Vp_Ui_S(struct Vp_Ui_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 1025) return 2;
  if (lv.v3 != 14170) return 3;
  return 0;
}
struct Vp_Ui_S ret_Vp_Ui_S(){
  struct Vp_Ui_S lv;
  lv.v1 = 0;
  lv.v2 = 1025;
  lv.v3 = 14170;
  return lv;
}
int zig_recv_Vp_Ui_S(struct Vp_Ui_S);
int send_Vp_Ui_S(){
  struct Vp_Ui_S lv;
  lv.v1 = 0;
  lv.v2 = 1025;
  lv.v3 = 14170;
  return zig_recv_Vp_Ui_S(lv);
}

int recv_Vp_Ui_Uc(struct Vp_Ui_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 23983) return 2;
  if (lv.v3 != 88) return 3;
  return 0;
}
struct Vp_Ui_Uc ret_Vp_Ui_Uc(){
  struct Vp_Ui_Uc lv;
  lv.v1 = 0;
  lv.v2 = 23983;
  lv.v3 = 88;
  return lv;
}
int zig_recv_Vp_Ui_Uc(struct Vp_Ui_Uc);
int send_Vp_Ui_Uc(){
  struct Vp_Ui_Uc lv;
  lv.v1 = 0;
  lv.v2 = 23983;
  lv.v3 = 88;
  return zig_recv_Vp_Ui_Uc(lv);
}

int recv_Vp_Ui_Ui(struct Vp_Ui_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 99) return 2;
  if (lv.v3 != 30755) return 3;
  return 0;
}
struct Vp_Ui_Ui ret_Vp_Ui_Ui(){
  struct Vp_Ui_Ui lv;
  lv.v1 = 0;
  lv.v2 = 99;
  lv.v3 = 30755;
  return lv;
}
int zig_recv_Vp_Ui_Ui(struct Vp_Ui_Ui);
int send_Vp_Ui_Ui(){
  struct Vp_Ui_Ui lv;
  lv.v1 = 0;
  lv.v2 = 99;
  lv.v3 = 30755;
  return zig_recv_Vp_Ui_Ui(lv);
}

int recv_Vp_Ui_Ul(struct Vp_Ui_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 27055) return 2;
  if (lv.v3 != 7728) return 3;
  return 0;
}
struct Vp_Ui_Ul ret_Vp_Ui_Ul(){
  struct Vp_Ui_Ul lv;
  lv.v1 = 0;
  lv.v2 = 27055;
  lv.v3 = 7728;
  return lv;
}
int zig_recv_Vp_Ui_Ul(struct Vp_Ui_Ul);
int send_Vp_Ui_Ul(){
  struct Vp_Ui_Ul lv;
  lv.v1 = 0;
  lv.v2 = 27055;
  lv.v3 = 7728;
  return zig_recv_Vp_Ui_Ul(lv);
}

int recv_Vp_Ui_Us(struct Vp_Ui_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 21796) return 2;
  if (lv.v3 != 9331) return 3;
  return 0;
}
struct Vp_Ui_Us ret_Vp_Ui_Us(){
  struct Vp_Ui_Us lv;
  lv.v1 = 0;
  lv.v2 = 21796;
  lv.v3 = 9331;
  return lv;
}
int zig_recv_Vp_Ui_Us(struct Vp_Ui_Us);
int send_Vp_Ui_Us(){
  struct Vp_Ui_Us lv;
  lv.v1 = 0;
  lv.v2 = 21796;
  lv.v3 = 9331;
  return zig_recv_Vp_Ui_Us(lv);
}

int recv_Vp_Ui_Vp(struct Vp_Ui_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 4692) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Ui_Vp ret_Vp_Ui_Vp(){
  struct Vp_Ui_Vp lv;
  lv.v1 = 0;
  lv.v2 = 4692;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Ui_Vp(struct Vp_Ui_Vp);
int send_Vp_Ui_Vp(){
  struct Vp_Ui_Vp lv;
  lv.v1 = 0;
  lv.v2 = 4692;
  lv.v3 = 0;
  return zig_recv_Vp_Ui_Vp(lv);
}

int recv_Vp_Ul(struct Vp_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 5486) return 2;
  return 0;
}
struct Vp_Ul ret_Vp_Ul(){
  struct Vp_Ul lv;
  lv.v1 = 0;
  lv.v2 = 5486;
  return lv;
}
int zig_recv_Vp_Ul(struct Vp_Ul);
int send_Vp_Ul(){
  struct Vp_Ul lv;
  lv.v1 = 0;
  lv.v2 = 5486;
  return zig_recv_Vp_Ul(lv);
}

int recv_Vp_Ul_C(struct Vp_Ul_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 20933) return 2;
  if (lv.v3 != 118) return 3;
  return 0;
}
struct Vp_Ul_C ret_Vp_Ul_C(){
  struct Vp_Ul_C lv;
  lv.v1 = 0;
  lv.v2 = 20933;
  lv.v3 = 118;
  return lv;
}
int zig_recv_Vp_Ul_C(struct Vp_Ul_C);
int send_Vp_Ul_C(){
  struct Vp_Ul_C lv;
  lv.v1 = 0;
  lv.v2 = 20933;
  lv.v3 = 118;
  return zig_recv_Vp_Ul_C(lv);
}

int recv_Vp_Ul_D(struct Vp_Ul_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 27275) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Vp_Ul_D ret_Vp_Ul_D(){
  struct Vp_Ul_D lv;
  lv.v1 = 0;
  lv.v2 = 27275;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Vp_Ul_D(struct Vp_Ul_D);
int send_Vp_Ul_D(){
  struct Vp_Ul_D lv;
  lv.v1 = 0;
  lv.v2 = 27275;
  lv.v3 = 4.5;
  return zig_recv_Vp_Ul_D(lv);
}

int recv_Vp_Ul_F(struct Vp_Ul_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 19348) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Vp_Ul_F ret_Vp_Ul_F(){
  struct Vp_Ul_F lv;
  lv.v1 = 0;
  lv.v2 = 19348;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Vp_Ul_F(struct Vp_Ul_F);
int send_Vp_Ul_F(){
  struct Vp_Ul_F lv;
  lv.v1 = 0;
  lv.v2 = 19348;
  lv.v3 = 4.5;
  return zig_recv_Vp_Ul_F(lv);
}

int recv_Vp_Ul_I(struct Vp_Ul_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 6586) return 2;
  if (lv.v3 != 1397) return 3;
  return 0;
}
struct Vp_Ul_I ret_Vp_Ul_I(){
  struct Vp_Ul_I lv;
  lv.v1 = 0;
  lv.v2 = 6586;
  lv.v3 = 1397;
  return lv;
}
int zig_recv_Vp_Ul_I(struct Vp_Ul_I);
int send_Vp_Ul_I(){
  struct Vp_Ul_I lv;
  lv.v1 = 0;
  lv.v2 = 6586;
  lv.v3 = 1397;
  return zig_recv_Vp_Ul_I(lv);
}

int recv_Vp_Ul_Ip(struct Vp_Ul_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 3915) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Ul_Ip ret_Vp_Ul_Ip(){
  struct Vp_Ul_Ip lv;
  lv.v1 = 0;
  lv.v2 = 3915;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Ul_Ip(struct Vp_Ul_Ip);
int send_Vp_Ul_Ip(){
  struct Vp_Ul_Ip lv;
  lv.v1 = 0;
  lv.v2 = 3915;
  lv.v3 = 0;
  return zig_recv_Vp_Ul_Ip(lv);
}

int recv_Vp_Ul_L(struct Vp_Ul_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 2122) return 2;
  if (lv.v3 != 2907) return 3;
  return 0;
}
struct Vp_Ul_L ret_Vp_Ul_L(){
  struct Vp_Ul_L lv;
  lv.v1 = 0;
  lv.v2 = 2122;
  lv.v3 = 2907;
  return lv;
}
int zig_recv_Vp_Ul_L(struct Vp_Ul_L);
int send_Vp_Ul_L(){
  struct Vp_Ul_L lv;
  lv.v1 = 0;
  lv.v2 = 2122;
  lv.v3 = 2907;
  return zig_recv_Vp_Ul_L(lv);
}

int recv_Vp_Ul_S(struct Vp_Ul_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 26049) return 2;
  if (lv.v3 != 9797) return 3;
  return 0;
}
struct Vp_Ul_S ret_Vp_Ul_S(){
  struct Vp_Ul_S lv;
  lv.v1 = 0;
  lv.v2 = 26049;
  lv.v3 = 9797;
  return lv;
}
int zig_recv_Vp_Ul_S(struct Vp_Ul_S);
int send_Vp_Ul_S(){
  struct Vp_Ul_S lv;
  lv.v1 = 0;
  lv.v2 = 26049;
  lv.v3 = 9797;
  return zig_recv_Vp_Ul_S(lv);
}

int recv_Vp_Ul_Uc(struct Vp_Ul_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 20602) return 2;
  if (lv.v3 != 11) return 3;
  return 0;
}
struct Vp_Ul_Uc ret_Vp_Ul_Uc(){
  struct Vp_Ul_Uc lv;
  lv.v1 = 0;
  lv.v2 = 20602;
  lv.v3 = 11;
  return lv;
}
int zig_recv_Vp_Ul_Uc(struct Vp_Ul_Uc);
int send_Vp_Ul_Uc(){
  struct Vp_Ul_Uc lv;
  lv.v1 = 0;
  lv.v2 = 20602;
  lv.v3 = 11;
  return zig_recv_Vp_Ul_Uc(lv);
}

int recv_Vp_Ul_Ui(struct Vp_Ul_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 4547) return 2;
  if (lv.v3 != 23948) return 3;
  return 0;
}
struct Vp_Ul_Ui ret_Vp_Ul_Ui(){
  struct Vp_Ul_Ui lv;
  lv.v1 = 0;
  lv.v2 = 4547;
  lv.v3 = 23948;
  return lv;
}
int zig_recv_Vp_Ul_Ui(struct Vp_Ul_Ui);
int send_Vp_Ul_Ui(){
  struct Vp_Ul_Ui lv;
  lv.v1 = 0;
  lv.v2 = 4547;
  lv.v3 = 23948;
  return zig_recv_Vp_Ul_Ui(lv);
}

int recv_Vp_Ul_Ul(struct Vp_Ul_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 17343) return 2;
  if (lv.v3 != 2118) return 3;
  return 0;
}
struct Vp_Ul_Ul ret_Vp_Ul_Ul(){
  struct Vp_Ul_Ul lv;
  lv.v1 = 0;
  lv.v2 = 17343;
  lv.v3 = 2118;
  return lv;
}
int zig_recv_Vp_Ul_Ul(struct Vp_Ul_Ul);
int send_Vp_Ul_Ul(){
  struct Vp_Ul_Ul lv;
  lv.v1 = 0;
  lv.v2 = 17343;
  lv.v3 = 2118;
  return zig_recv_Vp_Ul_Ul(lv);
}

int recv_Vp_Ul_Us(struct Vp_Ul_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 20439) return 2;
  if (lv.v3 != 3748) return 3;
  return 0;
}
struct Vp_Ul_Us ret_Vp_Ul_Us(){
  struct Vp_Ul_Us lv;
  lv.v1 = 0;
  lv.v2 = 20439;
  lv.v3 = 3748;
  return lv;
}
int zig_recv_Vp_Ul_Us(struct Vp_Ul_Us);
int send_Vp_Ul_Us(){
  struct Vp_Ul_Us lv;
  lv.v1 = 0;
  lv.v2 = 20439;
  lv.v3 = 3748;
  return zig_recv_Vp_Ul_Us(lv);
}

int recv_Vp_Ul_Vp(struct Vp_Ul_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 29974) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Ul_Vp ret_Vp_Ul_Vp(){
  struct Vp_Ul_Vp lv;
  lv.v1 = 0;
  lv.v2 = 29974;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Ul_Vp(struct Vp_Ul_Vp);
int send_Vp_Ul_Vp(){
  struct Vp_Ul_Vp lv;
  lv.v1 = 0;
  lv.v2 = 29974;
  lv.v3 = 0;
  return zig_recv_Vp_Ul_Vp(lv);
}

int recv_Vp_Us(struct Vp_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 4604) return 2;
  return 0;
}
struct Vp_Us ret_Vp_Us(){
  struct Vp_Us lv;
  lv.v1 = 0;
  lv.v2 = 4604;
  return lv;
}
int zig_recv_Vp_Us(struct Vp_Us);
int send_Vp_Us(){
  struct Vp_Us lv;
  lv.v1 = 0;
  lv.v2 = 4604;
  return zig_recv_Vp_Us(lv);
}

int recv_Vp_Us_C(struct Vp_Us_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 27414) return 2;
  if (lv.v3 != 69) return 3;
  return 0;
}
struct Vp_Us_C ret_Vp_Us_C(){
  struct Vp_Us_C lv;
  lv.v1 = 0;
  lv.v2 = 27414;
  lv.v3 = 69;
  return lv;
}
int zig_recv_Vp_Us_C(struct Vp_Us_C);
int send_Vp_Us_C(){
  struct Vp_Us_C lv;
  lv.v1 = 0;
  lv.v2 = 27414;
  lv.v3 = 69;
  return zig_recv_Vp_Us_C(lv);
}

int recv_Vp_Us_D(struct Vp_Us_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 1973) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Vp_Us_D ret_Vp_Us_D(){
  struct Vp_Us_D lv;
  lv.v1 = 0;
  lv.v2 = 1973;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Vp_Us_D(struct Vp_Us_D);
int send_Vp_Us_D(){
  struct Vp_Us_D lv;
  lv.v1 = 0;
  lv.v2 = 1973;
  lv.v3 = 1.0;
  return zig_recv_Vp_Us_D(lv);
}

int recv_Vp_Us_F(struct Vp_Us_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 13536) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Vp_Us_F ret_Vp_Us_F(){
  struct Vp_Us_F lv;
  lv.v1 = 0;
  lv.v2 = 13536;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Vp_Us_F(struct Vp_Us_F);
int send_Vp_Us_F(){
  struct Vp_Us_F lv;
  lv.v1 = 0;
  lv.v2 = 13536;
  lv.v3 = 4.5;
  return zig_recv_Vp_Us_F(lv);
}

int recv_Vp_Us_I(struct Vp_Us_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 19941) return 2;
  if (lv.v3 != 20835) return 3;
  return 0;
}
struct Vp_Us_I ret_Vp_Us_I(){
  struct Vp_Us_I lv;
  lv.v1 = 0;
  lv.v2 = 19941;
  lv.v3 = 20835;
  return lv;
}
int zig_recv_Vp_Us_I(struct Vp_Us_I);
int send_Vp_Us_I(){
  struct Vp_Us_I lv;
  lv.v1 = 0;
  lv.v2 = 19941;
  lv.v3 = 20835;
  return zig_recv_Vp_Us_I(lv);
}

int recv_Vp_Us_Ip(struct Vp_Us_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 21849) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Us_Ip ret_Vp_Us_Ip(){
  struct Vp_Us_Ip lv;
  lv.v1 = 0;
  lv.v2 = 21849;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Us_Ip(struct Vp_Us_Ip);
int send_Vp_Us_Ip(){
  struct Vp_Us_Ip lv;
  lv.v1 = 0;
  lv.v2 = 21849;
  lv.v3 = 0;
  return zig_recv_Vp_Us_Ip(lv);
}

int recv_Vp_Us_L(struct Vp_Us_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 1972) return 2;
  if (lv.v3 != 3231) return 3;
  return 0;
}
struct Vp_Us_L ret_Vp_Us_L(){
  struct Vp_Us_L lv;
  lv.v1 = 0;
  lv.v2 = 1972;
  lv.v3 = 3231;
  return lv;
}
int zig_recv_Vp_Us_L(struct Vp_Us_L);
int send_Vp_Us_L(){
  struct Vp_Us_L lv;
  lv.v1 = 0;
  lv.v2 = 1972;
  lv.v3 = 3231;
  return zig_recv_Vp_Us_L(lv);
}

int recv_Vp_Us_S(struct Vp_Us_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 686) return 2;
  if (lv.v3 != 31896) return 3;
  return 0;
}
struct Vp_Us_S ret_Vp_Us_S(){
  struct Vp_Us_S lv;
  lv.v1 = 0;
  lv.v2 = 686;
  lv.v3 = 31896;
  return lv;
}
int zig_recv_Vp_Us_S(struct Vp_Us_S);
int send_Vp_Us_S(){
  struct Vp_Us_S lv;
  lv.v1 = 0;
  lv.v2 = 686;
  lv.v3 = 31896;
  return zig_recv_Vp_Us_S(lv);
}

int recv_Vp_Us_Uc(struct Vp_Us_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 22668) return 2;
  if (lv.v3 != 101) return 3;
  return 0;
}
struct Vp_Us_Uc ret_Vp_Us_Uc(){
  struct Vp_Us_Uc lv;
  lv.v1 = 0;
  lv.v2 = 22668;
  lv.v3 = 101;
  return lv;
}
int zig_recv_Vp_Us_Uc(struct Vp_Us_Uc);
int send_Vp_Us_Uc(){
  struct Vp_Us_Uc lv;
  lv.v1 = 0;
  lv.v2 = 22668;
  lv.v3 = 101;
  return zig_recv_Vp_Us_Uc(lv);
}

int recv_Vp_Us_Ui(struct Vp_Us_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 15892) return 2;
  if (lv.v3 != 7824) return 3;
  return 0;
}
struct Vp_Us_Ui ret_Vp_Us_Ui(){
  struct Vp_Us_Ui lv;
  lv.v1 = 0;
  lv.v2 = 15892;
  lv.v3 = 7824;
  return lv;
}
int zig_recv_Vp_Us_Ui(struct Vp_Us_Ui);
int send_Vp_Us_Ui(){
  struct Vp_Us_Ui lv;
  lv.v1 = 0;
  lv.v2 = 15892;
  lv.v3 = 7824;
  return zig_recv_Vp_Us_Ui(lv);
}

int recv_Vp_Us_Ul(struct Vp_Us_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 31019) return 2;
  if (lv.v3 != 32184) return 3;
  return 0;
}
struct Vp_Us_Ul ret_Vp_Us_Ul(){
  struct Vp_Us_Ul lv;
  lv.v1 = 0;
  lv.v2 = 31019;
  lv.v3 = 32184;
  return lv;
}
int zig_recv_Vp_Us_Ul(struct Vp_Us_Ul);
int send_Vp_Us_Ul(){
  struct Vp_Us_Ul lv;
  lv.v1 = 0;
  lv.v2 = 31019;
  lv.v3 = 32184;
  return zig_recv_Vp_Us_Ul(lv);
}

int recv_Vp_Us_Us(struct Vp_Us_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 21460) return 2;
  if (lv.v3 != 26681) return 3;
  return 0;
}
struct Vp_Us_Us ret_Vp_Us_Us(){
  struct Vp_Us_Us lv;
  lv.v1 = 0;
  lv.v2 = 21460;
  lv.v3 = 26681;
  return lv;
}
int zig_recv_Vp_Us_Us(struct Vp_Us_Us);
int send_Vp_Us_Us(){
  struct Vp_Us_Us lv;
  lv.v1 = 0;
  lv.v2 = 21460;
  lv.v3 = 26681;
  return zig_recv_Vp_Us_Us(lv);
}

int recv_Vp_Us_Vp(struct Vp_Us_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 30188) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Us_Vp ret_Vp_Us_Vp(){
  struct Vp_Us_Vp lv;
  lv.v1 = 0;
  lv.v2 = 30188;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Us_Vp(struct Vp_Us_Vp);
int send_Vp_Us_Vp(){
  struct Vp_Us_Vp lv;
  lv.v1 = 0;
  lv.v2 = 30188;
  lv.v3 = 0;
  return zig_recv_Vp_Us_Vp(lv);
}

int recv_Vp_Vp(struct Vp_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct Vp_Vp ret_Vp_Vp(){
  struct Vp_Vp lv;
  lv.v1 = 0;
  lv.v2 = 0;
  return lv;
}
int zig_recv_Vp_Vp(struct Vp_Vp);
int send_Vp_Vp(){
  struct Vp_Vp lv;
  lv.v1 = 0;
  lv.v2 = 0;
  return zig_recv_Vp_Vp(lv);
}

int recv_Vp_Vp_C(struct Vp_Vp_C lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 106) return 3;
  return 0;
}
struct Vp_Vp_C ret_Vp_Vp_C(){
  struct Vp_Vp_C lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 106;
  return lv;
}
int zig_recv_Vp_Vp_C(struct Vp_Vp_C);
int send_Vp_Vp_C(){
  struct Vp_Vp_C lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 106;
  return zig_recv_Vp_Vp_C(lv);
}

int recv_Vp_Vp_D(struct Vp_Vp_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Vp_Vp_D ret_Vp_Vp_D(){
  struct Vp_Vp_D lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Vp_Vp_D(struct Vp_Vp_D);
int send_Vp_Vp_D(){
  struct Vp_Vp_D lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return zig_recv_Vp_Vp_D(lv);
}

int recv_Vp_Vp_F(struct Vp_Vp_F lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Vp_Vp_F ret_Vp_Vp_F(){
  struct Vp_Vp_F lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Vp_Vp_F(struct Vp_Vp_F);
int send_Vp_Vp_F(){
  struct Vp_Vp_F lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return zig_recv_Vp_Vp_F(lv);
}

int recv_Vp_Vp_I(struct Vp_Vp_I lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 18595) return 3;
  return 0;
}
struct Vp_Vp_I ret_Vp_Vp_I(){
  struct Vp_Vp_I lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 18595;
  return lv;
}
int zig_recv_Vp_Vp_I(struct Vp_Vp_I);
int send_Vp_Vp_I(){
  struct Vp_Vp_I lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 18595;
  return zig_recv_Vp_Vp_I(lv);
}

int recv_Vp_Vp_Ip(struct Vp_Vp_Ip lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Vp_Ip ret_Vp_Vp_Ip(){
  struct Vp_Vp_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Vp_Ip(struct Vp_Vp_Ip);
int send_Vp_Vp_Ip(){
  struct Vp_Vp_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Vp_Vp_Ip(lv);
}

int recv_Vp_Vp_L(struct Vp_Vp_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7966) return 3;
  return 0;
}
struct Vp_Vp_L ret_Vp_Vp_L(){
  struct Vp_Vp_L lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 7966;
  return lv;
}
int zig_recv_Vp_Vp_L(struct Vp_Vp_L);
int send_Vp_Vp_L(){
  struct Vp_Vp_L lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 7966;
  return zig_recv_Vp_Vp_L(lv);
}

int recv_Vp_Vp_S(struct Vp_Vp_S lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 15595) return 3;
  return 0;
}
struct Vp_Vp_S ret_Vp_Vp_S(){
  struct Vp_Vp_S lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 15595;
  return lv;
}
int zig_recv_Vp_Vp_S(struct Vp_Vp_S);
int send_Vp_Vp_S(){
  struct Vp_Vp_S lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 15595;
  return zig_recv_Vp_Vp_S(lv);
}

int recv_Vp_Vp_Uc(struct Vp_Vp_Uc lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 17) return 3;
  return 0;
}
struct Vp_Vp_Uc ret_Vp_Vp_Uc(){
  struct Vp_Vp_Uc lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 17;
  return lv;
}
int zig_recv_Vp_Vp_Uc(struct Vp_Vp_Uc);
int send_Vp_Vp_Uc(){
  struct Vp_Vp_Uc lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 17;
  return zig_recv_Vp_Vp_Uc(lv);
}

int recv_Vp_Vp_Ui(struct Vp_Vp_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 12780) return 3;
  return 0;
}
struct Vp_Vp_Ui ret_Vp_Vp_Ui(){
  struct Vp_Vp_Ui lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 12780;
  return lv;
}
int zig_recv_Vp_Vp_Ui(struct Vp_Vp_Ui);
int send_Vp_Vp_Ui(){
  struct Vp_Vp_Ui lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 12780;
  return zig_recv_Vp_Vp_Ui(lv);
}

int recv_Vp_Vp_Ul(struct Vp_Vp_Ul lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 12179) return 3;
  return 0;
}
struct Vp_Vp_Ul ret_Vp_Vp_Ul(){
  struct Vp_Vp_Ul lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 12179;
  return lv;
}
int zig_recv_Vp_Vp_Ul(struct Vp_Vp_Ul);
int send_Vp_Vp_Ul(){
  struct Vp_Vp_Ul lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 12179;
  return zig_recv_Vp_Vp_Ul(lv);
}

int recv_Vp_Vp_Us(struct Vp_Vp_Us lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 11303) return 3;
  return 0;
}
struct Vp_Vp_Us ret_Vp_Vp_Us(){
  struct Vp_Vp_Us lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 11303;
  return lv;
}
int zig_recv_Vp_Vp_Us(struct Vp_Vp_Us);
int send_Vp_Vp_Us(){
  struct Vp_Vp_Us lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 11303;
  return zig_recv_Vp_Vp_Us(lv);
}

int recv_Vp_Vp_Vp(struct Vp_Vp_Vp lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Vp_Vp_Vp ret_Vp_Vp_Vp(){
  struct Vp_Vp_Vp lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Vp_Vp_Vp(struct Vp_Vp_Vp);
int send_Vp_Vp_Vp(){
  struct Vp_Vp_Vp lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Vp_Vp_Vp(lv);
}

