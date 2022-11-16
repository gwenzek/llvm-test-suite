#include "T_Snnn_xax.h"

int assert_F_C(struct F_C lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 105) err = 2;
  return err;
}
struct F_C ret_F_C(){
    struct F_C lv = { .v1 = 0.5, .v2 = 105 };
    return lv;
}
int zig_assert_F_C(struct F_C);
int send_F_C(){
    return zig_assert_F_C(ret_F_C());
}
struct F_C zig_ret_F_C();
int assert_ret_F_C(){
    return assert_F_C(zig_ret_F_C());
}

int assert_F_C_C(struct F_C_C lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 111) err = 2;
  if (lv.v3 != 18) err = 3;
  return err;
}
struct F_C_C ret_F_C_C(){
    struct F_C_C lv = { .v1 = -2.125, .v2 = 111, .v3 = 18 };
    return lv;
}
int zig_assert_F_C_C(struct F_C_C);
int send_F_C_C(){
    return zig_assert_F_C_C(ret_F_C_C());
}
struct F_C_C zig_ret_F_C_C();
int assert_ret_F_C_C(){
    return assert_F_C_C(zig_ret_F_C_C());
}

int assert_F_C_D(struct F_C_D lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 57) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct F_C_D ret_F_C_D(){
    struct F_C_D lv = { .v1 = 0.5, .v2 = 57, .v3 = 0.5 };
    return lv;
}
int zig_assert_F_C_D(struct F_C_D);
int send_F_C_D(){
    return zig_assert_F_C_D(ret_F_C_D());
}
struct F_C_D zig_ret_F_C_D();
int assert_ret_F_C_D(){
    return assert_F_C_D(zig_ret_F_C_D());
}

int assert_F_C_F(struct F_C_F lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 101) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct F_C_F ret_F_C_F(){
    struct F_C_F lv = { .v1 = 1.0, .v2 = 101, .v3 = 1.0 };
    return lv;
}
int zig_assert_F_C_F(struct F_C_F);
int send_F_C_F(){
    return zig_assert_F_C_F(ret_F_C_F());
}
struct F_C_F zig_ret_F_C_F();
int assert_ret_F_C_F(){
    return assert_F_C_F(zig_ret_F_C_F());
}

int assert_F_C_I(struct F_C_I lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 112) err = 2;
  if (lv.v3 != 2332) err = 3;
  return err;
}
struct F_C_I ret_F_C_I(){
    struct F_C_I lv = { .v1 = 1.0, .v2 = 112, .v3 = 2332 };
    return lv;
}
int zig_assert_F_C_I(struct F_C_I);
int send_F_C_I(){
    return zig_assert_F_C_I(ret_F_C_I());
}
struct F_C_I zig_ret_F_C_I();
int assert_ret_F_C_I(){
    return assert_F_C_I(zig_ret_F_C_I());
}

int assert_F_C_Ip(struct F_C_Ip lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 70) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_C_Ip ret_F_C_Ip(){
    struct F_C_Ip lv = { .v1 = -0.25, .v2 = 70, .v3 = 0 };
    return lv;
}
int zig_assert_F_C_Ip(struct F_C_Ip);
int send_F_C_Ip(){
    return zig_assert_F_C_Ip(ret_F_C_Ip());
}
struct F_C_Ip zig_ret_F_C_Ip();
int assert_ret_F_C_Ip(){
    return assert_F_C_Ip(zig_ret_F_C_Ip());
}

int assert_F_C_L(struct F_C_L lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 121) err = 2;
  if (lv.v3 != 18229) err = 3;
  return err;
}
struct F_C_L ret_F_C_L(){
    struct F_C_L lv = { .v1 = 0.875, .v2 = 121, .v3 = 18229 };
    return lv;
}
int zig_assert_F_C_L(struct F_C_L);
int send_F_C_L(){
    return zig_assert_F_C_L(ret_F_C_L());
}
struct F_C_L zig_ret_F_C_L();
int assert_ret_F_C_L(){
    return assert_F_C_L(zig_ret_F_C_L());
}

int assert_F_C_S(struct F_C_S lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 31) err = 2;
  if (lv.v3 != 31175) err = 3;
  return err;
}
struct F_C_S ret_F_C_S(){
    struct F_C_S lv = { .v1 = 0.875, .v2 = 31, .v3 = 31175 };
    return lv;
}
int zig_assert_F_C_S(struct F_C_S);
int send_F_C_S(){
    return zig_assert_F_C_S(ret_F_C_S());
}
struct F_C_S zig_ret_F_C_S();
int assert_ret_F_C_S(){
    return assert_F_C_S(zig_ret_F_C_S());
}

int assert_F_C_Uc(struct F_C_Uc lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 69) err = 2;
  if (lv.v3 != 62) err = 3;
  return err;
}
struct F_C_Uc ret_F_C_Uc(){
    struct F_C_Uc lv = { .v1 = 1.0, .v2 = 69, .v3 = 62 };
    return lv;
}
int zig_assert_F_C_Uc(struct F_C_Uc);
int send_F_C_Uc(){
    return zig_assert_F_C_Uc(ret_F_C_Uc());
}
struct F_C_Uc zig_ret_F_C_Uc();
int assert_ret_F_C_Uc(){
    return assert_F_C_Uc(zig_ret_F_C_Uc());
}

int assert_F_C_Ui(struct F_C_Ui lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 36) err = 2;
  if (lv.v3 != 24845) err = 3;
  return err;
}
struct F_C_Ui ret_F_C_Ui(){
    struct F_C_Ui lv = { .v1 = 7.0, .v2 = 36, .v3 = 24845 };
    return lv;
}
int zig_assert_F_C_Ui(struct F_C_Ui);
int send_F_C_Ui(){
    return zig_assert_F_C_Ui(ret_F_C_Ui());
}
struct F_C_Ui zig_ret_F_C_Ui();
int assert_ret_F_C_Ui(){
    return assert_F_C_Ui(zig_ret_F_C_Ui());
}

int assert_F_C_Ul(struct F_C_Ul lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 124) err = 2;
  if (lv.v3 != 11914) err = 3;
  return err;
}
struct F_C_Ul ret_F_C_Ul(){
    struct F_C_Ul lv = { .v1 = 7.0, .v2 = 124, .v3 = 11914 };
    return lv;
}
int zig_assert_F_C_Ul(struct F_C_Ul);
int send_F_C_Ul(){
    return zig_assert_F_C_Ul(ret_F_C_Ul());
}
struct F_C_Ul zig_ret_F_C_Ul();
int assert_ret_F_C_Ul(){
    return assert_F_C_Ul(zig_ret_F_C_Ul());
}

int assert_F_C_Us(struct F_C_Us lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 81) err = 2;
  if (lv.v3 != 25724) err = 3;
  return err;
}
struct F_C_Us ret_F_C_Us(){
    struct F_C_Us lv = { .v1 = -2.125, .v2 = 81, .v3 = 25724 };
    return lv;
}
int zig_assert_F_C_Us(struct F_C_Us);
int send_F_C_Us(){
    return zig_assert_F_C_Us(ret_F_C_Us());
}
struct F_C_Us zig_ret_F_C_Us();
int assert_ret_F_C_Us(){
    return assert_F_C_Us(zig_ret_F_C_Us());
}

int assert_F_C_Vp(struct F_C_Vp lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 52) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_C_Vp ret_F_C_Vp(){
    struct F_C_Vp lv = { .v1 = 0.875, .v2 = 52, .v3 = 0 };
    return lv;
}
int zig_assert_F_C_Vp(struct F_C_Vp);
int send_F_C_Vp(){
    return zig_assert_F_C_Vp(ret_F_C_Vp());
}
struct F_C_Vp zig_ret_F_C_Vp();
int assert_ret_F_C_Vp(){
    return assert_F_C_Vp(zig_ret_F_C_Vp());
}

int assert_F_D(struct F_D lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 4.5) err = 2;
  return err;
}
struct F_D ret_F_D(){
    struct F_D lv = { .v1 = 0.875, .v2 = 4.5 };
    return lv;
}
int zig_assert_F_D(struct F_D);
int send_F_D(){
    return zig_assert_F_D(ret_F_D());
}
struct F_D zig_ret_F_D();
int assert_ret_F_D(){
    return assert_F_D(zig_ret_F_D());
}

int assert_F_D_C(struct F_D_C lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 36) err = 3;
  return err;
}
struct F_D_C ret_F_D_C(){
    struct F_D_C lv = { .v1 = -2.125, .v2 = 0.5, .v3 = 36 };
    return lv;
}
int zig_assert_F_D_C(struct F_D_C);
int send_F_D_C(){
    return zig_assert_F_D_C(ret_F_D_C());
}
struct F_D_C zig_ret_F_D_C();
int assert_ret_F_D_C(){
    return assert_F_D_C(zig_ret_F_D_C());
}

int assert_F_D_D(struct F_D_D lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct F_D_D ret_F_D_D(){
    struct F_D_D lv = { .v1 = 1.0, .v2 = -0.25, .v3 = -2.125 };
    return lv;
}
int zig_assert_F_D_D(struct F_D_D);
int send_F_D_D(){
    return zig_assert_F_D_D(ret_F_D_D());
}
struct F_D_D zig_ret_F_D_D();
int assert_ret_F_D_D(){
    return assert_F_D_D(zig_ret_F_D_D());
}

int assert_F_D_F(struct F_D_F lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct F_D_F ret_F_D_F(){
    struct F_D_F lv = { .v1 = 0.5, .v2 = -0.25, .v3 = -0.25 };
    return lv;
}
int zig_assert_F_D_F(struct F_D_F);
int send_F_D_F(){
    return zig_assert_F_D_F(ret_F_D_F());
}
struct F_D_F zig_ret_F_D_F();
int assert_ret_F_D_F(){
    return assert_F_D_F(zig_ret_F_D_F());
}

int assert_F_D_I(struct F_D_I lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 2184) err = 3;
  return err;
}
struct F_D_I ret_F_D_I(){
    struct F_D_I lv = { .v1 = 0.5, .v2 = 4.5, .v3 = 2184 };
    return lv;
}
int zig_assert_F_D_I(struct F_D_I);
int send_F_D_I(){
    return zig_assert_F_D_I(ret_F_D_I());
}
struct F_D_I zig_ret_F_D_I();
int assert_ret_F_D_I(){
    return assert_F_D_I(zig_ret_F_D_I());
}

int assert_F_D_Ip(struct F_D_Ip lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_D_Ip ret_F_D_Ip(){
    struct F_D_Ip lv = { .v1 = 7.0, .v2 = 7.0, .v3 = 0 };
    return lv;
}
int zig_assert_F_D_Ip(struct F_D_Ip);
int send_F_D_Ip(){
    return zig_assert_F_D_Ip(ret_F_D_Ip());
}
struct F_D_Ip zig_ret_F_D_Ip();
int assert_ret_F_D_Ip(){
    return assert_F_D_Ip(zig_ret_F_D_Ip());
}

int assert_F_D_L(struct F_D_L lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 13946) err = 3;
  return err;
}
struct F_D_L ret_F_D_L(){
    struct F_D_L lv = { .v1 = -0.25, .v2 = 0.875, .v3 = 13946 };
    return lv;
}
int zig_assert_F_D_L(struct F_D_L);
int send_F_D_L(){
    return zig_assert_F_D_L(ret_F_D_L());
}
struct F_D_L zig_ret_F_D_L();
int assert_ret_F_D_L(){
    return assert_F_D_L(zig_ret_F_D_L());
}

int assert_F_D_S(struct F_D_S lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 10845) err = 3;
  return err;
}
struct F_D_S ret_F_D_S(){
    struct F_D_S lv = { .v1 = 0.5, .v2 = 0.875, .v3 = 10845 };
    return lv;
}
int zig_assert_F_D_S(struct F_D_S);
int send_F_D_S(){
    return zig_assert_F_D_S(ret_F_D_S());
}
struct F_D_S zig_ret_F_D_S();
int assert_ret_F_D_S(){
    return assert_F_D_S(zig_ret_F_D_S());
}

int assert_F_D_Uc(struct F_D_Uc lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 85) err = 3;
  return err;
}
struct F_D_Uc ret_F_D_Uc(){
    struct F_D_Uc lv = { .v1 = 0.5, .v2 = 7.0, .v3 = 85 };
    return lv;
}
int zig_assert_F_D_Uc(struct F_D_Uc);
int send_F_D_Uc(){
    return zig_assert_F_D_Uc(ret_F_D_Uc());
}
struct F_D_Uc zig_ret_F_D_Uc();
int assert_ret_F_D_Uc(){
    return assert_F_D_Uc(zig_ret_F_D_Uc());
}

int assert_F_D_Ui(struct F_D_Ui lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 19194) err = 3;
  return err;
}
struct F_D_Ui ret_F_D_Ui(){
    struct F_D_Ui lv = { .v1 = 7.0, .v2 = 0.875, .v3 = 19194 };
    return lv;
}
int zig_assert_F_D_Ui(struct F_D_Ui);
int send_F_D_Ui(){
    return zig_assert_F_D_Ui(ret_F_D_Ui());
}
struct F_D_Ui zig_ret_F_D_Ui();
int assert_ret_F_D_Ui(){
    return assert_F_D_Ui(zig_ret_F_D_Ui());
}

int assert_F_D_Ul(struct F_D_Ul lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 20762) err = 3;
  return err;
}
struct F_D_Ul ret_F_D_Ul(){
    struct F_D_Ul lv = { .v1 = 4.5, .v2 = 0.875, .v3 = 20762 };
    return lv;
}
int zig_assert_F_D_Ul(struct F_D_Ul);
int send_F_D_Ul(){
    return zig_assert_F_D_Ul(ret_F_D_Ul());
}
struct F_D_Ul zig_ret_F_D_Ul();
int assert_ret_F_D_Ul(){
    return assert_F_D_Ul(zig_ret_F_D_Ul());
}

int assert_F_D_Us(struct F_D_Us lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 447) err = 3;
  return err;
}
struct F_D_Us ret_F_D_Us(){
    struct F_D_Us lv = { .v1 = 4.5, .v2 = -2.125, .v3 = 447 };
    return lv;
}
int zig_assert_F_D_Us(struct F_D_Us);
int send_F_D_Us(){
    return zig_assert_F_D_Us(ret_F_D_Us());
}
struct F_D_Us zig_ret_F_D_Us();
int assert_ret_F_D_Us(){
    return assert_F_D_Us(zig_ret_F_D_Us());
}

int assert_F_D_Vp(struct F_D_Vp lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_D_Vp ret_F_D_Vp(){
    struct F_D_Vp lv = { .v1 = 1.0, .v2 = 7.0, .v3 = 0 };
    return lv;
}
int zig_assert_F_D_Vp(struct F_D_Vp);
int send_F_D_Vp(){
    return zig_assert_F_D_Vp(ret_F_D_Vp());
}
struct F_D_Vp zig_ret_F_D_Vp();
int assert_ret_F_D_Vp(){
    return assert_F_D_Vp(zig_ret_F_D_Vp());
}

int assert_F_F(struct F_F lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  return err;
}
struct F_F ret_F_F(){
    struct F_F lv = { .v1 = 1.0, .v2 = 4.5 };
    return lv;
}
int zig_assert_F_F(struct F_F);
int send_F_F(){
    return zig_assert_F_F(ret_F_F());
}
struct F_F zig_ret_F_F();
int assert_ret_F_F(){
    return assert_F_F(zig_ret_F_F());
}

int assert_F_F_C(struct F_F_C lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 24) err = 3;
  return err;
}
struct F_F_C ret_F_F_C(){
    struct F_F_C lv = { .v1 = 4.5, .v2 = -2.125, .v3 = 24 };
    return lv;
}
int zig_assert_F_F_C(struct F_F_C);
int send_F_F_C(){
    return zig_assert_F_F_C(ret_F_F_C());
}
struct F_F_C zig_ret_F_F_C();
int assert_ret_F_F_C(){
    return assert_F_F_C(zig_ret_F_F_C());
}

int assert_F_F_D(struct F_F_D lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct F_F_D ret_F_F_D(){
    struct F_F_D lv = { .v1 = 1.0, .v2 = 1.0, .v3 = -2.125 };
    return lv;
}
int zig_assert_F_F_D(struct F_F_D);
int send_F_F_D(){
    return zig_assert_F_F_D(ret_F_F_D());
}
struct F_F_D zig_ret_F_F_D();
int assert_ret_F_F_D(){
    return assert_F_F_D(zig_ret_F_F_D());
}

int assert_F_F_F(struct F_F_F lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct F_F_F ret_F_F_F(){
    struct F_F_F lv = { .v1 = 1.0, .v2 = 4.5, .v3 = -2.125 };
    return lv;
}
int zig_assert_F_F_F(struct F_F_F);
int send_F_F_F(){
    return zig_assert_F_F_F(ret_F_F_F());
}
struct F_F_F zig_ret_F_F_F();
int assert_ret_F_F_F(){
    return assert_F_F_F(zig_ret_F_F_F());
}

int assert_F_F_I(struct F_F_I lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 30673) err = 3;
  return err;
}
struct F_F_I ret_F_F_I(){
    struct F_F_I lv = { .v1 = -2.125, .v2 = 0.875, .v3 = 30673 };
    return lv;
}
int zig_assert_F_F_I(struct F_F_I);
int send_F_F_I(){
    return zig_assert_F_F_I(ret_F_F_I());
}
struct F_F_I zig_ret_F_F_I();
int assert_ret_F_F_I(){
    return assert_F_F_I(zig_ret_F_F_I());
}

int assert_F_F_Ip(struct F_F_Ip lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_F_Ip ret_F_F_Ip(){
    struct F_F_Ip lv = { .v1 = -2.125, .v2 = 7.0, .v3 = 0 };
    return lv;
}
int zig_assert_F_F_Ip(struct F_F_Ip);
int send_F_F_Ip(){
    return zig_assert_F_F_Ip(ret_F_F_Ip());
}
struct F_F_Ip zig_ret_F_F_Ip();
int assert_ret_F_F_Ip(){
    return assert_F_F_Ip(zig_ret_F_F_Ip());
}

int assert_F_F_L(struct F_F_L lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 12916) err = 3;
  return err;
}
struct F_F_L ret_F_F_L(){
    struct F_F_L lv = { .v1 = 0.875, .v2 = 0.875, .v3 = 12916 };
    return lv;
}
int zig_assert_F_F_L(struct F_F_L);
int send_F_F_L(){
    return zig_assert_F_F_L(ret_F_F_L());
}
struct F_F_L zig_ret_F_F_L();
int assert_ret_F_F_L(){
    return assert_F_F_L(zig_ret_F_F_L());
}

int assert_F_F_S(struct F_F_S lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 24001) err = 3;
  return err;
}
struct F_F_S ret_F_F_S(){
    struct F_F_S lv = { .v1 = 0.5, .v2 = -2.125, .v3 = 24001 };
    return lv;
}
int zig_assert_F_F_S(struct F_F_S);
int send_F_F_S(){
    return zig_assert_F_F_S(ret_F_F_S());
}
struct F_F_S zig_ret_F_F_S();
int assert_ret_F_F_S(){
    return assert_F_F_S(zig_ret_F_F_S());
}

int assert_F_F_Uc(struct F_F_Uc lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 36) err = 3;
  return err;
}
struct F_F_Uc ret_F_F_Uc(){
    struct F_F_Uc lv = { .v1 = 0.5, .v2 = -0.25, .v3 = 36 };
    return lv;
}
int zig_assert_F_F_Uc(struct F_F_Uc);
int send_F_F_Uc(){
    return zig_assert_F_F_Uc(ret_F_F_Uc());
}
struct F_F_Uc zig_ret_F_F_Uc();
int assert_ret_F_F_Uc(){
    return assert_F_F_Uc(zig_ret_F_F_Uc());
}

int assert_F_F_Ui(struct F_F_Ui lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 18540) err = 3;
  return err;
}
struct F_F_Ui ret_F_F_Ui(){
    struct F_F_Ui lv = { .v1 = 1.0, .v2 = 7.0, .v3 = 18540 };
    return lv;
}
int zig_assert_F_F_Ui(struct F_F_Ui);
int send_F_F_Ui(){
    return zig_assert_F_F_Ui(ret_F_F_Ui());
}
struct F_F_Ui zig_ret_F_F_Ui();
int assert_ret_F_F_Ui(){
    return assert_F_F_Ui(zig_ret_F_F_Ui());
}

int assert_F_F_Ul(struct F_F_Ul lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 3966) err = 3;
  return err;
}
struct F_F_Ul ret_F_F_Ul(){
    struct F_F_Ul lv = { .v1 = -0.25, .v2 = 0.875, .v3 = 3966 };
    return lv;
}
int zig_assert_F_F_Ul(struct F_F_Ul);
int send_F_F_Ul(){
    return zig_assert_F_F_Ul(ret_F_F_Ul());
}
struct F_F_Ul zig_ret_F_F_Ul();
int assert_ret_F_F_Ul(){
    return assert_F_F_Ul(zig_ret_F_F_Ul());
}

int assert_F_F_Us(struct F_F_Us lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 27558) err = 3;
  return err;
}
struct F_F_Us ret_F_F_Us(){
    struct F_F_Us lv = { .v1 = -0.25, .v2 = 1.0, .v3 = 27558 };
    return lv;
}
int zig_assert_F_F_Us(struct F_F_Us);
int send_F_F_Us(){
    return zig_assert_F_F_Us(ret_F_F_Us());
}
struct F_F_Us zig_ret_F_F_Us();
int assert_ret_F_F_Us(){
    return assert_F_F_Us(zig_ret_F_F_Us());
}

int assert_F_F_Vp(struct F_F_Vp lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_F_Vp ret_F_F_Vp(){
    struct F_F_Vp lv = { .v1 = 0.875, .v2 = 1.0, .v3 = 0 };
    return lv;
}
int zig_assert_F_F_Vp(struct F_F_Vp);
int send_F_F_Vp(){
    return zig_assert_F_F_Vp(ret_F_F_Vp());
}
struct F_F_Vp zig_ret_F_F_Vp();
int assert_ret_F_F_Vp(){
    return assert_F_F_Vp(zig_ret_F_F_Vp());
}

int assert_F_I(struct F_I lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 2673) err = 2;
  return err;
}
struct F_I ret_F_I(){
    struct F_I lv = { .v1 = -0.25, .v2 = 2673 };
    return lv;
}
int zig_assert_F_I(struct F_I);
int send_F_I(){
    return zig_assert_F_I(ret_F_I());
}
struct F_I zig_ret_F_I();
int assert_ret_F_I(){
    return assert_F_I(zig_ret_F_I());
}

int assert_F_I_C(struct F_I_C lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 9062) err = 2;
  if (lv.v3 != 42) err = 3;
  return err;
}
struct F_I_C ret_F_I_C(){
    struct F_I_C lv = { .v1 = 7.0, .v2 = 9062, .v3 = 42 };
    return lv;
}
int zig_assert_F_I_C(struct F_I_C);
int send_F_I_C(){
    return zig_assert_F_I_C(ret_F_I_C());
}
struct F_I_C zig_ret_F_I_C();
int assert_ret_F_I_C(){
    return assert_F_I_C(zig_ret_F_I_C());
}

int assert_F_I_D(struct F_I_D lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 31457) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct F_I_D ret_F_I_D(){
    struct F_I_D lv = { .v1 = -2.125, .v2 = 31457, .v3 = -0.25 };
    return lv;
}
int zig_assert_F_I_D(struct F_I_D);
int send_F_I_D(){
    return zig_assert_F_I_D(ret_F_I_D());
}
struct F_I_D zig_ret_F_I_D();
int assert_ret_F_I_D(){
    return assert_F_I_D(zig_ret_F_I_D());
}

int assert_F_I_F(struct F_I_F lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 29585) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct F_I_F ret_F_I_F(){
    struct F_I_F lv = { .v1 = 4.5, .v2 = 29585, .v3 = -2.125 };
    return lv;
}
int zig_assert_F_I_F(struct F_I_F);
int send_F_I_F(){
    return zig_assert_F_I_F(ret_F_I_F());
}
struct F_I_F zig_ret_F_I_F();
int assert_ret_F_I_F(){
    return assert_F_I_F(zig_ret_F_I_F());
}

int assert_F_I_I(struct F_I_I lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 32140) err = 2;
  if (lv.v3 != 26057) err = 3;
  return err;
}
struct F_I_I ret_F_I_I(){
    struct F_I_I lv = { .v1 = 7.0, .v2 = 32140, .v3 = 26057 };
    return lv;
}
int zig_assert_F_I_I(struct F_I_I);
int send_F_I_I(){
    return zig_assert_F_I_I(ret_F_I_I());
}
struct F_I_I zig_ret_F_I_I();
int assert_ret_F_I_I(){
    return assert_F_I_I(zig_ret_F_I_I());
}

int assert_F_I_Ip(struct F_I_Ip lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 15202) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_I_Ip ret_F_I_Ip(){
    struct F_I_Ip lv = { .v1 = 0.875, .v2 = 15202, .v3 = 0 };
    return lv;
}
int zig_assert_F_I_Ip(struct F_I_Ip);
int send_F_I_Ip(){
    return zig_assert_F_I_Ip(ret_F_I_Ip());
}
struct F_I_Ip zig_ret_F_I_Ip();
int assert_ret_F_I_Ip(){
    return assert_F_I_Ip(zig_ret_F_I_Ip());
}

