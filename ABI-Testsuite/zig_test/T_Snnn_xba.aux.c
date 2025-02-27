#include "T_Snnn_xba.h"

int assert_Uc_D_C(struct Uc_D_C lv){
    int err = 0;
  if (lv.v1 != 3) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 89) err = 3;
  return err;
}
struct Uc_D_C ret_Uc_D_C(){
    struct Uc_D_C lv = { .v1 = 3, .v2 = -0.25, .v3 = 89 };
    return lv;
}
int zig_assert_Uc_D_C(struct Uc_D_C);
int send_Uc_D_C(){
    return zig_assert_Uc_D_C(ret_Uc_D_C());
}
struct Uc_D_C zig_ret_Uc_D_C();
int assert_ret_Uc_D_C(){
    return assert_Uc_D_C(zig_ret_Uc_D_C());
}

int assert_Uc_D_D(struct Uc_D_D lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Uc_D_D ret_Uc_D_D(){
    struct Uc_D_D lv = { .v1 = 9, .v2 = 7.0, .v3 = 1.0 };
    return lv;
}
int zig_assert_Uc_D_D(struct Uc_D_D);
int send_Uc_D_D(){
    return zig_assert_Uc_D_D(ret_Uc_D_D());
}
struct Uc_D_D zig_ret_Uc_D_D();
int assert_ret_Uc_D_D(){
    return assert_Uc_D_D(zig_ret_Uc_D_D());
}

int assert_Uc_D_F(struct Uc_D_F lv){
    int err = 0;
  if (lv.v1 != 95) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Uc_D_F ret_Uc_D_F(){
    struct Uc_D_F lv = { .v1 = 95, .v2 = 4.5, .v3 = 0.5 };
    return lv;
}
int zig_assert_Uc_D_F(struct Uc_D_F);
int send_Uc_D_F(){
    return zig_assert_Uc_D_F(ret_Uc_D_F());
}
struct Uc_D_F zig_ret_Uc_D_F();
int assert_ret_Uc_D_F(){
    return assert_Uc_D_F(zig_ret_Uc_D_F());
}

int assert_Uc_D_I(struct Uc_D_I lv){
    int err = 0;
  if (lv.v1 != 26) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 22319) err = 3;
  return err;
}
struct Uc_D_I ret_Uc_D_I(){
    struct Uc_D_I lv = { .v1 = 26, .v2 = -2.125, .v3 = 22319 };
    return lv;
}
int zig_assert_Uc_D_I(struct Uc_D_I);
int send_Uc_D_I(){
    return zig_assert_Uc_D_I(ret_Uc_D_I());
}
struct Uc_D_I zig_ret_Uc_D_I();
int assert_ret_Uc_D_I(){
    return assert_Uc_D_I(zig_ret_Uc_D_I());
}

int assert_Uc_D_Ip(struct Uc_D_Ip lv){
    int err = 0;
  if (lv.v1 != 101) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_D_Ip ret_Uc_D_Ip(){
    struct Uc_D_Ip lv = { .v1 = 101, .v2 = 1.0, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_D_Ip(struct Uc_D_Ip);
int send_Uc_D_Ip(){
    return zig_assert_Uc_D_Ip(ret_Uc_D_Ip());
}
struct Uc_D_Ip zig_ret_Uc_D_Ip();
int assert_ret_Uc_D_Ip(){
    return assert_Uc_D_Ip(zig_ret_Uc_D_Ip());
}

int assert_Uc_D_L(struct Uc_D_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 4136) err = 3;
  return err;
}
struct Uc_D_L ret_Uc_D_L(){
    struct Uc_D_L lv = { .v1 = 0, .v2 = -2.125, .v3 = 4136 };
    return lv;
}
int zig_assert_Uc_D_L(struct Uc_D_L);
int send_Uc_D_L(){
    return zig_assert_Uc_D_L(ret_Uc_D_L());
}
struct Uc_D_L zig_ret_Uc_D_L();
int assert_ret_Uc_D_L(){
    return assert_Uc_D_L(zig_ret_Uc_D_L());
}

int assert_Uc_D_S(struct Uc_D_S lv){
    int err = 0;
  if (lv.v1 != 1) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 29141) err = 3;
  return err;
}
struct Uc_D_S ret_Uc_D_S(){
    struct Uc_D_S lv = { .v1 = 1, .v2 = 0.875, .v3 = 29141 };
    return lv;
}
int zig_assert_Uc_D_S(struct Uc_D_S);
int send_Uc_D_S(){
    return zig_assert_Uc_D_S(ret_Uc_D_S());
}
struct Uc_D_S zig_ret_Uc_D_S();
int assert_ret_Uc_D_S(){
    return assert_Uc_D_S(zig_ret_Uc_D_S());
}

int assert_Uc_D_Uc(struct Uc_D_Uc lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 63) err = 3;
  return err;
}
struct Uc_D_Uc ret_Uc_D_Uc(){
    struct Uc_D_Uc lv = { .v1 = 9, .v2 = 1.0, .v3 = 63 };
    return lv;
}
int zig_assert_Uc_D_Uc(struct Uc_D_Uc);
int send_Uc_D_Uc(){
    return zig_assert_Uc_D_Uc(ret_Uc_D_Uc());
}
struct Uc_D_Uc zig_ret_Uc_D_Uc();
int assert_ret_Uc_D_Uc(){
    return assert_Uc_D_Uc(zig_ret_Uc_D_Uc());
}

int assert_Uc_D_Ui(struct Uc_D_Ui lv){
    int err = 0;
  if (lv.v1 != 10) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 27979) err = 3;
  return err;
}
struct Uc_D_Ui ret_Uc_D_Ui(){
    struct Uc_D_Ui lv = { .v1 = 10, .v2 = 1.0, .v3 = 27979 };
    return lv;
}
int zig_assert_Uc_D_Ui(struct Uc_D_Ui);
int send_Uc_D_Ui(){
    return zig_assert_Uc_D_Ui(ret_Uc_D_Ui());
}
struct Uc_D_Ui zig_ret_Uc_D_Ui();
int assert_ret_Uc_D_Ui(){
    return assert_Uc_D_Ui(zig_ret_Uc_D_Ui());
}

int assert_Uc_D_Ul(struct Uc_D_Ul lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 7107) err = 3;
  return err;
}
struct Uc_D_Ul ret_Uc_D_Ul(){
    struct Uc_D_Ul lv = { .v1 = 9, .v2 = 4.5, .v3 = 7107 };
    return lv;
}
int zig_assert_Uc_D_Ul(struct Uc_D_Ul);
int send_Uc_D_Ul(){
    return zig_assert_Uc_D_Ul(ret_Uc_D_Ul());
}
struct Uc_D_Ul zig_ret_Uc_D_Ul();
int assert_ret_Uc_D_Ul(){
    return assert_Uc_D_Ul(zig_ret_Uc_D_Ul());
}

int assert_Uc_D_Us(struct Uc_D_Us lv){
    int err = 0;
  if (lv.v1 != 61) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 24060) err = 3;
  return err;
}
struct Uc_D_Us ret_Uc_D_Us(){
    struct Uc_D_Us lv = { .v1 = 61, .v2 = 7.0, .v3 = 24060 };
    return lv;
}
int zig_assert_Uc_D_Us(struct Uc_D_Us);
int send_Uc_D_Us(){
    return zig_assert_Uc_D_Us(ret_Uc_D_Us());
}
struct Uc_D_Us zig_ret_Uc_D_Us();
int assert_ret_Uc_D_Us(){
    return assert_Uc_D_Us(zig_ret_Uc_D_Us());
}

int assert_Uc_D_Vp(struct Uc_D_Vp lv){
    int err = 0;
  if (lv.v1 != 28) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_D_Vp ret_Uc_D_Vp(){
    struct Uc_D_Vp lv = { .v1 = 28, .v2 = -0.25, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_D_Vp(struct Uc_D_Vp);
int send_Uc_D_Vp(){
    return zig_assert_Uc_D_Vp(ret_Uc_D_Vp());
}
struct Uc_D_Vp zig_ret_Uc_D_Vp();
int assert_ret_Uc_D_Vp(){
    return assert_Uc_D_Vp(zig_ret_Uc_D_Vp());
}

int assert_Uc_F(struct Uc_F lv){
    int err = 0;
  if (lv.v1 != 95) err = 1;
  if (lv.v2 != 0.875) err = 2;
  return err;
}
struct Uc_F ret_Uc_F(){
    struct Uc_F lv = { .v1 = 95, .v2 = 0.875 };
    return lv;
}
int zig_assert_Uc_F(struct Uc_F);
int send_Uc_F(){
    return zig_assert_Uc_F(ret_Uc_F());
}
struct Uc_F zig_ret_Uc_F();
int assert_ret_Uc_F(){
    return assert_Uc_F(zig_ret_Uc_F());
}

int assert_Uc_F_C(struct Uc_F_C lv){
    int err = 0;
  if (lv.v1 != 97) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 83) err = 3;
  return err;
}
struct Uc_F_C ret_Uc_F_C(){
    struct Uc_F_C lv = { .v1 = 97, .v2 = 0.5, .v3 = 83 };
    return lv;
}
int zig_assert_Uc_F_C(struct Uc_F_C);
int send_Uc_F_C(){
    return zig_assert_Uc_F_C(ret_Uc_F_C());
}
struct Uc_F_C zig_ret_Uc_F_C();
int assert_ret_Uc_F_C(){
    return assert_Uc_F_C(zig_ret_Uc_F_C());
}

int assert_Uc_F_D(struct Uc_F_D lv){
    int err = 0;
  if (lv.v1 != 82) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Uc_F_D ret_Uc_F_D(){
    struct Uc_F_D lv = { .v1 = 82, .v2 = 0.5, .v3 = 7.0 };
    return lv;
}
int zig_assert_Uc_F_D(struct Uc_F_D);
int send_Uc_F_D(){
    return zig_assert_Uc_F_D(ret_Uc_F_D());
}
struct Uc_F_D zig_ret_Uc_F_D();
int assert_ret_Uc_F_D(){
    return assert_Uc_F_D(zig_ret_Uc_F_D());
}

int assert_Uc_F_F(struct Uc_F_F lv){
    int err = 0;
  if (lv.v1 != 41) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Uc_F_F ret_Uc_F_F(){
    struct Uc_F_F lv = { .v1 = 41, .v2 = 0.5, .v3 = -2.125 };
    return lv;
}
int zig_assert_Uc_F_F(struct Uc_F_F);
int send_Uc_F_F(){
    return zig_assert_Uc_F_F(ret_Uc_F_F());
}
struct Uc_F_F zig_ret_Uc_F_F();
int assert_ret_Uc_F_F(){
    return assert_Uc_F_F(zig_ret_Uc_F_F());
}

int assert_Uc_F_I(struct Uc_F_I lv){
    int err = 0;
  if (lv.v1 != 91) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 10292) err = 3;
  return err;
}
struct Uc_F_I ret_Uc_F_I(){
    struct Uc_F_I lv = { .v1 = 91, .v2 = 1.0, .v3 = 10292 };
    return lv;
}
int zig_assert_Uc_F_I(struct Uc_F_I);
int send_Uc_F_I(){
    return zig_assert_Uc_F_I(ret_Uc_F_I());
}
struct Uc_F_I zig_ret_Uc_F_I();
int assert_ret_Uc_F_I(){
    return assert_Uc_F_I(zig_ret_Uc_F_I());
}

int assert_Uc_F_Ip(struct Uc_F_Ip lv){
    int err = 0;
  if (lv.v1 != 3) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_F_Ip ret_Uc_F_Ip(){
    struct Uc_F_Ip lv = { .v1 = 3, .v2 = -0.25, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_F_Ip(struct Uc_F_Ip);
int send_Uc_F_Ip(){
    return zig_assert_Uc_F_Ip(ret_Uc_F_Ip());
}
struct Uc_F_Ip zig_ret_Uc_F_Ip();
int assert_ret_Uc_F_Ip(){
    return assert_Uc_F_Ip(zig_ret_Uc_F_Ip());
}

int assert_Uc_F_L(struct Uc_F_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 30255) err = 3;
  return err;
}
struct Uc_F_L ret_Uc_F_L(){
    struct Uc_F_L lv = { .v1 = 0, .v2 = 0.5, .v3 = 30255 };
    return lv;
}
int zig_assert_Uc_F_L(struct Uc_F_L);
int send_Uc_F_L(){
    return zig_assert_Uc_F_L(ret_Uc_F_L());
}
struct Uc_F_L zig_ret_Uc_F_L();
int assert_ret_Uc_F_L(){
    return assert_Uc_F_L(zig_ret_Uc_F_L());
}

int assert_Uc_F_S(struct Uc_F_S lv){
    int err = 0;
  if (lv.v1 != 103) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 15970) err = 3;
  return err;
}
struct Uc_F_S ret_Uc_F_S(){
    struct Uc_F_S lv = { .v1 = 103, .v2 = 1.0, .v3 = 15970 };
    return lv;
}
int zig_assert_Uc_F_S(struct Uc_F_S);
int send_Uc_F_S(){
    return zig_assert_Uc_F_S(ret_Uc_F_S());
}
struct Uc_F_S zig_ret_Uc_F_S();
int assert_ret_Uc_F_S(){
    return assert_Uc_F_S(zig_ret_Uc_F_S());
}

int assert_Uc_F_Uc(struct Uc_F_Uc lv){
    int err = 0;
  if (lv.v1 != 53) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 94) err = 3;
  return err;
}
struct Uc_F_Uc ret_Uc_F_Uc(){
    struct Uc_F_Uc lv = { .v1 = 53, .v2 = 7.0, .v3 = 94 };
    return lv;
}
int zig_assert_Uc_F_Uc(struct Uc_F_Uc);
int send_Uc_F_Uc(){
    return zig_assert_Uc_F_Uc(ret_Uc_F_Uc());
}
struct Uc_F_Uc zig_ret_Uc_F_Uc();
int assert_ret_Uc_F_Uc(){
    return assert_Uc_F_Uc(zig_ret_Uc_F_Uc());
}

int assert_Uc_F_Ui(struct Uc_F_Ui lv){
    int err = 0;
  if (lv.v1 != 88) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 1854) err = 3;
  return err;
}
struct Uc_F_Ui ret_Uc_F_Ui(){
    struct Uc_F_Ui lv = { .v1 = 88, .v2 = 0.5, .v3 = 1854 };
    return lv;
}
int zig_assert_Uc_F_Ui(struct Uc_F_Ui);
int send_Uc_F_Ui(){
    return zig_assert_Uc_F_Ui(ret_Uc_F_Ui());
}
struct Uc_F_Ui zig_ret_Uc_F_Ui();
int assert_ret_Uc_F_Ui(){
    return assert_Uc_F_Ui(zig_ret_Uc_F_Ui());
}

int assert_Uc_F_Ul(struct Uc_F_Ul lv){
    int err = 0;
  if (lv.v1 != 96) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 10992) err = 3;
  return err;
}
struct Uc_F_Ul ret_Uc_F_Ul(){
    struct Uc_F_Ul lv = { .v1 = 96, .v2 = -2.125, .v3 = 10992 };
    return lv;
}
int zig_assert_Uc_F_Ul(struct Uc_F_Ul);
int send_Uc_F_Ul(){
    return zig_assert_Uc_F_Ul(ret_Uc_F_Ul());
}
struct Uc_F_Ul zig_ret_Uc_F_Ul();
int assert_ret_Uc_F_Ul(){
    return assert_Uc_F_Ul(zig_ret_Uc_F_Ul());
}

int assert_Uc_F_Us(struct Uc_F_Us lv){
    int err = 0;
  if (lv.v1 != 59) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 6216) err = 3;
  return err;
}
struct Uc_F_Us ret_Uc_F_Us(){
    struct Uc_F_Us lv = { .v1 = 59, .v2 = 0.875, .v3 = 6216 };
    return lv;
}
int zig_assert_Uc_F_Us(struct Uc_F_Us);
int send_Uc_F_Us(){
    return zig_assert_Uc_F_Us(ret_Uc_F_Us());
}
struct Uc_F_Us zig_ret_Uc_F_Us();
int assert_ret_Uc_F_Us(){
    return assert_Uc_F_Us(zig_ret_Uc_F_Us());
}

