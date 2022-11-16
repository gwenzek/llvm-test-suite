#include "T_Snnn_xbc.h"

int assert_Vp_C(struct Vp_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 24) err = 2;
  return err;
}
struct Vp_C ret_Vp_C(){
    struct Vp_C lv = { .v1 = 0, .v2 = 24 };
    return lv;
}
int zig_assert_Vp_C(struct Vp_C);
int send_Vp_C(){
    return zig_assert_Vp_C(ret_Vp_C());
}
struct Vp_C zig_ret_Vp_C();
int assert_ret_Vp_C(){
    return assert_Vp_C(zig_ret_Vp_C());
}

int assert_Vp_C_C(struct Vp_C_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 39) err = 2;
  if (lv.v3 != 11) err = 3;
  return err;
}
struct Vp_C_C ret_Vp_C_C(){
    struct Vp_C_C lv = { .v1 = 0, .v2 = 39, .v3 = 11 };
    return lv;
}
int zig_assert_Vp_C_C(struct Vp_C_C);
int send_Vp_C_C(){
    return zig_assert_Vp_C_C(ret_Vp_C_C());
}
struct Vp_C_C zig_ret_Vp_C_C();
int assert_ret_Vp_C_C(){
    return assert_Vp_C_C(zig_ret_Vp_C_C());
}

int assert_Vp_C_D(struct Vp_C_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 106) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Vp_C_D ret_Vp_C_D(){
    struct Vp_C_D lv = { .v1 = 0, .v2 = 106, .v3 = -0.25 };
    return lv;
}
int zig_assert_Vp_C_D(struct Vp_C_D);
int send_Vp_C_D(){
    return zig_assert_Vp_C_D(ret_Vp_C_D());
}
struct Vp_C_D zig_ret_Vp_C_D();
int assert_ret_Vp_C_D(){
    return assert_Vp_C_D(zig_ret_Vp_C_D());
}

int assert_Vp_C_F(struct Vp_C_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 57) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Vp_C_F ret_Vp_C_F(){
    struct Vp_C_F lv = { .v1 = 0, .v2 = 57, .v3 = 7.0 };
    return lv;
}
int zig_assert_Vp_C_F(struct Vp_C_F);
int send_Vp_C_F(){
    return zig_assert_Vp_C_F(ret_Vp_C_F());
}
struct Vp_C_F zig_ret_Vp_C_F();
int assert_ret_Vp_C_F(){
    return assert_Vp_C_F(zig_ret_Vp_C_F());
}

int assert_Vp_C_I(struct Vp_C_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 62) err = 2;
  if (lv.v3 != 22912) err = 3;
  return err;
}
struct Vp_C_I ret_Vp_C_I(){
    struct Vp_C_I lv = { .v1 = 0, .v2 = 62, .v3 = 22912 };
    return lv;
}
int zig_assert_Vp_C_I(struct Vp_C_I);
int send_Vp_C_I(){
    return zig_assert_Vp_C_I(ret_Vp_C_I());
}
struct Vp_C_I zig_ret_Vp_C_I();
int assert_ret_Vp_C_I(){
    return assert_Vp_C_I(zig_ret_Vp_C_I());
}

int assert_Vp_C_Ip(struct Vp_C_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_C_Ip ret_Vp_C_Ip(){
    struct Vp_C_Ip lv = { .v1 = 0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_C_Ip(struct Vp_C_Ip);
int send_Vp_C_Ip(){
    return zig_assert_Vp_C_Ip(ret_Vp_C_Ip());
}
struct Vp_C_Ip zig_ret_Vp_C_Ip();
int assert_ret_Vp_C_Ip(){
    return assert_Vp_C_Ip(zig_ret_Vp_C_Ip());
}

int assert_Vp_C_L(struct Vp_C_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16) err = 2;
  if (lv.v3 != 18116) err = 3;
  return err;
}
struct Vp_C_L ret_Vp_C_L(){
    struct Vp_C_L lv = { .v1 = 0, .v2 = 16, .v3 = 18116 };
    return lv;
}
int zig_assert_Vp_C_L(struct Vp_C_L);
int send_Vp_C_L(){
    return zig_assert_Vp_C_L(ret_Vp_C_L());
}
struct Vp_C_L zig_ret_Vp_C_L();
int assert_ret_Vp_C_L(){
    return assert_Vp_C_L(zig_ret_Vp_C_L());
}

int assert_Vp_C_S(struct Vp_C_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 81) err = 2;
  if (lv.v3 != 27635) err = 3;
  return err;
}
struct Vp_C_S ret_Vp_C_S(){
    struct Vp_C_S lv = { .v1 = 0, .v2 = 81, .v3 = 27635 };
    return lv;
}
int zig_assert_Vp_C_S(struct Vp_C_S);
int send_Vp_C_S(){
    return zig_assert_Vp_C_S(ret_Vp_C_S());
}
struct Vp_C_S zig_ret_Vp_C_S();
int assert_ret_Vp_C_S(){
    return assert_Vp_C_S(zig_ret_Vp_C_S());
}

int assert_Vp_C_Uc(struct Vp_C_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20) err = 2;
  if (lv.v3 != 98) err = 3;
  return err;
}
struct Vp_C_Uc ret_Vp_C_Uc(){
    struct Vp_C_Uc lv = { .v1 = 0, .v2 = 20, .v3 = 98 };
    return lv;
}
int zig_assert_Vp_C_Uc(struct Vp_C_Uc);
int send_Vp_C_Uc(){
    return zig_assert_Vp_C_Uc(ret_Vp_C_Uc());
}
struct Vp_C_Uc zig_ret_Vp_C_Uc();
int assert_ret_Vp_C_Uc(){
    return assert_Vp_C_Uc(zig_ret_Vp_C_Uc());
}

int assert_Vp_C_Ui(struct Vp_C_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 65) err = 2;
  if (lv.v3 != 13797) err = 3;
  return err;
}
struct Vp_C_Ui ret_Vp_C_Ui(){
    struct Vp_C_Ui lv = { .v1 = 0, .v2 = 65, .v3 = 13797 };
    return lv;
}
int zig_assert_Vp_C_Ui(struct Vp_C_Ui);
int send_Vp_C_Ui(){
    return zig_assert_Vp_C_Ui(ret_Vp_C_Ui());
}
struct Vp_C_Ui zig_ret_Vp_C_Ui();
int assert_ret_Vp_C_Ui(){
    return assert_Vp_C_Ui(zig_ret_Vp_C_Ui());
}

int assert_Vp_C_Ul(struct Vp_C_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 96) err = 2;
  if (lv.v3 != 18622) err = 3;
  return err;
}
struct Vp_C_Ul ret_Vp_C_Ul(){
    struct Vp_C_Ul lv = { .v1 = 0, .v2 = 96, .v3 = 18622 };
    return lv;
}
int zig_assert_Vp_C_Ul(struct Vp_C_Ul);
int send_Vp_C_Ul(){
    return zig_assert_Vp_C_Ul(ret_Vp_C_Ul());
}
struct Vp_C_Ul zig_ret_Vp_C_Ul();
int assert_ret_Vp_C_Ul(){
    return assert_Vp_C_Ul(zig_ret_Vp_C_Ul());
}

int assert_Vp_C_Us(struct Vp_C_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 109) err = 2;
  if (lv.v3 != 24720) err = 3;
  return err;
}
struct Vp_C_Us ret_Vp_C_Us(){
    struct Vp_C_Us lv = { .v1 = 0, .v2 = 109, .v3 = 24720 };
    return lv;
}
int zig_assert_Vp_C_Us(struct Vp_C_Us);
int send_Vp_C_Us(){
    return zig_assert_Vp_C_Us(ret_Vp_C_Us());
}
struct Vp_C_Us zig_ret_Vp_C_Us();
int assert_ret_Vp_C_Us(){
    return assert_Vp_C_Us(zig_ret_Vp_C_Us());
}

int assert_Vp_C_Vp(struct Vp_C_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_C_Vp ret_Vp_C_Vp(){
    struct Vp_C_Vp lv = { .v1 = 0, .v2 = 16, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_C_Vp(struct Vp_C_Vp);
int send_Vp_C_Vp(){
    return zig_assert_Vp_C_Vp(ret_Vp_C_Vp());
}
struct Vp_C_Vp zig_ret_Vp_C_Vp();
int assert_ret_Vp_C_Vp(){
    return assert_Vp_C_Vp(zig_ret_Vp_C_Vp());
}

int assert_Vp_D(struct Vp_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.5) err = 2;
  return err;
}
struct Vp_D ret_Vp_D(){
    struct Vp_D lv = { .v1 = 0, .v2 = 0.5 };
    return lv;
}
int zig_assert_Vp_D(struct Vp_D);
int send_Vp_D(){
    return zig_assert_Vp_D(ret_Vp_D());
}
struct Vp_D zig_ret_Vp_D();
int assert_ret_Vp_D(){
    return assert_Vp_D(zig_ret_Vp_D());
}

int assert_Vp_D_C(struct Vp_D_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 3) err = 3;
  return err;
}
struct Vp_D_C ret_Vp_D_C(){
    struct Vp_D_C lv = { .v1 = 0, .v2 = -0.25, .v3 = 3 };
    return lv;
}
int zig_assert_Vp_D_C(struct Vp_D_C);
int send_Vp_D_C(){
    return zig_assert_Vp_D_C(ret_Vp_D_C());
}
struct Vp_D_C zig_ret_Vp_D_C();
int assert_ret_Vp_D_C(){
    return assert_Vp_D_C(zig_ret_Vp_D_C());
}

int assert_Vp_D_D(struct Vp_D_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Vp_D_D ret_Vp_D_D(){
    struct Vp_D_D lv = { .v1 = 0, .v2 = -2.125, .v3 = -2.125 };
    return lv;
}
int zig_assert_Vp_D_D(struct Vp_D_D);
int send_Vp_D_D(){
    return zig_assert_Vp_D_D(ret_Vp_D_D());
}
struct Vp_D_D zig_ret_Vp_D_D();
int assert_ret_Vp_D_D(){
    return assert_Vp_D_D(zig_ret_Vp_D_D());
}

int assert_Vp_D_F(struct Vp_D_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Vp_D_F ret_Vp_D_F(){
    struct Vp_D_F lv = { .v1 = 0, .v2 = -2.125, .v3 = -0.25 };
    return lv;
}
int zig_assert_Vp_D_F(struct Vp_D_F);
int send_Vp_D_F(){
    return zig_assert_Vp_D_F(ret_Vp_D_F());
}
struct Vp_D_F zig_ret_Vp_D_F();
int assert_ret_Vp_D_F(){
    return assert_Vp_D_F(zig_ret_Vp_D_F());
}

int assert_Vp_D_I(struct Vp_D_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 9961) err = 3;
  return err;
}
struct Vp_D_I ret_Vp_D_I(){
    struct Vp_D_I lv = { .v1 = 0, .v2 = 0.875, .v3 = 9961 };
    return lv;
}
int zig_assert_Vp_D_I(struct Vp_D_I);
int send_Vp_D_I(){
    return zig_assert_Vp_D_I(ret_Vp_D_I());
}
struct Vp_D_I zig_ret_Vp_D_I();
int assert_ret_Vp_D_I(){
    return assert_Vp_D_I(zig_ret_Vp_D_I());
}

int assert_Vp_D_Ip(struct Vp_D_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_D_Ip ret_Vp_D_Ip(){
    struct Vp_D_Ip lv = { .v1 = 0, .v2 = -0.25, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_D_Ip(struct Vp_D_Ip);
int send_Vp_D_Ip(){
    return zig_assert_Vp_D_Ip(ret_Vp_D_Ip());
}
struct Vp_D_Ip zig_ret_Vp_D_Ip();
int assert_ret_Vp_D_Ip(){
    return assert_Vp_D_Ip(zig_ret_Vp_D_Ip());
}

int assert_Vp_D_L(struct Vp_D_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 17787) err = 3;
  return err;
}
struct Vp_D_L ret_Vp_D_L(){
    struct Vp_D_L lv = { .v1 = 0, .v2 = 0.875, .v3 = 17787 };
    return lv;
}
int zig_assert_Vp_D_L(struct Vp_D_L);
int send_Vp_D_L(){
    return zig_assert_Vp_D_L(ret_Vp_D_L());
}
struct Vp_D_L zig_ret_Vp_D_L();
int assert_ret_Vp_D_L(){
    return assert_Vp_D_L(zig_ret_Vp_D_L());
}

int assert_Vp_D_S(struct Vp_D_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 29276) err = 3;
  return err;
}
struct Vp_D_S ret_Vp_D_S(){
    struct Vp_D_S lv = { .v1 = 0, .v2 = -0.25, .v3 = 29276 };
    return lv;
}
int zig_assert_Vp_D_S(struct Vp_D_S);
int send_Vp_D_S(){
    return zig_assert_Vp_D_S(ret_Vp_D_S());
}
struct Vp_D_S zig_ret_Vp_D_S();
int assert_ret_Vp_D_S(){
    return assert_Vp_D_S(zig_ret_Vp_D_S());
}

int assert_Vp_D_Uc(struct Vp_D_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 26) err = 3;
  return err;
}
struct Vp_D_Uc ret_Vp_D_Uc(){
    struct Vp_D_Uc lv = { .v1 = 0, .v2 = 0.875, .v3 = 26 };
    return lv;
}
int zig_assert_Vp_D_Uc(struct Vp_D_Uc);
int send_Vp_D_Uc(){
    return zig_assert_Vp_D_Uc(ret_Vp_D_Uc());
}
struct Vp_D_Uc zig_ret_Vp_D_Uc();
int assert_ret_Vp_D_Uc(){
    return assert_Vp_D_Uc(zig_ret_Vp_D_Uc());
}

int assert_Vp_D_Ui(struct Vp_D_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 1017) err = 3;
  return err;
}
struct Vp_D_Ui ret_Vp_D_Ui(){
    struct Vp_D_Ui lv = { .v1 = 0, .v2 = 7.0, .v3 = 1017 };
    return lv;
}
int zig_assert_Vp_D_Ui(struct Vp_D_Ui);
int send_Vp_D_Ui(){
    return zig_assert_Vp_D_Ui(ret_Vp_D_Ui());
}
struct Vp_D_Ui zig_ret_Vp_D_Ui();
int assert_ret_Vp_D_Ui(){
    return assert_Vp_D_Ui(zig_ret_Vp_D_Ui());
}

int assert_Vp_D_Ul(struct Vp_D_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 18055) err = 3;
  return err;
}
struct Vp_D_Ul ret_Vp_D_Ul(){
    struct Vp_D_Ul lv = { .v1 = 0, .v2 = -2.125, .v3 = 18055 };
    return lv;
}
int zig_assert_Vp_D_Ul(struct Vp_D_Ul);
int send_Vp_D_Ul(){
    return zig_assert_Vp_D_Ul(ret_Vp_D_Ul());
}
struct Vp_D_Ul zig_ret_Vp_D_Ul();
int assert_ret_Vp_D_Ul(){
    return assert_Vp_D_Ul(zig_ret_Vp_D_Ul());
}

