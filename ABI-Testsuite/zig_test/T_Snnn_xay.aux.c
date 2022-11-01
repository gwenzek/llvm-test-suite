#include "T_Snnn_xay.h"

int recv_Ip_C(struct Ip_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 48) err = 2;
  return err;
}

struct Ip_C ret_Ip_C(){
  struct Ip_C lv;
  lv.v1 = 0;
  lv.v2 = 48;
  return lv;
}

int recv_Ip_C_C(struct Ip_C_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 100) err = 2;
  if (lv.v3 != 54) err = 3;
  return err;
}

struct Ip_C_C ret_Ip_C_C(){
  struct Ip_C_C lv;
  lv.v1 = 0;
  lv.v2 = 100;
  lv.v3 = 54;
  return lv;
}

int recv_Ip_C_D(struct Ip_C_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 102) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}

struct Ip_C_D ret_Ip_C_D(){
  struct Ip_C_D lv;
  lv.v1 = 0;
  lv.v2 = 102;
  lv.v3 = 1.0;
  return lv;
}

int recv_Ip_C_F(struct Ip_C_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 92) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}

struct Ip_C_F ret_Ip_C_F(){
  struct Ip_C_F lv;
  lv.v1 = 0;
  lv.v2 = 92;
  lv.v3 = 7.0;
  return lv;
}

int recv_Ip_C_I(struct Ip_C_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 31) err = 2;
  if (lv.v3 != 27354) err = 3;
  return err;
}

struct Ip_C_I ret_Ip_C_I(){
  struct Ip_C_I lv;
  lv.v1 = 0;
  lv.v2 = 31;
  lv.v3 = 27354;
  return lv;
}

int recv_Ip_C_Ip(struct Ip_C_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 71) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_C_Ip ret_Ip_C_Ip(){
  struct Ip_C_Ip lv;
  lv.v1 = 0;
  lv.v2 = 71;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_C_L(struct Ip_C_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 81) err = 2;
  if (lv.v3 != 25596) err = 3;
  return err;
}

struct Ip_C_L ret_Ip_C_L(){
  struct Ip_C_L lv;
  lv.v1 = 0;
  lv.v2 = 81;
  lv.v3 = 25596;
  return lv;
}

int recv_Ip_C_S(struct Ip_C_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 35) err = 2;
  if (lv.v3 != 26993) err = 3;
  return err;
}

struct Ip_C_S ret_Ip_C_S(){
  struct Ip_C_S lv;
  lv.v1 = 0;
  lv.v2 = 35;
  lv.v3 = 26993;
  return lv;
}

int recv_Ip_C_Uc(struct Ip_C_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 62) err = 2;
  if (lv.v3 != 43) err = 3;
  return err;
}

struct Ip_C_Uc ret_Ip_C_Uc(){
  struct Ip_C_Uc lv;
  lv.v1 = 0;
  lv.v2 = 62;
  lv.v3 = 43;
  return lv;
}

int recv_Ip_C_Ui(struct Ip_C_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 5) err = 2;
  if (lv.v3 != 17445) err = 3;
  return err;
}

struct Ip_C_Ui ret_Ip_C_Ui(){
  struct Ip_C_Ui lv;
  lv.v1 = 0;
  lv.v2 = 5;
  lv.v3 = 17445;
  return lv;
}

int recv_Ip_C_Ul(struct Ip_C_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 8) err = 2;
  if (lv.v3 != 19265) err = 3;
  return err;
}

struct Ip_C_Ul ret_Ip_C_Ul(){
  struct Ip_C_Ul lv;
  lv.v1 = 0;
  lv.v2 = 8;
  lv.v3 = 19265;
  return lv;
}

int recv_Ip_C_Us(struct Ip_C_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 103) err = 2;
  if (lv.v3 != 22111) err = 3;
  return err;
}

struct Ip_C_Us ret_Ip_C_Us(){
  struct Ip_C_Us lv;
  lv.v1 = 0;
  lv.v2 = 103;
  lv.v3 = 22111;
  return lv;
}

int recv_Ip_C_Vp(struct Ip_C_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 95) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_C_Vp ret_Ip_C_Vp(){
  struct Ip_C_Vp lv;
  lv.v1 = 0;
  lv.v2 = 95;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_D(struct Ip_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  return err;
}

struct Ip_D ret_Ip_D(){
  struct Ip_D lv;
  lv.v1 = 0;
  lv.v2 = 1.0;
  return lv;
}

int recv_Ip_D_C(struct Ip_D_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 93) err = 3;
  return err;
}

struct Ip_D_C ret_Ip_D_C(){
  struct Ip_D_C lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 93;
  return lv;
}

int recv_Ip_D_D(struct Ip_D_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}

struct Ip_D_D ret_Ip_D_D(){
  struct Ip_D_D lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 0.5;
  return lv;
}

int recv_Ip_D_F(struct Ip_D_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}

struct Ip_D_F ret_Ip_D_F(){
  struct Ip_D_F lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = -0.25;
  return lv;
}

int recv_Ip_D_I(struct Ip_D_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 15113) err = 3;
  return err;
}

struct Ip_D_I ret_Ip_D_I(){
  struct Ip_D_I lv;
  lv.v1 = 0;
  lv.v2 = 7.0;
  lv.v3 = 15113;
  return lv;
}

int recv_Ip_D_Ip(struct Ip_D_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_D_Ip ret_Ip_D_Ip(){
  struct Ip_D_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_D_L(struct Ip_D_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 31612) err = 3;
  return err;
}

struct Ip_D_L ret_Ip_D_L(){
  struct Ip_D_L lv;
  lv.v1 = 0;
  lv.v2 = 7.0;
  lv.v3 = 31612;
  return lv;
}

int recv_Ip_D_S(struct Ip_D_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 17322) err = 3;
  return err;
}

struct Ip_D_S ret_Ip_D_S(){
  struct Ip_D_S lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = 17322;
  return lv;
}

int recv_Ip_D_Uc(struct Ip_D_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 29) err = 3;
  return err;
}

struct Ip_D_Uc ret_Ip_D_Uc(){
  struct Ip_D_Uc lv;
  lv.v1 = 0;
  lv.v2 = 1.0;
  lv.v3 = 29;
  return lv;
}

int recv_Ip_D_Ui(struct Ip_D_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 12052) err = 3;
  return err;
}

struct Ip_D_Ui ret_Ip_D_Ui(){
  struct Ip_D_Ui lv;
  lv.v1 = 0;
  lv.v2 = -2.125;
  lv.v3 = 12052;
  return lv;
}

int recv_Ip_D_Ul(struct Ip_D_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 121) err = 3;
  return err;
}

struct Ip_D_Ul ret_Ip_D_Ul(){
  struct Ip_D_Ul lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 121;
  return lv;
}

int recv_Ip_D_Us(struct Ip_D_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 2255) err = 3;
  return err;
}

struct Ip_D_Us ret_Ip_D_Us(){
  struct Ip_D_Us lv;
  lv.v1 = 0;
  lv.v2 = 1.0;
  lv.v3 = 2255;
  return lv;
}

int recv_Ip_D_Vp(struct Ip_D_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_D_Vp ret_Ip_D_Vp(){
  struct Ip_D_Vp lv;
  lv.v1 = 0;
  lv.v2 = 4.5;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_F(struct Ip_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  return err;
}

struct Ip_F ret_Ip_F(){
  struct Ip_F lv;
  lv.v1 = 0;
  lv.v2 = 1.0;
  return lv;
}

int recv_Ip_F_C(struct Ip_F_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 113) err = 3;
  return err;
}

struct Ip_F_C ret_Ip_F_C(){
  struct Ip_F_C lv;
  lv.v1 = 0;
  lv.v2 = 0.5;
  lv.v3 = 113;
  return lv;
}

int recv_Ip_F_D(struct Ip_F_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}

struct Ip_F_D ret_Ip_F_D(){
  struct Ip_F_D lv;
  lv.v1 = 0;
  lv.v2 = 0.5;
  lv.v3 = 1.0;
  return lv;
}

int recv_Ip_F_F(struct Ip_F_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}

struct Ip_F_F ret_Ip_F_F(){
  struct Ip_F_F lv;
  lv.v1 = 0;
  lv.v2 = 1.0;
  lv.v3 = -0.25;
  return lv;
}

int recv_Ip_F_I(struct Ip_F_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 2580) err = 3;
  return err;
}

struct Ip_F_I ret_Ip_F_I(){
  struct Ip_F_I lv;
  lv.v1 = 0;
  lv.v2 = 0.5;
  lv.v3 = 2580;
  return lv;
}

int recv_Ip_F_Ip(struct Ip_F_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_F_Ip ret_Ip_F_Ip(){
  struct Ip_F_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0.5;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_F_L(struct Ip_F_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 29807) err = 3;
  return err;
}

struct Ip_F_L ret_Ip_F_L(){
  struct Ip_F_L lv;
  lv.v1 = 0;
  lv.v2 = 4.5;
  lv.v3 = 29807;
  return lv;
}

int recv_Ip_F_S(struct Ip_F_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 23718) err = 3;
  return err;
}

struct Ip_F_S ret_Ip_F_S(){
  struct Ip_F_S lv;
  lv.v1 = 0;
  lv.v2 = 4.5;
  lv.v3 = 23718;
  return lv;
}

int recv_Ip_F_Uc(struct Ip_F_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 89) err = 3;
  return err;
}

struct Ip_F_Uc ret_Ip_F_Uc(){
  struct Ip_F_Uc lv;
  lv.v1 = 0;
  lv.v2 = 0.875;
  lv.v3 = 89;
  return lv;
}

int recv_Ip_F_Ui(struct Ip_F_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 8623) err = 3;
  return err;
}

struct Ip_F_Ui ret_Ip_F_Ui(){
  struct Ip_F_Ui lv;
  lv.v1 = 0;
  lv.v2 = -0.25;
  lv.v3 = 8623;
  return lv;
}

int recv_Ip_F_Ul(struct Ip_F_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 19551) err = 3;
  return err;
}

struct Ip_F_Ul ret_Ip_F_Ul(){
  struct Ip_F_Ul lv;
  lv.v1 = 0;
  lv.v2 = 4.5;
  lv.v3 = 19551;
  return lv;
}

int recv_Ip_F_Us(struct Ip_F_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 4547) err = 3;
  return err;
}

struct Ip_F_Us ret_Ip_F_Us(){
  struct Ip_F_Us lv;
  lv.v1 = 0;
  lv.v2 = 4.5;
  lv.v3 = 4547;
  return lv;
}