int assert_F_I_L(struct F_I_L lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 6979) err = 2;
  if (lv.v3 != 3920) err = 3;
  return err;
}
struct F_I_L ret_F_I_L(){
    struct F_I_L lv = { .v1 = 0.5, .v2 = 6979, .v3 = 3920 };
    return lv;
}
int zig_assert_F_I_L(struct F_I_L);
int send_F_I_L(){
    return zig_assert_F_I_L(ret_F_I_L());
}
struct F_I_L zig_ret_F_I_L();
int assert_ret_F_I_L(){
    return assert_F_I_L(zig_ret_F_I_L());
}

int assert_F_I_S(struct F_I_S lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 4337) err = 2;
  if (lv.v3 != 955) err = 3;
  return err;
}
struct F_I_S ret_F_I_S(){
    struct F_I_S lv = { .v1 = -2.125, .v2 = 4337, .v3 = 955 };
    return lv;
}
int zig_assert_F_I_S(struct F_I_S);
int send_F_I_S(){
    return zig_assert_F_I_S(ret_F_I_S());
}
struct F_I_S zig_ret_F_I_S();
int assert_ret_F_I_S(){
    return assert_F_I_S(zig_ret_F_I_S());
}

int assert_F_I_Uc(struct F_I_Uc lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 24794) err = 2;
  if (lv.v3 != 1) err = 3;
  return err;
}
struct F_I_Uc ret_F_I_Uc(){
    struct F_I_Uc lv = { .v1 = 4.5, .v2 = 24794, .v3 = 1 };
    return lv;
}
int zig_assert_F_I_Uc(struct F_I_Uc);
int send_F_I_Uc(){
    return zig_assert_F_I_Uc(ret_F_I_Uc());
}
struct F_I_Uc zig_ret_F_I_Uc();
int assert_ret_F_I_Uc(){
    return assert_F_I_Uc(zig_ret_F_I_Uc());
}

int assert_F_I_Ui(struct F_I_Ui lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 12911) err = 2;
  if (lv.v3 != 9581) err = 3;
  return err;
}
struct F_I_Ui ret_F_I_Ui(){
    struct F_I_Ui lv = { .v1 = 0.5, .v2 = 12911, .v3 = 9581 };
    return lv;
}
int zig_assert_F_I_Ui(struct F_I_Ui);
int send_F_I_Ui(){
    return zig_assert_F_I_Ui(ret_F_I_Ui());
}
struct F_I_Ui zig_ret_F_I_Ui();
int assert_ret_F_I_Ui(){
    return assert_F_I_Ui(zig_ret_F_I_Ui());
}

int assert_F_I_Ul(struct F_I_Ul lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 8607) err = 2;
  if (lv.v3 != 1051) err = 3;
  return err;
}
struct F_I_Ul ret_F_I_Ul(){
    struct F_I_Ul lv = { .v1 = -2.125, .v2 = 8607, .v3 = 1051 };
    return lv;
}
int zig_assert_F_I_Ul(struct F_I_Ul);
int send_F_I_Ul(){
    return zig_assert_F_I_Ul(ret_F_I_Ul());
}
struct F_I_Ul zig_ret_F_I_Ul();
int assert_ret_F_I_Ul(){
    return assert_F_I_Ul(zig_ret_F_I_Ul());
}

int assert_F_I_Us(struct F_I_Us lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 23512) err = 2;
  if (lv.v3 != 5539) err = 3;
  return err;
}
struct F_I_Us ret_F_I_Us(){
    struct F_I_Us lv = { .v1 = 0.5, .v2 = 23512, .v3 = 5539 };
    return lv;
}
int zig_assert_F_I_Us(struct F_I_Us);
int send_F_I_Us(){
    return zig_assert_F_I_Us(ret_F_I_Us());
}
struct F_I_Us zig_ret_F_I_Us();
int assert_ret_F_I_Us(){
    return assert_F_I_Us(zig_ret_F_I_Us());
}

int assert_F_I_Vp(struct F_I_Vp lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 1023) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_I_Vp ret_F_I_Vp(){
    struct F_I_Vp lv = { .v1 = 0.875, .v2 = 1023, .v3 = 0 };
    return lv;
}
int zig_assert_F_I_Vp(struct F_I_Vp);
int send_F_I_Vp(){
    return zig_assert_F_I_Vp(ret_F_I_Vp());
}
struct F_I_Vp zig_ret_F_I_Vp();
int assert_ret_F_I_Vp(){
    return assert_F_I_Vp(zig_ret_F_I_Vp());
}

int assert_F_Ip(struct F_Ip lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct F_Ip ret_F_Ip(){
    struct F_Ip lv = { .v1 = 4.5, .v2 = 0 };
    return lv;
}
int zig_assert_F_Ip(struct F_Ip);
int send_F_Ip(){
    return zig_assert_F_Ip(ret_F_Ip());
}
struct F_Ip zig_ret_F_Ip();
int assert_ret_F_Ip(){
    return assert_F_Ip(zig_ret_F_Ip());
}

int assert_F_Ip_C(struct F_Ip_C lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 88) err = 3;
  return err;
}
struct F_Ip_C ret_F_Ip_C(){
    struct F_Ip_C lv = { .v1 = -2.125, .v2 = 0, .v3 = 88 };
    return lv;
}
int zig_assert_F_Ip_C(struct F_Ip_C);
int send_F_Ip_C(){
    return zig_assert_F_Ip_C(ret_F_Ip_C());
}
struct F_Ip_C zig_ret_F_Ip_C();
int assert_ret_F_Ip_C(){
    return assert_F_Ip_C(zig_ret_F_Ip_C());
}

int assert_F_Ip_D(struct F_Ip_D lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct F_Ip_D ret_F_Ip_D(){
    struct F_Ip_D lv = { .v1 = 4.5, .v2 = 0, .v3 = 7.0 };
    return lv;
}
int zig_assert_F_Ip_D(struct F_Ip_D);
int send_F_Ip_D(){
    return zig_assert_F_Ip_D(ret_F_Ip_D());
}
struct F_Ip_D zig_ret_F_Ip_D();
int assert_ret_F_Ip_D(){
    return assert_F_Ip_D(zig_ret_F_Ip_D());
}

int assert_F_Ip_F(struct F_Ip_F lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct F_Ip_F ret_F_Ip_F(){
    struct F_Ip_F lv = { .v1 = -2.125, .v2 = 0, .v3 = 1.0 };
    return lv;
}
int zig_assert_F_Ip_F(struct F_Ip_F);
int send_F_Ip_F(){
    return zig_assert_F_Ip_F(ret_F_Ip_F());
}
struct F_Ip_F zig_ret_F_Ip_F();
int assert_ret_F_Ip_F(){
    return assert_F_Ip_F(zig_ret_F_Ip_F());
}

int assert_F_Ip_I(struct F_Ip_I lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 25911) err = 3;
  return err;
}
struct F_Ip_I ret_F_Ip_I(){
    struct F_Ip_I lv = { .v1 = 1.0, .v2 = 0, .v3 = 25911 };
    return lv;
}
int zig_assert_F_Ip_I(struct F_Ip_I);
int send_F_Ip_I(){
    return zig_assert_F_Ip_I(ret_F_Ip_I());
}
struct F_Ip_I zig_ret_F_Ip_I();
int assert_ret_F_Ip_I(){
    return assert_F_Ip_I(zig_ret_F_Ip_I());
}

int assert_F_Ip_Ip(struct F_Ip_Ip lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Ip_Ip ret_F_Ip_Ip(){
    struct F_Ip_Ip lv = { .v1 = -0.25, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_F_Ip_Ip(struct F_Ip_Ip);
int send_F_Ip_Ip(){
    return zig_assert_F_Ip_Ip(ret_F_Ip_Ip());
}
struct F_Ip_Ip zig_ret_F_Ip_Ip();
int assert_ret_F_Ip_Ip(){
    return assert_F_Ip_Ip(zig_ret_F_Ip_Ip());
}

int assert_F_Ip_L(struct F_Ip_L lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 20726) err = 3;
  return err;
}
struct F_Ip_L ret_F_Ip_L(){
    struct F_Ip_L lv = { .v1 = 7.0, .v2 = 0, .v3 = 20726 };
    return lv;
}
int zig_assert_F_Ip_L(struct F_Ip_L);
int send_F_Ip_L(){
    return zig_assert_F_Ip_L(ret_F_Ip_L());
}
struct F_Ip_L zig_ret_F_Ip_L();
int assert_ret_F_Ip_L(){
    return assert_F_Ip_L(zig_ret_F_Ip_L());
}

int assert_F_Ip_S(struct F_Ip_S lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 17278) err = 3;
  return err;
}
struct F_Ip_S ret_F_Ip_S(){
    struct F_Ip_S lv = { .v1 = 0.5, .v2 = 0, .v3 = 17278 };
    return lv;
}
int zig_assert_F_Ip_S(struct F_Ip_S);
int send_F_Ip_S(){
    return zig_assert_F_Ip_S(ret_F_Ip_S());
}
struct F_Ip_S zig_ret_F_Ip_S();
int assert_ret_F_Ip_S(){
    return assert_F_Ip_S(zig_ret_F_Ip_S());
}

int assert_F_Ip_Uc(struct F_Ip_Uc lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 24) err = 3;
  return err;
}
struct F_Ip_Uc ret_F_Ip_Uc(){
    struct F_Ip_Uc lv = { .v1 = 7.0, .v2 = 0, .v3 = 24 };
    return lv;
}
int zig_assert_F_Ip_Uc(struct F_Ip_Uc);
int send_F_Ip_Uc(){
    return zig_assert_F_Ip_Uc(ret_F_Ip_Uc());
}
struct F_Ip_Uc zig_ret_F_Ip_Uc();
int assert_ret_F_Ip_Uc(){
    return assert_F_Ip_Uc(zig_ret_F_Ip_Uc());
}

int assert_F_Ip_Ui(struct F_Ip_Ui lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 28681) err = 3;
  return err;
}
struct F_Ip_Ui ret_F_Ip_Ui(){
    struct F_Ip_Ui lv = { .v1 = 0.5, .v2 = 0, .v3 = 28681 };
    return lv;
}
int zig_assert_F_Ip_Ui(struct F_Ip_Ui);
int send_F_Ip_Ui(){
    return zig_assert_F_Ip_Ui(ret_F_Ip_Ui());
}
struct F_Ip_Ui zig_ret_F_Ip_Ui();
int assert_ret_F_Ip_Ui(){
    return assert_F_Ip_Ui(zig_ret_F_Ip_Ui());
}

int assert_F_Ip_Ul(struct F_Ip_Ul lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 20410) err = 3;
  return err;
}
struct F_Ip_Ul ret_F_Ip_Ul(){
    struct F_Ip_Ul lv = { .v1 = 0.875, .v2 = 0, .v3 = 20410 };
    return lv;
}
int zig_assert_F_Ip_Ul(struct F_Ip_Ul);
int send_F_Ip_Ul(){
    return zig_assert_F_Ip_Ul(ret_F_Ip_Ul());
}
struct F_Ip_Ul zig_ret_F_Ip_Ul();
int assert_ret_F_Ip_Ul(){
    return assert_F_Ip_Ul(zig_ret_F_Ip_Ul());
}

int assert_F_Ip_Us(struct F_Ip_Us lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 21682) err = 3;
  return err;
}
struct F_Ip_Us ret_F_Ip_Us(){
    struct F_Ip_Us lv = { .v1 = -2.125, .v2 = 0, .v3 = 21682 };
    return lv;
}
int zig_assert_F_Ip_Us(struct F_Ip_Us);
int send_F_Ip_Us(){
    return zig_assert_F_Ip_Us(ret_F_Ip_Us());
}
struct F_Ip_Us zig_ret_F_Ip_Us();
int assert_ret_F_Ip_Us(){
    return assert_F_Ip_Us(zig_ret_F_Ip_Us());
}

int assert_F_Ip_Vp(struct F_Ip_Vp lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Ip_Vp ret_F_Ip_Vp(){
    struct F_Ip_Vp lv = { .v1 = 0.875, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_F_Ip_Vp(struct F_Ip_Vp);
int send_F_Ip_Vp(){
    return zig_assert_F_Ip_Vp(ret_F_Ip_Vp());
}
struct F_Ip_Vp zig_ret_F_Ip_Vp();
int assert_ret_F_Ip_Vp(){
    return assert_F_Ip_Vp(zig_ret_F_Ip_Vp());
}

int assert_F_L(struct F_L lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 11017) err = 2;
  return err;
}
struct F_L ret_F_L(){
    struct F_L lv = { .v1 = -2.125, .v2 = 11017 };
    return lv;
}
int zig_assert_F_L(struct F_L);
int send_F_L(){
    return zig_assert_F_L(ret_F_L());
}
struct F_L zig_ret_F_L();
int assert_ret_F_L(){
    return assert_F_L(zig_ret_F_L());
}

int assert_F_L_C(struct F_L_C lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 26491) err = 2;
  if (lv.v3 != 72) err = 3;
  return err;
}
struct F_L_C ret_F_L_C(){
    struct F_L_C lv = { .v1 = 0.5, .v2 = 26491, .v3 = 72 };
    return lv;
}
int zig_assert_F_L_C(struct F_L_C);
int send_F_L_C(){
    return zig_assert_F_L_C(ret_F_L_C());
}
struct F_L_C zig_ret_F_L_C();
int assert_ret_F_L_C(){
    return assert_F_L_C(zig_ret_F_L_C());
}

int assert_F_L_D(struct F_L_D lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 6010) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct F_L_D ret_F_L_D(){
    struct F_L_D lv = { .v1 = 4.5, .v2 = 6010, .v3 = -2.125 };
    return lv;
}
int zig_assert_F_L_D(struct F_L_D);
int send_F_L_D(){
    return zig_assert_F_L_D(ret_F_L_D());
}
struct F_L_D zig_ret_F_L_D();
int assert_ret_F_L_D(){
    return assert_F_L_D(zig_ret_F_L_D());
}

int assert_F_L_F(struct F_L_F lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 1339) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct F_L_F ret_F_L_F(){
    struct F_L_F lv = { .v1 = 4.5, .v2 = 1339, .v3 = 4.5 };
    return lv;
}
int zig_assert_F_L_F(struct F_L_F);
int send_F_L_F(){
    return zig_assert_F_L_F(ret_F_L_F());
}
struct F_L_F zig_ret_F_L_F();
int assert_ret_F_L_F(){
    return assert_F_L_F(zig_ret_F_L_F());
}

int assert_F_L_I(struct F_L_I lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 5595) err = 2;
  if (lv.v3 != 27088) err = 3;
  return err;
}
struct F_L_I ret_F_L_I(){
    struct F_L_I lv = { .v1 = -0.25, .v2 = 5595, .v3 = 27088 };
    return lv;
}
int zig_assert_F_L_I(struct F_L_I);
int send_F_L_I(){
    return zig_assert_F_L_I(ret_F_L_I());
}
struct F_L_I zig_ret_F_L_I();
int assert_ret_F_L_I(){
    return assert_F_L_I(zig_ret_F_L_I());
}

int assert_F_L_Ip(struct F_L_Ip lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 30167) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_L_Ip ret_F_L_Ip(){
    struct F_L_Ip lv = { .v1 = 0.875, .v2 = 30167, .v3 = 0 };
    return lv;
}
int zig_assert_F_L_Ip(struct F_L_Ip);
int send_F_L_Ip(){
    return zig_assert_F_L_Ip(ret_F_L_Ip());
}
struct F_L_Ip zig_ret_F_L_Ip();
int assert_ret_F_L_Ip(){
    return assert_F_L_Ip(zig_ret_F_L_Ip());
}

int assert_F_L_L(struct F_L_L lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 31661) err = 2;
  if (lv.v3 != 592) err = 3;
  return err;
}
struct F_L_L ret_F_L_L(){
    struct F_L_L lv = { .v1 = 0.875, .v2 = 31661, .v3 = 592 };
    return lv;
}
int zig_assert_F_L_L(struct F_L_L);
int send_F_L_L(){
    return zig_assert_F_L_L(ret_F_L_L());
}
struct F_L_L zig_ret_F_L_L();
int assert_ret_F_L_L(){
    return assert_F_L_L(zig_ret_F_L_L());
}

int assert_F_L_S(struct F_L_S lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 29218) err = 2;
  if (lv.v3 != 27604) err = 3;
  return err;
}
struct F_L_S ret_F_L_S(){
    struct F_L_S lv = { .v1 = 0.875, .v2 = 29218, .v3 = 27604 };
    return lv;
}
int zig_assert_F_L_S(struct F_L_S);
int send_F_L_S(){
    return zig_assert_F_L_S(ret_F_L_S());
}
struct F_L_S zig_ret_F_L_S();
int assert_ret_F_L_S(){
    return assert_F_L_S(zig_ret_F_L_S());
}

int assert_F_L_Uc(struct F_L_Uc lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 31405) err = 2;
  if (lv.v3 != 5) err = 3;
  return err;
}
struct F_L_Uc ret_F_L_Uc(){
    struct F_L_Uc lv = { .v1 = 4.5, .v2 = 31405, .v3 = 5 };
    return lv;
}
int zig_assert_F_L_Uc(struct F_L_Uc);
int send_F_L_Uc(){
    return zig_assert_F_L_Uc(ret_F_L_Uc());
}
struct F_L_Uc zig_ret_F_L_Uc();
int assert_ret_F_L_Uc(){
    return assert_F_L_Uc(zig_ret_F_L_Uc());
}

int assert_F_L_Ui(struct F_L_Ui lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 9274) err = 2;
  if (lv.v3 != 21311) err = 3;
  return err;
}
struct F_L_Ui ret_F_L_Ui(){
    struct F_L_Ui lv = { .v1 = 0.5, .v2 = 9274, .v3 = 21311 };
    return lv;
}
int zig_assert_F_L_Ui(struct F_L_Ui);
int send_F_L_Ui(){
    return zig_assert_F_L_Ui(ret_F_L_Ui());
}
struct F_L_Ui zig_ret_F_L_Ui();
int assert_ret_F_L_Ui(){
    return assert_F_L_Ui(zig_ret_F_L_Ui());
}

int assert_F_L_Ul(struct F_L_Ul lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 9453) err = 2;
  if (lv.v3 != 27799) err = 3;
  return err;
}
struct F_L_Ul ret_F_L_Ul(){
    struct F_L_Ul lv = { .v1 = 4.5, .v2 = 9453, .v3 = 27799 };
    return lv;
}
int zig_assert_F_L_Ul(struct F_L_Ul);
int send_F_L_Ul(){
    return zig_assert_F_L_Ul(ret_F_L_Ul());
}
struct F_L_Ul zig_ret_F_L_Ul();
int assert_ret_F_L_Ul(){
    return assert_F_L_Ul(zig_ret_F_L_Ul());
}

int assert_F_L_Us(struct F_L_Us lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 6123) err = 2;
  if (lv.v3 != 22927) err = 3;
  return err;
}
struct F_L_Us ret_F_L_Us(){
    struct F_L_Us lv = { .v1 = 0.5, .v2 = 6123, .v3 = 22927 };
    return lv;
}
int zig_assert_F_L_Us(struct F_L_Us);
int send_F_L_Us(){
    return zig_assert_F_L_Us(ret_F_L_Us());
}
struct F_L_Us zig_ret_F_L_Us();
int assert_ret_F_L_Us(){
    return assert_F_L_Us(zig_ret_F_L_Us());
}

int assert_F_L_Vp(struct F_L_Vp lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 29255) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_L_Vp ret_F_L_Vp(){
    struct F_L_Vp lv = { .v1 = -0.25, .v2 = 29255, .v3 = 0 };
    return lv;
}
int zig_assert_F_L_Vp(struct F_L_Vp);
int send_F_L_Vp(){
    return zig_assert_F_L_Vp(ret_F_L_Vp());
}
struct F_L_Vp zig_ret_F_L_Vp();
int assert_ret_F_L_Vp(){
    return assert_F_L_Vp(zig_ret_F_L_Vp());
}

int assert_F_S(struct F_S lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 28164) err = 2;
  return err;
}
struct F_S ret_F_S(){
    struct F_S lv = { .v1 = 7.0, .v2 = 28164 };
    return lv;
}
int zig_assert_F_S(struct F_S);
int send_F_S(){
    return zig_assert_F_S(ret_F_S());
}
struct F_S zig_ret_F_S();
int assert_ret_F_S(){
    return assert_F_S(zig_ret_F_S());
}

int assert_F_S_C(struct F_S_C lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 29744) err = 2;
  if (lv.v3 != 119) err = 3;
  return err;
}
struct F_S_C ret_F_S_C(){
    struct F_S_C lv = { .v1 = 7.0, .v2 = 29744, .v3 = 119 };
    return lv;
}
int zig_assert_F_S_C(struct F_S_C);
int send_F_S_C(){
    return zig_assert_F_S_C(ret_F_S_C());
}
struct F_S_C zig_ret_F_S_C();
int assert_ret_F_S_C(){
    return assert_F_S_C(zig_ret_F_S_C());
}

int assert_F_S_D(struct F_S_D lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 18960) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct F_S_D ret_F_S_D(){
    struct F_S_D lv = { .v1 = -2.125, .v2 = 18960, .v3 = 1.0 };
    return lv;
}
int zig_assert_F_S_D(struct F_S_D);
int send_F_S_D(){
    return zig_assert_F_S_D(ret_F_S_D());
}
struct F_S_D zig_ret_F_S_D();
int assert_ret_F_S_D(){
    return assert_F_S_D(zig_ret_F_S_D());
}

int assert_F_S_F(struct F_S_F lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 14516) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct F_S_F ret_F_S_F(){
    struct F_S_F lv = { .v1 = 7.0, .v2 = 14516, .v3 = -2.125 };
    return lv;
}
int zig_assert_F_S_F(struct F_S_F);
int send_F_S_F(){
    return zig_assert_F_S_F(ret_F_S_F());
}
struct F_S_F zig_ret_F_S_F();
int assert_ret_F_S_F(){
    return assert_F_S_F(zig_ret_F_S_F());
}

int assert_F_S_I(struct F_S_I lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 24764) err = 2;
  if (lv.v3 != 23226) err = 3;
  return err;
}
struct F_S_I ret_F_S_I(){
    struct F_S_I lv = { .v1 = 7.0, .v2 = 24764, .v3 = 23226 };
    return lv;
}
int zig_assert_F_S_I(struct F_S_I);
int send_F_S_I(){
    return zig_assert_F_S_I(ret_F_S_I());
}
struct F_S_I zig_ret_F_S_I();
int assert_ret_F_S_I(){
    return assert_F_S_I(zig_ret_F_S_I());
}

int assert_F_S_Ip(struct F_S_Ip lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 5176) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_S_Ip ret_F_S_Ip(){
    struct F_S_Ip lv = { .v1 = 1.0, .v2 = 5176, .v3 = 0 };
    return lv;
}
int zig_assert_F_S_Ip(struct F_S_Ip);
int send_F_S_Ip(){
    return zig_assert_F_S_Ip(ret_F_S_Ip());
}
struct F_S_Ip zig_ret_F_S_Ip();
int assert_ret_F_S_Ip(){
    return assert_F_S_Ip(zig_ret_F_S_Ip());
}

int assert_F_S_L(struct F_S_L lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 11860) err = 2;
  if (lv.v3 != 24497) err = 3;
  return err;
}
struct F_S_L ret_F_S_L(){
    struct F_S_L lv = { .v1 = -2.125, .v2 = 11860, .v3 = 24497 };
    return lv;
}
int zig_assert_F_S_L(struct F_S_L);
int send_F_S_L(){
    return zig_assert_F_S_L(ret_F_S_L());
}
struct F_S_L zig_ret_F_S_L();
int assert_ret_F_S_L(){
    return assert_F_S_L(zig_ret_F_S_L());
}

int assert_F_S_S(struct F_S_S lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 7971) err = 2;
  if (lv.v3 != 12118) err = 3;
  return err;
}
struct F_S_S ret_F_S_S(){
    struct F_S_S lv = { .v1 = 1.0, .v2 = 7971, .v3 = 12118 };
    return lv;
}
int zig_assert_F_S_S(struct F_S_S);
int send_F_S_S(){
    return zig_assert_F_S_S(ret_F_S_S());
}
struct F_S_S zig_ret_F_S_S();
int assert_ret_F_S_S(){
    return assert_F_S_S(zig_ret_F_S_S());
}

int assert_F_S_Uc(struct F_S_Uc lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 30467) err = 2;
  if (lv.v3 != 22) err = 3;
  return err;
}
struct F_S_Uc ret_F_S_Uc(){
    struct F_S_Uc lv = { .v1 = 7.0, .v2 = 30467, .v3 = 22 };
    return lv;
}
int zig_assert_F_S_Uc(struct F_S_Uc);
int send_F_S_Uc(){
    return zig_assert_F_S_Uc(ret_F_S_Uc());
}
struct F_S_Uc zig_ret_F_S_Uc();
int assert_ret_F_S_Uc(){
    return assert_F_S_Uc(zig_ret_F_S_Uc());
}

int assert_F_S_Ui(struct F_S_Ui lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 4283) err = 2;
  if (lv.v3 != 12381) err = 3;
  return err;
}
struct F_S_Ui ret_F_S_Ui(){
    struct F_S_Ui lv = { .v1 = 0.875, .v2 = 4283, .v3 = 12381 };
    return lv;
}
int zig_assert_F_S_Ui(struct F_S_Ui);
int send_F_S_Ui(){
    return zig_assert_F_S_Ui(ret_F_S_Ui());
}
struct F_S_Ui zig_ret_F_S_Ui();
int assert_ret_F_S_Ui(){
    return assert_F_S_Ui(zig_ret_F_S_Ui());
}