int assert_Vp_D_Us(struct Vp_D_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 13068) err = 3;
  return err;
}
struct Vp_D_Us ret_Vp_D_Us(){
    struct Vp_D_Us lv = { .v1 = 0, .v2 = 1.0, .v3 = 13068 };
    return lv;
}
int zig_assert_Vp_D_Us(struct Vp_D_Us);
int send_Vp_D_Us(){
    return zig_assert_Vp_D_Us(ret_Vp_D_Us());
}
struct Vp_D_Us zig_ret_Vp_D_Us();
int assert_ret_Vp_D_Us(){
    return assert_Vp_D_Us(zig_ret_Vp_D_Us());
}

int assert_Vp_D_Vp(struct Vp_D_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_D_Vp ret_Vp_D_Vp(){
    struct Vp_D_Vp lv = { .v1 = 0, .v2 = -0.25, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_D_Vp(struct Vp_D_Vp);
int send_Vp_D_Vp(){
    return zig_assert_Vp_D_Vp(ret_Vp_D_Vp());
}
struct Vp_D_Vp zig_ret_Vp_D_Vp();
int assert_ret_Vp_D_Vp(){
    return assert_Vp_D_Vp(zig_ret_Vp_D_Vp());
}

int assert_Vp_F(struct Vp_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  return err;
}
struct Vp_F ret_Vp_F(){
    struct Vp_F lv = { .v1 = 0, .v2 = -2.125 };
    return lv;
}
int zig_assert_Vp_F(struct Vp_F);
int send_Vp_F(){
    return zig_assert_Vp_F(ret_Vp_F());
}
struct Vp_F zig_ret_Vp_F();
int assert_ret_Vp_F(){
    return assert_Vp_F(zig_ret_Vp_F());
}

int assert_Vp_F_C(struct Vp_F_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 23) err = 3;
  return err;
}
struct Vp_F_C ret_Vp_F_C(){
    struct Vp_F_C lv = { .v1 = 0, .v2 = 0.875, .v3 = 23 };
    return lv;
}
int zig_assert_Vp_F_C(struct Vp_F_C);
int send_Vp_F_C(){
    return zig_assert_Vp_F_C(ret_Vp_F_C());
}
struct Vp_F_C zig_ret_Vp_F_C();
int assert_ret_Vp_F_C(){
    return assert_Vp_F_C(zig_ret_Vp_F_C());
}

int assert_Vp_F_D(struct Vp_F_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Vp_F_D ret_Vp_F_D(){
    struct Vp_F_D lv = { .v1 = 0, .v2 = -2.125, .v3 = -0.25 };
    return lv;
}
int zig_assert_Vp_F_D(struct Vp_F_D);
int send_Vp_F_D(){
    return zig_assert_Vp_F_D(ret_Vp_F_D());
}
struct Vp_F_D zig_ret_Vp_F_D();
int assert_ret_Vp_F_D(){
    return assert_Vp_F_D(zig_ret_Vp_F_D());
}

int assert_Vp_F_F(struct Vp_F_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Vp_F_F ret_Vp_F_F(){
    struct Vp_F_F lv = { .v1 = 0, .v2 = 7.0, .v3 = 4.5 };
    return lv;
}
int zig_assert_Vp_F_F(struct Vp_F_F);
int send_Vp_F_F(){
    return zig_assert_Vp_F_F(ret_Vp_F_F());
}
struct Vp_F_F zig_ret_Vp_F_F();
int assert_ret_Vp_F_F(){
    return assert_Vp_F_F(zig_ret_Vp_F_F());
}

int assert_Vp_F_I(struct Vp_F_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 23844) err = 3;
  return err;
}
struct Vp_F_I ret_Vp_F_I(){
    struct Vp_F_I lv = { .v1 = 0, .v2 = 1.0, .v3 = 23844 };
    return lv;
}
int zig_assert_Vp_F_I(struct Vp_F_I);
int send_Vp_F_I(){
    return zig_assert_Vp_F_I(ret_Vp_F_I());
}
struct Vp_F_I zig_ret_Vp_F_I();
int assert_ret_Vp_F_I(){
    return assert_Vp_F_I(zig_ret_Vp_F_I());
}

int assert_Vp_F_Ip(struct Vp_F_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_F_Ip ret_Vp_F_Ip(){
    struct Vp_F_Ip lv = { .v1 = 0, .v2 = 4.5, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_F_Ip(struct Vp_F_Ip);
int send_Vp_F_Ip(){
    return zig_assert_Vp_F_Ip(ret_Vp_F_Ip());
}
struct Vp_F_Ip zig_ret_Vp_F_Ip();
int assert_ret_Vp_F_Ip(){
    return assert_Vp_F_Ip(zig_ret_Vp_F_Ip());
}

int assert_Vp_F_L(struct Vp_F_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 4038) err = 3;
  return err;
}
struct Vp_F_L ret_Vp_F_L(){
    struct Vp_F_L lv = { .v1 = 0, .v2 = 0.875, .v3 = 4038 };
    return lv;
}
int zig_assert_Vp_F_L(struct Vp_F_L);
int send_Vp_F_L(){
    return zig_assert_Vp_F_L(ret_Vp_F_L());
}
struct Vp_F_L zig_ret_Vp_F_L();
int assert_ret_Vp_F_L(){
    return assert_Vp_F_L(zig_ret_Vp_F_L());
}

int assert_Vp_F_S(struct Vp_F_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 23153) err = 3;
  return err;
}
struct Vp_F_S ret_Vp_F_S(){
    struct Vp_F_S lv = { .v1 = 0, .v2 = 4.5, .v3 = 23153 };
    return lv;
}
int zig_assert_Vp_F_S(struct Vp_F_S);
int send_Vp_F_S(){
    return zig_assert_Vp_F_S(ret_Vp_F_S());
}
struct Vp_F_S zig_ret_Vp_F_S();
int assert_ret_Vp_F_S(){
    return assert_Vp_F_S(zig_ret_Vp_F_S());
}

int assert_Vp_F_Uc(struct Vp_F_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 33) err = 3;
  return err;
}
struct Vp_F_Uc ret_Vp_F_Uc(){
    struct Vp_F_Uc lv = { .v1 = 0, .v2 = 7.0, .v3 = 33 };
    return lv;
}
int zig_assert_Vp_F_Uc(struct Vp_F_Uc);
int send_Vp_F_Uc(){
    return zig_assert_Vp_F_Uc(ret_Vp_F_Uc());
}
struct Vp_F_Uc zig_ret_Vp_F_Uc();
int assert_ret_Vp_F_Uc(){
    return assert_Vp_F_Uc(zig_ret_Vp_F_Uc());
}

int assert_Vp_F_Ui(struct Vp_F_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 30633) err = 3;
  return err;
}
struct Vp_F_Ui ret_Vp_F_Ui(){
    struct Vp_F_Ui lv = { .v1 = 0, .v2 = -0.25, .v3 = 30633 };
    return lv;
}
int zig_assert_Vp_F_Ui(struct Vp_F_Ui);
int send_Vp_F_Ui(){
    return zig_assert_Vp_F_Ui(ret_Vp_F_Ui());
}
struct Vp_F_Ui zig_ret_Vp_F_Ui();
int assert_ret_Vp_F_Ui(){
    return assert_Vp_F_Ui(zig_ret_Vp_F_Ui());
}

int assert_Vp_F_Ul(struct Vp_F_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 8866) err = 3;
  return err;
}
struct Vp_F_Ul ret_Vp_F_Ul(){
    struct Vp_F_Ul lv = { .v1 = 0, .v2 = -0.25, .v3 = 8866 };
    return lv;
}
int zig_assert_Vp_F_Ul(struct Vp_F_Ul);
int send_Vp_F_Ul(){
    return zig_assert_Vp_F_Ul(ret_Vp_F_Ul());
}
struct Vp_F_Ul zig_ret_Vp_F_Ul();
int assert_ret_Vp_F_Ul(){
    return assert_Vp_F_Ul(zig_ret_Vp_F_Ul());
}

int assert_Vp_F_Us(struct Vp_F_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 6210) err = 3;
  return err;
}
struct Vp_F_Us ret_Vp_F_Us(){
    struct Vp_F_Us lv = { .v1 = 0, .v2 = 0.875, .v3 = 6210 };
    return lv;
}
int zig_assert_Vp_F_Us(struct Vp_F_Us);
int send_Vp_F_Us(){
    return zig_assert_Vp_F_Us(ret_Vp_F_Us());
}
struct Vp_F_Us zig_ret_Vp_F_Us();
int assert_ret_Vp_F_Us(){
    return assert_Vp_F_Us(zig_ret_Vp_F_Us());
}

int assert_Vp_F_Vp(struct Vp_F_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_F_Vp ret_Vp_F_Vp(){
    struct Vp_F_Vp lv = { .v1 = 0, .v2 = 0.875, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_F_Vp(struct Vp_F_Vp);
int send_Vp_F_Vp(){
    return zig_assert_Vp_F_Vp(ret_Vp_F_Vp());
}
struct Vp_F_Vp zig_ret_Vp_F_Vp();
int assert_ret_Vp_F_Vp(){
    return assert_Vp_F_Vp(zig_ret_Vp_F_Vp());
}

int assert_Vp_I(struct Vp_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 23393) err = 2;
  return err;
}
struct Vp_I ret_Vp_I(){
    struct Vp_I lv = { .v1 = 0, .v2 = 23393 };
    return lv;
}
int zig_assert_Vp_I(struct Vp_I);
int send_Vp_I(){
    return zig_assert_Vp_I(ret_Vp_I());
}
struct Vp_I zig_ret_Vp_I();
int assert_ret_Vp_I(){
    return assert_Vp_I(zig_ret_Vp_I());
}

int assert_Vp_I_C(struct Vp_I_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1637) err = 2;
  if (lv.v3 != 114) err = 3;
  return err;
}
struct Vp_I_C ret_Vp_I_C(){
    struct Vp_I_C lv = { .v1 = 0, .v2 = 1637, .v3 = 114 };
    return lv;
}
int zig_assert_Vp_I_C(struct Vp_I_C);
int send_Vp_I_C(){
    return zig_assert_Vp_I_C(ret_Vp_I_C());
}
struct Vp_I_C zig_ret_Vp_I_C();
int assert_ret_Vp_I_C(){
    return assert_Vp_I_C(zig_ret_Vp_I_C());
}

int assert_Vp_I_D(struct Vp_I_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1972) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Vp_I_D ret_Vp_I_D(){
    struct Vp_I_D lv = { .v1 = 0, .v2 = 1972, .v3 = -2.125 };
    return lv;
}
int zig_assert_Vp_I_D(struct Vp_I_D);
int send_Vp_I_D(){
    return zig_assert_Vp_I_D(ret_Vp_I_D());
}
struct Vp_I_D zig_ret_Vp_I_D();
int assert_ret_Vp_I_D(){
    return assert_Vp_I_D(zig_ret_Vp_I_D());
}

int assert_Vp_I_F(struct Vp_I_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27881) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Vp_I_F ret_Vp_I_F(){
    struct Vp_I_F lv = { .v1 = 0, .v2 = 27881, .v3 = -2.125 };
    return lv;
}
int zig_assert_Vp_I_F(struct Vp_I_F);
int send_Vp_I_F(){
    return zig_assert_Vp_I_F(ret_Vp_I_F());
}
struct Vp_I_F zig_ret_Vp_I_F();
int assert_ret_Vp_I_F(){
    return assert_Vp_I_F(zig_ret_Vp_I_F());
}

int assert_Vp_I_I(struct Vp_I_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10924) err = 2;
  if (lv.v3 != 24474) err = 3;
  return err;
}
struct Vp_I_I ret_Vp_I_I(){
    struct Vp_I_I lv = { .v1 = 0, .v2 = 10924, .v3 = 24474 };
    return lv;
}
int zig_assert_Vp_I_I(struct Vp_I_I);
int send_Vp_I_I(){
    return zig_assert_Vp_I_I(ret_Vp_I_I());
}
struct Vp_I_I zig_ret_Vp_I_I();
int assert_ret_Vp_I_I(){
    return assert_Vp_I_I(zig_ret_Vp_I_I());
}