int assert_Uc_F_Vp(struct Uc_F_Vp lv){
    int err = 0;
  if (lv.v1 != 5) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_F_Vp ret_Uc_F_Vp(){
    struct Uc_F_Vp lv = { .v1 = 5, .v2 = 4.5, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_F_Vp(struct Uc_F_Vp);
int send_Uc_F_Vp(){
    return zig_assert_Uc_F_Vp(ret_Uc_F_Vp());
}
struct Uc_F_Vp zig_ret_Uc_F_Vp();
int assert_ret_Uc_F_Vp(){
    return assert_Uc_F_Vp(zig_ret_Uc_F_Vp());
}

int assert_Uc_I(struct Uc_I lv){
    int err = 0;
  if (lv.v1 != 114) err = 1;
  if (lv.v2 != 16216) err = 2;
  return err;
}
struct Uc_I ret_Uc_I(){
    struct Uc_I lv = { .v1 = 114, .v2 = 16216 };
    return lv;
}
int zig_assert_Uc_I(struct Uc_I);
int send_Uc_I(){
    return zig_assert_Uc_I(ret_Uc_I());
}
struct Uc_I zig_ret_Uc_I();
int assert_ret_Uc_I(){
    return assert_Uc_I(zig_ret_Uc_I());
}

int assert_Uc_I_C(struct Uc_I_C lv){
    int err = 0;
  if (lv.v1 != 124) err = 1;
  if (lv.v2 != 25853) err = 2;
  if (lv.v3 != 104) err = 3;
  return err;
}
struct Uc_I_C ret_Uc_I_C(){
    struct Uc_I_C lv = { .v1 = 124, .v2 = 25853, .v3 = 104 };
    return lv;
}
int zig_assert_Uc_I_C(struct Uc_I_C);
int send_Uc_I_C(){
    return zig_assert_Uc_I_C(ret_Uc_I_C());
}
struct Uc_I_C zig_ret_Uc_I_C();
int assert_ret_Uc_I_C(){
    return assert_Uc_I_C(zig_ret_Uc_I_C());
}

int assert_Uc_I_D(struct Uc_I_D lv){
    int err = 0;
  if (lv.v1 != 108) err = 1;
  if (lv.v2 != 16942) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Uc_I_D ret_Uc_I_D(){
    struct Uc_I_D lv = { .v1 = 108, .v2 = 16942, .v3 = 0.875 };
    return lv;
}
int zig_assert_Uc_I_D(struct Uc_I_D);
int send_Uc_I_D(){
    return zig_assert_Uc_I_D(ret_Uc_I_D());
}
struct Uc_I_D zig_ret_Uc_I_D();
int assert_ret_Uc_I_D(){
    return assert_Uc_I_D(zig_ret_Uc_I_D());
}

int assert_Uc_I_F(struct Uc_I_F lv){
    int err = 0;
  if (lv.v1 != 29) err = 1;
  if (lv.v2 != 12247) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Uc_I_F ret_Uc_I_F(){
    struct Uc_I_F lv = { .v1 = 29, .v2 = 12247, .v3 = 7.0 };
    return lv;
}
int zig_assert_Uc_I_F(struct Uc_I_F);
int send_Uc_I_F(){
    return zig_assert_Uc_I_F(ret_Uc_I_F());
}
struct Uc_I_F zig_ret_Uc_I_F();
int assert_ret_Uc_I_F(){
    return assert_Uc_I_F(zig_ret_Uc_I_F());
}

int assert_Uc_I_I(struct Uc_I_I lv){
    int err = 0;
  if (lv.v1 != 60) err = 1;
  if (lv.v2 != 7544) err = 2;
  if (lv.v3 != 6612) err = 3;
  return err;
}
struct Uc_I_I ret_Uc_I_I(){
    struct Uc_I_I lv = { .v1 = 60, .v2 = 7544, .v3 = 6612 };
    return lv;
}
int zig_assert_Uc_I_I(struct Uc_I_I);
int send_Uc_I_I(){
    return zig_assert_Uc_I_I(ret_Uc_I_I());
}
struct Uc_I_I zig_ret_Uc_I_I();
int assert_ret_Uc_I_I(){
    return assert_Uc_I_I(zig_ret_Uc_I_I());
}

int assert_Uc_I_Ip(struct Uc_I_Ip lv){
    int err = 0;
  if (lv.v1 != 18) err = 1;
  if (lv.v2 != 32746) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_I_Ip ret_Uc_I_Ip(){
    struct Uc_I_Ip lv = { .v1 = 18, .v2 = 32746, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_I_Ip(struct Uc_I_Ip);
int send_Uc_I_Ip(){
    return zig_assert_Uc_I_Ip(ret_Uc_I_Ip());
}
struct Uc_I_Ip zig_ret_Uc_I_Ip();
int assert_ret_Uc_I_Ip(){
    return assert_Uc_I_Ip(zig_ret_Uc_I_Ip());
}

int assert_Uc_I_L(struct Uc_I_L lv){
    int err = 0;
  if (lv.v1 != 113) err = 1;
  if (lv.v2 != 36) err = 2;
  if (lv.v3 != 32506) err = 3;
  return err;
}
struct Uc_I_L ret_Uc_I_L(){
    struct Uc_I_L lv = { .v1 = 113, .v2 = 36, .v3 = 32506 };
    return lv;
}
int zig_assert_Uc_I_L(struct Uc_I_L);
int send_Uc_I_L(){
    return zig_assert_Uc_I_L(ret_Uc_I_L());
}
struct Uc_I_L zig_ret_Uc_I_L();
int assert_ret_Uc_I_L(){
    return assert_Uc_I_L(zig_ret_Uc_I_L());
}

int assert_Uc_I_S(struct Uc_I_S lv){
    int err = 0;
  if (lv.v1 != 58) err = 1;
  if (lv.v2 != 28832) err = 2;
  if (lv.v3 != 32618) err = 3;
  return err;
}
struct Uc_I_S ret_Uc_I_S(){
    struct Uc_I_S lv = { .v1 = 58, .v2 = 28832, .v3 = 32618 };
    return lv;
}
int zig_assert_Uc_I_S(struct Uc_I_S);
int send_Uc_I_S(){
    return zig_assert_Uc_I_S(ret_Uc_I_S());
}
struct Uc_I_S zig_ret_Uc_I_S();
int assert_ret_Uc_I_S(){
    return assert_Uc_I_S(zig_ret_Uc_I_S());
}

int assert_Uc_I_Uc(struct Uc_I_Uc lv){
    int err = 0;
  if (lv.v1 != 113) err = 1;
  if (lv.v2 != 28710) err = 2;
  if (lv.v3 != 106) err = 3;
  return err;
}
struct Uc_I_Uc ret_Uc_I_Uc(){
    struct Uc_I_Uc lv = { .v1 = 113, .v2 = 28710, .v3 = 106 };
    return lv;
}
int zig_assert_Uc_I_Uc(struct Uc_I_Uc);
int send_Uc_I_Uc(){
    return zig_assert_Uc_I_Uc(ret_Uc_I_Uc());
}
struct Uc_I_Uc zig_ret_Uc_I_Uc();
int assert_ret_Uc_I_Uc(){
    return assert_Uc_I_Uc(zig_ret_Uc_I_Uc());
}

int assert_Uc_I_Ui(struct Uc_I_Ui lv){
    int err = 0;
  if (lv.v1 != 15) err = 1;
  if (lv.v2 != 11634) err = 2;
  if (lv.v3 != 8763) err = 3;
  return err;
}
struct Uc_I_Ui ret_Uc_I_Ui(){
    struct Uc_I_Ui lv = { .v1 = 15, .v2 = 11634, .v3 = 8763 };
    return lv;
}
int zig_assert_Uc_I_Ui(struct Uc_I_Ui);
int send_Uc_I_Ui(){
    return zig_assert_Uc_I_Ui(ret_Uc_I_Ui());
}
struct Uc_I_Ui zig_ret_Uc_I_Ui();
int assert_ret_Uc_I_Ui(){
    return assert_Uc_I_Ui(zig_ret_Uc_I_Ui());
}

int assert_Uc_I_Ul(struct Uc_I_Ul lv){
    int err = 0;
  if (lv.v1 != 105) err = 1;
  if (lv.v2 != 18283) err = 2;
  if (lv.v3 != 21389) err = 3;
  return err;
}
struct Uc_I_Ul ret_Uc_I_Ul(){
    struct Uc_I_Ul lv = { .v1 = 105, .v2 = 18283, .v3 = 21389 };
    return lv;
}
int zig_assert_Uc_I_Ul(struct Uc_I_Ul);
int send_Uc_I_Ul(){
    return zig_assert_Uc_I_Ul(ret_Uc_I_Ul());
}
struct Uc_I_Ul zig_ret_Uc_I_Ul();
int assert_ret_Uc_I_Ul(){
    return assert_Uc_I_Ul(zig_ret_Uc_I_Ul());
}

int assert_Uc_I_Us(struct Uc_I_Us lv){
    int err = 0;
  if (lv.v1 != 75) err = 1;
  if (lv.v2 != 2635) err = 2;
  if (lv.v3 != 14892) err = 3;
  return err;
}
struct Uc_I_Us ret_Uc_I_Us(){
    struct Uc_I_Us lv = { .v1 = 75, .v2 = 2635, .v3 = 14892 };
    return lv;
}
int zig_assert_Uc_I_Us(struct Uc_I_Us);
int send_Uc_I_Us(){
    return zig_assert_Uc_I_Us(ret_Uc_I_Us());
}
struct Uc_I_Us zig_ret_Uc_I_Us();
int assert_ret_Uc_I_Us(){
    return assert_Uc_I_Us(zig_ret_Uc_I_Us());
}

int assert_Uc_I_Vp(struct Uc_I_Vp lv){
    int err = 0;
  if (lv.v1 != 96) err = 1;
  if (lv.v2 != 16481) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_I_Vp ret_Uc_I_Vp(){
    struct Uc_I_Vp lv = { .v1 = 96, .v2 = 16481, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_I_Vp(struct Uc_I_Vp);
int send_Uc_I_Vp(){
    return zig_assert_Uc_I_Vp(ret_Uc_I_Vp());
}
struct Uc_I_Vp zig_ret_Uc_I_Vp();
int assert_ret_Uc_I_Vp(){
    return assert_Uc_I_Vp(zig_ret_Uc_I_Vp());
}

int assert_Uc_Ip(struct Uc_Ip lv){
    int err = 0;
  if (lv.v1 != 12) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Uc_Ip ret_Uc_Ip(){
    struct Uc_Ip lv = { .v1 = 12, .v2 = 0 };
    return lv;
}
int zig_assert_Uc_Ip(struct Uc_Ip);
int send_Uc_Ip(){
    return zig_assert_Uc_Ip(ret_Uc_Ip());
}
struct Uc_Ip zig_ret_Uc_Ip();
int assert_ret_Uc_Ip(){
    return assert_Uc_Ip(zig_ret_Uc_Ip());
}

int assert_Uc_Ip_C(struct Uc_Ip_C lv){
    int err = 0;
  if (lv.v1 != 58) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 120) err = 3;
  return err;
}
struct Uc_Ip_C ret_Uc_Ip_C(){
    struct Uc_Ip_C lv = { .v1 = 58, .v2 = 0, .v3 = 120 };
    return lv;
}
int zig_assert_Uc_Ip_C(struct Uc_Ip_C);
int send_Uc_Ip_C(){
    return zig_assert_Uc_Ip_C(ret_Uc_Ip_C());
}
struct Uc_Ip_C zig_ret_Uc_Ip_C();
int assert_ret_Uc_Ip_C(){
    return assert_Uc_Ip_C(zig_ret_Uc_Ip_C());
}

int assert_Uc_Ip_D(struct Uc_Ip_D lv){
    int err = 0;
  if (lv.v1 != 66) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Uc_Ip_D ret_Uc_Ip_D(){
    struct Uc_Ip_D lv = { .v1 = 66, .v2 = 0, .v3 = 7.0 };
    return lv;
}
int zig_assert_Uc_Ip_D(struct Uc_Ip_D);
int send_Uc_Ip_D(){
    return zig_assert_Uc_Ip_D(ret_Uc_Ip_D());
}
struct Uc_Ip_D zig_ret_Uc_Ip_D();
int assert_ret_Uc_Ip_D(){
    return assert_Uc_Ip_D(zig_ret_Uc_Ip_D());
}

int assert_Uc_Ip_F(struct Uc_Ip_F lv){
    int err = 0;
  if (lv.v1 != 103) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Uc_Ip_F ret_Uc_Ip_F(){
    struct Uc_Ip_F lv = { .v1 = 103, .v2 = 0, .v3 = 1.0 };
    return lv;
}
int zig_assert_Uc_Ip_F(struct Uc_Ip_F);
int send_Uc_Ip_F(){
    return zig_assert_Uc_Ip_F(ret_Uc_Ip_F());
}
struct Uc_Ip_F zig_ret_Uc_Ip_F();
int assert_ret_Uc_Ip_F(){
    return assert_Uc_Ip_F(zig_ret_Uc_Ip_F());
}

int assert_Uc_Ip_I(struct Uc_Ip_I lv){
    int err = 0;
  if (lv.v1 != 20) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 13416) err = 3;
  return err;
}
struct Uc_Ip_I ret_Uc_Ip_I(){
    struct Uc_Ip_I lv = { .v1 = 20, .v2 = 0, .v3 = 13416 };
    return lv;
}
int zig_assert_Uc_Ip_I(struct Uc_Ip_I);
int send_Uc_Ip_I(){
    return zig_assert_Uc_Ip_I(ret_Uc_Ip_I());
}
struct Uc_Ip_I zig_ret_Uc_Ip_I();
int assert_ret_Uc_Ip_I(){
    return assert_Uc_Ip_I(zig_ret_Uc_Ip_I());
}

int assert_Uc_Ip_Ip(struct Uc_Ip_Ip lv){
    int err = 0;
  if (lv.v1 != 117) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Ip_Ip ret_Uc_Ip_Ip(){
    struct Uc_Ip_Ip lv = { .v1 = 117, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Ip_Ip(struct Uc_Ip_Ip);
int send_Uc_Ip_Ip(){
    return zig_assert_Uc_Ip_Ip(ret_Uc_Ip_Ip());
}
struct Uc_Ip_Ip zig_ret_Uc_Ip_Ip();
int assert_ret_Uc_Ip_Ip(){
    return assert_Uc_Ip_Ip(zig_ret_Uc_Ip_Ip());
}

int assert_Uc_Ip_L(struct Uc_Ip_L lv){
    int err = 0;
  if (lv.v1 != 31) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 30388) err = 3;
  return err;
}
struct Uc_Ip_L ret_Uc_Ip_L(){
    struct Uc_Ip_L lv = { .v1 = 31, .v2 = 0, .v3 = 30388 };
    return lv;
}
int zig_assert_Uc_Ip_L(struct Uc_Ip_L);
int send_Uc_Ip_L(){
    return zig_assert_Uc_Ip_L(ret_Uc_Ip_L());
}
struct Uc_Ip_L zig_ret_Uc_Ip_L();
int assert_ret_Uc_Ip_L(){
    return assert_Uc_Ip_L(zig_ret_Uc_Ip_L());
}

int assert_Uc_Ip_S(struct Uc_Ip_S lv){
    int err = 0;
  if (lv.v1 != 104) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 28603) err = 3;
  return err;
}
struct Uc_Ip_S ret_Uc_Ip_S(){
    struct Uc_Ip_S lv = { .v1 = 104, .v2 = 0, .v3 = 28603 };
    return lv;
}
int zig_assert_Uc_Ip_S(struct Uc_Ip_S);
int send_Uc_Ip_S(){
    return zig_assert_Uc_Ip_S(ret_Uc_Ip_S());
}
struct Uc_Ip_S zig_ret_Uc_Ip_S();
int assert_ret_Uc_Ip_S(){
    return assert_Uc_Ip_S(zig_ret_Uc_Ip_S());
}

int assert_Uc_Ip_Uc(struct Uc_Ip_Uc lv){
    int err = 0;
  if (lv.v1 != 35) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 13) err = 3;
  return err;
}
struct Uc_Ip_Uc ret_Uc_Ip_Uc(){
    struct Uc_Ip_Uc lv = { .v1 = 35, .v2 = 0, .v3 = 13 };
    return lv;
}
int zig_assert_Uc_Ip_Uc(struct Uc_Ip_Uc);
int send_Uc_Ip_Uc(){
    return zig_assert_Uc_Ip_Uc(ret_Uc_Ip_Uc());
}
struct Uc_Ip_Uc zig_ret_Uc_Ip_Uc();
int assert_ret_Uc_Ip_Uc(){
    return assert_Uc_Ip_Uc(zig_ret_Uc_Ip_Uc());
}

int assert_Uc_Ip_Ui(struct Uc_Ip_Ui lv){
    int err = 0;
  if (lv.v1 != 20) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 16954) err = 3;
  return err;
}
struct Uc_Ip_Ui ret_Uc_Ip_Ui(){
    struct Uc_Ip_Ui lv = { .v1 = 20, .v2 = 0, .v3 = 16954 };
    return lv;
}
int zig_assert_Uc_Ip_Ui(struct Uc_Ip_Ui);
int send_Uc_Ip_Ui(){
    return zig_assert_Uc_Ip_Ui(ret_Uc_Ip_Ui());
}
struct Uc_Ip_Ui zig_ret_Uc_Ip_Ui();
int assert_ret_Uc_Ip_Ui(){
    return assert_Uc_Ip_Ui(zig_ret_Uc_Ip_Ui());
}

int assert_Uc_Ip_Ul(struct Uc_Ip_Ul lv){
    int err = 0;
  if (lv.v1 != 89) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 18772) err = 3;
  return err;
}
struct Uc_Ip_Ul ret_Uc_Ip_Ul(){
    struct Uc_Ip_Ul lv = { .v1 = 89, .v2 = 0, .v3 = 18772 };
    return lv;
}
int zig_assert_Uc_Ip_Ul(struct Uc_Ip_Ul);
int send_Uc_Ip_Ul(){
    return zig_assert_Uc_Ip_Ul(ret_Uc_Ip_Ul());
}
struct Uc_Ip_Ul zig_ret_Uc_Ip_Ul();
int assert_ret_Uc_Ip_Ul(){
    return assert_Uc_Ip_Ul(zig_ret_Uc_Ip_Ul());
}

int assert_Uc_Ip_Us(struct Uc_Ip_Us lv){
    int err = 0;
  if (lv.v1 != 48) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 8281) err = 3;
  return err;
}
struct Uc_Ip_Us ret_Uc_Ip_Us(){
    struct Uc_Ip_Us lv = { .v1 = 48, .v2 = 0, .v3 = 8281 };
    return lv;
}
int zig_assert_Uc_Ip_Us(struct Uc_Ip_Us);
int send_Uc_Ip_Us(){
    return zig_assert_Uc_Ip_Us(ret_Uc_Ip_Us());
}
struct Uc_Ip_Us zig_ret_Uc_Ip_Us();
int assert_ret_Uc_Ip_Us(){
    return assert_Uc_Ip_Us(zig_ret_Uc_Ip_Us());
}

int assert_Uc_Ip_Vp(struct Uc_Ip_Vp lv){
    int err = 0;
  if (lv.v1 != 33) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Ip_Vp ret_Uc_Ip_Vp(){
    struct Uc_Ip_Vp lv = { .v1 = 33, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Ip_Vp(struct Uc_Ip_Vp);
int send_Uc_Ip_Vp(){
    return zig_assert_Uc_Ip_Vp(ret_Uc_Ip_Vp());
}
struct Uc_Ip_Vp zig_ret_Uc_Ip_Vp();
int assert_ret_Uc_Ip_Vp(){
    return assert_Uc_Ip_Vp(zig_ret_Uc_Ip_Vp());
}

int assert_Uc_L(struct Uc_L lv){
    int err = 0;
  if (lv.v1 != 119) err = 1;
  if (lv.v2 != 15974) err = 2;
  return err;
}
struct Uc_L ret_Uc_L(){
    struct Uc_L lv = { .v1 = 119, .v2 = 15974 };
    return lv;
}
int zig_assert_Uc_L(struct Uc_L);
int send_Uc_L(){
    return zig_assert_Uc_L(ret_Uc_L());
}
struct Uc_L zig_ret_Uc_L();
int assert_ret_Uc_L(){
    return assert_Uc_L(zig_ret_Uc_L());
}

int assert_Uc_L_C(struct Uc_L_C lv){
    int err = 0;
  if (lv.v1 != 50) err = 1;
  if (lv.v2 != 21453) err = 2;
  if (lv.v3 != 112) err = 3;
  return err;
}
struct Uc_L_C ret_Uc_L_C(){
    struct Uc_L_C lv = { .v1 = 50, .v2 = 21453, .v3 = 112 };
    return lv;
}
int zig_assert_Uc_L_C(struct Uc_L_C);
int send_Uc_L_C(){
    return zig_assert_Uc_L_C(ret_Uc_L_C());
}
struct Uc_L_C zig_ret_Uc_L_C();
int assert_ret_Uc_L_C(){
    return assert_Uc_L_C(zig_ret_Uc_L_C());
}

int assert_Uc_L_D(struct Uc_L_D lv){
    int err = 0;
  if (lv.v1 != 42) err = 1;
  if (lv.v2 != 12771) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Uc_L_D ret_Uc_L_D(){
    struct Uc_L_D lv = { .v1 = 42, .v2 = 12771, .v3 = 7.0 };
    return lv;
}
int zig_assert_Uc_L_D(struct Uc_L_D);
int send_Uc_L_D(){
    return zig_assert_Uc_L_D(ret_Uc_L_D());
}
struct Uc_L_D zig_ret_Uc_L_D();
int assert_ret_Uc_L_D(){
    return assert_Uc_L_D(zig_ret_Uc_L_D());
}

int assert_Uc_L_F(struct Uc_L_F lv){
    int err = 0;
  if (lv.v1 != 39) err = 1;
  if (lv.v2 != 19443) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Uc_L_F ret_Uc_L_F(){
    struct Uc_L_F lv = { .v1 = 39, .v2 = 19443, .v3 = 7.0 };
    return lv;
}
int zig_assert_Uc_L_F(struct Uc_L_F);
int send_Uc_L_F(){
    return zig_assert_Uc_L_F(ret_Uc_L_F());
}
struct Uc_L_F zig_ret_Uc_L_F();
int assert_ret_Uc_L_F(){
    return assert_Uc_L_F(zig_ret_Uc_L_F());
}

int assert_Uc_L_I(struct Uc_L_I lv){
    int err = 0;
  if (lv.v1 != 93) err = 1;
  if (lv.v2 != 28305) err = 2;
  if (lv.v3 != 18385) err = 3;
  return err;
}
struct Uc_L_I ret_Uc_L_I(){
    struct Uc_L_I lv = { .v1 = 93, .v2 = 28305, .v3 = 18385 };
    return lv;
}
int zig_assert_Uc_L_I(struct Uc_L_I);
int send_Uc_L_I(){
    return zig_assert_Uc_L_I(ret_Uc_L_I());
}
struct Uc_L_I zig_ret_Uc_L_I();
int assert_ret_Uc_L_I(){
    return assert_Uc_L_I(zig_ret_Uc_L_I());
}

int assert_Uc_L_Ip(struct Uc_L_Ip lv){
    int err = 0;
  if (lv.v1 != 10) err = 1;
  if (lv.v2 != 8726) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_L_Ip ret_Uc_L_Ip(){
    struct Uc_L_Ip lv = { .v1 = 10, .v2 = 8726, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_L_Ip(struct Uc_L_Ip);
int send_Uc_L_Ip(){
    return zig_assert_Uc_L_Ip(ret_Uc_L_Ip());
}
struct Uc_L_Ip zig_ret_Uc_L_Ip();
int assert_ret_Uc_L_Ip(){
    return assert_Uc_L_Ip(zig_ret_Uc_L_Ip());
}

int assert_Uc_L_L(struct Uc_L_L lv){
    int err = 0;
  if (lv.v1 != 112) err = 1;
  if (lv.v2 != 7512) err = 2;
  if (lv.v3 != 12279) err = 3;
  return err;
}
struct Uc_L_L ret_Uc_L_L(){
    struct Uc_L_L lv = { .v1 = 112, .v2 = 7512, .v3 = 12279 };
    return lv;
}
int zig_assert_Uc_L_L(struct Uc_L_L);
int send_Uc_L_L(){
    return zig_assert_Uc_L_L(ret_Uc_L_L());
}
struct Uc_L_L zig_ret_Uc_L_L();
int assert_ret_Uc_L_L(){
    return assert_Uc_L_L(zig_ret_Uc_L_L());
}

int assert_Uc_L_S(struct Uc_L_S lv){
    int err = 0;
  if (lv.v1 != 5) err = 1;
  if (lv.v2 != 19826) err = 2;
  if (lv.v3 != 20687) err = 3;
  return err;
}
struct Uc_L_S ret_Uc_L_S(){
    struct Uc_L_S lv = { .v1 = 5, .v2 = 19826, .v3 = 20687 };
    return lv;
}
int zig_assert_Uc_L_S(struct Uc_L_S);
int send_Uc_L_S(){
    return zig_assert_Uc_L_S(ret_Uc_L_S());
}
struct Uc_L_S zig_ret_Uc_L_S();
int assert_ret_Uc_L_S(){
    return assert_Uc_L_S(zig_ret_Uc_L_S());
}

int assert_Uc_L_Uc(struct Uc_L_Uc lv){
    int err = 0;
  if (lv.v1 != 14) err = 1;
  if (lv.v2 != 18144) err = 2;
  if (lv.v3 != 34) err = 3;
  return err;
}
struct Uc_L_Uc ret_Uc_L_Uc(){
    struct Uc_L_Uc lv = { .v1 = 14, .v2 = 18144, .v3 = 34 };
    return lv;
}
int zig_assert_Uc_L_Uc(struct Uc_L_Uc);
int send_Uc_L_Uc(){
    return zig_assert_Uc_L_Uc(ret_Uc_L_Uc());
}
struct Uc_L_Uc zig_ret_Uc_L_Uc();
int assert_ret_Uc_L_Uc(){
    return assert_Uc_L_Uc(zig_ret_Uc_L_Uc());
}

int assert_Uc_L_Ui(struct Uc_L_Ui lv){
    int err = 0;
  if (lv.v1 != 42) err = 1;
  if (lv.v2 != 2689) err = 2;
  if (lv.v3 != 3812) err = 3;
  return err;
}
struct Uc_L_Ui ret_Uc_L_Ui(){
    struct Uc_L_Ui lv = { .v1 = 42, .v2 = 2689, .v3 = 3812 };
    return lv;
}
int zig_assert_Uc_L_Ui(struct Uc_L_Ui);
int send_Uc_L_Ui(){
    return zig_assert_Uc_L_Ui(ret_Uc_L_Ui());
}
struct Uc_L_Ui zig_ret_Uc_L_Ui();
int assert_ret_Uc_L_Ui(){
    return assert_Uc_L_Ui(zig_ret_Uc_L_Ui());
}

int assert_Uc_L_Ul(struct Uc_L_Ul lv){
    int err = 0;
  if (lv.v1 != 125) err = 1;
  if (lv.v2 != 19855) err = 2;
  if (lv.v3 != 32534) err = 3;
  return err;
}
struct Uc_L_Ul ret_Uc_L_Ul(){
    struct Uc_L_Ul lv = { .v1 = 125, .v2 = 19855, .v3 = 32534 };
    return lv;
}
int zig_assert_Uc_L_Ul(struct Uc_L_Ul);
int send_Uc_L_Ul(){
    return zig_assert_Uc_L_Ul(ret_Uc_L_Ul());
}
struct Uc_L_Ul zig_ret_Uc_L_Ul();
int assert_ret_Uc_L_Ul(){
    return assert_Uc_L_Ul(zig_ret_Uc_L_Ul());
}

int assert_Uc_L_Us(struct Uc_L_Us lv){
    int err = 0;
  if (lv.v1 != 120) err = 1;
  if (lv.v2 != 9826) err = 2;
  if (lv.v3 != 1663) err = 3;
  return err;
}
struct Uc_L_Us ret_Uc_L_Us(){
    struct Uc_L_Us lv = { .v1 = 120, .v2 = 9826, .v3 = 1663 };
    return lv;
}
int zig_assert_Uc_L_Us(struct Uc_L_Us);
int send_Uc_L_Us(){
    return zig_assert_Uc_L_Us(ret_Uc_L_Us());
}
struct Uc_L_Us zig_ret_Uc_L_Us();
int assert_ret_Uc_L_Us(){
    return assert_Uc_L_Us(zig_ret_Uc_L_Us());
}

int assert_Uc_L_Vp(struct Uc_L_Vp lv){
    int err = 0;
  if (lv.v1 != 112) err = 1;
  if (lv.v2 != 14009) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_L_Vp ret_Uc_L_Vp(){
    struct Uc_L_Vp lv = { .v1 = 112, .v2 = 14009, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_L_Vp(struct Uc_L_Vp);
int send_Uc_L_Vp(){
    return zig_assert_Uc_L_Vp(ret_Uc_L_Vp());
}
struct Uc_L_Vp zig_ret_Uc_L_Vp();
int assert_ret_Uc_L_Vp(){
    return assert_Uc_L_Vp(zig_ret_Uc_L_Vp());
}

int assert_Uc_S(struct Uc_S lv){
    int err = 0;
  if (lv.v1 != 34) err = 1;
  if (lv.v2 != 19847) err = 2;
  return err;
}
struct Uc_S ret_Uc_S(){
    struct Uc_S lv = { .v1 = 34, .v2 = 19847 };
    return lv;
}
int zig_assert_Uc_S(struct Uc_S);
int send_Uc_S(){
    return zig_assert_Uc_S(ret_Uc_S());
}
struct Uc_S zig_ret_Uc_S();
int assert_ret_Uc_S(){
    return assert_Uc_S(zig_ret_Uc_S());
}

int assert_Uc_S_C(struct Uc_S_C lv){
    int err = 0;
  if (lv.v1 != 74) err = 1;
  if (lv.v2 != 21816) err = 2;
  if (lv.v3 != 88) err = 3;
  return err;
}
struct Uc_S_C ret_Uc_S_C(){
    struct Uc_S_C lv = { .v1 = 74, .v2 = 21816, .v3 = 88 };
    return lv;
}
int zig_assert_Uc_S_C(struct Uc_S_C);
int send_Uc_S_C(){
    return zig_assert_Uc_S_C(ret_Uc_S_C());
}
struct Uc_S_C zig_ret_Uc_S_C();
int assert_ret_Uc_S_C(){
    return assert_Uc_S_C(zig_ret_Uc_S_C());
}

int assert_Uc_S_D(struct Uc_S_D lv){
    int err = 0;
  if (lv.v1 != 87) err = 1;
  if (lv.v2 != 14939) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Uc_S_D ret_Uc_S_D(){
    struct Uc_S_D lv = { .v1 = 87, .v2 = 14939, .v3 = -2.125 };
    return lv;
}
int zig_assert_Uc_S_D(struct Uc_S_D);
int send_Uc_S_D(){
    return zig_assert_Uc_S_D(ret_Uc_S_D());
}
struct Uc_S_D zig_ret_Uc_S_D();
int assert_ret_Uc_S_D(){
    return assert_Uc_S_D(zig_ret_Uc_S_D());
}

int assert_Uc_S_F(struct Uc_S_F lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 29623) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Uc_S_F ret_Uc_S_F(){
    struct Uc_S_F lv = { .v1 = 9, .v2 = 29623, .v3 = 0.5 };
    return lv;
}
int zig_assert_Uc_S_F(struct Uc_S_F);
int send_Uc_S_F(){
    return zig_assert_Uc_S_F(ret_Uc_S_F());
}
struct Uc_S_F zig_ret_Uc_S_F();
int assert_ret_Uc_S_F(){
    return assert_Uc_S_F(zig_ret_Uc_S_F());
}

int assert_Uc_S_I(struct Uc_S_I lv){
    int err = 0;
  if (lv.v1 != 9) err = 1;
  if (lv.v2 != 6063) err = 2;
  if (lv.v3 != 7793) err = 3;
  return err;
}
struct Uc_S_I ret_Uc_S_I(){
    struct Uc_S_I lv = { .v1 = 9, .v2 = 6063, .v3 = 7793 };
    return lv;
}
int zig_assert_Uc_S_I(struct Uc_S_I);
int send_Uc_S_I(){
    return zig_assert_Uc_S_I(ret_Uc_S_I());
}
struct Uc_S_I zig_ret_Uc_S_I();
int assert_ret_Uc_S_I(){
    return assert_Uc_S_I(zig_ret_Uc_S_I());
}

int assert_Uc_S_Ip(struct Uc_S_Ip lv){
    int err = 0;
  if (lv.v1 != 26) err = 1;
  if (lv.v2 != 11164) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_S_Ip ret_Uc_S_Ip(){
    struct Uc_S_Ip lv = { .v1 = 26, .v2 = 11164, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_S_Ip(struct Uc_S_Ip);
int send_Uc_S_Ip(){
    return zig_assert_Uc_S_Ip(ret_Uc_S_Ip());
}
struct Uc_S_Ip zig_ret_Uc_S_Ip();
int assert_ret_Uc_S_Ip(){
    return assert_Uc_S_Ip(zig_ret_Uc_S_Ip());
}

int assert_Uc_S_L(struct Uc_S_L lv){
    int err = 0;
  if (lv.v1 != 51) err = 1;
  if (lv.v2 != 885) err = 2;
  if (lv.v3 != 13093) err = 3;
  return err;
}
struct Uc_S_L ret_Uc_S_L(){
    struct Uc_S_L lv = { .v1 = 51, .v2 = 885, .v3 = 13093 };
    return lv;
}
int zig_assert_Uc_S_L(struct Uc_S_L);
int send_Uc_S_L(){
    return zig_assert_Uc_S_L(ret_Uc_S_L());
}
struct Uc_S_L zig_ret_Uc_S_L();
int assert_ret_Uc_S_L(){
    return assert_Uc_S_L(zig_ret_Uc_S_L());
}

int assert_Uc_S_S(struct Uc_S_S lv){
    int err = 0;
  if (lv.v1 != 21) err = 1;
  if (lv.v2 != 14367) err = 2;
  if (lv.v3 != 8854) err = 3;
  return err;
}
struct Uc_S_S ret_Uc_S_S(){
    struct Uc_S_S lv = { .v1 = 21, .v2 = 14367, .v3 = 8854 };
    return lv;
}
int zig_assert_Uc_S_S(struct Uc_S_S);
int send_Uc_S_S(){
    return zig_assert_Uc_S_S(ret_Uc_S_S());
}
struct Uc_S_S zig_ret_Uc_S_S();
int assert_ret_Uc_S_S(){
    return assert_Uc_S_S(zig_ret_Uc_S_S());
}

int assert_Uc_S_Uc(struct Uc_S_Uc lv){
    int err = 0;
  if (lv.v1 != 121) err = 1;
  if (lv.v2 != 32357) err = 2;
  if (lv.v3 != 7) err = 3;
  return err;
}
struct Uc_S_Uc ret_Uc_S_Uc(){
    struct Uc_S_Uc lv = { .v1 = 121, .v2 = 32357, .v3 = 7 };
    return lv;
}
int zig_assert_Uc_S_Uc(struct Uc_S_Uc);
int send_Uc_S_Uc(){
    return zig_assert_Uc_S_Uc(ret_Uc_S_Uc());
}
struct Uc_S_Uc zig_ret_Uc_S_Uc();
int assert_ret_Uc_S_Uc(){
    return assert_Uc_S_Uc(zig_ret_Uc_S_Uc());
}

int assert_Uc_S_Ui(struct Uc_S_Ui lv){
    int err = 0;
  if (lv.v1 != 114) err = 1;
  if (lv.v2 != 18126) err = 2;
  if (lv.v3 != 22022) err = 3;
  return err;
}
struct Uc_S_Ui ret_Uc_S_Ui(){
    struct Uc_S_Ui lv = { .v1 = 114, .v2 = 18126, .v3 = 22022 };
    return lv;
}
int zig_assert_Uc_S_Ui(struct Uc_S_Ui);
int send_Uc_S_Ui(){
    return zig_assert_Uc_S_Ui(ret_Uc_S_Ui());
}
struct Uc_S_Ui zig_ret_Uc_S_Ui();
int assert_ret_Uc_S_Ui(){
    return assert_Uc_S_Ui(zig_ret_Uc_S_Ui());
}

int assert_Uc_S_Ul(struct Uc_S_Ul lv){
    int err = 0;
  if (lv.v1 != 47) err = 1;
  if (lv.v2 != 8185) err = 2;
  if (lv.v3 != 28912) err = 3;
  return err;
}
struct Uc_S_Ul ret_Uc_S_Ul(){
    struct Uc_S_Ul lv = { .v1 = 47, .v2 = 8185, .v3 = 28912 };
    return lv;
}
int zig_assert_Uc_S_Ul(struct Uc_S_Ul);
int send_Uc_S_Ul(){
    return zig_assert_Uc_S_Ul(ret_Uc_S_Ul());
}
struct Uc_S_Ul zig_ret_Uc_S_Ul();
int assert_ret_Uc_S_Ul(){
    return assert_Uc_S_Ul(zig_ret_Uc_S_Ul());
}

int assert_Uc_S_Us(struct Uc_S_Us lv){
    int err = 0;
  if (lv.v1 != 40) err = 1;
  if (lv.v2 != 4200) err = 2;
  if (lv.v3 != 29084) err = 3;
  return err;
}
struct Uc_S_Us ret_Uc_S_Us(){
    struct Uc_S_Us lv = { .v1 = 40, .v2 = 4200, .v3 = 29084 };
    return lv;
}
int zig_assert_Uc_S_Us(struct Uc_S_Us);
int send_Uc_S_Us(){
    return zig_assert_Uc_S_Us(ret_Uc_S_Us());
}
struct Uc_S_Us zig_ret_Uc_S_Us();
int assert_ret_Uc_S_Us(){
    return assert_Uc_S_Us(zig_ret_Uc_S_Us());
}

int assert_Uc_S_Vp(struct Uc_S_Vp lv){
    int err = 0;
  if (lv.v1 != 43) err = 1;
  if (lv.v2 != 4074) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_S_Vp ret_Uc_S_Vp(){
    struct Uc_S_Vp lv = { .v1 = 43, .v2 = 4074, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_S_Vp(struct Uc_S_Vp);
int send_Uc_S_Vp(){
    return zig_assert_Uc_S_Vp(ret_Uc_S_Vp());
}
struct Uc_S_Vp zig_ret_Uc_S_Vp();
int assert_ret_Uc_S_Vp(){
    return assert_Uc_S_Vp(zig_ret_Uc_S_Vp());
}

int assert_Uc_Uc(struct Uc_Uc lv){
    int err = 0;
  if (lv.v1 != 36) err = 1;
  if (lv.v2 != 41) err = 2;
  return err;
}
struct Uc_Uc ret_Uc_Uc(){
    struct Uc_Uc lv = { .v1 = 36, .v2 = 41 };
    return lv;
}
int zig_assert_Uc_Uc(struct Uc_Uc);
int send_Uc_Uc(){
    return zig_assert_Uc_Uc(ret_Uc_Uc());
}
struct Uc_Uc zig_ret_Uc_Uc();
int assert_ret_Uc_Uc(){
    return assert_Uc_Uc(zig_ret_Uc_Uc());
}

int assert_Uc_Uc_C(struct Uc_Uc_C lv){
    int err = 0;
  if (lv.v1 != 61) err = 1;
  if (lv.v2 != 123) err = 2;
  if (lv.v3 != 32) err = 3;
  return err;
}
struct Uc_Uc_C ret_Uc_Uc_C(){
    struct Uc_Uc_C lv = { .v1 = 61, .v2 = 123, .v3 = 32 };
    return lv;
}
int zig_assert_Uc_Uc_C(struct Uc_Uc_C);
int send_Uc_Uc_C(){
    return zig_assert_Uc_Uc_C(ret_Uc_Uc_C());
}
struct Uc_Uc_C zig_ret_Uc_Uc_C();
int assert_ret_Uc_Uc_C(){
    return assert_Uc_Uc_C(zig_ret_Uc_Uc_C());
}

int assert_Uc_Uc_D(struct Uc_Uc_D lv){
    int err = 0;
  if (lv.v1 != 69) err = 1;
  if (lv.v2 != 59) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Uc_Uc_D ret_Uc_Uc_D(){
    struct Uc_Uc_D lv = { .v1 = 69, .v2 = 59, .v3 = 1.0 };
    return lv;
}
int zig_assert_Uc_Uc_D(struct Uc_Uc_D);
int send_Uc_Uc_D(){
    return zig_assert_Uc_Uc_D(ret_Uc_Uc_D());
}
struct Uc_Uc_D zig_ret_Uc_Uc_D();
int assert_ret_Uc_Uc_D(){
    return assert_Uc_Uc_D(zig_ret_Uc_Uc_D());
}

int assert_Uc_Uc_F(struct Uc_Uc_F lv){
    int err = 0;
  if (lv.v1 != 64) err = 1;
  if (lv.v2 != 79) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Uc_Uc_F ret_Uc_Uc_F(){
    struct Uc_Uc_F lv = { .v1 = 64, .v2 = 79, .v3 = 4.5 };
    return lv;
}
int zig_assert_Uc_Uc_F(struct Uc_Uc_F);
int send_Uc_Uc_F(){
    return zig_assert_Uc_Uc_F(ret_Uc_Uc_F());
}
struct Uc_Uc_F zig_ret_Uc_Uc_F();
int assert_ret_Uc_Uc_F(){
    return assert_Uc_Uc_F(zig_ret_Uc_Uc_F());
}

int assert_Uc_Uc_I(struct Uc_Uc_I lv){
    int err = 0;
  if (lv.v1 != 10) err = 1;
  if (lv.v2 != 31) err = 2;
  if (lv.v3 != 24178) err = 3;
  return err;
}
struct Uc_Uc_I ret_Uc_Uc_I(){
    struct Uc_Uc_I lv = { .v1 = 10, .v2 = 31, .v3 = 24178 };
    return lv;
}
int zig_assert_Uc_Uc_I(struct Uc_Uc_I);
int send_Uc_Uc_I(){
    return zig_assert_Uc_Uc_I(ret_Uc_Uc_I());
}
struct Uc_Uc_I zig_ret_Uc_Uc_I();
int assert_ret_Uc_Uc_I(){
    return assert_Uc_Uc_I(zig_ret_Uc_Uc_I());
}

int assert_Uc_Uc_Ip(struct Uc_Uc_Ip lv){
    int err = 0;
  if (lv.v1 != 34) err = 1;
  if (lv.v2 != 19) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Uc_Ip ret_Uc_Uc_Ip(){
    struct Uc_Uc_Ip lv = { .v1 = 34, .v2 = 19, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Uc_Ip(struct Uc_Uc_Ip);
int send_Uc_Uc_Ip(){
    return zig_assert_Uc_Uc_Ip(ret_Uc_Uc_Ip());
}
struct Uc_Uc_Ip zig_ret_Uc_Uc_Ip();
int assert_ret_Uc_Uc_Ip(){
    return assert_Uc_Uc_Ip(zig_ret_Uc_Uc_Ip());
}

int assert_Uc_Uc_L(struct Uc_Uc_L lv){
    int err = 0;
  if (lv.v1 != 113) err = 1;
  if (lv.v2 != 16) err = 2;
  if (lv.v3 != 9440) err = 3;
  return err;
}
struct Uc_Uc_L ret_Uc_Uc_L(){
    struct Uc_Uc_L lv = { .v1 = 113, .v2 = 16, .v3 = 9440 };
    return lv;
}
int zig_assert_Uc_Uc_L(struct Uc_Uc_L);
int send_Uc_Uc_L(){
    return zig_assert_Uc_Uc_L(ret_Uc_Uc_L());
}
struct Uc_Uc_L zig_ret_Uc_Uc_L();
int assert_ret_Uc_Uc_L(){
    return assert_Uc_Uc_L(zig_ret_Uc_Uc_L());
}

int assert_Uc_Uc_S(struct Uc_Uc_S lv){
    int err = 0;
  if (lv.v1 != 110) err = 1;
  if (lv.v2 != 68) err = 2;
  if (lv.v3 != 32149) err = 3;
  return err;
}
struct Uc_Uc_S ret_Uc_Uc_S(){
    struct Uc_Uc_S lv = { .v1 = 110, .v2 = 68, .v3 = 32149 };
    return lv;
}
int zig_assert_Uc_Uc_S(struct Uc_Uc_S);
int send_Uc_Uc_S(){
    return zig_assert_Uc_Uc_S(ret_Uc_Uc_S());
}
struct Uc_Uc_S zig_ret_Uc_Uc_S();
int assert_ret_Uc_Uc_S(){
    return assert_Uc_Uc_S(zig_ret_Uc_Uc_S());
}

int assert_Uc_Uc_Uc(struct Uc_Uc_Uc lv){
    int err = 0;
  if (lv.v1 != 25) err = 1;
  if (lv.v2 != 112) err = 2;
  if (lv.v3 != 107) err = 3;
  return err;
}
struct Uc_Uc_Uc ret_Uc_Uc_Uc(){
    struct Uc_Uc_Uc lv = { .v1 = 25, .v2 = 112, .v3 = 107 };
    return lv;
}
int zig_assert_Uc_Uc_Uc(struct Uc_Uc_Uc);
int send_Uc_Uc_Uc(){
    return zig_assert_Uc_Uc_Uc(ret_Uc_Uc_Uc());
}
struct Uc_Uc_Uc zig_ret_Uc_Uc_Uc();
int assert_ret_Uc_Uc_Uc(){
    return assert_Uc_Uc_Uc(zig_ret_Uc_Uc_Uc());
}

int assert_Uc_Uc_Ui(struct Uc_Uc_Ui lv){
    int err = 0;
  if (lv.v1 != 79) err = 1;
  if (lv.v2 != 65) err = 2;
  if (lv.v3 != 18992) err = 3;
  return err;
}
struct Uc_Uc_Ui ret_Uc_Uc_Ui(){
    struct Uc_Uc_Ui lv = { .v1 = 79, .v2 = 65, .v3 = 18992 };
    return lv;
}
int zig_assert_Uc_Uc_Ui(struct Uc_Uc_Ui);
int send_Uc_Uc_Ui(){
    return zig_assert_Uc_Uc_Ui(ret_Uc_Uc_Ui());
}
struct Uc_Uc_Ui zig_ret_Uc_Uc_Ui();
int assert_ret_Uc_Uc_Ui(){
    return assert_Uc_Uc_Ui(zig_ret_Uc_Uc_Ui());
}

int assert_Uc_Uc_Ul(struct Uc_Uc_Ul lv){
    int err = 0;
  if (lv.v1 != 119) err = 1;
  if (lv.v2 != 105) err = 2;
  if (lv.v3 != 14684) err = 3;
  return err;
}
struct Uc_Uc_Ul ret_Uc_Uc_Ul(){
    struct Uc_Uc_Ul lv = { .v1 = 119, .v2 = 105, .v3 = 14684 };
    return lv;
}
int zig_assert_Uc_Uc_Ul(struct Uc_Uc_Ul);
int send_Uc_Uc_Ul(){
    return zig_assert_Uc_Uc_Ul(ret_Uc_Uc_Ul());
}
struct Uc_Uc_Ul zig_ret_Uc_Uc_Ul();
int assert_ret_Uc_Uc_Ul(){
    return assert_Uc_Uc_Ul(zig_ret_Uc_Uc_Ul());
}

int assert_Uc_Uc_Us(struct Uc_Uc_Us lv){
    int err = 0;
  if (lv.v1 != 35) err = 1;
  if (lv.v2 != 94) err = 2;
  if (lv.v3 != 17513) err = 3;
  return err;
}
struct Uc_Uc_Us ret_Uc_Uc_Us(){
    struct Uc_Uc_Us lv = { .v1 = 35, .v2 = 94, .v3 = 17513 };
    return lv;
}
int zig_assert_Uc_Uc_Us(struct Uc_Uc_Us);
int send_Uc_Uc_Us(){
    return zig_assert_Uc_Uc_Us(ret_Uc_Uc_Us());
}
struct Uc_Uc_Us zig_ret_Uc_Uc_Us();
int assert_ret_Uc_Uc_Us(){
    return assert_Uc_Uc_Us(zig_ret_Uc_Uc_Us());
}

int assert_Uc_Uc_Vp(struct Uc_Uc_Vp lv){
    int err = 0;
  if (lv.v1 != 16) err = 1;
  if (lv.v2 != 101) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Uc_Vp ret_Uc_Uc_Vp(){
    struct Uc_Uc_Vp lv = { .v1 = 16, .v2 = 101, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Uc_Vp(struct Uc_Uc_Vp);
int send_Uc_Uc_Vp(){
    return zig_assert_Uc_Uc_Vp(ret_Uc_Uc_Vp());
}
struct Uc_Uc_Vp zig_ret_Uc_Uc_Vp();
int assert_ret_Uc_Uc_Vp(){
    return assert_Uc_Uc_Vp(zig_ret_Uc_Uc_Vp());
}

int assert_Uc_Ui(struct Uc_Ui lv){
    int err = 0;
  if (lv.v1 != 53) err = 1;
  if (lv.v2 != 22835) err = 2;
  return err;
}
struct Uc_Ui ret_Uc_Ui(){
    struct Uc_Ui lv = { .v1 = 53, .v2 = 22835 };
    return lv;
}
int zig_assert_Uc_Ui(struct Uc_Ui);
int send_Uc_Ui(){
    return zig_assert_Uc_Ui(ret_Uc_Ui());
}
struct Uc_Ui zig_ret_Uc_Ui();
int assert_ret_Uc_Ui(){
    return assert_Uc_Ui(zig_ret_Uc_Ui());
}

int assert_Uc_Ui_C(struct Uc_Ui_C lv){
    int err = 0;
  if (lv.v1 != 98) err = 1;
  if (lv.v2 != 13999) err = 2;
  if (lv.v3 != 1) err = 3;
  return err;
}
struct Uc_Ui_C ret_Uc_Ui_C(){
    struct Uc_Ui_C lv = { .v1 = 98, .v2 = 13999, .v3 = 1 };
    return lv;
}
int zig_assert_Uc_Ui_C(struct Uc_Ui_C);
int send_Uc_Ui_C(){
    return zig_assert_Uc_Ui_C(ret_Uc_Ui_C());
}
struct Uc_Ui_C zig_ret_Uc_Ui_C();
int assert_ret_Uc_Ui_C(){
    return assert_Uc_Ui_C(zig_ret_Uc_Ui_C());
}

int assert_Uc_Ui_D(struct Uc_Ui_D lv){
    int err = 0;
  if (lv.v1 != 19) err = 1;
  if (lv.v2 != 212) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Uc_Ui_D ret_Uc_Ui_D(){
    struct Uc_Ui_D lv = { .v1 = 19, .v2 = 212, .v3 = 4.5 };
    return lv;
}
int zig_assert_Uc_Ui_D(struct Uc_Ui_D);
int send_Uc_Ui_D(){
    return zig_assert_Uc_Ui_D(ret_Uc_Ui_D());
}
struct Uc_Ui_D zig_ret_Uc_Ui_D();
int assert_ret_Uc_Ui_D(){
    return assert_Uc_Ui_D(zig_ret_Uc_Ui_D());
}

int assert_Uc_Ui_F(struct Uc_Ui_F lv){
    int err = 0;
  if (lv.v1 != 109) err = 1;
  if (lv.v2 != 22586) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Uc_Ui_F ret_Uc_Ui_F(){
    struct Uc_Ui_F lv = { .v1 = 109, .v2 = 22586, .v3 = 0.875 };
    return lv;
}
int zig_assert_Uc_Ui_F(struct Uc_Ui_F);
int send_Uc_Ui_F(){
    return zig_assert_Uc_Ui_F(ret_Uc_Ui_F());
}
struct Uc_Ui_F zig_ret_Uc_Ui_F();
int assert_ret_Uc_Ui_F(){
    return assert_Uc_Ui_F(zig_ret_Uc_Ui_F());
}

int assert_Uc_Ui_I(struct Uc_Ui_I lv){
    int err = 0;
  if (lv.v1 != 69) err = 1;
  if (lv.v2 != 96) err = 2;
  if (lv.v3 != 11656) err = 3;
  return err;
}
struct Uc_Ui_I ret_Uc_Ui_I(){
    struct Uc_Ui_I lv = { .v1 = 69, .v2 = 96, .v3 = 11656 };
    return lv;
}
int zig_assert_Uc_Ui_I(struct Uc_Ui_I);
int send_Uc_Ui_I(){
    return zig_assert_Uc_Ui_I(ret_Uc_Ui_I());
}
struct Uc_Ui_I zig_ret_Uc_Ui_I();
int assert_ret_Uc_Ui_I(){
    return assert_Uc_Ui_I(zig_ret_Uc_Ui_I());
}

int assert_Uc_Ui_Ip(struct Uc_Ui_Ip lv){
    int err = 0;
  if (lv.v1 != 100) err = 1;
  if (lv.v2 != 23903) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Ui_Ip ret_Uc_Ui_Ip(){
    struct Uc_Ui_Ip lv = { .v1 = 100, .v2 = 23903, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Ui_Ip(struct Uc_Ui_Ip);
int send_Uc_Ui_Ip(){
    return zig_assert_Uc_Ui_Ip(ret_Uc_Ui_Ip());
}
struct Uc_Ui_Ip zig_ret_Uc_Ui_Ip();
int assert_ret_Uc_Ui_Ip(){
    return assert_Uc_Ui_Ip(zig_ret_Uc_Ui_Ip());
}

int assert_Uc_Ui_L(struct Uc_Ui_L lv){
    int err = 0;
  if (lv.v1 != 13) err = 1;
  if (lv.v2 != 17433) err = 2;
  if (lv.v3 != 23126) err = 3;
  return err;
}
struct Uc_Ui_L ret_Uc_Ui_L(){
    struct Uc_Ui_L lv = { .v1 = 13, .v2 = 17433, .v3 = 23126 };
    return lv;
}
int zig_assert_Uc_Ui_L(struct Uc_Ui_L);
int send_Uc_Ui_L(){
    return zig_assert_Uc_Ui_L(ret_Uc_Ui_L());
}
struct Uc_Ui_L zig_ret_Uc_Ui_L();
int assert_ret_Uc_Ui_L(){
    return assert_Uc_Ui_L(zig_ret_Uc_Ui_L());
}

int assert_Uc_Ui_S(struct Uc_Ui_S lv){
    int err = 0;
  if (lv.v1 != 64) err = 1;
  if (lv.v2 != 8972) err = 2;
  if (lv.v3 != 23697) err = 3;
  return err;
}
struct Uc_Ui_S ret_Uc_Ui_S(){
    struct Uc_Ui_S lv = { .v1 = 64, .v2 = 8972, .v3 = 23697 };
    return lv;
}
int zig_assert_Uc_Ui_S(struct Uc_Ui_S);
int send_Uc_Ui_S(){
    return zig_assert_Uc_Ui_S(ret_Uc_Ui_S());
}
struct Uc_Ui_S zig_ret_Uc_Ui_S();
int assert_ret_Uc_Ui_S(){
    return assert_Uc_Ui_S(zig_ret_Uc_Ui_S());
}

int assert_Uc_Ui_Uc(struct Uc_Ui_Uc lv){
    int err = 0;
  if (lv.v1 != 64) err = 1;
  if (lv.v2 != 20781) err = 2;
  if (lv.v3 != 46) err = 3;
  return err;
}
struct Uc_Ui_Uc ret_Uc_Ui_Uc(){
    struct Uc_Ui_Uc lv = { .v1 = 64, .v2 = 20781, .v3 = 46 };
    return lv;
}
int zig_assert_Uc_Ui_Uc(struct Uc_Ui_Uc);
int send_Uc_Ui_Uc(){
    return zig_assert_Uc_Ui_Uc(ret_Uc_Ui_Uc());
}
struct Uc_Ui_Uc zig_ret_Uc_Ui_Uc();
int assert_ret_Uc_Ui_Uc(){
    return assert_Uc_Ui_Uc(zig_ret_Uc_Ui_Uc());
}

int assert_Uc_Ui_Ui(struct Uc_Ui_Ui lv){
    int err = 0;
  if (lv.v1 != 12) err = 1;
  if (lv.v2 != 30965) err = 2;
  if (lv.v3 != 7658) err = 3;
  return err;
}
struct Uc_Ui_Ui ret_Uc_Ui_Ui(){
    struct Uc_Ui_Ui lv = { .v1 = 12, .v2 = 30965, .v3 = 7658 };
    return lv;
}
int zig_assert_Uc_Ui_Ui(struct Uc_Ui_Ui);
int send_Uc_Ui_Ui(){
    return zig_assert_Uc_Ui_Ui(ret_Uc_Ui_Ui());
}
struct Uc_Ui_Ui zig_ret_Uc_Ui_Ui();
int assert_ret_Uc_Ui_Ui(){
    return assert_Uc_Ui_Ui(zig_ret_Uc_Ui_Ui());
}

int assert_Uc_Ui_Ul(struct Uc_Ui_Ul lv){
    int err = 0;
  if (lv.v1 != 102) err = 1;
  if (lv.v2 != 15727) err = 2;
  if (lv.v3 != 6033) err = 3;
  return err;
}
struct Uc_Ui_Ul ret_Uc_Ui_Ul(){
    struct Uc_Ui_Ul lv = { .v1 = 102, .v2 = 15727, .v3 = 6033 };
    return lv;
}
int zig_assert_Uc_Ui_Ul(struct Uc_Ui_Ul);
int send_Uc_Ui_Ul(){
    return zig_assert_Uc_Ui_Ul(ret_Uc_Ui_Ul());
}
struct Uc_Ui_Ul zig_ret_Uc_Ui_Ul();
int assert_ret_Uc_Ui_Ul(){
    return assert_Uc_Ui_Ul(zig_ret_Uc_Ui_Ul());
}

int assert_Uc_Ui_Us(struct Uc_Ui_Us lv){
    int err = 0;
  if (lv.v1 != 69) err = 1;
  if (lv.v2 != 2117) err = 2;
  if (lv.v3 != 24973) err = 3;
  return err;
}
struct Uc_Ui_Us ret_Uc_Ui_Us(){
    struct Uc_Ui_Us lv = { .v1 = 69, .v2 = 2117, .v3 = 24973 };
    return lv;
}
int zig_assert_Uc_Ui_Us(struct Uc_Ui_Us);
int send_Uc_Ui_Us(){
    return zig_assert_Uc_Ui_Us(ret_Uc_Ui_Us());
}
struct Uc_Ui_Us zig_ret_Uc_Ui_Us();
int assert_ret_Uc_Ui_Us(){
    return assert_Uc_Ui_Us(zig_ret_Uc_Ui_Us());
}

int assert_Uc_Ui_Vp(struct Uc_Ui_Vp lv){
    int err = 0;
  if (lv.v1 != 79) err = 1;
  if (lv.v2 != 1180) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Ui_Vp ret_Uc_Ui_Vp(){
    struct Uc_Ui_Vp lv = { .v1 = 79, .v2 = 1180, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Ui_Vp(struct Uc_Ui_Vp);
int send_Uc_Ui_Vp(){
    return zig_assert_Uc_Ui_Vp(ret_Uc_Ui_Vp());
}
struct Uc_Ui_Vp zig_ret_Uc_Ui_Vp();
int assert_ret_Uc_Ui_Vp(){
    return assert_Uc_Ui_Vp(zig_ret_Uc_Ui_Vp());
}

int assert_Uc_Ul(struct Uc_Ul lv){
    int err = 0;
  if (lv.v1 != 60) err = 1;
  if (lv.v2 != 26383) err = 2;
  return err;
}
struct Uc_Ul ret_Uc_Ul(){
    struct Uc_Ul lv = { .v1 = 60, .v2 = 26383 };
    return lv;
}
int zig_assert_Uc_Ul(struct Uc_Ul);
int send_Uc_Ul(){
    return zig_assert_Uc_Ul(ret_Uc_Ul());
}
struct Uc_Ul zig_ret_Uc_Ul();
int assert_ret_Uc_Ul(){
    return assert_Uc_Ul(zig_ret_Uc_Ul());
}

int assert_Uc_Ul_C(struct Uc_Ul_C lv){
    int err = 0;
  if (lv.v1 != 87) err = 1;
  if (lv.v2 != 5320) err = 2;
  if (lv.v3 != 119) err = 3;
  return err;
}
struct Uc_Ul_C ret_Uc_Ul_C(){
    struct Uc_Ul_C lv = { .v1 = 87, .v2 = 5320, .v3 = 119 };
    return lv;
}
int zig_assert_Uc_Ul_C(struct Uc_Ul_C);
int send_Uc_Ul_C(){
    return zig_assert_Uc_Ul_C(ret_Uc_Ul_C());
}
struct Uc_Ul_C zig_ret_Uc_Ul_C();
int assert_ret_Uc_Ul_C(){
    return assert_Uc_Ul_C(zig_ret_Uc_Ul_C());
}

int assert_Uc_Ul_D(struct Uc_Ul_D lv){
    int err = 0;
  if (lv.v1 != 109) err = 1;
  if (lv.v2 != 24058) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Uc_Ul_D ret_Uc_Ul_D(){
    struct Uc_Ul_D lv = { .v1 = 109, .v2 = 24058, .v3 = -0.25 };
    return lv;
}
int zig_assert_Uc_Ul_D(struct Uc_Ul_D);
int send_Uc_Ul_D(){
    return zig_assert_Uc_Ul_D(ret_Uc_Ul_D());
}
struct Uc_Ul_D zig_ret_Uc_Ul_D();
int assert_ret_Uc_Ul_D(){
    return assert_Uc_Ul_D(zig_ret_Uc_Ul_D());
}

int assert_Uc_Ul_F(struct Uc_Ul_F lv){
    int err = 0;
  if (lv.v1 != 89) err = 1;
  if (lv.v2 != 570) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Uc_Ul_F ret_Uc_Ul_F(){
    struct Uc_Ul_F lv = { .v1 = 89, .v2 = 570, .v3 = -0.25 };
    return lv;
}
int zig_assert_Uc_Ul_F(struct Uc_Ul_F);
int send_Uc_Ul_F(){
    return zig_assert_Uc_Ul_F(ret_Uc_Ul_F());
}
struct Uc_Ul_F zig_ret_Uc_Ul_F();
int assert_ret_Uc_Ul_F(){
    return assert_Uc_Ul_F(zig_ret_Uc_Ul_F());
}

int assert_Uc_Ul_I(struct Uc_Ul_I lv){
    int err = 0;
  if (lv.v1 != 20) err = 1;
  if (lv.v2 != 18844) err = 2;
  if (lv.v3 != 22972) err = 3;
  return err;
}
struct Uc_Ul_I ret_Uc_Ul_I(){
    struct Uc_Ul_I lv = { .v1 = 20, .v2 = 18844, .v3 = 22972 };
    return lv;
}
int zig_assert_Uc_Ul_I(struct Uc_Ul_I);
int send_Uc_Ul_I(){
    return zig_assert_Uc_Ul_I(ret_Uc_Ul_I());
}
struct Uc_Ul_I zig_ret_Uc_Ul_I();
int assert_ret_Uc_Ul_I(){
    return assert_Uc_Ul_I(zig_ret_Uc_Ul_I());
}

int assert_Uc_Ul_Ip(struct Uc_Ul_Ip lv){
    int err = 0;
  if (lv.v1 != 87) err = 1;
  if (lv.v2 != 14218) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Ul_Ip ret_Uc_Ul_Ip(){
    struct Uc_Ul_Ip lv = { .v1 = 87, .v2 = 14218, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Ul_Ip(struct Uc_Ul_Ip);
int send_Uc_Ul_Ip(){
    return zig_assert_Uc_Ul_Ip(ret_Uc_Ul_Ip());
}
struct Uc_Ul_Ip zig_ret_Uc_Ul_Ip();
int assert_ret_Uc_Ul_Ip(){
    return assert_Uc_Ul_Ip(zig_ret_Uc_Ul_Ip());
}

int assert_Uc_Ul_L(struct Uc_Ul_L lv){
    int err = 0;
  if (lv.v1 != 99) err = 1;
  if (lv.v2 != 23984) err = 2;
  if (lv.v3 != 30703) err = 3;
  return err;
}
struct Uc_Ul_L ret_Uc_Ul_L(){
    struct Uc_Ul_L lv = { .v1 = 99, .v2 = 23984, .v3 = 30703 };
    return lv;
}
int zig_assert_Uc_Ul_L(struct Uc_Ul_L);
int send_Uc_Ul_L(){
    return zig_assert_Uc_Ul_L(ret_Uc_Ul_L());
}
struct Uc_Ul_L zig_ret_Uc_Ul_L();
int assert_ret_Uc_Ul_L(){
    return assert_Uc_Ul_L(zig_ret_Uc_Ul_L());
}

int assert_Uc_Ul_S(struct Uc_Ul_S lv){
    int err = 0;
  if (lv.v1 != 29) err = 1;
  if (lv.v2 != 13746) err = 2;
  if (lv.v3 != 28959) err = 3;
  return err;
}
struct Uc_Ul_S ret_Uc_Ul_S(){
    struct Uc_Ul_S lv = { .v1 = 29, .v2 = 13746, .v3 = 28959 };
    return lv;
}
int zig_assert_Uc_Ul_S(struct Uc_Ul_S);
int send_Uc_Ul_S(){
    return zig_assert_Uc_Ul_S(ret_Uc_Ul_S());
}
struct Uc_Ul_S zig_ret_Uc_Ul_S();
int assert_ret_Uc_Ul_S(){
    return assert_Uc_Ul_S(zig_ret_Uc_Ul_S());
}

int assert_Uc_Ul_Uc(struct Uc_Ul_Uc lv){
    int err = 0;
  if (lv.v1 != 2) err = 1;
  if (lv.v2 != 27155) err = 2;
  if (lv.v3 != 64) err = 3;
  return err;
}
struct Uc_Ul_Uc ret_Uc_Ul_Uc(){
    struct Uc_Ul_Uc lv = { .v1 = 2, .v2 = 27155, .v3 = 64 };
    return lv;
}
int zig_assert_Uc_Ul_Uc(struct Uc_Ul_Uc);
int send_Uc_Ul_Uc(){
    return zig_assert_Uc_Ul_Uc(ret_Uc_Ul_Uc());
}
struct Uc_Ul_Uc zig_ret_Uc_Ul_Uc();
int assert_ret_Uc_Ul_Uc(){
    return assert_Uc_Ul_Uc(zig_ret_Uc_Ul_Uc());
}

int assert_Uc_Ul_Ui(struct Uc_Ul_Ui lv){
    int err = 0;
  if (lv.v1 != 44) err = 1;
  if (lv.v2 != 8089) err = 2;
  if (lv.v3 != 20884) err = 3;
  return err;
}
struct Uc_Ul_Ui ret_Uc_Ul_Ui(){
    struct Uc_Ul_Ui lv = { .v1 = 44, .v2 = 8089, .v3 = 20884 };
    return lv;
}
int zig_assert_Uc_Ul_Ui(struct Uc_Ul_Ui);
int send_Uc_Ul_Ui(){
    return zig_assert_Uc_Ul_Ui(ret_Uc_Ul_Ui());
}
struct Uc_Ul_Ui zig_ret_Uc_Ul_Ui();
int assert_ret_Uc_Ul_Ui(){
    return assert_Uc_Ul_Ui(zig_ret_Uc_Ul_Ui());
}

int assert_Uc_Ul_Ul(struct Uc_Ul_Ul lv){
    int err = 0;
  if (lv.v1 != 111) err = 1;
  if (lv.v2 != 25364) err = 2;
  if (lv.v3 != 414) err = 3;
  return err;
}
struct Uc_Ul_Ul ret_Uc_Ul_Ul(){
    struct Uc_Ul_Ul lv = { .v1 = 111, .v2 = 25364, .v3 = 414 };
    return lv;
}
int zig_assert_Uc_Ul_Ul(struct Uc_Ul_Ul);
int send_Uc_Ul_Ul(){
    return zig_assert_Uc_Ul_Ul(ret_Uc_Ul_Ul());
}
struct Uc_Ul_Ul zig_ret_Uc_Ul_Ul();
int assert_ret_Uc_Ul_Ul(){
    return assert_Uc_Ul_Ul(zig_ret_Uc_Ul_Ul());
}

int assert_Uc_Ul_Us(struct Uc_Ul_Us lv){
    int err = 0;
  if (lv.v1 != 45) err = 1;
  if (lv.v2 != 30720) err = 2;
  if (lv.v3 != 19132) err = 3;
  return err;
}
struct Uc_Ul_Us ret_Uc_Ul_Us(){
    struct Uc_Ul_Us lv = { .v1 = 45, .v2 = 30720, .v3 = 19132 };
    return lv;
}
int zig_assert_Uc_Ul_Us(struct Uc_Ul_Us);
int send_Uc_Ul_Us(){
    return zig_assert_Uc_Ul_Us(ret_Uc_Ul_Us());
}
struct Uc_Ul_Us zig_ret_Uc_Ul_Us();
int assert_ret_Uc_Ul_Us(){
    return assert_Uc_Ul_Us(zig_ret_Uc_Ul_Us());
}

int assert_Uc_Ul_Vp(struct Uc_Ul_Vp lv){
    int err = 0;
  if (lv.v1 != 31) err = 1;
  if (lv.v2 != 15881) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Ul_Vp ret_Uc_Ul_Vp(){
    struct Uc_Ul_Vp lv = { .v1 = 31, .v2 = 15881, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Ul_Vp(struct Uc_Ul_Vp);
int send_Uc_Ul_Vp(){
    return zig_assert_Uc_Ul_Vp(ret_Uc_Ul_Vp());
}
struct Uc_Ul_Vp zig_ret_Uc_Ul_Vp();
int assert_ret_Uc_Ul_Vp(){
    return assert_Uc_Ul_Vp(zig_ret_Uc_Ul_Vp());
}

int assert_Uc_Us(struct Uc_Us lv){
    int err = 0;
  if (lv.v1 != 11) err = 1;
  if (lv.v2 != 20664) err = 2;
  return err;
}
struct Uc_Us ret_Uc_Us(){
    struct Uc_Us lv = { .v1 = 11, .v2 = 20664 };
    return lv;
}
int zig_assert_Uc_Us(struct Uc_Us);
int send_Uc_Us(){
    return zig_assert_Uc_Us(ret_Uc_Us());
}
struct Uc_Us zig_ret_Uc_Us();
int assert_ret_Uc_Us(){
    return assert_Uc_Us(zig_ret_Uc_Us());
}

int assert_Uc_Us_C(struct Uc_Us_C lv){
    int err = 0;
  if (lv.v1 != 66) err = 1;
  if (lv.v2 != 16863) err = 2;
  if (lv.v3 != 105) err = 3;
  return err;
}
struct Uc_Us_C ret_Uc_Us_C(){
    struct Uc_Us_C lv = { .v1 = 66, .v2 = 16863, .v3 = 105 };
    return lv;
}
int zig_assert_Uc_Us_C(struct Uc_Us_C);
int send_Uc_Us_C(){
    return zig_assert_Uc_Us_C(ret_Uc_Us_C());
}
struct Uc_Us_C zig_ret_Uc_Us_C();
int assert_ret_Uc_Us_C(){
    return assert_Uc_Us_C(zig_ret_Uc_Us_C());
}

int assert_Uc_Us_D(struct Uc_Us_D lv){
    int err = 0;
  if (lv.v1 != 109) err = 1;
  if (lv.v2 != 4777) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Uc_Us_D ret_Uc_Us_D(){
    struct Uc_Us_D lv = { .v1 = 109, .v2 = 4777, .v3 = 0.875 };
    return lv;
}
int zig_assert_Uc_Us_D(struct Uc_Us_D);
int send_Uc_Us_D(){
    return zig_assert_Uc_Us_D(ret_Uc_Us_D());
}
struct Uc_Us_D zig_ret_Uc_Us_D();
int assert_ret_Uc_Us_D(){
    return assert_Uc_Us_D(zig_ret_Uc_Us_D());
}

int assert_Uc_Us_F(struct Uc_Us_F lv){
    int err = 0;
  if (lv.v1 != 56) err = 1;
  if (lv.v2 != 24913) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Uc_Us_F ret_Uc_Us_F(){
    struct Uc_Us_F lv = { .v1 = 56, .v2 = 24913, .v3 = 0.875 };
    return lv;
}
int zig_assert_Uc_Us_F(struct Uc_Us_F);
int send_Uc_Us_F(){
    return zig_assert_Uc_Us_F(ret_Uc_Us_F());
}
struct Uc_Us_F zig_ret_Uc_Us_F();
int assert_ret_Uc_Us_F(){
    return assert_Uc_Us_F(zig_ret_Uc_Us_F());
}

int assert_Uc_Us_I(struct Uc_Us_I lv){
    int err = 0;
  if (lv.v1 != 68) err = 1;
  if (lv.v2 != 16847) err = 2;
  if (lv.v3 != 29863) err = 3;
  return err;
}
struct Uc_Us_I ret_Uc_Us_I(){
    struct Uc_Us_I lv = { .v1 = 68, .v2 = 16847, .v3 = 29863 };
    return lv;
}
int zig_assert_Uc_Us_I(struct Uc_Us_I);
int send_Uc_Us_I(){
    return zig_assert_Uc_Us_I(ret_Uc_Us_I());
}
struct Uc_Us_I zig_ret_Uc_Us_I();
int assert_ret_Uc_Us_I(){
    return assert_Uc_Us_I(zig_ret_Uc_Us_I());
}

int assert_Uc_Us_Ip(struct Uc_Us_Ip lv){
    int err = 0;
  if (lv.v1 != 104) err = 1;
  if (lv.v2 != 19355) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Us_Ip ret_Uc_Us_Ip(){
    struct Uc_Us_Ip lv = { .v1 = 104, .v2 = 19355, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Us_Ip(struct Uc_Us_Ip);
int send_Uc_Us_Ip(){
    return zig_assert_Uc_Us_Ip(ret_Uc_Us_Ip());
}
struct Uc_Us_Ip zig_ret_Uc_Us_Ip();
int assert_ret_Uc_Us_Ip(){
    return assert_Uc_Us_Ip(zig_ret_Uc_Us_Ip());
}

int assert_Uc_Us_L(struct Uc_Us_L lv){
    int err = 0;
  if (lv.v1 != 118) err = 1;
  if (lv.v2 != 31733) err = 2;
  if (lv.v3 != 29196) err = 3;
  return err;
}
struct Uc_Us_L ret_Uc_Us_L(){
    struct Uc_Us_L lv = { .v1 = 118, .v2 = 31733, .v3 = 29196 };
    return lv;
}
int zig_assert_Uc_Us_L(struct Uc_Us_L);
int send_Uc_Us_L(){
    return zig_assert_Uc_Us_L(ret_Uc_Us_L());
}
struct Uc_Us_L zig_ret_Uc_Us_L();
int assert_ret_Uc_Us_L(){
    return assert_Uc_Us_L(zig_ret_Uc_Us_L());
}

int assert_Uc_Us_S(struct Uc_Us_S lv){
    int err = 0;
  if (lv.v1 != 58) err = 1;
  if (lv.v2 != 1589) err = 2;
  if (lv.v3 != 9859) err = 3;
  return err;
}
struct Uc_Us_S ret_Uc_Us_S(){
    struct Uc_Us_S lv = { .v1 = 58, .v2 = 1589, .v3 = 9859 };
    return lv;
}
int zig_assert_Uc_Us_S(struct Uc_Us_S);
int send_Uc_Us_S(){
    return zig_assert_Uc_Us_S(ret_Uc_Us_S());
}
struct Uc_Us_S zig_ret_Uc_Us_S();
int assert_ret_Uc_Us_S(){
    return assert_Uc_Us_S(zig_ret_Uc_Us_S());
}

int assert_Uc_Us_Uc(struct Uc_Us_Uc lv){
    int err = 0;
  if (lv.v1 != 25) err = 1;
  if (lv.v2 != 20741) err = 2;
  if (lv.v3 != 20) err = 3;
  return err;
}
struct Uc_Us_Uc ret_Uc_Us_Uc(){
    struct Uc_Us_Uc lv = { .v1 = 25, .v2 = 20741, .v3 = 20 };
    return lv;
}
int zig_assert_Uc_Us_Uc(struct Uc_Us_Uc);
int send_Uc_Us_Uc(){
    return zig_assert_Uc_Us_Uc(ret_Uc_Us_Uc());
}
struct Uc_Us_Uc zig_ret_Uc_Us_Uc();
int assert_ret_Uc_Us_Uc(){
    return assert_Uc_Us_Uc(zig_ret_Uc_Us_Uc());
}

int assert_Uc_Us_Ui(struct Uc_Us_Ui lv){
    int err = 0;
  if (lv.v1 != 15) err = 1;
  if (lv.v2 != 22487) err = 2;
  if (lv.v3 != 26117) err = 3;
  return err;
}
struct Uc_Us_Ui ret_Uc_Us_Ui(){
    struct Uc_Us_Ui lv = { .v1 = 15, .v2 = 22487, .v3 = 26117 };
    return lv;
}
int zig_assert_Uc_Us_Ui(struct Uc_Us_Ui);
int send_Uc_Us_Ui(){
    return zig_assert_Uc_Us_Ui(ret_Uc_Us_Ui());
}
struct Uc_Us_Ui zig_ret_Uc_Us_Ui();
int assert_ret_Uc_Us_Ui(){
    return assert_Uc_Us_Ui(zig_ret_Uc_Us_Ui());
}

int assert_Uc_Us_Ul(struct Uc_Us_Ul lv){
    int err = 0;
  if (lv.v1 != 23) err = 1;
  if (lv.v2 != 17738) err = 2;
  if (lv.v3 != 19845) err = 3;
  return err;
}
struct Uc_Us_Ul ret_Uc_Us_Ul(){
    struct Uc_Us_Ul lv = { .v1 = 23, .v2 = 17738, .v3 = 19845 };
    return lv;
}
int zig_assert_Uc_Us_Ul(struct Uc_Us_Ul);
int send_Uc_Us_Ul(){
    return zig_assert_Uc_Us_Ul(ret_Uc_Us_Ul());
}
struct Uc_Us_Ul zig_ret_Uc_Us_Ul();
int assert_ret_Uc_Us_Ul(){
    return assert_Uc_Us_Ul(zig_ret_Uc_Us_Ul());
}

int assert_Uc_Us_Us(struct Uc_Us_Us lv){
    int err = 0;
  if (lv.v1 != 100) err = 1;
  if (lv.v2 != 4864) err = 2;
  if (lv.v3 != 3212) err = 3;
  return err;
}
struct Uc_Us_Us ret_Uc_Us_Us(){
    struct Uc_Us_Us lv = { .v1 = 100, .v2 = 4864, .v3 = 3212 };
    return lv;
}
int zig_assert_Uc_Us_Us(struct Uc_Us_Us);
int send_Uc_Us_Us(){
    return zig_assert_Uc_Us_Us(ret_Uc_Us_Us());
}
struct Uc_Us_Us zig_ret_Uc_Us_Us();
int assert_ret_Uc_Us_Us(){
    return assert_Uc_Us_Us(zig_ret_Uc_Us_Us());
}

int assert_Uc_Us_Vp(struct Uc_Us_Vp lv){
    int err = 0;
  if (lv.v1 != 63) err = 1;
  if (lv.v2 != 3507) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Us_Vp ret_Uc_Us_Vp(){
    struct Uc_Us_Vp lv = { .v1 = 63, .v2 = 3507, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Us_Vp(struct Uc_Us_Vp);
int send_Uc_Us_Vp(){
    return zig_assert_Uc_Us_Vp(ret_Uc_Us_Vp());
}
struct Uc_Us_Vp zig_ret_Uc_Us_Vp();
int assert_ret_Uc_Us_Vp(){
    return assert_Uc_Us_Vp(zig_ret_Uc_Us_Vp());
}

int assert_Uc_Vp(struct Uc_Vp lv){
    int err = 0;
  if (lv.v1 != 56) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Uc_Vp ret_Uc_Vp(){
    struct Uc_Vp lv = { .v1 = 56, .v2 = 0 };
    return lv;
}
int zig_assert_Uc_Vp(struct Uc_Vp);
int send_Uc_Vp(){
    return zig_assert_Uc_Vp(ret_Uc_Vp());
}
struct Uc_Vp zig_ret_Uc_Vp();
int assert_ret_Uc_Vp(){
    return assert_Uc_Vp(zig_ret_Uc_Vp());
}

int assert_Uc_Vp_C(struct Uc_Vp_C lv){
    int err = 0;
  if (lv.v1 != 76) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 63) err = 3;
  return err;
}
struct Uc_Vp_C ret_Uc_Vp_C(){
    struct Uc_Vp_C lv = { .v1 = 76, .v2 = 0, .v3 = 63 };
    return lv;
}
int zig_assert_Uc_Vp_C(struct Uc_Vp_C);
int send_Uc_Vp_C(){
    return zig_assert_Uc_Vp_C(ret_Uc_Vp_C());
}
struct Uc_Vp_C zig_ret_Uc_Vp_C();
int assert_ret_Uc_Vp_C(){
    return assert_Uc_Vp_C(zig_ret_Uc_Vp_C());
}

int assert_Uc_Vp_D(struct Uc_Vp_D lv){
    int err = 0;
  if (lv.v1 != 111) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Uc_Vp_D ret_Uc_Vp_D(){
    struct Uc_Vp_D lv = { .v1 = 111, .v2 = 0, .v3 = 0.875 };
    return lv;
}
int zig_assert_Uc_Vp_D(struct Uc_Vp_D);
int send_Uc_Vp_D(){
    return zig_assert_Uc_Vp_D(ret_Uc_Vp_D());
}
struct Uc_Vp_D zig_ret_Uc_Vp_D();
int assert_ret_Uc_Vp_D(){
    return assert_Uc_Vp_D(zig_ret_Uc_Vp_D());
}

int assert_Uc_Vp_F(struct Uc_Vp_F lv){
    int err = 0;
  if (lv.v1 != 26) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Uc_Vp_F ret_Uc_Vp_F(){
    struct Uc_Vp_F lv = { .v1 = 26, .v2 = 0, .v3 = -2.125 };
    return lv;
}
int zig_assert_Uc_Vp_F(struct Uc_Vp_F);
int send_Uc_Vp_F(){
    return zig_assert_Uc_Vp_F(ret_Uc_Vp_F());
}
struct Uc_Vp_F zig_ret_Uc_Vp_F();
int assert_ret_Uc_Vp_F(){
    return assert_Uc_Vp_F(zig_ret_Uc_Vp_F());
}

int assert_Uc_Vp_I(struct Uc_Vp_I lv){
    int err = 0;
  if (lv.v1 != 69) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 31332) err = 3;
  return err;
}
struct Uc_Vp_I ret_Uc_Vp_I(){
    struct Uc_Vp_I lv = { .v1 = 69, .v2 = 0, .v3 = 31332 };
    return lv;
}
int zig_assert_Uc_Vp_I(struct Uc_Vp_I);
int send_Uc_Vp_I(){
    return zig_assert_Uc_Vp_I(ret_Uc_Vp_I());
}
struct Uc_Vp_I zig_ret_Uc_Vp_I();
int assert_ret_Uc_Vp_I(){
    return assert_Uc_Vp_I(zig_ret_Uc_Vp_I());
}

int assert_Uc_Vp_Ip(struct Uc_Vp_Ip lv){
    int err = 0;
  if (lv.v1 != 125) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Vp_Ip ret_Uc_Vp_Ip(){
    struct Uc_Vp_Ip lv = { .v1 = 125, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Vp_Ip(struct Uc_Vp_Ip);
int send_Uc_Vp_Ip(){
    return zig_assert_Uc_Vp_Ip(ret_Uc_Vp_Ip());
}
struct Uc_Vp_Ip zig_ret_Uc_Vp_Ip();
int assert_ret_Uc_Vp_Ip(){
    return assert_Uc_Vp_Ip(zig_ret_Uc_Vp_Ip());
}

int assert_Uc_Vp_L(struct Uc_Vp_L lv){
    int err = 0;
  if (lv.v1 != 64) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 243) err = 3;
  return err;
}
struct Uc_Vp_L ret_Uc_Vp_L(){
    struct Uc_Vp_L lv = { .v1 = 64, .v2 = 0, .v3 = 243 };
    return lv;
}
int zig_assert_Uc_Vp_L(struct Uc_Vp_L);
int send_Uc_Vp_L(){
    return zig_assert_Uc_Vp_L(ret_Uc_Vp_L());
}
struct Uc_Vp_L zig_ret_Uc_Vp_L();
int assert_ret_Uc_Vp_L(){
    return assert_Uc_Vp_L(zig_ret_Uc_Vp_L());
}

int assert_Uc_Vp_S(struct Uc_Vp_S lv){
    int err = 0;
  if (lv.v1 != 2) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 25419) err = 3;
  return err;
}
struct Uc_Vp_S ret_Uc_Vp_S(){
    struct Uc_Vp_S lv = { .v1 = 2, .v2 = 0, .v3 = 25419 };
    return lv;
}
int zig_assert_Uc_Vp_S(struct Uc_Vp_S);
int send_Uc_Vp_S(){
    return zig_assert_Uc_Vp_S(ret_Uc_Vp_S());
}
struct Uc_Vp_S zig_ret_Uc_Vp_S();
int assert_ret_Uc_Vp_S(){
    return assert_Uc_Vp_S(zig_ret_Uc_Vp_S());
}

int assert_Uc_Vp_Uc(struct Uc_Vp_Uc lv){
    int err = 0;
  if (lv.v1 != 113) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 51) err = 3;
  return err;
}
struct Uc_Vp_Uc ret_Uc_Vp_Uc(){
    struct Uc_Vp_Uc lv = { .v1 = 113, .v2 = 0, .v3 = 51 };
    return lv;
}
int zig_assert_Uc_Vp_Uc(struct Uc_Vp_Uc);
int send_Uc_Vp_Uc(){
    return zig_assert_Uc_Vp_Uc(ret_Uc_Vp_Uc());
}
struct Uc_Vp_Uc zig_ret_Uc_Vp_Uc();
int assert_ret_Uc_Vp_Uc(){
    return assert_Uc_Vp_Uc(zig_ret_Uc_Vp_Uc());
}

int assert_Uc_Vp_Ui(struct Uc_Vp_Ui lv){
    int err = 0;
  if (lv.v1 != 126) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 438) err = 3;
  return err;
}
struct Uc_Vp_Ui ret_Uc_Vp_Ui(){
    struct Uc_Vp_Ui lv = { .v1 = 126, .v2 = 0, .v3 = 438 };
    return lv;
}
int zig_assert_Uc_Vp_Ui(struct Uc_Vp_Ui);
int send_Uc_Vp_Ui(){
    return zig_assert_Uc_Vp_Ui(ret_Uc_Vp_Ui());
}
struct Uc_Vp_Ui zig_ret_Uc_Vp_Ui();
int assert_ret_Uc_Vp_Ui(){
    return assert_Uc_Vp_Ui(zig_ret_Uc_Vp_Ui());
}

int assert_Uc_Vp_Ul(struct Uc_Vp_Ul lv){
    int err = 0;
  if (lv.v1 != 42) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 8304) err = 3;
  return err;
}
struct Uc_Vp_Ul ret_Uc_Vp_Ul(){
    struct Uc_Vp_Ul lv = { .v1 = 42, .v2 = 0, .v3 = 8304 };
    return lv;
}
int zig_assert_Uc_Vp_Ul(struct Uc_Vp_Ul);
int send_Uc_Vp_Ul(){
    return zig_assert_Uc_Vp_Ul(ret_Uc_Vp_Ul());
}
struct Uc_Vp_Ul zig_ret_Uc_Vp_Ul();
int assert_ret_Uc_Vp_Ul(){
    return assert_Uc_Vp_Ul(zig_ret_Uc_Vp_Ul());
}

int assert_Uc_Vp_Us(struct Uc_Vp_Us lv){
    int err = 0;
  if (lv.v1 != 67) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 32011) err = 3;
  return err;
}
struct Uc_Vp_Us ret_Uc_Vp_Us(){
    struct Uc_Vp_Us lv = { .v1 = 67, .v2 = 0, .v3 = 32011 };
    return lv;
}
int zig_assert_Uc_Vp_Us(struct Uc_Vp_Us);
int send_Uc_Vp_Us(){
    return zig_assert_Uc_Vp_Us(ret_Uc_Vp_Us());
}
struct Uc_Vp_Us zig_ret_Uc_Vp_Us();
int assert_ret_Uc_Vp_Us(){
    return assert_Uc_Vp_Us(zig_ret_Uc_Vp_Us());
}

int assert_Uc_Vp_Vp(struct Uc_Vp_Vp lv){
    int err = 0;
  if (lv.v1 != 63) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Vp_Vp ret_Uc_Vp_Vp(){
    struct Uc_Vp_Vp lv = { .v1 = 63, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Vp_Vp(struct Uc_Vp_Vp);
int send_Uc_Vp_Vp(){
    return zig_assert_Uc_Vp_Vp(ret_Uc_Vp_Vp());
}
struct Uc_Vp_Vp zig_ret_Uc_Vp_Vp();
int assert_ret_Uc_Vp_Vp(){
    return assert_Uc_Vp_Vp(zig_ret_Uc_Vp_Vp());
}

int assert_Ui(struct Ui lv){
    int err = 0;
  if (lv.v1 != 21566) err = 1;
  return err;
}
struct Ui ret_Ui(){
    struct Ui lv = { .v1 = 21566 };
    return lv;
}
int zig_assert_Ui(struct Ui);
int send_Ui(){
    return zig_assert_Ui(ret_Ui());
}
struct Ui zig_ret_Ui();
int assert_ret_Ui(){
    return assert_Ui(zig_ret_Ui());
}

int assert_Ui_C(struct Ui_C lv){
    int err = 0;
  if (lv.v1 != 5325) err = 1;
  if (lv.v2 != 119) err = 2;
  return err;
}
struct Ui_C ret_Ui_C(){
    struct Ui_C lv = { .v1 = 5325, .v2 = 119 };
    return lv;
}
int zig_assert_Ui_C(struct Ui_C);
int send_Ui_C(){
    return zig_assert_Ui_C(ret_Ui_C());
}
struct Ui_C zig_ret_Ui_C();
int assert_ret_Ui_C(){
    return assert_Ui_C(zig_ret_Ui_C());
}

int assert_Ui_C_C(struct Ui_C_C lv){
    int err = 0;
  if (lv.v1 != 2074) err = 1;
  if (lv.v2 != 30) err = 2;
  if (lv.v3 != 98) err = 3;
  return err;
}
struct Ui_C_C ret_Ui_C_C(){
    struct Ui_C_C lv = { .v1 = 2074, .v2 = 30, .v3 = 98 };
    return lv;
}
int zig_assert_Ui_C_C(struct Ui_C_C);
int send_Ui_C_C(){
    return zig_assert_Ui_C_C(ret_Ui_C_C());
}
struct Ui_C_C zig_ret_Ui_C_C();
int assert_ret_Ui_C_C(){
    return assert_Ui_C_C(zig_ret_Ui_C_C());
}

int assert_Ui_C_D(struct Ui_C_D lv){
    int err = 0;
  if (lv.v1 != 20111) err = 1;
  if (lv.v2 != 51) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Ui_C_D ret_Ui_C_D(){
    struct Ui_C_D lv = { .v1 = 20111, .v2 = 51, .v3 = -2.125 };
    return lv;
}
int zig_assert_Ui_C_D(struct Ui_C_D);
int send_Ui_C_D(){
    return zig_assert_Ui_C_D(ret_Ui_C_D());
}
struct Ui_C_D zig_ret_Ui_C_D();
int assert_ret_Ui_C_D(){
    return assert_Ui_C_D(zig_ret_Ui_C_D());
}

int assert_Ui_C_F(struct Ui_C_F lv){
    int err = 0;
  if (lv.v1 != 4499) err = 1;
  if (lv.v2 != 63) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Ui_C_F ret_Ui_C_F(){
    struct Ui_C_F lv = { .v1 = 4499, .v2 = 63, .v3 = 0.5 };
    return lv;
}
int zig_assert_Ui_C_F(struct Ui_C_F);
int send_Ui_C_F(){
    return zig_assert_Ui_C_F(ret_Ui_C_F());
}
struct Ui_C_F zig_ret_Ui_C_F();
int assert_ret_Ui_C_F(){
    return assert_Ui_C_F(zig_ret_Ui_C_F());
}

int assert_Ui_C_I(struct Ui_C_I lv){
    int err = 0;
  if (lv.v1 != 4844) err = 1;
  if (lv.v2 != 10) err = 2;
  if (lv.v3 != 26553) err = 3;
  return err;
}
struct Ui_C_I ret_Ui_C_I(){
    struct Ui_C_I lv = { .v1 = 4844, .v2 = 10, .v3 = 26553 };
    return lv;
}
int zig_assert_Ui_C_I(struct Ui_C_I);
int send_Ui_C_I(){
    return zig_assert_Ui_C_I(ret_Ui_C_I());
}
struct Ui_C_I zig_ret_Ui_C_I();
int assert_ret_Ui_C_I(){
    return assert_Ui_C_I(zig_ret_Ui_C_I());
}

int assert_Ui_C_Ip(struct Ui_C_Ip lv){
    int err = 0;
  if (lv.v1 != 26337) err = 1;
  if (lv.v2 != 121) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_C_Ip ret_Ui_C_Ip(){
    struct Ui_C_Ip lv = { .v1 = 26337, .v2 = 121, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_C_Ip(struct Ui_C_Ip);
int send_Ui_C_Ip(){
    return zig_assert_Ui_C_Ip(ret_Ui_C_Ip());
}
struct Ui_C_Ip zig_ret_Ui_C_Ip();
int assert_ret_Ui_C_Ip(){
    return assert_Ui_C_Ip(zig_ret_Ui_C_Ip());
}

int assert_Ui_C_L(struct Ui_C_L lv){
    int err = 0;
  if (lv.v1 != 2961) err = 1;
  if (lv.v2 != 67) err = 2;
  if (lv.v3 != 151) err = 3;
  return err;
}
struct Ui_C_L ret_Ui_C_L(){
    struct Ui_C_L lv = { .v1 = 2961, .v2 = 67, .v3 = 151 };
    return lv;
}
int zig_assert_Ui_C_L(struct Ui_C_L);
int send_Ui_C_L(){
    return zig_assert_Ui_C_L(ret_Ui_C_L());
}
struct Ui_C_L zig_ret_Ui_C_L();
int assert_ret_Ui_C_L(){
    return assert_Ui_C_L(zig_ret_Ui_C_L());
}

int assert_Ui_C_S(struct Ui_C_S lv){
    int err = 0;
  if (lv.v1 != 10462) err = 1;
  if (lv.v2 != 51) err = 2;
  if (lv.v3 != 15361) err = 3;
  return err;
}
struct Ui_C_S ret_Ui_C_S(){
    struct Ui_C_S lv = { .v1 = 10462, .v2 = 51, .v3 = 15361 };
    return lv;
}
int zig_assert_Ui_C_S(struct Ui_C_S);
int send_Ui_C_S(){
    return zig_assert_Ui_C_S(ret_Ui_C_S());
}
struct Ui_C_S zig_ret_Ui_C_S();
int assert_ret_Ui_C_S(){
    return assert_Ui_C_S(zig_ret_Ui_C_S());
}

int assert_Ui_C_Uc(struct Ui_C_Uc lv){
    int err = 0;
  if (lv.v1 != 2638) err = 1;
  if (lv.v2 != 20) err = 2;
  if (lv.v3 != 80) err = 3;
  return err;
}
struct Ui_C_Uc ret_Ui_C_Uc(){
    struct Ui_C_Uc lv = { .v1 = 2638, .v2 = 20, .v3 = 80 };
    return lv;
}
int zig_assert_Ui_C_Uc(struct Ui_C_Uc);
int send_Ui_C_Uc(){
    return zig_assert_Ui_C_Uc(ret_Ui_C_Uc());
}
struct Ui_C_Uc zig_ret_Ui_C_Uc();
int assert_ret_Ui_C_Uc(){
    return assert_Ui_C_Uc(zig_ret_Ui_C_Uc());
}

int assert_Ui_C_Ui(struct Ui_C_Ui lv){
    int err = 0;
  if (lv.v1 != 29478) err = 1;
  if (lv.v2 != 57) err = 2;
  if (lv.v3 != 22998) err = 3;
  return err;
}
struct Ui_C_Ui ret_Ui_C_Ui(){
    struct Ui_C_Ui lv = { .v1 = 29478, .v2 = 57, .v3 = 22998 };
    return lv;
}
int zig_assert_Ui_C_Ui(struct Ui_C_Ui);
int send_Ui_C_Ui(){
    return zig_assert_Ui_C_Ui(ret_Ui_C_Ui());
}
struct Ui_C_Ui zig_ret_Ui_C_Ui();
int assert_ret_Ui_C_Ui(){
    return assert_Ui_C_Ui(zig_ret_Ui_C_Ui());
}

int assert_Ui_C_Ul(struct Ui_C_Ul lv){
    int err = 0;
  if (lv.v1 != 19449) err = 1;
  if (lv.v2 != 47) err = 2;
  if (lv.v3 != 7381) err = 3;
  return err;
}
struct Ui_C_Ul ret_Ui_C_Ul(){
    struct Ui_C_Ul lv = { .v1 = 19449, .v2 = 47, .v3 = 7381 };
    return lv;
}
int zig_assert_Ui_C_Ul(struct Ui_C_Ul);
int send_Ui_C_Ul(){
    return zig_assert_Ui_C_Ul(ret_Ui_C_Ul());
}
struct Ui_C_Ul zig_ret_Ui_C_Ul();
int assert_ret_Ui_C_Ul(){
    return assert_Ui_C_Ul(zig_ret_Ui_C_Ul());
}

int assert_Ui_C_Us(struct Ui_C_Us lv){
    int err = 0;
  if (lv.v1 != 31946) err = 1;
  if (lv.v2 != 14) err = 2;
  if (lv.v3 != 8587) err = 3;
  return err;
}
struct Ui_C_Us ret_Ui_C_Us(){
    struct Ui_C_Us lv = { .v1 = 31946, .v2 = 14, .v3 = 8587 };
    return lv;
}
int zig_assert_Ui_C_Us(struct Ui_C_Us);
int send_Ui_C_Us(){
    return zig_assert_Ui_C_Us(ret_Ui_C_Us());
}
struct Ui_C_Us zig_ret_Ui_C_Us();
int assert_ret_Ui_C_Us(){
    return assert_Ui_C_Us(zig_ret_Ui_C_Us());
}

int assert_Ui_C_Vp(struct Ui_C_Vp lv){
    int err = 0;
  if (lv.v1 != 29098) err = 1;
  if (lv.v2 != 38) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_C_Vp ret_Ui_C_Vp(){
    struct Ui_C_Vp lv = { .v1 = 29098, .v2 = 38, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_C_Vp(struct Ui_C_Vp);
int send_Ui_C_Vp(){
    return zig_assert_Ui_C_Vp(ret_Ui_C_Vp());
}
struct Ui_C_Vp zig_ret_Ui_C_Vp();
int assert_ret_Ui_C_Vp(){
    return assert_Ui_C_Vp(zig_ret_Ui_C_Vp());
}

int assert_Ui_D(struct Ui_D lv){
    int err = 0;
  if (lv.v1 != 315) err = 1;
  if (lv.v2 != 4.5) err = 2;
  return err;
}
struct Ui_D ret_Ui_D(){
    struct Ui_D lv = { .v1 = 315, .v2 = 4.5 };
    return lv;
}
int zig_assert_Ui_D(struct Ui_D);
int send_Ui_D(){
    return zig_assert_Ui_D(ret_Ui_D());
}
struct Ui_D zig_ret_Ui_D();
int assert_ret_Ui_D(){
    return assert_Ui_D(zig_ret_Ui_D());
}

int assert_Ui_D_C(struct Ui_D_C lv){
    int err = 0;
  if (lv.v1 != 16474) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 96) err = 3;
  return err;
}
struct Ui_D_C ret_Ui_D_C(){
    struct Ui_D_C lv = { .v1 = 16474, .v2 = 0.5, .v3 = 96 };
    return lv;
}
int zig_assert_Ui_D_C(struct Ui_D_C);
int send_Ui_D_C(){
    return zig_assert_Ui_D_C(ret_Ui_D_C());
}
struct Ui_D_C zig_ret_Ui_D_C();
int assert_ret_Ui_D_C(){
    return assert_Ui_D_C(zig_ret_Ui_D_C());
}

int assert_Ui_D_D(struct Ui_D_D lv){
    int err = 0;
  if (lv.v1 != 25546) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Ui_D_D ret_Ui_D_D(){
    struct Ui_D_D lv = { .v1 = 25546, .v2 = 1.0, .v3 = -2.125 };
    return lv;
}
int zig_assert_Ui_D_D(struct Ui_D_D);
int send_Ui_D_D(){
    return zig_assert_Ui_D_D(ret_Ui_D_D());
}
struct Ui_D_D zig_ret_Ui_D_D();
int assert_ret_Ui_D_D(){
    return assert_Ui_D_D(zig_ret_Ui_D_D());
}

int assert_Ui_D_F(struct Ui_D_F lv){
    int err = 0;
  if (lv.v1 != 29141) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Ui_D_F ret_Ui_D_F(){
    struct Ui_D_F lv = { .v1 = 29141, .v2 = -2.125, .v3 = 0.5 };
    return lv;
}
int zig_assert_Ui_D_F(struct Ui_D_F);
int send_Ui_D_F(){
    return zig_assert_Ui_D_F(ret_Ui_D_F());
}
struct Ui_D_F zig_ret_Ui_D_F();
int assert_ret_Ui_D_F(){
    return assert_Ui_D_F(zig_ret_Ui_D_F());
}

int assert_Ui_D_I(struct Ui_D_I lv){
    int err = 0;
  if (lv.v1 != 1975) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 5749) err = 3;
  return err;
}
struct Ui_D_I ret_Ui_D_I(){
    struct Ui_D_I lv = { .v1 = 1975, .v2 = -2.125, .v3 = 5749 };
    return lv;
}
int zig_assert_Ui_D_I(struct Ui_D_I);
int send_Ui_D_I(){
    return zig_assert_Ui_D_I(ret_Ui_D_I());
}
struct Ui_D_I zig_ret_Ui_D_I();
int assert_ret_Ui_D_I(){
    return assert_Ui_D_I(zig_ret_Ui_D_I());
}

int assert_Ui_D_Ip(struct Ui_D_Ip lv){
    int err = 0;
  if (lv.v1 != 16414) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_D_Ip ret_Ui_D_Ip(){
    struct Ui_D_Ip lv = { .v1 = 16414, .v2 = -2.125, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_D_Ip(struct Ui_D_Ip);
int send_Ui_D_Ip(){
    return zig_assert_Ui_D_Ip(ret_Ui_D_Ip());
}
struct Ui_D_Ip zig_ret_Ui_D_Ip();
int assert_ret_Ui_D_Ip(){
    return assert_Ui_D_Ip(zig_ret_Ui_D_Ip());
}

int assert_Ui_D_L(struct Ui_D_L lv){
    int err = 0;
  if (lv.v1 != 4261) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 28898) err = 3;
  return err;
}
struct Ui_D_L ret_Ui_D_L(){
    struct Ui_D_L lv = { .v1 = 4261, .v2 = 0.5, .v3 = 28898 };
    return lv;
}
int zig_assert_Ui_D_L(struct Ui_D_L);
int send_Ui_D_L(){
    return zig_assert_Ui_D_L(ret_Ui_D_L());
}
struct Ui_D_L zig_ret_Ui_D_L();
int assert_ret_Ui_D_L(){
    return assert_Ui_D_L(zig_ret_Ui_D_L());
}

int assert_Ui_D_S(struct Ui_D_S lv){
    int err = 0;
  if (lv.v1 != 15608) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 13134) err = 3;
  return err;
}
struct Ui_D_S ret_Ui_D_S(){
    struct Ui_D_S lv = { .v1 = 15608, .v2 = 1.0, .v3 = 13134 };
    return lv;
}
int zig_assert_Ui_D_S(struct Ui_D_S);
int send_Ui_D_S(){
    return zig_assert_Ui_D_S(ret_Ui_D_S());
}
struct Ui_D_S zig_ret_Ui_D_S();
int assert_ret_Ui_D_S(){
    return assert_Ui_D_S(zig_ret_Ui_D_S());
}

int assert_Ui_D_Uc(struct Ui_D_Uc lv){
    int err = 0;
  if (lv.v1 != 24011) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 44) err = 3;
  return err;
}
struct Ui_D_Uc ret_Ui_D_Uc(){
    struct Ui_D_Uc lv = { .v1 = 24011, .v2 = 0.5, .v3 = 44 };
    return lv;
}
int zig_assert_Ui_D_Uc(struct Ui_D_Uc);
int send_Ui_D_Uc(){
    return zig_assert_Ui_D_Uc(ret_Ui_D_Uc());
}
struct Ui_D_Uc zig_ret_Ui_D_Uc();
int assert_ret_Ui_D_Uc(){
    return assert_Ui_D_Uc(zig_ret_Ui_D_Uc());
}

int assert_Ui_D_Ui(struct Ui_D_Ui lv){
    int err = 0;
  if (lv.v1 != 14071) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 27266) err = 3;
  return err;
}
struct Ui_D_Ui ret_Ui_D_Ui(){
    struct Ui_D_Ui lv = { .v1 = 14071, .v2 = -0.25, .v3 = 27266 };
    return lv;
}
int zig_assert_Ui_D_Ui(struct Ui_D_Ui);
int send_Ui_D_Ui(){
    return zig_assert_Ui_D_Ui(ret_Ui_D_Ui());
}
struct Ui_D_Ui zig_ret_Ui_D_Ui();
int assert_ret_Ui_D_Ui(){
    return assert_Ui_D_Ui(zig_ret_Ui_D_Ui());
}

int assert_Ui_D_Ul(struct Ui_D_Ul lv){
    int err = 0;
  if (lv.v1 != 30134) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 721) err = 3;
  return err;
}
struct Ui_D_Ul ret_Ui_D_Ul(){
    struct Ui_D_Ul lv = { .v1 = 30134, .v2 = -0.25, .v3 = 721 };
    return lv;
}
int zig_assert_Ui_D_Ul(struct Ui_D_Ul);
int send_Ui_D_Ul(){
    return zig_assert_Ui_D_Ul(ret_Ui_D_Ul());
}
struct Ui_D_Ul zig_ret_Ui_D_Ul();
int assert_ret_Ui_D_Ul(){
    return assert_Ui_D_Ul(zig_ret_Ui_D_Ul());
}

int assert_Ui_D_Us(struct Ui_D_Us lv){
    int err = 0;
  if (lv.v1 != 5768) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 27856) err = 3;
  return err;
}
struct Ui_D_Us ret_Ui_D_Us(){
    struct Ui_D_Us lv = { .v1 = 5768, .v2 = -0.25, .v3 = 27856 };
    return lv;
}
int zig_assert_Ui_D_Us(struct Ui_D_Us);
int send_Ui_D_Us(){
    return zig_assert_Ui_D_Us(ret_Ui_D_Us());
}
struct Ui_D_Us zig_ret_Ui_D_Us();
int assert_ret_Ui_D_Us(){
    return assert_Ui_D_Us(zig_ret_Ui_D_Us());
}

int assert_Ui_D_Vp(struct Ui_D_Vp lv){
    int err = 0;
  if (lv.v1 != 31578) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_D_Vp ret_Ui_D_Vp(){
    struct Ui_D_Vp lv = { .v1 = 31578, .v2 = 0.5, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_D_Vp(struct Ui_D_Vp);
int send_Ui_D_Vp(){
    return zig_assert_Ui_D_Vp(ret_Ui_D_Vp());
}
struct Ui_D_Vp zig_ret_Ui_D_Vp();
int assert_ret_Ui_D_Vp(){
    return assert_Ui_D_Vp(zig_ret_Ui_D_Vp());
}

int assert_Ui_F(struct Ui_F lv){
    int err = 0;
  if (lv.v1 != 14418) err = 1;
  if (lv.v2 != 1.0) err = 2;
  return err;
}
struct Ui_F ret_Ui_F(){
    struct Ui_F lv = { .v1 = 14418, .v2 = 1.0 };
    return lv;
}
int zig_assert_Ui_F(struct Ui_F);
int send_Ui_F(){
    return zig_assert_Ui_F(ret_Ui_F());
}
struct Ui_F zig_ret_Ui_F();
int assert_ret_Ui_F(){
    return assert_Ui_F(zig_ret_Ui_F());
}

int assert_Ui_F_C(struct Ui_F_C lv){
    int err = 0;
  if (lv.v1 != 32003) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 101) err = 3;
  return err;
}
struct Ui_F_C ret_Ui_F_C(){
    struct Ui_F_C lv = { .v1 = 32003, .v2 = 0.875, .v3 = 101 };
    return lv;
}
int zig_assert_Ui_F_C(struct Ui_F_C);
int send_Ui_F_C(){
    return zig_assert_Ui_F_C(ret_Ui_F_C());
}
struct Ui_F_C zig_ret_Ui_F_C();
int assert_ret_Ui_F_C(){
    return assert_Ui_F_C(zig_ret_Ui_F_C());
}

int assert_Ui_F_D(struct Ui_F_D lv){
    int err = 0;
  if (lv.v1 != 26497) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Ui_F_D ret_Ui_F_D(){
    struct Ui_F_D lv = { .v1 = 26497, .v2 = 0.5, .v3 = 0.5 };
    return lv;
}
int zig_assert_Ui_F_D(struct Ui_F_D);
int send_Ui_F_D(){
    return zig_assert_Ui_F_D(ret_Ui_F_D());
}
struct Ui_F_D zig_ret_Ui_F_D();
int assert_ret_Ui_F_D(){
    return assert_Ui_F_D(zig_ret_Ui_F_D());
}

int assert_Ui_F_F(struct Ui_F_F lv){
    int err = 0;
  if (lv.v1 != 11461) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Ui_F_F ret_Ui_F_F(){
    struct Ui_F_F lv = { .v1 = 11461, .v2 = 4.5, .v3 = -2.125 };
    return lv;
}
int zig_assert_Ui_F_F(struct Ui_F_F);
int send_Ui_F_F(){
    return zig_assert_Ui_F_F(ret_Ui_F_F());
}
struct Ui_F_F zig_ret_Ui_F_F();
int assert_ret_Ui_F_F(){
    return assert_Ui_F_F(zig_ret_Ui_F_F());
}

int assert_Ui_F_I(struct Ui_F_I lv){
    int err = 0;
  if (lv.v1 != 6626) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 6737) err = 3;
  return err;
}
struct Ui_F_I ret_Ui_F_I(){
    struct Ui_F_I lv = { .v1 = 6626, .v2 = -0.25, .v3 = 6737 };
    return lv;
}
int zig_assert_Ui_F_I(struct Ui_F_I);
int send_Ui_F_I(){
    return zig_assert_Ui_F_I(ret_Ui_F_I());
}
struct Ui_F_I zig_ret_Ui_F_I();
int assert_ret_Ui_F_I(){
    return assert_Ui_F_I(zig_ret_Ui_F_I());
}

int assert_Ui_F_Ip(struct Ui_F_Ip lv){
    int err = 0;
  if (lv.v1 != 23822) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_F_Ip ret_Ui_F_Ip(){
    struct Ui_F_Ip lv = { .v1 = 23822, .v2 = 1.0, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_F_Ip(struct Ui_F_Ip);
int send_Ui_F_Ip(){
    return zig_assert_Ui_F_Ip(ret_Ui_F_Ip());
}
struct Ui_F_Ip zig_ret_Ui_F_Ip();
int assert_ret_Ui_F_Ip(){
    return assert_Ui_F_Ip(zig_ret_Ui_F_Ip());
}

int assert_Ui_F_L(struct Ui_F_L lv){
    int err = 0;
  if (lv.v1 != 5702) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 4668) err = 3;
  return err;
}
struct Ui_F_L ret_Ui_F_L(){
    struct Ui_F_L lv = { .v1 = 5702, .v2 = 1.0, .v3 = 4668 };
    return lv;
}
int zig_assert_Ui_F_L(struct Ui_F_L);
int send_Ui_F_L(){
    return zig_assert_Ui_F_L(ret_Ui_F_L());
}
struct Ui_F_L zig_ret_Ui_F_L();
int assert_ret_Ui_F_L(){
    return assert_Ui_F_L(zig_ret_Ui_F_L());
}

int assert_Ui_F_S(struct Ui_F_S lv){
    int err = 0;
  if (lv.v1 != 18801) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 16) err = 3;
  return err;
}
struct Ui_F_S ret_Ui_F_S(){
    struct Ui_F_S lv = { .v1 = 18801, .v2 = -2.125, .v3 = 16 };
    return lv;
}
int zig_assert_Ui_F_S(struct Ui_F_S);
int send_Ui_F_S(){
    return zig_assert_Ui_F_S(ret_Ui_F_S());
}
struct Ui_F_S zig_ret_Ui_F_S();
int assert_ret_Ui_F_S(){
    return assert_Ui_F_S(zig_ret_Ui_F_S());
}

int assert_Ui_F_Uc(struct Ui_F_Uc lv){
    int err = 0;
  if (lv.v1 != 6275) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 13) err = 3;
  return err;
}
struct Ui_F_Uc ret_Ui_F_Uc(){
    struct Ui_F_Uc lv = { .v1 = 6275, .v2 = 7.0, .v3 = 13 };
    return lv;
}
int zig_assert_Ui_F_Uc(struct Ui_F_Uc);
int send_Ui_F_Uc(){
    return zig_assert_Ui_F_Uc(ret_Ui_F_Uc());
}
struct Ui_F_Uc zig_ret_Ui_F_Uc();
int assert_ret_Ui_F_Uc(){
    return assert_Ui_F_Uc(zig_ret_Ui_F_Uc());
}

int assert_Ui_F_Ui(struct Ui_F_Ui lv){
    int err = 0;
  if (lv.v1 != 19572) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 15260) err = 3;
  return err;
}
struct Ui_F_Ui ret_Ui_F_Ui(){
    struct Ui_F_Ui lv = { .v1 = 19572, .v2 = 1.0, .v3 = 15260 };
    return lv;
}
int zig_assert_Ui_F_Ui(struct Ui_F_Ui);
int send_Ui_F_Ui(){
    return zig_assert_Ui_F_Ui(ret_Ui_F_Ui());
}
struct Ui_F_Ui zig_ret_Ui_F_Ui();
int assert_ret_Ui_F_Ui(){
    return assert_Ui_F_Ui(zig_ret_Ui_F_Ui());
}

int assert_Ui_F_Ul(struct Ui_F_Ul lv){
    int err = 0;
  if (lv.v1 != 14594) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 12629) err = 3;
  return err;
}
struct Ui_F_Ul ret_Ui_F_Ul(){
    struct Ui_F_Ul lv = { .v1 = 14594, .v2 = 0.875, .v3 = 12629 };
    return lv;
}
int zig_assert_Ui_F_Ul(struct Ui_F_Ul);
int send_Ui_F_Ul(){
    return zig_assert_Ui_F_Ul(ret_Ui_F_Ul());
}
struct Ui_F_Ul zig_ret_Ui_F_Ul();
int assert_ret_Ui_F_Ul(){
    return assert_Ui_F_Ul(zig_ret_Ui_F_Ul());
}

int assert_Ui_F_Us(struct Ui_F_Us lv){
    int err = 0;
  if (lv.v1 != 5740) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 28004) err = 3;
  return err;
}
struct Ui_F_Us ret_Ui_F_Us(){
    struct Ui_F_Us lv = { .v1 = 5740, .v2 = 4.5, .v3 = 28004 };
    return lv;
}
int zig_assert_Ui_F_Us(struct Ui_F_Us);
int send_Ui_F_Us(){
    return zig_assert_Ui_F_Us(ret_Ui_F_Us());
}
struct Ui_F_Us zig_ret_Ui_F_Us();
int assert_ret_Ui_F_Us(){
    return assert_Ui_F_Us(zig_ret_Ui_F_Us());
}

int assert_Ui_F_Vp(struct Ui_F_Vp lv){
    int err = 0;
  if (lv.v1 != 7191) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_F_Vp ret_Ui_F_Vp(){
    struct Ui_F_Vp lv = { .v1 = 7191, .v2 = -0.25, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_F_Vp(struct Ui_F_Vp);
int send_Ui_F_Vp(){
    return zig_assert_Ui_F_Vp(ret_Ui_F_Vp());
}
struct Ui_F_Vp zig_ret_Ui_F_Vp();
int assert_ret_Ui_F_Vp(){
    return assert_Ui_F_Vp(zig_ret_Ui_F_Vp());
}

int assert_Ui_I(struct Ui_I lv){
    int err = 0;
  if (lv.v1 != 16186) err = 1;
  if (lv.v2 != 17720) err = 2;
  return err;
}
struct Ui_I ret_Ui_I(){
    struct Ui_I lv = { .v1 = 16186, .v2 = 17720 };
    return lv;
}
int zig_assert_Ui_I(struct Ui_I);
int send_Ui_I(){
    return zig_assert_Ui_I(ret_Ui_I());
}
struct Ui_I zig_ret_Ui_I();
int assert_ret_Ui_I(){
    return assert_Ui_I(zig_ret_Ui_I());
}

int assert_Ui_I_C(struct Ui_I_C lv){
    int err = 0;
  if (lv.v1 != 12173) err = 1;
  if (lv.v2 != 24063) err = 2;
  if (lv.v3 != 17) err = 3;
  return err;
}
struct Ui_I_C ret_Ui_I_C(){
    struct Ui_I_C lv = { .v1 = 12173, .v2 = 24063, .v3 = 17 };
    return lv;
}
int zig_assert_Ui_I_C(struct Ui_I_C);
int send_Ui_I_C(){
    return zig_assert_Ui_I_C(ret_Ui_I_C());
}
struct Ui_I_C zig_ret_Ui_I_C();
int assert_ret_Ui_I_C(){
    return assert_Ui_I_C(zig_ret_Ui_I_C());
}

int assert_Ui_I_D(struct Ui_I_D lv){
    int err = 0;
  if (lv.v1 != 23097) err = 1;
  if (lv.v2 != 29966) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Ui_I_D ret_Ui_I_D(){
    struct Ui_I_D lv = { .v1 = 23097, .v2 = 29966, .v3 = 4.5 };
    return lv;
}
int zig_assert_Ui_I_D(struct Ui_I_D);
int send_Ui_I_D(){
    return zig_assert_Ui_I_D(ret_Ui_I_D());
}
struct Ui_I_D zig_ret_Ui_I_D();
int assert_ret_Ui_I_D(){
    return assert_Ui_I_D(zig_ret_Ui_I_D());
}

int assert_Ui_I_F(struct Ui_I_F lv){
    int err = 0;
  if (lv.v1 != 25881) err = 1;
  if (lv.v2 != 8125) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Ui_I_F ret_Ui_I_F(){
    struct Ui_I_F lv = { .v1 = 25881, .v2 = 8125, .v3 = 4.5 };
    return lv;
}
int zig_assert_Ui_I_F(struct Ui_I_F);
int send_Ui_I_F(){
    return zig_assert_Ui_I_F(ret_Ui_I_F());
}
struct Ui_I_F zig_ret_Ui_I_F();
int assert_ret_Ui_I_F(){
    return assert_Ui_I_F(zig_ret_Ui_I_F());
}

int assert_Ui_I_I(struct Ui_I_I lv){
    int err = 0;
  if (lv.v1 != 17320) err = 1;
  if (lv.v2 != 21220) err = 2;
  if (lv.v3 != 31002) err = 3;
  return err;
}
struct Ui_I_I ret_Ui_I_I(){
    struct Ui_I_I lv = { .v1 = 17320, .v2 = 21220, .v3 = 31002 };
    return lv;
}
int zig_assert_Ui_I_I(struct Ui_I_I);
int send_Ui_I_I(){
    return zig_assert_Ui_I_I(ret_Ui_I_I());
}
struct Ui_I_I zig_ret_Ui_I_I();
int assert_ret_Ui_I_I(){
    return assert_Ui_I_I(zig_ret_Ui_I_I());
}

int assert_Ui_I_Ip(struct Ui_I_Ip lv){
    int err = 0;
  if (lv.v1 != 22775) err = 1;
  if (lv.v2 != 11882) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_I_Ip ret_Ui_I_Ip(){
    struct Ui_I_Ip lv = { .v1 = 22775, .v2 = 11882, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_I_Ip(struct Ui_I_Ip);
int send_Ui_I_Ip(){
    return zig_assert_Ui_I_Ip(ret_Ui_I_Ip());
}
struct Ui_I_Ip zig_ret_Ui_I_Ip();
int assert_ret_Ui_I_Ip(){
    return assert_Ui_I_Ip(zig_ret_Ui_I_Ip());
}

int assert_Ui_I_L(struct Ui_I_L lv){
    int err = 0;
  if (lv.v1 != 27000) err = 1;
  if (lv.v2 != 29131) err = 2;
  if (lv.v3 != 17961) err = 3;
  return err;
}
struct Ui_I_L ret_Ui_I_L(){
    struct Ui_I_L lv = { .v1 = 27000, .v2 = 29131, .v3 = 17961 };
    return lv;
}
int zig_assert_Ui_I_L(struct Ui_I_L);
int send_Ui_I_L(){
    return zig_assert_Ui_I_L(ret_Ui_I_L());
}
struct Ui_I_L zig_ret_Ui_I_L();
int assert_ret_Ui_I_L(){
    return assert_Ui_I_L(zig_ret_Ui_I_L());
}

int assert_Ui_I_S(struct Ui_I_S lv){
    int err = 0;
  if (lv.v1 != 5591) err = 1;
  if (lv.v2 != 6137) err = 2;
  if (lv.v3 != 15626) err = 3;
  return err;
}
struct Ui_I_S ret_Ui_I_S(){
    struct Ui_I_S lv = { .v1 = 5591, .v2 = 6137, .v3 = 15626 };
    return lv;
}
int zig_assert_Ui_I_S(struct Ui_I_S);
int send_Ui_I_S(){
    return zig_assert_Ui_I_S(ret_Ui_I_S());
}
struct Ui_I_S zig_ret_Ui_I_S();
int assert_ret_Ui_I_S(){
    return assert_Ui_I_S(zig_ret_Ui_I_S());
}

int assert_Ui_I_Uc(struct Ui_I_Uc lv){
    int err = 0;
  if (lv.v1 != 22976) err = 1;
  if (lv.v2 != 9458) err = 2;
  if (lv.v3 != 15) err = 3;
  return err;
}
struct Ui_I_Uc ret_Ui_I_Uc(){
    struct Ui_I_Uc lv = { .v1 = 22976, .v2 = 9458, .v3 = 15 };
    return lv;
}
int zig_assert_Ui_I_Uc(struct Ui_I_Uc);
int send_Ui_I_Uc(){
    return zig_assert_Ui_I_Uc(ret_Ui_I_Uc());
}
struct Ui_I_Uc zig_ret_Ui_I_Uc();
int assert_ret_Ui_I_Uc(){
    return assert_Ui_I_Uc(zig_ret_Ui_I_Uc());
}

int assert_Ui_I_Ui(struct Ui_I_Ui lv){
    int err = 0;
  if (lv.v1 != 18558) err = 1;
  if (lv.v2 != 4834) err = 2;
  if (lv.v3 != 26727) err = 3;
  return err;
}
struct Ui_I_Ui ret_Ui_I_Ui(){
    struct Ui_I_Ui lv = { .v1 = 18558, .v2 = 4834, .v3 = 26727 };
    return lv;
}
int zig_assert_Ui_I_Ui(struct Ui_I_Ui);
int send_Ui_I_Ui(){
    return zig_assert_Ui_I_Ui(ret_Ui_I_Ui());
}
struct Ui_I_Ui zig_ret_Ui_I_Ui();
int assert_ret_Ui_I_Ui(){
    return assert_Ui_I_Ui(zig_ret_Ui_I_Ui());
}

int assert_Ui_I_Ul(struct Ui_I_Ul lv){
    int err = 0;
  if (lv.v1 != 10972) err = 1;
  if (lv.v2 != 16539) err = 2;
  if (lv.v3 != 15979) err = 3;
  return err;
}
struct Ui_I_Ul ret_Ui_I_Ul(){
    struct Ui_I_Ul lv = { .v1 = 10972, .v2 = 16539, .v3 = 15979 };
    return lv;
}
int zig_assert_Ui_I_Ul(struct Ui_I_Ul);
int send_Ui_I_Ul(){
    return zig_assert_Ui_I_Ul(ret_Ui_I_Ul());
}
struct Ui_I_Ul zig_ret_Ui_I_Ul();
int assert_ret_Ui_I_Ul(){
    return assert_Ui_I_Ul(zig_ret_Ui_I_Ul());
}

int assert_Ui_I_Us(struct Ui_I_Us lv){
    int err = 0;
  if (lv.v1 != 2253) err = 1;
  if (lv.v2 != 31488) err = 2;
  if (lv.v3 != 9728) err = 3;
  return err;
}
struct Ui_I_Us ret_Ui_I_Us(){
    struct Ui_I_Us lv = { .v1 = 2253, .v2 = 31488, .v3 = 9728 };
    return lv;
}
int zig_assert_Ui_I_Us(struct Ui_I_Us);
int send_Ui_I_Us(){
    return zig_assert_Ui_I_Us(ret_Ui_I_Us());
}
struct Ui_I_Us zig_ret_Ui_I_Us();
int assert_ret_Ui_I_Us(){
    return assert_Ui_I_Us(zig_ret_Ui_I_Us());
}

int assert_Ui_I_Vp(struct Ui_I_Vp lv){
    int err = 0;
  if (lv.v1 != 29046) err = 1;
  if (lv.v2 != 1341) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_I_Vp ret_Ui_I_Vp(){
    struct Ui_I_Vp lv = { .v1 = 29046, .v2 = 1341, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_I_Vp(struct Ui_I_Vp);
int send_Ui_I_Vp(){
    return zig_assert_Ui_I_Vp(ret_Ui_I_Vp());
}
struct Ui_I_Vp zig_ret_Ui_I_Vp();
int assert_ret_Ui_I_Vp(){
    return assert_Ui_I_Vp(zig_ret_Ui_I_Vp());
}

int assert_Ui_Ip(struct Ui_Ip lv){
    int err = 0;
  if (lv.v1 != 15626) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Ui_Ip ret_Ui_Ip(){
    struct Ui_Ip lv = { .v1 = 15626, .v2 = 0 };
    return lv;
}
int zig_assert_Ui_Ip(struct Ui_Ip);
int send_Ui_Ip(){
    return zig_assert_Ui_Ip(ret_Ui_Ip());
}
struct Ui_Ip zig_ret_Ui_Ip();
int assert_ret_Ui_Ip(){
    return assert_Ui_Ip(zig_ret_Ui_Ip());
}

int assert_Ui_Ip_C(struct Ui_Ip_C lv){
    int err = 0;
  if (lv.v1 != 27402) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 92) err = 3;
  return err;
}
struct Ui_Ip_C ret_Ui_Ip_C(){
    struct Ui_Ip_C lv = { .v1 = 27402, .v2 = 0, .v3 = 92 };
    return lv;
}
int zig_assert_Ui_Ip_C(struct Ui_Ip_C);
int send_Ui_Ip_C(){
    return zig_assert_Ui_Ip_C(ret_Ui_Ip_C());
}
struct Ui_Ip_C zig_ret_Ui_Ip_C();
int assert_ret_Ui_Ip_C(){
    return assert_Ui_Ip_C(zig_ret_Ui_Ip_C());
}

int assert_Ui_Ip_D(struct Ui_Ip_D lv){
    int err = 0;
  if (lv.v1 != 10612) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Ui_Ip_D ret_Ui_Ip_D(){
    struct Ui_Ip_D lv = { .v1 = 10612, .v2 = 0, .v3 = 0.875 };
    return lv;
}
int zig_assert_Ui_Ip_D(struct Ui_Ip_D);
int send_Ui_Ip_D(){
    return zig_assert_Ui_Ip_D(ret_Ui_Ip_D());
}
struct Ui_Ip_D zig_ret_Ui_Ip_D();
int assert_ret_Ui_Ip_D(){
    return assert_Ui_Ip_D(zig_ret_Ui_Ip_D());
}

int assert_Ui_Ip_F(struct Ui_Ip_F lv){
    int err = 0;
  if (lv.v1 != 27180) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Ui_Ip_F ret_Ui_Ip_F(){
    struct Ui_Ip_F lv = { .v1 = 27180, .v2 = 0, .v3 = -2.125 };
    return lv;
}
int zig_assert_Ui_Ip_F(struct Ui_Ip_F);
int send_Ui_Ip_F(){
    return zig_assert_Ui_Ip_F(ret_Ui_Ip_F());
}
struct Ui_Ip_F zig_ret_Ui_Ip_F();
int assert_ret_Ui_Ip_F(){
    return assert_Ui_Ip_F(zig_ret_Ui_Ip_F());
}

int assert_Ui_Ip_I(struct Ui_Ip_I lv){
    int err = 0;
  if (lv.v1 != 28768) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 7763) err = 3;
  return err;
}
struct Ui_Ip_I ret_Ui_Ip_I(){
    struct Ui_Ip_I lv = { .v1 = 28768, .v2 = 0, .v3 = 7763 };
    return lv;
}
int zig_assert_Ui_Ip_I(struct Ui_Ip_I);
int send_Ui_Ip_I(){
    return zig_assert_Ui_Ip_I(ret_Ui_Ip_I());
}
struct Ui_Ip_I zig_ret_Ui_Ip_I();
int assert_ret_Ui_Ip_I(){
    return assert_Ui_Ip_I(zig_ret_Ui_Ip_I());
}

int assert_Ui_Ip_Ip(struct Ui_Ip_Ip lv){
    int err = 0;
  if (lv.v1 != 29433) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Ip_Ip ret_Ui_Ip_Ip(){
    struct Ui_Ip_Ip lv = { .v1 = 29433, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Ip_Ip(struct Ui_Ip_Ip);
int send_Ui_Ip_Ip(){
    return zig_assert_Ui_Ip_Ip(ret_Ui_Ip_Ip());
}
struct Ui_Ip_Ip zig_ret_Ui_Ip_Ip();
int assert_ret_Ui_Ip_Ip(){
    return assert_Ui_Ip_Ip(zig_ret_Ui_Ip_Ip());
}

int assert_Ui_Ip_L(struct Ui_Ip_L lv){
    int err = 0;
  if (lv.v1 != 4514) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 11287) err = 3;
  return err;
}
struct Ui_Ip_L ret_Ui_Ip_L(){
    struct Ui_Ip_L lv = { .v1 = 4514, .v2 = 0, .v3 = 11287 };
    return lv;
}
int zig_assert_Ui_Ip_L(struct Ui_Ip_L);
int send_Ui_Ip_L(){
    return zig_assert_Ui_Ip_L(ret_Ui_Ip_L());
}
struct Ui_Ip_L zig_ret_Ui_Ip_L();
int assert_ret_Ui_Ip_L(){
    return assert_Ui_Ip_L(zig_ret_Ui_Ip_L());
}

int assert_Ui_Ip_S(struct Ui_Ip_S lv){
    int err = 0;
  if (lv.v1 != 26737) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 23696) err = 3;
  return err;
}
struct Ui_Ip_S ret_Ui_Ip_S(){
    struct Ui_Ip_S lv = { .v1 = 26737, .v2 = 0, .v3 = 23696 };
    return lv;
}
int zig_assert_Ui_Ip_S(struct Ui_Ip_S);
int send_Ui_Ip_S(){
    return zig_assert_Ui_Ip_S(ret_Ui_Ip_S());
}
struct Ui_Ip_S zig_ret_Ui_Ip_S();
int assert_ret_Ui_Ip_S(){
    return assert_Ui_Ip_S(zig_ret_Ui_Ip_S());
}

int assert_Ui_Ip_Uc(struct Ui_Ip_Uc lv){
    int err = 0;
  if (lv.v1 != 3439) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 66) err = 3;
  return err;
}
struct Ui_Ip_Uc ret_Ui_Ip_Uc(){
    struct Ui_Ip_Uc lv = { .v1 = 3439, .v2 = 0, .v3 = 66 };
    return lv;
}
int zig_assert_Ui_Ip_Uc(struct Ui_Ip_Uc);
int send_Ui_Ip_Uc(){
    return zig_assert_Ui_Ip_Uc(ret_Ui_Ip_Uc());
}
struct Ui_Ip_Uc zig_ret_Ui_Ip_Uc();
int assert_ret_Ui_Ip_Uc(){
    return assert_Ui_Ip_Uc(zig_ret_Ui_Ip_Uc());
}

int assert_Ui_Ip_Ui(struct Ui_Ip_Ui lv){
    int err = 0;
  if (lv.v1 != 12941) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4092) err = 3;
  return err;
}
struct Ui_Ip_Ui ret_Ui_Ip_Ui(){
    struct Ui_Ip_Ui lv = { .v1 = 12941, .v2 = 0, .v3 = 4092 };
    return lv;
}
int zig_assert_Ui_Ip_Ui(struct Ui_Ip_Ui);
int send_Ui_Ip_Ui(){
    return zig_assert_Ui_Ip_Ui(ret_Ui_Ip_Ui());
}
struct Ui_Ip_Ui zig_ret_Ui_Ip_Ui();
int assert_ret_Ui_Ip_Ui(){
    return assert_Ui_Ip_Ui(zig_ret_Ui_Ip_Ui());
}

int assert_Ui_Ip_Ul(struct Ui_Ip_Ul lv){
    int err = 0;
  if (lv.v1 != 23885) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 27882) err = 3;
  return err;
}
struct Ui_Ip_Ul ret_Ui_Ip_Ul(){
    struct Ui_Ip_Ul lv = { .v1 = 23885, .v2 = 0, .v3 = 27882 };
    return lv;
}
int zig_assert_Ui_Ip_Ul(struct Ui_Ip_Ul);
int send_Ui_Ip_Ul(){
    return zig_assert_Ui_Ip_Ul(ret_Ui_Ip_Ul());
}
struct Ui_Ip_Ul zig_ret_Ui_Ip_Ul();
int assert_ret_Ui_Ip_Ul(){
    return assert_Ui_Ip_Ul(zig_ret_Ui_Ip_Ul());
}

int assert_Ui_Ip_Us(struct Ui_Ip_Us lv){
    int err = 0;
  if (lv.v1 != 18464) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 114) err = 3;
  return err;
}
struct Ui_Ip_Us ret_Ui_Ip_Us(){
    struct Ui_Ip_Us lv = { .v1 = 18464, .v2 = 0, .v3 = 114 };
    return lv;
}
int zig_assert_Ui_Ip_Us(struct Ui_Ip_Us);
int send_Ui_Ip_Us(){
    return zig_assert_Ui_Ip_Us(ret_Ui_Ip_Us());
}
struct Ui_Ip_Us zig_ret_Ui_Ip_Us();
int assert_ret_Ui_Ip_Us(){
    return assert_Ui_Ip_Us(zig_ret_Ui_Ip_Us());
}

int assert_Ui_Ip_Vp(struct Ui_Ip_Vp lv){
    int err = 0;
  if (lv.v1 != 18904) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Ip_Vp ret_Ui_Ip_Vp(){
    struct Ui_Ip_Vp lv = { .v1 = 18904, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Ip_Vp(struct Ui_Ip_Vp);
int send_Ui_Ip_Vp(){
    return zig_assert_Ui_Ip_Vp(ret_Ui_Ip_Vp());
}
struct Ui_Ip_Vp zig_ret_Ui_Ip_Vp();
int assert_ret_Ui_Ip_Vp(){
    return assert_Ui_Ip_Vp(zig_ret_Ui_Ip_Vp());
}

int assert_Ui_L(struct Ui_L lv){
    int err = 0;
  if (lv.v1 != 13252) err = 1;
  if (lv.v2 != 1507) err = 2;
  return err;
}
struct Ui_L ret_Ui_L(){
    struct Ui_L lv = { .v1 = 13252, .v2 = 1507 };
    return lv;
}
int zig_assert_Ui_L(struct Ui_L);
int send_Ui_L(){
    return zig_assert_Ui_L(ret_Ui_L());
}
struct Ui_L zig_ret_Ui_L();
int assert_ret_Ui_L(){
    return assert_Ui_L(zig_ret_Ui_L());
}

int assert_Ui_L_C(struct Ui_L_C lv){
    int err = 0;
  if (lv.v1 != 26935) err = 1;
  if (lv.v2 != 26745) err = 2;
  if (lv.v3 != 98) err = 3;
  return err;
}
struct Ui_L_C ret_Ui_L_C(){
    struct Ui_L_C lv = { .v1 = 26935, .v2 = 26745, .v3 = 98 };
    return lv;
}
int zig_assert_Ui_L_C(struct Ui_L_C);
int send_Ui_L_C(){
    return zig_assert_Ui_L_C(ret_Ui_L_C());
}
struct Ui_L_C zig_ret_Ui_L_C();
int assert_ret_Ui_L_C(){
    return assert_Ui_L_C(zig_ret_Ui_L_C());
}

int assert_Ui_L_D(struct Ui_L_D lv){
    int err = 0;
  if (lv.v1 != 25341) err = 1;
  if (lv.v2 != 30357) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Ui_L_D ret_Ui_L_D(){
    struct Ui_L_D lv = { .v1 = 25341, .v2 = 30357, .v3 = -2.125 };
    return lv;
}
int zig_assert_Ui_L_D(struct Ui_L_D);
int send_Ui_L_D(){
    return zig_assert_Ui_L_D(ret_Ui_L_D());
}
struct Ui_L_D zig_ret_Ui_L_D();
int assert_ret_Ui_L_D(){
    return assert_Ui_L_D(zig_ret_Ui_L_D());
}

int assert_Ui_L_F(struct Ui_L_F lv){
    int err = 0;
  if (lv.v1 != 29079) err = 1;
  if (lv.v2 != 3601) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Ui_L_F ret_Ui_L_F(){
    struct Ui_L_F lv = { .v1 = 29079, .v2 = 3601, .v3 = 0.5 };
    return lv;
}
int zig_assert_Ui_L_F(struct Ui_L_F);
int send_Ui_L_F(){
    return zig_assert_Ui_L_F(ret_Ui_L_F());
}
struct Ui_L_F zig_ret_Ui_L_F();
int assert_ret_Ui_L_F(){
    return assert_Ui_L_F(zig_ret_Ui_L_F());
}

int assert_Ui_L_I(struct Ui_L_I lv){
    int err = 0;
  if (lv.v1 != 10351) err = 1;
  if (lv.v2 != 18559) err = 2;
  if (lv.v3 != 6276) err = 3;
  return err;
}
struct Ui_L_I ret_Ui_L_I(){
    struct Ui_L_I lv = { .v1 = 10351, .v2 = 18559, .v3 = 6276 };
    return lv;
}
int zig_assert_Ui_L_I(struct Ui_L_I);
int send_Ui_L_I(){
    return zig_assert_Ui_L_I(ret_Ui_L_I());
}
struct Ui_L_I zig_ret_Ui_L_I();
int assert_ret_Ui_L_I(){
    return assert_Ui_L_I(zig_ret_Ui_L_I());
}

int assert_Ui_L_Ip(struct Ui_L_Ip lv){
    int err = 0;
  if (lv.v1 != 25585) err = 1;
  if (lv.v2 != 20929) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_L_Ip ret_Ui_L_Ip(){
    struct Ui_L_Ip lv = { .v1 = 25585, .v2 = 20929, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_L_Ip(struct Ui_L_Ip);
int send_Ui_L_Ip(){
    return zig_assert_Ui_L_Ip(ret_Ui_L_Ip());
}
struct Ui_L_Ip zig_ret_Ui_L_Ip();
int assert_ret_Ui_L_Ip(){
    return assert_Ui_L_Ip(zig_ret_Ui_L_Ip());
}

int assert_Ui_L_L(struct Ui_L_L lv){
    int err = 0;
  if (lv.v1 != 24212) err = 1;
  if (lv.v2 != 19798) err = 2;
  if (lv.v3 != 593) err = 3;
  return err;
}
struct Ui_L_L ret_Ui_L_L(){
    struct Ui_L_L lv = { .v1 = 24212, .v2 = 19798, .v3 = 593 };
    return lv;
}
int zig_assert_Ui_L_L(struct Ui_L_L);
int send_Ui_L_L(){
    return zig_assert_Ui_L_L(ret_Ui_L_L());
}
struct Ui_L_L zig_ret_Ui_L_L();
int assert_ret_Ui_L_L(){
    return assert_Ui_L_L(zig_ret_Ui_L_L());
}

int assert_Ui_L_S(struct Ui_L_S lv){
    int err = 0;
  if (lv.v1 != 21162) err = 1;
  if (lv.v2 != 4452) err = 2;
  if (lv.v3 != 9615) err = 3;
  return err;
}
struct Ui_L_S ret_Ui_L_S(){
    struct Ui_L_S lv = { .v1 = 21162, .v2 = 4452, .v3 = 9615 };
    return lv;
}
int zig_assert_Ui_L_S(struct Ui_L_S);
int send_Ui_L_S(){
    return zig_assert_Ui_L_S(ret_Ui_L_S());
}
struct Ui_L_S zig_ret_Ui_L_S();
int assert_ret_Ui_L_S(){
    return assert_Ui_L_S(zig_ret_Ui_L_S());
}

int assert_Ui_L_Uc(struct Ui_L_Uc lv){
    int err = 0;
  if (lv.v1 != 31091) err = 1;
  if (lv.v2 != 18993) err = 2;
  if (lv.v3 != 70) err = 3;
  return err;
}
struct Ui_L_Uc ret_Ui_L_Uc(){
    struct Ui_L_Uc lv = { .v1 = 31091, .v2 = 18993, .v3 = 70 };
    return lv;
}
int zig_assert_Ui_L_Uc(struct Ui_L_Uc);
int send_Ui_L_Uc(){
    return zig_assert_Ui_L_Uc(ret_Ui_L_Uc());
}
struct Ui_L_Uc zig_ret_Ui_L_Uc();
int assert_ret_Ui_L_Uc(){
    return assert_Ui_L_Uc(zig_ret_Ui_L_Uc());
}

int assert_Ui_L_Ui(struct Ui_L_Ui lv){
    int err = 0;
  if (lv.v1 != 13988) err = 1;
  if (lv.v2 != 30930) err = 2;
  if (lv.v3 != 19528) err = 3;
  return err;
}
struct Ui_L_Ui ret_Ui_L_Ui(){
    struct Ui_L_Ui lv = { .v1 = 13988, .v2 = 30930, .v3 = 19528 };
    return lv;
}
int zig_assert_Ui_L_Ui(struct Ui_L_Ui);
int send_Ui_L_Ui(){
    return zig_assert_Ui_L_Ui(ret_Ui_L_Ui());
}
struct Ui_L_Ui zig_ret_Ui_L_Ui();
int assert_ret_Ui_L_Ui(){
    return assert_Ui_L_Ui(zig_ret_Ui_L_Ui());
}

int assert_Ui_L_Ul(struct Ui_L_Ul lv){
    int err = 0;
  if (lv.v1 != 20440) err = 1;
  if (lv.v2 != 26384) err = 2;
  if (lv.v3 != 9987) err = 3;
  return err;
}
struct Ui_L_Ul ret_Ui_L_Ul(){
    struct Ui_L_Ul lv = { .v1 = 20440, .v2 = 26384, .v3 = 9987 };
    return lv;
}
int zig_assert_Ui_L_Ul(struct Ui_L_Ul);
int send_Ui_L_Ul(){
    return zig_assert_Ui_L_Ul(ret_Ui_L_Ul());
}
struct Ui_L_Ul zig_ret_Ui_L_Ul();
int assert_ret_Ui_L_Ul(){
    return assert_Ui_L_Ul(zig_ret_Ui_L_Ul());
}

int assert_Ui_L_Us(struct Ui_L_Us lv){
    int err = 0;
  if (lv.v1 != 31980) err = 1;
  if (lv.v2 != 25750) err = 2;
  if (lv.v3 != 1055) err = 3;
  return err;
}
struct Ui_L_Us ret_Ui_L_Us(){
    struct Ui_L_Us lv = { .v1 = 31980, .v2 = 25750, .v3 = 1055 };
    return lv;
}
int zig_assert_Ui_L_Us(struct Ui_L_Us);
int send_Ui_L_Us(){
    return zig_assert_Ui_L_Us(ret_Ui_L_Us());
}
struct Ui_L_Us zig_ret_Ui_L_Us();
int assert_ret_Ui_L_Us(){
    return assert_Ui_L_Us(zig_ret_Ui_L_Us());
}

int assert_Ui_L_Vp(struct Ui_L_Vp lv){
    int err = 0;
  if (lv.v1 != 8968) err = 1;
  if (lv.v2 != 24841) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_L_Vp ret_Ui_L_Vp(){
    struct Ui_L_Vp lv = { .v1 = 8968, .v2 = 24841, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_L_Vp(struct Ui_L_Vp);
int send_Ui_L_Vp(){
    return zig_assert_Ui_L_Vp(ret_Ui_L_Vp());
}
struct Ui_L_Vp zig_ret_Ui_L_Vp();
int assert_ret_Ui_L_Vp(){
    return assert_Ui_L_Vp(zig_ret_Ui_L_Vp());
}

int assert_Ui_S(struct Ui_S lv){
    int err = 0;
  if (lv.v1 != 28346) err = 1;
  if (lv.v2 != 28443) err = 2;
  return err;
}
struct Ui_S ret_Ui_S(){
    struct Ui_S lv = { .v1 = 28346, .v2 = 28443 };
    return lv;
}
int zig_assert_Ui_S(struct Ui_S);
int send_Ui_S(){
    return zig_assert_Ui_S(ret_Ui_S());
}
struct Ui_S zig_ret_Ui_S();
int assert_ret_Ui_S(){
    return assert_Ui_S(zig_ret_Ui_S());
}

int assert_Ui_S_C(struct Ui_S_C lv){
    int err = 0;
  if (lv.v1 != 15538) err = 1;
  if (lv.v2 != 21394) err = 2;
  if (lv.v3 != 21) err = 3;
  return err;
}
struct Ui_S_C ret_Ui_S_C(){
    struct Ui_S_C lv = { .v1 = 15538, .v2 = 21394, .v3 = 21 };
    return lv;
}
int zig_assert_Ui_S_C(struct Ui_S_C);
int send_Ui_S_C(){
    return zig_assert_Ui_S_C(ret_Ui_S_C());
}
struct Ui_S_C zig_ret_Ui_S_C();
int assert_ret_Ui_S_C(){
    return assert_Ui_S_C(zig_ret_Ui_S_C());
}

int assert_Ui_S_D(struct Ui_S_D lv){
    int err = 0;
  if (lv.v1 != 4910) err = 1;
  if (lv.v2 != 10310) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Ui_S_D ret_Ui_S_D(){
    struct Ui_S_D lv = { .v1 = 4910, .v2 = 10310, .v3 = 4.5 };
    return lv;
}
int zig_assert_Ui_S_D(struct Ui_S_D);
int send_Ui_S_D(){
    return zig_assert_Ui_S_D(ret_Ui_S_D());
}
struct Ui_S_D zig_ret_Ui_S_D();
int assert_ret_Ui_S_D(){
    return assert_Ui_S_D(zig_ret_Ui_S_D());
}

int assert_Ui_S_F(struct Ui_S_F lv){
    int err = 0;
  if (lv.v1 != 27139) err = 1;
  if (lv.v2 != 32026) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Ui_S_F ret_Ui_S_F(){
    struct Ui_S_F lv = { .v1 = 27139, .v2 = 32026, .v3 = 1.0 };
    return lv;
}
int zig_assert_Ui_S_F(struct Ui_S_F);
int send_Ui_S_F(){
    return zig_assert_Ui_S_F(ret_Ui_S_F());
}
struct Ui_S_F zig_ret_Ui_S_F();
int assert_ret_Ui_S_F(){
    return assert_Ui_S_F(zig_ret_Ui_S_F());
}

int assert_Ui_S_I(struct Ui_S_I lv){
    int err = 0;
  if (lv.v1 != 21625) err = 1;
  if (lv.v2 != 11212) err = 2;
  if (lv.v3 != 4579) err = 3;
  return err;
}
struct Ui_S_I ret_Ui_S_I(){
    struct Ui_S_I lv = { .v1 = 21625, .v2 = 11212, .v3 = 4579 };
    return lv;
}
int zig_assert_Ui_S_I(struct Ui_S_I);
int send_Ui_S_I(){
    return zig_assert_Ui_S_I(ret_Ui_S_I());
}
struct Ui_S_I zig_ret_Ui_S_I();
int assert_ret_Ui_S_I(){
    return assert_Ui_S_I(zig_ret_Ui_S_I());
}

int assert_Ui_S_Ip(struct Ui_S_Ip lv){
    int err = 0;
  if (lv.v1 != 6672) err = 1;
  if (lv.v2 != 23197) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_S_Ip ret_Ui_S_Ip(){
    struct Ui_S_Ip lv = { .v1 = 6672, .v2 = 23197, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_S_Ip(struct Ui_S_Ip);
int send_Ui_S_Ip(){
    return zig_assert_Ui_S_Ip(ret_Ui_S_Ip());
}
struct Ui_S_Ip zig_ret_Ui_S_Ip();
int assert_ret_Ui_S_Ip(){
    return assert_Ui_S_Ip(zig_ret_Ui_S_Ip());
}

int assert_Ui_S_L(struct Ui_S_L lv){
    int err = 0;
  if (lv.v1 != 5970) err = 1;
  if (lv.v2 != 9549) err = 2;
  if (lv.v3 != 25094) err = 3;
  return err;
}
struct Ui_S_L ret_Ui_S_L(){
    struct Ui_S_L lv = { .v1 = 5970, .v2 = 9549, .v3 = 25094 };
    return lv;
}
int zig_assert_Ui_S_L(struct Ui_S_L);
int send_Ui_S_L(){
    return zig_assert_Ui_S_L(ret_Ui_S_L());
}
struct Ui_S_L zig_ret_Ui_S_L();
int assert_ret_Ui_S_L(){
    return assert_Ui_S_L(zig_ret_Ui_S_L());
}

int assert_Ui_S_S(struct Ui_S_S lv){
    int err = 0;
  if (lv.v1 != 17865) err = 1;
  if (lv.v2 != 18599) err = 2;
  if (lv.v3 != 23696) err = 3;
  return err;
}
struct Ui_S_S ret_Ui_S_S(){
    struct Ui_S_S lv = { .v1 = 17865, .v2 = 18599, .v3 = 23696 };
    return lv;
}
int zig_assert_Ui_S_S(struct Ui_S_S);
int send_Ui_S_S(){
    return zig_assert_Ui_S_S(ret_Ui_S_S());
}
struct Ui_S_S zig_ret_Ui_S_S();
int assert_ret_Ui_S_S(){
    return assert_Ui_S_S(zig_ret_Ui_S_S());
}

int assert_Ui_S_Uc(struct Ui_S_Uc lv){
    int err = 0;
  if (lv.v1 != 28993) err = 1;
  if (lv.v2 != 21813) err = 2;
  if (lv.v3 != 77) err = 3;
  return err;
}
struct Ui_S_Uc ret_Ui_S_Uc(){
    struct Ui_S_Uc lv = { .v1 = 28993, .v2 = 21813, .v3 = 77 };
    return lv;
}
int zig_assert_Ui_S_Uc(struct Ui_S_Uc);
int send_Ui_S_Uc(){
    return zig_assert_Ui_S_Uc(ret_Ui_S_Uc());
}
struct Ui_S_Uc zig_ret_Ui_S_Uc();
int assert_ret_Ui_S_Uc(){
    return assert_Ui_S_Uc(zig_ret_Ui_S_Uc());
}

int assert_Ui_S_Ui(struct Ui_S_Ui lv){
    int err = 0;
  if (lv.v1 != 5185) err = 1;
  if (lv.v2 != 30102) err = 2;
  if (lv.v3 != 21541) err = 3;
  return err;
}
struct Ui_S_Ui ret_Ui_S_Ui(){
    struct Ui_S_Ui lv = { .v1 = 5185, .v2 = 30102, .v3 = 21541 };
    return lv;
}
int zig_assert_Ui_S_Ui(struct Ui_S_Ui);
int send_Ui_S_Ui(){
    return zig_assert_Ui_S_Ui(ret_Ui_S_Ui());
}
struct Ui_S_Ui zig_ret_Ui_S_Ui();
int assert_ret_Ui_S_Ui(){
    return assert_Ui_S_Ui(zig_ret_Ui_S_Ui());
}

int assert_Ui_S_Ul(struct Ui_S_Ul lv){
    int err = 0;
  if (lv.v1 != 18781) err = 1;
  if (lv.v2 != 20050) err = 2;
  if (lv.v3 != 23141) err = 3;
  return err;
}
struct Ui_S_Ul ret_Ui_S_Ul(){
    struct Ui_S_Ul lv = { .v1 = 18781, .v2 = 20050, .v3 = 23141 };
    return lv;
}
int zig_assert_Ui_S_Ul(struct Ui_S_Ul);
int send_Ui_S_Ul(){
    return zig_assert_Ui_S_Ul(ret_Ui_S_Ul());
}
struct Ui_S_Ul zig_ret_Ui_S_Ul();
int assert_ret_Ui_S_Ul(){
    return assert_Ui_S_Ul(zig_ret_Ui_S_Ul());
}

int assert_Ui_S_Us(struct Ui_S_Us lv){
    int err = 0;
  if (lv.v1 != 5545) err = 1;
  if (lv.v2 != 1579) err = 2;
  if (lv.v3 != 32452) err = 3;
  return err;
}
struct Ui_S_Us ret_Ui_S_Us(){
    struct Ui_S_Us lv = { .v1 = 5545, .v2 = 1579, .v3 = 32452 };
    return lv;
}
int zig_assert_Ui_S_Us(struct Ui_S_Us);
int send_Ui_S_Us(){
    return zig_assert_Ui_S_Us(ret_Ui_S_Us());
}
struct Ui_S_Us zig_ret_Ui_S_Us();
int assert_ret_Ui_S_Us(){
    return assert_Ui_S_Us(zig_ret_Ui_S_Us());
}

int assert_Ui_S_Vp(struct Ui_S_Vp lv){
    int err = 0;
  if (lv.v1 != 24208) err = 1;
  if (lv.v2 != 28727) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_S_Vp ret_Ui_S_Vp(){
    struct Ui_S_Vp lv = { .v1 = 24208, .v2 = 28727, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_S_Vp(struct Ui_S_Vp);
int send_Ui_S_Vp(){
    return zig_assert_Ui_S_Vp(ret_Ui_S_Vp());
}
struct Ui_S_Vp zig_ret_Ui_S_Vp();
int assert_ret_Ui_S_Vp(){
    return assert_Ui_S_Vp(zig_ret_Ui_S_Vp());
}

int assert_Ui_Uc(struct Ui_Uc lv){
    int err = 0;
  if (lv.v1 != 157) err = 1;
  if (lv.v2 != 12) err = 2;
  return err;
}
struct Ui_Uc ret_Ui_Uc(){
    struct Ui_Uc lv = { .v1 = 157, .v2 = 12 };
    return lv;
}
int zig_assert_Ui_Uc(struct Ui_Uc);
int send_Ui_Uc(){
    return zig_assert_Ui_Uc(ret_Ui_Uc());
}
struct Ui_Uc zig_ret_Ui_Uc();
int assert_ret_Ui_Uc(){
    return assert_Ui_Uc(zig_ret_Ui_Uc());
}

int assert_Ui_Uc_C(struct Ui_Uc_C lv){
    int err = 0;
  if (lv.v1 != 16841) err = 1;
  if (lv.v2 != 67) err = 2;
  if (lv.v3 != 116) err = 3;
  return err;
}
struct Ui_Uc_C ret_Ui_Uc_C(){
    struct Ui_Uc_C lv = { .v1 = 16841, .v2 = 67, .v3 = 116 };
    return lv;
}
int zig_assert_Ui_Uc_C(struct Ui_Uc_C);
int send_Ui_Uc_C(){
    return zig_assert_Ui_Uc_C(ret_Ui_Uc_C());
}
struct Ui_Uc_C zig_ret_Ui_Uc_C();
int assert_ret_Ui_Uc_C(){
    return assert_Ui_Uc_C(zig_ret_Ui_Uc_C());
}

int assert_Ui_Uc_D(struct Ui_Uc_D lv){
    int err = 0;
  if (lv.v1 != 3973) err = 1;
  if (lv.v2 != 85) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Ui_Uc_D ret_Ui_Uc_D(){
    struct Ui_Uc_D lv = { .v1 = 3973, .v2 = 85, .v3 = 0.875 };
    return lv;
}
int zig_assert_Ui_Uc_D(struct Ui_Uc_D);
int send_Ui_Uc_D(){
    return zig_assert_Ui_Uc_D(ret_Ui_Uc_D());
}
struct Ui_Uc_D zig_ret_Ui_Uc_D();
int assert_ret_Ui_Uc_D(){
    return assert_Ui_Uc_D(zig_ret_Ui_Uc_D());
}

int assert_Ui_Uc_F(struct Ui_Uc_F lv){
    int err = 0;
  if (lv.v1 != 28410) err = 1;
  if (lv.v2 != 75) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Ui_Uc_F ret_Ui_Uc_F(){
    struct Ui_Uc_F lv = { .v1 = 28410, .v2 = 75, .v3 = -0.25 };
    return lv;
}
int zig_assert_Ui_Uc_F(struct Ui_Uc_F);
int send_Ui_Uc_F(){
    return zig_assert_Ui_Uc_F(ret_Ui_Uc_F());
}
struct Ui_Uc_F zig_ret_Ui_Uc_F();
int assert_ret_Ui_Uc_F(){
    return assert_Ui_Uc_F(zig_ret_Ui_Uc_F());
}

int assert_Ui_Uc_I(struct Ui_Uc_I lv){
    int err = 0;
  if (lv.v1 != 1867) err = 1;
  if (lv.v2 != 123) err = 2;
  if (lv.v3 != 10643) err = 3;
  return err;
}
struct Ui_Uc_I ret_Ui_Uc_I(){
    struct Ui_Uc_I lv = { .v1 = 1867, .v2 = 123, .v3 = 10643 };
    return lv;
}
int zig_assert_Ui_Uc_I(struct Ui_Uc_I);
int send_Ui_Uc_I(){
    return zig_assert_Ui_Uc_I(ret_Ui_Uc_I());
}
struct Ui_Uc_I zig_ret_Ui_Uc_I();
int assert_ret_Ui_Uc_I(){
    return assert_Ui_Uc_I(zig_ret_Ui_Uc_I());
}

int assert_Ui_Uc_Ip(struct Ui_Uc_Ip lv){
    int err = 0;
  if (lv.v1 != 5794) err = 1;
  if (lv.v2 != 57) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Uc_Ip ret_Ui_Uc_Ip(){
    struct Ui_Uc_Ip lv = { .v1 = 5794, .v2 = 57, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Uc_Ip(struct Ui_Uc_Ip);
int send_Ui_Uc_Ip(){
    return zig_assert_Ui_Uc_Ip(ret_Ui_Uc_Ip());
}
struct Ui_Uc_Ip zig_ret_Ui_Uc_Ip();
int assert_ret_Ui_Uc_Ip(){
    return assert_Ui_Uc_Ip(zig_ret_Ui_Uc_Ip());
}

int assert_Ui_Uc_L(struct Ui_Uc_L lv){
    int err = 0;
  if (lv.v1 != 19180) err = 1;
  if (lv.v2 != 58) err = 2;
  if (lv.v3 != 11114) err = 3;
  return err;
}
struct Ui_Uc_L ret_Ui_Uc_L(){
    struct Ui_Uc_L lv = { .v1 = 19180, .v2 = 58, .v3 = 11114 };
    return lv;
}
int zig_assert_Ui_Uc_L(struct Ui_Uc_L);
int send_Ui_Uc_L(){
    return zig_assert_Ui_Uc_L(ret_Ui_Uc_L());
}
struct Ui_Uc_L zig_ret_Ui_Uc_L();
int assert_ret_Ui_Uc_L(){
    return assert_Ui_Uc_L(zig_ret_Ui_Uc_L());
}

int assert_Ui_Uc_S(struct Ui_Uc_S lv){
    int err = 0;
  if (lv.v1 != 22163) err = 1;
  if (lv.v2 != 120) err = 2;
  if (lv.v3 != 2678) err = 3;
  return err;
}
struct Ui_Uc_S ret_Ui_Uc_S(){
    struct Ui_Uc_S lv = { .v1 = 22163, .v2 = 120, .v3 = 2678 };
    return lv;
}
int zig_assert_Ui_Uc_S(struct Ui_Uc_S);
int send_Ui_Uc_S(){
    return zig_assert_Ui_Uc_S(ret_Ui_Uc_S());
}
struct Ui_Uc_S zig_ret_Ui_Uc_S();
int assert_ret_Ui_Uc_S(){
    return assert_Ui_Uc_S(zig_ret_Ui_Uc_S());
}

int assert_Ui_Uc_Uc(struct Ui_Uc_Uc lv){
    int err = 0;
  if (lv.v1 != 3867) err = 1;
  if (lv.v2 != 87) err = 2;
  if (lv.v3 != 16) err = 3;
  return err;
}
struct Ui_Uc_Uc ret_Ui_Uc_Uc(){
    struct Ui_Uc_Uc lv = { .v1 = 3867, .v2 = 87, .v3 = 16 };
    return lv;
}
int zig_assert_Ui_Uc_Uc(struct Ui_Uc_Uc);
int send_Ui_Uc_Uc(){
    return zig_assert_Ui_Uc_Uc(ret_Ui_Uc_Uc());
}
struct Ui_Uc_Uc zig_ret_Ui_Uc_Uc();
int assert_ret_Ui_Uc_Uc(){
    return assert_Ui_Uc_Uc(zig_ret_Ui_Uc_Uc());
}

int assert_Ui_Uc_Ui(struct Ui_Uc_Ui lv){
    int err = 0;
  if (lv.v1 != 14918) err = 1;
  if (lv.v2 != 101) err = 2;
  if (lv.v3 != 9285) err = 3;
  return err;
}
struct Ui_Uc_Ui ret_Ui_Uc_Ui(){
    struct Ui_Uc_Ui lv = { .v1 = 14918, .v2 = 101, .v3 = 9285 };
    return lv;
}
int zig_assert_Ui_Uc_Ui(struct Ui_Uc_Ui);
int send_Ui_Uc_Ui(){
    return zig_assert_Ui_Uc_Ui(ret_Ui_Uc_Ui());
}
struct Ui_Uc_Ui zig_ret_Ui_Uc_Ui();
int assert_ret_Ui_Uc_Ui(){
    return assert_Ui_Uc_Ui(zig_ret_Ui_Uc_Ui());
}

int assert_Ui_Uc_Ul(struct Ui_Uc_Ul lv){
    int err = 0;
  if (lv.v1 != 7446) err = 1;
  if (lv.v2 != 38) err = 2;
  if (lv.v3 != 18825) err = 3;
  return err;
}
struct Ui_Uc_Ul ret_Ui_Uc_Ul(){
    struct Ui_Uc_Ul lv = { .v1 = 7446, .v2 = 38, .v3 = 18825 };
    return lv;
}
int zig_assert_Ui_Uc_Ul(struct Ui_Uc_Ul);
int send_Ui_Uc_Ul(){
    return zig_assert_Ui_Uc_Ul(ret_Ui_Uc_Ul());
}
struct Ui_Uc_Ul zig_ret_Ui_Uc_Ul();
int assert_ret_Ui_Uc_Ul(){
    return assert_Ui_Uc_Ul(zig_ret_Ui_Uc_Ul());
}

int assert_Ui_Uc_Us(struct Ui_Uc_Us lv){
    int err = 0;
  if (lv.v1 != 1744) err = 1;
  if (lv.v2 != 6) err = 2;
  if (lv.v3 != 26082) err = 3;
  return err;
}
struct Ui_Uc_Us ret_Ui_Uc_Us(){
    struct Ui_Uc_Us lv = { .v1 = 1744, .v2 = 6, .v3 = 26082 };
    return lv;
}
int zig_assert_Ui_Uc_Us(struct Ui_Uc_Us);
int send_Ui_Uc_Us(){
    return zig_assert_Ui_Uc_Us(ret_Ui_Uc_Us());
}
struct Ui_Uc_Us zig_ret_Ui_Uc_Us();
int assert_ret_Ui_Uc_Us(){
    return assert_Ui_Uc_Us(zig_ret_Ui_Uc_Us());
}

int assert_Ui_Uc_Vp(struct Ui_Uc_Vp lv){
    int err = 0;
  if (lv.v1 != 3316) err = 1;
  if (lv.v2 != 48) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Uc_Vp ret_Ui_Uc_Vp(){
    struct Ui_Uc_Vp lv = { .v1 = 3316, .v2 = 48, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Uc_Vp(struct Ui_Uc_Vp);
int send_Ui_Uc_Vp(){
    return zig_assert_Ui_Uc_Vp(ret_Ui_Uc_Vp());
}
struct Ui_Uc_Vp zig_ret_Ui_Uc_Vp();
int assert_ret_Ui_Uc_Vp(){
    return assert_Ui_Uc_Vp(zig_ret_Ui_Uc_Vp());
}

int assert_Ui_Ui(struct Ui_Ui lv){
    int err = 0;
  if (lv.v1 != 8454) err = 1;
  if (lv.v2 != 21904) err = 2;
  return err;
}
struct Ui_Ui ret_Ui_Ui(){
    struct Ui_Ui lv = { .v1 = 8454, .v2 = 21904 };
    return lv;
}
int zig_assert_Ui_Ui(struct Ui_Ui);
int send_Ui_Ui(){
    return zig_assert_Ui_Ui(ret_Ui_Ui());
}
struct Ui_Ui zig_ret_Ui_Ui();
int assert_ret_Ui_Ui(){
    return assert_Ui_Ui(zig_ret_Ui_Ui());
}

int assert_Ui_Ui_C(struct Ui_Ui_C lv){
    int err = 0;
  if (lv.v1 != 24893) err = 1;
  if (lv.v2 != 7554) err = 2;
  if (lv.v3 != 125) err = 3;
  return err;
}
struct Ui_Ui_C ret_Ui_Ui_C(){
    struct Ui_Ui_C lv = { .v1 = 24893, .v2 = 7554, .v3 = 125 };
    return lv;
}
int zig_assert_Ui_Ui_C(struct Ui_Ui_C);
int send_Ui_Ui_C(){
    return zig_assert_Ui_Ui_C(ret_Ui_Ui_C());
}
struct Ui_Ui_C zig_ret_Ui_Ui_C();
int assert_ret_Ui_Ui_C(){
    return assert_Ui_Ui_C(zig_ret_Ui_Ui_C());
}

int assert_Ui_Ui_D(struct Ui_Ui_D lv){
    int err = 0;
  if (lv.v1 != 11653) err = 1;
  if (lv.v2 != 12325) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Ui_Ui_D ret_Ui_Ui_D(){
    struct Ui_Ui_D lv = { .v1 = 11653, .v2 = 12325, .v3 = -2.125 };
    return lv;
}
int zig_assert_Ui_Ui_D(struct Ui_Ui_D);
int send_Ui_Ui_D(){
    return zig_assert_Ui_Ui_D(ret_Ui_Ui_D());
}
struct Ui_Ui_D zig_ret_Ui_Ui_D();
int assert_ret_Ui_Ui_D(){
    return assert_Ui_Ui_D(zig_ret_Ui_Ui_D());
}

int assert_Ui_Ui_F(struct Ui_Ui_F lv){
    int err = 0;
  if (lv.v1 != 11056) err = 1;
  if (lv.v2 != 12323) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Ui_Ui_F ret_Ui_Ui_F(){
    struct Ui_Ui_F lv = { .v1 = 11056, .v2 = 12323, .v3 = 0.875 };
    return lv;
}
int zig_assert_Ui_Ui_F(struct Ui_Ui_F);
int send_Ui_Ui_F(){
    return zig_assert_Ui_Ui_F(ret_Ui_Ui_F());
}
struct Ui_Ui_F zig_ret_Ui_Ui_F();
int assert_ret_Ui_Ui_F(){
    return assert_Ui_Ui_F(zig_ret_Ui_Ui_F());
}

int assert_Ui_Ui_I(struct Ui_Ui_I lv){
    int err = 0;
  if (lv.v1 != 24003) err = 1;
  if (lv.v2 != 31766) err = 2;
  if (lv.v3 != 9259) err = 3;
  return err;
}
struct Ui_Ui_I ret_Ui_Ui_I(){
    struct Ui_Ui_I lv = { .v1 = 24003, .v2 = 31766, .v3 = 9259 };
    return lv;
}
int zig_assert_Ui_Ui_I(struct Ui_Ui_I);
int send_Ui_Ui_I(){
    return zig_assert_Ui_Ui_I(ret_Ui_Ui_I());
}
struct Ui_Ui_I zig_ret_Ui_Ui_I();
int assert_ret_Ui_Ui_I(){
    return assert_Ui_Ui_I(zig_ret_Ui_Ui_I());
}

int assert_Ui_Ui_Ip(struct Ui_Ui_Ip lv){
    int err = 0;
  if (lv.v1 != 4717) err = 1;
  if (lv.v2 != 9398) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Ui_Ip ret_Ui_Ui_Ip(){
    struct Ui_Ui_Ip lv = { .v1 = 4717, .v2 = 9398, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Ui_Ip(struct Ui_Ui_Ip);
int send_Ui_Ui_Ip(){
    return zig_assert_Ui_Ui_Ip(ret_Ui_Ui_Ip());
}
struct Ui_Ui_Ip zig_ret_Ui_Ui_Ip();
int assert_ret_Ui_Ui_Ip(){
    return assert_Ui_Ui_Ip(zig_ret_Ui_Ui_Ip());
}

int assert_Ui_Ui_L(struct Ui_Ui_L lv){
    int err = 0;
  if (lv.v1 != 5211) err = 1;
  if (lv.v2 != 14887) err = 2;
  if (lv.v3 != 10731) err = 3;
  return err;
}
struct Ui_Ui_L ret_Ui_Ui_L(){
    struct Ui_Ui_L lv = { .v1 = 5211, .v2 = 14887, .v3 = 10731 };
    return lv;
}
int zig_assert_Ui_Ui_L(struct Ui_Ui_L);
int send_Ui_Ui_L(){
    return zig_assert_Ui_Ui_L(ret_Ui_Ui_L());
}
struct Ui_Ui_L zig_ret_Ui_Ui_L();
int assert_ret_Ui_Ui_L(){
    return assert_Ui_Ui_L(zig_ret_Ui_Ui_L());
}

int assert_Ui_Ui_S(struct Ui_Ui_S lv){
    int err = 0;
  if (lv.v1 != 8211) err = 1;
  if (lv.v2 != 27366) err = 2;
  if (lv.v3 != 700) err = 3;
  return err;
}
struct Ui_Ui_S ret_Ui_Ui_S(){
    struct Ui_Ui_S lv = { .v1 = 8211, .v2 = 27366, .v3 = 700 };
    return lv;
}
int zig_assert_Ui_Ui_S(struct Ui_Ui_S);
int send_Ui_Ui_S(){
    return zig_assert_Ui_Ui_S(ret_Ui_Ui_S());
}
struct Ui_Ui_S zig_ret_Ui_Ui_S();
int assert_ret_Ui_Ui_S(){
    return assert_Ui_Ui_S(zig_ret_Ui_Ui_S());
}

int assert_Ui_Ui_Uc(struct Ui_Ui_Uc lv){
    int err = 0;
  if (lv.v1 != 2757) err = 1;
  if (lv.v2 != 21695) err = 2;
  if (lv.v3 != 93) err = 3;
  return err;
}
struct Ui_Ui_Uc ret_Ui_Ui_Uc(){
    struct Ui_Ui_Uc lv = { .v1 = 2757, .v2 = 21695, .v3 = 93 };
    return lv;
}
int zig_assert_Ui_Ui_Uc(struct Ui_Ui_Uc);
int send_Ui_Ui_Uc(){
    return zig_assert_Ui_Ui_Uc(ret_Ui_Ui_Uc());
}
struct Ui_Ui_Uc zig_ret_Ui_Ui_Uc();
int assert_ret_Ui_Ui_Uc(){
    return assert_Ui_Ui_Uc(zig_ret_Ui_Ui_Uc());
}

int assert_Ui_Ui_Ui(struct Ui_Ui_Ui lv){
    int err = 0;
  if (lv.v1 != 9522) err = 1;
  if (lv.v2 != 22368) err = 2;
  if (lv.v3 != 18383) err = 3;
  return err;
}
struct Ui_Ui_Ui ret_Ui_Ui_Ui(){
    struct Ui_Ui_Ui lv = { .v1 = 9522, .v2 = 22368, .v3 = 18383 };
    return lv;
}
int zig_assert_Ui_Ui_Ui(struct Ui_Ui_Ui);
int send_Ui_Ui_Ui(){
    return zig_assert_Ui_Ui_Ui(ret_Ui_Ui_Ui());
}
struct Ui_Ui_Ui zig_ret_Ui_Ui_Ui();
int assert_ret_Ui_Ui_Ui(){
    return assert_Ui_Ui_Ui(zig_ret_Ui_Ui_Ui());
}

int assert_Ui_Ui_Ul(struct Ui_Ui_Ul lv){
    int err = 0;
  if (lv.v1 != 17560) err = 1;
  if (lv.v2 != 16595) err = 2;
  if (lv.v3 != 621) err = 3;
  return err;
}
struct Ui_Ui_Ul ret_Ui_Ui_Ul(){
    struct Ui_Ui_Ul lv = { .v1 = 17560, .v2 = 16595, .v3 = 621 };
    return lv;
}
int zig_assert_Ui_Ui_Ul(struct Ui_Ui_Ul);
int send_Ui_Ui_Ul(){
    return zig_assert_Ui_Ui_Ul(ret_Ui_Ui_Ul());
}
struct Ui_Ui_Ul zig_ret_Ui_Ui_Ul();
int assert_ret_Ui_Ui_Ul(){
    return assert_Ui_Ui_Ul(zig_ret_Ui_Ui_Ul());
}

int assert_Ui_Ui_Us(struct Ui_Ui_Us lv){
    int err = 0;
  if (lv.v1 != 11564) err = 1;
  if (lv.v2 != 11476) err = 2;
  if (lv.v3 != 1119) err = 3;
  return err;
}
struct Ui_Ui_Us ret_Ui_Ui_Us(){
    struct Ui_Ui_Us lv = { .v1 = 11564, .v2 = 11476, .v3 = 1119 };
    return lv;
}
int zig_assert_Ui_Ui_Us(struct Ui_Ui_Us);
int send_Ui_Ui_Us(){
    return zig_assert_Ui_Ui_Us(ret_Ui_Ui_Us());
}
struct Ui_Ui_Us zig_ret_Ui_Ui_Us();
int assert_ret_Ui_Ui_Us(){
    return assert_Ui_Ui_Us(zig_ret_Ui_Ui_Us());
}

int assert_Ui_Ui_Vp(struct Ui_Ui_Vp lv){
    int err = 0;
  if (lv.v1 != 6197) err = 1;
  if (lv.v2 != 30374) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Ui_Vp ret_Ui_Ui_Vp(){
    struct Ui_Ui_Vp lv = { .v1 = 6197, .v2 = 30374, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Ui_Vp(struct Ui_Ui_Vp);
int send_Ui_Ui_Vp(){
    return zig_assert_Ui_Ui_Vp(ret_Ui_Ui_Vp());
}
struct Ui_Ui_Vp zig_ret_Ui_Ui_Vp();
int assert_ret_Ui_Ui_Vp(){
    return assert_Ui_Ui_Vp(zig_ret_Ui_Ui_Vp());
}

int assert_Ui_Ul(struct Ui_Ul lv){
    int err = 0;
  if (lv.v1 != 6015) err = 1;
  if (lv.v2 != 14187) err = 2;
  return err;
}
struct Ui_Ul ret_Ui_Ul(){
    struct Ui_Ul lv = { .v1 = 6015, .v2 = 14187 };
    return lv;
}
int zig_assert_Ui_Ul(struct Ui_Ul);
int send_Ui_Ul(){
    return zig_assert_Ui_Ul(ret_Ui_Ul());
}
struct Ui_Ul zig_ret_Ui_Ul();
int assert_ret_Ui_Ul(){
    return assert_Ui_Ul(zig_ret_Ui_Ul());
}

int assert_Ui_Ul_C(struct Ui_Ul_C lv){
    int err = 0;
  if (lv.v1 != 4633) err = 1;
  if (lv.v2 != 28170) err = 2;
  if (lv.v3 != 118) err = 3;
  return err;
}
struct Ui_Ul_C ret_Ui_Ul_C(){
    struct Ui_Ul_C lv = { .v1 = 4633, .v2 = 28170, .v3 = 118 };
    return lv;
}
int zig_assert_Ui_Ul_C(struct Ui_Ul_C);
int send_Ui_Ul_C(){
    return zig_assert_Ui_Ul_C(ret_Ui_Ul_C());
}
struct Ui_Ul_C zig_ret_Ui_Ul_C();
int assert_ret_Ui_Ul_C(){
    return assert_Ui_Ul_C(zig_ret_Ui_Ul_C());
}

int assert_Ui_Ul_D(struct Ui_Ul_D lv){
    int err = 0;
  if (lv.v1 != 26735) err = 1;
  if (lv.v2 != 3946) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Ui_Ul_D ret_Ui_Ul_D(){
    struct Ui_Ul_D lv = { .v1 = 26735, .v2 = 3946, .v3 = 7.0 };
    return lv;
}
int zig_assert_Ui_Ul_D(struct Ui_Ul_D);
int send_Ui_Ul_D(){
    return zig_assert_Ui_Ul_D(ret_Ui_Ul_D());
}
struct Ui_Ul_D zig_ret_Ui_Ul_D();
int assert_ret_Ui_Ul_D(){
    return assert_Ui_Ul_D(zig_ret_Ui_Ul_D());
}

int assert_Ui_Ul_F(struct Ui_Ul_F lv){
    int err = 0;
  if (lv.v1 != 28323) err = 1;
  if (lv.v2 != 4257) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Ui_Ul_F ret_Ui_Ul_F(){
    struct Ui_Ul_F lv = { .v1 = 28323, .v2 = 4257, .v3 = 7.0 };
    return lv;
}
int zig_assert_Ui_Ul_F(struct Ui_Ul_F);
int send_Ui_Ul_F(){
    return zig_assert_Ui_Ul_F(ret_Ui_Ul_F());
}
struct Ui_Ul_F zig_ret_Ui_Ul_F();
int assert_ret_Ui_Ul_F(){
    return assert_Ui_Ul_F(zig_ret_Ui_Ul_F());
}

int assert_Ui_Ul_I(struct Ui_Ul_I lv){
    int err = 0;
  if (lv.v1 != 25993) err = 1;
  if (lv.v2 != 21218) err = 2;
  if (lv.v3 != 10780) err = 3;
  return err;
}
struct Ui_Ul_I ret_Ui_Ul_I(){
    struct Ui_Ul_I lv = { .v1 = 25993, .v2 = 21218, .v3 = 10780 };
    return lv;
}
int zig_assert_Ui_Ul_I(struct Ui_Ul_I);
int send_Ui_Ul_I(){
    return zig_assert_Ui_Ul_I(ret_Ui_Ul_I());
}
struct Ui_Ul_I zig_ret_Ui_Ul_I();
int assert_ret_Ui_Ul_I(){
    return assert_Ui_Ul_I(zig_ret_Ui_Ul_I());
}

int assert_Ui_Ul_Ip(struct Ui_Ul_Ip lv){
    int err = 0;
  if (lv.v1 != 4013) err = 1;
  if (lv.v2 != 9159) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Ul_Ip ret_Ui_Ul_Ip(){
    struct Ui_Ul_Ip lv = { .v1 = 4013, .v2 = 9159, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Ul_Ip(struct Ui_Ul_Ip);
int send_Ui_Ul_Ip(){
    return zig_assert_Ui_Ul_Ip(ret_Ui_Ul_Ip());
}
struct Ui_Ul_Ip zig_ret_Ui_Ul_Ip();
int assert_ret_Ui_Ul_Ip(){
    return assert_Ui_Ul_Ip(zig_ret_Ui_Ul_Ip());
}

int assert_Ui_Ul_L(struct Ui_Ul_L lv){
    int err = 0;
  if (lv.v1 != 612) err = 1;
  if (lv.v2 != 2563) err = 2;
  if (lv.v3 != 3634) err = 3;
  return err;
}
struct Ui_Ul_L ret_Ui_Ul_L(){
    struct Ui_Ul_L lv = { .v1 = 612, .v2 = 2563, .v3 = 3634 };
    return lv;
}
int zig_assert_Ui_Ul_L(struct Ui_Ul_L);
int send_Ui_Ul_L(){
    return zig_assert_Ui_Ul_L(ret_Ui_Ul_L());
}
struct Ui_Ul_L zig_ret_Ui_Ul_L();
int assert_ret_Ui_Ul_L(){
    return assert_Ui_Ul_L(zig_ret_Ui_Ul_L());
}

int assert_Ui_Ul_S(struct Ui_Ul_S lv){
    int err = 0;
  if (lv.v1 != 29897) err = 1;
  if (lv.v2 != 28586) err = 2;
  if (lv.v3 != 32630) err = 3;
  return err;
}
struct Ui_Ul_S ret_Ui_Ul_S(){
    struct Ui_Ul_S lv = { .v1 = 29897, .v2 = 28586, .v3 = 32630 };
    return lv;
}
int zig_assert_Ui_Ul_S(struct Ui_Ul_S);
int send_Ui_Ul_S(){
    return zig_assert_Ui_Ul_S(ret_Ui_Ul_S());
}
struct Ui_Ul_S zig_ret_Ui_Ul_S();
int assert_ret_Ui_Ul_S(){
    return assert_Ui_Ul_S(zig_ret_Ui_Ul_S());
}

int assert_Ui_Ul_Uc(struct Ui_Ul_Uc lv){
    int err = 0;
  if (lv.v1 != 25723) err = 1;
  if (lv.v2 != 5638) err = 2;
  if (lv.v3 != 72) err = 3;
  return err;
}
struct Ui_Ul_Uc ret_Ui_Ul_Uc(){
    struct Ui_Ul_Uc lv = { .v1 = 25723, .v2 = 5638, .v3 = 72 };
    return lv;
}
int zig_assert_Ui_Ul_Uc(struct Ui_Ul_Uc);
int send_Ui_Ul_Uc(){
    return zig_assert_Ui_Ul_Uc(ret_Ui_Ul_Uc());
}
struct Ui_Ul_Uc zig_ret_Ui_Ul_Uc();
int assert_ret_Ui_Ul_Uc(){
    return assert_Ui_Ul_Uc(zig_ret_Ui_Ul_Uc());
}

int assert_Ui_Ul_Ui(struct Ui_Ul_Ui lv){
    int err = 0;
  if (lv.v1 != 21999) err = 1;
  if (lv.v2 != 1833) err = 2;
  if (lv.v3 != 27956) err = 3;
  return err;
}
struct Ui_Ul_Ui ret_Ui_Ul_Ui(){
    struct Ui_Ul_Ui lv = { .v1 = 21999, .v2 = 1833, .v3 = 27956 };
    return lv;
}
int zig_assert_Ui_Ul_Ui(struct Ui_Ul_Ui);
int send_Ui_Ul_Ui(){
    return zig_assert_Ui_Ul_Ui(ret_Ui_Ul_Ui());
}
struct Ui_Ul_Ui zig_ret_Ui_Ul_Ui();
int assert_ret_Ui_Ul_Ui(){
    return assert_Ui_Ul_Ui(zig_ret_Ui_Ul_Ui());
}

int assert_Ui_Ul_Ul(struct Ui_Ul_Ul lv){
    int err = 0;
  if (lv.v1 != 21577) err = 1;
  if (lv.v2 != 25353) err = 2;
  if (lv.v3 != 519) err = 3;
  return err;
}
struct Ui_Ul_Ul ret_Ui_Ul_Ul(){
    struct Ui_Ul_Ul lv = { .v1 = 21577, .v2 = 25353, .v3 = 519 };
    return lv;
}
int zig_assert_Ui_Ul_Ul(struct Ui_Ul_Ul);
int send_Ui_Ul_Ul(){
    return zig_assert_Ui_Ul_Ul(ret_Ui_Ul_Ul());
}
struct Ui_Ul_Ul zig_ret_Ui_Ul_Ul();
int assert_ret_Ui_Ul_Ul(){
    return assert_Ui_Ul_Ul(zig_ret_Ui_Ul_Ul());
}

int assert_Ui_Ul_Us(struct Ui_Ul_Us lv){
    int err = 0;
  if (lv.v1 != 2982) err = 1;
  if (lv.v2 != 26174) err = 2;
  if (lv.v3 != 30401) err = 3;
  return err;
}
struct Ui_Ul_Us ret_Ui_Ul_Us(){
    struct Ui_Ul_Us lv = { .v1 = 2982, .v2 = 26174, .v3 = 30401 };
    return lv;
}
int zig_assert_Ui_Ul_Us(struct Ui_Ul_Us);
int send_Ui_Ul_Us(){
    return zig_assert_Ui_Ul_Us(ret_Ui_Ul_Us());
}
struct Ui_Ul_Us zig_ret_Ui_Ul_Us();
int assert_ret_Ui_Ul_Us(){
    return assert_Ui_Ul_Us(zig_ret_Ui_Ul_Us());
}

int assert_Ui_Ul_Vp(struct Ui_Ul_Vp lv){
    int err = 0;
  if (lv.v1 != 80) err = 1;
  if (lv.v2 != 21067) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Ul_Vp ret_Ui_Ul_Vp(){
    struct Ui_Ul_Vp lv = { .v1 = 80, .v2 = 21067, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Ul_Vp(struct Ui_Ul_Vp);
int send_Ui_Ul_Vp(){
    return zig_assert_Ui_Ul_Vp(ret_Ui_Ul_Vp());
}
struct Ui_Ul_Vp zig_ret_Ui_Ul_Vp();
int assert_ret_Ui_Ul_Vp(){
    return assert_Ui_Ul_Vp(zig_ret_Ui_Ul_Vp());
}

int assert_Ui_Us(struct Ui_Us lv){
    int err = 0;
  if (lv.v1 != 30354) err = 1;
  if (lv.v2 != 26657) err = 2;
  return err;
}
struct Ui_Us ret_Ui_Us(){
    struct Ui_Us lv = { .v1 = 30354, .v2 = 26657 };
    return lv;
}
int zig_assert_Ui_Us(struct Ui_Us);
int send_Ui_Us(){
    return zig_assert_Ui_Us(ret_Ui_Us());
}
struct Ui_Us zig_ret_Ui_Us();
int assert_ret_Ui_Us(){
    return assert_Ui_Us(zig_ret_Ui_Us());
}

int assert_Ui_Us_C(struct Ui_Us_C lv){
    int err = 0;
  if (lv.v1 != 21789) err = 1;
  if (lv.v2 != 26918) err = 2;
  if (lv.v3 != 102) err = 3;
  return err;
}
struct Ui_Us_C ret_Ui_Us_C(){
    struct Ui_Us_C lv = { .v1 = 21789, .v2 = 26918, .v3 = 102 };
    return lv;
}
int zig_assert_Ui_Us_C(struct Ui_Us_C);
int send_Ui_Us_C(){
    return zig_assert_Ui_Us_C(ret_Ui_Us_C());
}
struct Ui_Us_C zig_ret_Ui_Us_C();
int assert_ret_Ui_Us_C(){
    return assert_Ui_Us_C(zig_ret_Ui_Us_C());
}

int assert_Ui_Us_D(struct Ui_Us_D lv){
    int err = 0;
  if (lv.v1 != 25060) err = 1;
  if (lv.v2 != 30168) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Ui_Us_D ret_Ui_Us_D(){
    struct Ui_Us_D lv = { .v1 = 25060, .v2 = 30168, .v3 = 0.875 };
    return lv;
}
int zig_assert_Ui_Us_D(struct Ui_Us_D);
int send_Ui_Us_D(){
    return zig_assert_Ui_Us_D(ret_Ui_Us_D());
}
struct Ui_Us_D zig_ret_Ui_Us_D();
int assert_ret_Ui_Us_D(){
    return assert_Ui_Us_D(zig_ret_Ui_Us_D());
}

int assert_Ui_Us_F(struct Ui_Us_F lv){
    int err = 0;
  if (lv.v1 != 26931) err = 1;
  if (lv.v2 != 19984) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Ui_Us_F ret_Ui_Us_F(){
    struct Ui_Us_F lv = { .v1 = 26931, .v2 = 19984, .v3 = 0.5 };
    return lv;
}
int zig_assert_Ui_Us_F(struct Ui_Us_F);
int send_Ui_Us_F(){
    return zig_assert_Ui_Us_F(ret_Ui_Us_F());
}
struct Ui_Us_F zig_ret_Ui_Us_F();
int assert_ret_Ui_Us_F(){
    return assert_Ui_Us_F(zig_ret_Ui_Us_F());
}

int assert_Ui_Us_I(struct Ui_Us_I lv){
    int err = 0;
  if (lv.v1 != 27580) err = 1;
  if (lv.v2 != 4813) err = 2;
  if (lv.v3 != 13953) err = 3;
  return err;
}
struct Ui_Us_I ret_Ui_Us_I(){
    struct Ui_Us_I lv = { .v1 = 27580, .v2 = 4813, .v3 = 13953 };
    return lv;
}
int zig_assert_Ui_Us_I(struct Ui_Us_I);
int send_Ui_Us_I(){
    return zig_assert_Ui_Us_I(ret_Ui_Us_I());
}
struct Ui_Us_I zig_ret_Ui_Us_I();
int assert_ret_Ui_Us_I(){
    return assert_Ui_Us_I(zig_ret_Ui_Us_I());
}

int assert_Ui_Us_Ip(struct Ui_Us_Ip lv){
    int err = 0;
  if (lv.v1 != 3212) err = 1;
  if (lv.v2 != 7801) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Us_Ip ret_Ui_Us_Ip(){
    struct Ui_Us_Ip lv = { .v1 = 3212, .v2 = 7801, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Us_Ip(struct Ui_Us_Ip);
int send_Ui_Us_Ip(){
    return zig_assert_Ui_Us_Ip(ret_Ui_Us_Ip());
}
struct Ui_Us_Ip zig_ret_Ui_Us_Ip();
int assert_ret_Ui_Us_Ip(){
    return assert_Ui_Us_Ip(zig_ret_Ui_Us_Ip());
}

int assert_Ui_Us_L(struct Ui_Us_L lv){
    int err = 0;
  if (lv.v1 != 5564) err = 1;
  if (lv.v2 != 2635) err = 2;
  if (lv.v3 != 10175) err = 3;
  return err;
}
struct Ui_Us_L ret_Ui_Us_L(){
    struct Ui_Us_L lv = { .v1 = 5564, .v2 = 2635, .v3 = 10175 };
    return lv;
}
int zig_assert_Ui_Us_L(struct Ui_Us_L);
int send_Ui_Us_L(){
    return zig_assert_Ui_Us_L(ret_Ui_Us_L());
}
struct Ui_Us_L zig_ret_Ui_Us_L();
int assert_ret_Ui_Us_L(){
    return assert_Ui_Us_L(zig_ret_Ui_Us_L());
}

int assert_Ui_Us_S(struct Ui_Us_S lv){
    int err = 0;
  if (lv.v1 != 26848) err = 1;
  if (lv.v2 != 23938) err = 2;
  if (lv.v3 != 12891) err = 3;
  return err;
}
struct Ui_Us_S ret_Ui_Us_S(){
    struct Ui_Us_S lv = { .v1 = 26848, .v2 = 23938, .v3 = 12891 };
    return lv;
}
int zig_assert_Ui_Us_S(struct Ui_Us_S);
int send_Ui_Us_S(){
    return zig_assert_Ui_Us_S(ret_Ui_Us_S());
}
struct Ui_Us_S zig_ret_Ui_Us_S();
int assert_ret_Ui_Us_S(){
    return assert_Ui_Us_S(zig_ret_Ui_Us_S());
}

int assert_Ui_Us_Uc(struct Ui_Us_Uc lv){
    int err = 0;
  if (lv.v1 != 21533) err = 1;
  if (lv.v2 != 13458) err = 2;
  if (lv.v3 != 32) err = 3;
  return err;
}
struct Ui_Us_Uc ret_Ui_Us_Uc(){
    struct Ui_Us_Uc lv = { .v1 = 21533, .v2 = 13458, .v3 = 32 };
    return lv;
}
int zig_assert_Ui_Us_Uc(struct Ui_Us_Uc);
int send_Ui_Us_Uc(){
    return zig_assert_Ui_Us_Uc(ret_Ui_Us_Uc());
}
struct Ui_Us_Uc zig_ret_Ui_Us_Uc();
int assert_ret_Ui_Us_Uc(){
    return assert_Ui_Us_Uc(zig_ret_Ui_Us_Uc());
}

int assert_Ui_Us_Ui(struct Ui_Us_Ui lv){
    int err = 0;
  if (lv.v1 != 4359) err = 1;
  if (lv.v2 != 7290) err = 2;
  if (lv.v3 != 2824) err = 3;
  return err;
}
struct Ui_Us_Ui ret_Ui_Us_Ui(){
    struct Ui_Us_Ui lv = { .v1 = 4359, .v2 = 7290, .v3 = 2824 };
    return lv;
}
int zig_assert_Ui_Us_Ui(struct Ui_Us_Ui);
int send_Ui_Us_Ui(){
    return zig_assert_Ui_Us_Ui(ret_Ui_Us_Ui());
}
struct Ui_Us_Ui zig_ret_Ui_Us_Ui();
int assert_ret_Ui_Us_Ui(){
    return assert_Ui_Us_Ui(zig_ret_Ui_Us_Ui());
}

int assert_Ui_Us_Ul(struct Ui_Us_Ul lv){
    int err = 0;
  if (lv.v1 != 10815) err = 1;
  if (lv.v2 != 2476) err = 2;
  if (lv.v3 != 15183) err = 3;
  return err;
}
struct Ui_Us_Ul ret_Ui_Us_Ul(){
    struct Ui_Us_Ul lv = { .v1 = 10815, .v2 = 2476, .v3 = 15183 };
    return lv;
}
int zig_assert_Ui_Us_Ul(struct Ui_Us_Ul);
int send_Ui_Us_Ul(){
    return zig_assert_Ui_Us_Ul(ret_Ui_Us_Ul());
}
struct Ui_Us_Ul zig_ret_Ui_Us_Ul();
int assert_ret_Ui_Us_Ul(){
    return assert_Ui_Us_Ul(zig_ret_Ui_Us_Ul());
}

int assert_Ui_Us_Us(struct Ui_Us_Us lv){
    int err = 0;
  if (lv.v1 != 28170) err = 1;
  if (lv.v2 != 20814) err = 2;
  if (lv.v3 != 14005) err = 3;
  return err;
}
struct Ui_Us_Us ret_Ui_Us_Us(){
    struct Ui_Us_Us lv = { .v1 = 28170, .v2 = 20814, .v3 = 14005 };
    return lv;
}
int zig_assert_Ui_Us_Us(struct Ui_Us_Us);
int send_Ui_Us_Us(){
    return zig_assert_Ui_Us_Us(ret_Ui_Us_Us());
}
struct Ui_Us_Us zig_ret_Ui_Us_Us();
int assert_ret_Ui_Us_Us(){
    return assert_Ui_Us_Us(zig_ret_Ui_Us_Us());
}

int assert_Ui_Us_Vp(struct Ui_Us_Vp lv){
    int err = 0;
  if (lv.v1 != 13993) err = 1;
  if (lv.v2 != 22706) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Us_Vp ret_Ui_Us_Vp(){
    struct Ui_Us_Vp lv = { .v1 = 13993, .v2 = 22706, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Us_Vp(struct Ui_Us_Vp);
int send_Ui_Us_Vp(){
    return zig_assert_Ui_Us_Vp(ret_Ui_Us_Vp());
}
struct Ui_Us_Vp zig_ret_Ui_Us_Vp();
int assert_ret_Ui_Us_Vp(){
    return assert_Ui_Us_Vp(zig_ret_Ui_Us_Vp());
}

int assert_Ui_Vp(struct Ui_Vp lv){
    int err = 0;
  if (lv.v1 != 876) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Ui_Vp ret_Ui_Vp(){
    struct Ui_Vp lv = { .v1 = 876, .v2 = 0 };
    return lv;
}
int zig_assert_Ui_Vp(struct Ui_Vp);
int send_Ui_Vp(){
    return zig_assert_Ui_Vp(ret_Ui_Vp());
}
struct Ui_Vp zig_ret_Ui_Vp();
int assert_ret_Ui_Vp(){
    return assert_Ui_Vp(zig_ret_Ui_Vp());
}

int assert_Ui_Vp_C(struct Ui_Vp_C lv){
    int err = 0;
  if (lv.v1 != 15686) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 90) err = 3;
  return err;
}
struct Ui_Vp_C ret_Ui_Vp_C(){
    struct Ui_Vp_C lv = { .v1 = 15686, .v2 = 0, .v3 = 90 };
    return lv;
}
int zig_assert_Ui_Vp_C(struct Ui_Vp_C);
int send_Ui_Vp_C(){
    return zig_assert_Ui_Vp_C(ret_Ui_Vp_C());
}
struct Ui_Vp_C zig_ret_Ui_Vp_C();
int assert_ret_Ui_Vp_C(){
    return assert_Ui_Vp_C(zig_ret_Ui_Vp_C());
}

int assert_Ui_Vp_D(struct Ui_Vp_D lv){
    int err = 0;
  if (lv.v1 != 7177) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Ui_Vp_D ret_Ui_Vp_D(){
    struct Ui_Vp_D lv = { .v1 = 7177, .v2 = 0, .v3 = 0.5 };
    return lv;
}
int zig_assert_Ui_Vp_D(struct Ui_Vp_D);
int send_Ui_Vp_D(){
    return zig_assert_Ui_Vp_D(ret_Ui_Vp_D());
}
struct Ui_Vp_D zig_ret_Ui_Vp_D();
int assert_ret_Ui_Vp_D(){
    return assert_Ui_Vp_D(zig_ret_Ui_Vp_D());
}

int assert_Ui_Vp_F(struct Ui_Vp_F lv){
    int err = 0;
  if (lv.v1 != 28047) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Ui_Vp_F ret_Ui_Vp_F(){
    struct Ui_Vp_F lv = { .v1 = 28047, .v2 = 0, .v3 = -2.125 };
    return lv;
}
int zig_assert_Ui_Vp_F(struct Ui_Vp_F);
int send_Ui_Vp_F(){
    return zig_assert_Ui_Vp_F(ret_Ui_Vp_F());
}
struct Ui_Vp_F zig_ret_Ui_Vp_F();
int assert_ret_Ui_Vp_F(){
    return assert_Ui_Vp_F(zig_ret_Ui_Vp_F());
}

int assert_Ui_Vp_I(struct Ui_Vp_I lv){
    int err = 0;
  if (lv.v1 != 25781) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 27067) err = 3;
  return err;
}
struct Ui_Vp_I ret_Ui_Vp_I(){
    struct Ui_Vp_I lv = { .v1 = 25781, .v2 = 0, .v3 = 27067 };
    return lv;
}
int zig_assert_Ui_Vp_I(struct Ui_Vp_I);
int send_Ui_Vp_I(){
    return zig_assert_Ui_Vp_I(ret_Ui_Vp_I());
}
struct Ui_Vp_I zig_ret_Ui_Vp_I();
int assert_ret_Ui_Vp_I(){
    return assert_Ui_Vp_I(zig_ret_Ui_Vp_I());
}

int assert_Ui_Vp_Ip(struct Ui_Vp_Ip lv){
    int err = 0;
  if (lv.v1 != 20737) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Vp_Ip ret_Ui_Vp_Ip(){
    struct Ui_Vp_Ip lv = { .v1 = 20737, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Vp_Ip(struct Ui_Vp_Ip);
int send_Ui_Vp_Ip(){
    return zig_assert_Ui_Vp_Ip(ret_Ui_Vp_Ip());
}
struct Ui_Vp_Ip zig_ret_Ui_Vp_Ip();
int assert_ret_Ui_Vp_Ip(){
    return assert_Ui_Vp_Ip(zig_ret_Ui_Vp_Ip());
}

int assert_Ui_Vp_L(struct Ui_Vp_L lv){
    int err = 0;
  if (lv.v1 != 19695) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 2089) err = 3;
  return err;
}
struct Ui_Vp_L ret_Ui_Vp_L(){
    struct Ui_Vp_L lv = { .v1 = 19695, .v2 = 0, .v3 = 2089 };
    return lv;
}
int zig_assert_Ui_Vp_L(struct Ui_Vp_L);
int send_Ui_Vp_L(){
    return zig_assert_Ui_Vp_L(ret_Ui_Vp_L());
}
struct Ui_Vp_L zig_ret_Ui_Vp_L();
int assert_ret_Ui_Vp_L(){
    return assert_Ui_Vp_L(zig_ret_Ui_Vp_L());
}

int assert_Ui_Vp_S(struct Ui_Vp_S lv){
    int err = 0;
  if (lv.v1 != 22643) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 3854) err = 3;
  return err;
}
struct Ui_Vp_S ret_Ui_Vp_S(){
    struct Ui_Vp_S lv = { .v1 = 22643, .v2 = 0, .v3 = 3854 };
    return lv;
}
int zig_assert_Ui_Vp_S(struct Ui_Vp_S);
int send_Ui_Vp_S(){
    return zig_assert_Ui_Vp_S(ret_Ui_Vp_S());
}
struct Ui_Vp_S zig_ret_Ui_Vp_S();
int assert_ret_Ui_Vp_S(){
    return assert_Ui_Vp_S(zig_ret_Ui_Vp_S());
}

int assert_Ui_Vp_Uc(struct Ui_Vp_Uc lv){
    int err = 0;
  if (lv.v1 != 2525) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 89) err = 3;
  return err;
}
struct Ui_Vp_Uc ret_Ui_Vp_Uc(){
    struct Ui_Vp_Uc lv = { .v1 = 2525, .v2 = 0, .v3 = 89 };
    return lv;
}
int zig_assert_Ui_Vp_Uc(struct Ui_Vp_Uc);
int send_Ui_Vp_Uc(){
    return zig_assert_Ui_Vp_Uc(ret_Ui_Vp_Uc());
}
struct Ui_Vp_Uc zig_ret_Ui_Vp_Uc();
int assert_ret_Ui_Vp_Uc(){
    return assert_Ui_Vp_Uc(zig_ret_Ui_Vp_Uc());
}

int assert_Ui_Vp_Ui(struct Ui_Vp_Ui lv){
    int err = 0;
  if (lv.v1 != 25903) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 7407) err = 3;
  return err;
}
struct Ui_Vp_Ui ret_Ui_Vp_Ui(){
    struct Ui_Vp_Ui lv = { .v1 = 25903, .v2 = 0, .v3 = 7407 };
    return lv;
}
int zig_assert_Ui_Vp_Ui(struct Ui_Vp_Ui);
int send_Ui_Vp_Ui(){
    return zig_assert_Ui_Vp_Ui(ret_Ui_Vp_Ui());
}
struct Ui_Vp_Ui zig_ret_Ui_Vp_Ui();
int assert_ret_Ui_Vp_Ui(){
    return assert_Ui_Vp_Ui(zig_ret_Ui_Vp_Ui());
}

int assert_Ui_Vp_Ul(struct Ui_Vp_Ul lv){
    int err = 0;
  if (lv.v1 != 4962) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 72) err = 3;
  return err;
}
struct Ui_Vp_Ul ret_Ui_Vp_Ul(){
    struct Ui_Vp_Ul lv = { .v1 = 4962, .v2 = 0, .v3 = 72 };
    return lv;
}
int zig_assert_Ui_Vp_Ul(struct Ui_Vp_Ul);
int send_Ui_Vp_Ul(){
    return zig_assert_Ui_Vp_Ul(ret_Ui_Vp_Ul());
}
struct Ui_Vp_Ul zig_ret_Ui_Vp_Ul();
int assert_ret_Ui_Vp_Ul(){
    return assert_Ui_Vp_Ul(zig_ret_Ui_Vp_Ul());
}

int assert_Ui_Vp_Us(struct Ui_Vp_Us lv){
    int err = 0;
  if (lv.v1 != 14228) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 25551) err = 3;
  return err;
}
struct Ui_Vp_Us ret_Ui_Vp_Us(){
    struct Ui_Vp_Us lv = { .v1 = 14228, .v2 = 0, .v3 = 25551 };
    return lv;
}
int zig_assert_Ui_Vp_Us(struct Ui_Vp_Us);
int send_Ui_Vp_Us(){
    return zig_assert_Ui_Vp_Us(ret_Ui_Vp_Us());
}
struct Ui_Vp_Us zig_ret_Ui_Vp_Us();
int assert_ret_Ui_Vp_Us(){
    return assert_Ui_Vp_Us(zig_ret_Ui_Vp_Us());
}

int assert_Ui_Vp_Vp(struct Ui_Vp_Vp lv){
    int err = 0;
  if (lv.v1 != 950) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Vp_Vp ret_Ui_Vp_Vp(){
    struct Ui_Vp_Vp lv = { .v1 = 950, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Vp_Vp(struct Ui_Vp_Vp);
int send_Ui_Vp_Vp(){
    return zig_assert_Ui_Vp_Vp(ret_Ui_Vp_Vp());
}
struct Ui_Vp_Vp zig_ret_Ui_Vp_Vp();
int assert_ret_Ui_Vp_Vp(){
    return assert_Ui_Vp_Vp(zig_ret_Ui_Vp_Vp());
}

int assert_Ul(struct Ul lv){
    int err = 0;
  if (lv.v1 != 14013) err = 1;
  return err;
}
struct Ul ret_Ul(){
    struct Ul lv = { .v1 = 14013 };
    return lv;
}
int zig_assert_Ul(struct Ul);
int send_Ul(){
    return zig_assert_Ul(ret_Ul());
}
struct Ul zig_ret_Ul();
int assert_ret_Ul(){
    return assert_Ul(zig_ret_Ul());
}

