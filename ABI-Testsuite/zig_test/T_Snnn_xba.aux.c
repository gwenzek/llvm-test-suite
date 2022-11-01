#include "T_Snnn_xba.h"

int recv_Uc_D_C(struct Uc_D_C lv){
  if (lv.v1 != 3) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 89) return 3;
  return 0;
}
struct Uc_D_C ret_Uc_D_C(){
  struct Uc_D_C lv;
  lv.v1 = 3;
  lv.v2 = -0.25;
  lv.v3 = 89;
  return lv;
}
int zig_recv_Uc_D_C(struct Uc_D_C);
int send_Uc_D_C(){
  struct Uc_D_C lv;
  lv.v1 = 3;
  lv.v2 = -0.25;
  lv.v3 = 89;
  return zig_recv_Uc_D_C(lv);
}

int recv_Uc_D_D(struct Uc_D_D lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Uc_D_D ret_Uc_D_D(){
  struct Uc_D_D lv;
  lv.v1 = 9;
  lv.v2 = 7.0;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Uc_D_D(struct Uc_D_D);
int send_Uc_D_D(){
  struct Uc_D_D lv;
  lv.v1 = 9;
  lv.v2 = 7.0;
  lv.v3 = 1.0;
  return zig_recv_Uc_D_D(lv);
}

int recv_Uc_D_F(struct Uc_D_F lv){
  if (lv.v1 != 95) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Uc_D_F ret_Uc_D_F(){
  struct Uc_D_F lv;
  lv.v1 = 95;
  lv.v2 = 4.5;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Uc_D_F(struct Uc_D_F);
int send_Uc_D_F(){
  struct Uc_D_F lv;
  lv.v1 = 95;
  lv.v2 = 4.5;
  lv.v3 = 0.5;
  return zig_recv_Uc_D_F(lv);
}

int recv_Uc_D_I(struct Uc_D_I lv){
  if (lv.v1 != 26) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 22319) return 3;
  return 0;
}
struct Uc_D_I ret_Uc_D_I(){
  struct Uc_D_I lv;
  lv.v1 = 26;
  lv.v2 = -2.125;
  lv.v3 = 22319;
  return lv;
}
int zig_recv_Uc_D_I(struct Uc_D_I);
int send_Uc_D_I(){
  struct Uc_D_I lv;
  lv.v1 = 26;
  lv.v2 = -2.125;
  lv.v3 = 22319;
  return zig_recv_Uc_D_I(lv);
}

int recv_Uc_D_Ip(struct Uc_D_Ip lv){
  if (lv.v1 != 101) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_D_Ip ret_Uc_D_Ip(){
  struct Uc_D_Ip lv;
  lv.v1 = 101;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_D_Ip(struct Uc_D_Ip);
int send_Uc_D_Ip(){
  struct Uc_D_Ip lv;
  lv.v1 = 101;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return zig_recv_Uc_D_Ip(lv);
}

int recv_Uc_D_L(struct Uc_D_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 4136) return 3;
  return 0;
}
struct Uc_D_L ret_Uc_D_L(){
  struct Uc_D_L lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = 4136;
  return lv;
}
int zig_recv_Uc_D_L(struct Uc_D_L);
int send_Uc_D_L(){
  struct Uc_D_L lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = 4136;
  return zig_recv_Uc_D_L(lv);
}

int recv_Uc_D_S(struct Uc_D_S lv){
  if (lv.v1 != 1) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 29141) return 3;
  return 0;
}
struct Uc_D_S ret_Uc_D_S(){
  struct Uc_D_S lv;
  lv.v1 = 1;
  lv.v2 = 0.875;
  lv.v3 = 29141;
  return lv;
}
int zig_recv_Uc_D_S(struct Uc_D_S);
int send_Uc_D_S(){
  struct Uc_D_S lv;
  lv.v1 = 1;
  lv.v2 = 0.875;
  lv.v3 = 29141;
  return zig_recv_Uc_D_S(lv);
}

int recv_Uc_D_Uc(struct Uc_D_Uc lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 63) return 3;
  return 0;
}
struct Uc_D_Uc ret_Uc_D_Uc(){
  struct Uc_D_Uc lv;
  lv.v1 = 9;
  lv.v2 = 1.0;
  lv.v3 = 63;
  return lv;
}
int zig_recv_Uc_D_Uc(struct Uc_D_Uc);
int send_Uc_D_Uc(){
  struct Uc_D_Uc lv;
  lv.v1 = 9;
  lv.v2 = 1.0;
  lv.v3 = 63;
  return zig_recv_Uc_D_Uc(lv);
}

int recv_Uc_D_Ui(struct Uc_D_Ui lv){
  if (lv.v1 != 10) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 27979) return 3;
  return 0;
}
struct Uc_D_Ui ret_Uc_D_Ui(){
  struct Uc_D_Ui lv;
  lv.v1 = 10;
  lv.v2 = 1.0;
  lv.v3 = 27979;
  return lv;
}
int zig_recv_Uc_D_Ui(struct Uc_D_Ui);
int send_Uc_D_Ui(){
  struct Uc_D_Ui lv;
  lv.v1 = 10;
  lv.v2 = 1.0;
  lv.v3 = 27979;
  return zig_recv_Uc_D_Ui(lv);
}

int recv_Uc_D_Ul(struct Uc_D_Ul lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 7107) return 3;
  return 0;
}
struct Uc_D_Ul ret_Uc_D_Ul(){
  struct Uc_D_Ul lv;
  lv.v1 = 9;
  lv.v2 = 4.5;
  lv.v3 = 7107;
  return lv;
}
int zig_recv_Uc_D_Ul(struct Uc_D_Ul);
int send_Uc_D_Ul(){
  struct Uc_D_Ul lv;
  lv.v1 = 9;
  lv.v2 = 4.5;
  lv.v3 = 7107;
  return zig_recv_Uc_D_Ul(lv);
}

int recv_Uc_D_Us(struct Uc_D_Us lv){
  if (lv.v1 != 61) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 24060) return 3;
  return 0;
}
struct Uc_D_Us ret_Uc_D_Us(){
  struct Uc_D_Us lv;
  lv.v1 = 61;
  lv.v2 = 7.0;
  lv.v3 = 24060;
  return lv;
}
int zig_recv_Uc_D_Us(struct Uc_D_Us);
int send_Uc_D_Us(){
  struct Uc_D_Us lv;
  lv.v1 = 61;
  lv.v2 = 7.0;
  lv.v3 = 24060;
  return zig_recv_Uc_D_Us(lv);
}

int recv_Uc_D_Vp(struct Uc_D_Vp lv){
  if (lv.v1 != 28) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_D_Vp ret_Uc_D_Vp(){
  struct Uc_D_Vp lv;
  lv.v1 = 28;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_D_Vp(struct Uc_D_Vp);
int send_Uc_D_Vp(){
  struct Uc_D_Vp lv;
  lv.v1 = 28;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return zig_recv_Uc_D_Vp(lv);
}

int recv_Uc_F(struct Uc_F lv){
  if (lv.v1 != 95) return 1;
  if (lv.v2 != 0.875) return 2;
  return 0;
}
struct Uc_F ret_Uc_F(){
  struct Uc_F lv;
  lv.v1 = 95;
  lv.v2 = 0.875;
  return lv;
}
int zig_recv_Uc_F(struct Uc_F);
int send_Uc_F(){
  struct Uc_F lv;
  lv.v1 = 95;
  lv.v2 = 0.875;
  return zig_recv_Uc_F(lv);
}

int recv_Uc_F_C(struct Uc_F_C lv){
  if (lv.v1 != 97) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 83) return 3;
  return 0;
}
struct Uc_F_C ret_Uc_F_C(){
  struct Uc_F_C lv;
  lv.v1 = 97;
  lv.v2 = 0.5;
  lv.v3 = 83;
  return lv;
}
int zig_recv_Uc_F_C(struct Uc_F_C);
int send_Uc_F_C(){
  struct Uc_F_C lv;
  lv.v1 = 97;
  lv.v2 = 0.5;
  lv.v3 = 83;
  return zig_recv_Uc_F_C(lv);
}

int recv_Uc_F_D(struct Uc_F_D lv){
  if (lv.v1 != 82) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Uc_F_D ret_Uc_F_D(){
  struct Uc_F_D lv;
  lv.v1 = 82;
  lv.v2 = 0.5;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Uc_F_D(struct Uc_F_D);
int send_Uc_F_D(){
  struct Uc_F_D lv;
  lv.v1 = 82;
  lv.v2 = 0.5;
  lv.v3 = 7.0;
  return zig_recv_Uc_F_D(lv);
}

int recv_Uc_F_F(struct Uc_F_F lv){
  if (lv.v1 != 41) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Uc_F_F ret_Uc_F_F(){
  struct Uc_F_F lv;
  lv.v1 = 41;
  lv.v2 = 0.5;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Uc_F_F(struct Uc_F_F);
int send_Uc_F_F(){
  struct Uc_F_F lv;
  lv.v1 = 41;
  lv.v2 = 0.5;
  lv.v3 = -2.125;
  return zig_recv_Uc_F_F(lv);
}

int recv_Uc_F_I(struct Uc_F_I lv){
  if (lv.v1 != 91) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 10292) return 3;
  return 0;
}
struct Uc_F_I ret_Uc_F_I(){
  struct Uc_F_I lv;
  lv.v1 = 91;
  lv.v2 = 1.0;
  lv.v3 = 10292;
  return lv;
}
int zig_recv_Uc_F_I(struct Uc_F_I);
int send_Uc_F_I(){
  struct Uc_F_I lv;
  lv.v1 = 91;
  lv.v2 = 1.0;
  lv.v3 = 10292;
  return zig_recv_Uc_F_I(lv);
}

int recv_Uc_F_Ip(struct Uc_F_Ip lv){
  if (lv.v1 != 3) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_F_Ip ret_Uc_F_Ip(){
  struct Uc_F_Ip lv;
  lv.v1 = 3;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_F_Ip(struct Uc_F_Ip);
int send_Uc_F_Ip(){
  struct Uc_F_Ip lv;
  lv.v1 = 3;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return zig_recv_Uc_F_Ip(lv);
}

int recv_Uc_F_L(struct Uc_F_L lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 30255) return 3;
  return 0;
}
struct Uc_F_L ret_Uc_F_L(){
  struct Uc_F_L lv;
  lv.v1 = 0;
  lv.v2 = 0.5;
  lv.v3 = 30255;
  return lv;
}
int zig_recv_Uc_F_L(struct Uc_F_L);
int send_Uc_F_L(){
  struct Uc_F_L lv;
  lv.v1 = 0;
  lv.v2 = 0.5;
  lv.v3 = 30255;
  return zig_recv_Uc_F_L(lv);
}

int recv_Uc_F_S(struct Uc_F_S lv){
  if (lv.v1 != 103) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 15970) return 3;
  return 0;
}
struct Uc_F_S ret_Uc_F_S(){
  struct Uc_F_S lv;
  lv.v1 = 103;
  lv.v2 = 1.0;
  lv.v3 = 15970;
  return lv;
}
int zig_recv_Uc_F_S(struct Uc_F_S);
int send_Uc_F_S(){
  struct Uc_F_S lv;
  lv.v1 = 103;
  lv.v2 = 1.0;
  lv.v3 = 15970;
  return zig_recv_Uc_F_S(lv);
}

int recv_Uc_F_Uc(struct Uc_F_Uc lv){
  if (lv.v1 != 53) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 94) return 3;
  return 0;
}
struct Uc_F_Uc ret_Uc_F_Uc(){
  struct Uc_F_Uc lv;
  lv.v1 = 53;
  lv.v2 = 7.0;
  lv.v3 = 94;
  return lv;
}
int zig_recv_Uc_F_Uc(struct Uc_F_Uc);
int send_Uc_F_Uc(){
  struct Uc_F_Uc lv;
  lv.v1 = 53;
  lv.v2 = 7.0;
  lv.v3 = 94;
  return zig_recv_Uc_F_Uc(lv);
}

int recv_Uc_F_Ui(struct Uc_F_Ui lv){
  if (lv.v1 != 88) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 1854) return 3;
  return 0;
}
struct Uc_F_Ui ret_Uc_F_Ui(){
  struct Uc_F_Ui lv;
  lv.v1 = 88;
  lv.v2 = 0.5;
  lv.v3 = 1854;
  return lv;
}
int zig_recv_Uc_F_Ui(struct Uc_F_Ui);
int send_Uc_F_Ui(){
  struct Uc_F_Ui lv;
  lv.v1 = 88;
  lv.v2 = 0.5;
  lv.v3 = 1854;
  return zig_recv_Uc_F_Ui(lv);
}

int recv_Uc_F_Ul(struct Uc_F_Ul lv){
  if (lv.v1 != 96) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 10992) return 3;
  return 0;
}
struct Uc_F_Ul ret_Uc_F_Ul(){
  struct Uc_F_Ul lv;
  lv.v1 = 96;
  lv.v2 = -2.125;
  lv.v3 = 10992;
  return lv;
}
int zig_recv_Uc_F_Ul(struct Uc_F_Ul);
int send_Uc_F_Ul(){
  struct Uc_F_Ul lv;
  lv.v1 = 96;
  lv.v2 = -2.125;
  lv.v3 = 10992;
  return zig_recv_Uc_F_Ul(lv);
}

int recv_Uc_F_Us(struct Uc_F_Us lv){
  if (lv.v1 != 59) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 6216) return 3;
  return 0;
}
struct Uc_F_Us ret_Uc_F_Us(){
  struct Uc_F_Us lv;
  lv.v1 = 59;
  lv.v2 = 0.875;
  lv.v3 = 6216;
  return lv;
}
int zig_recv_Uc_F_Us(struct Uc_F_Us);
int send_Uc_F_Us(){
  struct Uc_F_Us lv;
  lv.v1 = 59;
  lv.v2 = 0.875;
  lv.v3 = 6216;
  return zig_recv_Uc_F_Us(lv);
}

