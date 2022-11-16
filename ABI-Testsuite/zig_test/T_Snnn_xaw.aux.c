#include "T_Snnn_xaw.h"

int assert_C_C(struct C_C lv){
    int err = 0;
  if (lv.v1 != 93) err = 1;
  if (lv.v2 != 58) err = 2;
  return err;
}
struct C_C ret_C_C(){
    struct C_C lv = { .v1 = 93, .v2 = 58 };
    return lv;
}
int zig_assert_C_C(struct C_C);
int send_C_C(){
    return zig_assert_C_C(ret_C_C());
}
struct C_C zig_ret_C_C();
int assert_ret_C_C(){
    return assert_C_C(zig_ret_C_C());
}

int assert_C_C_C(struct C_C_C lv){
    int err = 0;
  if (lv.v1 != 4) err = 1;
  if (lv.v2 != 51) err = 2;
  if (lv.v3 != 111) err = 3;
  return err;
}
struct C_C_C ret_C_C_C(){
    struct C_C_C lv = { .v1 = 4, .v2 = 51, .v3 = 111 };
    return lv;
}
int zig_assert_C_C_C(struct C_C_C);
int send_C_C_C(){
    return zig_assert_C_C_C(ret_C_C_C());
}
struct C_C_C zig_ret_C_C_C();
int assert_ret_C_C_C(){
    return assert_C_C_C(zig_ret_C_C_C());
}

int assert_C_C_D(struct C_C_D lv){
    int err = 0;
  if (lv.v1 != 88) err = 1;
  if (lv.v2 != 39) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct C_C_D ret_C_C_D(){
    struct C_C_D lv = { .v1 = 88, .v2 = 39, .v3 = -2.125 };
    return lv;
}
int zig_assert_C_C_D(struct C_C_D);
int send_C_C_D(){
    return zig_assert_C_C_D(ret_C_C_D());
}
struct C_C_D zig_ret_C_C_D();
int assert_ret_C_C_D(){
    return assert_C_C_D(zig_ret_C_C_D());
}

int assert_C_C_F(struct C_C_F lv){
    int err = 0;
  if (lv.v1 != 33) err = 1;
  if (lv.v2 != 7) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct C_C_F ret_C_C_F(){
    struct C_C_F lv = { .v1 = 33, .v2 = 7, .v3 = -2.125 };
    return lv;
}
int zig_assert_C_C_F(struct C_C_F);
int send_C_C_F(){
    return zig_assert_C_C_F(ret_C_C_F());
}
struct C_C_F zig_ret_C_C_F();
int assert_ret_C_C_F(){
    return assert_C_C_F(zig_ret_C_C_F());
}

int assert_C_C_I(struct C_C_I lv){
    int err = 0;
  if (lv.v1 != 13) err = 1;
  if (lv.v2 != 54) err = 2;
  if (lv.v3 != 29336) err = 3;
  return err;
}
struct C_C_I ret_C_C_I(){
    struct C_C_I lv = { .v1 = 13, .v2 = 54, .v3 = 29336 };
    return lv;
}
int zig_assert_C_C_I(struct C_C_I);
int send_C_C_I(){
    return zig_assert_C_C_I(ret_C_C_I());
}
struct C_C_I zig_ret_C_C_I();
int assert_ret_C_C_I(){
    return assert_C_C_I(zig_ret_C_C_I());
}

int assert_C_C_Ip(struct C_C_Ip lv){
    int err = 0;
  if (lv.v1 != 106) err = 1;
  if (lv.v2 != 36) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_C_Ip ret_C_C_Ip(){
    struct C_C_Ip lv = { .v1 = 106, .v2 = 36, .v3 = 0 };
    return lv;
}
int zig_assert_C_C_Ip(struct C_C_Ip);
int send_C_C_Ip(){
    return zig_assert_C_C_Ip(ret_C_C_Ip());
}
struct C_C_Ip zig_ret_C_C_Ip();
int assert_ret_C_C_Ip(){
    return assert_C_C_Ip(zig_ret_C_C_Ip());
}

int assert_C_C_L(struct C_C_L lv){
    int err = 0;
  if (lv.v1 != 47) err = 1;
  if (lv.v2 != 56) err = 2;
  if (lv.v3 != 32374) err = 3;
  return err;
}
struct C_C_L ret_C_C_L(){
    struct C_C_L lv = { .v1 = 47, .v2 = 56, .v3 = 32374 };
    return lv;
}
int zig_assert_C_C_L(struct C_C_L);
int send_C_C_L(){
    return zig_assert_C_C_L(ret_C_C_L());
}
struct C_C_L zig_ret_C_C_L();
int assert_ret_C_C_L(){
    return assert_C_C_L(zig_ret_C_C_L());
}

int assert_C_C_S(struct C_C_S lv){
    int err = 0;
  if (lv.v1 != 25) err = 1;
  if (lv.v2 != 8) err = 2;
  if (lv.v3 != 265) err = 3;
  return err;
}
struct C_C_S ret_C_C_S(){
    struct C_C_S lv = { .v1 = 25, .v2 = 8, .v3 = 265 };
    return lv;
}
int zig_assert_C_C_S(struct C_C_S);
int send_C_C_S(){
    return zig_assert_C_C_S(ret_C_C_S());
}
struct C_C_S zig_ret_C_C_S();
int assert_ret_C_C_S(){
    return assert_C_C_S(zig_ret_C_C_S());
}

int assert_C_C_Uc(struct C_C_Uc lv){
    int err = 0;
  if (lv.v1 != 38) err = 1;
  if (lv.v2 != 42) err = 2;
  if (lv.v3 != 110) err = 3;
  return err;
}
struct C_C_Uc ret_C_C_Uc(){
    struct C_C_Uc lv = { .v1 = 38, .v2 = 42, .v3 = 110 };
    return lv;
}
int zig_assert_C_C_Uc(struct C_C_Uc);
int send_C_C_Uc(){
    return zig_assert_C_C_Uc(ret_C_C_Uc());
}
struct C_C_Uc zig_ret_C_C_Uc();
int assert_ret_C_C_Uc(){
    return assert_C_C_Uc(zig_ret_C_C_Uc());
}

int assert_C_C_Ui(struct C_C_Ui lv){
    int err = 0;
  if (lv.v1 != 126) err = 1;
  if (lv.v2 != 33) err = 2;
  if (lv.v3 != 8231) err = 3;
  return err;
}
struct C_C_Ui ret_C_C_Ui(){
    struct C_C_Ui lv = { .v1 = 126, .v2 = 33, .v3 = 8231 };
    return lv;
}
int zig_assert_C_C_Ui(struct C_C_Ui);
int send_C_C_Ui(){
    return zig_assert_C_C_Ui(ret_C_C_Ui());
}
struct C_C_Ui zig_ret_C_C_Ui();
int assert_ret_C_C_Ui(){
    return assert_C_C_Ui(zig_ret_C_C_Ui());
}

int assert_C_C_Ul(struct C_C_Ul lv){
    int err = 0;
  if (lv.v1 != 89) err = 1;
  if (lv.v2 != 41) err = 2;
  if (lv.v3 != 1425) err = 3;
  return err;
}
struct C_C_Ul ret_C_C_Ul(){
    struct C_C_Ul lv = { .v1 = 89, .v2 = 41, .v3 = 1425 };
    return lv;
}
int zig_assert_C_C_Ul(struct C_C_Ul);
int send_C_C_Ul(){
    return zig_assert_C_C_Ul(ret_C_C_Ul());
}
struct C_C_Ul zig_ret_C_C_Ul();
int assert_ret_C_C_Ul(){
    return assert_C_C_Ul(zig_ret_C_C_Ul());
}

int assert_C_C_Us(struct C_C_Us lv){
    int err = 0;
  if (lv.v1 != 64) err = 1;
  if (lv.v2 != 25) err = 2;
  if (lv.v3 != 3643) err = 3;
  return err;
}
struct C_C_Us ret_C_C_Us(){
    struct C_C_Us lv = { .v1 = 64, .v2 = 25, .v3 = 3643 };
    return lv;
}
int zig_assert_C_C_Us(struct C_C_Us);
int send_C_C_Us(){
    return zig_assert_C_C_Us(ret_C_C_Us());
}
struct C_C_Us zig_ret_C_C_Us();
int assert_ret_C_C_Us(){
    return assert_C_C_Us(zig_ret_C_C_Us());
}

int assert_C_C_Vp(struct C_C_Vp lv){
    int err = 0;
  if (lv.v1 != 104) err = 1;
  if (lv.v2 != 122) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_C_Vp ret_C_C_Vp(){
    struct C_C_Vp lv = { .v1 = 104, .v2 = 122, .v3 = 0 };
    return lv;
}
int zig_assert_C_C_Vp(struct C_C_Vp);
int send_C_C_Vp(){
    return zig_assert_C_C_Vp(ret_C_C_Vp());
}
struct C_C_Vp zig_ret_C_C_Vp();
int assert_ret_C_C_Vp(){
    return assert_C_C_Vp(zig_ret_C_C_Vp());
}

int assert_C_D(struct C_D lv){
    int err = 0;
  if (lv.v1 != 97) err = 1;
  if (lv.v2 != -2.125) err = 2;
  return err;
}
struct C_D ret_C_D(){
    struct C_D lv = { .v1 = 97, .v2 = -2.125 };
    return lv;
}
int zig_assert_C_D(struct C_D);
int send_C_D(){
    return zig_assert_C_D(ret_C_D());
}
struct C_D zig_ret_C_D();
int assert_ret_C_D(){
    return assert_C_D(zig_ret_C_D());
}

int assert_C_D_C(struct C_D_C lv){
    int err = 0;
  if (lv.v1 != 2) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 100) err = 3;
  return err;
}
struct C_D_C ret_C_D_C(){
    struct C_D_C lv = { .v1 = 2, .v2 = 0.5, .v3 = 100 };
    return lv;
}
int zig_assert_C_D_C(struct C_D_C);
int send_C_D_C(){
    return zig_assert_C_D_C(ret_C_D_C());
}
struct C_D_C zig_ret_C_D_C();
int assert_ret_C_D_C(){
    return assert_C_D_C(zig_ret_C_D_C());
}

int assert_C_D_D(struct C_D_D lv){
    int err = 0;
  if (lv.v1 != 56) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct C_D_D ret_C_D_D(){
    struct C_D_D lv = { .v1 = 56, .v2 = -0.25, .v3 = 0.5 };
    return lv;
}
int zig_assert_C_D_D(struct C_D_D);
int send_C_D_D(){
    return zig_assert_C_D_D(ret_C_D_D());
}
struct C_D_D zig_ret_C_D_D();
int assert_ret_C_D_D(){
    return assert_C_D_D(zig_ret_C_D_D());
}

int assert_C_D_F(struct C_D_F lv){
    int err = 0;
  if (lv.v1 != 127) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct C_D_F ret_C_D_F(){
    struct C_D_F lv = { .v1 = 127, .v2 = -0.25, .v3 = 1.0 };
    return lv;
}
int zig_assert_C_D_F(struct C_D_F);
int send_C_D_F(){
    return zig_assert_C_D_F(ret_C_D_F());
}
struct C_D_F zig_ret_C_D_F();
int assert_ret_C_D_F(){
    return assert_C_D_F(zig_ret_C_D_F());
}

int assert_C_D_I(struct C_D_I lv){
    int err = 0;
  if (lv.v1 != 3) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 19706) err = 3;
  return err;
}
struct C_D_I ret_C_D_I(){
    struct C_D_I lv = { .v1 = 3, .v2 = 4.5, .v3 = 19706 };
    return lv;
}
int zig_assert_C_D_I(struct C_D_I);
int send_C_D_I(){
    return zig_assert_C_D_I(ret_C_D_I());
}
struct C_D_I zig_ret_C_D_I();
int assert_ret_C_D_I(){
    return assert_C_D_I(zig_ret_C_D_I());
}

int assert_C_D_Ip(struct C_D_Ip lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_D_Ip ret_C_D_Ip(){
    struct C_D_Ip lv = { .v1 = 9, .v2 = 0.875, .v3 = 0 };
    return lv;
}
int zig_assert_C_D_Ip(struct C_D_Ip);
int send_C_D_Ip(){
    return zig_assert_C_D_Ip(ret_C_D_Ip());
}
struct C_D_Ip zig_ret_C_D_Ip();
int assert_ret_C_D_Ip(){
    return assert_C_D_Ip(zig_ret_C_D_Ip());
}

int assert_C_D_L(struct C_D_L lv){
    int err = 0;
  if (lv.v1 != 78) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 23713) err = 3;
  return err;
}
struct C_D_L ret_C_D_L(){
    struct C_D_L lv = { .v1 = 78, .v2 = 7.0, .v3 = 23713 };
    return lv;
}
int zig_assert_C_D_L(struct C_D_L);
int send_C_D_L(){
    return zig_assert_C_D_L(ret_C_D_L());
}
struct C_D_L zig_ret_C_D_L();
int assert_ret_C_D_L(){
    return assert_C_D_L(zig_ret_C_D_L());
}

int assert_C_D_S(struct C_D_S lv){
    int err = 0;
  if (lv.v1 != 90) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 24730) err = 3;
  return err;
}
struct C_D_S ret_C_D_S(){
    struct C_D_S lv = { .v1 = 90, .v2 = 7.0, .v3 = 24730 };
    return lv;
}
int zig_assert_C_D_S(struct C_D_S);
int send_C_D_S(){
    return zig_assert_C_D_S(ret_C_D_S());
}
struct C_D_S zig_ret_C_D_S();
int assert_ret_C_D_S(){
    return assert_C_D_S(zig_ret_C_D_S());
}

int assert_C_D_Uc(struct C_D_Uc lv){
    int err = 0;
  if (lv.v1 != 75) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 33) err = 3;
  return err;
}
struct C_D_Uc ret_C_D_Uc(){
    struct C_D_Uc lv = { .v1 = 75, .v2 = 4.5, .v3 = 33 };
    return lv;
}
int zig_assert_C_D_Uc(struct C_D_Uc);
int send_C_D_Uc(){
    return zig_assert_C_D_Uc(ret_C_D_Uc());
}
struct C_D_Uc zig_ret_C_D_Uc();
int assert_ret_C_D_Uc(){
    return assert_C_D_Uc(zig_ret_C_D_Uc());
}

int assert_C_D_Ui(struct C_D_Ui lv){
    int err = 0;
  if (lv.v1 != 77) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 4531) err = 3;
  return err;
}
struct C_D_Ui ret_C_D_Ui(){
    struct C_D_Ui lv = { .v1 = 77, .v2 = 1.0, .v3 = 4531 };
    return lv;
}
int zig_assert_C_D_Ui(struct C_D_Ui);
int send_C_D_Ui(){
    return zig_assert_C_D_Ui(ret_C_D_Ui());
}
struct C_D_Ui zig_ret_C_D_Ui();
int assert_ret_C_D_Ui(){
    return assert_C_D_Ui(zig_ret_C_D_Ui());
}

int assert_C_D_Ul(struct C_D_Ul lv){
    int err = 0;
  if (lv.v1 != 19) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 23467) err = 3;
  return err;
}
struct C_D_Ul ret_C_D_Ul(){
    struct C_D_Ul lv = { .v1 = 19, .v2 = 7.0, .v3 = 23467 };
    return lv;
}
int zig_assert_C_D_Ul(struct C_D_Ul);
int send_C_D_Ul(){
    return zig_assert_C_D_Ul(ret_C_D_Ul());
}
struct C_D_Ul zig_ret_C_D_Ul();
int assert_ret_C_D_Ul(){
    return assert_C_D_Ul(zig_ret_C_D_Ul());
}

int assert_C_D_Us(struct C_D_Us lv){
    int err = 0;
  if (lv.v1 != 103) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 5008) err = 3;
  return err;
}
struct C_D_Us ret_C_D_Us(){
    struct C_D_Us lv = { .v1 = 103, .v2 = 0.875, .v3 = 5008 };
    return lv;
}
int zig_assert_C_D_Us(struct C_D_Us);
int send_C_D_Us(){
    return zig_assert_C_D_Us(ret_C_D_Us());
}
struct C_D_Us zig_ret_C_D_Us();
int assert_ret_C_D_Us(){
    return assert_C_D_Us(zig_ret_C_D_Us());
}

int assert_C_D_Vp(struct C_D_Vp lv){
    int err = 0;
  if (lv.v1 != 77) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_D_Vp ret_C_D_Vp(){
    struct C_D_Vp lv = { .v1 = 77, .v2 = -0.25, .v3 = 0 };
    return lv;
}
int zig_assert_C_D_Vp(struct C_D_Vp);
int send_C_D_Vp(){
    return zig_assert_C_D_Vp(ret_C_D_Vp());
}
struct C_D_Vp zig_ret_C_D_Vp();
int assert_ret_C_D_Vp(){
    return assert_C_D_Vp(zig_ret_C_D_Vp());
}

int assert_C_F(struct C_F lv){
    int err = 0;
  if (lv.v1 != 14) err = 1;
  if (lv.v2 != -0.25) err = 2;
  return err;
}
struct C_F ret_C_F(){
    struct C_F lv = { .v1 = 14, .v2 = -0.25 };
    return lv;
}
int zig_assert_C_F(struct C_F);
int send_C_F(){
    return zig_assert_C_F(ret_C_F());
}
struct C_F zig_ret_C_F();
int assert_ret_C_F(){
    return assert_C_F(zig_ret_C_F());
}

int assert_C_F_C(struct C_F_C lv){
    int err = 0;
  if (lv.v1 != 99) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 40) err = 3;
  return err;
}
struct C_F_C ret_C_F_C(){
    struct C_F_C lv = { .v1 = 99, .v2 = -2.125, .v3 = 40 };
    return lv;
}
int zig_assert_C_F_C(struct C_F_C);
int send_C_F_C(){
    return zig_assert_C_F_C(ret_C_F_C());
}
struct C_F_C zig_ret_C_F_C();
int assert_ret_C_F_C(){
    return assert_C_F_C(zig_ret_C_F_C());
}

int assert_C_F_D(struct C_F_D lv){
    int err = 0;
  if (lv.v1 != 90) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct C_F_D ret_C_F_D(){
    struct C_F_D lv = { .v1 = 90, .v2 = -0.25, .v3 = -2.125 };
    return lv;
}
int zig_assert_C_F_D(struct C_F_D);
int send_C_F_D(){
    return zig_assert_C_F_D(ret_C_F_D());
}
struct C_F_D zig_ret_C_F_D();
int assert_ret_C_F_D(){
    return assert_C_F_D(zig_ret_C_F_D());
}

int assert_C_F_F(struct C_F_F lv){
    int err = 0;
  if (lv.v1 != 39) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct C_F_F ret_C_F_F(){
    struct C_F_F lv = { .v1 = 39, .v2 = 0.875, .v3 = 1.0 };
    return lv;
}
int zig_assert_C_F_F(struct C_F_F);
int send_C_F_F(){
    return zig_assert_C_F_F(ret_C_F_F());
}
struct C_F_F zig_ret_C_F_F();
int assert_ret_C_F_F(){
    return assert_C_F_F(zig_ret_C_F_F());
}

int assert_C_F_I(struct C_F_I lv){
    int err = 0;
  if (lv.v1 != 88) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 18203) err = 3;
  return err;
}
struct C_F_I ret_C_F_I(){
    struct C_F_I lv = { .v1 = 88, .v2 = 1.0, .v3 = 18203 };
    return lv;
}
int zig_assert_C_F_I(struct C_F_I);
int send_C_F_I(){
    return zig_assert_C_F_I(ret_C_F_I());
}
struct C_F_I zig_ret_C_F_I();
int assert_ret_C_F_I(){
    return assert_C_F_I(zig_ret_C_F_I());
}

int assert_C_F_Ip(struct C_F_Ip lv){
    int err = 0;
  if (lv.v1 != 2) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_F_Ip ret_C_F_Ip(){
    struct C_F_Ip lv = { .v1 = 2, .v2 = -0.25, .v3 = 0 };
    return lv;
}
int zig_assert_C_F_Ip(struct C_F_Ip);
int send_C_F_Ip(){
    return zig_assert_C_F_Ip(ret_C_F_Ip());
}
struct C_F_Ip zig_ret_C_F_Ip();
int assert_ret_C_F_Ip(){
    return assert_C_F_Ip(zig_ret_C_F_Ip());
}

int assert_C_F_L(struct C_F_L lv){
    int err = 0;
  if (lv.v1 != 125) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 12277) err = 3;
  return err;
}
struct C_F_L ret_C_F_L(){
    struct C_F_L lv = { .v1 = 125, .v2 = -0.25, .v3 = 12277 };
    return lv;
}
int zig_assert_C_F_L(struct C_F_L);
int send_C_F_L(){
    return zig_assert_C_F_L(ret_C_F_L());
}
struct C_F_L zig_ret_C_F_L();
int assert_ret_C_F_L(){
    return assert_C_F_L(zig_ret_C_F_L());
}

int assert_C_F_S(struct C_F_S lv){
    int err = 0;
  if (lv.v1 != 52) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 13569) err = 3;
  return err;
}
struct C_F_S ret_C_F_S(){
    struct C_F_S lv = { .v1 = 52, .v2 = 1.0, .v3 = 13569 };
    return lv;
}
int zig_assert_C_F_S(struct C_F_S);
int send_C_F_S(){
    return zig_assert_C_F_S(ret_C_F_S());
}
struct C_F_S zig_ret_C_F_S();
int assert_ret_C_F_S(){
    return assert_C_F_S(zig_ret_C_F_S());
}

int assert_C_F_Uc(struct C_F_Uc lv){
    int err = 0;
  if (lv.v1 != 115) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 41) err = 3;
  return err;
}
struct C_F_Uc ret_C_F_Uc(){
    struct C_F_Uc lv = { .v1 = 115, .v2 = 0.5, .v3 = 41 };
    return lv;
}
int zig_assert_C_F_Uc(struct C_F_Uc);
int send_C_F_Uc(){
    return zig_assert_C_F_Uc(ret_C_F_Uc());
}
struct C_F_Uc zig_ret_C_F_Uc();
int assert_ret_C_F_Uc(){
    return assert_C_F_Uc(zig_ret_C_F_Uc());
}

int assert_C_F_Ui(struct C_F_Ui lv){
    int err = 0;
  if (lv.v1 != 11) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 15064) err = 3;
  return err;
}
struct C_F_Ui ret_C_F_Ui(){
    struct C_F_Ui lv = { .v1 = 11, .v2 = 0.875, .v3 = 15064 };
    return lv;
}
int zig_assert_C_F_Ui(struct C_F_Ui);
int send_C_F_Ui(){
    return zig_assert_C_F_Ui(ret_C_F_Ui());
}
struct C_F_Ui zig_ret_C_F_Ui();
int assert_ret_C_F_Ui(){
    return assert_C_F_Ui(zig_ret_C_F_Ui());
}

int assert_C_F_Ul(struct C_F_Ul lv){
    int err = 0;
  if (lv.v1 != 39) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 20182) err = 3;
  return err;
}
struct C_F_Ul ret_C_F_Ul(){
    struct C_F_Ul lv = { .v1 = 39, .v2 = 7.0, .v3 = 20182 };
    return lv;
}
int zig_assert_C_F_Ul(struct C_F_Ul);
int send_C_F_Ul(){
    return zig_assert_C_F_Ul(ret_C_F_Ul());
}
struct C_F_Ul zig_ret_C_F_Ul();
int assert_ret_C_F_Ul(){
    return assert_C_F_Ul(zig_ret_C_F_Ul());
}

int assert_C_F_Us(struct C_F_Us lv){
    int err = 0;
  if (lv.v1 != 89) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 1739) err = 3;
  return err;
}
struct C_F_Us ret_C_F_Us(){
    struct C_F_Us lv = { .v1 = 89, .v2 = 1.0, .v3 = 1739 };
    return lv;
}
int zig_assert_C_F_Us(struct C_F_Us);
int send_C_F_Us(){
    return zig_assert_C_F_Us(ret_C_F_Us());
}
struct C_F_Us zig_ret_C_F_Us();
int assert_ret_C_F_Us(){
    return assert_C_F_Us(zig_ret_C_F_Us());
}