int assert_Vp_I_Ip(struct Vp_I_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16922) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_I_Ip ret_Vp_I_Ip(){
    struct Vp_I_Ip lv = { .v1 = 0, .v2 = 16922, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_I_Ip(struct Vp_I_Ip);
int send_Vp_I_Ip(){
    return zig_assert_Vp_I_Ip(ret_Vp_I_Ip());
}
struct Vp_I_Ip zig_ret_Vp_I_Ip();
int assert_ret_Vp_I_Ip(){
    return assert_Vp_I_Ip(zig_ret_Vp_I_Ip());
}

int assert_Vp_I_L(struct Vp_I_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6583) err = 2;
  if (lv.v3 != 21965) err = 3;
  return err;
}
struct Vp_I_L ret_Vp_I_L(){
    struct Vp_I_L lv = { .v1 = 0, .v2 = 6583, .v3 = 21965 };
    return lv;
}
int zig_assert_Vp_I_L(struct Vp_I_L);
int send_Vp_I_L(){
    return zig_assert_Vp_I_L(ret_Vp_I_L());
}
struct Vp_I_L zig_ret_Vp_I_L();
int assert_ret_Vp_I_L(){
    return assert_Vp_I_L(zig_ret_Vp_I_L());
}

int assert_Vp_I_S(struct Vp_I_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21480) err = 2;
  if (lv.v3 != 25061) err = 3;
  return err;
}
struct Vp_I_S ret_Vp_I_S(){
    struct Vp_I_S lv = { .v1 = 0, .v2 = 21480, .v3 = 25061 };
    return lv;
}
int zig_assert_Vp_I_S(struct Vp_I_S);
int send_Vp_I_S(){
    return zig_assert_Vp_I_S(ret_Vp_I_S());
}
struct Vp_I_S zig_ret_Vp_I_S();
int assert_ret_Vp_I_S(){
    return assert_Vp_I_S(zig_ret_Vp_I_S());
}

int assert_Vp_I_Uc(struct Vp_I_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16553) err = 2;
  if (lv.v3 != 97) err = 3;
  return err;
}
struct Vp_I_Uc ret_Vp_I_Uc(){
    struct Vp_I_Uc lv = { .v1 = 0, .v2 = 16553, .v3 = 97 };
    return lv;
}
int zig_assert_Vp_I_Uc(struct Vp_I_Uc);
int send_Vp_I_Uc(){
    return zig_assert_Vp_I_Uc(ret_Vp_I_Uc());
}
struct Vp_I_Uc zig_ret_Vp_I_Uc();
int assert_ret_Vp_I_Uc(){
    return assert_Vp_I_Uc(zig_ret_Vp_I_Uc());
}

int assert_Vp_I_Ui(struct Vp_I_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19921) err = 2;
  if (lv.v3 != 1267) err = 3;
  return err;
}
struct Vp_I_Ui ret_Vp_I_Ui(){
    struct Vp_I_Ui lv = { .v1 = 0, .v2 = 19921, .v3 = 1267 };
    return lv;
}
int zig_assert_Vp_I_Ui(struct Vp_I_Ui);
int send_Vp_I_Ui(){
    return zig_assert_Vp_I_Ui(ret_Vp_I_Ui());
}
struct Vp_I_Ui zig_ret_Vp_I_Ui();
int assert_ret_Vp_I_Ui(){
    return assert_Vp_I_Ui(zig_ret_Vp_I_Ui());
}

int assert_Vp_I_Ul(struct Vp_I_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20058) err = 2;
  if (lv.v3 != 6949) err = 3;
  return err;
}
struct Vp_I_Ul ret_Vp_I_Ul(){
    struct Vp_I_Ul lv = { .v1 = 0, .v2 = 20058, .v3 = 6949 };
    return lv;
}
int zig_assert_Vp_I_Ul(struct Vp_I_Ul);
int send_Vp_I_Ul(){
    return zig_assert_Vp_I_Ul(ret_Vp_I_Ul());
}
struct Vp_I_Ul zig_ret_Vp_I_Ul();
int assert_ret_Vp_I_Ul(){
    return assert_Vp_I_Ul(zig_ret_Vp_I_Ul());
}

int assert_Vp_I_Us(struct Vp_I_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 11156) err = 2;
  if (lv.v3 != 2529) err = 3;
  return err;
}
struct Vp_I_Us ret_Vp_I_Us(){
    struct Vp_I_Us lv = { .v1 = 0, .v2 = 11156, .v3 = 2529 };
    return lv;
}
int zig_assert_Vp_I_Us(struct Vp_I_Us);
int send_Vp_I_Us(){
    return zig_assert_Vp_I_Us(ret_Vp_I_Us());
}
struct Vp_I_Us zig_ret_Vp_I_Us();
int assert_ret_Vp_I_Us(){
    return assert_Vp_I_Us(zig_ret_Vp_I_Us());
}

int assert_Vp_I_Vp(struct Vp_I_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15788) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_I_Vp ret_Vp_I_Vp(){
    struct Vp_I_Vp lv = { .v1 = 0, .v2 = 15788, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_I_Vp(struct Vp_I_Vp);
int send_Vp_I_Vp(){
    return zig_assert_Vp_I_Vp(ret_Vp_I_Vp());
}
struct Vp_I_Vp zig_ret_Vp_I_Vp();
int assert_ret_Vp_I_Vp(){
    return assert_Vp_I_Vp(zig_ret_Vp_I_Vp());
}

int assert_Vp_Ip(struct Vp_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Vp_Ip ret_Vp_Ip(){
    struct Vp_Ip lv = { .v1 = 0, .v2 = 0 };
    return lv;
}
int zig_assert_Vp_Ip(struct Vp_Ip);
int send_Vp_Ip(){
    return zig_assert_Vp_Ip(ret_Vp_Ip());
}
struct Vp_Ip zig_ret_Vp_Ip();
int assert_ret_Vp_Ip(){
    return assert_Vp_Ip(zig_ret_Vp_Ip());
}

int assert_Vp_Ip_C(struct Vp_Ip_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 53) err = 3;
  return err;
}
struct Vp_Ip_C ret_Vp_Ip_C(){
    struct Vp_Ip_C lv = { .v1 = 0, .v2 = 0, .v3 = 53 };
    return lv;
}
int zig_assert_Vp_Ip_C(struct Vp_Ip_C);
int send_Vp_Ip_C(){
    return zig_assert_Vp_Ip_C(ret_Vp_Ip_C());
}
struct Vp_Ip_C zig_ret_Vp_Ip_C();
int assert_ret_Vp_Ip_C(){
    return assert_Vp_Ip_C(zig_ret_Vp_Ip_C());
}

int assert_Vp_Ip_D(struct Vp_Ip_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Vp_Ip_D ret_Vp_Ip_D(){
    struct Vp_Ip_D lv = { .v1 = 0, .v2 = 0, .v3 = -0.25 };
    return lv;
}
int zig_assert_Vp_Ip_D(struct Vp_Ip_D);
int send_Vp_Ip_D(){
    return zig_assert_Vp_Ip_D(ret_Vp_Ip_D());
}
struct Vp_Ip_D zig_ret_Vp_Ip_D();
int assert_ret_Vp_Ip_D(){
    return assert_Vp_Ip_D(zig_ret_Vp_Ip_D());
}

int assert_Vp_Ip_F(struct Vp_Ip_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Vp_Ip_F ret_Vp_Ip_F(){
    struct Vp_Ip_F lv = { .v1 = 0, .v2 = 0, .v3 = 1.0 };
    return lv;
}
int zig_assert_Vp_Ip_F(struct Vp_Ip_F);
int send_Vp_Ip_F(){
    return zig_assert_Vp_Ip_F(ret_Vp_Ip_F());
}
struct Vp_Ip_F zig_ret_Vp_Ip_F();
int assert_ret_Vp_Ip_F(){
    return assert_Vp_Ip_F(zig_ret_Vp_Ip_F());
}

int assert_Vp_Ip_I(struct Vp_Ip_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 21941) err = 3;
  return err;
}
struct Vp_Ip_I ret_Vp_Ip_I(){
    struct Vp_Ip_I lv = { .v1 = 0, .v2 = 0, .v3 = 21941 };
    return lv;
}
int zig_assert_Vp_Ip_I(struct Vp_Ip_I);
int send_Vp_Ip_I(){
    return zig_assert_Vp_Ip_I(ret_Vp_Ip_I());
}
struct Vp_Ip_I zig_ret_Vp_Ip_I();
int assert_ret_Vp_Ip_I(){
    return assert_Vp_Ip_I(zig_ret_Vp_Ip_I());
}

int assert_Vp_Ip_Ip(struct Vp_Ip_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Ip_Ip ret_Vp_Ip_Ip(){
    struct Vp_Ip_Ip lv = { .v1 = 0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Ip_Ip(struct Vp_Ip_Ip);
int send_Vp_Ip_Ip(){
    return zig_assert_Vp_Ip_Ip(ret_Vp_Ip_Ip());
}
struct Vp_Ip_Ip zig_ret_Vp_Ip_Ip();
int assert_ret_Vp_Ip_Ip(){
    return assert_Vp_Ip_Ip(zig_ret_Vp_Ip_Ip());
}

int assert_Vp_Ip_L(struct Vp_Ip_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 18116) err = 3;
  return err;
}
struct Vp_Ip_L ret_Vp_Ip_L(){
    struct Vp_Ip_L lv = { .v1 = 0, .v2 = 0, .v3 = 18116 };
    return lv;
}
int zig_assert_Vp_Ip_L(struct Vp_Ip_L);
int send_Vp_Ip_L(){
    return zig_assert_Vp_Ip_L(ret_Vp_Ip_L());
}
struct Vp_Ip_L zig_ret_Vp_Ip_L();
int assert_ret_Vp_Ip_L(){
    return assert_Vp_Ip_L(zig_ret_Vp_Ip_L());
}

int assert_Vp_Ip_S(struct Vp_Ip_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 31632) err = 3;
  return err;
}
struct Vp_Ip_S ret_Vp_Ip_S(){
    struct Vp_Ip_S lv = { .v1 = 0, .v2 = 0, .v3 = 31632 };
    return lv;
}
int zig_assert_Vp_Ip_S(struct Vp_Ip_S);
int send_Vp_Ip_S(){
    return zig_assert_Vp_Ip_S(ret_Vp_Ip_S());
}
struct Vp_Ip_S zig_ret_Vp_Ip_S();
int assert_ret_Vp_Ip_S(){
    return assert_Vp_Ip_S(zig_ret_Vp_Ip_S());
}

int assert_Vp_Ip_Uc(struct Vp_Ip_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 107) err = 3;
  return err;
}
struct Vp_Ip_Uc ret_Vp_Ip_Uc(){
    struct Vp_Ip_Uc lv = { .v1 = 0, .v2 = 0, .v3 = 107 };
    return lv;
}
int zig_assert_Vp_Ip_Uc(struct Vp_Ip_Uc);
int send_Vp_Ip_Uc(){
    return zig_assert_Vp_Ip_Uc(ret_Vp_Ip_Uc());
}
struct Vp_Ip_Uc zig_ret_Vp_Ip_Uc();
int assert_ret_Vp_Ip_Uc(){
    return assert_Vp_Ip_Uc(zig_ret_Vp_Ip_Uc());
}

int assert_Vp_Ip_Ui(struct Vp_Ip_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 30947) err = 3;
  return err;
}
struct Vp_Ip_Ui ret_Vp_Ip_Ui(){
    struct Vp_Ip_Ui lv = { .v1 = 0, .v2 = 0, .v3 = 30947 };
    return lv;
}
int zig_assert_Vp_Ip_Ui(struct Vp_Ip_Ui);
int send_Vp_Ip_Ui(){
    return zig_assert_Vp_Ip_Ui(ret_Vp_Ip_Ui());
}
struct Vp_Ip_Ui zig_ret_Vp_Ip_Ui();
int assert_ret_Vp_Ip_Ui(){
    return assert_Vp_Ip_Ui(zig_ret_Vp_Ip_Ui());
}

int assert_Vp_Ip_Ul(struct Vp_Ip_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 10704) err = 3;
  return err;
}
struct Vp_Ip_Ul ret_Vp_Ip_Ul(){
    struct Vp_Ip_Ul lv = { .v1 = 0, .v2 = 0, .v3 = 10704 };
    return lv;
}
int zig_assert_Vp_Ip_Ul(struct Vp_Ip_Ul);
int send_Vp_Ip_Ul(){
    return zig_assert_Vp_Ip_Ul(ret_Vp_Ip_Ul());
}
struct Vp_Ip_Ul zig_ret_Vp_Ip_Ul();
int assert_ret_Vp_Ip_Ul(){
    return assert_Vp_Ip_Ul(zig_ret_Vp_Ip_Ul());
}

int assert_Vp_Ip_Us(struct Vp_Ip_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 8391) err = 3;
  return err;
}
struct Vp_Ip_Us ret_Vp_Ip_Us(){
    struct Vp_Ip_Us lv = { .v1 = 0, .v2 = 0, .v3 = 8391 };
    return lv;
}
int zig_assert_Vp_Ip_Us(struct Vp_Ip_Us);
int send_Vp_Ip_Us(){
    return zig_assert_Vp_Ip_Us(ret_Vp_Ip_Us());
}
struct Vp_Ip_Us zig_ret_Vp_Ip_Us();
int assert_ret_Vp_Ip_Us(){
    return assert_Vp_Ip_Us(zig_ret_Vp_Ip_Us());
}