int recv_Uc_F_Vp(struct Uc_F_Vp lv){
  if (lv.v1 != 5) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_F_Vp ret_Uc_F_Vp(){
  struct Uc_F_Vp lv;
  lv.v1 = 5;
  lv.v2 = 4.5;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_F_Vp(struct Uc_F_Vp);
int send_Uc_F_Vp(){
  struct Uc_F_Vp lv;
  lv.v1 = 5;
  lv.v2 = 4.5;
  lv.v3 = 0;
  return zig_recv_Uc_F_Vp(lv);
}

int recv_Uc_I(struct Uc_I lv){
  if (lv.v1 != 114) return 1;
  if (lv.v2 != 16216) return 2;
  return 0;
}
struct Uc_I ret_Uc_I(){
  struct Uc_I lv;
  lv.v1 = 114;
  lv.v2 = 16216;
  return lv;
}
int zig_recv_Uc_I(struct Uc_I);
int send_Uc_I(){
  struct Uc_I lv;
  lv.v1 = 114;
  lv.v2 = 16216;
  return zig_recv_Uc_I(lv);
}

int recv_Uc_I_C(struct Uc_I_C lv){
  if (lv.v1 != 124) return 1;
  if (lv.v2 != 25853) return 2;
  if (lv.v3 != 104) return 3;
  return 0;
}
struct Uc_I_C ret_Uc_I_C(){
  struct Uc_I_C lv;
  lv.v1 = 124;
  lv.v2 = 25853;
  lv.v3 = 104;
  return lv;
}
int zig_recv_Uc_I_C(struct Uc_I_C);
int send_Uc_I_C(){
  struct Uc_I_C lv;
  lv.v1 = 124;
  lv.v2 = 25853;
  lv.v3 = 104;
  return zig_recv_Uc_I_C(lv);
}

int recv_Uc_I_D(struct Uc_I_D lv){
  if (lv.v1 != 108) return 1;
  if (lv.v2 != 16942) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Uc_I_D ret_Uc_I_D(){
  struct Uc_I_D lv;
  lv.v1 = 108;
  lv.v2 = 16942;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Uc_I_D(struct Uc_I_D);
int send_Uc_I_D(){
  struct Uc_I_D lv;
  lv.v1 = 108;
  lv.v2 = 16942;
  lv.v3 = 0.875;
  return zig_recv_Uc_I_D(lv);
}

int recv_Uc_I_F(struct Uc_I_F lv){
  if (lv.v1 != 29) return 1;
  if (lv.v2 != 12247) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Uc_I_F ret_Uc_I_F(){
  struct Uc_I_F lv;
  lv.v1 = 29;
  lv.v2 = 12247;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Uc_I_F(struct Uc_I_F);
int send_Uc_I_F(){
  struct Uc_I_F lv;
  lv.v1 = 29;
  lv.v2 = 12247;
  lv.v3 = 7.0;
  return zig_recv_Uc_I_F(lv);
}

int recv_Uc_I_I(struct Uc_I_I lv){
  if (lv.v1 != 60) return 1;
  if (lv.v2 != 7544) return 2;
  if (lv.v3 != 6612) return 3;
  return 0;
}
struct Uc_I_I ret_Uc_I_I(){
  struct Uc_I_I lv;
  lv.v1 = 60;
  lv.v2 = 7544;
  lv.v3 = 6612;
  return lv;
}
int zig_recv_Uc_I_I(struct Uc_I_I);
int send_Uc_I_I(){
  struct Uc_I_I lv;
  lv.v1 = 60;
  lv.v2 = 7544;
  lv.v3 = 6612;
  return zig_recv_Uc_I_I(lv);
}

int recv_Uc_I_Ip(struct Uc_I_Ip lv){
  if (lv.v1 != 18) return 1;
  if (lv.v2 != 32746) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_I_Ip ret_Uc_I_Ip(){
  struct Uc_I_Ip lv;
  lv.v1 = 18;
  lv.v2 = 32746;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_I_Ip(struct Uc_I_Ip);
int send_Uc_I_Ip(){
  struct Uc_I_Ip lv;
  lv.v1 = 18;
  lv.v2 = 32746;
  lv.v3 = 0;
  return zig_recv_Uc_I_Ip(lv);
}

int recv_Uc_I_L(struct Uc_I_L lv){
  if (lv.v1 != 113) return 1;
  if (lv.v2 != 36) return 2;
  if (lv.v3 != 32506) return 3;
  return 0;
}
struct Uc_I_L ret_Uc_I_L(){
  struct Uc_I_L lv;
  lv.v1 = 113;
  lv.v2 = 36;
  lv.v3 = 32506;
  return lv;
}
int zig_recv_Uc_I_L(struct Uc_I_L);
int send_Uc_I_L(){
  struct Uc_I_L lv;
  lv.v1 = 113;
  lv.v2 = 36;
  lv.v3 = 32506;
  return zig_recv_Uc_I_L(lv);
}

int recv_Uc_I_S(struct Uc_I_S lv){
  if (lv.v1 != 58) return 1;
  if (lv.v2 != 28832) return 2;
  if (lv.v3 != 32618) return 3;
  return 0;
}
struct Uc_I_S ret_Uc_I_S(){
  struct Uc_I_S lv;
  lv.v1 = 58;
  lv.v2 = 28832;
  lv.v3 = 32618;
  return lv;
}
int zig_recv_Uc_I_S(struct Uc_I_S);
int send_Uc_I_S(){
  struct Uc_I_S lv;
  lv.v1 = 58;
  lv.v2 = 28832;
  lv.v3 = 32618;
  return zig_recv_Uc_I_S(lv);
}

int recv_Uc_I_Uc(struct Uc_I_Uc lv){
  if (lv.v1 != 113) return 1;
  if (lv.v2 != 28710) return 2;
  if (lv.v3 != 106) return 3;
  return 0;
}
struct Uc_I_Uc ret_Uc_I_Uc(){
  struct Uc_I_Uc lv;
  lv.v1 = 113;
  lv.v2 = 28710;
  lv.v3 = 106;
  return lv;
}
int zig_recv_Uc_I_Uc(struct Uc_I_Uc);
int send_Uc_I_Uc(){
  struct Uc_I_Uc lv;
  lv.v1 = 113;
  lv.v2 = 28710;
  lv.v3 = 106;
  return zig_recv_Uc_I_Uc(lv);
}

int recv_Uc_I_Ui(struct Uc_I_Ui lv){
  if (lv.v1 != 15) return 1;
  if (lv.v2 != 11634) return 2;
  if (lv.v3 != 8763) return 3;
  return 0;
}
struct Uc_I_Ui ret_Uc_I_Ui(){
  struct Uc_I_Ui lv;
  lv.v1 = 15;
  lv.v2 = 11634;
  lv.v3 = 8763;
  return lv;
}
int zig_recv_Uc_I_Ui(struct Uc_I_Ui);
int send_Uc_I_Ui(){
  struct Uc_I_Ui lv;
  lv.v1 = 15;
  lv.v2 = 11634;
  lv.v3 = 8763;
  return zig_recv_Uc_I_Ui(lv);
}

int recv_Uc_I_Ul(struct Uc_I_Ul lv){
  if (lv.v1 != 105) return 1;
  if (lv.v2 != 18283) return 2;
  if (lv.v3 != 21389) return 3;
  return 0;
}
struct Uc_I_Ul ret_Uc_I_Ul(){
  struct Uc_I_Ul lv;
  lv.v1 = 105;
  lv.v2 = 18283;
  lv.v3 = 21389;
  return lv;
}
int zig_recv_Uc_I_Ul(struct Uc_I_Ul);
int send_Uc_I_Ul(){
  struct Uc_I_Ul lv;
  lv.v1 = 105;
  lv.v2 = 18283;
  lv.v3 = 21389;
  return zig_recv_Uc_I_Ul(lv);
}

int recv_Uc_I_Us(struct Uc_I_Us lv){
  if (lv.v1 != 75) return 1;
  if (lv.v2 != 2635) return 2;
  if (lv.v3 != 14892) return 3;
  return 0;
}
struct Uc_I_Us ret_Uc_I_Us(){
  struct Uc_I_Us lv;
  lv.v1 = 75;
  lv.v2 = 2635;
  lv.v3 = 14892;
  return lv;
}
int zig_recv_Uc_I_Us(struct Uc_I_Us);
int send_Uc_I_Us(){
  struct Uc_I_Us lv;
  lv.v1 = 75;
  lv.v2 = 2635;
  lv.v3 = 14892;
  return zig_recv_Uc_I_Us(lv);
}

int recv_Uc_I_Vp(struct Uc_I_Vp lv){
  if (lv.v1 != 96) return 1;
  if (lv.v2 != 16481) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_I_Vp ret_Uc_I_Vp(){
  struct Uc_I_Vp lv;
  lv.v1 = 96;
  lv.v2 = 16481;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_I_Vp(struct Uc_I_Vp);
int send_Uc_I_Vp(){
  struct Uc_I_Vp lv;
  lv.v1 = 96;
  lv.v2 = 16481;
  lv.v3 = 0;
  return zig_recv_Uc_I_Vp(lv);
}

int recv_Uc_Ip(struct Uc_Ip lv){
  if (lv.v1 != 12) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct Uc_Ip ret_Uc_Ip(){
  struct Uc_Ip lv;
  lv.v1 = 12;
  lv.v2 = 0;
  return lv;
}
int zig_recv_Uc_Ip(struct Uc_Ip);
int send_Uc_Ip(){
  struct Uc_Ip lv;
  lv.v1 = 12;
  lv.v2 = 0;
  return zig_recv_Uc_Ip(lv);
}

int recv_Uc_Ip_C(struct Uc_Ip_C lv){
  if (lv.v1 != 58) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 120) return 3;
  return 0;
}
struct Uc_Ip_C ret_Uc_Ip_C(){
  struct Uc_Ip_C lv;
  lv.v1 = 58;
  lv.v2 = 0;
  lv.v3 = 120;
  return lv;
}
int zig_recv_Uc_Ip_C(struct Uc_Ip_C);
int send_Uc_Ip_C(){
  struct Uc_Ip_C lv;
  lv.v1 = 58;
  lv.v2 = 0;
  lv.v3 = 120;
  return zig_recv_Uc_Ip_C(lv);
}

int recv_Uc_Ip_D(struct Uc_Ip_D lv){
  if (lv.v1 != 66) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Uc_Ip_D ret_Uc_Ip_D(){
  struct Uc_Ip_D lv;
  lv.v1 = 66;
  lv.v2 = 0;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Uc_Ip_D(struct Uc_Ip_D);
int send_Uc_Ip_D(){
  struct Uc_Ip_D lv;
  lv.v1 = 66;
  lv.v2 = 0;
  lv.v3 = 7.0;
  return zig_recv_Uc_Ip_D(lv);
}

int recv_Uc_Ip_F(struct Uc_Ip_F lv){
  if (lv.v1 != 103) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Uc_Ip_F ret_Uc_Ip_F(){
  struct Uc_Ip_F lv;
  lv.v1 = 103;
  lv.v2 = 0;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Uc_Ip_F(struct Uc_Ip_F);
int send_Uc_Ip_F(){
  struct Uc_Ip_F lv;
  lv.v1 = 103;
  lv.v2 = 0;
  lv.v3 = 1.0;
  return zig_recv_Uc_Ip_F(lv);
}

int recv_Uc_Ip_I(struct Uc_Ip_I lv){
  if (lv.v1 != 20) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 13416) return 3;
  return 0;
}
struct Uc_Ip_I ret_Uc_Ip_I(){
  struct Uc_Ip_I lv;
  lv.v1 = 20;
  lv.v2 = 0;
  lv.v3 = 13416;
  return lv;
}
int zig_recv_Uc_Ip_I(struct Uc_Ip_I);
int send_Uc_Ip_I(){
  struct Uc_Ip_I lv;
  lv.v1 = 20;
  lv.v2 = 0;
  lv.v3 = 13416;
  return zig_recv_Uc_Ip_I(lv);
}

int recv_Uc_Ip_Ip(struct Uc_Ip_Ip lv){
  if (lv.v1 != 117) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Ip_Ip ret_Uc_Ip_Ip(){
  struct Uc_Ip_Ip lv;
  lv.v1 = 117;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Ip_Ip(struct Uc_Ip_Ip);
int send_Uc_Ip_Ip(){
  struct Uc_Ip_Ip lv;
  lv.v1 = 117;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Uc_Ip_Ip(lv);
}

int recv_Uc_Ip_L(struct Uc_Ip_L lv){
  if (lv.v1 != 31) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 30388) return 3;
  return 0;
}
struct Uc_Ip_L ret_Uc_Ip_L(){
  struct Uc_Ip_L lv;
  lv.v1 = 31;
  lv.v2 = 0;
  lv.v3 = 30388;
  return lv;
}
int zig_recv_Uc_Ip_L(struct Uc_Ip_L);
int send_Uc_Ip_L(){
  struct Uc_Ip_L lv;
  lv.v1 = 31;
  lv.v2 = 0;
  lv.v3 = 30388;
  return zig_recv_Uc_Ip_L(lv);
}

int recv_Uc_Ip_S(struct Uc_Ip_S lv){
  if (lv.v1 != 104) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 28603) return 3;
  return 0;
}
struct Uc_Ip_S ret_Uc_Ip_S(){
  struct Uc_Ip_S lv;
  lv.v1 = 104;
  lv.v2 = 0;
  lv.v3 = 28603;
  return lv;
}
int zig_recv_Uc_Ip_S(struct Uc_Ip_S);
int send_Uc_Ip_S(){
  struct Uc_Ip_S lv;
  lv.v1 = 104;
  lv.v2 = 0;
  lv.v3 = 28603;
  return zig_recv_Uc_Ip_S(lv);
}

int recv_Uc_Ip_Uc(struct Uc_Ip_Uc lv){
  if (lv.v1 != 35) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 13) return 3;
  return 0;
}
struct Uc_Ip_Uc ret_Uc_Ip_Uc(){
  struct Uc_Ip_Uc lv;
  lv.v1 = 35;
  lv.v2 = 0;
  lv.v3 = 13;
  return lv;
}
int zig_recv_Uc_Ip_Uc(struct Uc_Ip_Uc);
int send_Uc_Ip_Uc(){
  struct Uc_Ip_Uc lv;
  lv.v1 = 35;
  lv.v2 = 0;
  lv.v3 = 13;
  return zig_recv_Uc_Ip_Uc(lv);
}

int recv_Uc_Ip_Ui(struct Uc_Ip_Ui lv){
  if (lv.v1 != 20) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 16954) return 3;
  return 0;
}
struct Uc_Ip_Ui ret_Uc_Ip_Ui(){
  struct Uc_Ip_Ui lv;
  lv.v1 = 20;
  lv.v2 = 0;
  lv.v3 = 16954;
  return lv;
}
int zig_recv_Uc_Ip_Ui(struct Uc_Ip_Ui);
int send_Uc_Ip_Ui(){
  struct Uc_Ip_Ui lv;
  lv.v1 = 20;
  lv.v2 = 0;
  lv.v3 = 16954;
  return zig_recv_Uc_Ip_Ui(lv);
}

int recv_Uc_Ip_Ul(struct Uc_Ip_Ul lv){
  if (lv.v1 != 89) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 18772) return 3;
  return 0;
}
struct Uc_Ip_Ul ret_Uc_Ip_Ul(){
  struct Uc_Ip_Ul lv;
  lv.v1 = 89;
  lv.v2 = 0;
  lv.v3 = 18772;
  return lv;
}
int zig_recv_Uc_Ip_Ul(struct Uc_Ip_Ul);
int send_Uc_Ip_Ul(){
  struct Uc_Ip_Ul lv;
  lv.v1 = 89;
  lv.v2 = 0;
  lv.v3 = 18772;
  return zig_recv_Uc_Ip_Ul(lv);
}

int recv_Uc_Ip_Us(struct Uc_Ip_Us lv){
  if (lv.v1 != 48) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 8281) return 3;
  return 0;
}
struct Uc_Ip_Us ret_Uc_Ip_Us(){
  struct Uc_Ip_Us lv;
  lv.v1 = 48;
  lv.v2 = 0;
  lv.v3 = 8281;
  return lv;
}
int zig_recv_Uc_Ip_Us(struct Uc_Ip_Us);
int send_Uc_Ip_Us(){
  struct Uc_Ip_Us lv;
  lv.v1 = 48;
  lv.v2 = 0;
  lv.v3 = 8281;
  return zig_recv_Uc_Ip_Us(lv);
}

int recv_Uc_Ip_Vp(struct Uc_Ip_Vp lv){
  if (lv.v1 != 33) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Ip_Vp ret_Uc_Ip_Vp(){
  struct Uc_Ip_Vp lv;
  lv.v1 = 33;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Ip_Vp(struct Uc_Ip_Vp);
int send_Uc_Ip_Vp(){
  struct Uc_Ip_Vp lv;
  lv.v1 = 33;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Uc_Ip_Vp(lv);
}

int recv_Uc_L(struct Uc_L lv){
  if (lv.v1 != 119) return 1;
  if (lv.v2 != 15974) return 2;
  return 0;
}
struct Uc_L ret_Uc_L(){
  struct Uc_L lv;
  lv.v1 = 119;
  lv.v2 = 15974;
  return lv;
}
int zig_recv_Uc_L(struct Uc_L);
int send_Uc_L(){
  struct Uc_L lv;
  lv.v1 = 119;
  lv.v2 = 15974;
  return zig_recv_Uc_L(lv);
}

int recv_Uc_L_C(struct Uc_L_C lv){
  if (lv.v1 != 50) return 1;
  if (lv.v2 != 21453) return 2;
  if (lv.v3 != 112) return 3;
  return 0;
}
struct Uc_L_C ret_Uc_L_C(){
  struct Uc_L_C lv;
  lv.v1 = 50;
  lv.v2 = 21453;
  lv.v3 = 112;
  return lv;
}
int zig_recv_Uc_L_C(struct Uc_L_C);
int send_Uc_L_C(){
  struct Uc_L_C lv;
  lv.v1 = 50;
  lv.v2 = 21453;
  lv.v3 = 112;
  return zig_recv_Uc_L_C(lv);
}

int recv_Uc_L_D(struct Uc_L_D lv){
  if (lv.v1 != 42) return 1;
  if (lv.v2 != 12771) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Uc_L_D ret_Uc_L_D(){
  struct Uc_L_D lv;
  lv.v1 = 42;
  lv.v2 = 12771;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Uc_L_D(struct Uc_L_D);
int send_Uc_L_D(){
  struct Uc_L_D lv;
  lv.v1 = 42;
  lv.v2 = 12771;
  lv.v3 = 7.0;
  return zig_recv_Uc_L_D(lv);
}

int recv_Uc_L_F(struct Uc_L_F lv){
  if (lv.v1 != 39) return 1;
  if (lv.v2 != 19443) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Uc_L_F ret_Uc_L_F(){
  struct Uc_L_F lv;
  lv.v1 = 39;
  lv.v2 = 19443;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Uc_L_F(struct Uc_L_F);
int send_Uc_L_F(){
  struct Uc_L_F lv;
  lv.v1 = 39;
  lv.v2 = 19443;
  lv.v3 = 7.0;
  return zig_recv_Uc_L_F(lv);
}

int recv_Uc_L_I(struct Uc_L_I lv){
  if (lv.v1 != 93) return 1;
  if (lv.v2 != 28305) return 2;
  if (lv.v3 != 18385) return 3;
  return 0;
}
struct Uc_L_I ret_Uc_L_I(){
  struct Uc_L_I lv;
  lv.v1 = 93;
  lv.v2 = 28305;
  lv.v3 = 18385;
  return lv;
}
int zig_recv_Uc_L_I(struct Uc_L_I);
int send_Uc_L_I(){
  struct Uc_L_I lv;
  lv.v1 = 93;
  lv.v2 = 28305;
  lv.v3 = 18385;
  return zig_recv_Uc_L_I(lv);
}

int recv_Uc_L_Ip(struct Uc_L_Ip lv){
  if (lv.v1 != 10) return 1;
  if (lv.v2 != 8726) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_L_Ip ret_Uc_L_Ip(){
  struct Uc_L_Ip lv;
  lv.v1 = 10;
  lv.v2 = 8726;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_L_Ip(struct Uc_L_Ip);
int send_Uc_L_Ip(){
  struct Uc_L_Ip lv;
  lv.v1 = 10;
  lv.v2 = 8726;
  lv.v3 = 0;
  return zig_recv_Uc_L_Ip(lv);
}

int recv_Uc_L_L(struct Uc_L_L lv){
  if (lv.v1 != 112) return 1;
  if (lv.v2 != 7512) return 2;
  if (lv.v3 != 12279) return 3;
  return 0;
}
struct Uc_L_L ret_Uc_L_L(){
  struct Uc_L_L lv;
  lv.v1 = 112;
  lv.v2 = 7512;
  lv.v3 = 12279;
  return lv;
}
int zig_recv_Uc_L_L(struct Uc_L_L);
int send_Uc_L_L(){
  struct Uc_L_L lv;
  lv.v1 = 112;
  lv.v2 = 7512;
  lv.v3 = 12279;
  return zig_recv_Uc_L_L(lv);
}

int recv_Uc_L_S(struct Uc_L_S lv){
  if (lv.v1 != 5) return 1;
  if (lv.v2 != 19826) return 2;
  if (lv.v3 != 20687) return 3;
  return 0;
}
struct Uc_L_S ret_Uc_L_S(){
  struct Uc_L_S lv;
  lv.v1 = 5;
  lv.v2 = 19826;
  lv.v3 = 20687;
  return lv;
}
int zig_recv_Uc_L_S(struct Uc_L_S);
int send_Uc_L_S(){
  struct Uc_L_S lv;
  lv.v1 = 5;
  lv.v2 = 19826;
  lv.v3 = 20687;
  return zig_recv_Uc_L_S(lv);
}

int recv_Uc_L_Uc(struct Uc_L_Uc lv){
  if (lv.v1 != 14) return 1;
  if (lv.v2 != 18144) return 2;
  if (lv.v3 != 34) return 3;
  return 0;
}
struct Uc_L_Uc ret_Uc_L_Uc(){
  struct Uc_L_Uc lv;
  lv.v1 = 14;
  lv.v2 = 18144;
  lv.v3 = 34;
  return lv;
}
int zig_recv_Uc_L_Uc(struct Uc_L_Uc);
int send_Uc_L_Uc(){
  struct Uc_L_Uc lv;
  lv.v1 = 14;
  lv.v2 = 18144;
  lv.v3 = 34;
  return zig_recv_Uc_L_Uc(lv);
}

int recv_Uc_L_Ui(struct Uc_L_Ui lv){
  if (lv.v1 != 42) return 1;
  if (lv.v2 != 2689) return 2;
  if (lv.v3 != 3812) return 3;
  return 0;
}
struct Uc_L_Ui ret_Uc_L_Ui(){
  struct Uc_L_Ui lv;
  lv.v1 = 42;
  lv.v2 = 2689;
  lv.v3 = 3812;
  return lv;
}
int zig_recv_Uc_L_Ui(struct Uc_L_Ui);
int send_Uc_L_Ui(){
  struct Uc_L_Ui lv;
  lv.v1 = 42;
  lv.v2 = 2689;
  lv.v3 = 3812;
  return zig_recv_Uc_L_Ui(lv);
}

int recv_Uc_L_Ul(struct Uc_L_Ul lv){
  if (lv.v1 != 125) return 1;
  if (lv.v2 != 19855) return 2;
  if (lv.v3 != 32534) return 3;
  return 0;
}
struct Uc_L_Ul ret_Uc_L_Ul(){
  struct Uc_L_Ul lv;
  lv.v1 = 125;
  lv.v2 = 19855;
  lv.v3 = 32534;
  return lv;
}
int zig_recv_Uc_L_Ul(struct Uc_L_Ul);
int send_Uc_L_Ul(){
  struct Uc_L_Ul lv;
  lv.v1 = 125;
  lv.v2 = 19855;
  lv.v3 = 32534;
  return zig_recv_Uc_L_Ul(lv);
}

int recv_Uc_L_Us(struct Uc_L_Us lv){
  if (lv.v1 != 120) return 1;
  if (lv.v2 != 9826) return 2;
  if (lv.v3 != 1663) return 3;
  return 0;
}
struct Uc_L_Us ret_Uc_L_Us(){
  struct Uc_L_Us lv;
  lv.v1 = 120;
  lv.v2 = 9826;
  lv.v3 = 1663;
  return lv;
}
int zig_recv_Uc_L_Us(struct Uc_L_Us);
int send_Uc_L_Us(){
  struct Uc_L_Us lv;
  lv.v1 = 120;
  lv.v2 = 9826;
  lv.v3 = 1663;
  return zig_recv_Uc_L_Us(lv);
}

int recv_Uc_L_Vp(struct Uc_L_Vp lv){
  if (lv.v1 != 112) return 1;
  if (lv.v2 != 14009) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_L_Vp ret_Uc_L_Vp(){
  struct Uc_L_Vp lv;
  lv.v1 = 112;
  lv.v2 = 14009;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_L_Vp(struct Uc_L_Vp);
int send_Uc_L_Vp(){
  struct Uc_L_Vp lv;
  lv.v1 = 112;
  lv.v2 = 14009;
  lv.v3 = 0;
  return zig_recv_Uc_L_Vp(lv);
}

int recv_Uc_S(struct Uc_S lv){
  if (lv.v1 != 34) return 1;
  if (lv.v2 != 19847) return 2;
  return 0;
}
struct Uc_S ret_Uc_S(){
  struct Uc_S lv;
  lv.v1 = 34;
  lv.v2 = 19847;
  return lv;
}
int zig_recv_Uc_S(struct Uc_S);
int send_Uc_S(){
  struct Uc_S lv;
  lv.v1 = 34;
  lv.v2 = 19847;
  return zig_recv_Uc_S(lv);
}

int recv_Uc_S_C(struct Uc_S_C lv){
  if (lv.v1 != 74) return 1;
  if (lv.v2 != 21816) return 2;
  if (lv.v3 != 88) return 3;
  return 0;
}
struct Uc_S_C ret_Uc_S_C(){
  struct Uc_S_C lv;
  lv.v1 = 74;
  lv.v2 = 21816;
  lv.v3 = 88;
  return lv;
}
int zig_recv_Uc_S_C(struct Uc_S_C);
int send_Uc_S_C(){
  struct Uc_S_C lv;
  lv.v1 = 74;
  lv.v2 = 21816;
  lv.v3 = 88;
  return zig_recv_Uc_S_C(lv);
}

int recv_Uc_S_D(struct Uc_S_D lv){
  if (lv.v1 != 87) return 1;
  if (lv.v2 != 14939) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Uc_S_D ret_Uc_S_D(){
  struct Uc_S_D lv;
  lv.v1 = 87;
  lv.v2 = 14939;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Uc_S_D(struct Uc_S_D);
int send_Uc_S_D(){
  struct Uc_S_D lv;
  lv.v1 = 87;
  lv.v2 = 14939;
  lv.v3 = -2.125;
  return zig_recv_Uc_S_D(lv);
}

int recv_Uc_S_F(struct Uc_S_F lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 29623) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Uc_S_F ret_Uc_S_F(){
  struct Uc_S_F lv;
  lv.v1 = 9;
  lv.v2 = 29623;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Uc_S_F(struct Uc_S_F);
int send_Uc_S_F(){
  struct Uc_S_F lv;
  lv.v1 = 9;
  lv.v2 = 29623;
  lv.v3 = 0.5;
  return zig_recv_Uc_S_F(lv);
}

int recv_Uc_S_I(struct Uc_S_I lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 6063) return 2;
  if (lv.v3 != 7793) return 3;
  return 0;
}
struct Uc_S_I ret_Uc_S_I(){
  struct Uc_S_I lv;
  lv.v1 = 9;
  lv.v2 = 6063;
  lv.v3 = 7793;
  return lv;
}
int zig_recv_Uc_S_I(struct Uc_S_I);
int send_Uc_S_I(){
  struct Uc_S_I lv;
  lv.v1 = 9;
  lv.v2 = 6063;
  lv.v3 = 7793;
  return zig_recv_Uc_S_I(lv);
}

int recv_Uc_S_Ip(struct Uc_S_Ip lv){
  if (lv.v1 != 26) return 1;
  if (lv.v2 != 11164) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_S_Ip ret_Uc_S_Ip(){
  struct Uc_S_Ip lv;
  lv.v1 = 26;
  lv.v2 = 11164;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_S_Ip(struct Uc_S_Ip);
int send_Uc_S_Ip(){
  struct Uc_S_Ip lv;
  lv.v1 = 26;
  lv.v2 = 11164;
  lv.v3 = 0;
  return zig_recv_Uc_S_Ip(lv);
}

int recv_Uc_S_L(struct Uc_S_L lv){
  if (lv.v1 != 51) return 1;
  if (lv.v2 != 885) return 2;
  if (lv.v3 != 13093) return 3;
  return 0;
}
struct Uc_S_L ret_Uc_S_L(){
  struct Uc_S_L lv;
  lv.v1 = 51;
  lv.v2 = 885;
  lv.v3 = 13093;
  return lv;
}
int zig_recv_Uc_S_L(struct Uc_S_L);
int send_Uc_S_L(){
  struct Uc_S_L lv;
  lv.v1 = 51;
  lv.v2 = 885;
  lv.v3 = 13093;
  return zig_recv_Uc_S_L(lv);
}

int recv_Uc_S_S(struct Uc_S_S lv){
  if (lv.v1 != 21) return 1;
  if (lv.v2 != 14367) return 2;
  if (lv.v3 != 8854) return 3;
  return 0;
}
struct Uc_S_S ret_Uc_S_S(){
  struct Uc_S_S lv;
  lv.v1 = 21;
  lv.v2 = 14367;
  lv.v3 = 8854;
  return lv;
}
int zig_recv_Uc_S_S(struct Uc_S_S);
int send_Uc_S_S(){
  struct Uc_S_S lv;
  lv.v1 = 21;
  lv.v2 = 14367;
  lv.v3 = 8854;
  return zig_recv_Uc_S_S(lv);
}

int recv_Uc_S_Uc(struct Uc_S_Uc lv){
  if (lv.v1 != 121) return 1;
  if (lv.v2 != 32357) return 2;
  if (lv.v3 != 7) return 3;
  return 0;
}
struct Uc_S_Uc ret_Uc_S_Uc(){
  struct Uc_S_Uc lv;
  lv.v1 = 121;
  lv.v2 = 32357;
  lv.v3 = 7;
  return lv;
}
int zig_recv_Uc_S_Uc(struct Uc_S_Uc);
int send_Uc_S_Uc(){
  struct Uc_S_Uc lv;
  lv.v1 = 121;
  lv.v2 = 32357;
  lv.v3 = 7;
  return zig_recv_Uc_S_Uc(lv);
}

int recv_Uc_S_Ui(struct Uc_S_Ui lv){
  if (lv.v1 != 114) return 1;
  if (lv.v2 != 18126) return 2;
  if (lv.v3 != 22022) return 3;
  return 0;
}
struct Uc_S_Ui ret_Uc_S_Ui(){
  struct Uc_S_Ui lv;
  lv.v1 = 114;
  lv.v2 = 18126;
  lv.v3 = 22022;
  return lv;
}
int zig_recv_Uc_S_Ui(struct Uc_S_Ui);
int send_Uc_S_Ui(){
  struct Uc_S_Ui lv;
  lv.v1 = 114;
  lv.v2 = 18126;
  lv.v3 = 22022;
  return zig_recv_Uc_S_Ui(lv);
}

int recv_Uc_S_Ul(struct Uc_S_Ul lv){
  if (lv.v1 != 47) return 1;
  if (lv.v2 != 8185) return 2;
  if (lv.v3 != 28912) return 3;
  return 0;
}
struct Uc_S_Ul ret_Uc_S_Ul(){
  struct Uc_S_Ul lv;
  lv.v1 = 47;
  lv.v2 = 8185;
  lv.v3 = 28912;
  return lv;
}
int zig_recv_Uc_S_Ul(struct Uc_S_Ul);
int send_Uc_S_Ul(){
  struct Uc_S_Ul lv;
  lv.v1 = 47;
  lv.v2 = 8185;
  lv.v3 = 28912;
  return zig_recv_Uc_S_Ul(lv);
}

int recv_Uc_S_Us(struct Uc_S_Us lv){
  if (lv.v1 != 40) return 1;
  if (lv.v2 != 4200) return 2;
  if (lv.v3 != 29084) return 3;
  return 0;
}
struct Uc_S_Us ret_Uc_S_Us(){
  struct Uc_S_Us lv;
  lv.v1 = 40;
  lv.v2 = 4200;
  lv.v3 = 29084;
  return lv;
}
int zig_recv_Uc_S_Us(struct Uc_S_Us);
int send_Uc_S_Us(){
  struct Uc_S_Us lv;
  lv.v1 = 40;
  lv.v2 = 4200;
  lv.v3 = 29084;
  return zig_recv_Uc_S_Us(lv);
}

int recv_Uc_S_Vp(struct Uc_S_Vp lv){
  if (lv.v1 != 43) return 1;
  if (lv.v2 != 4074) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_S_Vp ret_Uc_S_Vp(){
  struct Uc_S_Vp lv;
  lv.v1 = 43;
  lv.v2 = 4074;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_S_Vp(struct Uc_S_Vp);
int send_Uc_S_Vp(){
  struct Uc_S_Vp lv;
  lv.v1 = 43;
  lv.v2 = 4074;
  lv.v3 = 0;
  return zig_recv_Uc_S_Vp(lv);
}

int recv_Uc_Uc(struct Uc_Uc lv){
  if (lv.v1 != 36) return 1;
  if (lv.v2 != 41) return 2;
  return 0;
}
struct Uc_Uc ret_Uc_Uc(){
  struct Uc_Uc lv;
  lv.v1 = 36;
  lv.v2 = 41;
  return lv;
}
int zig_recv_Uc_Uc(struct Uc_Uc);
int send_Uc_Uc(){
  struct Uc_Uc lv;
  lv.v1 = 36;
  lv.v2 = 41;
  return zig_recv_Uc_Uc(lv);
}

int recv_Uc_Uc_C(struct Uc_Uc_C lv){
  if (lv.v1 != 61) return 1;
  if (lv.v2 != 123) return 2;
  if (lv.v3 != 32) return 3;
  return 0;
}
struct Uc_Uc_C ret_Uc_Uc_C(){
  struct Uc_Uc_C lv;
  lv.v1 = 61;
  lv.v2 = 123;
  lv.v3 = 32;
  return lv;
}
int zig_recv_Uc_Uc_C(struct Uc_Uc_C);
int send_Uc_Uc_C(){
  struct Uc_Uc_C lv;
  lv.v1 = 61;
  lv.v2 = 123;
  lv.v3 = 32;
  return zig_recv_Uc_Uc_C(lv);
}

int recv_Uc_Uc_D(struct Uc_Uc_D lv){
  if (lv.v1 != 69) return 1;
  if (lv.v2 != 59) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Uc_Uc_D ret_Uc_Uc_D(){
  struct Uc_Uc_D lv;
  lv.v1 = 69;
  lv.v2 = 59;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Uc_Uc_D(struct Uc_Uc_D);
int send_Uc_Uc_D(){
  struct Uc_Uc_D lv;
  lv.v1 = 69;
  lv.v2 = 59;
  lv.v3 = 1.0;
  return zig_recv_Uc_Uc_D(lv);
}

int recv_Uc_Uc_F(struct Uc_Uc_F lv){
  if (lv.v1 != 64) return 1;
  if (lv.v2 != 79) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Uc_Uc_F ret_Uc_Uc_F(){
  struct Uc_Uc_F lv;
  lv.v1 = 64;
  lv.v2 = 79;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Uc_Uc_F(struct Uc_Uc_F);
int send_Uc_Uc_F(){
  struct Uc_Uc_F lv;
  lv.v1 = 64;
  lv.v2 = 79;
  lv.v3 = 4.5;
  return zig_recv_Uc_Uc_F(lv);
}

int recv_Uc_Uc_I(struct Uc_Uc_I lv){
  if (lv.v1 != 10) return 1;
  if (lv.v2 != 31) return 2;
  if (lv.v3 != 24178) return 3;
  return 0;
}
struct Uc_Uc_I ret_Uc_Uc_I(){
  struct Uc_Uc_I lv;
  lv.v1 = 10;
  lv.v2 = 31;
  lv.v3 = 24178;
  return lv;
}
int zig_recv_Uc_Uc_I(struct Uc_Uc_I);
int send_Uc_Uc_I(){
  struct Uc_Uc_I lv;
  lv.v1 = 10;
  lv.v2 = 31;
  lv.v3 = 24178;
  return zig_recv_Uc_Uc_I(lv);
}

int recv_Uc_Uc_Ip(struct Uc_Uc_Ip lv){
  if (lv.v1 != 34) return 1;
  if (lv.v2 != 19) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Uc_Ip ret_Uc_Uc_Ip(){
  struct Uc_Uc_Ip lv;
  lv.v1 = 34;
  lv.v2 = 19;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Uc_Ip(struct Uc_Uc_Ip);
int send_Uc_Uc_Ip(){
  struct Uc_Uc_Ip lv;
  lv.v1 = 34;
  lv.v2 = 19;
  lv.v3 = 0;
  return zig_recv_Uc_Uc_Ip(lv);
}

int recv_Uc_Uc_L(struct Uc_Uc_L lv){
  if (lv.v1 != 113) return 1;
  if (lv.v2 != 16) return 2;
  if (lv.v3 != 9440) return 3;
  return 0;
}
struct Uc_Uc_L ret_Uc_Uc_L(){
  struct Uc_Uc_L lv;
  lv.v1 = 113;
  lv.v2 = 16;
  lv.v3 = 9440;
  return lv;
}
int zig_recv_Uc_Uc_L(struct Uc_Uc_L);
int send_Uc_Uc_L(){
  struct Uc_Uc_L lv;
  lv.v1 = 113;
  lv.v2 = 16;
  lv.v3 = 9440;
  return zig_recv_Uc_Uc_L(lv);
}

int recv_Uc_Uc_S(struct Uc_Uc_S lv){
  if (lv.v1 != 110) return 1;
  if (lv.v2 != 68) return 2;
  if (lv.v3 != 32149) return 3;
  return 0;
}
struct Uc_Uc_S ret_Uc_Uc_S(){
  struct Uc_Uc_S lv;
  lv.v1 = 110;
  lv.v2 = 68;
  lv.v3 = 32149;
  return lv;
}
int zig_recv_Uc_Uc_S(struct Uc_Uc_S);
int send_Uc_Uc_S(){
  struct Uc_Uc_S lv;
  lv.v1 = 110;
  lv.v2 = 68;
  lv.v3 = 32149;
  return zig_recv_Uc_Uc_S(lv);
}

int recv_Uc_Uc_Uc(struct Uc_Uc_Uc lv){
  if (lv.v1 != 25) return 1;
  if (lv.v2 != 112) return 2;
  if (lv.v3 != 107) return 3;
  return 0;
}
struct Uc_Uc_Uc ret_Uc_Uc_Uc(){
  struct Uc_Uc_Uc lv;
  lv.v1 = 25;
  lv.v2 = 112;
  lv.v3 = 107;
  return lv;
}
int zig_recv_Uc_Uc_Uc(struct Uc_Uc_Uc);
int send_Uc_Uc_Uc(){
  struct Uc_Uc_Uc lv;
  lv.v1 = 25;
  lv.v2 = 112;
  lv.v3 = 107;
  return zig_recv_Uc_Uc_Uc(lv);
}

int recv_Uc_Uc_Ui(struct Uc_Uc_Ui lv){
  if (lv.v1 != 79) return 1;
  if (lv.v2 != 65) return 2;
  if (lv.v3 != 18992) return 3;
  return 0;
}
struct Uc_Uc_Ui ret_Uc_Uc_Ui(){
  struct Uc_Uc_Ui lv;
  lv.v1 = 79;
  lv.v2 = 65;
  lv.v3 = 18992;
  return lv;
}
int zig_recv_Uc_Uc_Ui(struct Uc_Uc_Ui);
int send_Uc_Uc_Ui(){
  struct Uc_Uc_Ui lv;
  lv.v1 = 79;
  lv.v2 = 65;
  lv.v3 = 18992;
  return zig_recv_Uc_Uc_Ui(lv);
}

int recv_Uc_Uc_Ul(struct Uc_Uc_Ul lv){
  if (lv.v1 != 119) return 1;
  if (lv.v2 != 105) return 2;
  if (lv.v3 != 14684) return 3;
  return 0;
}
struct Uc_Uc_Ul ret_Uc_Uc_Ul(){
  struct Uc_Uc_Ul lv;
  lv.v1 = 119;
  lv.v2 = 105;
  lv.v3 = 14684;
  return lv;
}
int zig_recv_Uc_Uc_Ul(struct Uc_Uc_Ul);
int send_Uc_Uc_Ul(){
  struct Uc_Uc_Ul lv;
  lv.v1 = 119;
  lv.v2 = 105;
  lv.v3 = 14684;
  return zig_recv_Uc_Uc_Ul(lv);
}

int recv_Uc_Uc_Us(struct Uc_Uc_Us lv){
  if (lv.v1 != 35) return 1;
  if (lv.v2 != 94) return 2;
  if (lv.v3 != 17513) return 3;
  return 0;
}
struct Uc_Uc_Us ret_Uc_Uc_Us(){
  struct Uc_Uc_Us lv;
  lv.v1 = 35;
  lv.v2 = 94;
  lv.v3 = 17513;
  return lv;
}
int zig_recv_Uc_Uc_Us(struct Uc_Uc_Us);
int send_Uc_Uc_Us(){
  struct Uc_Uc_Us lv;
  lv.v1 = 35;
  lv.v2 = 94;
  lv.v3 = 17513;
  return zig_recv_Uc_Uc_Us(lv);
}

int recv_Uc_Uc_Vp(struct Uc_Uc_Vp lv){
  if (lv.v1 != 16) return 1;
  if (lv.v2 != 101) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Uc_Vp ret_Uc_Uc_Vp(){
  struct Uc_Uc_Vp lv;
  lv.v1 = 16;
  lv.v2 = 101;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Uc_Vp(struct Uc_Uc_Vp);
int send_Uc_Uc_Vp(){
  struct Uc_Uc_Vp lv;
  lv.v1 = 16;
  lv.v2 = 101;
  lv.v3 = 0;
  return zig_recv_Uc_Uc_Vp(lv);
}

int recv_Uc_Ui(struct Uc_Ui lv){
  if (lv.v1 != 53) return 1;
  if (lv.v2 != 22835) return 2;
  return 0;
}
struct Uc_Ui ret_Uc_Ui(){
  struct Uc_Ui lv;
  lv.v1 = 53;
  lv.v2 = 22835;
  return lv;
}
int zig_recv_Uc_Ui(struct Uc_Ui);
int send_Uc_Ui(){
  struct Uc_Ui lv;
  lv.v1 = 53;
  lv.v2 = 22835;
  return zig_recv_Uc_Ui(lv);
}

int recv_Uc_Ui_C(struct Uc_Ui_C lv){
  if (lv.v1 != 98) return 1;
  if (lv.v2 != 13999) return 2;
  if (lv.v3 != 1) return 3;
  return 0;
}
struct Uc_Ui_C ret_Uc_Ui_C(){
  struct Uc_Ui_C lv;
  lv.v1 = 98;
  lv.v2 = 13999;
  lv.v3 = 1;
  return lv;
}
int zig_recv_Uc_Ui_C(struct Uc_Ui_C);
int send_Uc_Ui_C(){
  struct Uc_Ui_C lv;
  lv.v1 = 98;
  lv.v2 = 13999;
  lv.v3 = 1;
  return zig_recv_Uc_Ui_C(lv);
}

int recv_Uc_Ui_D(struct Uc_Ui_D lv){
  if (lv.v1 != 19) return 1;
  if (lv.v2 != 212) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Uc_Ui_D ret_Uc_Ui_D(){
  struct Uc_Ui_D lv;
  lv.v1 = 19;
  lv.v2 = 212;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Uc_Ui_D(struct Uc_Ui_D);
int send_Uc_Ui_D(){
  struct Uc_Ui_D lv;
  lv.v1 = 19;
  lv.v2 = 212;
  lv.v3 = 4.5;
  return zig_recv_Uc_Ui_D(lv);
}

int recv_Uc_Ui_F(struct Uc_Ui_F lv){
  if (lv.v1 != 109) return 1;
  if (lv.v2 != 22586) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Uc_Ui_F ret_Uc_Ui_F(){
  struct Uc_Ui_F lv;
  lv.v1 = 109;
  lv.v2 = 22586;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Uc_Ui_F(struct Uc_Ui_F);
int send_Uc_Ui_F(){
  struct Uc_Ui_F lv;
  lv.v1 = 109;
  lv.v2 = 22586;
  lv.v3 = 0.875;
  return zig_recv_Uc_Ui_F(lv);
}

int recv_Uc_Ui_I(struct Uc_Ui_I lv){
  if (lv.v1 != 69) return 1;
  if (lv.v2 != 96) return 2;
  if (lv.v3 != 11656) return 3;
  return 0;
}
struct Uc_Ui_I ret_Uc_Ui_I(){
  struct Uc_Ui_I lv;
  lv.v1 = 69;
  lv.v2 = 96;
  lv.v3 = 11656;
  return lv;
}
int zig_recv_Uc_Ui_I(struct Uc_Ui_I);
int send_Uc_Ui_I(){
  struct Uc_Ui_I lv;
  lv.v1 = 69;
  lv.v2 = 96;
  lv.v3 = 11656;
  return zig_recv_Uc_Ui_I(lv);
}

int recv_Uc_Ui_Ip(struct Uc_Ui_Ip lv){
  if (lv.v1 != 100) return 1;
  if (lv.v2 != 23903) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Ui_Ip ret_Uc_Ui_Ip(){
  struct Uc_Ui_Ip lv;
  lv.v1 = 100;
  lv.v2 = 23903;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Ui_Ip(struct Uc_Ui_Ip);
int send_Uc_Ui_Ip(){
  struct Uc_Ui_Ip lv;
  lv.v1 = 100;
  lv.v2 = 23903;
  lv.v3 = 0;
  return zig_recv_Uc_Ui_Ip(lv);
}

int recv_Uc_Ui_L(struct Uc_Ui_L lv){
  if (lv.v1 != 13) return 1;
  if (lv.v2 != 17433) return 2;
  if (lv.v3 != 23126) return 3;
  return 0;
}
struct Uc_Ui_L ret_Uc_Ui_L(){
  struct Uc_Ui_L lv;
  lv.v1 = 13;
  lv.v2 = 17433;
  lv.v3 = 23126;
  return lv;
}
int zig_recv_Uc_Ui_L(struct Uc_Ui_L);
int send_Uc_Ui_L(){
  struct Uc_Ui_L lv;
  lv.v1 = 13;
  lv.v2 = 17433;
  lv.v3 = 23126;
  return zig_recv_Uc_Ui_L(lv);
}

int recv_Uc_Ui_S(struct Uc_Ui_S lv){
  if (lv.v1 != 64) return 1;
  if (lv.v2 != 8972) return 2;
  if (lv.v3 != 23697) return 3;
  return 0;
}
struct Uc_Ui_S ret_Uc_Ui_S(){
  struct Uc_Ui_S lv;
  lv.v1 = 64;
  lv.v2 = 8972;
  lv.v3 = 23697;
  return lv;
}
int zig_recv_Uc_Ui_S(struct Uc_Ui_S);
int send_Uc_Ui_S(){
  struct Uc_Ui_S lv;
  lv.v1 = 64;
  lv.v2 = 8972;
  lv.v3 = 23697;
  return zig_recv_Uc_Ui_S(lv);
}

int recv_Uc_Ui_Uc(struct Uc_Ui_Uc lv){
  if (lv.v1 != 64) return 1;
  if (lv.v2 != 20781) return 2;
  if (lv.v3 != 46) return 3;
  return 0;
}
struct Uc_Ui_Uc ret_Uc_Ui_Uc(){
  struct Uc_Ui_Uc lv;
  lv.v1 = 64;
  lv.v2 = 20781;
  lv.v3 = 46;
  return lv;
}
int zig_recv_Uc_Ui_Uc(struct Uc_Ui_Uc);
int send_Uc_Ui_Uc(){
  struct Uc_Ui_Uc lv;
  lv.v1 = 64;
  lv.v2 = 20781;
  lv.v3 = 46;
  return zig_recv_Uc_Ui_Uc(lv);
}

int recv_Uc_Ui_Ui(struct Uc_Ui_Ui lv){
  if (lv.v1 != 12) return 1;
  if (lv.v2 != 30965) return 2;
  if (lv.v3 != 7658) return 3;
  return 0;
}
struct Uc_Ui_Ui ret_Uc_Ui_Ui(){
  struct Uc_Ui_Ui lv;
  lv.v1 = 12;
  lv.v2 = 30965;
  lv.v3 = 7658;
  return lv;
}
int zig_recv_Uc_Ui_Ui(struct Uc_Ui_Ui);
int send_Uc_Ui_Ui(){
  struct Uc_Ui_Ui lv;
  lv.v1 = 12;
  lv.v2 = 30965;
  lv.v3 = 7658;
  return zig_recv_Uc_Ui_Ui(lv);
}

int recv_Uc_Ui_Ul(struct Uc_Ui_Ul lv){
  if (lv.v1 != 102) return 1;
  if (lv.v2 != 15727) return 2;
  if (lv.v3 != 6033) return 3;
  return 0;
}
struct Uc_Ui_Ul ret_Uc_Ui_Ul(){
  struct Uc_Ui_Ul lv;
  lv.v1 = 102;
  lv.v2 = 15727;
  lv.v3 = 6033;
  return lv;
}
int zig_recv_Uc_Ui_Ul(struct Uc_Ui_Ul);
int send_Uc_Ui_Ul(){
  struct Uc_Ui_Ul lv;
  lv.v1 = 102;
  lv.v2 = 15727;
  lv.v3 = 6033;
  return zig_recv_Uc_Ui_Ul(lv);
}

int recv_Uc_Ui_Us(struct Uc_Ui_Us lv){
  if (lv.v1 != 69) return 1;
  if (lv.v2 != 2117) return 2;
  if (lv.v3 != 24973) return 3;
  return 0;
}
struct Uc_Ui_Us ret_Uc_Ui_Us(){
  struct Uc_Ui_Us lv;
  lv.v1 = 69;
  lv.v2 = 2117;
  lv.v3 = 24973;
  return lv;
}
int zig_recv_Uc_Ui_Us(struct Uc_Ui_Us);
int send_Uc_Ui_Us(){
  struct Uc_Ui_Us lv;
  lv.v1 = 69;
  lv.v2 = 2117;
  lv.v3 = 24973;
  return zig_recv_Uc_Ui_Us(lv);
}

int recv_Uc_Ui_Vp(struct Uc_Ui_Vp lv){
  if (lv.v1 != 79) return 1;
  if (lv.v2 != 1180) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Ui_Vp ret_Uc_Ui_Vp(){
  struct Uc_Ui_Vp lv;
  lv.v1 = 79;
  lv.v2 = 1180;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Ui_Vp(struct Uc_Ui_Vp);
int send_Uc_Ui_Vp(){
  struct Uc_Ui_Vp lv;
  lv.v1 = 79;
  lv.v2 = 1180;
  lv.v3 = 0;
  return zig_recv_Uc_Ui_Vp(lv);
}

int recv_Uc_Ul(struct Uc_Ul lv){
  if (lv.v1 != 60) return 1;
  if (lv.v2 != 26383) return 2;
  return 0;
}
struct Uc_Ul ret_Uc_Ul(){
  struct Uc_Ul lv;
  lv.v1 = 60;
  lv.v2 = 26383;
  return lv;
}
int zig_recv_Uc_Ul(struct Uc_Ul);
int send_Uc_Ul(){
  struct Uc_Ul lv;
  lv.v1 = 60;
  lv.v2 = 26383;
  return zig_recv_Uc_Ul(lv);
}

int recv_Uc_Ul_C(struct Uc_Ul_C lv){
  if (lv.v1 != 87) return 1;
  if (lv.v2 != 5320) return 2;
  if (lv.v3 != 119) return 3;
  return 0;
}
struct Uc_Ul_C ret_Uc_Ul_C(){
  struct Uc_Ul_C lv;
  lv.v1 = 87;
  lv.v2 = 5320;
  lv.v3 = 119;
  return lv;
}
int zig_recv_Uc_Ul_C(struct Uc_Ul_C);
int send_Uc_Ul_C(){
  struct Uc_Ul_C lv;
  lv.v1 = 87;
  lv.v2 = 5320;
  lv.v3 = 119;
  return zig_recv_Uc_Ul_C(lv);
}

int recv_Uc_Ul_D(struct Uc_Ul_D lv){
  if (lv.v1 != 109) return 1;
  if (lv.v2 != 24058) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Uc_Ul_D ret_Uc_Ul_D(){
  struct Uc_Ul_D lv;
  lv.v1 = 109;
  lv.v2 = 24058;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Uc_Ul_D(struct Uc_Ul_D);
int send_Uc_Ul_D(){
  struct Uc_Ul_D lv;
  lv.v1 = 109;
  lv.v2 = 24058;
  lv.v3 = -0.25;
  return zig_recv_Uc_Ul_D(lv);
}

int recv_Uc_Ul_F(struct Uc_Ul_F lv){
  if (lv.v1 != 89) return 1;
  if (lv.v2 != 570) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Uc_Ul_F ret_Uc_Ul_F(){
  struct Uc_Ul_F lv;
  lv.v1 = 89;
  lv.v2 = 570;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Uc_Ul_F(struct Uc_Ul_F);
int send_Uc_Ul_F(){
  struct Uc_Ul_F lv;
  lv.v1 = 89;
  lv.v2 = 570;
  lv.v3 = -0.25;
  return zig_recv_Uc_Ul_F(lv);
}

int recv_Uc_Ul_I(struct Uc_Ul_I lv){
  if (lv.v1 != 20) return 1;
  if (lv.v2 != 18844) return 2;
  if (lv.v3 != 22972) return 3;
  return 0;
}
struct Uc_Ul_I ret_Uc_Ul_I(){
  struct Uc_Ul_I lv;
  lv.v1 = 20;
  lv.v2 = 18844;
  lv.v3 = 22972;
  return lv;
}
int zig_recv_Uc_Ul_I(struct Uc_Ul_I);
int send_Uc_Ul_I(){
  struct Uc_Ul_I lv;
  lv.v1 = 20;
  lv.v2 = 18844;
  lv.v3 = 22972;
  return zig_recv_Uc_Ul_I(lv);
}

int recv_Uc_Ul_Ip(struct Uc_Ul_Ip lv){
  if (lv.v1 != 87) return 1;
  if (lv.v2 != 14218) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Ul_Ip ret_Uc_Ul_Ip(){
  struct Uc_Ul_Ip lv;
  lv.v1 = 87;
  lv.v2 = 14218;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Ul_Ip(struct Uc_Ul_Ip);
int send_Uc_Ul_Ip(){
  struct Uc_Ul_Ip lv;
  lv.v1 = 87;
  lv.v2 = 14218;
  lv.v3 = 0;
  return zig_recv_Uc_Ul_Ip(lv);
}

int recv_Uc_Ul_L(struct Uc_Ul_L lv){
  if (lv.v1 != 99) return 1;
  if (lv.v2 != 23984) return 2;
  if (lv.v3 != 30703) return 3;
  return 0;
}
struct Uc_Ul_L ret_Uc_Ul_L(){
  struct Uc_Ul_L lv;
  lv.v1 = 99;
  lv.v2 = 23984;
  lv.v3 = 30703;
  return lv;
}
int zig_recv_Uc_Ul_L(struct Uc_Ul_L);
int send_Uc_Ul_L(){
  struct Uc_Ul_L lv;
  lv.v1 = 99;
  lv.v2 = 23984;
  lv.v3 = 30703;
  return zig_recv_Uc_Ul_L(lv);
}

int recv_Uc_Ul_S(struct Uc_Ul_S lv){
  if (lv.v1 != 29) return 1;
  if (lv.v2 != 13746) return 2;
  if (lv.v3 != 28959) return 3;
  return 0;
}
struct Uc_Ul_S ret_Uc_Ul_S(){
  struct Uc_Ul_S lv;
  lv.v1 = 29;
  lv.v2 = 13746;
  lv.v3 = 28959;
  return lv;
}
int zig_recv_Uc_Ul_S(struct Uc_Ul_S);
int send_Uc_Ul_S(){
  struct Uc_Ul_S lv;
  lv.v1 = 29;
  lv.v2 = 13746;
  lv.v3 = 28959;
  return zig_recv_Uc_Ul_S(lv);
}

int recv_Uc_Ul_Uc(struct Uc_Ul_Uc lv){
  if (lv.v1 != 2) return 1;
  if (lv.v2 != 27155) return 2;
  if (lv.v3 != 64) return 3;
  return 0;
}
struct Uc_Ul_Uc ret_Uc_Ul_Uc(){
  struct Uc_Ul_Uc lv;
  lv.v1 = 2;
  lv.v2 = 27155;
  lv.v3 = 64;
  return lv;
}
int zig_recv_Uc_Ul_Uc(struct Uc_Ul_Uc);
int send_Uc_Ul_Uc(){
  struct Uc_Ul_Uc lv;
  lv.v1 = 2;
  lv.v2 = 27155;
  lv.v3 = 64;
  return zig_recv_Uc_Ul_Uc(lv);
}

int recv_Uc_Ul_Ui(struct Uc_Ul_Ui lv){
  if (lv.v1 != 44) return 1;
  if (lv.v2 != 8089) return 2;
  if (lv.v3 != 20884) return 3;
  return 0;
}
struct Uc_Ul_Ui ret_Uc_Ul_Ui(){
  struct Uc_Ul_Ui lv;
  lv.v1 = 44;
  lv.v2 = 8089;
  lv.v3 = 20884;
  return lv;
}
int zig_recv_Uc_Ul_Ui(struct Uc_Ul_Ui);
int send_Uc_Ul_Ui(){
  struct Uc_Ul_Ui lv;
  lv.v1 = 44;
  lv.v2 = 8089;
  lv.v3 = 20884;
  return zig_recv_Uc_Ul_Ui(lv);
}

int recv_Uc_Ul_Ul(struct Uc_Ul_Ul lv){
  if (lv.v1 != 111) return 1;
  if (lv.v2 != 25364) return 2;
  if (lv.v3 != 414) return 3;
  return 0;
}
struct Uc_Ul_Ul ret_Uc_Ul_Ul(){
  struct Uc_Ul_Ul lv;
  lv.v1 = 111;
  lv.v2 = 25364;
  lv.v3 = 414;
  return lv;
}
int zig_recv_Uc_Ul_Ul(struct Uc_Ul_Ul);
int send_Uc_Ul_Ul(){
  struct Uc_Ul_Ul lv;
  lv.v1 = 111;
  lv.v2 = 25364;
  lv.v3 = 414;
  return zig_recv_Uc_Ul_Ul(lv);
}

int recv_Uc_Ul_Us(struct Uc_Ul_Us lv){
  if (lv.v1 != 45) return 1;
  if (lv.v2 != 30720) return 2;
  if (lv.v3 != 19132) return 3;
  return 0;
}
struct Uc_Ul_Us ret_Uc_Ul_Us(){
  struct Uc_Ul_Us lv;
  lv.v1 = 45;
  lv.v2 = 30720;
  lv.v3 = 19132;
  return lv;
}
int zig_recv_Uc_Ul_Us(struct Uc_Ul_Us);
int send_Uc_Ul_Us(){
  struct Uc_Ul_Us lv;
  lv.v1 = 45;
  lv.v2 = 30720;
  lv.v3 = 19132;
  return zig_recv_Uc_Ul_Us(lv);
}

int recv_Uc_Ul_Vp(struct Uc_Ul_Vp lv){
  if (lv.v1 != 31) return 1;
  if (lv.v2 != 15881) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Ul_Vp ret_Uc_Ul_Vp(){
  struct Uc_Ul_Vp lv;
  lv.v1 = 31;
  lv.v2 = 15881;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Ul_Vp(struct Uc_Ul_Vp);
int send_Uc_Ul_Vp(){
  struct Uc_Ul_Vp lv;
  lv.v1 = 31;
  lv.v2 = 15881;
  lv.v3 = 0;
  return zig_recv_Uc_Ul_Vp(lv);
}

int recv_Uc_Us(struct Uc_Us lv){
  if (lv.v1 != 11) return 1;
  if (lv.v2 != 20664) return 2;
  return 0;
}
struct Uc_Us ret_Uc_Us(){
  struct Uc_Us lv;
  lv.v1 = 11;
  lv.v2 = 20664;
  return lv;
}
int zig_recv_Uc_Us(struct Uc_Us);
int send_Uc_Us(){
  struct Uc_Us lv;
  lv.v1 = 11;
  lv.v2 = 20664;
  return zig_recv_Uc_Us(lv);
}

int recv_Uc_Us_C(struct Uc_Us_C lv){
  if (lv.v1 != 66) return 1;
  if (lv.v2 != 16863) return 2;
  if (lv.v3 != 105) return 3;
  return 0;
}
struct Uc_Us_C ret_Uc_Us_C(){
  struct Uc_Us_C lv;
  lv.v1 = 66;
  lv.v2 = 16863;
  lv.v3 = 105;
  return lv;
}
int zig_recv_Uc_Us_C(struct Uc_Us_C);
int send_Uc_Us_C(){
  struct Uc_Us_C lv;
  lv.v1 = 66;
  lv.v2 = 16863;
  lv.v3 = 105;
  return zig_recv_Uc_Us_C(lv);
}

int recv_Uc_Us_D(struct Uc_Us_D lv){
  if (lv.v1 != 109) return 1;
  if (lv.v2 != 4777) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Uc_Us_D ret_Uc_Us_D(){
  struct Uc_Us_D lv;
  lv.v1 = 109;
  lv.v2 = 4777;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Uc_Us_D(struct Uc_Us_D);
int send_Uc_Us_D(){
  struct Uc_Us_D lv;
  lv.v1 = 109;
  lv.v2 = 4777;
  lv.v3 = 0.875;
  return zig_recv_Uc_Us_D(lv);
}

int recv_Uc_Us_F(struct Uc_Us_F lv){
  if (lv.v1 != 56) return 1;
  if (lv.v2 != 24913) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Uc_Us_F ret_Uc_Us_F(){
  struct Uc_Us_F lv;
  lv.v1 = 56;
  lv.v2 = 24913;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Uc_Us_F(struct Uc_Us_F);
int send_Uc_Us_F(){
  struct Uc_Us_F lv;
  lv.v1 = 56;
  lv.v2 = 24913;
  lv.v3 = 0.875;
  return zig_recv_Uc_Us_F(lv);
}

int recv_Uc_Us_I(struct Uc_Us_I lv){
  if (lv.v1 != 68) return 1;
  if (lv.v2 != 16847) return 2;
  if (lv.v3 != 29863) return 3;
  return 0;
}
struct Uc_Us_I ret_Uc_Us_I(){
  struct Uc_Us_I lv;
  lv.v1 = 68;
  lv.v2 = 16847;
  lv.v3 = 29863;
  return lv;
}
int zig_recv_Uc_Us_I(struct Uc_Us_I);
int send_Uc_Us_I(){
  struct Uc_Us_I lv;
  lv.v1 = 68;
  lv.v2 = 16847;
  lv.v3 = 29863;
  return zig_recv_Uc_Us_I(lv);
}

int recv_Uc_Us_Ip(struct Uc_Us_Ip lv){
  if (lv.v1 != 104) return 1;
  if (lv.v2 != 19355) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Us_Ip ret_Uc_Us_Ip(){
  struct Uc_Us_Ip lv;
  lv.v1 = 104;
  lv.v2 = 19355;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Us_Ip(struct Uc_Us_Ip);
int send_Uc_Us_Ip(){
  struct Uc_Us_Ip lv;
  lv.v1 = 104;
  lv.v2 = 19355;
  lv.v3 = 0;
  return zig_recv_Uc_Us_Ip(lv);
}

int recv_Uc_Us_L(struct Uc_Us_L lv){
  if (lv.v1 != 118) return 1;
  if (lv.v2 != 31733) return 2;
  if (lv.v3 != 29196) return 3;
  return 0;
}
struct Uc_Us_L ret_Uc_Us_L(){
  struct Uc_Us_L lv;
  lv.v1 = 118;
  lv.v2 = 31733;
  lv.v3 = 29196;
  return lv;
}
int zig_recv_Uc_Us_L(struct Uc_Us_L);
int send_Uc_Us_L(){
  struct Uc_Us_L lv;
  lv.v1 = 118;
  lv.v2 = 31733;
  lv.v3 = 29196;
  return zig_recv_Uc_Us_L(lv);
}

int recv_Uc_Us_S(struct Uc_Us_S lv){
  if (lv.v1 != 58) return 1;
  if (lv.v2 != 1589) return 2;
  if (lv.v3 != 9859) return 3;
  return 0;
}
struct Uc_Us_S ret_Uc_Us_S(){
  struct Uc_Us_S lv;
  lv.v1 = 58;
  lv.v2 = 1589;
  lv.v3 = 9859;
  return lv;
}
int zig_recv_Uc_Us_S(struct Uc_Us_S);
int send_Uc_Us_S(){
  struct Uc_Us_S lv;
  lv.v1 = 58;
  lv.v2 = 1589;
  lv.v3 = 9859;
  return zig_recv_Uc_Us_S(lv);
}

int recv_Uc_Us_Uc(struct Uc_Us_Uc lv){
  if (lv.v1 != 25) return 1;
  if (lv.v2 != 20741) return 2;
  if (lv.v3 != 20) return 3;
  return 0;
}
struct Uc_Us_Uc ret_Uc_Us_Uc(){
  struct Uc_Us_Uc lv;
  lv.v1 = 25;
  lv.v2 = 20741;
  lv.v3 = 20;
  return lv;
}
int zig_recv_Uc_Us_Uc(struct Uc_Us_Uc);
int send_Uc_Us_Uc(){
  struct Uc_Us_Uc lv;
  lv.v1 = 25;
  lv.v2 = 20741;
  lv.v3 = 20;
  return zig_recv_Uc_Us_Uc(lv);
}

int recv_Uc_Us_Ui(struct Uc_Us_Ui lv){
  if (lv.v1 != 15) return 1;
  if (lv.v2 != 22487) return 2;
  if (lv.v3 != 26117) return 3;
  return 0;
}
struct Uc_Us_Ui ret_Uc_Us_Ui(){
  struct Uc_Us_Ui lv;
  lv.v1 = 15;
  lv.v2 = 22487;
  lv.v3 = 26117;
  return lv;
}
int zig_recv_Uc_Us_Ui(struct Uc_Us_Ui);
int send_Uc_Us_Ui(){
  struct Uc_Us_Ui lv;
  lv.v1 = 15;
  lv.v2 = 22487;
  lv.v3 = 26117;
  return zig_recv_Uc_Us_Ui(lv);
}

int recv_Uc_Us_Ul(struct Uc_Us_Ul lv){
  if (lv.v1 != 23) return 1;
  if (lv.v2 != 17738) return 2;
  if (lv.v3 != 19845) return 3;
  return 0;
}
struct Uc_Us_Ul ret_Uc_Us_Ul(){
  struct Uc_Us_Ul lv;
  lv.v1 = 23;
  lv.v2 = 17738;
  lv.v3 = 19845;
  return lv;
}
int zig_recv_Uc_Us_Ul(struct Uc_Us_Ul);
int send_Uc_Us_Ul(){
  struct Uc_Us_Ul lv;
  lv.v1 = 23;
  lv.v2 = 17738;
  lv.v3 = 19845;
  return zig_recv_Uc_Us_Ul(lv);
}

int recv_Uc_Us_Us(struct Uc_Us_Us lv){
  if (lv.v1 != 100) return 1;
  if (lv.v2 != 4864) return 2;
  if (lv.v3 != 3212) return 3;
  return 0;
}
struct Uc_Us_Us ret_Uc_Us_Us(){
  struct Uc_Us_Us lv;
  lv.v1 = 100;
  lv.v2 = 4864;
  lv.v3 = 3212;
  return lv;
}
int zig_recv_Uc_Us_Us(struct Uc_Us_Us);
int send_Uc_Us_Us(){
  struct Uc_Us_Us lv;
  lv.v1 = 100;
  lv.v2 = 4864;
  lv.v3 = 3212;
  return zig_recv_Uc_Us_Us(lv);
}

int recv_Uc_Us_Vp(struct Uc_Us_Vp lv){
  if (lv.v1 != 63) return 1;
  if (lv.v2 != 3507) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Us_Vp ret_Uc_Us_Vp(){
  struct Uc_Us_Vp lv;
  lv.v1 = 63;
  lv.v2 = 3507;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Us_Vp(struct Uc_Us_Vp);
int send_Uc_Us_Vp(){
  struct Uc_Us_Vp lv;
  lv.v1 = 63;
  lv.v2 = 3507;
  lv.v3 = 0;
  return zig_recv_Uc_Us_Vp(lv);
}

int recv_Uc_Vp(struct Uc_Vp lv){
  if (lv.v1 != 56) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct Uc_Vp ret_Uc_Vp(){
  struct Uc_Vp lv;
  lv.v1 = 56;
  lv.v2 = 0;
  return lv;
}
int zig_recv_Uc_Vp(struct Uc_Vp);
int send_Uc_Vp(){
  struct Uc_Vp lv;
  lv.v1 = 56;
  lv.v2 = 0;
  return zig_recv_Uc_Vp(lv);
}

int recv_Uc_Vp_C(struct Uc_Vp_C lv){
  if (lv.v1 != 76) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 63) return 3;
  return 0;
}
struct Uc_Vp_C ret_Uc_Vp_C(){
  struct Uc_Vp_C lv;
  lv.v1 = 76;
  lv.v2 = 0;
  lv.v3 = 63;
  return lv;
}
int zig_recv_Uc_Vp_C(struct Uc_Vp_C);
int send_Uc_Vp_C(){
  struct Uc_Vp_C lv;
  lv.v1 = 76;
  lv.v2 = 0;
  lv.v3 = 63;
  return zig_recv_Uc_Vp_C(lv);
}

int recv_Uc_Vp_D(struct Uc_Vp_D lv){
  if (lv.v1 != 111) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Uc_Vp_D ret_Uc_Vp_D(){
  struct Uc_Vp_D lv;
  lv.v1 = 111;
  lv.v2 = 0;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Uc_Vp_D(struct Uc_Vp_D);
int send_Uc_Vp_D(){
  struct Uc_Vp_D lv;
  lv.v1 = 111;
  lv.v2 = 0;
  lv.v3 = 0.875;
  return zig_recv_Uc_Vp_D(lv);
}

int recv_Uc_Vp_F(struct Uc_Vp_F lv){
  if (lv.v1 != 26) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Uc_Vp_F ret_Uc_Vp_F(){
  struct Uc_Vp_F lv;
  lv.v1 = 26;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Uc_Vp_F(struct Uc_Vp_F);
int send_Uc_Vp_F(){
  struct Uc_Vp_F lv;
  lv.v1 = 26;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return zig_recv_Uc_Vp_F(lv);
}

int recv_Uc_Vp_I(struct Uc_Vp_I lv){
  if (lv.v1 != 69) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 31332) return 3;
  return 0;
}
struct Uc_Vp_I ret_Uc_Vp_I(){
  struct Uc_Vp_I lv;
  lv.v1 = 69;
  lv.v2 = 0;
  lv.v3 = 31332;
  return lv;
}
int zig_recv_Uc_Vp_I(struct Uc_Vp_I);
int send_Uc_Vp_I(){
  struct Uc_Vp_I lv;
  lv.v1 = 69;
  lv.v2 = 0;
  lv.v3 = 31332;
  return zig_recv_Uc_Vp_I(lv);
}

int recv_Uc_Vp_Ip(struct Uc_Vp_Ip lv){
  if (lv.v1 != 125) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Vp_Ip ret_Uc_Vp_Ip(){
  struct Uc_Vp_Ip lv;
  lv.v1 = 125;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Vp_Ip(struct Uc_Vp_Ip);
int send_Uc_Vp_Ip(){
  struct Uc_Vp_Ip lv;
  lv.v1 = 125;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Uc_Vp_Ip(lv);
}

int recv_Uc_Vp_L(struct Uc_Vp_L lv){
  if (lv.v1 != 64) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 243) return 3;
  return 0;
}
struct Uc_Vp_L ret_Uc_Vp_L(){
  struct Uc_Vp_L lv;
  lv.v1 = 64;
  lv.v2 = 0;
  lv.v3 = 243;
  return lv;
}
int zig_recv_Uc_Vp_L(struct Uc_Vp_L);
int send_Uc_Vp_L(){
  struct Uc_Vp_L lv;
  lv.v1 = 64;
  lv.v2 = 0;
  lv.v3 = 243;
  return zig_recv_Uc_Vp_L(lv);
}

int recv_Uc_Vp_S(struct Uc_Vp_S lv){
  if (lv.v1 != 2) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 25419) return 3;
  return 0;
}
struct Uc_Vp_S ret_Uc_Vp_S(){
  struct Uc_Vp_S lv;
  lv.v1 = 2;
  lv.v2 = 0;
  lv.v3 = 25419;
  return lv;
}
int zig_recv_Uc_Vp_S(struct Uc_Vp_S);
int send_Uc_Vp_S(){
  struct Uc_Vp_S lv;
  lv.v1 = 2;
  lv.v2 = 0;
  lv.v3 = 25419;
  return zig_recv_Uc_Vp_S(lv);
}

int recv_Uc_Vp_Uc(struct Uc_Vp_Uc lv){
  if (lv.v1 != 113) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 51) return 3;
  return 0;
}
struct Uc_Vp_Uc ret_Uc_Vp_Uc(){
  struct Uc_Vp_Uc lv;
  lv.v1 = 113;
  lv.v2 = 0;
  lv.v3 = 51;
  return lv;
}
int zig_recv_Uc_Vp_Uc(struct Uc_Vp_Uc);
int send_Uc_Vp_Uc(){
  struct Uc_Vp_Uc lv;
  lv.v1 = 113;
  lv.v2 = 0;
  lv.v3 = 51;
  return zig_recv_Uc_Vp_Uc(lv);
}

int recv_Uc_Vp_Ui(struct Uc_Vp_Ui lv){
  if (lv.v1 != 126) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 438) return 3;
  return 0;
}
struct Uc_Vp_Ui ret_Uc_Vp_Ui(){
  struct Uc_Vp_Ui lv;
  lv.v1 = 126;
  lv.v2 = 0;
  lv.v3 = 438;
  return lv;
}
int zig_recv_Uc_Vp_Ui(struct Uc_Vp_Ui);
int send_Uc_Vp_Ui(){
  struct Uc_Vp_Ui lv;
  lv.v1 = 126;
  lv.v2 = 0;
  lv.v3 = 438;
  return zig_recv_Uc_Vp_Ui(lv);
}

int recv_Uc_Vp_Ul(struct Uc_Vp_Ul lv){
  if (lv.v1 != 42) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 8304) return 3;
  return 0;
}
struct Uc_Vp_Ul ret_Uc_Vp_Ul(){
  struct Uc_Vp_Ul lv;
  lv.v1 = 42;
  lv.v2 = 0;
  lv.v3 = 8304;
  return lv;
}
int zig_recv_Uc_Vp_Ul(struct Uc_Vp_Ul);
int send_Uc_Vp_Ul(){
  struct Uc_Vp_Ul lv;
  lv.v1 = 42;
  lv.v2 = 0;
  lv.v3 = 8304;
  return zig_recv_Uc_Vp_Ul(lv);
}

int recv_Uc_Vp_Us(struct Uc_Vp_Us lv){
  if (lv.v1 != 67) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 32011) return 3;
  return 0;
}
struct Uc_Vp_Us ret_Uc_Vp_Us(){
  struct Uc_Vp_Us lv;
  lv.v1 = 67;
  lv.v2 = 0;
  lv.v3 = 32011;
  return lv;
}
int zig_recv_Uc_Vp_Us(struct Uc_Vp_Us);
int send_Uc_Vp_Us(){
  struct Uc_Vp_Us lv;
  lv.v1 = 67;
  lv.v2 = 0;
  lv.v3 = 32011;
  return zig_recv_Uc_Vp_Us(lv);
}

int recv_Uc_Vp_Vp(struct Uc_Vp_Vp lv){
  if (lv.v1 != 63) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_Vp_Vp ret_Uc_Vp_Vp(){
  struct Uc_Vp_Vp lv;
  lv.v1 = 63;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_Vp_Vp(struct Uc_Vp_Vp);
int send_Uc_Vp_Vp(){
  struct Uc_Vp_Vp lv;
  lv.v1 = 63;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Uc_Vp_Vp(lv);
}

int recv_Ui(struct Ui lv){
  if (lv.v1 != 21566) return 1;
  return 0;
}
struct Ui ret_Ui(){
  struct Ui lv;
  lv.v1 = 21566;
  return lv;
}
int zig_recv_Ui(struct Ui);
int send_Ui(){
  struct Ui lv;
  lv.v1 = 21566;
  return zig_recv_Ui(lv);
}

int recv_Ui_C(struct Ui_C lv){
  if (lv.v1 != 5325) return 1;
  if (lv.v2 != 119) return 2;
  return 0;
}
struct Ui_C ret_Ui_C(){
  struct Ui_C lv;
  lv.v1 = 5325;
  lv.v2 = 119;
  return lv;
}
int zig_recv_Ui_C(struct Ui_C);
int send_Ui_C(){
  struct Ui_C lv;
  lv.v1 = 5325;
  lv.v2 = 119;
  return zig_recv_Ui_C(lv);
}

int recv_Ui_C_C(struct Ui_C_C lv){
  if (lv.v1 != 2074) return 1;
  if (lv.v2 != 30) return 2;
  if (lv.v3 != 98) return 3;
  return 0;
}
struct Ui_C_C ret_Ui_C_C(){
  struct Ui_C_C lv;
  lv.v1 = 2074;
  lv.v2 = 30;
  lv.v3 = 98;
  return lv;
}
int zig_recv_Ui_C_C(struct Ui_C_C);
int send_Ui_C_C(){
  struct Ui_C_C lv;
  lv.v1 = 2074;
  lv.v2 = 30;
  lv.v3 = 98;
  return zig_recv_Ui_C_C(lv);
}

int recv_Ui_C_D(struct Ui_C_D lv){
  if (lv.v1 != 20111) return 1;
  if (lv.v2 != 51) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Ui_C_D ret_Ui_C_D(){
  struct Ui_C_D lv;
  lv.v1 = 20111;
  lv.v2 = 51;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Ui_C_D(struct Ui_C_D);
int send_Ui_C_D(){
  struct Ui_C_D lv;
  lv.v1 = 20111;
  lv.v2 = 51;
  lv.v3 = -2.125;
  return zig_recv_Ui_C_D(lv);
}

int recv_Ui_C_F(struct Ui_C_F lv){
  if (lv.v1 != 4499) return 1;
  if (lv.v2 != 63) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ui_C_F ret_Ui_C_F(){
  struct Ui_C_F lv;
  lv.v1 = 4499;
  lv.v2 = 63;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ui_C_F(struct Ui_C_F);
int send_Ui_C_F(){
  struct Ui_C_F lv;
  lv.v1 = 4499;
  lv.v2 = 63;
  lv.v3 = 0.5;
  return zig_recv_Ui_C_F(lv);
}

int recv_Ui_C_I(struct Ui_C_I lv){
  if (lv.v1 != 4844) return 1;
  if (lv.v2 != 10) return 2;
  if (lv.v3 != 26553) return 3;
  return 0;
}
struct Ui_C_I ret_Ui_C_I(){
  struct Ui_C_I lv;
  lv.v1 = 4844;
  lv.v2 = 10;
  lv.v3 = 26553;
  return lv;
}
int zig_recv_Ui_C_I(struct Ui_C_I);
int send_Ui_C_I(){
  struct Ui_C_I lv;
  lv.v1 = 4844;
  lv.v2 = 10;
  lv.v3 = 26553;
  return zig_recv_Ui_C_I(lv);
}

int recv_Ui_C_Ip(struct Ui_C_Ip lv){
  if (lv.v1 != 26337) return 1;
  if (lv.v2 != 121) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_C_Ip ret_Ui_C_Ip(){
  struct Ui_C_Ip lv;
  lv.v1 = 26337;
  lv.v2 = 121;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_C_Ip(struct Ui_C_Ip);
int send_Ui_C_Ip(){
  struct Ui_C_Ip lv;
  lv.v1 = 26337;
  lv.v2 = 121;
  lv.v3 = 0;
  return zig_recv_Ui_C_Ip(lv);
}

int recv_Ui_C_L(struct Ui_C_L lv){
  if (lv.v1 != 2961) return 1;
  if (lv.v2 != 67) return 2;
  if (lv.v3 != 151) return 3;
  return 0;
}
struct Ui_C_L ret_Ui_C_L(){
  struct Ui_C_L lv;
  lv.v1 = 2961;
  lv.v2 = 67;
  lv.v3 = 151;
  return lv;
}
int zig_recv_Ui_C_L(struct Ui_C_L);
int send_Ui_C_L(){
  struct Ui_C_L lv;
  lv.v1 = 2961;
  lv.v2 = 67;
  lv.v3 = 151;
  return zig_recv_Ui_C_L(lv);
}

int recv_Ui_C_S(struct Ui_C_S lv){
  if (lv.v1 != 10462) return 1;
  if (lv.v2 != 51) return 2;
  if (lv.v3 != 15361) return 3;
  return 0;
}
struct Ui_C_S ret_Ui_C_S(){
  struct Ui_C_S lv;
  lv.v1 = 10462;
  lv.v2 = 51;
  lv.v3 = 15361;
  return lv;
}
int zig_recv_Ui_C_S(struct Ui_C_S);
int send_Ui_C_S(){
  struct Ui_C_S lv;
  lv.v1 = 10462;
  lv.v2 = 51;
  lv.v3 = 15361;
  return zig_recv_Ui_C_S(lv);
}

int recv_Ui_C_Uc(struct Ui_C_Uc lv){
  if (lv.v1 != 2638) return 1;
  if (lv.v2 != 20) return 2;
  if (lv.v3 != 80) return 3;
  return 0;
}
struct Ui_C_Uc ret_Ui_C_Uc(){
  struct Ui_C_Uc lv;
  lv.v1 = 2638;
  lv.v2 = 20;
  lv.v3 = 80;
  return lv;
}
int zig_recv_Ui_C_Uc(struct Ui_C_Uc);
int send_Ui_C_Uc(){
  struct Ui_C_Uc lv;
  lv.v1 = 2638;
  lv.v2 = 20;
  lv.v3 = 80;
  return zig_recv_Ui_C_Uc(lv);
}

int recv_Ui_C_Ui(struct Ui_C_Ui lv){
  if (lv.v1 != 29478) return 1;
  if (lv.v2 != 57) return 2;
  if (lv.v3 != 22998) return 3;
  return 0;
}
struct Ui_C_Ui ret_Ui_C_Ui(){
  struct Ui_C_Ui lv;
  lv.v1 = 29478;
  lv.v2 = 57;
  lv.v3 = 22998;
  return lv;
}
int zig_recv_Ui_C_Ui(struct Ui_C_Ui);
int send_Ui_C_Ui(){
  struct Ui_C_Ui lv;
  lv.v1 = 29478;
  lv.v2 = 57;
  lv.v3 = 22998;
  return zig_recv_Ui_C_Ui(lv);
}

int recv_Ui_C_Ul(struct Ui_C_Ul lv){
  if (lv.v1 != 19449) return 1;
  if (lv.v2 != 47) return 2;
  if (lv.v3 != 7381) return 3;
  return 0;
}
struct Ui_C_Ul ret_Ui_C_Ul(){
  struct Ui_C_Ul lv;
  lv.v1 = 19449;
  lv.v2 = 47;
  lv.v3 = 7381;
  return lv;
}
int zig_recv_Ui_C_Ul(struct Ui_C_Ul);
int send_Ui_C_Ul(){
  struct Ui_C_Ul lv;
  lv.v1 = 19449;
  lv.v2 = 47;
  lv.v3 = 7381;
  return zig_recv_Ui_C_Ul(lv);
}

int recv_Ui_C_Us(struct Ui_C_Us lv){
  if (lv.v1 != 31946) return 1;
  if (lv.v2 != 14) return 2;
  if (lv.v3 != 8587) return 3;
  return 0;
}
struct Ui_C_Us ret_Ui_C_Us(){
  struct Ui_C_Us lv;
  lv.v1 = 31946;
  lv.v2 = 14;
  lv.v3 = 8587;
  return lv;
}
int zig_recv_Ui_C_Us(struct Ui_C_Us);
int send_Ui_C_Us(){
  struct Ui_C_Us lv;
  lv.v1 = 31946;
  lv.v2 = 14;
  lv.v3 = 8587;
  return zig_recv_Ui_C_Us(lv);
}

int recv_Ui_C_Vp(struct Ui_C_Vp lv){
  if (lv.v1 != 29098) return 1;
  if (lv.v2 != 38) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_C_Vp ret_Ui_C_Vp(){
  struct Ui_C_Vp lv;
  lv.v1 = 29098;
  lv.v2 = 38;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_C_Vp(struct Ui_C_Vp);
int send_Ui_C_Vp(){
  struct Ui_C_Vp lv;
  lv.v1 = 29098;
  lv.v2 = 38;
  lv.v3 = 0;
  return zig_recv_Ui_C_Vp(lv);
}

int recv_Ui_D(struct Ui_D lv){
  if (lv.v1 != 315) return 1;
  if (lv.v2 != 4.5) return 2;
  return 0;
}
struct Ui_D ret_Ui_D(){
  struct Ui_D lv;
  lv.v1 = 315;
  lv.v2 = 4.5;
  return lv;
}
int zig_recv_Ui_D(struct Ui_D);
int send_Ui_D(){
  struct Ui_D lv;
  lv.v1 = 315;
  lv.v2 = 4.5;
  return zig_recv_Ui_D(lv);
}

int recv_Ui_D_C(struct Ui_D_C lv){
  if (lv.v1 != 16474) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 96) return 3;
  return 0;
}
struct Ui_D_C ret_Ui_D_C(){
  struct Ui_D_C lv;
  lv.v1 = 16474;
  lv.v2 = 0.5;
  lv.v3 = 96;
  return lv;
}
int zig_recv_Ui_D_C(struct Ui_D_C);
int send_Ui_D_C(){
  struct Ui_D_C lv;
  lv.v1 = 16474;
  lv.v2 = 0.5;
  lv.v3 = 96;
  return zig_recv_Ui_D_C(lv);
}

int recv_Ui_D_D(struct Ui_D_D lv){
  if (lv.v1 != 25546) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Ui_D_D ret_Ui_D_D(){
  struct Ui_D_D lv;
  lv.v1 = 25546;
  lv.v2 = 1.0;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Ui_D_D(struct Ui_D_D);
int send_Ui_D_D(){
  struct Ui_D_D lv;
  lv.v1 = 25546;
  lv.v2 = 1.0;
  lv.v3 = -2.125;
  return zig_recv_Ui_D_D(lv);
}

int recv_Ui_D_F(struct Ui_D_F lv){
  if (lv.v1 != 29141) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ui_D_F ret_Ui_D_F(){
  struct Ui_D_F lv;
  lv.v1 = 29141;
  lv.v2 = -2.125;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ui_D_F(struct Ui_D_F);
int send_Ui_D_F(){
  struct Ui_D_F lv;
  lv.v1 = 29141;
  lv.v2 = -2.125;
  lv.v3 = 0.5;
  return zig_recv_Ui_D_F(lv);
}

int recv_Ui_D_I(struct Ui_D_I lv){
  if (lv.v1 != 1975) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 5749) return 3;
  return 0;
}
struct Ui_D_I ret_Ui_D_I(){
  struct Ui_D_I lv;
  lv.v1 = 1975;
  lv.v2 = -2.125;
  lv.v3 = 5749;
  return lv;
}
int zig_recv_Ui_D_I(struct Ui_D_I);
int send_Ui_D_I(){
  struct Ui_D_I lv;
  lv.v1 = 1975;
  lv.v2 = -2.125;
  lv.v3 = 5749;
  return zig_recv_Ui_D_I(lv);
}

int recv_Ui_D_Ip(struct Ui_D_Ip lv){
  if (lv.v1 != 16414) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_D_Ip ret_Ui_D_Ip(){
  struct Ui_D_Ip lv;
  lv.v1 = 16414;
  lv.v2 = -2.125;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_D_Ip(struct Ui_D_Ip);
int send_Ui_D_Ip(){
  struct Ui_D_Ip lv;
  lv.v1 = 16414;
  lv.v2 = -2.125;
  lv.v3 = 0;
  return zig_recv_Ui_D_Ip(lv);
}

int recv_Ui_D_L(struct Ui_D_L lv){
  if (lv.v1 != 4261) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 28898) return 3;
  return 0;
}
struct Ui_D_L ret_Ui_D_L(){
  struct Ui_D_L lv;
  lv.v1 = 4261;
  lv.v2 = 0.5;
  lv.v3 = 28898;
  return lv;
}
int zig_recv_Ui_D_L(struct Ui_D_L);
int send_Ui_D_L(){
  struct Ui_D_L lv;
  lv.v1 = 4261;
  lv.v2 = 0.5;
  lv.v3 = 28898;
  return zig_recv_Ui_D_L(lv);
}

int recv_Ui_D_S(struct Ui_D_S lv){
  if (lv.v1 != 15608) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 13134) return 3;
  return 0;
}
struct Ui_D_S ret_Ui_D_S(){
  struct Ui_D_S lv;
  lv.v1 = 15608;
  lv.v2 = 1.0;
  lv.v3 = 13134;
  return lv;
}
int zig_recv_Ui_D_S(struct Ui_D_S);
int send_Ui_D_S(){
  struct Ui_D_S lv;
  lv.v1 = 15608;
  lv.v2 = 1.0;
  lv.v3 = 13134;
  return zig_recv_Ui_D_S(lv);
}

int recv_Ui_D_Uc(struct Ui_D_Uc lv){
  if (lv.v1 != 24011) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 44) return 3;
  return 0;
}
struct Ui_D_Uc ret_Ui_D_Uc(){
  struct Ui_D_Uc lv;
  lv.v1 = 24011;
  lv.v2 = 0.5;
  lv.v3 = 44;
  return lv;
}
int zig_recv_Ui_D_Uc(struct Ui_D_Uc);
int send_Ui_D_Uc(){
  struct Ui_D_Uc lv;
  lv.v1 = 24011;
  lv.v2 = 0.5;
  lv.v3 = 44;
  return zig_recv_Ui_D_Uc(lv);
}

int recv_Ui_D_Ui(struct Ui_D_Ui lv){
  if (lv.v1 != 14071) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 27266) return 3;
  return 0;
}
struct Ui_D_Ui ret_Ui_D_Ui(){
  struct Ui_D_Ui lv;
  lv.v1 = 14071;
  lv.v2 = -0.25;
  lv.v3 = 27266;
  return lv;
}
int zig_recv_Ui_D_Ui(struct Ui_D_Ui);
int send_Ui_D_Ui(){
  struct Ui_D_Ui lv;
  lv.v1 = 14071;
  lv.v2 = -0.25;
  lv.v3 = 27266;
  return zig_recv_Ui_D_Ui(lv);
}

int recv_Ui_D_Ul(struct Ui_D_Ul lv){
  if (lv.v1 != 30134) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 721) return 3;
  return 0;
}
struct Ui_D_Ul ret_Ui_D_Ul(){
  struct Ui_D_Ul lv;
  lv.v1 = 30134;
  lv.v2 = -0.25;
  lv.v3 = 721;
  return lv;
}
int zig_recv_Ui_D_Ul(struct Ui_D_Ul);
int send_Ui_D_Ul(){
  struct Ui_D_Ul lv;
  lv.v1 = 30134;
  lv.v2 = -0.25;
  lv.v3 = 721;
  return zig_recv_Ui_D_Ul(lv);
}

int recv_Ui_D_Us(struct Ui_D_Us lv){
  if (lv.v1 != 5768) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 27856) return 3;
  return 0;
}
struct Ui_D_Us ret_Ui_D_Us(){
  struct Ui_D_Us lv;
  lv.v1 = 5768;
  lv.v2 = -0.25;
  lv.v3 = 27856;
  return lv;
}
int zig_recv_Ui_D_Us(struct Ui_D_Us);
int send_Ui_D_Us(){
  struct Ui_D_Us lv;
  lv.v1 = 5768;
  lv.v2 = -0.25;
  lv.v3 = 27856;
  return zig_recv_Ui_D_Us(lv);
}

int recv_Ui_D_Vp(struct Ui_D_Vp lv){
  if (lv.v1 != 31578) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_D_Vp ret_Ui_D_Vp(){
  struct Ui_D_Vp lv;
  lv.v1 = 31578;
  lv.v2 = 0.5;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_D_Vp(struct Ui_D_Vp);
int send_Ui_D_Vp(){
  struct Ui_D_Vp lv;
  lv.v1 = 31578;
  lv.v2 = 0.5;
  lv.v3 = 0;
  return zig_recv_Ui_D_Vp(lv);
}

int recv_Ui_F(struct Ui_F lv){
  if (lv.v1 != 14418) return 1;
  if (lv.v2 != 1.0) return 2;
  return 0;
}
struct Ui_F ret_Ui_F(){
  struct Ui_F lv;
  lv.v1 = 14418;
  lv.v2 = 1.0;
  return lv;
}
int zig_recv_Ui_F(struct Ui_F);
int send_Ui_F(){
  struct Ui_F lv;
  lv.v1 = 14418;
  lv.v2 = 1.0;
  return zig_recv_Ui_F(lv);
}

int recv_Ui_F_C(struct Ui_F_C lv){
  if (lv.v1 != 32003) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 101) return 3;
  return 0;
}
struct Ui_F_C ret_Ui_F_C(){
  struct Ui_F_C lv;
  lv.v1 = 32003;
  lv.v2 = 0.875;
  lv.v3 = 101;
  return lv;
}
int zig_recv_Ui_F_C(struct Ui_F_C);
int send_Ui_F_C(){
  struct Ui_F_C lv;
  lv.v1 = 32003;
  lv.v2 = 0.875;
  lv.v3 = 101;
  return zig_recv_Ui_F_C(lv);
}

int recv_Ui_F_D(struct Ui_F_D lv){
  if (lv.v1 != 26497) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ui_F_D ret_Ui_F_D(){
  struct Ui_F_D lv;
  lv.v1 = 26497;
  lv.v2 = 0.5;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ui_F_D(struct Ui_F_D);
int send_Ui_F_D(){
  struct Ui_F_D lv;
  lv.v1 = 26497;
  lv.v2 = 0.5;
  lv.v3 = 0.5;
  return zig_recv_Ui_F_D(lv);
}

int recv_Ui_F_F(struct Ui_F_F lv){
  if (lv.v1 != 11461) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Ui_F_F ret_Ui_F_F(){
  struct Ui_F_F lv;
  lv.v1 = 11461;
  lv.v2 = 4.5;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Ui_F_F(struct Ui_F_F);
int send_Ui_F_F(){
  struct Ui_F_F lv;
  lv.v1 = 11461;
  lv.v2 = 4.5;
  lv.v3 = -2.125;
  return zig_recv_Ui_F_F(lv);
}

int recv_Ui_F_I(struct Ui_F_I lv){
  if (lv.v1 != 6626) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 6737) return 3;
  return 0;
}
struct Ui_F_I ret_Ui_F_I(){
  struct Ui_F_I lv;
  lv.v1 = 6626;
  lv.v2 = -0.25;
  lv.v3 = 6737;
  return lv;
}
int zig_recv_Ui_F_I(struct Ui_F_I);
int send_Ui_F_I(){
  struct Ui_F_I lv;
  lv.v1 = 6626;
  lv.v2 = -0.25;
  lv.v3 = 6737;
  return zig_recv_Ui_F_I(lv);
}

int recv_Ui_F_Ip(struct Ui_F_Ip lv){
  if (lv.v1 != 23822) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_F_Ip ret_Ui_F_Ip(){
  struct Ui_F_Ip lv;
  lv.v1 = 23822;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_F_Ip(struct Ui_F_Ip);
int send_Ui_F_Ip(){
  struct Ui_F_Ip lv;
  lv.v1 = 23822;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return zig_recv_Ui_F_Ip(lv);
}

int recv_Ui_F_L(struct Ui_F_L lv){
  if (lv.v1 != 5702) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 4668) return 3;
  return 0;
}
struct Ui_F_L ret_Ui_F_L(){
  struct Ui_F_L lv;
  lv.v1 = 5702;
  lv.v2 = 1.0;
  lv.v3 = 4668;
  return lv;
}
int zig_recv_Ui_F_L(struct Ui_F_L);
int send_Ui_F_L(){
  struct Ui_F_L lv;
  lv.v1 = 5702;
  lv.v2 = 1.0;
  lv.v3 = 4668;
  return zig_recv_Ui_F_L(lv);
}

int recv_Ui_F_S(struct Ui_F_S lv){
  if (lv.v1 != 18801) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 16) return 3;
  return 0;
}
struct Ui_F_S ret_Ui_F_S(){
  struct Ui_F_S lv;
  lv.v1 = 18801;
  lv.v2 = -2.125;
  lv.v3 = 16;
  return lv;
}
int zig_recv_Ui_F_S(struct Ui_F_S);
int send_Ui_F_S(){
  struct Ui_F_S lv;
  lv.v1 = 18801;
  lv.v2 = -2.125;
  lv.v3 = 16;
  return zig_recv_Ui_F_S(lv);
}

int recv_Ui_F_Uc(struct Ui_F_Uc lv){
  if (lv.v1 != 6275) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 13) return 3;
  return 0;
}
struct Ui_F_Uc ret_Ui_F_Uc(){
  struct Ui_F_Uc lv;
  lv.v1 = 6275;
  lv.v2 = 7.0;
  lv.v3 = 13;
  return lv;
}
int zig_recv_Ui_F_Uc(struct Ui_F_Uc);
int send_Ui_F_Uc(){
  struct Ui_F_Uc lv;
  lv.v1 = 6275;
  lv.v2 = 7.0;
  lv.v3 = 13;
  return zig_recv_Ui_F_Uc(lv);
}

int recv_Ui_F_Ui(struct Ui_F_Ui lv){
  if (lv.v1 != 19572) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 15260) return 3;
  return 0;
}
struct Ui_F_Ui ret_Ui_F_Ui(){
  struct Ui_F_Ui lv;
  lv.v1 = 19572;
  lv.v2 = 1.0;
  lv.v3 = 15260;
  return lv;
}
int zig_recv_Ui_F_Ui(struct Ui_F_Ui);
int send_Ui_F_Ui(){
  struct Ui_F_Ui lv;
  lv.v1 = 19572;
  lv.v2 = 1.0;
  lv.v3 = 15260;
  return zig_recv_Ui_F_Ui(lv);
}

int recv_Ui_F_Ul(struct Ui_F_Ul lv){
  if (lv.v1 != 14594) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 12629) return 3;
  return 0;
}
struct Ui_F_Ul ret_Ui_F_Ul(){
  struct Ui_F_Ul lv;
  lv.v1 = 14594;
  lv.v2 = 0.875;
  lv.v3 = 12629;
  return lv;
}
int zig_recv_Ui_F_Ul(struct Ui_F_Ul);
int send_Ui_F_Ul(){
  struct Ui_F_Ul lv;
  lv.v1 = 14594;
  lv.v2 = 0.875;
  lv.v3 = 12629;
  return zig_recv_Ui_F_Ul(lv);
}

int recv_Ui_F_Us(struct Ui_F_Us lv){
  if (lv.v1 != 5740) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 28004) return 3;
  return 0;
}
struct Ui_F_Us ret_Ui_F_Us(){
  struct Ui_F_Us lv;
  lv.v1 = 5740;
  lv.v2 = 4.5;
  lv.v3 = 28004;
  return lv;
}
int zig_recv_Ui_F_Us(struct Ui_F_Us);
int send_Ui_F_Us(){
  struct Ui_F_Us lv;
  lv.v1 = 5740;
  lv.v2 = 4.5;
  lv.v3 = 28004;
  return zig_recv_Ui_F_Us(lv);
}

int recv_Ui_F_Vp(struct Ui_F_Vp lv){
  if (lv.v1 != 7191) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_F_Vp ret_Ui_F_Vp(){
  struct Ui_F_Vp lv;
  lv.v1 = 7191;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_F_Vp(struct Ui_F_Vp);
int send_Ui_F_Vp(){
  struct Ui_F_Vp lv;
  lv.v1 = 7191;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return zig_recv_Ui_F_Vp(lv);
}

int recv_Ui_I(struct Ui_I lv){
  if (lv.v1 != 16186) return 1;
  if (lv.v2 != 17720) return 2;
  return 0;
}
struct Ui_I ret_Ui_I(){
  struct Ui_I lv;
  lv.v1 = 16186;
  lv.v2 = 17720;
  return lv;
}
int zig_recv_Ui_I(struct Ui_I);
int send_Ui_I(){
  struct Ui_I lv;
  lv.v1 = 16186;
  lv.v2 = 17720;
  return zig_recv_Ui_I(lv);
}

int recv_Ui_I_C(struct Ui_I_C lv){
  if (lv.v1 != 12173) return 1;
  if (lv.v2 != 24063) return 2;
  if (lv.v3 != 17) return 3;
  return 0;
}
struct Ui_I_C ret_Ui_I_C(){
  struct Ui_I_C lv;
  lv.v1 = 12173;
  lv.v2 = 24063;
  lv.v3 = 17;
  return lv;
}
int zig_recv_Ui_I_C(struct Ui_I_C);
int send_Ui_I_C(){
  struct Ui_I_C lv;
  lv.v1 = 12173;
  lv.v2 = 24063;
  lv.v3 = 17;
  return zig_recv_Ui_I_C(lv);
}

int recv_Ui_I_D(struct Ui_I_D lv){
  if (lv.v1 != 23097) return 1;
  if (lv.v2 != 29966) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Ui_I_D ret_Ui_I_D(){
  struct Ui_I_D lv;
  lv.v1 = 23097;
  lv.v2 = 29966;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Ui_I_D(struct Ui_I_D);
int send_Ui_I_D(){
  struct Ui_I_D lv;
  lv.v1 = 23097;
  lv.v2 = 29966;
  lv.v3 = 4.5;
  return zig_recv_Ui_I_D(lv);
}

int recv_Ui_I_F(struct Ui_I_F lv){
  if (lv.v1 != 25881) return 1;
  if (lv.v2 != 8125) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Ui_I_F ret_Ui_I_F(){
  struct Ui_I_F lv;
  lv.v1 = 25881;
  lv.v2 = 8125;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Ui_I_F(struct Ui_I_F);
int send_Ui_I_F(){
  struct Ui_I_F lv;
  lv.v1 = 25881;
  lv.v2 = 8125;
  lv.v3 = 4.5;
  return zig_recv_Ui_I_F(lv);
}

int recv_Ui_I_I(struct Ui_I_I lv){
  if (lv.v1 != 17320) return 1;
  if (lv.v2 != 21220) return 2;
  if (lv.v3 != 31002) return 3;
  return 0;
}
struct Ui_I_I ret_Ui_I_I(){
  struct Ui_I_I lv;
  lv.v1 = 17320;
  lv.v2 = 21220;
  lv.v3 = 31002;
  return lv;
}
int zig_recv_Ui_I_I(struct Ui_I_I);
int send_Ui_I_I(){
  struct Ui_I_I lv;
  lv.v1 = 17320;
  lv.v2 = 21220;
  lv.v3 = 31002;
  return zig_recv_Ui_I_I(lv);
}

int recv_Ui_I_Ip(struct Ui_I_Ip lv){
  if (lv.v1 != 22775) return 1;
  if (lv.v2 != 11882) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_I_Ip ret_Ui_I_Ip(){
  struct Ui_I_Ip lv;
  lv.v1 = 22775;
  lv.v2 = 11882;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_I_Ip(struct Ui_I_Ip);
int send_Ui_I_Ip(){
  struct Ui_I_Ip lv;
  lv.v1 = 22775;
  lv.v2 = 11882;
  lv.v3 = 0;
  return zig_recv_Ui_I_Ip(lv);
}

int recv_Ui_I_L(struct Ui_I_L lv){
  if (lv.v1 != 27000) return 1;
  if (lv.v2 != 29131) return 2;
  if (lv.v3 != 17961) return 3;
  return 0;
}
struct Ui_I_L ret_Ui_I_L(){
  struct Ui_I_L lv;
  lv.v1 = 27000;
  lv.v2 = 29131;
  lv.v3 = 17961;
  return lv;
}
int zig_recv_Ui_I_L(struct Ui_I_L);
int send_Ui_I_L(){
  struct Ui_I_L lv;
  lv.v1 = 27000;
  lv.v2 = 29131;
  lv.v3 = 17961;
  return zig_recv_Ui_I_L(lv);
}

int recv_Ui_I_S(struct Ui_I_S lv){
  if (lv.v1 != 5591) return 1;
  if (lv.v2 != 6137) return 2;
  if (lv.v3 != 15626) return 3;
  return 0;
}
struct Ui_I_S ret_Ui_I_S(){
  struct Ui_I_S lv;
  lv.v1 = 5591;
  lv.v2 = 6137;
  lv.v3 = 15626;
  return lv;
}
int zig_recv_Ui_I_S(struct Ui_I_S);
int send_Ui_I_S(){
  struct Ui_I_S lv;
  lv.v1 = 5591;
  lv.v2 = 6137;
  lv.v3 = 15626;
  return zig_recv_Ui_I_S(lv);
}

int recv_Ui_I_Uc(struct Ui_I_Uc lv){
  if (lv.v1 != 22976) return 1;
  if (lv.v2 != 9458) return 2;
  if (lv.v3 != 15) return 3;
  return 0;
}
struct Ui_I_Uc ret_Ui_I_Uc(){
  struct Ui_I_Uc lv;
  lv.v1 = 22976;
  lv.v2 = 9458;
  lv.v3 = 15;
  return lv;
}
int zig_recv_Ui_I_Uc(struct Ui_I_Uc);
int send_Ui_I_Uc(){
  struct Ui_I_Uc lv;
  lv.v1 = 22976;
  lv.v2 = 9458;
  lv.v3 = 15;
  return zig_recv_Ui_I_Uc(lv);
}

int recv_Ui_I_Ui(struct Ui_I_Ui lv){
  if (lv.v1 != 18558) return 1;
  if (lv.v2 != 4834) return 2;
  if (lv.v3 != 26727) return 3;
  return 0;
}
struct Ui_I_Ui ret_Ui_I_Ui(){
  struct Ui_I_Ui lv;
  lv.v1 = 18558;
  lv.v2 = 4834;
  lv.v3 = 26727;
  return lv;
}
int zig_recv_Ui_I_Ui(struct Ui_I_Ui);
int send_Ui_I_Ui(){
  struct Ui_I_Ui lv;
  lv.v1 = 18558;
  lv.v2 = 4834;
  lv.v3 = 26727;
  return zig_recv_Ui_I_Ui(lv);
}

int recv_Ui_I_Ul(struct Ui_I_Ul lv){
  if (lv.v1 != 10972) return 1;
  if (lv.v2 != 16539) return 2;
  if (lv.v3 != 15979) return 3;
  return 0;
}
struct Ui_I_Ul ret_Ui_I_Ul(){
  struct Ui_I_Ul lv;
  lv.v1 = 10972;
  lv.v2 = 16539;
  lv.v3 = 15979;
  return lv;
}
int zig_recv_Ui_I_Ul(struct Ui_I_Ul);
int send_Ui_I_Ul(){
  struct Ui_I_Ul lv;
  lv.v1 = 10972;
  lv.v2 = 16539;
  lv.v3 = 15979;
  return zig_recv_Ui_I_Ul(lv);
}

int recv_Ui_I_Us(struct Ui_I_Us lv){
  if (lv.v1 != 2253) return 1;
  if (lv.v2 != 31488) return 2;
  if (lv.v3 != 9728) return 3;
  return 0;
}
struct Ui_I_Us ret_Ui_I_Us(){
  struct Ui_I_Us lv;
  lv.v1 = 2253;
  lv.v2 = 31488;
  lv.v3 = 9728;
  return lv;
}
int zig_recv_Ui_I_Us(struct Ui_I_Us);
int send_Ui_I_Us(){
  struct Ui_I_Us lv;
  lv.v1 = 2253;
  lv.v2 = 31488;
  lv.v3 = 9728;
  return zig_recv_Ui_I_Us(lv);
}

int recv_Ui_I_Vp(struct Ui_I_Vp lv){
  if (lv.v1 != 29046) return 1;
  if (lv.v2 != 1341) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_I_Vp ret_Ui_I_Vp(){
  struct Ui_I_Vp lv;
  lv.v1 = 29046;
  lv.v2 = 1341;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_I_Vp(struct Ui_I_Vp);
int send_Ui_I_Vp(){
  struct Ui_I_Vp lv;
  lv.v1 = 29046;
  lv.v2 = 1341;
  lv.v3 = 0;
  return zig_recv_Ui_I_Vp(lv);
}

int recv_Ui_Ip(struct Ui_Ip lv){
  if (lv.v1 != 15626) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct Ui_Ip ret_Ui_Ip(){
  struct Ui_Ip lv;
  lv.v1 = 15626;
  lv.v2 = 0;
  return lv;
}
int zig_recv_Ui_Ip(struct Ui_Ip);
int send_Ui_Ip(){
  struct Ui_Ip lv;
  lv.v1 = 15626;
  lv.v2 = 0;
  return zig_recv_Ui_Ip(lv);
}

int recv_Ui_Ip_C(struct Ui_Ip_C lv){
  if (lv.v1 != 27402) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 92) return 3;
  return 0;
}
struct Ui_Ip_C ret_Ui_Ip_C(){
  struct Ui_Ip_C lv;
  lv.v1 = 27402;
  lv.v2 = 0;
  lv.v3 = 92;
  return lv;
}
int zig_recv_Ui_Ip_C(struct Ui_Ip_C);
int send_Ui_Ip_C(){
  struct Ui_Ip_C lv;
  lv.v1 = 27402;
  lv.v2 = 0;
  lv.v3 = 92;
  return zig_recv_Ui_Ip_C(lv);
}

int recv_Ui_Ip_D(struct Ui_Ip_D lv){
  if (lv.v1 != 10612) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Ui_Ip_D ret_Ui_Ip_D(){
  struct Ui_Ip_D lv;
  lv.v1 = 10612;
  lv.v2 = 0;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Ui_Ip_D(struct Ui_Ip_D);
int send_Ui_Ip_D(){
  struct Ui_Ip_D lv;
  lv.v1 = 10612;
  lv.v2 = 0;
  lv.v3 = 0.875;
  return zig_recv_Ui_Ip_D(lv);
}

int recv_Ui_Ip_F(struct Ui_Ip_F lv){
  if (lv.v1 != 27180) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Ui_Ip_F ret_Ui_Ip_F(){
  struct Ui_Ip_F lv;
  lv.v1 = 27180;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Ui_Ip_F(struct Ui_Ip_F);
int send_Ui_Ip_F(){
  struct Ui_Ip_F lv;
  lv.v1 = 27180;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return zig_recv_Ui_Ip_F(lv);
}

int recv_Ui_Ip_I(struct Ui_Ip_I lv){
  if (lv.v1 != 28768) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7763) return 3;
  return 0;
}
struct Ui_Ip_I ret_Ui_Ip_I(){
  struct Ui_Ip_I lv;
  lv.v1 = 28768;
  lv.v2 = 0;
  lv.v3 = 7763;
  return lv;
}
int zig_recv_Ui_Ip_I(struct Ui_Ip_I);
int send_Ui_Ip_I(){
  struct Ui_Ip_I lv;
  lv.v1 = 28768;
  lv.v2 = 0;
  lv.v3 = 7763;
  return zig_recv_Ui_Ip_I(lv);
}

int recv_Ui_Ip_Ip(struct Ui_Ip_Ip lv){
  if (lv.v1 != 29433) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Ip_Ip ret_Ui_Ip_Ip(){
  struct Ui_Ip_Ip lv;
  lv.v1 = 29433;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Ip_Ip(struct Ui_Ip_Ip);
int send_Ui_Ip_Ip(){
  struct Ui_Ip_Ip lv;
  lv.v1 = 29433;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Ui_Ip_Ip(lv);
}

int recv_Ui_Ip_L(struct Ui_Ip_L lv){
  if (lv.v1 != 4514) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 11287) return 3;
  return 0;
}
struct Ui_Ip_L ret_Ui_Ip_L(){
  struct Ui_Ip_L lv;
  lv.v1 = 4514;
  lv.v2 = 0;
  lv.v3 = 11287;
  return lv;
}
int zig_recv_Ui_Ip_L(struct Ui_Ip_L);
int send_Ui_Ip_L(){
  struct Ui_Ip_L lv;
  lv.v1 = 4514;
  lv.v2 = 0;
  lv.v3 = 11287;
  return zig_recv_Ui_Ip_L(lv);
}

int recv_Ui_Ip_S(struct Ui_Ip_S lv){
  if (lv.v1 != 26737) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 23696) return 3;
  return 0;
}
struct Ui_Ip_S ret_Ui_Ip_S(){
  struct Ui_Ip_S lv;
  lv.v1 = 26737;
  lv.v2 = 0;
  lv.v3 = 23696;
  return lv;
}
int zig_recv_Ui_Ip_S(struct Ui_Ip_S);
int send_Ui_Ip_S(){
  struct Ui_Ip_S lv;
  lv.v1 = 26737;
  lv.v2 = 0;
  lv.v3 = 23696;
  return zig_recv_Ui_Ip_S(lv);
}

int recv_Ui_Ip_Uc(struct Ui_Ip_Uc lv){
  if (lv.v1 != 3439) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 66) return 3;
  return 0;
}
struct Ui_Ip_Uc ret_Ui_Ip_Uc(){
  struct Ui_Ip_Uc lv;
  lv.v1 = 3439;
  lv.v2 = 0;
  lv.v3 = 66;
  return lv;
}
int zig_recv_Ui_Ip_Uc(struct Ui_Ip_Uc);
int send_Ui_Ip_Uc(){
  struct Ui_Ip_Uc lv;
  lv.v1 = 3439;
  lv.v2 = 0;
  lv.v3 = 66;
  return zig_recv_Ui_Ip_Uc(lv);
}

int recv_Ui_Ip_Ui(struct Ui_Ip_Ui lv){
  if (lv.v1 != 12941) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4092) return 3;
  return 0;
}
struct Ui_Ip_Ui ret_Ui_Ip_Ui(){
  struct Ui_Ip_Ui lv;
  lv.v1 = 12941;
  lv.v2 = 0;
  lv.v3 = 4092;
  return lv;
}
int zig_recv_Ui_Ip_Ui(struct Ui_Ip_Ui);
int send_Ui_Ip_Ui(){
  struct Ui_Ip_Ui lv;
  lv.v1 = 12941;
  lv.v2 = 0;
  lv.v3 = 4092;
  return zig_recv_Ui_Ip_Ui(lv);
}

int recv_Ui_Ip_Ul(struct Ui_Ip_Ul lv){
  if (lv.v1 != 23885) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 27882) return 3;
  return 0;
}
struct Ui_Ip_Ul ret_Ui_Ip_Ul(){
  struct Ui_Ip_Ul lv;
  lv.v1 = 23885;
  lv.v2 = 0;
  lv.v3 = 27882;
  return lv;
}
int zig_recv_Ui_Ip_Ul(struct Ui_Ip_Ul);
int send_Ui_Ip_Ul(){
  struct Ui_Ip_Ul lv;
  lv.v1 = 23885;
  lv.v2 = 0;
  lv.v3 = 27882;
  return zig_recv_Ui_Ip_Ul(lv);
}

int recv_Ui_Ip_Us(struct Ui_Ip_Us lv){
  if (lv.v1 != 18464) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 114) return 3;
  return 0;
}
struct Ui_Ip_Us ret_Ui_Ip_Us(){
  struct Ui_Ip_Us lv;
  lv.v1 = 18464;
  lv.v2 = 0;
  lv.v3 = 114;
  return lv;
}
int zig_recv_Ui_Ip_Us(struct Ui_Ip_Us);
int send_Ui_Ip_Us(){
  struct Ui_Ip_Us lv;
  lv.v1 = 18464;
  lv.v2 = 0;
  lv.v3 = 114;
  return zig_recv_Ui_Ip_Us(lv);
}

int recv_Ui_Ip_Vp(struct Ui_Ip_Vp lv){
  if (lv.v1 != 18904) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Ip_Vp ret_Ui_Ip_Vp(){
  struct Ui_Ip_Vp lv;
  lv.v1 = 18904;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Ip_Vp(struct Ui_Ip_Vp);
int send_Ui_Ip_Vp(){
  struct Ui_Ip_Vp lv;
  lv.v1 = 18904;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Ui_Ip_Vp(lv);
}

int recv_Ui_L(struct Ui_L lv){
  if (lv.v1 != 13252) return 1;
  if (lv.v2 != 1507) return 2;
  return 0;
}
struct Ui_L ret_Ui_L(){
  struct Ui_L lv;
  lv.v1 = 13252;
  lv.v2 = 1507;
  return lv;
}
int zig_recv_Ui_L(struct Ui_L);
int send_Ui_L(){
  struct Ui_L lv;
  lv.v1 = 13252;
  lv.v2 = 1507;
  return zig_recv_Ui_L(lv);
}

int recv_Ui_L_C(struct Ui_L_C lv){
  if (lv.v1 != 26935) return 1;
  if (lv.v2 != 26745) return 2;
  if (lv.v3 != 98) return 3;
  return 0;
}
struct Ui_L_C ret_Ui_L_C(){
  struct Ui_L_C lv;
  lv.v1 = 26935;
  lv.v2 = 26745;
  lv.v3 = 98;
  return lv;
}
int zig_recv_Ui_L_C(struct Ui_L_C);
int send_Ui_L_C(){
  struct Ui_L_C lv;
  lv.v1 = 26935;
  lv.v2 = 26745;
  lv.v3 = 98;
  return zig_recv_Ui_L_C(lv);
}

int recv_Ui_L_D(struct Ui_L_D lv){
  if (lv.v1 != 25341) return 1;
  if (lv.v2 != 30357) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Ui_L_D ret_Ui_L_D(){
  struct Ui_L_D lv;
  lv.v1 = 25341;
  lv.v2 = 30357;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Ui_L_D(struct Ui_L_D);
int send_Ui_L_D(){
  struct Ui_L_D lv;
  lv.v1 = 25341;
  lv.v2 = 30357;
  lv.v3 = -2.125;
  return zig_recv_Ui_L_D(lv);
}

int recv_Ui_L_F(struct Ui_L_F lv){
  if (lv.v1 != 29079) return 1;
  if (lv.v2 != 3601) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ui_L_F ret_Ui_L_F(){
  struct Ui_L_F lv;
  lv.v1 = 29079;
  lv.v2 = 3601;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ui_L_F(struct Ui_L_F);
int send_Ui_L_F(){
  struct Ui_L_F lv;
  lv.v1 = 29079;
  lv.v2 = 3601;
  lv.v3 = 0.5;
  return zig_recv_Ui_L_F(lv);
}

int recv_Ui_L_I(struct Ui_L_I lv){
  if (lv.v1 != 10351) return 1;
  if (lv.v2 != 18559) return 2;
  if (lv.v3 != 6276) return 3;
  return 0;
}
struct Ui_L_I ret_Ui_L_I(){
  struct Ui_L_I lv;
  lv.v1 = 10351;
  lv.v2 = 18559;
  lv.v3 = 6276;
  return lv;
}
int zig_recv_Ui_L_I(struct Ui_L_I);
int send_Ui_L_I(){
  struct Ui_L_I lv;
  lv.v1 = 10351;
  lv.v2 = 18559;
  lv.v3 = 6276;
  return zig_recv_Ui_L_I(lv);
}

int recv_Ui_L_Ip(struct Ui_L_Ip lv){
  if (lv.v1 != 25585) return 1;
  if (lv.v2 != 20929) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_L_Ip ret_Ui_L_Ip(){
  struct Ui_L_Ip lv;
  lv.v1 = 25585;
  lv.v2 = 20929;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_L_Ip(struct Ui_L_Ip);
int send_Ui_L_Ip(){
  struct Ui_L_Ip lv;
  lv.v1 = 25585;
  lv.v2 = 20929;
  lv.v3 = 0;
  return zig_recv_Ui_L_Ip(lv);
}

int recv_Ui_L_L(struct Ui_L_L lv){
  if (lv.v1 != 24212) return 1;
  if (lv.v2 != 19798) return 2;
  if (lv.v3 != 593) return 3;
  return 0;
}
struct Ui_L_L ret_Ui_L_L(){
  struct Ui_L_L lv;
  lv.v1 = 24212;
  lv.v2 = 19798;
  lv.v3 = 593;
  return lv;
}
int zig_recv_Ui_L_L(struct Ui_L_L);
int send_Ui_L_L(){
  struct Ui_L_L lv;
  lv.v1 = 24212;
  lv.v2 = 19798;
  lv.v3 = 593;
  return zig_recv_Ui_L_L(lv);
}

int recv_Ui_L_S(struct Ui_L_S lv){
  if (lv.v1 != 21162) return 1;
  if (lv.v2 != 4452) return 2;
  if (lv.v3 != 9615) return 3;
  return 0;
}
struct Ui_L_S ret_Ui_L_S(){
  struct Ui_L_S lv;
  lv.v1 = 21162;
  lv.v2 = 4452;
  lv.v3 = 9615;
  return lv;
}
int zig_recv_Ui_L_S(struct Ui_L_S);
int send_Ui_L_S(){
  struct Ui_L_S lv;
  lv.v1 = 21162;
  lv.v2 = 4452;
  lv.v3 = 9615;
  return zig_recv_Ui_L_S(lv);
}

int recv_Ui_L_Uc(struct Ui_L_Uc lv){
  if (lv.v1 != 31091) return 1;
  if (lv.v2 != 18993) return 2;
  if (lv.v3 != 70) return 3;
  return 0;
}
struct Ui_L_Uc ret_Ui_L_Uc(){
  struct Ui_L_Uc lv;
  lv.v1 = 31091;
  lv.v2 = 18993;
  lv.v3 = 70;
  return lv;
}
int zig_recv_Ui_L_Uc(struct Ui_L_Uc);
int send_Ui_L_Uc(){
  struct Ui_L_Uc lv;
  lv.v1 = 31091;
  lv.v2 = 18993;
  lv.v3 = 70;
  return zig_recv_Ui_L_Uc(lv);
}

int recv_Ui_L_Ui(struct Ui_L_Ui lv){
  if (lv.v1 != 13988) return 1;
  if (lv.v2 != 30930) return 2;
  if (lv.v3 != 19528) return 3;
  return 0;
}
struct Ui_L_Ui ret_Ui_L_Ui(){
  struct Ui_L_Ui lv;
  lv.v1 = 13988;
  lv.v2 = 30930;
  lv.v3 = 19528;
  return lv;
}
int zig_recv_Ui_L_Ui(struct Ui_L_Ui);
int send_Ui_L_Ui(){
  struct Ui_L_Ui lv;
  lv.v1 = 13988;
  lv.v2 = 30930;
  lv.v3 = 19528;
  return zig_recv_Ui_L_Ui(lv);
}

int recv_Ui_L_Ul(struct Ui_L_Ul lv){
  if (lv.v1 != 20440) return 1;
  if (lv.v2 != 26384) return 2;
  if (lv.v3 != 9987) return 3;
  return 0;
}
struct Ui_L_Ul ret_Ui_L_Ul(){
  struct Ui_L_Ul lv;
  lv.v1 = 20440;
  lv.v2 = 26384;
  lv.v3 = 9987;
  return lv;
}
int zig_recv_Ui_L_Ul(struct Ui_L_Ul);
int send_Ui_L_Ul(){
  struct Ui_L_Ul lv;
  lv.v1 = 20440;
  lv.v2 = 26384;
  lv.v3 = 9987;
  return zig_recv_Ui_L_Ul(lv);
}

int recv_Ui_L_Us(struct Ui_L_Us lv){
  if (lv.v1 != 31980) return 1;
  if (lv.v2 != 25750) return 2;
  if (lv.v3 != 1055) return 3;
  return 0;
}
struct Ui_L_Us ret_Ui_L_Us(){
  struct Ui_L_Us lv;
  lv.v1 = 31980;
  lv.v2 = 25750;
  lv.v3 = 1055;
  return lv;
}
int zig_recv_Ui_L_Us(struct Ui_L_Us);
int send_Ui_L_Us(){
  struct Ui_L_Us lv;
  lv.v1 = 31980;
  lv.v2 = 25750;
  lv.v3 = 1055;
  return zig_recv_Ui_L_Us(lv);
}

int recv_Ui_L_Vp(struct Ui_L_Vp lv){
  if (lv.v1 != 8968) return 1;
  if (lv.v2 != 24841) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_L_Vp ret_Ui_L_Vp(){
  struct Ui_L_Vp lv;
  lv.v1 = 8968;
  lv.v2 = 24841;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_L_Vp(struct Ui_L_Vp);
int send_Ui_L_Vp(){
  struct Ui_L_Vp lv;
  lv.v1 = 8968;
  lv.v2 = 24841;
  lv.v3 = 0;
  return zig_recv_Ui_L_Vp(lv);
}

int recv_Ui_S(struct Ui_S lv){
  if (lv.v1 != 28346) return 1;
  if (lv.v2 != 28443) return 2;
  return 0;
}
struct Ui_S ret_Ui_S(){
  struct Ui_S lv;
  lv.v1 = 28346;
  lv.v2 = 28443;
  return lv;
}
int zig_recv_Ui_S(struct Ui_S);
int send_Ui_S(){
  struct Ui_S lv;
  lv.v1 = 28346;
  lv.v2 = 28443;
  return zig_recv_Ui_S(lv);
}

int recv_Ui_S_C(struct Ui_S_C lv){
  if (lv.v1 != 15538) return 1;
  if (lv.v2 != 21394) return 2;
  if (lv.v3 != 21) return 3;
  return 0;
}
struct Ui_S_C ret_Ui_S_C(){
  struct Ui_S_C lv;
  lv.v1 = 15538;
  lv.v2 = 21394;
  lv.v3 = 21;
  return lv;
}
int zig_recv_Ui_S_C(struct Ui_S_C);
int send_Ui_S_C(){
  struct Ui_S_C lv;
  lv.v1 = 15538;
  lv.v2 = 21394;
  lv.v3 = 21;
  return zig_recv_Ui_S_C(lv);
}

int recv_Ui_S_D(struct Ui_S_D lv){
  if (lv.v1 != 4910) return 1;
  if (lv.v2 != 10310) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct Ui_S_D ret_Ui_S_D(){
  struct Ui_S_D lv;
  lv.v1 = 4910;
  lv.v2 = 10310;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_Ui_S_D(struct Ui_S_D);
int send_Ui_S_D(){
  struct Ui_S_D lv;
  lv.v1 = 4910;
  lv.v2 = 10310;
  lv.v3 = 4.5;
  return zig_recv_Ui_S_D(lv);
}

int recv_Ui_S_F(struct Ui_S_F lv){
  if (lv.v1 != 27139) return 1;
  if (lv.v2 != 32026) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Ui_S_F ret_Ui_S_F(){
  struct Ui_S_F lv;
  lv.v1 = 27139;
  lv.v2 = 32026;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Ui_S_F(struct Ui_S_F);
int send_Ui_S_F(){
  struct Ui_S_F lv;
  lv.v1 = 27139;
  lv.v2 = 32026;
  lv.v3 = 1.0;
  return zig_recv_Ui_S_F(lv);
}

int recv_Ui_S_I(struct Ui_S_I lv){
  if (lv.v1 != 21625) return 1;
  if (lv.v2 != 11212) return 2;
  if (lv.v3 != 4579) return 3;
  return 0;
}
struct Ui_S_I ret_Ui_S_I(){
  struct Ui_S_I lv;
  lv.v1 = 21625;
  lv.v2 = 11212;
  lv.v3 = 4579;
  return lv;
}
int zig_recv_Ui_S_I(struct Ui_S_I);
int send_Ui_S_I(){
  struct Ui_S_I lv;
  lv.v1 = 21625;
  lv.v2 = 11212;
  lv.v3 = 4579;
  return zig_recv_Ui_S_I(lv);
}

int recv_Ui_S_Ip(struct Ui_S_Ip lv){
  if (lv.v1 != 6672) return 1;
  if (lv.v2 != 23197) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_S_Ip ret_Ui_S_Ip(){
  struct Ui_S_Ip lv;
  lv.v1 = 6672;
  lv.v2 = 23197;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_S_Ip(struct Ui_S_Ip);
int send_Ui_S_Ip(){
  struct Ui_S_Ip lv;
  lv.v1 = 6672;
  lv.v2 = 23197;
  lv.v3 = 0;
  return zig_recv_Ui_S_Ip(lv);
}

int recv_Ui_S_L(struct Ui_S_L lv){
  if (lv.v1 != 5970) return 1;
  if (lv.v2 != 9549) return 2;
  if (lv.v3 != 25094) return 3;
  return 0;
}
struct Ui_S_L ret_Ui_S_L(){
  struct Ui_S_L lv;
  lv.v1 = 5970;
  lv.v2 = 9549;
  lv.v3 = 25094;
  return lv;
}
int zig_recv_Ui_S_L(struct Ui_S_L);
int send_Ui_S_L(){
  struct Ui_S_L lv;
  lv.v1 = 5970;
  lv.v2 = 9549;
  lv.v3 = 25094;
  return zig_recv_Ui_S_L(lv);
}

int recv_Ui_S_S(struct Ui_S_S lv){
  if (lv.v1 != 17865) return 1;
  if (lv.v2 != 18599) return 2;
  if (lv.v3 != 23696) return 3;
  return 0;
}
struct Ui_S_S ret_Ui_S_S(){
  struct Ui_S_S lv;
  lv.v1 = 17865;
  lv.v2 = 18599;
  lv.v3 = 23696;
  return lv;
}
int zig_recv_Ui_S_S(struct Ui_S_S);
int send_Ui_S_S(){
  struct Ui_S_S lv;
  lv.v1 = 17865;
  lv.v2 = 18599;
  lv.v3 = 23696;
  return zig_recv_Ui_S_S(lv);
}

int recv_Ui_S_Uc(struct Ui_S_Uc lv){
  if (lv.v1 != 28993) return 1;
  if (lv.v2 != 21813) return 2;
  if (lv.v3 != 77) return 3;
  return 0;
}
struct Ui_S_Uc ret_Ui_S_Uc(){
  struct Ui_S_Uc lv;
  lv.v1 = 28993;
  lv.v2 = 21813;
  lv.v3 = 77;
  return lv;
}
int zig_recv_Ui_S_Uc(struct Ui_S_Uc);
int send_Ui_S_Uc(){
  struct Ui_S_Uc lv;
  lv.v1 = 28993;
  lv.v2 = 21813;
  lv.v3 = 77;
  return zig_recv_Ui_S_Uc(lv);
}

int recv_Ui_S_Ui(struct Ui_S_Ui lv){
  if (lv.v1 != 5185) return 1;
  if (lv.v2 != 30102) return 2;
  if (lv.v3 != 21541) return 3;
  return 0;
}
struct Ui_S_Ui ret_Ui_S_Ui(){
  struct Ui_S_Ui lv;
  lv.v1 = 5185;
  lv.v2 = 30102;
  lv.v3 = 21541;
  return lv;
}
int zig_recv_Ui_S_Ui(struct Ui_S_Ui);
int send_Ui_S_Ui(){
  struct Ui_S_Ui lv;
  lv.v1 = 5185;
  lv.v2 = 30102;
  lv.v3 = 21541;
  return zig_recv_Ui_S_Ui(lv);
}

int recv_Ui_S_Ul(struct Ui_S_Ul lv){
  if (lv.v1 != 18781) return 1;
  if (lv.v2 != 20050) return 2;
  if (lv.v3 != 23141) return 3;
  return 0;
}
struct Ui_S_Ul ret_Ui_S_Ul(){
  struct Ui_S_Ul lv;
  lv.v1 = 18781;
  lv.v2 = 20050;
  lv.v3 = 23141;
  return lv;
}
int zig_recv_Ui_S_Ul(struct Ui_S_Ul);
int send_Ui_S_Ul(){
  struct Ui_S_Ul lv;
  lv.v1 = 18781;
  lv.v2 = 20050;
  lv.v3 = 23141;
  return zig_recv_Ui_S_Ul(lv);
}

int recv_Ui_S_Us(struct Ui_S_Us lv){
  if (lv.v1 != 5545) return 1;
  if (lv.v2 != 1579) return 2;
  if (lv.v3 != 32452) return 3;
  return 0;
}
struct Ui_S_Us ret_Ui_S_Us(){
  struct Ui_S_Us lv;
  lv.v1 = 5545;
  lv.v2 = 1579;
  lv.v3 = 32452;
  return lv;
}
int zig_recv_Ui_S_Us(struct Ui_S_Us);
int send_Ui_S_Us(){
  struct Ui_S_Us lv;
  lv.v1 = 5545;
  lv.v2 = 1579;
  lv.v3 = 32452;
  return zig_recv_Ui_S_Us(lv);
}

int recv_Ui_S_Vp(struct Ui_S_Vp lv){
  if (lv.v1 != 24208) return 1;
  if (lv.v2 != 28727) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_S_Vp ret_Ui_S_Vp(){
  struct Ui_S_Vp lv;
  lv.v1 = 24208;
  lv.v2 = 28727;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_S_Vp(struct Ui_S_Vp);
int send_Ui_S_Vp(){
  struct Ui_S_Vp lv;
  lv.v1 = 24208;
  lv.v2 = 28727;
  lv.v3 = 0;
  return zig_recv_Ui_S_Vp(lv);
}

int recv_Ui_Uc(struct Ui_Uc lv){
  if (lv.v1 != 157) return 1;
  if (lv.v2 != 12) return 2;
  return 0;
}
struct Ui_Uc ret_Ui_Uc(){
  struct Ui_Uc lv;
  lv.v1 = 157;
  lv.v2 = 12;
  return lv;
}
int zig_recv_Ui_Uc(struct Ui_Uc);
int send_Ui_Uc(){
  struct Ui_Uc lv;
  lv.v1 = 157;
  lv.v2 = 12;
  return zig_recv_Ui_Uc(lv);
}

int recv_Ui_Uc_C(struct Ui_Uc_C lv){
  if (lv.v1 != 16841) return 1;
  if (lv.v2 != 67) return 2;
  if (lv.v3 != 116) return 3;
  return 0;
}
struct Ui_Uc_C ret_Ui_Uc_C(){
  struct Ui_Uc_C lv;
  lv.v1 = 16841;
  lv.v2 = 67;
  lv.v3 = 116;
  return lv;
}
int zig_recv_Ui_Uc_C(struct Ui_Uc_C);
int send_Ui_Uc_C(){
  struct Ui_Uc_C lv;
  lv.v1 = 16841;
  lv.v2 = 67;
  lv.v3 = 116;
  return zig_recv_Ui_Uc_C(lv);
}

int recv_Ui_Uc_D(struct Ui_Uc_D lv){
  if (lv.v1 != 3973) return 1;
  if (lv.v2 != 85) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Ui_Uc_D ret_Ui_Uc_D(){
  struct Ui_Uc_D lv;
  lv.v1 = 3973;
  lv.v2 = 85;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Ui_Uc_D(struct Ui_Uc_D);
int send_Ui_Uc_D(){
  struct Ui_Uc_D lv;
  lv.v1 = 3973;
  lv.v2 = 85;
  lv.v3 = 0.875;
  return zig_recv_Ui_Uc_D(lv);
}

int recv_Ui_Uc_F(struct Ui_Uc_F lv){
  if (lv.v1 != 28410) return 1;
  if (lv.v2 != 75) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct Ui_Uc_F ret_Ui_Uc_F(){
  struct Ui_Uc_F lv;
  lv.v1 = 28410;
  lv.v2 = 75;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_Ui_Uc_F(struct Ui_Uc_F);
int send_Ui_Uc_F(){
  struct Ui_Uc_F lv;
  lv.v1 = 28410;
  lv.v2 = 75;
  lv.v3 = -0.25;
  return zig_recv_Ui_Uc_F(lv);
}

int recv_Ui_Uc_I(struct Ui_Uc_I lv){
  if (lv.v1 != 1867) return 1;
  if (lv.v2 != 123) return 2;
  if (lv.v3 != 10643) return 3;
  return 0;
}
struct Ui_Uc_I ret_Ui_Uc_I(){
  struct Ui_Uc_I lv;
  lv.v1 = 1867;
  lv.v2 = 123;
  lv.v3 = 10643;
  return lv;
}
int zig_recv_Ui_Uc_I(struct Ui_Uc_I);
int send_Ui_Uc_I(){
  struct Ui_Uc_I lv;
  lv.v1 = 1867;
  lv.v2 = 123;
  lv.v3 = 10643;
  return zig_recv_Ui_Uc_I(lv);
}

int recv_Ui_Uc_Ip(struct Ui_Uc_Ip lv){
  if (lv.v1 != 5794) return 1;
  if (lv.v2 != 57) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Uc_Ip ret_Ui_Uc_Ip(){
  struct Ui_Uc_Ip lv;
  lv.v1 = 5794;
  lv.v2 = 57;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Uc_Ip(struct Ui_Uc_Ip);
int send_Ui_Uc_Ip(){
  struct Ui_Uc_Ip lv;
  lv.v1 = 5794;
  lv.v2 = 57;
  lv.v3 = 0;
  return zig_recv_Ui_Uc_Ip(lv);
}

int recv_Ui_Uc_L(struct Ui_Uc_L lv){
  if (lv.v1 != 19180) return 1;
  if (lv.v2 != 58) return 2;
  if (lv.v3 != 11114) return 3;
  return 0;
}
struct Ui_Uc_L ret_Ui_Uc_L(){
  struct Ui_Uc_L lv;
  lv.v1 = 19180;
  lv.v2 = 58;
  lv.v3 = 11114;
  return lv;
}
int zig_recv_Ui_Uc_L(struct Ui_Uc_L);
int send_Ui_Uc_L(){
  struct Ui_Uc_L lv;
  lv.v1 = 19180;
  lv.v2 = 58;
  lv.v3 = 11114;
  return zig_recv_Ui_Uc_L(lv);
}

int recv_Ui_Uc_S(struct Ui_Uc_S lv){
  if (lv.v1 != 22163) return 1;
  if (lv.v2 != 120) return 2;
  if (lv.v3 != 2678) return 3;
  return 0;
}
struct Ui_Uc_S ret_Ui_Uc_S(){
  struct Ui_Uc_S lv;
  lv.v1 = 22163;
  lv.v2 = 120;
  lv.v3 = 2678;
  return lv;
}
int zig_recv_Ui_Uc_S(struct Ui_Uc_S);
int send_Ui_Uc_S(){
  struct Ui_Uc_S lv;
  lv.v1 = 22163;
  lv.v2 = 120;
  lv.v3 = 2678;
  return zig_recv_Ui_Uc_S(lv);
}

int recv_Ui_Uc_Uc(struct Ui_Uc_Uc lv){
  if (lv.v1 != 3867) return 1;
  if (lv.v2 != 87) return 2;
  if (lv.v3 != 16) return 3;
  return 0;
}
struct Ui_Uc_Uc ret_Ui_Uc_Uc(){
  struct Ui_Uc_Uc lv;
  lv.v1 = 3867;
  lv.v2 = 87;
  lv.v3 = 16;
  return lv;
}
int zig_recv_Ui_Uc_Uc(struct Ui_Uc_Uc);
int send_Ui_Uc_Uc(){
  struct Ui_Uc_Uc lv;
  lv.v1 = 3867;
  lv.v2 = 87;
  lv.v3 = 16;
  return zig_recv_Ui_Uc_Uc(lv);
}

int recv_Ui_Uc_Ui(struct Ui_Uc_Ui lv){
  if (lv.v1 != 14918) return 1;
  if (lv.v2 != 101) return 2;
  if (lv.v3 != 9285) return 3;
  return 0;
}
struct Ui_Uc_Ui ret_Ui_Uc_Ui(){
  struct Ui_Uc_Ui lv;
  lv.v1 = 14918;
  lv.v2 = 101;
  lv.v3 = 9285;
  return lv;
}
int zig_recv_Ui_Uc_Ui(struct Ui_Uc_Ui);
int send_Ui_Uc_Ui(){
  struct Ui_Uc_Ui lv;
  lv.v1 = 14918;
  lv.v2 = 101;
  lv.v3 = 9285;
  return zig_recv_Ui_Uc_Ui(lv);
}

int recv_Ui_Uc_Ul(struct Ui_Uc_Ul lv){
  if (lv.v1 != 7446) return 1;
  if (lv.v2 != 38) return 2;
  if (lv.v3 != 18825) return 3;
  return 0;
}
struct Ui_Uc_Ul ret_Ui_Uc_Ul(){
  struct Ui_Uc_Ul lv;
  lv.v1 = 7446;
  lv.v2 = 38;
  lv.v3 = 18825;
  return lv;
}
int zig_recv_Ui_Uc_Ul(struct Ui_Uc_Ul);
int send_Ui_Uc_Ul(){
  struct Ui_Uc_Ul lv;
  lv.v1 = 7446;
  lv.v2 = 38;
  lv.v3 = 18825;
  return zig_recv_Ui_Uc_Ul(lv);
}

int recv_Ui_Uc_Us(struct Ui_Uc_Us lv){
  if (lv.v1 != 1744) return 1;
  if (lv.v2 != 6) return 2;
  if (lv.v3 != 26082) return 3;
  return 0;
}
struct Ui_Uc_Us ret_Ui_Uc_Us(){
  struct Ui_Uc_Us lv;
  lv.v1 = 1744;
  lv.v2 = 6;
  lv.v3 = 26082;
  return lv;
}
int zig_recv_Ui_Uc_Us(struct Ui_Uc_Us);
int send_Ui_Uc_Us(){
  struct Ui_Uc_Us lv;
  lv.v1 = 1744;
  lv.v2 = 6;
  lv.v3 = 26082;
  return zig_recv_Ui_Uc_Us(lv);
}

int recv_Ui_Uc_Vp(struct Ui_Uc_Vp lv){
  if (lv.v1 != 3316) return 1;
  if (lv.v2 != 48) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Uc_Vp ret_Ui_Uc_Vp(){
  struct Ui_Uc_Vp lv;
  lv.v1 = 3316;
  lv.v2 = 48;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Uc_Vp(struct Ui_Uc_Vp);
int send_Ui_Uc_Vp(){
  struct Ui_Uc_Vp lv;
  lv.v1 = 3316;
  lv.v2 = 48;
  lv.v3 = 0;
  return zig_recv_Ui_Uc_Vp(lv);
}

int recv_Ui_Ui(struct Ui_Ui lv){
  if (lv.v1 != 8454) return 1;
  if (lv.v2 != 21904) return 2;
  return 0;
}
struct Ui_Ui ret_Ui_Ui(){
  struct Ui_Ui lv;
  lv.v1 = 8454;
  lv.v2 = 21904;
  return lv;
}
int zig_recv_Ui_Ui(struct Ui_Ui);
int send_Ui_Ui(){
  struct Ui_Ui lv;
  lv.v1 = 8454;
  lv.v2 = 21904;
  return zig_recv_Ui_Ui(lv);
}

int recv_Ui_Ui_C(struct Ui_Ui_C lv){
  if (lv.v1 != 24893) return 1;
  if (lv.v2 != 7554) return 2;
  if (lv.v3 != 125) return 3;
  return 0;
}
struct Ui_Ui_C ret_Ui_Ui_C(){
  struct Ui_Ui_C lv;
  lv.v1 = 24893;
  lv.v2 = 7554;
  lv.v3 = 125;
  return lv;
}
int zig_recv_Ui_Ui_C(struct Ui_Ui_C);
int send_Ui_Ui_C(){
  struct Ui_Ui_C lv;
  lv.v1 = 24893;
  lv.v2 = 7554;
  lv.v3 = 125;
  return zig_recv_Ui_Ui_C(lv);
}

int recv_Ui_Ui_D(struct Ui_Ui_D lv){
  if (lv.v1 != 11653) return 1;
  if (lv.v2 != 12325) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Ui_Ui_D ret_Ui_Ui_D(){
  struct Ui_Ui_D lv;
  lv.v1 = 11653;
  lv.v2 = 12325;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Ui_Ui_D(struct Ui_Ui_D);
int send_Ui_Ui_D(){
  struct Ui_Ui_D lv;
  lv.v1 = 11653;
  lv.v2 = 12325;
  lv.v3 = -2.125;
  return zig_recv_Ui_Ui_D(lv);
}

int recv_Ui_Ui_F(struct Ui_Ui_F lv){
  if (lv.v1 != 11056) return 1;
  if (lv.v2 != 12323) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Ui_Ui_F ret_Ui_Ui_F(){
  struct Ui_Ui_F lv;
  lv.v1 = 11056;
  lv.v2 = 12323;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Ui_Ui_F(struct Ui_Ui_F);
int send_Ui_Ui_F(){
  struct Ui_Ui_F lv;
  lv.v1 = 11056;
  lv.v2 = 12323;
  lv.v3 = 0.875;
  return zig_recv_Ui_Ui_F(lv);
}

int recv_Ui_Ui_I(struct Ui_Ui_I lv){
  if (lv.v1 != 24003) return 1;
  if (lv.v2 != 31766) return 2;
  if (lv.v3 != 9259) return 3;
  return 0;
}
struct Ui_Ui_I ret_Ui_Ui_I(){
  struct Ui_Ui_I lv;
  lv.v1 = 24003;
  lv.v2 = 31766;
  lv.v3 = 9259;
  return lv;
}
int zig_recv_Ui_Ui_I(struct Ui_Ui_I);
int send_Ui_Ui_I(){
  struct Ui_Ui_I lv;
  lv.v1 = 24003;
  lv.v2 = 31766;
  lv.v3 = 9259;
  return zig_recv_Ui_Ui_I(lv);
}

int recv_Ui_Ui_Ip(struct Ui_Ui_Ip lv){
  if (lv.v1 != 4717) return 1;
  if (lv.v2 != 9398) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Ui_Ip ret_Ui_Ui_Ip(){
  struct Ui_Ui_Ip lv;
  lv.v1 = 4717;
  lv.v2 = 9398;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Ui_Ip(struct Ui_Ui_Ip);
int send_Ui_Ui_Ip(){
  struct Ui_Ui_Ip lv;
  lv.v1 = 4717;
  lv.v2 = 9398;
  lv.v3 = 0;
  return zig_recv_Ui_Ui_Ip(lv);
}

int recv_Ui_Ui_L(struct Ui_Ui_L lv){
  if (lv.v1 != 5211) return 1;
  if (lv.v2 != 14887) return 2;
  if (lv.v3 != 10731) return 3;
  return 0;
}
struct Ui_Ui_L ret_Ui_Ui_L(){
  struct Ui_Ui_L lv;
  lv.v1 = 5211;
  lv.v2 = 14887;
  lv.v3 = 10731;
  return lv;
}
int zig_recv_Ui_Ui_L(struct Ui_Ui_L);
int send_Ui_Ui_L(){
  struct Ui_Ui_L lv;
  lv.v1 = 5211;
  lv.v2 = 14887;
  lv.v3 = 10731;
  return zig_recv_Ui_Ui_L(lv);
}

int recv_Ui_Ui_S(struct Ui_Ui_S lv){
  if (lv.v1 != 8211) return 1;
  if (lv.v2 != 27366) return 2;
  if (lv.v3 != 700) return 3;
  return 0;
}
struct Ui_Ui_S ret_Ui_Ui_S(){
  struct Ui_Ui_S lv;
  lv.v1 = 8211;
  lv.v2 = 27366;
  lv.v3 = 700;
  return lv;
}
int zig_recv_Ui_Ui_S(struct Ui_Ui_S);
int send_Ui_Ui_S(){
  struct Ui_Ui_S lv;
  lv.v1 = 8211;
  lv.v2 = 27366;
  lv.v3 = 700;
  return zig_recv_Ui_Ui_S(lv);
}

int recv_Ui_Ui_Uc(struct Ui_Ui_Uc lv){
  if (lv.v1 != 2757) return 1;
  if (lv.v2 != 21695) return 2;
  if (lv.v3 != 93) return 3;
  return 0;
}
struct Ui_Ui_Uc ret_Ui_Ui_Uc(){
  struct Ui_Ui_Uc lv;
  lv.v1 = 2757;
  lv.v2 = 21695;
  lv.v3 = 93;
  return lv;
}
int zig_recv_Ui_Ui_Uc(struct Ui_Ui_Uc);
int send_Ui_Ui_Uc(){
  struct Ui_Ui_Uc lv;
  lv.v1 = 2757;
  lv.v2 = 21695;
  lv.v3 = 93;
  return zig_recv_Ui_Ui_Uc(lv);
}

int recv_Ui_Ui_Ui(struct Ui_Ui_Ui lv){
  if (lv.v1 != 9522) return 1;
  if (lv.v2 != 22368) return 2;
  if (lv.v3 != 18383) return 3;
  return 0;
}
struct Ui_Ui_Ui ret_Ui_Ui_Ui(){
  struct Ui_Ui_Ui lv;
  lv.v1 = 9522;
  lv.v2 = 22368;
  lv.v3 = 18383;
  return lv;
}
int zig_recv_Ui_Ui_Ui(struct Ui_Ui_Ui);
int send_Ui_Ui_Ui(){
  struct Ui_Ui_Ui lv;
  lv.v1 = 9522;
  lv.v2 = 22368;
  lv.v3 = 18383;
  return zig_recv_Ui_Ui_Ui(lv);
}

int recv_Ui_Ui_Ul(struct Ui_Ui_Ul lv){
  if (lv.v1 != 17560) return 1;
  if (lv.v2 != 16595) return 2;
  if (lv.v3 != 621) return 3;
  return 0;
}
struct Ui_Ui_Ul ret_Ui_Ui_Ul(){
  struct Ui_Ui_Ul lv;
  lv.v1 = 17560;
  lv.v2 = 16595;
  lv.v3 = 621;
  return lv;
}
int zig_recv_Ui_Ui_Ul(struct Ui_Ui_Ul);
int send_Ui_Ui_Ul(){
  struct Ui_Ui_Ul lv;
  lv.v1 = 17560;
  lv.v2 = 16595;
  lv.v3 = 621;
  return zig_recv_Ui_Ui_Ul(lv);
}

int recv_Ui_Ui_Us(struct Ui_Ui_Us lv){
  if (lv.v1 != 11564) return 1;
  if (lv.v2 != 11476) return 2;
  if (lv.v3 != 1119) return 3;
  return 0;
}
struct Ui_Ui_Us ret_Ui_Ui_Us(){
  struct Ui_Ui_Us lv;
  lv.v1 = 11564;
  lv.v2 = 11476;
  lv.v3 = 1119;
  return lv;
}
int zig_recv_Ui_Ui_Us(struct Ui_Ui_Us);
int send_Ui_Ui_Us(){
  struct Ui_Ui_Us lv;
  lv.v1 = 11564;
  lv.v2 = 11476;
  lv.v3 = 1119;
  return zig_recv_Ui_Ui_Us(lv);
}

int recv_Ui_Ui_Vp(struct Ui_Ui_Vp lv){
  if (lv.v1 != 6197) return 1;
  if (lv.v2 != 30374) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Ui_Vp ret_Ui_Ui_Vp(){
  struct Ui_Ui_Vp lv;
  lv.v1 = 6197;
  lv.v2 = 30374;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Ui_Vp(struct Ui_Ui_Vp);
int send_Ui_Ui_Vp(){
  struct Ui_Ui_Vp lv;
  lv.v1 = 6197;
  lv.v2 = 30374;
  lv.v3 = 0;
  return zig_recv_Ui_Ui_Vp(lv);
}

int recv_Ui_Ul(struct Ui_Ul lv){
  if (lv.v1 != 6015) return 1;
  if (lv.v2 != 14187) return 2;
  return 0;
}
struct Ui_Ul ret_Ui_Ul(){
  struct Ui_Ul lv;
  lv.v1 = 6015;
  lv.v2 = 14187;
  return lv;
}
int zig_recv_Ui_Ul(struct Ui_Ul);
int send_Ui_Ul(){
  struct Ui_Ul lv;
  lv.v1 = 6015;
  lv.v2 = 14187;
  return zig_recv_Ui_Ul(lv);
}

int recv_Ui_Ul_C(struct Ui_Ul_C lv){
  if (lv.v1 != 4633) return 1;
  if (lv.v2 != 28170) return 2;
  if (lv.v3 != 118) return 3;
  return 0;
}
struct Ui_Ul_C ret_Ui_Ul_C(){
  struct Ui_Ul_C lv;
  lv.v1 = 4633;
  lv.v2 = 28170;
  lv.v3 = 118;
  return lv;
}
int zig_recv_Ui_Ul_C(struct Ui_Ul_C);
int send_Ui_Ul_C(){
  struct Ui_Ul_C lv;
  lv.v1 = 4633;
  lv.v2 = 28170;
  lv.v3 = 118;
  return zig_recv_Ui_Ul_C(lv);
}

int recv_Ui_Ul_D(struct Ui_Ul_D lv){
  if (lv.v1 != 26735) return 1;
  if (lv.v2 != 3946) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Ui_Ul_D ret_Ui_Ul_D(){
  struct Ui_Ul_D lv;
  lv.v1 = 26735;
  lv.v2 = 3946;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Ui_Ul_D(struct Ui_Ul_D);
int send_Ui_Ul_D(){
  struct Ui_Ul_D lv;
  lv.v1 = 26735;
  lv.v2 = 3946;
  lv.v3 = 7.0;
  return zig_recv_Ui_Ul_D(lv);
}

int recv_Ui_Ul_F(struct Ui_Ul_F lv){
  if (lv.v1 != 28323) return 1;
  if (lv.v2 != 4257) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Ui_Ul_F ret_Ui_Ul_F(){
  struct Ui_Ul_F lv;
  lv.v1 = 28323;
  lv.v2 = 4257;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Ui_Ul_F(struct Ui_Ul_F);
int send_Ui_Ul_F(){
  struct Ui_Ul_F lv;
  lv.v1 = 28323;
  lv.v2 = 4257;
  lv.v3 = 7.0;
  return zig_recv_Ui_Ul_F(lv);
}

int recv_Ui_Ul_I(struct Ui_Ul_I lv){
  if (lv.v1 != 25993) return 1;
  if (lv.v2 != 21218) return 2;
  if (lv.v3 != 10780) return 3;
  return 0;
}
struct Ui_Ul_I ret_Ui_Ul_I(){
  struct Ui_Ul_I lv;
  lv.v1 = 25993;
  lv.v2 = 21218;
  lv.v3 = 10780;
  return lv;
}
int zig_recv_Ui_Ul_I(struct Ui_Ul_I);
int send_Ui_Ul_I(){
  struct Ui_Ul_I lv;
  lv.v1 = 25993;
  lv.v2 = 21218;
  lv.v3 = 10780;
  return zig_recv_Ui_Ul_I(lv);
}

int recv_Ui_Ul_Ip(struct Ui_Ul_Ip lv){
  if (lv.v1 != 4013) return 1;
  if (lv.v2 != 9159) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Ul_Ip ret_Ui_Ul_Ip(){
  struct Ui_Ul_Ip lv;
  lv.v1 = 4013;
  lv.v2 = 9159;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Ul_Ip(struct Ui_Ul_Ip);
int send_Ui_Ul_Ip(){
  struct Ui_Ul_Ip lv;
  lv.v1 = 4013;
  lv.v2 = 9159;
  lv.v3 = 0;
  return zig_recv_Ui_Ul_Ip(lv);
}

int recv_Ui_Ul_L(struct Ui_Ul_L lv){
  if (lv.v1 != 612) return 1;
  if (lv.v2 != 2563) return 2;
  if (lv.v3 != 3634) return 3;
  return 0;
}
struct Ui_Ul_L ret_Ui_Ul_L(){
  struct Ui_Ul_L lv;
  lv.v1 = 612;
  lv.v2 = 2563;
  lv.v3 = 3634;
  return lv;
}
int zig_recv_Ui_Ul_L(struct Ui_Ul_L);
int send_Ui_Ul_L(){
  struct Ui_Ul_L lv;
  lv.v1 = 612;
  lv.v2 = 2563;
  lv.v3 = 3634;
  return zig_recv_Ui_Ul_L(lv);
}

int recv_Ui_Ul_S(struct Ui_Ul_S lv){
  if (lv.v1 != 29897) return 1;
  if (lv.v2 != 28586) return 2;
  if (lv.v3 != 32630) return 3;
  return 0;
}
struct Ui_Ul_S ret_Ui_Ul_S(){
  struct Ui_Ul_S lv;
  lv.v1 = 29897;
  lv.v2 = 28586;
  lv.v3 = 32630;
  return lv;
}
int zig_recv_Ui_Ul_S(struct Ui_Ul_S);
int send_Ui_Ul_S(){
  struct Ui_Ul_S lv;
  lv.v1 = 29897;
  lv.v2 = 28586;
  lv.v3 = 32630;
  return zig_recv_Ui_Ul_S(lv);
}

int recv_Ui_Ul_Uc(struct Ui_Ul_Uc lv){
  if (lv.v1 != 25723) return 1;
  if (lv.v2 != 5638) return 2;
  if (lv.v3 != 72) return 3;
  return 0;
}
struct Ui_Ul_Uc ret_Ui_Ul_Uc(){
  struct Ui_Ul_Uc lv;
  lv.v1 = 25723;
  lv.v2 = 5638;
  lv.v3 = 72;
  return lv;
}
int zig_recv_Ui_Ul_Uc(struct Ui_Ul_Uc);
int send_Ui_Ul_Uc(){
  struct Ui_Ul_Uc lv;
  lv.v1 = 25723;
  lv.v2 = 5638;
  lv.v3 = 72;
  return zig_recv_Ui_Ul_Uc(lv);
}

int recv_Ui_Ul_Ui(struct Ui_Ul_Ui lv){
  if (lv.v1 != 21999) return 1;
  if (lv.v2 != 1833) return 2;
  if (lv.v3 != 27956) return 3;
  return 0;
}
struct Ui_Ul_Ui ret_Ui_Ul_Ui(){
  struct Ui_Ul_Ui lv;
  lv.v1 = 21999;
  lv.v2 = 1833;
  lv.v3 = 27956;
  return lv;
}
int zig_recv_Ui_Ul_Ui(struct Ui_Ul_Ui);
int send_Ui_Ul_Ui(){
  struct Ui_Ul_Ui lv;
  lv.v1 = 21999;
  lv.v2 = 1833;
  lv.v3 = 27956;
  return zig_recv_Ui_Ul_Ui(lv);
}

int recv_Ui_Ul_Ul(struct Ui_Ul_Ul lv){
  if (lv.v1 != 21577) return 1;
  if (lv.v2 != 25353) return 2;
  if (lv.v3 != 519) return 3;
  return 0;
}
struct Ui_Ul_Ul ret_Ui_Ul_Ul(){
  struct Ui_Ul_Ul lv;
  lv.v1 = 21577;
  lv.v2 = 25353;
  lv.v3 = 519;
  return lv;
}
int zig_recv_Ui_Ul_Ul(struct Ui_Ul_Ul);
int send_Ui_Ul_Ul(){
  struct Ui_Ul_Ul lv;
  lv.v1 = 21577;
  lv.v2 = 25353;
  lv.v3 = 519;
  return zig_recv_Ui_Ul_Ul(lv);
}

int recv_Ui_Ul_Us(struct Ui_Ul_Us lv){
  if (lv.v1 != 2982) return 1;
  if (lv.v2 != 26174) return 2;
  if (lv.v3 != 30401) return 3;
  return 0;
}
struct Ui_Ul_Us ret_Ui_Ul_Us(){
  struct Ui_Ul_Us lv;
  lv.v1 = 2982;
  lv.v2 = 26174;
  lv.v3 = 30401;
  return lv;
}
int zig_recv_Ui_Ul_Us(struct Ui_Ul_Us);
int send_Ui_Ul_Us(){
  struct Ui_Ul_Us lv;
  lv.v1 = 2982;
  lv.v2 = 26174;
  lv.v3 = 30401;
  return zig_recv_Ui_Ul_Us(lv);
}

int recv_Ui_Ul_Vp(struct Ui_Ul_Vp lv){
  if (lv.v1 != 80) return 1;
  if (lv.v2 != 21067) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Ul_Vp ret_Ui_Ul_Vp(){
  struct Ui_Ul_Vp lv;
  lv.v1 = 80;
  lv.v2 = 21067;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Ul_Vp(struct Ui_Ul_Vp);
int send_Ui_Ul_Vp(){
  struct Ui_Ul_Vp lv;
  lv.v1 = 80;
  lv.v2 = 21067;
  lv.v3 = 0;
  return zig_recv_Ui_Ul_Vp(lv);
}

int recv_Ui_Us(struct Ui_Us lv){
  if (lv.v1 != 30354) return 1;
  if (lv.v2 != 26657) return 2;
  return 0;
}
struct Ui_Us ret_Ui_Us(){
  struct Ui_Us lv;
  lv.v1 = 30354;
  lv.v2 = 26657;
  return lv;
}
int zig_recv_Ui_Us(struct Ui_Us);
int send_Ui_Us(){
  struct Ui_Us lv;
  lv.v1 = 30354;
  lv.v2 = 26657;
  return zig_recv_Ui_Us(lv);
}

int recv_Ui_Us_C(struct Ui_Us_C lv){
  if (lv.v1 != 21789) return 1;
  if (lv.v2 != 26918) return 2;
  if (lv.v3 != 102) return 3;
  return 0;
}
struct Ui_Us_C ret_Ui_Us_C(){
  struct Ui_Us_C lv;
  lv.v1 = 21789;
  lv.v2 = 26918;
  lv.v3 = 102;
  return lv;
}
int zig_recv_Ui_Us_C(struct Ui_Us_C);
int send_Ui_Us_C(){
  struct Ui_Us_C lv;
  lv.v1 = 21789;
  lv.v2 = 26918;
  lv.v3 = 102;
  return zig_recv_Ui_Us_C(lv);
}

int recv_Ui_Us_D(struct Ui_Us_D lv){
  if (lv.v1 != 25060) return 1;
  if (lv.v2 != 30168) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct Ui_Us_D ret_Ui_Us_D(){
  struct Ui_Us_D lv;
  lv.v1 = 25060;
  lv.v2 = 30168;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_Ui_Us_D(struct Ui_Us_D);
int send_Ui_Us_D(){
  struct Ui_Us_D lv;
  lv.v1 = 25060;
  lv.v2 = 30168;
  lv.v3 = 0.875;
  return zig_recv_Ui_Us_D(lv);
}

int recv_Ui_Us_F(struct Ui_Us_F lv){
  if (lv.v1 != 26931) return 1;
  if (lv.v2 != 19984) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ui_Us_F ret_Ui_Us_F(){
  struct Ui_Us_F lv;
  lv.v1 = 26931;
  lv.v2 = 19984;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ui_Us_F(struct Ui_Us_F);
int send_Ui_Us_F(){
  struct Ui_Us_F lv;
  lv.v1 = 26931;
  lv.v2 = 19984;
  lv.v3 = 0.5;
  return zig_recv_Ui_Us_F(lv);
}

int recv_Ui_Us_I(struct Ui_Us_I lv){
  if (lv.v1 != 27580) return 1;
  if (lv.v2 != 4813) return 2;
  if (lv.v3 != 13953) return 3;
  return 0;
}
struct Ui_Us_I ret_Ui_Us_I(){
  struct Ui_Us_I lv;
  lv.v1 = 27580;
  lv.v2 = 4813;
  lv.v3 = 13953;
  return lv;
}
int zig_recv_Ui_Us_I(struct Ui_Us_I);
int send_Ui_Us_I(){
  struct Ui_Us_I lv;
  lv.v1 = 27580;
  lv.v2 = 4813;
  lv.v3 = 13953;
  return zig_recv_Ui_Us_I(lv);
}

int recv_Ui_Us_Ip(struct Ui_Us_Ip lv){
  if (lv.v1 != 3212) return 1;
  if (lv.v2 != 7801) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Us_Ip ret_Ui_Us_Ip(){
  struct Ui_Us_Ip lv;
  lv.v1 = 3212;
  lv.v2 = 7801;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Us_Ip(struct Ui_Us_Ip);
int send_Ui_Us_Ip(){
  struct Ui_Us_Ip lv;
  lv.v1 = 3212;
  lv.v2 = 7801;
  lv.v3 = 0;
  return zig_recv_Ui_Us_Ip(lv);
}

int recv_Ui_Us_L(struct Ui_Us_L lv){
  if (lv.v1 != 5564) return 1;
  if (lv.v2 != 2635) return 2;
  if (lv.v3 != 10175) return 3;
  return 0;
}
struct Ui_Us_L ret_Ui_Us_L(){
  struct Ui_Us_L lv;
  lv.v1 = 5564;
  lv.v2 = 2635;
  lv.v3 = 10175;
  return lv;
}
int zig_recv_Ui_Us_L(struct Ui_Us_L);
int send_Ui_Us_L(){
  struct Ui_Us_L lv;
  lv.v1 = 5564;
  lv.v2 = 2635;
  lv.v3 = 10175;
  return zig_recv_Ui_Us_L(lv);
}

int recv_Ui_Us_S(struct Ui_Us_S lv){
  if (lv.v1 != 26848) return 1;
  if (lv.v2 != 23938) return 2;
  if (lv.v3 != 12891) return 3;
  return 0;
}
struct Ui_Us_S ret_Ui_Us_S(){
  struct Ui_Us_S lv;
  lv.v1 = 26848;
  lv.v2 = 23938;
  lv.v3 = 12891;
  return lv;
}
int zig_recv_Ui_Us_S(struct Ui_Us_S);
int send_Ui_Us_S(){
  struct Ui_Us_S lv;
  lv.v1 = 26848;
  lv.v2 = 23938;
  lv.v3 = 12891;
  return zig_recv_Ui_Us_S(lv);
}

int recv_Ui_Us_Uc(struct Ui_Us_Uc lv){
  if (lv.v1 != 21533) return 1;
  if (lv.v2 != 13458) return 2;
  if (lv.v3 != 32) return 3;
  return 0;
}
struct Ui_Us_Uc ret_Ui_Us_Uc(){
  struct Ui_Us_Uc lv;
  lv.v1 = 21533;
  lv.v2 = 13458;
  lv.v3 = 32;
  return lv;
}
int zig_recv_Ui_Us_Uc(struct Ui_Us_Uc);
int send_Ui_Us_Uc(){
  struct Ui_Us_Uc lv;
  lv.v1 = 21533;
  lv.v2 = 13458;
  lv.v3 = 32;
  return zig_recv_Ui_Us_Uc(lv);
}

int recv_Ui_Us_Ui(struct Ui_Us_Ui lv){
  if (lv.v1 != 4359) return 1;
  if (lv.v2 != 7290) return 2;
  if (lv.v3 != 2824) return 3;
  return 0;
}
struct Ui_Us_Ui ret_Ui_Us_Ui(){
  struct Ui_Us_Ui lv;
  lv.v1 = 4359;
  lv.v2 = 7290;
  lv.v3 = 2824;
  return lv;
}
int zig_recv_Ui_Us_Ui(struct Ui_Us_Ui);
int send_Ui_Us_Ui(){
  struct Ui_Us_Ui lv;
  lv.v1 = 4359;
  lv.v2 = 7290;
  lv.v3 = 2824;
  return zig_recv_Ui_Us_Ui(lv);
}

int recv_Ui_Us_Ul(struct Ui_Us_Ul lv){
  if (lv.v1 != 10815) return 1;
  if (lv.v2 != 2476) return 2;
  if (lv.v3 != 15183) return 3;
  return 0;
}
struct Ui_Us_Ul ret_Ui_Us_Ul(){
  struct Ui_Us_Ul lv;
  lv.v1 = 10815;
  lv.v2 = 2476;
  lv.v3 = 15183;
  return lv;
}
int zig_recv_Ui_Us_Ul(struct Ui_Us_Ul);
int send_Ui_Us_Ul(){
  struct Ui_Us_Ul lv;
  lv.v1 = 10815;
  lv.v2 = 2476;
  lv.v3 = 15183;
  return zig_recv_Ui_Us_Ul(lv);
}

int recv_Ui_Us_Us(struct Ui_Us_Us lv){
  if (lv.v1 != 28170) return 1;
  if (lv.v2 != 20814) return 2;
  if (lv.v3 != 14005) return 3;
  return 0;
}
struct Ui_Us_Us ret_Ui_Us_Us(){
  struct Ui_Us_Us lv;
  lv.v1 = 28170;
  lv.v2 = 20814;
  lv.v3 = 14005;
  return lv;
}
int zig_recv_Ui_Us_Us(struct Ui_Us_Us);
int send_Ui_Us_Us(){
  struct Ui_Us_Us lv;
  lv.v1 = 28170;
  lv.v2 = 20814;
  lv.v3 = 14005;
  return zig_recv_Ui_Us_Us(lv);
}

int recv_Ui_Us_Vp(struct Ui_Us_Vp lv){
  if (lv.v1 != 13993) return 1;
  if (lv.v2 != 22706) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Us_Vp ret_Ui_Us_Vp(){
  struct Ui_Us_Vp lv;
  lv.v1 = 13993;
  lv.v2 = 22706;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Us_Vp(struct Ui_Us_Vp);
int send_Ui_Us_Vp(){
  struct Ui_Us_Vp lv;
  lv.v1 = 13993;
  lv.v2 = 22706;
  lv.v3 = 0;
  return zig_recv_Ui_Us_Vp(lv);
}

int recv_Ui_Vp(struct Ui_Vp lv){
  if (lv.v1 != 876) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct Ui_Vp ret_Ui_Vp(){
  struct Ui_Vp lv;
  lv.v1 = 876;
  lv.v2 = 0;
  return lv;
}
int zig_recv_Ui_Vp(struct Ui_Vp);
int send_Ui_Vp(){
  struct Ui_Vp lv;
  lv.v1 = 876;
  lv.v2 = 0;
  return zig_recv_Ui_Vp(lv);
}

int recv_Ui_Vp_C(struct Ui_Vp_C lv){
  if (lv.v1 != 15686) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 90) return 3;
  return 0;
}
struct Ui_Vp_C ret_Ui_Vp_C(){
  struct Ui_Vp_C lv;
  lv.v1 = 15686;
  lv.v2 = 0;
  lv.v3 = 90;
  return lv;
}
int zig_recv_Ui_Vp_C(struct Ui_Vp_C);
int send_Ui_Vp_C(){
  struct Ui_Vp_C lv;
  lv.v1 = 15686;
  lv.v2 = 0;
  lv.v3 = 90;
  return zig_recv_Ui_Vp_C(lv);
}

int recv_Ui_Vp_D(struct Ui_Vp_D lv){
  if (lv.v1 != 7177) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct Ui_Vp_D ret_Ui_Vp_D(){
  struct Ui_Vp_D lv;
  lv.v1 = 7177;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_Ui_Vp_D(struct Ui_Vp_D);
int send_Ui_Vp_D(){
  struct Ui_Vp_D lv;
  lv.v1 = 7177;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return zig_recv_Ui_Vp_D(lv);
}

int recv_Ui_Vp_F(struct Ui_Vp_F lv){
  if (lv.v1 != 28047) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct Ui_Vp_F ret_Ui_Vp_F(){
  struct Ui_Vp_F lv;
  lv.v1 = 28047;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_Ui_Vp_F(struct Ui_Vp_F);
int send_Ui_Vp_F(){
  struct Ui_Vp_F lv;
  lv.v1 = 28047;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return zig_recv_Ui_Vp_F(lv);
}

int recv_Ui_Vp_I(struct Ui_Vp_I lv){
  if (lv.v1 != 25781) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 27067) return 3;
  return 0;
}
struct Ui_Vp_I ret_Ui_Vp_I(){
  struct Ui_Vp_I lv;
  lv.v1 = 25781;
  lv.v2 = 0;
  lv.v3 = 27067;
  return lv;
}
int zig_recv_Ui_Vp_I(struct Ui_Vp_I);
int send_Ui_Vp_I(){
  struct Ui_Vp_I lv;
  lv.v1 = 25781;
  lv.v2 = 0;
  lv.v3 = 27067;
  return zig_recv_Ui_Vp_I(lv);
}

int recv_Ui_Vp_Ip(struct Ui_Vp_Ip lv){
  if (lv.v1 != 20737) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Vp_Ip ret_Ui_Vp_Ip(){
  struct Ui_Vp_Ip lv;
  lv.v1 = 20737;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Vp_Ip(struct Ui_Vp_Ip);
int send_Ui_Vp_Ip(){
  struct Ui_Vp_Ip lv;
  lv.v1 = 20737;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Ui_Vp_Ip(lv);
}

int recv_Ui_Vp_L(struct Ui_Vp_L lv){
  if (lv.v1 != 19695) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 2089) return 3;
  return 0;
}
struct Ui_Vp_L ret_Ui_Vp_L(){
  struct Ui_Vp_L lv;
  lv.v1 = 19695;
  lv.v2 = 0;
  lv.v3 = 2089;
  return lv;
}
int zig_recv_Ui_Vp_L(struct Ui_Vp_L);
int send_Ui_Vp_L(){
  struct Ui_Vp_L lv;
  lv.v1 = 19695;
  lv.v2 = 0;
  lv.v3 = 2089;
  return zig_recv_Ui_Vp_L(lv);
}

int recv_Ui_Vp_S(struct Ui_Vp_S lv){
  if (lv.v1 != 22643) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 3854) return 3;
  return 0;
}
struct Ui_Vp_S ret_Ui_Vp_S(){
  struct Ui_Vp_S lv;
  lv.v1 = 22643;
  lv.v2 = 0;
  lv.v3 = 3854;
  return lv;
}
int zig_recv_Ui_Vp_S(struct Ui_Vp_S);
int send_Ui_Vp_S(){
  struct Ui_Vp_S lv;
  lv.v1 = 22643;
  lv.v2 = 0;
  lv.v3 = 3854;
  return zig_recv_Ui_Vp_S(lv);
}

int recv_Ui_Vp_Uc(struct Ui_Vp_Uc lv){
  if (lv.v1 != 2525) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 89) return 3;
  return 0;
}
struct Ui_Vp_Uc ret_Ui_Vp_Uc(){
  struct Ui_Vp_Uc lv;
  lv.v1 = 2525;
  lv.v2 = 0;
  lv.v3 = 89;
  return lv;
}
int zig_recv_Ui_Vp_Uc(struct Ui_Vp_Uc);
int send_Ui_Vp_Uc(){
  struct Ui_Vp_Uc lv;
  lv.v1 = 2525;
  lv.v2 = 0;
  lv.v3 = 89;
  return zig_recv_Ui_Vp_Uc(lv);
}

int recv_Ui_Vp_Ui(struct Ui_Vp_Ui lv){
  if (lv.v1 != 25903) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7407) return 3;
  return 0;
}
struct Ui_Vp_Ui ret_Ui_Vp_Ui(){
  struct Ui_Vp_Ui lv;
  lv.v1 = 25903;
  lv.v2 = 0;
  lv.v3 = 7407;
  return lv;
}
int zig_recv_Ui_Vp_Ui(struct Ui_Vp_Ui);
int send_Ui_Vp_Ui(){
  struct Ui_Vp_Ui lv;
  lv.v1 = 25903;
  lv.v2 = 0;
  lv.v3 = 7407;
  return zig_recv_Ui_Vp_Ui(lv);
}

int recv_Ui_Vp_Ul(struct Ui_Vp_Ul lv){
  if (lv.v1 != 4962) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 72) return 3;
  return 0;
}
struct Ui_Vp_Ul ret_Ui_Vp_Ul(){
  struct Ui_Vp_Ul lv;
  lv.v1 = 4962;
  lv.v2 = 0;
  lv.v3 = 72;
  return lv;
}
int zig_recv_Ui_Vp_Ul(struct Ui_Vp_Ul);
int send_Ui_Vp_Ul(){
  struct Ui_Vp_Ul lv;
  lv.v1 = 4962;
  lv.v2 = 0;
  lv.v3 = 72;
  return zig_recv_Ui_Vp_Ul(lv);
}

int recv_Ui_Vp_Us(struct Ui_Vp_Us lv){
  if (lv.v1 != 14228) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 25551) return 3;
  return 0;
}
struct Ui_Vp_Us ret_Ui_Vp_Us(){
  struct Ui_Vp_Us lv;
  lv.v1 = 14228;
  lv.v2 = 0;
  lv.v3 = 25551;
  return lv;
}
int zig_recv_Ui_Vp_Us(struct Ui_Vp_Us);
int send_Ui_Vp_Us(){
  struct Ui_Vp_Us lv;
  lv.v1 = 14228;
  lv.v2 = 0;
  lv.v3 = 25551;
  return zig_recv_Ui_Vp_Us(lv);
}

int recv_Ui_Vp_Vp(struct Ui_Vp_Vp lv){
  if (lv.v1 != 950) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Ui_Vp_Vp ret_Ui_Vp_Vp(){
  struct Ui_Vp_Vp lv;
  lv.v1 = 950;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Ui_Vp_Vp(struct Ui_Vp_Vp);
int send_Ui_Vp_Vp(){
  struct Ui_Vp_Vp lv;
  lv.v1 = 950;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_Ui_Vp_Vp(lv);
}

int recv_Ul(struct Ul lv){
  if (lv.v1 != 14013) return 1;
  return 0;
}
struct Ul ret_Ul(){
  struct Ul lv;
  lv.v1 = 14013;
  return lv;
}
int zig_recv_Ul(struct Ul);
int send_Ul(){
  struct Ul lv;
  lv.v1 = 14013;
  return zig_recv_Ul(lv);
}