int assert_C_F_Vp(struct C_F_Vp lv){
    int err = 0;
  if (lv.v1 != 110) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_F_Vp ret_C_F_Vp(){
    struct C_F_Vp lv = { .v1 = 110, .v2 = 0.875, .v3 = 0 };
    return lv;
}
int zig_assert_C_F_Vp(struct C_F_Vp);
int send_C_F_Vp(){
    return zig_assert_C_F_Vp(ret_C_F_Vp());
}
struct C_F_Vp zig_ret_C_F_Vp();
int assert_ret_C_F_Vp(){
    return assert_C_F_Vp(zig_ret_C_F_Vp());
}

int assert_C_I(struct C_I lv){
    int err = 0;
  if (lv.v1 != 46) err = 1;
  if (lv.v2 != 3018) err = 2;
  return err;
}
struct C_I ret_C_I(){
    struct C_I lv = { .v1 = 46, .v2 = 3018 };
    return lv;
}
int zig_assert_C_I(struct C_I);
int send_C_I(){
    return zig_assert_C_I(ret_C_I());
}
struct C_I zig_ret_C_I();
int assert_ret_C_I(){
    return assert_C_I(zig_ret_C_I());
}

int assert_C_I_C(struct C_I_C lv){
    int err = 0;
  if (lv.v1 != 38) err = 1;
  if (lv.v2 != 18674) err = 2;
  if (lv.v3 != 26) err = 3;
  return err;
}
struct C_I_C ret_C_I_C(){
    struct C_I_C lv = { .v1 = 38, .v2 = 18674, .v3 = 26 };
    return lv;
}
int zig_assert_C_I_C(struct C_I_C);
int send_C_I_C(){
    return zig_assert_C_I_C(ret_C_I_C());
}
struct C_I_C zig_ret_C_I_C();
int assert_ret_C_I_C(){
    return assert_C_I_C(zig_ret_C_I_C());
}

int assert_C_I_D(struct C_I_D lv){
    int err = 0;
  if (lv.v1 != 7) err = 1;
  if (lv.v2 != 8195) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct C_I_D ret_C_I_D(){
    struct C_I_D lv = { .v1 = 7, .v2 = 8195, .v3 = 7.0 };
    return lv;
}
int zig_assert_C_I_D(struct C_I_D);
int send_C_I_D(){
    return zig_assert_C_I_D(ret_C_I_D());
}
struct C_I_D zig_ret_C_I_D();
int assert_ret_C_I_D(){
    return assert_C_I_D(zig_ret_C_I_D());
}

int assert_C_I_F(struct C_I_F lv){
    int err = 0;
  if (lv.v1 != 26) err = 1;
  if (lv.v2 != 19684) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct C_I_F ret_C_I_F(){
    struct C_I_F lv = { .v1 = 26, .v2 = 19684, .v3 = 0.5 };
    return lv;
}
int zig_assert_C_I_F(struct C_I_F);
int send_C_I_F(){
    return zig_assert_C_I_F(ret_C_I_F());
}
struct C_I_F zig_ret_C_I_F();
int assert_ret_C_I_F(){
    return assert_C_I_F(zig_ret_C_I_F());
}

int assert_C_I_I(struct C_I_I lv){
    int err = 0;
  if (lv.v1 != 16) err = 1;
  if (lv.v2 != 24394) err = 2;
  if (lv.v3 != 24801) err = 3;
  return err;
}
struct C_I_I ret_C_I_I(){
    struct C_I_I lv = { .v1 = 16, .v2 = 24394, .v3 = 24801 };
    return lv;
}
int zig_assert_C_I_I(struct C_I_I);
int send_C_I_I(){
    return zig_assert_C_I_I(ret_C_I_I());
}
struct C_I_I zig_ret_C_I_I();
int assert_ret_C_I_I(){
    return assert_C_I_I(zig_ret_C_I_I());
}

int assert_C_I_Ip(struct C_I_Ip lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 4874) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_I_Ip ret_C_I_Ip(){
    struct C_I_Ip lv = { .v1 = 9, .v2 = 4874, .v3 = 0 };
    return lv;
}
int zig_assert_C_I_Ip(struct C_I_Ip);
int send_C_I_Ip(){
    return zig_assert_C_I_Ip(ret_C_I_Ip());
}
struct C_I_Ip zig_ret_C_I_Ip();
int assert_ret_C_I_Ip(){
    return assert_C_I_Ip(zig_ret_C_I_Ip());
}

int assert_C_I_L(struct C_I_L lv){
    int err = 0;
  if (lv.v1 != 83) err = 1;
  if (lv.v2 != 18653) err = 2;
  if (lv.v3 != 14871) err = 3;
  return err;
}
struct C_I_L ret_C_I_L(){
    struct C_I_L lv = { .v1 = 83, .v2 = 18653, .v3 = 14871 };
    return lv;
}
int zig_assert_C_I_L(struct C_I_L);
int send_C_I_L(){
    return zig_assert_C_I_L(ret_C_I_L());
}
struct C_I_L zig_ret_C_I_L();
int assert_ret_C_I_L(){
    return assert_C_I_L(zig_ret_C_I_L());
}

int assert_C_I_S(struct C_I_S lv){
    int err = 0;
  if (lv.v1 != 55) err = 1;
  if (lv.v2 != 11619) err = 2;
  if (lv.v3 != 1995) err = 3;
  return err;
}
struct C_I_S ret_C_I_S(){
    struct C_I_S lv = { .v1 = 55, .v2 = 11619, .v3 = 1995 };
    return lv;
}
int zig_assert_C_I_S(struct C_I_S);
int send_C_I_S(){
    return zig_assert_C_I_S(ret_C_I_S());
}
struct C_I_S zig_ret_C_I_S();
int assert_ret_C_I_S(){
    return assert_C_I_S(zig_ret_C_I_S());
}

int assert_C_I_Uc(struct C_I_Uc lv){
    int err = 0;
  if (lv.v1 != 108) err = 1;
  if (lv.v2 != 18803) err = 2;
  if (lv.v3 != 13) err = 3;
  return err;
}
struct C_I_Uc ret_C_I_Uc(){
    struct C_I_Uc lv = { .v1 = 108, .v2 = 18803, .v3 = 13 };
    return lv;
}
int zig_assert_C_I_Uc(struct C_I_Uc);
int send_C_I_Uc(){
    return zig_assert_C_I_Uc(ret_C_I_Uc());
}
struct C_I_Uc zig_ret_C_I_Uc();
int assert_ret_C_I_Uc(){
    return assert_C_I_Uc(zig_ret_C_I_Uc());
}

int assert_C_I_Ui(struct C_I_Ui lv){
    int err = 0;
  if (lv.v1 != 72) err = 1;
  if (lv.v2 != 10536) err = 2;
  if (lv.v3 != 25360) err = 3;
  return err;
}
struct C_I_Ui ret_C_I_Ui(){
    struct C_I_Ui lv = { .v1 = 72, .v2 = 10536, .v3 = 25360 };
    return lv;
}
int zig_assert_C_I_Ui(struct C_I_Ui);
int send_C_I_Ui(){
    return zig_assert_C_I_Ui(ret_C_I_Ui());
}
struct C_I_Ui zig_ret_C_I_Ui();
int assert_ret_C_I_Ui(){
    return assert_C_I_Ui(zig_ret_C_I_Ui());
}

int assert_C_I_Ul(struct C_I_Ul lv){
    int err = 0;
  if (lv.v1 != 88) err = 1;
  if (lv.v2 != 11624) err = 2;
  if (lv.v3 != 26188) err = 3;
  return err;
}
struct C_I_Ul ret_C_I_Ul(){
    struct C_I_Ul lv = { .v1 = 88, .v2 = 11624, .v3 = 26188 };
    return lv;
}
int zig_assert_C_I_Ul(struct C_I_Ul);
int send_C_I_Ul(){
    return zig_assert_C_I_Ul(ret_C_I_Ul());
}
struct C_I_Ul zig_ret_C_I_Ul();
int assert_ret_C_I_Ul(){
    return assert_C_I_Ul(zig_ret_C_I_Ul());
}

int assert_C_I_Us(struct C_I_Us lv){
    int err = 0;
  if (lv.v1 != 82) err = 1;
  if (lv.v2 != 7832) err = 2;
  if (lv.v3 != 15543) err = 3;
  return err;
}
struct C_I_Us ret_C_I_Us(){
    struct C_I_Us lv = { .v1 = 82, .v2 = 7832, .v3 = 15543 };
    return lv;
}
int zig_assert_C_I_Us(struct C_I_Us);
int send_C_I_Us(){
    return zig_assert_C_I_Us(ret_C_I_Us());
}
struct C_I_Us zig_ret_C_I_Us();
int assert_ret_C_I_Us(){
    return assert_C_I_Us(zig_ret_C_I_Us());
}

int assert_C_I_Vp(struct C_I_Vp lv){
    int err = 0;
  if (lv.v1 != 8) err = 1;
  if (lv.v2 != 3632) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_I_Vp ret_C_I_Vp(){
    struct C_I_Vp lv = { .v1 = 8, .v2 = 3632, .v3 = 0 };
    return lv;
}
int zig_assert_C_I_Vp(struct C_I_Vp);
int send_C_I_Vp(){
    return zig_assert_C_I_Vp(ret_C_I_Vp());
}
struct C_I_Vp zig_ret_C_I_Vp();
int assert_ret_C_I_Vp(){
    return assert_C_I_Vp(zig_ret_C_I_Vp());
}

int assert_C_Ip(struct C_Ip lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct C_Ip ret_C_Ip(){
    struct C_Ip lv = { .v1 = 9, .v2 = 0 };
    return lv;
}
int zig_assert_C_Ip(struct C_Ip);
int send_C_Ip(){
    return zig_assert_C_Ip(ret_C_Ip());
}
struct C_Ip zig_ret_C_Ip();
int assert_ret_C_Ip(){
    return assert_C_Ip(zig_ret_C_Ip());
}

int assert_C_Ip_C(struct C_Ip_C lv){
    int err = 0;
  if (lv.v1 != 121) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 51) err = 3;
  return err;
}
struct C_Ip_C ret_C_Ip_C(){
    struct C_Ip_C lv = { .v1 = 121, .v2 = 0, .v3 = 51 };
    return lv;
}
int zig_assert_C_Ip_C(struct C_Ip_C);
int send_C_Ip_C(){
    return zig_assert_C_Ip_C(ret_C_Ip_C());
}
struct C_Ip_C zig_ret_C_Ip_C();
int assert_ret_C_Ip_C(){
    return assert_C_Ip_C(zig_ret_C_Ip_C());
}

int assert_C_Ip_D(struct C_Ip_D lv){
    int err = 0;
  if (lv.v1 != 80) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct C_Ip_D ret_C_Ip_D(){
    struct C_Ip_D lv = { .v1 = 80, .v2 = 0, .v3 = 0.875 };
    return lv;
}
int zig_assert_C_Ip_D(struct C_Ip_D);
int send_C_Ip_D(){
    return zig_assert_C_Ip_D(ret_C_Ip_D());
}
struct C_Ip_D zig_ret_C_Ip_D();
int assert_ret_C_Ip_D(){
    return assert_C_Ip_D(zig_ret_C_Ip_D());
}

int assert_C_Ip_F(struct C_Ip_F lv){
    int err = 0;
  if (lv.v1 != 52) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct C_Ip_F ret_C_Ip_F(){
    struct C_Ip_F lv = { .v1 = 52, .v2 = 0, .v3 = 1.0 };
    return lv;
}
int zig_assert_C_Ip_F(struct C_Ip_F);
int send_C_Ip_F(){
    return zig_assert_C_Ip_F(ret_C_Ip_F());
}
struct C_Ip_F zig_ret_C_Ip_F();
int assert_ret_C_Ip_F(){
    return assert_C_Ip_F(zig_ret_C_Ip_F());
}

int assert_C_Ip_I(struct C_Ip_I lv){
    int err = 0;
  if (lv.v1 != 42) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 7495) err = 3;
  return err;
}
struct C_Ip_I ret_C_Ip_I(){
    struct C_Ip_I lv = { .v1 = 42, .v2 = 0, .v3 = 7495 };
    return lv;
}
int zig_assert_C_Ip_I(struct C_Ip_I);
int send_C_Ip_I(){
    return zig_assert_C_Ip_I(ret_C_Ip_I());
}
struct C_Ip_I zig_ret_C_Ip_I();
int assert_ret_C_Ip_I(){
    return assert_C_Ip_I(zig_ret_C_Ip_I());
}

int assert_C_Ip_Ip(struct C_Ip_Ip lv){
    int err = 0;
  if (lv.v1 != 28) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Ip_Ip ret_C_Ip_Ip(){
    struct C_Ip_Ip lv = { .v1 = 28, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_C_Ip_Ip(struct C_Ip_Ip);
int send_C_Ip_Ip(){
    return zig_assert_C_Ip_Ip(ret_C_Ip_Ip());
}
struct C_Ip_Ip zig_ret_C_Ip_Ip();
int assert_ret_C_Ip_Ip(){
    return assert_C_Ip_Ip(zig_ret_C_Ip_Ip());
}

int assert_C_Ip_L(struct C_Ip_L lv){
    int err = 0;
  if (lv.v1 != 61) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 20688) err = 3;
  return err;
}
struct C_Ip_L ret_C_Ip_L(){
    struct C_Ip_L lv = { .v1 = 61, .v2 = 0, .v3 = 20688 };
    return lv;
}
int zig_assert_C_Ip_L(struct C_Ip_L);
int send_C_Ip_L(){
    return zig_assert_C_Ip_L(ret_C_Ip_L());
}
struct C_Ip_L zig_ret_C_Ip_L();
int assert_ret_C_Ip_L(){
    return assert_C_Ip_L(zig_ret_C_Ip_L());
}

int assert_C_Ip_S(struct C_Ip_S lv){
    int err = 0;
  if (lv.v1 != 13) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 22524) err = 3;
  return err;
}
struct C_Ip_S ret_C_Ip_S(){
    struct C_Ip_S lv = { .v1 = 13, .v2 = 0, .v3 = 22524 };
    return lv;
}
int zig_assert_C_Ip_S(struct C_Ip_S);
int send_C_Ip_S(){
    return zig_assert_C_Ip_S(ret_C_Ip_S());
}
struct C_Ip_S zig_ret_C_Ip_S();
int assert_ret_C_Ip_S(){
    return assert_C_Ip_S(zig_ret_C_Ip_S());
}

int assert_C_Ip_Uc(struct C_Ip_Uc lv){
    int err = 0;
  if (lv.v1 != 110) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 110) err = 3;
  return err;
}
struct C_Ip_Uc ret_C_Ip_Uc(){
    struct C_Ip_Uc lv = { .v1 = 110, .v2 = 0, .v3 = 110 };
    return lv;
}
int zig_assert_C_Ip_Uc(struct C_Ip_Uc);
int send_C_Ip_Uc(){
    return zig_assert_C_Ip_Uc(ret_C_Ip_Uc());
}
struct C_Ip_Uc zig_ret_C_Ip_Uc();
int assert_ret_C_Ip_Uc(){
    return assert_C_Ip_Uc(zig_ret_C_Ip_Uc());
}

int assert_C_Ip_Ui(struct C_Ip_Ui lv){
    int err = 0;
  if (lv.v1 != 30) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 29435) err = 3;
  return err;
}
struct C_Ip_Ui ret_C_Ip_Ui(){
    struct C_Ip_Ui lv = { .v1 = 30, .v2 = 0, .v3 = 29435 };
    return lv;
}
int zig_assert_C_Ip_Ui(struct C_Ip_Ui);
int send_C_Ip_Ui(){
    return zig_assert_C_Ip_Ui(ret_C_Ip_Ui());
}
struct C_Ip_Ui zig_ret_C_Ip_Ui();
int assert_ret_C_Ip_Ui(){
    return assert_C_Ip_Ui(zig_ret_C_Ip_Ui());
}

int assert_C_Ip_Ul(struct C_Ip_Ul lv){
    int err = 0;
  if (lv.v1 != 86) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 25629) err = 3;
  return err;
}
struct C_Ip_Ul ret_C_Ip_Ul(){
    struct C_Ip_Ul lv = { .v1 = 86, .v2 = 0, .v3 = 25629 };
    return lv;
}
int zig_assert_C_Ip_Ul(struct C_Ip_Ul);
int send_C_Ip_Ul(){
    return zig_assert_C_Ip_Ul(ret_C_Ip_Ul());
}
struct C_Ip_Ul zig_ret_C_Ip_Ul();
int assert_ret_C_Ip_Ul(){
    return assert_C_Ip_Ul(zig_ret_C_Ip_Ul());
}

int assert_C_Ip_Us(struct C_Ip_Us lv){
    int err = 0;
  if (lv.v1 != 76) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 11318) err = 3;
  return err;
}
struct C_Ip_Us ret_C_Ip_Us(){
    struct C_Ip_Us lv = { .v1 = 76, .v2 = 0, .v3 = 11318 };
    return lv;
}
int zig_assert_C_Ip_Us(struct C_Ip_Us);
int send_C_Ip_Us(){
    return zig_assert_C_Ip_Us(ret_C_Ip_Us());
}
struct C_Ip_Us zig_ret_C_Ip_Us();
int assert_ret_C_Ip_Us(){
    return assert_C_Ip_Us(zig_ret_C_Ip_Us());
}

int assert_C_Ip_Vp(struct C_Ip_Vp lv){
    int err = 0;
  if (lv.v1 != 88) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Ip_Vp ret_C_Ip_Vp(){
    struct C_Ip_Vp lv = { .v1 = 88, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_C_Ip_Vp(struct C_Ip_Vp);
int send_C_Ip_Vp(){
    return zig_assert_C_Ip_Vp(ret_C_Ip_Vp());
}
struct C_Ip_Vp zig_ret_C_Ip_Vp();
int assert_ret_C_Ip_Vp(){
    return assert_C_Ip_Vp(zig_ret_C_Ip_Vp());
}

int assert_C_L(struct C_L lv){
    int err = 0;
  if (lv.v1 != 97) err = 1;
  if (lv.v2 != 28944) err = 2;
  return err;
}
struct C_L ret_C_L(){
    struct C_L lv = { .v1 = 97, .v2 = 28944 };
    return lv;
}
int zig_assert_C_L(struct C_L);
int send_C_L(){
    return zig_assert_C_L(ret_C_L());
}
struct C_L zig_ret_C_L();
int assert_ret_C_L(){
    return assert_C_L(zig_ret_C_L());
}

int assert_C_L_C(struct C_L_C lv){
    int err = 0;
  if (lv.v1 != 78) err = 1;
  if (lv.v2 != 26157) err = 2;
  if (lv.v3 != 19) err = 3;
  return err;
}
struct C_L_C ret_C_L_C(){
    struct C_L_C lv = { .v1 = 78, .v2 = 26157, .v3 = 19 };
    return lv;
}
int zig_assert_C_L_C(struct C_L_C);
int send_C_L_C(){
    return zig_assert_C_L_C(ret_C_L_C());
}
struct C_L_C zig_ret_C_L_C();
int assert_ret_C_L_C(){
    return assert_C_L_C(zig_ret_C_L_C());
}

int assert_C_L_D(struct C_L_D lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 20523) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct C_L_D ret_C_L_D(){
    struct C_L_D lv = { .v1 = 9, .v2 = 20523, .v3 = -2.125 };
    return lv;
}
int zig_assert_C_L_D(struct C_L_D);
int send_C_L_D(){
    return zig_assert_C_L_D(ret_C_L_D());
}
struct C_L_D zig_ret_C_L_D();
int assert_ret_C_L_D(){
    return assert_C_L_D(zig_ret_C_L_D());
}

int assert_C_L_F(struct C_L_F lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 8400) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct C_L_F ret_C_L_F(){
    struct C_L_F lv = { .v1 = 9, .v2 = 8400, .v3 = 0.875 };
    return lv;
}
int zig_assert_C_L_F(struct C_L_F);
int send_C_L_F(){
    return zig_assert_C_L_F(ret_C_L_F());
}
struct C_L_F zig_ret_C_L_F();
int assert_ret_C_L_F(){
    return assert_C_L_F(zig_ret_C_L_F());
}

int assert_C_L_I(struct C_L_I lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 13198) err = 2;
  if (lv.v3 != 2651) err = 3;
  return err;
}
struct C_L_I ret_C_L_I(){
    struct C_L_I lv = { .v1 = 9, .v2 = 13198, .v3 = 2651 };
    return lv;
}
int zig_assert_C_L_I(struct C_L_I);
int send_C_L_I(){
    return zig_assert_C_L_I(ret_C_L_I());
}
struct C_L_I zig_ret_C_L_I();
int assert_ret_C_L_I(){
    return assert_C_L_I(zig_ret_C_L_I());
}

int assert_C_L_Ip(struct C_L_Ip lv){
    int err = 0;
  if (lv.v1 != 20) err = 1;
  if (lv.v2 != 32425) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_L_Ip ret_C_L_Ip(){
    struct C_L_Ip lv = { .v1 = 20, .v2 = 32425, .v3 = 0 };
    return lv;
}
int zig_assert_C_L_Ip(struct C_L_Ip);
int send_C_L_Ip(){
    return zig_assert_C_L_Ip(ret_C_L_Ip());
}
struct C_L_Ip zig_ret_C_L_Ip();
int assert_ret_C_L_Ip(){
    return assert_C_L_Ip(zig_ret_C_L_Ip());
}

int assert_C_L_L(struct C_L_L lv){
    int err = 0;
  if (lv.v1 != 20) err = 1;
  if (lv.v2 != 7763) err = 2;
  if (lv.v3 != 7816) err = 3;
  return err;
}
struct C_L_L ret_C_L_L(){
    struct C_L_L lv = { .v1 = 20, .v2 = 7763, .v3 = 7816 };
    return lv;
}
int zig_assert_C_L_L(struct C_L_L);
int send_C_L_L(){
    return zig_assert_C_L_L(ret_C_L_L());
}
struct C_L_L zig_ret_C_L_L();
int assert_ret_C_L_L(){
    return assert_C_L_L(zig_ret_C_L_L());
}

int assert_C_L_S(struct C_L_S lv){
    int err = 0;
  if (lv.v1 != 98) err = 1;
  if (lv.v2 != 3355) err = 2;
  if (lv.v3 != 11825) err = 3;
  return err;
}
struct C_L_S ret_C_L_S(){
    struct C_L_S lv = { .v1 = 98, .v2 = 3355, .v3 = 11825 };
    return lv;
}
int zig_assert_C_L_S(struct C_L_S);
int send_C_L_S(){
    return zig_assert_C_L_S(ret_C_L_S());
}
struct C_L_S zig_ret_C_L_S();
int assert_ret_C_L_S(){
    return assert_C_L_S(zig_ret_C_L_S());
}

int assert_C_L_Uc(struct C_L_Uc lv){
    int err = 0;
  if (lv.v1 != 84) err = 1;
  if (lv.v2 != 21813) err = 2;
  if (lv.v3 != 82) err = 3;
  return err;
}
struct C_L_Uc ret_C_L_Uc(){
    struct C_L_Uc lv = { .v1 = 84, .v2 = 21813, .v3 = 82 };
    return lv;
}
int zig_assert_C_L_Uc(struct C_L_Uc);
int send_C_L_Uc(){
    return zig_assert_C_L_Uc(ret_C_L_Uc());
}
struct C_L_Uc zig_ret_C_L_Uc();
int assert_ret_C_L_Uc(){
    return assert_C_L_Uc(zig_ret_C_L_Uc());
}

int assert_C_L_Ui(struct C_L_Ui lv){
    int err = 0;
  if (lv.v1 != 18) err = 1;
  if (lv.v2 != 4611) err = 2;
  if (lv.v3 != 4717) err = 3;
  return err;
}
struct C_L_Ui ret_C_L_Ui(){
    struct C_L_Ui lv = { .v1 = 18, .v2 = 4611, .v3 = 4717 };
    return lv;
}
int zig_assert_C_L_Ui(struct C_L_Ui);
int send_C_L_Ui(){
    return zig_assert_C_L_Ui(ret_C_L_Ui());
}
struct C_L_Ui zig_ret_C_L_Ui();
int assert_ret_C_L_Ui(){
    return assert_C_L_Ui(zig_ret_C_L_Ui());
}

int assert_C_L_Ul(struct C_L_Ul lv){
    int err = 0;
  if (lv.v1 != 92) err = 1;
  if (lv.v2 != 12449) err = 2;
  if (lv.v3 != 415) err = 3;
  return err;
}
struct C_L_Ul ret_C_L_Ul(){
    struct C_L_Ul lv = { .v1 = 92, .v2 = 12449, .v3 = 415 };
    return lv;
}
int zig_assert_C_L_Ul(struct C_L_Ul);
int send_C_L_Ul(){
    return zig_assert_C_L_Ul(ret_C_L_Ul());
}
struct C_L_Ul zig_ret_C_L_Ul();
int assert_ret_C_L_Ul(){
    return assert_C_L_Ul(zig_ret_C_L_Ul());
}

int assert_C_L_Us(struct C_L_Us lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 23471) err = 2;
  if (lv.v3 != 19229) err = 3;
  return err;
}
struct C_L_Us ret_C_L_Us(){
    struct C_L_Us lv = { .v1 = 9, .v2 = 23471, .v3 = 19229 };
    return lv;
}
int zig_assert_C_L_Us(struct C_L_Us);
int send_C_L_Us(){
    return zig_assert_C_L_Us(ret_C_L_Us());
}
struct C_L_Us zig_ret_C_L_Us();
int assert_ret_C_L_Us(){
    return assert_C_L_Us(zig_ret_C_L_Us());
}

int assert_C_L_Vp(struct C_L_Vp lv){
    int err = 0;
  if (lv.v1 != 117) err = 1;
  if (lv.v2 != 23122) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_L_Vp ret_C_L_Vp(){
    struct C_L_Vp lv = { .v1 = 117, .v2 = 23122, .v3 = 0 };
    return lv;
}
int zig_assert_C_L_Vp(struct C_L_Vp);
int send_C_L_Vp(){
    return zig_assert_C_L_Vp(ret_C_L_Vp());
}
struct C_L_Vp zig_ret_C_L_Vp();
int assert_ret_C_L_Vp(){
    return assert_C_L_Vp(zig_ret_C_L_Vp());
}

int assert_C_S(struct C_S lv){
    int err = 0;
  if (lv.v1 != 124) err = 1;
  if (lv.v2 != 7400) err = 2;
  return err;
}
struct C_S ret_C_S(){
    struct C_S lv = { .v1 = 124, .v2 = 7400 };
    return lv;
}
int zig_assert_C_S(struct C_S);
int send_C_S(){
    return zig_assert_C_S(ret_C_S());
}
struct C_S zig_ret_C_S();
int assert_ret_C_S(){
    return assert_C_S(zig_ret_C_S());
}

int assert_C_S_C(struct C_S_C lv){
    int err = 0;
  if (lv.v1 != 110) err = 1;
  if (lv.v2 != 3564) err = 2;
  if (lv.v3 != 30) err = 3;
  return err;
}
struct C_S_C ret_C_S_C(){
    struct C_S_C lv = { .v1 = 110, .v2 = 3564, .v3 = 30 };
    return lv;
}
int zig_assert_C_S_C(struct C_S_C);
int send_C_S_C(){
    return zig_assert_C_S_C(ret_C_S_C());
}
struct C_S_C zig_ret_C_S_C();
int assert_ret_C_S_C(){
    return assert_C_S_C(zig_ret_C_S_C());
}

int assert_C_S_D(struct C_S_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7071) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct C_S_D ret_C_S_D(){
    struct C_S_D lv = { .v1 = 0, .v2 = 7071, .v3 = -2.125 };
    return lv;
}
int zig_assert_C_S_D(struct C_S_D);
int send_C_S_D(){
    return zig_assert_C_S_D(ret_C_S_D());
}
struct C_S_D zig_ret_C_S_D();
int assert_ret_C_S_D(){
    return assert_C_S_D(zig_ret_C_S_D());
}

int assert_C_S_F(struct C_S_F lv){
    int err = 0;
  if (lv.v1 != 26) err = 1;
  if (lv.v2 != 17641) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct C_S_F ret_C_S_F(){
    struct C_S_F lv = { .v1 = 26, .v2 = 17641, .v3 = -2.125 };
    return lv;
}
int zig_assert_C_S_F(struct C_S_F);
int send_C_S_F(){
    return zig_assert_C_S_F(ret_C_S_F());
}
struct C_S_F zig_ret_C_S_F();
int assert_ret_C_S_F(){
    return assert_C_S_F(zig_ret_C_S_F());
}

int assert_C_S_I(struct C_S_I lv){
    int err = 0;
  if (lv.v1 != 1) err = 1;
  if (lv.v2 != 13882) err = 2;
  if (lv.v3 != 27710) err = 3;
  return err;
}
struct C_S_I ret_C_S_I(){
    struct C_S_I lv = { .v1 = 1, .v2 = 13882, .v3 = 27710 };
    return lv;
}
int zig_assert_C_S_I(struct C_S_I);
int send_C_S_I(){
    return zig_assert_C_S_I(ret_C_S_I());
}
struct C_S_I zig_ret_C_S_I();
int assert_ret_C_S_I(){
    return assert_C_S_I(zig_ret_C_S_I());
}

int assert_C_S_Ip(struct C_S_Ip lv){
    int err = 0;
  if (lv.v1 != 82) err = 1;
  if (lv.v2 != 21579) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_S_Ip ret_C_S_Ip(){
    struct C_S_Ip lv = { .v1 = 82, .v2 = 21579, .v3 = 0 };
    return lv;
}
int zig_assert_C_S_Ip(struct C_S_Ip);
int send_C_S_Ip(){
    return zig_assert_C_S_Ip(ret_C_S_Ip());
}
struct C_S_Ip zig_ret_C_S_Ip();
int assert_ret_C_S_Ip(){
    return assert_C_S_Ip(zig_ret_C_S_Ip());
}

int assert_C_S_L(struct C_S_L lv){
    int err = 0;
  if (lv.v1 != 123) err = 1;
  if (lv.v2 != 5427) err = 2;
  if (lv.v3 != 3858) err = 3;
  return err;
}
struct C_S_L ret_C_S_L(){
    struct C_S_L lv = { .v1 = 123, .v2 = 5427, .v3 = 3858 };
    return lv;
}
int zig_assert_C_S_L(struct C_S_L);
int send_C_S_L(){
    return zig_assert_C_S_L(ret_C_S_L());
}
struct C_S_L zig_ret_C_S_L();
int assert_ret_C_S_L(){
    return assert_C_S_L(zig_ret_C_S_L());
}

int assert_C_S_S(struct C_S_S lv){
    int err = 0;
  if (lv.v1 != 12) err = 1;
  if (lv.v2 != 18576) err = 2;
  if (lv.v3 != 1535) err = 3;
  return err;
}
struct C_S_S ret_C_S_S(){
    struct C_S_S lv = { .v1 = 12, .v2 = 18576, .v3 = 1535 };
    return lv;
}
int zig_assert_C_S_S(struct C_S_S);
int send_C_S_S(){
    return zig_assert_C_S_S(ret_C_S_S());
}
struct C_S_S zig_ret_C_S_S();
int assert_ret_C_S_S(){
    return assert_C_S_S(zig_ret_C_S_S());
}

int assert_C_S_Uc(struct C_S_Uc lv){
    int err = 0;
  if (lv.v1 != 59) err = 1;
  if (lv.v2 != 4768) err = 2;
  if (lv.v3 != 10) err = 3;
  return err;
}
struct C_S_Uc ret_C_S_Uc(){
    struct C_S_Uc lv = { .v1 = 59, .v2 = 4768, .v3 = 10 };
    return lv;
}
int zig_assert_C_S_Uc(struct C_S_Uc);
int send_C_S_Uc(){
    return zig_assert_C_S_Uc(ret_C_S_Uc());
}
struct C_S_Uc zig_ret_C_S_Uc();
int assert_ret_C_S_Uc(){
    return assert_C_S_Uc(zig_ret_C_S_Uc());
}

int assert_C_S_Ui(struct C_S_Ui lv){
    int err = 0;
  if (lv.v1 != 72) err = 1;
  if (lv.v2 != 14125) err = 2;
  if (lv.v3 != 4728) err = 3;
  return err;
}
struct C_S_Ui ret_C_S_Ui(){
    struct C_S_Ui lv = { .v1 = 72, .v2 = 14125, .v3 = 4728 };
    return lv;
}
int zig_assert_C_S_Ui(struct C_S_Ui);
int send_C_S_Ui(){
    return zig_assert_C_S_Ui(ret_C_S_Ui());
}
struct C_S_Ui zig_ret_C_S_Ui();
int assert_ret_C_S_Ui(){
    return assert_C_S_Ui(zig_ret_C_S_Ui());
}

int assert_C_S_Ul(struct C_S_Ul lv){
    int err = 0;
  if (lv.v1 != 65) err = 1;
  if (lv.v2 != 17421) err = 2;
  if (lv.v3 != 1849) err = 3;
  return err;
}
struct C_S_Ul ret_C_S_Ul(){
    struct C_S_Ul lv = { .v1 = 65, .v2 = 17421, .v3 = 1849 };
    return lv;
}
int zig_assert_C_S_Ul(struct C_S_Ul);
int send_C_S_Ul(){
    return zig_assert_C_S_Ul(ret_C_S_Ul());
}
struct C_S_Ul zig_ret_C_S_Ul();
int assert_ret_C_S_Ul(){
    return assert_C_S_Ul(zig_ret_C_S_Ul());
}

int assert_C_S_Us(struct C_S_Us lv){
    int err = 0;
  if (lv.v1 != 113) err = 1;
  if (lv.v2 != 29303) err = 2;
  if (lv.v3 != 16194) err = 3;
  return err;
}
struct C_S_Us ret_C_S_Us(){
    struct C_S_Us lv = { .v1 = 113, .v2 = 29303, .v3 = 16194 };
    return lv;
}
int zig_assert_C_S_Us(struct C_S_Us);
int send_C_S_Us(){
    return zig_assert_C_S_Us(ret_C_S_Us());
}
struct C_S_Us zig_ret_C_S_Us();
int assert_ret_C_S_Us(){
    return assert_C_S_Us(zig_ret_C_S_Us());
}

int assert_C_S_Vp(struct C_S_Vp lv){
    int err = 0;
  if (lv.v1 != 52) err = 1;
  if (lv.v2 != 27691) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_S_Vp ret_C_S_Vp(){
    struct C_S_Vp lv = { .v1 = 52, .v2 = 27691, .v3 = 0 };
    return lv;
}
int zig_assert_C_S_Vp(struct C_S_Vp);
int send_C_S_Vp(){
    return zig_assert_C_S_Vp(ret_C_S_Vp());
}
struct C_S_Vp zig_ret_C_S_Vp();
int assert_ret_C_S_Vp(){
    return assert_C_S_Vp(zig_ret_C_S_Vp());
}

int assert_C_Uc(struct C_Uc lv){
    int err = 0;
  if (lv.v1 != 93) err = 1;
  if (lv.v2 != 46) err = 2;
  return err;
}
struct C_Uc ret_C_Uc(){
    struct C_Uc lv = { .v1 = 93, .v2 = 46 };
    return lv;
}
int zig_assert_C_Uc(struct C_Uc);
int send_C_Uc(){
    return zig_assert_C_Uc(ret_C_Uc());
}
struct C_Uc zig_ret_C_Uc();
int assert_ret_C_Uc(){
    return assert_C_Uc(zig_ret_C_Uc());
}

int assert_C_Uc_C(struct C_Uc_C lv){
    int err = 0;
  if (lv.v1 != 28) err = 1;
  if (lv.v2 != 86) err = 2;
  if (lv.v3 != 16) err = 3;
  return err;
}
struct C_Uc_C ret_C_Uc_C(){
    struct C_Uc_C lv = { .v1 = 28, .v2 = 86, .v3 = 16 };
    return lv;
}
int zig_assert_C_Uc_C(struct C_Uc_C);
int send_C_Uc_C(){
    return zig_assert_C_Uc_C(ret_C_Uc_C());
}
struct C_Uc_C zig_ret_C_Uc_C();
int assert_ret_C_Uc_C(){
    return assert_C_Uc_C(zig_ret_C_Uc_C());
}

int assert_C_Uc_D(struct C_Uc_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 2) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct C_Uc_D ret_C_Uc_D(){
    struct C_Uc_D lv = { .v1 = 0, .v2 = 2, .v3 = 0.5 };
    return lv;
}
int zig_assert_C_Uc_D(struct C_Uc_D);
int send_C_Uc_D(){
    return zig_assert_C_Uc_D(ret_C_Uc_D());
}
struct C_Uc_D zig_ret_C_Uc_D();
int assert_ret_C_Uc_D(){
    return assert_C_Uc_D(zig_ret_C_Uc_D());
}

int assert_C_Uc_F(struct C_Uc_F lv){
    int err = 0;
  if (lv.v1 != 115) err = 1;
  if (lv.v2 != 17) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct C_Uc_F ret_C_Uc_F(){
    struct C_Uc_F lv = { .v1 = 115, .v2 = 17, .v3 = 0.875 };
    return lv;
}
int zig_assert_C_Uc_F(struct C_Uc_F);
int send_C_Uc_F(){
    return zig_assert_C_Uc_F(ret_C_Uc_F());
}
struct C_Uc_F zig_ret_C_Uc_F();
int assert_ret_C_Uc_F(){
    return assert_C_Uc_F(zig_ret_C_Uc_F());
}

int assert_C_Uc_I(struct C_Uc_I lv){
    int err = 0;
  if (lv.v1 != 17) err = 1;
  if (lv.v2 != 45) err = 2;
  if (lv.v3 != 13482) err = 3;
  return err;
}
struct C_Uc_I ret_C_Uc_I(){
    struct C_Uc_I lv = { .v1 = 17, .v2 = 45, .v3 = 13482 };
    return lv;
}
int zig_assert_C_Uc_I(struct C_Uc_I);
int send_C_Uc_I(){
    return zig_assert_C_Uc_I(ret_C_Uc_I());
}
struct C_Uc_I zig_ret_C_Uc_I();
int assert_ret_C_Uc_I(){
    return assert_C_Uc_I(zig_ret_C_Uc_I());
}

int assert_C_Uc_Ip(struct C_Uc_Ip lv){
    int err = 0;
  if (lv.v1 != 52) err = 1;
  if (lv.v2 != 7) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Uc_Ip ret_C_Uc_Ip(){
    struct C_Uc_Ip lv = { .v1 = 52, .v2 = 7, .v3 = 0 };
    return lv;
}
int zig_assert_C_Uc_Ip(struct C_Uc_Ip);
int send_C_Uc_Ip(){
    return zig_assert_C_Uc_Ip(ret_C_Uc_Ip());
}
struct C_Uc_Ip zig_ret_C_Uc_Ip();
int assert_ret_C_Uc_Ip(){
    return assert_C_Uc_Ip(zig_ret_C_Uc_Ip());
}

int assert_C_Uc_L(struct C_Uc_L lv){
    int err = 0;
  if (lv.v1 != 5) err = 1;
  if (lv.v2 != 88) err = 2;
  if (lv.v3 != 31749) err = 3;
  return err;
}
struct C_Uc_L ret_C_Uc_L(){
    struct C_Uc_L lv = { .v1 = 5, .v2 = 88, .v3 = 31749 };
    return lv;
}
int zig_assert_C_Uc_L(struct C_Uc_L);
int send_C_Uc_L(){
    return zig_assert_C_Uc_L(ret_C_Uc_L());
}
struct C_Uc_L zig_ret_C_Uc_L();
int assert_ret_C_Uc_L(){
    return assert_C_Uc_L(zig_ret_C_Uc_L());
}

int assert_C_Uc_S(struct C_Uc_S lv){
    int err = 0;
  if (lv.v1 != 98) err = 1;
  if (lv.v2 != 11) err = 2;
  if (lv.v3 != 25168) err = 3;
  return err;
}
struct C_Uc_S ret_C_Uc_S(){
    struct C_Uc_S lv = { .v1 = 98, .v2 = 11, .v3 = 25168 };
    return lv;
}
int zig_assert_C_Uc_S(struct C_Uc_S);
int send_C_Uc_S(){
    return zig_assert_C_Uc_S(ret_C_Uc_S());
}
struct C_Uc_S zig_ret_C_Uc_S();
int assert_ret_C_Uc_S(){
    return assert_C_Uc_S(zig_ret_C_Uc_S());
}

int assert_C_Uc_Uc(struct C_Uc_Uc lv){
    int err = 0;
  if (lv.v1 != 23) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 11) err = 3;
  return err;
}
struct C_Uc_Uc ret_C_Uc_Uc(){
    struct C_Uc_Uc lv = { .v1 = 23, .v2 = 0, .v3 = 11 };
    return lv;
}
int zig_assert_C_Uc_Uc(struct C_Uc_Uc);
int send_C_Uc_Uc(){
    return zig_assert_C_Uc_Uc(ret_C_Uc_Uc());
}
struct C_Uc_Uc zig_ret_C_Uc_Uc();
int assert_ret_C_Uc_Uc(){
    return assert_C_Uc_Uc(zig_ret_C_Uc_Uc());
}

int assert_C_Uc_Ui(struct C_Uc_Ui lv){
    int err = 0;
  if (lv.v1 != 122) err = 1;
  if (lv.v2 != 85) err = 2;
  if (lv.v3 != 33) err = 3;
  return err;
}
struct C_Uc_Ui ret_C_Uc_Ui(){
    struct C_Uc_Ui lv = { .v1 = 122, .v2 = 85, .v3 = 33 };
    return lv;
}
int zig_assert_C_Uc_Ui(struct C_Uc_Ui);
int send_C_Uc_Ui(){
    return zig_assert_C_Uc_Ui(ret_C_Uc_Ui());
}
struct C_Uc_Ui zig_ret_C_Uc_Ui();
int assert_ret_C_Uc_Ui(){
    return assert_C_Uc_Ui(zig_ret_C_Uc_Ui());
}

int assert_C_Uc_Ul(struct C_Uc_Ul lv){
    int err = 0;
  if (lv.v1 != 61) err = 1;
  if (lv.v2 != 112) err = 2;
  if (lv.v3 != 10651) err = 3;
  return err;
}
struct C_Uc_Ul ret_C_Uc_Ul(){
    struct C_Uc_Ul lv = { .v1 = 61, .v2 = 112, .v3 = 10651 };
    return lv;
}
int zig_assert_C_Uc_Ul(struct C_Uc_Ul);
int send_C_Uc_Ul(){
    return zig_assert_C_Uc_Ul(ret_C_Uc_Ul());
}
struct C_Uc_Ul zig_ret_C_Uc_Ul();
int assert_ret_C_Uc_Ul(){
    return assert_C_Uc_Ul(zig_ret_C_Uc_Ul());
}

int assert_C_Uc_Us(struct C_Uc_Us lv){
    int err = 0;
  if (lv.v1 != 57) err = 1;
  if (lv.v2 != 81) err = 2;
  if (lv.v3 != 27476) err = 3;
  return err;
}
struct C_Uc_Us ret_C_Uc_Us(){
    struct C_Uc_Us lv = { .v1 = 57, .v2 = 81, .v3 = 27476 };
    return lv;
}
int zig_assert_C_Uc_Us(struct C_Uc_Us);
int send_C_Uc_Us(){
    return zig_assert_C_Uc_Us(ret_C_Uc_Us());
}
struct C_Uc_Us zig_ret_C_Uc_Us();
int assert_ret_C_Uc_Us(){
    return assert_C_Uc_Us(zig_ret_C_Uc_Us());
}

int assert_C_Uc_Vp(struct C_Uc_Vp lv){
    int err = 0;
  if (lv.v1 != 20) err = 1;
  if (lv.v2 != 69) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Uc_Vp ret_C_Uc_Vp(){
    struct C_Uc_Vp lv = { .v1 = 20, .v2 = 69, .v3 = 0 };
    return lv;
}
int zig_assert_C_Uc_Vp(struct C_Uc_Vp);
int send_C_Uc_Vp(){
    return zig_assert_C_Uc_Vp(ret_C_Uc_Vp());
}
struct C_Uc_Vp zig_ret_C_Uc_Vp();
int assert_ret_C_Uc_Vp(){
    return assert_C_Uc_Vp(zig_ret_C_Uc_Vp());
}

int assert_C_Ui(struct C_Ui lv){
    int err = 0;
  if (lv.v1 != 26) err = 1;
  if (lv.v2 != 31736) err = 2;
  return err;
}
struct C_Ui ret_C_Ui(){
    struct C_Ui lv = { .v1 = 26, .v2 = 31736 };
    return lv;
}
int zig_assert_C_Ui(struct C_Ui);
int send_C_Ui(){
    return zig_assert_C_Ui(ret_C_Ui());
}
struct C_Ui zig_ret_C_Ui();
int assert_ret_C_Ui(){
    return assert_C_Ui(zig_ret_C_Ui());
}

int assert_C_Ui_C(struct C_Ui_C lv){
    int err = 0;
  if (lv.v1 != 22) err = 1;
  if (lv.v2 != 6795) err = 2;
  if (lv.v3 != 61) err = 3;
  return err;
}
struct C_Ui_C ret_C_Ui_C(){
    struct C_Ui_C lv = { .v1 = 22, .v2 = 6795, .v3 = 61 };
    return lv;
}
int zig_assert_C_Ui_C(struct C_Ui_C);
int send_C_Ui_C(){
    return zig_assert_C_Ui_C(ret_C_Ui_C());
}
struct C_Ui_C zig_ret_C_Ui_C();
int assert_ret_C_Ui_C(){
    return assert_C_Ui_C(zig_ret_C_Ui_C());
}

int assert_C_Ui_D(struct C_Ui_D lv){
    int err = 0;
  if (lv.v1 != 43) err = 1;
  if (lv.v2 != 14137) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct C_Ui_D ret_C_Ui_D(){
    struct C_Ui_D lv = { .v1 = 43, .v2 = 14137, .v3 = 4.5 };
    return lv;
}
int zig_assert_C_Ui_D(struct C_Ui_D);
int send_C_Ui_D(){
    return zig_assert_C_Ui_D(ret_C_Ui_D());
}
struct C_Ui_D zig_ret_C_Ui_D();
int assert_ret_C_Ui_D(){
    return assert_C_Ui_D(zig_ret_C_Ui_D());
}

int assert_C_Ui_F(struct C_Ui_F lv){
    int err = 0;
  if (lv.v1 != 85) err = 1;
  if (lv.v2 != 4041) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct C_Ui_F ret_C_Ui_F(){
    struct C_Ui_F lv = { .v1 = 85, .v2 = 4041, .v3 = 1.0 };
    return lv;
}
int zig_assert_C_Ui_F(struct C_Ui_F);
int send_C_Ui_F(){
    return zig_assert_C_Ui_F(ret_C_Ui_F());
}
struct C_Ui_F zig_ret_C_Ui_F();
int assert_ret_C_Ui_F(){
    return assert_C_Ui_F(zig_ret_C_Ui_F());
}

int assert_C_Ui_I(struct C_Ui_I lv){
    int err = 0;
  if (lv.v1 != 69) err = 1;
  if (lv.v2 != 26512) err = 2;
  if (lv.v3 != 22760) err = 3;
  return err;
}
struct C_Ui_I ret_C_Ui_I(){
    struct C_Ui_I lv = { .v1 = 69, .v2 = 26512, .v3 = 22760 };
    return lv;
}
int zig_assert_C_Ui_I(struct C_Ui_I);
int send_C_Ui_I(){
    return zig_assert_C_Ui_I(ret_C_Ui_I());
}
struct C_Ui_I zig_ret_C_Ui_I();
int assert_ret_C_Ui_I(){
    return assert_C_Ui_I(zig_ret_C_Ui_I());
}

int assert_C_Ui_Ip(struct C_Ui_Ip lv){
    int err = 0;
  if (lv.v1 != 93) err = 1;
  if (lv.v2 != 26266) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Ui_Ip ret_C_Ui_Ip(){
    struct C_Ui_Ip lv = { .v1 = 93, .v2 = 26266, .v3 = 0 };
    return lv;
}
int zig_assert_C_Ui_Ip(struct C_Ui_Ip);
int send_C_Ui_Ip(){
    return zig_assert_C_Ui_Ip(ret_C_Ui_Ip());
}
struct C_Ui_Ip zig_ret_C_Ui_Ip();
int assert_ret_C_Ui_Ip(){
    return assert_C_Ui_Ip(zig_ret_C_Ui_Ip());
}

int assert_C_Ui_L(struct C_Ui_L lv){
    int err = 0;
  if (lv.v1 != 114) err = 1;
  if (lv.v2 != 24147) err = 2;
  if (lv.v3 != 31815) err = 3;
  return err;
}
struct C_Ui_L ret_C_Ui_L(){
    struct C_Ui_L lv = { .v1 = 114, .v2 = 24147, .v3 = 31815 };
    return lv;
}
int zig_assert_C_Ui_L(struct C_Ui_L);
int send_C_Ui_L(){
    return zig_assert_C_Ui_L(ret_C_Ui_L());
}
struct C_Ui_L zig_ret_C_Ui_L();
int assert_ret_C_Ui_L(){
    return assert_C_Ui_L(zig_ret_C_Ui_L());
}

int assert_C_Ui_S(struct C_Ui_S lv){
    int err = 0;
  if (lv.v1 != 114) err = 1;
  if (lv.v2 != 26565) err = 2;
  if (lv.v3 != 15293) err = 3;
  return err;
}
struct C_Ui_S ret_C_Ui_S(){
    struct C_Ui_S lv = { .v1 = 114, .v2 = 26565, .v3 = 15293 };
    return lv;
}
int zig_assert_C_Ui_S(struct C_Ui_S);
int send_C_Ui_S(){
    return zig_assert_C_Ui_S(ret_C_Ui_S());
}
struct C_Ui_S zig_ret_C_Ui_S();
int assert_ret_C_Ui_S(){
    return assert_C_Ui_S(zig_ret_C_Ui_S());
}

int assert_C_Ui_Uc(struct C_Ui_Uc lv){
    int err = 0;
  if (lv.v1 != 102) err = 1;
  if (lv.v2 != 14294) err = 2;
  if (lv.v3 != 15) err = 3;
  return err;
}
struct C_Ui_Uc ret_C_Ui_Uc(){
    struct C_Ui_Uc lv = { .v1 = 102, .v2 = 14294, .v3 = 15 };
    return lv;
}
int zig_assert_C_Ui_Uc(struct C_Ui_Uc);
int send_C_Ui_Uc(){
    return zig_assert_C_Ui_Uc(ret_C_Ui_Uc());
}
struct C_Ui_Uc zig_ret_C_Ui_Uc();
int assert_ret_C_Ui_Uc(){
    return assert_C_Ui_Uc(zig_ret_C_Ui_Uc());
}

int assert_C_Ui_Ui(struct C_Ui_Ui lv){
    int err = 0;
  if (lv.v1 != 25) err = 1;
  if (lv.v2 != 14393) err = 2;
  if (lv.v3 != 23880) err = 3;
  return err;
}
struct C_Ui_Ui ret_C_Ui_Ui(){
    struct C_Ui_Ui lv = { .v1 = 25, .v2 = 14393, .v3 = 23880 };
    return lv;
}
int zig_assert_C_Ui_Ui(struct C_Ui_Ui);
int send_C_Ui_Ui(){
    return zig_assert_C_Ui_Ui(ret_C_Ui_Ui());
}
struct C_Ui_Ui zig_ret_C_Ui_Ui();
int assert_ret_C_Ui_Ui(){
    return assert_C_Ui_Ui(zig_ret_C_Ui_Ui());
}

int assert_C_Ui_Ul(struct C_Ui_Ul lv){
    int err = 0;
  if (lv.v1 != 29) err = 1;
  if (lv.v2 != 27002) err = 2;
  if (lv.v3 != 24958) err = 3;
  return err;
}
struct C_Ui_Ul ret_C_Ui_Ul(){
    struct C_Ui_Ul lv = { .v1 = 29, .v2 = 27002, .v3 = 24958 };
    return lv;
}
int zig_assert_C_Ui_Ul(struct C_Ui_Ul);
int send_C_Ui_Ul(){
    return zig_assert_C_Ui_Ul(ret_C_Ui_Ul());
}
struct C_Ui_Ul zig_ret_C_Ui_Ul();
int assert_ret_C_Ui_Ul(){
    return assert_C_Ui_Ul(zig_ret_C_Ui_Ul());
}

int assert_C_Ui_Us(struct C_Ui_Us lv){
    int err = 0;
  if (lv.v1 != 81) err = 1;
  if (lv.v2 != 26064) err = 2;
  if (lv.v3 != 12276) err = 3;
  return err;
}
struct C_Ui_Us ret_C_Ui_Us(){
    struct C_Ui_Us lv = { .v1 = 81, .v2 = 26064, .v3 = 12276 };
    return lv;
}
int zig_assert_C_Ui_Us(struct C_Ui_Us);
int send_C_Ui_Us(){
    return zig_assert_C_Ui_Us(ret_C_Ui_Us());
}
struct C_Ui_Us zig_ret_C_Ui_Us();
int assert_ret_C_Ui_Us(){
    return assert_C_Ui_Us(zig_ret_C_Ui_Us());
}

int assert_C_Ui_Vp(struct C_Ui_Vp lv){
    int err = 0;
  if (lv.v1 != 109) err = 1;
  if (lv.v2 != 8868) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Ui_Vp ret_C_Ui_Vp(){
    struct C_Ui_Vp lv = { .v1 = 109, .v2 = 8868, .v3 = 0 };
    return lv;
}
int zig_assert_C_Ui_Vp(struct C_Ui_Vp);
int send_C_Ui_Vp(){
    return zig_assert_C_Ui_Vp(ret_C_Ui_Vp());
}
struct C_Ui_Vp zig_ret_C_Ui_Vp();
int assert_ret_C_Ui_Vp(){
    return assert_C_Ui_Vp(zig_ret_C_Ui_Vp());
}

int assert_C_Ul(struct C_Ul lv){
    int err = 0;
  if (lv.v1 != 56) err = 1;
  if (lv.v2 != 29288) err = 2;
  return err;
}
struct C_Ul ret_C_Ul(){
    struct C_Ul lv = { .v1 = 56, .v2 = 29288 };
    return lv;
}
int zig_assert_C_Ul(struct C_Ul);
int send_C_Ul(){
    return zig_assert_C_Ul(ret_C_Ul());
}
struct C_Ul zig_ret_C_Ul();
int assert_ret_C_Ul(){
    return assert_C_Ul(zig_ret_C_Ul());
}

int assert_C_Ul_C(struct C_Ul_C lv){
    int err = 0;
  if (lv.v1 != 85) err = 1;
  if (lv.v2 != 16227) err = 2;
  if (lv.v3 != 112) err = 3;
  return err;
}
struct C_Ul_C ret_C_Ul_C(){
    struct C_Ul_C lv = { .v1 = 85, .v2 = 16227, .v3 = 112 };
    return lv;
}
int zig_assert_C_Ul_C(struct C_Ul_C);
int send_C_Ul_C(){
    return zig_assert_C_Ul_C(ret_C_Ul_C());
}
struct C_Ul_C zig_ret_C_Ul_C();
int assert_ret_C_Ul_C(){
    return assert_C_Ul_C(zig_ret_C_Ul_C());
}

int assert_C_Ul_D(struct C_Ul_D lv){
    int err = 0;
  if (lv.v1 != 87) err = 1;
  if (lv.v2 != 21565) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct C_Ul_D ret_C_Ul_D(){
    struct C_Ul_D lv = { .v1 = 87, .v2 = 21565, .v3 = -0.25 };
    return lv;
}
int zig_assert_C_Ul_D(struct C_Ul_D);
int send_C_Ul_D(){
    return zig_assert_C_Ul_D(ret_C_Ul_D());
}
struct C_Ul_D zig_ret_C_Ul_D();
int assert_ret_C_Ul_D(){
    return assert_C_Ul_D(zig_ret_C_Ul_D());
}

int assert_C_Ul_F(struct C_Ul_F lv){
    int err = 0;
  if (lv.v1 != 93) err = 1;
  if (lv.v2 != 10370) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct C_Ul_F ret_C_Ul_F(){
    struct C_Ul_F lv = { .v1 = 93, .v2 = 10370, .v3 = 1.0 };
    return lv;
}
int zig_assert_C_Ul_F(struct C_Ul_F);
int send_C_Ul_F(){
    return zig_assert_C_Ul_F(ret_C_Ul_F());
}
struct C_Ul_F zig_ret_C_Ul_F();
int assert_ret_C_Ul_F(){
    return assert_C_Ul_F(zig_ret_C_Ul_F());
}

int assert_C_Ul_I(struct C_Ul_I lv){
    int err = 0;
  if (lv.v1 != 48) err = 1;
  if (lv.v2 != 9451) err = 2;
  if (lv.v3 != 20449) err = 3;
  return err;
}
struct C_Ul_I ret_C_Ul_I(){
    struct C_Ul_I lv = { .v1 = 48, .v2 = 9451, .v3 = 20449 };
    return lv;
}
int zig_assert_C_Ul_I(struct C_Ul_I);
int send_C_Ul_I(){
    return zig_assert_C_Ul_I(ret_C_Ul_I());
}
struct C_Ul_I zig_ret_C_Ul_I();
int assert_ret_C_Ul_I(){
    return assert_C_Ul_I(zig_ret_C_Ul_I());
}

int assert_C_Ul_Ip(struct C_Ul_Ip lv){
    int err = 0;
  if (lv.v1 != 96) err = 1;
  if (lv.v2 != 26151) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Ul_Ip ret_C_Ul_Ip(){
    struct C_Ul_Ip lv = { .v1 = 96, .v2 = 26151, .v3 = 0 };
    return lv;
}
int zig_assert_C_Ul_Ip(struct C_Ul_Ip);
int send_C_Ul_Ip(){
    return zig_assert_C_Ul_Ip(ret_C_Ul_Ip());
}
struct C_Ul_Ip zig_ret_C_Ul_Ip();
int assert_ret_C_Ul_Ip(){
    return assert_C_Ul_Ip(zig_ret_C_Ul_Ip());
}

int assert_C_Ul_L(struct C_Ul_L lv){
    int err = 0;
  if (lv.v1 != 13) err = 1;
  if (lv.v2 != 26018) err = 2;
  if (lv.v3 != 22684) err = 3;
  return err;
}
struct C_Ul_L ret_C_Ul_L(){
    struct C_Ul_L lv = { .v1 = 13, .v2 = 26018, .v3 = 22684 };
    return lv;
}
int zig_assert_C_Ul_L(struct C_Ul_L);
int send_C_Ul_L(){
    return zig_assert_C_Ul_L(ret_C_Ul_L());
}
struct C_Ul_L zig_ret_C_Ul_L();
int assert_ret_C_Ul_L(){
    return assert_C_Ul_L(zig_ret_C_Ul_L());
}

int assert_C_Ul_S(struct C_Ul_S lv){
    int err = 0;
  if (lv.v1 != 33) err = 1;
  if (lv.v2 != 12793) err = 2;
  if (lv.v3 != 22758) err = 3;
  return err;
}
struct C_Ul_S ret_C_Ul_S(){
    struct C_Ul_S lv = { .v1 = 33, .v2 = 12793, .v3 = 22758 };
    return lv;
}
int zig_assert_C_Ul_S(struct C_Ul_S);
int send_C_Ul_S(){
    return zig_assert_C_Ul_S(ret_C_Ul_S());
}
struct C_Ul_S zig_ret_C_Ul_S();
int assert_ret_C_Ul_S(){
    return assert_C_Ul_S(zig_ret_C_Ul_S());
}

int assert_C_Ul_Uc(struct C_Ul_Uc lv){
    int err = 0;
  if (lv.v1 != 108) err = 1;
  if (lv.v2 != 16056) err = 2;
  if (lv.v3 != 74) err = 3;
  return err;
}
struct C_Ul_Uc ret_C_Ul_Uc(){
    struct C_Ul_Uc lv = { .v1 = 108, .v2 = 16056, .v3 = 74 };
    return lv;
}
int zig_assert_C_Ul_Uc(struct C_Ul_Uc);
int send_C_Ul_Uc(){
    return zig_assert_C_Ul_Uc(ret_C_Ul_Uc());
}
struct C_Ul_Uc zig_ret_C_Ul_Uc();
int assert_ret_C_Ul_Uc(){
    return assert_C_Ul_Uc(zig_ret_C_Ul_Uc());
}

int assert_C_Ul_Ui(struct C_Ul_Ui lv){
    int err = 0;
  if (lv.v1 != 63) err = 1;
  if (lv.v2 != 8694) err = 2;
  if (lv.v3 != 4446) err = 3;
  return err;
}
struct C_Ul_Ui ret_C_Ul_Ui(){
    struct C_Ul_Ui lv = { .v1 = 63, .v2 = 8694, .v3 = 4446 };
    return lv;
}
int zig_assert_C_Ul_Ui(struct C_Ul_Ui);
int send_C_Ul_Ui(){
    return zig_assert_C_Ul_Ui(ret_C_Ul_Ui());
}
struct C_Ul_Ui zig_ret_C_Ul_Ui();
int assert_ret_C_Ul_Ui(){
    return assert_C_Ul_Ui(zig_ret_C_Ul_Ui());
}

int assert_C_Ul_Ul(struct C_Ul_Ul lv){
    int err = 0;
  if (lv.v1 != 25) err = 1;
  if (lv.v2 != 11834) err = 2;
  if (lv.v3 != 25126) err = 3;
  return err;
}
struct C_Ul_Ul ret_C_Ul_Ul(){
    struct C_Ul_Ul lv = { .v1 = 25, .v2 = 11834, .v3 = 25126 };
    return lv;
}
int zig_assert_C_Ul_Ul(struct C_Ul_Ul);
int send_C_Ul_Ul(){
    return zig_assert_C_Ul_Ul(ret_C_Ul_Ul());
}
struct C_Ul_Ul zig_ret_C_Ul_Ul();
int assert_ret_C_Ul_Ul(){
    return assert_C_Ul_Ul(zig_ret_C_Ul_Ul());
}

int assert_C_Ul_Us(struct C_Ul_Us lv){
    int err = 0;
  if (lv.v1 != 84) err = 1;
  if (lv.v2 != 31434) err = 2;
  if (lv.v3 != 20396) err = 3;
  return err;
}
struct C_Ul_Us ret_C_Ul_Us(){
    struct C_Ul_Us lv = { .v1 = 84, .v2 = 31434, .v3 = 20396 };
    return lv;
}
int zig_assert_C_Ul_Us(struct C_Ul_Us);
int send_C_Ul_Us(){
    return zig_assert_C_Ul_Us(ret_C_Ul_Us());
}
struct C_Ul_Us zig_ret_C_Ul_Us();
int assert_ret_C_Ul_Us(){
    return assert_C_Ul_Us(zig_ret_C_Ul_Us());
}

int assert_C_Ul_Vp(struct C_Ul_Vp lv){
    int err = 0;
  if (lv.v1 != 127) err = 1;
  if (lv.v2 != 10941) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Ul_Vp ret_C_Ul_Vp(){
    struct C_Ul_Vp lv = { .v1 = 127, .v2 = 10941, .v3 = 0 };
    return lv;
}
int zig_assert_C_Ul_Vp(struct C_Ul_Vp);
int send_C_Ul_Vp(){
    return zig_assert_C_Ul_Vp(ret_C_Ul_Vp());
}
struct C_Ul_Vp zig_ret_C_Ul_Vp();
int assert_ret_C_Ul_Vp(){
    return assert_C_Ul_Vp(zig_ret_C_Ul_Vp());
}

int assert_C_Us(struct C_Us lv){
    int err = 0;
  if (lv.v1 != 11) err = 1;
  if (lv.v2 != 7668) err = 2;
  return err;
}
struct C_Us ret_C_Us(){
    struct C_Us lv = { .v1 = 11, .v2 = 7668 };
    return lv;
}
int zig_assert_C_Us(struct C_Us);
int send_C_Us(){
    return zig_assert_C_Us(ret_C_Us());
}
struct C_Us zig_ret_C_Us();
int assert_ret_C_Us(){
    return assert_C_Us(zig_ret_C_Us());
}

int assert_C_Us_C(struct C_Us_C lv){
    int err = 0;
  if (lv.v1 != 6) err = 1;
  if (lv.v2 != 3306) err = 2;
  if (lv.v3 != 87) err = 3;
  return err;
}
struct C_Us_C ret_C_Us_C(){
    struct C_Us_C lv = { .v1 = 6, .v2 = 3306, .v3 = 87 };
    return lv;
}
int zig_assert_C_Us_C(struct C_Us_C);
int send_C_Us_C(){
    return zig_assert_C_Us_C(ret_C_Us_C());
}
struct C_Us_C zig_ret_C_Us_C();
int assert_ret_C_Us_C(){
    return assert_C_Us_C(zig_ret_C_Us_C());
}

int assert_C_Us_D(struct C_Us_D lv){
    int err = 0;
  if (lv.v1 != 79) err = 1;
  if (lv.v2 != 16460) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct C_Us_D ret_C_Us_D(){
    struct C_Us_D lv = { .v1 = 79, .v2 = 16460, .v3 = 4.5 };
    return lv;
}
int zig_assert_C_Us_D(struct C_Us_D);
int send_C_Us_D(){
    return zig_assert_C_Us_D(ret_C_Us_D());
}
struct C_Us_D zig_ret_C_Us_D();
int assert_ret_C_Us_D(){
    return assert_C_Us_D(zig_ret_C_Us_D());
}

int assert_C_Us_F(struct C_Us_F lv){
    int err = 0;
  if (lv.v1 != 79) err = 1;
  if (lv.v2 != 28080) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct C_Us_F ret_C_Us_F(){
    struct C_Us_F lv = { .v1 = 79, .v2 = 28080, .v3 = -0.25 };
    return lv;
}
int zig_assert_C_Us_F(struct C_Us_F);
int send_C_Us_F(){
    return zig_assert_C_Us_F(ret_C_Us_F());
}
struct C_Us_F zig_ret_C_Us_F();
int assert_ret_C_Us_F(){
    return assert_C_Us_F(zig_ret_C_Us_F());
}

int assert_C_Us_I(struct C_Us_I lv){
    int err = 0;
  if (lv.v1 != 111) err = 1;
  if (lv.v2 != 26602) err = 2;
  if (lv.v3 != 26244) err = 3;
  return err;
}
struct C_Us_I ret_C_Us_I(){
    struct C_Us_I lv = { .v1 = 111, .v2 = 26602, .v3 = 26244 };
    return lv;
}
int zig_assert_C_Us_I(struct C_Us_I);
int send_C_Us_I(){
    return zig_assert_C_Us_I(ret_C_Us_I());
}
struct C_Us_I zig_ret_C_Us_I();
int assert_ret_C_Us_I(){
    return assert_C_Us_I(zig_ret_C_Us_I());
}

int assert_C_Us_Ip(struct C_Us_Ip lv){
    int err = 0;
  if (lv.v1 != 25) err = 1;
  if (lv.v2 != 25781) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Us_Ip ret_C_Us_Ip(){
    struct C_Us_Ip lv = { .v1 = 25, .v2 = 25781, .v3 = 0 };
    return lv;
}
int zig_assert_C_Us_Ip(struct C_Us_Ip);
int send_C_Us_Ip(){
    return zig_assert_C_Us_Ip(ret_C_Us_Ip());
}
struct C_Us_Ip zig_ret_C_Us_Ip();
int assert_ret_C_Us_Ip(){
    return assert_C_Us_Ip(zig_ret_C_Us_Ip());
}

int assert_C_Us_L(struct C_Us_L lv){
    int err = 0;
  if (lv.v1 != 124) err = 1;
  if (lv.v2 != 15152) err = 2;
  if (lv.v3 != 10613) err = 3;
  return err;
}
struct C_Us_L ret_C_Us_L(){
    struct C_Us_L lv = { .v1 = 124, .v2 = 15152, .v3 = 10613 };
    return lv;
}
int zig_assert_C_Us_L(struct C_Us_L);
int send_C_Us_L(){
    return zig_assert_C_Us_L(ret_C_Us_L());
}
struct C_Us_L zig_ret_C_Us_L();
int assert_ret_C_Us_L(){
    return assert_C_Us_L(zig_ret_C_Us_L());
}

int assert_C_Us_S(struct C_Us_S lv){
    int err = 0;
  if (lv.v1 != 35) err = 1;
  if (lv.v2 != 1038) err = 2;
  if (lv.v3 != 5876) err = 3;
  return err;
}
struct C_Us_S ret_C_Us_S(){
    struct C_Us_S lv = { .v1 = 35, .v2 = 1038, .v3 = 5876 };
    return lv;
}
int zig_assert_C_Us_S(struct C_Us_S);
int send_C_Us_S(){
    return zig_assert_C_Us_S(ret_C_Us_S());
}
struct C_Us_S zig_ret_C_Us_S();
int assert_ret_C_Us_S(){
    return assert_C_Us_S(zig_ret_C_Us_S());
}

int assert_C_Us_Uc(struct C_Us_Uc lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 3631) err = 2;
  if (lv.v3 != 113) err = 3;
  return err;
}
struct C_Us_Uc ret_C_Us_Uc(){
    struct C_Us_Uc lv = { .v1 = 9, .v2 = 3631, .v3 = 113 };
    return lv;
}
int zig_assert_C_Us_Uc(struct C_Us_Uc);
int send_C_Us_Uc(){
    return zig_assert_C_Us_Uc(ret_C_Us_Uc());
}
struct C_Us_Uc zig_ret_C_Us_Uc();
int assert_ret_C_Us_Uc(){
    return assert_C_Us_Uc(zig_ret_C_Us_Uc());
}

int assert_C_Us_Ui(struct C_Us_Ui lv){
    int err = 0;
  if (lv.v1 != 112) err = 1;
  if (lv.v2 != 30036) err = 2;
  if (lv.v3 != 2304) err = 3;
  return err;
}
struct C_Us_Ui ret_C_Us_Ui(){
    struct C_Us_Ui lv = { .v1 = 112, .v2 = 30036, .v3 = 2304 };
    return lv;
}
int zig_assert_C_Us_Ui(struct C_Us_Ui);
int send_C_Us_Ui(){
    return zig_assert_C_Us_Ui(ret_C_Us_Ui());
}
struct C_Us_Ui zig_ret_C_Us_Ui();
int assert_ret_C_Us_Ui(){
    return assert_C_Us_Ui(zig_ret_C_Us_Ui());
}

int assert_C_Us_Ul(struct C_Us_Ul lv){
    int err = 0;
  if (lv.v1 != 113) err = 1;
  if (lv.v2 != 19649) err = 2;
  if (lv.v3 != 32092) err = 3;
  return err;
}
struct C_Us_Ul ret_C_Us_Ul(){
    struct C_Us_Ul lv = { .v1 = 113, .v2 = 19649, .v3 = 32092 };
    return lv;
}
int zig_assert_C_Us_Ul(struct C_Us_Ul);
int send_C_Us_Ul(){
    return zig_assert_C_Us_Ul(ret_C_Us_Ul());
}
struct C_Us_Ul zig_ret_C_Us_Ul();
int assert_ret_C_Us_Ul(){
    return assert_C_Us_Ul(zig_ret_C_Us_Ul());
}

int assert_C_Us_Us(struct C_Us_Us lv){
    int err = 0;
  if (lv.v1 != 25) err = 1;
  if (lv.v2 != 28732) err = 2;
  if (lv.v3 != 15181) err = 3;
  return err;
}
struct C_Us_Us ret_C_Us_Us(){
    struct C_Us_Us lv = { .v1 = 25, .v2 = 28732, .v3 = 15181 };
    return lv;
}
int zig_assert_C_Us_Us(struct C_Us_Us);
int send_C_Us_Us(){
    return zig_assert_C_Us_Us(ret_C_Us_Us());
}
struct C_Us_Us zig_ret_C_Us_Us();
int assert_ret_C_Us_Us(){
    return assert_C_Us_Us(zig_ret_C_Us_Us());
}

int assert_C_Us_Vp(struct C_Us_Vp lv){
    int err = 0;
  if (lv.v1 != 126) err = 1;
  if (lv.v2 != 12432) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Us_Vp ret_C_Us_Vp(){
    struct C_Us_Vp lv = { .v1 = 126, .v2 = 12432, .v3 = 0 };
    return lv;
}
int zig_assert_C_Us_Vp(struct C_Us_Vp);
int send_C_Us_Vp(){
    return zig_assert_C_Us_Vp(ret_C_Us_Vp());
}
struct C_Us_Vp zig_ret_C_Us_Vp();
int assert_ret_C_Us_Vp(){
    return assert_C_Us_Vp(zig_ret_C_Us_Vp());
}

int assert_C_Vp(struct C_Vp lv){
    int err = 0;
  if (lv.v1 != 123) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct C_Vp ret_C_Vp(){
    struct C_Vp lv = { .v1 = 123, .v2 = 0 };
    return lv;
}
int zig_assert_C_Vp(struct C_Vp);
int send_C_Vp(){
    return zig_assert_C_Vp(ret_C_Vp());
}
struct C_Vp zig_ret_C_Vp();
int assert_ret_C_Vp(){
    return assert_C_Vp(zig_ret_C_Vp());
}

int assert_C_Vp_C(struct C_Vp_C lv){
    int err = 0;
  if (lv.v1 != 50) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 26) err = 3;
  return err;
}
struct C_Vp_C ret_C_Vp_C(){
    struct C_Vp_C lv = { .v1 = 50, .v2 = 0, .v3 = 26 };
    return lv;
}
int zig_assert_C_Vp_C(struct C_Vp_C);
int send_C_Vp_C(){
    return zig_assert_C_Vp_C(ret_C_Vp_C());
}
struct C_Vp_C zig_ret_C_Vp_C();
int assert_ret_C_Vp_C(){
    return assert_C_Vp_C(zig_ret_C_Vp_C());
}

int assert_C_Vp_D(struct C_Vp_D lv){
    int err = 0;
  if (lv.v1 != 8) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct C_Vp_D ret_C_Vp_D(){
    struct C_Vp_D lv = { .v1 = 8, .v2 = 0, .v3 = 0.5 };
    return lv;
}
int zig_assert_C_Vp_D(struct C_Vp_D);
int send_C_Vp_D(){
    return zig_assert_C_Vp_D(ret_C_Vp_D());
}
struct C_Vp_D zig_ret_C_Vp_D();
int assert_ret_C_Vp_D(){
    return assert_C_Vp_D(zig_ret_C_Vp_D());
}

int assert_C_Vp_F(struct C_Vp_F lv){
    int err = 0;
  if (lv.v1 != 78) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct C_Vp_F ret_C_Vp_F(){
    struct C_Vp_F lv = { .v1 = 78, .v2 = 0, .v3 = 0.5 };
    return lv;
}
int zig_assert_C_Vp_F(struct C_Vp_F);
int send_C_Vp_F(){
    return zig_assert_C_Vp_F(ret_C_Vp_F());
}
struct C_Vp_F zig_ret_C_Vp_F();
int assert_ret_C_Vp_F(){
    return assert_C_Vp_F(zig_ret_C_Vp_F());
}

int assert_C_Vp_I(struct C_Vp_I lv){
    int err = 0;
  if (lv.v1 != 79) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 12771) err = 3;
  return err;
}
struct C_Vp_I ret_C_Vp_I(){
    struct C_Vp_I lv = { .v1 = 79, .v2 = 0, .v3 = 12771 };
    return lv;
}
int zig_assert_C_Vp_I(struct C_Vp_I);
int send_C_Vp_I(){
    return zig_assert_C_Vp_I(ret_C_Vp_I());
}
struct C_Vp_I zig_ret_C_Vp_I();
int assert_ret_C_Vp_I(){
    return assert_C_Vp_I(zig_ret_C_Vp_I());
}

int assert_C_Vp_Ip(struct C_Vp_Ip lv){
    int err = 0;
  if (lv.v1 != 3) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Vp_Ip ret_C_Vp_Ip(){
    struct C_Vp_Ip lv = { .v1 = 3, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_C_Vp_Ip(struct C_Vp_Ip);
int send_C_Vp_Ip(){
    return zig_assert_C_Vp_Ip(ret_C_Vp_Ip());
}
struct C_Vp_Ip zig_ret_C_Vp_Ip();
int assert_ret_C_Vp_Ip(){
    return assert_C_Vp_Ip(zig_ret_C_Vp_Ip());
}

int assert_C_Vp_L(struct C_Vp_L lv){
    int err = 0;
  if (lv.v1 != 107) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 30601) err = 3;
  return err;
}
struct C_Vp_L ret_C_Vp_L(){
    struct C_Vp_L lv = { .v1 = 107, .v2 = 0, .v3 = 30601 };
    return lv;
}
int zig_assert_C_Vp_L(struct C_Vp_L);
int send_C_Vp_L(){
    return zig_assert_C_Vp_L(ret_C_Vp_L());
}
struct C_Vp_L zig_ret_C_Vp_L();
int assert_ret_C_Vp_L(){
    return assert_C_Vp_L(zig_ret_C_Vp_L());
}

int assert_C_Vp_S(struct C_Vp_S lv){
    int err = 0;
  if (lv.v1 != 75) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 10366) err = 3;
  return err;
}
struct C_Vp_S ret_C_Vp_S(){
    struct C_Vp_S lv = { .v1 = 75, .v2 = 0, .v3 = 10366 };
    return lv;
}
int zig_assert_C_Vp_S(struct C_Vp_S);
int send_C_Vp_S(){
    return zig_assert_C_Vp_S(ret_C_Vp_S());
}
struct C_Vp_S zig_ret_C_Vp_S();
int assert_ret_C_Vp_S(){
    return assert_C_Vp_S(zig_ret_C_Vp_S());
}

int assert_C_Vp_Uc(struct C_Vp_Uc lv){
    int err = 0;
  if (lv.v1 != 12) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 120) err = 3;
  return err;
}
struct C_Vp_Uc ret_C_Vp_Uc(){
    struct C_Vp_Uc lv = { .v1 = 12, .v2 = 0, .v3 = 120 };
    return lv;
}
int zig_assert_C_Vp_Uc(struct C_Vp_Uc);
int send_C_Vp_Uc(){
    return zig_assert_C_Vp_Uc(ret_C_Vp_Uc());
}
struct C_Vp_Uc zig_ret_C_Vp_Uc();
int assert_ret_C_Vp_Uc(){
    return assert_C_Vp_Uc(zig_ret_C_Vp_Uc());
}

int assert_C_Vp_Ui(struct C_Vp_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 11440) err = 3;
  return err;
}
struct C_Vp_Ui ret_C_Vp_Ui(){
    struct C_Vp_Ui lv = { .v1 = 0, .v2 = 0, .v3 = 11440 };
    return lv;
}
int zig_assert_C_Vp_Ui(struct C_Vp_Ui);
int send_C_Vp_Ui(){
    return zig_assert_C_Vp_Ui(ret_C_Vp_Ui());
}
struct C_Vp_Ui zig_ret_C_Vp_Ui();
int assert_ret_C_Vp_Ui(){
    return assert_C_Vp_Ui(zig_ret_C_Vp_Ui());
}

int assert_C_Vp_Ul(struct C_Vp_Ul lv){
    int err = 0;
  if (lv.v1 != 120) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 6479) err = 3;
  return err;
}
struct C_Vp_Ul ret_C_Vp_Ul(){
    struct C_Vp_Ul lv = { .v1 = 120, .v2 = 0, .v3 = 6479 };
    return lv;
}
int zig_assert_C_Vp_Ul(struct C_Vp_Ul);
int send_C_Vp_Ul(){
    return zig_assert_C_Vp_Ul(ret_C_Vp_Ul());
}
struct C_Vp_Ul zig_ret_C_Vp_Ul();
int assert_ret_C_Vp_Ul(){
    return assert_C_Vp_Ul(zig_ret_C_Vp_Ul());
}

int assert_C_Vp_Us(struct C_Vp_Us lv){
    int err = 0;
  if (lv.v1 != 102) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 15745) err = 3;
  return err;
}
struct C_Vp_Us ret_C_Vp_Us(){
    struct C_Vp_Us lv = { .v1 = 102, .v2 = 0, .v3 = 15745 };
    return lv;
}
int zig_assert_C_Vp_Us(struct C_Vp_Us);
int send_C_Vp_Us(){
    return zig_assert_C_Vp_Us(ret_C_Vp_Us());
}
struct C_Vp_Us zig_ret_C_Vp_Us();
int assert_ret_C_Vp_Us(){
    return assert_C_Vp_Us(zig_ret_C_Vp_Us());
}

int assert_C_Vp_Vp(struct C_Vp_Vp lv){
    int err = 0;
  if (lv.v1 != 44) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct C_Vp_Vp ret_C_Vp_Vp(){
    struct C_Vp_Vp lv = { .v1 = 44, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_C_Vp_Vp(struct C_Vp_Vp);
int send_C_Vp_Vp(){
    return zig_assert_C_Vp_Vp(ret_C_Vp_Vp());
}
struct C_Vp_Vp zig_ret_C_Vp_Vp();
int assert_ret_C_Vp_Vp(){
    return assert_C_Vp_Vp(zig_ret_C_Vp_Vp());
}

int assert_D(struct D lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  return err;
}
struct D ret_D(){
    struct D lv = { .v1 = -2.125 };
    return lv;
}
int zig_assert_D(struct D);
int send_D(){
    return zig_assert_D(ret_D());
}
struct D zig_ret_D();
int assert_ret_D(){
    return assert_D(zig_ret_D());
}

int assert_D_C(struct D_C lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 15) err = 2;
  return err;
}
struct D_C ret_D_C(){
    struct D_C lv = { .v1 = -0.25, .v2 = 15 };
    return lv;
}
int zig_assert_D_C(struct D_C);
int send_D_C(){
    return zig_assert_D_C(ret_D_C());
}
struct D_C zig_ret_D_C();
int assert_ret_D_C(){
    return assert_D_C(zig_ret_D_C());
}

int assert_D_C_C(struct D_C_C lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 31) err = 2;
  if (lv.v3 != 76) err = 3;
  return err;
}
struct D_C_C ret_D_C_C(){
    struct D_C_C lv = { .v1 = -0.25, .v2 = 31, .v3 = 76 };
    return lv;
}
int zig_assert_D_C_C(struct D_C_C);
int send_D_C_C(){
    return zig_assert_D_C_C(ret_D_C_C());
}
struct D_C_C zig_ret_D_C_C();
int assert_ret_D_C_C(){
    return assert_D_C_C(zig_ret_D_C_C());
}

int assert_D_C_D(struct D_C_D lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 112) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct D_C_D ret_D_C_D(){
    struct D_C_D lv = { .v1 = -2.125, .v2 = 112, .v3 = 1.0 };
    return lv;
}
int zig_assert_D_C_D(struct D_C_D);
int send_D_C_D(){
    return zig_assert_D_C_D(ret_D_C_D());
}
struct D_C_D zig_ret_D_C_D();
int assert_ret_D_C_D(){
    return assert_D_C_D(zig_ret_D_C_D());
}

int assert_D_C_F(struct D_C_F lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 33) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct D_C_F ret_D_C_F(){
    struct D_C_F lv = { .v1 = 0.5, .v2 = 33, .v3 = 0.875 };
    return lv;
}
int zig_assert_D_C_F(struct D_C_F);
int send_D_C_F(){
    return zig_assert_D_C_F(ret_D_C_F());
}
struct D_C_F zig_ret_D_C_F();
int assert_ret_D_C_F(){
    return assert_D_C_F(zig_ret_D_C_F());
}

int assert_D_C_I(struct D_C_I lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 26) err = 2;
  if (lv.v3 != 32115) err = 3;
  return err;
}
struct D_C_I ret_D_C_I(){
    struct D_C_I lv = { .v1 = 7.0, .v2 = 26, .v3 = 32115 };
    return lv;
}
int zig_assert_D_C_I(struct D_C_I);
int send_D_C_I(){
    return zig_assert_D_C_I(ret_D_C_I());
}
struct D_C_I zig_ret_D_C_I();
int assert_ret_D_C_I(){
    return assert_D_C_I(zig_ret_D_C_I());
}

int assert_D_C_Ip(struct D_C_Ip lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 89) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_C_Ip ret_D_C_Ip(){
    struct D_C_Ip lv = { .v1 = 0.5, .v2 = 89, .v3 = 0 };
    return lv;
}
int zig_assert_D_C_Ip(struct D_C_Ip);
int send_D_C_Ip(){
    return zig_assert_D_C_Ip(ret_D_C_Ip());
}
struct D_C_Ip zig_ret_D_C_Ip();
int assert_ret_D_C_Ip(){
    return assert_D_C_Ip(zig_ret_D_C_Ip());
}

int assert_D_C_L(struct D_C_L lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 119) err = 2;
  if (lv.v3 != 22956) err = 3;
  return err;
}
struct D_C_L ret_D_C_L(){
    struct D_C_L lv = { .v1 = 0.5, .v2 = 119, .v3 = 22956 };
    return lv;
}
int zig_assert_D_C_L(struct D_C_L);
int send_D_C_L(){
    return zig_assert_D_C_L(ret_D_C_L());
}
struct D_C_L zig_ret_D_C_L();
int assert_ret_D_C_L(){
    return assert_D_C_L(zig_ret_D_C_L());
}

int assert_D_C_S(struct D_C_S lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 118) err = 2;
  if (lv.v3 != 8349) err = 3;
  return err;
}
struct D_C_S ret_D_C_S(){
    struct D_C_S lv = { .v1 = 0.5, .v2 = 118, .v3 = 8349 };
    return lv;
}
int zig_assert_D_C_S(struct D_C_S);
int send_D_C_S(){
    return zig_assert_D_C_S(ret_D_C_S());
}
struct D_C_S zig_ret_D_C_S();
int assert_ret_D_C_S(){
    return assert_D_C_S(zig_ret_D_C_S());
}

int assert_D_C_Uc(struct D_C_Uc lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 118) err = 2;
  if (lv.v3 != 31) err = 3;
  return err;
}
struct D_C_Uc ret_D_C_Uc(){
    struct D_C_Uc lv = { .v1 = -0.25, .v2 = 118, .v3 = 31 };
    return lv;
}
int zig_assert_D_C_Uc(struct D_C_Uc);
int send_D_C_Uc(){
    return zig_assert_D_C_Uc(ret_D_C_Uc());
}
struct D_C_Uc zig_ret_D_C_Uc();
int assert_ret_D_C_Uc(){
    return assert_D_C_Uc(zig_ret_D_C_Uc());
}

int assert_D_C_Ui(struct D_C_Ui lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 17) err = 2;
  if (lv.v3 != 10416) err = 3;
  return err;
}
struct D_C_Ui ret_D_C_Ui(){
    struct D_C_Ui lv = { .v1 = 1.0, .v2 = 17, .v3 = 10416 };
    return lv;
}
int zig_assert_D_C_Ui(struct D_C_Ui);
int send_D_C_Ui(){
    return zig_assert_D_C_Ui(ret_D_C_Ui());
}
struct D_C_Ui zig_ret_D_C_Ui();
int assert_ret_D_C_Ui(){
    return assert_D_C_Ui(zig_ret_D_C_Ui());
}

int assert_D_C_Ul(struct D_C_Ul lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 83) err = 2;
  if (lv.v3 != 16905) err = 3;
  return err;
}
struct D_C_Ul ret_D_C_Ul(){
    struct D_C_Ul lv = { .v1 = 4.5, .v2 = 83, .v3 = 16905 };
    return lv;
}
int zig_assert_D_C_Ul(struct D_C_Ul);
int send_D_C_Ul(){
    return zig_assert_D_C_Ul(ret_D_C_Ul());
}
struct D_C_Ul zig_ret_D_C_Ul();
int assert_ret_D_C_Ul(){
    return assert_D_C_Ul(zig_ret_D_C_Ul());
}

int assert_D_C_Us(struct D_C_Us lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 63) err = 2;
  if (lv.v3 != 25175) err = 3;
  return err;
}
struct D_C_Us ret_D_C_Us(){
    struct D_C_Us lv = { .v1 = 4.5, .v2 = 63, .v3 = 25175 };
    return lv;
}
int zig_assert_D_C_Us(struct D_C_Us);
int send_D_C_Us(){
    return zig_assert_D_C_Us(ret_D_C_Us());
}
struct D_C_Us zig_ret_D_C_Us();
int assert_ret_D_C_Us(){
    return assert_D_C_Us(zig_ret_D_C_Us());
}

int assert_D_C_Vp(struct D_C_Vp lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 16) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_C_Vp ret_D_C_Vp(){
    struct D_C_Vp lv = { .v1 = -0.25, .v2 = 16, .v3 = 0 };
    return lv;
}
int zig_assert_D_C_Vp(struct D_C_Vp);
int send_D_C_Vp(){
    return zig_assert_D_C_Vp(ret_D_C_Vp());
}
struct D_C_Vp zig_ret_D_C_Vp();
int assert_ret_D_C_Vp(){
    return assert_D_C_Vp(zig_ret_D_C_Vp());
}

int assert_D_D(struct D_D lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  return err;
}
struct D_D ret_D_D(){
    struct D_D lv = { .v1 = 1.0, .v2 = 0.875 };
    return lv;
}
int zig_assert_D_D(struct D_D);
int send_D_D(){
    return zig_assert_D_D(ret_D_D());
}
struct D_D zig_ret_D_D();
int assert_ret_D_D(){
    return assert_D_D(zig_ret_D_D());
}

int assert_D_D_C(struct D_D_C lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 46) err = 3;
  return err;
}
struct D_D_C ret_D_D_C(){
    struct D_D_C lv = { .v1 = -2.125, .v2 = 4.5, .v3 = 46 };
    return lv;
}
int zig_assert_D_D_C(struct D_D_C);
int send_D_D_C(){
    return zig_assert_D_D_C(ret_D_D_C());
}
struct D_D_C zig_ret_D_D_C();
int assert_ret_D_D_C(){
    return assert_D_D_C(zig_ret_D_D_C());
}

int assert_D_D_D(struct D_D_D lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct D_D_D ret_D_D_D(){
    struct D_D_D lv = { .v1 = 0.5, .v2 = 0.875, .v3 = 4.5 };
    return lv;
}
int zig_assert_D_D_D(struct D_D_D);
int send_D_D_D(){
    return zig_assert_D_D_D(ret_D_D_D());
}
struct D_D_D zig_ret_D_D_D();
int assert_ret_D_D_D(){
    return assert_D_D_D(zig_ret_D_D_D());
}

int assert_D_D_F(struct D_D_F lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct D_D_F ret_D_D_F(){
    struct D_D_F lv = { .v1 = 4.5, .v2 = 0.5, .v3 = -0.25 };
    return lv;
}
int zig_assert_D_D_F(struct D_D_F);
int send_D_D_F(){
    return zig_assert_D_D_F(ret_D_D_F());
}
struct D_D_F zig_ret_D_D_F();
int assert_ret_D_D_F(){
    return assert_D_D_F(zig_ret_D_D_F());
}

int assert_D_D_I(struct D_D_I lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 2232) err = 3;
  return err;
}
struct D_D_I ret_D_D_I(){
    struct D_D_I lv = { .v1 = -0.25, .v2 = 0.5, .v3 = 2232 };
    return lv;
}
int zig_assert_D_D_I(struct D_D_I);
int send_D_D_I(){
    return zig_assert_D_D_I(ret_D_D_I());
}
struct D_D_I zig_ret_D_D_I();
int assert_ret_D_D_I(){
    return assert_D_D_I(zig_ret_D_D_I());
}

int assert_D_D_Ip(struct D_D_Ip lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_D_Ip ret_D_D_Ip(){
    struct D_D_Ip lv = { .v1 = -0.25, .v2 = 0.875, .v3 = 0 };
    return lv;
}
int zig_assert_D_D_Ip(struct D_D_Ip);
int send_D_D_Ip(){
    return zig_assert_D_D_Ip(ret_D_D_Ip());
}
struct D_D_Ip zig_ret_D_D_Ip();
int assert_ret_D_D_Ip(){
    return assert_D_D_Ip(zig_ret_D_D_Ip());
}

int assert_D_D_L(struct D_D_L lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 25508) err = 3;
  return err;
}
struct D_D_L ret_D_D_L(){
    struct D_D_L lv = { .v1 = -2.125, .v2 = -0.25, .v3 = 25508 };
    return lv;
}
int zig_assert_D_D_L(struct D_D_L);
int send_D_D_L(){
    return zig_assert_D_D_L(ret_D_D_L());
}
struct D_D_L zig_ret_D_D_L();
int assert_ret_D_D_L(){
    return assert_D_D_L(zig_ret_D_D_L());
}

int assert_D_D_S(struct D_D_S lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 7177) err = 3;
  return err;
}
struct D_D_S ret_D_D_S(){
    struct D_D_S lv = { .v1 = 0.5, .v2 = 4.5, .v3 = 7177 };
    return lv;
}
int zig_assert_D_D_S(struct D_D_S);
int send_D_D_S(){
    return zig_assert_D_D_S(ret_D_D_S());
}
struct D_D_S zig_ret_D_D_S();
int assert_ret_D_D_S(){
    return assert_D_D_S(zig_ret_D_D_S());
}

int assert_D_D_Uc(struct D_D_Uc lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 15) err = 3;
  return err;
}
struct D_D_Uc ret_D_D_Uc(){
    struct D_D_Uc lv = { .v1 = -2.125, .v2 = 0.5, .v3 = 15 };
    return lv;
}
int zig_assert_D_D_Uc(struct D_D_Uc);
int send_D_D_Uc(){
    return zig_assert_D_D_Uc(ret_D_D_Uc());
}
struct D_D_Uc zig_ret_D_D_Uc();
int assert_ret_D_D_Uc(){
    return assert_D_D_Uc(zig_ret_D_D_Uc());
}

int assert_D_D_Ui(struct D_D_Ui lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 15554) err = 3;
  return err;
}
struct D_D_Ui ret_D_D_Ui(){
    struct D_D_Ui lv = { .v1 = -0.25, .v2 = -0.25, .v3 = 15554 };
    return lv;
}
int zig_assert_D_D_Ui(struct D_D_Ui);
int send_D_D_Ui(){
    return zig_assert_D_D_Ui(ret_D_D_Ui());
}
struct D_D_Ui zig_ret_D_D_Ui();
int assert_ret_D_D_Ui(){
    return assert_D_D_Ui(zig_ret_D_D_Ui());
}

int assert_D_D_Ul(struct D_D_Ul lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 25509) err = 3;
  return err;
}
struct D_D_Ul ret_D_D_Ul(){
    struct D_D_Ul lv = { .v1 = -0.25, .v2 = -2.125, .v3 = 25509 };
    return lv;
}
int zig_assert_D_D_Ul(struct D_D_Ul);
int send_D_D_Ul(){
    return zig_assert_D_D_Ul(ret_D_D_Ul());
}
struct D_D_Ul zig_ret_D_D_Ul();
int assert_ret_D_D_Ul(){
    return assert_D_D_Ul(zig_ret_D_D_Ul());
}

int assert_D_D_Us(struct D_D_Us lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 12415) err = 3;
  return err;
}
struct D_D_Us ret_D_D_Us(){
    struct D_D_Us lv = { .v1 = 4.5, .v2 = 4.5, .v3 = 12415 };
    return lv;
}
int zig_assert_D_D_Us(struct D_D_Us);
int send_D_D_Us(){
    return zig_assert_D_D_Us(ret_D_D_Us());
}
struct D_D_Us zig_ret_D_D_Us();
int assert_ret_D_D_Us(){
    return assert_D_D_Us(zig_ret_D_D_Us());
}

int assert_D_D_Vp(struct D_D_Vp lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_D_Vp ret_D_D_Vp(){
    struct D_D_Vp lv = { .v1 = 1.0, .v2 = 0.875, .v3 = 0 };
    return lv;
}
int zig_assert_D_D_Vp(struct D_D_Vp);
int send_D_D_Vp(){
    return zig_assert_D_D_Vp(ret_D_D_Vp());
}
struct D_D_Vp zig_ret_D_D_Vp();
int assert_ret_D_D_Vp(){
    return assert_D_D_Vp(zig_ret_D_D_Vp());
}

int assert_D_F(struct D_F lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0.875) err = 2;
  return err;
}
struct D_F ret_D_F(){
    struct D_F lv = { .v1 = -2.125, .v2 = 0.875 };
    return lv;
}
int zig_assert_D_F(struct D_F);
int send_D_F(){
    return zig_assert_D_F(ret_D_F());
}
struct D_F zig_ret_D_F();
int assert_ret_D_F(){
    return assert_D_F(zig_ret_D_F());
}

int assert_D_F_C(struct D_F_C lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 5) err = 3;
  return err;
}
struct D_F_C ret_D_F_C(){
    struct D_F_C lv = { .v1 = -0.25, .v2 = 7.0, .v3 = 5 };
    return lv;
}
int zig_assert_D_F_C(struct D_F_C);
int send_D_F_C(){
    return zig_assert_D_F_C(ret_D_F_C());
}
struct D_F_C zig_ret_D_F_C();
int assert_ret_D_F_C(){
    return assert_D_F_C(zig_ret_D_F_C());
}

int assert_D_F_D(struct D_F_D lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct D_F_D ret_D_F_D(){
    struct D_F_D lv = { .v1 = 0.875, .v2 = 0.875, .v3 = 1.0 };
    return lv;
}
int zig_assert_D_F_D(struct D_F_D);
int send_D_F_D(){
    return zig_assert_D_F_D(ret_D_F_D());
}
struct D_F_D zig_ret_D_F_D();
int assert_ret_D_F_D(){
    return assert_D_F_D(zig_ret_D_F_D());
}

int assert_D_F_F(struct D_F_F lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct D_F_F ret_D_F_F(){
    struct D_F_F lv = { .v1 = 1.0, .v2 = 4.5, .v3 = 0.5 };
    return lv;
}
int zig_assert_D_F_F(struct D_F_F);
int send_D_F_F(){
    return zig_assert_D_F_F(ret_D_F_F());
}
struct D_F_F zig_ret_D_F_F();
int assert_ret_D_F_F(){
    return assert_D_F_F(zig_ret_D_F_F());
}

int assert_D_F_I(struct D_F_I lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 31290) err = 3;
  return err;
}
struct D_F_I ret_D_F_I(){
    struct D_F_I lv = { .v1 = 7.0, .v2 = 1.0, .v3 = 31290 };
    return lv;
}
int zig_assert_D_F_I(struct D_F_I);
int send_D_F_I(){
    return zig_assert_D_F_I(ret_D_F_I());
}
struct D_F_I zig_ret_D_F_I();
int assert_ret_D_F_I(){
    return assert_D_F_I(zig_ret_D_F_I());
}

int assert_D_F_Ip(struct D_F_Ip lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_F_Ip ret_D_F_Ip(){
    struct D_F_Ip lv = { .v1 = -2.125, .v2 = 7.0, .v3 = 0 };
    return lv;
}
int zig_assert_D_F_Ip(struct D_F_Ip);
int send_D_F_Ip(){
    return zig_assert_D_F_Ip(ret_D_F_Ip());
}
struct D_F_Ip zig_ret_D_F_Ip();
int assert_ret_D_F_Ip(){
    return assert_D_F_Ip(zig_ret_D_F_Ip());
}

int assert_D_F_L(struct D_F_L lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 23080) err = 3;
  return err;
}
struct D_F_L ret_D_F_L(){
    struct D_F_L lv = { .v1 = -2.125, .v2 = 0.5, .v3 = 23080 };
    return lv;
}
int zig_assert_D_F_L(struct D_F_L);
int send_D_F_L(){
    return zig_assert_D_F_L(ret_D_F_L());
}
struct D_F_L zig_ret_D_F_L();
int assert_ret_D_F_L(){
    return assert_D_F_L(zig_ret_D_F_L());
}

int assert_D_F_S(struct D_F_S lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 22172) err = 3;
  return err;
}
struct D_F_S ret_D_F_S(){
    struct D_F_S lv = { .v1 = 0.875, .v2 = 7.0, .v3 = 22172 };
    return lv;
}
int zig_assert_D_F_S(struct D_F_S);
int send_D_F_S(){
    return zig_assert_D_F_S(ret_D_F_S());
}
struct D_F_S zig_ret_D_F_S();
int assert_ret_D_F_S(){
    return assert_D_F_S(zig_ret_D_F_S());
}

int assert_D_F_Uc(struct D_F_Uc lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 116) err = 3;
  return err;
}
struct D_F_Uc ret_D_F_Uc(){
    struct D_F_Uc lv = { .v1 = -2.125, .v2 = -0.25, .v3 = 116 };
    return lv;
}
int zig_assert_D_F_Uc(struct D_F_Uc);
int send_D_F_Uc(){
    return zig_assert_D_F_Uc(ret_D_F_Uc());
}
struct D_F_Uc zig_ret_D_F_Uc();
int assert_ret_D_F_Uc(){
    return assert_D_F_Uc(zig_ret_D_F_Uc());
}

int assert_D_F_Ui(struct D_F_Ui lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 25651) err = 3;
  return err;
}
struct D_F_Ui ret_D_F_Ui(){
    struct D_F_Ui lv = { .v1 = -2.125, .v2 = 1.0, .v3 = 25651 };
    return lv;
}
int zig_assert_D_F_Ui(struct D_F_Ui);
int send_D_F_Ui(){
    return zig_assert_D_F_Ui(ret_D_F_Ui());
}
struct D_F_Ui zig_ret_D_F_Ui();
int assert_ret_D_F_Ui(){
    return assert_D_F_Ui(zig_ret_D_F_Ui());
}

int assert_D_F_Ul(struct D_F_Ul lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 7057) err = 3;
  return err;
}
struct D_F_Ul ret_D_F_Ul(){
    struct D_F_Ul lv = { .v1 = 0.875, .v2 = -0.25, .v3 = 7057 };
    return lv;
}
int zig_assert_D_F_Ul(struct D_F_Ul);
int send_D_F_Ul(){
    return zig_assert_D_F_Ul(ret_D_F_Ul());
}
struct D_F_Ul zig_ret_D_F_Ul();
int assert_ret_D_F_Ul(){
    return assert_D_F_Ul(zig_ret_D_F_Ul());
}

int assert_D_F_Us(struct D_F_Us lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 20824) err = 3;
  return err;
}
struct D_F_Us ret_D_F_Us(){
    struct D_F_Us lv = { .v1 = 4.5, .v2 = 7.0, .v3 = 20824 };
    return lv;
}
int zig_assert_D_F_Us(struct D_F_Us);
int send_D_F_Us(){
    return zig_assert_D_F_Us(ret_D_F_Us());
}
struct D_F_Us zig_ret_D_F_Us();
int assert_ret_D_F_Us(){
    return assert_D_F_Us(zig_ret_D_F_Us());
}

int assert_D_F_Vp(struct D_F_Vp lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_F_Vp ret_D_F_Vp(){
    struct D_F_Vp lv = { .v1 = 4.5, .v2 = 1.0, .v3 = 0 };
    return lv;
}
int zig_assert_D_F_Vp(struct D_F_Vp);
int send_D_F_Vp(){
    return zig_assert_D_F_Vp(ret_D_F_Vp());
}
struct D_F_Vp zig_ret_D_F_Vp();
int assert_ret_D_F_Vp(){
    return assert_D_F_Vp(zig_ret_D_F_Vp());
}

int assert_D_I(struct D_I lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 18569) err = 2;
  return err;
}
struct D_I ret_D_I(){
    struct D_I lv = { .v1 = 4.5, .v2 = 18569 };
    return lv;
}
int zig_assert_D_I(struct D_I);
int send_D_I(){
    return zig_assert_D_I(ret_D_I());
}
struct D_I zig_ret_D_I();
int assert_ret_D_I(){
    return assert_D_I(zig_ret_D_I());
}

int assert_D_I_C(struct D_I_C lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 24024) err = 2;
  if (lv.v3 != 99) err = 3;
  return err;
}
struct D_I_C ret_D_I_C(){
    struct D_I_C lv = { .v1 = 1.0, .v2 = 24024, .v3 = 99 };
    return lv;
}
int zig_assert_D_I_C(struct D_I_C);
int send_D_I_C(){
    return zig_assert_D_I_C(ret_D_I_C());
}
struct D_I_C zig_ret_D_I_C();
int assert_ret_D_I_C(){
    return assert_D_I_C(zig_ret_D_I_C());
}

int assert_D_I_D(struct D_I_D lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 30236) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct D_I_D ret_D_I_D(){
    struct D_I_D lv = { .v1 = 4.5, .v2 = 30236, .v3 = -2.125 };
    return lv;
}
int zig_assert_D_I_D(struct D_I_D);
int send_D_I_D(){
    return zig_assert_D_I_D(ret_D_I_D());
}
struct D_I_D zig_ret_D_I_D();
int assert_ret_D_I_D(){
    return assert_D_I_D(zig_ret_D_I_D());
}

int assert_D_I_F(struct D_I_F lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 5029) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct D_I_F ret_D_I_F(){
    struct D_I_F lv = { .v1 = 7.0, .v2 = 5029, .v3 = 1.0 };
    return lv;
}
int zig_assert_D_I_F(struct D_I_F);
int send_D_I_F(){
    return zig_assert_D_I_F(ret_D_I_F());
}
struct D_I_F zig_ret_D_I_F();
int assert_ret_D_I_F(){
    return assert_D_I_F(zig_ret_D_I_F());
}

int assert_D_I_I(struct D_I_I lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 13633) err = 2;
  if (lv.v3 != 9829) err = 3;
  return err;
}
struct D_I_I ret_D_I_I(){
    struct D_I_I lv = { .v1 = 7.0, .v2 = 13633, .v3 = 9829 };
    return lv;
}
int zig_assert_D_I_I(struct D_I_I);
int send_D_I_I(){
    return zig_assert_D_I_I(ret_D_I_I());
}
struct D_I_I zig_ret_D_I_I();
int assert_ret_D_I_I(){
    return assert_D_I_I(zig_ret_D_I_I());
}

int assert_D_I_Ip(struct D_I_Ip lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 9051) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_I_Ip ret_D_I_Ip(){
    struct D_I_Ip lv = { .v1 = 4.5, .v2 = 9051, .v3 = 0 };
    return lv;
}
int zig_assert_D_I_Ip(struct D_I_Ip);
int send_D_I_Ip(){
    return zig_assert_D_I_Ip(ret_D_I_Ip());
}
struct D_I_Ip zig_ret_D_I_Ip();
int assert_ret_D_I_Ip(){
    return assert_D_I_Ip(zig_ret_D_I_Ip());
}

int assert_D_I_L(struct D_I_L lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 18331) err = 2;
  if (lv.v3 != 10784) err = 3;
  return err;
}
struct D_I_L ret_D_I_L(){
    struct D_I_L lv = { .v1 = -0.25, .v2 = 18331, .v3 = 10784 };
    return lv;
}
int zig_assert_D_I_L(struct D_I_L);
int send_D_I_L(){
    return zig_assert_D_I_L(ret_D_I_L());
}
struct D_I_L zig_ret_D_I_L();
int assert_ret_D_I_L(){
    return assert_D_I_L(zig_ret_D_I_L());
}