int assert_Vp_Ip_Vp(struct Vp_Ip_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Ip_Vp ret_Vp_Ip_Vp(){
    struct Vp_Ip_Vp lv = { .v1 = 0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Ip_Vp(struct Vp_Ip_Vp);
int send_Vp_Ip_Vp(){
    return zig_assert_Vp_Ip_Vp(ret_Vp_Ip_Vp());
}
struct Vp_Ip_Vp zig_ret_Vp_Ip_Vp();
int assert_ret_Vp_Ip_Vp(){
    return assert_Vp_Ip_Vp(zig_ret_Vp_Ip_Vp());
}

int assert_Vp_L(struct Vp_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15055) err = 2;
  return err;
}
struct Vp_L ret_Vp_L(){
    struct Vp_L lv = { .v1 = 0, .v2 = 15055 };
    return lv;
}
int zig_assert_Vp_L(struct Vp_L);
int send_Vp_L(){
    return zig_assert_Vp_L(ret_Vp_L());
}
struct Vp_L zig_ret_Vp_L();
int assert_ret_Vp_L(){
    return assert_Vp_L(zig_ret_Vp_L());
}

int assert_Vp_L_C(struct Vp_L_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28354) err = 2;
  if (lv.v3 != 25) err = 3;
  return err;
}
struct Vp_L_C ret_Vp_L_C(){
    struct Vp_L_C lv = { .v1 = 0, .v2 = 28354, .v3 = 25 };
    return lv;
}
int zig_assert_Vp_L_C(struct Vp_L_C);
int send_Vp_L_C(){
    return zig_assert_Vp_L_C(ret_Vp_L_C());
}
struct Vp_L_C zig_ret_Vp_L_C();
int assert_ret_Vp_L_C(){
    return assert_Vp_L_C(zig_ret_Vp_L_C());
}

int assert_Vp_L_D(struct Vp_L_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 32669) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Vp_L_D ret_Vp_L_D(){
    struct Vp_L_D lv = { .v1 = 0, .v2 = 32669, .v3 = 0.875 };
    return lv;
}
int zig_assert_Vp_L_D(struct Vp_L_D);
int send_Vp_L_D(){
    return zig_assert_Vp_L_D(ret_Vp_L_D());
}
struct Vp_L_D zig_ret_Vp_L_D();
int assert_ret_Vp_L_D(){
    return assert_Vp_L_D(zig_ret_Vp_L_D());
}

int assert_Vp_L_F(struct Vp_L_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19722) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Vp_L_F ret_Vp_L_F(){
    struct Vp_L_F lv = { .v1 = 0, .v2 = 19722, .v3 = 0.875 };
    return lv;
}
int zig_assert_Vp_L_F(struct Vp_L_F);
int send_Vp_L_F(){
    return zig_assert_Vp_L_F(ret_Vp_L_F());
}
struct Vp_L_F zig_ret_Vp_L_F();
int assert_ret_Vp_L_F(){
    return assert_Vp_L_F(zig_ret_Vp_L_F());
}

int assert_Vp_L_I(struct Vp_L_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 22785) err = 2;
  if (lv.v3 != 20916) err = 3;
  return err;
}
struct Vp_L_I ret_Vp_L_I(){
    struct Vp_L_I lv = { .v1 = 0, .v2 = 22785, .v3 = 20916 };
    return lv;
}
int zig_assert_Vp_L_I(struct Vp_L_I);
int send_Vp_L_I(){
    return zig_assert_Vp_L_I(ret_Vp_L_I());
}
struct Vp_L_I zig_ret_Vp_L_I();
int assert_ret_Vp_L_I(){
    return assert_Vp_L_I(zig_ret_Vp_L_I());
}

int assert_Vp_L_Ip(struct Vp_L_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28290) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_L_Ip ret_Vp_L_Ip(){
    struct Vp_L_Ip lv = { .v1 = 0, .v2 = 28290, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_L_Ip(struct Vp_L_Ip);
int send_Vp_L_Ip(){
    return zig_assert_Vp_L_Ip(ret_Vp_L_Ip());
}
struct Vp_L_Ip zig_ret_Vp_L_Ip();
int assert_ret_Vp_L_Ip(){
    return assert_Vp_L_Ip(zig_ret_Vp_L_Ip());
}

int assert_Vp_L_L(struct Vp_L_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28192) err = 2;
  if (lv.v3 != 6050) err = 3;
  return err;
}
struct Vp_L_L ret_Vp_L_L(){
    struct Vp_L_L lv = { .v1 = 0, .v2 = 28192, .v3 = 6050 };
    return lv;
}
int zig_assert_Vp_L_L(struct Vp_L_L);
int send_Vp_L_L(){
    return zig_assert_Vp_L_L(ret_Vp_L_L());
}
struct Vp_L_L zig_ret_Vp_L_L();
int assert_ret_Vp_L_L(){
    return assert_Vp_L_L(zig_ret_Vp_L_L());
}

int assert_Vp_L_S(struct Vp_L_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 56) err = 2;
  if (lv.v3 != 14166) err = 3;
  return err;
}
struct Vp_L_S ret_Vp_L_S(){
    struct Vp_L_S lv = { .v1 = 0, .v2 = 56, .v3 = 14166 };
    return lv;
}
int zig_assert_Vp_L_S(struct Vp_L_S);
int send_Vp_L_S(){
    return zig_assert_Vp_L_S(ret_Vp_L_S());
}
struct Vp_L_S zig_ret_Vp_L_S();
int assert_ret_Vp_L_S(){
    return assert_Vp_L_S(zig_ret_Vp_L_S());
}

int assert_Vp_L_Uc(struct Vp_L_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26724) err = 2;
  if (lv.v3 != 65) err = 3;
  return err;
}
struct Vp_L_Uc ret_Vp_L_Uc(){
    struct Vp_L_Uc lv = { .v1 = 0, .v2 = 26724, .v3 = 65 };
    return lv;
}
int zig_assert_Vp_L_Uc(struct Vp_L_Uc);
int send_Vp_L_Uc(){
    return zig_assert_Vp_L_Uc(ret_Vp_L_Uc());
}
struct Vp_L_Uc zig_ret_Vp_L_Uc();
int assert_ret_Vp_L_Uc(){
    return assert_Vp_L_Uc(zig_ret_Vp_L_Uc());
}

int assert_Vp_L_Ui(struct Vp_L_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 17745) err = 2;
  if (lv.v3 != 25100) err = 3;
  return err;
}
struct Vp_L_Ui ret_Vp_L_Ui(){
    struct Vp_L_Ui lv = { .v1 = 0, .v2 = 17745, .v3 = 25100 };
    return lv;
}
int zig_assert_Vp_L_Ui(struct Vp_L_Ui);
int send_Vp_L_Ui(){
    return zig_assert_Vp_L_Ui(ret_Vp_L_Ui());
}
struct Vp_L_Ui zig_ret_Vp_L_Ui();
int assert_ret_Vp_L_Ui(){
    return assert_Vp_L_Ui(zig_ret_Vp_L_Ui());
}

int assert_Vp_L_Ul(struct Vp_L_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28818) err = 2;
  if (lv.v3 != 28707) err = 3;
  return err;
}
struct Vp_L_Ul ret_Vp_L_Ul(){
    struct Vp_L_Ul lv = { .v1 = 0, .v2 = 28818, .v3 = 28707 };
    return lv;
}
int zig_assert_Vp_L_Ul(struct Vp_L_Ul);
int send_Vp_L_Ul(){
    return zig_assert_Vp_L_Ul(ret_Vp_L_Ul());
}
struct Vp_L_Ul zig_ret_Vp_L_Ul();
int assert_ret_Vp_L_Ul(){
    return assert_Vp_L_Ul(zig_ret_Vp_L_Ul());
}

int assert_Vp_L_Us(struct Vp_L_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 23192) err = 2;
  if (lv.v3 != 1547) err = 3;
  return err;
}
struct Vp_L_Us ret_Vp_L_Us(){
    struct Vp_L_Us lv = { .v1 = 0, .v2 = 23192, .v3 = 1547 };
    return lv;
}
int zig_assert_Vp_L_Us(struct Vp_L_Us);
int send_Vp_L_Us(){
    return zig_assert_Vp_L_Us(ret_Vp_L_Us());
}
struct Vp_L_Us zig_ret_Vp_L_Us();
int assert_ret_Vp_L_Us(){
    return assert_Vp_L_Us(zig_ret_Vp_L_Us());
}

int assert_Vp_L_Vp(struct Vp_L_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 2020) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_L_Vp ret_Vp_L_Vp(){
    struct Vp_L_Vp lv = { .v1 = 0, .v2 = 2020, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_L_Vp(struct Vp_L_Vp);
int send_Vp_L_Vp(){
    return zig_assert_Vp_L_Vp(ret_Vp_L_Vp());
}
struct Vp_L_Vp zig_ret_Vp_L_Vp();
int assert_ret_Vp_L_Vp(){
    return assert_Vp_L_Vp(zig_ret_Vp_L_Vp());
}

int assert_Vp_S(struct Vp_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 3165) err = 2;
  return err;
}
struct Vp_S ret_Vp_S(){
    struct Vp_S lv = { .v1 = 0, .v2 = 3165 };
    return lv;
}
int zig_assert_Vp_S(struct Vp_S);
int send_Vp_S(){
    return zig_assert_Vp_S(ret_Vp_S());
}
struct Vp_S zig_ret_Vp_S();
int assert_ret_Vp_S(){
    return assert_Vp_S(zig_ret_Vp_S());
}

int assert_Vp_S_C(struct Vp_S_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20726) err = 2;
  if (lv.v3 != 47) err = 3;
  return err;
}
struct Vp_S_C ret_Vp_S_C(){
    struct Vp_S_C lv = { .v1 = 0, .v2 = 20726, .v3 = 47 };
    return lv;
}
int zig_assert_Vp_S_C(struct Vp_S_C);
int send_Vp_S_C(){
    return zig_assert_Vp_S_C(ret_Vp_S_C());
}
struct Vp_S_C zig_ret_Vp_S_C();
int assert_ret_Vp_S_C(){
    return assert_Vp_S_C(zig_ret_Vp_S_C());
}

int assert_Vp_S_D(struct Vp_S_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 11541) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Vp_S_D ret_Vp_S_D(){
    struct Vp_S_D lv = { .v1 = 0, .v2 = 11541, .v3 = -0.25 };
    return lv;
}
int zig_assert_Vp_S_D(struct Vp_S_D);
int send_Vp_S_D(){
    return zig_assert_Vp_S_D(ret_Vp_S_D());
}
struct Vp_S_D zig_ret_Vp_S_D();
int assert_ret_Vp_S_D(){
    return assert_Vp_S_D(zig_ret_Vp_S_D());
}

