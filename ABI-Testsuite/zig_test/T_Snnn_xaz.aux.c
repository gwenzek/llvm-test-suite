#include "T_Snnn_xaz.h"

int recv_L_Ui_C(struct L_Ui_C lv){
  if (lv.v1 != 22229) return 1;
  if (lv.v2 != 18392) return 2;
  if (lv.v3 != 126) return 3;
  return 0;
}
struct L_Ui_C ret_L_Ui_C(){
  struct L_Ui_C lv;
  lv.v1 = 22229;
  lv.v2 = 18392;
  lv.v3 = 126;
  return lv;
}
int zig_recv_L_Ui_C(struct L_Ui_C);
int send_L_Ui_C(){
  struct L_Ui_C lv;
  lv.v1 = 22229;
  lv.v2 = 18392;
  lv.v3 = 126;
  return zig_recv_L_Ui_C(lv);
}

int recv_L_Ui_D(struct L_Ui_D lv){
  if (lv.v1 != 4364) return 1;
  if (lv.v2 != 4043) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct L_Ui_D ret_L_Ui_D(){
  struct L_Ui_D lv;
  lv.v1 = 4364;
  lv.v2 = 4043;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_L_Ui_D(struct L_Ui_D);
int send_L_Ui_D(){
  struct L_Ui_D lv;
  lv.v1 = 4364;
  lv.v2 = 4043;
  lv.v3 = 1.0;
  return zig_recv_L_Ui_D(lv);
}

int recv_L_Ui_F(struct L_Ui_F lv){
  if (lv.v1 != 15560) return 1;
  if (lv.v2 != 31105) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct L_Ui_F ret_L_Ui_F(){
  struct L_Ui_F lv;
  lv.v1 = 15560;
  lv.v2 = 31105;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_L_Ui_F(struct L_Ui_F);
int send_L_Ui_F(){
  struct L_Ui_F lv;
  lv.v1 = 15560;
  lv.v2 = 31105;
  lv.v3 = 0.5;
  return zig_recv_L_Ui_F(lv);
}

int recv_L_Ui_I(struct L_Ui_I lv){
  if (lv.v1 != 18807) return 1;
  if (lv.v2 != 29443) return 2;
  if (lv.v3 != 31384) return 3;
  return 0;
}
struct L_Ui_I ret_L_Ui_I(){
  struct L_Ui_I lv;
  lv.v1 = 18807;
  lv.v2 = 29443;
  lv.v3 = 31384;
  return lv;
}
int zig_recv_L_Ui_I(struct L_Ui_I);
int send_L_Ui_I(){
  struct L_Ui_I lv;
  lv.v1 = 18807;
  lv.v2 = 29443;
  lv.v3 = 31384;
  return zig_recv_L_Ui_I(lv);
}

int recv_L_Ui_Ip(struct L_Ui_Ip lv){
  if (lv.v1 != 21683) return 1;
  if (lv.v2 != 6694) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct L_Ui_Ip ret_L_Ui_Ip(){
  struct L_Ui_Ip lv;
  lv.v1 = 21683;
  lv.v2 = 6694;
  lv.v3 = 0;
  return lv;
}
int zig_recv_L_Ui_Ip(struct L_Ui_Ip);
int send_L_Ui_Ip(){
  struct L_Ui_Ip lv;
  lv.v1 = 21683;
  lv.v2 = 6694;
  lv.v3 = 0;
  return zig_recv_L_Ui_Ip(lv);
}

int recv_L_Ui_L(struct L_Ui_L lv){
  if (lv.v1 != 30784) return 1;
  if (lv.v2 != 20862) return 2;
  if (lv.v3 != 22931) return 3;
  return 0;
}
struct L_Ui_L ret_L_Ui_L(){
  struct L_Ui_L lv;
  lv.v1 = 30784;
  lv.v2 = 20862;
  lv.v3 = 22931;
  return lv;
}
int zig_recv_L_Ui_L(struct L_Ui_L);
int send_L_Ui_L(){
  struct L_Ui_L lv;
  lv.v1 = 30784;
  lv.v2 = 20862;
  lv.v3 = 22931;
  return zig_recv_L_Ui_L(lv);
}

int recv_L_Ui_S(struct L_Ui_S lv){
  if (lv.v1 != 854) return 1;
  if (lv.v2 != 17586) return 2;
  if (lv.v3 != 6140) return 3;
  return 0;
}
struct L_Ui_S ret_L_Ui_S(){
  struct L_Ui_S lv;
  lv.v1 = 854;
  lv.v2 = 17586;
  lv.v3 = 6140;
  return lv;
}
int zig_recv_L_Ui_S(struct L_Ui_S);
int send_L_Ui_S(){
  struct L_Ui_S lv;
  lv.v1 = 854;
  lv.v2 = 17586;
  lv.v3 = 6140;
  return zig_recv_L_Ui_S(lv);
}

int recv_L_Ui_Uc(struct L_Ui_Uc lv){
  if (lv.v1 != 3456) return 1;
  if (lv.v2 != 23186) return 2;
  if (lv.v3 != 19) return 3;
  return 0;
}
struct L_Ui_Uc ret_L_Ui_Uc(){
  struct L_Ui_Uc lv;
  lv.v1 = 3456;
  lv.v2 = 23186;
  lv.v3 = 19;
  return lv;
}
int zig_recv_L_Ui_Uc(struct L_Ui_Uc);
int send_L_Ui_Uc(){
  struct L_Ui_Uc lv;
  lv.v1 = 3456;
  lv.v2 = 23186;
  lv.v3 = 19;
  return zig_recv_L_Ui_Uc(lv);
}

int recv_L_Ui_Ui(struct L_Ui_Ui lv){
  if (lv.v1 != 32273) return 1;
  if (lv.v2 != 8038) return 2;
  if (lv.v3 != 21388) return 3;
  return 0;
}
struct L_Ui_Ui ret_L_Ui_Ui(){
  struct L_Ui_Ui lv;
  lv.v1 = 32273;
  lv.v2 = 8038;
  lv.v3 = 21388;
  return lv;
}
int zig_recv_L_Ui_Ui(struct L_Ui_Ui);
int send_L_Ui_Ui(){
  struct L_Ui_Ui lv;
  lv.v1 = 32273;
  lv.v2 = 8038;
  lv.v3 = 21388;
  return zig_recv_L_Ui_Ui(lv);
}

int recv_L_Ui_Ul(struct L_Ui_Ul lv){
  if (lv.v1 != 8766) return 1;
  if (lv.v2 != 5102) return 2;
  if (lv.v3 != 22976) return 3;
  return 0;
}
struct L_Ui_Ul ret_L_Ui_Ul(){
  struct L_Ui_Ul lv;
  lv.v1 = 8766;
  lv.v2 = 5102;
  lv.v3 = 22976;
  return lv;
}
int zig_recv_L_Ui_Ul(struct L_Ui_Ul);
int send_L_Ui_Ul(){
  struct L_Ui_Ul lv;
  lv.v1 = 8766;
  lv.v2 = 5102;
  lv.v3 = 22976;
  return zig_recv_L_Ui_Ul(lv);
}

int recv_L_Ui_Us(struct L_Ui_Us lv){
  if (lv.v1 != 9990) return 1;
  if (lv.v2 != 27090) return 2;
  if (lv.v3 != 3983) return 3;
  return 0;
}
struct L_Ui_Us ret_L_Ui_Us(){
  struct L_Ui_Us lv;
  lv.v1 = 9990;
  lv.v2 = 27090;
  lv.v3 = 3983;
  return lv;
}
int zig_recv_L_Ui_Us(struct L_Ui_Us);
int send_L_Ui_Us(){
  struct L_Ui_Us lv;
  lv.v1 = 9990;
  lv.v2 = 27090;
  lv.v3 = 3983;
  return zig_recv_L_Ui_Us(lv);
}

int recv_L_Ui_Vp(struct L_Ui_Vp lv){
  if (lv.v1 != 9177) return 1;
  if (lv.v2 != 3) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct L_Ui_Vp ret_L_Ui_Vp(){
  struct L_Ui_Vp lv;
  lv.v1 = 9177;
  lv.v2 = 3;
  lv.v3 = 0;
  return lv;
}
int zig_recv_L_Ui_Vp(struct L_Ui_Vp);
int send_L_Ui_Vp(){
  struct L_Ui_Vp lv;
  lv.v1 = 9177;
  lv.v2 = 3;
  lv.v3 = 0;
  return zig_recv_L_Ui_Vp(lv);
}

int recv_L_Ul(struct L_Ul lv){
  if (lv.v1 != 17256) return 1;
  if (lv.v2 != 28277) return 2;
  return 0;
}
struct L_Ul ret_L_Ul(){
  struct L_Ul lv;
  lv.v1 = 17256;
  lv.v2 = 28277;
  return lv;
}
int zig_recv_L_Ul(struct L_Ul);
int send_L_Ul(){
  struct L_Ul lv;
  lv.v1 = 17256;
  lv.v2 = 28277;
  return zig_recv_L_Ul(lv);
}

int recv_L_Ul_C(struct L_Ul_C lv){
  if (lv.v1 != 11968) return 1;
  if (lv.v2 != 8997) return 2;
  if (lv.v3 != 36) return 3;
  return 0;
}
struct L_Ul_C ret_L_Ul_C(){
  struct L_Ul_C lv;
  lv.v1 = 11968;
  lv.v2 = 8997;
  lv.v3 = 36;
  return lv;
}
int zig_recv_L_Ul_C(struct L_Ul_C);
int send_L_Ul_C(){
  struct L_Ul_C lv;
  lv.v1 = 11968;
  lv.v2 = 8997;
  lv.v3 = 36;
  return zig_recv_L_Ul_C(lv);
}

int recv_L_Ul_D(struct L_Ul_D lv){
  if (lv.v1 != 7306) return 1;
  if (lv.v2 != 19278) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct L_Ul_D ret_L_Ul_D(){
  struct L_Ul_D lv;
  lv.v1 = 7306;
  lv.v2 = 19278;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_L_Ul_D(struct L_Ul_D);
int send_L_Ul_D(){
  struct L_Ul_D lv;
  lv.v1 = 7306;
  lv.v2 = 19278;
  lv.v3 = 0.875;
  return zig_recv_L_Ul_D(lv);
}

int recv_L_Ul_F(struct L_Ul_F lv){
  if (lv.v1 != 1649) return 1;
  if (lv.v2 != 17697) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct L_Ul_F ret_L_Ul_F(){
  struct L_Ul_F lv;
  lv.v1 = 1649;
  lv.v2 = 17697;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_L_Ul_F(struct L_Ul_F);
int send_L_Ul_F(){
  struct L_Ul_F lv;
  lv.v1 = 1649;
  lv.v2 = 17697;
  lv.v3 = 1.0;
  return zig_recv_L_Ul_F(lv);
}

int recv_L_Ul_I(struct L_Ul_I lv){
  if (lv.v1 != 21587) return 1;
  if (lv.v2 != 3617) return 2;
  if (lv.v3 != 29303) return 3;
  return 0;
}
struct L_Ul_I ret_L_Ul_I(){
  struct L_Ul_I lv;
  lv.v1 = 21587;
  lv.v2 = 3617;
  lv.v3 = 29303;
  return lv;
}
int zig_recv_L_Ul_I(struct L_Ul_I);
int send_L_Ul_I(){
  struct L_Ul_I lv;
  lv.v1 = 21587;
  lv.v2 = 3617;
  lv.v3 = 29303;
  return zig_recv_L_Ul_I(lv);
}

int recv_L_Ul_Ip(struct L_Ul_Ip lv){
  if (lv.v1 != 31055) return 1;
  if (lv.v2 != 7464) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct L_Ul_Ip ret_L_Ul_Ip(){
  struct L_Ul_Ip lv;
  lv.v1 = 31055;
  lv.v2 = 7464;
  lv.v3 = 0;
  return lv;
}
int zig_recv_L_Ul_Ip(struct L_Ul_Ip);
int send_L_Ul_Ip(){
  struct L_Ul_Ip lv;
  lv.v1 = 31055;
  lv.v2 = 7464;
  lv.v3 = 0;
  return zig_recv_L_Ul_Ip(lv);
}

int recv_L_Ul_L(struct L_Ul_L lv){
  if (lv.v1 != 29152) return 1;
  if (lv.v2 != 21630) return 2;
  if (lv.v3 != 3748) return 3;
  return 0;
}
struct L_Ul_L ret_L_Ul_L(){
  struct L_Ul_L lv;
  lv.v1 = 29152;
  lv.v2 = 21630;
  lv.v3 = 3748;
  return lv;
}
int zig_recv_L_Ul_L(struct L_Ul_L);
int send_L_Ul_L(){
  struct L_Ul_L lv;
  lv.v1 = 29152;
  lv.v2 = 21630;
  lv.v3 = 3748;
  return zig_recv_L_Ul_L(lv);
}

int recv_L_Ul_S(struct L_Ul_S lv){
  if (lv.v1 != 9311) return 1;
  if (lv.v2 != 669) return 2;
  if (lv.v3 != 23564) return 3;
  return 0;
}
struct L_Ul_S ret_L_Ul_S(){
  struct L_Ul_S lv;
  lv.v1 = 9311;
  lv.v2 = 669;
  lv.v3 = 23564;
  return lv;
}
int zig_recv_L_Ul_S(struct L_Ul_S);
int send_L_Ul_S(){
  struct L_Ul_S lv;
  lv.v1 = 9311;
  lv.v2 = 669;
  lv.v3 = 23564;
  return zig_recv_L_Ul_S(lv);
}

int recv_L_Ul_Uc(struct L_Ul_Uc lv){
  if (lv.v1 != 23049) return 1;
  if (lv.v2 != 12157) return 2;
  if (lv.v3 != 42) return 3;
  return 0;
}
struct L_Ul_Uc ret_L_Ul_Uc(){
  struct L_Ul_Uc lv;
  lv.v1 = 23049;
  lv.v2 = 12157;
  lv.v3 = 42;
  return lv;
}
int zig_recv_L_Ul_Uc(struct L_Ul_Uc);
int send_L_Ul_Uc(){
  struct L_Ul_Uc lv;
  lv.v1 = 23049;
  lv.v2 = 12157;
  lv.v3 = 42;
  return zig_recv_L_Ul_Uc(lv);
}

int recv_L_Ul_Ui(struct L_Ul_Ui lv){
  if (lv.v1 != 20457) return 1;
  if (lv.v2 != 8644) return 2;
  if (lv.v3 != 22485) return 3;
  return 0;
}
struct L_Ul_Ui ret_L_Ul_Ui(){
  struct L_Ul_Ui lv;
  lv.v1 = 20457;
  lv.v2 = 8644;
  lv.v3 = 22485;
  return lv;
}
int zig_recv_L_Ul_Ui(struct L_Ul_Ui);
int send_L_Ul_Ui(){
  struct L_Ul_Ui lv;
  lv.v1 = 20457;
  lv.v2 = 8644;
  lv.v3 = 22485;
  return zig_recv_L_Ul_Ui(lv);
}

int recv_L_Ul_Ul(struct L_Ul_Ul lv){
  if (lv.v1 != 18808) return 1;
  if (lv.v2 != 30770) return 2;
  if (lv.v3 != 20216) return 3;
  return 0;
}
struct L_Ul_Ul ret_L_Ul_Ul(){
  struct L_Ul_Ul lv;
  lv.v1 = 18808;
  lv.v2 = 30770;
  lv.v3 = 20216;
  return lv;
}
int zig_recv_L_Ul_Ul(struct L_Ul_Ul);
int send_L_Ul_Ul(){
  struct L_Ul_Ul lv;
  lv.v1 = 18808;
  lv.v2 = 30770;
  lv.v3 = 20216;
  return zig_recv_L_Ul_Ul(lv);
}

int recv_L_Ul_Us(struct L_Ul_Us lv){
  if (lv.v1 != 19157) return 1;
  if (lv.v2 != 2550) return 2;
  if (lv.v3 != 22220) return 3;
  return 0;
}
struct L_Ul_Us ret_L_Ul_Us(){
  struct L_Ul_Us lv;
  lv.v1 = 19157;
  lv.v2 = 2550;
  lv.v3 = 22220;
  return lv;
}
int zig_recv_L_Ul_Us(struct L_Ul_Us);
int send_L_Ul_Us(){
  struct L_Ul_Us lv;
  lv.v1 = 19157;
  lv.v2 = 2550;
  lv.v3 = 22220;
  return zig_recv_L_Ul_Us(lv);
}

int recv_L_Ul_Vp(struct L_Ul_Vp lv){
  if (lv.v1 != 27157) return 1;
  if (lv.v2 != 30310) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct L_Ul_Vp ret_L_Ul_Vp(){
  struct L_Ul_Vp lv;
  lv.v1 = 27157;
  lv.v2 = 30310;
  lv.v3 = 0;
  return lv;
}
int zig_recv_L_Ul_Vp(struct L_Ul_Vp);
int send_L_Ul_Vp(){
  struct L_Ul_Vp lv;
  lv.v1 = 27157;
  lv.v2 = 30310;
  lv.v3 = 0;
  return zig_recv_L_Ul_Vp(lv);
}

int recv_L_Us(struct L_Us lv){
  if (lv.v1 != 5907) return 1;
  if (lv.v2 != 28729) return 2;
  return 0;
}
struct L_Us ret_L_Us(){
  struct L_Us lv;
  lv.v1 = 5907;
  lv.v2 = 28729;
  return lv;
}
int zig_recv_L_Us(struct L_Us);
int send_L_Us(){
  struct L_Us lv;
  lv.v1 = 5907;
  lv.v2 = 28729;
  return zig_recv_L_Us(lv);
}

int recv_L_Us_C(struct L_Us_C lv){
  if (lv.v1 != 28519) return 1;
  if (lv.v2 != 1409) return 2;
  if (lv.v3 != 28) return 3;
  return 0;
}
struct L_Us_C ret_L_Us_C(){
  struct L_Us_C lv;
  lv.v1 = 28519;
  lv.v2 = 1409;
  lv.v3 = 28;
  return lv;
}
int zig_recv_L_Us_C(struct L_Us_C);
int send_L_Us_C(){
  struct L_Us_C lv;
  lv.v1 = 28519;
  lv.v2 = 1409;
  lv.v3 = 28;
  return zig_recv_L_Us_C(lv);
}

int recv_L_Us_D(struct L_Us_D lv){
  if (lv.v1 != 31807) return 1;
  if (lv.v2 != 27910) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct L_Us_D ret_L_Us_D(){
  struct L_Us_D lv;
  lv.v1 = 31807;
  lv.v2 = 27910;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_L_Us_D(struct L_Us_D);
int send_L_Us_D(){
  struct L_Us_D lv;
  lv.v1 = 31807;
  lv.v2 = 27910;
  lv.v3 = -0.25;
  return zig_recv_L_Us_D(lv);
}

int recv_L_Us_F(struct L_Us_F lv){
  if (lv.v1 != 11891) return 1;
  if (lv.v2 != 17537) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct L_Us_F ret_L_Us_F(){
  struct L_Us_F lv;
  lv.v1 = 11891;
  lv.v2 = 17537;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_L_Us_F(struct L_Us_F);
int send_L_Us_F(){
  struct L_Us_F lv;
  lv.v1 = 11891;
  lv.v2 = 17537;
  lv.v3 = 0.5;
  return zig_recv_L_Us_F(lv);
}

int recv_L_Us_I(struct L_Us_I lv){
  if (lv.v1 != 29179) return 1;
  if (lv.v2 != 29384) return 2;
  if (lv.v3 != 6758) return 3;
  return 0;
}
struct L_Us_I ret_L_Us_I(){
  struct L_Us_I lv;
  lv.v1 = 29179;
  lv.v2 = 29384;
  lv.v3 = 6758;
  return lv;
}
int zig_recv_L_Us_I(struct L_Us_I);
int send_L_Us_I(){
  struct L_Us_I lv;
  lv.v1 = 29179;
  lv.v2 = 29384;
  lv.v3 = 6758;
  return zig_recv_L_Us_I(lv);
}

int recv_L_Us_Ip(struct L_Us_Ip lv){
  if (lv.v1 != 26415) return 1;
  if (lv.v2 != 30514) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct L_Us_Ip ret_L_Us_Ip(){
  struct L_Us_Ip lv;
  lv.v1 = 26415;
  lv.v2 = 30514;
  lv.v3 = 0;
  return lv;
}
int zig_recv_L_Us_Ip(struct L_Us_Ip);
int send_L_Us_Ip(){
  struct L_Us_Ip lv;
  lv.v1 = 26415;
  lv.v2 = 30514;
  lv.v3 = 0;
  return zig_recv_L_Us_Ip(lv);
}

int recv_L_Us_L(struct L_Us_L lv){
  if (lv.v1 != 16528) return 1;
  if (lv.v2 != 20020) return 2;
  if (lv.v3 != 10302) return 3;
  return 0;
}
struct L_Us_L ret_L_Us_L(){
  struct L_Us_L lv;
  lv.v1 = 16528;
  lv.v2 = 20020;
  lv.v3 = 10302;
  return lv;
}
int zig_recv_L_Us_L(struct L_Us_L);
int send_L_Us_L(){
  struct L_Us_L lv;
  lv.v1 = 16528;
  lv.v2 = 20020;
  lv.v3 = 10302;
  return zig_recv_L_Us_L(lv);
}

int recv_L_Us_S(struct L_Us_S lv){
  if (lv.v1 != 23024) return 1;
  if (lv.v2 != 26739) return 2;
  if (lv.v3 != 11991) return 3;
  return 0;
}
struct L_Us_S ret_L_Us_S(){
  struct L_Us_S lv;
  lv.v1 = 23024;
  lv.v2 = 26739;
  lv.v3 = 11991;
  return lv;
}
int zig_recv_L_Us_S(struct L_Us_S);
int send_L_Us_S(){
  struct L_Us_S lv;
  lv.v1 = 23024;
  lv.v2 = 26739;
  lv.v3 = 11991;
  return zig_recv_L_Us_S(lv);
}

int recv_L_Us_Uc(struct L_Us_Uc lv){
  if (lv.v1 != 8423) return 1;
  if (lv.v2 != 26054) return 2;
  if (lv.v3 != 29) return 3;
  return 0;
}
struct L_Us_Uc ret_L_Us_Uc(){
  struct L_Us_Uc lv;
  lv.v1 = 8423;
  lv.v2 = 26054;
  lv.v3 = 29;
  return lv;
}
int zig_recv_L_Us_Uc(struct L_Us_Uc);
int send_L_Us_Uc(){
  struct L_Us_Uc lv;
  lv.v1 = 8423;
  lv.v2 = 26054;
  lv.v3 = 29;
  return zig_recv_L_Us_Uc(lv);
}

int recv_L_Us_Ui(struct L_Us_Ui lv){
  if (lv.v1 != 8434) return 1;
  if (lv.v2 != 21731) return 2;
  if (lv.v3 != 32633) return 3;
  return 0;
}
struct L_Us_Ui ret_L_Us_Ui(){
  struct L_Us_Ui lv;
  lv.v1 = 8434;
  lv.v2 = 21731;
  lv.v3 = 32633;
  return lv;
}
int zig_recv_L_Us_Ui(struct L_Us_Ui);
int send_L_Us_Ui(){
  struct L_Us_Ui lv;
  lv.v1 = 8434;
  lv.v2 = 21731;
  lv.v3 = 32633;
  return zig_recv_L_Us_Ui(lv);
}

int recv_L_Us_Ul(struct L_Us_Ul lv){
  if (lv.v1 != 28279) return 1;
  if (lv.v2 != 29535) return 2;
  if (lv.v3 != 18832) return 3;
  return 0;
}
struct L_Us_Ul ret_L_Us_Ul(){
  struct L_Us_Ul lv;
  lv.v1 = 28279;
  lv.v2 = 29535;
  lv.v3 = 18832;
  return lv;
}
int zig_recv_L_Us_Ul(struct L_Us_Ul);
int send_L_Us_Ul(){
  struct L_Us_Ul lv;
  lv.v1 = 28279;
  lv.v2 = 29535;
  lv.v3 = 18832;
  return zig_recv_L_Us_Ul(lv);
}

int recv_L_Us_Us(struct L_Us_Us lv){
  if (lv.v1 != 2582) return 1;
  if (lv.v2 != 26820) return 2;
  if (lv.v3 != 32507) return 3;
  return 0;
}
struct L_Us_Us ret_L_Us_Us(){
  struct L_Us_Us lv;
  lv.v1 = 2582;
  lv.v2 = 26820;
  lv.v3 = 32507;
  return lv;
}
int zig_recv_L_Us_Us(struct L_Us_Us);
int send_L_Us_Us(){
  struct L_Us_Us lv;
  lv.v1 = 2582;
  lv.v2 = 26820;
  lv.v3 = 32507;
  return zig_recv_L_Us_Us(lv);
}

int recv_L_Us_Vp(struct L_Us_Vp lv){
  if (lv.v1 != 4984) return 1;
  if (lv.v2 != 31334) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct L_Us_Vp ret_L_Us_Vp(){
  struct L_Us_Vp lv;
  lv.v1 = 4984;
  lv.v2 = 31334;
  lv.v3 = 0;
  return lv;
}
int zig_recv_L_Us_Vp(struct L_Us_Vp);
int send_L_Us_Vp(){
  struct L_Us_Vp lv;
  lv.v1 = 4984;
  lv.v2 = 31334;
  lv.v3 = 0;
  return zig_recv_L_Us_Vp(lv);
}

int recv_L_Vp(struct L_Vp lv){
  if (lv.v1 != 13130) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct L_Vp ret_L_Vp(){
  struct L_Vp lv;
  lv.v1 = 13130;
  lv.v2 = 0;
  return lv;
}
int zig_recv_L_Vp(struct L_Vp);
int send_L_Vp(){
  struct L_Vp lv;
  lv.v1 = 13130;
  lv.v2 = 0;
  return zig_recv_L_Vp(lv);
}

int recv_L_Vp_C(struct L_Vp_C lv){
  if (lv.v1 != 18374) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 59) return 3;
  return 0;
}
struct L_Vp_C ret_L_Vp_C(){
  struct L_Vp_C lv;
  lv.v1 = 18374;
  lv.v2 = 0;
  lv.v3 = 59;
  return lv;
}
int zig_recv_L_Vp_C(struct L_Vp_C);
int send_L_Vp_C(){
  struct L_Vp_C lv;
  lv.v1 = 18374;
  lv.v2 = 0;
  lv.v3 = 59;
  return zig_recv_L_Vp_C(lv);
}

int recv_L_Vp_D(struct L_Vp_D lv){
  if (lv.v1 != 2644) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct L_Vp_D ret_L_Vp_D(){
  struct L_Vp_D lv;
  lv.v1 = 2644;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_L_Vp_D(struct L_Vp_D);
int send_L_Vp_D(){
  struct L_Vp_D lv;
  lv.v1 = 2644;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return zig_recv_L_Vp_D(lv);
}

int recv_L_Vp_F(struct L_Vp_F lv){
  if (lv.v1 != 5066) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct L_Vp_F ret_L_Vp_F(){
  struct L_Vp_F lv;
  lv.v1 = 5066;
  lv.v2 = 0;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_L_Vp_F(struct L_Vp_F);
int send_L_Vp_F(){
  struct L_Vp_F lv;
  lv.v1 = 5066;
  lv.v2 = 0;
  lv.v3 = 0.875;
  return zig_recv_L_Vp_F(lv);
}

int recv_L_Vp_I(struct L_Vp_I lv){
  if (lv.v1 != 7437) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 2600) return 3;
  return 0;
}
struct L_Vp_I ret_L_Vp_I(){
  struct L_Vp_I lv;
  lv.v1 = 7437;
  lv.v2 = 0;
  lv.v3 = 2600;
  return lv;
}
int zig_recv_L_Vp_I(struct L_Vp_I);
int send_L_Vp_I(){
  struct L_Vp_I lv;
  lv.v1 = 7437;
  lv.v2 = 0;
  lv.v3 = 2600;
  return zig_recv_L_Vp_I(lv);
}

int recv_L_Vp_Ip(struct L_Vp_Ip lv){
  if (lv.v1 != 8227) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct L_Vp_Ip ret_L_Vp_Ip(){
  struct L_Vp_Ip lv;
  lv.v1 = 8227;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_L_Vp_Ip(struct L_Vp_Ip);
int send_L_Vp_Ip(){
  struct L_Vp_Ip lv;
  lv.v1 = 8227;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_L_Vp_Ip(lv);
}

int recv_L_Vp_L(struct L_Vp_L lv){
  if (lv.v1 != 26762) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4187) return 3;
  return 0;
}
struct L_Vp_L ret_L_Vp_L(){
  struct L_Vp_L lv;
  lv.v1 = 26762;
  lv.v2 = 0;
  lv.v3 = 4187;
  return lv;
}
int zig_recv_L_Vp_L(struct L_Vp_L);
int send_L_Vp_L(){
  struct L_Vp_L lv;
  lv.v1 = 26762;
  lv.v2 = 0;
  lv.v3 = 4187;
  return zig_recv_L_Vp_L(lv);
}

int recv_L_Vp_S(struct L_Vp_S lv){
  if (lv.v1 != 32517) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 5751) return 3;
  return 0;
}
struct L_Vp_S ret_L_Vp_S(){
  struct L_Vp_S lv;
  lv.v1 = 32517;
  lv.v2 = 0;
  lv.v3 = 5751;
  return lv;
}
int zig_recv_L_Vp_S(struct L_Vp_S);
int send_L_Vp_S(){
  struct L_Vp_S lv;
  lv.v1 = 32517;
  lv.v2 = 0;
  lv.v3 = 5751;
  return zig_recv_L_Vp_S(lv);
}

int recv_L_Vp_Uc(struct L_Vp_Uc lv){
  if (lv.v1 != 20175) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 51) return 3;
  return 0;
}
struct L_Vp_Uc ret_L_Vp_Uc(){
  struct L_Vp_Uc lv;
  lv.v1 = 20175;
  lv.v2 = 0;
  lv.v3 = 51;
  return lv;
}
int zig_recv_L_Vp_Uc(struct L_Vp_Uc);
int send_L_Vp_Uc(){
  struct L_Vp_Uc lv;
  lv.v1 = 20175;
  lv.v2 = 0;
  lv.v3 = 51;
  return zig_recv_L_Vp_Uc(lv);
}

int recv_L_Vp_Ui(struct L_Vp_Ui lv){
  if (lv.v1 != 9705) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 9735) return 3;
  return 0;
}
struct L_Vp_Ui ret_L_Vp_Ui(){
  struct L_Vp_Ui lv;
  lv.v1 = 9705;
  lv.v2 = 0;
  lv.v3 = 9735;
  return lv;
}
int zig_recv_L_Vp_Ui(struct L_Vp_Ui);
int send_L_Vp_Ui(){
  struct L_Vp_Ui lv;
  lv.v1 = 9705;
  lv.v2 = 0;
  lv.v3 = 9735;
  return zig_recv_L_Vp_Ui(lv);
}

int recv_L_Vp_Ul(struct L_Vp_Ul lv){
  if (lv.v1 != 2235) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 3438) return 3;
  return 0;
}
struct L_Vp_Ul ret_L_Vp_Ul(){
  struct L_Vp_Ul lv;
  lv.v1 = 2235;
  lv.v2 = 0;
  lv.v3 = 3438;
  return lv;
}
int zig_recv_L_Vp_Ul(struct L_Vp_Ul);
int send_L_Vp_Ul(){
  struct L_Vp_Ul lv;
  lv.v1 = 2235;
  lv.v2 = 0;
  lv.v3 = 3438;
  return zig_recv_L_Vp_Ul(lv);
}

int recv_L_Vp_Us(struct L_Vp_Us lv){
  if (lv.v1 != 24213) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 8236) return 3;
  return 0;
}
struct L_Vp_Us ret_L_Vp_Us(){
  struct L_Vp_Us lv;
  lv.v1 = 24213;
  lv.v2 = 0;
  lv.v3 = 8236;
  return lv;
}
int zig_recv_L_Vp_Us(struct L_Vp_Us);
int send_L_Vp_Us(){
  struct L_Vp_Us lv;
  lv.v1 = 24213;
  lv.v2 = 0;
  lv.v3 = 8236;
  return zig_recv_L_Vp_Us(lv);
}

int recv_L_Vp_Vp(struct L_Vp_Vp lv){
  if (lv.v1 != 15058) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct L_Vp_Vp ret_L_Vp_Vp(){
  struct L_Vp_Vp lv;
  lv.v1 = 15058;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_L_Vp_Vp(struct L_Vp_Vp);
int send_L_Vp_Vp(){
  struct L_Vp_Vp lv;
  lv.v1 = 15058;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_L_Vp_Vp(lv);
}

int recv_S(struct S lv){
  if (lv.v1 != 28439) return 1;
  return 0;
}
struct S ret_S(){
  struct S lv;
  lv.v1 = 28439;
  return lv;
}
int zig_recv_S(struct S);
int send_S(){
  struct S lv;
  lv.v1 = 28439;
  return zig_recv_S(lv);
}

int recv_S_C(struct S_C lv){
  if (lv.v1 != 13593) return 1;
  if (lv.v2 != 30) return 2;
  return 0;
}
struct S_C ret_S_C(){
  struct S_C lv;
  lv.v1 = 13593;
  lv.v2 = 30;
  return lv;
}
int zig_recv_S_C(struct S_C);
int send_S_C(){
  struct S_C lv;
  lv.v1 = 13593;
  lv.v2 = 30;
  return zig_recv_S_C(lv);
}

int recv_S_C_C(struct S_C_C lv){
  if (lv.v1 != 2444) return 1;
  if (lv.v2 != 93) return 2;
  if (lv.v3 != 77) return 3;
  return 0;
}
struct S_C_C ret_S_C_C(){
  struct S_C_C lv;
  lv.v1 = 2444;
  lv.v2 = 93;
  lv.v3 = 77;
  return lv;
}
int zig_recv_S_C_C(struct S_C_C);
int send_S_C_C(){
  struct S_C_C lv;
  lv.v1 = 2444;
  lv.v2 = 93;
  lv.v3 = 77;
  return zig_recv_S_C_C(lv);
}

int recv_S_C_D(struct S_C_D lv){
  if (lv.v1 != 28466) return 1;
  if (lv.v2 != 4) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct S_C_D ret_S_C_D(){
  struct S_C_D lv;
  lv.v1 = 28466;
  lv.v2 = 4;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_S_C_D(struct S_C_D);
int send_S_C_D(){
  struct S_C_D lv;
  lv.v1 = 28466;
  lv.v2 = 4;
  lv.v3 = -2.125;
  return zig_recv_S_C_D(lv);
}

int recv_S_C_F(struct S_C_F lv){
  if (lv.v1 != 27944) return 1;
  if (lv.v2 != 27) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct S_C_F ret_S_C_F(){
  struct S_C_F lv;
  lv.v1 = 27944;
  lv.v2 = 27;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_S_C_F(struct S_C_F);
int send_S_C_F(){
  struct S_C_F lv;
  lv.v1 = 27944;
  lv.v2 = 27;
  lv.v3 = 7.0;
  return zig_recv_S_C_F(lv);
}

int recv_S_C_I(struct S_C_I lv){
  if (lv.v1 != 18200) return 1;
  if (lv.v2 != 26) return 2;
  if (lv.v3 != 29651) return 3;
  return 0;
}
struct S_C_I ret_S_C_I(){
  struct S_C_I lv;
  lv.v1 = 18200;
  lv.v2 = 26;
  lv.v3 = 29651;
  return lv;
}
int zig_recv_S_C_I(struct S_C_I);
int send_S_C_I(){
  struct S_C_I lv;
  lv.v1 = 18200;
  lv.v2 = 26;
  lv.v3 = 29651;
  return zig_recv_S_C_I(lv);
}

int recv_S_C_Ip(struct S_C_Ip lv){
  if (lv.v1 != 20090) return 1;
  if (lv.v2 != 12) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_C_Ip ret_S_C_Ip(){
  struct S_C_Ip lv;
  lv.v1 = 20090;
  lv.v2 = 12;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_C_Ip(struct S_C_Ip);
int send_S_C_Ip(){
  struct S_C_Ip lv;
  lv.v1 = 20090;
  lv.v2 = 12;
  lv.v3 = 0;
  return zig_recv_S_C_Ip(lv);
}

int recv_S_C_L(struct S_C_L lv){
  if (lv.v1 != 23527) return 1;
  if (lv.v2 != 35) return 2;
  if (lv.v3 != 6495) return 3;
  return 0;
}
struct S_C_L ret_S_C_L(){
  struct S_C_L lv;
  lv.v1 = 23527;
  lv.v2 = 35;
  lv.v3 = 6495;
  return lv;
}
int zig_recv_S_C_L(struct S_C_L);
int send_S_C_L(){
  struct S_C_L lv;
  lv.v1 = 23527;
  lv.v2 = 35;
  lv.v3 = 6495;
  return zig_recv_S_C_L(lv);
}

int recv_S_C_S(struct S_C_S lv){
  if (lv.v1 != 18343) return 1;
  if (lv.v2 != 109) return 2;
  if (lv.v3 != 22346) return 3;
  return 0;
}
struct S_C_S ret_S_C_S(){
  struct S_C_S lv;
  lv.v1 = 18343;
  lv.v2 = 109;
  lv.v3 = 22346;
  return lv;
}
int zig_recv_S_C_S(struct S_C_S);
int send_S_C_S(){
  struct S_C_S lv;
  lv.v1 = 18343;
  lv.v2 = 109;
  lv.v3 = 22346;
  return zig_recv_S_C_S(lv);
}

int recv_S_C_Uc(struct S_C_Uc lv){
  if (lv.v1 != 14516) return 1;
  if (lv.v2 != 18) return 2;
  if (lv.v3 != 45) return 3;
  return 0;
}
struct S_C_Uc ret_S_C_Uc(){
  struct S_C_Uc lv;
  lv.v1 = 14516;
  lv.v2 = 18;
  lv.v3 = 45;
  return lv;
}
int zig_recv_S_C_Uc(struct S_C_Uc);
int send_S_C_Uc(){
  struct S_C_Uc lv;
  lv.v1 = 14516;
  lv.v2 = 18;
  lv.v3 = 45;
  return zig_recv_S_C_Uc(lv);
}

int recv_S_C_Ui(struct S_C_Ui lv){
  if (lv.v1 != 17804) return 1;
  if (lv.v2 != 18) return 2;
  if (lv.v3 != 32107) return 3;
  return 0;
}
struct S_C_Ui ret_S_C_Ui(){
  struct S_C_Ui lv;
  lv.v1 = 17804;
  lv.v2 = 18;
  lv.v3 = 32107;
  return lv;
}
int zig_recv_S_C_Ui(struct S_C_Ui);
int send_S_C_Ui(){
  struct S_C_Ui lv;
  lv.v1 = 17804;
  lv.v2 = 18;
  lv.v3 = 32107;
  return zig_recv_S_C_Ui(lv);
}

int recv_S_C_Ul(struct S_C_Ul lv){
  if (lv.v1 != 24230) return 1;
  if (lv.v2 != 27) return 2;
  if (lv.v3 != 1102) return 3;
  return 0;
}
struct S_C_Ul ret_S_C_Ul(){
  struct S_C_Ul lv;
  lv.v1 = 24230;
  lv.v2 = 27;
  lv.v3 = 1102;
  return lv;
}
int zig_recv_S_C_Ul(struct S_C_Ul);
int send_S_C_Ul(){
  struct S_C_Ul lv;
  lv.v1 = 24230;
  lv.v2 = 27;
  lv.v3 = 1102;
  return zig_recv_S_C_Ul(lv);
}

int recv_S_C_Us(struct S_C_Us lv){
  if (lv.v1 != 13745) return 1;
  if (lv.v2 != 61) return 2;
  if (lv.v3 != 8507) return 3;
  return 0;
}
struct S_C_Us ret_S_C_Us(){
  struct S_C_Us lv;
  lv.v1 = 13745;
  lv.v2 = 61;
  lv.v3 = 8507;
  return lv;
}
int zig_recv_S_C_Us(struct S_C_Us);
int send_S_C_Us(){
  struct S_C_Us lv;
  lv.v1 = 13745;
  lv.v2 = 61;
  lv.v3 = 8507;
  return zig_recv_S_C_Us(lv);
}

int recv_S_C_Vp(struct S_C_Vp lv){
  if (lv.v1 != 5894) return 1;
  if (lv.v2 != 62) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_C_Vp ret_S_C_Vp(){
  struct S_C_Vp lv;
  lv.v1 = 5894;
  lv.v2 = 62;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_C_Vp(struct S_C_Vp);
int send_S_C_Vp(){
  struct S_C_Vp lv;
  lv.v1 = 5894;
  lv.v2 = 62;
  lv.v3 = 0;
  return zig_recv_S_C_Vp(lv);
}

int recv_S_D(struct S_D lv){
  if (lv.v1 != 26258) return 1;
  if (lv.v2 != 0.5) return 2;
  return 0;
}
struct S_D ret_S_D(){
  struct S_D lv;
  lv.v1 = 26258;
  lv.v2 = 0.5;
  return lv;
}
int zig_recv_S_D(struct S_D);
int send_S_D(){
  struct S_D lv;
  lv.v1 = 26258;
  lv.v2 = 0.5;
  return zig_recv_S_D(lv);
}

int recv_S_D_C(struct S_D_C lv){
  if (lv.v1 != 24907) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 81) return 3;
  return 0;
}
struct S_D_C ret_S_D_C(){
  struct S_D_C lv;
  lv.v1 = 24907;
  lv.v2 = 7.0;
  lv.v3 = 81;
  return lv;
}
int zig_recv_S_D_C(struct S_D_C);
int send_S_D_C(){
  struct S_D_C lv;
  lv.v1 = 24907;
  lv.v2 = 7.0;
  lv.v3 = 81;
  return zig_recv_S_D_C(lv);
}

int recv_S_D_D(struct S_D_D lv){
  if (lv.v1 != 17013) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct S_D_D ret_S_D_D(){
  struct S_D_D lv;
  lv.v1 = 17013;
  lv.v2 = 0.5;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_S_D_D(struct S_D_D);
int send_S_D_D(){
  struct S_D_D lv;
  lv.v1 = 17013;
  lv.v2 = 0.5;
  lv.v3 = 0.875;
  return zig_recv_S_D_D(lv);
}

int recv_S_D_F(struct S_D_F lv){
  if (lv.v1 != 8325) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct S_D_F ret_S_D_F(){
  struct S_D_F lv;
  lv.v1 = 8325;
  lv.v2 = -0.25;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_S_D_F(struct S_D_F);
int send_S_D_F(){
  struct S_D_F lv;
  lv.v1 = 8325;
  lv.v2 = -0.25;
  lv.v3 = -2.125;
  return zig_recv_S_D_F(lv);
}

int recv_S_D_I(struct S_D_I lv){
  if (lv.v1 != 8248) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 20494) return 3;
  return 0;
}
struct S_D_I ret_S_D_I(){
  struct S_D_I lv;
  lv.v1 = 8248;
  lv.v2 = -2.125;
  lv.v3 = 20494;
  return lv;
}
int zig_recv_S_D_I(struct S_D_I);
int send_S_D_I(){
  struct S_D_I lv;
  lv.v1 = 8248;
  lv.v2 = -2.125;
  lv.v3 = 20494;
  return zig_recv_S_D_I(lv);
}

int recv_S_D_Ip(struct S_D_Ip lv){
  if (lv.v1 != 5574) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_D_Ip ret_S_D_Ip(){
  struct S_D_Ip lv;
  lv.v1 = 5574;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_D_Ip(struct S_D_Ip);
int send_S_D_Ip(){
  struct S_D_Ip lv;
  lv.v1 = 5574;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return zig_recv_S_D_Ip(lv);
}

int recv_S_D_L(struct S_D_L lv){
  if (lv.v1 != 16019) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 2270) return 3;
  return 0;
}
struct S_D_L ret_S_D_L(){
  struct S_D_L lv;
  lv.v1 = 16019;
  lv.v2 = 4.5;
  lv.v3 = 2270;
  return lv;
}
int zig_recv_S_D_L(struct S_D_L);
int send_S_D_L(){
  struct S_D_L lv;
  lv.v1 = 16019;
  lv.v2 = 4.5;
  lv.v3 = 2270;
  return zig_recv_S_D_L(lv);
}

int recv_S_D_S(struct S_D_S lv){
  if (lv.v1 != 19770) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 27668) return 3;
  return 0;
}
struct S_D_S ret_S_D_S(){
  struct S_D_S lv;
  lv.v1 = 19770;
  lv.v2 = 0.875;
  lv.v3 = 27668;
  return lv;
}
int zig_recv_S_D_S(struct S_D_S);
int send_S_D_S(){
  struct S_D_S lv;
  lv.v1 = 19770;
  lv.v2 = 0.875;
  lv.v3 = 27668;
  return zig_recv_S_D_S(lv);
}

int recv_S_D_Uc(struct S_D_Uc lv){
  if (lv.v1 != 18628) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 55) return 3;
  return 0;
}
struct S_D_Uc ret_S_D_Uc(){
  struct S_D_Uc lv;
  lv.v1 = 18628;
  lv.v2 = -2.125;
  lv.v3 = 55;
  return lv;
}
int zig_recv_S_D_Uc(struct S_D_Uc);
int send_S_D_Uc(){
  struct S_D_Uc lv;
  lv.v1 = 18628;
  lv.v2 = -2.125;
  lv.v3 = 55;
  return zig_recv_S_D_Uc(lv);
}

int recv_S_D_Ui(struct S_D_Ui lv){
  if (lv.v1 != 2017) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 22747) return 3;
  return 0;
}
struct S_D_Ui ret_S_D_Ui(){
  struct S_D_Ui lv;
  lv.v1 = 2017;
  lv.v2 = 4.5;
  lv.v3 = 22747;
  return lv;
}
int zig_recv_S_D_Ui(struct S_D_Ui);
int send_S_D_Ui(){
  struct S_D_Ui lv;
  lv.v1 = 2017;
  lv.v2 = 4.5;
  lv.v3 = 22747;
  return zig_recv_S_D_Ui(lv);
}

int recv_S_D_Ul(struct S_D_Ul lv){
  if (lv.v1 != 26647) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 4212) return 3;
  return 0;
}
struct S_D_Ul ret_S_D_Ul(){
  struct S_D_Ul lv;
  lv.v1 = 26647;
  lv.v2 = 7.0;
  lv.v3 = 4212;
  return lv;
}
int zig_recv_S_D_Ul(struct S_D_Ul);
int send_S_D_Ul(){
  struct S_D_Ul lv;
  lv.v1 = 26647;
  lv.v2 = 7.0;
  lv.v3 = 4212;
  return zig_recv_S_D_Ul(lv);
}

int recv_S_D_Us(struct S_D_Us lv){
  if (lv.v1 != 10915) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 24757) return 3;
  return 0;
}
struct S_D_Us ret_S_D_Us(){
  struct S_D_Us lv;
  lv.v1 = 10915;
  lv.v2 = -0.25;
  lv.v3 = 24757;
  return lv;
}
int zig_recv_S_D_Us(struct S_D_Us);
int send_S_D_Us(){
  struct S_D_Us lv;
  lv.v1 = 10915;
  lv.v2 = -0.25;
  lv.v3 = 24757;
  return zig_recv_S_D_Us(lv);
}

int recv_S_D_Vp(struct S_D_Vp lv){
  if (lv.v1 != 14823) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_D_Vp ret_S_D_Vp(){
  struct S_D_Vp lv;
  lv.v1 = 14823;
  lv.v2 = 0.5;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_D_Vp(struct S_D_Vp);
int send_S_D_Vp(){
  struct S_D_Vp lv;
  lv.v1 = 14823;
  lv.v2 = 0.5;
  lv.v3 = 0;
  return zig_recv_S_D_Vp(lv);
}

int recv_S_F(struct S_F lv){
  if (lv.v1 != 24924) return 1;
  if (lv.v2 != 0.5) return 2;
  return 0;
}
struct S_F ret_S_F(){
  struct S_F lv;
  lv.v1 = 24924;
  lv.v2 = 0.5;
  return lv;
}
int zig_recv_S_F(struct S_F);
int send_S_F(){
  struct S_F lv;
  lv.v1 = 24924;
  lv.v2 = 0.5;
  return zig_recv_S_F(lv);
}

int recv_S_F_C(struct S_F_C lv){
  if (lv.v1 != 8723) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 67) return 3;
  return 0;
}
struct S_F_C ret_S_F_C(){
  struct S_F_C lv;
  lv.v1 = 8723;
  lv.v2 = -0.25;
  lv.v3 = 67;
  return lv;
}
int zig_recv_S_F_C(struct S_F_C);
int send_S_F_C(){
  struct S_F_C lv;
  lv.v1 = 8723;
  lv.v2 = -0.25;
  lv.v3 = 67;
  return zig_recv_S_F_C(lv);
}

int recv_S_F_D(struct S_F_D lv){
  if (lv.v1 != 5239) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct S_F_D ret_S_F_D(){
  struct S_F_D lv;
  lv.v1 = 5239;
  lv.v2 = -2.125;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_S_F_D(struct S_F_D);
int send_S_F_D(){
  struct S_F_D lv;
  lv.v1 = 5239;
  lv.v2 = -2.125;
  lv.v3 = 4.5;
  return zig_recv_S_F_D(lv);
}

int recv_S_F_F(struct S_F_F lv){
  if (lv.v1 != 20532) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct S_F_F ret_S_F_F(){
  struct S_F_F lv;
  lv.v1 = 20532;
  lv.v2 = -2.125;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_S_F_F(struct S_F_F);
int send_S_F_F(){
  struct S_F_F lv;
  lv.v1 = 20532;
  lv.v2 = -2.125;
  lv.v3 = -0.25;
  return zig_recv_S_F_F(lv);
}

int recv_S_F_I(struct S_F_I lv){
  if (lv.v1 != 21641) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 10287) return 3;
  return 0;
}
struct S_F_I ret_S_F_I(){
  struct S_F_I lv;
  lv.v1 = 21641;
  lv.v2 = 1.0;
  lv.v3 = 10287;
  return lv;
}
int zig_recv_S_F_I(struct S_F_I);
int send_S_F_I(){
  struct S_F_I lv;
  lv.v1 = 21641;
  lv.v2 = 1.0;
  lv.v3 = 10287;
  return zig_recv_S_F_I(lv);
}

int recv_S_F_Ip(struct S_F_Ip lv){
  if (lv.v1 != 682) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_F_Ip ret_S_F_Ip(){
  struct S_F_Ip lv;
  lv.v1 = 682;
  lv.v2 = 4.5;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_F_Ip(struct S_F_Ip);
int send_S_F_Ip(){
  struct S_F_Ip lv;
  lv.v1 = 682;
  lv.v2 = 4.5;
  lv.v3 = 0;
  return zig_recv_S_F_Ip(lv);
}

int recv_S_F_L(struct S_F_L lv){
  if (lv.v1 != 29613) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 6629) return 3;
  return 0;
}
struct S_F_L ret_S_F_L(){
  struct S_F_L lv;
  lv.v1 = 29613;
  lv.v2 = 7.0;
  lv.v3 = 6629;
  return lv;
}
int zig_recv_S_F_L(struct S_F_L);
int send_S_F_L(){
  struct S_F_L lv;
  lv.v1 = 29613;
  lv.v2 = 7.0;
  lv.v3 = 6629;
  return zig_recv_S_F_L(lv);
}

int recv_S_F_S(struct S_F_S lv){
  if (lv.v1 != 5493) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 16849) return 3;
  return 0;
}
struct S_F_S ret_S_F_S(){
  struct S_F_S lv;
  lv.v1 = 5493;
  lv.v2 = 1.0;
  lv.v3 = 16849;
  return lv;
}
int zig_recv_S_F_S(struct S_F_S);
int send_S_F_S(){
  struct S_F_S lv;
  lv.v1 = 5493;
  lv.v2 = 1.0;
  lv.v3 = 16849;
  return zig_recv_S_F_S(lv);
}

int recv_S_F_Uc(struct S_F_Uc lv){
  if (lv.v1 != 16127) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 12) return 3;
  return 0;
}
struct S_F_Uc ret_S_F_Uc(){
  struct S_F_Uc lv;
  lv.v1 = 16127;
  lv.v2 = 0.5;
  lv.v3 = 12;
  return lv;
}
int zig_recv_S_F_Uc(struct S_F_Uc);
int send_S_F_Uc(){
  struct S_F_Uc lv;
  lv.v1 = 16127;
  lv.v2 = 0.5;
  lv.v3 = 12;
  return zig_recv_S_F_Uc(lv);
}

int recv_S_F_Ui(struct S_F_Ui lv){
  if (lv.v1 != 24945) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 11333) return 3;
  return 0;
}
struct S_F_Ui ret_S_F_Ui(){
  struct S_F_Ui lv;
  lv.v1 = 24945;
  lv.v2 = 7.0;
  lv.v3 = 11333;
  return lv;
}
int zig_recv_S_F_Ui(struct S_F_Ui);
int send_S_F_Ui(){
  struct S_F_Ui lv;
  lv.v1 = 24945;
  lv.v2 = 7.0;
  lv.v3 = 11333;
  return zig_recv_S_F_Ui(lv);
}

int recv_S_F_Ul(struct S_F_Ul lv){
  if (lv.v1 != 6677) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 16822) return 3;
  return 0;
}
struct S_F_Ul ret_S_F_Ul(){
  struct S_F_Ul lv;
  lv.v1 = 6677;
  lv.v2 = 0.875;
  lv.v3 = 16822;
  return lv;
}
int zig_recv_S_F_Ul(struct S_F_Ul);
int send_S_F_Ul(){
  struct S_F_Ul lv;
  lv.v1 = 6677;
  lv.v2 = 0.875;
  lv.v3 = 16822;
  return zig_recv_S_F_Ul(lv);
}

int recv_S_F_Us(struct S_F_Us lv){
  if (lv.v1 != 8511) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 32196) return 3;
  return 0;
}
struct S_F_Us ret_S_F_Us(){
  struct S_F_Us lv;
  lv.v1 = 8511;
  lv.v2 = 0.5;
  lv.v3 = 32196;
  return lv;
}
int zig_recv_S_F_Us(struct S_F_Us);
int send_S_F_Us(){
  struct S_F_Us lv;
  lv.v1 = 8511;
  lv.v2 = 0.5;
  lv.v3 = 32196;
  return zig_recv_S_F_Us(lv);
}

int recv_S_F_Vp(struct S_F_Vp lv){
  if (lv.v1 != 17475) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_F_Vp ret_S_F_Vp(){
  struct S_F_Vp lv;
  lv.v1 = 17475;
  lv.v2 = 0.5;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_F_Vp(struct S_F_Vp);
int send_S_F_Vp(){
  struct S_F_Vp lv;
  lv.v1 = 17475;
  lv.v2 = 0.5;
  lv.v3 = 0;
  return zig_recv_S_F_Vp(lv);
}

int recv_S_I(struct S_I lv){
  if (lv.v1 != 2897) return 1;
  if (lv.v2 != 15011) return 2;
  return 0;
}
struct S_I ret_S_I(){
  struct S_I lv;
  lv.v1 = 2897;
  lv.v2 = 15011;
  return lv;
}
int zig_recv_S_I(struct S_I);
int send_S_I(){
  struct S_I lv;
  lv.v1 = 2897;
  lv.v2 = 15011;
  return zig_recv_S_I(lv);
}

int recv_S_I_C(struct S_I_C lv){
  if (lv.v1 != 8966) return 1;
  if (lv.v2 != 235) return 2;
  if (lv.v3 != 12) return 3;
  return 0;
}
struct S_I_C ret_S_I_C(){
  struct S_I_C lv;
  lv.v1 = 8966;
  lv.v2 = 235;
  lv.v3 = 12;
  return lv;
}
int zig_recv_S_I_C(struct S_I_C);
int send_S_I_C(){
  struct S_I_C lv;
  lv.v1 = 8966;
  lv.v2 = 235;
  lv.v3 = 12;
  return zig_recv_S_I_C(lv);
}

int recv_S_I_D(struct S_I_D lv){
  if (lv.v1 != 4450) return 1;
  if (lv.v2 != 11100) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
}
struct S_I_D ret_S_I_D(){
  struct S_I_D lv;
  lv.v1 = 4450;
  lv.v2 = 11100;
  lv.v3 = -2.125;
  return lv;
}
int zig_recv_S_I_D(struct S_I_D);
int send_S_I_D(){
  struct S_I_D lv;
  lv.v1 = 4450;
  lv.v2 = 11100;
  lv.v3 = -2.125;
  return zig_recv_S_I_D(lv);
}

int recv_S_I_F(struct S_I_F lv){
  if (lv.v1 != 9162) return 1;
  if (lv.v2 != 6436) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct S_I_F ret_S_I_F(){
  struct S_I_F lv;
  lv.v1 = 9162;
  lv.v2 = 6436;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_S_I_F(struct S_I_F);
int send_S_I_F(){
  struct S_I_F lv;
  lv.v1 = 9162;
  lv.v2 = 6436;
  lv.v3 = 1.0;
  return zig_recv_S_I_F(lv);
}

int recv_S_I_I(struct S_I_I lv){
  if (lv.v1 != 5966) return 1;
  if (lv.v2 != 11791) return 2;
  if (lv.v3 != 12649) return 3;
  return 0;
}
struct S_I_I ret_S_I_I(){
  struct S_I_I lv;
  lv.v1 = 5966;
  lv.v2 = 11791;
  lv.v3 = 12649;
  return lv;
}
int zig_recv_S_I_I(struct S_I_I);
int send_S_I_I(){
  struct S_I_I lv;
  lv.v1 = 5966;
  lv.v2 = 11791;
  lv.v3 = 12649;
  return zig_recv_S_I_I(lv);
}

int recv_S_I_Ip(struct S_I_Ip lv){
  if (lv.v1 != 5466) return 1;
  if (lv.v2 != 13905) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_I_Ip ret_S_I_Ip(){
  struct S_I_Ip lv;
  lv.v1 = 5466;
  lv.v2 = 13905;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_I_Ip(struct S_I_Ip);
int send_S_I_Ip(){
  struct S_I_Ip lv;
  lv.v1 = 5466;
  lv.v2 = 13905;
  lv.v3 = 0;
  return zig_recv_S_I_Ip(lv);
}

int recv_S_I_L(struct S_I_L lv){
  if (lv.v1 != 9496) return 1;
  if (lv.v2 != 6304) return 2;
  if (lv.v3 != 4198) return 3;
  return 0;
}
struct S_I_L ret_S_I_L(){
  struct S_I_L lv;
  lv.v1 = 9496;
  lv.v2 = 6304;
  lv.v3 = 4198;
  return lv;
}
int zig_recv_S_I_L(struct S_I_L);
int send_S_I_L(){
  struct S_I_L lv;
  lv.v1 = 9496;
  lv.v2 = 6304;
  lv.v3 = 4198;
  return zig_recv_S_I_L(lv);
}

int recv_S_I_S(struct S_I_S lv){
  if (lv.v1 != 5209) return 1;
  if (lv.v2 != 18809) return 2;
  if (lv.v3 != 12499) return 3;
  return 0;
}
struct S_I_S ret_S_I_S(){
  struct S_I_S lv;
  lv.v1 = 5209;
  lv.v2 = 18809;
  lv.v3 = 12499;
  return lv;
}
int zig_recv_S_I_S(struct S_I_S);
int send_S_I_S(){
  struct S_I_S lv;
  lv.v1 = 5209;
  lv.v2 = 18809;
  lv.v3 = 12499;
  return zig_recv_S_I_S(lv);
}

int recv_S_I_Uc(struct S_I_Uc lv){
  if (lv.v1 != 14755) return 1;
  if (lv.v2 != 22762) return 2;
  if (lv.v3 != 26) return 3;
  return 0;
}
struct S_I_Uc ret_S_I_Uc(){
  struct S_I_Uc lv;
  lv.v1 = 14755;
  lv.v2 = 22762;
  lv.v3 = 26;
  return lv;
}
int zig_recv_S_I_Uc(struct S_I_Uc);
int send_S_I_Uc(){
  struct S_I_Uc lv;
  lv.v1 = 14755;
  lv.v2 = 22762;
  lv.v3 = 26;
  return zig_recv_S_I_Uc(lv);
}

int recv_S_I_Ui(struct S_I_Ui lv){
  if (lv.v1 != 28377) return 1;
  if (lv.v2 != 8192) return 2;
  if (lv.v3 != 12908) return 3;
  return 0;
}
struct S_I_Ui ret_S_I_Ui(){
  struct S_I_Ui lv;
  lv.v1 = 28377;
  lv.v2 = 8192;
  lv.v3 = 12908;
  return lv;
}
int zig_recv_S_I_Ui(struct S_I_Ui);
int send_S_I_Ui(){
  struct S_I_Ui lv;
  lv.v1 = 28377;
  lv.v2 = 8192;
  lv.v3 = 12908;
  return zig_recv_S_I_Ui(lv);
}

int recv_S_I_Ul(struct S_I_Ul lv){
  if (lv.v1 != 24955) return 1;
  if (lv.v2 != 2544) return 2;
  if (lv.v3 != 29114) return 3;
  return 0;
}
struct S_I_Ul ret_S_I_Ul(){
  struct S_I_Ul lv;
  lv.v1 = 24955;
  lv.v2 = 2544;
  lv.v3 = 29114;
  return lv;
}
int zig_recv_S_I_Ul(struct S_I_Ul);
int send_S_I_Ul(){
  struct S_I_Ul lv;
  lv.v1 = 24955;
  lv.v2 = 2544;
  lv.v3 = 29114;
  return zig_recv_S_I_Ul(lv);
}

int recv_S_I_Us(struct S_I_Us lv){
  if (lv.v1 != 26409) return 1;
  if (lv.v2 != 6684) return 2;
  if (lv.v3 != 19200) return 3;
  return 0;
}
struct S_I_Us ret_S_I_Us(){
  struct S_I_Us lv;
  lv.v1 = 26409;
  lv.v2 = 6684;
  lv.v3 = 19200;
  return lv;
}
int zig_recv_S_I_Us(struct S_I_Us);
int send_S_I_Us(){
  struct S_I_Us lv;
  lv.v1 = 26409;
  lv.v2 = 6684;
  lv.v3 = 19200;
  return zig_recv_S_I_Us(lv);
}

int recv_S_I_Vp(struct S_I_Vp lv){
  if (lv.v1 != 12997) return 1;
  if (lv.v2 != 10954) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_I_Vp ret_S_I_Vp(){
  struct S_I_Vp lv;
  lv.v1 = 12997;
  lv.v2 = 10954;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_I_Vp(struct S_I_Vp);
int send_S_I_Vp(){
  struct S_I_Vp lv;
  lv.v1 = 12997;
  lv.v2 = 10954;
  lv.v3 = 0;
  return zig_recv_S_I_Vp(lv);
}

int recv_S_Ip(struct S_Ip lv){
  if (lv.v1 != 12037) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct S_Ip ret_S_Ip(){
  struct S_Ip lv;
  lv.v1 = 12037;
  lv.v2 = 0;
  return lv;
}
int zig_recv_S_Ip(struct S_Ip);
int send_S_Ip(){
  struct S_Ip lv;
  lv.v1 = 12037;
  lv.v2 = 0;
  return zig_recv_S_Ip(lv);
}

int recv_S_Ip_C(struct S_Ip_C lv){
  if (lv.v1 != 13013) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 62) return 3;
  return 0;
}
struct S_Ip_C ret_S_Ip_C(){
  struct S_Ip_C lv;
  lv.v1 = 13013;
  lv.v2 = 0;
  lv.v3 = 62;
  return lv;
}
int zig_recv_S_Ip_C(struct S_Ip_C);
int send_S_Ip_C(){
  struct S_Ip_C lv;
  lv.v1 = 13013;
  lv.v2 = 0;
  lv.v3 = 62;
  return zig_recv_S_Ip_C(lv);
}

int recv_S_Ip_D(struct S_Ip_D lv){
  if (lv.v1 != 14362) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct S_Ip_D ret_S_Ip_D(){
  struct S_Ip_D lv;
  lv.v1 = 14362;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_S_Ip_D(struct S_Ip_D);
int send_S_Ip_D(){
  struct S_Ip_D lv;
  lv.v1 = 14362;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return zig_recv_S_Ip_D(lv);
}

int recv_S_Ip_F(struct S_Ip_F lv){
  if (lv.v1 != 17556) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct S_Ip_F ret_S_Ip_F(){
  struct S_Ip_F lv;
  lv.v1 = 17556;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_S_Ip_F(struct S_Ip_F);
int send_S_Ip_F(){
  struct S_Ip_F lv;
  lv.v1 = 17556;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return zig_recv_S_Ip_F(lv);
}

int recv_S_Ip_I(struct S_Ip_I lv){
  if (lv.v1 != 12399) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 22491) return 3;
  return 0;
}
struct S_Ip_I ret_S_Ip_I(){
  struct S_Ip_I lv;
  lv.v1 = 12399;
  lv.v2 = 0;
  lv.v3 = 22491;
  return lv;
}
int zig_recv_S_Ip_I(struct S_Ip_I);
int send_S_Ip_I(){
  struct S_Ip_I lv;
  lv.v1 = 12399;
  lv.v2 = 0;
  lv.v3 = 22491;
  return zig_recv_S_Ip_I(lv);
}

int recv_S_Ip_Ip(struct S_Ip_Ip lv){
  if (lv.v1 != 30185) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Ip_Ip ret_S_Ip_Ip(){
  struct S_Ip_Ip lv;
  lv.v1 = 30185;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Ip_Ip(struct S_Ip_Ip);
int send_S_Ip_Ip(){
  struct S_Ip_Ip lv;
  lv.v1 = 30185;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_S_Ip_Ip(lv);
}

int recv_S_Ip_L(struct S_Ip_L lv){
  if (lv.v1 != 20259) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 13657) return 3;
  return 0;
}
struct S_Ip_L ret_S_Ip_L(){
  struct S_Ip_L lv;
  lv.v1 = 20259;
  lv.v2 = 0;
  lv.v3 = 13657;
  return lv;
}
int zig_recv_S_Ip_L(struct S_Ip_L);
int send_S_Ip_L(){
  struct S_Ip_L lv;
  lv.v1 = 20259;
  lv.v2 = 0;
  lv.v3 = 13657;
  return zig_recv_S_Ip_L(lv);
}

int recv_S_Ip_S(struct S_Ip_S lv){
  if (lv.v1 != 14829) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 5005) return 3;
  return 0;
}
struct S_Ip_S ret_S_Ip_S(){
  struct S_Ip_S lv;
  lv.v1 = 14829;
  lv.v2 = 0;
  lv.v3 = 5005;
  return lv;
}
int zig_recv_S_Ip_S(struct S_Ip_S);
int send_S_Ip_S(){
  struct S_Ip_S lv;
  lv.v1 = 14829;
  lv.v2 = 0;
  lv.v3 = 5005;
  return zig_recv_S_Ip_S(lv);
}

int recv_S_Ip_Uc(struct S_Ip_Uc lv){
  if (lv.v1 != 6340) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 85) return 3;
  return 0;
}
struct S_Ip_Uc ret_S_Ip_Uc(){
  struct S_Ip_Uc lv;
  lv.v1 = 6340;
  lv.v2 = 0;
  lv.v3 = 85;
  return lv;
}
int zig_recv_S_Ip_Uc(struct S_Ip_Uc);
int send_S_Ip_Uc(){
  struct S_Ip_Uc lv;
  lv.v1 = 6340;
  lv.v2 = 0;
  lv.v3 = 85;
  return zig_recv_S_Ip_Uc(lv);
}

int recv_S_Ip_Ui(struct S_Ip_Ui lv){
  if (lv.v1 != 11335) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4538) return 3;
  return 0;
}
struct S_Ip_Ui ret_S_Ip_Ui(){
  struct S_Ip_Ui lv;
  lv.v1 = 11335;
  lv.v2 = 0;
  lv.v3 = 4538;
  return lv;
}
int zig_recv_S_Ip_Ui(struct S_Ip_Ui);
int send_S_Ip_Ui(){
  struct S_Ip_Ui lv;
  lv.v1 = 11335;
  lv.v2 = 0;
  lv.v3 = 4538;
  return zig_recv_S_Ip_Ui(lv);
}

int recv_S_Ip_Ul(struct S_Ip_Ul lv){
  if (lv.v1 != 8170) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 26208) return 3;
  return 0;
}
struct S_Ip_Ul ret_S_Ip_Ul(){
  struct S_Ip_Ul lv;
  lv.v1 = 8170;
  lv.v2 = 0;
  lv.v3 = 26208;
  return lv;
}
int zig_recv_S_Ip_Ul(struct S_Ip_Ul);
int send_S_Ip_Ul(){
  struct S_Ip_Ul lv;
  lv.v1 = 8170;
  lv.v2 = 0;
  lv.v3 = 26208;
  return zig_recv_S_Ip_Ul(lv);
}

int recv_S_Ip_Us(struct S_Ip_Us lv){
  if (lv.v1 != 3739) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 1651) return 3;
  return 0;
}
struct S_Ip_Us ret_S_Ip_Us(){
  struct S_Ip_Us lv;
  lv.v1 = 3739;
  lv.v2 = 0;
  lv.v3 = 1651;
  return lv;
}
int zig_recv_S_Ip_Us(struct S_Ip_Us);
int send_S_Ip_Us(){
  struct S_Ip_Us lv;
  lv.v1 = 3739;
  lv.v2 = 0;
  lv.v3 = 1651;
  return zig_recv_S_Ip_Us(lv);
}

int recv_S_Ip_Vp(struct S_Ip_Vp lv){
  if (lv.v1 != 14683) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Ip_Vp ret_S_Ip_Vp(){
  struct S_Ip_Vp lv;
  lv.v1 = 14683;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Ip_Vp(struct S_Ip_Vp);
int send_S_Ip_Vp(){
  struct S_Ip_Vp lv;
  lv.v1 = 14683;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_S_Ip_Vp(lv);
}

int recv_S_L(struct S_L lv){
  if (lv.v1 != 13312) return 1;
  if (lv.v2 != 25781) return 2;
  return 0;
}
struct S_L ret_S_L(){
  struct S_L lv;
  lv.v1 = 13312;
  lv.v2 = 25781;
  return lv;
}
int zig_recv_S_L(struct S_L);
int send_S_L(){
  struct S_L lv;
  lv.v1 = 13312;
  lv.v2 = 25781;
  return zig_recv_S_L(lv);
}

int recv_S_L_C(struct S_L_C lv){
  if (lv.v1 != 10505) return 1;
  if (lv.v2 != 16042) return 2;
  if (lv.v3 != 7) return 3;
  return 0;
}
struct S_L_C ret_S_L_C(){
  struct S_L_C lv;
  lv.v1 = 10505;
  lv.v2 = 16042;
  lv.v3 = 7;
  return lv;
}
int zig_recv_S_L_C(struct S_L_C);
int send_S_L_C(){
  struct S_L_C lv;
  lv.v1 = 10505;
  lv.v2 = 16042;
  lv.v3 = 7;
  return zig_recv_S_L_C(lv);
}

int recv_S_L_D(struct S_L_D lv){
  if (lv.v1 != 22646) return 1;
  if (lv.v2 != 24863) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct S_L_D ret_S_L_D(){
  struct S_L_D lv;
  lv.v1 = 22646;
  lv.v2 = 24863;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_S_L_D(struct S_L_D);
int send_S_L_D(){
  struct S_L_D lv;
  lv.v1 = 22646;
  lv.v2 = 24863;
  lv.v3 = -0.25;
  return zig_recv_S_L_D(lv);
}

int recv_S_L_F(struct S_L_F lv){
  if (lv.v1 != 13211) return 1;
  if (lv.v2 != 31897) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
}
struct S_L_F ret_S_L_F(){
  struct S_L_F lv;
  lv.v1 = 13211;
  lv.v2 = 31897;
  lv.v3 = -0.25;
  return lv;
}
int zig_recv_S_L_F(struct S_L_F);
int send_S_L_F(){
  struct S_L_F lv;
  lv.v1 = 13211;
  lv.v2 = 31897;
  lv.v3 = -0.25;
  return zig_recv_S_L_F(lv);
}

int recv_S_L_I(struct S_L_I lv){
  if (lv.v1 != 9621) return 1;
  if (lv.v2 != 7334) return 2;
  if (lv.v3 != 21830) return 3;
  return 0;
}
struct S_L_I ret_S_L_I(){
  struct S_L_I lv;
  lv.v1 = 9621;
  lv.v2 = 7334;
  lv.v3 = 21830;
  return lv;
}
int zig_recv_S_L_I(struct S_L_I);
int send_S_L_I(){
  struct S_L_I lv;
  lv.v1 = 9621;
  lv.v2 = 7334;
  lv.v3 = 21830;
  return zig_recv_S_L_I(lv);
}

int recv_S_L_Ip(struct S_L_Ip lv){
  if (lv.v1 != 13540) return 1;
  if (lv.v2 != 19625) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_L_Ip ret_S_L_Ip(){
  struct S_L_Ip lv;
  lv.v1 = 13540;
  lv.v2 = 19625;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_L_Ip(struct S_L_Ip);
int send_S_L_Ip(){
  struct S_L_Ip lv;
  lv.v1 = 13540;
  lv.v2 = 19625;
  lv.v3 = 0;
  return zig_recv_S_L_Ip(lv);
}

int recv_S_L_L(struct S_L_L lv){
  if (lv.v1 != 20472) return 1;
  if (lv.v2 != 32042) return 2;
  if (lv.v3 != 11187) return 3;
  return 0;
}
struct S_L_L ret_S_L_L(){
  struct S_L_L lv;
  lv.v1 = 20472;
  lv.v2 = 32042;
  lv.v3 = 11187;
  return lv;
}
int zig_recv_S_L_L(struct S_L_L);
int send_S_L_L(){
  struct S_L_L lv;
  lv.v1 = 20472;
  lv.v2 = 32042;
  lv.v3 = 11187;
  return zig_recv_S_L_L(lv);
}

int recv_S_L_S(struct S_L_S lv){
  if (lv.v1 != 24980) return 1;
  if (lv.v2 != 13189) return 2;
  if (lv.v3 != 19542) return 3;
  return 0;
}
struct S_L_S ret_S_L_S(){
  struct S_L_S lv;
  lv.v1 = 24980;
  lv.v2 = 13189;
  lv.v3 = 19542;
  return lv;
}
int zig_recv_S_L_S(struct S_L_S);
int send_S_L_S(){
  struct S_L_S lv;
  lv.v1 = 24980;
  lv.v2 = 13189;
  lv.v3 = 19542;
  return zig_recv_S_L_S(lv);
}

int recv_S_L_Uc(struct S_L_Uc lv){
  if (lv.v1 != 25895) return 1;
  if (lv.v2 != 31666) return 2;
  if (lv.v3 != 50) return 3;
  return 0;
}
struct S_L_Uc ret_S_L_Uc(){
  struct S_L_Uc lv;
  lv.v1 = 25895;
  lv.v2 = 31666;
  lv.v3 = 50;
  return lv;
}
int zig_recv_S_L_Uc(struct S_L_Uc);
int send_S_L_Uc(){
  struct S_L_Uc lv;
  lv.v1 = 25895;
  lv.v2 = 31666;
  lv.v3 = 50;
  return zig_recv_S_L_Uc(lv);
}

int recv_S_L_Ui(struct S_L_Ui lv){
  if (lv.v1 != 25332) return 1;
  if (lv.v2 != 32427) return 2;
  if (lv.v3 != 2118) return 3;
  return 0;
}
struct S_L_Ui ret_S_L_Ui(){
  struct S_L_Ui lv;
  lv.v1 = 25332;
  lv.v2 = 32427;
  lv.v3 = 2118;
  return lv;
}
int zig_recv_S_L_Ui(struct S_L_Ui);
int send_S_L_Ui(){
  struct S_L_Ui lv;
  lv.v1 = 25332;
  lv.v2 = 32427;
  lv.v3 = 2118;
  return zig_recv_S_L_Ui(lv);
}

int recv_S_L_Ul(struct S_L_Ul lv){
  if (lv.v1 != 13547) return 1;
  if (lv.v2 != 22029) return 2;
  if (lv.v3 != 22931) return 3;
  return 0;
}
struct S_L_Ul ret_S_L_Ul(){
  struct S_L_Ul lv;
  lv.v1 = 13547;
  lv.v2 = 22029;
  lv.v3 = 22931;
  return lv;
}
int zig_recv_S_L_Ul(struct S_L_Ul);
int send_S_L_Ul(){
  struct S_L_Ul lv;
  lv.v1 = 13547;
  lv.v2 = 22029;
  lv.v3 = 22931;
  return zig_recv_S_L_Ul(lv);
}

int recv_S_L_Us(struct S_L_Us lv){
  if (lv.v1 != 20443) return 1;
  if (lv.v2 != 12563) return 2;
  if (lv.v3 != 22189) return 3;
  return 0;
}
struct S_L_Us ret_S_L_Us(){
  struct S_L_Us lv;
  lv.v1 = 20443;
  lv.v2 = 12563;
  lv.v3 = 22189;
  return lv;
}
int zig_recv_S_L_Us(struct S_L_Us);
int send_S_L_Us(){
  struct S_L_Us lv;
  lv.v1 = 20443;
  lv.v2 = 12563;
  lv.v3 = 22189;
  return zig_recv_S_L_Us(lv);
}

int recv_S_L_Vp(struct S_L_Vp lv){
  if (lv.v1 != 21924) return 1;
  if (lv.v2 != 20218) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_L_Vp ret_S_L_Vp(){
  struct S_L_Vp lv;
  lv.v1 = 21924;
  lv.v2 = 20218;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_L_Vp(struct S_L_Vp);
int send_S_L_Vp(){
  struct S_L_Vp lv;
  lv.v1 = 21924;
  lv.v2 = 20218;
  lv.v3 = 0;
  return zig_recv_S_L_Vp(lv);
}

int recv_S_S(struct S_S lv){
  if (lv.v1 != 11096) return 1;
  if (lv.v2 != 27328) return 2;
  return 0;
}
struct S_S ret_S_S(){
  struct S_S lv;
  lv.v1 = 11096;
  lv.v2 = 27328;
  return lv;
}
int zig_recv_S_S(struct S_S);
int send_S_S(){
  struct S_S lv;
  lv.v1 = 11096;
  lv.v2 = 27328;
  return zig_recv_S_S(lv);
}

int recv_S_S_C(struct S_S_C lv){
  if (lv.v1 != 5329) return 1;
  if (lv.v2 != 19856) return 2;
  if (lv.v3 != 80) return 3;
  return 0;
}
struct S_S_C ret_S_S_C(){
  struct S_S_C lv;
  lv.v1 = 5329;
  lv.v2 = 19856;
  lv.v3 = 80;
  return lv;
}
int zig_recv_S_S_C(struct S_S_C);
int send_S_S_C(){
  struct S_S_C lv;
  lv.v1 = 5329;
  lv.v2 = 19856;
  lv.v3 = 80;
  return zig_recv_S_S_C(lv);
}

int recv_S_S_D(struct S_S_D lv){
  if (lv.v1 != 9780) return 1;
  if (lv.v2 != 6520) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct S_S_D ret_S_S_D(){
  struct S_S_D lv;
  lv.v1 = 9780;
  lv.v2 = 6520;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_S_S_D(struct S_S_D);
int send_S_S_D(){
  struct S_S_D lv;
  lv.v1 = 9780;
  lv.v2 = 6520;
  lv.v3 = 4.5;
  return zig_recv_S_S_D(lv);
}

int recv_S_S_F(struct S_S_F lv){
  if (lv.v1 != 3759) return 1;
  if (lv.v2 != 17098) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct S_S_F ret_S_S_F(){
  struct S_S_F lv;
  lv.v1 = 3759;
  lv.v2 = 17098;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_S_S_F(struct S_S_F);
int send_S_S_F(){
  struct S_S_F lv;
  lv.v1 = 3759;
  lv.v2 = 17098;
  lv.v3 = 4.5;
  return zig_recv_S_S_F(lv);
}

int recv_S_S_I(struct S_S_I lv){
  if (lv.v1 != 21322) return 1;
  if (lv.v2 != 10630) return 2;
  if (lv.v3 != 25351) return 3;
  return 0;
}
struct S_S_I ret_S_S_I(){
  struct S_S_I lv;
  lv.v1 = 21322;
  lv.v2 = 10630;
  lv.v3 = 25351;
  return lv;
}
int zig_recv_S_S_I(struct S_S_I);
int send_S_S_I(){
  struct S_S_I lv;
  lv.v1 = 21322;
  lv.v2 = 10630;
  lv.v3 = 25351;
  return zig_recv_S_S_I(lv);
}

int recv_S_S_Ip(struct S_S_Ip lv){
  if (lv.v1 != 8900) return 1;
  if (lv.v2 != 26402) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_S_Ip ret_S_S_Ip(){
  struct S_S_Ip lv;
  lv.v1 = 8900;
  lv.v2 = 26402;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_S_Ip(struct S_S_Ip);
int send_S_S_Ip(){
  struct S_S_Ip lv;
  lv.v1 = 8900;
  lv.v2 = 26402;
  lv.v3 = 0;
  return zig_recv_S_S_Ip(lv);
}

int recv_S_S_L(struct S_S_L lv){
  if (lv.v1 != 11004) return 1;
  if (lv.v2 != 11972) return 2;
  if (lv.v3 != 21868) return 3;
  return 0;
}
struct S_S_L ret_S_S_L(){
  struct S_S_L lv;
  lv.v1 = 11004;
  lv.v2 = 11972;
  lv.v3 = 21868;
  return lv;
}
int zig_recv_S_S_L(struct S_S_L);
int send_S_S_L(){
  struct S_S_L lv;
  lv.v1 = 11004;
  lv.v2 = 11972;
  lv.v3 = 21868;
  return zig_recv_S_S_L(lv);
}

int recv_S_S_S(struct S_S_S lv){
  if (lv.v1 != 704) return 1;
  if (lv.v2 != 11304) return 2;
  if (lv.v3 != 18734) return 3;
  return 0;
}
struct S_S_S ret_S_S_S(){
  struct S_S_S lv;
  lv.v1 = 704;
  lv.v2 = 11304;
  lv.v3 = 18734;
  return lv;
}
int zig_recv_S_S_S(struct S_S_S);
int send_S_S_S(){
  struct S_S_S lv;
  lv.v1 = 704;
  lv.v2 = 11304;
  lv.v3 = 18734;
  return zig_recv_S_S_S(lv);
}

int recv_S_S_Uc(struct S_S_Uc lv){
  if (lv.v1 != 10132) return 1;
  if (lv.v2 != 23348) return 2;
  if (lv.v3 != 32) return 3;
  return 0;
}
struct S_S_Uc ret_S_S_Uc(){
  struct S_S_Uc lv;
  lv.v1 = 10132;
  lv.v2 = 23348;
  lv.v3 = 32;
  return lv;
}
int zig_recv_S_S_Uc(struct S_S_Uc);
int send_S_S_Uc(){
  struct S_S_Uc lv;
  lv.v1 = 10132;
  lv.v2 = 23348;
  lv.v3 = 32;
  return zig_recv_S_S_Uc(lv);
}

int recv_S_S_Ui(struct S_S_Ui lv){
  if (lv.v1 != 10920) return 1;
  if (lv.v2 != 21755) return 2;
  if (lv.v3 != 28352) return 3;
  return 0;
}
struct S_S_Ui ret_S_S_Ui(){
  struct S_S_Ui lv;
  lv.v1 = 10920;
  lv.v2 = 21755;
  lv.v3 = 28352;
  return lv;
}
int zig_recv_S_S_Ui(struct S_S_Ui);
int send_S_S_Ui(){
  struct S_S_Ui lv;
  lv.v1 = 10920;
  lv.v2 = 21755;
  lv.v3 = 28352;
  return zig_recv_S_S_Ui(lv);
}

int recv_S_S_Ul(struct S_S_Ul lv){
  if (lv.v1 != 634) return 1;
  if (lv.v2 != 947) return 2;
  if (lv.v3 != 13556) return 3;
  return 0;
}
struct S_S_Ul ret_S_S_Ul(){
  struct S_S_Ul lv;
  lv.v1 = 634;
  lv.v2 = 947;
  lv.v3 = 13556;
  return lv;
}
int zig_recv_S_S_Ul(struct S_S_Ul);
int send_S_S_Ul(){
  struct S_S_Ul lv;
  lv.v1 = 634;
  lv.v2 = 947;
  lv.v3 = 13556;
  return zig_recv_S_S_Ul(lv);
}

int recv_S_S_Us(struct S_S_Us lv){
  if (lv.v1 != 236) return 1;
  if (lv.v2 != 22850) return 2;
  if (lv.v3 != 13691) return 3;
  return 0;
}
struct S_S_Us ret_S_S_Us(){
  struct S_S_Us lv;
  lv.v1 = 236;
  lv.v2 = 22850;
  lv.v3 = 13691;
  return lv;
}
int zig_recv_S_S_Us(struct S_S_Us);
int send_S_S_Us(){
  struct S_S_Us lv;
  lv.v1 = 236;
  lv.v2 = 22850;
  lv.v3 = 13691;
  return zig_recv_S_S_Us(lv);
}

int recv_S_S_Vp(struct S_S_Vp lv){
  if (lv.v1 != 12577) return 1;
  if (lv.v2 != 13548) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_S_Vp ret_S_S_Vp(){
  struct S_S_Vp lv;
  lv.v1 = 12577;
  lv.v2 = 13548;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_S_Vp(struct S_S_Vp);
int send_S_S_Vp(){
  struct S_S_Vp lv;
  lv.v1 = 12577;
  lv.v2 = 13548;
  lv.v3 = 0;
  return zig_recv_S_S_Vp(lv);
}

int recv_S_Uc(struct S_Uc lv){
  if (lv.v1 != 3861) return 1;
  if (lv.v2 != 109) return 2;
  return 0;
}
struct S_Uc ret_S_Uc(){
  struct S_Uc lv;
  lv.v1 = 3861;
  lv.v2 = 109;
  return lv;
}
int zig_recv_S_Uc(struct S_Uc);
int send_S_Uc(){
  struct S_Uc lv;
  lv.v1 = 3861;
  lv.v2 = 109;
  return zig_recv_S_Uc(lv);
}

int recv_S_Uc_C(struct S_Uc_C lv){
  if (lv.v1 != 10425) return 1;
  if (lv.v2 != 80) return 2;
  if (lv.v3 != 112) return 3;
  return 0;
}
struct S_Uc_C ret_S_Uc_C(){
  struct S_Uc_C lv;
  lv.v1 = 10425;
  lv.v2 = 80;
  lv.v3 = 112;
  return lv;
}
int zig_recv_S_Uc_C(struct S_Uc_C);
int send_S_Uc_C(){
  struct S_Uc_C lv;
  lv.v1 = 10425;
  lv.v2 = 80;
  lv.v3 = 112;
  return zig_recv_S_Uc_C(lv);
}

int recv_S_Uc_D(struct S_Uc_D lv){
  if (lv.v1 != 30365) return 1;
  if (lv.v2 != 12) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct S_Uc_D ret_S_Uc_D(){
  struct S_Uc_D lv;
  lv.v1 = 30365;
  lv.v2 = 12;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_S_Uc_D(struct S_Uc_D);
int send_S_Uc_D(){
  struct S_Uc_D lv;
  lv.v1 = 30365;
  lv.v2 = 12;
  lv.v3 = 0.5;
  return zig_recv_S_Uc_D(lv);
}

int recv_S_Uc_F(struct S_Uc_F lv){
  if (lv.v1 != 7273) return 1;
  if (lv.v2 != 122) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct S_Uc_F ret_S_Uc_F(){
  struct S_Uc_F lv;
  lv.v1 = 7273;
  lv.v2 = 122;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_S_Uc_F(struct S_Uc_F);
int send_S_Uc_F(){
  struct S_Uc_F lv;
  lv.v1 = 7273;
  lv.v2 = 122;
  lv.v3 = 7.0;
  return zig_recv_S_Uc_F(lv);
}

int recv_S_Uc_I(struct S_Uc_I lv){
  if (lv.v1 != 17362) return 1;
  if (lv.v2 != 100) return 2;
  if (lv.v3 != 27177) return 3;
  return 0;
}
struct S_Uc_I ret_S_Uc_I(){
  struct S_Uc_I lv;
  lv.v1 = 17362;
  lv.v2 = 100;
  lv.v3 = 27177;
  return lv;
}
int zig_recv_S_Uc_I(struct S_Uc_I);
int send_S_Uc_I(){
  struct S_Uc_I lv;
  lv.v1 = 17362;
  lv.v2 = 100;
  lv.v3 = 27177;
  return zig_recv_S_Uc_I(lv);
}

int recv_S_Uc_Ip(struct S_Uc_Ip lv){
  if (lv.v1 != 29292) return 1;
  if (lv.v2 != 31) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Uc_Ip ret_S_Uc_Ip(){
  struct S_Uc_Ip lv;
  lv.v1 = 29292;
  lv.v2 = 31;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Uc_Ip(struct S_Uc_Ip);
int send_S_Uc_Ip(){
  struct S_Uc_Ip lv;
  lv.v1 = 29292;
  lv.v2 = 31;
  lv.v3 = 0;
  return zig_recv_S_Uc_Ip(lv);
}

int recv_S_Uc_L(struct S_Uc_L lv){
  if (lv.v1 != 32250) return 1;
  if (lv.v2 != 63) return 2;
  if (lv.v3 != 22690) return 3;
  return 0;
}
struct S_Uc_L ret_S_Uc_L(){
  struct S_Uc_L lv;
  lv.v1 = 32250;
  lv.v2 = 63;
  lv.v3 = 22690;
  return lv;
}
int zig_recv_S_Uc_L(struct S_Uc_L);
int send_S_Uc_L(){
  struct S_Uc_L lv;
  lv.v1 = 32250;
  lv.v2 = 63;
  lv.v3 = 22690;
  return zig_recv_S_Uc_L(lv);
}

int recv_S_Uc_S(struct S_Uc_S lv){
  if (lv.v1 != 24741) return 1;
  if (lv.v2 != 1) return 2;
  if (lv.v3 != 17911) return 3;
  return 0;
}
struct S_Uc_S ret_S_Uc_S(){
  struct S_Uc_S lv;
  lv.v1 = 24741;
  lv.v2 = 1;
  lv.v3 = 17911;
  return lv;
}
int zig_recv_S_Uc_S(struct S_Uc_S);
int send_S_Uc_S(){
  struct S_Uc_S lv;
  lv.v1 = 24741;
  lv.v2 = 1;
  lv.v3 = 17911;
  return zig_recv_S_Uc_S(lv);
}

int recv_S_Uc_Uc(struct S_Uc_Uc lv){
  if (lv.v1 != 10761) return 1;
  if (lv.v2 != 91) return 2;
  if (lv.v3 != 85) return 3;
  return 0;
}
struct S_Uc_Uc ret_S_Uc_Uc(){
  struct S_Uc_Uc lv;
  lv.v1 = 10761;
  lv.v2 = 91;
  lv.v3 = 85;
  return lv;
}
int zig_recv_S_Uc_Uc(struct S_Uc_Uc);
int send_S_Uc_Uc(){
  struct S_Uc_Uc lv;
  lv.v1 = 10761;
  lv.v2 = 91;
  lv.v3 = 85;
  return zig_recv_S_Uc_Uc(lv);
}

int recv_S_Uc_Ui(struct S_Uc_Ui lv){
  if (lv.v1 != 20164) return 1;
  if (lv.v2 != 73) return 2;
  if (lv.v3 != 10990) return 3;
  return 0;
}
struct S_Uc_Ui ret_S_Uc_Ui(){
  struct S_Uc_Ui lv;
  lv.v1 = 20164;
  lv.v2 = 73;
  lv.v3 = 10990;
  return lv;
}
int zig_recv_S_Uc_Ui(struct S_Uc_Ui);
int send_S_Uc_Ui(){
  struct S_Uc_Ui lv;
  lv.v1 = 20164;
  lv.v2 = 73;
  lv.v3 = 10990;
  return zig_recv_S_Uc_Ui(lv);
}

int recv_S_Uc_Ul(struct S_Uc_Ul lv){
  if (lv.v1 != 26412) return 1;
  if (lv.v2 != 74) return 2;
  if (lv.v3 != 11990) return 3;
  return 0;
}
struct S_Uc_Ul ret_S_Uc_Ul(){
  struct S_Uc_Ul lv;
  lv.v1 = 26412;
  lv.v2 = 74;
  lv.v3 = 11990;
  return lv;
}
int zig_recv_S_Uc_Ul(struct S_Uc_Ul);
int send_S_Uc_Ul(){
  struct S_Uc_Ul lv;
  lv.v1 = 26412;
  lv.v2 = 74;
  lv.v3 = 11990;
  return zig_recv_S_Uc_Ul(lv);
}

int recv_S_Uc_Us(struct S_Uc_Us lv){
  if (lv.v1 != 29060) return 1;
  if (lv.v2 != 68) return 2;
  if (lv.v3 != 10911) return 3;
  return 0;
}
struct S_Uc_Us ret_S_Uc_Us(){
  struct S_Uc_Us lv;
  lv.v1 = 29060;
  lv.v2 = 68;
  lv.v3 = 10911;
  return lv;
}
int zig_recv_S_Uc_Us(struct S_Uc_Us);
int send_S_Uc_Us(){
  struct S_Uc_Us lv;
  lv.v1 = 29060;
  lv.v2 = 68;
  lv.v3 = 10911;
  return zig_recv_S_Uc_Us(lv);
}

int recv_S_Uc_Vp(struct S_Uc_Vp lv){
  if (lv.v1 != 22923) return 1;
  if (lv.v2 != 118) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Uc_Vp ret_S_Uc_Vp(){
  struct S_Uc_Vp lv;
  lv.v1 = 22923;
  lv.v2 = 118;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Uc_Vp(struct S_Uc_Vp);
int send_S_Uc_Vp(){
  struct S_Uc_Vp lv;
  lv.v1 = 22923;
  lv.v2 = 118;
  lv.v3 = 0;
  return zig_recv_S_Uc_Vp(lv);
}

int recv_S_Ui(struct S_Ui lv){
  if (lv.v1 != 22316) return 1;
  if (lv.v2 != 1494) return 2;
  return 0;
}
struct S_Ui ret_S_Ui(){
  struct S_Ui lv;
  lv.v1 = 22316;
  lv.v2 = 1494;
  return lv;
}
int zig_recv_S_Ui(struct S_Ui);
int send_S_Ui(){
  struct S_Ui lv;
  lv.v1 = 22316;
  lv.v2 = 1494;
  return zig_recv_S_Ui(lv);
}

int recv_S_Ui_C(struct S_Ui_C lv){
  if (lv.v1 != 27010) return 1;
  if (lv.v2 != 4867) return 2;
  if (lv.v3 != 101) return 3;
  return 0;
}
struct S_Ui_C ret_S_Ui_C(){
  struct S_Ui_C lv;
  lv.v1 = 27010;
  lv.v2 = 4867;
  lv.v3 = 101;
  return lv;
}
int zig_recv_S_Ui_C(struct S_Ui_C);
int send_S_Ui_C(){
  struct S_Ui_C lv;
  lv.v1 = 27010;
  lv.v2 = 4867;
  lv.v3 = 101;
  return zig_recv_S_Ui_C(lv);
}

int recv_S_Ui_D(struct S_Ui_D lv){
  if (lv.v1 != 4514) return 1;
  if (lv.v2 != 25148) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
}
struct S_Ui_D ret_S_Ui_D(){
  struct S_Ui_D lv;
  lv.v1 = 4514;
  lv.v2 = 25148;
  lv.v3 = 0.875;
  return lv;
}
int zig_recv_S_Ui_D(struct S_Ui_D);
int send_S_Ui_D(){
  struct S_Ui_D lv;
  lv.v1 = 4514;
  lv.v2 = 25148;
  lv.v3 = 0.875;
  return zig_recv_S_Ui_D(lv);
}

int recv_S_Ui_F(struct S_Ui_F lv){
  if (lv.v1 != 22677) return 1;
  if (lv.v2 != 7579) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct S_Ui_F ret_S_Ui_F(){
  struct S_Ui_F lv;
  lv.v1 = 22677;
  lv.v2 = 7579;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_S_Ui_F(struct S_Ui_F);
int send_S_Ui_F(){
  struct S_Ui_F lv;
  lv.v1 = 22677;
  lv.v2 = 7579;
  lv.v3 = 0.5;
  return zig_recv_S_Ui_F(lv);
}

int recv_S_Ui_I(struct S_Ui_I lv){
  if (lv.v1 != 14762) return 1;
  if (lv.v2 != 27633) return 2;
  if (lv.v3 != 27073) return 3;
  return 0;
}
struct S_Ui_I ret_S_Ui_I(){
  struct S_Ui_I lv;
  lv.v1 = 14762;
  lv.v2 = 27633;
  lv.v3 = 27073;
  return lv;
}
int zig_recv_S_Ui_I(struct S_Ui_I);
int send_S_Ui_I(){
  struct S_Ui_I lv;
  lv.v1 = 14762;
  lv.v2 = 27633;
  lv.v3 = 27073;
  return zig_recv_S_Ui_I(lv);
}

int recv_S_Ui_Ip(struct S_Ui_Ip lv){
  if (lv.v1 != 7247) return 1;
  if (lv.v2 != 12387) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Ui_Ip ret_S_Ui_Ip(){
  struct S_Ui_Ip lv;
  lv.v1 = 7247;
  lv.v2 = 12387;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Ui_Ip(struct S_Ui_Ip);
int send_S_Ui_Ip(){
  struct S_Ui_Ip lv;
  lv.v1 = 7247;
  lv.v2 = 12387;
  lv.v3 = 0;
  return zig_recv_S_Ui_Ip(lv);
}

int recv_S_Ui_L(struct S_Ui_L lv){
  if (lv.v1 != 25625) return 1;
  if (lv.v2 != 21589) return 2;
  if (lv.v3 != 28079) return 3;
  return 0;
}
struct S_Ui_L ret_S_Ui_L(){
  struct S_Ui_L lv;
  lv.v1 = 25625;
  lv.v2 = 21589;
  lv.v3 = 28079;
  return lv;
}
int zig_recv_S_Ui_L(struct S_Ui_L);
int send_S_Ui_L(){
  struct S_Ui_L lv;
  lv.v1 = 25625;
  lv.v2 = 21589;
  lv.v3 = 28079;
  return zig_recv_S_Ui_L(lv);
}

int recv_S_Ui_S(struct S_Ui_S lv){
  if (lv.v1 != 29152) return 1;
  if (lv.v2 != 15405) return 2;
  if (lv.v3 != 13886) return 3;
  return 0;
}
struct S_Ui_S ret_S_Ui_S(){
  struct S_Ui_S lv;
  lv.v1 = 29152;
  lv.v2 = 15405;
  lv.v3 = 13886;
  return lv;
}
int zig_recv_S_Ui_S(struct S_Ui_S);
int send_S_Ui_S(){
  struct S_Ui_S lv;
  lv.v1 = 29152;
  lv.v2 = 15405;
  lv.v3 = 13886;
  return zig_recv_S_Ui_S(lv);
}

int recv_S_Ui_Uc(struct S_Ui_Uc lv){
  if (lv.v1 != 16333) return 1;
  if (lv.v2 != 28670) return 2;
  if (lv.v3 != 24) return 3;
  return 0;
}
struct S_Ui_Uc ret_S_Ui_Uc(){
  struct S_Ui_Uc lv;
  lv.v1 = 16333;
  lv.v2 = 28670;
  lv.v3 = 24;
  return lv;
}
int zig_recv_S_Ui_Uc(struct S_Ui_Uc);
int send_S_Ui_Uc(){
  struct S_Ui_Uc lv;
  lv.v1 = 16333;
  lv.v2 = 28670;
  lv.v3 = 24;
  return zig_recv_S_Ui_Uc(lv);
}

int recv_S_Ui_Ui(struct S_Ui_Ui lv){
  if (lv.v1 != 22899) return 1;
  if (lv.v2 != 29265) return 2;
  if (lv.v3 != 27146) return 3;
  return 0;
}
struct S_Ui_Ui ret_S_Ui_Ui(){
  struct S_Ui_Ui lv;
  lv.v1 = 22899;
  lv.v2 = 29265;
  lv.v3 = 27146;
  return lv;
}
int zig_recv_S_Ui_Ui(struct S_Ui_Ui);
int send_S_Ui_Ui(){
  struct S_Ui_Ui lv;
  lv.v1 = 22899;
  lv.v2 = 29265;
  lv.v3 = 27146;
  return zig_recv_S_Ui_Ui(lv);
}

int recv_S_Ui_Ul(struct S_Ui_Ul lv){
  if (lv.v1 != 4262) return 1;
  if (lv.v2 != 10146) return 2;
  if (lv.v3 != 19964) return 3;
  return 0;
}
struct S_Ui_Ul ret_S_Ui_Ul(){
  struct S_Ui_Ul lv;
  lv.v1 = 4262;
  lv.v2 = 10146;
  lv.v3 = 19964;
  return lv;
}
int zig_recv_S_Ui_Ul(struct S_Ui_Ul);
int send_S_Ui_Ul(){
  struct S_Ui_Ul lv;
  lv.v1 = 4262;
  lv.v2 = 10146;
  lv.v3 = 19964;
  return zig_recv_S_Ui_Ul(lv);
}

int recv_S_Ui_Us(struct S_Ui_Us lv){
  if (lv.v1 != 14948) return 1;
  if (lv.v2 != 19472) return 2;
  if (lv.v3 != 4932) return 3;
  return 0;
}
struct S_Ui_Us ret_S_Ui_Us(){
  struct S_Ui_Us lv;
  lv.v1 = 14948;
  lv.v2 = 19472;
  lv.v3 = 4932;
  return lv;
}
int zig_recv_S_Ui_Us(struct S_Ui_Us);
int send_S_Ui_Us(){
  struct S_Ui_Us lv;
  lv.v1 = 14948;
  lv.v2 = 19472;
  lv.v3 = 4932;
  return zig_recv_S_Ui_Us(lv);
}

int recv_S_Ui_Vp(struct S_Ui_Vp lv){
  if (lv.v1 != 6577) return 1;
  if (lv.v2 != 18393) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Ui_Vp ret_S_Ui_Vp(){
  struct S_Ui_Vp lv;
  lv.v1 = 6577;
  lv.v2 = 18393;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Ui_Vp(struct S_Ui_Vp);
int send_S_Ui_Vp(){
  struct S_Ui_Vp lv;
  lv.v1 = 6577;
  lv.v2 = 18393;
  lv.v3 = 0;
  return zig_recv_S_Ui_Vp(lv);
}

int recv_S_Ul(struct S_Ul lv){
  if (lv.v1 != 23494) return 1;
  if (lv.v2 != 28281) return 2;
  return 0;
}
struct S_Ul ret_S_Ul(){
  struct S_Ul lv;
  lv.v1 = 23494;
  lv.v2 = 28281;
  return lv;
}
int zig_recv_S_Ul(struct S_Ul);
int send_S_Ul(){
  struct S_Ul lv;
  lv.v1 = 23494;
  lv.v2 = 28281;
  return zig_recv_S_Ul(lv);
}

int recv_S_Ul_C(struct S_Ul_C lv){
  if (lv.v1 != 8646) return 1;
  if (lv.v2 != 19716) return 2;
  if (lv.v3 != 64) return 3;
  return 0;
}
struct S_Ul_C ret_S_Ul_C(){
  struct S_Ul_C lv;
  lv.v1 = 8646;
  lv.v2 = 19716;
  lv.v3 = 64;
  return lv;
}
int zig_recv_S_Ul_C(struct S_Ul_C);
int send_S_Ul_C(){
  struct S_Ul_C lv;
  lv.v1 = 8646;
  lv.v2 = 19716;
  lv.v3 = 64;
  return zig_recv_S_Ul_C(lv);
}

int recv_S_Ul_D(struct S_Ul_D lv){
  if (lv.v1 != 8751) return 1;
  if (lv.v2 != 28983) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct S_Ul_D ret_S_Ul_D(){
  struct S_Ul_D lv;
  lv.v1 = 8751;
  lv.v2 = 28983;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_S_Ul_D(struct S_Ul_D);
int send_S_Ul_D(){
  struct S_Ul_D lv;
  lv.v1 = 8751;
  lv.v2 = 28983;
  lv.v3 = 7.0;
  return zig_recv_S_Ul_D(lv);
}

int recv_S_Ul_F(struct S_Ul_F lv){
  if (lv.v1 != 12972) return 1;
  if (lv.v2 != 18724) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
}
struct S_Ul_F ret_S_Ul_F(){
  struct S_Ul_F lv;
  lv.v1 = 12972;
  lv.v2 = 18724;
  lv.v3 = 4.5;
  return lv;
}
int zig_recv_S_Ul_F(struct S_Ul_F);
int send_S_Ul_F(){
  struct S_Ul_F lv;
  lv.v1 = 12972;
  lv.v2 = 18724;
  lv.v3 = 4.5;
  return zig_recv_S_Ul_F(lv);
}

int recv_S_Ul_I(struct S_Ul_I lv){
  if (lv.v1 != 11746) return 1;
  if (lv.v2 != 13702) return 2;
  if (lv.v3 != 15167) return 3;
  return 0;
}
struct S_Ul_I ret_S_Ul_I(){
  struct S_Ul_I lv;
  lv.v1 = 11746;
  lv.v2 = 13702;
  lv.v3 = 15167;
  return lv;
}
int zig_recv_S_Ul_I(struct S_Ul_I);
int send_S_Ul_I(){
  struct S_Ul_I lv;
  lv.v1 = 11746;
  lv.v2 = 13702;
  lv.v3 = 15167;
  return zig_recv_S_Ul_I(lv);
}

int recv_S_Ul_Ip(struct S_Ul_Ip lv){
  if (lv.v1 != 15991) return 1;
  if (lv.v2 != 4017) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Ul_Ip ret_S_Ul_Ip(){
  struct S_Ul_Ip lv;
  lv.v1 = 15991;
  lv.v2 = 4017;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Ul_Ip(struct S_Ul_Ip);
int send_S_Ul_Ip(){
  struct S_Ul_Ip lv;
  lv.v1 = 15991;
  lv.v2 = 4017;
  lv.v3 = 0;
  return zig_recv_S_Ul_Ip(lv);
}

int recv_S_Ul_L(struct S_Ul_L lv){
  if (lv.v1 != 27882) return 1;
  if (lv.v2 != 18288) return 2;
  if (lv.v3 != 17458) return 3;
  return 0;
}
struct S_Ul_L ret_S_Ul_L(){
  struct S_Ul_L lv;
  lv.v1 = 27882;
  lv.v2 = 18288;
  lv.v3 = 17458;
  return lv;
}
int zig_recv_S_Ul_L(struct S_Ul_L);
int send_S_Ul_L(){
  struct S_Ul_L lv;
  lv.v1 = 27882;
  lv.v2 = 18288;
  lv.v3 = 17458;
  return zig_recv_S_Ul_L(lv);
}

int recv_S_Ul_S(struct S_Ul_S lv){
  if (lv.v1 != 32530) return 1;
  if (lv.v2 != 29265) return 2;
  if (lv.v3 != 10096) return 3;
  return 0;
}
struct S_Ul_S ret_S_Ul_S(){
  struct S_Ul_S lv;
  lv.v1 = 32530;
  lv.v2 = 29265;
  lv.v3 = 10096;
  return lv;
}
int zig_recv_S_Ul_S(struct S_Ul_S);
int send_S_Ul_S(){
  struct S_Ul_S lv;
  lv.v1 = 32530;
  lv.v2 = 29265;
  lv.v3 = 10096;
  return zig_recv_S_Ul_S(lv);
}

int recv_S_Ul_Uc(struct S_Ul_Uc lv){
  if (lv.v1 != 6982) return 1;
  if (lv.v2 != 10576) return 2;
  if (lv.v3 != 118) return 3;
  return 0;
}
struct S_Ul_Uc ret_S_Ul_Uc(){
  struct S_Ul_Uc lv;
  lv.v1 = 6982;
  lv.v2 = 10576;
  lv.v3 = 118;
  return lv;
}
int zig_recv_S_Ul_Uc(struct S_Ul_Uc);
int send_S_Ul_Uc(){
  struct S_Ul_Uc lv;
  lv.v1 = 6982;
  lv.v2 = 10576;
  lv.v3 = 118;
  return zig_recv_S_Ul_Uc(lv);
}

int recv_S_Ul_Ui(struct S_Ul_Ui lv){
  if (lv.v1 != 30721) return 1;
  if (lv.v2 != 4703) return 2;
  if (lv.v3 != 19408) return 3;
  return 0;
}
struct S_Ul_Ui ret_S_Ul_Ui(){
  struct S_Ul_Ui lv;
  lv.v1 = 30721;
  lv.v2 = 4703;
  lv.v3 = 19408;
  return lv;
}
int zig_recv_S_Ul_Ui(struct S_Ul_Ui);
int send_S_Ul_Ui(){
  struct S_Ul_Ui lv;
  lv.v1 = 30721;
  lv.v2 = 4703;
  lv.v3 = 19408;
  return zig_recv_S_Ul_Ui(lv);
}

int recv_S_Ul_Ul(struct S_Ul_Ul lv){
  if (lv.v1 != 17537) return 1;
  if (lv.v2 != 32132) return 2;
  if (lv.v3 != 9730) return 3;
  return 0;
}
struct S_Ul_Ul ret_S_Ul_Ul(){
  struct S_Ul_Ul lv;
  lv.v1 = 17537;
  lv.v2 = 32132;
  lv.v3 = 9730;
  return lv;
}
int zig_recv_S_Ul_Ul(struct S_Ul_Ul);
int send_S_Ul_Ul(){
  struct S_Ul_Ul lv;
  lv.v1 = 17537;
  lv.v2 = 32132;
  lv.v3 = 9730;
  return zig_recv_S_Ul_Ul(lv);
}

int recv_S_Ul_Us(struct S_Ul_Us lv){
  if (lv.v1 != 10662) return 1;
  if (lv.v2 != 30069) return 2;
  if (lv.v3 != 24462) return 3;
  return 0;
}
struct S_Ul_Us ret_S_Ul_Us(){
  struct S_Ul_Us lv;
  lv.v1 = 10662;
  lv.v2 = 30069;
  lv.v3 = 24462;
  return lv;
}
int zig_recv_S_Ul_Us(struct S_Ul_Us);
int send_S_Ul_Us(){
  struct S_Ul_Us lv;
  lv.v1 = 10662;
  lv.v2 = 30069;
  lv.v3 = 24462;
  return zig_recv_S_Ul_Us(lv);
}

int recv_S_Ul_Vp(struct S_Ul_Vp lv){
  if (lv.v1 != 18989) return 1;
  if (lv.v2 != 16777) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Ul_Vp ret_S_Ul_Vp(){
  struct S_Ul_Vp lv;
  lv.v1 = 18989;
  lv.v2 = 16777;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Ul_Vp(struct S_Ul_Vp);
int send_S_Ul_Vp(){
  struct S_Ul_Vp lv;
  lv.v1 = 18989;
  lv.v2 = 16777;
  lv.v3 = 0;
  return zig_recv_S_Ul_Vp(lv);
}

int recv_S_Us(struct S_Us lv){
  if (lv.v1 != 13811) return 1;
  if (lv.v2 != 29262) return 2;
  return 0;
}
struct S_Us ret_S_Us(){
  struct S_Us lv;
  lv.v1 = 13811;
  lv.v2 = 29262;
  return lv;
}
int zig_recv_S_Us(struct S_Us);
int send_S_Us(){
  struct S_Us lv;
  lv.v1 = 13811;
  lv.v2 = 29262;
  return zig_recv_S_Us(lv);
}

int recv_S_Us_C(struct S_Us_C lv){
  if (lv.v1 != 31159) return 1;
  if (lv.v2 != 23983) return 2;
  if (lv.v3 != 41) return 3;
  return 0;
}
struct S_Us_C ret_S_Us_C(){
  struct S_Us_C lv;
  lv.v1 = 31159;
  lv.v2 = 23983;
  lv.v3 = 41;
  return lv;
}
int zig_recv_S_Us_C(struct S_Us_C);
int send_S_Us_C(){
  struct S_Us_C lv;
  lv.v1 = 31159;
  lv.v2 = 23983;
  lv.v3 = 41;
  return zig_recv_S_Us_C(lv);
}

int recv_S_Us_D(struct S_Us_D lv){
  if (lv.v1 != 16499) return 1;
  if (lv.v2 != 27492) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct S_Us_D ret_S_Us_D(){
  struct S_Us_D lv;
  lv.v1 = 16499;
  lv.v2 = 27492;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_S_Us_D(struct S_Us_D);
int send_S_Us_D(){
  struct S_Us_D lv;
  lv.v1 = 16499;
  lv.v2 = 27492;
  lv.v3 = 1.0;
  return zig_recv_S_Us_D(lv);
}

int recv_S_Us_F(struct S_Us_F lv){
  if (lv.v1 != 13266) return 1;
  if (lv.v2 != 27742) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct S_Us_F ret_S_Us_F(){
  struct S_Us_F lv;
  lv.v1 = 13266;
  lv.v2 = 27742;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_S_Us_F(struct S_Us_F);
int send_S_Us_F(){
  struct S_Us_F lv;
  lv.v1 = 13266;
  lv.v2 = 27742;
  lv.v3 = 0.5;
  return zig_recv_S_Us_F(lv);
}

int recv_S_Us_I(struct S_Us_I lv){
  if (lv.v1 != 15784) return 1;
  if (lv.v2 != 1905) return 2;
  if (lv.v3 != 28609) return 3;
  return 0;
}
struct S_Us_I ret_S_Us_I(){
  struct S_Us_I lv;
  lv.v1 = 15784;
  lv.v2 = 1905;
  lv.v3 = 28609;
  return lv;
}
int zig_recv_S_Us_I(struct S_Us_I);
int send_S_Us_I(){
  struct S_Us_I lv;
  lv.v1 = 15784;
  lv.v2 = 1905;
  lv.v3 = 28609;
  return zig_recv_S_Us_I(lv);
}

int recv_S_Us_Ip(struct S_Us_Ip lv){
  if (lv.v1 != 28013) return 1;
  if (lv.v2 != 16205) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Us_Ip ret_S_Us_Ip(){
  struct S_Us_Ip lv;
  lv.v1 = 28013;
  lv.v2 = 16205;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Us_Ip(struct S_Us_Ip);
int send_S_Us_Ip(){
  struct S_Us_Ip lv;
  lv.v1 = 28013;
  lv.v2 = 16205;
  lv.v3 = 0;
  return zig_recv_S_Us_Ip(lv);
}

int recv_S_Us_L(struct S_Us_L lv){
  if (lv.v1 != 27652) return 1;
  if (lv.v2 != 8858) return 2;
  if (lv.v3 != 18427) return 3;
  return 0;
}
struct S_Us_L ret_S_Us_L(){
  struct S_Us_L lv;
  lv.v1 = 27652;
  lv.v2 = 8858;
  lv.v3 = 18427;
  return lv;
}
int zig_recv_S_Us_L(struct S_Us_L);
int send_S_Us_L(){
  struct S_Us_L lv;
  lv.v1 = 27652;
  lv.v2 = 8858;
  lv.v3 = 18427;
  return zig_recv_S_Us_L(lv);
}

int recv_S_Us_S(struct S_Us_S lv){
  if (lv.v1 != 264) return 1;
  if (lv.v2 != 9355) return 2;
  if (lv.v3 != 11871) return 3;
  return 0;
}
struct S_Us_S ret_S_Us_S(){
  struct S_Us_S lv;
  lv.v1 = 264;
  lv.v2 = 9355;
  lv.v3 = 11871;
  return lv;
}
int zig_recv_S_Us_S(struct S_Us_S);
int send_S_Us_S(){
  struct S_Us_S lv;
  lv.v1 = 264;
  lv.v2 = 9355;
  lv.v3 = 11871;
  return zig_recv_S_Us_S(lv);
}

int recv_S_Us_Uc(struct S_Us_Uc lv){
  if (lv.v1 != 15177) return 1;
  if (lv.v2 != 27331) return 2;
  if (lv.v3 != 76) return 3;
  return 0;
}
struct S_Us_Uc ret_S_Us_Uc(){
  struct S_Us_Uc lv;
  lv.v1 = 15177;
  lv.v2 = 27331;
  lv.v3 = 76;
  return lv;
}
int zig_recv_S_Us_Uc(struct S_Us_Uc);
int send_S_Us_Uc(){
  struct S_Us_Uc lv;
  lv.v1 = 15177;
  lv.v2 = 27331;
  lv.v3 = 76;
  return zig_recv_S_Us_Uc(lv);
}

int recv_S_Us_Ui(struct S_Us_Ui lv){
  if (lv.v1 != 3392) return 1;
  if (lv.v2 != 15735) return 2;
  if (lv.v3 != 10641) return 3;
  return 0;
}
struct S_Us_Ui ret_S_Us_Ui(){
  struct S_Us_Ui lv;
  lv.v1 = 3392;
  lv.v2 = 15735;
  lv.v3 = 10641;
  return lv;
}
int zig_recv_S_Us_Ui(struct S_Us_Ui);
int send_S_Us_Ui(){
  struct S_Us_Ui lv;
  lv.v1 = 3392;
  lv.v2 = 15735;
  lv.v3 = 10641;
  return zig_recv_S_Us_Ui(lv);
}

int recv_S_Us_Ul(struct S_Us_Ul lv){
  if (lv.v1 != 3461) return 1;
  if (lv.v2 != 17416) return 2;
  if (lv.v3 != 5110) return 3;
  return 0;
}
struct S_Us_Ul ret_S_Us_Ul(){
  struct S_Us_Ul lv;
  lv.v1 = 3461;
  lv.v2 = 17416;
  lv.v3 = 5110;
  return lv;
}
int zig_recv_S_Us_Ul(struct S_Us_Ul);
int send_S_Us_Ul(){
  struct S_Us_Ul lv;
  lv.v1 = 3461;
  lv.v2 = 17416;
  lv.v3 = 5110;
  return zig_recv_S_Us_Ul(lv);
}

int recv_S_Us_Us(struct S_Us_Us lv){
  if (lv.v1 != 32304) return 1;
  if (lv.v2 != 27609) return 2;
  if (lv.v3 != 23414) return 3;
  return 0;
}
struct S_Us_Us ret_S_Us_Us(){
  struct S_Us_Us lv;
  lv.v1 = 32304;
  lv.v2 = 27609;
  lv.v3 = 23414;
  return lv;
}
int zig_recv_S_Us_Us(struct S_Us_Us);
int send_S_Us_Us(){
  struct S_Us_Us lv;
  lv.v1 = 32304;
  lv.v2 = 27609;
  lv.v3 = 23414;
  return zig_recv_S_Us_Us(lv);
}

int recv_S_Us_Vp(struct S_Us_Vp lv){
  if (lv.v1 != 13313) return 1;
  if (lv.v2 != 23232) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Us_Vp ret_S_Us_Vp(){
  struct S_Us_Vp lv;
  lv.v1 = 13313;
  lv.v2 = 23232;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Us_Vp(struct S_Us_Vp);
int send_S_Us_Vp(){
  struct S_Us_Vp lv;
  lv.v1 = 13313;
  lv.v2 = 23232;
  lv.v3 = 0;
  return zig_recv_S_Us_Vp(lv);
}

int recv_S_Vp(struct S_Vp lv){
  if (lv.v1 != 569) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
}
struct S_Vp ret_S_Vp(){
  struct S_Vp lv;
  lv.v1 = 569;
  lv.v2 = 0;
  return lv;
}
int zig_recv_S_Vp(struct S_Vp);
int send_S_Vp(){
  struct S_Vp lv;
  lv.v1 = 569;
  lv.v2 = 0;
  return zig_recv_S_Vp(lv);
}

int recv_S_Vp_C(struct S_Vp_C lv){
  if (lv.v1 != 25479) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 109) return 3;
  return 0;
}
struct S_Vp_C ret_S_Vp_C(){
  struct S_Vp_C lv;
  lv.v1 = 25479;
  lv.v2 = 0;
  lv.v3 = 109;
  return lv;
}
int zig_recv_S_Vp_C(struct S_Vp_C);
int send_S_Vp_C(){
  struct S_Vp_C lv;
  lv.v1 = 25479;
  lv.v2 = 0;
  lv.v3 = 109;
  return zig_recv_S_Vp_C(lv);
}

int recv_S_Vp_D(struct S_Vp_D lv){
  if (lv.v1 != 30843) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
}
struct S_Vp_D ret_S_Vp_D(){
  struct S_Vp_D lv;
  lv.v1 = 30843;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return lv;
}
int zig_recv_S_Vp_D(struct S_Vp_D);
int send_S_Vp_D(){
  struct S_Vp_D lv;
  lv.v1 = 30843;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return zig_recv_S_Vp_D(lv);
}

int recv_S_Vp_F(struct S_Vp_F lv){
  if (lv.v1 != 20007) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct S_Vp_F ret_S_Vp_F(){
  struct S_Vp_F lv;
  lv.v1 = 20007;
  lv.v2 = 0;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_S_Vp_F(struct S_Vp_F);
int send_S_Vp_F(){
  struct S_Vp_F lv;
  lv.v1 = 20007;
  lv.v2 = 0;
  lv.v3 = 7.0;
  return zig_recv_S_Vp_F(lv);
}

int recv_S_Vp_I(struct S_Vp_I lv){
  if (lv.v1 != 26287) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 6075) return 3;
  return 0;
}
struct S_Vp_I ret_S_Vp_I(){
  struct S_Vp_I lv;
  lv.v1 = 26287;
  lv.v2 = 0;
  lv.v3 = 6075;
  return lv;
}
int zig_recv_S_Vp_I(struct S_Vp_I);
int send_S_Vp_I(){
  struct S_Vp_I lv;
  lv.v1 = 26287;
  lv.v2 = 0;
  lv.v3 = 6075;
  return zig_recv_S_Vp_I(lv);
}

int recv_S_Vp_Ip(struct S_Vp_Ip lv){
  if (lv.v1 != 26387) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Vp_Ip ret_S_Vp_Ip(){
  struct S_Vp_Ip lv;
  lv.v1 = 26387;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Vp_Ip(struct S_Vp_Ip);
int send_S_Vp_Ip(){
  struct S_Vp_Ip lv;
  lv.v1 = 26387;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_S_Vp_Ip(lv);
}

int recv_S_Vp_L(struct S_Vp_L lv){
  if (lv.v1 != 26484) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 14952) return 3;
  return 0;
}
struct S_Vp_L ret_S_Vp_L(){
  struct S_Vp_L lv;
  lv.v1 = 26484;
  lv.v2 = 0;
  lv.v3 = 14952;
  return lv;
}
int zig_recv_S_Vp_L(struct S_Vp_L);
int send_S_Vp_L(){
  struct S_Vp_L lv;
  lv.v1 = 26484;
  lv.v2 = 0;
  lv.v3 = 14952;
  return zig_recv_S_Vp_L(lv);
}

int recv_S_Vp_S(struct S_Vp_S lv){
  if (lv.v1 != 12233) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 29110) return 3;
  return 0;
}
struct S_Vp_S ret_S_Vp_S(){
  struct S_Vp_S lv;
  lv.v1 = 12233;
  lv.v2 = 0;
  lv.v3 = 29110;
  return lv;
}
int zig_recv_S_Vp_S(struct S_Vp_S);
int send_S_Vp_S(){
  struct S_Vp_S lv;
  lv.v1 = 12233;
  lv.v2 = 0;
  lv.v3 = 29110;
  return zig_recv_S_Vp_S(lv);
}

int recv_S_Vp_Uc(struct S_Vp_Uc lv){
  if (lv.v1 != 9581) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 110) return 3;
  return 0;
}
struct S_Vp_Uc ret_S_Vp_Uc(){
  struct S_Vp_Uc lv;
  lv.v1 = 9581;
  lv.v2 = 0;
  lv.v3 = 110;
  return lv;
}
int zig_recv_S_Vp_Uc(struct S_Vp_Uc);
int send_S_Vp_Uc(){
  struct S_Vp_Uc lv;
  lv.v1 = 9581;
  lv.v2 = 0;
  lv.v3 = 110;
  return zig_recv_S_Vp_Uc(lv);
}

int recv_S_Vp_Ui(struct S_Vp_Ui lv){
  if (lv.v1 != 9149) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 28184) return 3;
  return 0;
}
struct S_Vp_Ui ret_S_Vp_Ui(){
  struct S_Vp_Ui lv;
  lv.v1 = 9149;
  lv.v2 = 0;
  lv.v3 = 28184;
  return lv;
}
int zig_recv_S_Vp_Ui(struct S_Vp_Ui);
int send_S_Vp_Ui(){
  struct S_Vp_Ui lv;
  lv.v1 = 9149;
  lv.v2 = 0;
  lv.v3 = 28184;
  return zig_recv_S_Vp_Ui(lv);
}

int recv_S_Vp_Ul(struct S_Vp_Ul lv){
  if (lv.v1 != 32074) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7586) return 3;
  return 0;
}
struct S_Vp_Ul ret_S_Vp_Ul(){
  struct S_Vp_Ul lv;
  lv.v1 = 32074;
  lv.v2 = 0;
  lv.v3 = 7586;
  return lv;
}
int zig_recv_S_Vp_Ul(struct S_Vp_Ul);
int send_S_Vp_Ul(){
  struct S_Vp_Ul lv;
  lv.v1 = 32074;
  lv.v2 = 0;
  lv.v3 = 7586;
  return zig_recv_S_Vp_Ul(lv);
}

int recv_S_Vp_Us(struct S_Vp_Us lv){
  if (lv.v1 != 4352) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 30808) return 3;
  return 0;
}
struct S_Vp_Us ret_S_Vp_Us(){
  struct S_Vp_Us lv;
  lv.v1 = 4352;
  lv.v2 = 0;
  lv.v3 = 30808;
  return lv;
}
int zig_recv_S_Vp_Us(struct S_Vp_Us);
int send_S_Vp_Us(){
  struct S_Vp_Us lv;
  lv.v1 = 4352;
  lv.v2 = 0;
  lv.v3 = 30808;
  return zig_recv_S_Vp_Us(lv);
}

int recv_S_Vp_Vp(struct S_Vp_Vp lv){
  if (lv.v1 != 29864) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct S_Vp_Vp ret_S_Vp_Vp(){
  struct S_Vp_Vp lv;
  lv.v1 = 29864;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}
int zig_recv_S_Vp_Vp(struct S_Vp_Vp);
int send_S_Vp_Vp(){
  struct S_Vp_Vp lv;
  lv.v1 = 29864;
  lv.v2 = 0;
  lv.v3 = 0;
  return zig_recv_S_Vp_Vp(lv);
}

int recv_Uc(struct Uc lv){
  if (lv.v1 != 34) return 1;
  return 0;
}
struct Uc ret_Uc(){
  struct Uc lv;
  lv.v1 = 34;
  return lv;
}
int zig_recv_Uc(struct Uc);
int send_Uc(){
  struct Uc lv;
  lv.v1 = 34;
  return zig_recv_Uc(lv);
}

int recv_Uc_C(struct Uc_C lv){
  if (lv.v1 != 120) return 1;
  if (lv.v2 != 27) return 2;
  return 0;
}
struct Uc_C ret_Uc_C(){
  struct Uc_C lv;
  lv.v1 = 120;
  lv.v2 = 27;
  return lv;
}
int zig_recv_Uc_C(struct Uc_C);
int send_Uc_C(){
  struct Uc_C lv;
  lv.v1 = 120;
  lv.v2 = 27;
  return zig_recv_Uc_C(lv);
}

int recv_Uc_C_C(struct Uc_C_C lv){
  if (lv.v1 != 46) return 1;
  if (lv.v2 != 6) return 2;
  if (lv.v3 != 117) return 3;
  return 0;
}
struct Uc_C_C ret_Uc_C_C(){
  struct Uc_C_C lv;
  lv.v1 = 46;
  lv.v2 = 6;
  lv.v3 = 117;
  return lv;
}
int zig_recv_Uc_C_C(struct Uc_C_C);
int send_Uc_C_C(){
  struct Uc_C_C lv;
  lv.v1 = 46;
  lv.v2 = 6;
  lv.v3 = 117;
  return zig_recv_Uc_C_C(lv);
}

int recv_Uc_C_D(struct Uc_C_D lv){
  if (lv.v1 != 1) return 1;
  if (lv.v2 != 18) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
}
struct Uc_C_D ret_Uc_C_D(){
  struct Uc_C_D lv;
  lv.v1 = 1;
  lv.v2 = 18;
  lv.v3 = 7.0;
  return lv;
}
int zig_recv_Uc_C_D(struct Uc_C_D);
int send_Uc_C_D(){
  struct Uc_C_D lv;
  lv.v1 = 1;
  lv.v2 = 18;
  lv.v3 = 7.0;
  return zig_recv_Uc_C_D(lv);
}

int recv_Uc_C_F(struct Uc_C_F lv){
  if (lv.v1 != 64) return 1;
  if (lv.v2 != 18) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
}
struct Uc_C_F ret_Uc_C_F(){
  struct Uc_C_F lv;
  lv.v1 = 64;
  lv.v2 = 18;
  lv.v3 = 1.0;
  return lv;
}
int zig_recv_Uc_C_F(struct Uc_C_F);
int send_Uc_C_F(){
  struct Uc_C_F lv;
  lv.v1 = 64;
  lv.v2 = 18;
  lv.v3 = 1.0;
  return zig_recv_Uc_C_F(lv);
}

int recv_Uc_C_I(struct Uc_C_I lv){
  if (lv.v1 != 6) return 1;
  if (lv.v2 != 59) return 2;
  if (lv.v3 != 12321) return 3;
  return 0;
}
struct Uc_C_I ret_Uc_C_I(){
  struct Uc_C_I lv;
  lv.v1 = 6;
  lv.v2 = 59;
  lv.v3 = 12321;
  return lv;
}
int zig_recv_Uc_C_I(struct Uc_C_I);
int send_Uc_C_I(){
  struct Uc_C_I lv;
  lv.v1 = 6;
  lv.v2 = 59;
  lv.v3 = 12321;
  return zig_recv_Uc_C_I(lv);
}

int recv_Uc_C_Ip(struct Uc_C_Ip lv){
  if (lv.v1 != 33) return 1;
  if (lv.v2 != 21) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_C_Ip ret_Uc_C_Ip(){
  struct Uc_C_Ip lv;
  lv.v1 = 33;
  lv.v2 = 21;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_C_Ip(struct Uc_C_Ip);
int send_Uc_C_Ip(){
  struct Uc_C_Ip lv;
  lv.v1 = 33;
  lv.v2 = 21;
  lv.v3 = 0;
  return zig_recv_Uc_C_Ip(lv);
}

int recv_Uc_C_L(struct Uc_C_L lv){
  if (lv.v1 != 99) return 1;
  if (lv.v2 != 14) return 2;
  if (lv.v3 != 17522) return 3;
  return 0;
}
struct Uc_C_L ret_Uc_C_L(){
  struct Uc_C_L lv;
  lv.v1 = 99;
  lv.v2 = 14;
  lv.v3 = 17522;
  return lv;
}
int zig_recv_Uc_C_L(struct Uc_C_L);
int send_Uc_C_L(){
  struct Uc_C_L lv;
  lv.v1 = 99;
  lv.v2 = 14;
  lv.v3 = 17522;
  return zig_recv_Uc_C_L(lv);
}

int recv_Uc_C_S(struct Uc_C_S lv){
  if (lv.v1 != 114) return 1;
  if (lv.v2 != 99) return 2;
  if (lv.v3 != 5891) return 3;
  return 0;
}
struct Uc_C_S ret_Uc_C_S(){
  struct Uc_C_S lv;
  lv.v1 = 114;
  lv.v2 = 99;
  lv.v3 = 5891;
  return lv;
}
int zig_recv_Uc_C_S(struct Uc_C_S);
int send_Uc_C_S(){
  struct Uc_C_S lv;
  lv.v1 = 114;
  lv.v2 = 99;
  lv.v3 = 5891;
  return zig_recv_Uc_C_S(lv);
}

int recv_Uc_C_Uc(struct Uc_C_Uc lv){
  if (lv.v1 != 50) return 1;
  if (lv.v2 != 55) return 2;
  if (lv.v3 != 52) return 3;
  return 0;
}
struct Uc_C_Uc ret_Uc_C_Uc(){
  struct Uc_C_Uc lv;
  lv.v1 = 50;
  lv.v2 = 55;
  lv.v3 = 52;
  return lv;
}
int zig_recv_Uc_C_Uc(struct Uc_C_Uc);
int send_Uc_C_Uc(){
  struct Uc_C_Uc lv;
  lv.v1 = 50;
  lv.v2 = 55;
  lv.v3 = 52;
  return zig_recv_Uc_C_Uc(lv);
}

int recv_Uc_C_Ui(struct Uc_C_Ui lv){
  if (lv.v1 != 125) return 1;
  if (lv.v2 != 48) return 2;
  if (lv.v3 != 18849) return 3;
  return 0;
}
struct Uc_C_Ui ret_Uc_C_Ui(){
  struct Uc_C_Ui lv;
  lv.v1 = 125;
  lv.v2 = 48;
  lv.v3 = 18849;
  return lv;
}
int zig_recv_Uc_C_Ui(struct Uc_C_Ui);
int send_Uc_C_Ui(){
  struct Uc_C_Ui lv;
  lv.v1 = 125;
  lv.v2 = 48;
  lv.v3 = 18849;
  return zig_recv_Uc_C_Ui(lv);
}

int recv_Uc_C_Ul(struct Uc_C_Ul lv){
  if (lv.v1 != 1) return 1;
  if (lv.v2 != 86) return 2;
  if (lv.v3 != 23673) return 3;
  return 0;
}
struct Uc_C_Ul ret_Uc_C_Ul(){
  struct Uc_C_Ul lv;
  lv.v1 = 1;
  lv.v2 = 86;
  lv.v3 = 23673;
  return lv;
}
int zig_recv_Uc_C_Ul(struct Uc_C_Ul);
int send_Uc_C_Ul(){
  struct Uc_C_Ul lv;
  lv.v1 = 1;
  lv.v2 = 86;
  lv.v3 = 23673;
  return zig_recv_Uc_C_Ul(lv);
}

int recv_Uc_C_Us(struct Uc_C_Us lv){
  if (lv.v1 != 59) return 1;
  if (lv.v2 != 21) return 2;
  if (lv.v3 != 23319) return 3;
  return 0;
}
struct Uc_C_Us ret_Uc_C_Us(){
  struct Uc_C_Us lv;
  lv.v1 = 59;
  lv.v2 = 21;
  lv.v3 = 23319;
  return lv;
}
int zig_recv_Uc_C_Us(struct Uc_C_Us);
int send_Uc_C_Us(){
  struct Uc_C_Us lv;
  lv.v1 = 59;
  lv.v2 = 21;
  lv.v3 = 23319;
  return zig_recv_Uc_C_Us(lv);
}

int recv_Uc_C_Vp(struct Uc_C_Vp lv){
  if (lv.v1 != 49) return 1;
  if (lv.v2 != 127) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
}
struct Uc_C_Vp ret_Uc_C_Vp(){
  struct Uc_C_Vp lv;
  lv.v1 = 49;
  lv.v2 = 127;
  lv.v3 = 0;
  return lv;
}
int zig_recv_Uc_C_Vp(struct Uc_C_Vp);
int send_Uc_C_Vp(){
  struct Uc_C_Vp lv;
  lv.v1 = 49;
  lv.v2 = 127;
  lv.v3 = 0;
  return zig_recv_Uc_C_Vp(lv);
}

int recv_Uc_D(struct Uc_D lv){
  if (lv.v1 != 83) return 1;
  if (lv.v2 != -0.25) return 2;
  return 0;
}
struct Uc_D ret_Uc_D(){
  struct Uc_D lv;
  lv.v1 = 83;
  lv.v2 = -0.25;
  return lv;
}
int zig_recv_Uc_D(struct Uc_D);
int send_Uc_D(){
  struct Uc_D lv;
  lv.v1 = 83;
  lv.v2 = -0.25;
  return zig_recv_Uc_D(lv);
}