int assert_D_I_S(struct D_I_S lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 29861) err = 2;
  if (lv.v3 != 13238) err = 3;
  return err;
}
struct D_I_S ret_D_I_S(){
    struct D_I_S lv = { .v1 = 0.875, .v2 = 29861, .v3 = 13238 };
    return lv;
}
int zig_assert_D_I_S(struct D_I_S);
int send_D_I_S(){
    return zig_assert_D_I_S(ret_D_I_S());
}
struct D_I_S zig_ret_D_I_S();
int assert_ret_D_I_S(){
    return assert_D_I_S(zig_ret_D_I_S());
}

int assert_D_I_Uc(struct D_I_Uc lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 19530) err = 2;
  if (lv.v3 != 81) err = 3;
  return err;
}
struct D_I_Uc ret_D_I_Uc(){
    struct D_I_Uc lv = { .v1 = -0.25, .v2 = 19530, .v3 = 81 };
    return lv;
}
int zig_assert_D_I_Uc(struct D_I_Uc);
int send_D_I_Uc(){
    return zig_assert_D_I_Uc(ret_D_I_Uc());
}
struct D_I_Uc zig_ret_D_I_Uc();
int assert_ret_D_I_Uc(){
    return assert_D_I_Uc(zig_ret_D_I_Uc());
}