int assert_F_S_Ul(struct F_S_Ul lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 12799) err = 2;
  if (lv.v3 != 20298) err = 3;
  return err;
}
struct F_S_Ul ret_F_S_Ul(){
    struct F_S_Ul lv = { .v1 = -0.25, .v2 = 12799, .v3 = 20298 };
    return lv;
}
int zig_assert_F_S_Ul(struct F_S_Ul);
int send_F_S_Ul(){
    return zig_assert_F_S_Ul(ret_F_S_Ul());
}
struct F_S_Ul zig_ret_F_S_Ul();
int assert_ret_F_S_Ul(){
    return assert_F_S_Ul(zig_ret_F_S_Ul());
}

int assert_F_S_Us(struct F_S_Us lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 29977) err = 2;
  if (lv.v3 != 6734) err = 3;
  return err;
}
struct F_S_Us ret_F_S_Us(){
    struct F_S_Us lv = { .v1 = -2.125, .v2 = 29977, .v3 = 6734 };
    return lv;
}
int zig_assert_F_S_Us(struct F_S_Us);
int send_F_S_Us(){
    return zig_assert_F_S_Us(ret_F_S_Us());
}
struct F_S_Us zig_ret_F_S_Us();
int assert_ret_F_S_Us(){
    return assert_F_S_Us(zig_ret_F_S_Us());
}

int assert_F_S_Vp(struct F_S_Vp lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 23368) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_S_Vp ret_F_S_Vp(){
    struct F_S_Vp lv = { .v1 = 4.5, .v2 = 23368, .v3 = 0 };
    return lv;
}
int zig_assert_F_S_Vp(struct F_S_Vp);
int send_F_S_Vp(){
    return zig_assert_F_S_Vp(ret_F_S_Vp());
}
struct F_S_Vp zig_ret_F_S_Vp();
int assert_ret_F_S_Vp(){
    return assert_F_S_Vp(zig_ret_F_S_Vp());
}

int assert_F_Uc(struct F_Uc lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 118) err = 2;
  return err;
}
struct F_Uc ret_F_Uc(){
    struct F_Uc lv = { .v1 = -0.25, .v2 = 118 };
    return lv;
}
int zig_assert_F_Uc(struct F_Uc);
int send_F_Uc(){
    return zig_assert_F_Uc(ret_F_Uc());
}
struct F_Uc zig_ret_F_Uc();
int assert_ret_F_Uc(){
    return assert_F_Uc(zig_ret_F_Uc());
}

int assert_F_Uc_C(struct F_Uc_C lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 96) err = 2;
  if (lv.v3 != 48) err = 3;
  return err;
}
struct F_Uc_C ret_F_Uc_C(){
    struct F_Uc_C lv = { .v1 = -2.125, .v2 = 96, .v3 = 48 };
    return lv;
}
int zig_assert_F_Uc_C(struct F_Uc_C);
int send_F_Uc_C(){
    return zig_assert_F_Uc_C(ret_F_Uc_C());
}
struct F_Uc_C zig_ret_F_Uc_C();
int assert_ret_F_Uc_C(){
    return assert_F_Uc_C(zig_ret_F_Uc_C());
}

int assert_F_Uc_D(struct F_Uc_D lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 109) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct F_Uc_D ret_F_Uc_D(){
    struct F_Uc_D lv = { .v1 = 7.0, .v2 = 109, .v3 = 0.5 };
    return lv;
}
int zig_assert_F_Uc_D(struct F_Uc_D);
int send_F_Uc_D(){
    return zig_assert_F_Uc_D(ret_F_Uc_D());
}
struct F_Uc_D zig_ret_F_Uc_D();
int assert_ret_F_Uc_D(){
    return assert_F_Uc_D(zig_ret_F_Uc_D());
}

int assert_F_Uc_F(struct F_Uc_F lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 84) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct F_Uc_F ret_F_Uc_F(){
    struct F_Uc_F lv = { .v1 = -2.125, .v2 = 84, .v3 = 4.5 };
    return lv;
}
int zig_assert_F_Uc_F(struct F_Uc_F);
int send_F_Uc_F(){
    return zig_assert_F_Uc_F(ret_F_Uc_F());
}
struct F_Uc_F zig_ret_F_Uc_F();
int assert_ret_F_Uc_F(){
    return assert_F_Uc_F(zig_ret_F_Uc_F());
}

int assert_F_Uc_I(struct F_Uc_I lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 127) err = 2;
  if (lv.v3 != 20842) err = 3;
  return err;
}
struct F_Uc_I ret_F_Uc_I(){
    struct F_Uc_I lv = { .v1 = 7.0, .v2 = 127, .v3 = 20842 };
    return lv;
}
int zig_assert_F_Uc_I(struct F_Uc_I);
int send_F_Uc_I(){
    return zig_assert_F_Uc_I(ret_F_Uc_I());
}
struct F_Uc_I zig_ret_F_Uc_I();
int assert_ret_F_Uc_I(){
    return assert_F_Uc_I(zig_ret_F_Uc_I());
}

int assert_F_Uc_Ip(struct F_Uc_Ip lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 40) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Uc_Ip ret_F_Uc_Ip(){
    struct F_Uc_Ip lv = { .v1 = 0.875, .v2 = 40, .v3 = 0 };
    return lv;
}
int zig_assert_F_Uc_Ip(struct F_Uc_Ip);
int send_F_Uc_Ip(){
    return zig_assert_F_Uc_Ip(ret_F_Uc_Ip());
}
struct F_Uc_Ip zig_ret_F_Uc_Ip();
int assert_ret_F_Uc_Ip(){
    return assert_F_Uc_Ip(zig_ret_F_Uc_Ip());
}

int assert_F_Uc_L(struct F_Uc_L lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 64) err = 2;
  if (lv.v3 != 26076) err = 3;
  return err;
}
struct F_Uc_L ret_F_Uc_L(){
    struct F_Uc_L lv = { .v1 = 7.0, .v2 = 64, .v3 = 26076 };
    return lv;
}
int zig_assert_F_Uc_L(struct F_Uc_L);
int send_F_Uc_L(){
    return zig_assert_F_Uc_L(ret_F_Uc_L());
}
struct F_Uc_L zig_ret_F_Uc_L();
int assert_ret_F_Uc_L(){
    return assert_F_Uc_L(zig_ret_F_Uc_L());
}

int assert_F_Uc_S(struct F_Uc_S lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 115) err = 2;
  if (lv.v3 != 32111) err = 3;
  return err;
}
struct F_Uc_S ret_F_Uc_S(){
    struct F_Uc_S lv = { .v1 = 4.5, .v2 = 115, .v3 = 32111 };
    return lv;
}
int zig_assert_F_Uc_S(struct F_Uc_S);
int send_F_Uc_S(){
    return zig_assert_F_Uc_S(ret_F_Uc_S());
}
struct F_Uc_S zig_ret_F_Uc_S();
int assert_ret_F_Uc_S(){
    return assert_F_Uc_S(zig_ret_F_Uc_S());
}

int assert_F_Uc_Uc(struct F_Uc_Uc lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 2) err = 2;
  if (lv.v3 != 27) err = 3;
  return err;
}
struct F_Uc_Uc ret_F_Uc_Uc(){
    struct F_Uc_Uc lv = { .v1 = -2.125, .v2 = 2, .v3 = 27 };
    return lv;
}
int zig_assert_F_Uc_Uc(struct F_Uc_Uc);
int send_F_Uc_Uc(){
    return zig_assert_F_Uc_Uc(ret_F_Uc_Uc());
}
struct F_Uc_Uc zig_ret_F_Uc_Uc();
int assert_ret_F_Uc_Uc(){
    return assert_F_Uc_Uc(zig_ret_F_Uc_Uc());
}

int assert_F_Uc_Ui(struct F_Uc_Ui lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 12) err = 2;
  if (lv.v3 != 25869) err = 3;
  return err;
}
struct F_Uc_Ui ret_F_Uc_Ui(){
    struct F_Uc_Ui lv = { .v1 = 1.0, .v2 = 12, .v3 = 25869 };
    return lv;
}
int zig_assert_F_Uc_Ui(struct F_Uc_Ui);
int send_F_Uc_Ui(){
    return zig_assert_F_Uc_Ui(ret_F_Uc_Ui());
}
struct F_Uc_Ui zig_ret_F_Uc_Ui();
int assert_ret_F_Uc_Ui(){
    return assert_F_Uc_Ui(zig_ret_F_Uc_Ui());
}

int assert_F_Uc_Ul(struct F_Uc_Ul lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 92) err = 2;
  if (lv.v3 != 22425) err = 3;
  return err;
}
struct F_Uc_Ul ret_F_Uc_Ul(){
    struct F_Uc_Ul lv = { .v1 = 7.0, .v2 = 92, .v3 = 22425 };
    return lv;
}
int zig_assert_F_Uc_Ul(struct F_Uc_Ul);
int send_F_Uc_Ul(){
    return zig_assert_F_Uc_Ul(ret_F_Uc_Ul());
}
struct F_Uc_Ul zig_ret_F_Uc_Ul();
int assert_ret_F_Uc_Ul(){
    return assert_F_Uc_Ul(zig_ret_F_Uc_Ul());
}

int assert_F_Uc_Us(struct F_Uc_Us lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 45) err = 2;
  if (lv.v3 != 2721) err = 3;
  return err;
}
struct F_Uc_Us ret_F_Uc_Us(){
    struct F_Uc_Us lv = { .v1 = 0.5, .v2 = 45, .v3 = 2721 };
    return lv;
}
int zig_assert_F_Uc_Us(struct F_Uc_Us);
int send_F_Uc_Us(){
    return zig_assert_F_Uc_Us(ret_F_Uc_Us());
}
struct F_Uc_Us zig_ret_F_Uc_Us();
int assert_ret_F_Uc_Us(){
    return assert_F_Uc_Us(zig_ret_F_Uc_Us());
}

int assert_F_Uc_Vp(struct F_Uc_Vp lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 68) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Uc_Vp ret_F_Uc_Vp(){
    struct F_Uc_Vp lv = { .v1 = -0.25, .v2 = 68, .v3 = 0 };
    return lv;
}
int zig_assert_F_Uc_Vp(struct F_Uc_Vp);
int send_F_Uc_Vp(){
    return zig_assert_F_Uc_Vp(ret_F_Uc_Vp());
}
struct F_Uc_Vp zig_ret_F_Uc_Vp();
int assert_ret_F_Uc_Vp(){
    return assert_F_Uc_Vp(zig_ret_F_Uc_Vp());
}

int assert_F_Ui(struct F_Ui lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 27782) err = 2;
  return err;
}
struct F_Ui ret_F_Ui(){
    struct F_Ui lv = { .v1 = 4.5, .v2 = 27782 };
    return lv;
}
int zig_assert_F_Ui(struct F_Ui);
int send_F_Ui(){
    return zig_assert_F_Ui(ret_F_Ui());
}
struct F_Ui zig_ret_F_Ui();
int assert_ret_F_Ui(){
    return assert_F_Ui(zig_ret_F_Ui());
}

int assert_F_Ui_C(struct F_Ui_C lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 26810) err = 2;
  if (lv.v3 != 15) err = 3;
  return err;
}
struct F_Ui_C ret_F_Ui_C(){
    struct F_Ui_C lv = { .v1 = 4.5, .v2 = 26810, .v3 = 15 };
    return lv;
}
int zig_assert_F_Ui_C(struct F_Ui_C);
int send_F_Ui_C(){
    return zig_assert_F_Ui_C(ret_F_Ui_C());
}
struct F_Ui_C zig_ret_F_Ui_C();
int assert_ret_F_Ui_C(){
    return assert_F_Ui_C(zig_ret_F_Ui_C());
}

int assert_F_Ui_D(struct F_Ui_D lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 18724) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct F_Ui_D ret_F_Ui_D(){
    struct F_Ui_D lv = { .v1 = 7.0, .v2 = 18724, .v3 = 1.0 };
    return lv;
}
int zig_assert_F_Ui_D(struct F_Ui_D);
int send_F_Ui_D(){
    return zig_assert_F_Ui_D(ret_F_Ui_D());
}
struct F_Ui_D zig_ret_F_Ui_D();
int assert_ret_F_Ui_D(){
    return assert_F_Ui_D(zig_ret_F_Ui_D());
}

int assert_F_Ui_F(struct F_Ui_F lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 5603) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct F_Ui_F ret_F_Ui_F(){
    struct F_Ui_F lv = { .v1 = -0.25, .v2 = 5603, .v3 = 0.5 };
    return lv;
}
int zig_assert_F_Ui_F(struct F_Ui_F);
int send_F_Ui_F(){
    return zig_assert_F_Ui_F(ret_F_Ui_F());
}
struct F_Ui_F zig_ret_F_Ui_F();
int assert_ret_F_Ui_F(){
    return assert_F_Ui_F(zig_ret_F_Ui_F());
}

int assert_F_Ui_I(struct F_Ui_I lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 7194) err = 2;
  if (lv.v3 != 6964) err = 3;
  return err;
}
struct F_Ui_I ret_F_Ui_I(){
    struct F_Ui_I lv = { .v1 = -2.125, .v2 = 7194, .v3 = 6964 };
    return lv;
}
int zig_assert_F_Ui_I(struct F_Ui_I);
int send_F_Ui_I(){
    return zig_assert_F_Ui_I(ret_F_Ui_I());
}
struct F_Ui_I zig_ret_F_Ui_I();
int assert_ret_F_Ui_I(){
    return assert_F_Ui_I(zig_ret_F_Ui_I());
}

int assert_F_Ui_Ip(struct F_Ui_Ip lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 25159) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Ui_Ip ret_F_Ui_Ip(){
    struct F_Ui_Ip lv = { .v1 = -2.125, .v2 = 25159, .v3 = 0 };
    return lv;
}
int zig_assert_F_Ui_Ip(struct F_Ui_Ip);
int send_F_Ui_Ip(){
    return zig_assert_F_Ui_Ip(ret_F_Ui_Ip());
}
struct F_Ui_Ip zig_ret_F_Ui_Ip();
int assert_ret_F_Ui_Ip(){
    return assert_F_Ui_Ip(zig_ret_F_Ui_Ip());
}

int assert_F_Ui_L(struct F_Ui_L lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 6394) err = 2;
  if (lv.v3 != 24104) err = 3;
  return err;
}
struct F_Ui_L ret_F_Ui_L(){
    struct F_Ui_L lv = { .v1 = 0.5, .v2 = 6394, .v3 = 24104 };
    return lv;
}
int zig_assert_F_Ui_L(struct F_Ui_L);
int send_F_Ui_L(){
    return zig_assert_F_Ui_L(ret_F_Ui_L());
}
struct F_Ui_L zig_ret_F_Ui_L();
int assert_ret_F_Ui_L(){
    return assert_F_Ui_L(zig_ret_F_Ui_L());
}

int assert_F_Ui_S(struct F_Ui_S lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 16310) err = 2;
  if (lv.v3 != 2152) err = 3;
  return err;
}
struct F_Ui_S ret_F_Ui_S(){
    struct F_Ui_S lv = { .v1 = 7.0, .v2 = 16310, .v3 = 2152 };
    return lv;
}
int zig_assert_F_Ui_S(struct F_Ui_S);
int send_F_Ui_S(){
    return zig_assert_F_Ui_S(ret_F_Ui_S());
}
struct F_Ui_S zig_ret_F_Ui_S();
int assert_ret_F_Ui_S(){
    return assert_F_Ui_S(zig_ret_F_Ui_S());
}

int assert_F_Ui_Uc(struct F_Ui_Uc lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 31933) err = 2;
  if (lv.v3 != 84) err = 3;
  return err;
}
struct F_Ui_Uc ret_F_Ui_Uc(){
    struct F_Ui_Uc lv = { .v1 = 0.5, .v2 = 31933, .v3 = 84 };
    return lv;
}
int zig_assert_F_Ui_Uc(struct F_Ui_Uc);
int send_F_Ui_Uc(){
    return zig_assert_F_Ui_Uc(ret_F_Ui_Uc());
}
struct F_Ui_Uc zig_ret_F_Ui_Uc();
int assert_ret_F_Ui_Uc(){
    return assert_F_Ui_Uc(zig_ret_F_Ui_Uc());
}

int assert_F_Ui_Ui(struct F_Ui_Ui lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 21258) err = 2;
  if (lv.v3 != 27470) err = 3;
  return err;
}
struct F_Ui_Ui ret_F_Ui_Ui(){
    struct F_Ui_Ui lv = { .v1 = 1.0, .v2 = 21258, .v3 = 27470 };
    return lv;
}
int zig_assert_F_Ui_Ui(struct F_Ui_Ui);
int send_F_Ui_Ui(){
    return zig_assert_F_Ui_Ui(ret_F_Ui_Ui());
}
struct F_Ui_Ui zig_ret_F_Ui_Ui();
int assert_ret_F_Ui_Ui(){
    return assert_F_Ui_Ui(zig_ret_F_Ui_Ui());
}

int assert_F_Ui_Ul(struct F_Ui_Ul lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 2270) err = 2;
  if (lv.v3 != 24341) err = 3;
  return err;
}
struct F_Ui_Ul ret_F_Ui_Ul(){
    struct F_Ui_Ul lv = { .v1 = -2.125, .v2 = 2270, .v3 = 24341 };
    return lv;
}
int zig_assert_F_Ui_Ul(struct F_Ui_Ul);
int send_F_Ui_Ul(){
    return zig_assert_F_Ui_Ul(ret_F_Ui_Ul());
}
struct F_Ui_Ul zig_ret_F_Ui_Ul();
int assert_ret_F_Ui_Ul(){
    return assert_F_Ui_Ul(zig_ret_F_Ui_Ul());
}

int assert_F_Ui_Us(struct F_Ui_Us lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 26884) err = 2;
  if (lv.v3 != 20081) err = 3;
  return err;
}
struct F_Ui_Us ret_F_Ui_Us(){
    struct F_Ui_Us lv = { .v1 = -2.125, .v2 = 26884, .v3 = 20081 };
    return lv;
}
int zig_assert_F_Ui_Us(struct F_Ui_Us);
int send_F_Ui_Us(){
    return zig_assert_F_Ui_Us(ret_F_Ui_Us());
}
struct F_Ui_Us zig_ret_F_Ui_Us();
int assert_ret_F_Ui_Us(){
    return assert_F_Ui_Us(zig_ret_F_Ui_Us());
}

int assert_F_Ui_Vp(struct F_Ui_Vp lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 29111) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Ui_Vp ret_F_Ui_Vp(){
    struct F_Ui_Vp lv = { .v1 = 0.875, .v2 = 29111, .v3 = 0 };
    return lv;
}
int zig_assert_F_Ui_Vp(struct F_Ui_Vp);
int send_F_Ui_Vp(){
    return zig_assert_F_Ui_Vp(ret_F_Ui_Vp());
}
struct F_Ui_Vp zig_ret_F_Ui_Vp();
int assert_ret_F_Ui_Vp(){
    return assert_F_Ui_Vp(zig_ret_F_Ui_Vp());
}

int assert_F_Ul(struct F_Ul lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 502) err = 2;
  return err;
}
struct F_Ul ret_F_Ul(){
    struct F_Ul lv = { .v1 = 7.0, .v2 = 502 };
    return lv;
}
int zig_assert_F_Ul(struct F_Ul);
int send_F_Ul(){
    return zig_assert_F_Ul(ret_F_Ul());
}
struct F_Ul zig_ret_F_Ul();
int assert_ret_F_Ul(){
    return assert_F_Ul(zig_ret_F_Ul());
}

int assert_F_Ul_C(struct F_Ul_C lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 16763) err = 2;
  if (lv.v3 != 7) err = 3;
  return err;
}
struct F_Ul_C ret_F_Ul_C(){
    struct F_Ul_C lv = { .v1 = 1.0, .v2 = 16763, .v3 = 7 };
    return lv;
}
int zig_assert_F_Ul_C(struct F_Ul_C);
int send_F_Ul_C(){
    return zig_assert_F_Ul_C(ret_F_Ul_C());
}
struct F_Ul_C zig_ret_F_Ul_C();
int assert_ret_F_Ul_C(){
    return assert_F_Ul_C(zig_ret_F_Ul_C());
}

int assert_F_Ul_D(struct F_Ul_D lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 5788) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct F_Ul_D ret_F_Ul_D(){
    struct F_Ul_D lv = { .v1 = 0.875, .v2 = 5788, .v3 = 7.0 };
    return lv;
}
int zig_assert_F_Ul_D(struct F_Ul_D);
int send_F_Ul_D(){
    return zig_assert_F_Ul_D(ret_F_Ul_D());
}
struct F_Ul_D zig_ret_F_Ul_D();
int assert_ret_F_Ul_D(){
    return assert_F_Ul_D(zig_ret_F_Ul_D());
}

int assert_F_Ul_F(struct F_Ul_F lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 13617) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct F_Ul_F ret_F_Ul_F(){
    struct F_Ul_F lv = { .v1 = -0.25, .v2 = 13617, .v3 = 0.875 };
    return lv;
}
int zig_assert_F_Ul_F(struct F_Ul_F);
int send_F_Ul_F(){
    return zig_assert_F_Ul_F(ret_F_Ul_F());
}
struct F_Ul_F zig_ret_F_Ul_F();
int assert_ret_F_Ul_F(){
    return assert_F_Ul_F(zig_ret_F_Ul_F());
}

int assert_F_Ul_I(struct F_Ul_I lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 4234) err = 2;
  if (lv.v3 != 27107) err = 3;
  return err;
}
struct F_Ul_I ret_F_Ul_I(){
    struct F_Ul_I lv = { .v1 = 7.0, .v2 = 4234, .v3 = 27107 };
    return lv;
}
int zig_assert_F_Ul_I(struct F_Ul_I);
int send_F_Ul_I(){
    return zig_assert_F_Ul_I(ret_F_Ul_I());
}
struct F_Ul_I zig_ret_F_Ul_I();
int assert_ret_F_Ul_I(){
    return assert_F_Ul_I(zig_ret_F_Ul_I());
}

int assert_F_Ul_Ip(struct F_Ul_Ip lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 18940) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Ul_Ip ret_F_Ul_Ip(){
    struct F_Ul_Ip lv = { .v1 = -2.125, .v2 = 18940, .v3 = 0 };
    return lv;
}
int zig_assert_F_Ul_Ip(struct F_Ul_Ip);
int send_F_Ul_Ip(){
    return zig_assert_F_Ul_Ip(ret_F_Ul_Ip());
}
struct F_Ul_Ip zig_ret_F_Ul_Ip();
int assert_ret_F_Ul_Ip(){
    return assert_F_Ul_Ip(zig_ret_F_Ul_Ip());
}

int assert_F_Ul_L(struct F_Ul_L lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 2524) err = 2;
  if (lv.v3 != 1186) err = 3;
  return err;
}
struct F_Ul_L ret_F_Ul_L(){
    struct F_Ul_L lv = { .v1 = 7.0, .v2 = 2524, .v3 = 1186 };
    return lv;
}
int zig_assert_F_Ul_L(struct F_Ul_L);
int send_F_Ul_L(){
    return zig_assert_F_Ul_L(ret_F_Ul_L());
}
struct F_Ul_L zig_ret_F_Ul_L();
int assert_ret_F_Ul_L(){
    return assert_F_Ul_L(zig_ret_F_Ul_L());
}

int assert_F_Ul_S(struct F_Ul_S lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 21773) err = 2;
  if (lv.v3 != 17719) err = 3;
  return err;
}
struct F_Ul_S ret_F_Ul_S(){
    struct F_Ul_S lv = { .v1 = 0.5, .v2 = 21773, .v3 = 17719 };
    return lv;
}
int zig_assert_F_Ul_S(struct F_Ul_S);
int send_F_Ul_S(){
    return zig_assert_F_Ul_S(ret_F_Ul_S());
}
struct F_Ul_S zig_ret_F_Ul_S();
int assert_ret_F_Ul_S(){
    return assert_F_Ul_S(zig_ret_F_Ul_S());
}

int assert_F_Ul_Uc(struct F_Ul_Uc lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 25283) err = 2;
  if (lv.v3 != 93) err = 3;
  return err;
}
struct F_Ul_Uc ret_F_Ul_Uc(){
    struct F_Ul_Uc lv = { .v1 = 7.0, .v2 = 25283, .v3 = 93 };
    return lv;
}
int zig_assert_F_Ul_Uc(struct F_Ul_Uc);
int send_F_Ul_Uc(){
    return zig_assert_F_Ul_Uc(ret_F_Ul_Uc());
}
struct F_Ul_Uc zig_ret_F_Ul_Uc();
int assert_ret_F_Ul_Uc(){
    return assert_F_Ul_Uc(zig_ret_F_Ul_Uc());
}