int recv_Ip_F_Vp(struct Ip_F_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_F_Vp ret_Ip_F_Vp(){
  struct Ip_F_Vp lv;
  lv.v1 = 0;
  lv.v2 = 7.0;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_I(struct Ip_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 3367) err = 2;
  return err;
}

struct Ip_I ret_Ip_I(){
  struct Ip_I lv;
  lv.v1 = 0;
  lv.v2 = 3367;
  return lv;
}

int recv_Ip_I_C(struct Ip_I_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 31149) err = 2;
  if (lv.v3 != 116) err = 3;
  return err;
}

struct Ip_I_C ret_Ip_I_C(){
  struct Ip_I_C lv;
  lv.v1 = 0;
  lv.v2 = 31149;
  lv.v3 = 116;
  return lv;
}

int recv_Ip_I_D(struct Ip_I_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7672) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}

struct Ip_I_D ret_Ip_I_D(){
  struct Ip_I_D lv;
  lv.v1 = 0;
  lv.v2 = 7672;
  lv.v3 = 4.5;
  return lv;
}

int recv_Ip_I_F(struct Ip_I_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1771) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}

struct Ip_I_F ret_Ip_I_F(){
  struct Ip_I_F lv;
  lv.v1 = 0;
  lv.v2 = 1771;
  lv.v3 = 0.875;
  return lv;
}

int recv_Ip_I_I(struct Ip_I_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 5017) err = 2;
  if (lv.v3 != 20845) err = 3;
  return err;
}

struct Ip_I_I ret_Ip_I_I(){
  struct Ip_I_I lv;
  lv.v1 = 0;
  lv.v2 = 5017;
  lv.v3 = 20845;
  return lv;
}

int recv_Ip_I_Ip(struct Ip_I_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6958) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_I_Ip ret_Ip_I_Ip(){
  struct Ip_I_Ip lv;
  lv.v1 = 0;
  lv.v2 = 6958;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_I_L(struct Ip_I_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 8160) err = 2;
  if (lv.v3 != 1515) err = 3;
  return err;
}

struct Ip_I_L ret_Ip_I_L(){
  struct Ip_I_L lv;
  lv.v1 = 0;
  lv.v2 = 8160;
  lv.v3 = 1515;
  return lv;
}

int recv_Ip_I_S(struct Ip_I_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 8057) err = 2;
  if (lv.v3 != 9459) err = 3;
  return err;
}

struct Ip_I_S ret_Ip_I_S(){
  struct Ip_I_S lv;
  lv.v1 = 0;
  lv.v2 = 8057;
  lv.v3 = 9459;
  return lv;
}

int recv_Ip_I_Uc(struct Ip_I_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28491) err = 2;
  if (lv.v3 != 12) err = 3;
  return err;
}

struct Ip_I_Uc ret_Ip_I_Uc(){
  struct Ip_I_Uc lv;
  lv.v1 = 0;
  lv.v2 = 28491;
  lv.v3 = 12;
  return lv;
}

int recv_Ip_I_Ui(struct Ip_I_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28684) err = 2;
  if (lv.v3 != 30439) err = 3;
  return err;
}

struct Ip_I_Ui ret_Ip_I_Ui(){
  struct Ip_I_Ui lv;
  lv.v1 = 0;
  lv.v2 = 28684;
  lv.v3 = 30439;
  return lv;
}

int recv_Ip_I_Ul(struct Ip_I_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4941) err = 2;
  if (lv.v3 != 459) err = 3;
  return err;
}

struct Ip_I_Ul ret_Ip_I_Ul(){
  struct Ip_I_Ul lv;
  lv.v1 = 0;
  lv.v2 = 4941;
  lv.v3 = 459;
  return lv;
}

int recv_Ip_I_Us(struct Ip_I_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21937) err = 2;
  if (lv.v3 != 12140) err = 3;
  return err;
}

struct Ip_I_Us ret_Ip_I_Us(){
  struct Ip_I_Us lv;
  lv.v1 = 0;
  lv.v2 = 21937;
  lv.v3 = 12140;
  return lv;
}

int recv_Ip_I_Vp(struct Ip_I_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10363) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_I_Vp ret_Ip_I_Vp(){
  struct Ip_I_Vp lv;
  lv.v1 = 0;
  lv.v2 = 10363;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Ip(struct Ip_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}

struct Ip_Ip ret_Ip_Ip(){
  struct Ip_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0;
  return lv;
}

int recv_Ip_Ip_C(struct Ip_Ip_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 114) err = 3;
  return err;
}

struct Ip_Ip_C ret_Ip_Ip_C(){
  struct Ip_Ip_C lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 114;
  return lv;
}

int recv_Ip_Ip_D(struct Ip_Ip_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}

struct Ip_Ip_D ret_Ip_Ip_D(){
  struct Ip_Ip_D lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = -0.25;
  return lv;
}

int recv_Ip_Ip_F(struct Ip_Ip_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}

struct Ip_Ip_F ret_Ip_Ip_F(){
  struct Ip_Ip_F lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0.875;
  return lv;
}

int recv_Ip_Ip_I(struct Ip_Ip_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 280) err = 3;
  return err;
}

struct Ip_Ip_I ret_Ip_Ip_I(){
  struct Ip_Ip_I lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 280;
  return lv;
}

int recv_Ip_Ip_Ip(struct Ip_Ip_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Ip_Ip ret_Ip_Ip_Ip(){
  struct Ip_Ip_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Ip_L(struct Ip_Ip_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 22120) err = 3;
  return err;
}

struct Ip_Ip_L ret_Ip_Ip_L(){
  struct Ip_Ip_L lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 22120;
  return lv;
}

int recv_Ip_Ip_S(struct Ip_Ip_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 32235) err = 3;
  return err;
}

struct Ip_Ip_S ret_Ip_Ip_S(){
  struct Ip_Ip_S lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 32235;
  return lv;
}

int recv_Ip_Ip_Uc(struct Ip_Ip_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 78) err = 3;
  return err;
}

struct Ip_Ip_Uc ret_Ip_Ip_Uc(){
  struct Ip_Ip_Uc lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 78;
  return lv;
}

int recv_Ip_Ip_Ui(struct Ip_Ip_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 18551) err = 3;
  return err;
}

struct Ip_Ip_Ui ret_Ip_Ip_Ui(){
  struct Ip_Ip_Ui lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 18551;
  return lv;
}

int recv_Ip_Ip_Ul(struct Ip_Ip_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 15251) err = 3;
  return err;
}

struct Ip_Ip_Ul ret_Ip_Ip_Ul(){
  struct Ip_Ip_Ul lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 15251;
  return lv;
}

int recv_Ip_Ip_Us(struct Ip_Ip_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 5948) err = 3;
  return err;
}

struct Ip_Ip_Us ret_Ip_Ip_Us(){
  struct Ip_Ip_Us lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 5948;
  return lv;
}

int recv_Ip_Ip_Vp(struct Ip_Ip_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Ip_Vp ret_Ip_Ip_Vp(){
  struct Ip_Ip_Vp lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_L(struct Ip_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21125) err = 2;
  return err;
}

struct Ip_L ret_Ip_L(){
  struct Ip_L lv;
  lv.v1 = 0;
  lv.v2 = 21125;
  return lv;
}

int recv_Ip_L_C(struct Ip_L_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1312) err = 2;
  if (lv.v3 != 12) err = 3;
  return err;
}

struct Ip_L_C ret_Ip_L_C(){
  struct Ip_L_C lv;
  lv.v1 = 0;
  lv.v2 = 1312;
  lv.v3 = 12;
  return lv;
}

int recv_Ip_L_D(struct Ip_L_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27466) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}

struct Ip_L_D ret_Ip_L_D(){
  struct Ip_L_D lv;
  lv.v1 = 0;
  lv.v2 = 27466;
  lv.v3 = 7.0;
  return lv;
}

int recv_Ip_L_F(struct Ip_L_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 17855) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}

struct Ip_L_F ret_Ip_L_F(){
  struct Ip_L_F lv;
  lv.v1 = 0;
  lv.v2 = 17855;
  lv.v3 = 1.0;
  return lv;
}

int recv_Ip_L_I(struct Ip_L_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7654) err = 2;
  if (lv.v3 != 10911) err = 3;
  return err;
}

struct Ip_L_I ret_Ip_L_I(){
  struct Ip_L_I lv;
  lv.v1 = 0;
  lv.v2 = 7654;
  lv.v3 = 10911;
  return lv;
}

int recv_Ip_L_Ip(struct Ip_L_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26859) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_L_Ip ret_Ip_L_Ip(){
  struct Ip_L_Ip lv;
  lv.v1 = 0;
  lv.v2 = 26859;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_L_L(struct Ip_L_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 18638) err = 2;
  if (lv.v3 != 12483) err = 3;
  return err;
}

struct Ip_L_L ret_Ip_L_L(){
  struct Ip_L_L lv;
  lv.v1 = 0;
  lv.v2 = 18638;
  lv.v3 = 12483;
  return lv;
}

int recv_Ip_L_S(struct Ip_L_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28984) err = 2;
  if (lv.v3 != 32672) err = 3;
  return err;
}

struct Ip_L_S ret_Ip_L_S(){
  struct Ip_L_S lv;
  lv.v1 = 0;
  lv.v2 = 28984;
  lv.v3 = 32672;
  return lv;
}

int recv_Ip_L_Uc(struct Ip_L_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 9817) err = 2;
  if (lv.v3 != 64) err = 3;
  return err;
}

struct Ip_L_Uc ret_Ip_L_Uc(){
  struct Ip_L_Uc lv;
  lv.v1 = 0;
  lv.v2 = 9817;
  lv.v3 = 64;
  return lv;
}

int recv_Ip_L_Ui(struct Ip_L_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28354) err = 2;
  if (lv.v3 != 7440) err = 3;
  return err;
}

struct Ip_L_Ui ret_Ip_L_Ui(){
  struct Ip_L_Ui lv;
  lv.v1 = 0;
  lv.v2 = 28354;
  lv.v3 = 7440;
  return lv;
}

int recv_Ip_L_Ul(struct Ip_L_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7711) err = 2;
  if (lv.v3 != 11119) err = 3;
  return err;
}

struct Ip_L_Ul ret_Ip_L_Ul(){
  struct Ip_L_Ul lv;
  lv.v1 = 0;
  lv.v2 = 7711;
  lv.v3 = 11119;
  return lv;
}

int recv_Ip_L_Us(struct Ip_L_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 11565) err = 2;
  if (lv.v3 != 21325) err = 3;
  return err;
}

struct Ip_L_Us ret_Ip_L_Us(){
  struct Ip_L_Us lv;
  lv.v1 = 0;
  lv.v2 = 11565;
  lv.v3 = 21325;
  return lv;
}