int assert_D_I_Ui(struct D_I_Ui lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 31107) err = 2;
  if (lv.v3 != 21469) err = 3;
  return err;
}
struct D_I_Ui ret_D_I_Ui(){
    struct D_I_Ui lv = { .v1 = 1.0, .v2 = 31107, .v3 = 21469 };
    return lv;
}
int zig_assert_D_I_Ui(struct D_I_Ui);
int send_D_I_Ui(){
    return zig_assert_D_I_Ui(ret_D_I_Ui());
}
struct D_I_Ui zig_ret_D_I_Ui();
int assert_ret_D_I_Ui(){
    return assert_D_I_Ui(zig_ret_D_I_Ui());
}

int assert_D_I_Ul(struct D_I_Ul lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 32447) err = 2;
  if (lv.v3 != 28274) err = 3;
  return err;
}
struct D_I_Ul ret_D_I_Ul(){
    struct D_I_Ul lv = { .v1 = 7.0, .v2 = 32447, .v3 = 28274 };
    return lv;
}
int zig_assert_D_I_Ul(struct D_I_Ul);
int send_D_I_Ul(){
    return zig_assert_D_I_Ul(ret_D_I_Ul());
}
struct D_I_Ul zig_ret_D_I_Ul();
int assert_ret_D_I_Ul(){
    return assert_D_I_Ul(zig_ret_D_I_Ul());
}