int assert_F_Ul_Ui(struct F_Ul_Ui lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 24342) err = 2;
  if (lv.v3 != 20594) err = 3;
  return err;
}
struct F_Ul_Ui ret_F_Ul_Ui(){
    struct F_Ul_Ui lv = { .v1 = 7.0, .v2 = 24342, .v3 = 20594 };
    return lv;
}
int zig_assert_F_Ul_Ui(struct F_Ul_Ui);
int send_F_Ul_Ui(){
    return zig_assert_F_Ul_Ui(ret_F_Ul_Ui());
}
struct F_Ul_Ui zig_ret_F_Ul_Ui();
int assert_ret_F_Ul_Ui(){
    return assert_F_Ul_Ui(zig_ret_F_Ul_Ui());
}

int assert_F_Ul_Ul(struct F_Ul_Ul lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 31964) err = 2;
  if (lv.v3 != 4612) err = 3;
  return err;
}
struct F_Ul_Ul ret_F_Ul_Ul(){
    struct F_Ul_Ul lv = { .v1 = -2.125, .v2 = 31964, .v3 = 4612 };
    return lv;
}
int zig_assert_F_Ul_Ul(struct F_Ul_Ul);
int send_F_Ul_Ul(){
    return zig_assert_F_Ul_Ul(ret_F_Ul_Ul());
}
struct F_Ul_Ul zig_ret_F_Ul_Ul();
int assert_ret_F_Ul_Ul(){
    return assert_F_Ul_Ul(zig_ret_F_Ul_Ul());
}

int assert_F_Ul_Us(struct F_Ul_Us lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 4378) err = 2;
  if (lv.v3 != 28649) err = 3;
  return err;
}
struct F_Ul_Us ret_F_Ul_Us(){
    struct F_Ul_Us lv = { .v1 = 1.0, .v2 = 4378, .v3 = 28649 };
    return lv;
}
int zig_assert_F_Ul_Us(struct F_Ul_Us);
int send_F_Ul_Us(){
    return zig_assert_F_Ul_Us(ret_F_Ul_Us());
}
struct F_Ul_Us zig_ret_F_Ul_Us();
int assert_ret_F_Ul_Us(){
    return assert_F_Ul_Us(zig_ret_F_Ul_Us());
}

int assert_F_Ul_Vp(struct F_Ul_Vp lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 16097) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Ul_Vp ret_F_Ul_Vp(){
    struct F_Ul_Vp lv = { .v1 = 0.5, .v2 = 16097, .v3 = 0 };
    return lv;
}
int zig_assert_F_Ul_Vp(struct F_Ul_Vp);
int send_F_Ul_Vp(){
    return zig_assert_F_Ul_Vp(ret_F_Ul_Vp());
}
struct F_Ul_Vp zig_ret_F_Ul_Vp();
int assert_ret_F_Ul_Vp(){
    return assert_F_Ul_Vp(zig_ret_F_Ul_Vp());
}

int assert_F_Us(struct F_Us lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 27623) err = 2;
  return err;
}
struct F_Us ret_F_Us(){
    struct F_Us lv = { .v1 = 4.5, .v2 = 27623 };
    return lv;
}
int zig_assert_F_Us(struct F_Us);
int send_F_Us(){
    return zig_assert_F_Us(ret_F_Us());
}
struct F_Us zig_ret_F_Us();
int assert_ret_F_Us(){
    return assert_F_Us(zig_ret_F_Us());
}

int assert_F_Us_C(struct F_Us_C lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 9824) err = 2;
  if (lv.v3 != 22) err = 3;
  return err;
}
struct F_Us_C ret_F_Us_C(){
    struct F_Us_C lv = { .v1 = 0.5, .v2 = 9824, .v3 = 22 };
    return lv;
}
int zig_assert_F_Us_C(struct F_Us_C);
int send_F_Us_C(){
    return zig_assert_F_Us_C(ret_F_Us_C());
}
struct F_Us_C zig_ret_F_Us_C();
int assert_ret_F_Us_C(){
    return assert_F_Us_C(zig_ret_F_Us_C());
}

int assert_F_Us_D(struct F_Us_D lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 17509) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct F_Us_D ret_F_Us_D(){
    struct F_Us_D lv = { .v1 = 7.0, .v2 = 17509, .v3 = 0.5 };
    return lv;
}
int zig_assert_F_Us_D(struct F_Us_D);
int send_F_Us_D(){
    return zig_assert_F_Us_D(ret_F_Us_D());
}
struct F_Us_D zig_ret_F_Us_D();
int assert_ret_F_Us_D(){
    return assert_F_Us_D(zig_ret_F_Us_D());
}

int assert_F_Us_F(struct F_Us_F lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 32668) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct F_Us_F ret_F_Us_F(){
    struct F_Us_F lv = { .v1 = 4.5, .v2 = 32668, .v3 = 4.5 };
    return lv;
}
int zig_assert_F_Us_F(struct F_Us_F);
int send_F_Us_F(){
    return zig_assert_F_Us_F(ret_F_Us_F());
}
struct F_Us_F zig_ret_F_Us_F();
int assert_ret_F_Us_F(){
    return assert_F_Us_F(zig_ret_F_Us_F());
}

int assert_F_Us_I(struct F_Us_I lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 25895) err = 2;
  if (lv.v3 != 32572) err = 3;
  return err;
}
struct F_Us_I ret_F_Us_I(){
    struct F_Us_I lv = { .v1 = 0.5, .v2 = 25895, .v3 = 32572 };
    return lv;
}
int zig_assert_F_Us_I(struct F_Us_I);
int send_F_Us_I(){
    return zig_assert_F_Us_I(ret_F_Us_I());
}
struct F_Us_I zig_ret_F_Us_I();
int assert_ret_F_Us_I(){
    return assert_F_Us_I(zig_ret_F_Us_I());
}

int assert_F_Us_Ip(struct F_Us_Ip lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 31390) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Us_Ip ret_F_Us_Ip(){
    struct F_Us_Ip lv = { .v1 = 0.875, .v2 = 31390, .v3 = 0 };
    return lv;
}
int zig_assert_F_Us_Ip(struct F_Us_Ip);
int send_F_Us_Ip(){
    return zig_assert_F_Us_Ip(ret_F_Us_Ip());
}
struct F_Us_Ip zig_ret_F_Us_Ip();
int assert_ret_F_Us_Ip(){
    return assert_F_Us_Ip(zig_ret_F_Us_Ip());
}

int assert_F_Us_L(struct F_Us_L lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 13124) err = 2;
  if (lv.v3 != 14055) err = 3;
  return err;
}
struct F_Us_L ret_F_Us_L(){
    struct F_Us_L lv = { .v1 = 7.0, .v2 = 13124, .v3 = 14055 };
    return lv;
}
int zig_assert_F_Us_L(struct F_Us_L);
int send_F_Us_L(){
    return zig_assert_F_Us_L(ret_F_Us_L());
}
struct F_Us_L zig_ret_F_Us_L();
int assert_ret_F_Us_L(){
    return assert_F_Us_L(zig_ret_F_Us_L());
}

int assert_F_Us_S(struct F_Us_S lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 26736) err = 2;
  if (lv.v3 != 24374) err = 3;
  return err;
}
struct F_Us_S ret_F_Us_S(){
    struct F_Us_S lv = { .v1 = 7.0, .v2 = 26736, .v3 = 24374 };
    return lv;
}
int zig_assert_F_Us_S(struct F_Us_S);
int send_F_Us_S(){
    return zig_assert_F_Us_S(ret_F_Us_S());
}
struct F_Us_S zig_ret_F_Us_S();
int assert_ret_F_Us_S(){
    return assert_F_Us_S(zig_ret_F_Us_S());
}

int assert_F_Us_Uc(struct F_Us_Uc lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 1879) err = 2;
  if (lv.v3 != 8) err = 3;
  return err;
}
struct F_Us_Uc ret_F_Us_Uc(){
    struct F_Us_Uc lv = { .v1 = 0.875, .v2 = 1879, .v3 = 8 };
    return lv;
}
int zig_assert_F_Us_Uc(struct F_Us_Uc);
int send_F_Us_Uc(){
    return zig_assert_F_Us_Uc(ret_F_Us_Uc());
}
struct F_Us_Uc zig_ret_F_Us_Uc();
int assert_ret_F_Us_Uc(){
    return assert_F_Us_Uc(zig_ret_F_Us_Uc());
}

int assert_F_Us_Ui(struct F_Us_Ui lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 15041) err = 2;
  if (lv.v3 != 1344) err = 3;
  return err;
}
struct F_Us_Ui ret_F_Us_Ui(){
    struct F_Us_Ui lv = { .v1 = 0.875, .v2 = 15041, .v3 = 1344 };
    return lv;
}
int zig_assert_F_Us_Ui(struct F_Us_Ui);
int send_F_Us_Ui(){
    return zig_assert_F_Us_Ui(ret_F_Us_Ui());
}
struct F_Us_Ui zig_ret_F_Us_Ui();
int assert_ret_F_Us_Ui(){
    return assert_F_Us_Ui(zig_ret_F_Us_Ui());
}

int assert_F_Us_Ul(struct F_Us_Ul lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 15873) err = 2;
  if (lv.v3 != 13395) err = 3;
  return err;
}
struct F_Us_Ul ret_F_Us_Ul(){
    struct F_Us_Ul lv = { .v1 = 1.0, .v2 = 15873, .v3 = 13395 };
    return lv;
}
int zig_assert_F_Us_Ul(struct F_Us_Ul);
int send_F_Us_Ul(){
    return zig_assert_F_Us_Ul(ret_F_Us_Ul());
}
struct F_Us_Ul zig_ret_F_Us_Ul();
int assert_ret_F_Us_Ul(){
    return assert_F_Us_Ul(zig_ret_F_Us_Ul());
}

int assert_F_Us_Us(struct F_Us_Us lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 19507) err = 2;
  if (lv.v3 != 32357) err = 3;
  return err;
}
struct F_Us_Us ret_F_Us_Us(){
    struct F_Us_Us lv = { .v1 = 4.5, .v2 = 19507, .v3 = 32357 };
    return lv;
}
int zig_assert_F_Us_Us(struct F_Us_Us);
int send_F_Us_Us(){
    return zig_assert_F_Us_Us(ret_F_Us_Us());
}
struct F_Us_Us zig_ret_F_Us_Us();
int assert_ret_F_Us_Us(){
    return assert_F_Us_Us(zig_ret_F_Us_Us());
}

int assert_F_Us_Vp(struct F_Us_Vp lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 14866) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Us_Vp ret_F_Us_Vp(){
    struct F_Us_Vp lv = { .v1 = -2.125, .v2 = 14866, .v3 = 0 };
    return lv;
}
int zig_assert_F_Us_Vp(struct F_Us_Vp);
int send_F_Us_Vp(){
    return zig_assert_F_Us_Vp(ret_F_Us_Vp());
}
struct F_Us_Vp zig_ret_F_Us_Vp();
int assert_ret_F_Us_Vp(){
    return assert_F_Us_Vp(zig_ret_F_Us_Vp());
}

int assert_F_Vp(struct F_Vp lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct F_Vp ret_F_Vp(){
    struct F_Vp lv = { .v1 = -2.125, .v2 = 0 };
    return lv;
}
int zig_assert_F_Vp(struct F_Vp);
int send_F_Vp(){
    return zig_assert_F_Vp(ret_F_Vp());
}
struct F_Vp zig_ret_F_Vp();
int assert_ret_F_Vp(){
    return assert_F_Vp(zig_ret_F_Vp());
}

int assert_F_Vp_C(struct F_Vp_C lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 77) err = 3;
  return err;
}
struct F_Vp_C ret_F_Vp_C(){
    struct F_Vp_C lv = { .v1 = 0.875, .v2 = 0, .v3 = 77 };
    return lv;
}
int zig_assert_F_Vp_C(struct F_Vp_C);
int send_F_Vp_C(){
    return zig_assert_F_Vp_C(ret_F_Vp_C());
}
struct F_Vp_C zig_ret_F_Vp_C();
int assert_ret_F_Vp_C(){
    return assert_F_Vp_C(zig_ret_F_Vp_C());
}

int assert_F_Vp_D(struct F_Vp_D lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct F_Vp_D ret_F_Vp_D(){
    struct F_Vp_D lv = { .v1 = -0.25, .v2 = 0, .v3 = 7.0 };
    return lv;
}
int zig_assert_F_Vp_D(struct F_Vp_D);
int send_F_Vp_D(){
    return zig_assert_F_Vp_D(ret_F_Vp_D());
}
struct F_Vp_D zig_ret_F_Vp_D();
int assert_ret_F_Vp_D(){
    return assert_F_Vp_D(zig_ret_F_Vp_D());
}

int assert_F_Vp_F(struct F_Vp_F lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct F_Vp_F ret_F_Vp_F(){
    struct F_Vp_F lv = { .v1 = -0.25, .v2 = 0, .v3 = 7.0 };
    return lv;
}
int zig_assert_F_Vp_F(struct F_Vp_F);
int send_F_Vp_F(){
    return zig_assert_F_Vp_F(ret_F_Vp_F());
}
struct F_Vp_F zig_ret_F_Vp_F();
int assert_ret_F_Vp_F(){
    return assert_F_Vp_F(zig_ret_F_Vp_F());
}

int assert_F_Vp_I(struct F_Vp_I lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 5405) err = 3;
  return err;
}
struct F_Vp_I ret_F_Vp_I(){
    struct F_Vp_I lv = { .v1 = 0.875, .v2 = 0, .v3 = 5405 };
    return lv;
}
int zig_assert_F_Vp_I(struct F_Vp_I);
int send_F_Vp_I(){
    return zig_assert_F_Vp_I(ret_F_Vp_I());
}
struct F_Vp_I zig_ret_F_Vp_I();
int assert_ret_F_Vp_I(){
    return assert_F_Vp_I(zig_ret_F_Vp_I());
}

int assert_F_Vp_Ip(struct F_Vp_Ip lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Vp_Ip ret_F_Vp_Ip(){
    struct F_Vp_Ip lv = { .v1 = 1.0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_F_Vp_Ip(struct F_Vp_Ip);
int send_F_Vp_Ip(){
    return zig_assert_F_Vp_Ip(ret_F_Vp_Ip());
}
struct F_Vp_Ip zig_ret_F_Vp_Ip();
int assert_ret_F_Vp_Ip(){
    return assert_F_Vp_Ip(zig_ret_F_Vp_Ip());
}

int assert_F_Vp_L(struct F_Vp_L lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4556) err = 3;
  return err;
}
struct F_Vp_L ret_F_Vp_L(){
    struct F_Vp_L lv = { .v1 = 7.0, .v2 = 0, .v3 = 4556 };
    return lv;
}
int zig_assert_F_Vp_L(struct F_Vp_L);
int send_F_Vp_L(){
    return zig_assert_F_Vp_L(ret_F_Vp_L());
}
struct F_Vp_L zig_ret_F_Vp_L();
int assert_ret_F_Vp_L(){
    return assert_F_Vp_L(zig_ret_F_Vp_L());
}

int assert_F_Vp_S(struct F_Vp_S lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 22690) err = 3;
  return err;
}
struct F_Vp_S ret_F_Vp_S(){
    struct F_Vp_S lv = { .v1 = 1.0, .v2 = 0, .v3 = 22690 };
    return lv;
}
int zig_assert_F_Vp_S(struct F_Vp_S);
int send_F_Vp_S(){
    return zig_assert_F_Vp_S(ret_F_Vp_S());
}
struct F_Vp_S zig_ret_F_Vp_S();
int assert_ret_F_Vp_S(){
    return assert_F_Vp_S(zig_ret_F_Vp_S());
}

int assert_F_Vp_Uc(struct F_Vp_Uc lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 6) err = 3;
  return err;
}
struct F_Vp_Uc ret_F_Vp_Uc(){
    struct F_Vp_Uc lv = { .v1 = 4.5, .v2 = 0, .v3 = 6 };
    return lv;
}
int zig_assert_F_Vp_Uc(struct F_Vp_Uc);
int send_F_Vp_Uc(){
    return zig_assert_F_Vp_Uc(ret_F_Vp_Uc());
}
struct F_Vp_Uc zig_ret_F_Vp_Uc();
int assert_ret_F_Vp_Uc(){
    return assert_F_Vp_Uc(zig_ret_F_Vp_Uc());
}

int assert_F_Vp_Ui(struct F_Vp_Ui lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 3327) err = 3;
  return err;
}
struct F_Vp_Ui ret_F_Vp_Ui(){
    struct F_Vp_Ui lv = { .v1 = -2.125, .v2 = 0, .v3 = 3327 };
    return lv;
}
int zig_assert_F_Vp_Ui(struct F_Vp_Ui);
int send_F_Vp_Ui(){
    return zig_assert_F_Vp_Ui(ret_F_Vp_Ui());
}
struct F_Vp_Ui zig_ret_F_Vp_Ui();
int assert_ret_F_Vp_Ui(){
    return assert_F_Vp_Ui(zig_ret_F_Vp_Ui());
}

int assert_F_Vp_Ul(struct F_Vp_Ul lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 21417) err = 3;
  return err;
}
struct F_Vp_Ul ret_F_Vp_Ul(){
    struct F_Vp_Ul lv = { .v1 = 0.875, .v2 = 0, .v3 = 21417 };
    return lv;
}
int zig_assert_F_Vp_Ul(struct F_Vp_Ul);
int send_F_Vp_Ul(){
    return zig_assert_F_Vp_Ul(ret_F_Vp_Ul());
}
struct F_Vp_Ul zig_ret_F_Vp_Ul();
int assert_ret_F_Vp_Ul(){
    return assert_F_Vp_Ul(zig_ret_F_Vp_Ul());
}

int assert_F_Vp_Us(struct F_Vp_Us lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 10303) err = 3;
  return err;
}
struct F_Vp_Us ret_F_Vp_Us(){
    struct F_Vp_Us lv = { .v1 = -2.125, .v2 = 0, .v3 = 10303 };
    return lv;
}
int zig_assert_F_Vp_Us(struct F_Vp_Us);
int send_F_Vp_Us(){
    return zig_assert_F_Vp_Us(ret_F_Vp_Us());
}
struct F_Vp_Us zig_ret_F_Vp_Us();
int assert_ret_F_Vp_Us(){
    return assert_F_Vp_Us(zig_ret_F_Vp_Us());
}

