#include "CT_Snen_xab.h"

int assert_Sf_C(struct Sf_C lv){
    int err = 0;
  if (lv.v2 != 67) err = 2;
  return err;
}
struct Sf_C ret_Sf_C(){
    struct Sf_C lv = { .v1 = EMPTY, .v2 = 67 };
    return lv;
}
int zig_assert_Sf_C(struct Sf_C);
int send_Sf_C(){
    return zig_assert_Sf_C(ret_Sf_C());
}
struct Sf_C zig_ret_Sf_C();
int assert_ret_Sf_C(){
    return assert_Sf_C(zig_ret_Sf_C());
}

int assert_Sf_C_C(struct Sf_C_C lv){
    int err = 0;
  if (lv.v2 != 38) err = 2;
  if (lv.v3 != 90) err = 3;
  return err;
}
struct Sf_C_C ret_Sf_C_C(){
    struct Sf_C_C lv = { .v1 = EMPTY, .v2 = 38, .v3 = 90 };
    return lv;
}
int zig_assert_Sf_C_C(struct Sf_C_C);
int send_Sf_C_C(){
    return zig_assert_Sf_C_C(ret_Sf_C_C());
}
struct Sf_C_C zig_ret_Sf_C_C();
int assert_ret_Sf_C_C(){
    return assert_Sf_C_C(zig_ret_Sf_C_C());
}