int assert_Vp_S_F(struct Vp_S_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 29716) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Vp_S_F ret_Vp_S_F(){
    struct Vp_S_F lv = { .v1 = 0, .v2 = 29716, .v3 = 0.5 };
    return lv;
}
int zig_assert_Vp_S_F(struct Vp_S_F);
int send_Vp_S_F(){
    return zig_assert_Vp_S_F(ret_Vp_S_F());
}
struct Vp_S_F zig_ret_Vp_S_F();
int assert_ret_Vp_S_F(){
    return assert_Vp_S_F(zig_ret_Vp_S_F());
}

int assert_Vp_S_I(struct Vp_S_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 11380) err = 2;
  if (lv.v3 != 937) err = 3;
  return err;
}
struct Vp_S_I ret_Vp_S_I(){
    struct Vp_S_I lv = { .v1 = 0, .v2 = 11380, .v3 = 937 };
    return lv;
}
int zig_assert_Vp_S_I(struct Vp_S_I);
int send_Vp_S_I(){
    return zig_assert_Vp_S_I(ret_Vp_S_I());
}
struct Vp_S_I zig_ret_Vp_S_I();
int assert_ret_Vp_S_I(){
    return assert_Vp_S_I(zig_ret_Vp_S_I());
}

int assert_Vp_S_Ip(struct Vp_S_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7055) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_S_Ip ret_Vp_S_Ip(){
    struct Vp_S_Ip lv = { .v1 = 0, .v2 = 7055, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_S_Ip(struct Vp_S_Ip);
int send_Vp_S_Ip(){
    return zig_assert_Vp_S_Ip(ret_Vp_S_Ip());
}
struct Vp_S_Ip zig_ret_Vp_S_Ip();
int assert_ret_Vp_S_Ip(){
    return assert_Vp_S_Ip(zig_ret_Vp_S_Ip());
}

int assert_Vp_S_L(struct Vp_S_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 22604) err = 2;
  if (lv.v3 != 30928) err = 3;
  return err;
}
struct Vp_S_L ret_Vp_S_L(){
    struct Vp_S_L lv = { .v1 = 0, .v2 = 22604, .v3 = 30928 };
    return lv;
}
int zig_assert_Vp_S_L(struct Vp_S_L);
int send_Vp_S_L(){
    return zig_assert_Vp_S_L(ret_Vp_S_L());
}
struct Vp_S_L zig_ret_Vp_S_L();
int assert_ret_Vp_S_L(){
    return assert_Vp_S_L(zig_ret_Vp_S_L());
}

int assert_Vp_S_S(struct Vp_S_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7792) err = 2;
  if (lv.v3 != 12301) err = 3;
  return err;
}
struct Vp_S_S ret_Vp_S_S(){
    struct Vp_S_S lv = { .v1 = 0, .v2 = 7792, .v3 = 12301 };
    return lv;
}
int zig_assert_Vp_S_S(struct Vp_S_S);
int send_Vp_S_S(){
    return zig_assert_Vp_S_S(ret_Vp_S_S());
}
struct Vp_S_S zig_ret_Vp_S_S();
int assert_ret_Vp_S_S(){
    return assert_Vp_S_S(zig_ret_Vp_S_S());
}

int assert_Vp_S_Uc(struct Vp_S_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20598) err = 2;
  if (lv.v3 != 41) err = 3;
  return err;
}
struct Vp_S_Uc ret_Vp_S_Uc(){
    struct Vp_S_Uc lv = { .v1 = 0, .v2 = 20598, .v3 = 41 };
    return lv;
}
int zig_assert_Vp_S_Uc(struct Vp_S_Uc);
int send_Vp_S_Uc(){
    return zig_assert_Vp_S_Uc(ret_Vp_S_Uc());
}
struct Vp_S_Uc zig_ret_Vp_S_Uc();
int assert_ret_Vp_S_Uc(){
    return assert_Vp_S_Uc(zig_ret_Vp_S_Uc());
}

int assert_Vp_S_Ui(struct Vp_S_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10315) err = 2;
  if (lv.v3 != 28050) err = 3;
  return err;
}
struct Vp_S_Ui ret_Vp_S_Ui(){
    struct Vp_S_Ui lv = { .v1 = 0, .v2 = 10315, .v3 = 28050 };
    return lv;
}
int zig_assert_Vp_S_Ui(struct Vp_S_Ui);
int send_Vp_S_Ui(){
    return zig_assert_Vp_S_Ui(ret_Vp_S_Ui());
}
struct Vp_S_Ui zig_ret_Vp_S_Ui();
int assert_ret_Vp_S_Ui(){
    return assert_Vp_S_Ui(zig_ret_Vp_S_Ui());
}

int assert_Vp_S_Ul(struct Vp_S_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27563) err = 2;
  if (lv.v3 != 25487) err = 3;
  return err;
}
struct Vp_S_Ul ret_Vp_S_Ul(){
    struct Vp_S_Ul lv = { .v1 = 0, .v2 = 27563, .v3 = 25487 };
    return lv;
}
int zig_assert_Vp_S_Ul(struct Vp_S_Ul);
int send_Vp_S_Ul(){
    return zig_assert_Vp_S_Ul(ret_Vp_S_Ul());
}
struct Vp_S_Ul zig_ret_Vp_S_Ul();
int assert_ret_Vp_S_Ul(){
    return assert_Vp_S_Ul(zig_ret_Vp_S_Ul());
}

int assert_Vp_S_Us(struct Vp_S_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 25333) err = 2;
  if (lv.v3 != 3161) err = 3;
  return err;
}
struct Vp_S_Us ret_Vp_S_Us(){
    struct Vp_S_Us lv = { .v1 = 0, .v2 = 25333, .v3 = 3161 };
    return lv;
}
int zig_assert_Vp_S_Us(struct Vp_S_Us);
int send_Vp_S_Us(){
    return zig_assert_Vp_S_Us(ret_Vp_S_Us());
}
struct Vp_S_Us zig_ret_Vp_S_Us();
int assert_ret_Vp_S_Us(){
    return assert_Vp_S_Us(zig_ret_Vp_S_Us());
}

int assert_Vp_S_Vp(struct Vp_S_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19397) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_S_Vp ret_Vp_S_Vp(){
    struct Vp_S_Vp lv = { .v1 = 0, .v2 = 19397, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_S_Vp(struct Vp_S_Vp);
int send_Vp_S_Vp(){
    return zig_assert_Vp_S_Vp(ret_Vp_S_Vp());
}
struct Vp_S_Vp zig_ret_Vp_S_Vp();
int assert_ret_Vp_S_Vp(){
    return assert_Vp_S_Vp(zig_ret_Vp_S_Vp());
}

int assert_Vp_Uc(struct Vp_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 45) err = 2;
  return err;
}
struct Vp_Uc ret_Vp_Uc(){
    struct Vp_Uc lv = { .v1 = 0, .v2 = 45 };
    return lv;
}
int zig_assert_Vp_Uc(struct Vp_Uc);
int send_Vp_Uc(){
    return zig_assert_Vp_Uc(ret_Vp_Uc());
}
struct Vp_Uc zig_ret_Vp_Uc();
int assert_ret_Vp_Uc(){
    return assert_Vp_Uc(zig_ret_Vp_Uc());
}

int assert_Vp_Uc_C(struct Vp_Uc_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20) err = 2;
  if (lv.v3 != 19) err = 3;
  return err;
}
struct Vp_Uc_C ret_Vp_Uc_C(){
    struct Vp_Uc_C lv = { .v1 = 0, .v2 = 20, .v3 = 19 };
    return lv;
}
int zig_assert_Vp_Uc_C(struct Vp_Uc_C);
int send_Vp_Uc_C(){
    return zig_assert_Vp_Uc_C(ret_Vp_Uc_C());
}
struct Vp_Uc_C zig_ret_Vp_Uc_C();
int assert_ret_Vp_Uc_C(){
    return assert_Vp_Uc_C(zig_ret_Vp_Uc_C());
}

int assert_Vp_Uc_D(struct Vp_Uc_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 50) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Vp_Uc_D ret_Vp_Uc_D(){
    struct Vp_Uc_D lv = { .v1 = 0, .v2 = 50, .v3 = 0.5 };
    return lv;
}
int zig_assert_Vp_Uc_D(struct Vp_Uc_D);
int send_Vp_Uc_D(){
    return zig_assert_Vp_Uc_D(ret_Vp_Uc_D());
}
struct Vp_Uc_D zig_ret_Vp_Uc_D();
int assert_ret_Vp_Uc_D(){
    return assert_Vp_Uc_D(zig_ret_Vp_Uc_D());
}

int assert_Vp_Uc_F(struct Vp_Uc_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 123) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Vp_Uc_F ret_Vp_Uc_F(){
    struct Vp_Uc_F lv = { .v1 = 0, .v2 = 123, .v3 = 0.5 };
    return lv;
}
int zig_assert_Vp_Uc_F(struct Vp_Uc_F);
int send_Vp_Uc_F(){
    return zig_assert_Vp_Uc_F(ret_Vp_Uc_F());
}
struct Vp_Uc_F zig_ret_Vp_Uc_F();
int assert_ret_Vp_Uc_F(){
    return assert_Vp_Uc_F(zig_ret_Vp_Uc_F());
}

int assert_Vp_Uc_I(struct Vp_Uc_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 114) err = 2;
  if (lv.v3 != 26429) err = 3;
  return err;
}
struct Vp_Uc_I ret_Vp_Uc_I(){
    struct Vp_Uc_I lv = { .v1 = 0, .v2 = 114, .v3 = 26429 };
    return lv;
}
int zig_assert_Vp_Uc_I(struct Vp_Uc_I);
int send_Vp_Uc_I(){
    return zig_assert_Vp_Uc_I(ret_Vp_Uc_I());
}
struct Vp_Uc_I zig_ret_Vp_Uc_I();
int assert_ret_Vp_Uc_I(){
    return assert_Vp_Uc_I(zig_ret_Vp_Uc_I());
}

int assert_Vp_Uc_Ip(struct Vp_Uc_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Uc_Ip ret_Vp_Uc_Ip(){
    struct Vp_Uc_Ip lv = { .v1 = 0, .v2 = 27, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Uc_Ip(struct Vp_Uc_Ip);
int send_Vp_Uc_Ip(){
    return zig_assert_Vp_Uc_Ip(ret_Vp_Uc_Ip());
}
struct Vp_Uc_Ip zig_ret_Vp_Uc_Ip();
int assert_ret_Vp_Uc_Ip(){
    return assert_Vp_Uc_Ip(zig_ret_Vp_Uc_Ip());
}

int assert_Vp_Uc_L(struct Vp_Uc_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 122) err = 2;
  if (lv.v3 != 7583) err = 3;
  return err;
}
struct Vp_Uc_L ret_Vp_Uc_L(){
    struct Vp_Uc_L lv = { .v1 = 0, .v2 = 122, .v3 = 7583 };
    return lv;
}
int zig_assert_Vp_Uc_L(struct Vp_Uc_L);
int send_Vp_Uc_L(){
    return zig_assert_Vp_Uc_L(ret_Vp_Uc_L());
}
struct Vp_Uc_L zig_ret_Vp_Uc_L();
int assert_ret_Vp_Uc_L(){
    return assert_Vp_Uc_L(zig_ret_Vp_Uc_L());
}

int assert_Vp_Uc_S(struct Vp_Uc_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 14) err = 2;
  if (lv.v3 != 22906) err = 3;
  return err;
}
struct Vp_Uc_S ret_Vp_Uc_S(){
    struct Vp_Uc_S lv = { .v1 = 0, .v2 = 14, .v3 = 22906 };
    return lv;
}
int zig_assert_Vp_Uc_S(struct Vp_Uc_S);
int send_Vp_Uc_S(){
    return zig_assert_Vp_Uc_S(ret_Vp_Uc_S());
}
struct Vp_Uc_S zig_ret_Vp_Uc_S();
int assert_ret_Vp_Uc_S(){
    return assert_Vp_Uc_S(zig_ret_Vp_Uc_S());
}

int assert_Vp_Uc_Uc(struct Vp_Uc_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 61) err = 2;
  if (lv.v3 != 71) err = 3;
  return err;
}
struct Vp_Uc_Uc ret_Vp_Uc_Uc(){
    struct Vp_Uc_Uc lv = { .v1 = 0, .v2 = 61, .v3 = 71 };
    return lv;
}
int zig_assert_Vp_Uc_Uc(struct Vp_Uc_Uc);
int send_Vp_Uc_Uc(){
    return zig_assert_Vp_Uc_Uc(ret_Vp_Uc_Uc());
}
struct Vp_Uc_Uc zig_ret_Vp_Uc_Uc();
int assert_ret_Vp_Uc_Uc(){
    return assert_Vp_Uc_Uc(zig_ret_Vp_Uc_Uc());
}

