#include "T_Snnn_xbc.h"

int recv_Vp_C(struct Vp_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 24) err = 2;
  return err;
}
int recv_Vp_C_C(struct Vp_C_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 39) err = 2;
  if (lv.v3 != 11) err = 3;
  return err;
}
int recv_Vp_C_D(struct Vp_C_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 106) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
int recv_Vp_C_F(struct Vp_C_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 57) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
int recv_Vp_C_I(struct Vp_C_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 62) err = 2;
  if (lv.v3 != 22912) err = 3;
  return err;
}
int recv_Vp_C_Ip(struct Vp_C_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_C_L(struct Vp_C_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16) err = 2;
  if (lv.v3 != 18116) err = 3;
  return err;
}
int recv_Vp_C_S(struct Vp_C_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 81) err = 2;
  if (lv.v3 != 27635) err = 3;
  return err;
}
int recv_Vp_C_Uc(struct Vp_C_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20) err = 2;
  if (lv.v3 != 98) err = 3;
  return err;
}
int recv_Vp_C_Ui(struct Vp_C_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 65) err = 2;
  if (lv.v3 != 13797) err = 3;
  return err;
}
int recv_Vp_C_Ul(struct Vp_C_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 96) err = 2;
  if (lv.v3 != 18622) err = 3;
  return err;
}
int recv_Vp_C_Us(struct Vp_C_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 109) err = 2;
  if (lv.v3 != 24720) err = 3;
  return err;
}
int recv_Vp_C_Vp(struct Vp_C_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_D(struct Vp_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.5) err = 2;
  return err;
}
int recv_Vp_D_C(struct Vp_D_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 3) err = 3;
  return err;
}
int recv_Vp_D_D(struct Vp_D_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
int recv_Vp_D_F(struct Vp_D_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
int recv_Vp_D_I(struct Vp_D_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 9961) err = 3;
  return err;
}
int recv_Vp_D_Ip(struct Vp_D_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_D_L(struct Vp_D_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 17787) err = 3;
  return err;
}
int recv_Vp_D_S(struct Vp_D_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 29276) err = 3;
  return err;
}
int recv_Vp_D_Uc(struct Vp_D_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 26) err = 3;
  return err;
}
int recv_Vp_D_Ui(struct Vp_D_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 1017) err = 3;
  return err;
}
int recv_Vp_D_Ul(struct Vp_D_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 18055) err = 3;
  return err;
}
int recv_Vp_D_Us(struct Vp_D_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 13068) err = 3;
  return err;
}
int recv_Vp_D_Vp(struct Vp_D_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_F(struct Vp_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  return err;
}
int recv_Vp_F_C(struct Vp_F_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 23) err = 3;
  return err;
}
int recv_Vp_F_D(struct Vp_F_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
int recv_Vp_F_F(struct Vp_F_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
int recv_Vp_F_I(struct Vp_F_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 23844) err = 3;
  return err;
}
int recv_Vp_F_Ip(struct Vp_F_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_F_L(struct Vp_F_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 4038) err = 3;
  return err;
}
int recv_Vp_F_S(struct Vp_F_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 23153) err = 3;
  return err;
}
int recv_Vp_F_Uc(struct Vp_F_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 33) err = 3;
  return err;
}
int recv_Vp_F_Ui(struct Vp_F_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 30633) err = 3;
  return err;
}
int recv_Vp_F_Ul(struct Vp_F_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 8866) err = 3;
  return err;
}
int recv_Vp_F_Us(struct Vp_F_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 6210) err = 3;
  return err;
}
int recv_Vp_F_Vp(struct Vp_F_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_I(struct Vp_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 23393) err = 2;
  return err;
}
int recv_Vp_I_C(struct Vp_I_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1637) err = 2;
  if (lv.v3 != 114) err = 3;
  return err;
}
int recv_Vp_I_D(struct Vp_I_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1972) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
int recv_Vp_I_F(struct Vp_I_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27881) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
int recv_Vp_I_I(struct Vp_I_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10924) err = 2;
  if (lv.v3 != 24474) err = 3;
  return err;
}
int recv_Vp_I_Ip(struct Vp_I_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16922) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_I_L(struct Vp_I_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6583) err = 2;
  if (lv.v3 != 21965) err = 3;
  return err;
}
int recv_Vp_I_S(struct Vp_I_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21480) err = 2;
  if (lv.v3 != 25061) err = 3;
  return err;
}
int recv_Vp_I_Uc(struct Vp_I_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16553) err = 2;
  if (lv.v3 != 97) err = 3;
  return err;
}
int recv_Vp_I_Ui(struct Vp_I_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19921) err = 2;
  if (lv.v3 != 1267) err = 3;
  return err;
}
int recv_Vp_I_Ul(struct Vp_I_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20058) err = 2;
  if (lv.v3 != 6949) err = 3;
  return err;
}
int recv_Vp_I_Us(struct Vp_I_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 11156) err = 2;
  if (lv.v3 != 2529) err = 3;
  return err;
}
int recv_Vp_I_Vp(struct Vp_I_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15788) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Ip(struct Vp_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
int recv_Vp_Ip_C(struct Vp_Ip_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 53) err = 3;
  return err;
}
int recv_Vp_Ip_D(struct Vp_Ip_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
int recv_Vp_Ip_F(struct Vp_Ip_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
int recv_Vp_Ip_I(struct Vp_Ip_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 21941) err = 3;
  return err;
}
int recv_Vp_Ip_Ip(struct Vp_Ip_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Ip_L(struct Vp_Ip_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 18116) err = 3;
  return err;
}
int recv_Vp_Ip_S(struct Vp_Ip_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 31632) err = 3;
  return err;
}
int recv_Vp_Ip_Uc(struct Vp_Ip_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 107) err = 3;
  return err;
}
int recv_Vp_Ip_Ui(struct Vp_Ip_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 30947) err = 3;
  return err;
}
int recv_Vp_Ip_Ul(struct Vp_Ip_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 10704) err = 3;
  return err;
}
int recv_Vp_Ip_Us(struct Vp_Ip_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 8391) err = 3;
  return err;
}
int recv_Vp_Ip_Vp(struct Vp_Ip_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_L(struct Vp_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15055) err = 2;
  return err;
}
int recv_Vp_L_C(struct Vp_L_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28354) err = 2;
  if (lv.v3 != 25) err = 3;
  return err;
}
int recv_Vp_L_D(struct Vp_L_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 32669) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
int recv_Vp_L_F(struct Vp_L_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19722) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
int recv_Vp_L_I(struct Vp_L_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 22785) err = 2;
  if (lv.v3 != 20916) err = 3;
  return err;
}
int recv_Vp_L_Ip(struct Vp_L_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28290) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_L_L(struct Vp_L_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28192) err = 2;
  if (lv.v3 != 6050) err = 3;
  return err;
}
int recv_Vp_L_S(struct Vp_L_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 56) err = 2;
  if (lv.v3 != 14166) err = 3;
  return err;
}
int recv_Vp_L_Uc(struct Vp_L_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26724) err = 2;
  if (lv.v3 != 65) err = 3;
  return err;
}
int recv_Vp_L_Ui(struct Vp_L_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 17745) err = 2;
  if (lv.v3 != 25100) err = 3;
  return err;
}
int recv_Vp_L_Ul(struct Vp_L_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28818) err = 2;
  if (lv.v3 != 28707) err = 3;
  return err;
}
int recv_Vp_L_Us(struct Vp_L_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 23192) err = 2;
  if (lv.v3 != 1547) err = 3;
  return err;
}
int recv_Vp_L_Vp(struct Vp_L_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 2020) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_S(struct Vp_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 3165) err = 2;
  return err;
}
int recv_Vp_S_C(struct Vp_S_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20726) err = 2;
  if (lv.v3 != 47) err = 3;
  return err;
}
int recv_Vp_S_D(struct Vp_S_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 11541) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
int recv_Vp_S_F(struct Vp_S_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 29716) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
int recv_Vp_S_I(struct Vp_S_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 11380) err = 2;
  if (lv.v3 != 937) err = 3;
  return err;
}
int recv_Vp_S_Ip(struct Vp_S_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7055) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_S_L(struct Vp_S_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 22604) err = 2;
  if (lv.v3 != 30928) err = 3;
  return err;
}
int recv_Vp_S_S(struct Vp_S_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7792) err = 2;
  if (lv.v3 != 12301) err = 3;
  return err;
}
int recv_Vp_S_Uc(struct Vp_S_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20598) err = 2;
  if (lv.v3 != 41) err = 3;
  return err;
}
int recv_Vp_S_Ui(struct Vp_S_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10315) err = 2;
  if (lv.v3 != 28050) err = 3;
  return err;
}
int recv_Vp_S_Ul(struct Vp_S_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27563) err = 2;
  if (lv.v3 != 25487) err = 3;
  return err;
}
int recv_Vp_S_Us(struct Vp_S_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 25333) err = 2;
  if (lv.v3 != 3161) err = 3;
  return err;
}
int recv_Vp_S_Vp(struct Vp_S_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19397) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Uc(struct Vp_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 45) err = 2;
  return err;
}
int recv_Vp_Uc_C(struct Vp_Uc_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20) err = 2;
  if (lv.v3 != 19) err = 3;
  return err;
}
int recv_Vp_Uc_D(struct Vp_Uc_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 50) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
int recv_Vp_Uc_F(struct Vp_Uc_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 123) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
int recv_Vp_Uc_I(struct Vp_Uc_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 114) err = 2;
  if (lv.v3 != 26429) err = 3;
  return err;
}
int recv_Vp_Uc_Ip(struct Vp_Uc_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Uc_L(struct Vp_Uc_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 122) err = 2;
  if (lv.v3 != 7583) err = 3;
  return err;
}
int recv_Vp_Uc_S(struct Vp_Uc_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 14) err = 2;
  if (lv.v3 != 22906) err = 3;
  return err;
}
int recv_Vp_Uc_Uc(struct Vp_Uc_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 61) err = 2;
  if (lv.v3 != 71) err = 3;
  return err;
}
int recv_Vp_Uc_Ui(struct Vp_Uc_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 68) err = 2;
  if (lv.v3 != 31148) err = 3;
  return err;
}
int recv_Vp_Uc_Ul(struct Vp_Uc_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13) err = 2;
  if (lv.v3 != 6117) err = 3;
  return err;
}
int recv_Vp_Uc_Us(struct Vp_Uc_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 38) err = 2;
  if (lv.v3 != 12337) err = 3;
  return err;
}
int recv_Vp_Uc_Vp(struct Vp_Uc_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 39) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Ui(struct Vp_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 819) err = 2;
  return err;
}
int recv_Vp_Ui_C(struct Vp_Ui_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 14926) err = 2;
  if (lv.v3 != 98) err = 3;
  return err;
}
int recv_Vp_Ui_D(struct Vp_Ui_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13042) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
int recv_Vp_Ui_F(struct Vp_Ui_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6209) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
int recv_Vp_Ui_I(struct Vp_Ui_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15474) err = 2;
  if (lv.v3 != 15360) err = 3;
  return err;
}
int recv_Vp_Ui_Ip(struct Vp_Ui_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 14297) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Ui_L(struct Vp_Ui_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 31410) err = 2;
  if (lv.v3 != 14978) err = 3;
  return err;
}
int recv_Vp_Ui_S(struct Vp_Ui_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1025) err = 2;
  if (lv.v3 != 14170) err = 3;
  return err;
}
int recv_Vp_Ui_Uc(struct Vp_Ui_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 23983) err = 2;
  if (lv.v3 != 88) err = 3;
  return err;
}
int recv_Vp_Ui_Ui(struct Vp_Ui_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 99) err = 2;
  if (lv.v3 != 30755) err = 3;
  return err;
}
int recv_Vp_Ui_Ul(struct Vp_Ui_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27055) err = 2;
  if (lv.v3 != 7728) err = 3;
  return err;
}
int recv_Vp_Ui_Us(struct Vp_Ui_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21796) err = 2;
  if (lv.v3 != 9331) err = 3;
  return err;
}
int recv_Vp_Ui_Vp(struct Vp_Ui_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4692) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Ul(struct Vp_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 5486) err = 2;
  return err;
}
int recv_Vp_Ul_C(struct Vp_Ul_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20933) err = 2;
  if (lv.v3 != 118) err = 3;
  return err;
}
int recv_Vp_Ul_D(struct Vp_Ul_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27275) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
int recv_Vp_Ul_F(struct Vp_Ul_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19348) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
int recv_Vp_Ul_I(struct Vp_Ul_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6586) err = 2;
  if (lv.v3 != 1397) err = 3;
  return err;
}
int recv_Vp_Ul_Ip(struct Vp_Ul_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 3915) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Ul_L(struct Vp_Ul_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 2122) err = 2;
  if (lv.v3 != 2907) err = 3;
  return err;
}
int recv_Vp_Ul_S(struct Vp_Ul_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26049) err = 2;
  if (lv.v3 != 9797) err = 3;
  return err;
}
int recv_Vp_Ul_Uc(struct Vp_Ul_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20602) err = 2;
  if (lv.v3 != 11) err = 3;
  return err;
}
int recv_Vp_Ul_Ui(struct Vp_Ul_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4547) err = 2;
  if (lv.v3 != 23948) err = 3;
  return err;
}
int recv_Vp_Ul_Ul(struct Vp_Ul_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 17343) err = 2;
  if (lv.v3 != 2118) err = 3;
  return err;
}
int recv_Vp_Ul_Us(struct Vp_Ul_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20439) err = 2;
  if (lv.v3 != 3748) err = 3;
  return err;
}
int recv_Vp_Ul_Vp(struct Vp_Ul_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 29974) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Us(struct Vp_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4604) err = 2;
  return err;
}
int recv_Vp_Us_C(struct Vp_Us_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27414) err = 2;
  if (lv.v3 != 69) err = 3;
  return err;
}
int recv_Vp_Us_D(struct Vp_Us_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1973) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
int recv_Vp_Us_F(struct Vp_Us_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13536) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
int recv_Vp_Us_I(struct Vp_Us_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19941) err = 2;
  if (lv.v3 != 20835) err = 3;
  return err;
}
int recv_Vp_Us_Ip(struct Vp_Us_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21849) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Us_L(struct Vp_Us_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1972) err = 2;
  if (lv.v3 != 3231) err = 3;
  return err;
}
int recv_Vp_Us_S(struct Vp_Us_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 686) err = 2;
  if (lv.v3 != 31896) err = 3;
  return err;
}
int recv_Vp_Us_Uc(struct Vp_Us_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 22668) err = 2;
  if (lv.v3 != 101) err = 3;
  return err;
}
int recv_Vp_Us_Ui(struct Vp_Us_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15892) err = 2;
  if (lv.v3 != 7824) err = 3;
  return err;
}
int recv_Vp_Us_Ul(struct Vp_Us_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 31019) err = 2;
  if (lv.v3 != 32184) err = 3;
  return err;
}
int recv_Vp_Us_Us(struct Vp_Us_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21460) err = 2;
  if (lv.v3 != 26681) err = 3;
  return err;
}
int recv_Vp_Us_Vp(struct Vp_Us_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 30188) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Vp(struct Vp_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
int recv_Vp_Vp_C(struct Vp_Vp_C lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 106) err = 3;
  return err;
}
int recv_Vp_Vp_D(struct Vp_Vp_D lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
int recv_Vp_Vp_F(struct Vp_Vp_F lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
int recv_Vp_Vp_I(struct Vp_Vp_I lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 18595) err = 3;
  return err;
}
int recv_Vp_Vp_Ip(struct Vp_Vp_Ip lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
int recv_Vp_Vp_L(struct Vp_Vp_L lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 7966) err = 3;
  return err;
}
int recv_Vp_Vp_S(struct Vp_Vp_S lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 15595) err = 3;
  return err;
}
int recv_Vp_Vp_Uc(struct Vp_Vp_Uc lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 17) err = 3;
  return err;
}
int recv_Vp_Vp_Ui(struct Vp_Vp_Ui lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 12780) err = 3;
  return err;
}
int recv_Vp_Vp_Ul(struct Vp_Vp_Ul lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 12179) err = 3;
  return err;
}
int recv_Vp_Vp_Us(struct Vp_Vp_Us lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 11303) err = 3;
  return err;
}
int recv_Vp_Vp_Vp(struct Vp_Vp_Vp lv){
  int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