int assert_Sf_C_D(struct Sf_C_D lv){
    int err = 0;
  if (lv.v2 != 112) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Sf_C_D ret_Sf_C_D(){
    struct Sf_C_D lv = { .v1 = EMPTY, .v2 = 112, .v3 = 4.5 };
    return lv;
}
int zig_assert_Sf_C_D(struct Sf_C_D);
int send_Sf_C_D(){
    return zig_assert_Sf_C_D(ret_Sf_C_D());
}
struct Sf_C_D zig_ret_Sf_C_D();
int assert_ret_Sf_C_D(){
    return assert_Sf_C_D(zig_ret_Sf_C_D());
}

int assert_Sf_C_F(struct Sf_C_F lv){
    int err = 0;
  if (lv.v2 != 60) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Sf_C_F ret_Sf_C_F(){
    struct Sf_C_F lv = { .v1 = EMPTY, .v2 = 60, .v3 = 4.5 };
    return lv;
}
int zig_assert_Sf_C_F(struct Sf_C_F);
int send_Sf_C_F(){
    return zig_assert_Sf_C_F(ret_Sf_C_F());
}
struct Sf_C_F zig_ret_Sf_C_F();
int assert_ret_Sf_C_F(){
    return assert_Sf_C_F(zig_ret_Sf_C_F());
}

int assert_Sf_C_I(struct Sf_C_I lv){
    int err = 0;
  if (lv.v2 != 122) err = 2;
  if (lv.v3 != 13370) err = 3;
  return err;
}
struct Sf_C_I ret_Sf_C_I(){
    struct Sf_C_I lv = { .v1 = EMPTY, .v2 = 122, .v3 = 13370 };
    return lv;
}
int zig_assert_Sf_C_I(struct Sf_C_I);
int send_Sf_C_I(){
    return zig_assert_Sf_C_I(ret_Sf_C_I());
}
struct Sf_C_I zig_ret_Sf_C_I();
int assert_ret_Sf_C_I(){
    return assert_Sf_C_I(zig_ret_Sf_C_I());
}

int assert_Sf_C_Ip(struct Sf_C_Ip lv){
    int err = 0;
  if (lv.v2 != 37) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_C_Ip ret_Sf_C_Ip(){
    struct Sf_C_Ip lv = { .v1 = EMPTY, .v2 = 37, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_C_Ip(struct Sf_C_Ip);
int send_Sf_C_Ip(){
    return zig_assert_Sf_C_Ip(ret_Sf_C_Ip());
}
struct Sf_C_Ip zig_ret_Sf_C_Ip();
int assert_ret_Sf_C_Ip(){
    return assert_Sf_C_Ip(zig_ret_Sf_C_Ip());
}

int assert_Sf_C_L(struct Sf_C_L lv){
    int err = 0;
  if (lv.v2 != 61) err = 2;
  if (lv.v3 != 6859) err = 3;
  return err;
}
struct Sf_C_L ret_Sf_C_L(){
    struct Sf_C_L lv = { .v1 = EMPTY, .v2 = 61, .v3 = 6859 };
    return lv;
}
int zig_assert_Sf_C_L(struct Sf_C_L);
int send_Sf_C_L(){
    return zig_assert_Sf_C_L(ret_Sf_C_L());
}
struct Sf_C_L zig_ret_Sf_C_L();
int assert_ret_Sf_C_L(){
    return assert_Sf_C_L(zig_ret_Sf_C_L());
}

int assert_Sf_C_S(struct Sf_C_S lv){
    int err = 0;
  if (lv.v2 != 22) err = 2;
  if (lv.v3 != 23013) err = 3;
  return err;
}
struct Sf_C_S ret_Sf_C_S(){
    struct Sf_C_S lv = { .v1 = EMPTY, .v2 = 22, .v3 = 23013 };
    return lv;
}
int zig_assert_Sf_C_S(struct Sf_C_S);
int send_Sf_C_S(){
    return zig_assert_Sf_C_S(ret_Sf_C_S());
}
struct Sf_C_S zig_ret_Sf_C_S();
int assert_ret_Sf_C_S(){
    return assert_Sf_C_S(zig_ret_Sf_C_S());
}

int assert_Sf_C_Sf(struct Sf_C_Sf lv){
    int err = 0;
  if (lv.v2 != 66) err = 2;
  return err;
}
struct Sf_C_Sf ret_Sf_C_Sf(){
    struct Sf_C_Sf lv = { .v1 = EMPTY, .v2 = 66, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_C_Sf(struct Sf_C_Sf);
int send_Sf_C_Sf(){
    return zig_assert_Sf_C_Sf(ret_Sf_C_Sf());
}
struct Sf_C_Sf zig_ret_Sf_C_Sf();
int assert_ret_Sf_C_Sf(){
    return assert_Sf_C_Sf(zig_ret_Sf_C_Sf());
}

int assert_Sf_C_Uc(struct Sf_C_Uc lv){
    int err = 0;
  if (lv.v2 != 6) err = 2;
  if (lv.v3 != 65) err = 3;
  return err;
}
struct Sf_C_Uc ret_Sf_C_Uc(){
    struct Sf_C_Uc lv = { .v1 = EMPTY, .v2 = 6, .v3 = 65 };
    return lv;
}
int zig_assert_Sf_C_Uc(struct Sf_C_Uc);
int send_Sf_C_Uc(){
    return zig_assert_Sf_C_Uc(ret_Sf_C_Uc());
}
struct Sf_C_Uc zig_ret_Sf_C_Uc();
int assert_ret_Sf_C_Uc(){
    return assert_Sf_C_Uc(zig_ret_Sf_C_Uc());
}

int assert_Sf_C_Ui(struct Sf_C_Ui lv){
    int err = 0;
  if (lv.v2 != 118) err = 2;
  if (lv.v3 != 15881) err = 3;
  return err;
}
struct Sf_C_Ui ret_Sf_C_Ui(){
    struct Sf_C_Ui lv = { .v1 = EMPTY, .v2 = 118, .v3 = 15881 };
    return lv;
}
int zig_assert_Sf_C_Ui(struct Sf_C_Ui);
int send_Sf_C_Ui(){
    return zig_assert_Sf_C_Ui(ret_Sf_C_Ui());
}
struct Sf_C_Ui zig_ret_Sf_C_Ui();
int assert_ret_Sf_C_Ui(){
    return assert_Sf_C_Ui(zig_ret_Sf_C_Ui());
}

int assert_Sf_C_Ul(struct Sf_C_Ul lv){
    int err = 0;
  if (lv.v2 != 101) err = 2;
  if (lv.v3 != 14340) err = 3;
  return err;
}
struct Sf_C_Ul ret_Sf_C_Ul(){
    struct Sf_C_Ul lv = { .v1 = EMPTY, .v2 = 101, .v3 = 14340 };
    return lv;
}
int zig_assert_Sf_C_Ul(struct Sf_C_Ul);
int send_Sf_C_Ul(){
    return zig_assert_Sf_C_Ul(ret_Sf_C_Ul());
}
struct Sf_C_Ul zig_ret_Sf_C_Ul();
int assert_ret_Sf_C_Ul(){
    return assert_Sf_C_Ul(zig_ret_Sf_C_Ul());
}

int assert_Sf_C_Us(struct Sf_C_Us lv){
    int err = 0;
  if (lv.v2 != 33) err = 2;
  if (lv.v3 != 12520) err = 3;
  return err;
}
struct Sf_C_Us ret_Sf_C_Us(){
    struct Sf_C_Us lv = { .v1 = EMPTY, .v2 = 33, .v3 = 12520 };
    return lv;
}
int zig_assert_Sf_C_Us(struct Sf_C_Us);
int send_Sf_C_Us(){
    return zig_assert_Sf_C_Us(ret_Sf_C_Us());
}
struct Sf_C_Us zig_ret_Sf_C_Us();
int assert_ret_Sf_C_Us(){
    return assert_Sf_C_Us(zig_ret_Sf_C_Us());
}

int assert_Sf_C_Vp(struct Sf_C_Vp lv){
    int err = 0;
  if (lv.v2 != 120) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_C_Vp ret_Sf_C_Vp(){
    struct Sf_C_Vp lv = { .v1 = EMPTY, .v2 = 120, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_C_Vp(struct Sf_C_Vp);
int send_Sf_C_Vp(){
    return zig_assert_Sf_C_Vp(ret_Sf_C_Vp());
}
struct Sf_C_Vp zig_ret_Sf_C_Vp();
int assert_ret_Sf_C_Vp(){
    return assert_Sf_C_Vp(zig_ret_Sf_C_Vp());
}

int assert_Sf_D(struct Sf_D lv){
    int err = 0;
  if (lv.v2 != 4.5) err = 2;
  return err;
}
struct Sf_D ret_Sf_D(){
    struct Sf_D lv = { .v1 = EMPTY, .v2 = 4.5 };
    return lv;
}
int zig_assert_Sf_D(struct Sf_D);
int send_Sf_D(){
    return zig_assert_Sf_D(ret_Sf_D());
}
struct Sf_D zig_ret_Sf_D();
int assert_ret_Sf_D(){
    return assert_Sf_D(zig_ret_Sf_D());
}

int assert_Sf_D_C(struct Sf_D_C lv){
    int err = 0;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 33) err = 3;
  return err;
}
struct Sf_D_C ret_Sf_D_C(){
    struct Sf_D_C lv = { .v1 = EMPTY, .v2 = -0.25, .v3 = 33 };
    return lv;
}
int zig_assert_Sf_D_C(struct Sf_D_C);
int send_Sf_D_C(){
    return zig_assert_Sf_D_C(ret_Sf_D_C());
}
struct Sf_D_C zig_ret_Sf_D_C();
int assert_ret_Sf_D_C(){
    return assert_Sf_D_C(zig_ret_Sf_D_C());
}

int assert_Sf_D_D(struct Sf_D_D lv){
    int err = 0;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Sf_D_D ret_Sf_D_D(){
    struct Sf_D_D lv = { .v1 = EMPTY, .v2 = 0.5, .v3 = -2.125 };
    return lv;
}
int zig_assert_Sf_D_D(struct Sf_D_D);
int send_Sf_D_D(){
    return zig_assert_Sf_D_D(ret_Sf_D_D());
}
struct Sf_D_D zig_ret_Sf_D_D();
int assert_ret_Sf_D_D(){
    return assert_Sf_D_D(zig_ret_Sf_D_D());
}

int assert_Sf_D_F(struct Sf_D_F lv){
    int err = 0;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Sf_D_F ret_Sf_D_F(){
    struct Sf_D_F lv = { .v1 = EMPTY, .v2 = 4.5, .v3 = 0.5 };
    return lv;
}
int zig_assert_Sf_D_F(struct Sf_D_F);
int send_Sf_D_F(){
    return zig_assert_Sf_D_F(ret_Sf_D_F());
}
struct Sf_D_F zig_ret_Sf_D_F();
int assert_ret_Sf_D_F(){
    return assert_Sf_D_F(zig_ret_Sf_D_F());
}

int assert_Sf_D_I(struct Sf_D_I lv){
    int err = 0;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 28800) err = 3;
  return err;
}
struct Sf_D_I ret_Sf_D_I(){
    struct Sf_D_I lv = { .v1 = EMPTY, .v2 = 1.0, .v3 = 28800 };
    return lv;
}
int zig_assert_Sf_D_I(struct Sf_D_I);
int send_Sf_D_I(){
    return zig_assert_Sf_D_I(ret_Sf_D_I());
}
struct Sf_D_I zig_ret_Sf_D_I();
int assert_ret_Sf_D_I(){
    return assert_Sf_D_I(zig_ret_Sf_D_I());
}

int assert_Sf_D_Ip(struct Sf_D_Ip lv){
    int err = 0;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_D_Ip ret_Sf_D_Ip(){
    struct Sf_D_Ip lv = { .v1 = EMPTY, .v2 = 0.5, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_D_Ip(struct Sf_D_Ip);
int send_Sf_D_Ip(){
    return zig_assert_Sf_D_Ip(ret_Sf_D_Ip());
}
struct Sf_D_Ip zig_ret_Sf_D_Ip();
int assert_ret_Sf_D_Ip(){
    return assert_Sf_D_Ip(zig_ret_Sf_D_Ip());
}

int assert_Sf_D_L(struct Sf_D_L lv){
    int err = 0;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 6422) err = 3;
  return err;
}
struct Sf_D_L ret_Sf_D_L(){
    struct Sf_D_L lv = { .v1 = EMPTY, .v2 = 7.0, .v3 = 6422 };
    return lv;
}
int zig_assert_Sf_D_L(struct Sf_D_L);
int send_Sf_D_L(){
    return zig_assert_Sf_D_L(ret_Sf_D_L());
}
struct Sf_D_L zig_ret_Sf_D_L();
int assert_ret_Sf_D_L(){
    return assert_Sf_D_L(zig_ret_Sf_D_L());
}

int assert_Sf_D_S(struct Sf_D_S lv){
    int err = 0;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 18750) err = 3;
  return err;
}
struct Sf_D_S ret_Sf_D_S(){
    struct Sf_D_S lv = { .v1 = EMPTY, .v2 = 0.875, .v3 = 18750 };
    return lv;
}
int zig_assert_Sf_D_S(struct Sf_D_S);
int send_Sf_D_S(){
    return zig_assert_Sf_D_S(ret_Sf_D_S());
}
struct Sf_D_S zig_ret_Sf_D_S();
int assert_ret_Sf_D_S(){
    return assert_Sf_D_S(zig_ret_Sf_D_S());
}

int assert_Sf_D_Sf(struct Sf_D_Sf lv){
    int err = 0;
  if (lv.v2 != 1.0) err = 2;
  return err;
}
struct Sf_D_Sf ret_Sf_D_Sf(){
    struct Sf_D_Sf lv = { .v1 = EMPTY, .v2 = 1.0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_D_Sf(struct Sf_D_Sf);
int send_Sf_D_Sf(){
    return zig_assert_Sf_D_Sf(ret_Sf_D_Sf());
}
struct Sf_D_Sf zig_ret_Sf_D_Sf();
int assert_ret_Sf_D_Sf(){
    return assert_Sf_D_Sf(zig_ret_Sf_D_Sf());
}

int assert_Sf_D_Uc(struct Sf_D_Uc lv){
    int err = 0;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 38) err = 3;
  return err;
}
struct Sf_D_Uc ret_Sf_D_Uc(){
    struct Sf_D_Uc lv = { .v1 = EMPTY, .v2 = -2.125, .v3 = 38 };
    return lv;
}
int zig_assert_Sf_D_Uc(struct Sf_D_Uc);
int send_Sf_D_Uc(){
    return zig_assert_Sf_D_Uc(ret_Sf_D_Uc());
}
struct Sf_D_Uc zig_ret_Sf_D_Uc();
int assert_ret_Sf_D_Uc(){
    return assert_Sf_D_Uc(zig_ret_Sf_D_Uc());
}

int assert_Sf_D_Ui(struct Sf_D_Ui lv){
    int err = 0;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 1725) err = 3;
  return err;
}
struct Sf_D_Ui ret_Sf_D_Ui(){
    struct Sf_D_Ui lv = { .v1 = EMPTY, .v2 = 0.5, .v3 = 1725 };
    return lv;
}
int zig_assert_Sf_D_Ui(struct Sf_D_Ui);
int send_Sf_D_Ui(){
    return zig_assert_Sf_D_Ui(ret_Sf_D_Ui());
}
struct Sf_D_Ui zig_ret_Sf_D_Ui();
int assert_ret_Sf_D_Ui(){
    return assert_Sf_D_Ui(zig_ret_Sf_D_Ui());
}

int assert_Sf_D_Ul(struct Sf_D_Ul lv){
    int err = 0;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 18494) err = 3;
  return err;
}
struct Sf_D_Ul ret_Sf_D_Ul(){
    struct Sf_D_Ul lv = { .v1 = EMPTY, .v2 = -0.25, .v3 = 18494 };
    return lv;
}
int zig_assert_Sf_D_Ul(struct Sf_D_Ul);
int send_Sf_D_Ul(){
    return zig_assert_Sf_D_Ul(ret_Sf_D_Ul());
}
struct Sf_D_Ul zig_ret_Sf_D_Ul();
int assert_ret_Sf_D_Ul(){
    return assert_Sf_D_Ul(zig_ret_Sf_D_Ul());
}

int assert_Sf_D_Us(struct Sf_D_Us lv){
    int err = 0;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 8965) err = 3;
  return err;
}
struct Sf_D_Us ret_Sf_D_Us(){
    struct Sf_D_Us lv = { .v1 = EMPTY, .v2 = -0.25, .v3 = 8965 };
    return lv;
}
int zig_assert_Sf_D_Us(struct Sf_D_Us);
int send_Sf_D_Us(){
    return zig_assert_Sf_D_Us(ret_Sf_D_Us());
}
struct Sf_D_Us zig_ret_Sf_D_Us();
int assert_ret_Sf_D_Us(){
    return assert_Sf_D_Us(zig_ret_Sf_D_Us());
}

int assert_Sf_D_Vp(struct Sf_D_Vp lv){
    int err = 0;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_D_Vp ret_Sf_D_Vp(){
    struct Sf_D_Vp lv = { .v1 = EMPTY, .v2 = 7.0, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_D_Vp(struct Sf_D_Vp);
int send_Sf_D_Vp(){
    return zig_assert_Sf_D_Vp(ret_Sf_D_Vp());
}
struct Sf_D_Vp zig_ret_Sf_D_Vp();
int assert_ret_Sf_D_Vp(){
    return assert_Sf_D_Vp(zig_ret_Sf_D_Vp());
}

int assert_Sf_F(struct Sf_F lv){
    int err = 0;
  if (lv.v2 != -2.125) err = 2;
  return err;
}
struct Sf_F ret_Sf_F(){
    struct Sf_F lv = { .v1 = EMPTY, .v2 = -2.125 };
    return lv;
}
int zig_assert_Sf_F(struct Sf_F);
int send_Sf_F(){
    return zig_assert_Sf_F(ret_Sf_F());
}
struct Sf_F zig_ret_Sf_F();
int assert_ret_Sf_F(){
    return assert_Sf_F(zig_ret_Sf_F());
}

int assert_Sf_F_C(struct Sf_F_C lv){
    int err = 0;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 99) err = 3;
  return err;
}
struct Sf_F_C ret_Sf_F_C(){
    struct Sf_F_C lv = { .v1 = EMPTY, .v2 = -0.25, .v3 = 99 };
    return lv;
}
int zig_assert_Sf_F_C(struct Sf_F_C);
int send_Sf_F_C(){
    return zig_assert_Sf_F_C(ret_Sf_F_C());
}
struct Sf_F_C zig_ret_Sf_F_C();
int assert_ret_Sf_F_C(){
    return assert_Sf_F_C(zig_ret_Sf_F_C());
}

int assert_Sf_F_D(struct Sf_F_D lv){
    int err = 0;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Sf_F_D ret_Sf_F_D(){
    struct Sf_F_D lv = { .v1 = EMPTY, .v2 = 7.0, .v3 = -2.125 };
    return lv;
}
int zig_assert_Sf_F_D(struct Sf_F_D);
int send_Sf_F_D(){
    return zig_assert_Sf_F_D(ret_Sf_F_D());
}
struct Sf_F_D zig_ret_Sf_F_D();
int assert_ret_Sf_F_D(){
    return assert_Sf_F_D(zig_ret_Sf_F_D());
}

int assert_Sf_F_F(struct Sf_F_F lv){
    int err = 0;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Sf_F_F ret_Sf_F_F(){
    struct Sf_F_F lv = { .v1 = EMPTY, .v2 = 0.5, .v3 = 0.875 };
    return lv;
}
int zig_assert_Sf_F_F(struct Sf_F_F);
int send_Sf_F_F(){
    return zig_assert_Sf_F_F(ret_Sf_F_F());
}
struct Sf_F_F zig_ret_Sf_F_F();
int assert_ret_Sf_F_F(){
    return assert_Sf_F_F(zig_ret_Sf_F_F());
}

int assert_Sf_F_I(struct Sf_F_I lv){
    int err = 0;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 8447) err = 3;
  return err;
}
struct Sf_F_I ret_Sf_F_I(){
    struct Sf_F_I lv = { .v1 = EMPTY, .v2 = 1.0, .v3 = 8447 };
    return lv;
}
int zig_assert_Sf_F_I(struct Sf_F_I);
int send_Sf_F_I(){
    return zig_assert_Sf_F_I(ret_Sf_F_I());
}
struct Sf_F_I zig_ret_Sf_F_I();
int assert_ret_Sf_F_I(){
    return assert_Sf_F_I(zig_ret_Sf_F_I());
}

int assert_Sf_F_Ip(struct Sf_F_Ip lv){
    int err = 0;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_F_Ip ret_Sf_F_Ip(){
    struct Sf_F_Ip lv = { .v1 = EMPTY, .v2 = 4.5, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_F_Ip(struct Sf_F_Ip);
int send_Sf_F_Ip(){
    return zig_assert_Sf_F_Ip(ret_Sf_F_Ip());
}
struct Sf_F_Ip zig_ret_Sf_F_Ip();
int assert_ret_Sf_F_Ip(){
    return assert_Sf_F_Ip(zig_ret_Sf_F_Ip());
}

int assert_Sf_F_L(struct Sf_F_L lv){
    int err = 0;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 27983) err = 3;
  return err;
}
struct Sf_F_L ret_Sf_F_L(){
    struct Sf_F_L lv = { .v1 = EMPTY, .v2 = 0.875, .v3 = 27983 };
    return lv;
}
int zig_assert_Sf_F_L(struct Sf_F_L);
int send_Sf_F_L(){
    return zig_assert_Sf_F_L(ret_Sf_F_L());
}
struct Sf_F_L zig_ret_Sf_F_L();
int assert_ret_Sf_F_L(){
    return assert_Sf_F_L(zig_ret_Sf_F_L());
}

int assert_Sf_F_S(struct Sf_F_S lv){
    int err = 0;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 16334) err = 3;
  return err;
}
struct Sf_F_S ret_Sf_F_S(){
    struct Sf_F_S lv = { .v1 = EMPTY, .v2 = 7.0, .v3 = 16334 };
    return lv;
}
int zig_assert_Sf_F_S(struct Sf_F_S);
int send_Sf_F_S(){
    return zig_assert_Sf_F_S(ret_Sf_F_S());
}
struct Sf_F_S zig_ret_Sf_F_S();
int assert_ret_Sf_F_S(){
    return assert_Sf_F_S(zig_ret_Sf_F_S());
}

int assert_Sf_F_Sf(struct Sf_F_Sf lv){
    int err = 0;
  if (lv.v2 != 4.5) err = 2;
  return err;
}
struct Sf_F_Sf ret_Sf_F_Sf(){
    struct Sf_F_Sf lv = { .v1 = EMPTY, .v2 = 4.5, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_F_Sf(struct Sf_F_Sf);
int send_Sf_F_Sf(){
    return zig_assert_Sf_F_Sf(ret_Sf_F_Sf());
}
struct Sf_F_Sf zig_ret_Sf_F_Sf();
int assert_ret_Sf_F_Sf(){
    return assert_Sf_F_Sf(zig_ret_Sf_F_Sf());
}

int assert_Sf_F_Uc(struct Sf_F_Uc lv){
    int err = 0;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 12) err = 3;
  return err;
}
struct Sf_F_Uc ret_Sf_F_Uc(){
    struct Sf_F_Uc lv = { .v1 = EMPTY, .v2 = 1.0, .v3 = 12 };
    return lv;
}
int zig_assert_Sf_F_Uc(struct Sf_F_Uc);
int send_Sf_F_Uc(){
    return zig_assert_Sf_F_Uc(ret_Sf_F_Uc());
}
struct Sf_F_Uc zig_ret_Sf_F_Uc();
int assert_ret_Sf_F_Uc(){
    return assert_Sf_F_Uc(zig_ret_Sf_F_Uc());
}

int assert_Sf_F_Ui(struct Sf_F_Ui lv){
    int err = 0;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 13538) err = 3;
  return err;
}
struct Sf_F_Ui ret_Sf_F_Ui(){
    struct Sf_F_Ui lv = { .v1 = EMPTY, .v2 = 4.5, .v3 = 13538 };
    return lv;
}
int zig_assert_Sf_F_Ui(struct Sf_F_Ui);
int send_Sf_F_Ui(){
    return zig_assert_Sf_F_Ui(ret_Sf_F_Ui());
}
struct Sf_F_Ui zig_ret_Sf_F_Ui();
int assert_ret_Sf_F_Ui(){
    return assert_Sf_F_Ui(zig_ret_Sf_F_Ui());
}

int assert_Sf_F_Ul(struct Sf_F_Ul lv){
    int err = 0;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 18464) err = 3;
  return err;
}
struct Sf_F_Ul ret_Sf_F_Ul(){
    struct Sf_F_Ul lv = { .v1 = EMPTY, .v2 = -0.25, .v3 = 18464 };
    return lv;
}
int zig_assert_Sf_F_Ul(struct Sf_F_Ul);
int send_Sf_F_Ul(){
    return zig_assert_Sf_F_Ul(ret_Sf_F_Ul());
}
struct Sf_F_Ul zig_ret_Sf_F_Ul();
int assert_ret_Sf_F_Ul(){
    return assert_Sf_F_Ul(zig_ret_Sf_F_Ul());
}

int assert_Sf_F_Us(struct Sf_F_Us lv){
    int err = 0;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 419) err = 3;
  return err;
}
struct Sf_F_Us ret_Sf_F_Us(){
    struct Sf_F_Us lv = { .v1 = EMPTY, .v2 = -2.125, .v3 = 419 };
    return lv;
}
int zig_assert_Sf_F_Us(struct Sf_F_Us);
int send_Sf_F_Us(){
    return zig_assert_Sf_F_Us(ret_Sf_F_Us());
}
struct Sf_F_Us zig_ret_Sf_F_Us();
int assert_ret_Sf_F_Us(){
    return assert_Sf_F_Us(zig_ret_Sf_F_Us());
}

int assert_Sf_F_Vp(struct Sf_F_Vp lv){
    int err = 0;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_F_Vp ret_Sf_F_Vp(){
    struct Sf_F_Vp lv = { .v1 = EMPTY, .v2 = 0.5, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_F_Vp(struct Sf_F_Vp);
int send_Sf_F_Vp(){
    return zig_assert_Sf_F_Vp(ret_Sf_F_Vp());
}
struct Sf_F_Vp zig_ret_Sf_F_Vp();
int assert_ret_Sf_F_Vp(){
    return assert_Sf_F_Vp(zig_ret_Sf_F_Vp());
}

int assert_Sf_I(struct Sf_I lv){
    int err = 0;
  if (lv.v2 != 10424) err = 2;
  return err;
}
struct Sf_I ret_Sf_I(){
    struct Sf_I lv = { .v1 = EMPTY, .v2 = 10424 };
    return lv;
}
int zig_assert_Sf_I(struct Sf_I);
int send_Sf_I(){
    return zig_assert_Sf_I(ret_Sf_I());
}
struct Sf_I zig_ret_Sf_I();
int assert_ret_Sf_I(){
    return assert_Sf_I(zig_ret_Sf_I());
}

int assert_Sf_I_C(struct Sf_I_C lv){
    int err = 0;
  if (lv.v2 != 17020) err = 2;
  if (lv.v3 != 31) err = 3;
  return err;
}
struct Sf_I_C ret_Sf_I_C(){
    struct Sf_I_C lv = { .v1 = EMPTY, .v2 = 17020, .v3 = 31 };
    return lv;
}
int zig_assert_Sf_I_C(struct Sf_I_C);
int send_Sf_I_C(){
    return zig_assert_Sf_I_C(ret_Sf_I_C());
}
struct Sf_I_C zig_ret_Sf_I_C();
int assert_ret_Sf_I_C(){
    return assert_Sf_I_C(zig_ret_Sf_I_C());
}

int assert_Sf_I_D(struct Sf_I_D lv){
    int err = 0;
  if (lv.v2 != 26321) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Sf_I_D ret_Sf_I_D(){
    struct Sf_I_D lv = { .v1 = EMPTY, .v2 = 26321, .v3 = 0.5 };
    return lv;
}
int zig_assert_Sf_I_D(struct Sf_I_D);
int send_Sf_I_D(){
    return zig_assert_Sf_I_D(ret_Sf_I_D());
}
struct Sf_I_D zig_ret_Sf_I_D();
int assert_ret_Sf_I_D(){
    return assert_Sf_I_D(zig_ret_Sf_I_D());
}

int assert_Sf_I_F(struct Sf_I_F lv){
    int err = 0;
  if (lv.v2 != 30704) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Sf_I_F ret_Sf_I_F(){
    struct Sf_I_F lv = { .v1 = EMPTY, .v2 = 30704, .v3 = 0.5 };
    return lv;
}
int zig_assert_Sf_I_F(struct Sf_I_F);
int send_Sf_I_F(){
    return zig_assert_Sf_I_F(ret_Sf_I_F());
}
struct Sf_I_F zig_ret_Sf_I_F();
int assert_ret_Sf_I_F(){
    return assert_Sf_I_F(zig_ret_Sf_I_F());
}

int assert_Sf_I_I(struct Sf_I_I lv){
    int err = 0;
  if (lv.v2 != 3345) err = 2;
  if (lv.v3 != 20037) err = 3;
  return err;
}
struct Sf_I_I ret_Sf_I_I(){
    struct Sf_I_I lv = { .v1 = EMPTY, .v2 = 3345, .v3 = 20037 };
    return lv;
}
int zig_assert_Sf_I_I(struct Sf_I_I);
int send_Sf_I_I(){
    return zig_assert_Sf_I_I(ret_Sf_I_I());
}
struct Sf_I_I zig_ret_Sf_I_I();
int assert_ret_Sf_I_I(){
    return assert_Sf_I_I(zig_ret_Sf_I_I());
}

int assert_Sf_I_Ip(struct Sf_I_Ip lv){
    int err = 0;
  if (lv.v2 != 5573) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_I_Ip ret_Sf_I_Ip(){
    struct Sf_I_Ip lv = { .v1 = EMPTY, .v2 = 5573, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_I_Ip(struct Sf_I_Ip);
int send_Sf_I_Ip(){
    return zig_assert_Sf_I_Ip(ret_Sf_I_Ip());
}
struct Sf_I_Ip zig_ret_Sf_I_Ip();
int assert_ret_Sf_I_Ip(){
    return assert_Sf_I_Ip(zig_ret_Sf_I_Ip());
}

int assert_Sf_I_L(struct Sf_I_L lv){
    int err = 0;
  if (lv.v2 != 13890) err = 2;
  if (lv.v3 != 2781) err = 3;
  return err;
}
struct Sf_I_L ret_Sf_I_L(){
    struct Sf_I_L lv = { .v1 = EMPTY, .v2 = 13890, .v3 = 2781 };
    return lv;
}
int zig_assert_Sf_I_L(struct Sf_I_L);
int send_Sf_I_L(){
    return zig_assert_Sf_I_L(ret_Sf_I_L());
}
struct Sf_I_L zig_ret_Sf_I_L();
int assert_ret_Sf_I_L(){
    return assert_Sf_I_L(zig_ret_Sf_I_L());
}

int assert_Sf_I_S(struct Sf_I_S lv){
    int err = 0;
  if (lv.v2 != 16337) err = 2;
  if (lv.v3 != 22278) err = 3;
  return err;
}
struct Sf_I_S ret_Sf_I_S(){
    struct Sf_I_S lv = { .v1 = EMPTY, .v2 = 16337, .v3 = 22278 };
    return lv;
}
int zig_assert_Sf_I_S(struct Sf_I_S);
int send_Sf_I_S(){
    return zig_assert_Sf_I_S(ret_Sf_I_S());
}
struct Sf_I_S zig_ret_Sf_I_S();
int assert_ret_Sf_I_S(){
    return assert_Sf_I_S(zig_ret_Sf_I_S());
}

int assert_Sf_I_Sf(struct Sf_I_Sf lv){
    int err = 0;
  if (lv.v2 != 8651) err = 2;
  return err;
}
struct Sf_I_Sf ret_Sf_I_Sf(){
    struct Sf_I_Sf lv = { .v1 = EMPTY, .v2 = 8651, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_I_Sf(struct Sf_I_Sf);
int send_Sf_I_Sf(){
    return zig_assert_Sf_I_Sf(ret_Sf_I_Sf());
}
struct Sf_I_Sf zig_ret_Sf_I_Sf();
int assert_ret_Sf_I_Sf(){
    return assert_Sf_I_Sf(zig_ret_Sf_I_Sf());
}

int assert_Sf_I_Uc(struct Sf_I_Uc lv){
    int err = 0;
  if (lv.v2 != 9837) err = 2;
  if (lv.v3 != 115) err = 3;
  return err;
}
struct Sf_I_Uc ret_Sf_I_Uc(){
    struct Sf_I_Uc lv = { .v1 = EMPTY, .v2 = 9837, .v3 = 115 };
    return lv;
}
int zig_assert_Sf_I_Uc(struct Sf_I_Uc);
int send_Sf_I_Uc(){
    return zig_assert_Sf_I_Uc(ret_Sf_I_Uc());
}
struct Sf_I_Uc zig_ret_Sf_I_Uc();
int assert_ret_Sf_I_Uc(){
    return assert_Sf_I_Uc(zig_ret_Sf_I_Uc());
}

int assert_Sf_I_Ui(struct Sf_I_Ui lv){
    int err = 0;
  if (lv.v2 != 275) err = 2;
  if (lv.v3 != 11579) err = 3;
  return err;
}
struct Sf_I_Ui ret_Sf_I_Ui(){
    struct Sf_I_Ui lv = { .v1 = EMPTY, .v2 = 275, .v3 = 11579 };
    return lv;
}
int zig_assert_Sf_I_Ui(struct Sf_I_Ui);
int send_Sf_I_Ui(){
    return zig_assert_Sf_I_Ui(ret_Sf_I_Ui());
}
struct Sf_I_Ui zig_ret_Sf_I_Ui();
int assert_ret_Sf_I_Ui(){
    return assert_Sf_I_Ui(zig_ret_Sf_I_Ui());
}

int assert_Sf_I_Ul(struct Sf_I_Ul lv){
    int err = 0;
  if (lv.v2 != 9061) err = 2;
  if (lv.v3 != 1767) err = 3;
  return err;
}
struct Sf_I_Ul ret_Sf_I_Ul(){
    struct Sf_I_Ul lv = { .v1 = EMPTY, .v2 = 9061, .v3 = 1767 };
    return lv;
}
int zig_assert_Sf_I_Ul(struct Sf_I_Ul);
int send_Sf_I_Ul(){
    return zig_assert_Sf_I_Ul(ret_Sf_I_Ul());
}
struct Sf_I_Ul zig_ret_Sf_I_Ul();
int assert_ret_Sf_I_Ul(){
    return assert_Sf_I_Ul(zig_ret_Sf_I_Ul());
}

int assert_Sf_I_Us(struct Sf_I_Us lv){
    int err = 0;
  if (lv.v2 != 21099) err = 2;
  if (lv.v3 != 30349) err = 3;
  return err;
}
struct Sf_I_Us ret_Sf_I_Us(){
    struct Sf_I_Us lv = { .v1 = EMPTY, .v2 = 21099, .v3 = 30349 };
    return lv;
}
int zig_assert_Sf_I_Us(struct Sf_I_Us);
int send_Sf_I_Us(){
    return zig_assert_Sf_I_Us(ret_Sf_I_Us());
}
struct Sf_I_Us zig_ret_Sf_I_Us();
int assert_ret_Sf_I_Us(){
    return assert_Sf_I_Us(zig_ret_Sf_I_Us());
}

int assert_Sf_I_Vp(struct Sf_I_Vp lv){
    int err = 0;
  if (lv.v2 != 15528) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_I_Vp ret_Sf_I_Vp(){
    struct Sf_I_Vp lv = { .v1 = EMPTY, .v2 = 15528, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_I_Vp(struct Sf_I_Vp);
int send_Sf_I_Vp(){
    return zig_assert_Sf_I_Vp(ret_Sf_I_Vp());
}
struct Sf_I_Vp zig_ret_Sf_I_Vp();
int assert_ret_Sf_I_Vp(){
    return assert_Sf_I_Vp(zig_ret_Sf_I_Vp());
}

int assert_Sf_Ip(struct Sf_Ip lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Sf_Ip ret_Sf_Ip(){
    struct Sf_Ip lv = { .v1 = EMPTY, .v2 = 0 };
    return lv;
}
int zig_assert_Sf_Ip(struct Sf_Ip);
int send_Sf_Ip(){
    return zig_assert_Sf_Ip(ret_Sf_Ip());
}
struct Sf_Ip zig_ret_Sf_Ip();
int assert_ret_Sf_Ip(){
    return assert_Sf_Ip(zig_ret_Sf_Ip());
}

int assert_Sf_Ip_C(struct Sf_Ip_C lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 83) err = 3;
  return err;
}
struct Sf_Ip_C ret_Sf_Ip_C(){
    struct Sf_Ip_C lv = { .v1 = EMPTY, .v2 = 0, .v3 = 83 };
    return lv;
}
int zig_assert_Sf_Ip_C(struct Sf_Ip_C);
int send_Sf_Ip_C(){
    return zig_assert_Sf_Ip_C(ret_Sf_Ip_C());
}
struct Sf_Ip_C zig_ret_Sf_Ip_C();
int assert_ret_Sf_Ip_C(){
    return assert_Sf_Ip_C(zig_ret_Sf_Ip_C());
}

int assert_Sf_Ip_D(struct Sf_Ip_D lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Sf_Ip_D ret_Sf_Ip_D(){
    struct Sf_Ip_D lv = { .v1 = EMPTY, .v2 = 0, .v3 = -0.25 };
    return lv;
}
int zig_assert_Sf_Ip_D(struct Sf_Ip_D);
int send_Sf_Ip_D(){
    return zig_assert_Sf_Ip_D(ret_Sf_Ip_D());
}
struct Sf_Ip_D zig_ret_Sf_Ip_D();
int assert_ret_Sf_Ip_D(){
    return assert_Sf_Ip_D(zig_ret_Sf_Ip_D());
}

int assert_Sf_Ip_F(struct Sf_Ip_F lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Sf_Ip_F ret_Sf_Ip_F(){
    struct Sf_Ip_F lv = { .v1 = EMPTY, .v2 = 0, .v3 = 1.0 };
    return lv;
}
int zig_assert_Sf_Ip_F(struct Sf_Ip_F);
int send_Sf_Ip_F(){
    return zig_assert_Sf_Ip_F(ret_Sf_Ip_F());
}
struct Sf_Ip_F zig_ret_Sf_Ip_F();
int assert_ret_Sf_Ip_F(){
    return assert_Sf_Ip_F(zig_ret_Sf_Ip_F());
}

int assert_Sf_Ip_I(struct Sf_Ip_I lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4937) err = 3;
  return err;
}
struct Sf_Ip_I ret_Sf_Ip_I(){
    struct Sf_Ip_I lv = { .v1 = EMPTY, .v2 = 0, .v3 = 4937 };
    return lv;
}
int zig_assert_Sf_Ip_I(struct Sf_Ip_I);
int send_Sf_Ip_I(){
    return zig_assert_Sf_Ip_I(ret_Sf_Ip_I());
}
struct Sf_Ip_I zig_ret_Sf_Ip_I();
int assert_ret_Sf_Ip_I(){
    return assert_Sf_Ip_I(zig_ret_Sf_Ip_I());
}

int assert_Sf_Ip_Ip(struct Sf_Ip_Ip lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Ip_Ip ret_Sf_Ip_Ip(){
    struct Sf_Ip_Ip lv = { .v1 = EMPTY, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Ip_Ip(struct Sf_Ip_Ip);
int send_Sf_Ip_Ip(){
    return zig_assert_Sf_Ip_Ip(ret_Sf_Ip_Ip());
}
struct Sf_Ip_Ip zig_ret_Sf_Ip_Ip();
int assert_ret_Sf_Ip_Ip(){
    return assert_Sf_Ip_Ip(zig_ret_Sf_Ip_Ip());
}

int assert_Sf_Ip_L(struct Sf_Ip_L lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 12433) err = 3;
  return err;
}
struct Sf_Ip_L ret_Sf_Ip_L(){
    struct Sf_Ip_L lv = { .v1 = EMPTY, .v2 = 0, .v3 = 12433 };
    return lv;
}
int zig_assert_Sf_Ip_L(struct Sf_Ip_L);
int send_Sf_Ip_L(){
    return zig_assert_Sf_Ip_L(ret_Sf_Ip_L());
}
struct Sf_Ip_L zig_ret_Sf_Ip_L();
int assert_ret_Sf_Ip_L(){
    return assert_Sf_Ip_L(zig_ret_Sf_Ip_L());
}

int assert_Sf_Ip_S(struct Sf_Ip_S lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 329) err = 3;
  return err;
}
struct Sf_Ip_S ret_Sf_Ip_S(){
    struct Sf_Ip_S lv = { .v1 = EMPTY, .v2 = 0, .v3 = 329 };
    return lv;
}
int zig_assert_Sf_Ip_S(struct Sf_Ip_S);
int send_Sf_Ip_S(){
    return zig_assert_Sf_Ip_S(ret_Sf_Ip_S());
}
struct Sf_Ip_S zig_ret_Sf_Ip_S();
int assert_ret_Sf_Ip_S(){
    return assert_Sf_Ip_S(zig_ret_Sf_Ip_S());
}

int assert_Sf_Ip_Sf(struct Sf_Ip_Sf lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Sf_Ip_Sf ret_Sf_Ip_Sf(){
    struct Sf_Ip_Sf lv = { .v1 = EMPTY, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_Ip_Sf(struct Sf_Ip_Sf);
int send_Sf_Ip_Sf(){
    return zig_assert_Sf_Ip_Sf(ret_Sf_Ip_Sf());
}
struct Sf_Ip_Sf zig_ret_Sf_Ip_Sf();
int assert_ret_Sf_Ip_Sf(){
    return assert_Sf_Ip_Sf(zig_ret_Sf_Ip_Sf());
}

int assert_Sf_Ip_Uc(struct Sf_Ip_Uc lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 37) err = 3;
  return err;
}
struct Sf_Ip_Uc ret_Sf_Ip_Uc(){
    struct Sf_Ip_Uc lv = { .v1 = EMPTY, .v2 = 0, .v3 = 37 };
    return lv;
}
int zig_assert_Sf_Ip_Uc(struct Sf_Ip_Uc);
int send_Sf_Ip_Uc(){
    return zig_assert_Sf_Ip_Uc(ret_Sf_Ip_Uc());
}
struct Sf_Ip_Uc zig_ret_Sf_Ip_Uc();
int assert_ret_Sf_Ip_Uc(){
    return assert_Sf_Ip_Uc(zig_ret_Sf_Ip_Uc());
}

int assert_Sf_Ip_Ui(struct Sf_Ip_Ui lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 29172) err = 3;
  return err;
}
struct Sf_Ip_Ui ret_Sf_Ip_Ui(){
    struct Sf_Ip_Ui lv = { .v1 = EMPTY, .v2 = 0, .v3 = 29172 };
    return lv;
}
int zig_assert_Sf_Ip_Ui(struct Sf_Ip_Ui);
int send_Sf_Ip_Ui(){
    return zig_assert_Sf_Ip_Ui(ret_Sf_Ip_Ui());
}
struct Sf_Ip_Ui zig_ret_Sf_Ip_Ui();
int assert_ret_Sf_Ip_Ui(){
    return assert_Sf_Ip_Ui(zig_ret_Sf_Ip_Ui());
}

int assert_Sf_Ip_Ul(struct Sf_Ip_Ul lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 12414) err = 3;
  return err;
}
struct Sf_Ip_Ul ret_Sf_Ip_Ul(){
    struct Sf_Ip_Ul lv = { .v1 = EMPTY, .v2 = 0, .v3 = 12414 };
    return lv;
}
int zig_assert_Sf_Ip_Ul(struct Sf_Ip_Ul);
int send_Sf_Ip_Ul(){
    return zig_assert_Sf_Ip_Ul(ret_Sf_Ip_Ul());
}
struct Sf_Ip_Ul zig_ret_Sf_Ip_Ul();
int assert_ret_Sf_Ip_Ul(){
    return assert_Sf_Ip_Ul(zig_ret_Sf_Ip_Ul());
}

int assert_Sf_Ip_Us(struct Sf_Ip_Us lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 17380) err = 3;
  return err;
}
struct Sf_Ip_Us ret_Sf_Ip_Us(){
    struct Sf_Ip_Us lv = { .v1 = EMPTY, .v2 = 0, .v3 = 17380 };
    return lv;
}
int zig_assert_Sf_Ip_Us(struct Sf_Ip_Us);
int send_Sf_Ip_Us(){
    return zig_assert_Sf_Ip_Us(ret_Sf_Ip_Us());
}
struct Sf_Ip_Us zig_ret_Sf_Ip_Us();
int assert_ret_Sf_Ip_Us(){
    return assert_Sf_Ip_Us(zig_ret_Sf_Ip_Us());
}

int assert_Sf_Ip_Vp(struct Sf_Ip_Vp lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Ip_Vp ret_Sf_Ip_Vp(){
    struct Sf_Ip_Vp lv = { .v1 = EMPTY, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Ip_Vp(struct Sf_Ip_Vp);
int send_Sf_Ip_Vp(){
    return zig_assert_Sf_Ip_Vp(ret_Sf_Ip_Vp());
}
struct Sf_Ip_Vp zig_ret_Sf_Ip_Vp();
int assert_ret_Sf_Ip_Vp(){
    return assert_Sf_Ip_Vp(zig_ret_Sf_Ip_Vp());
}

int assert_Sf_L(struct Sf_L lv){
    int err = 0;
  if (lv.v2 != 17005) err = 2;
  return err;
}
struct Sf_L ret_Sf_L(){
    struct Sf_L lv = { .v1 = EMPTY, .v2 = 17005 };
    return lv;
}
int zig_assert_Sf_L(struct Sf_L);
int send_Sf_L(){
    return zig_assert_Sf_L(ret_Sf_L());
}
struct Sf_L zig_ret_Sf_L();
int assert_ret_Sf_L(){
    return assert_Sf_L(zig_ret_Sf_L());
}

int assert_Sf_L_C(struct Sf_L_C lv){
    int err = 0;
  if (lv.v2 != 23036) err = 2;
  if (lv.v3 != 40) err = 3;
  return err;
}
struct Sf_L_C ret_Sf_L_C(){
    struct Sf_L_C lv = { .v1 = EMPTY, .v2 = 23036, .v3 = 40 };
    return lv;
}
int zig_assert_Sf_L_C(struct Sf_L_C);
int send_Sf_L_C(){
    return zig_assert_Sf_L_C(ret_Sf_L_C());
}
struct Sf_L_C zig_ret_Sf_L_C();
int assert_ret_Sf_L_C(){
    return assert_Sf_L_C(zig_ret_Sf_L_C());
}

int assert_Sf_L_D(struct Sf_L_D lv){
    int err = 0;
  if (lv.v2 != 15278) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Sf_L_D ret_Sf_L_D(){
    struct Sf_L_D lv = { .v1 = EMPTY, .v2 = 15278, .v3 = 7.0 };
    return lv;
}
int zig_assert_Sf_L_D(struct Sf_L_D);
int send_Sf_L_D(){
    return zig_assert_Sf_L_D(ret_Sf_L_D());
}
struct Sf_L_D zig_ret_Sf_L_D();
int assert_ret_Sf_L_D(){
    return assert_Sf_L_D(zig_ret_Sf_L_D());
}

int assert_Sf_L_F(struct Sf_L_F lv){
    int err = 0;
  if (lv.v2 != 9230) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Sf_L_F ret_Sf_L_F(){
    struct Sf_L_F lv = { .v1 = EMPTY, .v2 = 9230, .v3 = -2.125 };
    return lv;
}
int zig_assert_Sf_L_F(struct Sf_L_F);
int send_Sf_L_F(){
    return zig_assert_Sf_L_F(ret_Sf_L_F());
}
struct Sf_L_F zig_ret_Sf_L_F();
int assert_ret_Sf_L_F(){
    return assert_Sf_L_F(zig_ret_Sf_L_F());
}

int assert_Sf_L_I(struct Sf_L_I lv){
    int err = 0;
  if (lv.v2 != 23180) err = 2;
  if (lv.v3 != 12358) err = 3;
  return err;
}
struct Sf_L_I ret_Sf_L_I(){
    struct Sf_L_I lv = { .v1 = EMPTY, .v2 = 23180, .v3 = 12358 };
    return lv;
}
int zig_assert_Sf_L_I(struct Sf_L_I);
int send_Sf_L_I(){
    return zig_assert_Sf_L_I(ret_Sf_L_I());
}
struct Sf_L_I zig_ret_Sf_L_I();
int assert_ret_Sf_L_I(){
    return assert_Sf_L_I(zig_ret_Sf_L_I());
}

int assert_Sf_L_Ip(struct Sf_L_Ip lv){
    int err = 0;
  if (lv.v2 != 7226) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_L_Ip ret_Sf_L_Ip(){
    struct Sf_L_Ip lv = { .v1 = EMPTY, .v2 = 7226, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_L_Ip(struct Sf_L_Ip);
int send_Sf_L_Ip(){
    return zig_assert_Sf_L_Ip(ret_Sf_L_Ip());
}
struct Sf_L_Ip zig_ret_Sf_L_Ip();
int assert_ret_Sf_L_Ip(){
    return assert_Sf_L_Ip(zig_ret_Sf_L_Ip());
}

int assert_Sf_L_L(struct Sf_L_L lv){
    int err = 0;
  if (lv.v2 != 20570) err = 2;
  if (lv.v3 != 22635) err = 3;
  return err;
}
struct Sf_L_L ret_Sf_L_L(){
    struct Sf_L_L lv = { .v1 = EMPTY, .v2 = 20570, .v3 = 22635 };
    return lv;
}
int zig_assert_Sf_L_L(struct Sf_L_L);
int send_Sf_L_L(){
    return zig_assert_Sf_L_L(ret_Sf_L_L());
}
struct Sf_L_L zig_ret_Sf_L_L();
int assert_ret_Sf_L_L(){
    return assert_Sf_L_L(zig_ret_Sf_L_L());
}

int assert_Sf_L_S(struct Sf_L_S lv){
    int err = 0;
  if (lv.v2 != 4964) err = 2;
  if (lv.v3 != 10584) err = 3;
  return err;
}
struct Sf_L_S ret_Sf_L_S(){
    struct Sf_L_S lv = { .v1 = EMPTY, .v2 = 4964, .v3 = 10584 };
    return lv;
}
int zig_assert_Sf_L_S(struct Sf_L_S);
int send_Sf_L_S(){
    return zig_assert_Sf_L_S(ret_Sf_L_S());
}
struct Sf_L_S zig_ret_Sf_L_S();
int assert_ret_Sf_L_S(){
    return assert_Sf_L_S(zig_ret_Sf_L_S());
}

int assert_Sf_L_Sf(struct Sf_L_Sf lv){
    int err = 0;
  if (lv.v2 != 5535) err = 2;
  return err;
}
struct Sf_L_Sf ret_Sf_L_Sf(){
    struct Sf_L_Sf lv = { .v1 = EMPTY, .v2 = 5535, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_L_Sf(struct Sf_L_Sf);
int send_Sf_L_Sf(){
    return zig_assert_Sf_L_Sf(ret_Sf_L_Sf());
}
struct Sf_L_Sf zig_ret_Sf_L_Sf();
int assert_ret_Sf_L_Sf(){
    return assert_Sf_L_Sf(zig_ret_Sf_L_Sf());
}

int assert_Sf_L_Uc(struct Sf_L_Uc lv){
    int err = 0;
  if (lv.v2 != 6945) err = 2;
  if (lv.v3 != 78) err = 3;
  return err;
}
struct Sf_L_Uc ret_Sf_L_Uc(){
    struct Sf_L_Uc lv = { .v1 = EMPTY, .v2 = 6945, .v3 = 78 };
    return lv;
}
int zig_assert_Sf_L_Uc(struct Sf_L_Uc);
int send_Sf_L_Uc(){
    return zig_assert_Sf_L_Uc(ret_Sf_L_Uc());
}
struct Sf_L_Uc zig_ret_Sf_L_Uc();
int assert_ret_Sf_L_Uc(){
    return assert_Sf_L_Uc(zig_ret_Sf_L_Uc());
}

int assert_Sf_L_Ui(struct Sf_L_Ui lv){
    int err = 0;
  if (lv.v2 != 28334) err = 2;
  if (lv.v3 != 18755) err = 3;
  return err;
}
struct Sf_L_Ui ret_Sf_L_Ui(){
    struct Sf_L_Ui lv = { .v1 = EMPTY, .v2 = 28334, .v3 = 18755 };
    return lv;
}
int zig_assert_Sf_L_Ui(struct Sf_L_Ui);
int send_Sf_L_Ui(){
    return zig_assert_Sf_L_Ui(ret_Sf_L_Ui());
}
struct Sf_L_Ui zig_ret_Sf_L_Ui();
int assert_ret_Sf_L_Ui(){
    return assert_Sf_L_Ui(zig_ret_Sf_L_Ui());
}

int assert_Sf_L_Ul(struct Sf_L_Ul lv){
    int err = 0;
  if (lv.v2 != 26391) err = 2;
  if (lv.v3 != 21581) err = 3;
  return err;
}
struct Sf_L_Ul ret_Sf_L_Ul(){
    struct Sf_L_Ul lv = { .v1 = EMPTY, .v2 = 26391, .v3 = 21581 };
    return lv;
}
int zig_assert_Sf_L_Ul(struct Sf_L_Ul);
int send_Sf_L_Ul(){
    return zig_assert_Sf_L_Ul(ret_Sf_L_Ul());
}
struct Sf_L_Ul zig_ret_Sf_L_Ul();
int assert_ret_Sf_L_Ul(){
    return assert_Sf_L_Ul(zig_ret_Sf_L_Ul());
}

int assert_Sf_L_Us(struct Sf_L_Us lv){
    int err = 0;
  if (lv.v2 != 17352) err = 2;
  if (lv.v3 != 25208) err = 3;
  return err;
}
struct Sf_L_Us ret_Sf_L_Us(){
    struct Sf_L_Us lv = { .v1 = EMPTY, .v2 = 17352, .v3 = 25208 };
    return lv;
}
int zig_assert_Sf_L_Us(struct Sf_L_Us);
int send_Sf_L_Us(){
    return zig_assert_Sf_L_Us(ret_Sf_L_Us());
}
struct Sf_L_Us zig_ret_Sf_L_Us();
int assert_ret_Sf_L_Us(){
    return assert_Sf_L_Us(zig_ret_Sf_L_Us());
}

int assert_Sf_L_Vp(struct Sf_L_Vp lv){
    int err = 0;
  if (lv.v2 != 7621) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_L_Vp ret_Sf_L_Vp(){
    struct Sf_L_Vp lv = { .v1 = EMPTY, .v2 = 7621, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_L_Vp(struct Sf_L_Vp);
int send_Sf_L_Vp(){
    return zig_assert_Sf_L_Vp(ret_Sf_L_Vp());
}
struct Sf_L_Vp zig_ret_Sf_L_Vp();
int assert_ret_Sf_L_Vp(){
    return assert_Sf_L_Vp(zig_ret_Sf_L_Vp());
}

int assert_Sf_S(struct Sf_S lv){
    int err = 0;
  if (lv.v2 != 8459) err = 2;
  return err;
}
struct Sf_S ret_Sf_S(){
    struct Sf_S lv = { .v1 = EMPTY, .v2 = 8459 };
    return lv;
}
int zig_assert_Sf_S(struct Sf_S);
int send_Sf_S(){
    return zig_assert_Sf_S(ret_Sf_S());
}
struct Sf_S zig_ret_Sf_S();
int assert_ret_Sf_S(){
    return assert_Sf_S(zig_ret_Sf_S());
}

int assert_Sf_S_C(struct Sf_S_C lv){
    int err = 0;
  if (lv.v2 != 29482) err = 2;
  if (lv.v3 != 117) err = 3;
  return err;
}
struct Sf_S_C ret_Sf_S_C(){
    struct Sf_S_C lv = { .v1 = EMPTY, .v2 = 29482, .v3 = 117 };
    return lv;
}
int zig_assert_Sf_S_C(struct Sf_S_C);
int send_Sf_S_C(){
    return zig_assert_Sf_S_C(ret_Sf_S_C());
}
struct Sf_S_C zig_ret_Sf_S_C();
int assert_ret_Sf_S_C(){
    return assert_Sf_S_C(zig_ret_Sf_S_C());
}

int assert_Sf_S_D(struct Sf_S_D lv){
    int err = 0;
  if (lv.v2 != 10011) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Sf_S_D ret_Sf_S_D(){
    struct Sf_S_D lv = { .v1 = EMPTY, .v2 = 10011, .v3 = 7.0 };
    return lv;
}
int zig_assert_Sf_S_D(struct Sf_S_D);
int send_Sf_S_D(){
    return zig_assert_Sf_S_D(ret_Sf_S_D());
}
struct Sf_S_D zig_ret_Sf_S_D();
int assert_ret_Sf_S_D(){
    return assert_Sf_S_D(zig_ret_Sf_S_D());
}

int assert_Sf_S_F(struct Sf_S_F lv){
    int err = 0;
  if (lv.v2 != 22113) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Sf_S_F ret_Sf_S_F(){
    struct Sf_S_F lv = { .v1 = EMPTY, .v2 = 22113, .v3 = 0.875 };
    return lv;
}
int zig_assert_Sf_S_F(struct Sf_S_F);
int send_Sf_S_F(){
    return zig_assert_Sf_S_F(ret_Sf_S_F());
}
struct Sf_S_F zig_ret_Sf_S_F();
int assert_ret_Sf_S_F(){
    return assert_Sf_S_F(zig_ret_Sf_S_F());
}

int assert_Sf_S_I(struct Sf_S_I lv){
    int err = 0;
  if (lv.v2 != 26590) err = 2;
  if (lv.v3 != 21186) err = 3;
  return err;
}
struct Sf_S_I ret_Sf_S_I(){
    struct Sf_S_I lv = { .v1 = EMPTY, .v2 = 26590, .v3 = 21186 };
    return lv;
}
int zig_assert_Sf_S_I(struct Sf_S_I);
int send_Sf_S_I(){
    return zig_assert_Sf_S_I(ret_Sf_S_I());
}
struct Sf_S_I zig_ret_Sf_S_I();
int assert_ret_Sf_S_I(){
    return assert_Sf_S_I(zig_ret_Sf_S_I());
}

int assert_Sf_S_Ip(struct Sf_S_Ip lv){
    int err = 0;
  if (lv.v2 != 2551) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_S_Ip ret_Sf_S_Ip(){
    struct Sf_S_Ip lv = { .v1 = EMPTY, .v2 = 2551, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_S_Ip(struct Sf_S_Ip);
int send_Sf_S_Ip(){
    return zig_assert_Sf_S_Ip(ret_Sf_S_Ip());
}
struct Sf_S_Ip zig_ret_Sf_S_Ip();
int assert_ret_Sf_S_Ip(){
    return assert_Sf_S_Ip(zig_ret_Sf_S_Ip());
}

int assert_Sf_S_L(struct Sf_S_L lv){
    int err = 0;
  if (lv.v2 != 29133) err = 2;
  if (lv.v3 != 1690) err = 3;
  return err;
}
struct Sf_S_L ret_Sf_S_L(){
    struct Sf_S_L lv = { .v1 = EMPTY, .v2 = 29133, .v3 = 1690 };
    return lv;
}
int zig_assert_Sf_S_L(struct Sf_S_L);
int send_Sf_S_L(){
    return zig_assert_Sf_S_L(ret_Sf_S_L());
}
struct Sf_S_L zig_ret_Sf_S_L();
int assert_ret_Sf_S_L(){
    return assert_Sf_S_L(zig_ret_Sf_S_L());
}

int assert_Sf_S_S(struct Sf_S_S lv){
    int err = 0;
  if (lv.v2 != 21690) err = 2;
  if (lv.v3 != 32501) err = 3;
  return err;
}
struct Sf_S_S ret_Sf_S_S(){
    struct Sf_S_S lv = { .v1 = EMPTY, .v2 = 21690, .v3 = 32501 };
    return lv;
}
int zig_assert_Sf_S_S(struct Sf_S_S);
int send_Sf_S_S(){
    return zig_assert_Sf_S_S(ret_Sf_S_S());
}
struct Sf_S_S zig_ret_Sf_S_S();
int assert_ret_Sf_S_S(){
    return assert_Sf_S_S(zig_ret_Sf_S_S());
}

int assert_Sf_S_Sf(struct Sf_S_Sf lv){
    int err = 0;
  if (lv.v2 != 14505) err = 2;
  return err;
}
struct Sf_S_Sf ret_Sf_S_Sf(){
    struct Sf_S_Sf lv = { .v1 = EMPTY, .v2 = 14505, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_S_Sf(struct Sf_S_Sf);
int send_Sf_S_Sf(){
    return zig_assert_Sf_S_Sf(ret_Sf_S_Sf());
}
struct Sf_S_Sf zig_ret_Sf_S_Sf();
int assert_ret_Sf_S_Sf(){
    return assert_Sf_S_Sf(zig_ret_Sf_S_Sf());
}

int assert_Sf_S_Uc(struct Sf_S_Uc lv){
    int err = 0;
  if (lv.v2 != 8019) err = 2;
  if (lv.v3 != 9) err = 3;
  return err;
}
struct Sf_S_Uc ret_Sf_S_Uc(){
    struct Sf_S_Uc lv = { .v1 = EMPTY, .v2 = 8019, .v3 = 9 };
    return lv;
}
int zig_assert_Sf_S_Uc(struct Sf_S_Uc);
int send_Sf_S_Uc(){
    return zig_assert_Sf_S_Uc(ret_Sf_S_Uc());
}
struct Sf_S_Uc zig_ret_Sf_S_Uc();
int assert_ret_Sf_S_Uc(){
    return assert_Sf_S_Uc(zig_ret_Sf_S_Uc());
}

int assert_Sf_S_Ui(struct Sf_S_Ui lv){
    int err = 0;
  if (lv.v2 != 17971) err = 2;
  if (lv.v3 != 670) err = 3;
  return err;
}
struct Sf_S_Ui ret_Sf_S_Ui(){
    struct Sf_S_Ui lv = { .v1 = EMPTY, .v2 = 17971, .v3 = 670 };
    return lv;
}
int zig_assert_Sf_S_Ui(struct Sf_S_Ui);
int send_Sf_S_Ui(){
    return zig_assert_Sf_S_Ui(ret_Sf_S_Ui());
}
struct Sf_S_Ui zig_ret_Sf_S_Ui();
int assert_ret_Sf_S_Ui(){
    return assert_Sf_S_Ui(zig_ret_Sf_S_Ui());
}

int assert_Sf_S_Ul(struct Sf_S_Ul lv){
    int err = 0;
  if (lv.v2 != 3209) err = 2;
  if (lv.v3 != 14809) err = 3;
  return err;
}
struct Sf_S_Ul ret_Sf_S_Ul(){
    struct Sf_S_Ul lv = { .v1 = EMPTY, .v2 = 3209, .v3 = 14809 };
    return lv;
}
int zig_assert_Sf_S_Ul(struct Sf_S_Ul);
int send_Sf_S_Ul(){
    return zig_assert_Sf_S_Ul(ret_Sf_S_Ul());
}
struct Sf_S_Ul zig_ret_Sf_S_Ul();
int assert_ret_Sf_S_Ul(){
    return assert_Sf_S_Ul(zig_ret_Sf_S_Ul());
}

int assert_Sf_S_Us(struct Sf_S_Us lv){
    int err = 0;
  if (lv.v2 != 21171) err = 2;
  if (lv.v3 != 19853) err = 3;
  return err;
}
struct Sf_S_Us ret_Sf_S_Us(){
    struct Sf_S_Us lv = { .v1 = EMPTY, .v2 = 21171, .v3 = 19853 };
    return lv;
}
int zig_assert_Sf_S_Us(struct Sf_S_Us);
int send_Sf_S_Us(){
    return zig_assert_Sf_S_Us(ret_Sf_S_Us());
}
struct Sf_S_Us zig_ret_Sf_S_Us();
int assert_ret_Sf_S_Us(){
    return assert_Sf_S_Us(zig_ret_Sf_S_Us());
}

int assert_Sf_S_Vp(struct Sf_S_Vp lv){
    int err = 0;
  if (lv.v2 != 15733) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_S_Vp ret_Sf_S_Vp(){
    struct Sf_S_Vp lv = { .v1 = EMPTY, .v2 = 15733, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_S_Vp(struct Sf_S_Vp);
int send_Sf_S_Vp(){
    return zig_assert_Sf_S_Vp(ret_Sf_S_Vp());
}
struct Sf_S_Vp zig_ret_Sf_S_Vp();
int assert_ret_Sf_S_Vp(){
    return assert_Sf_S_Vp(zig_ret_Sf_S_Vp());
}

int assert_Sf_Sf(struct Sf_Sf lv){
    int err = 0;
  return err;
}
struct Sf_Sf ret_Sf_Sf(){
    struct Sf_Sf lv = { .v1 = EMPTY, .v2 = EMPTY };
    return lv;
}
int zig_assert_Sf_Sf(struct Sf_Sf);
int send_Sf_Sf(){
    return zig_assert_Sf_Sf(ret_Sf_Sf());
}
struct Sf_Sf zig_ret_Sf_Sf();
int assert_ret_Sf_Sf(){
    return assert_Sf_Sf(zig_ret_Sf_Sf());
}

int assert_Sf_Sf_C(struct Sf_Sf_C lv){
    int err = 0;
  if (lv.v3 != 53) err = 3;
  return err;
}
struct Sf_Sf_C ret_Sf_Sf_C(){
    struct Sf_Sf_C lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = 53 };
    return lv;
}
int zig_assert_Sf_Sf_C(struct Sf_Sf_C);
int send_Sf_Sf_C(){
    return zig_assert_Sf_Sf_C(ret_Sf_Sf_C());
}
struct Sf_Sf_C zig_ret_Sf_Sf_C();
int assert_ret_Sf_Sf_C(){
    return assert_Sf_Sf_C(zig_ret_Sf_Sf_C());
}

int assert_Sf_Sf_D(struct Sf_Sf_D lv){
    int err = 0;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Sf_Sf_D ret_Sf_Sf_D(){
    struct Sf_Sf_D lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = -0.25 };
    return lv;
}
int zig_assert_Sf_Sf_D(struct Sf_Sf_D);
int send_Sf_Sf_D(){
    return zig_assert_Sf_Sf_D(ret_Sf_Sf_D());
}
struct Sf_Sf_D zig_ret_Sf_Sf_D();
int assert_ret_Sf_Sf_D(){
    return assert_Sf_Sf_D(zig_ret_Sf_Sf_D());
}

int assert_Sf_Sf_F(struct Sf_Sf_F lv){
    int err = 0;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Sf_Sf_F ret_Sf_Sf_F(){
    struct Sf_Sf_F lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = 7.0 };
    return lv;
}
int zig_assert_Sf_Sf_F(struct Sf_Sf_F);
int send_Sf_Sf_F(){
    return zig_assert_Sf_Sf_F(ret_Sf_Sf_F());
}
struct Sf_Sf_F zig_ret_Sf_Sf_F();
int assert_ret_Sf_Sf_F(){
    return assert_Sf_Sf_F(zig_ret_Sf_Sf_F());
}

int assert_Sf_Sf_I(struct Sf_Sf_I lv){
    int err = 0;
  if (lv.v3 != 2328) err = 3;
  return err;
}
struct Sf_Sf_I ret_Sf_Sf_I(){
    struct Sf_Sf_I lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = 2328 };
    return lv;
}
int zig_assert_Sf_Sf_I(struct Sf_Sf_I);
int send_Sf_Sf_I(){
    return zig_assert_Sf_Sf_I(ret_Sf_Sf_I());
}
struct Sf_Sf_I zig_ret_Sf_Sf_I();
int assert_ret_Sf_Sf_I(){
    return assert_Sf_Sf_I(zig_ret_Sf_Sf_I());
}

int assert_Sf_Sf_Ip(struct Sf_Sf_Ip lv){
    int err = 0;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Sf_Ip ret_Sf_Sf_Ip(){
    struct Sf_Sf_Ip lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Sf_Ip(struct Sf_Sf_Ip);
int send_Sf_Sf_Ip(){
    return zig_assert_Sf_Sf_Ip(ret_Sf_Sf_Ip());
}
struct Sf_Sf_Ip zig_ret_Sf_Sf_Ip();
int assert_ret_Sf_Sf_Ip(){
    return assert_Sf_Sf_Ip(zig_ret_Sf_Sf_Ip());
}

int assert_Sf_Sf_L(struct Sf_Sf_L lv){
    int err = 0;
  if (lv.v3 != 19653) err = 3;
  return err;
}
struct Sf_Sf_L ret_Sf_Sf_L(){
    struct Sf_Sf_L lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = 19653 };
    return lv;
}
int zig_assert_Sf_Sf_L(struct Sf_Sf_L);
int send_Sf_Sf_L(){
    return zig_assert_Sf_Sf_L(ret_Sf_Sf_L());
}
struct Sf_Sf_L zig_ret_Sf_Sf_L();
int assert_ret_Sf_Sf_L(){
    return assert_Sf_Sf_L(zig_ret_Sf_Sf_L());
}

int assert_Sf_Sf_S(struct Sf_Sf_S lv){
    int err = 0;
  if (lv.v3 != 10464) err = 3;
  return err;
}
struct Sf_Sf_S ret_Sf_Sf_S(){
    struct Sf_Sf_S lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = 10464 };
    return lv;
}
int zig_assert_Sf_Sf_S(struct Sf_Sf_S);
int send_Sf_Sf_S(){
    return zig_assert_Sf_Sf_S(ret_Sf_Sf_S());
}
struct Sf_Sf_S zig_ret_Sf_Sf_S();
int assert_ret_Sf_Sf_S(){
    return assert_Sf_Sf_S(zig_ret_Sf_Sf_S());
}

int assert_Sf_Sf_Sf(struct Sf_Sf_Sf lv){
    int err = 0;
  return err;
}
struct Sf_Sf_Sf ret_Sf_Sf_Sf(){
    struct Sf_Sf_Sf lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_Sf_Sf(struct Sf_Sf_Sf);
int send_Sf_Sf_Sf(){
    return zig_assert_Sf_Sf_Sf(ret_Sf_Sf_Sf());
}
struct Sf_Sf_Sf zig_ret_Sf_Sf_Sf();
int assert_ret_Sf_Sf_Sf(){
    return assert_Sf_Sf_Sf(zig_ret_Sf_Sf_Sf());
}

int assert_Sf_Sf_Uc(struct Sf_Sf_Uc lv){
    int err = 0;
  if (lv.v3 != 15) err = 3;
  return err;
}
struct Sf_Sf_Uc ret_Sf_Sf_Uc(){
    struct Sf_Sf_Uc lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = 15 };
    return lv;
}
int zig_assert_Sf_Sf_Uc(struct Sf_Sf_Uc);
int send_Sf_Sf_Uc(){
    return zig_assert_Sf_Sf_Uc(ret_Sf_Sf_Uc());
}
struct Sf_Sf_Uc zig_ret_Sf_Sf_Uc();
int assert_ret_Sf_Sf_Uc(){
    return assert_Sf_Sf_Uc(zig_ret_Sf_Sf_Uc());
}

int assert_Sf_Sf_Ui(struct Sf_Sf_Ui lv){
    int err = 0;
  if (lv.v3 != 11684) err = 3;
  return err;
}
struct Sf_Sf_Ui ret_Sf_Sf_Ui(){
    struct Sf_Sf_Ui lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = 11684 };
    return lv;
}
int zig_assert_Sf_Sf_Ui(struct Sf_Sf_Ui);
int send_Sf_Sf_Ui(){
    return zig_assert_Sf_Sf_Ui(ret_Sf_Sf_Ui());
}
struct Sf_Sf_Ui zig_ret_Sf_Sf_Ui();
int assert_ret_Sf_Sf_Ui(){
    return assert_Sf_Sf_Ui(zig_ret_Sf_Sf_Ui());
}

int assert_Sf_Sf_Ul(struct Sf_Sf_Ul lv){
    int err = 0;
  if (lv.v3 != 9156) err = 3;
  return err;
}
struct Sf_Sf_Ul ret_Sf_Sf_Ul(){
    struct Sf_Sf_Ul lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = 9156 };
    return lv;
}
int zig_assert_Sf_Sf_Ul(struct Sf_Sf_Ul);
int send_Sf_Sf_Ul(){
    return zig_assert_Sf_Sf_Ul(ret_Sf_Sf_Ul());
}
struct Sf_Sf_Ul zig_ret_Sf_Sf_Ul();
int assert_ret_Sf_Sf_Ul(){
    return assert_Sf_Sf_Ul(zig_ret_Sf_Sf_Ul());
}

int assert_Sf_Sf_Us(struct Sf_Sf_Us lv){
    int err = 0;
  if (lv.v3 != 31201) err = 3;
  return err;
}
struct Sf_Sf_Us ret_Sf_Sf_Us(){
    struct Sf_Sf_Us lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = 31201 };
    return lv;
}
int zig_assert_Sf_Sf_Us(struct Sf_Sf_Us);
int send_Sf_Sf_Us(){
    return zig_assert_Sf_Sf_Us(ret_Sf_Sf_Us());
}
struct Sf_Sf_Us zig_ret_Sf_Sf_Us();
int assert_ret_Sf_Sf_Us(){
    return assert_Sf_Sf_Us(zig_ret_Sf_Sf_Us());
}

int assert_Sf_Sf_Vp(struct Sf_Sf_Vp lv){
    int err = 0;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Sf_Vp ret_Sf_Sf_Vp(){
    struct Sf_Sf_Vp lv = { .v1 = EMPTY, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Sf_Vp(struct Sf_Sf_Vp);
int send_Sf_Sf_Vp(){
    return zig_assert_Sf_Sf_Vp(ret_Sf_Sf_Vp());
}
struct Sf_Sf_Vp zig_ret_Sf_Sf_Vp();
int assert_ret_Sf_Sf_Vp(){
    return assert_Sf_Sf_Vp(zig_ret_Sf_Sf_Vp());
}

int assert_Sf_Uc(struct Sf_Uc lv){
    int err = 0;
  if (lv.v2 != 115) err = 2;
  return err;
}
struct Sf_Uc ret_Sf_Uc(){
    struct Sf_Uc lv = { .v1 = EMPTY, .v2 = 115 };
    return lv;
}
int zig_assert_Sf_Uc(struct Sf_Uc);
int send_Sf_Uc(){
    return zig_assert_Sf_Uc(ret_Sf_Uc());
}
struct Sf_Uc zig_ret_Sf_Uc();
int assert_ret_Sf_Uc(){
    return assert_Sf_Uc(zig_ret_Sf_Uc());
}

int assert_Sf_Uc_C(struct Sf_Uc_C lv){
    int err = 0;
  if (lv.v2 != 25) err = 2;
  if (lv.v3 != 31) err = 3;
  return err;
}
struct Sf_Uc_C ret_Sf_Uc_C(){
    struct Sf_Uc_C lv = { .v1 = EMPTY, .v2 = 25, .v3 = 31 };
    return lv;
}
int zig_assert_Sf_Uc_C(struct Sf_Uc_C);
int send_Sf_Uc_C(){
    return zig_assert_Sf_Uc_C(ret_Sf_Uc_C());
}
struct Sf_Uc_C zig_ret_Sf_Uc_C();
int assert_ret_Sf_Uc_C(){
    return assert_Sf_Uc_C(zig_ret_Sf_Uc_C());
}

int assert_Sf_Uc_D(struct Sf_Uc_D lv){
    int err = 0;
  if (lv.v2 != 113) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Sf_Uc_D ret_Sf_Uc_D(){
    struct Sf_Uc_D lv = { .v1 = EMPTY, .v2 = 113, .v3 = -0.25 };
    return lv;
}
int zig_assert_Sf_Uc_D(struct Sf_Uc_D);
int send_Sf_Uc_D(){
    return zig_assert_Sf_Uc_D(ret_Sf_Uc_D());
}
struct Sf_Uc_D zig_ret_Sf_Uc_D();
int assert_ret_Sf_Uc_D(){
    return assert_Sf_Uc_D(zig_ret_Sf_Uc_D());
}

int assert_Sf_Uc_F(struct Sf_Uc_F lv){
    int err = 0;
  if (lv.v2 != 120) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Sf_Uc_F ret_Sf_Uc_F(){
    struct Sf_Uc_F lv = { .v1 = EMPTY, .v2 = 120, .v3 = -0.25 };
    return lv;
}
int zig_assert_Sf_Uc_F(struct Sf_Uc_F);
int send_Sf_Uc_F(){
    return zig_assert_Sf_Uc_F(ret_Sf_Uc_F());
}
struct Sf_Uc_F zig_ret_Sf_Uc_F();
int assert_ret_Sf_Uc_F(){
    return assert_Sf_Uc_F(zig_ret_Sf_Uc_F());
}

int assert_Sf_Uc_I(struct Sf_Uc_I lv){
    int err = 0;
  if (lv.v2 != 51) err = 2;
  if (lv.v3 != 10164) err = 3;
  return err;
}
struct Sf_Uc_I ret_Sf_Uc_I(){
    struct Sf_Uc_I lv = { .v1 = EMPTY, .v2 = 51, .v3 = 10164 };
    return lv;
}
int zig_assert_Sf_Uc_I(struct Sf_Uc_I);
int send_Sf_Uc_I(){
    return zig_assert_Sf_Uc_I(ret_Sf_Uc_I());
}
struct Sf_Uc_I zig_ret_Sf_Uc_I();
int assert_ret_Sf_Uc_I(){
    return assert_Sf_Uc_I(zig_ret_Sf_Uc_I());
}

int assert_Sf_Uc_Ip(struct Sf_Uc_Ip lv){
    int err = 0;
  if (lv.v2 != 126) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Uc_Ip ret_Sf_Uc_Ip(){
    struct Sf_Uc_Ip lv = { .v1 = EMPTY, .v2 = 126, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Uc_Ip(struct Sf_Uc_Ip);
int send_Sf_Uc_Ip(){
    return zig_assert_Sf_Uc_Ip(ret_Sf_Uc_Ip());
}
struct Sf_Uc_Ip zig_ret_Sf_Uc_Ip();
int assert_ret_Sf_Uc_Ip(){
    return assert_Sf_Uc_Ip(zig_ret_Sf_Uc_Ip());
}

int assert_Sf_Uc_L(struct Sf_Uc_L lv){
    int err = 0;
  if (lv.v2 != 66) err = 2;
  if (lv.v3 != 397) err = 3;
  return err;
}
struct Sf_Uc_L ret_Sf_Uc_L(){
    struct Sf_Uc_L lv = { .v1 = EMPTY, .v2 = 66, .v3 = 397 };
    return lv;
}
int zig_assert_Sf_Uc_L(struct Sf_Uc_L);
int send_Sf_Uc_L(){
    return zig_assert_Sf_Uc_L(ret_Sf_Uc_L());
}
struct Sf_Uc_L zig_ret_Sf_Uc_L();
int assert_ret_Sf_Uc_L(){
    return assert_Sf_Uc_L(zig_ret_Sf_Uc_L());
}

int assert_Sf_Uc_S(struct Sf_Uc_S lv){
    int err = 0;
  if (lv.v2 != 32) err = 2;
  if (lv.v3 != 3864) err = 3;
  return err;
}
struct Sf_Uc_S ret_Sf_Uc_S(){
    struct Sf_Uc_S lv = { .v1 = EMPTY, .v2 = 32, .v3 = 3864 };
    return lv;
}
int zig_assert_Sf_Uc_S(struct Sf_Uc_S);
int send_Sf_Uc_S(){
    return zig_assert_Sf_Uc_S(ret_Sf_Uc_S());
}
struct Sf_Uc_S zig_ret_Sf_Uc_S();
int assert_ret_Sf_Uc_S(){
    return assert_Sf_Uc_S(zig_ret_Sf_Uc_S());
}

int assert_Sf_Uc_Sf(struct Sf_Uc_Sf lv){
    int err = 0;
  if (lv.v2 != 61) err = 2;
  return err;
}
struct Sf_Uc_Sf ret_Sf_Uc_Sf(){
    struct Sf_Uc_Sf lv = { .v1 = EMPTY, .v2 = 61, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_Uc_Sf(struct Sf_Uc_Sf);
int send_Sf_Uc_Sf(){
    return zig_assert_Sf_Uc_Sf(ret_Sf_Uc_Sf());
}
struct Sf_Uc_Sf zig_ret_Sf_Uc_Sf();
int assert_ret_Sf_Uc_Sf(){
    return assert_Sf_Uc_Sf(zig_ret_Sf_Uc_Sf());
}

int assert_Sf_Uc_Uc(struct Sf_Uc_Uc lv){
    int err = 0;
  if (lv.v2 != 39) err = 2;
  if (lv.v3 != 62) err = 3;
  return err;
}
struct Sf_Uc_Uc ret_Sf_Uc_Uc(){
    struct Sf_Uc_Uc lv = { .v1 = EMPTY, .v2 = 39, .v3 = 62 };
    return lv;
}
int zig_assert_Sf_Uc_Uc(struct Sf_Uc_Uc);
int send_Sf_Uc_Uc(){
    return zig_assert_Sf_Uc_Uc(ret_Sf_Uc_Uc());
}
struct Sf_Uc_Uc zig_ret_Sf_Uc_Uc();
int assert_ret_Sf_Uc_Uc(){
    return assert_Sf_Uc_Uc(zig_ret_Sf_Uc_Uc());
}

int assert_Sf_Uc_Ui(struct Sf_Uc_Ui lv){
    int err = 0;
  if (lv.v2 != 61) err = 2;
  if (lv.v3 != 22701) err = 3;
  return err;
}
struct Sf_Uc_Ui ret_Sf_Uc_Ui(){
    struct Sf_Uc_Ui lv = { .v1 = EMPTY, .v2 = 61, .v3 = 22701 };
    return lv;
}
int zig_assert_Sf_Uc_Ui(struct Sf_Uc_Ui);
int send_Sf_Uc_Ui(){
    return zig_assert_Sf_Uc_Ui(ret_Sf_Uc_Ui());
}
struct Sf_Uc_Ui zig_ret_Sf_Uc_Ui();
int assert_ret_Sf_Uc_Ui(){
    return assert_Sf_Uc_Ui(zig_ret_Sf_Uc_Ui());
}

int assert_Sf_Uc_Ul(struct Sf_Uc_Ul lv){
    int err = 0;
  if (lv.v2 != 110) err = 2;
  if (lv.v3 != 11849) err = 3;
  return err;
}
struct Sf_Uc_Ul ret_Sf_Uc_Ul(){
    struct Sf_Uc_Ul lv = { .v1 = EMPTY, .v2 = 110, .v3 = 11849 };
    return lv;
}
int zig_assert_Sf_Uc_Ul(struct Sf_Uc_Ul);
int send_Sf_Uc_Ul(){
    return zig_assert_Sf_Uc_Ul(ret_Sf_Uc_Ul());
}
struct Sf_Uc_Ul zig_ret_Sf_Uc_Ul();
int assert_ret_Sf_Uc_Ul(){
    return assert_Sf_Uc_Ul(zig_ret_Sf_Uc_Ul());
}

int assert_Sf_Uc_Us(struct Sf_Uc_Us lv){
    int err = 0;
  if (lv.v2 != 1) err = 2;
  if (lv.v3 != 12172) err = 3;
  return err;
}
struct Sf_Uc_Us ret_Sf_Uc_Us(){
    struct Sf_Uc_Us lv = { .v1 = EMPTY, .v2 = 1, .v3 = 12172 };
    return lv;
}
int zig_assert_Sf_Uc_Us(struct Sf_Uc_Us);
int send_Sf_Uc_Us(){
    return zig_assert_Sf_Uc_Us(ret_Sf_Uc_Us());
}
struct Sf_Uc_Us zig_ret_Sf_Uc_Us();
int assert_ret_Sf_Uc_Us(){
    return assert_Sf_Uc_Us(zig_ret_Sf_Uc_Us());
}

int assert_Sf_Uc_Vp(struct Sf_Uc_Vp lv){
    int err = 0;
  if (lv.v2 != 85) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Uc_Vp ret_Sf_Uc_Vp(){
    struct Sf_Uc_Vp lv = { .v1 = EMPTY, .v2 = 85, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Uc_Vp(struct Sf_Uc_Vp);
int send_Sf_Uc_Vp(){
    return zig_assert_Sf_Uc_Vp(ret_Sf_Uc_Vp());
}
struct Sf_Uc_Vp zig_ret_Sf_Uc_Vp();
int assert_ret_Sf_Uc_Vp(){
    return assert_Sf_Uc_Vp(zig_ret_Sf_Uc_Vp());
}

int assert_Sf_Ui(struct Sf_Ui lv){
    int err = 0;
  if (lv.v2 != 20269) err = 2;
  return err;
}
struct Sf_Ui ret_Sf_Ui(){
    struct Sf_Ui lv = { .v1 = EMPTY, .v2 = 20269 };
    return lv;
}
int zig_assert_Sf_Ui(struct Sf_Ui);
int send_Sf_Ui(){
    return zig_assert_Sf_Ui(ret_Sf_Ui());
}
struct Sf_Ui zig_ret_Sf_Ui();
int assert_ret_Sf_Ui(){
    return assert_Sf_Ui(zig_ret_Sf_Ui());
}

int assert_Sf_Ui_C(struct Sf_Ui_C lv){
    int err = 0;
  if (lv.v2 != 11043) err = 2;
  if (lv.v3 != 115) err = 3;
  return err;
}
struct Sf_Ui_C ret_Sf_Ui_C(){
    struct Sf_Ui_C lv = { .v1 = EMPTY, .v2 = 11043, .v3 = 115 };
    return lv;
}
int zig_assert_Sf_Ui_C(struct Sf_Ui_C);
int send_Sf_Ui_C(){
    return zig_assert_Sf_Ui_C(ret_Sf_Ui_C());
}
struct Sf_Ui_C zig_ret_Sf_Ui_C();
int assert_ret_Sf_Ui_C(){
    return assert_Sf_Ui_C(zig_ret_Sf_Ui_C());
}

int assert_Sf_Ui_D(struct Sf_Ui_D lv){
    int err = 0;
  if (lv.v2 != 5889) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Sf_Ui_D ret_Sf_Ui_D(){
    struct Sf_Ui_D lv = { .v1 = EMPTY, .v2 = 5889, .v3 = 1.0 };
    return lv;
}
int zig_assert_Sf_Ui_D(struct Sf_Ui_D);
int send_Sf_Ui_D(){
    return zig_assert_Sf_Ui_D(ret_Sf_Ui_D());
}
struct Sf_Ui_D zig_ret_Sf_Ui_D();
int assert_ret_Sf_Ui_D(){
    return assert_Sf_Ui_D(zig_ret_Sf_Ui_D());
}

int assert_Sf_Ui_F(struct Sf_Ui_F lv){
    int err = 0;
  if (lv.v2 != 27237) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Sf_Ui_F ret_Sf_Ui_F(){
    struct Sf_Ui_F lv = { .v1 = EMPTY, .v2 = 27237, .v3 = -2.125 };
    return lv;
}
int zig_assert_Sf_Ui_F(struct Sf_Ui_F);
int send_Sf_Ui_F(){
    return zig_assert_Sf_Ui_F(ret_Sf_Ui_F());
}
struct Sf_Ui_F zig_ret_Sf_Ui_F();
int assert_ret_Sf_Ui_F(){
    return assert_Sf_Ui_F(zig_ret_Sf_Ui_F());
}

int assert_Sf_Ui_I(struct Sf_Ui_I lv){
    int err = 0;
  if (lv.v2 != 31991) err = 2;
  if (lv.v3 != 12435) err = 3;
  return err;
}
struct Sf_Ui_I ret_Sf_Ui_I(){
    struct Sf_Ui_I lv = { .v1 = EMPTY, .v2 = 31991, .v3 = 12435 };
    return lv;
}
int zig_assert_Sf_Ui_I(struct Sf_Ui_I);
int send_Sf_Ui_I(){
    return zig_assert_Sf_Ui_I(ret_Sf_Ui_I());
}
struct Sf_Ui_I zig_ret_Sf_Ui_I();
int assert_ret_Sf_Ui_I(){
    return assert_Sf_Ui_I(zig_ret_Sf_Ui_I());
}

int assert_Sf_Ui_Ip(struct Sf_Ui_Ip lv){
    int err = 0;
  if (lv.v2 != 14741) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Ui_Ip ret_Sf_Ui_Ip(){
    struct Sf_Ui_Ip lv = { .v1 = EMPTY, .v2 = 14741, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Ui_Ip(struct Sf_Ui_Ip);
int send_Sf_Ui_Ip(){
    return zig_assert_Sf_Ui_Ip(ret_Sf_Ui_Ip());
}
struct Sf_Ui_Ip zig_ret_Sf_Ui_Ip();
int assert_ret_Sf_Ui_Ip(){
    return assert_Sf_Ui_Ip(zig_ret_Sf_Ui_Ip());
}

int assert_Sf_Ui_L(struct Sf_Ui_L lv){
    int err = 0;
  if (lv.v2 != 21926) err = 2;
  if (lv.v3 != 2813) err = 3;
  return err;
}
struct Sf_Ui_L ret_Sf_Ui_L(){
    struct Sf_Ui_L lv = { .v1 = EMPTY, .v2 = 21926, .v3 = 2813 };
    return lv;
}
int zig_assert_Sf_Ui_L(struct Sf_Ui_L);
int send_Sf_Ui_L(){
    return zig_assert_Sf_Ui_L(ret_Sf_Ui_L());
}
struct Sf_Ui_L zig_ret_Sf_Ui_L();
int assert_ret_Sf_Ui_L(){
    return assert_Sf_Ui_L(zig_ret_Sf_Ui_L());
}

int assert_Sf_Ui_S(struct Sf_Ui_S lv){
    int err = 0;
  if (lv.v2 != 21670) err = 2;
  if (lv.v3 != 18943) err = 3;
  return err;
}
struct Sf_Ui_S ret_Sf_Ui_S(){
    struct Sf_Ui_S lv = { .v1 = EMPTY, .v2 = 21670, .v3 = 18943 };
    return lv;
}
int zig_assert_Sf_Ui_S(struct Sf_Ui_S);
int send_Sf_Ui_S(){
    return zig_assert_Sf_Ui_S(ret_Sf_Ui_S());
}
struct Sf_Ui_S zig_ret_Sf_Ui_S();
int assert_ret_Sf_Ui_S(){
    return assert_Sf_Ui_S(zig_ret_Sf_Ui_S());
}

int assert_Sf_Ui_Sf(struct Sf_Ui_Sf lv){
    int err = 0;
  if (lv.v2 != 14286) err = 2;
  return err;
}
struct Sf_Ui_Sf ret_Sf_Ui_Sf(){
    struct Sf_Ui_Sf lv = { .v1 = EMPTY, .v2 = 14286, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_Ui_Sf(struct Sf_Ui_Sf);
int send_Sf_Ui_Sf(){
    return zig_assert_Sf_Ui_Sf(ret_Sf_Ui_Sf());
}
struct Sf_Ui_Sf zig_ret_Sf_Ui_Sf();
int assert_ret_Sf_Ui_Sf(){
    return assert_Sf_Ui_Sf(zig_ret_Sf_Ui_Sf());
}

int assert_Sf_Ui_Uc(struct Sf_Ui_Uc lv){
    int err = 0;
  if (lv.v2 != 7553) err = 2;
  if (lv.v3 != 86) err = 3;
  return err;
}
struct Sf_Ui_Uc ret_Sf_Ui_Uc(){
    struct Sf_Ui_Uc lv = { .v1 = EMPTY, .v2 = 7553, .v3 = 86 };
    return lv;
}
int zig_assert_Sf_Ui_Uc(struct Sf_Ui_Uc);
int send_Sf_Ui_Uc(){
    return zig_assert_Sf_Ui_Uc(ret_Sf_Ui_Uc());
}
struct Sf_Ui_Uc zig_ret_Sf_Ui_Uc();
int assert_ret_Sf_Ui_Uc(){
    return assert_Sf_Ui_Uc(zig_ret_Sf_Ui_Uc());
}

int assert_Sf_Ui_Ui(struct Sf_Ui_Ui lv){
    int err = 0;
  if (lv.v2 != 31439) err = 2;
  if (lv.v3 != 9666) err = 3;
  return err;
}
struct Sf_Ui_Ui ret_Sf_Ui_Ui(){
    struct Sf_Ui_Ui lv = { .v1 = EMPTY, .v2 = 31439, .v3 = 9666 };
    return lv;
}
int zig_assert_Sf_Ui_Ui(struct Sf_Ui_Ui);
int send_Sf_Ui_Ui(){
    return zig_assert_Sf_Ui_Ui(ret_Sf_Ui_Ui());
}
struct Sf_Ui_Ui zig_ret_Sf_Ui_Ui();
int assert_ret_Sf_Ui_Ui(){
    return assert_Sf_Ui_Ui(zig_ret_Sf_Ui_Ui());
}

int assert_Sf_Ui_Ul(struct Sf_Ui_Ul lv){
    int err = 0;
  if (lv.v2 != 24136) err = 2;
  if (lv.v3 != 18579) err = 3;
  return err;
}
struct Sf_Ui_Ul ret_Sf_Ui_Ul(){
    struct Sf_Ui_Ul lv = { .v1 = EMPTY, .v2 = 24136, .v3 = 18579 };
    return lv;
}
int zig_assert_Sf_Ui_Ul(struct Sf_Ui_Ul);
int send_Sf_Ui_Ul(){
    return zig_assert_Sf_Ui_Ul(ret_Sf_Ui_Ul());
}
struct Sf_Ui_Ul zig_ret_Sf_Ui_Ul();
int assert_ret_Sf_Ui_Ul(){
    return assert_Sf_Ui_Ul(zig_ret_Sf_Ui_Ul());
}

int assert_Sf_Ui_Us(struct Sf_Ui_Us lv){
    int err = 0;
  if (lv.v2 != 16978) err = 2;
  if (lv.v3 != 3173) err = 3;
  return err;
}
struct Sf_Ui_Us ret_Sf_Ui_Us(){
    struct Sf_Ui_Us lv = { .v1 = EMPTY, .v2 = 16978, .v3 = 3173 };
    return lv;
}
int zig_assert_Sf_Ui_Us(struct Sf_Ui_Us);
int send_Sf_Ui_Us(){
    return zig_assert_Sf_Ui_Us(ret_Sf_Ui_Us());
}
struct Sf_Ui_Us zig_ret_Sf_Ui_Us();
int assert_ret_Sf_Ui_Us(){
    return assert_Sf_Ui_Us(zig_ret_Sf_Ui_Us());
}

int assert_Sf_Ui_Vp(struct Sf_Ui_Vp lv){
    int err = 0;
  if (lv.v2 != 25991) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Ui_Vp ret_Sf_Ui_Vp(){
    struct Sf_Ui_Vp lv = { .v1 = EMPTY, .v2 = 25991, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Ui_Vp(struct Sf_Ui_Vp);
int send_Sf_Ui_Vp(){
    return zig_assert_Sf_Ui_Vp(ret_Sf_Ui_Vp());
}
struct Sf_Ui_Vp zig_ret_Sf_Ui_Vp();
int assert_ret_Sf_Ui_Vp(){
    return assert_Sf_Ui_Vp(zig_ret_Sf_Ui_Vp());
}

int assert_Sf_Ul(struct Sf_Ul lv){
    int err = 0;
  if (lv.v2 != 2013) err = 2;
  return err;
}
struct Sf_Ul ret_Sf_Ul(){
    struct Sf_Ul lv = { .v1 = EMPTY, .v2 = 2013 };
    return lv;
}
int zig_assert_Sf_Ul(struct Sf_Ul);
int send_Sf_Ul(){
    return zig_assert_Sf_Ul(ret_Sf_Ul());
}
struct Sf_Ul zig_ret_Sf_Ul();
int assert_ret_Sf_Ul(){
    return assert_Sf_Ul(zig_ret_Sf_Ul());
}

int assert_Sf_Ul_C(struct Sf_Ul_C lv){
    int err = 0;
  if (lv.v2 != 31343) err = 2;
  if (lv.v3 != 16) err = 3;
  return err;
}
struct Sf_Ul_C ret_Sf_Ul_C(){
    struct Sf_Ul_C lv = { .v1 = EMPTY, .v2 = 31343, .v3 = 16 };
    return lv;
}
int zig_assert_Sf_Ul_C(struct Sf_Ul_C);
int send_Sf_Ul_C(){
    return zig_assert_Sf_Ul_C(ret_Sf_Ul_C());
}
struct Sf_Ul_C zig_ret_Sf_Ul_C();
int assert_ret_Sf_Ul_C(){
    return assert_Sf_Ul_C(zig_ret_Sf_Ul_C());
}

int assert_Sf_Ul_D(struct Sf_Ul_D lv){
    int err = 0;
  if (lv.v2 != 6874) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Sf_Ul_D ret_Sf_Ul_D(){
    struct Sf_Ul_D lv = { .v1 = EMPTY, .v2 = 6874, .v3 = -2.125 };
    return lv;
}
int zig_assert_Sf_Ul_D(struct Sf_Ul_D);
int send_Sf_Ul_D(){
    return zig_assert_Sf_Ul_D(ret_Sf_Ul_D());
}
struct Sf_Ul_D zig_ret_Sf_Ul_D();
int assert_ret_Sf_Ul_D(){
    return assert_Sf_Ul_D(zig_ret_Sf_Ul_D());
}

int assert_Sf_Ul_F(struct Sf_Ul_F lv){
    int err = 0;
  if (lv.v2 != 21440) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Sf_Ul_F ret_Sf_Ul_F(){
    struct Sf_Ul_F lv = { .v1 = EMPTY, .v2 = 21440, .v3 = -0.25 };
    return lv;
}
int zig_assert_Sf_Ul_F(struct Sf_Ul_F);
int send_Sf_Ul_F(){
    return zig_assert_Sf_Ul_F(ret_Sf_Ul_F());
}
struct Sf_Ul_F zig_ret_Sf_Ul_F();
int assert_ret_Sf_Ul_F(){
    return assert_Sf_Ul_F(zig_ret_Sf_Ul_F());
}

int assert_Sf_Ul_I(struct Sf_Ul_I lv){
    int err = 0;
  if (lv.v2 != 22237) err = 2;
  if (lv.v3 != 3554) err = 3;
  return err;
}
struct Sf_Ul_I ret_Sf_Ul_I(){
    struct Sf_Ul_I lv = { .v1 = EMPTY, .v2 = 22237, .v3 = 3554 };
    return lv;
}
int zig_assert_Sf_Ul_I(struct Sf_Ul_I);
int send_Sf_Ul_I(){
    return zig_assert_Sf_Ul_I(ret_Sf_Ul_I());
}
struct Sf_Ul_I zig_ret_Sf_Ul_I();
int assert_ret_Sf_Ul_I(){
    return assert_Sf_Ul_I(zig_ret_Sf_Ul_I());
}

int assert_Sf_Ul_Ip(struct Sf_Ul_Ip lv){
    int err = 0;
  if (lv.v2 != 395) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Ul_Ip ret_Sf_Ul_Ip(){
    struct Sf_Ul_Ip lv = { .v1 = EMPTY, .v2 = 395, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Ul_Ip(struct Sf_Ul_Ip);
int send_Sf_Ul_Ip(){
    return zig_assert_Sf_Ul_Ip(ret_Sf_Ul_Ip());
}
struct Sf_Ul_Ip zig_ret_Sf_Ul_Ip();
int assert_ret_Sf_Ul_Ip(){
    return assert_Sf_Ul_Ip(zig_ret_Sf_Ul_Ip());
}

int assert_Sf_Ul_L(struct Sf_Ul_L lv){
    int err = 0;
  if (lv.v2 != 28368) err = 2;
  if (lv.v3 != 11343) err = 3;
  return err;
}
struct Sf_Ul_L ret_Sf_Ul_L(){
    struct Sf_Ul_L lv = { .v1 = EMPTY, .v2 = 28368, .v3 = 11343 };
    return lv;
}
int zig_assert_Sf_Ul_L(struct Sf_Ul_L);
int send_Sf_Ul_L(){
    return zig_assert_Sf_Ul_L(ret_Sf_Ul_L());
}
struct Sf_Ul_L zig_ret_Sf_Ul_L();
int assert_ret_Sf_Ul_L(){
    return assert_Sf_Ul_L(zig_ret_Sf_Ul_L());
}

int assert_Sf_Ul_S(struct Sf_Ul_S lv){
    int err = 0;
  if (lv.v2 != 9019) err = 2;
  if (lv.v3 != 22) err = 3;
  return err;
}
struct Sf_Ul_S ret_Sf_Ul_S(){
    struct Sf_Ul_S lv = { .v1 = EMPTY, .v2 = 9019, .v3 = 22 };
    return lv;
}
int zig_assert_Sf_Ul_S(struct Sf_Ul_S);
int send_Sf_Ul_S(){
    return zig_assert_Sf_Ul_S(ret_Sf_Ul_S());
}
struct Sf_Ul_S zig_ret_Sf_Ul_S();
int assert_ret_Sf_Ul_S(){
    return assert_Sf_Ul_S(zig_ret_Sf_Ul_S());
}

int assert_Sf_Ul_Sf(struct Sf_Ul_Sf lv){
    int err = 0;
  if (lv.v2 != 26139) err = 2;
  return err;
}
struct Sf_Ul_Sf ret_Sf_Ul_Sf(){
    struct Sf_Ul_Sf lv = { .v1 = EMPTY, .v2 = 26139, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_Ul_Sf(struct Sf_Ul_Sf);
int send_Sf_Ul_Sf(){
    return zig_assert_Sf_Ul_Sf(ret_Sf_Ul_Sf());
}
struct Sf_Ul_Sf zig_ret_Sf_Ul_Sf();
int assert_ret_Sf_Ul_Sf(){
    return assert_Sf_Ul_Sf(zig_ret_Sf_Ul_Sf());
}

int assert_Sf_Ul_Uc(struct Sf_Ul_Uc lv){
    int err = 0;
  if (lv.v2 != 10407) err = 2;
  if (lv.v3 != 53) err = 3;
  return err;
}
struct Sf_Ul_Uc ret_Sf_Ul_Uc(){
    struct Sf_Ul_Uc lv = { .v1 = EMPTY, .v2 = 10407, .v3 = 53 };
    return lv;
}
int zig_assert_Sf_Ul_Uc(struct Sf_Ul_Uc);
int send_Sf_Ul_Uc(){
    return zig_assert_Sf_Ul_Uc(ret_Sf_Ul_Uc());
}
struct Sf_Ul_Uc zig_ret_Sf_Ul_Uc();
int assert_ret_Sf_Ul_Uc(){
    return assert_Sf_Ul_Uc(zig_ret_Sf_Ul_Uc());
}

int assert_Sf_Ul_Ui(struct Sf_Ul_Ui lv){
    int err = 0;
  if (lv.v2 != 6832) err = 2;
  if (lv.v3 != 22432) err = 3;
  return err;
}
struct Sf_Ul_Ui ret_Sf_Ul_Ui(){
    struct Sf_Ul_Ui lv = { .v1 = EMPTY, .v2 = 6832, .v3 = 22432 };
    return lv;
}
int zig_assert_Sf_Ul_Ui(struct Sf_Ul_Ui);
int send_Sf_Ul_Ui(){
    return zig_assert_Sf_Ul_Ui(ret_Sf_Ul_Ui());
}
struct Sf_Ul_Ui zig_ret_Sf_Ul_Ui();
int assert_ret_Sf_Ul_Ui(){
    return assert_Sf_Ul_Ui(zig_ret_Sf_Ul_Ui());
}

int assert_Sf_Ul_Ul(struct Sf_Ul_Ul lv){
    int err = 0;
  if (lv.v2 != 13239) err = 2;
  if (lv.v3 != 31345) err = 3;
  return err;
}
struct Sf_Ul_Ul ret_Sf_Ul_Ul(){
    struct Sf_Ul_Ul lv = { .v1 = EMPTY, .v2 = 13239, .v3 = 31345 };
    return lv;
}
int zig_assert_Sf_Ul_Ul(struct Sf_Ul_Ul);
int send_Sf_Ul_Ul(){
    return zig_assert_Sf_Ul_Ul(ret_Sf_Ul_Ul());
}
struct Sf_Ul_Ul zig_ret_Sf_Ul_Ul();
int assert_ret_Sf_Ul_Ul(){
    return assert_Sf_Ul_Ul(zig_ret_Sf_Ul_Ul());
}

int assert_Sf_Ul_Us(struct Sf_Ul_Us lv){
    int err = 0;
  if (lv.v2 != 100) err = 2;
  if (lv.v3 != 23779) err = 3;
  return err;
}
struct Sf_Ul_Us ret_Sf_Ul_Us(){
    struct Sf_Ul_Us lv = { .v1 = EMPTY, .v2 = 100, .v3 = 23779 };
    return lv;
}
int zig_assert_Sf_Ul_Us(struct Sf_Ul_Us);
int send_Sf_Ul_Us(){
    return zig_assert_Sf_Ul_Us(ret_Sf_Ul_Us());
}
struct Sf_Ul_Us zig_ret_Sf_Ul_Us();
int assert_ret_Sf_Ul_Us(){
    return assert_Sf_Ul_Us(zig_ret_Sf_Ul_Us());
}

int assert_Sf_Ul_Vp(struct Sf_Ul_Vp lv){
    int err = 0;
  if (lv.v2 != 24502) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Ul_Vp ret_Sf_Ul_Vp(){
    struct Sf_Ul_Vp lv = { .v1 = EMPTY, .v2 = 24502, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Ul_Vp(struct Sf_Ul_Vp);
int send_Sf_Ul_Vp(){
    return zig_assert_Sf_Ul_Vp(ret_Sf_Ul_Vp());
}
struct Sf_Ul_Vp zig_ret_Sf_Ul_Vp();
int assert_ret_Sf_Ul_Vp(){
    return assert_Sf_Ul_Vp(zig_ret_Sf_Ul_Vp());
}

int assert_Sf_Us(struct Sf_Us lv){
    int err = 0;
  if (lv.v2 != 25) err = 2;
  return err;
}
struct Sf_Us ret_Sf_Us(){
    struct Sf_Us lv = { .v1 = EMPTY, .v2 = 25 };
    return lv;
}
int zig_assert_Sf_Us(struct Sf_Us);
int send_Sf_Us(){
    return zig_assert_Sf_Us(ret_Sf_Us());
}
struct Sf_Us zig_ret_Sf_Us();
int assert_ret_Sf_Us(){
    return assert_Sf_Us(zig_ret_Sf_Us());
}

int assert_Sf_Us_C(struct Sf_Us_C lv){
    int err = 0;
  if (lv.v2 != 10696) err = 2;
  if (lv.v3 != 27) err = 3;
  return err;
}
struct Sf_Us_C ret_Sf_Us_C(){
    struct Sf_Us_C lv = { .v1 = EMPTY, .v2 = 10696, .v3 = 27 };
    return lv;
}
int zig_assert_Sf_Us_C(struct Sf_Us_C);
int send_Sf_Us_C(){
    return zig_assert_Sf_Us_C(ret_Sf_Us_C());
}
struct Sf_Us_C zig_ret_Sf_Us_C();
int assert_ret_Sf_Us_C(){
    return assert_Sf_Us_C(zig_ret_Sf_Us_C());
}

int assert_Sf_Us_D(struct Sf_Us_D lv){
    int err = 0;
  if (lv.v2 != 422) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Sf_Us_D ret_Sf_Us_D(){
    struct Sf_Us_D lv = { .v1 = EMPTY, .v2 = 422, .v3 = 1.0 };
    return lv;
}
int zig_assert_Sf_Us_D(struct Sf_Us_D);
int send_Sf_Us_D(){
    return zig_assert_Sf_Us_D(ret_Sf_Us_D());
}
struct Sf_Us_D zig_ret_Sf_Us_D();
int assert_ret_Sf_Us_D(){
    return assert_Sf_Us_D(zig_ret_Sf_Us_D());
}

int assert_Sf_Us_F(struct Sf_Us_F lv){
    int err = 0;
  if (lv.v2 != 18910) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Sf_Us_F ret_Sf_Us_F(){
    struct Sf_Us_F lv = { .v1 = EMPTY, .v2 = 18910, .v3 = 0.875 };
    return lv;
}
int zig_assert_Sf_Us_F(struct Sf_Us_F);
int send_Sf_Us_F(){
    return zig_assert_Sf_Us_F(ret_Sf_Us_F());
}
struct Sf_Us_F zig_ret_Sf_Us_F();
int assert_ret_Sf_Us_F(){
    return assert_Sf_Us_F(zig_ret_Sf_Us_F());
}

int assert_Sf_Us_I(struct Sf_Us_I lv){
    int err = 0;
  if (lv.v2 != 22666) err = 2;
  if (lv.v3 != 26813) err = 3;
  return err;
}
struct Sf_Us_I ret_Sf_Us_I(){
    struct Sf_Us_I lv = { .v1 = EMPTY, .v2 = 22666, .v3 = 26813 };
    return lv;
}
int zig_assert_Sf_Us_I(struct Sf_Us_I);
int send_Sf_Us_I(){
    return zig_assert_Sf_Us_I(ret_Sf_Us_I());
}
struct Sf_Us_I zig_ret_Sf_Us_I();
int assert_ret_Sf_Us_I(){
    return assert_Sf_Us_I(zig_ret_Sf_Us_I());
}

int assert_Sf_Us_Ip(struct Sf_Us_Ip lv){
    int err = 0;
  if (lv.v2 != 12297) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Us_Ip ret_Sf_Us_Ip(){
    struct Sf_Us_Ip lv = { .v1 = EMPTY, .v2 = 12297, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Us_Ip(struct Sf_Us_Ip);
int send_Sf_Us_Ip(){
    return zig_assert_Sf_Us_Ip(ret_Sf_Us_Ip());
}
struct Sf_Us_Ip zig_ret_Sf_Us_Ip();
int assert_ret_Sf_Us_Ip(){
    return assert_Sf_Us_Ip(zig_ret_Sf_Us_Ip());
}

int assert_Sf_Us_L(struct Sf_Us_L lv){
    int err = 0;
  if (lv.v2 != 19394) err = 2;
  if (lv.v3 != 14223) err = 3;
  return err;
}
struct Sf_Us_L ret_Sf_Us_L(){
    struct Sf_Us_L lv = { .v1 = EMPTY, .v2 = 19394, .v3 = 14223 };
    return lv;
}
int zig_assert_Sf_Us_L(struct Sf_Us_L);
int send_Sf_Us_L(){
    return zig_assert_Sf_Us_L(ret_Sf_Us_L());
}
struct Sf_Us_L zig_ret_Sf_Us_L();
int assert_ret_Sf_Us_L(){
    return assert_Sf_Us_L(zig_ret_Sf_Us_L());
}

int assert_Sf_Us_S(struct Sf_Us_S lv){
    int err = 0;
  if (lv.v2 != 24719) err = 2;
  if (lv.v3 != 24300) err = 3;
  return err;
}
struct Sf_Us_S ret_Sf_Us_S(){
    struct Sf_Us_S lv = { .v1 = EMPTY, .v2 = 24719, .v3 = 24300 };
    return lv;
}
int zig_assert_Sf_Us_S(struct Sf_Us_S);
int send_Sf_Us_S(){
    return zig_assert_Sf_Us_S(ret_Sf_Us_S());
}
struct Sf_Us_S zig_ret_Sf_Us_S();
int assert_ret_Sf_Us_S(){
    return assert_Sf_Us_S(zig_ret_Sf_Us_S());
}

int assert_Sf_Us_Sf(struct Sf_Us_Sf lv){
    int err = 0;
  if (lv.v2 != 2443) err = 2;
  return err;
}
struct Sf_Us_Sf ret_Sf_Us_Sf(){
    struct Sf_Us_Sf lv = { .v1 = EMPTY, .v2 = 2443, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_Us_Sf(struct Sf_Us_Sf);
int send_Sf_Us_Sf(){
    return zig_assert_Sf_Us_Sf(ret_Sf_Us_Sf());
}
struct Sf_Us_Sf zig_ret_Sf_Us_Sf();
int assert_ret_Sf_Us_Sf(){
    return assert_Sf_Us_Sf(zig_ret_Sf_Us_Sf());
}

int assert_Sf_Us_Uc(struct Sf_Us_Uc lv){
    int err = 0;
  if (lv.v2 != 6872) err = 2;
  if (lv.v3 != 23) err = 3;
  return err;
}
struct Sf_Us_Uc ret_Sf_Us_Uc(){
    struct Sf_Us_Uc lv = { .v1 = EMPTY, .v2 = 6872, .v3 = 23 };
    return lv;
}
int zig_assert_Sf_Us_Uc(struct Sf_Us_Uc);
int send_Sf_Us_Uc(){
    return zig_assert_Sf_Us_Uc(ret_Sf_Us_Uc());
}
struct Sf_Us_Uc zig_ret_Sf_Us_Uc();
int assert_ret_Sf_Us_Uc(){
    return assert_Sf_Us_Uc(zig_ret_Sf_Us_Uc());
}

int assert_Sf_Us_Ui(struct Sf_Us_Ui lv){
    int err = 0;
  if (lv.v2 != 1271) err = 2;
  if (lv.v3 != 26645) err = 3;
  return err;
}
struct Sf_Us_Ui ret_Sf_Us_Ui(){
    struct Sf_Us_Ui lv = { .v1 = EMPTY, .v2 = 1271, .v3 = 26645 };
    return lv;
}
int zig_assert_Sf_Us_Ui(struct Sf_Us_Ui);
int send_Sf_Us_Ui(){
    return zig_assert_Sf_Us_Ui(ret_Sf_Us_Ui());
}
struct Sf_Us_Ui zig_ret_Sf_Us_Ui();
int assert_ret_Sf_Us_Ui(){
    return assert_Sf_Us_Ui(zig_ret_Sf_Us_Ui());
}

int assert_Sf_Us_Ul(struct Sf_Us_Ul lv){
    int err = 0;
  if (lv.v2 != 14420) err = 2;
  if (lv.v3 != 20502) err = 3;
  return err;
}
struct Sf_Us_Ul ret_Sf_Us_Ul(){
    struct Sf_Us_Ul lv = { .v1 = EMPTY, .v2 = 14420, .v3 = 20502 };
    return lv;
}
int zig_assert_Sf_Us_Ul(struct Sf_Us_Ul);
int send_Sf_Us_Ul(){
    return zig_assert_Sf_Us_Ul(ret_Sf_Us_Ul());
}
struct Sf_Us_Ul zig_ret_Sf_Us_Ul();
int assert_ret_Sf_Us_Ul(){
    return assert_Sf_Us_Ul(zig_ret_Sf_Us_Ul());
}

int assert_Sf_Us_Us(struct Sf_Us_Us lv){
    int err = 0;
  if (lv.v2 != 30125) err = 2;
  if (lv.v3 != 6780) err = 3;
  return err;
}
struct Sf_Us_Us ret_Sf_Us_Us(){
    struct Sf_Us_Us lv = { .v1 = EMPTY, .v2 = 30125, .v3 = 6780 };
    return lv;
}
int zig_assert_Sf_Us_Us(struct Sf_Us_Us);
int send_Sf_Us_Us(){
    return zig_assert_Sf_Us_Us(ret_Sf_Us_Us());
}
struct Sf_Us_Us zig_ret_Sf_Us_Us();
int assert_ret_Sf_Us_Us(){
    return assert_Sf_Us_Us(zig_ret_Sf_Us_Us());
}

int assert_Sf_Us_Vp(struct Sf_Us_Vp lv){
    int err = 0;
  if (lv.v2 != 9594) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Us_Vp ret_Sf_Us_Vp(){
    struct Sf_Us_Vp lv = { .v1 = EMPTY, .v2 = 9594, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Us_Vp(struct Sf_Us_Vp);
int send_Sf_Us_Vp(){
    return zig_assert_Sf_Us_Vp(ret_Sf_Us_Vp());
}
struct Sf_Us_Vp zig_ret_Sf_Us_Vp();
int assert_ret_Sf_Us_Vp(){
    return assert_Sf_Us_Vp(zig_ret_Sf_Us_Vp());
}

int assert_Sf_Vp(struct Sf_Vp lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Sf_Vp ret_Sf_Vp(){
    struct Sf_Vp lv = { .v1 = EMPTY, .v2 = 0 };
    return lv;
}
int zig_assert_Sf_Vp(struct Sf_Vp);
int send_Sf_Vp(){
    return zig_assert_Sf_Vp(ret_Sf_Vp());
}
struct Sf_Vp zig_ret_Sf_Vp();
int assert_ret_Sf_Vp(){
    return assert_Sf_Vp(zig_ret_Sf_Vp());
}

int assert_Sf_Vp_C(struct Sf_Vp_C lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 118) err = 3;
  return err;
}
struct Sf_Vp_C ret_Sf_Vp_C(){
    struct Sf_Vp_C lv = { .v1 = EMPTY, .v2 = 0, .v3 = 118 };
    return lv;
}
int zig_assert_Sf_Vp_C(struct Sf_Vp_C);
int send_Sf_Vp_C(){
    return zig_assert_Sf_Vp_C(ret_Sf_Vp_C());
}
struct Sf_Vp_C zig_ret_Sf_Vp_C();
int assert_ret_Sf_Vp_C(){
    return assert_Sf_Vp_C(zig_ret_Sf_Vp_C());
}

int assert_Sf_Vp_D(struct Sf_Vp_D lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Sf_Vp_D ret_Sf_Vp_D(){
    struct Sf_Vp_D lv = { .v1 = EMPTY, .v2 = 0, .v3 = -2.125 };
    return lv;
}
int zig_assert_Sf_Vp_D(struct Sf_Vp_D);
int send_Sf_Vp_D(){
    return zig_assert_Sf_Vp_D(ret_Sf_Vp_D());
}
struct Sf_Vp_D zig_ret_Sf_Vp_D();
int assert_ret_Sf_Vp_D(){
    return assert_Sf_Vp_D(zig_ret_Sf_Vp_D());
}

int assert_Sf_Vp_F(struct Sf_Vp_F lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Sf_Vp_F ret_Sf_Vp_F(){
    struct Sf_Vp_F lv = { .v1 = EMPTY, .v2 = 0, .v3 = 4.5 };
    return lv;
}
int zig_assert_Sf_Vp_F(struct Sf_Vp_F);
int send_Sf_Vp_F(){
    return zig_assert_Sf_Vp_F(ret_Sf_Vp_F());
}
struct Sf_Vp_F zig_ret_Sf_Vp_F();
int assert_ret_Sf_Vp_F(){
    return assert_Sf_Vp_F(zig_ret_Sf_Vp_F());
}

int assert_Sf_Vp_I(struct Sf_Vp_I lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 16526) err = 3;
  return err;
}
struct Sf_Vp_I ret_Sf_Vp_I(){
    struct Sf_Vp_I lv = { .v1 = EMPTY, .v2 = 0, .v3 = 16526 };
    return lv;
}
int zig_assert_Sf_Vp_I(struct Sf_Vp_I);
int send_Sf_Vp_I(){
    return zig_assert_Sf_Vp_I(ret_Sf_Vp_I());
}
struct Sf_Vp_I zig_ret_Sf_Vp_I();
int assert_ret_Sf_Vp_I(){
    return assert_Sf_Vp_I(zig_ret_Sf_Vp_I());
}

int assert_Sf_Vp_Ip(struct Sf_Vp_Ip lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Vp_Ip ret_Sf_Vp_Ip(){
    struct Sf_Vp_Ip lv = { .v1 = EMPTY, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Vp_Ip(struct Sf_Vp_Ip);
int send_Sf_Vp_Ip(){
    return zig_assert_Sf_Vp_Ip(ret_Sf_Vp_Ip());
}
struct Sf_Vp_Ip zig_ret_Sf_Vp_Ip();
int assert_ret_Sf_Vp_Ip(){
    return assert_Sf_Vp_Ip(zig_ret_Sf_Vp_Ip());
}

int assert_Sf_Vp_L(struct Sf_Vp_L lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 485) err = 3;
  return err;
}
struct Sf_Vp_L ret_Sf_Vp_L(){
    struct Sf_Vp_L lv = { .v1 = EMPTY, .v2 = 0, .v3 = 485 };
    return lv;
}
int zig_assert_Sf_Vp_L(struct Sf_Vp_L);
int send_Sf_Vp_L(){
    return zig_assert_Sf_Vp_L(ret_Sf_Vp_L());
}
struct Sf_Vp_L zig_ret_Sf_Vp_L();
int assert_ret_Sf_Vp_L(){
    return assert_Sf_Vp_L(zig_ret_Sf_Vp_L());
}

int assert_Sf_Vp_S(struct Sf_Vp_S lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 27649) err = 3;
  return err;
}
struct Sf_Vp_S ret_Sf_Vp_S(){
    struct Sf_Vp_S lv = { .v1 = EMPTY, .v2 = 0, .v3 = 27649 };
    return lv;
}
int zig_assert_Sf_Vp_S(struct Sf_Vp_S);
int send_Sf_Vp_S(){
    return zig_assert_Sf_Vp_S(ret_Sf_Vp_S());
}
struct Sf_Vp_S zig_ret_Sf_Vp_S();
int assert_ret_Sf_Vp_S(){
    return assert_Sf_Vp_S(zig_ret_Sf_Vp_S());
}

int assert_Sf_Vp_Sf(struct Sf_Vp_Sf lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Sf_Vp_Sf ret_Sf_Vp_Sf(){
    struct Sf_Vp_Sf lv = { .v1 = EMPTY, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Sf_Vp_Sf(struct Sf_Vp_Sf);
int send_Sf_Vp_Sf(){
    return zig_assert_Sf_Vp_Sf(ret_Sf_Vp_Sf());
}
struct Sf_Vp_Sf zig_ret_Sf_Vp_Sf();
int assert_ret_Sf_Vp_Sf(){
    return assert_Sf_Vp_Sf(zig_ret_Sf_Vp_Sf());
}

int assert_Sf_Vp_Uc(struct Sf_Vp_Uc lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 89) err = 3;
  return err;
}
struct Sf_Vp_Uc ret_Sf_Vp_Uc(){
    struct Sf_Vp_Uc lv = { .v1 = EMPTY, .v2 = 0, .v3 = 89 };
    return lv;
}
int zig_assert_Sf_Vp_Uc(struct Sf_Vp_Uc);
int send_Sf_Vp_Uc(){
    return zig_assert_Sf_Vp_Uc(ret_Sf_Vp_Uc());
}
struct Sf_Vp_Uc zig_ret_Sf_Vp_Uc();
int assert_ret_Sf_Vp_Uc(){
    return assert_Sf_Vp_Uc(zig_ret_Sf_Vp_Uc());
}

int assert_Sf_Vp_Ui(struct Sf_Vp_Ui lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 6312) err = 3;
  return err;
}
struct Sf_Vp_Ui ret_Sf_Vp_Ui(){
    struct Sf_Vp_Ui lv = { .v1 = EMPTY, .v2 = 0, .v3 = 6312 };
    return lv;
}
int zig_assert_Sf_Vp_Ui(struct Sf_Vp_Ui);
int send_Sf_Vp_Ui(){
    return zig_assert_Sf_Vp_Ui(ret_Sf_Vp_Ui());
}
struct Sf_Vp_Ui zig_ret_Sf_Vp_Ui();
int assert_ret_Sf_Vp_Ui(){
    return assert_Sf_Vp_Ui(zig_ret_Sf_Vp_Ui());
}

int assert_Sf_Vp_Ul(struct Sf_Vp_Ul lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 1311) err = 3;
  return err;
}
struct Sf_Vp_Ul ret_Sf_Vp_Ul(){
    struct Sf_Vp_Ul lv = { .v1 = EMPTY, .v2 = 0, .v3 = 1311 };
    return lv;
}
int zig_assert_Sf_Vp_Ul(struct Sf_Vp_Ul);
int send_Sf_Vp_Ul(){
    return zig_assert_Sf_Vp_Ul(ret_Sf_Vp_Ul());
}
struct Sf_Vp_Ul zig_ret_Sf_Vp_Ul();
int assert_ret_Sf_Vp_Ul(){
    return assert_Sf_Vp_Ul(zig_ret_Sf_Vp_Ul());
}

int assert_Sf_Vp_Us(struct Sf_Vp_Us lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 32340) err = 3;
  return err;
}
struct Sf_Vp_Us ret_Sf_Vp_Us(){
    struct Sf_Vp_Us lv = { .v1 = EMPTY, .v2 = 0, .v3 = 32340 };
    return lv;
}
int zig_assert_Sf_Vp_Us(struct Sf_Vp_Us);
int send_Sf_Vp_Us(){
    return zig_assert_Sf_Vp_Us(ret_Sf_Vp_Us());
}
struct Sf_Vp_Us zig_ret_Sf_Vp_Us();
int assert_ret_Sf_Vp_Us(){
    return assert_Sf_Vp_Us(zig_ret_Sf_Vp_Us());
}

int assert_Sf_Vp_Vp(struct Sf_Vp_Vp lv){
    int err = 0;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Sf_Vp_Vp ret_Sf_Vp_Vp(){
    struct Sf_Vp_Vp lv = { .v1 = EMPTY, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Sf_Vp_Vp(struct Sf_Vp_Vp);
int send_Sf_Vp_Vp(){
    return zig_assert_Sf_Vp_Vp(ret_Sf_Vp_Vp());
}
struct Sf_Vp_Vp zig_ret_Sf_Vp_Vp();
int assert_ret_Sf_Vp_Vp(){
    return assert_Sf_Vp_Vp(zig_ret_Sf_Vp_Vp());
}

int assert_Uc_C_Sf(struct Uc_C_Sf lv){
    int err = 0;
  if (lv.v1 != 78) err = 1;
  if (lv.v2 != 113) err = 2;
  return err;
}
struct Uc_C_Sf ret_Uc_C_Sf(){
    struct Uc_C_Sf lv = { .v1 = 78, .v2 = 113, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_C_Sf(struct Uc_C_Sf);
int send_Uc_C_Sf(){
    return zig_assert_Uc_C_Sf(ret_Uc_C_Sf());
}
struct Uc_C_Sf zig_ret_Uc_C_Sf();
int assert_ret_Uc_C_Sf(){
    return assert_Uc_C_Sf(zig_ret_Uc_C_Sf());
}

int assert_Uc_D_Sf(struct Uc_D_Sf lv){
    int err = 0;
  if (lv.v1 != 1) err = 1;
  if (lv.v2 != 4.5) err = 2;
  return err;
}
struct Uc_D_Sf ret_Uc_D_Sf(){
    struct Uc_D_Sf lv = { .v1 = 1, .v2 = 4.5, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_D_Sf(struct Uc_D_Sf);
int send_Uc_D_Sf(){
    return zig_assert_Uc_D_Sf(ret_Uc_D_Sf());
}
struct Uc_D_Sf zig_ret_Uc_D_Sf();
int assert_ret_Uc_D_Sf(){
    return assert_Uc_D_Sf(zig_ret_Uc_D_Sf());
}

int assert_Uc_F_Sf(struct Uc_F_Sf lv){
    int err = 0;
  if (lv.v1 != 20) err = 1;
  if (lv.v2 != 0.5) err = 2;
  return err;
}
struct Uc_F_Sf ret_Uc_F_Sf(){
    struct Uc_F_Sf lv = { .v1 = 20, .v2 = 0.5, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_F_Sf(struct Uc_F_Sf);
int send_Uc_F_Sf(){
    return zig_assert_Uc_F_Sf(ret_Uc_F_Sf());
}
struct Uc_F_Sf zig_ret_Uc_F_Sf();
int assert_ret_Uc_F_Sf(){
    return assert_Uc_F_Sf(zig_ret_Uc_F_Sf());
}

int assert_Uc_I_Sf(struct Uc_I_Sf lv){
    int err = 0;
  if (lv.v1 != 120) err = 1;
  if (lv.v2 != 19508) err = 2;
  return err;
}
struct Uc_I_Sf ret_Uc_I_Sf(){
    struct Uc_I_Sf lv = { .v1 = 120, .v2 = 19508, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_I_Sf(struct Uc_I_Sf);
int send_Uc_I_Sf(){
    return zig_assert_Uc_I_Sf(ret_Uc_I_Sf());
}
struct Uc_I_Sf zig_ret_Uc_I_Sf();
int assert_ret_Uc_I_Sf(){
    return assert_Uc_I_Sf(zig_ret_Uc_I_Sf());
}

int assert_Uc_Ip_Sf(struct Uc_Ip_Sf lv){
    int err = 0;
  if (lv.v1 != 44) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Uc_Ip_Sf ret_Uc_Ip_Sf(){
    struct Uc_Ip_Sf lv = { .v1 = 44, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_Ip_Sf(struct Uc_Ip_Sf);
int send_Uc_Ip_Sf(){
    return zig_assert_Uc_Ip_Sf(ret_Uc_Ip_Sf());
}
struct Uc_Ip_Sf zig_ret_Uc_Ip_Sf();
int assert_ret_Uc_Ip_Sf(){
    return assert_Uc_Ip_Sf(zig_ret_Uc_Ip_Sf());
}

int assert_Uc_L_Sf(struct Uc_L_Sf lv){
    int err = 0;
  if (lv.v1 != 53) err = 1;
  if (lv.v2 != 14467) err = 2;
  return err;
}
struct Uc_L_Sf ret_Uc_L_Sf(){
    struct Uc_L_Sf lv = { .v1 = 53, .v2 = 14467, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_L_Sf(struct Uc_L_Sf);
int send_Uc_L_Sf(){
    return zig_assert_Uc_L_Sf(ret_Uc_L_Sf());
}
struct Uc_L_Sf zig_ret_Uc_L_Sf();
int assert_ret_Uc_L_Sf(){
    return assert_Uc_L_Sf(zig_ret_Uc_L_Sf());
}

int assert_Uc_S_Sf(struct Uc_S_Sf lv){
    int err = 0;
  if (lv.v1 != 104) err = 1;
  if (lv.v2 != 28465) err = 2;
  return err;
}
struct Uc_S_Sf ret_Uc_S_Sf(){
    struct Uc_S_Sf lv = { .v1 = 104, .v2 = 28465, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_S_Sf(struct Uc_S_Sf);
int send_Uc_S_Sf(){
    return zig_assert_Uc_S_Sf(ret_Uc_S_Sf());
}
struct Uc_S_Sf zig_ret_Uc_S_Sf();
int assert_ret_Uc_S_Sf(){
    return assert_Uc_S_Sf(zig_ret_Uc_S_Sf());
}

int assert_Uc_Sf(struct Uc_Sf lv){
    int err = 0;
  if (lv.v1 != 5) err = 1;
  return err;
}
struct Uc_Sf ret_Uc_Sf(){
    struct Uc_Sf lv = { .v1 = 5, .v2 = EMPTY };
    return lv;
}
int zig_assert_Uc_Sf(struct Uc_Sf);
int send_Uc_Sf(){
    return zig_assert_Uc_Sf(ret_Uc_Sf());
}
struct Uc_Sf zig_ret_Uc_Sf();
int assert_ret_Uc_Sf(){
    return assert_Uc_Sf(zig_ret_Uc_Sf());
}

int assert_Uc_Sf_C(struct Uc_Sf_C lv){
    int err = 0;
  if (lv.v1 != 14) err = 1;
  if (lv.v3 != 97) err = 3;
  return err;
}
struct Uc_Sf_C ret_Uc_Sf_C(){
    struct Uc_Sf_C lv = { .v1 = 14, .v2 = EMPTY, .v3 = 97 };
    return lv;
}
int zig_assert_Uc_Sf_C(struct Uc_Sf_C);
int send_Uc_Sf_C(){
    return zig_assert_Uc_Sf_C(ret_Uc_Sf_C());
}
struct Uc_Sf_C zig_ret_Uc_Sf_C();
int assert_ret_Uc_Sf_C(){
    return assert_Uc_Sf_C(zig_ret_Uc_Sf_C());
}

int assert_Uc_Sf_D(struct Uc_Sf_D lv){
    int err = 0;
  if (lv.v1 != 58) err = 1;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Uc_Sf_D ret_Uc_Sf_D(){
    struct Uc_Sf_D lv = { .v1 = 58, .v2 = EMPTY, .v3 = 4.5 };
    return lv;
}
int zig_assert_Uc_Sf_D(struct Uc_Sf_D);
int send_Uc_Sf_D(){
    return zig_assert_Uc_Sf_D(ret_Uc_Sf_D());
}
struct Uc_Sf_D zig_ret_Uc_Sf_D();
int assert_ret_Uc_Sf_D(){
    return assert_Uc_Sf_D(zig_ret_Uc_Sf_D());
}

int assert_Uc_Sf_F(struct Uc_Sf_F lv){
    int err = 0;
  if (lv.v1 != 117) err = 1;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Uc_Sf_F ret_Uc_Sf_F(){
    struct Uc_Sf_F lv = { .v1 = 117, .v2 = EMPTY, .v3 = 1.0 };
    return lv;
}
int zig_assert_Uc_Sf_F(struct Uc_Sf_F);
int send_Uc_Sf_F(){
    return zig_assert_Uc_Sf_F(ret_Uc_Sf_F());
}
struct Uc_Sf_F zig_ret_Uc_Sf_F();
int assert_ret_Uc_Sf_F(){
    return assert_Uc_Sf_F(zig_ret_Uc_Sf_F());
}

int assert_Uc_Sf_I(struct Uc_Sf_I lv){
    int err = 0;
  if (lv.v1 != 20) err = 1;
  if (lv.v3 != 28740) err = 3;
  return err;
}
struct Uc_Sf_I ret_Uc_Sf_I(){
    struct Uc_Sf_I lv = { .v1 = 20, .v2 = EMPTY, .v3 = 28740 };
    return lv;
}
int zig_assert_Uc_Sf_I(struct Uc_Sf_I);
int send_Uc_Sf_I(){
    return zig_assert_Uc_Sf_I(ret_Uc_Sf_I());
}
struct Uc_Sf_I zig_ret_Uc_Sf_I();
int assert_ret_Uc_Sf_I(){
    return assert_Uc_Sf_I(zig_ret_Uc_Sf_I());
}

int assert_Uc_Sf_Ip(struct Uc_Sf_Ip lv){
    int err = 0;
  if (lv.v1 != 123) err = 1;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Sf_Ip ret_Uc_Sf_Ip(){
    struct Uc_Sf_Ip lv = { .v1 = 123, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Sf_Ip(struct Uc_Sf_Ip);
int send_Uc_Sf_Ip(){
    return zig_assert_Uc_Sf_Ip(ret_Uc_Sf_Ip());
}
struct Uc_Sf_Ip zig_ret_Uc_Sf_Ip();
int assert_ret_Uc_Sf_Ip(){
    return assert_Uc_Sf_Ip(zig_ret_Uc_Sf_Ip());
}

int assert_Uc_Sf_L(struct Uc_Sf_L lv){
    int err = 0;
  if (lv.v1 != 41) err = 1;
  if (lv.v3 != 2911) err = 3;
  return err;
}
struct Uc_Sf_L ret_Uc_Sf_L(){
    struct Uc_Sf_L lv = { .v1 = 41, .v2 = EMPTY, .v3 = 2911 };
    return lv;
}
int zig_assert_Uc_Sf_L(struct Uc_Sf_L);
int send_Uc_Sf_L(){
    return zig_assert_Uc_Sf_L(ret_Uc_Sf_L());
}
struct Uc_Sf_L zig_ret_Uc_Sf_L();
int assert_ret_Uc_Sf_L(){
    return assert_Uc_Sf_L(zig_ret_Uc_Sf_L());
}

int assert_Uc_Sf_S(struct Uc_Sf_S lv){
    int err = 0;
  if (lv.v1 != 66) err = 1;
  if (lv.v3 != 590) err = 3;
  return err;
}
struct Uc_Sf_S ret_Uc_Sf_S(){
    struct Uc_Sf_S lv = { .v1 = 66, .v2 = EMPTY, .v3 = 590 };
    return lv;
}
int zig_assert_Uc_Sf_S(struct Uc_Sf_S);
int send_Uc_Sf_S(){
    return zig_assert_Uc_Sf_S(ret_Uc_Sf_S());
}
struct Uc_Sf_S zig_ret_Uc_Sf_S();
int assert_ret_Uc_Sf_S(){
    return assert_Uc_Sf_S(zig_ret_Uc_Sf_S());
}

int assert_Uc_Sf_Sf(struct Uc_Sf_Sf lv){
    int err = 0;
  if (lv.v1 != 49) err = 1;
  return err;
}
struct Uc_Sf_Sf ret_Uc_Sf_Sf(){
    struct Uc_Sf_Sf lv = { .v1 = 49, .v2 = EMPTY, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_Sf_Sf(struct Uc_Sf_Sf);
int send_Uc_Sf_Sf(){
    return zig_assert_Uc_Sf_Sf(ret_Uc_Sf_Sf());
}
struct Uc_Sf_Sf zig_ret_Uc_Sf_Sf();
int assert_ret_Uc_Sf_Sf(){
    return assert_Uc_Sf_Sf(zig_ret_Uc_Sf_Sf());
}

int assert_Uc_Sf_Uc(struct Uc_Sf_Uc lv){
    int err = 0;
  if (lv.v1 != 87) err = 1;
  if (lv.v3 != 64) err = 3;
  return err;
}
struct Uc_Sf_Uc ret_Uc_Sf_Uc(){
    struct Uc_Sf_Uc lv = { .v1 = 87, .v2 = EMPTY, .v3 = 64 };
    return lv;
}
int zig_assert_Uc_Sf_Uc(struct Uc_Sf_Uc);
int send_Uc_Sf_Uc(){
    return zig_assert_Uc_Sf_Uc(ret_Uc_Sf_Uc());
}
struct Uc_Sf_Uc zig_ret_Uc_Sf_Uc();
int assert_ret_Uc_Sf_Uc(){
    return assert_Uc_Sf_Uc(zig_ret_Uc_Sf_Uc());
}

int assert_Uc_Sf_Ui(struct Uc_Sf_Ui lv){
    int err = 0;
  if (lv.v1 != 1) err = 1;
  if (lv.v3 != 23052) err = 3;
  return err;
}
struct Uc_Sf_Ui ret_Uc_Sf_Ui(){
    struct Uc_Sf_Ui lv = { .v1 = 1, .v2 = EMPTY, .v3 = 23052 };
    return lv;
}
int zig_assert_Uc_Sf_Ui(struct Uc_Sf_Ui);
int send_Uc_Sf_Ui(){
    return zig_assert_Uc_Sf_Ui(ret_Uc_Sf_Ui());
}
struct Uc_Sf_Ui zig_ret_Uc_Sf_Ui();
int assert_ret_Uc_Sf_Ui(){
    return assert_Uc_Sf_Ui(zig_ret_Uc_Sf_Ui());
}

int assert_Uc_Sf_Ul(struct Uc_Sf_Ul lv){
    int err = 0;
  if (lv.v1 != 49) err = 1;
  if (lv.v3 != 14954) err = 3;
  return err;
}
struct Uc_Sf_Ul ret_Uc_Sf_Ul(){
    struct Uc_Sf_Ul lv = { .v1 = 49, .v2 = EMPTY, .v3 = 14954 };
    return lv;
}
int zig_assert_Uc_Sf_Ul(struct Uc_Sf_Ul);
int send_Uc_Sf_Ul(){
    return zig_assert_Uc_Sf_Ul(ret_Uc_Sf_Ul());
}
struct Uc_Sf_Ul zig_ret_Uc_Sf_Ul();
int assert_ret_Uc_Sf_Ul(){
    return assert_Uc_Sf_Ul(zig_ret_Uc_Sf_Ul());
}

int assert_Uc_Sf_Us(struct Uc_Sf_Us lv){
    int err = 0;
  if (lv.v1 != 6) err = 1;
  if (lv.v3 != 26448) err = 3;
  return err;
}
struct Uc_Sf_Us ret_Uc_Sf_Us(){
    struct Uc_Sf_Us lv = { .v1 = 6, .v2 = EMPTY, .v3 = 26448 };
    return lv;
}
int zig_assert_Uc_Sf_Us(struct Uc_Sf_Us);
int send_Uc_Sf_Us(){
    return zig_assert_Uc_Sf_Us(ret_Uc_Sf_Us());
}
struct Uc_Sf_Us zig_ret_Uc_Sf_Us();
int assert_ret_Uc_Sf_Us(){
    return assert_Uc_Sf_Us(zig_ret_Uc_Sf_Us());
}

int assert_Uc_Sf_Vp(struct Uc_Sf_Vp lv){
    int err = 0;
  if (lv.v1 != 109) err = 1;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Uc_Sf_Vp ret_Uc_Sf_Vp(){
    struct Uc_Sf_Vp lv = { .v1 = 109, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Uc_Sf_Vp(struct Uc_Sf_Vp);
int send_Uc_Sf_Vp(){
    return zig_assert_Uc_Sf_Vp(ret_Uc_Sf_Vp());
}
struct Uc_Sf_Vp zig_ret_Uc_Sf_Vp();
int assert_ret_Uc_Sf_Vp(){
    return assert_Uc_Sf_Vp(zig_ret_Uc_Sf_Vp());
}

int assert_Uc_Uc_Sf(struct Uc_Uc_Sf lv){
    int err = 0;
  if (lv.v1 != 70) err = 1;
  if (lv.v2 != 13) err = 2;
  return err;
}
struct Uc_Uc_Sf ret_Uc_Uc_Sf(){
    struct Uc_Uc_Sf lv = { .v1 = 70, .v2 = 13, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_Uc_Sf(struct Uc_Uc_Sf);
int send_Uc_Uc_Sf(){
    return zig_assert_Uc_Uc_Sf(ret_Uc_Uc_Sf());
}
struct Uc_Uc_Sf zig_ret_Uc_Uc_Sf();
int assert_ret_Uc_Uc_Sf(){
    return assert_Uc_Uc_Sf(zig_ret_Uc_Uc_Sf());
}

int assert_Uc_Ui_Sf(struct Uc_Ui_Sf lv){
    int err = 0;
  if (lv.v1 != 117) err = 1;
  if (lv.v2 != 32327) err = 2;
  return err;
}
struct Uc_Ui_Sf ret_Uc_Ui_Sf(){
    struct Uc_Ui_Sf lv = { .v1 = 117, .v2 = 32327, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_Ui_Sf(struct Uc_Ui_Sf);
int send_Uc_Ui_Sf(){
    return zig_assert_Uc_Ui_Sf(ret_Uc_Ui_Sf());
}
struct Uc_Ui_Sf zig_ret_Uc_Ui_Sf();
int assert_ret_Uc_Ui_Sf(){
    return assert_Uc_Ui_Sf(zig_ret_Uc_Ui_Sf());
}

int assert_Uc_Ul_Sf(struct Uc_Ul_Sf lv){
    int err = 0;
  if (lv.v1 != 52) err = 1;
  if (lv.v2 != 11726) err = 2;
  return err;
}
struct Uc_Ul_Sf ret_Uc_Ul_Sf(){
    struct Uc_Ul_Sf lv = { .v1 = 52, .v2 = 11726, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_Ul_Sf(struct Uc_Ul_Sf);
int send_Uc_Ul_Sf(){
    return zig_assert_Uc_Ul_Sf(ret_Uc_Ul_Sf());
}
struct Uc_Ul_Sf zig_ret_Uc_Ul_Sf();
int assert_ret_Uc_Ul_Sf(){
    return assert_Uc_Ul_Sf(zig_ret_Uc_Ul_Sf());
}

int assert_Uc_Us_Sf(struct Uc_Us_Sf lv){
    int err = 0;
  if (lv.v1 != 74) err = 1;
  if (lv.v2 != 2465) err = 2;
  return err;
}
struct Uc_Us_Sf ret_Uc_Us_Sf(){
    struct Uc_Us_Sf lv = { .v1 = 74, .v2 = 2465, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_Us_Sf(struct Uc_Us_Sf);
int send_Uc_Us_Sf(){
    return zig_assert_Uc_Us_Sf(ret_Uc_Us_Sf());
}
struct Uc_Us_Sf zig_ret_Uc_Us_Sf();
int assert_ret_Uc_Us_Sf(){
    return assert_Uc_Us_Sf(zig_ret_Uc_Us_Sf());
}

int assert_Uc_Vp_Sf(struct Uc_Vp_Sf lv){
    int err = 0;
  if (lv.v1 != 34) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Uc_Vp_Sf ret_Uc_Vp_Sf(){
    struct Uc_Vp_Sf lv = { .v1 = 34, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Uc_Vp_Sf(struct Uc_Vp_Sf);
int send_Uc_Vp_Sf(){
    return zig_assert_Uc_Vp_Sf(ret_Uc_Vp_Sf());
}
struct Uc_Vp_Sf zig_ret_Uc_Vp_Sf();
int assert_ret_Uc_Vp_Sf(){
    return assert_Uc_Vp_Sf(zig_ret_Uc_Vp_Sf());
}

int assert_Ui_C_Sf(struct Ui_C_Sf lv){
    int err = 0;
  if (lv.v1 != 1880) err = 1;
  if (lv.v2 != 19) err = 2;
  return err;
}
struct Ui_C_Sf ret_Ui_C_Sf(){
    struct Ui_C_Sf lv = { .v1 = 1880, .v2 = 19, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_C_Sf(struct Ui_C_Sf);
int send_Ui_C_Sf(){
    return zig_assert_Ui_C_Sf(ret_Ui_C_Sf());
}
struct Ui_C_Sf zig_ret_Ui_C_Sf();
int assert_ret_Ui_C_Sf(){
    return assert_Ui_C_Sf(zig_ret_Ui_C_Sf());
}

int assert_Ui_D_Sf(struct Ui_D_Sf lv){
    int err = 0;
  if (lv.v1 != 31555) err = 1;
  if (lv.v2 != 7.0) err = 2;
  return err;
}
struct Ui_D_Sf ret_Ui_D_Sf(){
    struct Ui_D_Sf lv = { .v1 = 31555, .v2 = 7.0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_D_Sf(struct Ui_D_Sf);
int send_Ui_D_Sf(){
    return zig_assert_Ui_D_Sf(ret_Ui_D_Sf());
}
struct Ui_D_Sf zig_ret_Ui_D_Sf();
int assert_ret_Ui_D_Sf(){
    return assert_Ui_D_Sf(zig_ret_Ui_D_Sf());
}

int assert_Ui_F_Sf(struct Ui_F_Sf lv){
    int err = 0;
  if (lv.v1 != 5835) err = 1;
  if (lv.v2 != 4.5) err = 2;
  return err;
}
struct Ui_F_Sf ret_Ui_F_Sf(){
    struct Ui_F_Sf lv = { .v1 = 5835, .v2 = 4.5, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_F_Sf(struct Ui_F_Sf);
int send_Ui_F_Sf(){
    return zig_assert_Ui_F_Sf(ret_Ui_F_Sf());
}
struct Ui_F_Sf zig_ret_Ui_F_Sf();
int assert_ret_Ui_F_Sf(){
    return assert_Ui_F_Sf(zig_ret_Ui_F_Sf());
}

int assert_Ui_I_Sf(struct Ui_I_Sf lv){
    int err = 0;
  if (lv.v1 != 23206) err = 1;
  if (lv.v2 != 6394) err = 2;
  return err;
}
struct Ui_I_Sf ret_Ui_I_Sf(){
    struct Ui_I_Sf lv = { .v1 = 23206, .v2 = 6394, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_I_Sf(struct Ui_I_Sf);
int send_Ui_I_Sf(){
    return zig_assert_Ui_I_Sf(ret_Ui_I_Sf());
}
struct Ui_I_Sf zig_ret_Ui_I_Sf();
int assert_ret_Ui_I_Sf(){
    return assert_Ui_I_Sf(zig_ret_Ui_I_Sf());
}

int assert_Ui_Ip_Sf(struct Ui_Ip_Sf lv){
    int err = 0;
  if (lv.v1 != 30402) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Ui_Ip_Sf ret_Ui_Ip_Sf(){
    struct Ui_Ip_Sf lv = { .v1 = 30402, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_Ip_Sf(struct Ui_Ip_Sf);
int send_Ui_Ip_Sf(){
    return zig_assert_Ui_Ip_Sf(ret_Ui_Ip_Sf());
}
struct Ui_Ip_Sf zig_ret_Ui_Ip_Sf();
int assert_ret_Ui_Ip_Sf(){
    return assert_Ui_Ip_Sf(zig_ret_Ui_Ip_Sf());
}

int assert_Ui_L_Sf(struct Ui_L_Sf lv){
    int err = 0;
  if (lv.v1 != 2770) err = 1;
  if (lv.v2 != 8571) err = 2;
  return err;
}
struct Ui_L_Sf ret_Ui_L_Sf(){
    struct Ui_L_Sf lv = { .v1 = 2770, .v2 = 8571, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_L_Sf(struct Ui_L_Sf);
int send_Ui_L_Sf(){
    return zig_assert_Ui_L_Sf(ret_Ui_L_Sf());
}
struct Ui_L_Sf zig_ret_Ui_L_Sf();
int assert_ret_Ui_L_Sf(){
    return assert_Ui_L_Sf(zig_ret_Ui_L_Sf());
}

int assert_Ui_S_Sf(struct Ui_S_Sf lv){
    int err = 0;
  if (lv.v1 != 2774) err = 1;
  if (lv.v2 != 18682) err = 2;
  return err;
}
struct Ui_S_Sf ret_Ui_S_Sf(){
    struct Ui_S_Sf lv = { .v1 = 2774, .v2 = 18682, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_S_Sf(struct Ui_S_Sf);
int send_Ui_S_Sf(){
    return zig_assert_Ui_S_Sf(ret_Ui_S_Sf());
}
struct Ui_S_Sf zig_ret_Ui_S_Sf();
int assert_ret_Ui_S_Sf(){
    return assert_Ui_S_Sf(zig_ret_Ui_S_Sf());
}

int assert_Ui_Sf(struct Ui_Sf lv){
    int err = 0;
  if (lv.v1 != 14285) err = 1;
  return err;
}
struct Ui_Sf ret_Ui_Sf(){
    struct Ui_Sf lv = { .v1 = 14285, .v2 = EMPTY };
    return lv;
}
int zig_assert_Ui_Sf(struct Ui_Sf);
int send_Ui_Sf(){
    return zig_assert_Ui_Sf(ret_Ui_Sf());
}
struct Ui_Sf zig_ret_Ui_Sf();
int assert_ret_Ui_Sf(){
    return assert_Ui_Sf(zig_ret_Ui_Sf());
}

int assert_Ui_Sf_C(struct Ui_Sf_C lv){
    int err = 0;
  if (lv.v1 != 2180) err = 1;
  if (lv.v3 != 24) err = 3;
  return err;
}
struct Ui_Sf_C ret_Ui_Sf_C(){
    struct Ui_Sf_C lv = { .v1 = 2180, .v2 = EMPTY, .v3 = 24 };
    return lv;
}
int zig_assert_Ui_Sf_C(struct Ui_Sf_C);
int send_Ui_Sf_C(){
    return zig_assert_Ui_Sf_C(ret_Ui_Sf_C());
}
struct Ui_Sf_C zig_ret_Ui_Sf_C();
int assert_ret_Ui_Sf_C(){
    return assert_Ui_Sf_C(zig_ret_Ui_Sf_C());
}

int assert_Ui_Sf_D(struct Ui_Sf_D lv){
    int err = 0;
  if (lv.v1 != 20357) err = 1;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Ui_Sf_D ret_Ui_Sf_D(){
    struct Ui_Sf_D lv = { .v1 = 20357, .v2 = EMPTY, .v3 = 4.5 };
    return lv;
}
int zig_assert_Ui_Sf_D(struct Ui_Sf_D);
int send_Ui_Sf_D(){
    return zig_assert_Ui_Sf_D(ret_Ui_Sf_D());
}
struct Ui_Sf_D zig_ret_Ui_Sf_D();
int assert_ret_Ui_Sf_D(){
    return assert_Ui_Sf_D(zig_ret_Ui_Sf_D());
}

int assert_Ui_Sf_F(struct Ui_Sf_F lv){
    int err = 0;
  if (lv.v1 != 17119) err = 1;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Ui_Sf_F ret_Ui_Sf_F(){
    struct Ui_Sf_F lv = { .v1 = 17119, .v2 = EMPTY, .v3 = 0.875 };
    return lv;
}
int zig_assert_Ui_Sf_F(struct Ui_Sf_F);
int send_Ui_Sf_F(){
    return zig_assert_Ui_Sf_F(ret_Ui_Sf_F());
}
struct Ui_Sf_F zig_ret_Ui_Sf_F();
int assert_ret_Ui_Sf_F(){
    return assert_Ui_Sf_F(zig_ret_Ui_Sf_F());
}

int assert_Ui_Sf_I(struct Ui_Sf_I lv){
    int err = 0;
  if (lv.v1 != 27385) err = 1;
  if (lv.v3 != 1924) err = 3;
  return err;
}
struct Ui_Sf_I ret_Ui_Sf_I(){
    struct Ui_Sf_I lv = { .v1 = 27385, .v2 = EMPTY, .v3 = 1924 };
    return lv;
}
int zig_assert_Ui_Sf_I(struct Ui_Sf_I);
int send_Ui_Sf_I(){
    return zig_assert_Ui_Sf_I(ret_Ui_Sf_I());
}
struct Ui_Sf_I zig_ret_Ui_Sf_I();
int assert_ret_Ui_Sf_I(){
    return assert_Ui_Sf_I(zig_ret_Ui_Sf_I());
}

int assert_Ui_Sf_Ip(struct Ui_Sf_Ip lv){
    int err = 0;
  if (lv.v1 != 22315) err = 1;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Sf_Ip ret_Ui_Sf_Ip(){
    struct Ui_Sf_Ip lv = { .v1 = 22315, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Sf_Ip(struct Ui_Sf_Ip);
int send_Ui_Sf_Ip(){
    return zig_assert_Ui_Sf_Ip(ret_Ui_Sf_Ip());
}
struct Ui_Sf_Ip zig_ret_Ui_Sf_Ip();
int assert_ret_Ui_Sf_Ip(){
    return assert_Ui_Sf_Ip(zig_ret_Ui_Sf_Ip());
}

int assert_Ui_Sf_L(struct Ui_Sf_L lv){
    int err = 0;
  if (lv.v1 != 27723) err = 1;
  if (lv.v3 != 13696) err = 3;
  return err;
}
struct Ui_Sf_L ret_Ui_Sf_L(){
    struct Ui_Sf_L lv = { .v1 = 27723, .v2 = EMPTY, .v3 = 13696 };
    return lv;
}
int zig_assert_Ui_Sf_L(struct Ui_Sf_L);
int send_Ui_Sf_L(){
    return zig_assert_Ui_Sf_L(ret_Ui_Sf_L());
}
struct Ui_Sf_L zig_ret_Ui_Sf_L();
int assert_ret_Ui_Sf_L(){
    return assert_Ui_Sf_L(zig_ret_Ui_Sf_L());
}

int assert_Ui_Sf_S(struct Ui_Sf_S lv){
    int err = 0;
  if (lv.v1 != 12265) err = 1;
  if (lv.v3 != 31701) err = 3;
  return err;
}
struct Ui_Sf_S ret_Ui_Sf_S(){
    struct Ui_Sf_S lv = { .v1 = 12265, .v2 = EMPTY, .v3 = 31701 };
    return lv;
}
int zig_assert_Ui_Sf_S(struct Ui_Sf_S);
int send_Ui_Sf_S(){
    return zig_assert_Ui_Sf_S(ret_Ui_Sf_S());
}
struct Ui_Sf_S zig_ret_Ui_Sf_S();
int assert_ret_Ui_Sf_S(){
    return assert_Ui_Sf_S(zig_ret_Ui_Sf_S());
}

int assert_Ui_Sf_Sf(struct Ui_Sf_Sf lv){
    int err = 0;
  if (lv.v1 != 30122) err = 1;
  return err;
}
struct Ui_Sf_Sf ret_Ui_Sf_Sf(){
    struct Ui_Sf_Sf lv = { .v1 = 30122, .v2 = EMPTY, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_Sf_Sf(struct Ui_Sf_Sf);
int send_Ui_Sf_Sf(){
    return zig_assert_Ui_Sf_Sf(ret_Ui_Sf_Sf());
}
struct Ui_Sf_Sf zig_ret_Ui_Sf_Sf();
int assert_ret_Ui_Sf_Sf(){
    return assert_Ui_Sf_Sf(zig_ret_Ui_Sf_Sf());
}

int assert_Ui_Sf_Uc(struct Ui_Sf_Uc lv){
    int err = 0;
  if (lv.v1 != 6491) err = 1;
  if (lv.v3 != 3) err = 3;
  return err;
}
struct Ui_Sf_Uc ret_Ui_Sf_Uc(){
    struct Ui_Sf_Uc lv = { .v1 = 6491, .v2 = EMPTY, .v3 = 3 };
    return lv;
}
int zig_assert_Ui_Sf_Uc(struct Ui_Sf_Uc);
int send_Ui_Sf_Uc(){
    return zig_assert_Ui_Sf_Uc(ret_Ui_Sf_Uc());
}
struct Ui_Sf_Uc zig_ret_Ui_Sf_Uc();
int assert_ret_Ui_Sf_Uc(){
    return assert_Ui_Sf_Uc(zig_ret_Ui_Sf_Uc());
}

int assert_Ui_Sf_Ui(struct Ui_Sf_Ui lv){
    int err = 0;
  if (lv.v1 != 7660) err = 1;
  if (lv.v3 != 9839) err = 3;
  return err;
}
struct Ui_Sf_Ui ret_Ui_Sf_Ui(){
    struct Ui_Sf_Ui lv = { .v1 = 7660, .v2 = EMPTY, .v3 = 9839 };
    return lv;
}
int zig_assert_Ui_Sf_Ui(struct Ui_Sf_Ui);
int send_Ui_Sf_Ui(){
    return zig_assert_Ui_Sf_Ui(ret_Ui_Sf_Ui());
}
struct Ui_Sf_Ui zig_ret_Ui_Sf_Ui();
int assert_ret_Ui_Sf_Ui(){
    return assert_Ui_Sf_Ui(zig_ret_Ui_Sf_Ui());
}

int assert_Ui_Sf_Ul(struct Ui_Sf_Ul lv){
    int err = 0;
  if (lv.v1 != 5702) err = 1;
  if (lv.v3 != 11850) err = 3;
  return err;
}
struct Ui_Sf_Ul ret_Ui_Sf_Ul(){
    struct Ui_Sf_Ul lv = { .v1 = 5702, .v2 = EMPTY, .v3 = 11850 };
    return lv;
}
int zig_assert_Ui_Sf_Ul(struct Ui_Sf_Ul);
int send_Ui_Sf_Ul(){
    return zig_assert_Ui_Sf_Ul(ret_Ui_Sf_Ul());
}
struct Ui_Sf_Ul zig_ret_Ui_Sf_Ul();
int assert_ret_Ui_Sf_Ul(){
    return assert_Ui_Sf_Ul(zig_ret_Ui_Sf_Ul());
}

int assert_Ui_Sf_Us(struct Ui_Sf_Us lv){
    int err = 0;
  if (lv.v1 != 25466) err = 1;
  if (lv.v3 != 5720) err = 3;
  return err;
}
struct Ui_Sf_Us ret_Ui_Sf_Us(){
    struct Ui_Sf_Us lv = { .v1 = 25466, .v2 = EMPTY, .v3 = 5720 };
    return lv;
}
int zig_assert_Ui_Sf_Us(struct Ui_Sf_Us);
int send_Ui_Sf_Us(){
    return zig_assert_Ui_Sf_Us(ret_Ui_Sf_Us());
}
struct Ui_Sf_Us zig_ret_Ui_Sf_Us();
int assert_ret_Ui_Sf_Us(){
    return assert_Ui_Sf_Us(zig_ret_Ui_Sf_Us());
}

int assert_Ui_Sf_Vp(struct Ui_Sf_Vp lv){
    int err = 0;
  if (lv.v1 != 8452) err = 1;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ui_Sf_Vp ret_Ui_Sf_Vp(){
    struct Ui_Sf_Vp lv = { .v1 = 8452, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Ui_Sf_Vp(struct Ui_Sf_Vp);
int send_Ui_Sf_Vp(){
    return zig_assert_Ui_Sf_Vp(ret_Ui_Sf_Vp());
}
struct Ui_Sf_Vp zig_ret_Ui_Sf_Vp();
int assert_ret_Ui_Sf_Vp(){
    return assert_Ui_Sf_Vp(zig_ret_Ui_Sf_Vp());
}

int assert_Ui_Uc_Sf(struct Ui_Uc_Sf lv){
    int err = 0;
  if (lv.v1 != 12845) err = 1;
  if (lv.v2 != 99) err = 2;
  return err;
}
struct Ui_Uc_Sf ret_Ui_Uc_Sf(){
    struct Ui_Uc_Sf lv = { .v1 = 12845, .v2 = 99, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_Uc_Sf(struct Ui_Uc_Sf);
int send_Ui_Uc_Sf(){
    return zig_assert_Ui_Uc_Sf(ret_Ui_Uc_Sf());
}
struct Ui_Uc_Sf zig_ret_Ui_Uc_Sf();
int assert_ret_Ui_Uc_Sf(){
    return assert_Ui_Uc_Sf(zig_ret_Ui_Uc_Sf());
}

int assert_Ui_Ui_Sf(struct Ui_Ui_Sf lv){
    int err = 0;
  if (lv.v1 != 9661) err = 1;
  if (lv.v2 != 18892) err = 2;
  return err;
}
struct Ui_Ui_Sf ret_Ui_Ui_Sf(){
    struct Ui_Ui_Sf lv = { .v1 = 9661, .v2 = 18892, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_Ui_Sf(struct Ui_Ui_Sf);
int send_Ui_Ui_Sf(){
    return zig_assert_Ui_Ui_Sf(ret_Ui_Ui_Sf());
}
struct Ui_Ui_Sf zig_ret_Ui_Ui_Sf();
int assert_ret_Ui_Ui_Sf(){
    return assert_Ui_Ui_Sf(zig_ret_Ui_Ui_Sf());
}

int assert_Ui_Ul_Sf(struct Ui_Ul_Sf lv){
    int err = 0;
  if (lv.v1 != 21775) err = 1;
  if (lv.v2 != 27340) err = 2;
  return err;
}
struct Ui_Ul_Sf ret_Ui_Ul_Sf(){
    struct Ui_Ul_Sf lv = { .v1 = 21775, .v2 = 27340, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_Ul_Sf(struct Ui_Ul_Sf);
int send_Ui_Ul_Sf(){
    return zig_assert_Ui_Ul_Sf(ret_Ui_Ul_Sf());
}
struct Ui_Ul_Sf zig_ret_Ui_Ul_Sf();
int assert_ret_Ui_Ul_Sf(){
    return assert_Ui_Ul_Sf(zig_ret_Ui_Ul_Sf());
}

int assert_Ui_Us_Sf(struct Ui_Us_Sf lv){
    int err = 0;
  if (lv.v1 != 2148) err = 1;
  if (lv.v2 != 17060) err = 2;
  return err;
}
struct Ui_Us_Sf ret_Ui_Us_Sf(){
    struct Ui_Us_Sf lv = { .v1 = 2148, .v2 = 17060, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_Us_Sf(struct Ui_Us_Sf);
int send_Ui_Us_Sf(){
    return zig_assert_Ui_Us_Sf(ret_Ui_Us_Sf());
}
struct Ui_Us_Sf zig_ret_Ui_Us_Sf();
int assert_ret_Ui_Us_Sf(){
    return assert_Ui_Us_Sf(zig_ret_Ui_Us_Sf());
}

int assert_Ui_Vp_Sf(struct Ui_Vp_Sf lv){
    int err = 0;
  if (lv.v1 != 22989) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Ui_Vp_Sf ret_Ui_Vp_Sf(){
    struct Ui_Vp_Sf lv = { .v1 = 22989, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ui_Vp_Sf(struct Ui_Vp_Sf);
int send_Ui_Vp_Sf(){
    return zig_assert_Ui_Vp_Sf(ret_Ui_Vp_Sf());
}
struct Ui_Vp_Sf zig_ret_Ui_Vp_Sf();
int assert_ret_Ui_Vp_Sf(){
    return assert_Ui_Vp_Sf(zig_ret_Ui_Vp_Sf());
}

int assert_Ul_C_Sf(struct Ul_C_Sf lv){
    int err = 0;
  if (lv.v1 != 18329) err = 1;
  if (lv.v2 != 78) err = 2;
  return err;
}
struct Ul_C_Sf ret_Ul_C_Sf(){
    struct Ul_C_Sf lv = { .v1 = 18329, .v2 = 78, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_C_Sf(struct Ul_C_Sf);
int send_Ul_C_Sf(){
    return zig_assert_Ul_C_Sf(ret_Ul_C_Sf());
}
struct Ul_C_Sf zig_ret_Ul_C_Sf();
int assert_ret_Ul_C_Sf(){
    return assert_Ul_C_Sf(zig_ret_Ul_C_Sf());
}

int assert_Ul_D_Sf(struct Ul_D_Sf lv){
    int err = 0;
  if (lv.v1 != 17076) err = 1;
  if (lv.v2 != 0.875) err = 2;
  return err;
}
struct Ul_D_Sf ret_Ul_D_Sf(){
    struct Ul_D_Sf lv = { .v1 = 17076, .v2 = 0.875, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_D_Sf(struct Ul_D_Sf);
int send_Ul_D_Sf(){
    return zig_assert_Ul_D_Sf(ret_Ul_D_Sf());
}
struct Ul_D_Sf zig_ret_Ul_D_Sf();
int assert_ret_Ul_D_Sf(){
    return assert_Ul_D_Sf(zig_ret_Ul_D_Sf());
}

int assert_Ul_F_Sf(struct Ul_F_Sf lv){
    int err = 0;
  if (lv.v1 != 8774) err = 1;
  if (lv.v2 != 0.875) err = 2;
  return err;
}
struct Ul_F_Sf ret_Ul_F_Sf(){
    struct Ul_F_Sf lv = { .v1 = 8774, .v2 = 0.875, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_F_Sf(struct Ul_F_Sf);
int send_Ul_F_Sf(){
    return zig_assert_Ul_F_Sf(ret_Ul_F_Sf());
}
struct Ul_F_Sf zig_ret_Ul_F_Sf();
int assert_ret_Ul_F_Sf(){
    return assert_Ul_F_Sf(zig_ret_Ul_F_Sf());
}

int assert_Ul_I_Sf(struct Ul_I_Sf lv){
    int err = 0;
  if (lv.v1 != 5250) err = 1;
  if (lv.v2 != 10524) err = 2;
  return err;
}
struct Ul_I_Sf ret_Ul_I_Sf(){
    struct Ul_I_Sf lv = { .v1 = 5250, .v2 = 10524, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_I_Sf(struct Ul_I_Sf);
int send_Ul_I_Sf(){
    return zig_assert_Ul_I_Sf(ret_Ul_I_Sf());
}
struct Ul_I_Sf zig_ret_Ul_I_Sf();
int assert_ret_Ul_I_Sf(){
    return assert_Ul_I_Sf(zig_ret_Ul_I_Sf());
}

int assert_Ul_Ip_Sf(struct Ul_Ip_Sf lv){
    int err = 0;
  if (lv.v1 != 8361) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Ul_Ip_Sf ret_Ul_Ip_Sf(){
    struct Ul_Ip_Sf lv = { .v1 = 8361, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_Ip_Sf(struct Ul_Ip_Sf);
int send_Ul_Ip_Sf(){
    return zig_assert_Ul_Ip_Sf(ret_Ul_Ip_Sf());
}
struct Ul_Ip_Sf zig_ret_Ul_Ip_Sf();
int assert_ret_Ul_Ip_Sf(){
    return assert_Ul_Ip_Sf(zig_ret_Ul_Ip_Sf());
}

int assert_Ul_L_Sf(struct Ul_L_Sf lv){
    int err = 0;
  if (lv.v1 != 885) err = 1;
  if (lv.v2 != 9377) err = 2;
  return err;
}
struct Ul_L_Sf ret_Ul_L_Sf(){
    struct Ul_L_Sf lv = { .v1 = 885, .v2 = 9377, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_L_Sf(struct Ul_L_Sf);
int send_Ul_L_Sf(){
    return zig_assert_Ul_L_Sf(ret_Ul_L_Sf());
}
struct Ul_L_Sf zig_ret_Ul_L_Sf();
int assert_ret_Ul_L_Sf(){
    return assert_Ul_L_Sf(zig_ret_Ul_L_Sf());
}

int assert_Ul_S_Sf(struct Ul_S_Sf lv){
    int err = 0;
  if (lv.v1 != 7804) err = 1;
  if (lv.v2 != 25817) err = 2;
  return err;
}
struct Ul_S_Sf ret_Ul_S_Sf(){
    struct Ul_S_Sf lv = { .v1 = 7804, .v2 = 25817, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_S_Sf(struct Ul_S_Sf);
int send_Ul_S_Sf(){
    return zig_assert_Ul_S_Sf(ret_Ul_S_Sf());
}
struct Ul_S_Sf zig_ret_Ul_S_Sf();
int assert_ret_Ul_S_Sf(){
    return assert_Ul_S_Sf(zig_ret_Ul_S_Sf());
}

int assert_Ul_Sf(struct Ul_Sf lv){
    int err = 0;
  if (lv.v1 != 17437) err = 1;
  return err;
}
struct Ul_Sf ret_Ul_Sf(){
    struct Ul_Sf lv = { .v1 = 17437, .v2 = EMPTY };
    return lv;
}
int zig_assert_Ul_Sf(struct Ul_Sf);
int send_Ul_Sf(){
    return zig_assert_Ul_Sf(ret_Ul_Sf());
}
struct Ul_Sf zig_ret_Ul_Sf();
int assert_ret_Ul_Sf(){
    return assert_Ul_Sf(zig_ret_Ul_Sf());
}

int assert_Ul_Sf_C(struct Ul_Sf_C lv){
    int err = 0;
  if (lv.v1 != 5722) err = 1;
  if (lv.v3 != 81) err = 3;
  return err;
}
struct Ul_Sf_C ret_Ul_Sf_C(){
    struct Ul_Sf_C lv = { .v1 = 5722, .v2 = EMPTY, .v3 = 81 };
    return lv;
}
int zig_assert_Ul_Sf_C(struct Ul_Sf_C);
int send_Ul_Sf_C(){
    return zig_assert_Ul_Sf_C(ret_Ul_Sf_C());
}
struct Ul_Sf_C zig_ret_Ul_Sf_C();
int assert_ret_Ul_Sf_C(){
    return assert_Ul_Sf_C(zig_ret_Ul_Sf_C());
}

int assert_Ul_Sf_D(struct Ul_Sf_D lv){
    int err = 0;
  if (lv.v1 != 9683) err = 1;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Ul_Sf_D ret_Ul_Sf_D(){
    struct Ul_Sf_D lv = { .v1 = 9683, .v2 = EMPTY, .v3 = -0.25 };
    return lv;
}
int zig_assert_Ul_Sf_D(struct Ul_Sf_D);
int send_Ul_Sf_D(){
    return zig_assert_Ul_Sf_D(ret_Ul_Sf_D());
}
struct Ul_Sf_D zig_ret_Ul_Sf_D();
int assert_ret_Ul_Sf_D(){
    return assert_Ul_Sf_D(zig_ret_Ul_Sf_D());
}

int assert_Ul_Sf_F(struct Ul_Sf_F lv){
    int err = 0;
  if (lv.v1 != 22637) err = 1;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Ul_Sf_F ret_Ul_Sf_F(){
    struct Ul_Sf_F lv = { .v1 = 22637, .v2 = EMPTY, .v3 = 1.0 };
    return lv;
}
int zig_assert_Ul_Sf_F(struct Ul_Sf_F);
int send_Ul_Sf_F(){
    return zig_assert_Ul_Sf_F(ret_Ul_Sf_F());
}
struct Ul_Sf_F zig_ret_Ul_Sf_F();
int assert_ret_Ul_Sf_F(){
    return assert_Ul_Sf_F(zig_ret_Ul_Sf_F());
}

int assert_Ul_Sf_I(struct Ul_Sf_I lv){
    int err = 0;
  if (lv.v1 != 25218) err = 1;
  if (lv.v3 != 3859) err = 3;
  return err;
}
struct Ul_Sf_I ret_Ul_Sf_I(){
    struct Ul_Sf_I lv = { .v1 = 25218, .v2 = EMPTY, .v3 = 3859 };
    return lv;
}
int zig_assert_Ul_Sf_I(struct Ul_Sf_I);
int send_Ul_Sf_I(){
    return zig_assert_Ul_Sf_I(ret_Ul_Sf_I());
}
struct Ul_Sf_I zig_ret_Ul_Sf_I();
int assert_ret_Ul_Sf_I(){
    return assert_Ul_Sf_I(zig_ret_Ul_Sf_I());
}

int assert_Ul_Sf_Ip(struct Ul_Sf_Ip lv){
    int err = 0;
  if (lv.v1 != 19206) err = 1;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ul_Sf_Ip ret_Ul_Sf_Ip(){
    struct Ul_Sf_Ip lv = { .v1 = 19206, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Ul_Sf_Ip(struct Ul_Sf_Ip);
int send_Ul_Sf_Ip(){
    return zig_assert_Ul_Sf_Ip(ret_Ul_Sf_Ip());
}
struct Ul_Sf_Ip zig_ret_Ul_Sf_Ip();
int assert_ret_Ul_Sf_Ip(){
    return assert_Ul_Sf_Ip(zig_ret_Ul_Sf_Ip());
}

int assert_Ul_Sf_L(struct Ul_Sf_L lv){
    int err = 0;
  if (lv.v1 != 18084) err = 1;
  if (lv.v3 != 27910) err = 3;
  return err;
}
struct Ul_Sf_L ret_Ul_Sf_L(){
    struct Ul_Sf_L lv = { .v1 = 18084, .v2 = EMPTY, .v3 = 27910 };
    return lv;
}
int zig_assert_Ul_Sf_L(struct Ul_Sf_L);
int send_Ul_Sf_L(){
    return zig_assert_Ul_Sf_L(ret_Ul_Sf_L());
}
struct Ul_Sf_L zig_ret_Ul_Sf_L();
int assert_ret_Ul_Sf_L(){
    return assert_Ul_Sf_L(zig_ret_Ul_Sf_L());
}

int assert_Ul_Sf_S(struct Ul_Sf_S lv){
    int err = 0;
  if (lv.v1 != 7913) err = 1;
  if (lv.v3 != 18298) err = 3;
  return err;
}
struct Ul_Sf_S ret_Ul_Sf_S(){
    struct Ul_Sf_S lv = { .v1 = 7913, .v2 = EMPTY, .v3 = 18298 };
    return lv;
}
int zig_assert_Ul_Sf_S(struct Ul_Sf_S);
int send_Ul_Sf_S(){
    return zig_assert_Ul_Sf_S(ret_Ul_Sf_S());
}
struct Ul_Sf_S zig_ret_Ul_Sf_S();
int assert_ret_Ul_Sf_S(){
    return assert_Ul_Sf_S(zig_ret_Ul_Sf_S());
}

int assert_Ul_Sf_Sf(struct Ul_Sf_Sf lv){
    int err = 0;
  if (lv.v1 != 22483) err = 1;
  return err;
}
struct Ul_Sf_Sf ret_Ul_Sf_Sf(){
    struct Ul_Sf_Sf lv = { .v1 = 22483, .v2 = EMPTY, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_Sf_Sf(struct Ul_Sf_Sf);
int send_Ul_Sf_Sf(){
    return zig_assert_Ul_Sf_Sf(ret_Ul_Sf_Sf());
}
struct Ul_Sf_Sf zig_ret_Ul_Sf_Sf();
int assert_ret_Ul_Sf_Sf(){
    return assert_Ul_Sf_Sf(zig_ret_Ul_Sf_Sf());
}

int assert_Ul_Sf_Uc(struct Ul_Sf_Uc lv){
    int err = 0;
  if (lv.v1 != 25626) err = 1;
  if (lv.v3 != 103) err = 3;
  return err;
}
struct Ul_Sf_Uc ret_Ul_Sf_Uc(){
    struct Ul_Sf_Uc lv = { .v1 = 25626, .v2 = EMPTY, .v3 = 103 };
    return lv;
}
int zig_assert_Ul_Sf_Uc(struct Ul_Sf_Uc);
int send_Ul_Sf_Uc(){
    return zig_assert_Ul_Sf_Uc(ret_Ul_Sf_Uc());
}
struct Ul_Sf_Uc zig_ret_Ul_Sf_Uc();
int assert_ret_Ul_Sf_Uc(){
    return assert_Ul_Sf_Uc(zig_ret_Ul_Sf_Uc());
}

int assert_Ul_Sf_Ui(struct Ul_Sf_Ui lv){
    int err = 0;
  if (lv.v1 != 7343) err = 1;
  if (lv.v3 != 22116) err = 3;
  return err;
}
struct Ul_Sf_Ui ret_Ul_Sf_Ui(){
    struct Ul_Sf_Ui lv = { .v1 = 7343, .v2 = EMPTY, .v3 = 22116 };
    return lv;
}
int zig_assert_Ul_Sf_Ui(struct Ul_Sf_Ui);
int send_Ul_Sf_Ui(){
    return zig_assert_Ul_Sf_Ui(ret_Ul_Sf_Ui());
}
struct Ul_Sf_Ui zig_ret_Ul_Sf_Ui();
int assert_ret_Ul_Sf_Ui(){
    return assert_Ul_Sf_Ui(zig_ret_Ul_Sf_Ui());
}

int assert_Ul_Sf_Ul(struct Ul_Sf_Ul lv){
    int err = 0;
  if (lv.v1 != 17694) err = 1;
  if (lv.v3 != 28378) err = 3;
  return err;
}
struct Ul_Sf_Ul ret_Ul_Sf_Ul(){
    struct Ul_Sf_Ul lv = { .v1 = 17694, .v2 = EMPTY, .v3 = 28378 };
    return lv;
}
int zig_assert_Ul_Sf_Ul(struct Ul_Sf_Ul);
int send_Ul_Sf_Ul(){
    return zig_assert_Ul_Sf_Ul(ret_Ul_Sf_Ul());
}
struct Ul_Sf_Ul zig_ret_Ul_Sf_Ul();
int assert_ret_Ul_Sf_Ul(){
    return assert_Ul_Sf_Ul(zig_ret_Ul_Sf_Ul());
}

int assert_Ul_Sf_Us(struct Ul_Sf_Us lv){
    int err = 0;
  if (lv.v1 != 6207) err = 1;
  if (lv.v3 != 21801) err = 3;
  return err;
}
struct Ul_Sf_Us ret_Ul_Sf_Us(){
    struct Ul_Sf_Us lv = { .v1 = 6207, .v2 = EMPTY, .v3 = 21801 };
    return lv;
}
int zig_assert_Ul_Sf_Us(struct Ul_Sf_Us);
int send_Ul_Sf_Us(){
    return zig_assert_Ul_Sf_Us(ret_Ul_Sf_Us());
}
struct Ul_Sf_Us zig_ret_Ul_Sf_Us();
int assert_ret_Ul_Sf_Us(){
    return assert_Ul_Sf_Us(zig_ret_Ul_Sf_Us());
}

int assert_Ul_Sf_Vp(struct Ul_Sf_Vp lv){
    int err = 0;
  if (lv.v1 != 18194) err = 1;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ul_Sf_Vp ret_Ul_Sf_Vp(){
    struct Ul_Sf_Vp lv = { .v1 = 18194, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Ul_Sf_Vp(struct Ul_Sf_Vp);
int send_Ul_Sf_Vp(){
    return zig_assert_Ul_Sf_Vp(ret_Ul_Sf_Vp());
}
struct Ul_Sf_Vp zig_ret_Ul_Sf_Vp();
int assert_ret_Ul_Sf_Vp(){
    return assert_Ul_Sf_Vp(zig_ret_Ul_Sf_Vp());
}

int assert_Ul_Uc_Sf(struct Ul_Uc_Sf lv){
    int err = 0;
  if (lv.v1 != 14311) err = 1;
  if (lv.v2 != 75) err = 2;
  return err;
}
struct Ul_Uc_Sf ret_Ul_Uc_Sf(){
    struct Ul_Uc_Sf lv = { .v1 = 14311, .v2 = 75, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_Uc_Sf(struct Ul_Uc_Sf);
int send_Ul_Uc_Sf(){
    return zig_assert_Ul_Uc_Sf(ret_Ul_Uc_Sf());
}
struct Ul_Uc_Sf zig_ret_Ul_Uc_Sf();
int assert_ret_Ul_Uc_Sf(){
    return assert_Ul_Uc_Sf(zig_ret_Ul_Uc_Sf());
}

int assert_Ul_Ui_Sf(struct Ul_Ui_Sf lv){
    int err = 0;
  if (lv.v1 != 27932) err = 1;
  if (lv.v2 != 14576) err = 2;
  return err;
}
struct Ul_Ui_Sf ret_Ul_Ui_Sf(){
    struct Ul_Ui_Sf lv = { .v1 = 27932, .v2 = 14576, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_Ui_Sf(struct Ul_Ui_Sf);
int send_Ul_Ui_Sf(){
    return zig_assert_Ul_Ui_Sf(ret_Ul_Ui_Sf());
}
struct Ul_Ui_Sf zig_ret_Ul_Ui_Sf();
int assert_ret_Ul_Ui_Sf(){
    return assert_Ul_Ui_Sf(zig_ret_Ul_Ui_Sf());
}

int assert_Ul_Ul_Sf(struct Ul_Ul_Sf lv){
    int err = 0;
  if (lv.v1 != 22740) err = 1;
  if (lv.v2 != 22659) err = 2;
  return err;
}
struct Ul_Ul_Sf ret_Ul_Ul_Sf(){
    struct Ul_Ul_Sf lv = { .v1 = 22740, .v2 = 22659, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_Ul_Sf(struct Ul_Ul_Sf);
int send_Ul_Ul_Sf(){
    return zig_assert_Ul_Ul_Sf(ret_Ul_Ul_Sf());
}
struct Ul_Ul_Sf zig_ret_Ul_Ul_Sf();
int assert_ret_Ul_Ul_Sf(){
    return assert_Ul_Ul_Sf(zig_ret_Ul_Ul_Sf());
}

int assert_Ul_Us_Sf(struct Ul_Us_Sf lv){
    int err = 0;
  if (lv.v1 != 21647) err = 1;
  if (lv.v2 != 13608) err = 2;
  return err;
}
struct Ul_Us_Sf ret_Ul_Us_Sf(){
    struct Ul_Us_Sf lv = { .v1 = 21647, .v2 = 13608, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_Us_Sf(struct Ul_Us_Sf);
int send_Ul_Us_Sf(){
    return zig_assert_Ul_Us_Sf(ret_Ul_Us_Sf());
}
struct Ul_Us_Sf zig_ret_Ul_Us_Sf();
int assert_ret_Ul_Us_Sf(){
    return assert_Ul_Us_Sf(zig_ret_Ul_Us_Sf());
}

int assert_Ul_Vp_Sf(struct Ul_Vp_Sf lv){
    int err = 0;
  if (lv.v1 != 14968) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Ul_Vp_Sf ret_Ul_Vp_Sf(){
    struct Ul_Vp_Sf lv = { .v1 = 14968, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Ul_Vp_Sf(struct Ul_Vp_Sf);
int send_Ul_Vp_Sf(){
    return zig_assert_Ul_Vp_Sf(ret_Ul_Vp_Sf());
}
struct Ul_Vp_Sf zig_ret_Ul_Vp_Sf();
int assert_ret_Ul_Vp_Sf(){
    return assert_Ul_Vp_Sf(zig_ret_Ul_Vp_Sf());
}

int assert_Us_C_Sf(struct Us_C_Sf lv){
    int err = 0;
  if (lv.v1 != 28250) err = 1;
  if (lv.v2 != 63) err = 2;
  return err;
}
struct Us_C_Sf ret_Us_C_Sf(){
    struct Us_C_Sf lv = { .v1 = 28250, .v2 = 63, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_C_Sf(struct Us_C_Sf);
int send_Us_C_Sf(){
    return zig_assert_Us_C_Sf(ret_Us_C_Sf());
}
struct Us_C_Sf zig_ret_Us_C_Sf();
int assert_ret_Us_C_Sf(){
    return assert_Us_C_Sf(zig_ret_Us_C_Sf());
}

int assert_Us_D_Sf(struct Us_D_Sf lv){
    int err = 0;
  if (lv.v1 != 18608) err = 1;
  if (lv.v2 != 0.5) err = 2;
  return err;
}
struct Us_D_Sf ret_Us_D_Sf(){
    struct Us_D_Sf lv = { .v1 = 18608, .v2 = 0.5, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_D_Sf(struct Us_D_Sf);
int send_Us_D_Sf(){
    return zig_assert_Us_D_Sf(ret_Us_D_Sf());
}
struct Us_D_Sf zig_ret_Us_D_Sf();
int assert_ret_Us_D_Sf(){
    return assert_Us_D_Sf(zig_ret_Us_D_Sf());
}

int assert_Us_F_Sf(struct Us_F_Sf lv){
    int err = 0;
  if (lv.v1 != 28123) err = 1;
  if (lv.v2 != 4.5) err = 2;
  return err;
}
struct Us_F_Sf ret_Us_F_Sf(){
    struct Us_F_Sf lv = { .v1 = 28123, .v2 = 4.5, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_F_Sf(struct Us_F_Sf);
int send_Us_F_Sf(){
    return zig_assert_Us_F_Sf(ret_Us_F_Sf());
}
struct Us_F_Sf zig_ret_Us_F_Sf();
int assert_ret_Us_F_Sf(){
    return assert_Us_F_Sf(zig_ret_Us_F_Sf());
}

int assert_Us_I_Sf(struct Us_I_Sf lv){
    int err = 0;
  if (lv.v1 != 25588) err = 1;
  if (lv.v2 != 29415) err = 2;
  return err;
}
struct Us_I_Sf ret_Us_I_Sf(){
    struct Us_I_Sf lv = { .v1 = 25588, .v2 = 29415, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_I_Sf(struct Us_I_Sf);
int send_Us_I_Sf(){
    return zig_assert_Us_I_Sf(ret_Us_I_Sf());
}
struct Us_I_Sf zig_ret_Us_I_Sf();
int assert_ret_Us_I_Sf(){
    return assert_Us_I_Sf(zig_ret_Us_I_Sf());
}

int assert_Us_Ip_Sf(struct Us_Ip_Sf lv){
    int err = 0;
  if (lv.v1 != 1514) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Us_Ip_Sf ret_Us_Ip_Sf(){
    struct Us_Ip_Sf lv = { .v1 = 1514, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_Ip_Sf(struct Us_Ip_Sf);
int send_Us_Ip_Sf(){
    return zig_assert_Us_Ip_Sf(ret_Us_Ip_Sf());
}
struct Us_Ip_Sf zig_ret_Us_Ip_Sf();
int assert_ret_Us_Ip_Sf(){
    return assert_Us_Ip_Sf(zig_ret_Us_Ip_Sf());
}

int assert_Us_L_Sf(struct Us_L_Sf lv){
    int err = 0;
  if (lv.v1 != 3923) err = 1;
  if (lv.v2 != 10301) err = 2;
  return err;
}
struct Us_L_Sf ret_Us_L_Sf(){
    struct Us_L_Sf lv = { .v1 = 3923, .v2 = 10301, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_L_Sf(struct Us_L_Sf);
int send_Us_L_Sf(){
    return zig_assert_Us_L_Sf(ret_Us_L_Sf());
}
struct Us_L_Sf zig_ret_Us_L_Sf();
int assert_ret_Us_L_Sf(){
    return assert_Us_L_Sf(zig_ret_Us_L_Sf());
}

int assert_Us_S_Sf(struct Us_S_Sf lv){
    int err = 0;
  if (lv.v1 != 9511) err = 1;
  if (lv.v2 != 31341) err = 2;
  return err;
}
struct Us_S_Sf ret_Us_S_Sf(){
    struct Us_S_Sf lv = { .v1 = 9511, .v2 = 31341, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_S_Sf(struct Us_S_Sf);
int send_Us_S_Sf(){
    return zig_assert_Us_S_Sf(ret_Us_S_Sf());
}
struct Us_S_Sf zig_ret_Us_S_Sf();
int assert_ret_Us_S_Sf(){
    return assert_Us_S_Sf(zig_ret_Us_S_Sf());
}

int assert_Us_Sf(struct Us_Sf lv){
    int err = 0;
  if (lv.v1 != 5746) err = 1;
  return err;
}
struct Us_Sf ret_Us_Sf(){
    struct Us_Sf lv = { .v1 = 5746, .v2 = EMPTY };
    return lv;
}
int zig_assert_Us_Sf(struct Us_Sf);
int send_Us_Sf(){
    return zig_assert_Us_Sf(ret_Us_Sf());
}
struct Us_Sf zig_ret_Us_Sf();
int assert_ret_Us_Sf(){
    return assert_Us_Sf(zig_ret_Us_Sf());
}

int assert_Us_Sf_C(struct Us_Sf_C lv){
    int err = 0;
  if (lv.v1 != 25868) err = 1;
  if (lv.v3 != 88) err = 3;
  return err;
}
struct Us_Sf_C ret_Us_Sf_C(){
    struct Us_Sf_C lv = { .v1 = 25868, .v2 = EMPTY, .v3 = 88 };
    return lv;
}
int zig_assert_Us_Sf_C(struct Us_Sf_C);
int send_Us_Sf_C(){
    return zig_assert_Us_Sf_C(ret_Us_Sf_C());
}
struct Us_Sf_C zig_ret_Us_Sf_C();
int assert_ret_Us_Sf_C(){
    return assert_Us_Sf_C(zig_ret_Us_Sf_C());
}

int assert_Us_Sf_D(struct Us_Sf_D lv){
    int err = 0;
  if (lv.v1 != 27249) err = 1;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Us_Sf_D ret_Us_Sf_D(){
    struct Us_Sf_D lv = { .v1 = 27249, .v2 = EMPTY, .v3 = 0.5 };
    return lv;
}
int zig_assert_Us_Sf_D(struct Us_Sf_D);
int send_Us_Sf_D(){
    return zig_assert_Us_Sf_D(ret_Us_Sf_D());
}
struct Us_Sf_D zig_ret_Us_Sf_D();
int assert_ret_Us_Sf_D(){
    return assert_Us_Sf_D(zig_ret_Us_Sf_D());
}

int assert_Us_Sf_F(struct Us_Sf_F lv){
    int err = 0;
  if (lv.v1 != 19782) err = 1;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Us_Sf_F ret_Us_Sf_F(){
    struct Us_Sf_F lv = { .v1 = 19782, .v2 = EMPTY, .v3 = 0.875 };
    return lv;
}
int zig_assert_Us_Sf_F(struct Us_Sf_F);
int send_Us_Sf_F(){
    return zig_assert_Us_Sf_F(ret_Us_Sf_F());
}
struct Us_Sf_F zig_ret_Us_Sf_F();
int assert_ret_Us_Sf_F(){
    return assert_Us_Sf_F(zig_ret_Us_Sf_F());
}

int assert_Us_Sf_I(struct Us_Sf_I lv){
    int err = 0;
  if (lv.v1 != 21161) err = 1;
  if (lv.v3 != 3355) err = 3;
  return err;
}
struct Us_Sf_I ret_Us_Sf_I(){
    struct Us_Sf_I lv = { .v1 = 21161, .v2 = EMPTY, .v3 = 3355 };
    return lv;
}
int zig_assert_Us_Sf_I(struct Us_Sf_I);
int send_Us_Sf_I(){
    return zig_assert_Us_Sf_I(ret_Us_Sf_I());
}
struct Us_Sf_I zig_ret_Us_Sf_I();
int assert_ret_Us_Sf_I(){
    return assert_Us_Sf_I(zig_ret_Us_Sf_I());
}

int assert_Us_Sf_Ip(struct Us_Sf_Ip lv){
    int err = 0;
  if (lv.v1 != 2634) err = 1;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Us_Sf_Ip ret_Us_Sf_Ip(){
    struct Us_Sf_Ip lv = { .v1 = 2634, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Us_Sf_Ip(struct Us_Sf_Ip);
int send_Us_Sf_Ip(){
    return zig_assert_Us_Sf_Ip(ret_Us_Sf_Ip());
}
struct Us_Sf_Ip zig_ret_Us_Sf_Ip();
int assert_ret_Us_Sf_Ip(){
    return assert_Us_Sf_Ip(zig_ret_Us_Sf_Ip());
}

int assert_Us_Sf_L(struct Us_Sf_L lv){
    int err = 0;
  if (lv.v1 != 4515) err = 1;
  if (lv.v3 != 11767) err = 3;
  return err;
}
struct Us_Sf_L ret_Us_Sf_L(){
    struct Us_Sf_L lv = { .v1 = 4515, .v2 = EMPTY, .v3 = 11767 };
    return lv;
}
int zig_assert_Us_Sf_L(struct Us_Sf_L);
int send_Us_Sf_L(){
    return zig_assert_Us_Sf_L(ret_Us_Sf_L());
}
struct Us_Sf_L zig_ret_Us_Sf_L();
int assert_ret_Us_Sf_L(){
    return assert_Us_Sf_L(zig_ret_Us_Sf_L());
}

int assert_Us_Sf_S(struct Us_Sf_S lv){
    int err = 0;
  if (lv.v1 != 23260) err = 1;
  if (lv.v3 != 20834) err = 3;
  return err;
}
struct Us_Sf_S ret_Us_Sf_S(){
    struct Us_Sf_S lv = { .v1 = 23260, .v2 = EMPTY, .v3 = 20834 };
    return lv;
}
int zig_assert_Us_Sf_S(struct Us_Sf_S);
int send_Us_Sf_S(){
    return zig_assert_Us_Sf_S(ret_Us_Sf_S());
}
struct Us_Sf_S zig_ret_Us_Sf_S();
int assert_ret_Us_Sf_S(){
    return assert_Us_Sf_S(zig_ret_Us_Sf_S());
}

int assert_Us_Sf_Sf(struct Us_Sf_Sf lv){
    int err = 0;
  if (lv.v1 != 13678) err = 1;
  return err;
}
struct Us_Sf_Sf ret_Us_Sf_Sf(){
    struct Us_Sf_Sf lv = { .v1 = 13678, .v2 = EMPTY, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_Sf_Sf(struct Us_Sf_Sf);
int send_Us_Sf_Sf(){
    return zig_assert_Us_Sf_Sf(ret_Us_Sf_Sf());
}
struct Us_Sf_Sf zig_ret_Us_Sf_Sf();
int assert_ret_Us_Sf_Sf(){
    return assert_Us_Sf_Sf(zig_ret_Us_Sf_Sf());
}

int assert_Us_Sf_Uc(struct Us_Sf_Uc lv){
    int err = 0;
  if (lv.v1 != 22861) err = 1;
  if (lv.v3 != 35) err = 3;
  return err;
}
struct Us_Sf_Uc ret_Us_Sf_Uc(){
    struct Us_Sf_Uc lv = { .v1 = 22861, .v2 = EMPTY, .v3 = 35 };
    return lv;
}
int zig_assert_Us_Sf_Uc(struct Us_Sf_Uc);
int send_Us_Sf_Uc(){
    return zig_assert_Us_Sf_Uc(ret_Us_Sf_Uc());
}
struct Us_Sf_Uc zig_ret_Us_Sf_Uc();
int assert_ret_Us_Sf_Uc(){
    return assert_Us_Sf_Uc(zig_ret_Us_Sf_Uc());
}

int assert_Us_Sf_Ui(struct Us_Sf_Ui lv){
    int err = 0;
  if (lv.v1 != 18208) err = 1;
  if (lv.v3 != 9422) err = 3;
  return err;
}
struct Us_Sf_Ui ret_Us_Sf_Ui(){
    struct Us_Sf_Ui lv = { .v1 = 18208, .v2 = EMPTY, .v3 = 9422 };
    return lv;
}
int zig_assert_Us_Sf_Ui(struct Us_Sf_Ui);
int send_Us_Sf_Ui(){
    return zig_assert_Us_Sf_Ui(ret_Us_Sf_Ui());
}
struct Us_Sf_Ui zig_ret_Us_Sf_Ui();
int assert_ret_Us_Sf_Ui(){
    return assert_Us_Sf_Ui(zig_ret_Us_Sf_Ui());
}

int assert_Us_Sf_Ul(struct Us_Sf_Ul lv){
    int err = 0;
  if (lv.v1 != 29911) err = 1;
  if (lv.v3 != 17622) err = 3;
  return err;
}
struct Us_Sf_Ul ret_Us_Sf_Ul(){
    struct Us_Sf_Ul lv = { .v1 = 29911, .v2 = EMPTY, .v3 = 17622 };
    return lv;
}
int zig_assert_Us_Sf_Ul(struct Us_Sf_Ul);
int send_Us_Sf_Ul(){
    return zig_assert_Us_Sf_Ul(ret_Us_Sf_Ul());
}
struct Us_Sf_Ul zig_ret_Us_Sf_Ul();
int assert_ret_Us_Sf_Ul(){
    return assert_Us_Sf_Ul(zig_ret_Us_Sf_Ul());
}

int assert_Us_Sf_Us(struct Us_Sf_Us lv){
    int err = 0;
  if (lv.v1 != 19428) err = 1;
  if (lv.v3 != 28657) err = 3;
  return err;
}
struct Us_Sf_Us ret_Us_Sf_Us(){
    struct Us_Sf_Us lv = { .v1 = 19428, .v2 = EMPTY, .v3 = 28657 };
    return lv;
}
int zig_assert_Us_Sf_Us(struct Us_Sf_Us);
int send_Us_Sf_Us(){
    return zig_assert_Us_Sf_Us(ret_Us_Sf_Us());
}
struct Us_Sf_Us zig_ret_Us_Sf_Us();
int assert_ret_Us_Sf_Us(){
    return assert_Us_Sf_Us(zig_ret_Us_Sf_Us());
}

int assert_Us_Sf_Vp(struct Us_Sf_Vp lv){
    int err = 0;
  if (lv.v1 != 27845) err = 1;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Us_Sf_Vp ret_Us_Sf_Vp(){
    struct Us_Sf_Vp lv = { .v1 = 27845, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Us_Sf_Vp(struct Us_Sf_Vp);
int send_Us_Sf_Vp(){
    return zig_assert_Us_Sf_Vp(ret_Us_Sf_Vp());
}
struct Us_Sf_Vp zig_ret_Us_Sf_Vp();
int assert_ret_Us_Sf_Vp(){
    return assert_Us_Sf_Vp(zig_ret_Us_Sf_Vp());
}

int assert_Us_Uc_Sf(struct Us_Uc_Sf lv){
    int err = 0;
  if (lv.v1 != 6709) err = 1;
  if (lv.v2 != 70) err = 2;
  return err;
}
struct Us_Uc_Sf ret_Us_Uc_Sf(){
    struct Us_Uc_Sf lv = { .v1 = 6709, .v2 = 70, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_Uc_Sf(struct Us_Uc_Sf);
int send_Us_Uc_Sf(){
    return zig_assert_Us_Uc_Sf(ret_Us_Uc_Sf());
}
struct Us_Uc_Sf zig_ret_Us_Uc_Sf();
int assert_ret_Us_Uc_Sf(){
    return assert_Us_Uc_Sf(zig_ret_Us_Uc_Sf());
}

int assert_Us_Ui_Sf(struct Us_Ui_Sf lv){
    int err = 0;
  if (lv.v1 != 16312) err = 1;
  if (lv.v2 != 12988) err = 2;
  return err;
}
struct Us_Ui_Sf ret_Us_Ui_Sf(){
    struct Us_Ui_Sf lv = { .v1 = 16312, .v2 = 12988, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_Ui_Sf(struct Us_Ui_Sf);
int send_Us_Ui_Sf(){
    return zig_assert_Us_Ui_Sf(ret_Us_Ui_Sf());
}
struct Us_Ui_Sf zig_ret_Us_Ui_Sf();
int assert_ret_Us_Ui_Sf(){
    return assert_Us_Ui_Sf(zig_ret_Us_Ui_Sf());
}

int assert_Us_Ul_Sf(struct Us_Ul_Sf lv){
    int err = 0;
  if (lv.v1 != 27599) err = 1;
  if (lv.v2 != 681) err = 2;
  return err;
}
struct Us_Ul_Sf ret_Us_Ul_Sf(){
    struct Us_Ul_Sf lv = { .v1 = 27599, .v2 = 681, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_Ul_Sf(struct Us_Ul_Sf);
int send_Us_Ul_Sf(){
    return zig_assert_Us_Ul_Sf(ret_Us_Ul_Sf());
}
struct Us_Ul_Sf zig_ret_Us_Ul_Sf();
int assert_ret_Us_Ul_Sf(){
    return assert_Us_Ul_Sf(zig_ret_Us_Ul_Sf());
}

int assert_Us_Us_Sf(struct Us_Us_Sf lv){
    int err = 0;
  if (lv.v1 != 218) err = 1;
  if (lv.v2 != 15659) err = 2;
  return err;
}
struct Us_Us_Sf ret_Us_Us_Sf(){
    struct Us_Us_Sf lv = { .v1 = 218, .v2 = 15659, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_Us_Sf(struct Us_Us_Sf);
int send_Us_Us_Sf(){
    return zig_assert_Us_Us_Sf(ret_Us_Us_Sf());
}
struct Us_Us_Sf zig_ret_Us_Us_Sf();
int assert_ret_Us_Us_Sf(){
    return assert_Us_Us_Sf(zig_ret_Us_Us_Sf());
}

int assert_Us_Vp_Sf(struct Us_Vp_Sf lv){
    int err = 0;
  if (lv.v1 != 6650) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Us_Vp_Sf ret_Us_Vp_Sf(){
    struct Us_Vp_Sf lv = { .v1 = 6650, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Us_Vp_Sf(struct Us_Vp_Sf);
int send_Us_Vp_Sf(){
    return zig_assert_Us_Vp_Sf(ret_Us_Vp_Sf());
}
struct Us_Vp_Sf zig_ret_Us_Vp_Sf();
int assert_ret_Us_Vp_Sf(){
    return assert_Us_Vp_Sf(zig_ret_Us_Vp_Sf());
}

int assert_Vp_C_Sf(struct Vp_C_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 68) err = 2;
  return err;
}
struct Vp_C_Sf ret_Vp_C_Sf(){
    struct Vp_C_Sf lv = { .v1 = 0, .v2 = 68, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_C_Sf(struct Vp_C_Sf);
int send_Vp_C_Sf(){
    return zig_assert_Vp_C_Sf(ret_Vp_C_Sf());
}
struct Vp_C_Sf zig_ret_Vp_C_Sf();
int assert_ret_Vp_C_Sf(){
    return assert_Vp_C_Sf(zig_ret_Vp_C_Sf());
}

int assert_Vp_D_Sf(struct Vp_D_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  return err;
}
struct Vp_D_Sf ret_Vp_D_Sf(){
    struct Vp_D_Sf lv = { .v1 = 0, .v2 = 0.875, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_D_Sf(struct Vp_D_Sf);
int send_Vp_D_Sf(){
    return zig_assert_Vp_D_Sf(ret_Vp_D_Sf());
}
struct Vp_D_Sf zig_ret_Vp_D_Sf();
int assert_ret_Vp_D_Sf(){
    return assert_Vp_D_Sf(zig_ret_Vp_D_Sf());
}

int assert_Vp_F_Sf(struct Vp_F_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  return err;
}
struct Vp_F_Sf ret_Vp_F_Sf(){
    struct Vp_F_Sf lv = { .v1 = 0, .v2 = -2.125, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_F_Sf(struct Vp_F_Sf);
int send_Vp_F_Sf(){
    return zig_assert_Vp_F_Sf(ret_Vp_F_Sf());
}
struct Vp_F_Sf zig_ret_Vp_F_Sf();
int assert_ret_Vp_F_Sf(){
    return assert_Vp_F_Sf(zig_ret_Vp_F_Sf());
}

int assert_Vp_I_Sf(struct Vp_I_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 8877) err = 2;
  return err;
}
struct Vp_I_Sf ret_Vp_I_Sf(){
    struct Vp_I_Sf lv = { .v1 = 0, .v2 = 8877, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_I_Sf(struct Vp_I_Sf);
int send_Vp_I_Sf(){
    return zig_assert_Vp_I_Sf(ret_Vp_I_Sf());
}
struct Vp_I_Sf zig_ret_Vp_I_Sf();
int assert_ret_Vp_I_Sf(){
    return assert_Vp_I_Sf(zig_ret_Vp_I_Sf());
}

int assert_Vp_Ip_Sf(struct Vp_Ip_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Vp_Ip_Sf ret_Vp_Ip_Sf(){
    struct Vp_Ip_Sf lv = { .v1 = 0, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_Ip_Sf(struct Vp_Ip_Sf);
int send_Vp_Ip_Sf(){
    return zig_assert_Vp_Ip_Sf(ret_Vp_Ip_Sf());
}
struct Vp_Ip_Sf zig_ret_Vp_Ip_Sf();
int assert_ret_Vp_Ip_Sf(){
    return assert_Vp_Ip_Sf(zig_ret_Vp_Ip_Sf());
}

int assert_Vp_L_Sf(struct Vp_L_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10286) err = 2;
  return err;
}
struct Vp_L_Sf ret_Vp_L_Sf(){
    struct Vp_L_Sf lv = { .v1 = 0, .v2 = 10286, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_L_Sf(struct Vp_L_Sf);
int send_Vp_L_Sf(){
    return zig_assert_Vp_L_Sf(ret_Vp_L_Sf());
}
struct Vp_L_Sf zig_ret_Vp_L_Sf();
int assert_ret_Vp_L_Sf(){
    return assert_Vp_L_Sf(zig_ret_Vp_L_Sf());
}

int assert_Vp_S_Sf(struct Vp_S_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 8955) err = 2;
  return err;
}
struct Vp_S_Sf ret_Vp_S_Sf(){
    struct Vp_S_Sf lv = { .v1 = 0, .v2 = 8955, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_S_Sf(struct Vp_S_Sf);
int send_Vp_S_Sf(){
    return zig_assert_Vp_S_Sf(ret_Vp_S_Sf());
}
struct Vp_S_Sf zig_ret_Vp_S_Sf();
int assert_ret_Vp_S_Sf(){
    return assert_Vp_S_Sf(zig_ret_Vp_S_Sf());
}

int assert_Vp_Sf(struct Vp_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  return err;
}
struct Vp_Sf ret_Vp_Sf(){
    struct Vp_Sf lv = { .v1 = 0, .v2 = EMPTY };
    return lv;
}
int zig_assert_Vp_Sf(struct Vp_Sf);
int send_Vp_Sf(){
    return zig_assert_Vp_Sf(ret_Vp_Sf());
}
struct Vp_Sf zig_ret_Vp_Sf();
int assert_ret_Vp_Sf(){
    return assert_Vp_Sf(zig_ret_Vp_Sf());
}

int assert_Vp_Sf_C(struct Vp_Sf_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 82) err = 3;
  return err;
}
struct Vp_Sf_C ret_Vp_Sf_C(){
    struct Vp_Sf_C lv = { .v1 = 0, .v2 = EMPTY, .v3 = 82 };
    return lv;
}
int zig_assert_Vp_Sf_C(struct Vp_Sf_C);
int send_Vp_Sf_C(){
    return zig_assert_Vp_Sf_C(ret_Vp_Sf_C());
}
struct Vp_Sf_C zig_ret_Vp_Sf_C();
int assert_ret_Vp_Sf_C(){
    return assert_Vp_Sf_C(zig_ret_Vp_Sf_C());
}

int assert_Vp_Sf_D(struct Vp_Sf_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Vp_Sf_D ret_Vp_Sf_D(){
    struct Vp_Sf_D lv = { .v1 = 0, .v2 = EMPTY, .v3 = 1.0 };
    return lv;
}
int zig_assert_Vp_Sf_D(struct Vp_Sf_D);
int send_Vp_Sf_D(){
    return zig_assert_Vp_Sf_D(ret_Vp_Sf_D());
}
struct Vp_Sf_D zig_ret_Vp_Sf_D();
int assert_ret_Vp_Sf_D(){
    return assert_Vp_Sf_D(zig_ret_Vp_Sf_D());
}

int assert_Vp_Sf_F(struct Vp_Sf_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Vp_Sf_F ret_Vp_Sf_F(){
    struct Vp_Sf_F lv = { .v1 = 0, .v2 = EMPTY, .v3 = 1.0 };
    return lv;
}
int zig_assert_Vp_Sf_F(struct Vp_Sf_F);
int send_Vp_Sf_F(){
    return zig_assert_Vp_Sf_F(ret_Vp_Sf_F());
}
struct Vp_Sf_F zig_ret_Vp_Sf_F();
int assert_ret_Vp_Sf_F(){
    return assert_Vp_Sf_F(zig_ret_Vp_Sf_F());
}

int assert_Vp_Sf_I(struct Vp_Sf_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 32701) err = 3;
  return err;
}
struct Vp_Sf_I ret_Vp_Sf_I(){
    struct Vp_Sf_I lv = { .v1 = 0, .v2 = EMPTY, .v3 = 32701 };
    return lv;
}
int zig_assert_Vp_Sf_I(struct Vp_Sf_I);
int send_Vp_Sf_I(){
    return zig_assert_Vp_Sf_I(ret_Vp_Sf_I());
}
struct Vp_Sf_I zig_ret_Vp_Sf_I();
int assert_ret_Vp_Sf_I(){
    return assert_Vp_Sf_I(zig_ret_Vp_Sf_I());
}

int assert_Vp_Sf_Ip(struct Vp_Sf_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Sf_Ip ret_Vp_Sf_Ip(){
    struct Vp_Sf_Ip lv = { .v1 = 0, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Sf_Ip(struct Vp_Sf_Ip);
int send_Vp_Sf_Ip(){
    return zig_assert_Vp_Sf_Ip(ret_Vp_Sf_Ip());
}
struct Vp_Sf_Ip zig_ret_Vp_Sf_Ip();
int assert_ret_Vp_Sf_Ip(){
    return assert_Vp_Sf_Ip(zig_ret_Vp_Sf_Ip());
}

int assert_Vp_Sf_L(struct Vp_Sf_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 1620) err = 3;
  return err;
}
struct Vp_Sf_L ret_Vp_Sf_L(){
    struct Vp_Sf_L lv = { .v1 = 0, .v2 = EMPTY, .v3 = 1620 };
    return lv;
}
int zig_assert_Vp_Sf_L(struct Vp_Sf_L);
int send_Vp_Sf_L(){
    return zig_assert_Vp_Sf_L(ret_Vp_Sf_L());
}
struct Vp_Sf_L zig_ret_Vp_Sf_L();
int assert_ret_Vp_Sf_L(){
    return assert_Vp_Sf_L(zig_ret_Vp_Sf_L());
}

int assert_Vp_Sf_S(struct Vp_Sf_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 10027) err = 3;
  return err;
}
struct Vp_Sf_S ret_Vp_Sf_S(){
    struct Vp_Sf_S lv = { .v1 = 0, .v2 = EMPTY, .v3 = 10027 };
    return lv;
}
int zig_assert_Vp_Sf_S(struct Vp_Sf_S);
int send_Vp_Sf_S(){
    return zig_assert_Vp_Sf_S(ret_Vp_Sf_S());
}
struct Vp_Sf_S zig_ret_Vp_Sf_S();
int assert_ret_Vp_Sf_S(){
    return assert_Vp_Sf_S(zig_ret_Vp_Sf_S());
}

int assert_Vp_Sf_Sf(struct Vp_Sf_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  return err;
}
struct Vp_Sf_Sf ret_Vp_Sf_Sf(){
    struct Vp_Sf_Sf lv = { .v1 = 0, .v2 = EMPTY, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_Sf_Sf(struct Vp_Sf_Sf);
int send_Vp_Sf_Sf(){
    return zig_assert_Vp_Sf_Sf(ret_Vp_Sf_Sf());
}
struct Vp_Sf_Sf zig_ret_Vp_Sf_Sf();
int assert_ret_Vp_Sf_Sf(){
    return assert_Vp_Sf_Sf(zig_ret_Vp_Sf_Sf());
}

int assert_Vp_Sf_Uc(struct Vp_Sf_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 94) err = 3;
  return err;
}
struct Vp_Sf_Uc ret_Vp_Sf_Uc(){
    struct Vp_Sf_Uc lv = { .v1 = 0, .v2 = EMPTY, .v3 = 94 };
    return lv;
}
int zig_assert_Vp_Sf_Uc(struct Vp_Sf_Uc);
int send_Vp_Sf_Uc(){
    return zig_assert_Vp_Sf_Uc(ret_Vp_Sf_Uc());
}
struct Vp_Sf_Uc zig_ret_Vp_Sf_Uc();
int assert_ret_Vp_Sf_Uc(){
    return assert_Vp_Sf_Uc(zig_ret_Vp_Sf_Uc());
}

int assert_Vp_Sf_Ui(struct Vp_Sf_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 1521) err = 3;
  return err;
}
struct Vp_Sf_Ui ret_Vp_Sf_Ui(){
    struct Vp_Sf_Ui lv = { .v1 = 0, .v2 = EMPTY, .v3 = 1521 };
    return lv;
}
int zig_assert_Vp_Sf_Ui(struct Vp_Sf_Ui);
int send_Vp_Sf_Ui(){
    return zig_assert_Vp_Sf_Ui(ret_Vp_Sf_Ui());
}
struct Vp_Sf_Ui zig_ret_Vp_Sf_Ui();
int assert_ret_Vp_Sf_Ui(){
    return assert_Vp_Sf_Ui(zig_ret_Vp_Sf_Ui());
}

int assert_Vp_Sf_Ul(struct Vp_Sf_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 3774) err = 3;
  return err;
}
struct Vp_Sf_Ul ret_Vp_Sf_Ul(){
    struct Vp_Sf_Ul lv = { .v1 = 0, .v2 = EMPTY, .v3 = 3774 };
    return lv;
}
int zig_assert_Vp_Sf_Ul(struct Vp_Sf_Ul);
int send_Vp_Sf_Ul(){
    return zig_assert_Vp_Sf_Ul(ret_Vp_Sf_Ul());
}
struct Vp_Sf_Ul zig_ret_Vp_Sf_Ul();
int assert_ret_Vp_Sf_Ul(){
    return assert_Vp_Sf_Ul(zig_ret_Vp_Sf_Ul());
}

int assert_Vp_Sf_Us(struct Vp_Sf_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 27043) err = 3;
  return err;
}
struct Vp_Sf_Us ret_Vp_Sf_Us(){
    struct Vp_Sf_Us lv = { .v1 = 0, .v2 = EMPTY, .v3 = 27043 };
    return lv;
}
int zig_assert_Vp_Sf_Us(struct Vp_Sf_Us);
int send_Vp_Sf_Us(){
    return zig_assert_Vp_Sf_Us(ret_Vp_Sf_Us());
}
struct Vp_Sf_Us zig_ret_Vp_Sf_Us();
int assert_ret_Vp_Sf_Us(){
    return assert_Vp_Sf_Us(zig_ret_Vp_Sf_Us());
}

int assert_Vp_Sf_Vp(struct Vp_Sf_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Vp_Sf_Vp ret_Vp_Sf_Vp(){
    struct Vp_Sf_Vp lv = { .v1 = 0, .v2 = EMPTY, .v3 = 0 };
    return lv;
}
int zig_assert_Vp_Sf_Vp(struct Vp_Sf_Vp);
int send_Vp_Sf_Vp(){
    return zig_assert_Vp_Sf_Vp(ret_Vp_Sf_Vp());
}
struct Vp_Sf_Vp zig_ret_Vp_Sf_Vp();
int assert_ret_Vp_Sf_Vp(){
    return assert_Vp_Sf_Vp(zig_ret_Vp_Sf_Vp());
}

int assert_Vp_Uc_Sf(struct Vp_Uc_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 46) err = 2;
  return err;
}
struct Vp_Uc_Sf ret_Vp_Uc_Sf(){
    struct Vp_Uc_Sf lv = { .v1 = 0, .v2 = 46, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_Uc_Sf(struct Vp_Uc_Sf);
int send_Vp_Uc_Sf(){
    return zig_assert_Vp_Uc_Sf(ret_Vp_Uc_Sf());
}
struct Vp_Uc_Sf zig_ret_Vp_Uc_Sf();
int assert_ret_Vp_Uc_Sf(){
    return assert_Vp_Uc_Sf(zig_ret_Vp_Uc_Sf());
}

int assert_Vp_Ui_Sf(struct Vp_Ui_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10702) err = 2;
  return err;
}
struct Vp_Ui_Sf ret_Vp_Ui_Sf(){
    struct Vp_Ui_Sf lv = { .v1 = 0, .v2 = 10702, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_Ui_Sf(struct Vp_Ui_Sf);
int send_Vp_Ui_Sf(){
    return zig_assert_Vp_Ui_Sf(ret_Vp_Ui_Sf());
}
struct Vp_Ui_Sf zig_ret_Vp_Ui_Sf();
int assert_ret_Vp_Ui_Sf(){
    return assert_Vp_Ui_Sf(zig_ret_Vp_Ui_Sf());
}

int assert_Vp_Ul_Sf(struct Vp_Ul_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28979) err = 2;
  return err;
}
struct Vp_Ul_Sf ret_Vp_Ul_Sf(){
    struct Vp_Ul_Sf lv = { .v1 = 0, .v2 = 28979, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_Ul_Sf(struct Vp_Ul_Sf);
int send_Vp_Ul_Sf(){
    return zig_assert_Vp_Ul_Sf(ret_Vp_Ul_Sf());
}
struct Vp_Ul_Sf zig_ret_Vp_Ul_Sf();
int assert_ret_Vp_Ul_Sf(){
    return assert_Vp_Ul_Sf(zig_ret_Vp_Ul_Sf());
}

int assert_Vp_Us_Sf(struct Vp_Us_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 11938) err = 2;
  return err;
}
struct Vp_Us_Sf ret_Vp_Us_Sf(){
    struct Vp_Us_Sf lv = { .v1 = 0, .v2 = 11938, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_Us_Sf(struct Vp_Us_Sf);
int send_Vp_Us_Sf(){
    return zig_assert_Vp_Us_Sf(ret_Vp_Us_Sf());
}
struct Vp_Us_Sf zig_ret_Vp_Us_Sf();
int assert_ret_Vp_Us_Sf(){
    return assert_Vp_Us_Sf(zig_ret_Vp_Us_Sf());
}

int assert_Vp_Vp_Sf(struct Vp_Vp_Sf lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Vp_Vp_Sf ret_Vp_Vp_Sf(){
    struct Vp_Vp_Sf lv = { .v1 = 0, .v2 = 0, .v3 = EMPTY };
    return lv;
}
int zig_assert_Vp_Vp_Sf(struct Vp_Vp_Sf);
int send_Vp_Vp_Sf(){
    return zig_assert_Vp_Vp_Sf(ret_Vp_Vp_Sf());
}
struct Vp_Vp_Sf zig_ret_Vp_Vp_Sf();
int assert_ret_Vp_Vp_Sf(){
    return assert_Vp_Vp_Sf(zig_ret_Vp_Vp_Sf());
}