int assert_Vp_Uc_Ui(struct Vp_Uc_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 68) err = 2;
  if (lv.v3 != 31148) err = 3;
  return err;
}
struct Vp_Uc_Ui ret_Vp_Uc_Ui(){
    struct Vp_Uc_Ui lv = { .v1 = 0, .v2 = 68, .v3 = 31148 };
    return lv;
}
int zig_assert_Vp_Uc_Ui(struct Vp_Uc_Ui);
int send_Vp_Uc_Ui(){
    return zig_assert_Vp_Uc_Ui(ret_Vp_Uc_Ui());
}
struct Vp_Uc_Ui zig_ret_Vp_Uc_Ui();
int assert_ret_Vp_Uc_Ui(){
    return assert_Vp_Uc_Ui(zig_ret_Vp_Uc_Ui());
}

int assert_Vp_Uc_Ul(struct Vp_Uc_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13) err = 2;
  if (lv.v3 != 6117) err = 3;
  return err;
}
struct Vp_Uc_Ul ret_Vp_Uc_Ul(){
    struct Vp_Uc_Ul lv = { .v1 = 0, .v2 = 13, .v3 = 6117 };
    return lv;
}
int zig_assert_Vp_Uc_Ul(struct Vp_Uc_Ul);
int send_Vp_Uc_Ul(){
    return zig_assert_Vp_Uc_Ul(ret_Vp_Uc_Ul());
}
struct Vp_Uc_Ul zig_ret_Vp_Uc_Ul();
int assert_ret_Vp_Uc_Ul(){
    return assert_Vp_Uc_Ul(zig_ret_Vp_Uc_Ul());
}

int assert_Vp_Uc_Us(struct Vp_Uc_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 38) err = 2;
  if (lv.v3 != 12337) err = 3;
  return err;
}
struct Vp_Uc_Us ret_Vp_Uc_Us(){
    struct Vp_Uc_Us lv = { .v1 = 0, .v2 = 38, .v3 = 12337 };
    return lv;
}
int zig_assert_Vp_Uc_Us(struct Vp_Uc_Us);
int send_Vp_Uc_Us(){
    return zig_assert_Vp_Uc_Us(ret_Vp_Uc_Us());
}
struct Vp_Uc_Us zig_ret_Vp_Uc_Us();
int assert_ret_Vp_Uc_Us(){
    return assert_Vp_Uc_Us(zig_ret_Vp_Uc_Us());
}

int assert_Vp_Uc_Vp(struct Vp_Uc_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 39) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Uc_Vp ret_Vp_Uc_Vp(){
    struct Vp_Uc_Vp lv = { .v1 = 0, .v2 = 39, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Uc_Vp(struct Vp_Uc_Vp);
int send_Vp_Uc_Vp(){
    return zig_assert_Vp_Uc_Vp(ret_Vp_Uc_Vp());
}
struct Vp_Uc_Vp zig_ret_Vp_Uc_Vp();
int assert_ret_Vp_Uc_Vp(){
    return assert_Vp_Uc_Vp(zig_ret_Vp_Uc_Vp());
}

int assert_Vp_Ui(struct Vp_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 819) err = 2;
  return err;
}
struct Vp_Ui ret_Vp_Ui(){
    struct Vp_Ui lv = { .v1 = 0, .v2 = 819 };
    return lv;
}
int zig_assert_Vp_Ui(struct Vp_Ui);
int send_Vp_Ui(){
    return zig_assert_Vp_Ui(ret_Vp_Ui());
}
struct Vp_Ui zig_ret_Vp_Ui();
int assert_ret_Vp_Ui(){
    return assert_Vp_Ui(zig_ret_Vp_Ui());
}

int assert_Vp_Ui_C(struct Vp_Ui_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 14926) err = 2;
  if (lv.v3 != 98) err = 3;
  return err;
}
struct Vp_Ui_C ret_Vp_Ui_C(){
    struct Vp_Ui_C lv = { .v1 = 0, .v2 = 14926, .v3 = 98 };
    return lv;
}
int zig_assert_Vp_Ui_C(struct Vp_Ui_C);
int send_Vp_Ui_C(){
    return zig_assert_Vp_Ui_C(ret_Vp_Ui_C());
}
struct Vp_Ui_C zig_ret_Vp_Ui_C();
int assert_ret_Vp_Ui_C(){
    return assert_Vp_Ui_C(zig_ret_Vp_Ui_C());
}

int assert_Vp_Ui_D(struct Vp_Ui_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13042) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Vp_Ui_D ret_Vp_Ui_D(){
    struct Vp_Ui_D lv = { .v1 = 0, .v2 = 13042, .v3 = -2.125 };
    return lv;
}
int zig_assert_Vp_Ui_D(struct Vp_Ui_D);
int send_Vp_Ui_D(){
    return zig_assert_Vp_Ui_D(ret_Vp_Ui_D());
}
struct Vp_Ui_D zig_ret_Vp_Ui_D();
int assert_ret_Vp_Ui_D(){
    return assert_Vp_Ui_D(zig_ret_Vp_Ui_D());
}

int assert_Vp_Ui_F(struct Vp_Ui_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6209) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Vp_Ui_F ret_Vp_Ui_F(){
    struct Vp_Ui_F lv = { .v1 = 0, .v2 = 6209, .v3 = 0.5 };
    return lv;
}
int zig_assert_Vp_Ui_F(struct Vp_Ui_F);
int send_Vp_Ui_F(){
    return zig_assert_Vp_Ui_F(ret_Vp_Ui_F());
}
struct Vp_Ui_F zig_ret_Vp_Ui_F();
int assert_ret_Vp_Ui_F(){
    return assert_Vp_Ui_F(zig_ret_Vp_Ui_F());
}

int assert_Vp_Ui_I(struct Vp_Ui_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15474) err = 2;
  if (lv.v3 != 15360) err = 3;
  return err;
}
struct Vp_Ui_I ret_Vp_Ui_I(){
    struct Vp_Ui_I lv = { .v1 = 0, .v2 = 15474, .v3 = 15360 };
    return lv;
}
int zig_assert_Vp_Ui_I(struct Vp_Ui_I);
int send_Vp_Ui_I(){
    return zig_assert_Vp_Ui_I(ret_Vp_Ui_I());
}
struct Vp_Ui_I zig_ret_Vp_Ui_I();
int assert_ret_Vp_Ui_I(){
    return assert_Vp_Ui_I(zig_ret_Vp_Ui_I());
}

int assert_Vp_Ui_Ip(struct Vp_Ui_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 14297) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Ui_Ip ret_Vp_Ui_Ip(){
    struct Vp_Ui_Ip lv = { .v1 = 0, .v2 = 14297, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Ui_Ip(struct Vp_Ui_Ip);
int send_Vp_Ui_Ip(){
    return zig_assert_Vp_Ui_Ip(ret_Vp_Ui_Ip());
}
struct Vp_Ui_Ip zig_ret_Vp_Ui_Ip();
int assert_ret_Vp_Ui_Ip(){
    return assert_Vp_Ui_Ip(zig_ret_Vp_Ui_Ip());
}

int assert_Vp_Ui_L(struct Vp_Ui_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 31410) err = 2;
  if (lv.v3 != 14978) err = 3;
  return err;
}
struct Vp_Ui_L ret_Vp_Ui_L(){
    struct Vp_Ui_L lv = { .v1 = 0, .v2 = 31410, .v3 = 14978 };
    return lv;
}
int zig_assert_Vp_Ui_L(struct Vp_Ui_L);
int send_Vp_Ui_L(){
    return zig_assert_Vp_Ui_L(ret_Vp_Ui_L());
}
struct Vp_Ui_L zig_ret_Vp_Ui_L();
int assert_ret_Vp_Ui_L(){
    return assert_Vp_Ui_L(zig_ret_Vp_Ui_L());
}

int assert_Vp_Ui_S(struct Vp_Ui_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1025) err = 2;
  if (lv.v3 != 14170) err = 3;
  return err;
}
struct Vp_Ui_S ret_Vp_Ui_S(){
    struct Vp_Ui_S lv = { .v1 = 0, .v2 = 1025, .v3 = 14170 };
    return lv;
}
int zig_assert_Vp_Ui_S(struct Vp_Ui_S);
int send_Vp_Ui_S(){
    return zig_assert_Vp_Ui_S(ret_Vp_Ui_S());
}
struct Vp_Ui_S zig_ret_Vp_Ui_S();
int assert_ret_Vp_Ui_S(){
    return assert_Vp_Ui_S(zig_ret_Vp_Ui_S());
}

int assert_Vp_Ui_Uc(struct Vp_Ui_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 23983) err = 2;
  if (lv.v3 != 88) err = 3;
  return err;
}
struct Vp_Ui_Uc ret_Vp_Ui_Uc(){
    struct Vp_Ui_Uc lv = { .v1 = 0, .v2 = 23983, .v3 = 88 };
    return lv;
}
int zig_assert_Vp_Ui_Uc(struct Vp_Ui_Uc);
int send_Vp_Ui_Uc(){
    return zig_assert_Vp_Ui_Uc(ret_Vp_Ui_Uc());
}
struct Vp_Ui_Uc zig_ret_Vp_Ui_Uc();
int assert_ret_Vp_Ui_Uc(){
    return assert_Vp_Ui_Uc(zig_ret_Vp_Ui_Uc());
}

int assert_Vp_Ui_Ui(struct Vp_Ui_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 99) err = 2;
  if (lv.v3 != 30755) err = 3;
  return err;
}
struct Vp_Ui_Ui ret_Vp_Ui_Ui(){
    struct Vp_Ui_Ui lv = { .v1 = 0, .v2 = 99, .v3 = 30755 };
    return lv;
}
int zig_assert_Vp_Ui_Ui(struct Vp_Ui_Ui);
int send_Vp_Ui_Ui(){
    return zig_assert_Vp_Ui_Ui(ret_Vp_Ui_Ui());
}
struct Vp_Ui_Ui zig_ret_Vp_Ui_Ui();
int assert_ret_Vp_Ui_Ui(){
    return assert_Vp_Ui_Ui(zig_ret_Vp_Ui_Ui());
}

int assert_Vp_Ui_Ul(struct Vp_Ui_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27055) err = 2;
  if (lv.v3 != 7728) err = 3;
  return err;
}
struct Vp_Ui_Ul ret_Vp_Ui_Ul(){
    struct Vp_Ui_Ul lv = { .v1 = 0, .v2 = 27055, .v3 = 7728 };
    return lv;
}
int zig_assert_Vp_Ui_Ul(struct Vp_Ui_Ul);
int send_Vp_Ui_Ul(){
    return zig_assert_Vp_Ui_Ul(ret_Vp_Ui_Ul());
}
struct Vp_Ui_Ul zig_ret_Vp_Ui_Ul();
int assert_ret_Vp_Ui_Ul(){
    return assert_Vp_Ui_Ul(zig_ret_Vp_Ui_Ul());
}

int assert_Vp_Ui_Us(struct Vp_Ui_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21796) err = 2;
  if (lv.v3 != 9331) err = 3;
  return err;
}
struct Vp_Ui_Us ret_Vp_Ui_Us(){
    struct Vp_Ui_Us lv = { .v1 = 0, .v2 = 21796, .v3 = 9331 };
    return lv;
}
int zig_assert_Vp_Ui_Us(struct Vp_Ui_Us);
int send_Vp_Ui_Us(){
    return zig_assert_Vp_Ui_Us(ret_Vp_Ui_Us());
}
struct Vp_Ui_Us zig_ret_Vp_Ui_Us();
int assert_ret_Vp_Ui_Us(){
    return assert_Vp_Ui_Us(zig_ret_Vp_Ui_Us());
}

int assert_Vp_Ui_Vp(struct Vp_Ui_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4692) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Ui_Vp ret_Vp_Ui_Vp(){
    struct Vp_Ui_Vp lv = { .v1 = 0, .v2 = 4692, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Ui_Vp(struct Vp_Ui_Vp);
int send_Vp_Ui_Vp(){
    return zig_assert_Vp_Ui_Vp(ret_Vp_Ui_Vp());
}
struct Vp_Ui_Vp zig_ret_Vp_Ui_Vp();
int assert_ret_Vp_Ui_Vp(){
    return assert_Vp_Ui_Vp(zig_ret_Vp_Ui_Vp());
}

int assert_Vp_Ul(struct Vp_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 5486) err = 2;
  return err;
}
struct Vp_Ul ret_Vp_Ul(){
    struct Vp_Ul lv = { .v1 = 0, .v2 = 5486 };
    return lv;
}
int zig_assert_Vp_Ul(struct Vp_Ul);
int send_Vp_Ul(){
    return zig_assert_Vp_Ul(ret_Vp_Ul());
}
struct Vp_Ul zig_ret_Vp_Ul();
int assert_ret_Vp_Ul(){
    return assert_Vp_Ul(zig_ret_Vp_Ul());
}

int assert_Vp_Ul_C(struct Vp_Ul_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20933) err = 2;
  if (lv.v3 != 118) err = 3;
  return err;
}
struct Vp_Ul_C ret_Vp_Ul_C(){
    struct Vp_Ul_C lv = { .v1 = 0, .v2 = 20933, .v3 = 118 };
    return lv;
}
int zig_assert_Vp_Ul_C(struct Vp_Ul_C);
int send_Vp_Ul_C(){
    return zig_assert_Vp_Ul_C(ret_Vp_Ul_C());
}
struct Vp_Ul_C zig_ret_Vp_Ul_C();
int assert_ret_Vp_Ul_C(){
    return assert_Vp_Ul_C(zig_ret_Vp_Ul_C());
}