int recv_Ip_L_Vp(struct Ip_L_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 5895) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_L_Vp ret_Ip_L_Vp(){
  struct Ip_L_Vp lv;
  lv.v1 = 0;
  lv.v2 = 5895;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_S(struct Ip_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 9691) err = 2;
  return err;
}

struct Ip_S ret_Ip_S(){
  struct Ip_S lv;
  lv.v1 = 0;
  lv.v2 = 9691;
  return lv;
}

int recv_Ip_S_C(struct Ip_S_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26200) err = 2;
  if (lv.v3 != 112) err = 3;
  return err;
}

struct Ip_S_C ret_Ip_S_C(){
  struct Ip_S_C lv;
  lv.v1 = 0;
  lv.v2 = 26200;
  lv.v3 = 112;
  return lv;
}

int recv_Ip_S_D(struct Ip_S_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10971) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}

struct Ip_S_D ret_Ip_S_D(){
  struct Ip_S_D lv;
  lv.v1 = 0;
  lv.v2 = 10971;
  lv.v3 = -2.125;
  return lv;
}

int recv_Ip_S_F(struct Ip_S_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6508) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}

struct Ip_S_F ret_Ip_S_F(){
  struct Ip_S_F lv;
  lv.v1 = 0;
  lv.v2 = 6508;
  lv.v3 = -0.25;
  return lv;
}

int recv_Ip_S_I(struct Ip_S_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10414) err = 2;
  if (lv.v3 != 28549) err = 3;
  return err;
}

struct Ip_S_I ret_Ip_S_I(){
  struct Ip_S_I lv;
  lv.v1 = 0;
  lv.v2 = 10414;
  lv.v3 = 28549;
  return lv;
}

int recv_Ip_S_Ip(struct Ip_S_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15406) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_S_Ip ret_Ip_S_Ip(){
  struct Ip_S_Ip lv;
  lv.v1 = 0;
  lv.v2 = 15406;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_S_L(struct Ip_S_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19761) err = 2;
  if (lv.v3 != 19245) err = 3;
  return err;
}

struct Ip_S_L ret_Ip_S_L(){
  struct Ip_S_L lv;
  lv.v1 = 0;
  lv.v2 = 19761;
  lv.v3 = 19245;
  return lv;
}

int recv_Ip_S_S(struct Ip_S_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 18559) err = 2;
  if (lv.v3 != 4079) err = 3;
  return err;
}

struct Ip_S_S ret_Ip_S_S(){
  struct Ip_S_S lv;
  lv.v1 = 0;
  lv.v2 = 18559;
  lv.v3 = 4079;
  return lv;
}

int recv_Ip_S_Uc(struct Ip_S_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 25806) err = 2;
  if (lv.v3 != 10) err = 3;
  return err;
}

struct Ip_S_Uc ret_Ip_S_Uc(){
  struct Ip_S_Uc lv;
  lv.v1 = 0;
  lv.v2 = 25806;
  lv.v3 = 10;
  return lv;
}

int recv_Ip_S_Ui(struct Ip_S_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 23886) err = 2;
  if (lv.v3 != 4382) err = 3;
  return err;
}

struct Ip_S_Ui ret_Ip_S_Ui(){
  struct Ip_S_Ui lv;
  lv.v1 = 0;
  lv.v2 = 23886;
  lv.v3 = 4382;
  return lv;
}

int recv_Ip_S_Ul(struct Ip_S_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15124) err = 2;
  if (lv.v3 != 473) err = 3;
  return err;
}

struct Ip_S_Ul ret_Ip_S_Ul(){
  struct Ip_S_Ul lv;
  lv.v1 = 0;
  lv.v2 = 15124;
  lv.v3 = 473;
  return lv;
}

int recv_Ip_S_Us(struct Ip_S_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 152) err = 2;
  if (lv.v3 != 18830) err = 3;
  return err;
}

struct Ip_S_Us ret_Ip_S_Us(){
  struct Ip_S_Us lv;
  lv.v1 = 0;
  lv.v2 = 152;
  lv.v3 = 18830;
  return lv;
}

int recv_Ip_S_Vp(struct Ip_S_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15723) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_S_Vp ret_Ip_S_Vp(){
  struct Ip_S_Vp lv;
  lv.v1 = 0;
  lv.v2 = 15723;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Uc(struct Ip_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 23) err = 2;
  return err;
}

struct Ip_Uc ret_Ip_Uc(){
  struct Ip_Uc lv;
  lv.v1 = 0;
  lv.v2 = 23;
  return lv;
}

int recv_Ip_Uc_C(struct Ip_Uc_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 60) err = 2;
  if (lv.v3 != 27) err = 3;
  return err;
}

struct Ip_Uc_C ret_Ip_Uc_C(){
  struct Ip_Uc_C lv;
  lv.v1 = 0;
  lv.v2 = 60;
  lv.v3 = 27;
  return lv;
}

int recv_Ip_Uc_D(struct Ip_Uc_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 100) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}

struct Ip_Uc_D ret_Ip_Uc_D(){
  struct Ip_Uc_D lv;
  lv.v1 = 0;
  lv.v2 = 100;
  lv.v3 = 1.0;
  return lv;
}

int recv_Ip_Uc_F(struct Ip_Uc_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 30) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}

struct Ip_Uc_F ret_Ip_Uc_F(){
  struct Ip_Uc_F lv;
  lv.v1 = 0;
  lv.v2 = 30;
  lv.v3 = 0.875;
  return lv;
}

int recv_Ip_Uc_I(struct Ip_Uc_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 80) err = 2;
  if (lv.v3 != 21664) err = 3;
  return err;
}

struct Ip_Uc_I ret_Ip_Uc_I(){
  struct Ip_Uc_I lv;
  lv.v1 = 0;
  lv.v2 = 80;
  lv.v3 = 21664;
  return lv;
}

int recv_Ip_Uc_Ip(struct Ip_Uc_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 48) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Uc_Ip ret_Ip_Uc_Ip(){
  struct Ip_Uc_Ip lv;
  lv.v1 = 0;
  lv.v2 = 48;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Uc_L(struct Ip_Uc_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 81) err = 2;
  if (lv.v3 != 23135) err = 3;
  return err;
}

struct Ip_Uc_L ret_Ip_Uc_L(){
  struct Ip_Uc_L lv;
  lv.v1 = 0;
  lv.v2 = 81;
  lv.v3 = 23135;
  return lv;
}

int recv_Ip_Uc_S(struct Ip_Uc_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 79) err = 2;
  if (lv.v3 != 16891) err = 3;
  return err;
}

struct Ip_Uc_S ret_Ip_Uc_S(){
  struct Ip_Uc_S lv;
  lv.v1 = 0;
  lv.v2 = 79;
  lv.v3 = 16891;
  return lv;
}

int recv_Ip_Uc_Uc(struct Ip_Uc_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 8) err = 2;
  if (lv.v3 != 27) err = 3;
  return err;
}

struct Ip_Uc_Uc ret_Ip_Uc_Uc(){
  struct Ip_Uc_Uc lv;
  lv.v1 = 0;
  lv.v2 = 8;
  lv.v3 = 27;
  return lv;
}

int recv_Ip_Uc_Ui(struct Ip_Uc_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 49) err = 2;
  if (lv.v3 != 23504) err = 3;
  return err;
}

struct Ip_Uc_Ui ret_Ip_Uc_Ui(){
  struct Ip_Uc_Ui lv;
  lv.v1 = 0;
  lv.v2 = 49;
  lv.v3 = 23504;
  return lv;
}

int recv_Ip_Uc_Ul(struct Ip_Uc_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 77) err = 2;
  if (lv.v3 != 14264) err = 3;
  return err;
}

struct Ip_Uc_Ul ret_Ip_Uc_Ul(){
  struct Ip_Uc_Ul lv;
  lv.v1 = 0;
  lv.v2 = 77;
  lv.v3 = 14264;
  return lv;
}

int recv_Ip_Uc_Us(struct Ip_Uc_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 92) err = 2;
  if (lv.v3 != 21738) err = 3;
  return err;
}

struct Ip_Uc_Us ret_Ip_Uc_Us(){
  struct Ip_Uc_Us lv;
  lv.v1 = 0;
  lv.v2 = 92;
  lv.v3 = 21738;
  return lv;
}

int recv_Ip_Uc_Vp(struct Ip_Uc_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 9) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Uc_Vp ret_Ip_Uc_Vp(){
  struct Ip_Uc_Vp lv;
  lv.v1 = 0;
  lv.v2 = 9;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Ui(struct Ip_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13021) err = 2;
  return err;
}

struct Ip_Ui ret_Ip_Ui(){
  struct Ip_Ui lv;
  lv.v1 = 0;
  lv.v2 = 13021;
  return lv;
}

int recv_Ip_Ui_C(struct Ip_Ui_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19997) err = 2;
  if (lv.v3 != 43) err = 3;
  return err;
}

struct Ip_Ui_C ret_Ip_Ui_C(){
  struct Ip_Ui_C lv;
  lv.v1 = 0;
  lv.v2 = 19997;
  lv.v3 = 43;
  return lv;
}

int recv_Ip_Ui_D(struct Ip_Ui_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21799) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}

struct Ip_Ui_D ret_Ip_Ui_D(){
  struct Ip_Ui_D lv;
  lv.v1 = 0;
  lv.v2 = 21799;
  lv.v3 = -0.25;
  return lv;
}

int recv_Ip_Ui_F(struct Ip_Ui_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 5378) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}

struct Ip_Ui_F ret_Ip_Ui_F(){
  struct Ip_Ui_F lv;
  lv.v1 = 0;
  lv.v2 = 5378;
  lv.v3 = -2.125;
  return lv;
}

int recv_Ip_Ui_I(struct Ip_Ui_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 25809) err = 2;
  if (lv.v3 != 23075) err = 3;
  return err;
}

struct Ip_Ui_I ret_Ip_Ui_I(){
  struct Ip_Ui_I lv;
  lv.v1 = 0;
  lv.v2 = 25809;
  lv.v3 = 23075;
  return lv;
}

int recv_Ip_Ui_Ip(struct Ip_Ui_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6521) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Ui_Ip ret_Ip_Ui_Ip(){
  struct Ip_Ui_Ip lv;
  lv.v1 = 0;
  lv.v2 = 6521;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Ui_L(struct Ip_Ui_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 14878) err = 2;
  if (lv.v3 != 1754) err = 3;
  return err;
}

struct Ip_Ui_L ret_Ip_Ui_L(){
  struct Ip_Ui_L lv;
  lv.v1 = 0;
  lv.v2 = 14878;
  lv.v3 = 1754;
  return lv;
}

int recv_Ip_Ui_S(struct Ip_Ui_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16653) err = 2;
  if (lv.v3 != 15118) err = 3;
  return err;
}