int assert_D_I_Us(struct D_I_Us lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 14380) err = 2;
  if (lv.v3 != 122) err = 3;
  return err;
}
struct D_I_Us ret_D_I_Us(){
    struct D_I_Us lv = { .v1 = 0.875, .v2 = 14380, .v3 = 122 };
    return lv;
}
int zig_assert_D_I_Us(struct D_I_Us);
int send_D_I_Us(){
    return zig_assert_D_I_Us(ret_D_I_Us());
}
struct D_I_Us zig_ret_D_I_Us();
int assert_ret_D_I_Us(){
    return assert_D_I_Us(zig_ret_D_I_Us());
}

int assert_D_I_Vp(struct D_I_Vp lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 9870) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_I_Vp ret_D_I_Vp(){
    struct D_I_Vp lv = { .v1 = 4.5, .v2 = 9870, .v3 = 0 };
    return lv;
}
int zig_assert_D_I_Vp(struct D_I_Vp);
int send_D_I_Vp(){
    return zig_assert_D_I_Vp(ret_D_I_Vp());
}
struct D_I_Vp zig_ret_D_I_Vp();
int assert_ret_D_I_Vp(){
    return assert_D_I_Vp(zig_ret_D_I_Vp());
}

int assert_D_Ip(struct D_Ip lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct D_Ip ret_D_Ip(){
    struct D_Ip lv = { .v1 = 0.875, .v2 = 0 };
    return lv;
}
int zig_assert_D_Ip(struct D_Ip);
int send_D_Ip(){
    return zig_assert_D_Ip(ret_D_Ip());
}
struct D_Ip zig_ret_D_Ip();
int assert_ret_D_Ip(){
    return assert_D_Ip(zig_ret_D_Ip());
}

int assert_D_Ip_C(struct D_Ip_C lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 55) err = 3;
  return err;
}
struct D_Ip_C ret_D_Ip_C(){
    struct D_Ip_C lv = { .v1 = 0.5, .v2 = 0, .v3 = 55 };
    return lv;
}
int zig_assert_D_Ip_C(struct D_Ip_C);
int send_D_Ip_C(){
    return zig_assert_D_Ip_C(ret_D_Ip_C());
}
struct D_Ip_C zig_ret_D_Ip_C();
int assert_ret_D_Ip_C(){
    return assert_D_Ip_C(zig_ret_D_Ip_C());
}