int assert_Vp_Ul_D(struct Vp_Ul_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27275) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Vp_Ul_D ret_Vp_Ul_D(){
    struct Vp_Ul_D lv = { .v1 = 0, .v2 = 27275, .v3 = 4.5 };
    return lv;
}
int zig_assert_Vp_Ul_D(struct Vp_Ul_D);
int send_Vp_Ul_D(){
    return zig_assert_Vp_Ul_D(ret_Vp_Ul_D());
}
struct Vp_Ul_D zig_ret_Vp_Ul_D();
int assert_ret_Vp_Ul_D(){
    return assert_Vp_Ul_D(zig_ret_Vp_Ul_D());
}

int assert_Vp_Ul_F(struct Vp_Ul_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19348) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Vp_Ul_F ret_Vp_Ul_F(){
    struct Vp_Ul_F lv = { .v1 = 0, .v2 = 19348, .v3 = 4.5 };
    return lv;
}
int zig_assert_Vp_Ul_F(struct Vp_Ul_F);
int send_Vp_Ul_F(){
    return zig_assert_Vp_Ul_F(ret_Vp_Ul_F());
}
struct Vp_Ul_F zig_ret_Vp_Ul_F();
int assert_ret_Vp_Ul_F(){
    return assert_Vp_Ul_F(zig_ret_Vp_Ul_F());
}

int assert_Vp_Ul_I(struct Vp_Ul_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6586) err = 2;
  if (lv.v3 != 1397) err = 3;
  return err;
}
struct Vp_Ul_I ret_Vp_Ul_I(){
    struct Vp_Ul_I lv = { .v1 = 0, .v2 = 6586, .v3 = 1397 };
    return lv;
}
int zig_assert_Vp_Ul_I(struct Vp_Ul_I);
int send_Vp_Ul_I(){
    return zig_assert_Vp_Ul_I(ret_Vp_Ul_I());
}
struct Vp_Ul_I zig_ret_Vp_Ul_I();
int assert_ret_Vp_Ul_I(){
    return assert_Vp_Ul_I(zig_ret_Vp_Ul_I());
}

int assert_Vp_Ul_Ip(struct Vp_Ul_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 3915) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Ul_Ip ret_Vp_Ul_Ip(){
    struct Vp_Ul_Ip lv = { .v1 = 0, .v2 = 3915, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Ul_Ip(struct Vp_Ul_Ip);
int send_Vp_Ul_Ip(){
    return zig_assert_Vp_Ul_Ip(ret_Vp_Ul_Ip());
}
struct Vp_Ul_Ip zig_ret_Vp_Ul_Ip();
int assert_ret_Vp_Ul_Ip(){
    return assert_Vp_Ul_Ip(zig_ret_Vp_Ul_Ip());
}

int assert_Vp_Ul_L(struct Vp_Ul_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 2122) err = 2;
  if (lv.v3 != 2907) err = 3;
  return err;
}
struct Vp_Ul_L ret_Vp_Ul_L(){
    struct Vp_Ul_L lv = { .v1 = 0, .v2 = 2122, .v3 = 2907 };
    return lv;
}
int zig_assert_Vp_Ul_L(struct Vp_Ul_L);
int send_Vp_Ul_L(){
    return zig_assert_Vp_Ul_L(ret_Vp_Ul_L());
}
struct Vp_Ul_L zig_ret_Vp_Ul_L();
int assert_ret_Vp_Ul_L(){
    return assert_Vp_Ul_L(zig_ret_Vp_Ul_L());
}

int assert_Vp_Ul_S(struct Vp_Ul_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26049) err = 2;
  if (lv.v3 != 9797) err = 3;
  return err;
}
struct Vp_Ul_S ret_Vp_Ul_S(){
    struct Vp_Ul_S lv = { .v1 = 0, .v2 = 26049, .v3 = 9797 };
    return lv;
}
int zig_assert_Vp_Ul_S(struct Vp_Ul_S);
int send_Vp_Ul_S(){
    return zig_assert_Vp_Ul_S(ret_Vp_Ul_S());
}
struct Vp_Ul_S zig_ret_Vp_Ul_S();
int assert_ret_Vp_Ul_S(){
    return assert_Vp_Ul_S(zig_ret_Vp_Ul_S());
}

int assert_Vp_Ul_Uc(struct Vp_Ul_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20602) err = 2;
  if (lv.v3 != 11) err = 3;
  return err;
}
struct Vp_Ul_Uc ret_Vp_Ul_Uc(){
    struct Vp_Ul_Uc lv = { .v1 = 0, .v2 = 20602, .v3 = 11 };
    return lv;
}
int zig_assert_Vp_Ul_Uc(struct Vp_Ul_Uc);
int send_Vp_Ul_Uc(){
    return zig_assert_Vp_Ul_Uc(ret_Vp_Ul_Uc());
}
struct Vp_Ul_Uc zig_ret_Vp_Ul_Uc();
int assert_ret_Vp_Ul_Uc(){
    return assert_Vp_Ul_Uc(zig_ret_Vp_Ul_Uc());
}

int assert_Vp_Ul_Ui(struct Vp_Ul_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4547) err = 2;
  if (lv.v3 != 23948) err = 3;
  return err;
}
struct Vp_Ul_Ui ret_Vp_Ul_Ui(){
    struct Vp_Ul_Ui lv = { .v1 = 0, .v2 = 4547, .v3 = 23948 };
    return lv;
}
int zig_assert_Vp_Ul_Ui(struct Vp_Ul_Ui);
int send_Vp_Ul_Ui(){
    return zig_assert_Vp_Ul_Ui(ret_Vp_Ul_Ui());
}
struct Vp_Ul_Ui zig_ret_Vp_Ul_Ui();
int assert_ret_Vp_Ul_Ui(){
    return assert_Vp_Ul_Ui(zig_ret_Vp_Ul_Ui());
}

int assert_Vp_Ul_Ul(struct Vp_Ul_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 17343) err = 2;
  if (lv.v3 != 2118) err = 3;
  return err;
}
struct Vp_Ul_Ul ret_Vp_Ul_Ul(){
    struct Vp_Ul_Ul lv = { .v1 = 0, .v2 = 17343, .v3 = 2118 };
    return lv;
}
int zig_assert_Vp_Ul_Ul(struct Vp_Ul_Ul);
int send_Vp_Ul_Ul(){
    return zig_assert_Vp_Ul_Ul(ret_Vp_Ul_Ul());
}
struct Vp_Ul_Ul zig_ret_Vp_Ul_Ul();
int assert_ret_Vp_Ul_Ul(){
    return assert_Vp_Ul_Ul(zig_ret_Vp_Ul_Ul());
}

int assert_Vp_Ul_Us(struct Vp_Ul_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20439) err = 2;
  if (lv.v3 != 3748) err = 3;
  return err;
}
struct Vp_Ul_Us ret_Vp_Ul_Us(){
    struct Vp_Ul_Us lv = { .v1 = 0, .v2 = 20439, .v3 = 3748 };
    return lv;
}
int zig_assert_Vp_Ul_Us(struct Vp_Ul_Us);
int send_Vp_Ul_Us(){
    return zig_assert_Vp_Ul_Us(ret_Vp_Ul_Us());
}
struct Vp_Ul_Us zig_ret_Vp_Ul_Us();
int assert_ret_Vp_Ul_Us(){
    return assert_Vp_Ul_Us(zig_ret_Vp_Ul_Us());
}

int assert_Vp_Ul_Vp(struct Vp_Ul_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 29974) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Ul_Vp ret_Vp_Ul_Vp(){
    struct Vp_Ul_Vp lv = { .v1 = 0, .v2 = 29974, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Ul_Vp(struct Vp_Ul_Vp);
int send_Vp_Ul_Vp(){
    return zig_assert_Vp_Ul_Vp(ret_Vp_Ul_Vp());
}
struct Vp_Ul_Vp zig_ret_Vp_Ul_Vp();
int assert_ret_Vp_Ul_Vp(){
    return assert_Vp_Ul_Vp(zig_ret_Vp_Ul_Vp());
}

int assert_Vp_Us(struct Vp_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4604) err = 2;
  return err;
}
struct Vp_Us ret_Vp_Us(){
    struct Vp_Us lv = { .v1 = 0, .v2 = 4604 };
    return lv;
}
int zig_assert_Vp_Us(struct Vp_Us);
int send_Vp_Us(){
    return zig_assert_Vp_Us(ret_Vp_Us());
}
struct Vp_Us zig_ret_Vp_Us();
int assert_ret_Vp_Us(){
    return assert_Vp_Us(zig_ret_Vp_Us());
}

int assert_Vp_Us_C(struct Vp_Us_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27414) err = 2;
  if (lv.v3 != 69) err = 3;
  return err;
}
struct Vp_Us_C ret_Vp_Us_C(){
    struct Vp_Us_C lv = { .v1 = 0, .v2 = 27414, .v3 = 69 };
    return lv;
}
int zig_assert_Vp_Us_C(struct Vp_Us_C);
int send_Vp_Us_C(){
    return zig_assert_Vp_Us_C(ret_Vp_Us_C());
}
struct Vp_Us_C zig_ret_Vp_Us_C();
int assert_ret_Vp_Us_C(){
    return assert_Vp_Us_C(zig_ret_Vp_Us_C());
}

int assert_Vp_Us_D(struct Vp_Us_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1973) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Vp_Us_D ret_Vp_Us_D(){
    struct Vp_Us_D lv = { .v1 = 0, .v2 = 1973, .v3 = 1.0 };
    return lv;
}
int zig_assert_Vp_Us_D(struct Vp_Us_D);
int send_Vp_Us_D(){
    return zig_assert_Vp_Us_D(ret_Vp_Us_D());
}
struct Vp_Us_D zig_ret_Vp_Us_D();
int assert_ret_Vp_Us_D(){
    return assert_Vp_Us_D(zig_ret_Vp_Us_D());
}

int assert_Vp_Us_F(struct Vp_Us_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13536) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Vp_Us_F ret_Vp_Us_F(){
    struct Vp_Us_F lv = { .v1 = 0, .v2 = 13536, .v3 = 4.5 };
    return lv;
}
int zig_assert_Vp_Us_F(struct Vp_Us_F);
int send_Vp_Us_F(){
    return zig_assert_Vp_Us_F(ret_Vp_Us_F());
}
struct Vp_Us_F zig_ret_Vp_Us_F();
int assert_ret_Vp_Us_F(){
    return assert_Vp_Us_F(zig_ret_Vp_Us_F());
}

int assert_Vp_Us_I(struct Vp_Us_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19941) err = 2;
  if (lv.v3 != 20835) err = 3;
  return err;
}
struct Vp_Us_I ret_Vp_Us_I(){
    struct Vp_Us_I lv = { .v1 = 0, .v2 = 19941, .v3 = 20835 };
    return lv;
}
int zig_assert_Vp_Us_I(struct Vp_Us_I);
int send_Vp_Us_I(){
    return zig_assert_Vp_Us_I(ret_Vp_Us_I());
}
struct Vp_Us_I zig_ret_Vp_Us_I();
int assert_ret_Vp_Us_I(){
    return assert_Vp_Us_I(zig_ret_Vp_Us_I());
}

int assert_Vp_Us_Ip(struct Vp_Us_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21849) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Us_Ip ret_Vp_Us_Ip(){
    struct Vp_Us_Ip lv = { .v1 = 0, .v2 = 21849, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Us_Ip(struct Vp_Us_Ip);
int send_Vp_Us_Ip(){
    return zig_assert_Vp_Us_Ip(ret_Vp_Us_Ip());
}
struct Vp_Us_Ip zig_ret_Vp_Us_Ip();
int assert_ret_Vp_Us_Ip(){
    return assert_Vp_Us_Ip(zig_ret_Vp_Us_Ip());
}

int assert_Vp_Us_L(struct Vp_Us_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1972) err = 2;
  if (lv.v3 != 3231) err = 3;
  return err;
}
struct Vp_Us_L ret_Vp_Us_L(){
    struct Vp_Us_L lv = { .v1 = 0, .v2 = 1972, .v3 = 3231 };
    return lv;
}
int zig_assert_Vp_Us_L(struct Vp_Us_L);
int send_Vp_Us_L(){
    return zig_assert_Vp_Us_L(ret_Vp_Us_L());
}
struct Vp_Us_L zig_ret_Vp_Us_L();
int assert_ret_Vp_Us_L(){
    return assert_Vp_Us_L(zig_ret_Vp_Us_L());
}

int assert_Vp_Us_S(struct Vp_Us_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 686) err = 2;
  if (lv.v3 != 31896) err = 3;
  return err;
}
struct Vp_Us_S ret_Vp_Us_S(){
    struct Vp_Us_S lv = { .v1 = 0, .v2 = 686, .v3 = 31896 };
    return lv;
}
int zig_assert_Vp_Us_S(struct Vp_Us_S);
int send_Vp_Us_S(){
    return zig_assert_Vp_Us_S(ret_Vp_Us_S());
}
struct Vp_Us_S zig_ret_Vp_Us_S();
int assert_ret_Vp_Us_S(){
    return assert_Vp_Us_S(zig_ret_Vp_Us_S());
}