struct Ip_Ui_S ret_Ip_Ui_S(){
  struct Ip_Ui_S lv;
  lv.v1 = 0;
  lv.v2 = 16653;
  lv.v3 = 15118;
  return lv;
}

int recv_Ip_Ui_Uc(struct Ip_Ui_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10246) err = 2;
  if (lv.v3 != 61) err = 3;
  return err;
}

struct Ip_Ui_Uc ret_Ip_Ui_Uc(){
  struct Ip_Ui_Uc lv;
  lv.v1 = 0;
  lv.v2 = 10246;
  lv.v3 = 61;
  return lv;
}

int recv_Ip_Ui_Ui(struct Ip_Ui_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 18882) err = 2;
  if (lv.v3 != 5120) err = 3;
  return err;
}

struct Ip_Ui_Ui ret_Ip_Ui_Ui(){
  struct Ip_Ui_Ui lv;
  lv.v1 = 0;
  lv.v2 = 18882;
  lv.v3 = 5120;
  return lv;
}

int recv_Ip_Ui_Ul(struct Ip_Ui_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1490) err = 2;
  if (lv.v3 != 30616) err = 3;
  return err;
}

struct Ip_Ui_Ul ret_Ip_Ui_Ul(){
  struct Ip_Ui_Ul lv;
  lv.v1 = 0;
  lv.v2 = 1490;
  lv.v3 = 30616;
  return lv;
}

int recv_Ip_Ui_Us(struct Ip_Ui_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26123) err = 2;
  if (lv.v3 != 31152) err = 3;
  return err;
}

struct Ip_Ui_Us ret_Ip_Ui_Us(){
  struct Ip_Ui_Us lv;
  lv.v1 = 0;
  lv.v2 = 26123;
  lv.v3 = 31152;
  return lv;
}

int recv_Ip_Ui_Vp(struct Ip_Ui_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 17588) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Ui_Vp ret_Ip_Ui_Vp(){
  struct Ip_Ui_Vp lv;
  lv.v1 = 0;
  lv.v2 = 17588;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Ul(struct Ip_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 12948) err = 2;
  return err;
}

struct Ip_Ul ret_Ip_Ul(){
  struct Ip_Ul lv;
  lv.v1 = 0;
  lv.v2 = 12948;
  return lv;
}

int recv_Ip_Ul_C(struct Ip_Ul_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 22886) err = 2;
  if (lv.v3 != 58) err = 3;
  return err;
}

struct Ip_Ul_C ret_Ip_Ul_C(){
  struct Ip_Ul_C lv;
  lv.v1 = 0;
  lv.v2 = 22886;
  lv.v3 = 58;
  return lv;
}

int recv_Ip_Ul_D(struct Ip_Ul_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16802) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}

struct Ip_Ul_D ret_Ip_Ul_D(){
  struct Ip_Ul_D lv;
  lv.v1 = 0;
  lv.v2 = 16802;
  lv.v3 = -0.25;
  return lv;
}

int recv_Ip_Ul_F(struct Ip_Ul_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 29674) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}

struct Ip_Ul_F ret_Ip_Ul_F(){
  struct Ip_Ul_F lv;
  lv.v1 = 0;
  lv.v2 = 29674;
  lv.v3 = -2.125;
  return lv;
}

int recv_Ip_Ul_I(struct Ip_Ul_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 17645) err = 2;
  if (lv.v3 != 19430) err = 3;
  return err;
}

struct Ip_Ul_I ret_Ip_Ul_I(){
  struct Ip_Ul_I lv;
  lv.v1 = 0;
  lv.v2 = 17645;
  lv.v3 = 19430;
  return lv;
}

int recv_Ip_Ul_Ip(struct Ip_Ul_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13000) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Ul_Ip ret_Ip_Ul_Ip(){
  struct Ip_Ul_Ip lv;
  lv.v1 = 0;
  lv.v2 = 13000;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Ul_L(struct Ip_Ul_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 25150) err = 2;
  if (lv.v3 != 28024) err = 3;
  return err;
}

struct Ip_Ul_L ret_Ip_Ul_L(){
  struct Ip_Ul_L lv;
  lv.v1 = 0;
  lv.v2 = 25150;
  lv.v3 = 28024;
  return lv;
}

int recv_Ip_Ul_S(struct Ip_Ul_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26141) err = 2;
  if (lv.v3 != 12065) err = 3;
  return err;
}

struct Ip_Ul_S ret_Ip_Ul_S(){
  struct Ip_Ul_S lv;
  lv.v1 = 0;
  lv.v2 = 26141;
  lv.v3 = 12065;
  return lv;
}

int recv_Ip_Ul_Uc(struct Ip_Ul_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 18180) err = 2;
  if (lv.v3 != 51) err = 3;
  return err;
}

struct Ip_Ul_Uc ret_Ip_Ul_Uc(){
  struct Ip_Ul_Uc lv;
  lv.v1 = 0;
  lv.v2 = 18180;
  lv.v3 = 51;
  return lv;
}

int recv_Ip_Ul_Ui(struct Ip_Ul_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 12813) err = 2;
  if (lv.v3 != 25993) err = 3;
  return err;
}

struct Ip_Ul_Ui ret_Ip_Ul_Ui(){
  struct Ip_Ul_Ui lv;
  lv.v1 = 0;
  lv.v2 = 12813;
  lv.v3 = 25993;
  return lv;
}

int recv_Ip_Ul_Ul(struct Ip_Ul_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13011) err = 2;
  if (lv.v3 != 7993) err = 3;
  return err;
}

struct Ip_Ul_Ul ret_Ip_Ul_Ul(){
  struct Ip_Ul_Ul lv;
  lv.v1 = 0;
  lv.v2 = 13011;
  lv.v3 = 7993;
  return lv;
}

int recv_Ip_Ul_Us(struct Ip_Ul_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20088) err = 2;
  if (lv.v3 != 31035) err = 3;
  return err;
}

struct Ip_Ul_Us ret_Ip_Ul_Us(){
  struct Ip_Ul_Us lv;
  lv.v1 = 0;
  lv.v2 = 20088;
  lv.v3 = 31035;
  return lv;
}

int recv_Ip_Ul_Vp(struct Ip_Ul_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28724) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Ul_Vp ret_Ip_Ul_Vp(){
  struct Ip_Ul_Vp lv;
  lv.v1 = 0;
  lv.v2 = 28724;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Us(struct Ip_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28990) err = 2;
  return err;
}

struct Ip_Us ret_Ip_Us(){
  struct Ip_Us lv;
  lv.v1 = 0;
  lv.v2 = 28990;
  return lv;
}

int recv_Ip_Us_C(struct Ip_Us_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10209) err = 2;
  if (lv.v3 != 46) err = 3;
  return err;
}

struct Ip_Us_C ret_Ip_Us_C(){
  struct Ip_Us_C lv;
  lv.v1 = 0;
  lv.v2 = 10209;
  lv.v3 = 46;
  return lv;
}

int recv_Ip_Us_D(struct Ip_Us_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 2528) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}

struct Ip_Us_D ret_Ip_Us_D(){
  struct Ip_Us_D lv;
  lv.v1 = 0;
  lv.v2 = 2528;
  lv.v3 = 4.5;
  return lv;
}

int recv_Ip_Us_F(struct Ip_Us_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1427) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}

struct Ip_Us_F ret_Ip_Us_F(){
  struct Ip_Us_F lv;
  lv.v1 = 0;
  lv.v2 = 1427;
  lv.v3 = 0.875;
  return lv;
}

int recv_Ip_Us_I(struct Ip_Us_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28106) err = 2;
  if (lv.v3 != 11544) err = 3;
  return err;
}

struct Ip_Us_I ret_Ip_Us_I(){
  struct Ip_Us_I lv;
  lv.v1 = 0;
  lv.v2 = 28106;
  lv.v3 = 11544;
  return lv;
}

int recv_Ip_Us_Ip(struct Ip_Us_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6349) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Us_Ip ret_Ip_Us_Ip(){
  struct Ip_Us_Ip lv;
  lv.v1 = 0;
  lv.v2 = 6349;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Us_L(struct Ip_Us_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 2930) err = 2;
  if (lv.v3 != 17268) err = 3;
  return err;
}

struct Ip_Us_L ret_Ip_Us_L(){
  struct Ip_Us_L lv;
  lv.v1 = 0;
  lv.v2 = 2930;
  lv.v3 = 17268;
  return lv;
}

int recv_Ip_Us_S(struct Ip_Us_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26284) err = 2;
  if (lv.v3 != 4156) err = 3;
  return err;
}

struct Ip_Us_S ret_Ip_Us_S(){
  struct Ip_Us_S lv;
  lv.v1 = 0;
  lv.v2 = 26284;
  lv.v3 = 4156;
  return lv;
}

int recv_Ip_Us_Uc(struct Ip_Us_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16496) err = 2;
  if (lv.v3 != 25) err = 3;
  return err;
}

struct Ip_Us_Uc ret_Ip_Us_Uc(){
  struct Ip_Us_Uc lv;
  lv.v1 = 0;
  lv.v2 = 16496;
  lv.v3 = 25;
  return lv;
}

int recv_Ip_Us_Ui(struct Ip_Us_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21265) err = 2;
  if (lv.v3 != 27246) err = 3;
  return err;
}

struct Ip_Us_Ui ret_Ip_Us_Ui(){
  struct Ip_Us_Ui lv;
  lv.v1 = 0;
  lv.v2 = 21265;
  lv.v3 = 27246;
  return lv;
}

int recv_Ip_Us_Ul(struct Ip_Us_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 12474) err = 2;
  if (lv.v3 != 2975) err = 3;
  return err;
}

struct Ip_Us_Ul ret_Ip_Us_Ul(){
  struct Ip_Us_Ul lv;
  lv.v1 = 0;
  lv.v2 = 12474;
  lv.v3 = 2975;
  return lv;
}

int recv_Ip_Us_Us(struct Ip_Us_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7970) err = 2;
  if (lv.v3 != 1591) err = 3;
  return err;
}

struct Ip_Us_Us ret_Ip_Us_Us(){
  struct Ip_Us_Us lv;
  lv.v1 = 0;
  lv.v2 = 7970;
  lv.v3 = 1591;
  return lv;
}

int recv_Ip_Us_Vp(struct Ip_Us_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15741) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Us_Vp ret_Ip_Us_Vp(){
  struct Ip_Us_Vp lv;
  lv.v1 = 0;
  lv.v2 = 15741;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Vp(struct Ip_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}

struct Ip_Vp ret_Ip_Vp(){
  struct Ip_Vp lv;
  lv.v1 = 0;
  lv.v2 = 0;
  return lv;
}

int recv_Ip_Vp_C(struct Ip_Vp_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 90) err = 3;
  return err;
}