int assert_D_Ip_D(struct D_Ip_D lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct D_Ip_D ret_D_Ip_D(){
    struct D_Ip_D lv = { .v1 = 0.5, .v2 = 0, .v3 = -2.125 };
    return lv;
}
int zig_assert_D_Ip_D(struct D_Ip_D);
int send_D_Ip_D(){
    return zig_assert_D_Ip_D(ret_D_Ip_D());
}
struct D_Ip_D zig_ret_D_Ip_D();
int assert_ret_D_Ip_D(){
    return assert_D_Ip_D(zig_ret_D_Ip_D());
}

int assert_D_Ip_F(struct D_Ip_F lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct D_Ip_F ret_D_Ip_F(){
    struct D_Ip_F lv = { .v1 = 0.5, .v2 = 0, .v3 = 4.5 };
    return lv;
}
int zig_assert_D_Ip_F(struct D_Ip_F);
int send_D_Ip_F(){
    return zig_assert_D_Ip_F(ret_D_Ip_F());
}
struct D_Ip_F zig_ret_D_Ip_F();
int assert_ret_D_Ip_F(){
    return assert_D_Ip_F(zig_ret_D_Ip_F());
}

int assert_D_Ip_I(struct D_Ip_I lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 25718) err = 3;
  return err;
}
struct D_Ip_I ret_D_Ip_I(){
    struct D_Ip_I lv = { .v1 = -0.25, .v2 = 0, .v3 = 25718 };
    return lv;
}
int zig_assert_D_Ip_I(struct D_Ip_I);
int send_D_Ip_I(){
    return zig_assert_D_Ip_I(ret_D_Ip_I());
}
struct D_Ip_I zig_ret_D_Ip_I();
int assert_ret_D_Ip_I(){
    return assert_D_Ip_I(zig_ret_D_Ip_I());
}

int assert_D_Ip_Ip(struct D_Ip_Ip lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Ip_Ip ret_D_Ip_Ip(){
    struct D_Ip_Ip lv = { .v1 = -0.25, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_D_Ip_Ip(struct D_Ip_Ip);
int send_D_Ip_Ip(){
    return zig_assert_D_Ip_Ip(ret_D_Ip_Ip());
}
struct D_Ip_Ip zig_ret_D_Ip_Ip();
int assert_ret_D_Ip_Ip(){
    return assert_D_Ip_Ip(zig_ret_D_Ip_Ip());
}

int assert_D_Ip_L(struct D_Ip_L lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 3369) err = 3;
  return err;
}
struct D_Ip_L ret_D_Ip_L(){
    struct D_Ip_L lv = { .v1 = 0.875, .v2 = 0, .v3 = 3369 };
    return lv;
}
int zig_assert_D_Ip_L(struct D_Ip_L);
int send_D_Ip_L(){
    return zig_assert_D_Ip_L(ret_D_Ip_L());
}
struct D_Ip_L zig_ret_D_Ip_L();
int assert_ret_D_Ip_L(){
    return assert_D_Ip_L(zig_ret_D_Ip_L());
}

int assert_D_Ip_S(struct D_Ip_S lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 14756) err = 3;
  return err;
}
struct D_Ip_S ret_D_Ip_S(){
    struct D_Ip_S lv = { .v1 = 0.875, .v2 = 0, .v3 = 14756 };
    return lv;
}
int zig_assert_D_Ip_S(struct D_Ip_S);
int send_D_Ip_S(){
    return zig_assert_D_Ip_S(ret_D_Ip_S());
}
struct D_Ip_S zig_ret_D_Ip_S();
int assert_ret_D_Ip_S(){
    return assert_D_Ip_S(zig_ret_D_Ip_S());
}

int assert_D_Ip_Uc(struct D_Ip_Uc lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 61) err = 3;
  return err;
}
struct D_Ip_Uc ret_D_Ip_Uc(){
    struct D_Ip_Uc lv = { .v1 = -0.25, .v2 = 0, .v3 = 61 };
    return lv;
}
int zig_assert_D_Ip_Uc(struct D_Ip_Uc);
int send_D_Ip_Uc(){
    return zig_assert_D_Ip_Uc(ret_D_Ip_Uc());
}
struct D_Ip_Uc zig_ret_D_Ip_Uc();
int assert_ret_D_Ip_Uc(){
    return assert_D_Ip_Uc(zig_ret_D_Ip_Uc());
}

int assert_D_Ip_Ui(struct D_Ip_Ui lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 24999) err = 3;
  return err;
}
struct D_Ip_Ui ret_D_Ip_Ui(){
    struct D_Ip_Ui lv = { .v1 = 7.0, .v2 = 0, .v3 = 24999 };
    return lv;
}
int zig_assert_D_Ip_Ui(struct D_Ip_Ui);
int send_D_Ip_Ui(){
    return zig_assert_D_Ip_Ui(ret_D_Ip_Ui());
}
struct D_Ip_Ui zig_ret_D_Ip_Ui();
int assert_ret_D_Ip_Ui(){
    return assert_D_Ip_Ui(zig_ret_D_Ip_Ui());
}

int assert_D_Ip_Ul(struct D_Ip_Ul lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 22031) err = 3;
  return err;
}
struct D_Ip_Ul ret_D_Ip_Ul(){
    struct D_Ip_Ul lv = { .v1 = -0.25, .v2 = 0, .v3 = 22031 };
    return lv;
}
int zig_assert_D_Ip_Ul(struct D_Ip_Ul);
int send_D_Ip_Ul(){
    return zig_assert_D_Ip_Ul(ret_D_Ip_Ul());
}
struct D_Ip_Ul zig_ret_D_Ip_Ul();
int assert_ret_D_Ip_Ul(){
    return assert_D_Ip_Ul(zig_ret_D_Ip_Ul());
}

int assert_D_Ip_Us(struct D_Ip_Us lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 741) err = 3;
  return err;
}
struct D_Ip_Us ret_D_Ip_Us(){
    struct D_Ip_Us lv = { .v1 = 4.5, .v2 = 0, .v3 = 741 };
    return lv;
}
int zig_assert_D_Ip_Us(struct D_Ip_Us);
int send_D_Ip_Us(){
    return zig_assert_D_Ip_Us(ret_D_Ip_Us());
}
struct D_Ip_Us zig_ret_D_Ip_Us();
int assert_ret_D_Ip_Us(){
    return assert_D_Ip_Us(zig_ret_D_Ip_Us());
}

int assert_D_Ip_Vp(struct D_Ip_Vp lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Ip_Vp ret_D_Ip_Vp(){
    struct D_Ip_Vp lv = { .v1 = 1.0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_D_Ip_Vp(struct D_Ip_Vp);
int send_D_Ip_Vp(){
    return zig_assert_D_Ip_Vp(ret_D_Ip_Vp());
}
struct D_Ip_Vp zig_ret_D_Ip_Vp();
int assert_ret_D_Ip_Vp(){
    return assert_D_Ip_Vp(zig_ret_D_Ip_Vp());
}

int assert_D_L(struct D_L lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 9582) err = 2;
  return err;
}
struct D_L ret_D_L(){
    struct D_L lv = { .v1 = 4.5, .v2 = 9582 };
    return lv;
}
int zig_assert_D_L(struct D_L);
int send_D_L(){
    return zig_assert_D_L(ret_D_L());
}
struct D_L zig_ret_D_L();
int assert_ret_D_L(){
    return assert_D_L(zig_ret_D_L());
}

int assert_D_L_C(struct D_L_C lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 18867) err = 2;
  if (lv.v3 != 76) err = 3;
  return err;
}
struct D_L_C ret_D_L_C(){
    struct D_L_C lv = { .v1 = 4.5, .v2 = 18867, .v3 = 76 };
    return lv;
}
int zig_assert_D_L_C(struct D_L_C);
int send_D_L_C(){
    return zig_assert_D_L_C(ret_D_L_C());
}
struct D_L_C zig_ret_D_L_C();
int assert_ret_D_L_C(){
    return assert_D_L_C(zig_ret_D_L_C());
}

int assert_D_L_D(struct D_L_D lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 21051) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct D_L_D ret_D_L_D(){
    struct D_L_D lv = { .v1 = -0.25, .v2 = 21051, .v3 = 0.875 };
    return lv;
}
int zig_assert_D_L_D(struct D_L_D);
int send_D_L_D(){
    return zig_assert_D_L_D(ret_D_L_D());
}
struct D_L_D zig_ret_D_L_D();
int assert_ret_D_L_D(){
    return assert_D_L_D(zig_ret_D_L_D());
}

int assert_D_L_F(struct D_L_F lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 30914) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct D_L_F ret_D_L_F(){
    struct D_L_F lv = { .v1 = 1.0, .v2 = 30914, .v3 = 1.0 };
    return lv;
}
int zig_assert_D_L_F(struct D_L_F);
int send_D_L_F(){
    return zig_assert_D_L_F(ret_D_L_F());
}
struct D_L_F zig_ret_D_L_F();
int assert_ret_D_L_F(){
    return assert_D_L_F(zig_ret_D_L_F());
}

int assert_D_L_I(struct D_L_I lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 14517) err = 2;
  if (lv.v3 != 8201) err = 3;
  return err;
}
struct D_L_I ret_D_L_I(){
    struct D_L_I lv = { .v1 = 1.0, .v2 = 14517, .v3 = 8201 };
    return lv;
}
int zig_assert_D_L_I(struct D_L_I);
int send_D_L_I(){
    return zig_assert_D_L_I(ret_D_L_I());
}
struct D_L_I zig_ret_D_L_I();
int assert_ret_D_L_I(){
    return assert_D_L_I(zig_ret_D_L_I());
}

int assert_D_L_Ip(struct D_L_Ip lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 3359) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_L_Ip ret_D_L_Ip(){
    struct D_L_Ip lv = { .v1 = 0.875, .v2 = 3359, .v3 = 0 };
    return lv;
}
int zig_assert_D_L_Ip(struct D_L_Ip);
int send_D_L_Ip(){
    return zig_assert_D_L_Ip(ret_D_L_Ip());
}
struct D_L_Ip zig_ret_D_L_Ip();
int assert_ret_D_L_Ip(){
    return assert_D_L_Ip(zig_ret_D_L_Ip());
}

int assert_D_L_L(struct D_L_L lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 31346) err = 2;
  if (lv.v3 != 3876) err = 3;
  return err;
}
struct D_L_L ret_D_L_L(){
    struct D_L_L lv = { .v1 = -0.25, .v2 = 31346, .v3 = 3876 };
    return lv;
}
int zig_assert_D_L_L(struct D_L_L);
int send_D_L_L(){
    return zig_assert_D_L_L(ret_D_L_L());
}
struct D_L_L zig_ret_D_L_L();
int assert_ret_D_L_L(){
    return assert_D_L_L(zig_ret_D_L_L());
}

int assert_D_L_S(struct D_L_S lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 11502) err = 2;
  if (lv.v3 != 16315) err = 3;
  return err;
}
struct D_L_S ret_D_L_S(){
    struct D_L_S lv = { .v1 = 4.5, .v2 = 11502, .v3 = 16315 };
    return lv;
}
int zig_assert_D_L_S(struct D_L_S);
int send_D_L_S(){
    return zig_assert_D_L_S(ret_D_L_S());
}
struct D_L_S zig_ret_D_L_S();
int assert_ret_D_L_S(){
    return assert_D_L_S(zig_ret_D_L_S());
}

int assert_D_L_Uc(struct D_L_Uc lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 20559) err = 2;
  if (lv.v3 != 102) err = 3;
  return err;
}
struct D_L_Uc ret_D_L_Uc(){
    struct D_L_Uc lv = { .v1 = 0.5, .v2 = 20559, .v3 = 102 };
    return lv;
}
int zig_assert_D_L_Uc(struct D_L_Uc);
int send_D_L_Uc(){
    return zig_assert_D_L_Uc(ret_D_L_Uc());
}
struct D_L_Uc zig_ret_D_L_Uc();
int assert_ret_D_L_Uc(){
    return assert_D_L_Uc(zig_ret_D_L_Uc());
}

int assert_D_L_Ui(struct D_L_Ui lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 17125) err = 2;
  if (lv.v3 != 8313) err = 3;
  return err;
}
struct D_L_Ui ret_D_L_Ui(){
    struct D_L_Ui lv = { .v1 = -2.125, .v2 = 17125, .v3 = 8313 };
    return lv;
}
int zig_assert_D_L_Ui(struct D_L_Ui);
int send_D_L_Ui(){
    return zig_assert_D_L_Ui(ret_D_L_Ui());
}
struct D_L_Ui zig_ret_D_L_Ui();
int assert_ret_D_L_Ui(){
    return assert_D_L_Ui(zig_ret_D_L_Ui());
}

int assert_D_L_Ul(struct D_L_Ul lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 22788) err = 2;
  if (lv.v3 != 1950) err = 3;
  return err;
}
struct D_L_Ul ret_D_L_Ul(){
    struct D_L_Ul lv = { .v1 = 7.0, .v2 = 22788, .v3 = 1950 };
    return lv;
}
int zig_assert_D_L_Ul(struct D_L_Ul);
int send_D_L_Ul(){
    return zig_assert_D_L_Ul(ret_D_L_Ul());
}
struct D_L_Ul zig_ret_D_L_Ul();
int assert_ret_D_L_Ul(){
    return assert_D_L_Ul(zig_ret_D_L_Ul());
}

int assert_D_L_Us(struct D_L_Us lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 14381) err = 2;
  if (lv.v3 != 29145) err = 3;
  return err;
}
struct D_L_Us ret_D_L_Us(){
    struct D_L_Us lv = { .v1 = 7.0, .v2 = 14381, .v3 = 29145 };
    return lv;
}
int zig_assert_D_L_Us(struct D_L_Us);
int send_D_L_Us(){
    return zig_assert_D_L_Us(ret_D_L_Us());
}
struct D_L_Us zig_ret_D_L_Us();
int assert_ret_D_L_Us(){
    return assert_D_L_Us(zig_ret_D_L_Us());
}

int assert_D_L_Vp(struct D_L_Vp lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 1736) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_L_Vp ret_D_L_Vp(){
    struct D_L_Vp lv = { .v1 = 1.0, .v2 = 1736, .v3 = 0 };
    return lv;
}
int zig_assert_D_L_Vp(struct D_L_Vp);
int send_D_L_Vp(){
    return zig_assert_D_L_Vp(ret_D_L_Vp());
}
struct D_L_Vp zig_ret_D_L_Vp();
int assert_ret_D_L_Vp(){
    return assert_D_L_Vp(zig_ret_D_L_Vp());
}