int assert_Vp_Us_Uc(struct Vp_Us_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 22668) err = 2;
  if (lv.v3 != 101) err = 3;
  return err;
}
struct Vp_Us_Uc ret_Vp_Us_Uc(){
    struct Vp_Us_Uc lv = { .v1 = 0, .v2 = 22668, .v3 = 101 };
    return lv;
}
int zig_assert_Vp_Us_Uc(struct Vp_Us_Uc);
int send_Vp_Us_Uc(){
    return zig_assert_Vp_Us_Uc(ret_Vp_Us_Uc());
}
struct Vp_Us_Uc zig_ret_Vp_Us_Uc();
int assert_ret_Vp_Us_Uc(){
    return assert_Vp_Us_Uc(zig_ret_Vp_Us_Uc());
}

int assert_Vp_Us_Ui(struct Vp_Us_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15892) err = 2;
  if (lv.v3 != 7824) err = 3;
  return err;
}
struct Vp_Us_Ui ret_Vp_Us_Ui(){
    struct Vp_Us_Ui lv = { .v1 = 0, .v2 = 15892, .v3 = 7824 };
    return lv;
}
int zig_assert_Vp_Us_Ui(struct Vp_Us_Ui);
int send_Vp_Us_Ui(){
    return zig_assert_Vp_Us_Ui(ret_Vp_Us_Ui());
}
struct Vp_Us_Ui zig_ret_Vp_Us_Ui();
int assert_ret_Vp_Us_Ui(){
    return assert_Vp_Us_Ui(zig_ret_Vp_Us_Ui());
}

int assert_Vp_Us_Ul(struct Vp_Us_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 31019) err = 2;
  if (lv.v3 != 32184) err = 3;
  return err;
}
struct Vp_Us_Ul ret_Vp_Us_Ul(){
    struct Vp_Us_Ul lv = { .v1 = 0, .v2 = 31019, .v3 = 32184 };
    return lv;
}
int zig_assert_Vp_Us_Ul(struct Vp_Us_Ul);
int send_Vp_Us_Ul(){
    return zig_assert_Vp_Us_Ul(ret_Vp_Us_Ul());
}
struct Vp_Us_Ul zig_ret_Vp_Us_Ul();
int assert_ret_Vp_Us_Ul(){
    return assert_Vp_Us_Ul(zig_ret_Vp_Us_Ul());
}

int assert_Vp_Us_Us(struct Vp_Us_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21460) err = 2;
  if (lv.v3 != 26681) err = 3;
  return err;
}
struct Vp_Us_Us ret_Vp_Us_Us(){
    struct Vp_Us_Us lv = { .v1 = 0, .v2 = 21460, .v3 = 26681 };
    return lv;
}
int zig_assert_Vp_Us_Us(struct Vp_Us_Us);
int send_Vp_Us_Us(){
    return zig_assert_Vp_Us_Us(ret_Vp_Us_Us());
}
struct Vp_Us_Us zig_ret_Vp_Us_Us();
int assert_ret_Vp_Us_Us(){
    return assert_Vp_Us_Us(zig_ret_Vp_Us_Us());
}

int assert_Vp_Us_Vp(struct Vp_Us_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 30188) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Us_Vp ret_Vp_Us_Vp(){
    struct Vp_Us_Vp lv = { .v1 = 0, .v2 = 30188, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Us_Vp(struct Vp_Us_Vp);
int send_Vp_Us_Vp(){
    return zig_assert_Vp_Us_Vp(ret_Vp_Us_Vp());
}
struct Vp_Us_Vp zig_ret_Vp_Us_Vp();
int assert_ret_Vp_Us_Vp(){
    return assert_Vp_Us_Vp(zig_ret_Vp_Us_Vp());
}

int assert_Vp_Vp(struct Vp_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Vp_Vp ret_Vp_Vp(){
    struct Vp_Vp lv = { .v1 = 0, .v2 = 0 };
    return lv;
}
int zig_assert_Vp_Vp(struct Vp_Vp);
int send_Vp_Vp(){
    return zig_assert_Vp_Vp(ret_Vp_Vp());
}
struct Vp_Vp zig_ret_Vp_Vp();
int assert_ret_Vp_Vp(){
    return assert_Vp_Vp(zig_ret_Vp_Vp());
}

int assert_Vp_Vp_C(struct Vp_Vp_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 106) err = 3;
  return err;
}
struct Vp_Vp_C ret_Vp_Vp_C(){
    struct Vp_Vp_C lv = { .v1 = 0, .v2 = 0, .v3 = 106 };
    return lv;
}
int zig_assert_Vp_Vp_C(struct Vp_Vp_C);
int send_Vp_Vp_C(){
    return zig_assert_Vp_Vp_C(ret_Vp_Vp_C());
}
struct Vp_Vp_C zig_ret_Vp_Vp_C();
int assert_ret_Vp_Vp_C(){
    return assert_Vp_Vp_C(zig_ret_Vp_Vp_C());
}

int assert_Vp_Vp_D(struct Vp_Vp_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Vp_Vp_D ret_Vp_Vp_D(){
    struct Vp_Vp_D lv = { .v1 = 0, .v2 = 0, .v3 = -0.25 };
    return lv;
}
int zig_assert_Vp_Vp_D(struct Vp_Vp_D);
int send_Vp_Vp_D(){
    return zig_assert_Vp_Vp_D(ret_Vp_Vp_D());
}
struct Vp_Vp_D zig_ret_Vp_Vp_D();
int assert_ret_Vp_Vp_D(){
    return assert_Vp_Vp_D(zig_ret_Vp_Vp_D());
}

int assert_Vp_Vp_F(struct Vp_Vp_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Vp_Vp_F ret_Vp_Vp_F(){
    struct Vp_Vp_F lv = { .v1 = 0, .v2 = 0, .v3 = 0.5 };
    return lv;
}
int zig_assert_Vp_Vp_F(struct Vp_Vp_F);
int send_Vp_Vp_F(){
    return zig_assert_Vp_Vp_F(ret_Vp_Vp_F());
}
struct Vp_Vp_F zig_ret_Vp_Vp_F();
int assert_ret_Vp_Vp_F(){
    return assert_Vp_Vp_F(zig_ret_Vp_Vp_F());
}

int assert_Vp_Vp_I(struct Vp_Vp_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 18595) err = 3;
  return err;
}
struct Vp_Vp_I ret_Vp_Vp_I(){
    struct Vp_Vp_I lv = { .v1 = 0, .v2 = 0, .v3 = 18595 };
    return lv;
}
int zig_assert_Vp_Vp_I(struct Vp_Vp_I);
int send_Vp_Vp_I(){
    return zig_assert_Vp_Vp_I(ret_Vp_Vp_I());
}
struct Vp_Vp_I zig_ret_Vp_Vp_I();
int assert_ret_Vp_Vp_I(){
    return assert_Vp_Vp_I(zig_ret_Vp_Vp_I());
}

int assert_Vp_Vp_Ip(struct Vp_Vp_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Vp_Ip ret_Vp_Vp_Ip(){
    struct Vp_Vp_Ip lv = { .v1 = 0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Vp_Ip(struct Vp_Vp_Ip);
int send_Vp_Vp_Ip(){
    return zig_assert_Vp_Vp_Ip(ret_Vp_Vp_Ip());
}
struct Vp_Vp_Ip zig_ret_Vp_Vp_Ip();
int assert_ret_Vp_Vp_Ip(){
    return assert_Vp_Vp_Ip(zig_ret_Vp_Vp_Ip());
}

int assert_Vp_Vp_L(struct Vp_Vp_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 7966) err = 3;
  return err;
}
struct Vp_Vp_L ret_Vp_Vp_L(){
    struct Vp_Vp_L lv = { .v1 = 0, .v2 = 0, .v3 = 7966 };
    return lv;
}
int zig_assert_Vp_Vp_L(struct Vp_Vp_L);
int send_Vp_Vp_L(){
    return zig_assert_Vp_Vp_L(ret_Vp_Vp_L());
}
struct Vp_Vp_L zig_ret_Vp_Vp_L();
int assert_ret_Vp_Vp_L(){
    return assert_Vp_Vp_L(zig_ret_Vp_Vp_L());
}

int assert_Vp_Vp_S(struct Vp_Vp_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 15595) err = 3;
  return err;
}
struct Vp_Vp_S ret_Vp_Vp_S(){
    struct Vp_Vp_S lv = { .v1 = 0, .v2 = 0, .v3 = 15595 };
    return lv;
}
int zig_assert_Vp_Vp_S(struct Vp_Vp_S);
int send_Vp_Vp_S(){
    return zig_assert_Vp_Vp_S(ret_Vp_Vp_S());
}
struct Vp_Vp_S zig_ret_Vp_Vp_S();
int assert_ret_Vp_Vp_S(){
    return assert_Vp_Vp_S(zig_ret_Vp_Vp_S());
}

int assert_Vp_Vp_Uc(struct Vp_Vp_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 17) err = 3;
  return err;
}
struct Vp_Vp_Uc ret_Vp_Vp_Uc(){
    struct Vp_Vp_Uc lv = { .v1 = 0, .v2 = 0, .v3 = 17 };
    return lv;
}
int zig_assert_Vp_Vp_Uc(struct Vp_Vp_Uc);
int send_Vp_Vp_Uc(){
    return zig_assert_Vp_Vp_Uc(ret_Vp_Vp_Uc());
}
struct Vp_Vp_Uc zig_ret_Vp_Vp_Uc();
int assert_ret_Vp_Vp_Uc(){
    return assert_Vp_Vp_Uc(zig_ret_Vp_Vp_Uc());
}

int assert_Vp_Vp_Ui(struct Vp_Vp_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 12780) err = 3;
  return err;
}
struct Vp_Vp_Ui ret_Vp_Vp_Ui(){
    struct Vp_Vp_Ui lv = { .v1 = 0, .v2 = 0, .v3 = 12780 };
    return lv;
}
int zig_assert_Vp_Vp_Ui(struct Vp_Vp_Ui);
int send_Vp_Vp_Ui(){
    return zig_assert_Vp_Vp_Ui(ret_Vp_Vp_Ui());
}
struct Vp_Vp_Ui zig_ret_Vp_Vp_Ui();
int assert_ret_Vp_Vp_Ui(){
    return assert_Vp_Vp_Ui(zig_ret_Vp_Vp_Ui());
}

int assert_Vp_Vp_Ul(struct Vp_Vp_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 12179) err = 3;
  return err;
}
struct Vp_Vp_Ul ret_Vp_Vp_Ul(){
    struct Vp_Vp_Ul lv = { .v1 = 0, .v2 = 0, .v3 = 12179 };
    return lv;
}
int zig_assert_Vp_Vp_Ul(struct Vp_Vp_Ul);
int send_Vp_Vp_Ul(){
    return zig_assert_Vp_Vp_Ul(ret_Vp_Vp_Ul());
}
struct Vp_Vp_Ul zig_ret_Vp_Vp_Ul();
int assert_ret_Vp_Vp_Ul(){
    return assert_Vp_Vp_Ul(zig_ret_Vp_Vp_Ul());
}

int assert_Vp_Vp_Us(struct Vp_Vp_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 11303) err = 3;
  return err;
}
struct Vp_Vp_Us ret_Vp_Vp_Us(){
    struct Vp_Vp_Us lv = { .v1 = 0, .v2 = 0, .v3 = 11303 };
    return lv;
}
int zig_assert_Vp_Vp_Us(struct Vp_Vp_Us);
int send_Vp_Vp_Us(){
    return zig_assert_Vp_Vp_Us(ret_Vp_Vp_Us());
}
struct Vp_Vp_Us zig_ret_Vp_Vp_Us();
int assert_ret_Vp_Vp_Us(){
    return assert_Vp_Vp_Us(zig_ret_Vp_Vp_Us());
}

int assert_Vp_Vp_Vp(struct Vp_Vp_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Vp_Vp ret_Vp_Vp_Vp(){
    struct Vp_Vp_Vp lv = { .v1 = 0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Vp_Vp(struct Vp_Vp_Vp);
int send_Vp_Vp_Vp(){
    return zig_assert_Vp_Vp_Vp(ret_Vp_Vp_Vp());
}
struct Vp_Vp_Vp zig_ret_Vp_Vp_Vp();
int assert_ret_Vp_Vp_Vp(){
    return assert_Vp_Vp_Vp(zig_ret_Vp_Vp_Vp());
}