int assert_F_Vp_Vp(struct F_Vp_Vp lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct F_Vp_Vp ret_F_Vp_Vp(){
    struct F_Vp_Vp lv = { .v1 = 4.5, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_F_Vp_Vp(struct F_Vp_Vp);
int send_F_Vp_Vp(){
    return zig_assert_F_Vp_Vp(ret_F_Vp_Vp());
}
struct F_Vp_Vp zig_ret_F_Vp_Vp();
int assert_ret_F_Vp_Vp(){
    return assert_F_Vp_Vp(zig_ret_F_Vp_Vp());
}

int assert_I(struct I lv){
    int err = 0;
  if (lv.v1 != 17446) err = 1;
  return err;
}
struct I ret_I(){
    struct I lv = { .v1 = 17446 };
    return lv;
}
int zig_assert_I(struct I);
int send_I(){
    return zig_assert_I(ret_I());
}
struct I zig_ret_I();
int assert_ret_I(){
    return assert_I(zig_ret_I());
}

int assert_I_C(struct I_C lv){
    int err = 0;
  if (lv.v1 != 27188) err = 1;
  if (lv.v2 != 109) err = 2;
  return err;
}
struct I_C ret_I_C(){
    struct I_C lv = { .v1 = 27188, .v2 = 109 };
    return lv;
}
int zig_assert_I_C(struct I_C);
int send_I_C(){
    return zig_assert_I_C(ret_I_C());
}
struct I_C zig_ret_I_C();
int assert_ret_I_C(){
    return assert_I_C(zig_ret_I_C());
}

int assert_I_C_C(struct I_C_C lv){
    int err = 0;
  if (lv.v1 != 9281) err = 1;
  if (lv.v2 != 5) err = 2;
  if (lv.v3 != 27) err = 3;
  return err;
}
struct I_C_C ret_I_C_C(){
    struct I_C_C lv = { .v1 = 9281, .v2 = 5, .v3 = 27 };
    return lv;
}
int zig_assert_I_C_C(struct I_C_C);
int send_I_C_C(){
    return zig_assert_I_C_C(ret_I_C_C());
}
struct I_C_C zig_ret_I_C_C();
int assert_ret_I_C_C(){
    return assert_I_C_C(zig_ret_I_C_C());
}

int assert_I_C_D(struct I_C_D lv){
    int err = 0;
  if (lv.v1 != 11) err = 1;
  if (lv.v2 != 124) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct I_C_D ret_I_C_D(){
    struct I_C_D lv = { .v1 = 11, .v2 = 124, .v3 = -2.125 };
    return lv;
}
int zig_assert_I_C_D(struct I_C_D);
int send_I_C_D(){
    return zig_assert_I_C_D(ret_I_C_D());
}
struct I_C_D zig_ret_I_C_D();
int assert_ret_I_C_D(){
    return assert_I_C_D(zig_ret_I_C_D());
}

int assert_I_C_F(struct I_C_F lv){
    int err = 0;
  if (lv.v1 != 22444) err = 1;
  if (lv.v2 != 7) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct I_C_F ret_I_C_F(){
    struct I_C_F lv = { .v1 = 22444, .v2 = 7, .v3 = 0.5 };
    return lv;
}
int zig_assert_I_C_F(struct I_C_F);
int send_I_C_F(){
    return zig_assert_I_C_F(ret_I_C_F());
}
struct I_C_F zig_ret_I_C_F();
int assert_ret_I_C_F(){
    return assert_I_C_F(zig_ret_I_C_F());
}

int assert_I_C_I(struct I_C_I lv){
    int err = 0;
  if (lv.v1 != 3062) err = 1;
  if (lv.v2 != 32) err = 2;
  if (lv.v3 != 3299) err = 3;
  return err;
}
struct I_C_I ret_I_C_I(){
    struct I_C_I lv = { .v1 = 3062, .v2 = 32, .v3 = 3299 };
    return lv;
}
int zig_assert_I_C_I(struct I_C_I);
int send_I_C_I(){
    return zig_assert_I_C_I(ret_I_C_I());
}
struct I_C_I zig_ret_I_C_I();
int assert_ret_I_C_I(){
    return assert_I_C_I(zig_ret_I_C_I());
}

int assert_I_C_Ip(struct I_C_Ip lv){
    int err = 0;
  if (lv.v1 != 1006) err = 1;
  if (lv.v2 != 27) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_C_Ip ret_I_C_Ip(){
    struct I_C_Ip lv = { .v1 = 1006, .v2 = 27, .v3 = 0 };
    return lv;
}
int zig_assert_I_C_Ip(struct I_C_Ip);
int send_I_C_Ip(){
    return zig_assert_I_C_Ip(ret_I_C_Ip());
}
struct I_C_Ip zig_ret_I_C_Ip();
int assert_ret_I_C_Ip(){
    return assert_I_C_Ip(zig_ret_I_C_Ip());
}

int assert_I_C_L(struct I_C_L lv){
    int err = 0;
  if (lv.v1 != 2698) err = 1;
  if (lv.v2 != 125) err = 2;
  if (lv.v3 != 27877) err = 3;
  return err;
}
struct I_C_L ret_I_C_L(){
    struct I_C_L lv = { .v1 = 2698, .v2 = 125, .v3 = 27877 };
    return lv;
}
int zig_assert_I_C_L(struct I_C_L);
int send_I_C_L(){
    return zig_assert_I_C_L(ret_I_C_L());
}
struct I_C_L zig_ret_I_C_L();
int assert_ret_I_C_L(){
    return assert_I_C_L(zig_ret_I_C_L());
}

int assert_I_C_S(struct I_C_S lv){
    int err = 0;
  if (lv.v1 != 8815) err = 1;
  if (lv.v2 != 126) err = 2;
  if (lv.v3 != 10343) err = 3;
  return err;
}
struct I_C_S ret_I_C_S(){
    struct I_C_S lv = { .v1 = 8815, .v2 = 126, .v3 = 10343 };
    return lv;
}
int zig_assert_I_C_S(struct I_C_S);
int send_I_C_S(){
    return zig_assert_I_C_S(ret_I_C_S());
}
struct I_C_S zig_ret_I_C_S();
int assert_ret_I_C_S(){
    return assert_I_C_S(zig_ret_I_C_S());
}

int assert_I_C_Uc(struct I_C_Uc lv){
    int err = 0;
  if (lv.v1 != 9659) err = 1;
  if (lv.v2 != 11) err = 2;
  if (lv.v3 != 95) err = 3;
  return err;
}
struct I_C_Uc ret_I_C_Uc(){
    struct I_C_Uc lv = { .v1 = 9659, .v2 = 11, .v3 = 95 };
    return lv;
}
int zig_assert_I_C_Uc(struct I_C_Uc);
int send_I_C_Uc(){
    return zig_assert_I_C_Uc(ret_I_C_Uc());
}
struct I_C_Uc zig_ret_I_C_Uc();
int assert_ret_I_C_Uc(){
    return assert_I_C_Uc(zig_ret_I_C_Uc());
}

int assert_I_C_Ui(struct I_C_Ui lv){
    int err = 0;
  if (lv.v1 != 12781) err = 1;
  if (lv.v2 != 106) err = 2;
  if (lv.v3 != 4108) err = 3;
  return err;
}
struct I_C_Ui ret_I_C_Ui(){
    struct I_C_Ui lv = { .v1 = 12781, .v2 = 106, .v3 = 4108 };
    return lv;
}
int zig_assert_I_C_Ui(struct I_C_Ui);
int send_I_C_Ui(){
    return zig_assert_I_C_Ui(ret_I_C_Ui());
}
struct I_C_Ui zig_ret_I_C_Ui();
int assert_ret_I_C_Ui(){
    return assert_I_C_Ui(zig_ret_I_C_Ui());
}

int assert_I_C_Ul(struct I_C_Ul lv){
    int err = 0;
  if (lv.v1 != 6776) err = 1;
  if (lv.v2 != 16) err = 2;
  if (lv.v3 != 8336) err = 3;
  return err;
}
struct I_C_Ul ret_I_C_Ul(){
    struct I_C_Ul lv = { .v1 = 6776, .v2 = 16, .v3 = 8336 };
    return lv;
}
int zig_assert_I_C_Ul(struct I_C_Ul);
int send_I_C_Ul(){
    return zig_assert_I_C_Ul(ret_I_C_Ul());
}
struct I_C_Ul zig_ret_I_C_Ul();
int assert_ret_I_C_Ul(){
    return assert_I_C_Ul(zig_ret_I_C_Ul());
}

int assert_I_C_Us(struct I_C_Us lv){
    int err = 0;
  if (lv.v1 != 9679) err = 1;
  if (lv.v2 != 50) err = 2;
  if (lv.v3 != 19135) err = 3;
  return err;
}
struct I_C_Us ret_I_C_Us(){
    struct I_C_Us lv = { .v1 = 9679, .v2 = 50, .v3 = 19135 };
    return lv;
}
int zig_assert_I_C_Us(struct I_C_Us);
int send_I_C_Us(){
    return zig_assert_I_C_Us(ret_I_C_Us());
}
struct I_C_Us zig_ret_I_C_Us();
int assert_ret_I_C_Us(){
    return assert_I_C_Us(zig_ret_I_C_Us());
}

int assert_I_C_Vp(struct I_C_Vp lv){
    int err = 0;
  if (lv.v1 != 5526) err = 1;
  if (lv.v2 != 73) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_C_Vp ret_I_C_Vp(){
    struct I_C_Vp lv = { .v1 = 5526, .v2 = 73, .v3 = 0 };
    return lv;
}
int zig_assert_I_C_Vp(struct I_C_Vp);
int send_I_C_Vp(){
    return zig_assert_I_C_Vp(ret_I_C_Vp());
}
struct I_C_Vp zig_ret_I_C_Vp();
int assert_ret_I_C_Vp(){
    return assert_I_C_Vp(zig_ret_I_C_Vp());
}

int assert_I_D(struct I_D lv){
    int err = 0;
  if (lv.v1 != 20372) err = 1;
  if (lv.v2 != -2.125) err = 2;
  return err;
}
struct I_D ret_I_D(){
    struct I_D lv = { .v1 = 20372, .v2 = -2.125 };
    return lv;
}
int zig_assert_I_D(struct I_D);
int send_I_D(){
    return zig_assert_I_D(ret_I_D());
}
struct I_D zig_ret_I_D();
int assert_ret_I_D(){
    return assert_I_D(zig_ret_I_D());
}

int assert_I_D_C(struct I_D_C lv){
    int err = 0;
  if (lv.v1 != 12641) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 101) err = 3;
  return err;
}
struct I_D_C ret_I_D_C(){
    struct I_D_C lv = { .v1 = 12641, .v2 = 0.875, .v3 = 101 };
    return lv;
}
int zig_assert_I_D_C(struct I_D_C);
int send_I_D_C(){
    return zig_assert_I_D_C(ret_I_D_C());
}
struct I_D_C zig_ret_I_D_C();
int assert_ret_I_D_C(){
    return assert_I_D_C(zig_ret_I_D_C());
}

int assert_I_D_D(struct I_D_D lv){
    int err = 0;
  if (lv.v1 != 2553) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct I_D_D ret_I_D_D(){
    struct I_D_D lv = { .v1 = 2553, .v2 = 0.875, .v3 = 0.875 };
    return lv;
}
int zig_assert_I_D_D(struct I_D_D);
int send_I_D_D(){
    return zig_assert_I_D_D(ret_I_D_D());
}
struct I_D_D zig_ret_I_D_D();
int assert_ret_I_D_D(){
    return assert_I_D_D(zig_ret_I_D_D());
}

int assert_I_D_F(struct I_D_F lv){
    int err = 0;
  if (lv.v1 != 27668) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct I_D_F ret_I_D_F(){
    struct I_D_F lv = { .v1 = 27668, .v2 = -0.25, .v3 = 7.0 };
    return lv;
}
int zig_assert_I_D_F(struct I_D_F);
int send_I_D_F(){
    return zig_assert_I_D_F(ret_I_D_F());
}
struct I_D_F zig_ret_I_D_F();
int assert_ret_I_D_F(){
    return assert_I_D_F(zig_ret_I_D_F());
}

int assert_I_D_I(struct I_D_I lv){
    int err = 0;
  if (lv.v1 != 1093) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 17976) err = 3;
  return err;
}
struct I_D_I ret_I_D_I(){
    struct I_D_I lv = { .v1 = 1093, .v2 = 7.0, .v3 = 17976 };
    return lv;
}
int zig_assert_I_D_I(struct I_D_I);
int send_I_D_I(){
    return zig_assert_I_D_I(ret_I_D_I());
}
struct I_D_I zig_ret_I_D_I();
int assert_ret_I_D_I(){
    return assert_I_D_I(zig_ret_I_D_I());
}

int assert_I_D_Ip(struct I_D_Ip lv){
    int err = 0;
  if (lv.v1 != 1902) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_D_Ip ret_I_D_Ip(){
    struct I_D_Ip lv = { .v1 = 1902, .v2 = 7.0, .v3 = 0 };
    return lv;
}
int zig_assert_I_D_Ip(struct I_D_Ip);
int send_I_D_Ip(){
    return zig_assert_I_D_Ip(ret_I_D_Ip());
}
struct I_D_Ip zig_ret_I_D_Ip();
int assert_ret_I_D_Ip(){
    return assert_I_D_Ip(zig_ret_I_D_Ip());
}

int assert_I_D_L(struct I_D_L lv){
    int err = 0;
  if (lv.v1 != 29) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 10866) err = 3;
  return err;
}
struct I_D_L ret_I_D_L(){
    struct I_D_L lv = { .v1 = 29, .v2 = 0.875, .v3 = 10866 };
    return lv;
}
int zig_assert_I_D_L(struct I_D_L);
int send_I_D_L(){
    return zig_assert_I_D_L(ret_I_D_L());
}
struct I_D_L zig_ret_I_D_L();
int assert_ret_I_D_L(){
    return assert_I_D_L(zig_ret_I_D_L());
}

int assert_I_D_S(struct I_D_S lv){
    int err = 0;
  if (lv.v1 != 21029) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 12193) err = 3;
  return err;
}
struct I_D_S ret_I_D_S(){
    struct I_D_S lv = { .v1 = 21029, .v2 = 0.5, .v3 = 12193 };
    return lv;
}
int zig_assert_I_D_S(struct I_D_S);
int send_I_D_S(){
    return zig_assert_I_D_S(ret_I_D_S());
}
struct I_D_S zig_ret_I_D_S();
int assert_ret_I_D_S(){
    return assert_I_D_S(zig_ret_I_D_S());
}

int assert_I_D_Uc(struct I_D_Uc lv){
    int err = 0;
  if (lv.v1 != 26572) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 77) err = 3;
  return err;
}
struct I_D_Uc ret_I_D_Uc(){
    struct I_D_Uc lv = { .v1 = 26572, .v2 = 0.875, .v3 = 77 };
    return lv;
}
int zig_assert_I_D_Uc(struct I_D_Uc);
int send_I_D_Uc(){
    return zig_assert_I_D_Uc(ret_I_D_Uc());
}
struct I_D_Uc zig_ret_I_D_Uc();
int assert_ret_I_D_Uc(){
    return assert_I_D_Uc(zig_ret_I_D_Uc());
}

int assert_I_D_Ui(struct I_D_Ui lv){
    int err = 0;
  if (lv.v1 != 17463) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 30633) err = 3;
  return err;
}
struct I_D_Ui ret_I_D_Ui(){
    struct I_D_Ui lv = { .v1 = 17463, .v2 = 0.5, .v3 = 30633 };
    return lv;
}
int zig_assert_I_D_Ui(struct I_D_Ui);
int send_I_D_Ui(){
    return zig_assert_I_D_Ui(ret_I_D_Ui());
}
struct I_D_Ui zig_ret_I_D_Ui();
int assert_ret_I_D_Ui(){
    return assert_I_D_Ui(zig_ret_I_D_Ui());
}

int assert_I_D_Ul(struct I_D_Ul lv){
    int err = 0;
  if (lv.v1 != 23110) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 5933) err = 3;
  return err;
}
struct I_D_Ul ret_I_D_Ul(){
    struct I_D_Ul lv = { .v1 = 23110, .v2 = 0.875, .v3 = 5933 };
    return lv;
}
int zig_assert_I_D_Ul(struct I_D_Ul);
int send_I_D_Ul(){
    return zig_assert_I_D_Ul(ret_I_D_Ul());
}
struct I_D_Ul zig_ret_I_D_Ul();
int assert_ret_I_D_Ul(){
    return assert_I_D_Ul(zig_ret_I_D_Ul());
}

int assert_I_D_Us(struct I_D_Us lv){
    int err = 0;
  if (lv.v1 != 10730) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 2491) err = 3;
  return err;
}
struct I_D_Us ret_I_D_Us(){
    struct I_D_Us lv = { .v1 = 10730, .v2 = 7.0, .v3 = 2491 };
    return lv;
}
int zig_assert_I_D_Us(struct I_D_Us);
int send_I_D_Us(){
    return zig_assert_I_D_Us(ret_I_D_Us());
}
struct I_D_Us zig_ret_I_D_Us();
int assert_ret_I_D_Us(){
    return assert_I_D_Us(zig_ret_I_D_Us());
}

int assert_I_D_Vp(struct I_D_Vp lv){
    int err = 0;
  if (lv.v1 != 16938) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_D_Vp ret_I_D_Vp(){
    struct I_D_Vp lv = { .v1 = 16938, .v2 = -0.25, .v3 = 0 };
    return lv;
}
int zig_assert_I_D_Vp(struct I_D_Vp);
int send_I_D_Vp(){
    return zig_assert_I_D_Vp(ret_I_D_Vp());
}
struct I_D_Vp zig_ret_I_D_Vp();
int assert_ret_I_D_Vp(){
    return assert_I_D_Vp(zig_ret_I_D_Vp());
}

int assert_I_F(struct I_F lv){
    int err = 0;
  if (lv.v1 != 18073) err = 1;
  if (lv.v2 != 7.0) err = 2;
  return err;
}
struct I_F ret_I_F(){
    struct I_F lv = { .v1 = 18073, .v2 = 7.0 };
    return lv;
}
int zig_assert_I_F(struct I_F);
int send_I_F(){
    return zig_assert_I_F(ret_I_F());
}
struct I_F zig_ret_I_F();
int assert_ret_I_F(){
    return assert_I_F(zig_ret_I_F());
}

int assert_I_F_C(struct I_F_C lv){
    int err = 0;
  if (lv.v1 != 22692) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 92) err = 3;
  return err;
}
struct I_F_C ret_I_F_C(){
    struct I_F_C lv = { .v1 = 22692, .v2 = 4.5, .v3 = 92 };
    return lv;
}
int zig_assert_I_F_C(struct I_F_C);
int send_I_F_C(){
    return zig_assert_I_F_C(ret_I_F_C());
}
struct I_F_C zig_ret_I_F_C();
int assert_ret_I_F_C(){
    return assert_I_F_C(zig_ret_I_F_C());
}

int assert_I_F_D(struct I_F_D lv){
    int err = 0;
  if (lv.v1 != 12941) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct I_F_D ret_I_F_D(){
    struct I_F_D lv = { .v1 = 12941, .v2 = 0.875, .v3 = 0.5 };
    return lv;
}
int zig_assert_I_F_D(struct I_F_D);
int send_I_F_D(){
    return zig_assert_I_F_D(ret_I_F_D());
}
struct I_F_D zig_ret_I_F_D();
int assert_ret_I_F_D(){
    return assert_I_F_D(zig_ret_I_F_D());
}

int assert_I_F_F(struct I_F_F lv){
    int err = 0;
  if (lv.v1 != 2124) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct I_F_F ret_I_F_F(){
    struct I_F_F lv = { .v1 = 2124, .v2 = -0.25, .v3 = 7.0 };
    return lv;
}
int zig_assert_I_F_F(struct I_F_F);
int send_I_F_F(){
    return zig_assert_I_F_F(ret_I_F_F());
}
struct I_F_F zig_ret_I_F_F();
int assert_ret_I_F_F(){
    return assert_I_F_F(zig_ret_I_F_F());
}

int assert_I_F_I(struct I_F_I lv){
    int err = 0;
  if (lv.v1 != 1040) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 3590) err = 3;
  return err;
}
struct I_F_I ret_I_F_I(){
    struct I_F_I lv = { .v1 = 1040, .v2 = -2.125, .v3 = 3590 };
    return lv;
}
int zig_assert_I_F_I(struct I_F_I);
int send_I_F_I(){
    return zig_assert_I_F_I(ret_I_F_I());
}
struct I_F_I zig_ret_I_F_I();
int assert_ret_I_F_I(){
    return assert_I_F_I(zig_ret_I_F_I());
}

int assert_I_F_Ip(struct I_F_Ip lv){
    int err = 0;
  if (lv.v1 != 5132) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_F_Ip ret_I_F_Ip(){
    struct I_F_Ip lv = { .v1 = 5132, .v2 = 0.5, .v3 = 0 };
    return lv;
}
int zig_assert_I_F_Ip(struct I_F_Ip);
int send_I_F_Ip(){
    return zig_assert_I_F_Ip(ret_I_F_Ip());
}
struct I_F_Ip zig_ret_I_F_Ip();
int assert_ret_I_F_Ip(){
    return assert_I_F_Ip(zig_ret_I_F_Ip());
}

int assert_I_F_L(struct I_F_L lv){
    int err = 0;
  if (lv.v1 != 9972) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 27944) err = 3;
  return err;
}
struct I_F_L ret_I_F_L(){
    struct I_F_L lv = { .v1 = 9972, .v2 = 7.0, .v3 = 27944 };
    return lv;
}
int zig_assert_I_F_L(struct I_F_L);
int send_I_F_L(){
    return zig_assert_I_F_L(ret_I_F_L());
}
struct I_F_L zig_ret_I_F_L();
int assert_ret_I_F_L(){
    return assert_I_F_L(zig_ret_I_F_L());
}

int assert_I_F_S(struct I_F_S lv){
    int err = 0;
  if (lv.v1 != 22732) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 27757) err = 3;
  return err;
}
struct I_F_S ret_I_F_S(){
    struct I_F_S lv = { .v1 = 22732, .v2 = 4.5, .v3 = 27757 };
    return lv;
}
int zig_assert_I_F_S(struct I_F_S);
int send_I_F_S(){
    return zig_assert_I_F_S(ret_I_F_S());
}
struct I_F_S zig_ret_I_F_S();
int assert_ret_I_F_S(){
    return assert_I_F_S(zig_ret_I_F_S());
}

int assert_I_F_Uc(struct I_F_Uc lv){
    int err = 0;
  if (lv.v1 != 2422) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 125) err = 3;
  return err;
}
struct I_F_Uc ret_I_F_Uc(){
    struct I_F_Uc lv = { .v1 = 2422, .v2 = -0.25, .v3 = 125 };
    return lv;
}
int zig_assert_I_F_Uc(struct I_F_Uc);
int send_I_F_Uc(){
    return zig_assert_I_F_Uc(ret_I_F_Uc());
}
struct I_F_Uc zig_ret_I_F_Uc();
int assert_ret_I_F_Uc(){
    return assert_I_F_Uc(zig_ret_I_F_Uc());
}

int assert_I_F_Ui(struct I_F_Ui lv){
    int err = 0;
  if (lv.v1 != 2378) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 16314) err = 3;
  return err;
}
struct I_F_Ui ret_I_F_Ui(){
    struct I_F_Ui lv = { .v1 = 2378, .v2 = 4.5, .v3 = 16314 };
    return lv;
}
int zig_assert_I_F_Ui(struct I_F_Ui);
int send_I_F_Ui(){
    return zig_assert_I_F_Ui(ret_I_F_Ui());
}
struct I_F_Ui zig_ret_I_F_Ui();
int assert_ret_I_F_Ui(){
    return assert_I_F_Ui(zig_ret_I_F_Ui());
}

int assert_I_F_Ul(struct I_F_Ul lv){
    int err = 0;
  if (lv.v1 != 32591) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 2455) err = 3;
  return err;
}
struct I_F_Ul ret_I_F_Ul(){
    struct I_F_Ul lv = { .v1 = 32591, .v2 = 7.0, .v3 = 2455 };
    return lv;
}
int zig_assert_I_F_Ul(struct I_F_Ul);
int send_I_F_Ul(){
    return zig_assert_I_F_Ul(ret_I_F_Ul());
}
struct I_F_Ul zig_ret_I_F_Ul();
int assert_ret_I_F_Ul(){
    return assert_I_F_Ul(zig_ret_I_F_Ul());
}

int assert_I_F_Us(struct I_F_Us lv){
    int err = 0;
  if (lv.v1 != 24697) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 26553) err = 3;
  return err;
}
struct I_F_Us ret_I_F_Us(){
    struct I_F_Us lv = { .v1 = 24697, .v2 = -0.25, .v3 = 26553 };
    return lv;
}
int zig_assert_I_F_Us(struct I_F_Us);
int send_I_F_Us(){
    return zig_assert_I_F_Us(ret_I_F_Us());
}
struct I_F_Us zig_ret_I_F_Us();
int assert_ret_I_F_Us(){
    return assert_I_F_Us(zig_ret_I_F_Us());
}