int assert_D_S(struct D_S lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 18963) err = 2;
  return err;
}
struct D_S ret_D_S(){
    struct D_S lv = { .v1 = 1.0, .v2 = 18963 };
    return lv;
}
int zig_assert_D_S(struct D_S);
int send_D_S(){
    return zig_assert_D_S(ret_D_S());
}
struct D_S zig_ret_D_S();
int assert_ret_D_S(){
    return assert_D_S(zig_ret_D_S());
}

int assert_D_S_C(struct D_S_C lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 111) err = 2;
  if (lv.v3 != 38) err = 3;
  return err;
}
struct D_S_C ret_D_S_C(){
    struct D_S_C lv = { .v1 = 1.0, .v2 = 111, .v3 = 38 };
    return lv;
}
int zig_assert_D_S_C(struct D_S_C);
int send_D_S_C(){
    return zig_assert_D_S_C(ret_D_S_C());
}
struct D_S_C zig_ret_D_S_C();
int assert_ret_D_S_C(){
    return assert_D_S_C(zig_ret_D_S_C());
}

int assert_D_S_D(struct D_S_D lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 32408) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct D_S_D ret_D_S_D(){
    struct D_S_D lv = { .v1 = 7.0, .v2 = 32408, .v3 = 0.875 };
    return lv;
}
int zig_assert_D_S_D(struct D_S_D);
int send_D_S_D(){
    return zig_assert_D_S_D(ret_D_S_D());
}
struct D_S_D zig_ret_D_S_D();
int assert_ret_D_S_D(){
    return assert_D_S_D(zig_ret_D_S_D());
}

int assert_D_S_F(struct D_S_F lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 10925) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct D_S_F ret_D_S_F(){
    struct D_S_F lv = { .v1 = 7.0, .v2 = 10925, .v3 = 0.875 };
    return lv;
}
int zig_assert_D_S_F(struct D_S_F);
int send_D_S_F(){
    return zig_assert_D_S_F(ret_D_S_F());
}
struct D_S_F zig_ret_D_S_F();
int assert_ret_D_S_F(){
    return assert_D_S_F(zig_ret_D_S_F());
}

int assert_D_S_I(struct D_S_I lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 23805) err = 2;
  if (lv.v3 != 4950) err = 3;
  return err;
}
struct D_S_I ret_D_S_I(){
    struct D_S_I lv = { .v1 = 0.875, .v2 = 23805, .v3 = 4950 };
    return lv;
}
int zig_assert_D_S_I(struct D_S_I);
int send_D_S_I(){
    return zig_assert_D_S_I(ret_D_S_I());
}
struct D_S_I zig_ret_D_S_I();
int assert_ret_D_S_I(){
    return assert_D_S_I(zig_ret_D_S_I());
}

int assert_D_S_Ip(struct D_S_Ip lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 18312) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_S_Ip ret_D_S_Ip(){
    struct D_S_Ip lv = { .v1 = 0.875, .v2 = 18312, .v3 = 0 };
    return lv;
}
int zig_assert_D_S_Ip(struct D_S_Ip);
int send_D_S_Ip(){
    return zig_assert_D_S_Ip(ret_D_S_Ip());
}
struct D_S_Ip zig_ret_D_S_Ip();
int assert_ret_D_S_Ip(){
    return assert_D_S_Ip(zig_ret_D_S_Ip());
}

int assert_D_S_L(struct D_S_L lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 29169) err = 2;
  if (lv.v3 != 11847) err = 3;
  return err;
}
struct D_S_L ret_D_S_L(){
    struct D_S_L lv = { .v1 = 4.5, .v2 = 29169, .v3 = 11847 };
    return lv;
}
int zig_assert_D_S_L(struct D_S_L);
int send_D_S_L(){
    return zig_assert_D_S_L(ret_D_S_L());
}
struct D_S_L zig_ret_D_S_L();
int assert_ret_D_S_L(){
    return assert_D_S_L(zig_ret_D_S_L());
}

int assert_D_S_S(struct D_S_S lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 29071) err = 2;
  if (lv.v3 != 28225) err = 3;
  return err;
}
struct D_S_S ret_D_S_S(){
    struct D_S_S lv = { .v1 = 0.875, .v2 = 29071, .v3 = 28225 };
    return lv;
}
int zig_assert_D_S_S(struct D_S_S);
int send_D_S_S(){
    return zig_assert_D_S_S(ret_D_S_S());
}
struct D_S_S zig_ret_D_S_S();
int assert_ret_D_S_S(){
    return assert_D_S_S(zig_ret_D_S_S());
}

int assert_D_S_Uc(struct D_S_Uc lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 1535) err = 2;
  if (lv.v3 != 20) err = 3;
  return err;
}
struct D_S_Uc ret_D_S_Uc(){
    struct D_S_Uc lv = { .v1 = -2.125, .v2 = 1535, .v3 = 20 };
    return lv;
}
int zig_assert_D_S_Uc(struct D_S_Uc);
int send_D_S_Uc(){
    return zig_assert_D_S_Uc(ret_D_S_Uc());
}
struct D_S_Uc zig_ret_D_S_Uc();
int assert_ret_D_S_Uc(){
    return assert_D_S_Uc(zig_ret_D_S_Uc());
}

int assert_D_S_Ui(struct D_S_Ui lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 23406) err = 2;
  if (lv.v3 != 7690) err = 3;
  return err;
}
struct D_S_Ui ret_D_S_Ui(){
    struct D_S_Ui lv = { .v1 = 4.5, .v2 = 23406, .v3 = 7690 };
    return lv;
}
int zig_assert_D_S_Ui(struct D_S_Ui);
int send_D_S_Ui(){
    return zig_assert_D_S_Ui(ret_D_S_Ui());
}
struct D_S_Ui zig_ret_D_S_Ui();
int assert_ret_D_S_Ui(){
    return assert_D_S_Ui(zig_ret_D_S_Ui());
}

int assert_D_S_Ul(struct D_S_Ul lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 3705) err = 2;
  if (lv.v3 != 27905) err = 3;
  return err;
}
struct D_S_Ul ret_D_S_Ul(){
    struct D_S_Ul lv = { .v1 = 4.5, .v2 = 3705, .v3 = 27905 };
    return lv;
}
int zig_assert_D_S_Ul(struct D_S_Ul);
int send_D_S_Ul(){
    return zig_assert_D_S_Ul(ret_D_S_Ul());
}
struct D_S_Ul zig_ret_D_S_Ul();
int assert_ret_D_S_Ul(){
    return assert_D_S_Ul(zig_ret_D_S_Ul());
}

int assert_D_S_Us(struct D_S_Us lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 23576) err = 2;
  if (lv.v3 != 1855) err = 3;
  return err;
}
struct D_S_Us ret_D_S_Us(){
    struct D_S_Us lv = { .v1 = -2.125, .v2 = 23576, .v3 = 1855 };
    return lv;
}
int zig_assert_D_S_Us(struct D_S_Us);
int send_D_S_Us(){
    return zig_assert_D_S_Us(ret_D_S_Us());
}
struct D_S_Us zig_ret_D_S_Us();
int assert_ret_D_S_Us(){
    return assert_D_S_Us(zig_ret_D_S_Us());
}

int assert_D_S_Vp(struct D_S_Vp lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 29327) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_S_Vp ret_D_S_Vp(){
    struct D_S_Vp lv = { .v1 = 0.5, .v2 = 29327, .v3 = 0 };
    return lv;
}
int zig_assert_D_S_Vp(struct D_S_Vp);
int send_D_S_Vp(){
    return zig_assert_D_S_Vp(ret_D_S_Vp());
}
struct D_S_Vp zig_ret_D_S_Vp();
int assert_ret_D_S_Vp(){
    return assert_D_S_Vp(zig_ret_D_S_Vp());
}

int assert_D_Uc(struct D_Uc lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 121) err = 2;
  return err;
}
struct D_Uc ret_D_Uc(){
    struct D_Uc lv = { .v1 = 0.5, .v2 = 121 };
    return lv;
}
int zig_assert_D_Uc(struct D_Uc);
int send_D_Uc(){
    return zig_assert_D_Uc(ret_D_Uc());
}
struct D_Uc zig_ret_D_Uc();
int assert_ret_D_Uc(){
    return assert_D_Uc(zig_ret_D_Uc());
}

int assert_D_Uc_C(struct D_Uc_C lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 68) err = 2;
  if (lv.v3 != 42) err = 3;
  return err;
}
struct D_Uc_C ret_D_Uc_C(){
    struct D_Uc_C lv = { .v1 = 1.0, .v2 = 68, .v3 = 42 };
    return lv;
}
int zig_assert_D_Uc_C(struct D_Uc_C);
int send_D_Uc_C(){
    return zig_assert_D_Uc_C(ret_D_Uc_C());
}
struct D_Uc_C zig_ret_D_Uc_C();
int assert_ret_D_Uc_C(){
    return assert_D_Uc_C(zig_ret_D_Uc_C());
}

int assert_D_Uc_D(struct D_Uc_D lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 68) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct D_Uc_D ret_D_Uc_D(){
    struct D_Uc_D lv = { .v1 = -0.25, .v2 = 68, .v3 = 1.0 };
    return lv;
}
int zig_assert_D_Uc_D(struct D_Uc_D);
int send_D_Uc_D(){
    return zig_assert_D_Uc_D(ret_D_Uc_D());
}
struct D_Uc_D zig_ret_D_Uc_D();
int assert_ret_D_Uc_D(){
    return assert_D_Uc_D(zig_ret_D_Uc_D());
}

int assert_D_Uc_F(struct D_Uc_F lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 110) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct D_Uc_F ret_D_Uc_F(){
    struct D_Uc_F lv = { .v1 = -0.25, .v2 = 110, .v3 = -0.25 };
    return lv;
}
int zig_assert_D_Uc_F(struct D_Uc_F);
int send_D_Uc_F(){
    return zig_assert_D_Uc_F(ret_D_Uc_F());
}
struct D_Uc_F zig_ret_D_Uc_F();
int assert_ret_D_Uc_F(){
    return assert_D_Uc_F(zig_ret_D_Uc_F());
}

int assert_D_Uc_I(struct D_Uc_I lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 32) err = 2;
  if (lv.v3 != 18397) err = 3;
  return err;
}
struct D_Uc_I ret_D_Uc_I(){
    struct D_Uc_I lv = { .v1 = 0.5, .v2 = 32, .v3 = 18397 };
    return lv;
}
int zig_assert_D_Uc_I(struct D_Uc_I);
int send_D_Uc_I(){
    return zig_assert_D_Uc_I(ret_D_Uc_I());
}
struct D_Uc_I zig_ret_D_Uc_I();
int assert_ret_D_Uc_I(){
    return assert_D_Uc_I(zig_ret_D_Uc_I());
}

int assert_D_Uc_Ip(struct D_Uc_Ip lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 108) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Uc_Ip ret_D_Uc_Ip(){
    struct D_Uc_Ip lv = { .v1 = 7.0, .v2 = 108, .v3 = 0 };
    return lv;
}
int zig_assert_D_Uc_Ip(struct D_Uc_Ip);
int send_D_Uc_Ip(){
    return zig_assert_D_Uc_Ip(ret_D_Uc_Ip());
}
struct D_Uc_Ip zig_ret_D_Uc_Ip();
int assert_ret_D_Uc_Ip(){
    return assert_D_Uc_Ip(zig_ret_D_Uc_Ip());
}

int assert_D_Uc_L(struct D_Uc_L lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 108) err = 2;
  if (lv.v3 != 2176) err = 3;
  return err;
}
struct D_Uc_L ret_D_Uc_L(){
    struct D_Uc_L lv = { .v1 = 0.875, .v2 = 108, .v3 = 2176 };
    return lv;
}
int zig_assert_D_Uc_L(struct D_Uc_L);
int send_D_Uc_L(){
    return zig_assert_D_Uc_L(ret_D_Uc_L());
}
struct D_Uc_L zig_ret_D_Uc_L();
int assert_ret_D_Uc_L(){
    return assert_D_Uc_L(zig_ret_D_Uc_L());
}

int assert_D_Uc_S(struct D_Uc_S lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 48) err = 2;
  if (lv.v3 != 3198) err = 3;
  return err;
}
struct D_Uc_S ret_D_Uc_S(){
    struct D_Uc_S lv = { .v1 = 1.0, .v2 = 48, .v3 = 3198 };
    return lv;
}
int zig_assert_D_Uc_S(struct D_Uc_S);
int send_D_Uc_S(){
    return zig_assert_D_Uc_S(ret_D_Uc_S());
}
struct D_Uc_S zig_ret_D_Uc_S();
int assert_ret_D_Uc_S(){
    return assert_D_Uc_S(zig_ret_D_Uc_S());
}

int assert_D_Uc_Uc(struct D_Uc_Uc lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 115) err = 2;
  if (lv.v3 != 90) err = 3;
  return err;
}
struct D_Uc_Uc ret_D_Uc_Uc(){
    struct D_Uc_Uc lv = { .v1 = -2.125, .v2 = 115, .v3 = 90 };
    return lv;
}
int zig_assert_D_Uc_Uc(struct D_Uc_Uc);
int send_D_Uc_Uc(){
    return zig_assert_D_Uc_Uc(ret_D_Uc_Uc());
}
struct D_Uc_Uc zig_ret_D_Uc_Uc();
int assert_ret_D_Uc_Uc(){
    return assert_D_Uc_Uc(zig_ret_D_Uc_Uc());
}

int assert_D_Uc_Ui(struct D_Uc_Ui lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 117) err = 2;
  if (lv.v3 != 6126) err = 3;
  return err;
}
struct D_Uc_Ui ret_D_Uc_Ui(){
    struct D_Uc_Ui lv = { .v1 = 7.0, .v2 = 117, .v3 = 6126 };
    return lv;
}
int zig_assert_D_Uc_Ui(struct D_Uc_Ui);
int send_D_Uc_Ui(){
    return zig_assert_D_Uc_Ui(ret_D_Uc_Ui());
}
struct D_Uc_Ui zig_ret_D_Uc_Ui();
int assert_ret_D_Uc_Ui(){
    return assert_D_Uc_Ui(zig_ret_D_Uc_Ui());
}

int assert_D_Uc_Ul(struct D_Uc_Ul lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 55) err = 2;
  if (lv.v3 != 11060) err = 3;
  return err;
}
struct D_Uc_Ul ret_D_Uc_Ul(){
    struct D_Uc_Ul lv = { .v1 = 4.5, .v2 = 55, .v3 = 11060 };
    return lv;
}
int zig_assert_D_Uc_Ul(struct D_Uc_Ul);
int send_D_Uc_Ul(){
    return zig_assert_D_Uc_Ul(ret_D_Uc_Ul());
}
struct D_Uc_Ul zig_ret_D_Uc_Ul();
int assert_ret_D_Uc_Ul(){
    return assert_D_Uc_Ul(zig_ret_D_Uc_Ul());
}

int assert_D_Uc_Us(struct D_Uc_Us lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 120) err = 2;
  if (lv.v3 != 26) err = 3;
  return err;
}
struct D_Uc_Us ret_D_Uc_Us(){
    struct D_Uc_Us lv = { .v1 = -2.125, .v2 = 120, .v3 = 26 };
    return lv;
}
int zig_assert_D_Uc_Us(struct D_Uc_Us);
int send_D_Uc_Us(){
    return zig_assert_D_Uc_Us(ret_D_Uc_Us());
}
struct D_Uc_Us zig_ret_D_Uc_Us();
int assert_ret_D_Uc_Us(){
    return assert_D_Uc_Us(zig_ret_D_Uc_Us());
}

int assert_D_Uc_Vp(struct D_Uc_Vp lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 32) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Uc_Vp ret_D_Uc_Vp(){
    struct D_Uc_Vp lv = { .v1 = -0.25, .v2 = 32, .v3 = 0 };
    return lv;
}
int zig_assert_D_Uc_Vp(struct D_Uc_Vp);
int send_D_Uc_Vp(){
    return zig_assert_D_Uc_Vp(ret_D_Uc_Vp());
}
struct D_Uc_Vp zig_ret_D_Uc_Vp();
int assert_ret_D_Uc_Vp(){
    return assert_D_Uc_Vp(zig_ret_D_Uc_Vp());
}

int assert_D_Ui(struct D_Ui lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 5341) err = 2;
  return err;
}
struct D_Ui ret_D_Ui(){
    struct D_Ui lv = { .v1 = 4.5, .v2 = 5341 };
    return lv;
}
int zig_assert_D_Ui(struct D_Ui);
int send_D_Ui(){
    return zig_assert_D_Ui(ret_D_Ui());
}
struct D_Ui zig_ret_D_Ui();
int assert_ret_D_Ui(){
    return assert_D_Ui(zig_ret_D_Ui());
}

int assert_D_Ui_C(struct D_Ui_C lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 7695) err = 2;
  if (lv.v3 != 95) err = 3;
  return err;
}
struct D_Ui_C ret_D_Ui_C(){
    struct D_Ui_C lv = { .v1 = 4.5, .v2 = 7695, .v3 = 95 };
    return lv;
}
int zig_assert_D_Ui_C(struct D_Ui_C);
int send_D_Ui_C(){
    return zig_assert_D_Ui_C(ret_D_Ui_C());
}
struct D_Ui_C zig_ret_D_Ui_C();
int assert_ret_D_Ui_C(){
    return assert_D_Ui_C(zig_ret_D_Ui_C());
}

int assert_D_Ui_D(struct D_Ui_D lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 9641) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct D_Ui_D ret_D_Ui_D(){
    struct D_Ui_D lv = { .v1 = 1.0, .v2 = 9641, .v3 = 0.875 };
    return lv;
}
int zig_assert_D_Ui_D(struct D_Ui_D);
int send_D_Ui_D(){
    return zig_assert_D_Ui_D(ret_D_Ui_D());
}
struct D_Ui_D zig_ret_D_Ui_D();
int assert_ret_D_Ui_D(){
    return assert_D_Ui_D(zig_ret_D_Ui_D());
}

int assert_D_Ui_F(struct D_Ui_F lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 20010) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct D_Ui_F ret_D_Ui_F(){
    struct D_Ui_F lv = { .v1 = 4.5, .v2 = 20010, .v3 = -2.125 };
    return lv;
}
int zig_assert_D_Ui_F(struct D_Ui_F);
int send_D_Ui_F(){
    return zig_assert_D_Ui_F(ret_D_Ui_F());
}
struct D_Ui_F zig_ret_D_Ui_F();
int assert_ret_D_Ui_F(){
    return assert_D_Ui_F(zig_ret_D_Ui_F());
}

int assert_D_Ui_I(struct D_Ui_I lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 24900) err = 2;
  if (lv.v3 != 31103) err = 3;
  return err;
}
struct D_Ui_I ret_D_Ui_I(){
    struct D_Ui_I lv = { .v1 = -0.25, .v2 = 24900, .v3 = 31103 };
    return lv;
}
int zig_assert_D_Ui_I(struct D_Ui_I);
int send_D_Ui_I(){
    return zig_assert_D_Ui_I(ret_D_Ui_I());
}
struct D_Ui_I zig_ret_D_Ui_I();
int assert_ret_D_Ui_I(){
    return assert_D_Ui_I(zig_ret_D_Ui_I());
}

int assert_D_Ui_Ip(struct D_Ui_Ip lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 20869) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Ui_Ip ret_D_Ui_Ip(){
    struct D_Ui_Ip lv = { .v1 = 4.5, .v2 = 20869, .v3 = 0 };
    return lv;
}
int zig_assert_D_Ui_Ip(struct D_Ui_Ip);
int send_D_Ui_Ip(){
    return zig_assert_D_Ui_Ip(ret_D_Ui_Ip());
}
struct D_Ui_Ip zig_ret_D_Ui_Ip();
int assert_ret_D_Ui_Ip(){
    return assert_D_Ui_Ip(zig_ret_D_Ui_Ip());
}

int assert_D_Ui_L(struct D_Ui_L lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 31648) err = 2;
  if (lv.v3 != 6157) err = 3;
  return err;
}
struct D_Ui_L ret_D_Ui_L(){
    struct D_Ui_L lv = { .v1 = 7.0, .v2 = 31648, .v3 = 6157 };
    return lv;
}
int zig_assert_D_Ui_L(struct D_Ui_L);
int send_D_Ui_L(){
    return zig_assert_D_Ui_L(ret_D_Ui_L());
}
struct D_Ui_L zig_ret_D_Ui_L();
int assert_ret_D_Ui_L(){
    return assert_D_Ui_L(zig_ret_D_Ui_L());
}

int assert_D_Ui_S(struct D_Ui_S lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 13194) err = 2;
  if (lv.v3 != 2768) err = 3;
  return err;
}
struct D_Ui_S ret_D_Ui_S(){
    struct D_Ui_S lv = { .v1 = 4.5, .v2 = 13194, .v3 = 2768 };
    return lv;
}
int zig_assert_D_Ui_S(struct D_Ui_S);
int send_D_Ui_S(){
    return zig_assert_D_Ui_S(ret_D_Ui_S());
}
struct D_Ui_S zig_ret_D_Ui_S();
int assert_ret_D_Ui_S(){
    return assert_D_Ui_S(zig_ret_D_Ui_S());
}

int assert_D_Ui_Uc(struct D_Ui_Uc lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 17150) err = 2;
  if (lv.v3 != 60) err = 3;
  return err;
}
struct D_Ui_Uc ret_D_Ui_Uc(){
    struct D_Ui_Uc lv = { .v1 = -2.125, .v2 = 17150, .v3 = 60 };
    return lv;
}
int zig_assert_D_Ui_Uc(struct D_Ui_Uc);
int send_D_Ui_Uc(){
    return zig_assert_D_Ui_Uc(ret_D_Ui_Uc());
}
struct D_Ui_Uc zig_ret_D_Ui_Uc();
int assert_ret_D_Ui_Uc(){
    return assert_D_Ui_Uc(zig_ret_D_Ui_Uc());
}

int assert_D_Ui_Ui(struct D_Ui_Ui lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 25183) err = 2;
  if (lv.v3 != 5118) err = 3;
  return err;
}
struct D_Ui_Ui ret_D_Ui_Ui(){
    struct D_Ui_Ui lv = { .v1 = 0.5, .v2 = 25183, .v3 = 5118 };
    return lv;
}
int zig_assert_D_Ui_Ui(struct D_Ui_Ui);
int send_D_Ui_Ui(){
    return zig_assert_D_Ui_Ui(ret_D_Ui_Ui());
}
struct D_Ui_Ui zig_ret_D_Ui_Ui();
int assert_ret_D_Ui_Ui(){
    return assert_D_Ui_Ui(zig_ret_D_Ui_Ui());
}

int assert_D_Ui_Ul(struct D_Ui_Ul lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 14606) err = 2;
  if (lv.v3 != 16268) err = 3;
  return err;
}
struct D_Ui_Ul ret_D_Ui_Ul(){
    struct D_Ui_Ul lv = { .v1 = -0.25, .v2 = 14606, .v3 = 16268 };
    return lv;
}
int zig_assert_D_Ui_Ul(struct D_Ui_Ul);
int send_D_Ui_Ul(){
    return zig_assert_D_Ui_Ul(ret_D_Ui_Ul());
}
struct D_Ui_Ul zig_ret_D_Ui_Ul();
int assert_ret_D_Ui_Ul(){
    return assert_D_Ui_Ul(zig_ret_D_Ui_Ul());
}

int assert_D_Ui_Us(struct D_Ui_Us lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 5295) err = 2;
  if (lv.v3 != 5718) err = 3;
  return err;
}
struct D_Ui_Us ret_D_Ui_Us(){
    struct D_Ui_Us lv = { .v1 = -0.25, .v2 = 5295, .v3 = 5718 };
    return lv;
}
int zig_assert_D_Ui_Us(struct D_Ui_Us);
int send_D_Ui_Us(){
    return zig_assert_D_Ui_Us(ret_D_Ui_Us());
}
struct D_Ui_Us zig_ret_D_Ui_Us();
int assert_ret_D_Ui_Us(){
    return assert_D_Ui_Us(zig_ret_D_Ui_Us());
}

int assert_D_Ui_Vp(struct D_Ui_Vp lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 31290) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Ui_Vp ret_D_Ui_Vp(){
    struct D_Ui_Vp lv = { .v1 = -0.25, .v2 = 31290, .v3 = 0 };
    return lv;
}
int zig_assert_D_Ui_Vp(struct D_Ui_Vp);
int send_D_Ui_Vp(){
    return zig_assert_D_Ui_Vp(ret_D_Ui_Vp());
}
struct D_Ui_Vp zig_ret_D_Ui_Vp();
int assert_ret_D_Ui_Vp(){
    return assert_D_Ui_Vp(zig_ret_D_Ui_Vp());
}