struct Ip_Vp_C ret_Ip_Vp_C(){
  struct Ip_Vp_C lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 90;
  return lv;
}

int recv_Ip_Vp_D(struct Ip_Vp_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}

struct Ip_Vp_D ret_Ip_Vp_D(){
  struct Ip_Vp_D lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return lv;
}

int recv_Ip_Vp_F(struct Ip_Vp_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}

struct Ip_Vp_F ret_Ip_Vp_F(){
  struct Ip_Vp_F lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return lv;
}

int recv_Ip_Vp_I(struct Ip_Vp_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 19530) err = 3;
  return err;
}

struct Ip_Vp_I ret_Ip_Vp_I(){
  struct Ip_Vp_I lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 19530;
  return lv;
}

int recv_Ip_Vp_Ip(struct Ip_Vp_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Vp_Ip ret_Ip_Vp_Ip(){
  struct Ip_Vp_Ip lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}

int recv_Ip_Vp_L(struct Ip_Vp_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 26980) err = 3;
  return err;
}

struct Ip_Vp_L ret_Ip_Vp_L(){
  struct Ip_Vp_L lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 26980;
  return lv;
}

int recv_Ip_Vp_S(struct Ip_Vp_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 8250) err = 3;
  return err;
}

struct Ip_Vp_S ret_Ip_Vp_S(){
  struct Ip_Vp_S lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 8250;
  return lv;
}

int recv_Ip_Vp_Uc(struct Ip_Vp_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 57) err = 3;
  return err;
}

struct Ip_Vp_Uc ret_Ip_Vp_Uc(){
  struct Ip_Vp_Uc lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 57;
  return lv;
}

int recv_Ip_Vp_Ui(struct Ip_Vp_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 18658) err = 3;
  return err;
}

struct Ip_Vp_Ui ret_Ip_Vp_Ui(){
  struct Ip_Vp_Ui lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 18658;
  return lv;
}

int recv_Ip_Vp_Ul(struct Ip_Vp_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 15371) err = 3;
  return err;
}

struct Ip_Vp_Ul ret_Ip_Vp_Ul(){
  struct Ip_Vp_Ul lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 15371;
  return lv;
}

int recv_Ip_Vp_Us(struct Ip_Vp_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 820) err = 3;
  return err;
}

struct Ip_Vp_Us ret_Ip_Vp_Us(){
  struct Ip_Vp_Us lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 820;
  return lv;
}

int recv_Ip_Vp_Vp(struct Ip_Vp_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct Ip_Vp_Vp ret_Ip_Vp_Vp(){
  struct Ip_Vp_Vp lv;
  lv.v1 = 0;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}

int recv_L(struct L lv){
  int err = 0;
  if (lv.v1 != 6143) err = 1;
  return err;
}

struct L ret_L(){
  struct L lv;
  lv.v1 = 6143;
  return lv;
}

int recv_L_C(struct L_C lv){
  int err = 0;
  if (lv.v1 != 6729) err = 1;
  if (lv.v2 != 117) err = 2;
  return err;
}

struct L_C ret_L_C(){
  struct L_C lv;
  lv.v1 = 6729;
  lv.v2 = 117;
  return lv;
}

int recv_L_C_C(struct L_C_C lv){
  int err = 0;
  if (lv.v1 != 10530) err = 1;
  if (lv.v2 != 63) err = 2;
  if (lv.v3 != 49) err = 3;
  return err;
}

struct L_C_C ret_L_C_C(){
  struct L_C_C lv;
  lv.v1 = 10530;
  lv.v2 = 63;
  lv.v3 = 49;
  return lv;
}

int recv_L_C_D(struct L_C_D lv){
  int err = 0;
  if (lv.v1 != 11086) err = 1;
  if (lv.v2 != 52) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}

struct L_C_D ret_L_C_D(){
  struct L_C_D lv;
  lv.v1 = 11086;
  lv.v2 = 52;
  lv.v3 = 0.875;
  return lv;
}

int recv_L_C_F(struct L_C_F lv){
  int err = 0;
  if (lv.v1 != 28822) err = 1;
  if (lv.v2 != 125) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}

struct L_C_F ret_L_C_F(){
  struct L_C_F lv;
  lv.v1 = 28822;
  lv.v2 = 125;
  lv.v3 = 1.0;
  return lv;
}

int recv_L_C_I(struct L_C_I lv){
  int err = 0;
  if (lv.v1 != 18441) err = 1;
  if (lv.v2 != 37) err = 2;
  if (lv.v3 != 3289) err = 3;
  return err;
}

struct L_C_I ret_L_C_I(){
  struct L_C_I lv;
  lv.v1 = 18441;
  lv.v2 = 37;
  lv.v3 = 3289;
  return lv;
}

int recv_L_C_Ip(struct L_C_Ip lv){
  int err = 0;
  if (lv.v1 != 31891) err = 1;
  if (lv.v2 != 45) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_C_Ip ret_L_C_Ip(){
  struct L_C_Ip lv;
  lv.v1 = 31891;
  lv.v2 = 45;
  lv.v3 = 0;
  return lv;
}

int recv_L_C_L(struct L_C_L lv){
  int err = 0;
  if (lv.v1 != 19086) err = 1;
  if (lv.v2 != 109) err = 2;
  if (lv.v3 != 14314) err = 3;
  return err;
}

struct L_C_L ret_L_C_L(){
  struct L_C_L lv;
  lv.v1 = 19086;
  lv.v2 = 109;
  lv.v3 = 14314;
  return lv;
}

int recv_L_C_S(struct L_C_S lv){
  int err = 0;
  if (lv.v1 != 288) err = 1;
  if (lv.v2 != 5) err = 2;
  if (lv.v3 != 3053) err = 3;
  return err;
}

struct L_C_S ret_L_C_S(){
  struct L_C_S lv;
  lv.v1 = 288;
  lv.v2 = 5;
  lv.v3 = 3053;
  return lv;
}

int recv_L_C_Uc(struct L_C_Uc lv){
  int err = 0;
  if (lv.v1 != 27196) err = 1;
  if (lv.v2 != 83) err = 2;
  if (lv.v3 != 95) err = 3;
  return err;
}

struct L_C_Uc ret_L_C_Uc(){
  struct L_C_Uc lv;
  lv.v1 = 27196;
  lv.v2 = 83;
  lv.v3 = 95;
  return lv;
}

int recv_L_C_Ui(struct L_C_Ui lv){
  int err = 0;
  if (lv.v1 != 19073) err = 1;
  if (lv.v2 != 15) err = 2;
  if (lv.v3 != 19612) err = 3;
  return err;
}

struct L_C_Ui ret_L_C_Ui(){
  struct L_C_Ui lv;
  lv.v1 = 19073;
  lv.v2 = 15;
  lv.v3 = 19612;
  return lv;
}

int recv_L_C_Ul(struct L_C_Ul lv){
  int err = 0;
  if (lv.v1 != 17138) err = 1;
  if (lv.v2 != 22) err = 2;
  if (lv.v3 != 152) err = 3;
  return err;
}

struct L_C_Ul ret_L_C_Ul(){
  struct L_C_Ul lv;
  lv.v1 = 17138;
  lv.v2 = 22;
  lv.v3 = 152;
  return lv;
}

int recv_L_C_Us(struct L_C_Us lv){
  int err = 0;
  if (lv.v1 != 16490) err = 1;
  if (lv.v2 != 28) err = 2;
  if (lv.v3 != 21175) err = 3;
  return err;
}

struct L_C_Us ret_L_C_Us(){
  struct L_C_Us lv;
  lv.v1 = 16490;
  lv.v2 = 28;
  lv.v3 = 21175;
  return lv;
}

int recv_L_C_Vp(struct L_C_Vp lv){
  int err = 0;
  if (lv.v1 != 21374) err = 1;
  if (lv.v2 != 100) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_C_Vp ret_L_C_Vp(){
  struct L_C_Vp lv;
  lv.v1 = 21374;
  lv.v2 = 100;
  lv.v3 = 0;
  return lv;
}

int recv_L_D(struct L_D lv){
  int err = 0;
  if (lv.v1 != 5730) err = 1;
  if (lv.v2 != 1.0) err = 2;
  return err;
}

struct L_D ret_L_D(){
  struct L_D lv;
  lv.v1 = 5730;
  lv.v2 = 1.0;
  return lv;
}

int recv_L_D_C(struct L_D_C lv){
  int err = 0;
  if (lv.v1 != 15707) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 82) err = 3;
  return err;
}

struct L_D_C ret_L_D_C(){
  struct L_D_C lv;
  lv.v1 = 15707;
  lv.v2 = 1.0;
  lv.v3 = 82;
  return lv;
}

int recv_L_D_D(struct L_D_D lv){
  int err = 0;
  if (lv.v1 != 24847) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}

struct L_D_D ret_L_D_D(){
  struct L_D_D lv;
  lv.v1 = 24847;
  lv.v2 = -0.25;
  lv.v3 = 0.5;
  return lv;
}

int recv_L_D_F(struct L_D_F lv){
  int err = 0;
  if (lv.v1 != 2898) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}

struct L_D_F ret_L_D_F(){
  struct L_D_F lv;
  lv.v1 = 2898;
  lv.v2 = 0.875;
  lv.v3 = 1.0;
  return lv;
}

int recv_L_D_I(struct L_D_I lv){
  int err = 0;
  if (lv.v1 != 5749) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 5688) err = 3;
  return err;
}

struct L_D_I ret_L_D_I(){
  struct L_D_I lv;
  lv.v1 = 5749;
  lv.v2 = 1.0;
  lv.v3 = 5688;
  return lv;
}

int recv_L_D_Ip(struct L_D_Ip lv){
  int err = 0;
  if (lv.v1 != 15166) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_D_Ip ret_L_D_Ip(){
  struct L_D_Ip lv;
  lv.v1 = 15166;
  lv.v2 = 1.0;
  lv.v3 = 0;
  return lv;
}

int recv_L_D_L(struct L_D_L lv){
  int err = 0;
  if (lv.v1 != 7152) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 26318) err = 3;
  return err;
}

struct L_D_L ret_L_D_L(){
  struct L_D_L lv;
  lv.v1 = 7152;
  lv.v2 = 1.0;
  lv.v3 = 26318;
  return lv;
}

int recv_L_D_S(struct L_D_S lv){
  int err = 0;
  if (lv.v1 != 5280) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 17864) err = 3;
  return err;
}

struct L_D_S ret_L_D_S(){
  struct L_D_S lv;
  lv.v1 = 5280;
  lv.v2 = 4.5;
  lv.v3 = 17864;
  return lv;
}

