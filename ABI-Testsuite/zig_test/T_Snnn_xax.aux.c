#include "T_Snnn_xax.h"

int assert_F_C(struct F_C lv){
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 105) return 2;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 111) return 2;
  if (lv.v3 != 18) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 57) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 101) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 112) return 2;
  if (lv.v3 != 2332) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 70) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 121) return 2;
  if (lv.v3 != 18229) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 31) return 2;
  if (lv.v3 != 31175) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 69) return 2;
  if (lv.v3 != 62) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 36) return 2;
  if (lv.v3 != 24845) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 124) return 2;
  if (lv.v3 != 11914) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 81) return 2;
  if (lv.v3 != 25724) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 52) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 4.5) return 2;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 36) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 2184) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 13946) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 10845) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 85) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 19194) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 20762) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 447) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 4.5) return 2;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 24) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 30673) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 12916) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 24001) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 36) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 18540) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 3966) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 27558) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 1.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 2673) return 2;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 9062) return 2;
  if (lv.v3 != 42) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 31457) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 29585) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 32140) return 2;
  if (lv.v3 != 26057) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 15202) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 6979) return 2;
  if (lv.v3 != 3920) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 4337) return 2;
  if (lv.v3 != 955) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 24794) return 2;
  if (lv.v3 != 1) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 12911) return 2;
  if (lv.v3 != 9581) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 8607) return 2;
  if (lv.v3 != 1051) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 23512) return 2;
  if (lv.v3 != 5539) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 1023) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 88) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 25911) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 20726) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 17278) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 24) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 28681) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 20410) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 21682) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 11017) return 2;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 26491) return 2;
  if (lv.v3 != 72) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 6010) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 1339) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 5595) return 2;
  if (lv.v3 != 27088) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 30167) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 31661) return 2;
  if (lv.v3 != 592) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 29218) return 2;
  if (lv.v3 != 27604) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 31405) return 2;
  if (lv.v3 != 5) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 9274) return 2;
  if (lv.v3 != 21311) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 9453) return 2;
  if (lv.v3 != 27799) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 6123) return 2;
  if (lv.v3 != 22927) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 29255) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 28164) return 2;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 29744) return 2;
  if (lv.v3 != 119) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 18960) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 14516) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 24764) return 2;
  if (lv.v3 != 23226) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 5176) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 11860) return 2;
  if (lv.v3 != 24497) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 7971) return 2;
  if (lv.v3 != 12118) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 30467) return 2;
  if (lv.v3 != 22) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 4283) return 2;
  if (lv.v3 != 12381) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 12799) return 2;
  if (lv.v3 != 20298) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 29977) return 2;
  if (lv.v3 != 6734) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 23368) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 118) return 2;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 96) return 2;
  if (lv.v3 != 48) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 109) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 84) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 127) return 2;
  if (lv.v3 != 20842) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 40) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 64) return 2;
  if (lv.v3 != 26076) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 115) return 2;
  if (lv.v3 != 32111) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 2) return 2;
  if (lv.v3 != 27) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 12) return 2;
  if (lv.v3 != 25869) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 92) return 2;
  if (lv.v3 != 22425) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 45) return 2;
  if (lv.v3 != 2721) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 68) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 27782) return 2;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 26810) return 2;
  if (lv.v3 != 15) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 18724) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 5603) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 7194) return 2;
  if (lv.v3 != 6964) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 25159) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 6394) return 2;
  if (lv.v3 != 24104) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 16310) return 2;
  if (lv.v3 != 2152) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 31933) return 2;
  if (lv.v3 != 84) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 21258) return 2;
  if (lv.v3 != 27470) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 2270) return 2;
  if (lv.v3 != 24341) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 26884) return 2;
  if (lv.v3 != 20081) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 29111) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 502) return 2;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 16763) return 2;
  if (lv.v3 != 7) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 5788) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 13617) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 4234) return 2;
  if (lv.v3 != 27107) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 18940) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 2524) return 2;
  if (lv.v3 != 1186) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 21773) return 2;
  if (lv.v3 != 17719) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 25283) return 2;
  if (lv.v3 != 93) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 24342) return 2;
  if (lv.v3 != 20594) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 31964) return 2;
  if (lv.v3 != 4612) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 4378) return 2;
  if (lv.v3 != 28649) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 16097) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 27623) return 2;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 9824) return 2;
  if (lv.v3 != 22) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 17509) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 32668) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
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
  if (lv.v1 != 0.5) return 1;
  if (lv.v2 != 25895) return 2;
  if (lv.v3 != 32572) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 31390) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 13124) return 2;
  if (lv.v3 != 14055) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 26736) return 2;
  if (lv.v3 != 24374) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 1879) return 2;
  if (lv.v3 != 8) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 15041) return 2;
  if (lv.v3 != 1344) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 15873) return 2;
  if (lv.v3 != 13395) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 19507) return 2;
  if (lv.v3 != 32357) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 14866) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 77) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
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
  if (lv.v1 != -0.25) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 5405) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 7.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4556) return 3;
  return 0;
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
  if (lv.v1 != 1.0) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 22690) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 6) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 3327) return 3;
  return 0;
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
  if (lv.v1 != 0.875) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 21417) return 3;
  return 0;
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
  if (lv.v1 != -2.125) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 10303) return 3;
  return 0;
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
  if (lv.v1 != 4.5) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 17446) return 1;
  return 0;
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
  if (lv.v1 != 27188) return 1;
  if (lv.v2 != 109) return 2;
  return 0;
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
  if (lv.v1 != 9281) return 1;
  if (lv.v2 != 5) return 2;
  if (lv.v3 != 27) return 3;
  return 0;
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
  if (lv.v1 != 11) return 1;
  if (lv.v2 != 124) return 2;
  if (lv.v3 != -2.125) return 3;
  return 0;
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
  if (lv.v1 != 22444) return 1;
  if (lv.v2 != 7) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
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
  if (lv.v1 != 3062) return 1;
  if (lv.v2 != 32) return 2;
  if (lv.v3 != 3299) return 3;
  return 0;
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
  if (lv.v1 != 1006) return 1;
  if (lv.v2 != 27) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 2698) return 1;
  if (lv.v2 != 125) return 2;
  if (lv.v3 != 27877) return 3;
  return 0;
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
  if (lv.v1 != 8815) return 1;
  if (lv.v2 != 126) return 2;
  if (lv.v3 != 10343) return 3;
  return 0;
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
  if (lv.v1 != 9659) return 1;
  if (lv.v2 != 11) return 2;
  if (lv.v3 != 95) return 3;
  return 0;
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
  if (lv.v1 != 12781) return 1;
  if (lv.v2 != 106) return 2;
  if (lv.v3 != 4108) return 3;
  return 0;
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
  if (lv.v1 != 6776) return 1;
  if (lv.v2 != 16) return 2;
  if (lv.v3 != 8336) return 3;
  return 0;
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
  if (lv.v1 != 9679) return 1;
  if (lv.v2 != 50) return 2;
  if (lv.v3 != 19135) return 3;
  return 0;
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
  if (lv.v1 != 5526) return 1;
  if (lv.v2 != 73) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 20372) return 1;
  if (lv.v2 != -2.125) return 2;
  return 0;
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
  if (lv.v1 != 12641) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 101) return 3;
  return 0;
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
  if (lv.v1 != 2553) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
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
  if (lv.v1 != 27668) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
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
  if (lv.v1 != 1093) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 17976) return 3;
  return 0;
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
  if (lv.v1 != 1902) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 29) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 10866) return 3;
  return 0;
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
  if (lv.v1 != 21029) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 12193) return 3;
  return 0;
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
  if (lv.v1 != 26572) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 77) return 3;
  return 0;
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
  if (lv.v1 != 17463) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 30633) return 3;
  return 0;
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
  if (lv.v1 != 23110) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 5933) return 3;
  return 0;
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
  if (lv.v1 != 10730) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 2491) return 3;
  return 0;
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
  if (lv.v1 != 16938) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 18073) return 1;
  if (lv.v2 != 7.0) return 2;
  return 0;
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
  if (lv.v1 != 22692) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 92) return 3;
  return 0;
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
  if (lv.v1 != 12941) return 1;
  if (lv.v2 != 0.875) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
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
  if (lv.v1 != 2124) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
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
  if (lv.v1 != 1040) return 1;
  if (lv.v2 != -2.125) return 2;
  if (lv.v3 != 3590) return 3;
  return 0;
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
  if (lv.v1 != 5132) return 1;
  if (lv.v2 != 0.5) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 9972) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 27944) return 3;
  return 0;
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
  if (lv.v1 != 22732) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 27757) return 3;
  return 0;
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
  if (lv.v1 != 2422) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 125) return 3;
  return 0;
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
  if (lv.v1 != 2378) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 16314) return 3;
  return 0;
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
  if (lv.v1 != 32591) return 1;
  if (lv.v2 != 7.0) return 2;
  if (lv.v3 != 2455) return 3;
  return 0;
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
  if (lv.v1 != 24697) return 1;
  if (lv.v2 != -0.25) return 2;
  if (lv.v3 != 26553) return 3;
  return 0;
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
  if (lv.v1 != 9459) return 1;
  if (lv.v2 != 4.5) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 25696) return 1;
  if (lv.v2 != 22162) return 2;
  return 0;
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
  if (lv.v1 != 10622) return 1;
  if (lv.v2 != 26317) return 2;
  if (lv.v3 != 54) return 3;
  return 0;
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
  if (lv.v1 != 26453) return 1;
  if (lv.v2 != 22783) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
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
  if (lv.v1 != 25300) return 1;
  if (lv.v2 != 31232) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
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
  if (lv.v1 != 27961) return 1;
  if (lv.v2 != 24345) return 2;
  if (lv.v3 != 24769) return 3;
  return 0;
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
  if (lv.v1 != 115) return 1;
  if (lv.v2 != 29069) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 31682) return 1;
  if (lv.v2 != 7411) return 2;
  if (lv.v3 != 18481) return 3;
  return 0;
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
  if (lv.v1 != 23632) return 1;
  if (lv.v2 != 31412) return 2;
  if (lv.v3 != 28557) return 3;
  return 0;
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
  if (lv.v1 != 10669) return 1;
  if (lv.v2 != 23177) return 2;
  if (lv.v3 != 84) return 3;
  return 0;
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
  if (lv.v1 != 19858) return 1;
  if (lv.v2 != 31111) return 2;
  if (lv.v3 != 266) return 3;
  return 0;
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
  if (lv.v1 != 6762) return 1;
  if (lv.v2 != 13697) return 2;
  if (lv.v3 != 16792) return 3;
  return 0;
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
  if (lv.v1 != 24170) return 1;
  if (lv.v2 != 32025) return 2;
  if (lv.v3 != 8080) return 3;
  return 0;
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
  if (lv.v1 != 25106) return 1;
  if (lv.v2 != 21604) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 1345) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
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
  if (lv.v1 != 1373) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 14) return 3;
  return 0;
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
  if (lv.v1 != 10474) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
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
  if (lv.v1 != 5032) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
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
  if (lv.v1 != 9003) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 11875) return 3;
  return 0;
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
  if (lv.v1 != 11522) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 12609) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 30005) return 3;
  return 0;
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
  if (lv.v1 != 1059) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 12558) return 3;
  return 0;
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
  if (lv.v1 != 19459) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 5) return 3;
  return 0;
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
  if (lv.v1 != 6589) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 18101) return 3;
  return 0;
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
  if (lv.v1 != 7) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 6657) return 3;
  return 0;
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
  if (lv.v1 != 12797) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 13372) return 3;
  return 0;
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
  if (lv.v1 != 23149) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 11062) return 1;
  if (lv.v2 != 25927) return 2;
  return 0;
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
  if (lv.v1 != 3285) return 1;
  if (lv.v2 != 26260) return 2;
  if (lv.v3 != 38) return 3;
  return 0;
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
  if (lv.v1 != 6996) return 1;
  if (lv.v2 != 15320) return 2;
  if (lv.v3 != -0.25) return 3;
  return 0;
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
  if (lv.v1 != 3417) return 1;
  if (lv.v2 != 5705) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
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
  if (lv.v1 != 2878) return 1;
  if (lv.v2 != 28742) return 2;
  if (lv.v3 != 27089) return 3;
  return 0;
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
  if (lv.v1 != 14448) return 1;
  if (lv.v2 != 27305) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 16994) return 1;
  if (lv.v2 != 26074) return 2;
  if (lv.v3 != 1517) return 3;
  return 0;
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
  if (lv.v1 != 20300) return 1;
  if (lv.v2 != 20165) return 2;
  if (lv.v3 != 29078) return 3;
  return 0;
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
  if (lv.v1 != 17820) return 1;
  if (lv.v2 != 24592) return 2;
  if (lv.v3 != 125) return 3;
  return 0;
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
  if (lv.v1 != 2268) return 1;
  if (lv.v2 != 14982) return 2;
  if (lv.v3 != 1284) return 3;
  return 0;
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
  if (lv.v1 != 25117) return 1;
  if (lv.v2 != 28257) return 2;
  if (lv.v3 != 12345) return 3;
  return 0;
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
  if (lv.v1 != 6112) return 1;
  if (lv.v2 != 1636) return 2;
  if (lv.v3 != 20956) return 3;
  return 0;
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
  if (lv.v1 != 17111) return 1;
  if (lv.v2 != 29128) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 20472) return 1;
  if (lv.v2 != 19735) return 2;
  return 0;
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
  if (lv.v1 != 30085) return 1;
  if (lv.v2 != 12535) return 2;
  if (lv.v3 != 68) return 3;
  return 0;
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
  if (lv.v1 != 20790) return 1;
  if (lv.v2 != 12807) return 2;
  if (lv.v3 != 7.0) return 3;
  return 0;
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
  if (lv.v1 != 21659) return 1;
  if (lv.v2 != 15482) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
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
  if (lv.v1 != 19770) return 1;
  if (lv.v2 != 17968) return 2;
  if (lv.v3 != 30797) return 3;
  return 0;
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
  if (lv.v1 != 11156) return 1;
  if (lv.v2 != 459) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 20002) return 1;
  if (lv.v2 != 1407) return 2;
  if (lv.v3 != 28466) return 3;
  return 0;
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
  if (lv.v1 != 23178) return 1;
  if (lv.v2 != 17246) return 2;
  if (lv.v3 != 30600) return 3;
  return 0;
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
  if (lv.v1 != 29081) return 1;
  if (lv.v2 != 27093) return 2;
  if (lv.v3 != 104) return 3;
  return 0;
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
  if (lv.v1 != 19804) return 1;
  if (lv.v2 != 17359) return 2;
  if (lv.v3 != 32650) return 3;
  return 0;
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
  if (lv.v1 != 16785) return 1;
  if (lv.v2 != 22570) return 2;
  if (lv.v3 != 20471) return 3;
  return 0;
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
  if (lv.v1 != 18528) return 1;
  if (lv.v2 != 17634) return 2;
  if (lv.v3 != 13815) return 3;
  return 0;
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
  if (lv.v1 != 5046) return 1;
  if (lv.v2 != 3734) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 9907) return 1;
  if (lv.v2 != 62) return 2;
  return 0;
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
  if (lv.v1 != 814) return 1;
  if (lv.v2 != 78) return 2;
  if (lv.v3 != 109) return 3;
  return 0;
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
  if (lv.v1 != 22054) return 1;
  if (lv.v2 != 100) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
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
  if (lv.v1 != 4971) return 1;
  if (lv.v2 != 16) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
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
  if (lv.v1 != 11510) return 1;
  if (lv.v2 != 113) return 2;
  if (lv.v3 != 9530) return 3;
  return 0;
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
  if (lv.v1 != 10563) return 1;
  if (lv.v2 != 11) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 28918) return 1;
  if (lv.v2 != 4) return 2;
  if (lv.v3 != 2052) return 3;
  return 0;
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
  if (lv.v1 != 17185) return 1;
  if (lv.v2 != 74) return 2;
  if (lv.v3 != 22429) return 3;
  return 0;
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
  if (lv.v1 != 7894) return 1;
  if (lv.v2 != 53) return 2;
  if (lv.v3 != 84) return 3;
  return 0;
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
  if (lv.v1 != 29649) return 1;
  if (lv.v2 != 52) return 2;
  if (lv.v3 != 28628) return 3;
  return 0;
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
  if (lv.v1 != 13864) return 1;
  if (lv.v2 != 71) return 2;
  if (lv.v3 != 17139) return 3;
  return 0;
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
  if (lv.v1 != 621) return 1;
  if (lv.v2 != 24) return 2;
  if (lv.v3 != 87) return 3;
  return 0;
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
  if (lv.v1 != 15733) return 1;
  if (lv.v2 != 107) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 7752) return 1;
  if (lv.v2 != 28087) return 2;
  return 0;
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
  if (lv.v1 != 16981) return 1;
  if (lv.v2 != 17288) return 2;
  if (lv.v3 != 2) return 3;
  return 0;
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
  if (lv.v1 != 23540) return 1;
  if (lv.v2 != 10678) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
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
  if (lv.v1 != 24642) return 1;
  if (lv.v2 != 26856) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
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
  if (lv.v1 != 8999) return 1;
  if (lv.v2 != 1538) return 2;
  if (lv.v3 != 10112) return 3;
  return 0;
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
  if (lv.v1 != 12833) return 1;
  if (lv.v2 != 8536) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 5275) return 1;
  if (lv.v2 != 28397) return 2;
  if (lv.v3 != 7892) return 3;
  return 0;
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
  if (lv.v1 != 2988) return 1;
  if (lv.v2 != 13600) return 2;
  if (lv.v3 != 2866) return 3;
  return 0;
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
  if (lv.v1 != 22817) return 1;
  if (lv.v2 != 14264) return 2;
  if (lv.v3 != 36) return 3;
  return 0;
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
  if (lv.v1 != 24298) return 1;
  if (lv.v2 != 4517) return 2;
  if (lv.v3 != 19633) return 3;
  return 0;
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
  if (lv.v1 != 14891) return 1;
  if (lv.v2 != 14320) return 2;
  if (lv.v3 != 17109) return 3;
  return 0;
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
  if (lv.v1 != 12774) return 1;
  if (lv.v2 != 30862) return 2;
  if (lv.v3 != 23839) return 3;
  return 0;
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
  if (lv.v1 != 25010) return 1;
  if (lv.v2 != 12563) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 29320) return 1;
  if (lv.v2 != 9969) return 2;
  return 0;
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
  if (lv.v1 != 20010) return 1;
  if (lv.v2 != 6864) return 2;
  if (lv.v3 != 53) return 3;
  return 0;
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
  if (lv.v1 != 31184) return 1;
  if (lv.v2 != 21032) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
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
  if (lv.v1 != 13631) return 1;
  if (lv.v2 != 23584) return 2;
  if (lv.v3 != 0.5) return 3;
  return 0;
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
  if (lv.v1 != 24693) return 1;
  if (lv.v2 != 10012) return 2;
  if (lv.v3 != 25520) return 3;
  return 0;
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
  if (lv.v1 != 24608) return 1;
  if (lv.v2 != 31825) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 2359) return 1;
  if (lv.v2 != 23401) return 2;
  if (lv.v3 != 32239) return 3;
  return 0;
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
  if (lv.v1 != 29907) return 1;
  if (lv.v2 != 31008) return 2;
  if (lv.v3 != 28563) return 3;
  return 0;
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
  if (lv.v1 != 425) return 1;
  if (lv.v2 != 18214) return 2;
  if (lv.v3 != 121) return 3;
  return 0;
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
  if (lv.v1 != 19879) return 1;
  if (lv.v2 != 18445) return 2;
  if (lv.v3 != 2904) return 3;
  return 0;
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
  if (lv.v1 != 22126) return 1;
  if (lv.v2 != 4806) return 2;
  if (lv.v3 != 9350) return 3;
  return 0;
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
  if (lv.v1 != 23692) return 1;
  if (lv.v2 != 18615) return 2;
  if (lv.v3 != 3046) return 3;
  return 0;
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
  if (lv.v1 != 7177) return 1;
  if (lv.v2 != 6432) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 2019) return 1;
  if (lv.v2 != 19027) return 2;
  return 0;
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
  if (lv.v1 != 13272) return 1;
  if (lv.v2 != 23928) return 2;
  if (lv.v3 != 68) return 3;
  return 0;
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
  if (lv.v1 != 29968) return 1;
  if (lv.v2 != 8541) return 2;
  if (lv.v3 != 0.875) return 3;
  return 0;
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
  if (lv.v1 != 2365) return 1;
  if (lv.v2 != 20461) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
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
  if (lv.v1 != 10524) return 1;
  if (lv.v2 != 18897) return 2;
  if (lv.v3 != 1284) return 3;
  return 0;
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
  if (lv.v1 != 17227) return 1;
  if (lv.v2 != 19352) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 12034) return 1;
  if (lv.v2 != 21029) return 2;
  if (lv.v3 != 616) return 3;
  return 0;
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
  if (lv.v1 != 19176) return 1;
  if (lv.v2 != 14442) return 2;
  if (lv.v3 != 1020) return 3;
  return 0;
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
  if (lv.v1 != 8333) return 1;
  if (lv.v2 != 4402) return 2;
  if (lv.v3 != 66) return 3;
  return 0;
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
  if (lv.v1 != 73) return 1;
  if (lv.v2 != 15233) return 2;
  if (lv.v3 != 28358) return 3;
  return 0;
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
  if (lv.v1 != 27440) return 1;
  if (lv.v2 != 23695) return 2;
  if (lv.v3 != 21809) return 3;
  return 0;
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
  if (lv.v1 != 343) return 1;
  if (lv.v2 != 3972) return 2;
  if (lv.v3 != 6185) return 3;
  return 0;
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
  if (lv.v1 != 20872) return 1;
  if (lv.v2 != 4076) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 14125) return 1;
  if (lv.v2 != 0) return 2;
  return 0;
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
  if (lv.v1 != 5602) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 126) return 3;
  return 0;
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
  if (lv.v1 != 4595) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 1.0) return 3;
  return 0;
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
  if (lv.v1 != 10132) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4.5) return 3;
  return 0;
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
  if (lv.v1 != 105) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 25037) return 3;
  return 0;
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
  if (lv.v1 != 30849) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 30130) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 7703) return 3;
  return 0;
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
  if (lv.v1 != 7707) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 4892) return 3;
  return 0;
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
  if (lv.v1 != 2818) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 85) return 3;
  return 0;
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
  if (lv.v1 != 16364) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 5730) return 3;
  return 0;
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
  if (lv.v1 != 12923) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 21204) return 3;
  return 0;
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
  if (lv.v1 != 19642) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 20053) return 3;
  return 0;
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
  if (lv.v1 != 9745) return 1;
  if (lv.v2 != 0) return 2;
  if (lv.v3 != 0) return 3;
  return 0;
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
  if (lv.v1 != 0) return 1;
  return 0;
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