int assert_D_Ul(struct D_Ul lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 8168) err = 2;
  return err;
}
struct D_Ul ret_D_Ul(){
    struct D_Ul lv = { .v1 = 0.875, .v2 = 8168 };
    return lv;
}
int zig_assert_D_Ul(struct D_Ul);
int send_D_Ul(){
    return zig_assert_D_Ul(ret_D_Ul());
}
struct D_Ul zig_ret_D_Ul();
int assert_ret_D_Ul(){
    return assert_D_Ul(zig_ret_D_Ul());
}

int assert_D_Ul_C(struct D_Ul_C lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 27350) err = 2;
  if (lv.v3 != 87) err = 3;
  return err;
}
struct D_Ul_C ret_D_Ul_C(){
    struct D_Ul_C lv = { .v1 = 0.875, .v2 = 27350, .v3 = 87 };
    return lv;
}
int zig_assert_D_Ul_C(struct D_Ul_C);
int send_D_Ul_C(){
    return zig_assert_D_Ul_C(ret_D_Ul_C());
}
struct D_Ul_C zig_ret_D_Ul_C();
int assert_ret_D_Ul_C(){
    return assert_D_Ul_C(zig_ret_D_Ul_C());
}

int assert_D_Ul_D(struct D_Ul_D lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 587) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct D_Ul_D ret_D_Ul_D(){
    struct D_Ul_D lv = { .v1 = 4.5, .v2 = 587, .v3 = -0.25 };
    return lv;
}
int zig_assert_D_Ul_D(struct D_Ul_D);
int send_D_Ul_D(){
    return zig_assert_D_Ul_D(ret_D_Ul_D());
}
struct D_Ul_D zig_ret_D_Ul_D();
int assert_ret_D_Ul_D(){
    return assert_D_Ul_D(zig_ret_D_Ul_D());
}

int assert_D_Ul_F(struct D_Ul_F lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 28666) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct D_Ul_F ret_D_Ul_F(){
    struct D_Ul_F lv = { .v1 = -2.125, .v2 = 28666, .v3 = -2.125 };
    return lv;
}
int zig_assert_D_Ul_F(struct D_Ul_F);
int send_D_Ul_F(){
    return zig_assert_D_Ul_F(ret_D_Ul_F());
}
struct D_Ul_F zig_ret_D_Ul_F();
int assert_ret_D_Ul_F(){
    return assert_D_Ul_F(zig_ret_D_Ul_F());
}

int assert_D_Ul_I(struct D_Ul_I lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 17316) err = 2;
  if (lv.v3 != 27169) err = 3;
  return err;
}
struct D_Ul_I ret_D_Ul_I(){
    struct D_Ul_I lv = { .v1 = 7.0, .v2 = 17316, .v3 = 27169 };
    return lv;
}
int zig_assert_D_Ul_I(struct D_Ul_I);
int send_D_Ul_I(){
    return zig_assert_D_Ul_I(ret_D_Ul_I());
}
struct D_Ul_I zig_ret_D_Ul_I();
int assert_ret_D_Ul_I(){
    return assert_D_Ul_I(zig_ret_D_Ul_I());
}

int assert_D_Ul_Ip(struct D_Ul_Ip lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 30080) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Ul_Ip ret_D_Ul_Ip(){
    struct D_Ul_Ip lv = { .v1 = 4.5, .v2 = 30080, .v3 = 0 };
    return lv;
}
int zig_assert_D_Ul_Ip(struct D_Ul_Ip);
int send_D_Ul_Ip(){
    return zig_assert_D_Ul_Ip(ret_D_Ul_Ip());
}
struct D_Ul_Ip zig_ret_D_Ul_Ip();
int assert_ret_D_Ul_Ip(){
    return assert_D_Ul_Ip(zig_ret_D_Ul_Ip());
}

int assert_D_Ul_L(struct D_Ul_L lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 2358) err = 2;
  if (lv.v3 != 13997) err = 3;
  return err;
}
struct D_Ul_L ret_D_Ul_L(){
    struct D_Ul_L lv = { .v1 = -2.125, .v2 = 2358, .v3 = 13997 };
    return lv;
}
int zig_assert_D_Ul_L(struct D_Ul_L);
int send_D_Ul_L(){
    return zig_assert_D_Ul_L(ret_D_Ul_L());
}
struct D_Ul_L zig_ret_D_Ul_L();
int assert_ret_D_Ul_L(){
    return assert_D_Ul_L(zig_ret_D_Ul_L());
}

int assert_D_Ul_S(struct D_Ul_S lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 8874) err = 2;
  if (lv.v3 != 15227) err = 3;
  return err;
}
struct D_Ul_S ret_D_Ul_S(){
    struct D_Ul_S lv = { .v1 = 0.875, .v2 = 8874, .v3 = 15227 };
    return lv;
}
int zig_assert_D_Ul_S(struct D_Ul_S);
int send_D_Ul_S(){
    return zig_assert_D_Ul_S(ret_D_Ul_S());
}
struct D_Ul_S zig_ret_D_Ul_S();
int assert_ret_D_Ul_S(){
    return assert_D_Ul_S(zig_ret_D_Ul_S());
}

int assert_D_Ul_Uc(struct D_Ul_Uc lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 28411) err = 2;
  if (lv.v3 != 19) err = 3;
  return err;
}
struct D_Ul_Uc ret_D_Ul_Uc(){
    struct D_Ul_Uc lv = { .v1 = 0.875, .v2 = 28411, .v3 = 19 };
    return lv;
}
int zig_assert_D_Ul_Uc(struct D_Ul_Uc);
int send_D_Ul_Uc(){
    return zig_assert_D_Ul_Uc(ret_D_Ul_Uc());
}
struct D_Ul_Uc zig_ret_D_Ul_Uc();
int assert_ret_D_Ul_Uc(){
    return assert_D_Ul_Uc(zig_ret_D_Ul_Uc());
}

int assert_D_Ul_Ui(struct D_Ul_Ui lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 18969) err = 2;
  if (lv.v3 != 19676) err = 3;
  return err;
}
struct D_Ul_Ui ret_D_Ul_Ui(){
    struct D_Ul_Ui lv = { .v1 = 0.875, .v2 = 18969, .v3 = 19676 };
    return lv;
}
int zig_assert_D_Ul_Ui(struct D_Ul_Ui);
int send_D_Ul_Ui(){
    return zig_assert_D_Ul_Ui(ret_D_Ul_Ui());
}
struct D_Ul_Ui zig_ret_D_Ul_Ui();
int assert_ret_D_Ul_Ui(){
    return assert_D_Ul_Ui(zig_ret_D_Ul_Ui());
}

int assert_D_Ul_Ul(struct D_Ul_Ul lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 30271) err = 2;
  if (lv.v3 != 30455) err = 3;
  return err;
}
struct D_Ul_Ul ret_D_Ul_Ul(){
    struct D_Ul_Ul lv = { .v1 = 0.875, .v2 = 30271, .v3 = 30455 };
    return lv;
}
int zig_assert_D_Ul_Ul(struct D_Ul_Ul);
int send_D_Ul_Ul(){
    return zig_assert_D_Ul_Ul(ret_D_Ul_Ul());
}
struct D_Ul_Ul zig_ret_D_Ul_Ul();
int assert_ret_D_Ul_Ul(){
    return assert_D_Ul_Ul(zig_ret_D_Ul_Ul());
}

int assert_D_Ul_Us(struct D_Ul_Us lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 27872) err = 2;
  if (lv.v3 != 13199) err = 3;
  return err;
}
struct D_Ul_Us ret_D_Ul_Us(){
    struct D_Ul_Us lv = { .v1 = 4.5, .v2 = 27872, .v3 = 13199 };
    return lv;
}
int zig_assert_D_Ul_Us(struct D_Ul_Us);
int send_D_Ul_Us(){
    return zig_assert_D_Ul_Us(ret_D_Ul_Us());
}
struct D_Ul_Us zig_ret_D_Ul_Us();
int assert_ret_D_Ul_Us(){
    return assert_D_Ul_Us(zig_ret_D_Ul_Us());
}

int assert_D_Ul_Vp(struct D_Ul_Vp lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 12549) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Ul_Vp ret_D_Ul_Vp(){
    struct D_Ul_Vp lv = { .v1 = 1.0, .v2 = 12549, .v3 = 0 };
    return lv;
}
int zig_assert_D_Ul_Vp(struct D_Ul_Vp);
int send_D_Ul_Vp(){
    return zig_assert_D_Ul_Vp(ret_D_Ul_Vp());
}
struct D_Ul_Vp zig_ret_D_Ul_Vp();
int assert_ret_D_Ul_Vp(){
    return assert_D_Ul_Vp(zig_ret_D_Ul_Vp());
}

int assert_D_Us(struct D_Us lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 12975) err = 2;
  return err;
}
struct D_Us ret_D_Us(){
    struct D_Us lv = { .v1 = 0.875, .v2 = 12975 };
    return lv;
}
int zig_assert_D_Us(struct D_Us);
int send_D_Us(){
    return zig_assert_D_Us(ret_D_Us());
}
struct D_Us zig_ret_D_Us();
int assert_ret_D_Us(){
    return assert_D_Us(zig_ret_D_Us());
}

int assert_D_Us_C(struct D_Us_C lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 17159) err = 2;
  if (lv.v3 != 57) err = 3;
  return err;
}
struct D_Us_C ret_D_Us_C(){
    struct D_Us_C lv = { .v1 = 0.875, .v2 = 17159, .v3 = 57 };
    return lv;
}
int zig_assert_D_Us_C(struct D_Us_C);
int send_D_Us_C(){
    return zig_assert_D_Us_C(ret_D_Us_C());
}
struct D_Us_C zig_ret_D_Us_C();
int assert_ret_D_Us_C(){
    return assert_D_Us_C(zig_ret_D_Us_C());
}

int assert_D_Us_D(struct D_Us_D lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 11426) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct D_Us_D ret_D_Us_D(){
    struct D_Us_D lv = { .v1 = 4.5, .v2 = 11426, .v3 = 0.5 };
    return lv;
}
int zig_assert_D_Us_D(struct D_Us_D);
int send_D_Us_D(){
    return zig_assert_D_Us_D(ret_D_Us_D());
}
struct D_Us_D zig_ret_D_Us_D();
int assert_ret_D_Us_D(){
    return assert_D_Us_D(zig_ret_D_Us_D());
}

int assert_D_Us_F(struct D_Us_F lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 4636) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct D_Us_F ret_D_Us_F(){
    struct D_Us_F lv = { .v1 = 1.0, .v2 = 4636, .v3 = 0.875 };
    return lv;
}
int zig_assert_D_Us_F(struct D_Us_F);
int send_D_Us_F(){
    return zig_assert_D_Us_F(ret_D_Us_F());
}
struct D_Us_F zig_ret_D_Us_F();
int assert_ret_D_Us_F(){
    return assert_D_Us_F(zig_ret_D_Us_F());
}

int assert_D_Us_I(struct D_Us_I lv){
    int err = 0;
  if (lv.v1 != -0.25) err = 1;
  if (lv.v2 != 24377) err = 2;
  if (lv.v3 != 30464) err = 3;
  return err;
}
struct D_Us_I ret_D_Us_I(){
    struct D_Us_I lv = { .v1 = -0.25, .v2 = 24377, .v3 = 30464 };
    return lv;
}
int zig_assert_D_Us_I(struct D_Us_I);
int send_D_Us_I(){
    return zig_assert_D_Us_I(ret_D_Us_I());
}
struct D_Us_I zig_ret_D_Us_I();
int assert_ret_D_Us_I(){
    return assert_D_Us_I(zig_ret_D_Us_I());
}

int assert_D_Us_Ip(struct D_Us_Ip lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 8479) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Us_Ip ret_D_Us_Ip(){
    struct D_Us_Ip lv = { .v1 = 7.0, .v2 = 8479, .v3 = 0 };
    return lv;
}
int zig_assert_D_Us_Ip(struct D_Us_Ip);
int send_D_Us_Ip(){
    return zig_assert_D_Us_Ip(ret_D_Us_Ip());
}
struct D_Us_Ip zig_ret_D_Us_Ip();
int assert_ret_D_Us_Ip(){
    return assert_D_Us_Ip(zig_ret_D_Us_Ip());
}

int assert_D_Us_L(struct D_Us_L lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 15583) err = 2;
  if (lv.v3 != 10458) err = 3;
  return err;
}
struct D_Us_L ret_D_Us_L(){
    struct D_Us_L lv = { .v1 = -2.125, .v2 = 15583, .v3 = 10458 };
    return lv;
}
int zig_assert_D_Us_L(struct D_Us_L);
int send_D_Us_L(){
    return zig_assert_D_Us_L(ret_D_Us_L());
}
struct D_Us_L zig_ret_D_Us_L();
int assert_ret_D_Us_L(){
    return assert_D_Us_L(zig_ret_D_Us_L());
}

int assert_D_Us_S(struct D_Us_S lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 18238) err = 2;
  if (lv.v3 != 13155) err = 3;
  return err;
}
struct D_Us_S ret_D_Us_S(){
    struct D_Us_S lv = { .v1 = 7.0, .v2 = 18238, .v3 = 13155 };
    return lv;
}
int zig_assert_D_Us_S(struct D_Us_S);
int send_D_Us_S(){
    return zig_assert_D_Us_S(ret_D_Us_S());
}
struct D_Us_S zig_ret_D_Us_S();
int assert_ret_D_Us_S(){
    return assert_D_Us_S(zig_ret_D_Us_S());
}

int assert_D_Us_Uc(struct D_Us_Uc lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 21067) err = 2;
  if (lv.v3 != 10) err = 3;
  return err;
}
struct D_Us_Uc ret_D_Us_Uc(){
    struct D_Us_Uc lv = { .v1 = 7.0, .v2 = 21067, .v3 = 10 };
    return lv;
}
int zig_assert_D_Us_Uc(struct D_Us_Uc);
int send_D_Us_Uc(){
    return zig_assert_D_Us_Uc(ret_D_Us_Uc());
}
struct D_Us_Uc zig_ret_D_Us_Uc();
int assert_ret_D_Us_Uc(){
    return assert_D_Us_Uc(zig_ret_D_Us_Uc());
}

int assert_D_Us_Ui(struct D_Us_Ui lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 28382) err = 2;
  if (lv.v3 != 27699) err = 3;
  return err;
}
struct D_Us_Ui ret_D_Us_Ui(){
    struct D_Us_Ui lv = { .v1 = 7.0, .v2 = 28382, .v3 = 27699 };
    return lv;
}
int zig_assert_D_Us_Ui(struct D_Us_Ui);
int send_D_Us_Ui(){
    return zig_assert_D_Us_Ui(ret_D_Us_Ui());
}
struct D_Us_Ui zig_ret_D_Us_Ui();
int assert_ret_D_Us_Ui(){
    return assert_D_Us_Ui(zig_ret_D_Us_Ui());
}

int assert_D_Us_Ul(struct D_Us_Ul lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 14224) err = 2;
  if (lv.v3 != 23309) err = 3;
  return err;
}
struct D_Us_Ul ret_D_Us_Ul(){
    struct D_Us_Ul lv = { .v1 = 4.5, .v2 = 14224, .v3 = 23309 };
    return lv;
}
int zig_assert_D_Us_Ul(struct D_Us_Ul);
int send_D_Us_Ul(){
    return zig_assert_D_Us_Ul(ret_D_Us_Ul());
}
struct D_Us_Ul zig_ret_D_Us_Ul();
int assert_ret_D_Us_Ul(){
    return assert_D_Us_Ul(zig_ret_D_Us_Ul());
}

int assert_D_Us_Us(struct D_Us_Us lv){
    int err = 0;
  if (lv.v1 != 0.5) err = 1;
  if (lv.v2 != 21806) err = 2;
  if (lv.v3 != 21300) err = 3;
  return err;
}
struct D_Us_Us ret_D_Us_Us(){
    struct D_Us_Us lv = { .v1 = 0.5, .v2 = 21806, .v3 = 21300 };
    return lv;
}
int zig_assert_D_Us_Us(struct D_Us_Us);
int send_D_Us_Us(){
    return zig_assert_D_Us_Us(ret_D_Us_Us());
}
struct D_Us_Us zig_ret_D_Us_Us();
int assert_ret_D_Us_Us(){
    return assert_D_Us_Us(zig_ret_D_Us_Us());
}

int assert_D_Us_Vp(struct D_Us_Vp lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 5932) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Us_Vp ret_D_Us_Vp(){
    struct D_Us_Vp lv = { .v1 = 1.0, .v2 = 5932, .v3 = 0 };
    return lv;
}
int zig_assert_D_Us_Vp(struct D_Us_Vp);
int send_D_Us_Vp(){
    return zig_assert_D_Us_Vp(ret_D_Us_Vp());
}
struct D_Us_Vp zig_ret_D_Us_Vp();
int assert_ret_D_Us_Vp(){
    return assert_D_Us_Vp(zig_ret_D_Us_Vp());
}

int assert_D_Vp(struct D_Vp lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct D_Vp ret_D_Vp(){
    struct D_Vp lv = { .v1 = 0.875, .v2 = 0 };
    return lv;
}
int zig_assert_D_Vp(struct D_Vp);
int send_D_Vp(){
    return zig_assert_D_Vp(ret_D_Vp());
}
struct D_Vp zig_ret_D_Vp();
int assert_ret_D_Vp(){
    return assert_D_Vp(zig_ret_D_Vp());
}

int assert_D_Vp_C(struct D_Vp_C lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 20) err = 3;
  return err;
}
struct D_Vp_C ret_D_Vp_C(){
    struct D_Vp_C lv = { .v1 = -2.125, .v2 = 0, .v3 = 20 };
    return lv;
}
int zig_assert_D_Vp_C(struct D_Vp_C);
int send_D_Vp_C(){
    return zig_assert_D_Vp_C(ret_D_Vp_C());
}
struct D_Vp_C zig_ret_D_Vp_C();
int assert_ret_D_Vp_C(){
    return assert_D_Vp_C(zig_ret_D_Vp_C());
}

int assert_D_Vp_D(struct D_Vp_D lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct D_Vp_D ret_D_Vp_D(){
    struct D_Vp_D lv = { .v1 = 7.0, .v2 = 0, .v3 = 4.5 };
    return lv;
}
int zig_assert_D_Vp_D(struct D_Vp_D);
int send_D_Vp_D(){
    return zig_assert_D_Vp_D(ret_D_Vp_D());
}
struct D_Vp_D zig_ret_D_Vp_D();
int assert_ret_D_Vp_D(){
    return assert_D_Vp_D(zig_ret_D_Vp_D());
}

int assert_D_Vp_F(struct D_Vp_F lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct D_Vp_F ret_D_Vp_F(){
    struct D_Vp_F lv = { .v1 = 4.5, .v2 = 0, .v3 = 4.5 };
    return lv;
}
int zig_assert_D_Vp_F(struct D_Vp_F);
int send_D_Vp_F(){
    return zig_assert_D_Vp_F(ret_D_Vp_F());
}
struct D_Vp_F zig_ret_D_Vp_F();
int assert_ret_D_Vp_F(){
    return assert_D_Vp_F(zig_ret_D_Vp_F());
}

int assert_D_Vp_I(struct D_Vp_I lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 16435) err = 3;
  return err;
}
struct D_Vp_I ret_D_Vp_I(){
    struct D_Vp_I lv = { .v1 = 4.5, .v2 = 0, .v3 = 16435 };
    return lv;
}
int zig_assert_D_Vp_I(struct D_Vp_I);
int send_D_Vp_I(){
    return zig_assert_D_Vp_I(ret_D_Vp_I());
}
struct D_Vp_I zig_ret_D_Vp_I();
int assert_ret_D_Vp_I(){
    return assert_D_Vp_I(zig_ret_D_Vp_I());
}

int assert_D_Vp_Ip(struct D_Vp_Ip lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Vp_Ip ret_D_Vp_Ip(){
    struct D_Vp_Ip lv = { .v1 = 7.0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_D_Vp_Ip(struct D_Vp_Ip);
int send_D_Vp_Ip(){
    return zig_assert_D_Vp_Ip(ret_D_Vp_Ip());
}
struct D_Vp_Ip zig_ret_D_Vp_Ip();
int assert_ret_D_Vp_Ip(){
    return assert_D_Vp_Ip(zig_ret_D_Vp_Ip());
}

int assert_D_Vp_L(struct D_Vp_L lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 32159) err = 3;
  return err;
}
struct D_Vp_L ret_D_Vp_L(){
    struct D_Vp_L lv = { .v1 = 7.0, .v2 = 0, .v3 = 32159 };
    return lv;
}
int zig_assert_D_Vp_L(struct D_Vp_L);
int send_D_Vp_L(){
    return zig_assert_D_Vp_L(ret_D_Vp_L());
}
struct D_Vp_L zig_ret_D_Vp_L();
int assert_ret_D_Vp_L(){
    return assert_D_Vp_L(zig_ret_D_Vp_L());
}

int assert_D_Vp_S(struct D_Vp_S lv){
    int err = 0;
  if (lv.v1 != 7.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4705) err = 3;
  return err;
}
struct D_Vp_S ret_D_Vp_S(){
    struct D_Vp_S lv = { .v1 = 7.0, .v2 = 0, .v3 = 4705 };
    return lv;
}
int zig_assert_D_Vp_S(struct D_Vp_S);
int send_D_Vp_S(){
    return zig_assert_D_Vp_S(ret_D_Vp_S());
}
struct D_Vp_S zig_ret_D_Vp_S();
int assert_ret_D_Vp_S(){
    return assert_D_Vp_S(zig_ret_D_Vp_S());
}

int assert_D_Vp_Uc(struct D_Vp_Uc lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 66) err = 3;
  return err;
}
struct D_Vp_Uc ret_D_Vp_Uc(){
    struct D_Vp_Uc lv = { .v1 = -2.125, .v2 = 0, .v3 = 66 };
    return lv;
}
int zig_assert_D_Vp_Uc(struct D_Vp_Uc);
int send_D_Vp_Uc(){
    return zig_assert_D_Vp_Uc(ret_D_Vp_Uc());
}
struct D_Vp_Uc zig_ret_D_Vp_Uc();
int assert_ret_D_Vp_Uc(){
    return assert_D_Vp_Uc(zig_ret_D_Vp_Uc());
}

int assert_D_Vp_Ui(struct D_Vp_Ui lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 21260) err = 3;
  return err;
}
struct D_Vp_Ui ret_D_Vp_Ui(){
    struct D_Vp_Ui lv = { .v1 = 1.0, .v2 = 0, .v3 = 21260 };
    return lv;
}
int zig_assert_D_Vp_Ui(struct D_Vp_Ui);
int send_D_Vp_Ui(){
    return zig_assert_D_Vp_Ui(ret_D_Vp_Ui());
}
struct D_Vp_Ui zig_ret_D_Vp_Ui();
int assert_ret_D_Vp_Ui(){
    return assert_D_Vp_Ui(zig_ret_D_Vp_Ui());
}

int assert_D_Vp_Ul(struct D_Vp_Ul lv){
    int err = 0;
  if (lv.v1 != -2.125) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 14614) err = 3;
  return err;
}
struct D_Vp_Ul ret_D_Vp_Ul(){
    struct D_Vp_Ul lv = { .v1 = -2.125, .v2 = 0, .v3 = 14614 };
    return lv;
}
int zig_assert_D_Vp_Ul(struct D_Vp_Ul);
int send_D_Vp_Ul(){
    return zig_assert_D_Vp_Ul(ret_D_Vp_Ul());
}
struct D_Vp_Ul zig_ret_D_Vp_Ul();
int assert_ret_D_Vp_Ul(){
    return assert_D_Vp_Ul(zig_ret_D_Vp_Ul());
}

int assert_D_Vp_Us(struct D_Vp_Us lv){
    int err = 0;
  if (lv.v1 != 1.0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 19406) err = 3;
  return err;
}
struct D_Vp_Us ret_D_Vp_Us(){
    struct D_Vp_Us lv = { .v1 = 1.0, .v2 = 0, .v3 = 19406 };
    return lv;
}
int zig_assert_D_Vp_Us(struct D_Vp_Us);
int send_D_Vp_Us(){
    return zig_assert_D_Vp_Us(ret_D_Vp_Us());
}
struct D_Vp_Us zig_ret_D_Vp_Us();
int assert_ret_D_Vp_Us(){
    return assert_D_Vp_Us(zig_ret_D_Vp_Us());
}

int assert_D_Vp_Vp(struct D_Vp_Vp lv){
    int err = 0;
  if (lv.v1 != 0.875) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct D_Vp_Vp ret_D_Vp_Vp(){
    struct D_Vp_Vp lv = { .v1 = 0.875, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_D_Vp_Vp(struct D_Vp_Vp);
int send_D_Vp_Vp(){
    return zig_assert_D_Vp_Vp(ret_D_Vp_Vp());
}
struct D_Vp_Vp zig_ret_D_Vp_Vp();
int assert_ret_D_Vp_Vp(){
    return assert_D_Vp_Vp(zig_ret_D_Vp_Vp());
}

int assert_F(struct F lv){
    int err = 0;
  if (lv.v1 != 4.5) err = 1;
  return err;
}
struct F ret_F(){
    struct F lv = { .v1 = 4.5 };
    return lv;
}
int zig_assert_F(struct F);
int send_F(){
    return zig_assert_F(ret_F());
}
struct F zig_ret_F();
int assert_ret_F(){
    return assert_F(zig_ret_F());
}