int recv_L_D_Uc(struct L_D_Uc lv){
  int err = 0;
  if (lv.v1 != 12847) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 14) err = 3;
  return err;
}

struct L_D_Uc ret_L_D_Uc(){
  struct L_D_Uc lv;
  lv.v1 = 12847;
  lv.v2 = 4.5;
  lv.v3 = 14;
  return lv;
}

int recv_L_D_Ui(struct L_D_Ui lv){
  int err = 0;
  if (lv.v1 != 17941) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 3297) err = 3;
  return err;
}

struct L_D_Ui ret_L_D_Ui(){
  struct L_D_Ui lv;
  lv.v1 = 17941;
  lv.v2 = 7.0;
  lv.v3 = 3297;
  return lv;
}

int recv_L_D_Ul(struct L_D_Ul lv){
  int err = 0;
  if (lv.v1 != 19159) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 7671) err = 3;
  return err;
}

struct L_D_Ul ret_L_D_Ul(){
  struct L_D_Ul lv;
  lv.v1 = 19159;
  lv.v2 = -2.125;
  lv.v3 = 7671;
  return lv;
}

int recv_L_D_Us(struct L_D_Us lv){
  int err = 0;
  if (lv.v1 != 4820) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 14293) err = 3;
  return err;
}

struct L_D_Us ret_L_D_Us(){
  struct L_D_Us lv;
  lv.v1 = 4820;
  lv.v2 = 0.875;
  lv.v3 = 14293;
  return lv;
}

int recv_L_D_Vp(struct L_D_Vp lv){
  int err = 0;
  if (lv.v1 != 20760) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_D_Vp ret_L_D_Vp(){
  struct L_D_Vp lv;
  lv.v1 = 20760;
  lv.v2 = 4.5;
  lv.v3 = 0;
  return lv;
}

int recv_L_F(struct L_F lv){
  int err = 0;
  if (lv.v1 != 17549) err = 1;
  if (lv.v2 != 0.875) err = 2;
  return err;
}

struct L_F ret_L_F(){
  struct L_F lv;
  lv.v1 = 17549;
  lv.v2 = 0.875;
  return lv;
}

int recv_L_F_C(struct L_F_C lv){
  int err = 0;
  if (lv.v1 != 27713) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 118) err = 3;
  return err;
}

struct L_F_C ret_L_F_C(){
  struct L_F_C lv;
  lv.v1 = 27713;
  lv.v2 = -2.125;
  lv.v3 = 118;
  return lv;
}

int recv_L_F_D(struct L_F_D lv){
  int err = 0;
  if (lv.v1 != 10395) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}

struct L_F_D ret_L_F_D(){
  struct L_F_D lv;
  lv.v1 = 10395;
  lv.v2 = -2.125;
  lv.v3 = 1.0;
  return lv;
}

int recv_L_F_F(struct L_F_F lv){
  int err = 0;
  if (lv.v1 != 17552) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}

struct L_F_F ret_L_F_F(){
  struct L_F_F lv;
  lv.v1 = 17552;
  lv.v2 = 4.5;
  lv.v3 = 4.5;
  return lv;
}

int recv_L_F_I(struct L_F_I lv){
  int err = 0;
  if (lv.v1 != 17060) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 4447) err = 3;
  return err;
}

struct L_F_I ret_L_F_I(){
  struct L_F_I lv;
  lv.v1 = 17060;
  lv.v2 = 4.5;
  lv.v3 = 4447;
  return lv;
}

int recv_L_F_Ip(struct L_F_Ip lv){
  int err = 0;
  if (lv.v1 != 26616) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_F_Ip ret_L_F_Ip(){
  struct L_F_Ip lv;
  lv.v1 = 26616;
  lv.v2 = 0.5;
  lv.v3 = 0;
  return lv;
}

int recv_L_F_L(struct L_F_L lv){
  int err = 0;
  if (lv.v1 != 24549) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 21763) err = 3;
  return err;
}

struct L_F_L ret_L_F_L(){
  struct L_F_L lv;
  lv.v1 = 24549;
  lv.v2 = 0.5;
  lv.v3 = 21763;
  return lv;
}

int recv_L_F_S(struct L_F_S lv){
  int err = 0;
  if (lv.v1 != 4641) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 17449) err = 3;
  return err;
}

struct L_F_S ret_L_F_S(){
  struct L_F_S lv;
  lv.v1 = 4641;
  lv.v2 = 1.0;
  lv.v3 = 17449;
  return lv;
}

int recv_L_F_Uc(struct L_F_Uc lv){
  int err = 0;
  if (lv.v1 != 28826) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 9) err = 3;
  return err;
}

struct L_F_Uc ret_L_F_Uc(){
  struct L_F_Uc lv;
  lv.v1 = 28826;
  lv.v2 = 0.5;
  lv.v3 = 9;
  return lv;
}

int recv_L_F_Ui(struct L_F_Ui lv){
  int err = 0;
  if (lv.v1 != 3058) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 31769) err = 3;
  return err;
}

struct L_F_Ui ret_L_F_Ui(){
  struct L_F_Ui lv;
  lv.v1 = 3058;
  lv.v2 = 7.0;
  lv.v3 = 31769;
  return lv;
}

int recv_L_F_Ul(struct L_F_Ul lv){
  int err = 0;
  if (lv.v1 != 22249) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 6416) err = 3;
  return err;
}

struct L_F_Ul ret_L_F_Ul(){
  struct L_F_Ul lv;
  lv.v1 = 22249;
  lv.v2 = 0.875;
  lv.v3 = 6416;
  return lv;
}

int recv_L_F_Us(struct L_F_Us lv){
  int err = 0;
  if (lv.v1 != 27116) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 28703) err = 3;
  return err;
}

struct L_F_Us ret_L_F_Us(){
  struct L_F_Us lv;
  lv.v1 = 27116;
  lv.v2 = 4.5;
  lv.v3 = 28703;
  return lv;
}

int recv_L_F_Vp(struct L_F_Vp lv){
  int err = 0;
  if (lv.v1 != 9926) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_F_Vp ret_L_F_Vp(){
  struct L_F_Vp lv;
  lv.v1 = 9926;
  lv.v2 = 7.0;
  lv.v3 = 0;
  return lv;
}

int recv_L_I(struct L_I lv){
  int err = 0;
  if (lv.v1 != 12936) err = 1;
  if (lv.v2 != 5669) err = 2;
  return err;
}

struct L_I ret_L_I(){
  struct L_I lv;
  lv.v1 = 12936;
  lv.v2 = 5669;
  return lv;
}

int recv_L_I_C(struct L_I_C lv){
  int err = 0;
  if (lv.v1 != 31205) err = 1;
  if (lv.v2 != 30676) err = 2;
  if (lv.v3 != 42) err = 3;
  return err;
}

struct L_I_C ret_L_I_C(){
  struct L_I_C lv;
  lv.v1 = 31205;
  lv.v2 = 30676;
  lv.v3 = 42;
  return lv;
}

int recv_L_I_D(struct L_I_D lv){
  int err = 0;
  if (lv.v1 != 5934) err = 1;
  if (lv.v2 != 3247) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}

struct L_I_D ret_L_I_D(){
  struct L_I_D lv;
  lv.v1 = 5934;
  lv.v2 = 3247;
  lv.v3 = -2.125;
  return lv;
}

int recv_L_I_F(struct L_I_F lv){
  int err = 0;
  if (lv.v1 != 28228) err = 1;
  if (lv.v2 != 20992) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}

struct L_I_F ret_L_I_F(){
  struct L_I_F lv;
  lv.v1 = 28228;
  lv.v2 = 20992;
  lv.v3 = 0.5;
  return lv;
}

int recv_L_I_I(struct L_I_I lv){
  int err = 0;
  if (lv.v1 != 17949) err = 1;
  if (lv.v2 != 9355) err = 2;
  if (lv.v3 != 17358) err = 3;
  return err;
}

struct L_I_I ret_L_I_I(){
  struct L_I_I lv;
  lv.v1 = 17949;
  lv.v2 = 9355;
  lv.v3 = 17358;
  return lv;
}

int recv_L_I_Ip(struct L_I_Ip lv){
  int err = 0;
  if (lv.v1 != 7563) err = 1;
  if (lv.v2 != 12012) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_I_Ip ret_L_I_Ip(){
  struct L_I_Ip lv;
  lv.v1 = 7563;
  lv.v2 = 12012;
  lv.v3 = 0;
  return lv;
}

int recv_L_I_L(struct L_I_L lv){
  int err = 0;
  if (lv.v1 != 6588) err = 1;
  if (lv.v2 != 4063) err = 2;
  if (lv.v3 != 20680) err = 3;
  return err;
}

struct L_I_L ret_L_I_L(){
  struct L_I_L lv;
  lv.v1 = 6588;
  lv.v2 = 4063;
  lv.v3 = 20680;
  return lv;
}

int recv_L_I_S(struct L_I_S lv){
  int err = 0;
  if (lv.v1 != 1798) err = 1;
  if (lv.v2 != 32046) err = 2;
  if (lv.v3 != 3082) err = 3;
  return err;
}

struct L_I_S ret_L_I_S(){
  struct L_I_S lv;
  lv.v1 = 1798;
  lv.v2 = 32046;
  lv.v3 = 3082;
  return lv;
}

int recv_L_I_Uc(struct L_I_Uc lv){
  int err = 0;
  if (lv.v1 != 7486) err = 1;
  if (lv.v2 != 6856) err = 2;
  if (lv.v3 != 64) err = 3;
  return err;
}

struct L_I_Uc ret_L_I_Uc(){
  struct L_I_Uc lv;
  lv.v1 = 7486;
  lv.v2 = 6856;
  lv.v3 = 64;
  return lv;
}

int recv_L_I_Ui(struct L_I_Ui lv){
  int err = 0;
  if (lv.v1 != 20262) err = 1;
  if (lv.v2 != 602) err = 2;
  if (lv.v3 != 32755) err = 3;
  return err;
}

struct L_I_Ui ret_L_I_Ui(){
  struct L_I_Ui lv;
  lv.v1 = 20262;
  lv.v2 = 602;
  lv.v3 = 32755;
  return lv;
}

int recv_L_I_Ul(struct L_I_Ul lv){
  int err = 0;
  if (lv.v1 != 25833) err = 1;
  if (lv.v2 != 12307) err = 2;
  if (lv.v3 != 8335) err = 3;
  return err;
}

struct L_I_Ul ret_L_I_Ul(){
  struct L_I_Ul lv;
  lv.v1 = 25833;
  lv.v2 = 12307;
  lv.v3 = 8335;
  return lv;
}

int recv_L_I_Us(struct L_I_Us lv){
  int err = 0;
  if (lv.v1 != 16887) err = 1;
  if (lv.v2 != 17516) err = 2;
  if (lv.v3 != 23467) err = 3;
  return err;
}

struct L_I_Us ret_L_I_Us(){
  struct L_I_Us lv;
  lv.v1 = 16887;
  lv.v2 = 17516;
  lv.v3 = 23467;
  return lv;
}

int recv_L_I_Vp(struct L_I_Vp lv){
  int err = 0;
  if (lv.v1 != 31263) err = 1;
  if (lv.v2 != 25490) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_I_Vp ret_L_I_Vp(){
  struct L_I_Vp lv;
  lv.v1 = 31263;
  lv.v2 = 25490;
  lv.v3 = 0;
  return lv;
}

int recv_L_Ip(struct L_Ip lv){
  int err = 0;
  if (lv.v1 != 20916) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}

struct L_Ip ret_L_Ip(){
  struct L_Ip lv;
  lv.v1 = 20916;
  lv.v2 = 0;
  return lv;
}

int recv_L_Ip_C(struct L_Ip_C lv){
  int err = 0;
  if (lv.v1 != 29257) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_Ip_C ret_L_Ip_C(){
  struct L_Ip_C lv;
  lv.v1 = 29257;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}

int recv_L_Ip_D(struct L_Ip_D lv){
  int err = 0;
  if (lv.v1 != 26328) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}

struct L_Ip_D ret_L_Ip_D(){
  struct L_Ip_D lv;
  lv.v1 = 26328;
  lv.v2 = 0;
  lv.v3 = 0.5;
  return lv;
}

int recv_L_Ip_F(struct L_Ip_F lv){
  int err = 0;
  if (lv.v1 != 7686) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}

struct L_Ip_F ret_L_Ip_F(){
  struct L_Ip_F lv;
  lv.v1 = 7686;
  lv.v2 = 0;
  lv.v3 = 4.5;
  return lv;
}

int recv_L_Ip_I(struct L_Ip_I lv){
  int err = 0;
  if (lv.v1 != 10061) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 24203) err = 3;
  return err;
}

struct L_Ip_I ret_L_Ip_I(){
  struct L_Ip_I lv;
  lv.v1 = 10061;
  lv.v2 = 0;
  lv.v3 = 24203;
  return lv;
}

int recv_L_Ip_Ip(struct L_Ip_Ip lv){
  int err = 0;
  if (lv.v1 != 11192) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_Ip_Ip ret_L_Ip_Ip(){
  struct L_Ip_Ip lv;
  lv.v1 = 11192;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}

int recv_L_Ip_L(struct L_Ip_L lv){
  int err = 0;
  if (lv.v1 != 6093) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 25441) err = 3;
  return err;
}

struct L_Ip_L ret_L_Ip_L(){
  struct L_Ip_L lv;
  lv.v1 = 6093;
  lv.v2 = 0;
  lv.v3 = 25441;
  return lv;
}

int recv_L_Ip_S(struct L_Ip_S lv){
  int err = 0;
  if (lv.v1 != 1928) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 1004) err = 3;
  return err;
}

struct L_Ip_S ret_L_Ip_S(){
  struct L_Ip_S lv;
  lv.v1 = 1928;
  lv.v2 = 0;
  lv.v3 = 1004;
  return lv;
}

int recv_L_Ip_Uc(struct L_Ip_Uc lv){
  int err = 0;
  if (lv.v1 != 25050) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 52) err = 3;
  return err;
}

struct L_Ip_Uc ret_L_Ip_Uc(){
  struct L_Ip_Uc lv;
  lv.v1 = 25050;
  lv.v2 = 0;
  lv.v3 = 52;
  return lv;
}

int recv_L_Ip_Ui(struct L_Ip_Ui lv){
  int err = 0;
  if (lv.v1 != 3954) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 30949) err = 3;
  return err;
}

