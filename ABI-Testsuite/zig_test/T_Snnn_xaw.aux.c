#include "T_Snnn_xaw.h"

int recv_C_C(struct C_C lv){
  if (lv.v1 != 93) return 1;
  if (lv.v2 != 58) return 2;
  return 0;
}
struct C_C ret_C_C(){
  struct C_C lv;
  lv.v1 = 93;
  lv.v2 = 58;
  return lv;
}
int zig_recv_C_C(struct C_C);
int send_C_C(){
  struct C_C lv;
  lv.v1 = 93;
  lv.v2 = 58;
  return zig_recv_C_C(lv);
}

int recv_C_C_C(struct C_C_C lv){
  if (lv.v1 != 4) return 1;
  if (lv.v2 != 51) return 2;
  if (lv.v3 != 111) return 3;
  return 0;
}
struct C_C_C ret_C_C_C(){
  struct C_C_C lv;
  lv.v1 = 4;
  lv.v2 = 51;
  lv.v3 = 111;
  return lv;
}
int zig_recv_C_C_C(struct C_C_C);
int send_C_C_C(){
  struct C_C_C lv;
  lv.v1 = 4;
  lv.v2 = 51;
  lv.v3 = 111;
  return zig_recv_C_C_C(lv);
}

int recv_C_C_D(struct C_C_D lv){
  if (lv.v1 != 88) return 1;
  if (lv.v2 != 39) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct C_C_D ret_C_C_D(){
  struct C_C_D lv;
  lv.v1 = 88;
  lv.v2 = 39;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_C_C_D(struct C_C_D);
int send_C_C_D(){
  struct C_C_D lv;
  lv.v1 = 88;
  lv.v2 = 39;
  lv.v3 = -2.125;
  return zig_recv_C_C_D(lv);
}

int recv_C_C_F(struct C_C_F lv){
  if (lv.v1 != 33) return 1;
  if (lv.v2 != 7) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct C_C_F ret_C_C_F(){
  struct C_C_F lv;
  lv.v1 = 33;
  lv.v2 = 7;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_C_C_F(struct C_C_F);
int send_C_C_F(){
  struct C_C_F lv;
  lv.v1 = 33;
  lv.v2 = 7;
  lv.v3 = -2.125;
  return zig_recv_C_C_F(lv);
}

int recv_C_C_I(struct C_C_I lv){
  if (lv.v1 != 13) return 1;
  if (lv.v2 != 54) return 2;
  if (lv.v3 != 29336) return 3;
  return 0;
}
struct C_C_I ret_C_C_I(){
  struct C_C_I lv;
  lv.v1 = 13;
  lv.v2 = 54;
  lv.v3 = 29336;
  return lv;
}
int zig_recv_C_C_I(struct C_C_I);
int send_C_C_I(){
  struct C_C_I lv;
  lv.v1 = 13;
  lv.v2 = 54;
  lv.v3 = 29336;
  return zig_recv_C_C_I(lv);
}

int recv_C_C_Ip(struct C_C_Ip lv){
  if (lv.v1 != 106) return 1;
  if (lv.v2 != 36) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_C_Ip ret_C_C_Ip(){
  struct C_C_Ip lv;
  lv.v1 = 106;
  lv.v2 = 36;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_C_Ip(struct C_C_Ip);
int send_C_C_Ip(){
  struct C_C_Ip lv;
  lv.v1 = 106;
  lv.v2 = 36;
  lv.v3 = 0;
  return zig_recv_C_C_Ip(lv);
}

int recv_C_C_L(struct C_C_L lv){
  if (lv.v1 != 47) return 1;
  if (lv.v2 != 56) return 2;
  if (lv.v3 != 32374) return 3;
  return 0;
}
struct C_C_L ret_C_C_L(){
  struct C_C_L lv;
  lv.v1 = 47;
  lv.v2 = 56;
  lv.v3 = 32374;
  return lv;
}
int zig_recv_C_C_L(struct C_C_L);
int send_C_C_L(){
  struct C_C_L lv;
  lv.v1 = 47;
  lv.v2 = 56;
  lv.v3 = 32374;
  return zig_recv_C_C_L(lv);
}

int recv_C_C_S(struct C_C_S lv){
  if (lv.v1 != 25) return 1;
  if (lv.v2 != 8) return 2;
  if (lv.v3 != 265) return 3;
  return 0;
}
struct C_C_S ret_C_C_S(){
  struct C_C_S lv;
  lv.v1 = 25;
  lv.v2 = 8;
  lv.v3 = 265;
  return lv;
}
int zig_recv_C_C_S(struct C_C_S);
int send_C_C_S(){
  struct C_C_S lv;
  lv.v1 = 25;
  lv.v2 = 8;
  lv.v3 = 265;
  return zig_recv_C_C_S(lv);
}

int recv_C_C_Uc(struct C_C_Uc lv){
  if (lv.v1 != 38) return 1;
  if (lv.v2 != 42) return 2;
  if (lv.v3 != 110) return 3;
  return 0;
}
struct C_C_Uc ret_C_C_Uc(){
  struct C_C_Uc lv;
  lv.v1 = 38;
  lv.v2 = 42;
  lv.v3 = 110;
  return lv;
}
int zig_recv_C_C_Uc(struct C_C_Uc);
int send_C_C_Uc(){
  struct C_C_Uc lv;
  lv.v1 = 38;
  lv.v2 = 42;
  lv.v3 = 110;
  return zig_recv_C_C_Uc(lv);
}

int recv_C_C_Ui(struct C_C_Ui lv){
  if (lv.v1 != 126) return 1;
  if (lv.v2 != 33) return 2;
  if (lv.v3 != 8231) return 3;
  return 0;
}
struct C_C_Ui ret_C_C_Ui(){
  struct C_C_Ui lv;
  lv.v1 = 126;
  lv.v2 = 33;
  lv.v3 = 8231;
  return lv;
}
int zig_recv_C_C_Ui(struct C_C_Ui);
int send_C_C_Ui(){
  struct C_C_Ui lv;
  lv.v1 = 126;
  lv.v2 = 33;
  lv.v3 = 8231;
  return zig_recv_C_C_Ui(lv);
}

int recv_C_C_Ul(struct C_C_Ul lv){
  if (lv.v1 != 89) return 1;
  if (lv.v2 != 41) return 2;
  if (lv.v3 != 1425) return 3;
  return 0;
}
struct C_C_Ul ret_C_C_Ul(){
  struct C_C_Ul lv;
  lv.v1 = 89;
  lv.v2 = 41;
  lv.v3 = 1425;
  return lv;
}
int zig_recv_C_C_Ul(struct C_C_Ul);
int send_C_C_Ul(){
  struct C_C_Ul lv;
  lv.v1 = 89;
  lv.v2 = 41;
  lv.v3 = 1425;
  return zig_recv_C_C_Ul(lv);
}

int recv_C_C_Us(struct C_C_Us lv){
  if (lv.v1 != 64) return 1;
  if (lv.v2 != 25) return 2;
  if (lv.v3 != 3643) return 3;
  return 0;
}
struct C_C_Us ret_C_C_Us(){
  struct C_C_Us lv;
  lv.v1 = 64;
  lv.v2 = 25;
  lv.v3 = 3643;
  return lv;
}
int zig_recv_C_C_Us(struct C_C_Us);
int send_C_C_Us(){
  struct C_C_Us lv;
  lv.v1 = 64;
  lv.v2 = 25;
  lv.v3 = 3643;
  return zig_recv_C_C_Us(lv);
}

int recv_C_C_Vp(struct C_C_Vp lv){
  if (lv.v1 != 104) return 1;
  if (lv.v2 != 122) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_C_Vp ret_C_C_Vp(){
  struct C_C_Vp lv;
  lv.v1 = 104;
  lv.v2 = 122;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_C_Vp(struct C_C_Vp);
int send_C_C_Vp(){
  struct C_C_Vp lv;
  lv.v1 = 104;
  lv.v2 = 122;
  lv.v3 = 0;
  return zig_recv_C_C_Vp(lv);
}

int recv_C_D(struct C_D lv){
  if (lv.v1 != 97) return 1;
  if (lv.v2 != -2.125) return 2;
  return 0;
}
struct C_D ret_C_D(){
  struct C_D lv;
  lv.v1 = 97;
  lv.v2 = -2.125;
  return lv;
}
int zig_recv_C_D(struct C_D);
int send_C_D(){
  struct C_D lv;
  lv.v1 = 97;
  lv.v2 = -2.125;
  return zig_recv_C_D(lv);
}

int recv_C_D_C(struct C_D_C lv){
  if (lv.v1 != 2) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 100) return 3;
  return 0;
}
struct C_D_C ret_C_D_C(){
  struct C_D_C lv;
  lv.v1 = 2;
  lv.v2 = 0.5;
  lv.v3 = 100;
  return lv;
}
int zig_recv_C_D_C(struct C_D_C);
int send_C_D_C(){
  struct C_D_C lv;
  lv.v1 = 2;
  lv.v2 = 0.5;
  lv.v3 = 100;
  return zig_recv_C_D_C(lv);
}

int recv_C_D_D(struct C_D_D lv){
  if (lv.v1 != 56) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct C_D_D ret_C_D_D(){
  struct C_D_D lv;
  lv.v1 = 56;
  lv.v2 = -0.25;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_C_D_D(struct C_D_D);
int send_C_D_D(){
  struct C_D_D lv;
  lv.v1 = 56;
  lv.v2 = -0.25;
  lv.v3 = 0.5;
  return zig_recv_C_D_D(lv);
}

int recv_C_D_F(struct C_D_F lv){
  if (lv.v1 != 127) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct C_D_F ret_C_D_F(){
  struct C_D_F lv;
  lv.v1 = 127;
  lv.v2 = -0.25;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_C_D_F(struct C_D_F);
int send_C_D_F(){
  struct C_D_F lv;
  lv.v1 = 127;
  lv.v2 = -0.25;
  lv.v3 = 1.0;
  return zig_recv_C_D_F(lv);
}

int recv_C_D_I(struct C_D_I lv){
  if (lv.v1 != 3) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 19706) return 3;
  return 0;
}
struct C_D_I ret_C_D_I(){
  struct C_D_I lv;
  lv.v1 = 3;
  lv.v2 = 4.5;
  lv.v3 = 19706;
  return lv;
}
int zig_recv_C_D_I(struct C_D_I);
int send_C_D_I(){
  struct C_D_I lv;
  lv.v1 = 3;
  lv.v2 = 4.5;
  lv.v3 = 19706;
  return zig_recv_C_D_I(lv);
}

int recv_C_D_Ip(struct C_D_Ip lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_D_Ip ret_C_D_Ip(){
  struct C_D_Ip lv;
  lv.v1 = 9;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_D_Ip(struct C_D_Ip);
int send_C_D_Ip(){
  struct C_D_Ip lv;
  lv.v1 = 9;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return zig_recv_C_D_Ip(lv);
}

int recv_C_D_L(struct C_D_L lv){
  if (lv.v1 != 78) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 23713) return 3;
  return 0;
}
struct C_D_L ret_C_D_L(){
  struct C_D_L lv;
  lv.v1 = 78;
  lv.v2 = 7.0;
  lv.v3 = 23713;
  return lv;
}
int zig_recv_C_D_L(struct C_D_L);
int send_C_D_L(){
  struct C_D_L lv;
  lv.v1 = 78;
  lv.v2 = 7.0;
  lv.v3 = 23713;
  return zig_recv_C_D_L(lv);
}

int recv_C_D_S(struct C_D_S lv){
  if (lv.v1 != 90) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 24730) return 3;
  return 0;
}
struct C_D_S ret_C_D_S(){
  struct C_D_S lv;
  lv.v1 = 90;
  lv.v2 = 7.0;
  lv.v3 = 24730;
  return lv;
}
int zig_recv_C_D_S(struct C_D_S);
int send_C_D_S(){
  struct C_D_S lv;
  lv.v1 = 90;
  lv.v2 = 7.0;
  lv.v3 = 24730;
  return zig_recv_C_D_S(lv);
}

int recv_C_D_Uc(struct C_D_Uc lv){
  if (lv.v1 != 75) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 33) return 3;
  return 0;
}
struct C_D_Uc ret_C_D_Uc(){
  struct C_D_Uc lv;
  lv.v1 = 75;
  lv.v2 = 4.5;
  lv.v3 = 33;
  return lv;
}
int zig_recv_C_D_Uc(struct C_D_Uc);
int send_C_D_Uc(){
  struct C_D_Uc lv;
  lv.v1 = 75;
  lv.v2 = 4.5;
  lv.v3 = 33;
  return zig_recv_C_D_Uc(lv);
}

int recv_C_D_Ui(struct C_D_Ui lv){
  if (lv.v1 != 77) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 4531) return 3;
  return 0;
}
struct C_D_Ui ret_C_D_Ui(){
  struct C_D_Ui lv;
  lv.v1 = 77;
  lv.v2 = 1.0;
  lv.v3 = 4531;
  return lv;
}
int zig_recv_C_D_Ui(struct C_D_Ui);
int send_C_D_Ui(){
  struct C_D_Ui lv;
  lv.v1 = 77;
  lv.v2 = 1.0;
  lv.v3 = 4531;
  return zig_recv_C_D_Ui(lv);
}

int recv_C_D_Ul(struct C_D_Ul lv){
  if (lv.v1 != 19) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 23467) return 3;
  return 0;
}
struct C_D_Ul ret_C_D_Ul(){
  struct C_D_Ul lv;
  lv.v1 = 19;
  lv.v2 = 7.0;
  lv.v3 = 23467;
  return lv;
}
int zig_recv_C_D_Ul(struct C_D_Ul);
int send_C_D_Ul(){
  struct C_D_Ul lv;
  lv.v1 = 19;
  lv.v2 = 7.0;
  lv.v3 = 23467;
  return zig_recv_C_D_Ul(lv);
}

int recv_C_D_Us(struct C_D_Us lv){
  if (lv.v1 != 103) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 5008) return 3;
  return 0;
}
struct C_D_Us ret_C_D_Us(){
  struct C_D_Us lv;
  lv.v1 = 103;
  lv.v2 = 0.875;
  lv.v3 = 5008;
  return lv;
}
int zig_recv_C_D_Us(struct C_D_Us);
int send_C_D_Us(){
  struct C_D_Us lv;
  lv.v1 = 103;
  lv.v2 = 0.875;
  lv.v3 = 5008;
  return zig_recv_C_D_Us(lv);
}

int recv_C_D_Vp(struct C_D_Vp lv){
  if (lv.v1 != 77) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_D_Vp ret_C_D_Vp(){
  struct C_D_Vp lv;
  lv.v1 = 77;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_D_Vp(struct C_D_Vp);
int send_C_D_Vp(){
  struct C_D_Vp lv;
  lv.v1 = 77;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return zig_recv_C_D_Vp(lv);
}

int recv_C_F(struct C_F lv){
  if (lv.v1 != 14) return 1;
  if (lv.v2 != -0.25) return 2;
  return 0;
}
struct C_F ret_C_F(){
  struct C_F lv;
  lv.v1 = 14;
  lv.v2 = -0.25;
  return lv;
}
int zig_recv_C_F(struct C_F);
int send_C_F(){
  struct C_F lv;
  lv.v1 = 14;
  lv.v2 = -0.25;
  return zig_recv_C_F(lv);
}

int recv_C_F_C(struct C_F_C lv){
  if (lv.v1 != 99) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 40) return 3;
  return 0;
}
struct C_F_C ret_C_F_C(){
  struct C_F_C lv;
  lv.v1 = 99;
  lv.v2 = -2.125;
  lv.v3 = 40;
  return lv;
}
int zig_recv_C_F_C(struct C_F_C);
int send_C_F_C(){
  struct C_F_C lv;
  lv.v1 = 99;
  lv.v2 = -2.125;
  lv.v3 = 40;
  return zig_recv_C_F_C(lv);
}

int recv_C_F_D(struct C_F_D lv){
  if (lv.v1 != 90) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct C_F_D ret_C_F_D(){
  struct C_F_D lv;
  lv.v1 = 90;
  lv.v2 = -0.25;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_C_F_D(struct C_F_D);
int send_C_F_D(){
  struct C_F_D lv;
  lv.v1 = 90;
  lv.v2 = -0.25;
  lv.v3 = -2.125;
  return zig_recv_C_F_D(lv);
}

int recv_C_F_F(struct C_F_F lv){
  if (lv.v1 != 39) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct C_F_F ret_C_F_F(){
  struct C_F_F lv;
  lv.v1 = 39;
  lv.v2 = 0.875;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_C_F_F(struct C_F_F);
int send_C_F_F(){
  struct C_F_F lv;
  lv.v1 = 39;
  lv.v2 = 0.875;
  lv.v3 = 1.0;
  return zig_recv_C_F_F(lv);
}

int recv_C_F_I(struct C_F_I lv){
  if (lv.v1 != 88) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 18203) return 3;
  return 0;
}
struct C_F_I ret_C_F_I(){
  struct C_F_I lv;
  lv.v1 = 88;
  lv.v2 = 1.0;
  lv.v3 = 18203;
  return lv;
}
int zig_recv_C_F_I(struct C_F_I);
int send_C_F_I(){
  struct C_F_I lv;
  lv.v1 = 88;
  lv.v2 = 1.0;
  lv.v3 = 18203;
  return zig_recv_C_F_I(lv);
}

int recv_C_F_Ip(struct C_F_Ip lv){
  if (lv.v1 != 2) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_F_Ip ret_C_F_Ip(){
  struct C_F_Ip lv;
  lv.v1 = 2;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_F_Ip(struct C_F_Ip);
int send_C_F_Ip(){
  struct C_F_Ip lv;
  lv.v1 = 2;
  lv.v2 = -0.25;
  lv.v3 = 0;
  return zig_recv_C_F_Ip(lv);
}

int recv_C_F_L(struct C_F_L lv){
  if (lv.v1 != 125) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 12277) return 3;
  return 0;
}
struct C_F_L ret_C_F_L(){
  struct C_F_L lv;
  lv.v1 = 125;
  lv.v2 = -0.25;
  lv.v3 = 12277;
  return lv;
}
int zig_recv_C_F_L(struct C_F_L);
int send_C_F_L(){
  struct C_F_L lv;
  lv.v1 = 125;
  lv.v2 = -0.25;
  lv.v3 = 12277;
  return zig_recv_C_F_L(lv);
}

int recv_C_F_S(struct C_F_S lv){
  if (lv.v1 != 52) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 13569) return 3;
  return 0;
}
struct C_F_S ret_C_F_S(){
  struct C_F_S lv;
  lv.v1 = 52;
  lv.v2 = 1.0;
  lv.v3 = 13569;
  return lv;
}
int zig_recv_C_F_S(struct C_F_S);
int send_C_F_S(){
  struct C_F_S lv;
  lv.v1 = 52;
  lv.v2 = 1.0;
  lv.v3 = 13569;
  return zig_recv_C_F_S(lv);
}

int recv_C_F_Uc(struct C_F_Uc lv){
  if (lv.v1 != 115) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 41) return 3;
  return 0;
}
struct C_F_Uc ret_C_F_Uc(){
  struct C_F_Uc lv;
  lv.v1 = 115;
  lv.v2 = 0.5;
  lv.v3 = 41;
  return lv;
}
int zig_recv_C_F_Uc(struct C_F_Uc);
int send_C_F_Uc(){
  struct C_F_Uc lv;
  lv.v1 = 115;
  lv.v2 = 0.5;
  lv.v3 = 41;
  return zig_recv_C_F_Uc(lv);
}

int recv_C_F_Ui(struct C_F_Ui lv){
  if (lv.v1 != 11) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 15064) return 3;
  return 0;
}
struct C_F_Ui ret_C_F_Ui(){
  struct C_F_Ui lv;
  lv.v1 = 11;
  lv.v2 = 0.875;
  lv.v3 = 15064;
  return lv;
}
int zig_recv_C_F_Ui(struct C_F_Ui);
int send_C_F_Ui(){
  struct C_F_Ui lv;
  lv.v1 = 11;
  lv.v2 = 0.875;
  lv.v3 = 15064;
  return zig_recv_C_F_Ui(lv);
}

int recv_C_F_Ul(struct C_F_Ul lv){
  if (lv.v1 != 39) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 20182) return 3;
  return 0;
}
struct C_F_Ul ret_C_F_Ul(){
  struct C_F_Ul lv;
  lv.v1 = 39;
  lv.v2 = 7.0;
  lv.v3 = 20182;
  return lv;
}
int zig_recv_C_F_Ul(struct C_F_Ul);
int send_C_F_Ul(){
  struct C_F_Ul lv;
  lv.v1 = 39;
  lv.v2 = 7.0;
  lv.v3 = 20182;
  return zig_recv_C_F_Ul(lv);
}

int recv_C_F_Us(struct C_F_Us lv){
  if (lv.v1 != 89) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 1739) return 3;
  return 0;
}
struct C_F_Us ret_C_F_Us(){
  struct C_F_Us lv;
  lv.v1 = 89;
  lv.v2 = 1.0;
  lv.v3 = 1739;
  return lv;
}
int zig_recv_C_F_Us(struct C_F_Us);
int send_C_F_Us(){
  struct C_F_Us lv;
  lv.v1 = 89;
  lv.v2 = 1.0;
  lv.v3 = 1739;
  return zig_recv_C_F_Us(lv);
}

int recv_C_F_Vp(struct C_F_Vp lv){
  if (lv.v1 != 110) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_F_Vp ret_C_F_Vp(){
  struct C_F_Vp lv;
  lv.v1 = 110;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_F_Vp(struct C_F_Vp);
int send_C_F_Vp(){
  struct C_F_Vp lv;
  lv.v1 = 110;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return zig_recv_C_F_Vp(lv);
}

int recv_C_I(struct C_I lv){
  if (lv.v1 != 46) return 1;
  if (lv.v2 != 3018) return 2;
  return 0;
}
struct C_I ret_C_I(){
  struct C_I lv;
  lv.v1 = 46;
  lv.v2 = 3018;
  return lv;
}
int zig_recv_C_I(struct C_I);
int send_C_I(){
  struct C_I lv;
  lv.v1 = 46;
  lv.v2 = 3018;
  return zig_recv_C_I(lv);
}

int recv_C_I_C(struct C_I_C lv){
  if (lv.v1 != 38) return 1;
  if (lv.v2 != 18674) return 2;
  if (lv.v3 != 26) return 3;
  return 0;
}
struct C_I_C ret_C_I_C(){
  struct C_I_C lv;
  lv.v1 = 38;
  lv.v2 = 18674;
  lv.v3 = 26;
  return lv;
}
int zig_recv_C_I_C(struct C_I_C);
int send_C_I_C(){
  struct C_I_C lv;
  lv.v1 = 38;
  lv.v2 = 18674;
  lv.v3 = 26;
  return zig_recv_C_I_C(lv);
}

int recv_C_I_D(struct C_I_D lv){
  if (lv.v1 != 7) return 1;
  if (lv.v2 != 8195) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct C_I_D ret_C_I_D(){
  struct C_I_D lv;
  lv.v1 = 7;
  lv.v2 = 8195;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_C_I_D(struct C_I_D);
int send_C_I_D(){
  struct C_I_D lv;
  lv.v1 = 7;
  lv.v2 = 8195;
  lv.v3 = 7.0;
  return zig_recv_C_I_D(lv);
}

int recv_C_I_F(struct C_I_F lv){
  if (lv.v1 != 26) return 1;
  if (lv.v2 != 19684) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct C_I_F ret_C_I_F(){
  struct C_I_F lv;
  lv.v1 = 26;
  lv.v2 = 19684;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_C_I_F(struct C_I_F);
int send_C_I_F(){
  struct C_I_F lv;
  lv.v1 = 26;
  lv.v2 = 19684;
  lv.v3 = 0.5;
  return zig_recv_C_I_F(lv);
}

int recv_C_I_I(struct C_I_I lv){
  if (lv.v1 != 16) return 1;
  if (lv.v2 != 24394) return 2;
  if (lv.v3 != 24801) return 3;
  return 0;
}
struct C_I_I ret_C_I_I(){
  struct C_I_I lv;
  lv.v1 = 16;
  lv.v2 = 24394;
  lv.v3 = 24801;
  return lv;
}
int zig_recv_C_I_I(struct C_I_I);
int send_C_I_I(){
  struct C_I_I lv;
  lv.v1 = 16;
  lv.v2 = 24394;
  lv.v3 = 24801;
  return zig_recv_C_I_I(lv);
}

int recv_C_I_Ip(struct C_I_Ip lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 4874) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_I_Ip ret_C_I_Ip(){
  struct C_I_Ip lv;
  lv.v1 = 9;
  lv.v2 = 4874;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_I_Ip(struct C_I_Ip);
int send_C_I_Ip(){
  struct C_I_Ip lv;
  lv.v1 = 9;
  lv.v2 = 4874;
  lv.v3 = 0;
  return zig_recv_C_I_Ip(lv);
}

int recv_C_I_L(struct C_I_L lv){
  if (lv.v1 != 83) return 1;
  if (lv.v2 != 18653) return 2;
  if (lv.v3 != 14871) return 3;
  return 0;
}
struct C_I_L ret_C_I_L(){
  struct C_I_L lv;
  lv.v1 = 83;
  lv.v2 = 18653;
  lv.v3 = 14871;
  return lv;
}
int zig_recv_C_I_L(struct C_I_L);
int send_C_I_L(){
  struct C_I_L lv;
  lv.v1 = 83;
  lv.v2 = 18653;
  lv.v3 = 14871;
  return zig_recv_C_I_L(lv);
}

int recv_C_I_S(struct C_I_S lv){
  if (lv.v1 != 55) return 1;
  if (lv.v2 != 11619) return 2;
  if (lv.v3 != 1995) return 3;
  return 0;
}
struct C_I_S ret_C_I_S(){
  struct C_I_S lv;
  lv.v1 = 55;
  lv.v2 = 11619;
  lv.v3 = 1995;
  return lv;
}
int zig_recv_C_I_S(struct C_I_S);
int send_C_I_S(){
  struct C_I_S lv;
  lv.v1 = 55;
  lv.v2 = 11619;
  lv.v3 = 1995;
  return zig_recv_C_I_S(lv);
}

int recv_C_I_Uc(struct C_I_Uc lv){
  if (lv.v1 != 108) return 1;
  if (lv.v2 != 18803) return 2;
  if (lv.v3 != 13) return 3;
  return 0;
}
struct C_I_Uc ret_C_I_Uc(){
  struct C_I_Uc lv;
  lv.v1 = 108;
  lv.v2 = 18803;
  lv.v3 = 13;
  return lv;
}
int zig_recv_C_I_Uc(struct C_I_Uc);
int send_C_I_Uc(){
  struct C_I_Uc lv;
  lv.v1 = 108;
  lv.v2 = 18803;
  lv.v3 = 13;
  return zig_recv_C_I_Uc(lv);
}

int recv_C_I_Ui(struct C_I_Ui lv){
  if (lv.v1 != 72) return 1;
  if (lv.v2 != 10536) return 2;
  if (lv.v3 != 25360) return 3;
  return 0;
}
struct C_I_Ui ret_C_I_Ui(){
  struct C_I_Ui lv;
  lv.v1 = 72;
  lv.v2 = 10536;
  lv.v3 = 25360;
  return lv;
}
int zig_recv_C_I_Ui(struct C_I_Ui);
int send_C_I_Ui(){
  struct C_I_Ui lv;
  lv.v1 = 72;
  lv.v2 = 10536;
  lv.v3 = 25360;
  return zig_recv_C_I_Ui(lv);
}

int recv_C_I_Ul(struct C_I_Ul lv){
  if (lv.v1 != 88) return 1;
  if (lv.v2 != 11624) return 2;
  if (lv.v3 != 26188) return 3;
  return 0;
}
struct C_I_Ul ret_C_I_Ul(){
  struct C_I_Ul lv;
  lv.v1 = 88;
  lv.v2 = 11624;
  lv.v3 = 26188;
  return lv;
}
int zig_recv_C_I_Ul(struct C_I_Ul);
int send_C_I_Ul(){
  struct C_I_Ul lv;
  lv.v1 = 88;
  lv.v2 = 11624;
  lv.v3 = 26188;
  return zig_recv_C_I_Ul(lv);
}

int recv_C_I_Us(struct C_I_Us lv){
  if (lv.v1 != 82) return 1;
  if (lv.v2 != 7832) return 2;
  if (lv.v3 != 15543) return 3;
  return 0;
}
struct C_I_Us ret_C_I_Us(){
  struct C_I_Us lv;
  lv.v1 = 82;
  lv.v2 = 7832;
  lv.v3 = 15543;
  return lv;
}
int zig_recv_C_I_Us(struct C_I_Us);
int send_C_I_Us(){
  struct C_I_Us lv;
  lv.v1 = 82;
  lv.v2 = 7832;
  lv.v3 = 15543;
  return zig_recv_C_I_Us(lv);
}

int recv_C_I_Vp(struct C_I_Vp lv){
  if (lv.v1 != 8) return 1;
  if (lv.v2 != 3632) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_I_Vp ret_C_I_Vp(){
  struct C_I_Vp lv;
  lv.v1 = 8;
  lv.v2 = 3632;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_I_Vp(struct C_I_Vp);
int send_C_I_Vp(){
  struct C_I_Vp lv;
  lv.v1 = 8;
  lv.v2 = 3632;
  lv.v3 = 0;
  return zig_recv_C_I_Vp(lv);
}

int recv_C_Ip(struct C_Ip lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct C_Ip ret_C_Ip(){
  struct C_Ip lv;
  lv.v1 = 9;
  lv.v2 = 0;
  return lv;
}
int zig_recv_C_Ip(struct C_Ip);
int send_C_Ip(){
  struct C_Ip lv;
  lv.v1 = 9;
  lv.v2 = 0;
  return zig_recv_C_Ip(lv);
}

int recv_C_Ip_C(struct C_Ip_C lv){
  if (lv.v1 != 121) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 51) return 3;
  return 0;
}
struct C_Ip_C ret_C_Ip_C(){
  struct C_Ip_C lv;
  lv.v1 = 121;
  lv.v2 = 0;
  lv.v3 = 51;
  return lv;
}
int zig_recv_C_Ip_C(struct C_Ip_C);
int send_C_Ip_C(){
  struct C_Ip_C lv;
  lv.v1 = 121;
  lv.v2 = 0;
  lv.v3 = 51;
  return zig_recv_C_Ip_C(lv);
}

int recv_C_Ip_D(struct C_Ip_D lv){
  if (lv.v1 != 80) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct C_Ip_D ret_C_Ip_D(){
  struct C_Ip_D lv;
  lv.v1 = 80;
  lv.v2 = 0;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_C_Ip_D(struct C_Ip_D);
int send_C_Ip_D(){
  struct C_Ip_D lv;
  lv.v1 = 80;
  lv.v2 = 0;
  lv.v3 = 0.875;
  return zig_recv_C_Ip_D(lv);
}

int recv_C_Ip_F(struct C_Ip_F lv){
  if (lv.v1 != 52) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct C_Ip_F ret_C_Ip_F(){
  struct C_Ip_F lv;
  lv.v1 = 52;
  lv.v2 = 0;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_C_Ip_F(struct C_Ip_F);
int send_C_Ip_F(){
  struct C_Ip_F lv;
  lv.v1 = 52;
  lv.v2 = 0;
  lv.v3 = 1.0;
  return zig_recv_C_Ip_F(lv);
}

int recv_C_Ip_I(struct C_Ip_I lv){
  if (lv.v1 != 42) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7495) return 3;
  return 0;
}
struct C_Ip_I ret_C_Ip_I(){
  struct C_Ip_I lv;
  lv.v1 = 42;
  lv.v2 = 0;
  lv.v3 = 7495;
  return lv;
}
int zig_recv_C_Ip_I(struct C_Ip_I);
int send_C_Ip_I(){
  struct C_Ip_I lv;
  lv.v1 = 42;
  lv.v2 = 0;
  lv.v3 = 7495;
  return zig_recv_C_Ip_I(lv);
}

int recv_C_Ip_Ip(struct C_Ip_Ip lv){
  if (lv.v1 != 28) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Ip_Ip ret_C_Ip_Ip(){
  struct C_Ip_Ip lv;
  lv.v1 = 28;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Ip_Ip(struct C_Ip_Ip);
int send_C_Ip_Ip(){
  struct C_Ip_Ip lv;
  lv.v1 = 28;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_C_Ip_Ip(lv);
}

int recv_C_Ip_L(struct C_Ip_L lv){
  if (lv.v1 != 61) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 20688) return 3;
  return 0;
}
struct C_Ip_L ret_C_Ip_L(){
  struct C_Ip_L lv;
  lv.v1 = 61;
  lv.v2 = 0;
  lv.v3 = 20688;
  return lv;
}
int zig_recv_C_Ip_L(struct C_Ip_L);
int send_C_Ip_L(){
  struct C_Ip_L lv;
  lv.v1 = 61;
  lv.v2 = 0;
  lv.v3 = 20688;
  return zig_recv_C_Ip_L(lv);
}

int recv_C_Ip_S(struct C_Ip_S lv){
  if (lv.v1 != 13) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 22524) return 3;
  return 0;
}
struct C_Ip_S ret_C_Ip_S(){
  struct C_Ip_S lv;
  lv.v1 = 13;
  lv.v2 = 0;
  lv.v3 = 22524;
  return lv;
}
int zig_recv_C_Ip_S(struct C_Ip_S);
int send_C_Ip_S(){
  struct C_Ip_S lv;
  lv.v1 = 13;
  lv.v2 = 0;
  lv.v3 = 22524;
  return zig_recv_C_Ip_S(lv);
}

int recv_C_Ip_Uc(struct C_Ip_Uc lv){
  if (lv.v1 != 110) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 110) return 3;
  return 0;
}
struct C_Ip_Uc ret_C_Ip_Uc(){
  struct C_Ip_Uc lv;
  lv.v1 = 110;
  lv.v2 = 0;
  lv.v3 = 110;
  return lv;
}
int zig_recv_C_Ip_Uc(struct C_Ip_Uc);
int send_C_Ip_Uc(){
  struct C_Ip_Uc lv;
  lv.v1 = 110;
  lv.v2 = 0;
  lv.v3 = 110;
  return zig_recv_C_Ip_Uc(lv);
}

int recv_C_Ip_Ui(struct C_Ip_Ui lv){
  if (lv.v1 != 30) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 29435) return 3;
  return 0;
}
struct C_Ip_Ui ret_C_Ip_Ui(){
  struct C_Ip_Ui lv;
  lv.v1 = 30;
  lv.v2 = 0;
  lv.v3 = 29435;
  return lv;
}
int zig_recv_C_Ip_Ui(struct C_Ip_Ui);
int send_C_Ip_Ui(){
  struct C_Ip_Ui lv;
  lv.v1 = 30;
  lv.v2 = 0;
  lv.v3 = 29435;
  return zig_recv_C_Ip_Ui(lv);
}

int recv_C_Ip_Ul(struct C_Ip_Ul lv){
  if (lv.v1 != 86) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 25629) return 3;
  return 0;
}
struct C_Ip_Ul ret_C_Ip_Ul(){
  struct C_Ip_Ul lv;
  lv.v1 = 86;
  lv.v2 = 0;
  lv.v3 = 25629;
  return lv;
}
int zig_recv_C_Ip_Ul(struct C_Ip_Ul);
int send_C_Ip_Ul(){
  struct C_Ip_Ul lv;
  lv.v1 = 86;
  lv.v2 = 0;
  lv.v3 = 25629;
  return zig_recv_C_Ip_Ul(lv);
}

int recv_C_Ip_Us(struct C_Ip_Us lv){
  if (lv.v1 != 76) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 11318) return 3;
  return 0;
}
struct C_Ip_Us ret_C_Ip_Us(){
  struct C_Ip_Us lv;
  lv.v1 = 76;
  lv.v2 = 0;
  lv.v3 = 11318;
  return lv;
}
int zig_recv_C_Ip_Us(struct C_Ip_Us);
int send_C_Ip_Us(){
  struct C_Ip_Us lv;
  lv.v1 = 76;
  lv.v2 = 0;
  lv.v3 = 11318;
  return zig_recv_C_Ip_Us(lv);
}

int recv_C_Ip_Vp(struct C_Ip_Vp lv){
  if (lv.v1 != 88) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Ip_Vp ret_C_Ip_Vp(){
  struct C_Ip_Vp lv;
  lv.v1 = 88;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Ip_Vp(struct C_Ip_Vp);
int send_C_Ip_Vp(){
  struct C_Ip_Vp lv;
  lv.v1 = 88;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_C_Ip_Vp(lv);
}

int recv_C_L(struct C_L lv){
  if (lv.v1 != 97) return 1;
  if (lv.v2 != 28944) return 2;
  return 0;
}
struct C_L ret_C_L(){
  struct C_L lv;
  lv.v1 = 97;
  lv.v2 = 28944;
  return lv;
}
int zig_recv_C_L(struct C_L);
int send_C_L(){
  struct C_L lv;
  lv.v1 = 97;
  lv.v2 = 28944;
  return zig_recv_C_L(lv);
}

int recv_C_L_C(struct C_L_C lv){
  if (lv.v1 != 78) return 1;
  if (lv.v2 != 26157) return 2;
  if (lv.v3 != 19) return 3;
  return 0;
}
struct C_L_C ret_C_L_C(){
  struct C_L_C lv;
  lv.v1 = 78;
  lv.v2 = 26157;
  lv.v3 = 19;
  return lv;
}
int zig_recv_C_L_C(struct C_L_C);
int send_C_L_C(){
  struct C_L_C lv;
  lv.v1 = 78;
  lv.v2 = 26157;
  lv.v3 = 19;
  return zig_recv_C_L_C(lv);
}

int recv_C_L_D(struct C_L_D lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 20523) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct C_L_D ret_C_L_D(){
  struct C_L_D lv;
  lv.v1 = 9;
  lv.v2 = 20523;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_C_L_D(struct C_L_D);
int send_C_L_D(){
  struct C_L_D lv;
  lv.v1 = 9;
  lv.v2 = 20523;
  lv.v3 = -2.125;
  return zig_recv_C_L_D(lv);
}

int recv_C_L_F(struct C_L_F lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 8400) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct C_L_F ret_C_L_F(){
  struct C_L_F lv;
  lv.v1 = 9;
  lv.v2 = 8400;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_C_L_F(struct C_L_F);
int send_C_L_F(){
  struct C_L_F lv;
  lv.v1 = 9;
  lv.v2 = 8400;
  lv.v3 = 0.875;
  return zig_recv_C_L_F(lv);
}

int recv_C_L_I(struct C_L_I lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 13198) return 2;
  if (lv.v3 != 2651) return 3;
  return 0;
}
struct C_L_I ret_C_L_I(){
  struct C_L_I lv;
  lv.v1 = 9;
  lv.v2 = 13198;
  lv.v3 = 2651;
  return lv;
}
int zig_recv_C_L_I(struct C_L_I);
int send_C_L_I(){
  struct C_L_I lv;
  lv.v1 = 9;
  lv.v2 = 13198;
  lv.v3 = 2651;
  return zig_recv_C_L_I(lv);
}

int recv_C_L_Ip(struct C_L_Ip lv){
  if (lv.v1 != 20) return 1;
  if (lv.v2 != 32425) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_L_Ip ret_C_L_Ip(){
  struct C_L_Ip lv;
  lv.v1 = 20;
  lv.v2 = 32425;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_L_Ip(struct C_L_Ip);
int send_C_L_Ip(){
  struct C_L_Ip lv;
  lv.v1 = 20;
  lv.v2 = 32425;
  lv.v3 = 0;
  return zig_recv_C_L_Ip(lv);
}

int recv_C_L_L(struct C_L_L lv){
  if (lv.v1 != 20) return 1;
  if (lv.v2 != 7763) return 2;
  if (lv.v3 != 7816) return 3;
  return 0;
}
struct C_L_L ret_C_L_L(){
  struct C_L_L lv;
  lv.v1 = 20;
  lv.v2 = 7763;
  lv.v3 = 7816;
  return lv;
}
int zig_recv_C_L_L(struct C_L_L);
int send_C_L_L(){
  struct C_L_L lv;
  lv.v1 = 20;
  lv.v2 = 7763;
  lv.v3 = 7816;
  return zig_recv_C_L_L(lv);
}

int recv_C_L_S(struct C_L_S lv){
  if (lv.v1 != 98) return 1;
  if (lv.v2 != 3355) return 2;
  if (lv.v3 != 11825) return 3;
  return 0;
}
struct C_L_S ret_C_L_S(){
  struct C_L_S lv;
  lv.v1 = 98;
  lv.v2 = 3355;
  lv.v3 = 11825;
  return lv;
}
int zig_recv_C_L_S(struct C_L_S);
int send_C_L_S(){
  struct C_L_S lv;
  lv.v1 = 98;
  lv.v2 = 3355;
  lv.v3 = 11825;
  return zig_recv_C_L_S(lv);
}

int recv_C_L_Uc(struct C_L_Uc lv){
  if (lv.v1 != 84) return 1;
  if (lv.v2 != 21813) return 2;
  if (lv.v3 != 82) return 3;
  return 0;
}
struct C_L_Uc ret_C_L_Uc(){
  struct C_L_Uc lv;
  lv.v1 = 84;
  lv.v2 = 21813;
  lv.v3 = 82;
  return lv;
}
int zig_recv_C_L_Uc(struct C_L_Uc);
int send_C_L_Uc(){
  struct C_L_Uc lv;
  lv.v1 = 84;
  lv.v2 = 21813;
  lv.v3 = 82;
  return zig_recv_C_L_Uc(lv);
}

int recv_C_L_Ui(struct C_L_Ui lv){
  if (lv.v1 != 18) return 1;
  if (lv.v2 != 4611) return 2;
  if (lv.v3 != 4717) return 3;
  return 0;
}
struct C_L_Ui ret_C_L_Ui(){
  struct C_L_Ui lv;
  lv.v1 = 18;
  lv.v2 = 4611;
  lv.v3 = 4717;
  return lv;
}
int zig_recv_C_L_Ui(struct C_L_Ui);
int send_C_L_Ui(){
  struct C_L_Ui lv;
  lv.v1 = 18;
  lv.v2 = 4611;
  lv.v3 = 4717;
  return zig_recv_C_L_Ui(lv);
}

int recv_C_L_Ul(struct C_L_Ul lv){
  if (lv.v1 != 92) return 1;
  if (lv.v2 != 12449) return 2;
  if (lv.v3 != 415) return 3;
  return 0;
}
struct C_L_Ul ret_C_L_Ul(){
  struct C_L_Ul lv;
  lv.v1 = 92;
  lv.v2 = 12449;
  lv.v3 = 415;
  return lv;
}
int zig_recv_C_L_Ul(struct C_L_Ul);
int send_C_L_Ul(){
  struct C_L_Ul lv;
  lv.v1 = 92;
  lv.v2 = 12449;
  lv.v3 = 415;
  return zig_recv_C_L_Ul(lv);
}

int recv_C_L_Us(struct C_L_Us lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 23471) return 2;
  if (lv.v3 != 19229) return 3;
  return 0;
}
struct C_L_Us ret_C_L_Us(){
  struct C_L_Us lv;
  lv.v1 = 9;
  lv.v2 = 23471;
  lv.v3 = 19229;
  return lv;
}
int zig_recv_C_L_Us(struct C_L_Us);
int send_C_L_Us(){
  struct C_L_Us lv;
  lv.v1 = 9;
  lv.v2 = 23471;
  lv.v3 = 19229;
  return zig_recv_C_L_Us(lv);
}

int recv_C_L_Vp(struct C_L_Vp lv){
  if (lv.v1 != 117) return 1;
  if (lv.v2 != 23122) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_L_Vp ret_C_L_Vp(){
  struct C_L_Vp lv;
  lv.v1 = 117;
  lv.v2 = 23122;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_L_Vp(struct C_L_Vp);
int send_C_L_Vp(){
  struct C_L_Vp lv;
  lv.v1 = 117;
  lv.v2 = 23122;
  lv.v3 = 0;
  return zig_recv_C_L_Vp(lv);
}

int recv_C_S(struct C_S lv){
  if (lv.v1 != 124) return 1;
  if (lv.v2 != 7400) return 2;
  return 0;
}
struct C_S ret_C_S(){
  struct C_S lv;
  lv.v1 = 124;
  lv.v2 = 7400;
  return lv;
}
int zig_recv_C_S(struct C_S);
int send_C_S(){
  struct C_S lv;
  lv.v1 = 124;
  lv.v2 = 7400;
  return zig_recv_C_S(lv);
}

int recv_C_S_C(struct C_S_C lv){
  if (lv.v1 != 110) return 1;
  if (lv.v2 != 3564) return 2;
  if (lv.v3 != 30) return 3;
  return 0;
}
struct C_S_C ret_C_S_C(){
  struct C_S_C lv;
  lv.v1 = 110;
  lv.v2 = 3564;
  lv.v3 = 30;
  return lv;
}
int zig_recv_C_S_C(struct C_S_C);
int send_C_S_C(){
  struct C_S_C lv;
  lv.v1 = 110;
  lv.v2 = 3564;
  lv.v3 = 30;
  return zig_recv_C_S_C(lv);
}

int recv_C_S_D(struct C_S_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 7071) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct C_S_D ret_C_S_D(){
  struct C_S_D lv;
  lv.v1 = 0;
  lv.v2 = 7071;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_C_S_D(struct C_S_D);
int send_C_S_D(){
  struct C_S_D lv;
  lv.v1 = 0;
  lv.v2 = 7071;
  lv.v3 = -2.125;
  return zig_recv_C_S_D(lv);
}

int recv_C_S_F(struct C_S_F lv){
  if (lv.v1 != 26) return 1;
  if (lv.v2 != 17641) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct C_S_F ret_C_S_F(){
  struct C_S_F lv;
  lv.v1 = 26;
  lv.v2 = 17641;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_C_S_F(struct C_S_F);
int send_C_S_F(){
  struct C_S_F lv;
  lv.v1 = 26;
  lv.v2 = 17641;
  lv.v3 = -2.125;
  return zig_recv_C_S_F(lv);
}

int recv_C_S_I(struct C_S_I lv){
  if (lv.v1 != 1) return 1;
  if (lv.v2 != 13882) return 2;
  if (lv.v3 != 27710) return 3;
  return 0;
}
struct C_S_I ret_C_S_I(){
  struct C_S_I lv;
  lv.v1 = 1;
  lv.v2 = 13882;
  lv.v3 = 27710;
  return lv;
}
int zig_recv_C_S_I(struct C_S_I);
int send_C_S_I(){
  struct C_S_I lv;
  lv.v1 = 1;
  lv.v2 = 13882;
  lv.v3 = 27710;
  return zig_recv_C_S_I(lv);
}

int recv_C_S_Ip(struct C_S_Ip lv){
  if (lv.v1 != 82) return 1;
  if (lv.v2 != 21579) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_S_Ip ret_C_S_Ip(){
  struct C_S_Ip lv;
  lv.v1 = 82;
  lv.v2 = 21579;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_S_Ip(struct C_S_Ip);
int send_C_S_Ip(){
  struct C_S_Ip lv;
  lv.v1 = 82;
  lv.v2 = 21579;
  lv.v3 = 0;
  return zig_recv_C_S_Ip(lv);
}

int recv_C_S_L(struct C_S_L lv){
  if (lv.v1 != 123) return 1;
  if (lv.v2 != 5427) return 2;
  if (lv.v3 != 3858) return 3;
  return 0;
}
struct C_S_L ret_C_S_L(){
  struct C_S_L lv;
  lv.v1 = 123;
  lv.v2 = 5427;
  lv.v3 = 3858;
  return lv;
}
int zig_recv_C_S_L(struct C_S_L);
int send_C_S_L(){
  struct C_S_L lv;
  lv.v1 = 123;
  lv.v2 = 5427;
  lv.v3 = 3858;
  return zig_recv_C_S_L(lv);
}

int recv_C_S_S(struct C_S_S lv){
  if (lv.v1 != 12) return 1;
  if (lv.v2 != 18576) return 2;
  if (lv.v3 != 1535) return 3;
  return 0;
}
struct C_S_S ret_C_S_S(){
  struct C_S_S lv;
  lv.v1 = 12;
  lv.v2 = 18576;
  lv.v3 = 1535;
  return lv;
}
int zig_recv_C_S_S(struct C_S_S);
int send_C_S_S(){
  struct C_S_S lv;
  lv.v1 = 12;
  lv.v2 = 18576;
  lv.v3 = 1535;
  return zig_recv_C_S_S(lv);
}

int recv_C_S_Uc(struct C_S_Uc lv){
  if (lv.v1 != 59) return 1;
  if (lv.v2 != 4768) return 2;
  if (lv.v3 != 10) return 3;
  return 0;
}
struct C_S_Uc ret_C_S_Uc(){
  struct C_S_Uc lv;
  lv.v1 = 59;
  lv.v2 = 4768;
  lv.v3 = 10;
  return lv;
}
int zig_recv_C_S_Uc(struct C_S_Uc);
int send_C_S_Uc(){
  struct C_S_Uc lv;
  lv.v1 = 59;
  lv.v2 = 4768;
  lv.v3 = 10;
  return zig_recv_C_S_Uc(lv);
}

int recv_C_S_Ui(struct C_S_Ui lv){
  if (lv.v1 != 72) return 1;
  if (lv.v2 != 14125) return 2;
  if (lv.v3 != 4728) return 3;
  return 0;
}
struct C_S_Ui ret_C_S_Ui(){
  struct C_S_Ui lv;
  lv.v1 = 72;
  lv.v2 = 14125;
  lv.v3 = 4728;
  return lv;
}
int zig_recv_C_S_Ui(struct C_S_Ui);
int send_C_S_Ui(){
  struct C_S_Ui lv;
  lv.v1 = 72;
  lv.v2 = 14125;
  lv.v3 = 4728;
  return zig_recv_C_S_Ui(lv);
}

int recv_C_S_Ul(struct C_S_Ul lv){
  if (lv.v1 != 65) return 1;
  if (lv.v2 != 17421) return 2;
  if (lv.v3 != 1849) return 3;
  return 0;
}
struct C_S_Ul ret_C_S_Ul(){
  struct C_S_Ul lv;
  lv.v1 = 65;
  lv.v2 = 17421;
  lv.v3 = 1849;
  return lv;
}
int zig_recv_C_S_Ul(struct C_S_Ul);
int send_C_S_Ul(){
  struct C_S_Ul lv;
  lv.v1 = 65;
  lv.v2 = 17421;
  lv.v3 = 1849;
  return zig_recv_C_S_Ul(lv);
}

int recv_C_S_Us(struct C_S_Us lv){
  if (lv.v1 != 113) return 1;
  if (lv.v2 != 29303) return 2;
  if (lv.v3 != 16194) return 3;
  return 0;
}
struct C_S_Us ret_C_S_Us(){
  struct C_S_Us lv;
  lv.v1 = 113;
  lv.v2 = 29303;
  lv.v3 = 16194;
  return lv;
}
int zig_recv_C_S_Us(struct C_S_Us);
int send_C_S_Us(){
  struct C_S_Us lv;
  lv.v1 = 113;
  lv.v2 = 29303;
  lv.v3 = 16194;
  return zig_recv_C_S_Us(lv);
}

int recv_C_S_Vp(struct C_S_Vp lv){
  if (lv.v1 != 52) return 1;
  if (lv.v2 != 27691) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_S_Vp ret_C_S_Vp(){
  struct C_S_Vp lv;
  lv.v1 = 52;
  lv.v2 = 27691;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_S_Vp(struct C_S_Vp);
int send_C_S_Vp(){
  struct C_S_Vp lv;
  lv.v1 = 52;
  lv.v2 = 27691;
  lv.v3 = 0;
  return zig_recv_C_S_Vp(lv);
}

int recv_C_Uc(struct C_Uc lv){
  if (lv.v1 != 93) return 1;
  if (lv.v2 != 46) return 2;
  return 0;
}
struct C_Uc ret_C_Uc(){
  struct C_Uc lv;
  lv.v1 = 93;
  lv.v2 = 46;
  return lv;
}
int zig_recv_C_Uc(struct C_Uc);
int send_C_Uc(){
  struct C_Uc lv;
  lv.v1 = 93;
  lv.v2 = 46;
  return zig_recv_C_Uc(lv);
}

int recv_C_Uc_C(struct C_Uc_C lv){
  if (lv.v1 != 28) return 1;
  if (lv.v2 != 86) return 2;
  if (lv.v3 != 16) return 3;
  return 0;
}
struct C_Uc_C ret_C_Uc_C(){
  struct C_Uc_C lv;
  lv.v1 = 28;
  lv.v2 = 86;
  lv.v3 = 16;
  return lv;
}
int zig_recv_C_Uc_C(struct C_Uc_C);
int send_C_Uc_C(){
  struct C_Uc_C lv;
  lv.v1 = 28;
  lv.v2 = 86;
  lv.v3 = 16;
  return zig_recv_C_Uc_C(lv);
}

int recv_C_Uc_D(struct C_Uc_D lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 2) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct C_Uc_D ret_C_Uc_D(){
  struct C_Uc_D lv;
  lv.v1 = 0;
  lv.v2 = 2;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_C_Uc_D(struct C_Uc_D);
int send_C_Uc_D(){
  struct C_Uc_D lv;
  lv.v1 = 0;
  lv.v2 = 2;
  lv.v3 = 0.5;
  return zig_recv_C_Uc_D(lv);
}

int recv_C_Uc_F(struct C_Uc_F lv){
  if (lv.v1 != 115) return 1;
  if (lv.v2 != 17) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct C_Uc_F ret_C_Uc_F(){
  struct C_Uc_F lv;
  lv.v1 = 115;
  lv.v2 = 17;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_C_Uc_F(struct C_Uc_F);
int send_C_Uc_F(){
  struct C_Uc_F lv;
  lv.v1 = 115;
  lv.v2 = 17;
  lv.v3 = 0.875;
  return zig_recv_C_Uc_F(lv);
}

int recv_C_Uc_I(struct C_Uc_I lv){
  if (lv.v1 != 17) return 1;
  if (lv.v2 != 45) return 2;
  if (lv.v3 != 13482) return 3;
  return 0;
}
struct C_Uc_I ret_C_Uc_I(){
  struct C_Uc_I lv;
  lv.v1 = 17;
  lv.v2 = 45;
  lv.v3 = 13482;
  return lv;
}
int zig_recv_C_Uc_I(struct C_Uc_I);
int send_C_Uc_I(){
  struct C_Uc_I lv;
  lv.v1 = 17;
  lv.v2 = 45;
  lv.v3 = 13482;
  return zig_recv_C_Uc_I(lv);
}

int recv_C_Uc_Ip(struct C_Uc_Ip lv){
  if (lv.v1 != 52) return 1;
  if (lv.v2 != 7) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Uc_Ip ret_C_Uc_Ip(){
  struct C_Uc_Ip lv;
  lv.v1 = 52;
  lv.v2 = 7;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Uc_Ip(struct C_Uc_Ip);
int send_C_Uc_Ip(){
  struct C_Uc_Ip lv;
  lv.v1 = 52;
  lv.v2 = 7;
  lv.v3 = 0;
  return zig_recv_C_Uc_Ip(lv);
}

int recv_C_Uc_L(struct C_Uc_L lv){
  if (lv.v1 != 5) return 1;
  if (lv.v2 != 88) return 2;
  if (lv.v3 != 31749) return 3;
  return 0;
}
struct C_Uc_L ret_C_Uc_L(){
  struct C_Uc_L lv;
  lv.v1 = 5;
  lv.v2 = 88;
  lv.v3 = 31749;
  return lv;
}
int zig_recv_C_Uc_L(struct C_Uc_L);
int send_C_Uc_L(){
  struct C_Uc_L lv;
  lv.v1 = 5;
  lv.v2 = 88;
  lv.v3 = 31749;
  return zig_recv_C_Uc_L(lv);
}

int recv_C_Uc_S(struct C_Uc_S lv){
  if (lv.v1 != 98) return 1;
  if (lv.v2 != 11) return 2;
  if (lv.v3 != 25168) return 3;
  return 0;
}
struct C_Uc_S ret_C_Uc_S(){
  struct C_Uc_S lv;
  lv.v1 = 98;
  lv.v2 = 11;
  lv.v3 = 25168;
  return lv;
}
int zig_recv_C_Uc_S(struct C_Uc_S);
int send_C_Uc_S(){
  struct C_Uc_S lv;
  lv.v1 = 98;
  lv.v2 = 11;
  lv.v3 = 25168;
  return zig_recv_C_Uc_S(lv);
}

int recv_C_Uc_Uc(struct C_Uc_Uc lv){
  if (lv.v1 != 23) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 11) return 3;
  return 0;
}
struct C_Uc_Uc ret_C_Uc_Uc(){
  struct C_Uc_Uc lv;
  lv.v1 = 23;
  lv.v2 = 0;
  lv.v3 = 11;
  return lv;
}
int zig_recv_C_Uc_Uc(struct C_Uc_Uc);
int send_C_Uc_Uc(){
  struct C_Uc_Uc lv;
  lv.v1 = 23;
  lv.v2 = 0;
  lv.v3 = 11;
  return zig_recv_C_Uc_Uc(lv);
}

int recv_C_Uc_Ui(struct C_Uc_Ui lv){
  if (lv.v1 != 122) return 1;
  if (lv.v2 != 85) return 2;
  if (lv.v3 != 33) return 3;
  return 0;
}
struct C_Uc_Ui ret_C_Uc_Ui(){
  struct C_Uc_Ui lv;
  lv.v1 = 122;
  lv.v2 = 85;
  lv.v3 = 33;
  return lv;
}
int zig_recv_C_Uc_Ui(struct C_Uc_Ui);
int send_C_Uc_Ui(){
  struct C_Uc_Ui lv;
  lv.v1 = 122;
  lv.v2 = 85;
  lv.v3 = 33;
  return zig_recv_C_Uc_Ui(lv);
}

int recv_C_Uc_Ul(struct C_Uc_Ul lv){
  if (lv.v1 != 61) return 1;
  if (lv.v2 != 112) return 2;
  if (lv.v3 != 10651) return 3;
  return 0;
}
struct C_Uc_Ul ret_C_Uc_Ul(){
  struct C_Uc_Ul lv;
  lv.v1 = 61;
  lv.v2 = 112;
  lv.v3 = 10651;
  return lv;
}
int zig_recv_C_Uc_Ul(struct C_Uc_Ul);
int send_C_Uc_Ul(){
  struct C_Uc_Ul lv;
  lv.v1 = 61;
  lv.v2 = 112;
  lv.v3 = 10651;
  return zig_recv_C_Uc_Ul(lv);
}

int recv_C_Uc_Us(struct C_Uc_Us lv){
  if (lv.v1 != 57) return 1;
  if (lv.v2 != 81) return 2;
  if (lv.v3 != 27476) return 3;
  return 0;
}
struct C_Uc_Us ret_C_Uc_Us(){
  struct C_Uc_Us lv;
  lv.v1 = 57;
  lv.v2 = 81;
  lv.v3 = 27476;
  return lv;
}
int zig_recv_C_Uc_Us(struct C_Uc_Us);
int send_C_Uc_Us(){
  struct C_Uc_Us lv;
  lv.v1 = 57;
  lv.v2 = 81;
  lv.v3 = 27476;
  return zig_recv_C_Uc_Us(lv);
}

int recv_C_Uc_Vp(struct C_Uc_Vp lv){
  if (lv.v1 != 20) return 1;
  if (lv.v2 != 69) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Uc_Vp ret_C_Uc_Vp(){
  struct C_Uc_Vp lv;
  lv.v1 = 20;
  lv.v2 = 69;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Uc_Vp(struct C_Uc_Vp);
int send_C_Uc_Vp(){
  struct C_Uc_Vp lv;
  lv.v1 = 20;
  lv.v2 = 69;
  lv.v3 = 0;
  return zig_recv_C_Uc_Vp(lv);
}

int recv_C_Ui(struct C_Ui lv){
  if (lv.v1 != 26) return 1;
  if (lv.v2 != 31736) return 2;
  return 0;
}
struct C_Ui ret_C_Ui(){
  struct C_Ui lv;
  lv.v1 = 26;
  lv.v2 = 31736;
  return lv;
}
int zig_recv_C_Ui(struct C_Ui);
int send_C_Ui(){
  struct C_Ui lv;
  lv.v1 = 26;
  lv.v2 = 31736;
  return zig_recv_C_Ui(lv);
}

int recv_C_Ui_C(struct C_Ui_C lv){
  if (lv.v1 != 22) return 1;
  if (lv.v2 != 6795) return 2;
  if (lv.v3 != 61) return 3;
  return 0;
}
struct C_Ui_C ret_C_Ui_C(){
  struct C_Ui_C lv;
  lv.v1 = 22;
  lv.v2 = 6795;
  lv.v3 = 61;
  return lv;
}
int zig_recv_C_Ui_C(struct C_Ui_C);
int send_C_Ui_C(){
  struct C_Ui_C lv;
  lv.v1 = 22;
  lv.v2 = 6795;
  lv.v3 = 61;
  return zig_recv_C_Ui_C(lv);
}

int recv_C_Ui_D(struct C_Ui_D lv){
  if (lv.v1 != 43) return 1;
  if (lv.v2 != 14137) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct C_Ui_D ret_C_Ui_D(){
  struct C_Ui_D lv;
  lv.v1 = 43;
  lv.v2 = 14137;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_C_Ui_D(struct C_Ui_D);
int send_C_Ui_D(){
  struct C_Ui_D lv;
  lv.v1 = 43;
  lv.v2 = 14137;
  lv.v3 = 4.5;
  return zig_recv_C_Ui_D(lv);
}

int recv_C_Ui_F(struct C_Ui_F lv){
  if (lv.v1 != 85) return 1;
  if (lv.v2 != 4041) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct C_Ui_F ret_C_Ui_F(){
  struct C_Ui_F lv;
  lv.v1 = 85;
  lv.v2 = 4041;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_C_Ui_F(struct C_Ui_F);
int send_C_Ui_F(){
  struct C_Ui_F lv;
  lv.v1 = 85;
  lv.v2 = 4041;
  lv.v3 = 1.0;
  return zig_recv_C_Ui_F(lv);
}

int recv_C_Ui_I(struct C_Ui_I lv){
  if (lv.v1 != 69) return 1;
  if (lv.v2 != 26512) return 2;
  if (lv.v3 != 22760) return 3;
  return 0;
}
struct C_Ui_I ret_C_Ui_I(){
  struct C_Ui_I lv;
  lv.v1 = 69;
  lv.v2 = 26512;
  lv.v3 = 22760;
  return lv;
}
int zig_recv_C_Ui_I(struct C_Ui_I);
int send_C_Ui_I(){
  struct C_Ui_I lv;
  lv.v1 = 69;
  lv.v2 = 26512;
  lv.v3 = 22760;
  return zig_recv_C_Ui_I(lv);
}

int recv_C_Ui_Ip(struct C_Ui_Ip lv){
  if (lv.v1 != 93) return 1;
  if (lv.v2 != 26266) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Ui_Ip ret_C_Ui_Ip(){
  struct C_Ui_Ip lv;
  lv.v1 = 93;
  lv.v2 = 26266;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Ui_Ip(struct C_Ui_Ip);
int send_C_Ui_Ip(){
  struct C_Ui_Ip lv;
  lv.v1 = 93;
  lv.v2 = 26266;
  lv.v3 = 0;
  return zig_recv_C_Ui_Ip(lv);
}

int recv_C_Ui_L(struct C_Ui_L lv){
  if (lv.v1 != 114) return 1;
  if (lv.v2 != 24147) return 2;
  if (lv.v3 != 31815) return 3;
  return 0;
}
struct C_Ui_L ret_C_Ui_L(){
  struct C_Ui_L lv;
  lv.v1 = 114;
  lv.v2 = 24147;
  lv.v3 = 31815;
  return lv;
}
int zig_recv_C_Ui_L(struct C_Ui_L);
int send_C_Ui_L(){
  struct C_Ui_L lv;
  lv.v1 = 114;
  lv.v2 = 24147;
  lv.v3 = 31815;
  return zig_recv_C_Ui_L(lv);
}

int recv_C_Ui_S(struct C_Ui_S lv){
  if (lv.v1 != 114) return 1;
  if (lv.v2 != 26565) return 2;
  if (lv.v3 != 15293) return 3;
  return 0;
}
struct C_Ui_S ret_C_Ui_S(){
  struct C_Ui_S lv;
  lv.v1 = 114;
  lv.v2 = 26565;
  lv.v3 = 15293;
  return lv;
}
int zig_recv_C_Ui_S(struct C_Ui_S);
int send_C_Ui_S(){
  struct C_Ui_S lv;
  lv.v1 = 114;
  lv.v2 = 26565;
  lv.v3 = 15293;
  return zig_recv_C_Ui_S(lv);
}

int recv_C_Ui_Uc(struct C_Ui_Uc lv){
  if (lv.v1 != 102) return 1;
  if (lv.v2 != 14294) return 2;
  if (lv.v3 != 15) return 3;
  return 0;
}
struct C_Ui_Uc ret_C_Ui_Uc(){
  struct C_Ui_Uc lv;
  lv.v1 = 102;
  lv.v2 = 14294;
  lv.v3 = 15;
  return lv;
}
int zig_recv_C_Ui_Uc(struct C_Ui_Uc);
int send_C_Ui_Uc(){
  struct C_Ui_Uc lv;
  lv.v1 = 102;
  lv.v2 = 14294;
  lv.v3 = 15;
  return zig_recv_C_Ui_Uc(lv);
}

int recv_C_Ui_Ui(struct C_Ui_Ui lv){
  if (lv.v1 != 25) return 1;
  if (lv.v2 != 14393) return 2;
  if (lv.v3 != 23880) return 3;
  return 0;
}
struct C_Ui_Ui ret_C_Ui_Ui(){
  struct C_Ui_Ui lv;
  lv.v1 = 25;
  lv.v2 = 14393;
  lv.v3 = 23880;
  return lv;
}
int zig_recv_C_Ui_Ui(struct C_Ui_Ui);
int send_C_Ui_Ui(){
  struct C_Ui_Ui lv;
  lv.v1 = 25;
  lv.v2 = 14393;
  lv.v3 = 23880;
  return zig_recv_C_Ui_Ui(lv);
}

int recv_C_Ui_Ul(struct C_Ui_Ul lv){
  if (lv.v1 != 29) return 1;
  if (lv.v2 != 27002) return 2;
  if (lv.v3 != 24958) return 3;
  return 0;
}
struct C_Ui_Ul ret_C_Ui_Ul(){
  struct C_Ui_Ul lv;
  lv.v1 = 29;
  lv.v2 = 27002;
  lv.v3 = 24958;
  return lv;
}
int zig_recv_C_Ui_Ul(struct C_Ui_Ul);
int send_C_Ui_Ul(){
  struct C_Ui_Ul lv;
  lv.v1 = 29;
  lv.v2 = 27002;
  lv.v3 = 24958;
  return zig_recv_C_Ui_Ul(lv);
}

int recv_C_Ui_Us(struct C_Ui_Us lv){
  if (lv.v1 != 81) return 1;
  if (lv.v2 != 26064) return 2;
  if (lv.v3 != 12276) return 3;
  return 0;
}
struct C_Ui_Us ret_C_Ui_Us(){
  struct C_Ui_Us lv;
  lv.v1 = 81;
  lv.v2 = 26064;
  lv.v3 = 12276;
  return lv;
}
int zig_recv_C_Ui_Us(struct C_Ui_Us);
int send_C_Ui_Us(){
  struct C_Ui_Us lv;
  lv.v1 = 81;
  lv.v2 = 26064;
  lv.v3 = 12276;
  return zig_recv_C_Ui_Us(lv);
}

int recv_C_Ui_Vp(struct C_Ui_Vp lv){
  if (lv.v1 != 109) return 1;
  if (lv.v2 != 8868) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Ui_Vp ret_C_Ui_Vp(){
  struct C_Ui_Vp lv;
  lv.v1 = 109;
  lv.v2 = 8868;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Ui_Vp(struct C_Ui_Vp);
int send_C_Ui_Vp(){
  struct C_Ui_Vp lv;
  lv.v1 = 109;
  lv.v2 = 8868;
  lv.v3 = 0;
  return zig_recv_C_Ui_Vp(lv);
}

int recv_C_Ul(struct C_Ul lv){
  if (lv.v1 != 56) return 1;
  if (lv.v2 != 29288) return 2;
  return 0;
}
struct C_Ul ret_C_Ul(){
  struct C_Ul lv;
  lv.v1 = 56;
  lv.v2 = 29288;
  return lv;
}
int zig_recv_C_Ul(struct C_Ul);
int send_C_Ul(){
  struct C_Ul lv;
  lv.v1 = 56;
  lv.v2 = 29288;
  return zig_recv_C_Ul(lv);
}

int recv_C_Ul_C(struct C_Ul_C lv){
  if (lv.v1 != 85) return 1;
  if (lv.v2 != 16227) return 2;
  if (lv.v3 != 112) return 3;
  return 0;
}
struct C_Ul_C ret_C_Ul_C(){
  struct C_Ul_C lv;
  lv.v1 = 85;
  lv.v2 = 16227;
  lv.v3 = 112;
  return lv;
}
int zig_recv_C_Ul_C(struct C_Ul_C);
int send_C_Ul_C(){
  struct C_Ul_C lv;
  lv.v1 = 85;
  lv.v2 = 16227;
  lv.v3 = 112;
  return zig_recv_C_Ul_C(lv);
}

int recv_C_Ul_D(struct C_Ul_D lv){
  if (lv.v1 != 87) return 1;
  if (lv.v2 != 21565) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct C_Ul_D ret_C_Ul_D(){
  struct C_Ul_D lv;
  lv.v1 = 87;
  lv.v2 = 21565;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_C_Ul_D(struct C_Ul_D);
int send_C_Ul_D(){
  struct C_Ul_D lv;
  lv.v1 = 87;
  lv.v2 = 21565;
  lv.v3 = -0.25;
  return zig_recv_C_Ul_D(lv);
}

int recv_C_Ul_F(struct C_Ul_F lv){
  if (lv.v1 != 93) return 1;
  if (lv.v2 != 10370) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct C_Ul_F ret_C_Ul_F(){
  struct C_Ul_F lv;
  lv.v1 = 93;
  lv.v2 = 10370;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_C_Ul_F(struct C_Ul_F);
int send_C_Ul_F(){
  struct C_Ul_F lv;
  lv.v1 = 93;
  lv.v2 = 10370;
  lv.v3 = 1.0;
  return zig_recv_C_Ul_F(lv);
}

int recv_C_Ul_I(struct C_Ul_I lv){
  if (lv.v1 != 48) return 1;
  if (lv.v2 != 9451) return 2;
  if (lv.v3 != 20449) return 3;
  return 0;
}
struct C_Ul_I ret_C_Ul_I(){
  struct C_Ul_I lv;
  lv.v1 = 48;
  lv.v2 = 9451;
  lv.v3 = 20449;
  return lv;
}
int zig_recv_C_Ul_I(struct C_Ul_I);
int send_C_Ul_I(){
  struct C_Ul_I lv;
  lv.v1 = 48;
  lv.v2 = 9451;
  lv.v3 = 20449;
  return zig_recv_C_Ul_I(lv);
}

int recv_C_Ul_Ip(struct C_Ul_Ip lv){
  if (lv.v1 != 96) return 1;
  if (lv.v2 != 26151) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Ul_Ip ret_C_Ul_Ip(){
  struct C_Ul_Ip lv;
  lv.v1 = 96;
  lv.v2 = 26151;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Ul_Ip(struct C_Ul_Ip);
int send_C_Ul_Ip(){
  struct C_Ul_Ip lv;
  lv.v1 = 96;
  lv.v2 = 26151;
  lv.v3 = 0;
  return zig_recv_C_Ul_Ip(lv);
}

int recv_C_Ul_L(struct C_Ul_L lv){
  if (lv.v1 != 13) return 1;
  if (lv.v2 != 26018) return 2;
  if (lv.v3 != 22684) return 3;
  return 0;
}
struct C_Ul_L ret_C_Ul_L(){
  struct C_Ul_L lv;
  lv.v1 = 13;
  lv.v2 = 26018;
  lv.v3 = 22684;
  return lv;
}
int zig_recv_C_Ul_L(struct C_Ul_L);
int send_C_Ul_L(){
  struct C_Ul_L lv;
  lv.v1 = 13;
  lv.v2 = 26018;
  lv.v3 = 22684;
  return zig_recv_C_Ul_L(lv);
}

int recv_C_Ul_S(struct C_Ul_S lv){
  if (lv.v1 != 33) return 1;
  if (lv.v2 != 12793) return 2;
  if (lv.v3 != 22758) return 3;
  return 0;
}
struct C_Ul_S ret_C_Ul_S(){
  struct C_Ul_S lv;
  lv.v1 = 33;
  lv.v2 = 12793;
  lv.v3 = 22758;
  return lv;
}
int zig_recv_C_Ul_S(struct C_Ul_S);
int send_C_Ul_S(){
  struct C_Ul_S lv;
  lv.v1 = 33;
  lv.v2 = 12793;
  lv.v3 = 22758;
  return zig_recv_C_Ul_S(lv);
}

int recv_C_Ul_Uc(struct C_Ul_Uc lv){
  if (lv.v1 != 108) return 1;
  if (lv.v2 != 16056) return 2;
  if (lv.v3 != 74) return 3;
  return 0;
}
struct C_Ul_Uc ret_C_Ul_Uc(){
  struct C_Ul_Uc lv;
  lv.v1 = 108;
  lv.v2 = 16056;
  lv.v3 = 74;
  return lv;
}
int zig_recv_C_Ul_Uc(struct C_Ul_Uc);
int send_C_Ul_Uc(){
  struct C_Ul_Uc lv;
  lv.v1 = 108;
  lv.v2 = 16056;
  lv.v3 = 74;
  return zig_recv_C_Ul_Uc(lv);
}

int recv_C_Ul_Ui(struct C_Ul_Ui lv){
  if (lv.v1 != 63) return 1;
  if (lv.v2 != 8694) return 2;
  if (lv.v3 != 4446) return 3;
  return 0;
}
struct C_Ul_Ui ret_C_Ul_Ui(){
  struct C_Ul_Ui lv;
  lv.v1 = 63;
  lv.v2 = 8694;
  lv.v3 = 4446;
  return lv;
}
int zig_recv_C_Ul_Ui(struct C_Ul_Ui);
int send_C_Ul_Ui(){
  struct C_Ul_Ui lv;
  lv.v1 = 63;
  lv.v2 = 8694;
  lv.v3 = 4446;
  return zig_recv_C_Ul_Ui(lv);
}

int recv_C_Ul_Ul(struct C_Ul_Ul lv){
  if (lv.v1 != 25) return 1;
  if (lv.v2 != 11834) return 2;
  if (lv.v3 != 25126) return 3;
  return 0;
}
struct C_Ul_Ul ret_C_Ul_Ul(){
  struct C_Ul_Ul lv;
  lv.v1 = 25;
  lv.v2 = 11834;
  lv.v3 = 25126;
  return lv;
}
int zig_recv_C_Ul_Ul(struct C_Ul_Ul);
int send_C_Ul_Ul(){
  struct C_Ul_Ul lv;
  lv.v1 = 25;
  lv.v2 = 11834;
  lv.v3 = 25126;
  return zig_recv_C_Ul_Ul(lv);
}

int recv_C_Ul_Us(struct C_Ul_Us lv){
  if (lv.v1 != 84) return 1;
  if (lv.v2 != 31434) return 2;
  if (lv.v3 != 20396) return 3;
  return 0;
}
struct C_Ul_Us ret_C_Ul_Us(){
  struct C_Ul_Us lv;
  lv.v1 = 84;
  lv.v2 = 31434;
  lv.v3 = 20396;
  return lv;
}
int zig_recv_C_Ul_Us(struct C_Ul_Us);
int send_C_Ul_Us(){
  struct C_Ul_Us lv;
  lv.v1 = 84;
  lv.v2 = 31434;
  lv.v3 = 20396;
  return zig_recv_C_Ul_Us(lv);
}

int recv_C_Ul_Vp(struct C_Ul_Vp lv){
  if (lv.v1 != 127) return 1;
  if (lv.v2 != 10941) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Ul_Vp ret_C_Ul_Vp(){
  struct C_Ul_Vp lv;
  lv.v1 = 127;
  lv.v2 = 10941;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Ul_Vp(struct C_Ul_Vp);
int send_C_Ul_Vp(){
  struct C_Ul_Vp lv;
  lv.v1 = 127;
  lv.v2 = 10941;
  lv.v3 = 0;
  return zig_recv_C_Ul_Vp(lv);
}

int recv_C_Us(struct C_Us lv){
  if (lv.v1 != 11) return 1;
  if (lv.v2 != 7668) return 2;
  return 0;
}
struct C_Us ret_C_Us(){
  struct C_Us lv;
  lv.v1 = 11;
  lv.v2 = 7668;
  return lv;
}
int zig_recv_C_Us(struct C_Us);
int send_C_Us(){
  struct C_Us lv;
  lv.v1 = 11;
  lv.v2 = 7668;
  return zig_recv_C_Us(lv);
}

int recv_C_Us_C(struct C_Us_C lv){
  if (lv.v1 != 6) return 1;
  if (lv.v2 != 3306) return 2;
  if (lv.v3 != 87) return 3;
  return 0;
}
struct C_Us_C ret_C_Us_C(){
  struct C_Us_C lv;
  lv.v1 = 6;
  lv.v2 = 3306;
  lv.v3 = 87;
  return lv;
}
int zig_recv_C_Us_C(struct C_Us_C);
int send_C_Us_C(){
  struct C_Us_C lv;
  lv.v1 = 6;
  lv.v2 = 3306;
  lv.v3 = 87;
  return zig_recv_C_Us_C(lv);
}

int recv_C_Us_D(struct C_Us_D lv){
  if (lv.v1 != 79) return 1;
  if (lv.v2 != 16460) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct C_Us_D ret_C_Us_D(){
  struct C_Us_D lv;
  lv.v1 = 79;
  lv.v2 = 16460;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_C_Us_D(struct C_Us_D);
int send_C_Us_D(){
  struct C_Us_D lv;
  lv.v1 = 79;
  lv.v2 = 16460;
  lv.v3 = 4.5;
  return zig_recv_C_Us_D(lv);
}

int recv_C_Us_F(struct C_Us_F lv){
  if (lv.v1 != 79) return 1;
  if (lv.v2 != 28080) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct C_Us_F ret_C_Us_F(){
  struct C_Us_F lv;
  lv.v1 = 79;
  lv.v2 = 28080;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_C_Us_F(struct C_Us_F);
int send_C_Us_F(){
  struct C_Us_F lv;
  lv.v1 = 79;
  lv.v2 = 28080;
  lv.v3 = -0.25;
  return zig_recv_C_Us_F(lv);
}

int recv_C_Us_I(struct C_Us_I lv){
  if (lv.v1 != 111) return 1;
  if (lv.v2 != 26602) return 2;
  if (lv.v3 != 26244) return 3;
  return 0;
}
struct C_Us_I ret_C_Us_I(){
  struct C_Us_I lv;
  lv.v1 = 111;
  lv.v2 = 26602;
  lv.v3 = 26244;
  return lv;
}
int zig_recv_C_Us_I(struct C_Us_I);
int send_C_Us_I(){
  struct C_Us_I lv;
  lv.v1 = 111;
  lv.v2 = 26602;
  lv.v3 = 26244;
  return zig_recv_C_Us_I(lv);
}

int recv_C_Us_Ip(struct C_Us_Ip lv){
  if (lv.v1 != 25) return 1;
  if (lv.v2 != 25781) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Us_Ip ret_C_Us_Ip(){
  struct C_Us_Ip lv;
  lv.v1 = 25;
  lv.v2 = 25781;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Us_Ip(struct C_Us_Ip);
int send_C_Us_Ip(){
  struct C_Us_Ip lv;
  lv.v1 = 25;
  lv.v2 = 25781;
  lv.v3 = 0;
  return zig_recv_C_Us_Ip(lv);
}

int recv_C_Us_L(struct C_Us_L lv){
  if (lv.v1 != 124) return 1;
  if (lv.v2 != 15152) return 2;
  if (lv.v3 != 10613) return 3;
  return 0;
}
struct C_Us_L ret_C_Us_L(){
  struct C_Us_L lv;
  lv.v1 = 124;
  lv.v2 = 15152;
  lv.v3 = 10613;
  return lv;
}
int zig_recv_C_Us_L(struct C_Us_L);
int send_C_Us_L(){
  struct C_Us_L lv;
  lv.v1 = 124;
  lv.v2 = 15152;
  lv.v3 = 10613;
  return zig_recv_C_Us_L(lv);
}

int recv_C_Us_S(struct C_Us_S lv){
  if (lv.v1 != 35) return 1;
  if (lv.v2 != 1038) return 2;
  if (lv.v3 != 5876) return 3;
  return 0;
}
struct C_Us_S ret_C_Us_S(){
  struct C_Us_S lv;
  lv.v1 = 35;
  lv.v2 = 1038;
  lv.v3 = 5876;
  return lv;
}
int zig_recv_C_Us_S(struct C_Us_S);
int send_C_Us_S(){
  struct C_Us_S lv;
  lv.v1 = 35;
  lv.v2 = 1038;
  lv.v3 = 5876;
  return zig_recv_C_Us_S(lv);
}

int recv_C_Us_Uc(struct C_Us_Uc lv){
  if (lv.v1 != 9) return 1;
  if (lv.v2 != 3631) return 2;
  if (lv.v3 != 113) return 3;
  return 0;
}
struct C_Us_Uc ret_C_Us_Uc(){
  struct C_Us_Uc lv;
  lv.v1 = 9;
  lv.v2 = 3631;
  lv.v3 = 113;
  return lv;
}
int zig_recv_C_Us_Uc(struct C_Us_Uc);
int send_C_Us_Uc(){
  struct C_Us_Uc lv;
  lv.v1 = 9;
  lv.v2 = 3631;
  lv.v3 = 113;
  return zig_recv_C_Us_Uc(lv);
}

int recv_C_Us_Ui(struct C_Us_Ui lv){
  if (lv.v1 != 112) return 1;
  if (lv.v2 != 30036) return 2;
  if (lv.v3 != 2304) return 3;
  return 0;
}
struct C_Us_Ui ret_C_Us_Ui(){
  struct C_Us_Ui lv;
  lv.v1 = 112;
  lv.v2 = 30036;
  lv.v3 = 2304;
  return lv;
}
int zig_recv_C_Us_Ui(struct C_Us_Ui);
int send_C_Us_Ui(){
  struct C_Us_Ui lv;
  lv.v1 = 112;
  lv.v2 = 30036;
  lv.v3 = 2304;
  return zig_recv_C_Us_Ui(lv);
}

int recv_C_Us_Ul(struct C_Us_Ul lv){
  if (lv.v1 != 113) return 1;
  if (lv.v2 != 19649) return 2;
  if (lv.v3 != 32092) return 3;
  return 0;
}
struct C_Us_Ul ret_C_Us_Ul(){
  struct C_Us_Ul lv;
  lv.v1 = 113;
  lv.v2 = 19649;
  lv.v3 = 32092;
  return lv;
}
int zig_recv_C_Us_Ul(struct C_Us_Ul);
int send_C_Us_Ul(){
  struct C_Us_Ul lv;
  lv.v1 = 113;
  lv.v2 = 19649;
  lv.v3 = 32092;
  return zig_recv_C_Us_Ul(lv);
}

int recv_C_Us_Us(struct C_Us_Us lv){
  if (lv.v1 != 25) return 1;
  if (lv.v2 != 28732) return 2;
  if (lv.v3 != 15181) return 3;
  return 0;
}
struct C_Us_Us ret_C_Us_Us(){
  struct C_Us_Us lv;
  lv.v1 = 25;
  lv.v2 = 28732;
  lv.v3 = 15181;
  return lv;
}
int zig_recv_C_Us_Us(struct C_Us_Us);
int send_C_Us_Us(){
  struct C_Us_Us lv;
  lv.v1 = 25;
  lv.v2 = 28732;
  lv.v3 = 15181;
  return zig_recv_C_Us_Us(lv);
}

int recv_C_Us_Vp(struct C_Us_Vp lv){
  if (lv.v1 != 126) return 1;
  if (lv.v2 != 12432) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Us_Vp ret_C_Us_Vp(){
  struct C_Us_Vp lv;
  lv.v1 = 126;
  lv.v2 = 12432;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Us_Vp(struct C_Us_Vp);
int send_C_Us_Vp(){
  struct C_Us_Vp lv;
  lv.v1 = 126;
  lv.v2 = 12432;
  lv.v3 = 0;
  return zig_recv_C_Us_Vp(lv);
}

int recv_C_Vp(struct C_Vp lv){
  if (lv.v1 != 123) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct C_Vp ret_C_Vp(){
  struct C_Vp lv;
  lv.v1 = 123;
  lv.v2 = 0;
  return lv;
}
int zig_recv_C_Vp(struct C_Vp);
int send_C_Vp(){
  struct C_Vp lv;
  lv.v1 = 123;
  lv.v2 = 0;
  return zig_recv_C_Vp(lv);
}

int recv_C_Vp_C(struct C_Vp_C lv){
  if (lv.v1 != 50) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 26) return 3;
  return 0;
}
struct C_Vp_C ret_C_Vp_C(){
  struct C_Vp_C lv;
  lv.v1 = 50;
  lv.v2 = 0;
  lv.v3 = 26;
  return lv;
}
int zig_recv_C_Vp_C(struct C_Vp_C);
int send_C_Vp_C(){
  struct C_Vp_C lv;
  lv.v1 = 50;
  lv.v2 = 0;
  lv.v3 = 26;
  return zig_recv_C_Vp_C(lv);
}

int recv_C_Vp_D(struct C_Vp_D lv){
  if (lv.v1 != 8) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct C_Vp_D ret_C_Vp_D(){
  struct C_Vp_D lv;
  lv.v1 = 8;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_C_Vp_D(struct C_Vp_D);
int send_C_Vp_D(){
  struct C_Vp_D lv;
  lv.v1 = 8;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return zig_recv_C_Vp_D(lv);
}

int recv_C_Vp_F(struct C_Vp_F lv){
  if (lv.v1 != 78) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct C_Vp_F ret_C_Vp_F(){
  struct C_Vp_F lv;
  lv.v1 = 78;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_C_Vp_F(struct C_Vp_F);
int send_C_Vp_F(){
  struct C_Vp_F lv;
  lv.v1 = 78;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return zig_recv_C_Vp_F(lv);
}

int recv_C_Vp_I(struct C_Vp_I lv){
  if (lv.v1 != 79) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 12771) return 3;
  return 0;
}
struct C_Vp_I ret_C_Vp_I(){
  struct C_Vp_I lv;
  lv.v1 = 79;
  lv.v2 = 0;
  lv.v3 = 12771;
  return lv;
}
int zig_recv_C_Vp_I(struct C_Vp_I);
int send_C_Vp_I(){
  struct C_Vp_I lv;
  lv.v1 = 79;
  lv.v2 = 0;
  lv.v3 = 12771;
  return zig_recv_C_Vp_I(lv);
}

int recv_C_Vp_Ip(struct C_Vp_Ip lv){
  if (lv.v1 != 3) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Vp_Ip ret_C_Vp_Ip(){
  struct C_Vp_Ip lv;
  lv.v1 = 3;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Vp_Ip(struct C_Vp_Ip);
int send_C_Vp_Ip(){
  struct C_Vp_Ip lv;
  lv.v1 = 3;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_C_Vp_Ip(lv);
}

int recv_C_Vp_L(struct C_Vp_L lv){
  if (lv.v1 != 107) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 30601) return 3;
  return 0;
}
struct C_Vp_L ret_C_Vp_L(){
  struct C_Vp_L lv;
  lv.v1 = 107;
  lv.v2 = 0;
  lv.v3 = 30601;
  return lv;
}
int zig_recv_C_Vp_L(struct C_Vp_L);
int send_C_Vp_L(){
  struct C_Vp_L lv;
  lv.v1 = 107;
  lv.v2 = 0;
  lv.v3 = 30601;
  return zig_recv_C_Vp_L(lv);
}

int recv_C_Vp_S(struct C_Vp_S lv){
  if (lv.v1 != 75) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 10366) return 3;
  return 0;
}
struct C_Vp_S ret_C_Vp_S(){
  struct C_Vp_S lv;
  lv.v1 = 75;
  lv.v2 = 0;
  lv.v3 = 10366;
  return lv;
}
int zig_recv_C_Vp_S(struct C_Vp_S);
int send_C_Vp_S(){
  struct C_Vp_S lv;
  lv.v1 = 75;
  lv.v2 = 0;
  lv.v3 = 10366;
  return zig_recv_C_Vp_S(lv);
}

int recv_C_Vp_Uc(struct C_Vp_Uc lv){
  if (lv.v1 != 12) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 120) return 3;
  return 0;
}
struct C_Vp_Uc ret_C_Vp_Uc(){
  struct C_Vp_Uc lv;
  lv.v1 = 12;
  lv.v2 = 0;
  lv.v3 = 120;
  return lv;
}
int zig_recv_C_Vp_Uc(struct C_Vp_Uc);
int send_C_Vp_Uc(){
  struct C_Vp_Uc lv;
  lv.v1 = 12;
  lv.v2 = 0;
  lv.v3 = 120;
  return zig_recv_C_Vp_Uc(lv);
}

int recv_C_Vp_Ui(struct C_Vp_Ui lv){
  if (lv.v1 != 0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 11440) return 3;
  return 0;
}
struct C_Vp_Ui ret_C_Vp_Ui(){
  struct C_Vp_Ui lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 11440;
  return lv;
}
int zig_recv_C_Vp_Ui(struct C_Vp_Ui);
int send_C_Vp_Ui(){
  struct C_Vp_Ui lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 11440;
  return zig_recv_C_Vp_Ui(lv);
}

int recv_C_Vp_Ul(struct C_Vp_Ul lv){
  if (lv.v1 != 120) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 6479) return 3;
  return 0;
}
struct C_Vp_Ul ret_C_Vp_Ul(){
  struct C_Vp_Ul lv;
  lv.v1 = 120;
  lv.v2 = 0;
  lv.v3 = 6479;
  return lv;
}
int zig_recv_C_Vp_Ul(struct C_Vp_Ul);
int send_C_Vp_Ul(){
  struct C_Vp_Ul lv;
  lv.v1 = 120;
  lv.v2 = 0;
  lv.v3 = 6479;
  return zig_recv_C_Vp_Ul(lv);
}

int recv_C_Vp_Us(struct C_Vp_Us lv){
  if (lv.v1 != 102) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 15745) return 3;
  return 0;
}
struct C_Vp_Us ret_C_Vp_Us(){
  struct C_Vp_Us lv;
  lv.v1 = 102;
  lv.v2 = 0;
  lv.v3 = 15745;
  return lv;
}
int zig_recv_C_Vp_Us(struct C_Vp_Us);
int send_C_Vp_Us(){
  struct C_Vp_Us lv;
  lv.v1 = 102;
  lv.v2 = 0;
  lv.v3 = 15745;
  return zig_recv_C_Vp_Us(lv);
}

int recv_C_Vp_Vp(struct C_Vp_Vp lv){
  if (lv.v1 != 44) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct C_Vp_Vp ret_C_Vp_Vp(){
  struct C_Vp_Vp lv;
  lv.v1 = 44;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_C_Vp_Vp(struct C_Vp_Vp);
int send_C_Vp_Vp(){
  struct C_Vp_Vp lv;
  lv.v1 = 44;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_C_Vp_Vp(lv);
}

int recv_D(struct D lv){
  if (lv.v1 != -2.125) return 1;
  return 0;
}
struct D ret_D(){
  struct D lv;
  lv.v1 = -2.125;
  return lv;
}
int zig_recv_D(struct D);
int send_D(){
  struct D lv;
  lv.v1 = -2.125;
  return zig_recv_D(lv);
}

int recv_D_C(struct D_C lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 15) return 2;
  return 0;
}
struct D_C ret_D_C(){
  struct D_C lv;
  lv.v1 = -0.25;
  lv.v2 = 15;
  return lv;
}
int zig_recv_D_C(struct D_C);
int send_D_C(){
  struct D_C lv;
  lv.v1 = -0.25;
  lv.v2 = 15;
  return zig_recv_D_C(lv);
}

int recv_D_C_C(struct D_C_C lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 31) return 2;
  if (lv.v3 != 76) return 3;
  return 0;
}
struct D_C_C ret_D_C_C(){
  struct D_C_C lv;
  lv.v1 = -0.25;
  lv.v2 = 31;
  lv.v3 = 76;
  return lv;
}
int zig_recv_D_C_C(struct D_C_C);
int send_D_C_C(){
  struct D_C_C lv;
  lv.v1 = -0.25;
  lv.v2 = 31;
  lv.v3 = 76;
  return zig_recv_D_C_C(lv);
}

int recv_D_C_D(struct D_C_D lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 112) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct D_C_D ret_D_C_D(){
  struct D_C_D lv;
  lv.v1 = -2.125;
  lv.v2 = 112;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_D_C_D(struct D_C_D);
int send_D_C_D(){
  struct D_C_D lv;
  lv.v1 = -2.125;
  lv.v2 = 112;
  lv.v3 = 1.0;
  return zig_recv_D_C_D(lv);
}

int recv_D_C_F(struct D_C_F lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 33) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct D_C_F ret_D_C_F(){
  struct D_C_F lv;
  lv.v1 = 0.5;
  lv.v2 = 33;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_D_C_F(struct D_C_F);
int send_D_C_F(){
  struct D_C_F lv;
  lv.v1 = 0.5;
  lv.v2 = 33;
  lv.v3 = 0.875;
  return zig_recv_D_C_F(lv);
}

int recv_D_C_I(struct D_C_I lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 26) return 2;
  if (lv.v3 != 32115) return 3;
  return 0;
}
struct D_C_I ret_D_C_I(){
  struct D_C_I lv;
  lv.v1 = 7.0;
  lv.v2 = 26;
  lv.v3 = 32115;
  return lv;
}
int zig_recv_D_C_I(struct D_C_I);
int send_D_C_I(){
  struct D_C_I lv;
  lv.v1 = 7.0;
  lv.v2 = 26;
  lv.v3 = 32115;
  return zig_recv_D_C_I(lv);
}

int recv_D_C_Ip(struct D_C_Ip lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 89) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_C_Ip ret_D_C_Ip(){
  struct D_C_Ip lv;
  lv.v1 = 0.5;
  lv.v2 = 89;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_C_Ip(struct D_C_Ip);
int send_D_C_Ip(){
  struct D_C_Ip lv;
  lv.v1 = 0.5;
  lv.v2 = 89;
  lv.v3 = 0;
  return zig_recv_D_C_Ip(lv);
}

int recv_D_C_L(struct D_C_L lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 119) return 2;
  if (lv.v3 != 22956) return 3;
  return 0;
}
struct D_C_L ret_D_C_L(){
  struct D_C_L lv;
  lv.v1 = 0.5;
  lv.v2 = 119;
  lv.v3 = 22956;
  return lv;
}
int zig_recv_D_C_L(struct D_C_L);
int send_D_C_L(){
  struct D_C_L lv;
  lv.v1 = 0.5;
  lv.v2 = 119;
  lv.v3 = 22956;
  return zig_recv_D_C_L(lv);
}

int recv_D_C_S(struct D_C_S lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 118) return 2;
  if (lv.v3 != 8349) return 3;
  return 0;
}
struct D_C_S ret_D_C_S(){
  struct D_C_S lv;
  lv.v1 = 0.5;
  lv.v2 = 118;
  lv.v3 = 8349;
  return lv;
}
int zig_recv_D_C_S(struct D_C_S);
int send_D_C_S(){
  struct D_C_S lv;
  lv.v1 = 0.5;
  lv.v2 = 118;
  lv.v3 = 8349;
  return zig_recv_D_C_S(lv);
}

int recv_D_C_Uc(struct D_C_Uc lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 118) return 2;
  if (lv.v3 != 31) return 3;
  return 0;
}
struct D_C_Uc ret_D_C_Uc(){
  struct D_C_Uc lv;
  lv.v1 = -0.25;
  lv.v2 = 118;
  lv.v3 = 31;
  return lv;
}
int zig_recv_D_C_Uc(struct D_C_Uc);
int send_D_C_Uc(){
  struct D_C_Uc lv;
  lv.v1 = -0.25;
  lv.v2 = 118;
  lv.v3 = 31;
  return zig_recv_D_C_Uc(lv);
}

int recv_D_C_Ui(struct D_C_Ui lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 17) return 2;
  if (lv.v3 != 10416) return 3;
  return 0;
}
struct D_C_Ui ret_D_C_Ui(){
  struct D_C_Ui lv;
  lv.v1 = 1.0;
  lv.v2 = 17;
  lv.v3 = 10416;
  return lv;
}
int zig_recv_D_C_Ui(struct D_C_Ui);
int send_D_C_Ui(){
  struct D_C_Ui lv;
  lv.v1 = 1.0;
  lv.v2 = 17;
  lv.v3 = 10416;
  return zig_recv_D_C_Ui(lv);
}

int recv_D_C_Ul(struct D_C_Ul lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 83) return 2;
  if (lv.v3 != 16905) return 3;
  return 0;
}
struct D_C_Ul ret_D_C_Ul(){
  struct D_C_Ul lv;
  lv.v1 = 4.5;
  lv.v2 = 83;
  lv.v3 = 16905;
  return lv;
}
int zig_recv_D_C_Ul(struct D_C_Ul);
int send_D_C_Ul(){
  struct D_C_Ul lv;
  lv.v1 = 4.5;
  lv.v2 = 83;
  lv.v3 = 16905;
  return zig_recv_D_C_Ul(lv);
}

int recv_D_C_Us(struct D_C_Us lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 63) return 2;
  if (lv.v3 != 25175) return 3;
  return 0;
}
struct D_C_Us ret_D_C_Us(){
  struct D_C_Us lv;
  lv.v1 = 4.5;
  lv.v2 = 63;
  lv.v3 = 25175;
  return lv;
}
int zig_recv_D_C_Us(struct D_C_Us);
int send_D_C_Us(){
  struct D_C_Us lv;
  lv.v1 = 4.5;
  lv.v2 = 63;
  lv.v3 = 25175;
  return zig_recv_D_C_Us(lv);
}

int recv_D_C_Vp(struct D_C_Vp lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 16) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_C_Vp ret_D_C_Vp(){
  struct D_C_Vp lv;
  lv.v1 = -0.25;
  lv.v2 = 16;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_C_Vp(struct D_C_Vp);
int send_D_C_Vp(){
  struct D_C_Vp lv;
  lv.v1 = -0.25;
  lv.v2 = 16;
  lv.v3 = 0;
  return zig_recv_D_C_Vp(lv);
}

int recv_D_D(struct D_D lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 0.875) return 2;
  return 0;
}
struct D_D ret_D_D(){
  struct D_D lv;
  lv.v1 = 1.0;
  lv.v2 = 0.875;
  return lv;
}
int zig_recv_D_D(struct D_D);
int send_D_D(){
  struct D_D lv;
  lv.v1 = 1.0;
  lv.v2 = 0.875;
  return zig_recv_D_D(lv);
}

int recv_D_D_C(struct D_D_C lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 46) return 3;
  return 0;
}
struct D_D_C ret_D_D_C(){
  struct D_D_C lv;
  lv.v1 = -2.125;
  lv.v2 = 4.5;
  lv.v3 = 46;
  return lv;
}
int zig_recv_D_D_C(struct D_D_C);
int send_D_D_C(){
  struct D_D_C lv;
  lv.v1 = -2.125;
  lv.v2 = 4.5;
  lv.v3 = 46;
  return zig_recv_D_D_C(lv);
}

int recv_D_D_D(struct D_D_D lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct D_D_D ret_D_D_D(){
  struct D_D_D lv;
  lv.v1 = 0.5;
  lv.v2 = 0.875;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_D_D_D(struct D_D_D);
int send_D_D_D(){
  struct D_D_D lv;
  lv.v1 = 0.5;
  lv.v2 = 0.875;
  lv.v3 = 4.5;
  return zig_recv_D_D_D(lv);
}

int recv_D_D_F(struct D_D_F lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct D_D_F ret_D_D_F(){
  struct D_D_F lv;
  lv.v1 = 4.5;
  lv.v2 = 0.5;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_D_D_F(struct D_D_F);
int send_D_D_F(){
  struct D_D_F lv;
  lv.v1 = 4.5;
  lv.v2 = 0.5;
  lv.v3 = -0.25;
  return zig_recv_D_D_F(lv);
}

int recv_D_D_I(struct D_D_I lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 2232) return 3;
  return 0;
}
struct D_D_I ret_D_D_I(){
  struct D_D_I lv;
  lv.v1 = -0.25;
  lv.v2 = 0.5;
  lv.v3 = 2232;
  return lv;
}
int zig_recv_D_D_I(struct D_D_I);
int send_D_D_I(){
  struct D_D_I lv;
  lv.v1 = -0.25;
  lv.v2 = 0.5;
  lv.v3 = 2232;
  return zig_recv_D_D_I(lv);
}

int recv_D_D_Ip(struct D_D_Ip lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_D_Ip ret_D_D_Ip(){
  struct D_D_Ip lv;
  lv.v1 = -0.25;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_D_Ip(struct D_D_Ip);
int send_D_D_Ip(){
  struct D_D_Ip lv;
  lv.v1 = -0.25;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return zig_recv_D_D_Ip(lv);
}

int recv_D_D_L(struct D_D_L lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 25508) return 3;
  return 0;
}
struct D_D_L ret_D_D_L(){
  struct D_D_L lv;
  lv.v1 = -2.125;
  lv.v2 = -0.25;
  lv.v3 = 25508;
  return lv;
}
int zig_recv_D_D_L(struct D_D_L);
int send_D_D_L(){
  struct D_D_L lv;
  lv.v1 = -2.125;
  lv.v2 = -0.25;
  lv.v3 = 25508;
  return zig_recv_D_D_L(lv);
}

int recv_D_D_S(struct D_D_S lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 7177) return 3;
  return 0;
}
struct D_D_S ret_D_D_S(){
  struct D_D_S lv;
  lv.v1 = 0.5;
  lv.v2 = 4.5;
  lv.v3 = 7177;
  return lv;
}
int zig_recv_D_D_S(struct D_D_S);
int send_D_D_S(){
  struct D_D_S lv;
  lv.v1 = 0.5;
  lv.v2 = 4.5;
  lv.v3 = 7177;
  return zig_recv_D_D_S(lv);
}

int recv_D_D_Uc(struct D_D_Uc lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 15) return 3;
  return 0;
}
struct D_D_Uc ret_D_D_Uc(){
  struct D_D_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = 0.5;
  lv.v3 = 15;
  return lv;
}
int zig_recv_D_D_Uc(struct D_D_Uc);
int send_D_D_Uc(){
  struct D_D_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = 0.5;
  lv.v3 = 15;
  return zig_recv_D_D_Uc(lv);
}

int recv_D_D_Ui(struct D_D_Ui lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 15554) return 3;
  return 0;
}
struct D_D_Ui ret_D_D_Ui(){
  struct D_D_Ui lv;
  lv.v1 = -0.25;
  lv.v2 = -0.25;
  lv.v3 = 15554;
  return lv;
}
int zig_recv_D_D_Ui(struct D_D_Ui);
int send_D_D_Ui(){
  struct D_D_Ui lv;
  lv.v1 = -0.25;
  lv.v2 = -0.25;
  lv.v3 = 15554;
  return zig_recv_D_D_Ui(lv);
}

int recv_D_D_Ul(struct D_D_Ul lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 25509) return 3;
  return 0;
}
struct D_D_Ul ret_D_D_Ul(){
  struct D_D_Ul lv;
  lv.v1 = -0.25;
  lv.v2 = -2.125;
  lv.v3 = 25509;
  return lv;
}
int zig_recv_D_D_Ul(struct D_D_Ul);
int send_D_D_Ul(){
  struct D_D_Ul lv;
  lv.v1 = -0.25;
  lv.v2 = -2.125;
  lv.v3 = 25509;
  return zig_recv_D_D_Ul(lv);
}

int recv_D_D_Us(struct D_D_Us lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 12415) return 3;
  return 0;
}
struct D_D_Us ret_D_D_Us(){
  struct D_D_Us lv;
  lv.v1 = 4.5;
  lv.v2 = 4.5;
  lv.v3 = 12415;
  return lv;
}
int zig_recv_D_D_Us(struct D_D_Us);
int send_D_D_Us(){
  struct D_D_Us lv;
  lv.v1 = 4.5;
  lv.v2 = 4.5;
  lv.v3 = 12415;
  return zig_recv_D_D_Us(lv);
}

int recv_D_D_Vp(struct D_D_Vp lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_D_Vp ret_D_D_Vp(){
  struct D_D_Vp lv;
  lv.v1 = 1.0;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_D_Vp(struct D_D_Vp);
int send_D_D_Vp(){
  struct D_D_Vp lv;
  lv.v1 = 1.0;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return zig_recv_D_D_Vp(lv);
}

int recv_D_F(struct D_F lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0.875) return 2;
  return 0;
}
struct D_F ret_D_F(){
  struct D_F lv;
  lv.v1 = -2.125;
  lv.v2 = 0.875;
  return lv;
}
int zig_recv_D_F(struct D_F);
int send_D_F(){
  struct D_F lv;
  lv.v1 = -2.125;
  lv.v2 = 0.875;
  return zig_recv_D_F(lv);
}

int recv_D_F_C(struct D_F_C lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 5) return 3;
  return 0;
}
struct D_F_C ret_D_F_C(){
  struct D_F_C lv;
  lv.v1 = -0.25;
  lv.v2 = 7.0;
  lv.v3 = 5;
  return lv;
}
int zig_recv_D_F_C(struct D_F_C);
int send_D_F_C(){
  struct D_F_C lv;
  lv.v1 = -0.25;
  lv.v2 = 7.0;
  lv.v3 = 5;
  return zig_recv_D_F_C(lv);
}

int recv_D_F_D(struct D_F_D lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct D_F_D ret_D_F_D(){
  struct D_F_D lv;
  lv.v1 = 0.875;
  lv.v2 = 0.875;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_D_F_D(struct D_F_D);
int send_D_F_D(){
  struct D_F_D lv;
  lv.v1 = 0.875;
  lv.v2 = 0.875;
  lv.v3 = 1.0;
  return zig_recv_D_F_D(lv);
}

int recv_D_F_F(struct D_F_F lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct D_F_F ret_D_F_F(){
  struct D_F_F lv;
  lv.v1 = 1.0;
  lv.v2 = 4.5;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_D_F_F(struct D_F_F);
int send_D_F_F(){
  struct D_F_F lv;
  lv.v1 = 1.0;
  lv.v2 = 4.5;
  lv.v3 = 0.5;
  return zig_recv_D_F_F(lv);
}

int recv_D_F_I(struct D_F_I lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 31290) return 3;
  return 0;
}
struct D_F_I ret_D_F_I(){
  struct D_F_I lv;
  lv.v1 = 7.0;
  lv.v2 = 1.0;
  lv.v3 = 31290;
  return lv;
}
int zig_recv_D_F_I(struct D_F_I);
int send_D_F_I(){
  struct D_F_I lv;
  lv.v1 = 7.0;
  lv.v2 = 1.0;
  lv.v3 = 31290;
  return zig_recv_D_F_I(lv);
}

int recv_D_F_Ip(struct D_F_Ip lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_F_Ip ret_D_F_Ip(){
  struct D_F_Ip lv;
  lv.v1 = -2.125;
  lv.v2 = 7.0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_F_Ip(struct D_F_Ip);
int send_D_F_Ip(){
  struct D_F_Ip lv;
  lv.v1 = -2.125;
  lv.v2 = 7.0;
  lv.v3 = 0;
  return zig_recv_D_F_Ip(lv);
}

int recv_D_F_L(struct D_F_L lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 23080) return 3;
  return 0;
}
struct D_F_L ret_D_F_L(){
  struct D_F_L lv;
  lv.v1 = -2.125;
  lv.v2 = 0.5;
  lv.v3 = 23080;
  return lv;
}
int zig_recv_D_F_L(struct D_F_L);
int send_D_F_L(){
  struct D_F_L lv;
  lv.v1 = -2.125;
  lv.v2 = 0.5;
  lv.v3 = 23080;
  return zig_recv_D_F_L(lv);
}

int recv_D_F_S(struct D_F_S lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 22172) return 3;
  return 0;
}
struct D_F_S ret_D_F_S(){
  struct D_F_S lv;
  lv.v1 = 0.875;
  lv.v2 = 7.0;
  lv.v3 = 22172;
  return lv;
}
int zig_recv_D_F_S(struct D_F_S);
int send_D_F_S(){
  struct D_F_S lv;
  lv.v1 = 0.875;
  lv.v2 = 7.0;
  lv.v3 = 22172;
  return zig_recv_D_F_S(lv);
}

int recv_D_F_Uc(struct D_F_Uc lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 116) return 3;
  return 0;
}
struct D_F_Uc ret_D_F_Uc(){
  struct D_F_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = -0.25;
  lv.v3 = 116;
  return lv;
}
int zig_recv_D_F_Uc(struct D_F_Uc);
int send_D_F_Uc(){
  struct D_F_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = -0.25;
  lv.v3 = 116;
  return zig_recv_D_F_Uc(lv);
}

int recv_D_F_Ui(struct D_F_Ui lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 25651) return 3;
  return 0;
}
struct D_F_Ui ret_D_F_Ui(){
  struct D_F_Ui lv;
  lv.v1 = -2.125;
  lv.v2 = 1.0;
  lv.v3 = 25651;
  return lv;
}
int zig_recv_D_F_Ui(struct D_F_Ui);
int send_D_F_Ui(){
  struct D_F_Ui lv;
  lv.v1 = -2.125;
  lv.v2 = 1.0;
  lv.v3 = 25651;
  return zig_recv_D_F_Ui(lv);
}

int recv_D_F_Ul(struct D_F_Ul lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 7057) return 3;
  return 0;
}
struct D_F_Ul ret_D_F_Ul(){
  struct D_F_Ul lv;
  lv.v1 = 0.875;
  lv.v2 = -0.25;
  lv.v3 = 7057;
  return lv;
}
int zig_recv_D_F_Ul(struct D_F_Ul);
int send_D_F_Ul(){
  struct D_F_Ul lv;
  lv.v1 = 0.875;
  lv.v2 = -0.25;
  lv.v3 = 7057;
  return zig_recv_D_F_Ul(lv);
}

int recv_D_F_Us(struct D_F_Us lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 20824) return 3;
  return 0;
}
struct D_F_Us ret_D_F_Us(){
  struct D_F_Us lv;
  lv.v1 = 4.5;
  lv.v2 = 7.0;
  lv.v3 = 20824;
  return lv;
}
int zig_recv_D_F_Us(struct D_F_Us);
int send_D_F_Us(){
  struct D_F_Us lv;
  lv.v1 = 4.5;
  lv.v2 = 7.0;
  lv.v3 = 20824;
  return zig_recv_D_F_Us(lv);
}

int recv_D_F_Vp(struct D_F_Vp lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_F_Vp ret_D_F_Vp(){
  struct D_F_Vp lv;
  lv.v1 = 4.5;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_F_Vp(struct D_F_Vp);
int send_D_F_Vp(){
  struct D_F_Vp lv;
  lv.v1 = 4.5;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return zig_recv_D_F_Vp(lv);
}

int recv_D_I(struct D_I lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 18569) return 2;
  return 0;
}
struct D_I ret_D_I(){
  struct D_I lv;
  lv.v1 = 4.5;
  lv.v2 = 18569;
  return lv;
}
int zig_recv_D_I(struct D_I);
int send_D_I(){
  struct D_I lv;
  lv.v1 = 4.5;
  lv.v2 = 18569;
  return zig_recv_D_I(lv);
}

int recv_D_I_C(struct D_I_C lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 24024) return 2;
  if (lv.v3 != 99) return 3;
  return 0;
}
struct D_I_C ret_D_I_C(){
  struct D_I_C lv;
  lv.v1 = 1.0;
  lv.v2 = 24024;
  lv.v3 = 99;
  return lv;
}
int zig_recv_D_I_C(struct D_I_C);
int send_D_I_C(){
  struct D_I_C lv;
  lv.v1 = 1.0;
  lv.v2 = 24024;
  lv.v3 = 99;
  return zig_recv_D_I_C(lv);
}

int recv_D_I_D(struct D_I_D lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 30236) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct D_I_D ret_D_I_D(){
  struct D_I_D lv;
  lv.v1 = 4.5;
  lv.v2 = 30236;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_D_I_D(struct D_I_D);
int send_D_I_D(){
  struct D_I_D lv;
  lv.v1 = 4.5;
  lv.v2 = 30236;
  lv.v3 = -2.125;
  return zig_recv_D_I_D(lv);
}

int recv_D_I_F(struct D_I_F lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 5029) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct D_I_F ret_D_I_F(){
  struct D_I_F lv;
  lv.v1 = 7.0;
  lv.v2 = 5029;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_D_I_F(struct D_I_F);
int send_D_I_F(){
  struct D_I_F lv;
  lv.v1 = 7.0;
  lv.v2 = 5029;
  lv.v3 = 1.0;
  return zig_recv_D_I_F(lv);
}

int recv_D_I_I(struct D_I_I lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 13633) return 2;
  if (lv.v3 != 9829) return 3;
  return 0;
}
struct D_I_I ret_D_I_I(){
  struct D_I_I lv;
  lv.v1 = 7.0;
  lv.v2 = 13633;
  lv.v3 = 9829;
  return lv;
}
int zig_recv_D_I_I(struct D_I_I);
int send_D_I_I(){
  struct D_I_I lv;
  lv.v1 = 7.0;
  lv.v2 = 13633;
  lv.v3 = 9829;
  return zig_recv_D_I_I(lv);
}

int recv_D_I_Ip(struct D_I_Ip lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 9051) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_I_Ip ret_D_I_Ip(){
  struct D_I_Ip lv;
  lv.v1 = 4.5;
  lv.v2 = 9051;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_I_Ip(struct D_I_Ip);
int send_D_I_Ip(){
  struct D_I_Ip lv;
  lv.v1 = 4.5;
  lv.v2 = 9051;
  lv.v3 = 0;
  return zig_recv_D_I_Ip(lv);
}

int recv_D_I_L(struct D_I_L lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 18331) return 2;
  if (lv.v3 != 10784) return 3;
  return 0;
}
struct D_I_L ret_D_I_L(){
  struct D_I_L lv;
  lv.v1 = -0.25;
  lv.v2 = 18331;
  lv.v3 = 10784;
  return lv;
}
int zig_recv_D_I_L(struct D_I_L);
int send_D_I_L(){
  struct D_I_L lv;
  lv.v1 = -0.25;
  lv.v2 = 18331;
  lv.v3 = 10784;
  return zig_recv_D_I_L(lv);
}

int recv_D_I_S(struct D_I_S lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 29861) return 2;
  if (lv.v3 != 13238) return 3;
  return 0;
}
struct D_I_S ret_D_I_S(){
  struct D_I_S lv;
  lv.v1 = 0.875;
  lv.v2 = 29861;
  lv.v3 = 13238;
  return lv;
}
int zig_recv_D_I_S(struct D_I_S);
int send_D_I_S(){
  struct D_I_S lv;
  lv.v1 = 0.875;
  lv.v2 = 29861;
  lv.v3 = 13238;
  return zig_recv_D_I_S(lv);
}

int recv_D_I_Uc(struct D_I_Uc lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 19530) return 2;
  if (lv.v3 != 81) return 3;
  return 0;
}
struct D_I_Uc ret_D_I_Uc(){
  struct D_I_Uc lv;
  lv.v1 = -0.25;
  lv.v2 = 19530;
  lv.v3 = 81;
  return lv;
}
int zig_recv_D_I_Uc(struct D_I_Uc);
int send_D_I_Uc(){
  struct D_I_Uc lv;
  lv.v1 = -0.25;
  lv.v2 = 19530;
  lv.v3 = 81;
  return zig_recv_D_I_Uc(lv);
}

int recv_D_I_Ui(struct D_I_Ui lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 31107) return 2;
  if (lv.v3 != 21469) return 3;
  return 0;
}
struct D_I_Ui ret_D_I_Ui(){
  struct D_I_Ui lv;
  lv.v1 = 1.0;
  lv.v2 = 31107;
  lv.v3 = 21469;
  return lv;
}
int zig_recv_D_I_Ui(struct D_I_Ui);
int send_D_I_Ui(){
  struct D_I_Ui lv;
  lv.v1 = 1.0;
  lv.v2 = 31107;
  lv.v3 = 21469;
  return zig_recv_D_I_Ui(lv);
}

int recv_D_I_Ul(struct D_I_Ul lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 32447) return 2;
  if (lv.v3 != 28274) return 3;
  return 0;
}
struct D_I_Ul ret_D_I_Ul(){
  struct D_I_Ul lv;
  lv.v1 = 7.0;
  lv.v2 = 32447;
  lv.v3 = 28274;
  return lv;
}
int zig_recv_D_I_Ul(struct D_I_Ul);
int send_D_I_Ul(){
  struct D_I_Ul lv;
  lv.v1 = 7.0;
  lv.v2 = 32447;
  lv.v3 = 28274;
  return zig_recv_D_I_Ul(lv);
}

int recv_D_I_Us(struct D_I_Us lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 14380) return 2;
  if (lv.v3 != 122) return 3;
  return 0;
}
struct D_I_Us ret_D_I_Us(){
  struct D_I_Us lv;
  lv.v1 = 0.875;
  lv.v2 = 14380;
  lv.v3 = 122;
  return lv;
}
int zig_recv_D_I_Us(struct D_I_Us);
int send_D_I_Us(){
  struct D_I_Us lv;
  lv.v1 = 0.875;
  lv.v2 = 14380;
  lv.v3 = 122;
  return zig_recv_D_I_Us(lv);
}

int recv_D_I_Vp(struct D_I_Vp lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 9870) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_I_Vp ret_D_I_Vp(){
  struct D_I_Vp lv;
  lv.v1 = 4.5;
  lv.v2 = 9870;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_I_Vp(struct D_I_Vp);
int send_D_I_Vp(){
  struct D_I_Vp lv;
  lv.v1 = 4.5;
  lv.v2 = 9870;
  lv.v3 = 0;
  return zig_recv_D_I_Vp(lv);
}

int recv_D_Ip(struct D_Ip lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct D_Ip ret_D_Ip(){
  struct D_Ip lv;
  lv.v1 = 0.875;
  lv.v2 = 0;
  return lv;
}
int zig_recv_D_Ip(struct D_Ip);
int send_D_Ip(){
  struct D_Ip lv;
  lv.v1 = 0.875;
  lv.v2 = 0;
  return zig_recv_D_Ip(lv);
}

int recv_D_Ip_C(struct D_Ip_C lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 55) return 3;
  return 0;
}
struct D_Ip_C ret_D_Ip_C(){
  struct D_Ip_C lv;
  lv.v1 = 0.5;
  lv.v2 = 0;
  lv.v3 = 55;
  return lv;
}
int zig_recv_D_Ip_C(struct D_Ip_C);
int send_D_Ip_C(){
  struct D_Ip_C lv;
  lv.v1 = 0.5;
  lv.v2 = 0;
  lv.v3 = 55;
  return zig_recv_D_Ip_C(lv);
}

int recv_D_Ip_D(struct D_Ip_D lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct D_Ip_D ret_D_Ip_D(){
  struct D_Ip_D lv;
  lv.v1 = 0.5;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_D_Ip_D(struct D_Ip_D);
int send_D_Ip_D(){
  struct D_Ip_D lv;
  lv.v1 = 0.5;
  lv.v2 = 0;
  lv.v3 = -2.125;
  return zig_recv_D_Ip_D(lv);
}

int recv_D_Ip_F(struct D_Ip_F lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct D_Ip_F ret_D_Ip_F(){
  struct D_Ip_F lv;
  lv.v1 = 0.5;
  lv.v2 = 0;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_D_Ip_F(struct D_Ip_F);
int send_D_Ip_F(){
  struct D_Ip_F lv;
  lv.v1 = 0.5;
  lv.v2 = 0;
  lv.v3 = 4.5;
  return zig_recv_D_Ip_F(lv);
}

int recv_D_Ip_I(struct D_Ip_I lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 25718) return 3;
  return 0;
}
struct D_Ip_I ret_D_Ip_I(){
  struct D_Ip_I lv;
  lv.v1 = -0.25;
  lv.v2 = 0;
  lv.v3 = 25718;
  return lv;
}
int zig_recv_D_Ip_I(struct D_Ip_I);
int send_D_Ip_I(){
  struct D_Ip_I lv;
  lv.v1 = -0.25;
  lv.v2 = 0;
  lv.v3 = 25718;
  return zig_recv_D_Ip_I(lv);
}

int recv_D_Ip_Ip(struct D_Ip_Ip lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Ip_Ip ret_D_Ip_Ip(){
  struct D_Ip_Ip lv;
  lv.v1 = -0.25;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Ip_Ip(struct D_Ip_Ip);
int send_D_Ip_Ip(){
  struct D_Ip_Ip lv;
  lv.v1 = -0.25;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_D_Ip_Ip(lv);
}

int recv_D_Ip_L(struct D_Ip_L lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 3369) return 3;
  return 0;
}
struct D_Ip_L ret_D_Ip_L(){
  struct D_Ip_L lv;
  lv.v1 = 0.875;
  lv.v2 = 0;
  lv.v3 = 3369;
  return lv;
}
int zig_recv_D_Ip_L(struct D_Ip_L);
int send_D_Ip_L(){
  struct D_Ip_L lv;
  lv.v1 = 0.875;
  lv.v2 = 0;
  lv.v3 = 3369;
  return zig_recv_D_Ip_L(lv);
}

int recv_D_Ip_S(struct D_Ip_S lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 14756) return 3;
  return 0;
}
struct D_Ip_S ret_D_Ip_S(){
  struct D_Ip_S lv;
  lv.v1 = 0.875;
  lv.v2 = 0;
  lv.v3 = 14756;
  return lv;
}
int zig_recv_D_Ip_S(struct D_Ip_S);
int send_D_Ip_S(){
  struct D_Ip_S lv;
  lv.v1 = 0.875;
  lv.v2 = 0;
  lv.v3 = 14756;
  return zig_recv_D_Ip_S(lv);
}

int recv_D_Ip_Uc(struct D_Ip_Uc lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 61) return 3;
  return 0;
}
struct D_Ip_Uc ret_D_Ip_Uc(){
  struct D_Ip_Uc lv;
  lv.v1 = -0.25;
  lv.v2 = 0;
  lv.v3 = 61;
  return lv;
}
int zig_recv_D_Ip_Uc(struct D_Ip_Uc);
int send_D_Ip_Uc(){
  struct D_Ip_Uc lv;
  lv.v1 = -0.25;
  lv.v2 = 0;
  lv.v3 = 61;
  return zig_recv_D_Ip_Uc(lv);
}

int recv_D_Ip_Ui(struct D_Ip_Ui lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 24999) return 3;
  return 0;
}
struct D_Ip_Ui ret_D_Ip_Ui(){
  struct D_Ip_Ui lv;
  lv.v1 = 7.0;
  lv.v2 = 0;
  lv.v3 = 24999;
  return lv;
}
int zig_recv_D_Ip_Ui(struct D_Ip_Ui);
int send_D_Ip_Ui(){
  struct D_Ip_Ui lv;
  lv.v1 = 7.0;
  lv.v2 = 0;
  lv.v3 = 24999;
  return zig_recv_D_Ip_Ui(lv);
}

int recv_D_Ip_Ul(struct D_Ip_Ul lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 22031) return 3;
  return 0;
}
struct D_Ip_Ul ret_D_Ip_Ul(){
  struct D_Ip_Ul lv;
  lv.v1 = -0.25;
  lv.v2 = 0;
  lv.v3 = 22031;
  return lv;
}
int zig_recv_D_Ip_Ul(struct D_Ip_Ul);
int send_D_Ip_Ul(){
  struct D_Ip_Ul lv;
  lv.v1 = -0.25;
  lv.v2 = 0;
  lv.v3 = 22031;
  return zig_recv_D_Ip_Ul(lv);
}

int recv_D_Ip_Us(struct D_Ip_Us lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 741) return 3;
  return 0;
}
struct D_Ip_Us ret_D_Ip_Us(){
  struct D_Ip_Us lv;
  lv.v1 = 4.5;
  lv.v2 = 0;
  lv.v3 = 741;
  return lv;
}
int zig_recv_D_Ip_Us(struct D_Ip_Us);
int send_D_Ip_Us(){
  struct D_Ip_Us lv;
  lv.v1 = 4.5;
  lv.v2 = 0;
  lv.v3 = 741;
  return zig_recv_D_Ip_Us(lv);
}

int recv_D_Ip_Vp(struct D_Ip_Vp lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Ip_Vp ret_D_Ip_Vp(){
  struct D_Ip_Vp lv;
  lv.v1 = 1.0;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Ip_Vp(struct D_Ip_Vp);
int send_D_Ip_Vp(){
  struct D_Ip_Vp lv;
  lv.v1 = 1.0;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_D_Ip_Vp(lv);
}

int recv_D_L(struct D_L lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 9582) return 2;
  return 0;
}
struct D_L ret_D_L(){
  struct D_L lv;
  lv.v1 = 4.5;
  lv.v2 = 9582;
  return lv;
}
int zig_recv_D_L(struct D_L);
int send_D_L(){
  struct D_L lv;
  lv.v1 = 4.5;
  lv.v2 = 9582;
  return zig_recv_D_L(lv);
}

int recv_D_L_C(struct D_L_C lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 18867) return 2;
  if (lv.v3 != 76) return 3;
  return 0;
}
struct D_L_C ret_D_L_C(){
  struct D_L_C lv;
  lv.v1 = 4.5;
  lv.v2 = 18867;
  lv.v3 = 76;
  return lv;
}
int zig_recv_D_L_C(struct D_L_C);
int send_D_L_C(){
  struct D_L_C lv;
  lv.v1 = 4.5;
  lv.v2 = 18867;
  lv.v3 = 76;
  return zig_recv_D_L_C(lv);
}

int recv_D_L_D(struct D_L_D lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 21051) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct D_L_D ret_D_L_D(){
  struct D_L_D lv;
  lv.v1 = -0.25;
  lv.v2 = 21051;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_D_L_D(struct D_L_D);
int send_D_L_D(){
  struct D_L_D lv;
  lv.v1 = -0.25;
  lv.v2 = 21051;
  lv.v3 = 0.875;
  return zig_recv_D_L_D(lv);
}

int recv_D_L_F(struct D_L_F lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 30914) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct D_L_F ret_D_L_F(){
  struct D_L_F lv;
  lv.v1 = 1.0;
  lv.v2 = 30914;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_D_L_F(struct D_L_F);
int send_D_L_F(){
  struct D_L_F lv;
  lv.v1 = 1.0;
  lv.v2 = 30914;
  lv.v3 = 1.0;
  return zig_recv_D_L_F(lv);
}

int recv_D_L_I(struct D_L_I lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 14517) return 2;
  if (lv.v3 != 8201) return 3;
  return 0;
}
struct D_L_I ret_D_L_I(){
  struct D_L_I lv;
  lv.v1 = 1.0;
  lv.v2 = 14517;
  lv.v3 = 8201;
  return lv;
}
int zig_recv_D_L_I(struct D_L_I);
int send_D_L_I(){
  struct D_L_I lv;
  lv.v1 = 1.0;
  lv.v2 = 14517;
  lv.v3 = 8201;
  return zig_recv_D_L_I(lv);
}

int recv_D_L_Ip(struct D_L_Ip lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 3359) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_L_Ip ret_D_L_Ip(){
  struct D_L_Ip lv;
  lv.v1 = 0.875;
  lv.v2 = 3359;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_L_Ip(struct D_L_Ip);
int send_D_L_Ip(){
  struct D_L_Ip lv;
  lv.v1 = 0.875;
  lv.v2 = 3359;
  lv.v3 = 0;
  return zig_recv_D_L_Ip(lv);
}

int recv_D_L_L(struct D_L_L lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 31346) return 2;
  if (lv.v3 != 3876) return 3;
  return 0;
}
struct D_L_L ret_D_L_L(){
  struct D_L_L lv;
  lv.v1 = -0.25;
  lv.v2 = 31346;
  lv.v3 = 3876;
  return lv;
}
int zig_recv_D_L_L(struct D_L_L);
int send_D_L_L(){
  struct D_L_L lv;
  lv.v1 = -0.25;
  lv.v2 = 31346;
  lv.v3 = 3876;
  return zig_recv_D_L_L(lv);
}

int recv_D_L_S(struct D_L_S lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 11502) return 2;
  if (lv.v3 != 16315) return 3;
  return 0;
}
struct D_L_S ret_D_L_S(){
  struct D_L_S lv;
  lv.v1 = 4.5;
  lv.v2 = 11502;
  lv.v3 = 16315;
  return lv;
}
int zig_recv_D_L_S(struct D_L_S);
int send_D_L_S(){
  struct D_L_S lv;
  lv.v1 = 4.5;
  lv.v2 = 11502;
  lv.v3 = 16315;
  return zig_recv_D_L_S(lv);
}

int recv_D_L_Uc(struct D_L_Uc lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 20559) return 2;
  if (lv.v3 != 102) return 3;
  return 0;
}
struct D_L_Uc ret_D_L_Uc(){
  struct D_L_Uc lv;
  lv.v1 = 0.5;
  lv.v2 = 20559;
  lv.v3 = 102;
  return lv;
}
int zig_recv_D_L_Uc(struct D_L_Uc);
int send_D_L_Uc(){
  struct D_L_Uc lv;
  lv.v1 = 0.5;
  lv.v2 = 20559;
  lv.v3 = 102;
  return zig_recv_D_L_Uc(lv);
}

int recv_D_L_Ui(struct D_L_Ui lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 17125) return 2;
  if (lv.v3 != 8313) return 3;
  return 0;
}
struct D_L_Ui ret_D_L_Ui(){
  struct D_L_Ui lv;
  lv.v1 = -2.125;
  lv.v2 = 17125;
  lv.v3 = 8313;
  return lv;
}
int zig_recv_D_L_Ui(struct D_L_Ui);
int send_D_L_Ui(){
  struct D_L_Ui lv;
  lv.v1 = -2.125;
  lv.v2 = 17125;
  lv.v3 = 8313;
  return zig_recv_D_L_Ui(lv);
}

int recv_D_L_Ul(struct D_L_Ul lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 22788) return 2;
  if (lv.v3 != 1950) return 3;
  return 0;
}
struct D_L_Ul ret_D_L_Ul(){
  struct D_L_Ul lv;
  lv.v1 = 7.0;
  lv.v2 = 22788;
  lv.v3 = 1950;
  return lv;
}
int zig_recv_D_L_Ul(struct D_L_Ul);
int send_D_L_Ul(){
  struct D_L_Ul lv;
  lv.v1 = 7.0;
  lv.v2 = 22788;
  lv.v3 = 1950;
  return zig_recv_D_L_Ul(lv);
}

int recv_D_L_Us(struct D_L_Us lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 14381) return 2;
  if (lv.v3 != 29145) return 3;
  return 0;
}
struct D_L_Us ret_D_L_Us(){
  struct D_L_Us lv;
  lv.v1 = 7.0;
  lv.v2 = 14381;
  lv.v3 = 29145;
  return lv;
}
int zig_recv_D_L_Us(struct D_L_Us);
int send_D_L_Us(){
  struct D_L_Us lv;
  lv.v1 = 7.0;
  lv.v2 = 14381;
  lv.v3 = 29145;
  return zig_recv_D_L_Us(lv);
}

int recv_D_L_Vp(struct D_L_Vp lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 1736) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_L_Vp ret_D_L_Vp(){
  struct D_L_Vp lv;
  lv.v1 = 1.0;
  lv.v2 = 1736;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_L_Vp(struct D_L_Vp);
int send_D_L_Vp(){
  struct D_L_Vp lv;
  lv.v1 = 1.0;
  lv.v2 = 1736;
  lv.v3 = 0;
  return zig_recv_D_L_Vp(lv);
}

int recv_D_S(struct D_S lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 18963) return 2;
  return 0;
}
struct D_S ret_D_S(){
  struct D_S lv;
  lv.v1 = 1.0;
  lv.v2 = 18963;
  return lv;
}
int zig_recv_D_S(struct D_S);
int send_D_S(){
  struct D_S lv;
  lv.v1 = 1.0;
  lv.v2 = 18963;
  return zig_recv_D_S(lv);
}

int recv_D_S_C(struct D_S_C lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 111) return 2;
  if (lv.v3 != 38) return 3;
  return 0;
}
struct D_S_C ret_D_S_C(){
  struct D_S_C lv;
  lv.v1 = 1.0;
  lv.v2 = 111;
  lv.v3 = 38;
  return lv;
}
int zig_recv_D_S_C(struct D_S_C);
int send_D_S_C(){
  struct D_S_C lv;
  lv.v1 = 1.0;
  lv.v2 = 111;
  lv.v3 = 38;
  return zig_recv_D_S_C(lv);
}

int recv_D_S_D(struct D_S_D lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 32408) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct D_S_D ret_D_S_D(){
  struct D_S_D lv;
  lv.v1 = 7.0;
  lv.v2 = 32408;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_D_S_D(struct D_S_D);
int send_D_S_D(){
  struct D_S_D lv;
  lv.v1 = 7.0;
  lv.v2 = 32408;
  lv.v3 = 0.875;
  return zig_recv_D_S_D(lv);
}

int recv_D_S_F(struct D_S_F lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 10925) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct D_S_F ret_D_S_F(){
  struct D_S_F lv;
  lv.v1 = 7.0;
  lv.v2 = 10925;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_D_S_F(struct D_S_F);
int send_D_S_F(){
  struct D_S_F lv;
  lv.v1 = 7.0;
  lv.v2 = 10925;
  lv.v3 = 0.875;
  return zig_recv_D_S_F(lv);
}

int recv_D_S_I(struct D_S_I lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 23805) return 2;
  if (lv.v3 != 4950) return 3;
  return 0;
}
struct D_S_I ret_D_S_I(){
  struct D_S_I lv;
  lv.v1 = 0.875;
  lv.v2 = 23805;
  lv.v3 = 4950;
  return lv;
}
int zig_recv_D_S_I(struct D_S_I);
int send_D_S_I(){
  struct D_S_I lv;
  lv.v1 = 0.875;
  lv.v2 = 23805;
  lv.v3 = 4950;
  return zig_recv_D_S_I(lv);
}

int recv_D_S_Ip(struct D_S_Ip lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 18312) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_S_Ip ret_D_S_Ip(){
  struct D_S_Ip lv;
  lv.v1 = 0.875;
  lv.v2 = 18312;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_S_Ip(struct D_S_Ip);
int send_D_S_Ip(){
  struct D_S_Ip lv;
  lv.v1 = 0.875;
  lv.v2 = 18312;
  lv.v3 = 0;
  return zig_recv_D_S_Ip(lv);
}

int recv_D_S_L(struct D_S_L lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 29169) return 2;
  if (lv.v3 != 11847) return 3;
  return 0;
}
struct D_S_L ret_D_S_L(){
  struct D_S_L lv;
  lv.v1 = 4.5;
  lv.v2 = 29169;
  lv.v3 = 11847;
  return lv;
}
int zig_recv_D_S_L(struct D_S_L);
int send_D_S_L(){
  struct D_S_L lv;
  lv.v1 = 4.5;
  lv.v2 = 29169;
  lv.v3 = 11847;
  return zig_recv_D_S_L(lv);
}

int recv_D_S_S(struct D_S_S lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 29071) return 2;
  if (lv.v3 != 28225) return 3;
  return 0;
}
struct D_S_S ret_D_S_S(){
  struct D_S_S lv;
  lv.v1 = 0.875;
  lv.v2 = 29071;
  lv.v3 = 28225;
  return lv;
}
int zig_recv_D_S_S(struct D_S_S);
int send_D_S_S(){
  struct D_S_S lv;
  lv.v1 = 0.875;
  lv.v2 = 29071;
  lv.v3 = 28225;
  return zig_recv_D_S_S(lv);
}

int recv_D_S_Uc(struct D_S_Uc lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 1535) return 2;
  if (lv.v3 != 20) return 3;
  return 0;
}
struct D_S_Uc ret_D_S_Uc(){
  struct D_S_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = 1535;
  lv.v3 = 20;
  return lv;
}
int zig_recv_D_S_Uc(struct D_S_Uc);
int send_D_S_Uc(){
  struct D_S_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = 1535;
  lv.v3 = 20;
  return zig_recv_D_S_Uc(lv);
}

int recv_D_S_Ui(struct D_S_Ui lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 23406) return 2;
  if (lv.v3 != 7690) return 3;
  return 0;
}
struct D_S_Ui ret_D_S_Ui(){
  struct D_S_Ui lv;
  lv.v1 = 4.5;
  lv.v2 = 23406;
  lv.v3 = 7690;
  return lv;
}
int zig_recv_D_S_Ui(struct D_S_Ui);
int send_D_S_Ui(){
  struct D_S_Ui lv;
  lv.v1 = 4.5;
  lv.v2 = 23406;
  lv.v3 = 7690;
  return zig_recv_D_S_Ui(lv);
}

int recv_D_S_Ul(struct D_S_Ul lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 3705) return 2;
  if (lv.v3 != 27905) return 3;
  return 0;
}
struct D_S_Ul ret_D_S_Ul(){
  struct D_S_Ul lv;
  lv.v1 = 4.5;
  lv.v2 = 3705;
  lv.v3 = 27905;
  return lv;
}
int zig_recv_D_S_Ul(struct D_S_Ul);
int send_D_S_Ul(){
  struct D_S_Ul lv;
  lv.v1 = 4.5;
  lv.v2 = 3705;
  lv.v3 = 27905;
  return zig_recv_D_S_Ul(lv);
}

int recv_D_S_Us(struct D_S_Us lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 23576) return 2;
  if (lv.v3 != 1855) return 3;
  return 0;
}
struct D_S_Us ret_D_S_Us(){
  struct D_S_Us lv;
  lv.v1 = -2.125;
  lv.v2 = 23576;
  lv.v3 = 1855;
  return lv;
}
int zig_recv_D_S_Us(struct D_S_Us);
int send_D_S_Us(){
  struct D_S_Us lv;
  lv.v1 = -2.125;
  lv.v2 = 23576;
  lv.v3 = 1855;
  return zig_recv_D_S_Us(lv);
}

int recv_D_S_Vp(struct D_S_Vp lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 29327) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_S_Vp ret_D_S_Vp(){
  struct D_S_Vp lv;
  lv.v1 = 0.5;
  lv.v2 = 29327;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_S_Vp(struct D_S_Vp);
int send_D_S_Vp(){
  struct D_S_Vp lv;
  lv.v1 = 0.5;
  lv.v2 = 29327;
  lv.v3 = 0;
  return zig_recv_D_S_Vp(lv);
}

int recv_D_Uc(struct D_Uc lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 121) return 2;
  return 0;
}
struct D_Uc ret_D_Uc(){
  struct D_Uc lv;
  lv.v1 = 0.5;
  lv.v2 = 121;
  return lv;
}
int zig_recv_D_Uc(struct D_Uc);
int send_D_Uc(){
  struct D_Uc lv;
  lv.v1 = 0.5;
  lv.v2 = 121;
  return zig_recv_D_Uc(lv);
}

int recv_D_Uc_C(struct D_Uc_C lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 68) return 2;
  if (lv.v3 != 42) return 3;
  return 0;
}
struct D_Uc_C ret_D_Uc_C(){
  struct D_Uc_C lv;
  lv.v1 = 1.0;
  lv.v2 = 68;
  lv.v3 = 42;
  return lv;
}
int zig_recv_D_Uc_C(struct D_Uc_C);
int send_D_Uc_C(){
  struct D_Uc_C lv;
  lv.v1 = 1.0;
  lv.v2 = 68;
  lv.v3 = 42;
  return zig_recv_D_Uc_C(lv);
}

int recv_D_Uc_D(struct D_Uc_D lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 68) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct D_Uc_D ret_D_Uc_D(){
  struct D_Uc_D lv;
  lv.v1 = -0.25;
  lv.v2 = 68;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_D_Uc_D(struct D_Uc_D);
int send_D_Uc_D(){
  struct D_Uc_D lv;
  lv.v1 = -0.25;
  lv.v2 = 68;
  lv.v3 = 1.0;
  return zig_recv_D_Uc_D(lv);
}

int recv_D_Uc_F(struct D_Uc_F lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 110) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct D_Uc_F ret_D_Uc_F(){
  struct D_Uc_F lv;
  lv.v1 = -0.25;
  lv.v2 = 110;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_D_Uc_F(struct D_Uc_F);
int send_D_Uc_F(){
  struct D_Uc_F lv;
  lv.v1 = -0.25;
  lv.v2 = 110;
  lv.v3 = -0.25;
  return zig_recv_D_Uc_F(lv);
}

int recv_D_Uc_I(struct D_Uc_I lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 32) return 2;
  if (lv.v3 != 18397) return 3;
  return 0;
}
struct D_Uc_I ret_D_Uc_I(){
  struct D_Uc_I lv;
  lv.v1 = 0.5;
  lv.v2 = 32;
  lv.v3 = 18397;
  return lv;
}
int zig_recv_D_Uc_I(struct D_Uc_I);
int send_D_Uc_I(){
  struct D_Uc_I lv;
  lv.v1 = 0.5;
  lv.v2 = 32;
  lv.v3 = 18397;
  return zig_recv_D_Uc_I(lv);
}

int recv_D_Uc_Ip(struct D_Uc_Ip lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 108) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Uc_Ip ret_D_Uc_Ip(){
  struct D_Uc_Ip lv;
  lv.v1 = 7.0;
  lv.v2 = 108;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Uc_Ip(struct D_Uc_Ip);
int send_D_Uc_Ip(){
  struct D_Uc_Ip lv;
  lv.v1 = 7.0;
  lv.v2 = 108;
  lv.v3 = 0;
  return zig_recv_D_Uc_Ip(lv);
}

int recv_D_Uc_L(struct D_Uc_L lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 108) return 2;
  if (lv.v3 != 2176) return 3;
  return 0;
}
struct D_Uc_L ret_D_Uc_L(){
  struct D_Uc_L lv;
  lv.v1 = 0.875;
  lv.v2 = 108;
  lv.v3 = 2176;
  return lv;
}
int zig_recv_D_Uc_L(struct D_Uc_L);
int send_D_Uc_L(){
  struct D_Uc_L lv;
  lv.v1 = 0.875;
  lv.v2 = 108;
  lv.v3 = 2176;
  return zig_recv_D_Uc_L(lv);
}

int recv_D_Uc_S(struct D_Uc_S lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 48) return 2;
  if (lv.v3 != 3198) return 3;
  return 0;
}
struct D_Uc_S ret_D_Uc_S(){
  struct D_Uc_S lv;
  lv.v1 = 1.0;
  lv.v2 = 48;
  lv.v3 = 3198;
  return lv;
}
int zig_recv_D_Uc_S(struct D_Uc_S);
int send_D_Uc_S(){
  struct D_Uc_S lv;
  lv.v1 = 1.0;
  lv.v2 = 48;
  lv.v3 = 3198;
  return zig_recv_D_Uc_S(lv);
}

int recv_D_Uc_Uc(struct D_Uc_Uc lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 115) return 2;
  if (lv.v3 != 90) return 3;
  return 0;
}
struct D_Uc_Uc ret_D_Uc_Uc(){
  struct D_Uc_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = 115;
  lv.v3 = 90;
  return lv;
}
int zig_recv_D_Uc_Uc(struct D_Uc_Uc);
int send_D_Uc_Uc(){
  struct D_Uc_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = 115;
  lv.v3 = 90;
  return zig_recv_D_Uc_Uc(lv);
}

int recv_D_Uc_Ui(struct D_Uc_Ui lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 117) return 2;
  if (lv.v3 != 6126) return 3;
  return 0;
}
struct D_Uc_Ui ret_D_Uc_Ui(){
  struct D_Uc_Ui lv;
  lv.v1 = 7.0;
  lv.v2 = 117;
  lv.v3 = 6126;
  return lv;
}
int zig_recv_D_Uc_Ui(struct D_Uc_Ui);
int send_D_Uc_Ui(){
  struct D_Uc_Ui lv;
  lv.v1 = 7.0;
  lv.v2 = 117;
  lv.v3 = 6126;
  return zig_recv_D_Uc_Ui(lv);
}

int recv_D_Uc_Ul(struct D_Uc_Ul lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 55) return 2;
  if (lv.v3 != 11060) return 3;
  return 0;
}
struct D_Uc_Ul ret_D_Uc_Ul(){
  struct D_Uc_Ul lv;
  lv.v1 = 4.5;
  lv.v2 = 55;
  lv.v3 = 11060;
  return lv;
}
int zig_recv_D_Uc_Ul(struct D_Uc_Ul);
int send_D_Uc_Ul(){
  struct D_Uc_Ul lv;
  lv.v1 = 4.5;
  lv.v2 = 55;
  lv.v3 = 11060;
  return zig_recv_D_Uc_Ul(lv);
}

int recv_D_Uc_Us(struct D_Uc_Us lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 120) return 2;
  if (lv.v3 != 26) return 3;
  return 0;
}
struct D_Uc_Us ret_D_Uc_Us(){
  struct D_Uc_Us lv;
  lv.v1 = -2.125;
  lv.v2 = 120;
  lv.v3 = 26;
  return lv;
}
int zig_recv_D_Uc_Us(struct D_Uc_Us);
int send_D_Uc_Us(){
  struct D_Uc_Us lv;
  lv.v1 = -2.125;
  lv.v2 = 120;
  lv.v3 = 26;
  return zig_recv_D_Uc_Us(lv);
}

int recv_D_Uc_Vp(struct D_Uc_Vp lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 32) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Uc_Vp ret_D_Uc_Vp(){
  struct D_Uc_Vp lv;
  lv.v1 = -0.25;
  lv.v2 = 32;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Uc_Vp(struct D_Uc_Vp);
int send_D_Uc_Vp(){
  struct D_Uc_Vp lv;
  lv.v1 = -0.25;
  lv.v2 = 32;
  lv.v3 = 0;
  return zig_recv_D_Uc_Vp(lv);
}

int recv_D_Ui(struct D_Ui lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 5341) return 2;
  return 0;
}
struct D_Ui ret_D_Ui(){
  struct D_Ui lv;
  lv.v1 = 4.5;
  lv.v2 = 5341;
  return lv;
}
int zig_recv_D_Ui(struct D_Ui);
int send_D_Ui(){
  struct D_Ui lv;
  lv.v1 = 4.5;
  lv.v2 = 5341;
  return zig_recv_D_Ui(lv);
}

int recv_D_Ui_C(struct D_Ui_C lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 7695) return 2;
  if (lv.v3 != 95) return 3;
  return 0;
}
struct D_Ui_C ret_D_Ui_C(){
  struct D_Ui_C lv;
  lv.v1 = 4.5;
  lv.v2 = 7695;
  lv.v3 = 95;
  return lv;
}
int zig_recv_D_Ui_C(struct D_Ui_C);
int send_D_Ui_C(){
  struct D_Ui_C lv;
  lv.v1 = 4.5;
  lv.v2 = 7695;
  lv.v3 = 95;
  return zig_recv_D_Ui_C(lv);
}

int recv_D_Ui_D(struct D_Ui_D lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 9641) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct D_Ui_D ret_D_Ui_D(){
  struct D_Ui_D lv;
  lv.v1 = 1.0;
  lv.v2 = 9641;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_D_Ui_D(struct D_Ui_D);
int send_D_Ui_D(){
  struct D_Ui_D lv;
  lv.v1 = 1.0;
  lv.v2 = 9641;
  lv.v3 = 0.875;
  return zig_recv_D_Ui_D(lv);
}

int recv_D_Ui_F(struct D_Ui_F lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 20010) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct D_Ui_F ret_D_Ui_F(){
  struct D_Ui_F lv;
  lv.v1 = 4.5;
  lv.v2 = 20010;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_D_Ui_F(struct D_Ui_F);
int send_D_Ui_F(){
  struct D_Ui_F lv;
  lv.v1 = 4.5;
  lv.v2 = 20010;
  lv.v3 = -2.125;
  return zig_recv_D_Ui_F(lv);
}

int recv_D_Ui_I(struct D_Ui_I lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 24900) return 2;
  if (lv.v3 != 31103) return 3;
  return 0;
}
struct D_Ui_I ret_D_Ui_I(){
  struct D_Ui_I lv;
  lv.v1 = -0.25;
  lv.v2 = 24900;
  lv.v3 = 31103;
  return lv;
}
int zig_recv_D_Ui_I(struct D_Ui_I);
int send_D_Ui_I(){
  struct D_Ui_I lv;
  lv.v1 = -0.25;
  lv.v2 = 24900;
  lv.v3 = 31103;
  return zig_recv_D_Ui_I(lv);
}

int recv_D_Ui_Ip(struct D_Ui_Ip lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 20869) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Ui_Ip ret_D_Ui_Ip(){
  struct D_Ui_Ip lv;
  lv.v1 = 4.5;
  lv.v2 = 20869;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Ui_Ip(struct D_Ui_Ip);
int send_D_Ui_Ip(){
  struct D_Ui_Ip lv;
  lv.v1 = 4.5;
  lv.v2 = 20869;
  lv.v3 = 0;
  return zig_recv_D_Ui_Ip(lv);
}

int recv_D_Ui_L(struct D_Ui_L lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 31648) return 2;
  if (lv.v3 != 6157) return 3;
  return 0;
}
struct D_Ui_L ret_D_Ui_L(){
  struct D_Ui_L lv;
  lv.v1 = 7.0;
  lv.v2 = 31648;
  lv.v3 = 6157;
  return lv;
}
int zig_recv_D_Ui_L(struct D_Ui_L);
int send_D_Ui_L(){
  struct D_Ui_L lv;
  lv.v1 = 7.0;
  lv.v2 = 31648;
  lv.v3 = 6157;
  return zig_recv_D_Ui_L(lv);
}

int recv_D_Ui_S(struct D_Ui_S lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 13194) return 2;
  if (lv.v3 != 2768) return 3;
  return 0;
}
struct D_Ui_S ret_D_Ui_S(){
  struct D_Ui_S lv;
  lv.v1 = 4.5;
  lv.v2 = 13194;
  lv.v3 = 2768;
  return lv;
}
int zig_recv_D_Ui_S(struct D_Ui_S);
int send_D_Ui_S(){
  struct D_Ui_S lv;
  lv.v1 = 4.5;
  lv.v2 = 13194;
  lv.v3 = 2768;
  return zig_recv_D_Ui_S(lv);
}

int recv_D_Ui_Uc(struct D_Ui_Uc lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 17150) return 2;
  if (lv.v3 != 60) return 3;
  return 0;
}
struct D_Ui_Uc ret_D_Ui_Uc(){
  struct D_Ui_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = 17150;
  lv.v3 = 60;
  return lv;
}
int zig_recv_D_Ui_Uc(struct D_Ui_Uc);
int send_D_Ui_Uc(){
  struct D_Ui_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = 17150;
  lv.v3 = 60;
  return zig_recv_D_Ui_Uc(lv);
}

int recv_D_Ui_Ui(struct D_Ui_Ui lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 25183) return 2;
  if (lv.v3 != 5118) return 3;
  return 0;
}
struct D_Ui_Ui ret_D_Ui_Ui(){
  struct D_Ui_Ui lv;
  lv.v1 = 0.5;
  lv.v2 = 25183;
  lv.v3 = 5118;
  return lv;
}
int zig_recv_D_Ui_Ui(struct D_Ui_Ui);
int send_D_Ui_Ui(){
  struct D_Ui_Ui lv;
  lv.v1 = 0.5;
  lv.v2 = 25183;
  lv.v3 = 5118;
  return zig_recv_D_Ui_Ui(lv);
}

int recv_D_Ui_Ul(struct D_Ui_Ul lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 14606) return 2;
  if (lv.v3 != 16268) return 3;
  return 0;
}
struct D_Ui_Ul ret_D_Ui_Ul(){
  struct D_Ui_Ul lv;
  lv.v1 = -0.25;
  lv.v2 = 14606;
  lv.v3 = 16268;
  return lv;
}
int zig_recv_D_Ui_Ul(struct D_Ui_Ul);
int send_D_Ui_Ul(){
  struct D_Ui_Ul lv;
  lv.v1 = -0.25;
  lv.v2 = 14606;
  lv.v3 = 16268;
  return zig_recv_D_Ui_Ul(lv);
}

int recv_D_Ui_Us(struct D_Ui_Us lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 5295) return 2;
  if (lv.v3 != 5718) return 3;
  return 0;
}
struct D_Ui_Us ret_D_Ui_Us(){
  struct D_Ui_Us lv;
  lv.v1 = -0.25;
  lv.v2 = 5295;
  lv.v3 = 5718;
  return lv;
}
int zig_recv_D_Ui_Us(struct D_Ui_Us);
int send_D_Ui_Us(){
  struct D_Ui_Us lv;
  lv.v1 = -0.25;
  lv.v2 = 5295;
  lv.v3 = 5718;
  return zig_recv_D_Ui_Us(lv);
}

int recv_D_Ui_Vp(struct D_Ui_Vp lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 31290) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Ui_Vp ret_D_Ui_Vp(){
  struct D_Ui_Vp lv;
  lv.v1 = -0.25;
  lv.v2 = 31290;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Ui_Vp(struct D_Ui_Vp);
int send_D_Ui_Vp(){
  struct D_Ui_Vp lv;
  lv.v1 = -0.25;
  lv.v2 = 31290;
  lv.v3 = 0;
  return zig_recv_D_Ui_Vp(lv);
}

int recv_D_Ul(struct D_Ul lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 8168) return 2;
  return 0;
}
struct D_Ul ret_D_Ul(){
  struct D_Ul lv;
  lv.v1 = 0.875;
  lv.v2 = 8168;
  return lv;
}
int zig_recv_D_Ul(struct D_Ul);
int send_D_Ul(){
  struct D_Ul lv;
  lv.v1 = 0.875;
  lv.v2 = 8168;
  return zig_recv_D_Ul(lv);
}

int recv_D_Ul_C(struct D_Ul_C lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 27350) return 2;
  if (lv.v3 != 87) return 3;
  return 0;
}
struct D_Ul_C ret_D_Ul_C(){
  struct D_Ul_C lv;
  lv.v1 = 0.875;
  lv.v2 = 27350;
  lv.v3 = 87;
  return lv;
}
int zig_recv_D_Ul_C(struct D_Ul_C);
int send_D_Ul_C(){
  struct D_Ul_C lv;
  lv.v1 = 0.875;
  lv.v2 = 27350;
  lv.v3 = 87;
  return zig_recv_D_Ul_C(lv);
}

int recv_D_Ul_D(struct D_Ul_D lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 587) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct D_Ul_D ret_D_Ul_D(){
  struct D_Ul_D lv;
  lv.v1 = 4.5;
  lv.v2 = 587;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_D_Ul_D(struct D_Ul_D);
int send_D_Ul_D(){
  struct D_Ul_D lv;
  lv.v1 = 4.5;
  lv.v2 = 587;
  lv.v3 = -0.25;
  return zig_recv_D_Ul_D(lv);
}

int recv_D_Ul_F(struct D_Ul_F lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 28666) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct D_Ul_F ret_D_Ul_F(){
  struct D_Ul_F lv;
  lv.v1 = -2.125;
  lv.v2 = 28666;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_D_Ul_F(struct D_Ul_F);
int send_D_Ul_F(){
  struct D_Ul_F lv;
  lv.v1 = -2.125;
  lv.v2 = 28666;
  lv.v3 = -2.125;
  return zig_recv_D_Ul_F(lv);
}

int recv_D_Ul_I(struct D_Ul_I lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 17316) return 2;
  if (lv.v3 != 27169) return 3;
  return 0;
}
struct D_Ul_I ret_D_Ul_I(){
  struct D_Ul_I lv;
  lv.v1 = 7.0;
  lv.v2 = 17316;
  lv.v3 = 27169;
  return lv;
}
int zig_recv_D_Ul_I(struct D_Ul_I);
int send_D_Ul_I(){
  struct D_Ul_I lv;
  lv.v1 = 7.0;
  lv.v2 = 17316;
  lv.v3 = 27169;
  return zig_recv_D_Ul_I(lv);
}

int recv_D_Ul_Ip(struct D_Ul_Ip lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 30080) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Ul_Ip ret_D_Ul_Ip(){
  struct D_Ul_Ip lv;
  lv.v1 = 4.5;
  lv.v2 = 30080;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Ul_Ip(struct D_Ul_Ip);
int send_D_Ul_Ip(){
  struct D_Ul_Ip lv;
  lv.v1 = 4.5;
  lv.v2 = 30080;
  lv.v3 = 0;
  return zig_recv_D_Ul_Ip(lv);
}

int recv_D_Ul_L(struct D_Ul_L lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 2358) return 2;
  if (lv.v3 != 13997) return 3;
  return 0;
}
struct D_Ul_L ret_D_Ul_L(){
  struct D_Ul_L lv;
  lv.v1 = -2.125;
  lv.v2 = 2358;
  lv.v3 = 13997;
  return lv;
}
int zig_recv_D_Ul_L(struct D_Ul_L);
int send_D_Ul_L(){
  struct D_Ul_L lv;
  lv.v1 = -2.125;
  lv.v2 = 2358;
  lv.v3 = 13997;
  return zig_recv_D_Ul_L(lv);
}

int recv_D_Ul_S(struct D_Ul_S lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 8874) return 2;
  if (lv.v3 != 15227) return 3;
  return 0;
}
struct D_Ul_S ret_D_Ul_S(){
  struct D_Ul_S lv;
  lv.v1 = 0.875;
  lv.v2 = 8874;
  lv.v3 = 15227;
  return lv;
}
int zig_recv_D_Ul_S(struct D_Ul_S);
int send_D_Ul_S(){
  struct D_Ul_S lv;
  lv.v1 = 0.875;
  lv.v2 = 8874;
  lv.v3 = 15227;
  return zig_recv_D_Ul_S(lv);
}

int recv_D_Ul_Uc(struct D_Ul_Uc lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 28411) return 2;
  if (lv.v3 != 19) return 3;
  return 0;
}
struct D_Ul_Uc ret_D_Ul_Uc(){
  struct D_Ul_Uc lv;
  lv.v1 = 0.875;
  lv.v2 = 28411;
  lv.v3 = 19;
  return lv;
}
int zig_recv_D_Ul_Uc(struct D_Ul_Uc);
int send_D_Ul_Uc(){
  struct D_Ul_Uc lv;
  lv.v1 = 0.875;
  lv.v2 = 28411;
  lv.v3 = 19;
  return zig_recv_D_Ul_Uc(lv);
}

int recv_D_Ul_Ui(struct D_Ul_Ui lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 18969) return 2;
  if (lv.v3 != 19676) return 3;
  return 0;
}
struct D_Ul_Ui ret_D_Ul_Ui(){
  struct D_Ul_Ui lv;
  lv.v1 = 0.875;
  lv.v2 = 18969;
  lv.v3 = 19676;
  return lv;
}
int zig_recv_D_Ul_Ui(struct D_Ul_Ui);
int send_D_Ul_Ui(){
  struct D_Ul_Ui lv;
  lv.v1 = 0.875;
  lv.v2 = 18969;
  lv.v3 = 19676;
  return zig_recv_D_Ul_Ui(lv);
}

int recv_D_Ul_Ul(struct D_Ul_Ul lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 30271) return 2;
  if (lv.v3 != 30455) return 3;
  return 0;
}
struct D_Ul_Ul ret_D_Ul_Ul(){
  struct D_Ul_Ul lv;
  lv.v1 = 0.875;
  lv.v2 = 30271;
  lv.v3 = 30455;
  return lv;
}
int zig_recv_D_Ul_Ul(struct D_Ul_Ul);
int send_D_Ul_Ul(){
  struct D_Ul_Ul lv;
  lv.v1 = 0.875;
  lv.v2 = 30271;
  lv.v3 = 30455;
  return zig_recv_D_Ul_Ul(lv);
}

int recv_D_Ul_Us(struct D_Ul_Us lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 27872) return 2;
  if (lv.v3 != 13199) return 3;
  return 0;
}
struct D_Ul_Us ret_D_Ul_Us(){
  struct D_Ul_Us lv;
  lv.v1 = 4.5;
  lv.v2 = 27872;
  lv.v3 = 13199;
  return lv;
}
int zig_recv_D_Ul_Us(struct D_Ul_Us);
int send_D_Ul_Us(){
  struct D_Ul_Us lv;
  lv.v1 = 4.5;
  lv.v2 = 27872;
  lv.v3 = 13199;
  return zig_recv_D_Ul_Us(lv);
}

int recv_D_Ul_Vp(struct D_Ul_Vp lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 12549) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Ul_Vp ret_D_Ul_Vp(){
  struct D_Ul_Vp lv;
  lv.v1 = 1.0;
  lv.v2 = 12549;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Ul_Vp(struct D_Ul_Vp);
int send_D_Ul_Vp(){
  struct D_Ul_Vp lv;
  lv.v1 = 1.0;
  lv.v2 = 12549;
  lv.v3 = 0;
  return zig_recv_D_Ul_Vp(lv);
}

int recv_D_Us(struct D_Us lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 12975) return 2;
  return 0;
}
struct D_Us ret_D_Us(){
  struct D_Us lv;
  lv.v1 = 0.875;
  lv.v2 = 12975;
  return lv;
}
int zig_recv_D_Us(struct D_Us);
int send_D_Us(){
  struct D_Us lv;
  lv.v1 = 0.875;
  lv.v2 = 12975;
  return zig_recv_D_Us(lv);
}

int recv_D_Us_C(struct D_Us_C lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 17159) return 2;
  if (lv.v3 != 57) return 3;
  return 0;
}
struct D_Us_C ret_D_Us_C(){
  struct D_Us_C lv;
  lv.v1 = 0.875;
  lv.v2 = 17159;
  lv.v3 = 57;
  return lv;
}
int zig_recv_D_Us_C(struct D_Us_C);
int send_D_Us_C(){
  struct D_Us_C lv;
  lv.v1 = 0.875;
  lv.v2 = 17159;
  lv.v3 = 57;
  return zig_recv_D_Us_C(lv);
}

int recv_D_Us_D(struct D_Us_D lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 11426) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct D_Us_D ret_D_Us_D(){
  struct D_Us_D lv;
  lv.v1 = 4.5;
  lv.v2 = 11426;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_D_Us_D(struct D_Us_D);
int send_D_Us_D(){
  struct D_Us_D lv;
  lv.v1 = 4.5;
  lv.v2 = 11426;
  lv.v3 = 0.5;
  return zig_recv_D_Us_D(lv);
}

int recv_D_Us_F(struct D_Us_F lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 4636) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct D_Us_F ret_D_Us_F(){
  struct D_Us_F lv;
  lv.v1 = 1.0;
  lv.v2 = 4636;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_D_Us_F(struct D_Us_F);
int send_D_Us_F(){
  struct D_Us_F lv;
  lv.v1 = 1.0;
  lv.v2 = 4636;
  lv.v3 = 0.875;
  return zig_recv_D_Us_F(lv);
}

int recv_D_Us_I(struct D_Us_I lv){
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 24377) return 2;
  if (lv.v3 != 30464) return 3;
  return 0;
}
struct D_Us_I ret_D_Us_I(){
  struct D_Us_I lv;
  lv.v1 = -0.25;
  lv.v2 = 24377;
  lv.v3 = 30464;
  return lv;
}
int zig_recv_D_Us_I(struct D_Us_I);
int send_D_Us_I(){
  struct D_Us_I lv;
  lv.v1 = -0.25;
  lv.v2 = 24377;
  lv.v3 = 30464;
  return zig_recv_D_Us_I(lv);
}

int recv_D_Us_Ip(struct D_Us_Ip lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 8479) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Us_Ip ret_D_Us_Ip(){
  struct D_Us_Ip lv;
  lv.v1 = 7.0;
  lv.v2 = 8479;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Us_Ip(struct D_Us_Ip);
int send_D_Us_Ip(){
  struct D_Us_Ip lv;
  lv.v1 = 7.0;
  lv.v2 = 8479;
  lv.v3 = 0;
  return zig_recv_D_Us_Ip(lv);
}

int recv_D_Us_L(struct D_Us_L lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 15583) return 2;
  if (lv.v3 != 10458) return 3;
  return 0;
}
struct D_Us_L ret_D_Us_L(){
  struct D_Us_L lv;
  lv.v1 = -2.125;
  lv.v2 = 15583;
  lv.v3 = 10458;
  return lv;
}
int zig_recv_D_Us_L(struct D_Us_L);
int send_D_Us_L(){
  struct D_Us_L lv;
  lv.v1 = -2.125;
  lv.v2 = 15583;
  lv.v3 = 10458;
  return zig_recv_D_Us_L(lv);
}

int recv_D_Us_S(struct D_Us_S lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 18238) return 2;
  if (lv.v3 != 13155) return 3;
  return 0;
}
struct D_Us_S ret_D_Us_S(){
  struct D_Us_S lv;
  lv.v1 = 7.0;
  lv.v2 = 18238;
  lv.v3 = 13155;
  return lv;
}
int zig_recv_D_Us_S(struct D_Us_S);
int send_D_Us_S(){
  struct D_Us_S lv;
  lv.v1 = 7.0;
  lv.v2 = 18238;
  lv.v3 = 13155;
  return zig_recv_D_Us_S(lv);
}

int recv_D_Us_Uc(struct D_Us_Uc lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 21067) return 2;
  if (lv.v3 != 10) return 3;
  return 0;
}
struct D_Us_Uc ret_D_Us_Uc(){
  struct D_Us_Uc lv;
  lv.v1 = 7.0;
  lv.v2 = 21067;
  lv.v3 = 10;
  return lv;
}
int zig_recv_D_Us_Uc(struct D_Us_Uc);
int send_D_Us_Uc(){
  struct D_Us_Uc lv;
  lv.v1 = 7.0;
  lv.v2 = 21067;
  lv.v3 = 10;
  return zig_recv_D_Us_Uc(lv);
}

int recv_D_Us_Ui(struct D_Us_Ui lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 28382) return 2;
  if (lv.v3 != 27699) return 3;
  return 0;
}
struct D_Us_Ui ret_D_Us_Ui(){
  struct D_Us_Ui lv;
  lv.v1 = 7.0;
  lv.v2 = 28382;
  lv.v3 = 27699;
  return lv;
}
int zig_recv_D_Us_Ui(struct D_Us_Ui);
int send_D_Us_Ui(){
  struct D_Us_Ui lv;
  lv.v1 = 7.0;
  lv.v2 = 28382;
  lv.v3 = 27699;
  return zig_recv_D_Us_Ui(lv);
}

int recv_D_Us_Ul(struct D_Us_Ul lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 14224) return 2;
  if (lv.v3 != 23309) return 3;
  return 0;
}
struct D_Us_Ul ret_D_Us_Ul(){
  struct D_Us_Ul lv;
  lv.v1 = 4.5;
  lv.v2 = 14224;
  lv.v3 = 23309;
  return lv;
}
int zig_recv_D_Us_Ul(struct D_Us_Ul);
int send_D_Us_Ul(){
  struct D_Us_Ul lv;
  lv.v1 = 4.5;
  lv.v2 = 14224;
  lv.v3 = 23309;
  return zig_recv_D_Us_Ul(lv);
}

int recv_D_Us_Us(struct D_Us_Us lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 21806) return 2;
  if (lv.v3 != 21300) return 3;
  return 0;
}
struct D_Us_Us ret_D_Us_Us(){
  struct D_Us_Us lv;
  lv.v1 = 0.5;
  lv.v2 = 21806;
  lv.v3 = 21300;
  return lv;
}
int zig_recv_D_Us_Us(struct D_Us_Us);
int send_D_Us_Us(){
  struct D_Us_Us lv;
  lv.v1 = 0.5;
  lv.v2 = 21806;
  lv.v3 = 21300;
  return zig_recv_D_Us_Us(lv);
}

int recv_D_Us_Vp(struct D_Us_Vp lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 5932) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Us_Vp ret_D_Us_Vp(){
  struct D_Us_Vp lv;
  lv.v1 = 1.0;
  lv.v2 = 5932;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Us_Vp(struct D_Us_Vp);
int send_D_Us_Vp(){
  struct D_Us_Vp lv;
  lv.v1 = 1.0;
  lv.v2 = 5932;
  lv.v3 = 0;
  return zig_recv_D_Us_Vp(lv);
}

int recv_D_Vp(struct D_Vp lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct D_Vp ret_D_Vp(){
  struct D_Vp lv;
  lv.v1 = 0.875;
  lv.v2 = 0;
  return lv;
}
int zig_recv_D_Vp(struct D_Vp);
int send_D_Vp(){
  struct D_Vp lv;
  lv.v1 = 0.875;
  lv.v2 = 0;
  return zig_recv_D_Vp(lv);
}

int recv_D_Vp_C(struct D_Vp_C lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 20) return 3;
  return 0;
}
struct D_Vp_C ret_D_Vp_C(){
  struct D_Vp_C lv;
  lv.v1 = -2.125;
  lv.v2 = 0;
  lv.v3 = 20;
  return lv;
}
int zig_recv_D_Vp_C(struct D_Vp_C);
int send_D_Vp_C(){
  struct D_Vp_C lv;
  lv.v1 = -2.125;
  lv.v2 = 0;
  lv.v3 = 20;
  return zig_recv_D_Vp_C(lv);
}

int recv_D_Vp_D(struct D_Vp_D lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct D_Vp_D ret_D_Vp_D(){
  struct D_Vp_D lv;
  lv.v1 = 7.0;
  lv.v2 = 0;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_D_Vp_D(struct D_Vp_D);
int send_D_Vp_D(){
  struct D_Vp_D lv;
  lv.v1 = 7.0;
  lv.v2 = 0;
  lv.v3 = 4.5;
  return zig_recv_D_Vp_D(lv);
}

int recv_D_Vp_F(struct D_Vp_F lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct D_Vp_F ret_D_Vp_F(){
  struct D_Vp_F lv;
  lv.v1 = 4.5;
  lv.v2 = 0;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_D_Vp_F(struct D_Vp_F);
int send_D_Vp_F(){
  struct D_Vp_F lv;
  lv.v1 = 4.5;
  lv.v2 = 0;
  lv.v3 = 4.5;
  return zig_recv_D_Vp_F(lv);
}

int recv_D_Vp_I(struct D_Vp_I lv){
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 16435) return 3;
  return 0;
}
struct D_Vp_I ret_D_Vp_I(){
  struct D_Vp_I lv;
  lv.v1 = 4.5;
  lv.v2 = 0;
  lv.v3 = 16435;
  return lv;
}
int zig_recv_D_Vp_I(struct D_Vp_I);
int send_D_Vp_I(){
  struct D_Vp_I lv;
  lv.v1 = 4.5;
  lv.v2 = 0;
  lv.v3 = 16435;
  return zig_recv_D_Vp_I(lv);
}

int recv_D_Vp_Ip(struct D_Vp_Ip lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Vp_Ip ret_D_Vp_Ip(){
  struct D_Vp_Ip lv;
  lv.v1 = 7.0;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Vp_Ip(struct D_Vp_Ip);
int send_D_Vp_Ip(){
  struct D_Vp_Ip lv;
  lv.v1 = 7.0;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_D_Vp_Ip(lv);
}

int recv_D_Vp_L(struct D_Vp_L lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 32159) return 3;
  return 0;
}
struct D_Vp_L ret_D_Vp_L(){
  struct D_Vp_L lv;
  lv.v1 = 7.0;
  lv.v2 = 0;
  lv.v3 = 32159;
  return lv;
}
int zig_recv_D_Vp_L(struct D_Vp_L);
int send_D_Vp_L(){
  struct D_Vp_L lv;
  lv.v1 = 7.0;
  lv.v2 = 0;
  lv.v3 = 32159;
  return zig_recv_D_Vp_L(lv);
}

int recv_D_Vp_S(struct D_Vp_S lv){
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4705) return 3;
  return 0;
}
struct D_Vp_S ret_D_Vp_S(){
  struct D_Vp_S lv;
  lv.v1 = 7.0;
  lv.v2 = 0;
  lv.v3 = 4705;
  return lv;
}
int zig_recv_D_Vp_S(struct D_Vp_S);
int send_D_Vp_S(){
  struct D_Vp_S lv;
  lv.v1 = 7.0;
  lv.v2 = 0;
  lv.v3 = 4705;
  return zig_recv_D_Vp_S(lv);
}

int recv_D_Vp_Uc(struct D_Vp_Uc lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 66) return 3;
  return 0;
}
struct D_Vp_Uc ret_D_Vp_Uc(){
  struct D_Vp_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = 0;
  lv.v3 = 66;
  return lv;
}
int zig_recv_D_Vp_Uc(struct D_Vp_Uc);
int send_D_Vp_Uc(){
  struct D_Vp_Uc lv;
  lv.v1 = -2.125;
  lv.v2 = 0;
  lv.v3 = 66;
  return zig_recv_D_Vp_Uc(lv);
}

int recv_D_Vp_Ui(struct D_Vp_Ui lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 21260) return 3;
  return 0;
}
struct D_Vp_Ui ret_D_Vp_Ui(){
  struct D_Vp_Ui lv;
  lv.v1 = 1.0;
  lv.v2 = 0;
  lv.v3 = 21260;
  return lv;
}
int zig_recv_D_Vp_Ui(struct D_Vp_Ui);
int send_D_Vp_Ui(){
  struct D_Vp_Ui lv;
  lv.v1 = 1.0;
  lv.v2 = 0;
  lv.v3 = 21260;
  return zig_recv_D_Vp_Ui(lv);
}

int recv_D_Vp_Ul(struct D_Vp_Ul lv){
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 14614) return 3;
  return 0;
}
struct D_Vp_Ul ret_D_Vp_Ul(){
  struct D_Vp_Ul lv;
  lv.v1 = -2.125;
  lv.v2 = 0;
  lv.v3 = 14614;
  return lv;
}
int zig_recv_D_Vp_Ul(struct D_Vp_Ul);
int send_D_Vp_Ul(){
  struct D_Vp_Ul lv;
  lv.v1 = -2.125;
  lv.v2 = 0;
  lv.v3 = 14614;
  return zig_recv_D_Vp_Ul(lv);
}

int recv_D_Vp_Us(struct D_Vp_Us lv){
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 19406) return 3;
  return 0;
}
struct D_Vp_Us ret_D_Vp_Us(){
  struct D_Vp_Us lv;
  lv.v1 = 1.0;
  lv.v2 = 0;
  lv.v3 = 19406;
  return lv;
}
int zig_recv_D_Vp_Us(struct D_Vp_Us);
int send_D_Vp_Us(){
  struct D_Vp_Us lv;
  lv.v1 = 1.0;
  lv.v2 = 0;
  lv.v3 = 19406;
  return zig_recv_D_Vp_Us(lv);
}

int recv_D_Vp_Vp(struct D_Vp_Vp lv){
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct D_Vp_Vp ret_D_Vp_Vp(){
  struct D_Vp_Vp lv;
  lv.v1 = 0.875;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_D_Vp_Vp(struct D_Vp_Vp);
int send_D_Vp_Vp(){
  struct D_Vp_Vp lv;
  lv.v1 = 0.875;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_D_Vp_Vp(lv);
}

int recv_F(struct F lv){
  if (lv.v1 != 4.5) return 1;
  return 0;
}
struct F ret_F(){
  struct F lv;
  lv.v1 = 4.5;
  return lv;
}
int zig_recv_F(struct F);
int send_F(){
  struct F lv;
  lv.v1 = 4.5;
  return zig_recv_F(lv);
}