int assert_I_F_Vp(struct I_F_Vp lv){
    int err = 0;
  if (lv.v1 != 9459) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_F_Vp ret_I_F_Vp(){
    struct I_F_Vp lv = { .v1 = 9459, .v2 = 4.5, .v3 = 0 };
    return lv;
}
int zig_assert_I_F_Vp(struct I_F_Vp);
int send_I_F_Vp(){
    return zig_assert_I_F_Vp(ret_I_F_Vp());
}
struct I_F_Vp zig_ret_I_F_Vp();
int assert_ret_I_F_Vp(){
    return assert_I_F_Vp(zig_ret_I_F_Vp());
}

int assert_I_I(struct I_I lv){
    int err = 0;
  if (lv.v1 != 25696) err = 1;
  if (lv.v2 != 22162) err = 2;
  return err;
}
struct I_I ret_I_I(){
    struct I_I lv = { .v1 = 25696, .v2 = 22162 };
    return lv;
}
int zig_assert_I_I(struct I_I);
int send_I_I(){
    return zig_assert_I_I(ret_I_I());
}
struct I_I zig_ret_I_I();
int assert_ret_I_I(){
    return assert_I_I(zig_ret_I_I());
}

int assert_I_I_C(struct I_I_C lv){
    int err = 0;
  if (lv.v1 != 10622) err = 1;
  if (lv.v2 != 26317) err = 2;
  if (lv.v3 != 54) err = 3;
  return err;
}
struct I_I_C ret_I_I_C(){
    struct I_I_C lv = { .v1 = 10622, .v2 = 26317, .v3 = 54 };
    return lv;
}
int zig_assert_I_I_C(struct I_I_C);
int send_I_I_C(){
    return zig_assert_I_I_C(ret_I_I_C());
}
struct I_I_C zig_ret_I_I_C();
int assert_ret_I_I_C(){
    return assert_I_I_C(zig_ret_I_I_C());
}

int assert_I_I_D(struct I_I_D lv){
    int err = 0;
  if (lv.v1 != 26453) err = 1;
  if (lv.v2 != 22783) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct I_I_D ret_I_I_D(){
    struct I_I_D lv = { .v1 = 26453, .v2 = 22783, .v3 = 4.5 };
    return lv;
}
int zig_assert_I_I_D(struct I_I_D);
int send_I_I_D(){
    return zig_assert_I_I_D(ret_I_I_D());
}
struct I_I_D zig_ret_I_I_D();
int assert_ret_I_I_D(){
    return assert_I_I_D(zig_ret_I_I_D());
}

int assert_I_I_F(struct I_I_F lv){
    int err = 0;
  if (lv.v1 != 25300) err = 1;
  if (lv.v2 != 31232) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct I_I_F ret_I_I_F(){
    struct I_I_F lv = { .v1 = 25300, .v2 = 31232, .v3 = -0.25 };
    return lv;
}
int zig_assert_I_I_F(struct I_I_F);
int send_I_I_F(){
    return zig_assert_I_I_F(ret_I_I_F());
}
struct I_I_F zig_ret_I_I_F();
int assert_ret_I_I_F(){
    return assert_I_I_F(zig_ret_I_I_F());
}

int assert_I_I_I(struct I_I_I lv){
    int err = 0;
  if (lv.v1 != 27961) err = 1;
  if (lv.v2 != 24345) err = 2;
  if (lv.v3 != 24769) err = 3;
  return err;
}
struct I_I_I ret_I_I_I(){
    struct I_I_I lv = { .v1 = 27961, .v2 = 24345, .v3 = 24769 };
    return lv;
}
int zig_assert_I_I_I(struct I_I_I);
int send_I_I_I(){
    return zig_assert_I_I_I(ret_I_I_I());
}
struct I_I_I zig_ret_I_I_I();
int assert_ret_I_I_I(){
    return assert_I_I_I(zig_ret_I_I_I());
}

int assert_I_I_Ip(struct I_I_Ip lv){
    int err = 0;
  if (lv.v1 != 115) err = 1;
  if (lv.v2 != 29069) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_I_Ip ret_I_I_Ip(){
    struct I_I_Ip lv = { .v1 = 115, .v2 = 29069, .v3 = 0 };
    return lv;
}
int zig_assert_I_I_Ip(struct I_I_Ip);
int send_I_I_Ip(){
    return zig_assert_I_I_Ip(ret_I_I_Ip());
}
struct I_I_Ip zig_ret_I_I_Ip();
int assert_ret_I_I_Ip(){
    return assert_I_I_Ip(zig_ret_I_I_Ip());
}

int assert_I_I_L(struct I_I_L lv){
    int err = 0;
  if (lv.v1 != 31682) err = 1;
  if (lv.v2 != 7411) err = 2;
  if (lv.v3 != 18481) err = 3;
  return err;
}
struct I_I_L ret_I_I_L(){
    struct I_I_L lv = { .v1 = 31682, .v2 = 7411, .v3 = 18481 };
    return lv;
}
int zig_assert_I_I_L(struct I_I_L);
int send_I_I_L(){
    return zig_assert_I_I_L(ret_I_I_L());
}
struct I_I_L zig_ret_I_I_L();
int assert_ret_I_I_L(){
    return assert_I_I_L(zig_ret_I_I_L());
}

int assert_I_I_S(struct I_I_S lv){
    int err = 0;
  if (lv.v1 != 23632) err = 1;
  if (lv.v2 != 31412) err = 2;
  if (lv.v3 != 28557) err = 3;
  return err;
}
struct I_I_S ret_I_I_S(){
    struct I_I_S lv = { .v1 = 23632, .v2 = 31412, .v3 = 28557 };
    return lv;
}
int zig_assert_I_I_S(struct I_I_S);
int send_I_I_S(){
    return zig_assert_I_I_S(ret_I_I_S());
}
struct I_I_S zig_ret_I_I_S();
int assert_ret_I_I_S(){
    return assert_I_I_S(zig_ret_I_I_S());
}

int assert_I_I_Uc(struct I_I_Uc lv){
    int err = 0;
  if (lv.v1 != 10669) err = 1;
  if (lv.v2 != 23177) err = 2;
  if (lv.v3 != 84) err = 3;
  return err;
}
struct I_I_Uc ret_I_I_Uc(){
    struct I_I_Uc lv = { .v1 = 10669, .v2 = 23177, .v3 = 84 };
    return lv;
}
int zig_assert_I_I_Uc(struct I_I_Uc);
int send_I_I_Uc(){
    return zig_assert_I_I_Uc(ret_I_I_Uc());
}
struct I_I_Uc zig_ret_I_I_Uc();
int assert_ret_I_I_Uc(){
    return assert_I_I_Uc(zig_ret_I_I_Uc());
}

int assert_I_I_Ui(struct I_I_Ui lv){
    int err = 0;
  if (lv.v1 != 19858) err = 1;
  if (lv.v2 != 31111) err = 2;
  if (lv.v3 != 266) err = 3;
  return err;
}
struct I_I_Ui ret_I_I_Ui(){
    struct I_I_Ui lv = { .v1 = 19858, .v2 = 31111, .v3 = 266 };
    return lv;
}
int zig_assert_I_I_Ui(struct I_I_Ui);
int send_I_I_Ui(){
    return zig_assert_I_I_Ui(ret_I_I_Ui());
}
struct I_I_Ui zig_ret_I_I_Ui();
int assert_ret_I_I_Ui(){
    return assert_I_I_Ui(zig_ret_I_I_Ui());
}

int assert_I_I_Ul(struct I_I_Ul lv){
    int err = 0;
  if (lv.v1 != 6762) err = 1;
  if (lv.v2 != 13697) err = 2;
  if (lv.v3 != 16792) err = 3;
  return err;
}
struct I_I_Ul ret_I_I_Ul(){
    struct I_I_Ul lv = { .v1 = 6762, .v2 = 13697, .v3 = 16792 };
    return lv;
}
int zig_assert_I_I_Ul(struct I_I_Ul);
int send_I_I_Ul(){
    return zig_assert_I_I_Ul(ret_I_I_Ul());
}
struct I_I_Ul zig_ret_I_I_Ul();
int assert_ret_I_I_Ul(){
    return assert_I_I_Ul(zig_ret_I_I_Ul());
}

int assert_I_I_Us(struct I_I_Us lv){
    int err = 0;
  if (lv.v1 != 24170) err = 1;
  if (lv.v2 != 32025) err = 2;
  if (lv.v3 != 8080) err = 3;
  return err;
}
struct I_I_Us ret_I_I_Us(){
    struct I_I_Us lv = { .v1 = 24170, .v2 = 32025, .v3 = 8080 };
    return lv;
}
int zig_assert_I_I_Us(struct I_I_Us);
int send_I_I_Us(){
    return zig_assert_I_I_Us(ret_I_I_Us());
}
struct I_I_Us zig_ret_I_I_Us();
int assert_ret_I_I_Us(){
    return assert_I_I_Us(zig_ret_I_I_Us());
}

int assert_I_I_Vp(struct I_I_Vp lv){
    int err = 0;
  if (lv.v1 != 25106) err = 1;
  if (lv.v2 != 21604) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_I_Vp ret_I_I_Vp(){
    struct I_I_Vp lv = { .v1 = 25106, .v2 = 21604, .v3 = 0 };
    return lv;
}
int zig_assert_I_I_Vp(struct I_I_Vp);
int send_I_I_Vp(){
    return zig_assert_I_I_Vp(ret_I_I_Vp());
}
struct I_I_Vp zig_ret_I_I_Vp();
int assert_ret_I_I_Vp(){
    return assert_I_I_Vp(zig_ret_I_I_Vp());
}

int assert_I_Ip(struct I_Ip lv){
    int err = 0;
  if (lv.v1 != 1345) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct I_Ip ret_I_Ip(){
    struct I_Ip lv = { .v1 = 1345, .v2 = 0 };
    return lv;
}
int zig_assert_I_Ip(struct I_Ip);
int send_I_Ip(){
    return zig_assert_I_Ip(ret_I_Ip());
}
struct I_Ip zig_ret_I_Ip();
int assert_ret_I_Ip(){
    return assert_I_Ip(zig_ret_I_Ip());
}

int assert_I_Ip_C(struct I_Ip_C lv){
    int err = 0;
  if (lv.v1 != 1373) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 14) err = 3;
  return err;
}
struct I_Ip_C ret_I_Ip_C(){
    struct I_Ip_C lv = { .v1 = 1373, .v2 = 0, .v3 = 14 };
    return lv;
}
int zig_assert_I_Ip_C(struct I_Ip_C);
int send_I_Ip_C(){
    return zig_assert_I_Ip_C(ret_I_Ip_C());
}
struct I_Ip_C zig_ret_I_Ip_C();
int assert_ret_I_Ip_C(){
    return assert_I_Ip_C(zig_ret_I_Ip_C());
}

int assert_I_Ip_D(struct I_Ip_D lv){
    int err = 0;
  if (lv.v1 != 10474) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct I_Ip_D ret_I_Ip_D(){
    struct I_Ip_D lv = { .v1 = 10474, .v2 = 0, .v3 = 7.0 };
    return lv;
}
int zig_assert_I_Ip_D(struct I_Ip_D);
int send_I_Ip_D(){
    return zig_assert_I_Ip_D(ret_I_Ip_D());
}
struct I_Ip_D zig_ret_I_Ip_D();
int assert_ret_I_Ip_D(){
    return assert_I_Ip_D(zig_ret_I_Ip_D());
}

int assert_I_Ip_F(struct I_Ip_F lv){
    int err = 0;
  if (lv.v1 != 5032) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct I_Ip_F ret_I_Ip_F(){
    struct I_Ip_F lv = { .v1 = 5032, .v2 = 0, .v3 = -0.25 };
    return lv;
}
int zig_assert_I_Ip_F(struct I_Ip_F);
int send_I_Ip_F(){
    return zig_assert_I_Ip_F(ret_I_Ip_F());
}
struct I_Ip_F zig_ret_I_Ip_F();
int assert_ret_I_Ip_F(){
    return assert_I_Ip_F(zig_ret_I_Ip_F());
}

int assert_I_Ip_I(struct I_Ip_I lv){
    int err = 0;
  if (lv.v1 != 9003) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 11875) err = 3;
  return err;
}
struct I_Ip_I ret_I_Ip_I(){
    struct I_Ip_I lv = { .v1 = 9003, .v2 = 0, .v3 = 11875 };
    return lv;
}
int zig_assert_I_Ip_I(struct I_Ip_I);
int send_I_Ip_I(){
    return zig_assert_I_Ip_I(ret_I_Ip_I());
}
struct I_Ip_I zig_ret_I_Ip_I();
int assert_ret_I_Ip_I(){
    return assert_I_Ip_I(zig_ret_I_Ip_I());
}

int assert_I_Ip_Ip(struct I_Ip_Ip lv){
    int err = 0;
  if (lv.v1 != 11522) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Ip_Ip ret_I_Ip_Ip(){
    struct I_Ip_Ip lv = { .v1 = 11522, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_I_Ip_Ip(struct I_Ip_Ip);
int send_I_Ip_Ip(){
    return zig_assert_I_Ip_Ip(ret_I_Ip_Ip());
}
struct I_Ip_Ip zig_ret_I_Ip_Ip();
int assert_ret_I_Ip_Ip(){
    return assert_I_Ip_Ip(zig_ret_I_Ip_Ip());
}

int assert_I_Ip_L(struct I_Ip_L lv){
    int err = 0;
  if (lv.v1 != 12609) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 30005) err = 3;
  return err;
}
struct I_Ip_L ret_I_Ip_L(){
    struct I_Ip_L lv = { .v1 = 12609, .v2 = 0, .v3 = 30005 };
    return lv;
}
int zig_assert_I_Ip_L(struct I_Ip_L);
int send_I_Ip_L(){
    return zig_assert_I_Ip_L(ret_I_Ip_L());
}
struct I_Ip_L zig_ret_I_Ip_L();
int assert_ret_I_Ip_L(){
    return assert_I_Ip_L(zig_ret_I_Ip_L());
}

int assert_I_Ip_S(struct I_Ip_S lv){
    int err = 0;
  if (lv.v1 != 1059) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 12558) err = 3;
  return err;
}
struct I_Ip_S ret_I_Ip_S(){
    struct I_Ip_S lv = { .v1 = 1059, .v2 = 0, .v3 = 12558 };
    return lv;
}
int zig_assert_I_Ip_S(struct I_Ip_S);
int send_I_Ip_S(){
    return zig_assert_I_Ip_S(ret_I_Ip_S());
}
struct I_Ip_S zig_ret_I_Ip_S();
int assert_ret_I_Ip_S(){
    return assert_I_Ip_S(zig_ret_I_Ip_S());
}

int assert_I_Ip_Uc(struct I_Ip_Uc lv){
    int err = 0;
  if (lv.v1 != 19459) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 5) err = 3;
  return err;
}
struct I_Ip_Uc ret_I_Ip_Uc(){
    struct I_Ip_Uc lv = { .v1 = 19459, .v2 = 0, .v3 = 5 };
    return lv;
}
int zig_assert_I_Ip_Uc(struct I_Ip_Uc);
int send_I_Ip_Uc(){
    return zig_assert_I_Ip_Uc(ret_I_Ip_Uc());
}
struct I_Ip_Uc zig_ret_I_Ip_Uc();
int assert_ret_I_Ip_Uc(){
    return assert_I_Ip_Uc(zig_ret_I_Ip_Uc());
}

int assert_I_Ip_Ui(struct I_Ip_Ui lv){
    int err = 0;
  if (lv.v1 != 6589) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 18101) err = 3;
  return err;
}
struct I_Ip_Ui ret_I_Ip_Ui(){
    struct I_Ip_Ui lv = { .v1 = 6589, .v2 = 0, .v3 = 18101 };
    return lv;
}
int zig_assert_I_Ip_Ui(struct I_Ip_Ui);
int send_I_Ip_Ui(){
    return zig_assert_I_Ip_Ui(ret_I_Ip_Ui());
}
struct I_Ip_Ui zig_ret_I_Ip_Ui();
int assert_ret_I_Ip_Ui(){
    return assert_I_Ip_Ui(zig_ret_I_Ip_Ui());
}

int assert_I_Ip_Ul(struct I_Ip_Ul lv){
    int err = 0;
  if (lv.v1 != 7) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 6657) err = 3;
  return err;
}
struct I_Ip_Ul ret_I_Ip_Ul(){
    struct I_Ip_Ul lv = { .v1 = 7, .v2 = 0, .v3 = 6657 };
    return lv;
}
int zig_assert_I_Ip_Ul(struct I_Ip_Ul);
int send_I_Ip_Ul(){
    return zig_assert_I_Ip_Ul(ret_I_Ip_Ul());
}
struct I_Ip_Ul zig_ret_I_Ip_Ul();
int assert_ret_I_Ip_Ul(){
    return assert_I_Ip_Ul(zig_ret_I_Ip_Ul());
}

int assert_I_Ip_Us(struct I_Ip_Us lv){
    int err = 0;
  if (lv.v1 != 12797) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 13372) err = 3;
  return err;
}
struct I_Ip_Us ret_I_Ip_Us(){
    struct I_Ip_Us lv = { .v1 = 12797, .v2 = 0, .v3 = 13372 };
    return lv;
}
int zig_assert_I_Ip_Us(struct I_Ip_Us);
int send_I_Ip_Us(){
    return zig_assert_I_Ip_Us(ret_I_Ip_Us());
}
struct I_Ip_Us zig_ret_I_Ip_Us();
int assert_ret_I_Ip_Us(){
    return assert_I_Ip_Us(zig_ret_I_Ip_Us());
}

int assert_I_Ip_Vp(struct I_Ip_Vp lv){
    int err = 0;
  if (lv.v1 != 23149) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Ip_Vp ret_I_Ip_Vp(){
    struct I_Ip_Vp lv = { .v1 = 23149, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_I_Ip_Vp(struct I_Ip_Vp);
int send_I_Ip_Vp(){
    return zig_assert_I_Ip_Vp(ret_I_Ip_Vp());
}
struct I_Ip_Vp zig_ret_I_Ip_Vp();
int assert_ret_I_Ip_Vp(){
    return assert_I_Ip_Vp(zig_ret_I_Ip_Vp());
}

int assert_I_L(struct I_L lv){
    int err = 0;
  if (lv.v1 != 11062) err = 1;
  if (lv.v2 != 25927) err = 2;
  return err;
}
struct I_L ret_I_L(){
    struct I_L lv = { .v1 = 11062, .v2 = 25927 };
    return lv;
}
int zig_assert_I_L(struct I_L);
int send_I_L(){
    return zig_assert_I_L(ret_I_L());
}
struct I_L zig_ret_I_L();
int assert_ret_I_L(){
    return assert_I_L(zig_ret_I_L());
}

int assert_I_L_C(struct I_L_C lv){
    int err = 0;
  if (lv.v1 != 3285) err = 1;
  if (lv.v2 != 26260) err = 2;
  if (lv.v3 != 38) err = 3;
  return err;
}
struct I_L_C ret_I_L_C(){
    struct I_L_C lv = { .v1 = 3285, .v2 = 26260, .v3 = 38 };
    return lv;
}
int zig_assert_I_L_C(struct I_L_C);
int send_I_L_C(){
    return zig_assert_I_L_C(ret_I_L_C());
}
struct I_L_C zig_ret_I_L_C();
int assert_ret_I_L_C(){
    return assert_I_L_C(zig_ret_I_L_C());
}

int assert_I_L_D(struct I_L_D lv){
    int err = 0;
  if (lv.v1 != 6996) err = 1;
  if (lv.v2 != 15320) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct I_L_D ret_I_L_D(){
    struct I_L_D lv = { .v1 = 6996, .v2 = 15320, .v3 = -0.25 };
    return lv;
}
int zig_assert_I_L_D(struct I_L_D);
int send_I_L_D(){
    return zig_assert_I_L_D(ret_I_L_D());
}
struct I_L_D zig_ret_I_L_D();
int assert_ret_I_L_D(){
    return assert_I_L_D(zig_ret_I_L_D());
}

int assert_I_L_F(struct I_L_F lv){
    int err = 0;
  if (lv.v1 != 3417) err = 1;
  if (lv.v2 != 5705) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct I_L_F ret_I_L_F(){
    struct I_L_F lv = { .v1 = 3417, .v2 = 5705, .v3 = 7.0 };
    return lv;
}
int zig_assert_I_L_F(struct I_L_F);
int send_I_L_F(){
    return zig_assert_I_L_F(ret_I_L_F());
}
struct I_L_F zig_ret_I_L_F();
int assert_ret_I_L_F(){
    return assert_I_L_F(zig_ret_I_L_F());
}

int assert_I_L_I(struct I_L_I lv){
    int err = 0;
  if (lv.v1 != 2878) err = 1;
  if (lv.v2 != 28742) err = 2;
  if (lv.v3 != 27089) err = 3;
  return err;
}
struct I_L_I ret_I_L_I(){
    struct I_L_I lv = { .v1 = 2878, .v2 = 28742, .v3 = 27089 };
    return lv;
}
int zig_assert_I_L_I(struct I_L_I);
int send_I_L_I(){
    return zig_assert_I_L_I(ret_I_L_I());
}
struct I_L_I zig_ret_I_L_I();
int assert_ret_I_L_I(){
    return assert_I_L_I(zig_ret_I_L_I());
}

int assert_I_L_Ip(struct I_L_Ip lv){
    int err = 0;
  if (lv.v1 != 14448) err = 1;
  if (lv.v2 != 27305) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_L_Ip ret_I_L_Ip(){
    struct I_L_Ip lv = { .v1 = 14448, .v2 = 27305, .v3 = 0 };
    return lv;
}
int zig_assert_I_L_Ip(struct I_L_Ip);
int send_I_L_Ip(){
    return zig_assert_I_L_Ip(ret_I_L_Ip());
}
struct I_L_Ip zig_ret_I_L_Ip();
int assert_ret_I_L_Ip(){
    return assert_I_L_Ip(zig_ret_I_L_Ip());
}

int assert_I_L_L(struct I_L_L lv){
    int err = 0;
  if (lv.v1 != 16994) err = 1;
  if (lv.v2 != 26074) err = 2;
  if (lv.v3 != 1517) err = 3;
  return err;
}
struct I_L_L ret_I_L_L(){
    struct I_L_L lv = { .v1 = 16994, .v2 = 26074, .v3 = 1517 };
    return lv;
}
int zig_assert_I_L_L(struct I_L_L);
int send_I_L_L(){
    return zig_assert_I_L_L(ret_I_L_L());
}
struct I_L_L zig_ret_I_L_L();
int assert_ret_I_L_L(){
    return assert_I_L_L(zig_ret_I_L_L());
}

int assert_I_L_S(struct I_L_S lv){
    int err = 0;
  if (lv.v1 != 20300) err = 1;
  if (lv.v2 != 20165) err = 2;
  if (lv.v3 != 29078) err = 3;
  return err;
}
struct I_L_S ret_I_L_S(){
    struct I_L_S lv = { .v1 = 20300, .v2 = 20165, .v3 = 29078 };
    return lv;
}
int zig_assert_I_L_S(struct I_L_S);
int send_I_L_S(){
    return zig_assert_I_L_S(ret_I_L_S());
}
struct I_L_S zig_ret_I_L_S();
int assert_ret_I_L_S(){
    return assert_I_L_S(zig_ret_I_L_S());
}

int assert_I_L_Uc(struct I_L_Uc lv){
    int err = 0;
  if (lv.v1 != 17820) err = 1;
  if (lv.v2 != 24592) err = 2;
  if (lv.v3 != 125) err = 3;
  return err;
}
struct I_L_Uc ret_I_L_Uc(){
    struct I_L_Uc lv = { .v1 = 17820, .v2 = 24592, .v3 = 125 };
    return lv;
}
int zig_assert_I_L_Uc(struct I_L_Uc);
int send_I_L_Uc(){
    return zig_assert_I_L_Uc(ret_I_L_Uc());
}
struct I_L_Uc zig_ret_I_L_Uc();
int assert_ret_I_L_Uc(){
    return assert_I_L_Uc(zig_ret_I_L_Uc());
}

int assert_I_L_Ui(struct I_L_Ui lv){
    int err = 0;
  if (lv.v1 != 2268) err = 1;
  if (lv.v2 != 14982) err = 2;
  if (lv.v3 != 1284) err = 3;
  return err;
}
struct I_L_Ui ret_I_L_Ui(){
    struct I_L_Ui lv = { .v1 = 2268, .v2 = 14982, .v3 = 1284 };
    return lv;
}
int zig_assert_I_L_Ui(struct I_L_Ui);
int send_I_L_Ui(){
    return zig_assert_I_L_Ui(ret_I_L_Ui());
}
struct I_L_Ui zig_ret_I_L_Ui();
int assert_ret_I_L_Ui(){
    return assert_I_L_Ui(zig_ret_I_L_Ui());
}

int assert_I_L_Ul(struct I_L_Ul lv){
    int err = 0;
  if (lv.v1 != 25117) err = 1;
  if (lv.v2 != 28257) err = 2;
  if (lv.v3 != 12345) err = 3;
  return err;
}
struct I_L_Ul ret_I_L_Ul(){
    struct I_L_Ul lv = { .v1 = 25117, .v2 = 28257, .v3 = 12345 };
    return lv;
}
int zig_assert_I_L_Ul(struct I_L_Ul);
int send_I_L_Ul(){
    return zig_assert_I_L_Ul(ret_I_L_Ul());
}
struct I_L_Ul zig_ret_I_L_Ul();
int assert_ret_I_L_Ul(){
    return assert_I_L_Ul(zig_ret_I_L_Ul());
}

int assert_I_L_Us(struct I_L_Us lv){
    int err = 0;
  if (lv.v1 != 6112) err = 1;
  if (lv.v2 != 1636) err = 2;
  if (lv.v3 != 20956) err = 3;
  return err;
}
struct I_L_Us ret_I_L_Us(){
    struct I_L_Us lv = { .v1 = 6112, .v2 = 1636, .v3 = 20956 };
    return lv;
}
int zig_assert_I_L_Us(struct I_L_Us);
int send_I_L_Us(){
    return zig_assert_I_L_Us(ret_I_L_Us());
}
struct I_L_Us zig_ret_I_L_Us();
int assert_ret_I_L_Us(){
    return assert_I_L_Us(zig_ret_I_L_Us());
}

int assert_I_L_Vp(struct I_L_Vp lv){
    int err = 0;
  if (lv.v1 != 17111) err = 1;
  if (lv.v2 != 29128) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_L_Vp ret_I_L_Vp(){
    struct I_L_Vp lv = { .v1 = 17111, .v2 = 29128, .v3 = 0 };
    return lv;
}
int zig_assert_I_L_Vp(struct I_L_Vp);
int send_I_L_Vp(){
    return zig_assert_I_L_Vp(ret_I_L_Vp());
}
struct I_L_Vp zig_ret_I_L_Vp();
int assert_ret_I_L_Vp(){
    return assert_I_L_Vp(zig_ret_I_L_Vp());
}

int assert_I_S(struct I_S lv){
    int err = 0;
  if (lv.v1 != 20472) err = 1;
  if (lv.v2 != 19735) err = 2;
  return err;
}
struct I_S ret_I_S(){
    struct I_S lv = { .v1 = 20472, .v2 = 19735 };
    return lv;
}
int zig_assert_I_S(struct I_S);
int send_I_S(){
    return zig_assert_I_S(ret_I_S());
}
struct I_S zig_ret_I_S();
int assert_ret_I_S(){
    return assert_I_S(zig_ret_I_S());
}

int assert_I_S_C(struct I_S_C lv){
    int err = 0;
  if (lv.v1 != 30085) err = 1;
  if (lv.v2 != 12535) err = 2;
  if (lv.v3 != 68) err = 3;
  return err;
}
struct I_S_C ret_I_S_C(){
    struct I_S_C lv = { .v1 = 30085, .v2 = 12535, .v3 = 68 };
    return lv;
}
int zig_assert_I_S_C(struct I_S_C);
int send_I_S_C(){
    return zig_assert_I_S_C(ret_I_S_C());
}
struct I_S_C zig_ret_I_S_C();
int assert_ret_I_S_C(){
    return assert_I_S_C(zig_ret_I_S_C());
}

int assert_I_S_D(struct I_S_D lv){
    int err = 0;
  if (lv.v1 != 20790) err = 1;
  if (lv.v2 != 12807) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct I_S_D ret_I_S_D(){
    struct I_S_D lv = { .v1 = 20790, .v2 = 12807, .v3 = 7.0 };
    return lv;
}
int zig_assert_I_S_D(struct I_S_D);
int send_I_S_D(){
    return zig_assert_I_S_D(ret_I_S_D());
}
struct I_S_D zig_ret_I_S_D();
int assert_ret_I_S_D(){
    return assert_I_S_D(zig_ret_I_S_D());
}

int assert_I_S_F(struct I_S_F lv){
    int err = 0;
  if (lv.v1 != 21659) err = 1;
  if (lv.v2 != 15482) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct I_S_F ret_I_S_F(){
    struct I_S_F lv = { .v1 = 21659, .v2 = 15482, .v3 = 1.0 };
    return lv;
}
int zig_assert_I_S_F(struct I_S_F);
int send_I_S_F(){
    return zig_assert_I_S_F(ret_I_S_F());
}
struct I_S_F zig_ret_I_S_F();
int assert_ret_I_S_F(){
    return assert_I_S_F(zig_ret_I_S_F());
}

int assert_I_S_I(struct I_S_I lv){
    int err = 0;
  if (lv.v1 != 19770) err = 1;
  if (lv.v2 != 17968) err = 2;
  if (lv.v3 != 30797) err = 3;
  return err;
}
struct I_S_I ret_I_S_I(){
    struct I_S_I lv = { .v1 = 19770, .v2 = 17968, .v3 = 30797 };
    return lv;
}
int zig_assert_I_S_I(struct I_S_I);
int send_I_S_I(){
    return zig_assert_I_S_I(ret_I_S_I());
}
struct I_S_I zig_ret_I_S_I();
int assert_ret_I_S_I(){
    return assert_I_S_I(zig_ret_I_S_I());
}

int assert_I_S_Ip(struct I_S_Ip lv){
    int err = 0;
  if (lv.v1 != 11156) err = 1;
  if (lv.v2 != 459) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_S_Ip ret_I_S_Ip(){
    struct I_S_Ip lv = { .v1 = 11156, .v2 = 459, .v3 = 0 };
    return lv;
}
int zig_assert_I_S_Ip(struct I_S_Ip);
int send_I_S_Ip(){
    return zig_assert_I_S_Ip(ret_I_S_Ip());
}
struct I_S_Ip zig_ret_I_S_Ip();
int assert_ret_I_S_Ip(){
    return assert_I_S_Ip(zig_ret_I_S_Ip());
}

int assert_I_S_L(struct I_S_L lv){
    int err = 0;
  if (lv.v1 != 20002) err = 1;
  if (lv.v2 != 1407) err = 2;
  if (lv.v3 != 28466) err = 3;
  return err;
}
struct I_S_L ret_I_S_L(){
    struct I_S_L lv = { .v1 = 20002, .v2 = 1407, .v3 = 28466 };
    return lv;
}
int zig_assert_I_S_L(struct I_S_L);
int send_I_S_L(){
    return zig_assert_I_S_L(ret_I_S_L());
}
struct I_S_L zig_ret_I_S_L();
int assert_ret_I_S_L(){
    return assert_I_S_L(zig_ret_I_S_L());
}

int assert_I_S_S(struct I_S_S lv){
    int err = 0;
  if (lv.v1 != 23178) err = 1;
  if (lv.v2 != 17246) err = 2;
  if (lv.v3 != 30600) err = 3;
  return err;
}
struct I_S_S ret_I_S_S(){
    struct I_S_S lv = { .v1 = 23178, .v2 = 17246, .v3 = 30600 };
    return lv;
}
int zig_assert_I_S_S(struct I_S_S);
int send_I_S_S(){
    return zig_assert_I_S_S(ret_I_S_S());
}
struct I_S_S zig_ret_I_S_S();
int assert_ret_I_S_S(){
    return assert_I_S_S(zig_ret_I_S_S());
}

int assert_I_S_Uc(struct I_S_Uc lv){
    int err = 0;
  if (lv.v1 != 29081) err = 1;
  if (lv.v2 != 27093) err = 2;
  if (lv.v3 != 104) err = 3;
  return err;
}
struct I_S_Uc ret_I_S_Uc(){
    struct I_S_Uc lv = { .v1 = 29081, .v2 = 27093, .v3 = 104 };
    return lv;
}
int zig_assert_I_S_Uc(struct I_S_Uc);
int send_I_S_Uc(){
    return zig_assert_I_S_Uc(ret_I_S_Uc());
}
struct I_S_Uc zig_ret_I_S_Uc();
int assert_ret_I_S_Uc(){
    return assert_I_S_Uc(zig_ret_I_S_Uc());
}

int assert_I_S_Ui(struct I_S_Ui lv){
    int err = 0;
  if (lv.v1 != 19804) err = 1;
  if (lv.v2 != 17359) err = 2;
  if (lv.v3 != 32650) err = 3;
  return err;
}
struct I_S_Ui ret_I_S_Ui(){
    struct I_S_Ui lv = { .v1 = 19804, .v2 = 17359, .v3 = 32650 };
    return lv;
}
int zig_assert_I_S_Ui(struct I_S_Ui);
int send_I_S_Ui(){
    return zig_assert_I_S_Ui(ret_I_S_Ui());
}
struct I_S_Ui zig_ret_I_S_Ui();
int assert_ret_I_S_Ui(){
    return assert_I_S_Ui(zig_ret_I_S_Ui());
}

int assert_I_S_Ul(struct I_S_Ul lv){
    int err = 0;
  if (lv.v1 != 16785) err = 1;
  if (lv.v2 != 22570) err = 2;
  if (lv.v3 != 20471) err = 3;
  return err;
}
struct I_S_Ul ret_I_S_Ul(){
    struct I_S_Ul lv = { .v1 = 16785, .v2 = 22570, .v3 = 20471 };
    return lv;
}
int zig_assert_I_S_Ul(struct I_S_Ul);
int send_I_S_Ul(){
    return zig_assert_I_S_Ul(ret_I_S_Ul());
}
struct I_S_Ul zig_ret_I_S_Ul();
int assert_ret_I_S_Ul(){
    return assert_I_S_Ul(zig_ret_I_S_Ul());
}

int assert_I_S_Us(struct I_S_Us lv){
    int err = 0;
  if (lv.v1 != 18528) err = 1;
  if (lv.v2 != 17634) err = 2;
  if (lv.v3 != 13815) err = 3;
  return err;
}
struct I_S_Us ret_I_S_Us(){
    struct I_S_Us lv = { .v1 = 18528, .v2 = 17634, .v3 = 13815 };
    return lv;
}
int zig_assert_I_S_Us(struct I_S_Us);
int send_I_S_Us(){
    return zig_assert_I_S_Us(ret_I_S_Us());
}
struct I_S_Us zig_ret_I_S_Us();
int assert_ret_I_S_Us(){
    return assert_I_S_Us(zig_ret_I_S_Us());
}

int assert_I_S_Vp(struct I_S_Vp lv){
    int err = 0;
  if (lv.v1 != 5046) err = 1;
  if (lv.v2 != 3734) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_S_Vp ret_I_S_Vp(){
    struct I_S_Vp lv = { .v1 = 5046, .v2 = 3734, .v3 = 0 };
    return lv;
}
int zig_assert_I_S_Vp(struct I_S_Vp);
int send_I_S_Vp(){
    return zig_assert_I_S_Vp(ret_I_S_Vp());
}
struct I_S_Vp zig_ret_I_S_Vp();
int assert_ret_I_S_Vp(){
    return assert_I_S_Vp(zig_ret_I_S_Vp());
}

int assert_I_Uc(struct I_Uc lv){
    int err = 0;
  if (lv.v1 != 9907) err = 1;
  if (lv.v2 != 62) err = 2;
  return err;
}
struct I_Uc ret_I_Uc(){
    struct I_Uc lv = { .v1 = 9907, .v2 = 62 };
    return lv;
}
int zig_assert_I_Uc(struct I_Uc);
int send_I_Uc(){
    return zig_assert_I_Uc(ret_I_Uc());
}
struct I_Uc zig_ret_I_Uc();
int assert_ret_I_Uc(){
    return assert_I_Uc(zig_ret_I_Uc());
}

int assert_I_Uc_C(struct I_Uc_C lv){
    int err = 0;
  if (lv.v1 != 814) err = 1;
  if (lv.v2 != 78) err = 2;
  if (lv.v3 != 109) err = 3;
  return err;
}
struct I_Uc_C ret_I_Uc_C(){
    struct I_Uc_C lv = { .v1 = 814, .v2 = 78, .v3 = 109 };
    return lv;
}
int zig_assert_I_Uc_C(struct I_Uc_C);
int send_I_Uc_C(){
    return zig_assert_I_Uc_C(ret_I_Uc_C());
}
struct I_Uc_C zig_ret_I_Uc_C();
int assert_ret_I_Uc_C(){
    return assert_I_Uc_C(zig_ret_I_Uc_C());
}

int assert_I_Uc_D(struct I_Uc_D lv){
    int err = 0;
  if (lv.v1 != 22054) err = 1;
  if (lv.v2 != 100) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct I_Uc_D ret_I_Uc_D(){
    struct I_Uc_D lv = { .v1 = 22054, .v2 = 100, .v3 = 4.5 };
    return lv;
}
int zig_assert_I_Uc_D(struct I_Uc_D);
int send_I_Uc_D(){
    return zig_assert_I_Uc_D(ret_I_Uc_D());
}
struct I_Uc_D zig_ret_I_Uc_D();
int assert_ret_I_Uc_D(){
    return assert_I_Uc_D(zig_ret_I_Uc_D());
}

int assert_I_Uc_F(struct I_Uc_F lv){
    int err = 0;
  if (lv.v1 != 4971) err = 1;
  if (lv.v2 != 16) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct I_Uc_F ret_I_Uc_F(){
    struct I_Uc_F lv = { .v1 = 4971, .v2 = 16, .v3 = 0.875 };
    return lv;
}
int zig_assert_I_Uc_F(struct I_Uc_F);
int send_I_Uc_F(){
    return zig_assert_I_Uc_F(ret_I_Uc_F());
}
struct I_Uc_F zig_ret_I_Uc_F();
int assert_ret_I_Uc_F(){
    return assert_I_Uc_F(zig_ret_I_Uc_F());
}

int assert_I_Uc_I(struct I_Uc_I lv){
    int err = 0;
  if (lv.v1 != 11510) err = 1;
  if (lv.v2 != 113) err = 2;
  if (lv.v3 != 9530) err = 3;
  return err;
}
struct I_Uc_I ret_I_Uc_I(){
    struct I_Uc_I lv = { .v1 = 11510, .v2 = 113, .v3 = 9530 };
    return lv;
}
int zig_assert_I_Uc_I(struct I_Uc_I);
int send_I_Uc_I(){
    return zig_assert_I_Uc_I(ret_I_Uc_I());
}
struct I_Uc_I zig_ret_I_Uc_I();
int assert_ret_I_Uc_I(){
    return assert_I_Uc_I(zig_ret_I_Uc_I());
}

int assert_I_Uc_Ip(struct I_Uc_Ip lv){
    int err = 0;
  if (lv.v1 != 10563) err = 1;
  if (lv.v2 != 11) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Uc_Ip ret_I_Uc_Ip(){
    struct I_Uc_Ip lv = { .v1 = 10563, .v2 = 11, .v3 = 0 };
    return lv;
}
int zig_assert_I_Uc_Ip(struct I_Uc_Ip);
int send_I_Uc_Ip(){
    return zig_assert_I_Uc_Ip(ret_I_Uc_Ip());
}
struct I_Uc_Ip zig_ret_I_Uc_Ip();
int assert_ret_I_Uc_Ip(){
    return assert_I_Uc_Ip(zig_ret_I_Uc_Ip());
}

int assert_I_Uc_L(struct I_Uc_L lv){
    int err = 0;
  if (lv.v1 != 28918) err = 1;
  if (lv.v2 != 4) err = 2;
  if (lv.v3 != 2052) err = 3;
  return err;
}
struct I_Uc_L ret_I_Uc_L(){
    struct I_Uc_L lv = { .v1 = 28918, .v2 = 4, .v3 = 2052 };
    return lv;
}
int zig_assert_I_Uc_L(struct I_Uc_L);
int send_I_Uc_L(){
    return zig_assert_I_Uc_L(ret_I_Uc_L());
}
struct I_Uc_L zig_ret_I_Uc_L();
int assert_ret_I_Uc_L(){
    return assert_I_Uc_L(zig_ret_I_Uc_L());
}

int assert_I_Uc_S(struct I_Uc_S lv){
    int err = 0;
  if (lv.v1 != 17185) err = 1;
  if (lv.v2 != 74) err = 2;
  if (lv.v3 != 22429) err = 3;
  return err;
}
struct I_Uc_S ret_I_Uc_S(){
    struct I_Uc_S lv = { .v1 = 17185, .v2 = 74, .v3 = 22429 };
    return lv;
}
int zig_assert_I_Uc_S(struct I_Uc_S);
int send_I_Uc_S(){
    return zig_assert_I_Uc_S(ret_I_Uc_S());
}
struct I_Uc_S zig_ret_I_Uc_S();
int assert_ret_I_Uc_S(){
    return assert_I_Uc_S(zig_ret_I_Uc_S());
}

int assert_I_Uc_Uc(struct I_Uc_Uc lv){
    int err = 0;
  if (lv.v1 != 7894) err = 1;
  if (lv.v2 != 53) err = 2;
  if (lv.v3 != 84) err = 3;
  return err;
}
struct I_Uc_Uc ret_I_Uc_Uc(){
    struct I_Uc_Uc lv = { .v1 = 7894, .v2 = 53, .v3 = 84 };
    return lv;
}
int zig_assert_I_Uc_Uc(struct I_Uc_Uc);
int send_I_Uc_Uc(){
    return zig_assert_I_Uc_Uc(ret_I_Uc_Uc());
}
struct I_Uc_Uc zig_ret_I_Uc_Uc();
int assert_ret_I_Uc_Uc(){
    return assert_I_Uc_Uc(zig_ret_I_Uc_Uc());
}

int assert_I_Uc_Ui(struct I_Uc_Ui lv){
    int err = 0;
  if (lv.v1 != 29649) err = 1;
  if (lv.v2 != 52) err = 2;
  if (lv.v3 != 28628) err = 3;
  return err;
}
struct I_Uc_Ui ret_I_Uc_Ui(){
    struct I_Uc_Ui lv = { .v1 = 29649, .v2 = 52, .v3 = 28628 };
    return lv;
}
int zig_assert_I_Uc_Ui(struct I_Uc_Ui);
int send_I_Uc_Ui(){
    return zig_assert_I_Uc_Ui(ret_I_Uc_Ui());
}
struct I_Uc_Ui zig_ret_I_Uc_Ui();
int assert_ret_I_Uc_Ui(){
    return assert_I_Uc_Ui(zig_ret_I_Uc_Ui());
}

int assert_I_Uc_Ul(struct I_Uc_Ul lv){
    int err = 0;
  if (lv.v1 != 13864) err = 1;
  if (lv.v2 != 71) err = 2;
  if (lv.v3 != 17139) err = 3;
  return err;
}
struct I_Uc_Ul ret_I_Uc_Ul(){
    struct I_Uc_Ul lv = { .v1 = 13864, .v2 = 71, .v3 = 17139 };
    return lv;
}
int zig_assert_I_Uc_Ul(struct I_Uc_Ul);
int send_I_Uc_Ul(){
    return zig_assert_I_Uc_Ul(ret_I_Uc_Ul());
}
struct I_Uc_Ul zig_ret_I_Uc_Ul();
int assert_ret_I_Uc_Ul(){
    return assert_I_Uc_Ul(zig_ret_I_Uc_Ul());
}

int assert_I_Uc_Us(struct I_Uc_Us lv){
    int err = 0;
  if (lv.v1 != 621) err = 1;
  if (lv.v2 != 24) err = 2;
  if (lv.v3 != 87) err = 3;
  return err;
}
struct I_Uc_Us ret_I_Uc_Us(){
    struct I_Uc_Us lv = { .v1 = 621, .v2 = 24, .v3 = 87 };
    return lv;
}
int zig_assert_I_Uc_Us(struct I_Uc_Us);
int send_I_Uc_Us(){
    return zig_assert_I_Uc_Us(ret_I_Uc_Us());
}
struct I_Uc_Us zig_ret_I_Uc_Us();
int assert_ret_I_Uc_Us(){
    return assert_I_Uc_Us(zig_ret_I_Uc_Us());
}

int assert_I_Uc_Vp(struct I_Uc_Vp lv){
    int err = 0;
  if (lv.v1 != 15733) err = 1;
  if (lv.v2 != 107) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Uc_Vp ret_I_Uc_Vp(){
    struct I_Uc_Vp lv = { .v1 = 15733, .v2 = 107, .v3 = 0 };
    return lv;
}
int zig_assert_I_Uc_Vp(struct I_Uc_Vp);
int send_I_Uc_Vp(){
    return zig_assert_I_Uc_Vp(ret_I_Uc_Vp());
}
struct I_Uc_Vp zig_ret_I_Uc_Vp();
int assert_ret_I_Uc_Vp(){
    return assert_I_Uc_Vp(zig_ret_I_Uc_Vp());
}

int assert_I_Ui(struct I_Ui lv){
    int err = 0;
  if (lv.v1 != 7752) err = 1;
  if (lv.v2 != 28087) err = 2;
  return err;
}
struct I_Ui ret_I_Ui(){
    struct I_Ui lv = { .v1 = 7752, .v2 = 28087 };
    return lv;
}
int zig_assert_I_Ui(struct I_Ui);
int send_I_Ui(){
    return zig_assert_I_Ui(ret_I_Ui());
}
struct I_Ui zig_ret_I_Ui();
int assert_ret_I_Ui(){
    return assert_I_Ui(zig_ret_I_Ui());
}

int assert_I_Ui_C(struct I_Ui_C lv){
    int err = 0;
  if (lv.v1 != 16981) err = 1;
  if (lv.v2 != 17288) err = 2;
  if (lv.v3 != 2) err = 3;
  return err;
}
struct I_Ui_C ret_I_Ui_C(){
    struct I_Ui_C lv = { .v1 = 16981, .v2 = 17288, .v3 = 2 };
    return lv;
}
int zig_assert_I_Ui_C(struct I_Ui_C);
int send_I_Ui_C(){
    return zig_assert_I_Ui_C(ret_I_Ui_C());
}
struct I_Ui_C zig_ret_I_Ui_C();
int assert_ret_I_Ui_C(){
    return assert_I_Ui_C(zig_ret_I_Ui_C());
}

int assert_I_Ui_D(struct I_Ui_D lv){
    int err = 0;
  if (lv.v1 != 23540) err = 1;
  if (lv.v2 != 10678) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct I_Ui_D ret_I_Ui_D(){
    struct I_Ui_D lv = { .v1 = 23540, .v2 = 10678, .v3 = 0.5 };
    return lv;
}
int zig_assert_I_Ui_D(struct I_Ui_D);
int send_I_Ui_D(){
    return zig_assert_I_Ui_D(ret_I_Ui_D());
}
struct I_Ui_D zig_ret_I_Ui_D();
int assert_ret_I_Ui_D(){
    return assert_I_Ui_D(zig_ret_I_Ui_D());
}

int assert_I_Ui_F(struct I_Ui_F lv){
    int err = 0;
  if (lv.v1 != 24642) err = 1;
  if (lv.v2 != 26856) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct I_Ui_F ret_I_Ui_F(){
    struct I_Ui_F lv = { .v1 = 24642, .v2 = 26856, .v3 = 0.5 };
    return lv;
}
int zig_assert_I_Ui_F(struct I_Ui_F);
int send_I_Ui_F(){
    return zig_assert_I_Ui_F(ret_I_Ui_F());
}
struct I_Ui_F zig_ret_I_Ui_F();
int assert_ret_I_Ui_F(){
    return assert_I_Ui_F(zig_ret_I_Ui_F());
}

int assert_I_Ui_I(struct I_Ui_I lv){
    int err = 0;
  if (lv.v1 != 8999) err = 1;
  if (lv.v2 != 1538) err = 2;
  if (lv.v3 != 10112) err = 3;
  return err;
}
struct I_Ui_I ret_I_Ui_I(){
    struct I_Ui_I lv = { .v1 = 8999, .v2 = 1538, .v3 = 10112 };
    return lv;
}
int zig_assert_I_Ui_I(struct I_Ui_I);
int send_I_Ui_I(){
    return zig_assert_I_Ui_I(ret_I_Ui_I());
}
struct I_Ui_I zig_ret_I_Ui_I();
int assert_ret_I_Ui_I(){
    return assert_I_Ui_I(zig_ret_I_Ui_I());
}

int assert_I_Ui_Ip(struct I_Ui_Ip lv){
    int err = 0;
  if (lv.v1 != 12833) err = 1;
  if (lv.v2 != 8536) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Ui_Ip ret_I_Ui_Ip(){
    struct I_Ui_Ip lv = { .v1 = 12833, .v2 = 8536, .v3 = 0 };
    return lv;
}
int zig_assert_I_Ui_Ip(struct I_Ui_Ip);
int send_I_Ui_Ip(){
    return zig_assert_I_Ui_Ip(ret_I_Ui_Ip());
}
struct I_Ui_Ip zig_ret_I_Ui_Ip();
int assert_ret_I_Ui_Ip(){
    return assert_I_Ui_Ip(zig_ret_I_Ui_Ip());
}

int assert_I_Ui_L(struct I_Ui_L lv){
    int err = 0;
  if (lv.v1 != 5275) err = 1;
  if (lv.v2 != 28397) err = 2;
  if (lv.v3 != 7892) err = 3;
  return err;
}
struct I_Ui_L ret_I_Ui_L(){
    struct I_Ui_L lv = { .v1 = 5275, .v2 = 28397, .v3 = 7892 };
    return lv;
}
int zig_assert_I_Ui_L(struct I_Ui_L);
int send_I_Ui_L(){
    return zig_assert_I_Ui_L(ret_I_Ui_L());
}
struct I_Ui_L zig_ret_I_Ui_L();
int assert_ret_I_Ui_L(){
    return assert_I_Ui_L(zig_ret_I_Ui_L());
}

int assert_I_Ui_S(struct I_Ui_S lv){
    int err = 0;
  if (lv.v1 != 2988) err = 1;
  if (lv.v2 != 13600) err = 2;
  if (lv.v3 != 2866) err = 3;
  return err;
}
struct I_Ui_S ret_I_Ui_S(){
    struct I_Ui_S lv = { .v1 = 2988, .v2 = 13600, .v3 = 2866 };
    return lv;
}
int zig_assert_I_Ui_S(struct I_Ui_S);
int send_I_Ui_S(){
    return zig_assert_I_Ui_S(ret_I_Ui_S());
}
struct I_Ui_S zig_ret_I_Ui_S();
int assert_ret_I_Ui_S(){
    return assert_I_Ui_S(zig_ret_I_Ui_S());
}

int assert_I_Ui_Uc(struct I_Ui_Uc lv){
    int err = 0;
  if (lv.v1 != 22817) err = 1;
  if (lv.v2 != 14264) err = 2;
  if (lv.v3 != 36) err = 3;
  return err;
}
struct I_Ui_Uc ret_I_Ui_Uc(){
    struct I_Ui_Uc lv = { .v1 = 22817, .v2 = 14264, .v3 = 36 };
    return lv;
}
int zig_assert_I_Ui_Uc(struct I_Ui_Uc);
int send_I_Ui_Uc(){
    return zig_assert_I_Ui_Uc(ret_I_Ui_Uc());
}
struct I_Ui_Uc zig_ret_I_Ui_Uc();
int assert_ret_I_Ui_Uc(){
    return assert_I_Ui_Uc(zig_ret_I_Ui_Uc());
}

int assert_I_Ui_Ui(struct I_Ui_Ui lv){
    int err = 0;
  if (lv.v1 != 24298) err = 1;
  if (lv.v2 != 4517) err = 2;
  if (lv.v3 != 19633) err = 3;
  return err;
}
struct I_Ui_Ui ret_I_Ui_Ui(){
    struct I_Ui_Ui lv = { .v1 = 24298, .v2 = 4517, .v3 = 19633 };
    return lv;
}
int zig_assert_I_Ui_Ui(struct I_Ui_Ui);
int send_I_Ui_Ui(){
    return zig_assert_I_Ui_Ui(ret_I_Ui_Ui());
}
struct I_Ui_Ui zig_ret_I_Ui_Ui();
int assert_ret_I_Ui_Ui(){
    return assert_I_Ui_Ui(zig_ret_I_Ui_Ui());
}

int assert_I_Ui_Ul(struct I_Ui_Ul lv){
    int err = 0;
  if (lv.v1 != 14891) err = 1;
  if (lv.v2 != 14320) err = 2;
  if (lv.v3 != 17109) err = 3;
  return err;
}
struct I_Ui_Ul ret_I_Ui_Ul(){
    struct I_Ui_Ul lv = { .v1 = 14891, .v2 = 14320, .v3 = 17109 };
    return lv;
}
int zig_assert_I_Ui_Ul(struct I_Ui_Ul);
int send_I_Ui_Ul(){
    return zig_assert_I_Ui_Ul(ret_I_Ui_Ul());
}
struct I_Ui_Ul zig_ret_I_Ui_Ul();
int assert_ret_I_Ui_Ul(){
    return assert_I_Ui_Ul(zig_ret_I_Ui_Ul());
}

int assert_I_Ui_Us(struct I_Ui_Us lv){
    int err = 0;
  if (lv.v1 != 12774) err = 1;
  if (lv.v2 != 30862) err = 2;
  if (lv.v3 != 23839) err = 3;
  return err;
}
struct I_Ui_Us ret_I_Ui_Us(){
    struct I_Ui_Us lv = { .v1 = 12774, .v2 = 30862, .v3 = 23839 };
    return lv;
}
int zig_assert_I_Ui_Us(struct I_Ui_Us);
int send_I_Ui_Us(){
    return zig_assert_I_Ui_Us(ret_I_Ui_Us());
}
struct I_Ui_Us zig_ret_I_Ui_Us();
int assert_ret_I_Ui_Us(){
    return assert_I_Ui_Us(zig_ret_I_Ui_Us());
}

int assert_I_Ui_Vp(struct I_Ui_Vp lv){
    int err = 0;
  if (lv.v1 != 25010) err = 1;
  if (lv.v2 != 12563) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Ui_Vp ret_I_Ui_Vp(){
    struct I_Ui_Vp lv = { .v1 = 25010, .v2 = 12563, .v3 = 0 };
    return lv;
}
int zig_assert_I_Ui_Vp(struct I_Ui_Vp);
int send_I_Ui_Vp(){
    return zig_assert_I_Ui_Vp(ret_I_Ui_Vp());
}
struct I_Ui_Vp zig_ret_I_Ui_Vp();
int assert_ret_I_Ui_Vp(){
    return assert_I_Ui_Vp(zig_ret_I_Ui_Vp());
}

int assert_I_Ul(struct I_Ul lv){
    int err = 0;
  if (lv.v1 != 29320) err = 1;
  if (lv.v2 != 9969) err = 2;
  return err;
}
struct I_Ul ret_I_Ul(){
    struct I_Ul lv = { .v1 = 29320, .v2 = 9969 };
    return lv;
}
int zig_assert_I_Ul(struct I_Ul);
int send_I_Ul(){
    return zig_assert_I_Ul(ret_I_Ul());
}
struct I_Ul zig_ret_I_Ul();
int assert_ret_I_Ul(){
    return assert_I_Ul(zig_ret_I_Ul());
}

int assert_I_Ul_C(struct I_Ul_C lv){
    int err = 0;
  if (lv.v1 != 20010) err = 1;
  if (lv.v2 != 6864) err = 2;
  if (lv.v3 != 53) err = 3;
  return err;
}
struct I_Ul_C ret_I_Ul_C(){
    struct I_Ul_C lv = { .v1 = 20010, .v2 = 6864, .v3 = 53 };
    return lv;
}
int zig_assert_I_Ul_C(struct I_Ul_C);
int send_I_Ul_C(){
    return zig_assert_I_Ul_C(ret_I_Ul_C());
}
struct I_Ul_C zig_ret_I_Ul_C();
int assert_ret_I_Ul_C(){
    return assert_I_Ul_C(zig_ret_I_Ul_C());
}

int assert_I_Ul_D(struct I_Ul_D lv){
    int err = 0;
  if (lv.v1 != 31184) err = 1;
  if (lv.v2 != 21032) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct I_Ul_D ret_I_Ul_D(){
    struct I_Ul_D lv = { .v1 = 31184, .v2 = 21032, .v3 = 1.0 };
    return lv;
}
int zig_assert_I_Ul_D(struct I_Ul_D);
int send_I_Ul_D(){
    return zig_assert_I_Ul_D(ret_I_Ul_D());
}
struct I_Ul_D zig_ret_I_Ul_D();
int assert_ret_I_Ul_D(){
    return assert_I_Ul_D(zig_ret_I_Ul_D());
}

int assert_I_Ul_F(struct I_Ul_F lv){
    int err = 0;
  if (lv.v1 != 13631) err = 1;
  if (lv.v2 != 23584) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct I_Ul_F ret_I_Ul_F(){
    struct I_Ul_F lv = { .v1 = 13631, .v2 = 23584, .v3 = 0.5 };
    return lv;
}
int zig_assert_I_Ul_F(struct I_Ul_F);
int send_I_Ul_F(){
    return zig_assert_I_Ul_F(ret_I_Ul_F());
}
struct I_Ul_F zig_ret_I_Ul_F();
int assert_ret_I_Ul_F(){
    return assert_I_Ul_F(zig_ret_I_Ul_F());
}

int assert_I_Ul_I(struct I_Ul_I lv){
    int err = 0;
  if (lv.v1 != 24693) err = 1;
  if (lv.v2 != 10012) err = 2;
  if (lv.v3 != 25520) err = 3;
  return err;
}
struct I_Ul_I ret_I_Ul_I(){
    struct I_Ul_I lv = { .v1 = 24693, .v2 = 10012, .v3 = 25520 };
    return lv;
}
int zig_assert_I_Ul_I(struct I_Ul_I);
int send_I_Ul_I(){
    return zig_assert_I_Ul_I(ret_I_Ul_I());
}
struct I_Ul_I zig_ret_I_Ul_I();
int assert_ret_I_Ul_I(){
    return assert_I_Ul_I(zig_ret_I_Ul_I());
}

int assert_I_Ul_Ip(struct I_Ul_Ip lv){
    int err = 0;
  if (lv.v1 != 24608) err = 1;
  if (lv.v2 != 31825) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Ul_Ip ret_I_Ul_Ip(){
    struct I_Ul_Ip lv = { .v1 = 24608, .v2 = 31825, .v3 = 0 };
    return lv;
}
int zig_assert_I_Ul_Ip(struct I_Ul_Ip);
int send_I_Ul_Ip(){
    return zig_assert_I_Ul_Ip(ret_I_Ul_Ip());
}
struct I_Ul_Ip zig_ret_I_Ul_Ip();
int assert_ret_I_Ul_Ip(){
    return assert_I_Ul_Ip(zig_ret_I_Ul_Ip());
}

int assert_I_Ul_L(struct I_Ul_L lv){
    int err = 0;
  if (lv.v1 != 2359) err = 1;
  if (lv.v2 != 23401) err = 2;
  if (lv.v3 != 32239) err = 3;
  return err;
}
struct I_Ul_L ret_I_Ul_L(){
    struct I_Ul_L lv = { .v1 = 2359, .v2 = 23401, .v3 = 32239 };
    return lv;
}
int zig_assert_I_Ul_L(struct I_Ul_L);
int send_I_Ul_L(){
    return zig_assert_I_Ul_L(ret_I_Ul_L());
}
struct I_Ul_L zig_ret_I_Ul_L();
int assert_ret_I_Ul_L(){
    return assert_I_Ul_L(zig_ret_I_Ul_L());
}

int assert_I_Ul_S(struct I_Ul_S lv){
    int err = 0;
  if (lv.v1 != 29907) err = 1;
  if (lv.v2 != 31008) err = 2;
  if (lv.v3 != 28563) err = 3;
  return err;
}
struct I_Ul_S ret_I_Ul_S(){
    struct I_Ul_S lv = { .v1 = 29907, .v2 = 31008, .v3 = 28563 };
    return lv;
}
int zig_assert_I_Ul_S(struct I_Ul_S);
int send_I_Ul_S(){
    return zig_assert_I_Ul_S(ret_I_Ul_S());
}
struct I_Ul_S zig_ret_I_Ul_S();
int assert_ret_I_Ul_S(){
    return assert_I_Ul_S(zig_ret_I_Ul_S());
}

int assert_I_Ul_Uc(struct I_Ul_Uc lv){
    int err = 0;
  if (lv.v1 != 425) err = 1;
  if (lv.v2 != 18214) err = 2;
  if (lv.v3 != 121) err = 3;
  return err;
}
struct I_Ul_Uc ret_I_Ul_Uc(){
    struct I_Ul_Uc lv = { .v1 = 425, .v2 = 18214, .v3 = 121 };
    return lv;
}
int zig_assert_I_Ul_Uc(struct I_Ul_Uc);
int send_I_Ul_Uc(){
    return zig_assert_I_Ul_Uc(ret_I_Ul_Uc());
}
struct I_Ul_Uc zig_ret_I_Ul_Uc();
int assert_ret_I_Ul_Uc(){
    return assert_I_Ul_Uc(zig_ret_I_Ul_Uc());
}

int assert_I_Ul_Ui(struct I_Ul_Ui lv){
    int err = 0;
  if (lv.v1 != 19879) err = 1;
  if (lv.v2 != 18445) err = 2;
  if (lv.v3 != 2904) err = 3;
  return err;
}
struct I_Ul_Ui ret_I_Ul_Ui(){
    struct I_Ul_Ui lv = { .v1 = 19879, .v2 = 18445, .v3 = 2904 };
    return lv;
}
int zig_assert_I_Ul_Ui(struct I_Ul_Ui);
int send_I_Ul_Ui(){
    return zig_assert_I_Ul_Ui(ret_I_Ul_Ui());
}
struct I_Ul_Ui zig_ret_I_Ul_Ui();
int assert_ret_I_Ul_Ui(){
    return assert_I_Ul_Ui(zig_ret_I_Ul_Ui());
}

int assert_I_Ul_Ul(struct I_Ul_Ul lv){
    int err = 0;
  if (lv.v1 != 22126) err = 1;
  if (lv.v2 != 4806) err = 2;
  if (lv.v3 != 9350) err = 3;
  return err;
}
struct I_Ul_Ul ret_I_Ul_Ul(){
    struct I_Ul_Ul lv = { .v1 = 22126, .v2 = 4806, .v3 = 9350 };
    return lv;
}
int zig_assert_I_Ul_Ul(struct I_Ul_Ul);
int send_I_Ul_Ul(){
    return zig_assert_I_Ul_Ul(ret_I_Ul_Ul());
}
struct I_Ul_Ul zig_ret_I_Ul_Ul();
int assert_ret_I_Ul_Ul(){
    return assert_I_Ul_Ul(zig_ret_I_Ul_Ul());
}

int assert_I_Ul_Us(struct I_Ul_Us lv){
    int err = 0;
  if (lv.v1 != 23692) err = 1;
  if (lv.v2 != 18615) err = 2;
  if (lv.v3 != 3046) err = 3;
  return err;
}
struct I_Ul_Us ret_I_Ul_Us(){
    struct I_Ul_Us lv = { .v1 = 23692, .v2 = 18615, .v3 = 3046 };
    return lv;
}
int zig_assert_I_Ul_Us(struct I_Ul_Us);
int send_I_Ul_Us(){
    return zig_assert_I_Ul_Us(ret_I_Ul_Us());
}
struct I_Ul_Us zig_ret_I_Ul_Us();
int assert_ret_I_Ul_Us(){
    return assert_I_Ul_Us(zig_ret_I_Ul_Us());
}

int assert_I_Ul_Vp(struct I_Ul_Vp lv){
    int err = 0;
  if (lv.v1 != 7177) err = 1;
  if (lv.v2 != 6432) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Ul_Vp ret_I_Ul_Vp(){
    struct I_Ul_Vp lv = { .v1 = 7177, .v2 = 6432, .v3 = 0 };
    return lv;
}
int zig_assert_I_Ul_Vp(struct I_Ul_Vp);
int send_I_Ul_Vp(){
    return zig_assert_I_Ul_Vp(ret_I_Ul_Vp());
}
struct I_Ul_Vp zig_ret_I_Ul_Vp();
int assert_ret_I_Ul_Vp(){
    return assert_I_Ul_Vp(zig_ret_I_Ul_Vp());
}

int assert_I_Us(struct I_Us lv){
    int err = 0;
  if (lv.v1 != 2019) err = 1;
  if (lv.v2 != 19027) err = 2;
  return err;
}
struct I_Us ret_I_Us(){
    struct I_Us lv = { .v1 = 2019, .v2 = 19027 };
    return lv;
}
int zig_assert_I_Us(struct I_Us);
int send_I_Us(){
    return zig_assert_I_Us(ret_I_Us());
}
struct I_Us zig_ret_I_Us();
int assert_ret_I_Us(){
    return assert_I_Us(zig_ret_I_Us());
}

int assert_I_Us_C(struct I_Us_C lv){
    int err = 0;
  if (lv.v1 != 13272) err = 1;
  if (lv.v2 != 23928) err = 2;
  if (lv.v3 != 68) err = 3;
  return err;
}
struct I_Us_C ret_I_Us_C(){
    struct I_Us_C lv = { .v1 = 13272, .v2 = 23928, .v3 = 68 };
    return lv;
}
int zig_assert_I_Us_C(struct I_Us_C);
int send_I_Us_C(){
    return zig_assert_I_Us_C(ret_I_Us_C());
}
struct I_Us_C zig_ret_I_Us_C();
int assert_ret_I_Us_C(){
    return assert_I_Us_C(zig_ret_I_Us_C());
}

int assert_I_Us_D(struct I_Us_D lv){
    int err = 0;
  if (lv.v1 != 29968) err = 1;
  if (lv.v2 != 8541) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct I_Us_D ret_I_Us_D(){
    struct I_Us_D lv = { .v1 = 29968, .v2 = 8541, .v3 = 0.875 };
    return lv;
}
int zig_assert_I_Us_D(struct I_Us_D);
int send_I_Us_D(){
    return zig_assert_I_Us_D(ret_I_Us_D());
}
struct I_Us_D zig_ret_I_Us_D();
int assert_ret_I_Us_D(){
    return assert_I_Us_D(zig_ret_I_Us_D());
}

int assert_I_Us_F(struct I_Us_F lv){
    int err = 0;
  if (lv.v1 != 2365) err = 1;
  if (lv.v2 != 20461) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct I_Us_F ret_I_Us_F(){
    struct I_Us_F lv = { .v1 = 2365, .v2 = 20461, .v3 = 4.5 };
    return lv;
}
int zig_assert_I_Us_F(struct I_Us_F);
int send_I_Us_F(){
    return zig_assert_I_Us_F(ret_I_Us_F());
}
struct I_Us_F zig_ret_I_Us_F();
int assert_ret_I_Us_F(){
    return assert_I_Us_F(zig_ret_I_Us_F());
}

int assert_I_Us_I(struct I_Us_I lv){
    int err = 0;
  if (lv.v1 != 10524) err = 1;
  if (lv.v2 != 18897) err = 2;
  if (lv.v3 != 1284) err = 3;
  return err;
}
struct I_Us_I ret_I_Us_I(){
    struct I_Us_I lv = { .v1 = 10524, .v2 = 18897, .v3 = 1284 };
    return lv;
}
int zig_assert_I_Us_I(struct I_Us_I);
int send_I_Us_I(){
    return zig_assert_I_Us_I(ret_I_Us_I());
}
struct I_Us_I zig_ret_I_Us_I();
int assert_ret_I_Us_I(){
    return assert_I_Us_I(zig_ret_I_Us_I());
}

int assert_I_Us_Ip(struct I_Us_Ip lv){
    int err = 0;
  if (lv.v1 != 17227) err = 1;
  if (lv.v2 != 19352) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Us_Ip ret_I_Us_Ip(){
    struct I_Us_Ip lv = { .v1 = 17227, .v2 = 19352, .v3 = 0 };
    return lv;
}
int zig_assert_I_Us_Ip(struct I_Us_Ip);
int send_I_Us_Ip(){
    return zig_assert_I_Us_Ip(ret_I_Us_Ip());
}
struct I_Us_Ip zig_ret_I_Us_Ip();
int assert_ret_I_Us_Ip(){
    return assert_I_Us_Ip(zig_ret_I_Us_Ip());
}

int assert_I_Us_L(struct I_Us_L lv){
    int err = 0;
  if (lv.v1 != 12034) err = 1;
  if (lv.v2 != 21029) err = 2;
  if (lv.v3 != 616) err = 3;
  return err;
}
struct I_Us_L ret_I_Us_L(){
    struct I_Us_L lv = { .v1 = 12034, .v2 = 21029, .v3 = 616 };
    return lv;
}
int zig_assert_I_Us_L(struct I_Us_L);
int send_I_Us_L(){
    return zig_assert_I_Us_L(ret_I_Us_L());
}
struct I_Us_L zig_ret_I_Us_L();
int assert_ret_I_Us_L(){
    return assert_I_Us_L(zig_ret_I_Us_L());
}

int assert_I_Us_S(struct I_Us_S lv){
    int err = 0;
  if (lv.v1 != 19176) err = 1;
  if (lv.v2 != 14442) err = 2;
  if (lv.v3 != 1020) err = 3;
  return err;
}
struct I_Us_S ret_I_Us_S(){
    struct I_Us_S lv = { .v1 = 19176, .v2 = 14442, .v3 = 1020 };
    return lv;
}
int zig_assert_I_Us_S(struct I_Us_S);
int send_I_Us_S(){
    return zig_assert_I_Us_S(ret_I_Us_S());
}
struct I_Us_S zig_ret_I_Us_S();
int assert_ret_I_Us_S(){
    return assert_I_Us_S(zig_ret_I_Us_S());
}

int assert_I_Us_Uc(struct I_Us_Uc lv){
    int err = 0;
  if (lv.v1 != 8333) err = 1;
  if (lv.v2 != 4402) err = 2;
  if (lv.v3 != 66) err = 3;
  return err;
}
struct I_Us_Uc ret_I_Us_Uc(){
    struct I_Us_Uc lv = { .v1 = 8333, .v2 = 4402, .v3 = 66 };
    return lv;
}
int zig_assert_I_Us_Uc(struct I_Us_Uc);
int send_I_Us_Uc(){
    return zig_assert_I_Us_Uc(ret_I_Us_Uc());
}
struct I_Us_Uc zig_ret_I_Us_Uc();
int assert_ret_I_Us_Uc(){
    return assert_I_Us_Uc(zig_ret_I_Us_Uc());
}

int assert_I_Us_Ui(struct I_Us_Ui lv){
    int err = 0;
  if (lv.v1 != 73) err = 1;
  if (lv.v2 != 15233) err = 2;
  if (lv.v3 != 28358) err = 3;
  return err;
}
struct I_Us_Ui ret_I_Us_Ui(){
    struct I_Us_Ui lv = { .v1 = 73, .v2 = 15233, .v3 = 28358 };
    return lv;
}
int zig_assert_I_Us_Ui(struct I_Us_Ui);
int send_I_Us_Ui(){
    return zig_assert_I_Us_Ui(ret_I_Us_Ui());
}
struct I_Us_Ui zig_ret_I_Us_Ui();
int assert_ret_I_Us_Ui(){
    return assert_I_Us_Ui(zig_ret_I_Us_Ui());
}

int assert_I_Us_Ul(struct I_Us_Ul lv){
    int err = 0;
  if (lv.v1 != 27440) err = 1;
  if (lv.v2 != 23695) err = 2;
  if (lv.v3 != 21809) err = 3;
  return err;
}
struct I_Us_Ul ret_I_Us_Ul(){
    struct I_Us_Ul lv = { .v1 = 27440, .v2 = 23695, .v3 = 21809 };
    return lv;
}
int zig_assert_I_Us_Ul(struct I_Us_Ul);
int send_I_Us_Ul(){
    return zig_assert_I_Us_Ul(ret_I_Us_Ul());
}
struct I_Us_Ul zig_ret_I_Us_Ul();
int assert_ret_I_Us_Ul(){
    return assert_I_Us_Ul(zig_ret_I_Us_Ul());
}

int assert_I_Us_Us(struct I_Us_Us lv){
    int err = 0;
  if (lv.v1 != 343) err = 1;
  if (lv.v2 != 3972) err = 2;
  if (lv.v3 != 6185) err = 3;
  return err;
}
struct I_Us_Us ret_I_Us_Us(){
    struct I_Us_Us lv = { .v1 = 343, .v2 = 3972, .v3 = 6185 };
    return lv;
}
int zig_assert_I_Us_Us(struct I_Us_Us);
int send_I_Us_Us(){
    return zig_assert_I_Us_Us(ret_I_Us_Us());
}
struct I_Us_Us zig_ret_I_Us_Us();
int assert_ret_I_Us_Us(){
    return assert_I_Us_Us(zig_ret_I_Us_Us());
}

int assert_I_Us_Vp(struct I_Us_Vp lv){
    int err = 0;
  if (lv.v1 != 20872) err = 1;
  if (lv.v2 != 4076) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Us_Vp ret_I_Us_Vp(){
    struct I_Us_Vp lv = { .v1 = 20872, .v2 = 4076, .v3 = 0 };
    return lv;
}
int zig_assert_I_Us_Vp(struct I_Us_Vp);
int send_I_Us_Vp(){
    return zig_assert_I_Us_Vp(ret_I_Us_Vp());
}
struct I_Us_Vp zig_ret_I_Us_Vp();
int assert_ret_I_Us_Vp(){
    return assert_I_Us_Vp(zig_ret_I_Us_Vp());
}

int assert_I_Vp(struct I_Vp lv){
    int err = 0;
  if (lv.v1 != 14125) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct I_Vp ret_I_Vp(){
    struct I_Vp lv = { .v1 = 14125, .v2 = 0 };
    return lv;
}
int zig_assert_I_Vp(struct I_Vp);
int send_I_Vp(){
    return zig_assert_I_Vp(ret_I_Vp());
}
struct I_Vp zig_ret_I_Vp();
int assert_ret_I_Vp(){
    return assert_I_Vp(zig_ret_I_Vp());
}

int assert_I_Vp_C(struct I_Vp_C lv){
    int err = 0;
  if (lv.v1 != 5602) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 126) err = 3;
  return err;
}
struct I_Vp_C ret_I_Vp_C(){
    struct I_Vp_C lv = { .v1 = 5602, .v2 = 0, .v3 = 126 };
    return lv;
}
int zig_assert_I_Vp_C(struct I_Vp_C);
int send_I_Vp_C(){
    return zig_assert_I_Vp_C(ret_I_Vp_C());
}
struct I_Vp_C zig_ret_I_Vp_C();
int assert_ret_I_Vp_C(){
    return assert_I_Vp_C(zig_ret_I_Vp_C());
}

int assert_I_Vp_D(struct I_Vp_D lv){
    int err = 0;
  if (lv.v1 != 4595) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct I_Vp_D ret_I_Vp_D(){
    struct I_Vp_D lv = { .v1 = 4595, .v2 = 0, .v3 = 1.0 };
    return lv;
}
int zig_assert_I_Vp_D(struct I_Vp_D);
int send_I_Vp_D(){
    return zig_assert_I_Vp_D(ret_I_Vp_D());
}
struct I_Vp_D zig_ret_I_Vp_D();
int assert_ret_I_Vp_D(){
    return assert_I_Vp_D(zig_ret_I_Vp_D());
}

int assert_I_Vp_F(struct I_Vp_F lv){
    int err = 0;
  if (lv.v1 != 10132) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct I_Vp_F ret_I_Vp_F(){
    struct I_Vp_F lv = { .v1 = 10132, .v2 = 0, .v3 = 4.5 };
    return lv;
}
int zig_assert_I_Vp_F(struct I_Vp_F);
int send_I_Vp_F(){
    return zig_assert_I_Vp_F(ret_I_Vp_F());
}
struct I_Vp_F zig_ret_I_Vp_F();
int assert_ret_I_Vp_F(){
    return assert_I_Vp_F(zig_ret_I_Vp_F());
}

int assert_I_Vp_I(struct I_Vp_I lv){
    int err = 0;
  if (lv.v1 != 105) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 25037) err = 3;
  return err;
}
struct I_Vp_I ret_I_Vp_I(){
    struct I_Vp_I lv = { .v1 = 105, .v2 = 0, .v3 = 25037 };
    return lv;
}
int zig_assert_I_Vp_I(struct I_Vp_I);
int send_I_Vp_I(){
    return zig_assert_I_Vp_I(ret_I_Vp_I());
}
struct I_Vp_I zig_ret_I_Vp_I();
int assert_ret_I_Vp_I(){
    return assert_I_Vp_I(zig_ret_I_Vp_I());
}

int assert_I_Vp_Ip(struct I_Vp_Ip lv){
    int err = 0;
  if (lv.v1 != 30849) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Vp_Ip ret_I_Vp_Ip(){
    struct I_Vp_Ip lv = { .v1 = 30849, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_I_Vp_Ip(struct I_Vp_Ip);
int send_I_Vp_Ip(){
    return zig_assert_I_Vp_Ip(ret_I_Vp_Ip());
}
struct I_Vp_Ip zig_ret_I_Vp_Ip();
int assert_ret_I_Vp_Ip(){
    return assert_I_Vp_Ip(zig_ret_I_Vp_Ip());
}

int assert_I_Vp_L(struct I_Vp_L lv){
    int err = 0;
  if (lv.v1 != 30130) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 7703) err = 3;
  return err;
}
struct I_Vp_L ret_I_Vp_L(){
    struct I_Vp_L lv = { .v1 = 30130, .v2 = 0, .v3 = 7703 };
    return lv;
}
int zig_assert_I_Vp_L(struct I_Vp_L);
int send_I_Vp_L(){
    return zig_assert_I_Vp_L(ret_I_Vp_L());
}
struct I_Vp_L zig_ret_I_Vp_L();
int assert_ret_I_Vp_L(){
    return assert_I_Vp_L(zig_ret_I_Vp_L());
}

int assert_I_Vp_S(struct I_Vp_S lv){
    int err = 0;
  if (lv.v1 != 7707) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4892) err = 3;
  return err;
}
struct I_Vp_S ret_I_Vp_S(){
    struct I_Vp_S lv = { .v1 = 7707, .v2 = 0, .v3 = 4892 };
    return lv;
}
int zig_assert_I_Vp_S(struct I_Vp_S);
int send_I_Vp_S(){
    return zig_assert_I_Vp_S(ret_I_Vp_S());
}
struct I_Vp_S zig_ret_I_Vp_S();
int assert_ret_I_Vp_S(){
    return assert_I_Vp_S(zig_ret_I_Vp_S());
}

int assert_I_Vp_Uc(struct I_Vp_Uc lv){
    int err = 0;
  if (lv.v1 != 2818) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 85) err = 3;
  return err;
}
struct I_Vp_Uc ret_I_Vp_Uc(){
    struct I_Vp_Uc lv = { .v1 = 2818, .v2 = 0, .v3 = 85 };
    return lv;
}
int zig_assert_I_Vp_Uc(struct I_Vp_Uc);
int send_I_Vp_Uc(){
    return zig_assert_I_Vp_Uc(ret_I_Vp_Uc());
}
struct I_Vp_Uc zig_ret_I_Vp_Uc();
int assert_ret_I_Vp_Uc(){
    return assert_I_Vp_Uc(zig_ret_I_Vp_Uc());
}

int assert_I_Vp_Ui(struct I_Vp_Ui lv){
    int err = 0;
  if (lv.v1 != 16364) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 5730) err = 3;
  return err;
}
struct I_Vp_Ui ret_I_Vp_Ui(){
    struct I_Vp_Ui lv = { .v1 = 16364, .v2 = 0, .v3 = 5730 };
    return lv;
}
int zig_assert_I_Vp_Ui(struct I_Vp_Ui);
int send_I_Vp_Ui(){
    return zig_assert_I_Vp_Ui(ret_I_Vp_Ui());
}
struct I_Vp_Ui zig_ret_I_Vp_Ui();
int assert_ret_I_Vp_Ui(){
    return assert_I_Vp_Ui(zig_ret_I_Vp_Ui());
}

int assert_I_Vp_Ul(struct I_Vp_Ul lv){
    int err = 0;
  if (lv.v1 != 12923) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 21204) err = 3;
  return err;
}
struct I_Vp_Ul ret_I_Vp_Ul(){
    struct I_Vp_Ul lv = { .v1 = 12923, .v2 = 0, .v3 = 21204 };
    return lv;
}
int zig_assert_I_Vp_Ul(struct I_Vp_Ul);
int send_I_Vp_Ul(){
    return zig_assert_I_Vp_Ul(ret_I_Vp_Ul());
}
struct I_Vp_Ul zig_ret_I_Vp_Ul();
int assert_ret_I_Vp_Ul(){
    return assert_I_Vp_Ul(zig_ret_I_Vp_Ul());
}

int assert_I_Vp_Us(struct I_Vp_Us lv){
    int err = 0;
  if (lv.v1 != 19642) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 20053) err = 3;
  return err;
}
struct I_Vp_Us ret_I_Vp_Us(){
    struct I_Vp_Us lv = { .v1 = 19642, .v2 = 0, .v3 = 20053 };
    return lv;
}
int zig_assert_I_Vp_Us(struct I_Vp_Us);
int send_I_Vp_Us(){
    return zig_assert_I_Vp_Us(ret_I_Vp_Us());
}
struct I_Vp_Us zig_ret_I_Vp_Us();
int assert_ret_I_Vp_Us(){
    return assert_I_Vp_Us(zig_ret_I_Vp_Us());
}

int assert_I_Vp_Vp(struct I_Vp_Vp lv){
    int err = 0;
  if (lv.v1 != 9745) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct I_Vp_Vp ret_I_Vp_Vp(){
    struct I_Vp_Vp lv = { .v1 = 9745, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_I_Vp_Vp(struct I_Vp_Vp);
int send_I_Vp_Vp(){
    return zig_assert_I_Vp_Vp(ret_I_Vp_Vp());
}
struct I_Vp_Vp zig_ret_I_Vp_Vp();
int assert_ret_I_Vp_Vp(){
    return assert_I_Vp_Vp(zig_ret_I_Vp_Vp());
}

int assert_Ip(struct Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  return err;
}
struct Ip ret_Ip(){
    struct Ip lv = { .v1 = 0 };
    return lv;
}
int zig_assert_Ip(struct Ip);
int send_Ip(){
    return zig_assert_Ip(ret_Ip());
}
struct Ip zig_ret_Ip();
int assert_ret_Ip(){
    return assert_Ip(zig_ret_Ip());
}