struct L_Ip_Ui ret_L_Ip_Ui(){
  struct L_Ip_Ui lv;
  lv.v1 = 3954;
  lv.v2 = 0;
  lv.v3 = 30949;
  return lv;
}

int recv_L_Ip_Ul(struct L_Ip_Ul lv){
  int err = 0;
  if (lv.v1 != 698) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 30067) err = 3;
  return err;
}

struct L_Ip_Ul ret_L_Ip_Ul(){
  struct L_Ip_Ul lv;
  lv.v1 = 698;
  lv.v2 = 0;
  lv.v3 = 30067;
  return lv;
}

int recv_L_Ip_Us(struct L_Ip_Us lv){
  int err = 0;
  if (lv.v1 != 28375) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 8024) err = 3;
  return err;
}

struct L_Ip_Us ret_L_Ip_Us(){
  struct L_Ip_Us lv;
  lv.v1 = 28375;
  lv.v2 = 0;
  lv.v3 = 8024;
  return lv;
}

int recv_L_Ip_Vp(struct L_Ip_Vp lv){
  int err = 0;
  if (lv.v1 != 7723) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_Ip_Vp ret_L_Ip_Vp(){
  struct L_Ip_Vp lv;
  lv.v1 = 7723;
  lv.v2 = 0;
  lv.v3 = 0;
  return lv;
}

int recv_L_L(struct L_L lv){
  int err = 0;
  if (lv.v1 != 30364) err = 1;
  if (lv.v2 != 10204) err = 2;
  return err;
}

struct L_L ret_L_L(){
  struct L_L lv;
  lv.v1 = 30364;
  lv.v2 = 10204;
  return lv;
}

int recv_L_L_C(struct L_L_C lv){
  int err = 0;
  if (lv.v1 != 7816) err = 1;
  if (lv.v2 != 30487) err = 2;
  if (lv.v3 != 16) err = 3;
  return err;
}

struct L_L_C ret_L_L_C(){
  struct L_L_C lv;
  lv.v1 = 7816;
  lv.v2 = 30487;
  lv.v3 = 16;
  return lv;
}

int recv_L_L_D(struct L_L_D lv){
  int err = 0;
  if (lv.v1 != 32294) err = 1;
  if (lv.v2 != 28652) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}

struct L_L_D ret_L_L_D(){
  struct L_L_D lv;
  lv.v1 = 32294;
  lv.v2 = 28652;
  lv.v3 = -0.25;
  return lv;
}

int recv_L_L_F(struct L_L_F lv){
  int err = 0;
  if (lv.v1 != 20719) err = 1;
  if (lv.v2 != 23780) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}

struct L_L_F ret_L_L_F(){
  struct L_L_F lv;
  lv.v1 = 20719;
  lv.v2 = 23780;
  lv.v3 = -2.125;
  return lv;
}

int recv_L_L_I(struct L_L_I lv){
  int err = 0;
  if (lv.v1 != 22923) err = 1;
  if (lv.v2 != 25843) err = 2;
  if (lv.v3 != 6349) err = 3;
  return err;
}

struct L_L_I ret_L_L_I(){
  struct L_L_I lv;
  lv.v1 = 22923;
  lv.v2 = 25843;
  lv.v3 = 6349;
  return lv;
}

int recv_L_L_Ip(struct L_L_Ip lv){
  int err = 0;
  if (lv.v1 != 3010) err = 1;
  if (lv.v2 != 17169) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_L_Ip ret_L_L_Ip(){
  struct L_L_Ip lv;
  lv.v1 = 3010;
  lv.v2 = 17169;
  lv.v3 = 0;
  return lv;
}

int recv_L_L_L(struct L_L_L lv){
  int err = 0;
  if (lv.v1 != 23148) err = 1;
  if (lv.v2 != 28037) err = 2;
  if (lv.v3 != 5458) err = 3;
  return err;
}

struct L_L_L ret_L_L_L(){
  struct L_L_L lv;
  lv.v1 = 23148;
  lv.v2 = 28037;
  lv.v3 = 5458;
  return lv;
}

int recv_L_L_S(struct L_L_S lv){
  int err = 0;
  if (lv.v1 != 7277) err = 1;
  if (lv.v2 != 22459) err = 2;
  if (lv.v3 != 11369) err = 3;
  return err;
}

struct L_L_S ret_L_L_S(){
  struct L_L_S lv;
  lv.v1 = 7277;
  lv.v2 = 22459;
  lv.v3 = 11369;
  return lv;
}

int recv_L_L_Uc(struct L_L_Uc lv){
  int err = 0;
  if (lv.v1 != 18427) err = 1;
  if (lv.v2 != 15283) err = 2;
  if (lv.v3 != 64) err = 3;
  return err;
}

struct L_L_Uc ret_L_L_Uc(){
  struct L_L_Uc lv;
  lv.v1 = 18427;
  lv.v2 = 15283;
  lv.v3 = 64;
  return lv;
}

int recv_L_L_Ui(struct L_L_Ui lv){
  int err = 0;
  if (lv.v1 != 12217) err = 1;
  if (lv.v2 != 13821) err = 2;
  if (lv.v3 != 29427) err = 3;
  return err;
}

struct L_L_Ui ret_L_L_Ui(){
  struct L_L_Ui lv;
  lv.v1 = 12217;
  lv.v2 = 13821;
  lv.v3 = 29427;
  return lv;
}

int recv_L_L_Ul(struct L_L_Ul lv){
  int err = 0;
  if (lv.v1 != 7022) err = 1;
  if (lv.v2 != 4806) err = 2;
  if (lv.v3 != 28033) err = 3;
  return err;
}

struct L_L_Ul ret_L_L_Ul(){
  struct L_L_Ul lv;
  lv.v1 = 7022;
  lv.v2 = 4806;
  lv.v3 = 28033;
  return lv;
}

int recv_L_L_Us(struct L_L_Us lv){
  int err = 0;
  if (lv.v1 != 27566) err = 1;
  if (lv.v2 != 17954) err = 2;
  if (lv.v3 != 16079) err = 3;
  return err;
}

struct L_L_Us ret_L_L_Us(){
  struct L_L_Us lv;
  lv.v1 = 27566;
  lv.v2 = 17954;
  lv.v3 = 16079;
  return lv;
}

int recv_L_L_Vp(struct L_L_Vp lv){
  int err = 0;
  if (lv.v1 != 3512) err = 1;
  if (lv.v2 != 19931) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_L_Vp ret_L_L_Vp(){
  struct L_L_Vp lv;
  lv.v1 = 3512;
  lv.v2 = 19931;
  lv.v3 = 0;
  return lv;
}

int recv_L_S(struct L_S lv){
  int err = 0;
  if (lv.v1 != 11878) err = 1;
  if (lv.v2 != 14845) err = 2;
  return err;
}

struct L_S ret_L_S(){
  struct L_S lv;
  lv.v1 = 11878;
  lv.v2 = 14845;
  return lv;
}

int recv_L_S_C(struct L_S_C lv){
  int err = 0;
  if (lv.v1 != 27515) err = 1;
  if (lv.v2 != 23281) err = 2;
  if (lv.v3 != 73) err = 3;
  return err;
}

struct L_S_C ret_L_S_C(){
  struct L_S_C lv;
  lv.v1 = 27515;
  lv.v2 = 23281;
  lv.v3 = 73;
  return lv;
}

int recv_L_S_D(struct L_S_D lv){
  int err = 0;
  if (lv.v1 != 3952) err = 1;
  if (lv.v2 != 16015) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}

struct L_S_D ret_L_S_D(){
  struct L_S_D lv;
  lv.v1 = 3952;
  lv.v2 = 16015;
  lv.v3 = -2.125;
  return lv;
}

int recv_L_S_F(struct L_S_F lv){
  int err = 0;
  if (lv.v1 != 18577) err = 1;
  if (lv.v2 != 31234) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}

struct L_S_F ret_L_S_F(){
  struct L_S_F lv;
  lv.v1 = 18577;
  lv.v2 = 31234;
  lv.v3 = -0.25;
  return lv;
}

int recv_L_S_I(struct L_S_I lv){
  int err = 0;
  if (lv.v1 != 32013) err = 1;
  if (lv.v2 != 18469) err = 2;
  if (lv.v3 != 26305) err = 3;
  return err;
}

struct L_S_I ret_L_S_I(){
  struct L_S_I lv;
  lv.v1 = 32013;
  lv.v2 = 18469;
  lv.v3 = 26305;
  return lv;
}

int recv_L_S_Ip(struct L_S_Ip lv){
  int err = 0;
  if (lv.v1 != 14977) err = 1;
  if (lv.v2 != 25517) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_S_Ip ret_L_S_Ip(){
  struct L_S_Ip lv;
  lv.v1 = 14977;
  lv.v2 = 25517;
  lv.v3 = 0;
  return lv;
}

int recv_L_S_L(struct L_S_L lv){
  int err = 0;
  if (lv.v1 != 17805) err = 1;
  if (lv.v2 != 29070) err = 2;
  if (lv.v3 != 10093) err = 3;
  return err;
}

struct L_S_L ret_L_S_L(){
  struct L_S_L lv;
  lv.v1 = 17805;
  lv.v2 = 29070;
  lv.v3 = 10093;
  return lv;
}

int recv_L_S_S(struct L_S_S lv){
  int err = 0;
  if (lv.v1 != 23542) err = 1;
  if (lv.v2 != 27277) err = 2;
  if (lv.v3 != 28129) err = 3;
  return err;
}

struct L_S_S ret_L_S_S(){
  struct L_S_S lv;
  lv.v1 = 23542;
  lv.v2 = 27277;
  lv.v3 = 28129;
  return lv;
}

int recv_L_S_Uc(struct L_S_Uc lv){
  int err = 0;
  if (lv.v1 != 2260) err = 1;
  if (lv.v2 != 1295) err = 2;
  if (lv.v3 != 101) err = 3;
  return err;
}

struct L_S_Uc ret_L_S_Uc(){
  struct L_S_Uc lv;
  lv.v1 = 2260;
  lv.v2 = 1295;
  lv.v3 = 101;
  return lv;
}

int recv_L_S_Ui(struct L_S_Ui lv){
  int err = 0;
  if (lv.v1 != 22253) err = 1;
  if (lv.v2 != 9849) err = 2;
  if (lv.v3 != 19663) err = 3;
  return err;
}

struct L_S_Ui ret_L_S_Ui(){
  struct L_S_Ui lv;
  lv.v1 = 22253;
  lv.v2 = 9849;
  lv.v3 = 19663;
  return lv;
}

int recv_L_S_Ul(struct L_S_Ul lv){
  int err = 0;
  if (lv.v1 != 27283) err = 1;
  if (lv.v2 != 13769) err = 2;
  if (lv.v3 != 6286) err = 3;
  return err;
}

struct L_S_Ul ret_L_S_Ul(){
  struct L_S_Ul lv;
  lv.v1 = 27283;
  lv.v2 = 13769;
  lv.v3 = 6286;
  return lv;
}

int recv_L_S_Us(struct L_S_Us lv){
  int err = 0;
  if (lv.v1 != 16604) err = 1;
  if (lv.v2 != 3573) err = 2;
  if (lv.v3 != 7355) err = 3;
  return err;
}

struct L_S_Us ret_L_S_Us(){
  struct L_S_Us lv;
  lv.v1 = 16604;
  lv.v2 = 3573;
  lv.v3 = 7355;
  return lv;
}

int recv_L_S_Vp(struct L_S_Vp lv){
  int err = 0;
  if (lv.v1 != 31769) err = 1;
  if (lv.v2 != 2171) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_S_Vp ret_L_S_Vp(){
  struct L_S_Vp lv;
  lv.v1 = 31769;
  lv.v2 = 2171;
  lv.v3 = 0;
  return lv;
}

int recv_L_Uc(struct L_Uc lv){
  int err = 0;
  if (lv.v1 != 583) err = 1;
  if (lv.v2 != 59) err = 2;
  return err;
}

struct L_Uc ret_L_Uc(){
  struct L_Uc lv;
  lv.v1 = 583;
  lv.v2 = 59;
  return lv;
}

int recv_L_Uc_C(struct L_Uc_C lv){
  int err = 0;
  if (lv.v1 != 8467) err = 1;
  if (lv.v2 != 64) err = 2;
  if (lv.v3 != 98) err = 3;
  return err;
}

struct L_Uc_C ret_L_Uc_C(){
  struct L_Uc_C lv;
  lv.v1 = 8467;
  lv.v2 = 64;
  lv.v3 = 98;
  return lv;
}

int recv_L_Uc_D(struct L_Uc_D lv){
  int err = 0;
  if (lv.v1 != 1283) err = 1;
  if (lv.v2 != 30) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}

struct L_Uc_D ret_L_Uc_D(){
  struct L_Uc_D lv;
  lv.v1 = 1283;
  lv.v2 = 30;
  lv.v3 = -0.25;
  return lv;
}

int recv_L_Uc_F(struct L_Uc_F lv){
  int err = 0;
  if (lv.v1 != 12781) err = 1;
  if (lv.v2 != 76) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}

struct L_Uc_F ret_L_Uc_F(){
  struct L_Uc_F lv;
  lv.v1 = 12781;
  lv.v2 = 76;
  lv.v3 = 0.5;
  return lv;
}

int recv_L_Uc_I(struct L_Uc_I lv){
  int err = 0;
  if (lv.v1 != 16577) err = 1;
  if (lv.v2 != 110) err = 2;
  if (lv.v3 != 6154) err = 3;
  return err;
}

struct L_Uc_I ret_L_Uc_I(){
  struct L_Uc_I lv;
  lv.v1 = 16577;
  lv.v2 = 110;
  lv.v3 = 6154;
  return lv;
}

int recv_L_Uc_Ip(struct L_Uc_Ip lv){
  int err = 0;
  if (lv.v1 != 2778) err = 1;
  if (lv.v2 != 106) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_Uc_Ip ret_L_Uc_Ip(){
  struct L_Uc_Ip lv;
  lv.v1 = 2778;
  lv.v2 = 106;
  lv.v3 = 0;
  return lv;
}

int recv_L_Uc_L(struct L_Uc_L lv){
  int err = 0;
  if (lv.v1 != 3301) err = 1;
  if (lv.v2 != 26) err = 2;
  if (lv.v3 != 18390) err = 3;
  return err;
}

struct L_Uc_L ret_L_Uc_L(){
  struct L_Uc_L lv;
  lv.v1 = 3301;
  lv.v2 = 26;
  lv.v3 = 18390;
  return lv;
}

int recv_L_Uc_S(struct L_Uc_S lv){
  int err = 0;
  if (lv.v1 != 24712) err = 1;
  if (lv.v2 != 43) err = 2;
  if (lv.v3 != 12475) err = 3;
  return err;
}

struct L_Uc_S ret_L_Uc_S(){
  struct L_Uc_S lv;
  lv.v1 = 24712;
  lv.v2 = 43;
  lv.v3 = 12475;
  return lv;
}

int recv_L_Uc_Uc(struct L_Uc_Uc lv){
  int err = 0;
  if (lv.v1 != 10867) err = 1;
  if (lv.v2 != 53) err = 2;
  if (lv.v3 != 125) err = 3;
  return err;
}

struct L_Uc_Uc ret_L_Uc_Uc(){
  struct L_Uc_Uc lv;
  lv.v1 = 10867;
  lv.v2 = 53;
  lv.v3 = 125;
  return lv;
}

int recv_L_Uc_Ui(struct L_Uc_Ui lv){
  int err = 0;
  if (lv.v1 != 26714) err = 1;
  if (lv.v2 != 76) err = 2;
  if (lv.v3 != 11312) err = 3;
  return err;
}

struct L_Uc_Ui ret_L_Uc_Ui(){
  struct L_Uc_Ui lv;
  lv.v1 = 26714;
  lv.v2 = 76;
  lv.v3 = 11312;
  return lv;
}

int recv_L_Uc_Ul(struct L_Uc_Ul lv){
  int err = 0;
  if (lv.v1 != 17680) err = 1;
  if (lv.v2 != 4) err = 2;
  if (lv.v3 != 2225) err = 3;
  return err;
}

struct L_Uc_Ul ret_L_Uc_Ul(){
  struct L_Uc_Ul lv;
  lv.v1 = 17680;
  lv.v2 = 4;
  lv.v3 = 2225;
  return lv;
}

int recv_L_Uc_Us(struct L_Uc_Us lv){
  int err = 0;
  if (lv.v1 != 3769) err = 1;
  if (lv.v2 != 19) err = 2;
  if (lv.v3 != 4927) err = 3;
  return err;
}

struct L_Uc_Us ret_L_Uc_Us(){
  struct L_Uc_Us lv;
  lv.v1 = 3769;
  lv.v2 = 19;
  lv.v3 = 4927;
  return lv;
}

int recv_L_Uc_Vp(struct L_Uc_Vp lv){
  int err = 0;
  if (lv.v1 != 8827) err = 1;
  if (lv.v2 != 48) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}

struct L_Uc_Vp ret_L_Uc_Vp(){
  struct L_Uc_Vp lv;
  lv.v1 = 8827;
  lv.v2 = 48;
  lv.v3 = 0;
  return lv;
}

int recv_L_Ui(struct L_Ui lv){
  int err = 0;
  if (lv.v1 != 13685) err = 1;
  if (lv.v2 != 29146) err = 2;
  return err;
}

struct L_Ui ret_L_Ui(){
  struct L_Ui lv;
  lv.v1 = 13685;
  lv.v2 = 29146;
  return lv;
}

