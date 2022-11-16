#include "T_Snnn_xay.h"

int assert_Ip_C(struct Ip_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 48) err = 2;
  return err;
}
struct Ip_C ret_Ip_C(){
    struct Ip_C lv = { .v1 = 0, .v2 = 48 };
    return lv;
}
int zig_assert_Ip_C(struct Ip_C);
int send_Ip_C(){
    return zig_assert_Ip_C(ret_Ip_C());
}
struct Ip_C zig_ret_Ip_C();
int assert_ret_Ip_C(){
    return assert_Ip_C(zig_ret_Ip_C());
}

int assert_Ip_C_C(struct Ip_C_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 100) err = 2;
  if (lv.v3 != 54) err = 3;
  return err;
}
struct Ip_C_C ret_Ip_C_C(){
    struct Ip_C_C lv = { .v1 = 0, .v2 = 100, .v3 = 54 };
    return lv;
}
int zig_assert_Ip_C_C(struct Ip_C_C);
int send_Ip_C_C(){
    return zig_assert_Ip_C_C(ret_Ip_C_C());
}
struct Ip_C_C zig_ret_Ip_C_C();
int assert_ret_Ip_C_C(){
    return assert_Ip_C_C(zig_ret_Ip_C_C());
}

int assert_Ip_C_D(struct Ip_C_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 102) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Ip_C_D ret_Ip_C_D(){
    struct Ip_C_D lv = { .v1 = 0, .v2 = 102, .v3 = 1.0 };
    return lv;
}
int zig_assert_Ip_C_D(struct Ip_C_D);
int send_Ip_C_D(){
    return zig_assert_Ip_C_D(ret_Ip_C_D());
}
struct Ip_C_D zig_ret_Ip_C_D();
int assert_ret_Ip_C_D(){
    return assert_Ip_C_D(zig_ret_Ip_C_D());
}

int assert_Ip_C_F(struct Ip_C_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 92) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Ip_C_F ret_Ip_C_F(){
    struct Ip_C_F lv = { .v1 = 0, .v2 = 92, .v3 = 7.0 };
    return lv;
}
int zig_assert_Ip_C_F(struct Ip_C_F);
int send_Ip_C_F(){
    return zig_assert_Ip_C_F(ret_Ip_C_F());
}
struct Ip_C_F zig_ret_Ip_C_F();
int assert_ret_Ip_C_F(){
    return assert_Ip_C_F(zig_ret_Ip_C_F());
}

int assert_Ip_C_I(struct Ip_C_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 31) err = 2;
  if (lv.v3 != 27354) err = 3;
  return err;
}
struct Ip_C_I ret_Ip_C_I(){
    struct Ip_C_I lv = { .v1 = 0, .v2 = 31, .v3 = 27354 };
    return lv;
}
int zig_assert_Ip_C_I(struct Ip_C_I);
int send_Ip_C_I(){
    return zig_assert_Ip_C_I(ret_Ip_C_I());
}
struct Ip_C_I zig_ret_Ip_C_I();
int assert_ret_Ip_C_I(){
    return assert_Ip_C_I(zig_ret_Ip_C_I());
}

int assert_Ip_C_Ip(struct Ip_C_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 71) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_C_Ip ret_Ip_C_Ip(){
    struct Ip_C_Ip lv = { .v1 = 0, .v2 = 71, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_C_Ip(struct Ip_C_Ip);
int send_Ip_C_Ip(){
    return zig_assert_Ip_C_Ip(ret_Ip_C_Ip());
}
struct Ip_C_Ip zig_ret_Ip_C_Ip();
int assert_ret_Ip_C_Ip(){
    return assert_Ip_C_Ip(zig_ret_Ip_C_Ip());
}

int assert_Ip_C_L(struct Ip_C_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 81) err = 2;
  if (lv.v3 != 25596) err = 3;
  return err;
}
struct Ip_C_L ret_Ip_C_L(){
    struct Ip_C_L lv = { .v1 = 0, .v2 = 81, .v3 = 25596 };
    return lv;
}
int zig_assert_Ip_C_L(struct Ip_C_L);
int send_Ip_C_L(){
    return zig_assert_Ip_C_L(ret_Ip_C_L());
}
struct Ip_C_L zig_ret_Ip_C_L();
int assert_ret_Ip_C_L(){
    return assert_Ip_C_L(zig_ret_Ip_C_L());
}

int assert_Ip_C_S(struct Ip_C_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 35) err = 2;
  if (lv.v3 != 26993) err = 3;
  return err;
}
struct Ip_C_S ret_Ip_C_S(){
    struct Ip_C_S lv = { .v1 = 0, .v2 = 35, .v3 = 26993 };
    return lv;
}
int zig_assert_Ip_C_S(struct Ip_C_S);
int send_Ip_C_S(){
    return zig_assert_Ip_C_S(ret_Ip_C_S());
}
struct Ip_C_S zig_ret_Ip_C_S();
int assert_ret_Ip_C_S(){
    return assert_Ip_C_S(zig_ret_Ip_C_S());
}

int assert_Ip_C_Uc(struct Ip_C_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 62) err = 2;
  if (lv.v3 != 43) err = 3;
  return err;
}
struct Ip_C_Uc ret_Ip_C_Uc(){
    struct Ip_C_Uc lv = { .v1 = 0, .v2 = 62, .v3 = 43 };
    return lv;
}
int zig_assert_Ip_C_Uc(struct Ip_C_Uc);
int send_Ip_C_Uc(){
    return zig_assert_Ip_C_Uc(ret_Ip_C_Uc());
}
struct Ip_C_Uc zig_ret_Ip_C_Uc();
int assert_ret_Ip_C_Uc(){
    return assert_Ip_C_Uc(zig_ret_Ip_C_Uc());
}

int assert_Ip_C_Ui(struct Ip_C_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 5) err = 2;
  if (lv.v3 != 17445) err = 3;
  return err;
}
struct Ip_C_Ui ret_Ip_C_Ui(){
    struct Ip_C_Ui lv = { .v1 = 0, .v2 = 5, .v3 = 17445 };
    return lv;
}
int zig_assert_Ip_C_Ui(struct Ip_C_Ui);
int send_Ip_C_Ui(){
    return zig_assert_Ip_C_Ui(ret_Ip_C_Ui());
}
struct Ip_C_Ui zig_ret_Ip_C_Ui();
int assert_ret_Ip_C_Ui(){
    return assert_Ip_C_Ui(zig_ret_Ip_C_Ui());
}

int assert_Ip_C_Ul(struct Ip_C_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 8) err = 2;
  if (lv.v3 != 19265) err = 3;
  return err;
}
struct Ip_C_Ul ret_Ip_C_Ul(){
    struct Ip_C_Ul lv = { .v1 = 0, .v2 = 8, .v3 = 19265 };
    return lv;
}
int zig_assert_Ip_C_Ul(struct Ip_C_Ul);
int send_Ip_C_Ul(){
    return zig_assert_Ip_C_Ul(ret_Ip_C_Ul());
}
struct Ip_C_Ul zig_ret_Ip_C_Ul();
int assert_ret_Ip_C_Ul(){
    return assert_Ip_C_Ul(zig_ret_Ip_C_Ul());
}

int assert_Ip_C_Us(struct Ip_C_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 103) err = 2;
  if (lv.v3 != 22111) err = 3;
  return err;
}
struct Ip_C_Us ret_Ip_C_Us(){
    struct Ip_C_Us lv = { .v1 = 0, .v2 = 103, .v3 = 22111 };
    return lv;
}
int zig_assert_Ip_C_Us(struct Ip_C_Us);
int send_Ip_C_Us(){
    return zig_assert_Ip_C_Us(ret_Ip_C_Us());
}
struct Ip_C_Us zig_ret_Ip_C_Us();
int assert_ret_Ip_C_Us(){
    return assert_Ip_C_Us(zig_ret_Ip_C_Us());
}

int assert_Ip_C_Vp(struct Ip_C_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 95) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_C_Vp ret_Ip_C_Vp(){
    struct Ip_C_Vp lv = { .v1 = 0, .v2 = 95, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_C_Vp(struct Ip_C_Vp);
int send_Ip_C_Vp(){
    return zig_assert_Ip_C_Vp(ret_Ip_C_Vp());
}
struct Ip_C_Vp zig_ret_Ip_C_Vp();
int assert_ret_Ip_C_Vp(){
    return assert_Ip_C_Vp(zig_ret_Ip_C_Vp());
}

int assert_Ip_D(struct Ip_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  return err;
}
struct Ip_D ret_Ip_D(){
    struct Ip_D lv = { .v1 = 0, .v2 = 1.0 };
    return lv;
}
int zig_assert_Ip_D(struct Ip_D);
int send_Ip_D(){
    return zig_assert_Ip_D(ret_Ip_D());
}
struct Ip_D zig_ret_Ip_D();
int assert_ret_Ip_D(){
    return assert_Ip_D(zig_ret_Ip_D());
}

int assert_Ip_D_C(struct Ip_D_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 93) err = 3;
  return err;
}
struct Ip_D_C ret_Ip_D_C(){
    struct Ip_D_C lv = { .v1 = 0, .v2 = -0.25, .v3 = 93 };
    return lv;
}
int zig_assert_Ip_D_C(struct Ip_D_C);
int send_Ip_D_C(){
    return zig_assert_Ip_D_C(ret_Ip_D_C());
}
struct Ip_D_C zig_ret_Ip_D_C();
int assert_ret_Ip_D_C(){
    return assert_Ip_D_C(zig_ret_Ip_D_C());
}

int assert_Ip_D_D(struct Ip_D_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Ip_D_D ret_Ip_D_D(){
    struct Ip_D_D lv = { .v1 = 0, .v2 = -0.25, .v3 = 0.5 };
    return lv;
}
int zig_assert_Ip_D_D(struct Ip_D_D);
int send_Ip_D_D(){
    return zig_assert_Ip_D_D(ret_Ip_D_D());
}
struct Ip_D_D zig_ret_Ip_D_D();
int assert_ret_Ip_D_D(){
    return assert_Ip_D_D(zig_ret_Ip_D_D());
}

int assert_Ip_D_F(struct Ip_D_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Ip_D_F ret_Ip_D_F(){
    struct Ip_D_F lv = { .v1 = 0, .v2 = -2.125, .v3 = -0.25 };
    return lv;
}
int zig_assert_Ip_D_F(struct Ip_D_F);
int send_Ip_D_F(){
    return zig_assert_Ip_D_F(ret_Ip_D_F());
}
struct Ip_D_F zig_ret_Ip_D_F();
int assert_ret_Ip_D_F(){
    return assert_Ip_D_F(zig_ret_Ip_D_F());
}

int assert_Ip_D_I(struct Ip_D_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 15113) err = 3;
  return err;
}
struct Ip_D_I ret_Ip_D_I(){
    struct Ip_D_I lv = { .v1 = 0, .v2 = 7.0, .v3 = 15113 };
    return lv;
}
int zig_assert_Ip_D_I(struct Ip_D_I);
int send_Ip_D_I(){
    return zig_assert_Ip_D_I(ret_Ip_D_I());
}
struct Ip_D_I zig_ret_Ip_D_I();
int assert_ret_Ip_D_I(){
    return assert_Ip_D_I(zig_ret_Ip_D_I());
}

int assert_Ip_D_Ip(struct Ip_D_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_D_Ip ret_Ip_D_Ip(){
    struct Ip_D_Ip lv = { .v1 = 0, .v2 = 0.875, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_D_Ip(struct Ip_D_Ip);
int send_Ip_D_Ip(){
    return zig_assert_Ip_D_Ip(ret_Ip_D_Ip());
}
struct Ip_D_Ip zig_ret_Ip_D_Ip();
int assert_ret_Ip_D_Ip(){
    return assert_Ip_D_Ip(zig_ret_Ip_D_Ip());
}

int assert_Ip_D_L(struct Ip_D_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 31612) err = 3;
  return err;
}
struct Ip_D_L ret_Ip_D_L(){
    struct Ip_D_L lv = { .v1 = 0, .v2 = 7.0, .v3 = 31612 };
    return lv;
}
int zig_assert_Ip_D_L(struct Ip_D_L);
int send_Ip_D_L(){
    return zig_assert_Ip_D_L(ret_Ip_D_L());
}
struct Ip_D_L zig_ret_Ip_D_L();
int assert_ret_Ip_D_L(){
    return assert_Ip_D_L(zig_ret_Ip_D_L());
}

int assert_Ip_D_S(struct Ip_D_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 17322) err = 3;
  return err;
}
struct Ip_D_S ret_Ip_D_S(){
    struct Ip_D_S lv = { .v1 = 0, .v2 = -2.125, .v3 = 17322 };
    return lv;
}
int zig_assert_Ip_D_S(struct Ip_D_S);
int send_Ip_D_S(){
    return zig_assert_Ip_D_S(ret_Ip_D_S());
}
struct Ip_D_S zig_ret_Ip_D_S();
int assert_ret_Ip_D_S(){
    return assert_Ip_D_S(zig_ret_Ip_D_S());
}

int assert_Ip_D_Uc(struct Ip_D_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 29) err = 3;
  return err;
}
struct Ip_D_Uc ret_Ip_D_Uc(){
    struct Ip_D_Uc lv = { .v1 = 0, .v2 = 1.0, .v3 = 29 };
    return lv;
}
int zig_assert_Ip_D_Uc(struct Ip_D_Uc);
int send_Ip_D_Uc(){
    return zig_assert_Ip_D_Uc(ret_Ip_D_Uc());
}
struct Ip_D_Uc zig_ret_Ip_D_Uc();
int assert_ret_Ip_D_Uc(){
    return assert_Ip_D_Uc(zig_ret_Ip_D_Uc());
}

int assert_Ip_D_Ui(struct Ip_D_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 12052) err = 3;
  return err;
}
struct Ip_D_Ui ret_Ip_D_Ui(){
    struct Ip_D_Ui lv = { .v1 = 0, .v2 = -2.125, .v3 = 12052 };
    return lv;
}
int zig_assert_Ip_D_Ui(struct Ip_D_Ui);
int send_Ip_D_Ui(){
    return zig_assert_Ip_D_Ui(ret_Ip_D_Ui());
}
struct Ip_D_Ui zig_ret_Ip_D_Ui();
int assert_ret_Ip_D_Ui(){
    return assert_Ip_D_Ui(zig_ret_Ip_D_Ui());
}

int assert_Ip_D_Ul(struct Ip_D_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 121) err = 3;
  return err;
}
struct Ip_D_Ul ret_Ip_D_Ul(){
    struct Ip_D_Ul lv = { .v1 = 0, .v2 = -0.25, .v3 = 121 };
    return lv;
}
int zig_assert_Ip_D_Ul(struct Ip_D_Ul);
int send_Ip_D_Ul(){
    return zig_assert_Ip_D_Ul(ret_Ip_D_Ul());
}
struct Ip_D_Ul zig_ret_Ip_D_Ul();
int assert_ret_Ip_D_Ul(){
    return assert_Ip_D_Ul(zig_ret_Ip_D_Ul());
}

int assert_Ip_D_Us(struct Ip_D_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 2255) err = 3;
  return err;
}
struct Ip_D_Us ret_Ip_D_Us(){
    struct Ip_D_Us lv = { .v1 = 0, .v2 = 1.0, .v3 = 2255 };
    return lv;
}
int zig_assert_Ip_D_Us(struct Ip_D_Us);
int send_Ip_D_Us(){
    return zig_assert_Ip_D_Us(ret_Ip_D_Us());
}
struct Ip_D_Us zig_ret_Ip_D_Us();
int assert_ret_Ip_D_Us(){
    return assert_Ip_D_Us(zig_ret_Ip_D_Us());
}

int assert_Ip_D_Vp(struct Ip_D_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_D_Vp ret_Ip_D_Vp(){
    struct Ip_D_Vp lv = { .v1 = 0, .v2 = 4.5, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_D_Vp(struct Ip_D_Vp);
int send_Ip_D_Vp(){
    return zig_assert_Ip_D_Vp(ret_Ip_D_Vp());
}
struct Ip_D_Vp zig_ret_Ip_D_Vp();
int assert_ret_Ip_D_Vp(){
    return assert_Ip_D_Vp(zig_ret_Ip_D_Vp());
}

int assert_Ip_F(struct Ip_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  return err;
}
struct Ip_F ret_Ip_F(){
    struct Ip_F lv = { .v1 = 0, .v2 = 1.0 };
    return lv;
}
int zig_assert_Ip_F(struct Ip_F);
int send_Ip_F(){
    return zig_assert_Ip_F(ret_Ip_F());
}
struct Ip_F zig_ret_Ip_F();
int assert_ret_Ip_F(){
    return assert_Ip_F(zig_ret_Ip_F());
}

int assert_Ip_F_C(struct Ip_F_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 113) err = 3;
  return err;
}
struct Ip_F_C ret_Ip_F_C(){
    struct Ip_F_C lv = { .v1 = 0, .v2 = 0.5, .v3 = 113 };
    return lv;
}
int zig_assert_Ip_F_C(struct Ip_F_C);
int send_Ip_F_C(){
    return zig_assert_Ip_F_C(ret_Ip_F_C());
}
struct Ip_F_C zig_ret_Ip_F_C();
int assert_ret_Ip_F_C(){
    return assert_Ip_F_C(zig_ret_Ip_F_C());
}

int assert_Ip_F_D(struct Ip_F_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Ip_F_D ret_Ip_F_D(){
    struct Ip_F_D lv = { .v1 = 0, .v2 = 0.5, .v3 = 1.0 };
    return lv;
}
int zig_assert_Ip_F_D(struct Ip_F_D);
int send_Ip_F_D(){
    return zig_assert_Ip_F_D(ret_Ip_F_D());
}
struct Ip_F_D zig_ret_Ip_F_D();
int assert_ret_Ip_F_D(){
    return assert_Ip_F_D(zig_ret_Ip_F_D());
}

int assert_Ip_F_F(struct Ip_F_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Ip_F_F ret_Ip_F_F(){
    struct Ip_F_F lv = { .v1 = 0, .v2 = 1.0, .v3 = -0.25 };
    return lv;
}
int zig_assert_Ip_F_F(struct Ip_F_F);
int send_Ip_F_F(){
    return zig_assert_Ip_F_F(ret_Ip_F_F());
}
struct Ip_F_F zig_ret_Ip_F_F();
int assert_ret_Ip_F_F(){
    return assert_Ip_F_F(zig_ret_Ip_F_F());
}

int assert_Ip_F_I(struct Ip_F_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 2580) err = 3;
  return err;
}
struct Ip_F_I ret_Ip_F_I(){
    struct Ip_F_I lv = { .v1 = 0, .v2 = 0.5, .v3 = 2580 };
    return lv;
}
int zig_assert_Ip_F_I(struct Ip_F_I);
int send_Ip_F_I(){
    return zig_assert_Ip_F_I(ret_Ip_F_I());
}
struct Ip_F_I zig_ret_Ip_F_I();
int assert_ret_Ip_F_I(){
    return assert_Ip_F_I(zig_ret_Ip_F_I());
}

int assert_Ip_F_Ip(struct Ip_F_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_F_Ip ret_Ip_F_Ip(){
    struct Ip_F_Ip lv = { .v1 = 0, .v2 = 0.5, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_F_Ip(struct Ip_F_Ip);
int send_Ip_F_Ip(){
    return zig_assert_Ip_F_Ip(ret_Ip_F_Ip());
}
struct Ip_F_Ip zig_ret_Ip_F_Ip();
int assert_ret_Ip_F_Ip(){
    return assert_Ip_F_Ip(zig_ret_Ip_F_Ip());
}

int assert_Ip_F_L(struct Ip_F_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 29807) err = 3;
  return err;
}
struct Ip_F_L ret_Ip_F_L(){
    struct Ip_F_L lv = { .v1 = 0, .v2 = 4.5, .v3 = 29807 };
    return lv;
}
int zig_assert_Ip_F_L(struct Ip_F_L);
int send_Ip_F_L(){
    return zig_assert_Ip_F_L(ret_Ip_F_L());
}
struct Ip_F_L zig_ret_Ip_F_L();
int assert_ret_Ip_F_L(){
    return assert_Ip_F_L(zig_ret_Ip_F_L());
}

int assert_Ip_F_S(struct Ip_F_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 23718) err = 3;
  return err;
}
struct Ip_F_S ret_Ip_F_S(){
    struct Ip_F_S lv = { .v1 = 0, .v2 = 4.5, .v3 = 23718 };
    return lv;
}
int zig_assert_Ip_F_S(struct Ip_F_S);
int send_Ip_F_S(){
    return zig_assert_Ip_F_S(ret_Ip_F_S());
}
struct Ip_F_S zig_ret_Ip_F_S();
int assert_ret_Ip_F_S(){
    return assert_Ip_F_S(zig_ret_Ip_F_S());
}

int assert_Ip_F_Uc(struct Ip_F_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 89) err = 3;
  return err;
}
struct Ip_F_Uc ret_Ip_F_Uc(){
    struct Ip_F_Uc lv = { .v1 = 0, .v2 = 0.875, .v3 = 89 };
    return lv;
}
int zig_assert_Ip_F_Uc(struct Ip_F_Uc);
int send_Ip_F_Uc(){
    return zig_assert_Ip_F_Uc(ret_Ip_F_Uc());
}
struct Ip_F_Uc zig_ret_Ip_F_Uc();
int assert_ret_Ip_F_Uc(){
    return assert_Ip_F_Uc(zig_ret_Ip_F_Uc());
}

int assert_Ip_F_Ui(struct Ip_F_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 8623) err = 3;
  return err;
}
struct Ip_F_Ui ret_Ip_F_Ui(){
    struct Ip_F_Ui lv = { .v1 = 0, .v2 = -0.25, .v3 = 8623 };
    return lv;
}
int zig_assert_Ip_F_Ui(struct Ip_F_Ui);
int send_Ip_F_Ui(){
    return zig_assert_Ip_F_Ui(ret_Ip_F_Ui());
}
struct Ip_F_Ui zig_ret_Ip_F_Ui();
int assert_ret_Ip_F_Ui(){
    return assert_Ip_F_Ui(zig_ret_Ip_F_Ui());
}

int assert_Ip_F_Ul(struct Ip_F_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 19551) err = 3;
  return err;
}
struct Ip_F_Ul ret_Ip_F_Ul(){
    struct Ip_F_Ul lv = { .v1 = 0, .v2 = 4.5, .v3 = 19551 };
    return lv;
}
int zig_assert_Ip_F_Ul(struct Ip_F_Ul);
int send_Ip_F_Ul(){
    return zig_assert_Ip_F_Ul(ret_Ip_F_Ul());
}
struct Ip_F_Ul zig_ret_Ip_F_Ul();
int assert_ret_Ip_F_Ul(){
    return assert_Ip_F_Ul(zig_ret_Ip_F_Ul());
}

int assert_Ip_F_Us(struct Ip_F_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 4547) err = 3;
  return err;
}
struct Ip_F_Us ret_Ip_F_Us(){
    struct Ip_F_Us lv = { .v1 = 0, .v2 = 4.5, .v3 = 4547 };
    return lv;
}
int zig_assert_Ip_F_Us(struct Ip_F_Us);
int send_Ip_F_Us(){
    return zig_assert_Ip_F_Us(ret_Ip_F_Us());
}
struct Ip_F_Us zig_ret_Ip_F_Us();
int assert_ret_Ip_F_Us(){
    return assert_Ip_F_Us(zig_ret_Ip_F_Us());
}

int assert_Ip_F_Vp(struct Ip_F_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_F_Vp ret_Ip_F_Vp(){
    struct Ip_F_Vp lv = { .v1 = 0, .v2 = 7.0, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_F_Vp(struct Ip_F_Vp);
int send_Ip_F_Vp(){
    return zig_assert_Ip_F_Vp(ret_Ip_F_Vp());
}
struct Ip_F_Vp zig_ret_Ip_F_Vp();
int assert_ret_Ip_F_Vp(){
    return assert_Ip_F_Vp(zig_ret_Ip_F_Vp());
}

int assert_Ip_I(struct Ip_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 3367) err = 2;
  return err;
}
struct Ip_I ret_Ip_I(){
    struct Ip_I lv = { .v1 = 0, .v2 = 3367 };
    return lv;
}
int zig_assert_Ip_I(struct Ip_I);
int send_Ip_I(){
    return zig_assert_Ip_I(ret_Ip_I());
}
struct Ip_I zig_ret_Ip_I();
int assert_ret_Ip_I(){
    return assert_Ip_I(zig_ret_Ip_I());
}

int assert_Ip_I_C(struct Ip_I_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 31149) err = 2;
  if (lv.v3 != 116) err = 3;
  return err;
}
struct Ip_I_C ret_Ip_I_C(){
    struct Ip_I_C lv = { .v1 = 0, .v2 = 31149, .v3 = 116 };
    return lv;
}
int zig_assert_Ip_I_C(struct Ip_I_C);
int send_Ip_I_C(){
    return zig_assert_Ip_I_C(ret_Ip_I_C());
}
struct Ip_I_C zig_ret_Ip_I_C();
int assert_ret_Ip_I_C(){
    return assert_Ip_I_C(zig_ret_Ip_I_C());
}

int assert_Ip_I_D(struct Ip_I_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7672) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Ip_I_D ret_Ip_I_D(){
    struct Ip_I_D lv = { .v1 = 0, .v2 = 7672, .v3 = 4.5 };
    return lv;
}
int zig_assert_Ip_I_D(struct Ip_I_D);
int send_Ip_I_D(){
    return zig_assert_Ip_I_D(ret_Ip_I_D());
}
struct Ip_I_D zig_ret_Ip_I_D();
int assert_ret_Ip_I_D(){
    return assert_Ip_I_D(zig_ret_Ip_I_D());
}

int assert_Ip_I_F(struct Ip_I_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1771) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Ip_I_F ret_Ip_I_F(){
    struct Ip_I_F lv = { .v1 = 0, .v2 = 1771, .v3 = 0.875 };
    return lv;
}
int zig_assert_Ip_I_F(struct Ip_I_F);
int send_Ip_I_F(){
    return zig_assert_Ip_I_F(ret_Ip_I_F());
}
struct Ip_I_F zig_ret_Ip_I_F();
int assert_ret_Ip_I_F(){
    return assert_Ip_I_F(zig_ret_Ip_I_F());
}

int assert_Ip_I_I(struct Ip_I_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 5017) err = 2;
  if (lv.v3 != 20845) err = 3;
  return err;
}
struct Ip_I_I ret_Ip_I_I(){
    struct Ip_I_I lv = { .v1 = 0, .v2 = 5017, .v3 = 20845 };
    return lv;
}
int zig_assert_Ip_I_I(struct Ip_I_I);
int send_Ip_I_I(){
    return zig_assert_Ip_I_I(ret_Ip_I_I());
}
struct Ip_I_I zig_ret_Ip_I_I();
int assert_ret_Ip_I_I(){
    return assert_Ip_I_I(zig_ret_Ip_I_I());
}

int assert_Ip_I_Ip(struct Ip_I_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6958) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_I_Ip ret_Ip_I_Ip(){
    struct Ip_I_Ip lv = { .v1 = 0, .v2 = 6958, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_I_Ip(struct Ip_I_Ip);
int send_Ip_I_Ip(){
    return zig_assert_Ip_I_Ip(ret_Ip_I_Ip());
}
struct Ip_I_Ip zig_ret_Ip_I_Ip();
int assert_ret_Ip_I_Ip(){
    return assert_Ip_I_Ip(zig_ret_Ip_I_Ip());
}

int assert_Ip_I_L(struct Ip_I_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 8160) err = 2;
  if (lv.v3 != 1515) err = 3;
  return err;
}
struct Ip_I_L ret_Ip_I_L(){
    struct Ip_I_L lv = { .v1 = 0, .v2 = 8160, .v3 = 1515 };
    return lv;
}
int zig_assert_Ip_I_L(struct Ip_I_L);
int send_Ip_I_L(){
    return zig_assert_Ip_I_L(ret_Ip_I_L());
}
struct Ip_I_L zig_ret_Ip_I_L();
int assert_ret_Ip_I_L(){
    return assert_Ip_I_L(zig_ret_Ip_I_L());
}

int assert_Ip_I_S(struct Ip_I_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 8057) err = 2;
  if (lv.v3 != 9459) err = 3;
  return err;
}
struct Ip_I_S ret_Ip_I_S(){
    struct Ip_I_S lv = { .v1 = 0, .v2 = 8057, .v3 = 9459 };
    return lv;
}
int zig_assert_Ip_I_S(struct Ip_I_S);
int send_Ip_I_S(){
    return zig_assert_Ip_I_S(ret_Ip_I_S());
}
struct Ip_I_S zig_ret_Ip_I_S();
int assert_ret_Ip_I_S(){
    return assert_Ip_I_S(zig_ret_Ip_I_S());
}

int assert_Ip_I_Uc(struct Ip_I_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28491) err = 2;
  if (lv.v3 != 12) err = 3;
  return err;
}
struct Ip_I_Uc ret_Ip_I_Uc(){
    struct Ip_I_Uc lv = { .v1 = 0, .v2 = 28491, .v3 = 12 };
    return lv;
}
int zig_assert_Ip_I_Uc(struct Ip_I_Uc);
int send_Ip_I_Uc(){
    return zig_assert_Ip_I_Uc(ret_Ip_I_Uc());
}
struct Ip_I_Uc zig_ret_Ip_I_Uc();
int assert_ret_Ip_I_Uc(){
    return assert_Ip_I_Uc(zig_ret_Ip_I_Uc());
}

int assert_Ip_I_Ui(struct Ip_I_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28684) err = 2;
  if (lv.v3 != 30439) err = 3;
  return err;
}
struct Ip_I_Ui ret_Ip_I_Ui(){
    struct Ip_I_Ui lv = { .v1 = 0, .v2 = 28684, .v3 = 30439 };
    return lv;
}
int zig_assert_Ip_I_Ui(struct Ip_I_Ui);
int send_Ip_I_Ui(){
    return zig_assert_Ip_I_Ui(ret_Ip_I_Ui());
}
struct Ip_I_Ui zig_ret_Ip_I_Ui();
int assert_ret_Ip_I_Ui(){
    return assert_Ip_I_Ui(zig_ret_Ip_I_Ui());
}

int assert_Ip_I_Ul(struct Ip_I_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 4941) err = 2;
  if (lv.v3 != 459) err = 3;
  return err;
}
struct Ip_I_Ul ret_Ip_I_Ul(){
    struct Ip_I_Ul lv = { .v1 = 0, .v2 = 4941, .v3 = 459 };
    return lv;
}
int zig_assert_Ip_I_Ul(struct Ip_I_Ul);
int send_Ip_I_Ul(){
    return zig_assert_Ip_I_Ul(ret_Ip_I_Ul());
}
struct Ip_I_Ul zig_ret_Ip_I_Ul();
int assert_ret_Ip_I_Ul(){
    return assert_Ip_I_Ul(zig_ret_Ip_I_Ul());
}

int assert_Ip_I_Us(struct Ip_I_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21937) err = 2;
  if (lv.v3 != 12140) err = 3;
  return err;
}
struct Ip_I_Us ret_Ip_I_Us(){
    struct Ip_I_Us lv = { .v1 = 0, .v2 = 21937, .v3 = 12140 };
    return lv;
}
int zig_assert_Ip_I_Us(struct Ip_I_Us);
int send_Ip_I_Us(){
    return zig_assert_Ip_I_Us(ret_Ip_I_Us());
}
struct Ip_I_Us zig_ret_Ip_I_Us();
int assert_ret_Ip_I_Us(){
    return assert_Ip_I_Us(zig_ret_Ip_I_Us());
}

int assert_Ip_I_Vp(struct Ip_I_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10363) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_I_Vp ret_Ip_I_Vp(){
    struct Ip_I_Vp lv = { .v1 = 0, .v2 = 10363, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_I_Vp(struct Ip_I_Vp);
int send_Ip_I_Vp(){
    return zig_assert_Ip_I_Vp(ret_Ip_I_Vp());
}
struct Ip_I_Vp zig_ret_Ip_I_Vp();
int assert_ret_Ip_I_Vp(){
    return assert_Ip_I_Vp(zig_ret_Ip_I_Vp());
}

int assert_Ip_Ip(struct Ip_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Ip_Ip ret_Ip_Ip(){
    struct Ip_Ip lv = { .v1 = 0, .v2 = 0 };
    return lv;
}
int zig_assert_Ip_Ip(struct Ip_Ip);
int send_Ip_Ip(){
    return zig_assert_Ip_Ip(ret_Ip_Ip());
}
struct Ip_Ip zig_ret_Ip_Ip();
int assert_ret_Ip_Ip(){
    return assert_Ip_Ip(zig_ret_Ip_Ip());
}

int assert_Ip_Ip_C(struct Ip_Ip_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 114) err = 3;
  return err;
}
struct Ip_Ip_C ret_Ip_Ip_C(){
    struct Ip_Ip_C lv = { .v1 = 0, .v2 = 0, .v3 = 114 };
    return lv;
}
int zig_assert_Ip_Ip_C(struct Ip_Ip_C);
int send_Ip_Ip_C(){
    return zig_assert_Ip_Ip_C(ret_Ip_Ip_C());
}
struct Ip_Ip_C zig_ret_Ip_Ip_C();
int assert_ret_Ip_Ip_C(){
    return assert_Ip_Ip_C(zig_ret_Ip_Ip_C());
}

int assert_Ip_Ip_D(struct Ip_Ip_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Ip_Ip_D ret_Ip_Ip_D(){
    struct Ip_Ip_D lv = { .v1 = 0, .v2 = 0, .v3 = -0.25 };
    return lv;
}
int zig_assert_Ip_Ip_D(struct Ip_Ip_D);
int send_Ip_Ip_D(){
    return zig_assert_Ip_Ip_D(ret_Ip_Ip_D());
}
struct Ip_Ip_D zig_ret_Ip_Ip_D();
int assert_ret_Ip_Ip_D(){
    return assert_Ip_Ip_D(zig_ret_Ip_Ip_D());
}

int assert_Ip_Ip_F(struct Ip_Ip_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Ip_Ip_F ret_Ip_Ip_F(){
    struct Ip_Ip_F lv = { .v1 = 0, .v2 = 0, .v3 = 0.875 };
    return lv;
}
int zig_assert_Ip_Ip_F(struct Ip_Ip_F);
int send_Ip_Ip_F(){
    return zig_assert_Ip_Ip_F(ret_Ip_Ip_F());
}
struct Ip_Ip_F zig_ret_Ip_Ip_F();
int assert_ret_Ip_Ip_F(){
    return assert_Ip_Ip_F(zig_ret_Ip_Ip_F());
}

int assert_Ip_Ip_I(struct Ip_Ip_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 280) err = 3;
  return err;
}
struct Ip_Ip_I ret_Ip_Ip_I(){
    struct Ip_Ip_I lv = { .v1 = 0, .v2 = 0, .v3 = 280 };
    return lv;
}
int zig_assert_Ip_Ip_I(struct Ip_Ip_I);
int send_Ip_Ip_I(){
    return zig_assert_Ip_Ip_I(ret_Ip_Ip_I());
}
struct Ip_Ip_I zig_ret_Ip_Ip_I();
int assert_ret_Ip_Ip_I(){
    return assert_Ip_Ip_I(zig_ret_Ip_Ip_I());
}

int assert_Ip_Ip_Ip(struct Ip_Ip_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Ip_Ip ret_Ip_Ip_Ip(){
    struct Ip_Ip_Ip lv = { .v1 = 0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Ip_Ip(struct Ip_Ip_Ip);
int send_Ip_Ip_Ip(){
    return zig_assert_Ip_Ip_Ip(ret_Ip_Ip_Ip());
}
struct Ip_Ip_Ip zig_ret_Ip_Ip_Ip();
int assert_ret_Ip_Ip_Ip(){
    return assert_Ip_Ip_Ip(zig_ret_Ip_Ip_Ip());
}

int assert_Ip_Ip_L(struct Ip_Ip_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 22120) err = 3;
  return err;
}
struct Ip_Ip_L ret_Ip_Ip_L(){
    struct Ip_Ip_L lv = { .v1 = 0, .v2 = 0, .v3 = 22120 };
    return lv;
}
int zig_assert_Ip_Ip_L(struct Ip_Ip_L);
int send_Ip_Ip_L(){
    return zig_assert_Ip_Ip_L(ret_Ip_Ip_L());
}
struct Ip_Ip_L zig_ret_Ip_Ip_L();
int assert_ret_Ip_Ip_L(){
    return assert_Ip_Ip_L(zig_ret_Ip_Ip_L());
}

int assert_Ip_Ip_S(struct Ip_Ip_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 32235) err = 3;
  return err;
}
struct Ip_Ip_S ret_Ip_Ip_S(){
    struct Ip_Ip_S lv = { .v1 = 0, .v2 = 0, .v3 = 32235 };
    return lv;
}
int zig_assert_Ip_Ip_S(struct Ip_Ip_S);
int send_Ip_Ip_S(){
    return zig_assert_Ip_Ip_S(ret_Ip_Ip_S());
}
struct Ip_Ip_S zig_ret_Ip_Ip_S();
int assert_ret_Ip_Ip_S(){
    return assert_Ip_Ip_S(zig_ret_Ip_Ip_S());
}

int assert_Ip_Ip_Uc(struct Ip_Ip_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 78) err = 3;
  return err;
}
struct Ip_Ip_Uc ret_Ip_Ip_Uc(){
    struct Ip_Ip_Uc lv = { .v1 = 0, .v2 = 0, .v3 = 78 };
    return lv;
}
int zig_assert_Ip_Ip_Uc(struct Ip_Ip_Uc);
int send_Ip_Ip_Uc(){
    return zig_assert_Ip_Ip_Uc(ret_Ip_Ip_Uc());
}
struct Ip_Ip_Uc zig_ret_Ip_Ip_Uc();
int assert_ret_Ip_Ip_Uc(){
    return assert_Ip_Ip_Uc(zig_ret_Ip_Ip_Uc());
}

int assert_Ip_Ip_Ui(struct Ip_Ip_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 18551) err = 3;
  return err;
}
struct Ip_Ip_Ui ret_Ip_Ip_Ui(){
    struct Ip_Ip_Ui lv = { .v1 = 0, .v2 = 0, .v3 = 18551 };
    return lv;
}
int zig_assert_Ip_Ip_Ui(struct Ip_Ip_Ui);
int send_Ip_Ip_Ui(){
    return zig_assert_Ip_Ip_Ui(ret_Ip_Ip_Ui());
}
struct Ip_Ip_Ui zig_ret_Ip_Ip_Ui();
int assert_ret_Ip_Ip_Ui(){
    return assert_Ip_Ip_Ui(zig_ret_Ip_Ip_Ui());
}

int assert_Ip_Ip_Ul(struct Ip_Ip_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 15251) err = 3;
  return err;
}
struct Ip_Ip_Ul ret_Ip_Ip_Ul(){
    struct Ip_Ip_Ul lv = { .v1 = 0, .v2 = 0, .v3 = 15251 };
    return lv;
}
int zig_assert_Ip_Ip_Ul(struct Ip_Ip_Ul);
int send_Ip_Ip_Ul(){
    return zig_assert_Ip_Ip_Ul(ret_Ip_Ip_Ul());
}
struct Ip_Ip_Ul zig_ret_Ip_Ip_Ul();
int assert_ret_Ip_Ip_Ul(){
    return assert_Ip_Ip_Ul(zig_ret_Ip_Ip_Ul());
}

int assert_Ip_Ip_Us(struct Ip_Ip_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 5948) err = 3;
  return err;
}
struct Ip_Ip_Us ret_Ip_Ip_Us(){
    struct Ip_Ip_Us lv = { .v1 = 0, .v2 = 0, .v3 = 5948 };
    return lv;
}
int zig_assert_Ip_Ip_Us(struct Ip_Ip_Us);
int send_Ip_Ip_Us(){
    return zig_assert_Ip_Ip_Us(ret_Ip_Ip_Us());
}
struct Ip_Ip_Us zig_ret_Ip_Ip_Us();
int assert_ret_Ip_Ip_Us(){
    return assert_Ip_Ip_Us(zig_ret_Ip_Ip_Us());
}

int assert_Ip_Ip_Vp(struct Ip_Ip_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Ip_Vp ret_Ip_Ip_Vp(){
    struct Ip_Ip_Vp lv = { .v1 = 0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Ip_Vp(struct Ip_Ip_Vp);
int send_Ip_Ip_Vp(){
    return zig_assert_Ip_Ip_Vp(ret_Ip_Ip_Vp());
}
struct Ip_Ip_Vp zig_ret_Ip_Ip_Vp();
int assert_ret_Ip_Ip_Vp(){
    return assert_Ip_Ip_Vp(zig_ret_Ip_Ip_Vp());
}

int assert_Ip_L(struct Ip_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21125) err = 2;
  return err;
}
struct Ip_L ret_Ip_L(){
    struct Ip_L lv = { .v1 = 0, .v2 = 21125 };
    return lv;
}
int zig_assert_Ip_L(struct Ip_L);
int send_Ip_L(){
    return zig_assert_Ip_L(ret_Ip_L());
}
struct Ip_L zig_ret_Ip_L();
int assert_ret_Ip_L(){
    return assert_Ip_L(zig_ret_Ip_L());
}

int assert_Ip_L_C(struct Ip_L_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1312) err = 2;
  if (lv.v3 != 12) err = 3;
  return err;
}
struct Ip_L_C ret_Ip_L_C(){
    struct Ip_L_C lv = { .v1 = 0, .v2 = 1312, .v3 = 12 };
    return lv;
}
int zig_assert_Ip_L_C(struct Ip_L_C);
int send_Ip_L_C(){
    return zig_assert_Ip_L_C(ret_Ip_L_C());
}
struct Ip_L_C zig_ret_Ip_L_C();
int assert_ret_Ip_L_C(){
    return assert_Ip_L_C(zig_ret_Ip_L_C());
}

int assert_Ip_L_D(struct Ip_L_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 27466) err = 2;
  if (lv.v3 != 7.0) err = 3;
  return err;
}
struct Ip_L_D ret_Ip_L_D(){
    struct Ip_L_D lv = { .v1 = 0, .v2 = 27466, .v3 = 7.0 };
    return lv;
}
int zig_assert_Ip_L_D(struct Ip_L_D);
int send_Ip_L_D(){
    return zig_assert_Ip_L_D(ret_Ip_L_D());
}
struct Ip_L_D zig_ret_Ip_L_D();
int assert_ret_Ip_L_D(){
    return assert_Ip_L_D(zig_ret_Ip_L_D());
}

int assert_Ip_L_F(struct Ip_L_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 17855) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Ip_L_F ret_Ip_L_F(){
    struct Ip_L_F lv = { .v1 = 0, .v2 = 17855, .v3 = 1.0 };
    return lv;
}
int zig_assert_Ip_L_F(struct Ip_L_F);
int send_Ip_L_F(){
    return zig_assert_Ip_L_F(ret_Ip_L_F());
}
struct Ip_L_F zig_ret_Ip_L_F();
int assert_ret_Ip_L_F(){
    return assert_Ip_L_F(zig_ret_Ip_L_F());
}

int assert_Ip_L_I(struct Ip_L_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7654) err = 2;
  if (lv.v3 != 10911) err = 3;
  return err;
}
struct Ip_L_I ret_Ip_L_I(){
    struct Ip_L_I lv = { .v1 = 0, .v2 = 7654, .v3 = 10911 };
    return lv;
}
int zig_assert_Ip_L_I(struct Ip_L_I);
int send_Ip_L_I(){
    return zig_assert_Ip_L_I(ret_Ip_L_I());
}
struct Ip_L_I zig_ret_Ip_L_I();
int assert_ret_Ip_L_I(){
    return assert_Ip_L_I(zig_ret_Ip_L_I());
}

int assert_Ip_L_Ip(struct Ip_L_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26859) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_L_Ip ret_Ip_L_Ip(){
    struct Ip_L_Ip lv = { .v1 = 0, .v2 = 26859, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_L_Ip(struct Ip_L_Ip);
int send_Ip_L_Ip(){
    return zig_assert_Ip_L_Ip(ret_Ip_L_Ip());
}
struct Ip_L_Ip zig_ret_Ip_L_Ip();
int assert_ret_Ip_L_Ip(){
    return assert_Ip_L_Ip(zig_ret_Ip_L_Ip());
}

int assert_Ip_L_L(struct Ip_L_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 18638) err = 2;
  if (lv.v3 != 12483) err = 3;
  return err;
}
struct Ip_L_L ret_Ip_L_L(){
    struct Ip_L_L lv = { .v1 = 0, .v2 = 18638, .v3 = 12483 };
    return lv;
}
int zig_assert_Ip_L_L(struct Ip_L_L);
int send_Ip_L_L(){
    return zig_assert_Ip_L_L(ret_Ip_L_L());
}
struct Ip_L_L zig_ret_Ip_L_L();
int assert_ret_Ip_L_L(){
    return assert_Ip_L_L(zig_ret_Ip_L_L());
}

int assert_Ip_L_S(struct Ip_L_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28984) err = 2;
  if (lv.v3 != 32672) err = 3;
  return err;
}
struct Ip_L_S ret_Ip_L_S(){
    struct Ip_L_S lv = { .v1 = 0, .v2 = 28984, .v3 = 32672 };
    return lv;
}
int zig_assert_Ip_L_S(struct Ip_L_S);
int send_Ip_L_S(){
    return zig_assert_Ip_L_S(ret_Ip_L_S());
}
struct Ip_L_S zig_ret_Ip_L_S();
int assert_ret_Ip_L_S(){
    return assert_Ip_L_S(zig_ret_Ip_L_S());
}

int assert_Ip_L_Uc(struct Ip_L_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 9817) err = 2;
  if (lv.v3 != 64) err = 3;
  return err;
}
struct Ip_L_Uc ret_Ip_L_Uc(){
    struct Ip_L_Uc lv = { .v1 = 0, .v2 = 9817, .v3 = 64 };
    return lv;
}
int zig_assert_Ip_L_Uc(struct Ip_L_Uc);
int send_Ip_L_Uc(){
    return zig_assert_Ip_L_Uc(ret_Ip_L_Uc());
}
struct Ip_L_Uc zig_ret_Ip_L_Uc();
int assert_ret_Ip_L_Uc(){
    return assert_Ip_L_Uc(zig_ret_Ip_L_Uc());
}

int assert_Ip_L_Ui(struct Ip_L_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28354) err = 2;
  if (lv.v3 != 7440) err = 3;
  return err;
}
struct Ip_L_Ui ret_Ip_L_Ui(){
    struct Ip_L_Ui lv = { .v1 = 0, .v2 = 28354, .v3 = 7440 };
    return lv;
}
int zig_assert_Ip_L_Ui(struct Ip_L_Ui);
int send_Ip_L_Ui(){
    return zig_assert_Ip_L_Ui(ret_Ip_L_Ui());
}
struct Ip_L_Ui zig_ret_Ip_L_Ui();
int assert_ret_Ip_L_Ui(){
    return assert_Ip_L_Ui(zig_ret_Ip_L_Ui());
}

int assert_Ip_L_Ul(struct Ip_L_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7711) err = 2;
  if (lv.v3 != 11119) err = 3;
  return err;
}
struct Ip_L_Ul ret_Ip_L_Ul(){
    struct Ip_L_Ul lv = { .v1 = 0, .v2 = 7711, .v3 = 11119 };
    return lv;
}
int zig_assert_Ip_L_Ul(struct Ip_L_Ul);
int send_Ip_L_Ul(){
    return zig_assert_Ip_L_Ul(ret_Ip_L_Ul());
}
struct Ip_L_Ul zig_ret_Ip_L_Ul();
int assert_ret_Ip_L_Ul(){
    return assert_Ip_L_Ul(zig_ret_Ip_L_Ul());
}

int assert_Ip_L_Us(struct Ip_L_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 11565) err = 2;
  if (lv.v3 != 21325) err = 3;
  return err;
}
struct Ip_L_Us ret_Ip_L_Us(){
    struct Ip_L_Us lv = { .v1 = 0, .v2 = 11565, .v3 = 21325 };
    return lv;
}
int zig_assert_Ip_L_Us(struct Ip_L_Us);
int send_Ip_L_Us(){
    return zig_assert_Ip_L_Us(ret_Ip_L_Us());
}
struct Ip_L_Us zig_ret_Ip_L_Us();
int assert_ret_Ip_L_Us(){
    return assert_Ip_L_Us(zig_ret_Ip_L_Us());
}

int assert_Ip_L_Vp(struct Ip_L_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 5895) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_L_Vp ret_Ip_L_Vp(){
    struct Ip_L_Vp lv = { .v1 = 0, .v2 = 5895, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_L_Vp(struct Ip_L_Vp);
int send_Ip_L_Vp(){
    return zig_assert_Ip_L_Vp(ret_Ip_L_Vp());
}
struct Ip_L_Vp zig_ret_Ip_L_Vp();
int assert_ret_Ip_L_Vp(){
    return assert_Ip_L_Vp(zig_ret_Ip_L_Vp());
}

int assert_Ip_S(struct Ip_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 9691) err = 2;
  return err;
}
struct Ip_S ret_Ip_S(){
    struct Ip_S lv = { .v1 = 0, .v2 = 9691 };
    return lv;
}
int zig_assert_Ip_S(struct Ip_S);
int send_Ip_S(){
    return zig_assert_Ip_S(ret_Ip_S());
}
struct Ip_S zig_ret_Ip_S();
int assert_ret_Ip_S(){
    return assert_Ip_S(zig_ret_Ip_S());
}

int assert_Ip_S_C(struct Ip_S_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26200) err = 2;
  if (lv.v3 != 112) err = 3;
  return err;
}
struct Ip_S_C ret_Ip_S_C(){
    struct Ip_S_C lv = { .v1 = 0, .v2 = 26200, .v3 = 112 };
    return lv;
}
int zig_assert_Ip_S_C(struct Ip_S_C);
int send_Ip_S_C(){
    return zig_assert_Ip_S_C(ret_Ip_S_C());
}
struct Ip_S_C zig_ret_Ip_S_C();
int assert_ret_Ip_S_C(){
    return assert_Ip_S_C(zig_ret_Ip_S_C());
}

int assert_Ip_S_D(struct Ip_S_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10971) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Ip_S_D ret_Ip_S_D(){
    struct Ip_S_D lv = { .v1 = 0, .v2 = 10971, .v3 = -2.125 };
    return lv;
}
int zig_assert_Ip_S_D(struct Ip_S_D);
int send_Ip_S_D(){
    return zig_assert_Ip_S_D(ret_Ip_S_D());
}
struct Ip_S_D zig_ret_Ip_S_D();
int assert_ret_Ip_S_D(){
    return assert_Ip_S_D(zig_ret_Ip_S_D());
}

int assert_Ip_S_F(struct Ip_S_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6508) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Ip_S_F ret_Ip_S_F(){
    struct Ip_S_F lv = { .v1 = 0, .v2 = 6508, .v3 = -0.25 };
    return lv;
}
int zig_assert_Ip_S_F(struct Ip_S_F);
int send_Ip_S_F(){
    return zig_assert_Ip_S_F(ret_Ip_S_F());
}
struct Ip_S_F zig_ret_Ip_S_F();
int assert_ret_Ip_S_F(){
    return assert_Ip_S_F(zig_ret_Ip_S_F());
}

int assert_Ip_S_I(struct Ip_S_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10414) err = 2;
  if (lv.v3 != 28549) err = 3;
  return err;
}
struct Ip_S_I ret_Ip_S_I(){
    struct Ip_S_I lv = { .v1 = 0, .v2 = 10414, .v3 = 28549 };
    return lv;
}
int zig_assert_Ip_S_I(struct Ip_S_I);
int send_Ip_S_I(){
    return zig_assert_Ip_S_I(ret_Ip_S_I());
}
struct Ip_S_I zig_ret_Ip_S_I();
int assert_ret_Ip_S_I(){
    return assert_Ip_S_I(zig_ret_Ip_S_I());
}

int assert_Ip_S_Ip(struct Ip_S_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15406) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_S_Ip ret_Ip_S_Ip(){
    struct Ip_S_Ip lv = { .v1 = 0, .v2 = 15406, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_S_Ip(struct Ip_S_Ip);
int send_Ip_S_Ip(){
    return zig_assert_Ip_S_Ip(ret_Ip_S_Ip());
}
struct Ip_S_Ip zig_ret_Ip_S_Ip();
int assert_ret_Ip_S_Ip(){
    return assert_Ip_S_Ip(zig_ret_Ip_S_Ip());
}

int assert_Ip_S_L(struct Ip_S_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19761) err = 2;
  if (lv.v3 != 19245) err = 3;
  return err;
}
struct Ip_S_L ret_Ip_S_L(){
    struct Ip_S_L lv = { .v1 = 0, .v2 = 19761, .v3 = 19245 };
    return lv;
}
int zig_assert_Ip_S_L(struct Ip_S_L);
int send_Ip_S_L(){
    return zig_assert_Ip_S_L(ret_Ip_S_L());
}
struct Ip_S_L zig_ret_Ip_S_L();
int assert_ret_Ip_S_L(){
    return assert_Ip_S_L(zig_ret_Ip_S_L());
}

int assert_Ip_S_S(struct Ip_S_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 18559) err = 2;
  if (lv.v3 != 4079) err = 3;
  return err;
}
struct Ip_S_S ret_Ip_S_S(){
    struct Ip_S_S lv = { .v1 = 0, .v2 = 18559, .v3 = 4079 };
    return lv;
}
int zig_assert_Ip_S_S(struct Ip_S_S);
int send_Ip_S_S(){
    return zig_assert_Ip_S_S(ret_Ip_S_S());
}
struct Ip_S_S zig_ret_Ip_S_S();
int assert_ret_Ip_S_S(){
    return assert_Ip_S_S(zig_ret_Ip_S_S());
}

int assert_Ip_S_Uc(struct Ip_S_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 25806) err = 2;
  if (lv.v3 != 10) err = 3;
  return err;
}
struct Ip_S_Uc ret_Ip_S_Uc(){
    struct Ip_S_Uc lv = { .v1 = 0, .v2 = 25806, .v3 = 10 };
    return lv;
}
int zig_assert_Ip_S_Uc(struct Ip_S_Uc);
int send_Ip_S_Uc(){
    return zig_assert_Ip_S_Uc(ret_Ip_S_Uc());
}
struct Ip_S_Uc zig_ret_Ip_S_Uc();
int assert_ret_Ip_S_Uc(){
    return assert_Ip_S_Uc(zig_ret_Ip_S_Uc());
}

int assert_Ip_S_Ui(struct Ip_S_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 23886) err = 2;
  if (lv.v3 != 4382) err = 3;
  return err;
}
struct Ip_S_Ui ret_Ip_S_Ui(){
    struct Ip_S_Ui lv = { .v1 = 0, .v2 = 23886, .v3 = 4382 };
    return lv;
}
int zig_assert_Ip_S_Ui(struct Ip_S_Ui);
int send_Ip_S_Ui(){
    return zig_assert_Ip_S_Ui(ret_Ip_S_Ui());
}
struct Ip_S_Ui zig_ret_Ip_S_Ui();
int assert_ret_Ip_S_Ui(){
    return assert_Ip_S_Ui(zig_ret_Ip_S_Ui());
}

int assert_Ip_S_Ul(struct Ip_S_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15124) err = 2;
  if (lv.v3 != 473) err = 3;
  return err;
}
struct Ip_S_Ul ret_Ip_S_Ul(){
    struct Ip_S_Ul lv = { .v1 = 0, .v2 = 15124, .v3 = 473 };
    return lv;
}
int zig_assert_Ip_S_Ul(struct Ip_S_Ul);
int send_Ip_S_Ul(){
    return zig_assert_Ip_S_Ul(ret_Ip_S_Ul());
}
struct Ip_S_Ul zig_ret_Ip_S_Ul();
int assert_ret_Ip_S_Ul(){
    return assert_Ip_S_Ul(zig_ret_Ip_S_Ul());
}

int assert_Ip_S_Us(struct Ip_S_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 152) err = 2;
  if (lv.v3 != 18830) err = 3;
  return err;
}
struct Ip_S_Us ret_Ip_S_Us(){
    struct Ip_S_Us lv = { .v1 = 0, .v2 = 152, .v3 = 18830 };
    return lv;
}
int zig_assert_Ip_S_Us(struct Ip_S_Us);
int send_Ip_S_Us(){
    return zig_assert_Ip_S_Us(ret_Ip_S_Us());
}
struct Ip_S_Us zig_ret_Ip_S_Us();
int assert_ret_Ip_S_Us(){
    return assert_Ip_S_Us(zig_ret_Ip_S_Us());
}

int assert_Ip_S_Vp(struct Ip_S_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15723) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_S_Vp ret_Ip_S_Vp(){
    struct Ip_S_Vp lv = { .v1 = 0, .v2 = 15723, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_S_Vp(struct Ip_S_Vp);
int send_Ip_S_Vp(){
    return zig_assert_Ip_S_Vp(ret_Ip_S_Vp());
}
struct Ip_S_Vp zig_ret_Ip_S_Vp();
int assert_ret_Ip_S_Vp(){
    return assert_Ip_S_Vp(zig_ret_Ip_S_Vp());
}

int assert_Ip_Uc(struct Ip_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 23) err = 2;
  return err;
}
struct Ip_Uc ret_Ip_Uc(){
    struct Ip_Uc lv = { .v1 = 0, .v2 = 23 };
    return lv;
}
int zig_assert_Ip_Uc(struct Ip_Uc);
int send_Ip_Uc(){
    return zig_assert_Ip_Uc(ret_Ip_Uc());
}
struct Ip_Uc zig_ret_Ip_Uc();
int assert_ret_Ip_Uc(){
    return assert_Ip_Uc(zig_ret_Ip_Uc());
}

int assert_Ip_Uc_C(struct Ip_Uc_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 60) err = 2;
  if (lv.v3 != 27) err = 3;
  return err;
}
struct Ip_Uc_C ret_Ip_Uc_C(){
    struct Ip_Uc_C lv = { .v1 = 0, .v2 = 60, .v3 = 27 };
    return lv;
}
int zig_assert_Ip_Uc_C(struct Ip_Uc_C);
int send_Ip_Uc_C(){
    return zig_assert_Ip_Uc_C(ret_Ip_Uc_C());
}
struct Ip_Uc_C zig_ret_Ip_Uc_C();
int assert_ret_Ip_Uc_C(){
    return assert_Ip_Uc_C(zig_ret_Ip_Uc_C());
}

int assert_Ip_Uc_D(struct Ip_Uc_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 100) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct Ip_Uc_D ret_Ip_Uc_D(){
    struct Ip_Uc_D lv = { .v1 = 0, .v2 = 100, .v3 = 1.0 };
    return lv;
}
int zig_assert_Ip_Uc_D(struct Ip_Uc_D);
int send_Ip_Uc_D(){
    return zig_assert_Ip_Uc_D(ret_Ip_Uc_D());
}
struct Ip_Uc_D zig_ret_Ip_Uc_D();
int assert_ret_Ip_Uc_D(){
    return assert_Ip_Uc_D(zig_ret_Ip_Uc_D());
}

int assert_Ip_Uc_F(struct Ip_Uc_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 30) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Ip_Uc_F ret_Ip_Uc_F(){
    struct Ip_Uc_F lv = { .v1 = 0, .v2 = 30, .v3 = 0.875 };
    return lv;
}
int zig_assert_Ip_Uc_F(struct Ip_Uc_F);
int send_Ip_Uc_F(){
    return zig_assert_Ip_Uc_F(ret_Ip_Uc_F());
}
struct Ip_Uc_F zig_ret_Ip_Uc_F();
int assert_ret_Ip_Uc_F(){
    return assert_Ip_Uc_F(zig_ret_Ip_Uc_F());
}

int assert_Ip_Uc_I(struct Ip_Uc_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 80) err = 2;
  if (lv.v3 != 21664) err = 3;
  return err;
}
struct Ip_Uc_I ret_Ip_Uc_I(){
    struct Ip_Uc_I lv = { .v1 = 0, .v2 = 80, .v3 = 21664 };
    return lv;
}
int zig_assert_Ip_Uc_I(struct Ip_Uc_I);
int send_Ip_Uc_I(){
    return zig_assert_Ip_Uc_I(ret_Ip_Uc_I());
}
struct Ip_Uc_I zig_ret_Ip_Uc_I();
int assert_ret_Ip_Uc_I(){
    return assert_Ip_Uc_I(zig_ret_Ip_Uc_I());
}

int assert_Ip_Uc_Ip(struct Ip_Uc_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 48) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Uc_Ip ret_Ip_Uc_Ip(){
    struct Ip_Uc_Ip lv = { .v1 = 0, .v2 = 48, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Uc_Ip(struct Ip_Uc_Ip);
int send_Ip_Uc_Ip(){
    return zig_assert_Ip_Uc_Ip(ret_Ip_Uc_Ip());
}
struct Ip_Uc_Ip zig_ret_Ip_Uc_Ip();
int assert_ret_Ip_Uc_Ip(){
    return assert_Ip_Uc_Ip(zig_ret_Ip_Uc_Ip());
}

int assert_Ip_Uc_L(struct Ip_Uc_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 81) err = 2;
  if (lv.v3 != 23135) err = 3;
  return err;
}
struct Ip_Uc_L ret_Ip_Uc_L(){
    struct Ip_Uc_L lv = { .v1 = 0, .v2 = 81, .v3 = 23135 };
    return lv;
}
int zig_assert_Ip_Uc_L(struct Ip_Uc_L);
int send_Ip_Uc_L(){
    return zig_assert_Ip_Uc_L(ret_Ip_Uc_L());
}
struct Ip_Uc_L zig_ret_Ip_Uc_L();
int assert_ret_Ip_Uc_L(){
    return assert_Ip_Uc_L(zig_ret_Ip_Uc_L());
}

int assert_Ip_Uc_S(struct Ip_Uc_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 79) err = 2;
  if (lv.v3 != 16891) err = 3;
  return err;
}
struct Ip_Uc_S ret_Ip_Uc_S(){
    struct Ip_Uc_S lv = { .v1 = 0, .v2 = 79, .v3 = 16891 };
    return lv;
}
int zig_assert_Ip_Uc_S(struct Ip_Uc_S);
int send_Ip_Uc_S(){
    return zig_assert_Ip_Uc_S(ret_Ip_Uc_S());
}
struct Ip_Uc_S zig_ret_Ip_Uc_S();
int assert_ret_Ip_Uc_S(){
    return assert_Ip_Uc_S(zig_ret_Ip_Uc_S());
}

int assert_Ip_Uc_Uc(struct Ip_Uc_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 8) err = 2;
  if (lv.v3 != 27) err = 3;
  return err;
}
struct Ip_Uc_Uc ret_Ip_Uc_Uc(){
    struct Ip_Uc_Uc lv = { .v1 = 0, .v2 = 8, .v3 = 27 };
    return lv;
}
int zig_assert_Ip_Uc_Uc(struct Ip_Uc_Uc);
int send_Ip_Uc_Uc(){
    return zig_assert_Ip_Uc_Uc(ret_Ip_Uc_Uc());
}
struct Ip_Uc_Uc zig_ret_Ip_Uc_Uc();
int assert_ret_Ip_Uc_Uc(){
    return assert_Ip_Uc_Uc(zig_ret_Ip_Uc_Uc());
}

int assert_Ip_Uc_Ui(struct Ip_Uc_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 49) err = 2;
  if (lv.v3 != 23504) err = 3;
  return err;
}
struct Ip_Uc_Ui ret_Ip_Uc_Ui(){
    struct Ip_Uc_Ui lv = { .v1 = 0, .v2 = 49, .v3 = 23504 };
    return lv;
}
int zig_assert_Ip_Uc_Ui(struct Ip_Uc_Ui);
int send_Ip_Uc_Ui(){
    return zig_assert_Ip_Uc_Ui(ret_Ip_Uc_Ui());
}
struct Ip_Uc_Ui zig_ret_Ip_Uc_Ui();
int assert_ret_Ip_Uc_Ui(){
    return assert_Ip_Uc_Ui(zig_ret_Ip_Uc_Ui());
}

int assert_Ip_Uc_Ul(struct Ip_Uc_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 77) err = 2;
  if (lv.v3 != 14264) err = 3;
  return err;
}
struct Ip_Uc_Ul ret_Ip_Uc_Ul(){
    struct Ip_Uc_Ul lv = { .v1 = 0, .v2 = 77, .v3 = 14264 };
    return lv;
}
int zig_assert_Ip_Uc_Ul(struct Ip_Uc_Ul);
int send_Ip_Uc_Ul(){
    return zig_assert_Ip_Uc_Ul(ret_Ip_Uc_Ul());
}
struct Ip_Uc_Ul zig_ret_Ip_Uc_Ul();
int assert_ret_Ip_Uc_Ul(){
    return assert_Ip_Uc_Ul(zig_ret_Ip_Uc_Ul());
}

int assert_Ip_Uc_Us(struct Ip_Uc_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 92) err = 2;
  if (lv.v3 != 21738) err = 3;
  return err;
}
struct Ip_Uc_Us ret_Ip_Uc_Us(){
    struct Ip_Uc_Us lv = { .v1 = 0, .v2 = 92, .v3 = 21738 };
    return lv;
}
int zig_assert_Ip_Uc_Us(struct Ip_Uc_Us);
int send_Ip_Uc_Us(){
    return zig_assert_Ip_Uc_Us(ret_Ip_Uc_Us());
}
struct Ip_Uc_Us zig_ret_Ip_Uc_Us();
int assert_ret_Ip_Uc_Us(){
    return assert_Ip_Uc_Us(zig_ret_Ip_Uc_Us());
}

int assert_Ip_Uc_Vp(struct Ip_Uc_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 9) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Uc_Vp ret_Ip_Uc_Vp(){
    struct Ip_Uc_Vp lv = { .v1 = 0, .v2 = 9, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Uc_Vp(struct Ip_Uc_Vp);
int send_Ip_Uc_Vp(){
    return zig_assert_Ip_Uc_Vp(ret_Ip_Uc_Vp());
}
struct Ip_Uc_Vp zig_ret_Ip_Uc_Vp();
int assert_ret_Ip_Uc_Vp(){
    return assert_Ip_Uc_Vp(zig_ret_Ip_Uc_Vp());
}

int assert_Ip_Ui(struct Ip_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13021) err = 2;
  return err;
}
struct Ip_Ui ret_Ip_Ui(){
    struct Ip_Ui lv = { .v1 = 0, .v2 = 13021 };
    return lv;
}
int zig_assert_Ip_Ui(struct Ip_Ui);
int send_Ip_Ui(){
    return zig_assert_Ip_Ui(ret_Ip_Ui());
}
struct Ip_Ui zig_ret_Ip_Ui();
int assert_ret_Ip_Ui(){
    return assert_Ip_Ui(zig_ret_Ip_Ui());
}

int assert_Ip_Ui_C(struct Ip_Ui_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 19997) err = 2;
  if (lv.v3 != 43) err = 3;
  return err;
}
struct Ip_Ui_C ret_Ip_Ui_C(){
    struct Ip_Ui_C lv = { .v1 = 0, .v2 = 19997, .v3 = 43 };
    return lv;
}
int zig_assert_Ip_Ui_C(struct Ip_Ui_C);
int send_Ip_Ui_C(){
    return zig_assert_Ip_Ui_C(ret_Ip_Ui_C());
}
struct Ip_Ui_C zig_ret_Ip_Ui_C();
int assert_ret_Ip_Ui_C(){
    return assert_Ip_Ui_C(zig_ret_Ip_Ui_C());
}

int assert_Ip_Ui_D(struct Ip_Ui_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21799) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Ip_Ui_D ret_Ip_Ui_D(){
    struct Ip_Ui_D lv = { .v1 = 0, .v2 = 21799, .v3 = -0.25 };
    return lv;
}
int zig_assert_Ip_Ui_D(struct Ip_Ui_D);
int send_Ip_Ui_D(){
    return zig_assert_Ip_Ui_D(ret_Ip_Ui_D());
}
struct Ip_Ui_D zig_ret_Ip_Ui_D();
int assert_ret_Ip_Ui_D(){
    return assert_Ip_Ui_D(zig_ret_Ip_Ui_D());
}

int assert_Ip_Ui_F(struct Ip_Ui_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 5378) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Ip_Ui_F ret_Ip_Ui_F(){
    struct Ip_Ui_F lv = { .v1 = 0, .v2 = 5378, .v3 = -2.125 };
    return lv;
}
int zig_assert_Ip_Ui_F(struct Ip_Ui_F);
int send_Ip_Ui_F(){
    return zig_assert_Ip_Ui_F(ret_Ip_Ui_F());
}
struct Ip_Ui_F zig_ret_Ip_Ui_F();
int assert_ret_Ip_Ui_F(){
    return assert_Ip_Ui_F(zig_ret_Ip_Ui_F());
}

int assert_Ip_Ui_I(struct Ip_Ui_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 25809) err = 2;
  if (lv.v3 != 23075) err = 3;
  return err;
}
struct Ip_Ui_I ret_Ip_Ui_I(){
    struct Ip_Ui_I lv = { .v1 = 0, .v2 = 25809, .v3 = 23075 };
    return lv;
}
int zig_assert_Ip_Ui_I(struct Ip_Ui_I);
int send_Ip_Ui_I(){
    return zig_assert_Ip_Ui_I(ret_Ip_Ui_I());
}
struct Ip_Ui_I zig_ret_Ip_Ui_I();
int assert_ret_Ip_Ui_I(){
    return assert_Ip_Ui_I(zig_ret_Ip_Ui_I());
}

int assert_Ip_Ui_Ip(struct Ip_Ui_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6521) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Ui_Ip ret_Ip_Ui_Ip(){
    struct Ip_Ui_Ip lv = { .v1 = 0, .v2 = 6521, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Ui_Ip(struct Ip_Ui_Ip);
int send_Ip_Ui_Ip(){
    return zig_assert_Ip_Ui_Ip(ret_Ip_Ui_Ip());
}
struct Ip_Ui_Ip zig_ret_Ip_Ui_Ip();
int assert_ret_Ip_Ui_Ip(){
    return assert_Ip_Ui_Ip(zig_ret_Ip_Ui_Ip());
}

int assert_Ip_Ui_L(struct Ip_Ui_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 14878) err = 2;
  if (lv.v3 != 1754) err = 3;
  return err;
}
struct Ip_Ui_L ret_Ip_Ui_L(){
    struct Ip_Ui_L lv = { .v1 = 0, .v2 = 14878, .v3 = 1754 };
    return lv;
}
int zig_assert_Ip_Ui_L(struct Ip_Ui_L);
int send_Ip_Ui_L(){
    return zig_assert_Ip_Ui_L(ret_Ip_Ui_L());
}
struct Ip_Ui_L zig_ret_Ip_Ui_L();
int assert_ret_Ip_Ui_L(){
    return assert_Ip_Ui_L(zig_ret_Ip_Ui_L());
}

int assert_Ip_Ui_S(struct Ip_Ui_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16653) err = 2;
  if (lv.v3 != 15118) err = 3;
  return err;
}
struct Ip_Ui_S ret_Ip_Ui_S(){
    struct Ip_Ui_S lv = { .v1 = 0, .v2 = 16653, .v3 = 15118 };
    return lv;
}
int zig_assert_Ip_Ui_S(struct Ip_Ui_S);
int send_Ip_Ui_S(){
    return zig_assert_Ip_Ui_S(ret_Ip_Ui_S());
}
struct Ip_Ui_S zig_ret_Ip_Ui_S();
int assert_ret_Ip_Ui_S(){
    return assert_Ip_Ui_S(zig_ret_Ip_Ui_S());
}

int assert_Ip_Ui_Uc(struct Ip_Ui_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10246) err = 2;
  if (lv.v3 != 61) err = 3;
  return err;
}
struct Ip_Ui_Uc ret_Ip_Ui_Uc(){
    struct Ip_Ui_Uc lv = { .v1 = 0, .v2 = 10246, .v3 = 61 };
    return lv;
}
int zig_assert_Ip_Ui_Uc(struct Ip_Ui_Uc);
int send_Ip_Ui_Uc(){
    return zig_assert_Ip_Ui_Uc(ret_Ip_Ui_Uc());
}
struct Ip_Ui_Uc zig_ret_Ip_Ui_Uc();
int assert_ret_Ip_Ui_Uc(){
    return assert_Ip_Ui_Uc(zig_ret_Ip_Ui_Uc());
}

int assert_Ip_Ui_Ui(struct Ip_Ui_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 18882) err = 2;
  if (lv.v3 != 5120) err = 3;
  return err;
}
struct Ip_Ui_Ui ret_Ip_Ui_Ui(){
    struct Ip_Ui_Ui lv = { .v1 = 0, .v2 = 18882, .v3 = 5120 };
    return lv;
}
int zig_assert_Ip_Ui_Ui(struct Ip_Ui_Ui);
int send_Ip_Ui_Ui(){
    return zig_assert_Ip_Ui_Ui(ret_Ip_Ui_Ui());
}
struct Ip_Ui_Ui zig_ret_Ip_Ui_Ui();
int assert_ret_Ip_Ui_Ui(){
    return assert_Ip_Ui_Ui(zig_ret_Ip_Ui_Ui());
}

int assert_Ip_Ui_Ul(struct Ip_Ui_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1490) err = 2;
  if (lv.v3 != 30616) err = 3;
  return err;
}
struct Ip_Ui_Ul ret_Ip_Ui_Ul(){
    struct Ip_Ui_Ul lv = { .v1 = 0, .v2 = 1490, .v3 = 30616 };
    return lv;
}
int zig_assert_Ip_Ui_Ul(struct Ip_Ui_Ul);
int send_Ip_Ui_Ul(){
    return zig_assert_Ip_Ui_Ul(ret_Ip_Ui_Ul());
}
struct Ip_Ui_Ul zig_ret_Ip_Ui_Ul();
int assert_ret_Ip_Ui_Ul(){
    return assert_Ip_Ui_Ul(zig_ret_Ip_Ui_Ul());
}

int assert_Ip_Ui_Us(struct Ip_Ui_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26123) err = 2;
  if (lv.v3 != 31152) err = 3;
  return err;
}
struct Ip_Ui_Us ret_Ip_Ui_Us(){
    struct Ip_Ui_Us lv = { .v1 = 0, .v2 = 26123, .v3 = 31152 };
    return lv;
}
int zig_assert_Ip_Ui_Us(struct Ip_Ui_Us);
int send_Ip_Ui_Us(){
    return zig_assert_Ip_Ui_Us(ret_Ip_Ui_Us());
}
struct Ip_Ui_Us zig_ret_Ip_Ui_Us();
int assert_ret_Ip_Ui_Us(){
    return assert_Ip_Ui_Us(zig_ret_Ip_Ui_Us());
}

int assert_Ip_Ui_Vp(struct Ip_Ui_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 17588) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Ui_Vp ret_Ip_Ui_Vp(){
    struct Ip_Ui_Vp lv = { .v1 = 0, .v2 = 17588, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Ui_Vp(struct Ip_Ui_Vp);
int send_Ip_Ui_Vp(){
    return zig_assert_Ip_Ui_Vp(ret_Ip_Ui_Vp());
}
struct Ip_Ui_Vp zig_ret_Ip_Ui_Vp();
int assert_ret_Ip_Ui_Vp(){
    return assert_Ip_Ui_Vp(zig_ret_Ip_Ui_Vp());
}

int assert_Ip_Ul(struct Ip_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 12948) err = 2;
  return err;
}
struct Ip_Ul ret_Ip_Ul(){
    struct Ip_Ul lv = { .v1 = 0, .v2 = 12948 };
    return lv;
}
int zig_assert_Ip_Ul(struct Ip_Ul);
int send_Ip_Ul(){
    return zig_assert_Ip_Ul(ret_Ip_Ul());
}
struct Ip_Ul zig_ret_Ip_Ul();
int assert_ret_Ip_Ul(){
    return assert_Ip_Ul(zig_ret_Ip_Ul());
}

int assert_Ip_Ul_C(struct Ip_Ul_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 22886) err = 2;
  if (lv.v3 != 58) err = 3;
  return err;
}
struct Ip_Ul_C ret_Ip_Ul_C(){
    struct Ip_Ul_C lv = { .v1 = 0, .v2 = 22886, .v3 = 58 };
    return lv;
}
int zig_assert_Ip_Ul_C(struct Ip_Ul_C);
int send_Ip_Ul_C(){
    return zig_assert_Ip_Ul_C(ret_Ip_Ul_C());
}
struct Ip_Ul_C zig_ret_Ip_Ul_C();
int assert_ret_Ip_Ul_C(){
    return assert_Ip_Ul_C(zig_ret_Ip_Ul_C());
}

int assert_Ip_Ul_D(struct Ip_Ul_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16802) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct Ip_Ul_D ret_Ip_Ul_D(){
    struct Ip_Ul_D lv = { .v1 = 0, .v2 = 16802, .v3 = -0.25 };
    return lv;
}
int zig_assert_Ip_Ul_D(struct Ip_Ul_D);
int send_Ip_Ul_D(){
    return zig_assert_Ip_Ul_D(ret_Ip_Ul_D());
}
struct Ip_Ul_D zig_ret_Ip_Ul_D();
int assert_ret_Ip_Ul_D(){
    return assert_Ip_Ul_D(zig_ret_Ip_Ul_D());
}

int assert_Ip_Ul_F(struct Ip_Ul_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 29674) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct Ip_Ul_F ret_Ip_Ul_F(){
    struct Ip_Ul_F lv = { .v1 = 0, .v2 = 29674, .v3 = -2.125 };
    return lv;
}
int zig_assert_Ip_Ul_F(struct Ip_Ul_F);
int send_Ip_Ul_F(){
    return zig_assert_Ip_Ul_F(ret_Ip_Ul_F());
}
struct Ip_Ul_F zig_ret_Ip_Ul_F();
int assert_ret_Ip_Ul_F(){
    return assert_Ip_Ul_F(zig_ret_Ip_Ul_F());
}

int assert_Ip_Ul_I(struct Ip_Ul_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 17645) err = 2;
  if (lv.v3 != 19430) err = 3;
  return err;
}
struct Ip_Ul_I ret_Ip_Ul_I(){
    struct Ip_Ul_I lv = { .v1 = 0, .v2 = 17645, .v3 = 19430 };
    return lv;
}
int zig_assert_Ip_Ul_I(struct Ip_Ul_I);
int send_Ip_Ul_I(){
    return zig_assert_Ip_Ul_I(ret_Ip_Ul_I());
}
struct Ip_Ul_I zig_ret_Ip_Ul_I();
int assert_ret_Ip_Ul_I(){
    return assert_Ip_Ul_I(zig_ret_Ip_Ul_I());
}

int assert_Ip_Ul_Ip(struct Ip_Ul_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13000) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Ul_Ip ret_Ip_Ul_Ip(){
    struct Ip_Ul_Ip lv = { .v1 = 0, .v2 = 13000, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Ul_Ip(struct Ip_Ul_Ip);
int send_Ip_Ul_Ip(){
    return zig_assert_Ip_Ul_Ip(ret_Ip_Ul_Ip());
}
struct Ip_Ul_Ip zig_ret_Ip_Ul_Ip();
int assert_ret_Ip_Ul_Ip(){
    return assert_Ip_Ul_Ip(zig_ret_Ip_Ul_Ip());
}

int assert_Ip_Ul_L(struct Ip_Ul_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 25150) err = 2;
  if (lv.v3 != 28024) err = 3;
  return err;
}
struct Ip_Ul_L ret_Ip_Ul_L(){
    struct Ip_Ul_L lv = { .v1 = 0, .v2 = 25150, .v3 = 28024 };
    return lv;
}
int zig_assert_Ip_Ul_L(struct Ip_Ul_L);
int send_Ip_Ul_L(){
    return zig_assert_Ip_Ul_L(ret_Ip_Ul_L());
}
struct Ip_Ul_L zig_ret_Ip_Ul_L();
int assert_ret_Ip_Ul_L(){
    return assert_Ip_Ul_L(zig_ret_Ip_Ul_L());
}

int assert_Ip_Ul_S(struct Ip_Ul_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26141) err = 2;
  if (lv.v3 != 12065) err = 3;
  return err;
}
struct Ip_Ul_S ret_Ip_Ul_S(){
    struct Ip_Ul_S lv = { .v1 = 0, .v2 = 26141, .v3 = 12065 };
    return lv;
}
int zig_assert_Ip_Ul_S(struct Ip_Ul_S);
int send_Ip_Ul_S(){
    return zig_assert_Ip_Ul_S(ret_Ip_Ul_S());
}
struct Ip_Ul_S zig_ret_Ip_Ul_S();
int assert_ret_Ip_Ul_S(){
    return assert_Ip_Ul_S(zig_ret_Ip_Ul_S());
}

int assert_Ip_Ul_Uc(struct Ip_Ul_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 18180) err = 2;
  if (lv.v3 != 51) err = 3;
  return err;
}
struct Ip_Ul_Uc ret_Ip_Ul_Uc(){
    struct Ip_Ul_Uc lv = { .v1 = 0, .v2 = 18180, .v3 = 51 };
    return lv;
}
int zig_assert_Ip_Ul_Uc(struct Ip_Ul_Uc);
int send_Ip_Ul_Uc(){
    return zig_assert_Ip_Ul_Uc(ret_Ip_Ul_Uc());
}
struct Ip_Ul_Uc zig_ret_Ip_Ul_Uc();
int assert_ret_Ip_Ul_Uc(){
    return assert_Ip_Ul_Uc(zig_ret_Ip_Ul_Uc());
}

int assert_Ip_Ul_Ui(struct Ip_Ul_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 12813) err = 2;
  if (lv.v3 != 25993) err = 3;
  return err;
}
struct Ip_Ul_Ui ret_Ip_Ul_Ui(){
    struct Ip_Ul_Ui lv = { .v1 = 0, .v2 = 12813, .v3 = 25993 };
    return lv;
}
int zig_assert_Ip_Ul_Ui(struct Ip_Ul_Ui);
int send_Ip_Ul_Ui(){
    return zig_assert_Ip_Ul_Ui(ret_Ip_Ul_Ui());
}
struct Ip_Ul_Ui zig_ret_Ip_Ul_Ui();
int assert_ret_Ip_Ul_Ui(){
    return assert_Ip_Ul_Ui(zig_ret_Ip_Ul_Ui());
}

int assert_Ip_Ul_Ul(struct Ip_Ul_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 13011) err = 2;
  if (lv.v3 != 7993) err = 3;
  return err;
}
struct Ip_Ul_Ul ret_Ip_Ul_Ul(){
    struct Ip_Ul_Ul lv = { .v1 = 0, .v2 = 13011, .v3 = 7993 };
    return lv;
}
int zig_assert_Ip_Ul_Ul(struct Ip_Ul_Ul);
int send_Ip_Ul_Ul(){
    return zig_assert_Ip_Ul_Ul(ret_Ip_Ul_Ul());
}
struct Ip_Ul_Ul zig_ret_Ip_Ul_Ul();
int assert_ret_Ip_Ul_Ul(){
    return assert_Ip_Ul_Ul(zig_ret_Ip_Ul_Ul());
}

int assert_Ip_Ul_Us(struct Ip_Ul_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 20088) err = 2;
  if (lv.v3 != 31035) err = 3;
  return err;
}
struct Ip_Ul_Us ret_Ip_Ul_Us(){
    struct Ip_Ul_Us lv = { .v1 = 0, .v2 = 20088, .v3 = 31035 };
    return lv;
}
int zig_assert_Ip_Ul_Us(struct Ip_Ul_Us);
int send_Ip_Ul_Us(){
    return zig_assert_Ip_Ul_Us(ret_Ip_Ul_Us());
}
struct Ip_Ul_Us zig_ret_Ip_Ul_Us();
int assert_ret_Ip_Ul_Us(){
    return assert_Ip_Ul_Us(zig_ret_Ip_Ul_Us());
}

int assert_Ip_Ul_Vp(struct Ip_Ul_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28724) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Ul_Vp ret_Ip_Ul_Vp(){
    struct Ip_Ul_Vp lv = { .v1 = 0, .v2 = 28724, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Ul_Vp(struct Ip_Ul_Vp);
int send_Ip_Ul_Vp(){
    return zig_assert_Ip_Ul_Vp(ret_Ip_Ul_Vp());
}
struct Ip_Ul_Vp zig_ret_Ip_Ul_Vp();
int assert_ret_Ip_Ul_Vp(){
    return assert_Ip_Ul_Vp(zig_ret_Ip_Ul_Vp());
}

int assert_Ip_Us(struct Ip_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28990) err = 2;
  return err;
}
struct Ip_Us ret_Ip_Us(){
    struct Ip_Us lv = { .v1 = 0, .v2 = 28990 };
    return lv;
}
int zig_assert_Ip_Us(struct Ip_Us);
int send_Ip_Us(){
    return zig_assert_Ip_Us(ret_Ip_Us());
}
struct Ip_Us zig_ret_Ip_Us();
int assert_ret_Ip_Us(){
    return assert_Ip_Us(zig_ret_Ip_Us());
}

int assert_Ip_Us_C(struct Ip_Us_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 10209) err = 2;
  if (lv.v3 != 46) err = 3;
  return err;
}
struct Ip_Us_C ret_Ip_Us_C(){
    struct Ip_Us_C lv = { .v1 = 0, .v2 = 10209, .v3 = 46 };
    return lv;
}
int zig_assert_Ip_Us_C(struct Ip_Us_C);
int send_Ip_Us_C(){
    return zig_assert_Ip_Us_C(ret_Ip_Us_C());
}
struct Ip_Us_C zig_ret_Ip_Us_C();
int assert_ret_Ip_Us_C(){
    return assert_Ip_Us_C(zig_ret_Ip_Us_C());
}

int assert_Ip_Us_D(struct Ip_Us_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 2528) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct Ip_Us_D ret_Ip_Us_D(){
    struct Ip_Us_D lv = { .v1 = 0, .v2 = 2528, .v3 = 4.5 };
    return lv;
}
int zig_assert_Ip_Us_D(struct Ip_Us_D);
int send_Ip_Us_D(){
    return zig_assert_Ip_Us_D(ret_Ip_Us_D());
}
struct Ip_Us_D zig_ret_Ip_Us_D();
int assert_ret_Ip_Us_D(){
    return assert_Ip_Us_D(zig_ret_Ip_Us_D());
}

int assert_Ip_Us_F(struct Ip_Us_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 1427) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct Ip_Us_F ret_Ip_Us_F(){
    struct Ip_Us_F lv = { .v1 = 0, .v2 = 1427, .v3 = 0.875 };
    return lv;
}
int zig_assert_Ip_Us_F(struct Ip_Us_F);
int send_Ip_Us_F(){
    return zig_assert_Ip_Us_F(ret_Ip_Us_F());
}
struct Ip_Us_F zig_ret_Ip_Us_F();
int assert_ret_Ip_Us_F(){
    return assert_Ip_Us_F(zig_ret_Ip_Us_F());
}

int assert_Ip_Us_I(struct Ip_Us_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 28106) err = 2;
  if (lv.v3 != 11544) err = 3;
  return err;
}
struct Ip_Us_I ret_Ip_Us_I(){
    struct Ip_Us_I lv = { .v1 = 0, .v2 = 28106, .v3 = 11544 };
    return lv;
}
int zig_assert_Ip_Us_I(struct Ip_Us_I);
int send_Ip_Us_I(){
    return zig_assert_Ip_Us_I(ret_Ip_Us_I());
}
struct Ip_Us_I zig_ret_Ip_Us_I();
int assert_ret_Ip_Us_I(){
    return assert_Ip_Us_I(zig_ret_Ip_Us_I());
}

int assert_Ip_Us_Ip(struct Ip_Us_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 6349) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Us_Ip ret_Ip_Us_Ip(){
    struct Ip_Us_Ip lv = { .v1 = 0, .v2 = 6349, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Us_Ip(struct Ip_Us_Ip);
int send_Ip_Us_Ip(){
    return zig_assert_Ip_Us_Ip(ret_Ip_Us_Ip());
}
struct Ip_Us_Ip zig_ret_Ip_Us_Ip();
int assert_ret_Ip_Us_Ip(){
    return assert_Ip_Us_Ip(zig_ret_Ip_Us_Ip());
}

int assert_Ip_Us_L(struct Ip_Us_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 2930) err = 2;
  if (lv.v3 != 17268) err = 3;
  return err;
}
struct Ip_Us_L ret_Ip_Us_L(){
    struct Ip_Us_L lv = { .v1 = 0, .v2 = 2930, .v3 = 17268 };
    return lv;
}
int zig_assert_Ip_Us_L(struct Ip_Us_L);
int send_Ip_Us_L(){
    return zig_assert_Ip_Us_L(ret_Ip_Us_L());
}
struct Ip_Us_L zig_ret_Ip_Us_L();
int assert_ret_Ip_Us_L(){
    return assert_Ip_Us_L(zig_ret_Ip_Us_L());
}

int assert_Ip_Us_S(struct Ip_Us_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 26284) err = 2;
  if (lv.v3 != 4156) err = 3;
  return err;
}
struct Ip_Us_S ret_Ip_Us_S(){
    struct Ip_Us_S lv = { .v1 = 0, .v2 = 26284, .v3 = 4156 };
    return lv;
}
int zig_assert_Ip_Us_S(struct Ip_Us_S);
int send_Ip_Us_S(){
    return zig_assert_Ip_Us_S(ret_Ip_Us_S());
}
struct Ip_Us_S zig_ret_Ip_Us_S();
int assert_ret_Ip_Us_S(){
    return assert_Ip_Us_S(zig_ret_Ip_Us_S());
}

int assert_Ip_Us_Uc(struct Ip_Us_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 16496) err = 2;
  if (lv.v3 != 25) err = 3;
  return err;
}
struct Ip_Us_Uc ret_Ip_Us_Uc(){
    struct Ip_Us_Uc lv = { .v1 = 0, .v2 = 16496, .v3 = 25 };
    return lv;
}
int zig_assert_Ip_Us_Uc(struct Ip_Us_Uc);
int send_Ip_Us_Uc(){
    return zig_assert_Ip_Us_Uc(ret_Ip_Us_Uc());
}
struct Ip_Us_Uc zig_ret_Ip_Us_Uc();
int assert_ret_Ip_Us_Uc(){
    return assert_Ip_Us_Uc(zig_ret_Ip_Us_Uc());
}

int assert_Ip_Us_Ui(struct Ip_Us_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 21265) err = 2;
  if (lv.v3 != 27246) err = 3;
  return err;
}
struct Ip_Us_Ui ret_Ip_Us_Ui(){
    struct Ip_Us_Ui lv = { .v1 = 0, .v2 = 21265, .v3 = 27246 };
    return lv;
}
int zig_assert_Ip_Us_Ui(struct Ip_Us_Ui);
int send_Ip_Us_Ui(){
    return zig_assert_Ip_Us_Ui(ret_Ip_Us_Ui());
}
struct Ip_Us_Ui zig_ret_Ip_Us_Ui();
int assert_ret_Ip_Us_Ui(){
    return assert_Ip_Us_Ui(zig_ret_Ip_Us_Ui());
}

int assert_Ip_Us_Ul(struct Ip_Us_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 12474) err = 2;
  if (lv.v3 != 2975) err = 3;
  return err;
}
struct Ip_Us_Ul ret_Ip_Us_Ul(){
    struct Ip_Us_Ul lv = { .v1 = 0, .v2 = 12474, .v3 = 2975 };
    return lv;
}
int zig_assert_Ip_Us_Ul(struct Ip_Us_Ul);
int send_Ip_Us_Ul(){
    return zig_assert_Ip_Us_Ul(ret_Ip_Us_Ul());
}
struct Ip_Us_Ul zig_ret_Ip_Us_Ul();
int assert_ret_Ip_Us_Ul(){
    return assert_Ip_Us_Ul(zig_ret_Ip_Us_Ul());
}

int assert_Ip_Us_Us(struct Ip_Us_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 7970) err = 2;
  if (lv.v3 != 1591) err = 3;
  return err;
}
struct Ip_Us_Us ret_Ip_Us_Us(){
    struct Ip_Us_Us lv = { .v1 = 0, .v2 = 7970, .v3 = 1591 };
    return lv;
}
int zig_assert_Ip_Us_Us(struct Ip_Us_Us);
int send_Ip_Us_Us(){
    return zig_assert_Ip_Us_Us(ret_Ip_Us_Us());
}
struct Ip_Us_Us zig_ret_Ip_Us_Us();
int assert_ret_Ip_Us_Us(){
    return assert_Ip_Us_Us(zig_ret_Ip_Us_Us());
}

int assert_Ip_Us_Vp(struct Ip_Us_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 15741) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Us_Vp ret_Ip_Us_Vp(){
    struct Ip_Us_Vp lv = { .v1 = 0, .v2 = 15741, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Us_Vp(struct Ip_Us_Vp);
int send_Ip_Us_Vp(){
    return zig_assert_Ip_Us_Vp(ret_Ip_Us_Vp());
}
struct Ip_Us_Vp zig_ret_Ip_Us_Vp();
int assert_ret_Ip_Us_Vp(){
    return assert_Ip_Us_Vp(zig_ret_Ip_Us_Vp());
}

int assert_Ip_Vp(struct Ip_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct Ip_Vp ret_Ip_Vp(){
    struct Ip_Vp lv = { .v1 = 0, .v2 = 0 };
    return lv;
}
int zig_assert_Ip_Vp(struct Ip_Vp);
int send_Ip_Vp(){
    return zig_assert_Ip_Vp(ret_Ip_Vp());
}
struct Ip_Vp zig_ret_Ip_Vp();
int assert_ret_Ip_Vp(){
    return assert_Ip_Vp(zig_ret_Ip_Vp());
}

int assert_Ip_Vp_C(struct Ip_Vp_C lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 90) err = 3;
  return err;
}
struct Ip_Vp_C ret_Ip_Vp_C(){
    struct Ip_Vp_C lv = { .v1 = 0, .v2 = 0, .v3 = 90 };
    return lv;
}
int zig_assert_Ip_Vp_C(struct Ip_Vp_C);
int send_Ip_Vp_C(){
    return zig_assert_Ip_Vp_C(ret_Ip_Vp_C());
}
struct Ip_Vp_C zig_ret_Ip_Vp_C();
int assert_ret_Ip_Vp_C(){
    return assert_Ip_Vp_C(zig_ret_Ip_Vp_C());
}

int assert_Ip_Vp_D(struct Ip_Vp_D lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Ip_Vp_D ret_Ip_Vp_D(){
    struct Ip_Vp_D lv = { .v1 = 0, .v2 = 0, .v3 = 0.5 };
    return lv;
}
int zig_assert_Ip_Vp_D(struct Ip_Vp_D);
int send_Ip_Vp_D(){
    return zig_assert_Ip_Vp_D(ret_Ip_Vp_D());
}
struct Ip_Vp_D zig_ret_Ip_Vp_D();
int assert_ret_Ip_Vp_D(){
    return assert_Ip_Vp_D(zig_ret_Ip_Vp_D());
}

int assert_Ip_Vp_F(struct Ip_Vp_F lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct Ip_Vp_F ret_Ip_Vp_F(){
    struct Ip_Vp_F lv = { .v1 = 0, .v2 = 0, .v3 = 0.5 };
    return lv;
}
int zig_assert_Ip_Vp_F(struct Ip_Vp_F);
int send_Ip_Vp_F(){
    return zig_assert_Ip_Vp_F(ret_Ip_Vp_F());
}
struct Ip_Vp_F zig_ret_Ip_Vp_F();
int assert_ret_Ip_Vp_F(){
    return assert_Ip_Vp_F(zig_ret_Ip_Vp_F());
}

int assert_Ip_Vp_I(struct Ip_Vp_I lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 19530) err = 3;
  return err;
}
struct Ip_Vp_I ret_Ip_Vp_I(){
    struct Ip_Vp_I lv = { .v1 = 0, .v2 = 0, .v3 = 19530 };
    return lv;
}
int zig_assert_Ip_Vp_I(struct Ip_Vp_I);
int send_Ip_Vp_I(){
    return zig_assert_Ip_Vp_I(ret_Ip_Vp_I());
}
struct Ip_Vp_I zig_ret_Ip_Vp_I();
int assert_ret_Ip_Vp_I(){
    return assert_Ip_Vp_I(zig_ret_Ip_Vp_I());
}

int assert_Ip_Vp_Ip(struct Ip_Vp_Ip lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Vp_Ip ret_Ip_Vp_Ip(){
    struct Ip_Vp_Ip lv = { .v1 = 0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Vp_Ip(struct Ip_Vp_Ip);
int send_Ip_Vp_Ip(){
    return zig_assert_Ip_Vp_Ip(ret_Ip_Vp_Ip());
}
struct Ip_Vp_Ip zig_ret_Ip_Vp_Ip();
int assert_ret_Ip_Vp_Ip(){
    return assert_Ip_Vp_Ip(zig_ret_Ip_Vp_Ip());
}

int assert_Ip_Vp_L(struct Ip_Vp_L lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 26980) err = 3;
  return err;
}
struct Ip_Vp_L ret_Ip_Vp_L(){
    struct Ip_Vp_L lv = { .v1 = 0, .v2 = 0, .v3 = 26980 };
    return lv;
}
int zig_assert_Ip_Vp_L(struct Ip_Vp_L);
int send_Ip_Vp_L(){
    return zig_assert_Ip_Vp_L(ret_Ip_Vp_L());
}
struct Ip_Vp_L zig_ret_Ip_Vp_L();
int assert_ret_Ip_Vp_L(){
    return assert_Ip_Vp_L(zig_ret_Ip_Vp_L());
}

int assert_Ip_Vp_S(struct Ip_Vp_S lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 8250) err = 3;
  return err;
}
struct Ip_Vp_S ret_Ip_Vp_S(){
    struct Ip_Vp_S lv = { .v1 = 0, .v2 = 0, .v3 = 8250 };
    return lv;
}
int zig_assert_Ip_Vp_S(struct Ip_Vp_S);
int send_Ip_Vp_S(){
    return zig_assert_Ip_Vp_S(ret_Ip_Vp_S());
}
struct Ip_Vp_S zig_ret_Ip_Vp_S();
int assert_ret_Ip_Vp_S(){
    return assert_Ip_Vp_S(zig_ret_Ip_Vp_S());
}

int assert_Ip_Vp_Uc(struct Ip_Vp_Uc lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 57) err = 3;
  return err;
}
struct Ip_Vp_Uc ret_Ip_Vp_Uc(){
    struct Ip_Vp_Uc lv = { .v1 = 0, .v2 = 0, .v3 = 57 };
    return lv;
}
int zig_assert_Ip_Vp_Uc(struct Ip_Vp_Uc);
int send_Ip_Vp_Uc(){
    return zig_assert_Ip_Vp_Uc(ret_Ip_Vp_Uc());
}
struct Ip_Vp_Uc zig_ret_Ip_Vp_Uc();
int assert_ret_Ip_Vp_Uc(){
    return assert_Ip_Vp_Uc(zig_ret_Ip_Vp_Uc());
}

int assert_Ip_Vp_Ui(struct Ip_Vp_Ui lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 18658) err = 3;
  return err;
}
struct Ip_Vp_Ui ret_Ip_Vp_Ui(){
    struct Ip_Vp_Ui lv = { .v1 = 0, .v2 = 0, .v3 = 18658 };
    return lv;
}
int zig_assert_Ip_Vp_Ui(struct Ip_Vp_Ui);
int send_Ip_Vp_Ui(){
    return zig_assert_Ip_Vp_Ui(ret_Ip_Vp_Ui());
}
struct Ip_Vp_Ui zig_ret_Ip_Vp_Ui();
int assert_ret_Ip_Vp_Ui(){
    return assert_Ip_Vp_Ui(zig_ret_Ip_Vp_Ui());
}

int assert_Ip_Vp_Ul(struct Ip_Vp_Ul lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 15371) err = 3;
  return err;
}
struct Ip_Vp_Ul ret_Ip_Vp_Ul(){
    struct Ip_Vp_Ul lv = { .v1 = 0, .v2 = 0, .v3 = 15371 };
    return lv;
}
int zig_assert_Ip_Vp_Ul(struct Ip_Vp_Ul);
int send_Ip_Vp_Ul(){
    return zig_assert_Ip_Vp_Ul(ret_Ip_Vp_Ul());
}
struct Ip_Vp_Ul zig_ret_Ip_Vp_Ul();
int assert_ret_Ip_Vp_Ul(){
    return assert_Ip_Vp_Ul(zig_ret_Ip_Vp_Ul());
}

int assert_Ip_Vp_Us(struct Ip_Vp_Us lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 820) err = 3;
  return err;
}
struct Ip_Vp_Us ret_Ip_Vp_Us(){
    struct Ip_Vp_Us lv = { .v1 = 0, .v2 = 0, .v3 = 820 };
    return lv;
}
int zig_assert_Ip_Vp_Us(struct Ip_Vp_Us);
int send_Ip_Vp_Us(){
    return zig_assert_Ip_Vp_Us(ret_Ip_Vp_Us());
}
struct Ip_Vp_Us zig_ret_Ip_Vp_Us();
int assert_ret_Ip_Vp_Us(){
    return assert_Ip_Vp_Us(zig_ret_Ip_Vp_Us());
}

int assert_Ip_Vp_Vp(struct Ip_Vp_Vp lv){
    int err = 0;
  if (lv.v1 != 0) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct Ip_Vp_Vp ret_Ip_Vp_Vp(){
    struct Ip_Vp_Vp lv = { .v1 = 0, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_Ip_Vp_Vp(struct Ip_Vp_Vp);
int send_Ip_Vp_Vp(){
    return zig_assert_Ip_Vp_Vp(ret_Ip_Vp_Vp());
}
struct Ip_Vp_Vp zig_ret_Ip_Vp_Vp();
int assert_ret_Ip_Vp_Vp(){
    return assert_Ip_Vp_Vp(zig_ret_Ip_Vp_Vp());
}

int assert_L(struct L lv){
    int err = 0;
  if (lv.v1 != 6143) err = 1;
  return err;
}
struct L ret_L(){
    struct L lv = { .v1 = 6143 };
    return lv;
}
int zig_assert_L(struct L);
int send_L(){
    return zig_assert_L(ret_L());
}
struct L zig_ret_L();
int assert_ret_L(){
    return assert_L(zig_ret_L());
}

int assert_L_C(struct L_C lv){
    int err = 0;
  if (lv.v1 != 6729) err = 1;
  if (lv.v2 != 117) err = 2;
  return err;
}
struct L_C ret_L_C(){
    struct L_C lv = { .v1 = 6729, .v2 = 117 };
    return lv;
}
int zig_assert_L_C(struct L_C);
int send_L_C(){
    return zig_assert_L_C(ret_L_C());
}
struct L_C zig_ret_L_C();
int assert_ret_L_C(){
    return assert_L_C(zig_ret_L_C());
}

int assert_L_C_C(struct L_C_C lv){
    int err = 0;
  if (lv.v1 != 10530) err = 1;
  if (lv.v2 != 63) err = 2;
  if (lv.v3 != 49) err = 3;
  return err;
}
struct L_C_C ret_L_C_C(){
    struct L_C_C lv = { .v1 = 10530, .v2 = 63, .v3 = 49 };
    return lv;
}
int zig_assert_L_C_C(struct L_C_C);
int send_L_C_C(){
    return zig_assert_L_C_C(ret_L_C_C());
}
struct L_C_C zig_ret_L_C_C();
int assert_ret_L_C_C(){
    return assert_L_C_C(zig_ret_L_C_C());
}

int assert_L_C_D(struct L_C_D lv){
    int err = 0;
  if (lv.v1 != 11086) err = 1;
  if (lv.v2 != 52) err = 2;
  if (lv.v3 != 0.875) err = 3;
  return err;
}
struct L_C_D ret_L_C_D(){
    struct L_C_D lv = { .v1 = 11086, .v2 = 52, .v3 = 0.875 };
    return lv;
}
int zig_assert_L_C_D(struct L_C_D);
int send_L_C_D(){
    return zig_assert_L_C_D(ret_L_C_D());
}
struct L_C_D zig_ret_L_C_D();
int assert_ret_L_C_D(){
    return assert_L_C_D(zig_ret_L_C_D());
}

int assert_L_C_F(struct L_C_F lv){
    int err = 0;
  if (lv.v1 != 28822) err = 1;
  if (lv.v2 != 125) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct L_C_F ret_L_C_F(){
    struct L_C_F lv = { .v1 = 28822, .v2 = 125, .v3 = 1.0 };
    return lv;
}
int zig_assert_L_C_F(struct L_C_F);
int send_L_C_F(){
    return zig_assert_L_C_F(ret_L_C_F());
}
struct L_C_F zig_ret_L_C_F();
int assert_ret_L_C_F(){
    return assert_L_C_F(zig_ret_L_C_F());
}

int assert_L_C_I(struct L_C_I lv){
    int err = 0;
  if (lv.v1 != 18441) err = 1;
  if (lv.v2 != 37) err = 2;
  if (lv.v3 != 3289) err = 3;
  return err;
}
struct L_C_I ret_L_C_I(){
    struct L_C_I lv = { .v1 = 18441, .v2 = 37, .v3 = 3289 };
    return lv;
}
int zig_assert_L_C_I(struct L_C_I);
int send_L_C_I(){
    return zig_assert_L_C_I(ret_L_C_I());
}
struct L_C_I zig_ret_L_C_I();
int assert_ret_L_C_I(){
    return assert_L_C_I(zig_ret_L_C_I());
}

int assert_L_C_Ip(struct L_C_Ip lv){
    int err = 0;
  if (lv.v1 != 31891) err = 1;
  if (lv.v2 != 45) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_C_Ip ret_L_C_Ip(){
    struct L_C_Ip lv = { .v1 = 31891, .v2 = 45, .v3 = 0 };
    return lv;
}
int zig_assert_L_C_Ip(struct L_C_Ip);
int send_L_C_Ip(){
    return zig_assert_L_C_Ip(ret_L_C_Ip());
}
struct L_C_Ip zig_ret_L_C_Ip();
int assert_ret_L_C_Ip(){
    return assert_L_C_Ip(zig_ret_L_C_Ip());
}

int assert_L_C_L(struct L_C_L lv){
    int err = 0;
  if (lv.v1 != 19086) err = 1;
  if (lv.v2 != 109) err = 2;
  if (lv.v3 != 14314) err = 3;
  return err;
}
struct L_C_L ret_L_C_L(){
    struct L_C_L lv = { .v1 = 19086, .v2 = 109, .v3 = 14314 };
    return lv;
}
int zig_assert_L_C_L(struct L_C_L);
int send_L_C_L(){
    return zig_assert_L_C_L(ret_L_C_L());
}
struct L_C_L zig_ret_L_C_L();
int assert_ret_L_C_L(){
    return assert_L_C_L(zig_ret_L_C_L());
}

int assert_L_C_S(struct L_C_S lv){
    int err = 0;
  if (lv.v1 != 288) err = 1;
  if (lv.v2 != 5) err = 2;
  if (lv.v3 != 3053) err = 3;
  return err;
}
struct L_C_S ret_L_C_S(){
    struct L_C_S lv = { .v1 = 288, .v2 = 5, .v3 = 3053 };
    return lv;
}
int zig_assert_L_C_S(struct L_C_S);
int send_L_C_S(){
    return zig_assert_L_C_S(ret_L_C_S());
}
struct L_C_S zig_ret_L_C_S();
int assert_ret_L_C_S(){
    return assert_L_C_S(zig_ret_L_C_S());
}

int assert_L_C_Uc(struct L_C_Uc lv){
    int err = 0;
  if (lv.v1 != 27196) err = 1;
  if (lv.v2 != 83) err = 2;
  if (lv.v3 != 95) err = 3;
  return err;
}
struct L_C_Uc ret_L_C_Uc(){
    struct L_C_Uc lv = { .v1 = 27196, .v2 = 83, .v3 = 95 };
    return lv;
}
int zig_assert_L_C_Uc(struct L_C_Uc);
int send_L_C_Uc(){
    return zig_assert_L_C_Uc(ret_L_C_Uc());
}
struct L_C_Uc zig_ret_L_C_Uc();
int assert_ret_L_C_Uc(){
    return assert_L_C_Uc(zig_ret_L_C_Uc());
}

int assert_L_C_Ui(struct L_C_Ui lv){
    int err = 0;
  if (lv.v1 != 19073) err = 1;
  if (lv.v2 != 15) err = 2;
  if (lv.v3 != 19612) err = 3;
  return err;
}
struct L_C_Ui ret_L_C_Ui(){
    struct L_C_Ui lv = { .v1 = 19073, .v2 = 15, .v3 = 19612 };
    return lv;
}
int zig_assert_L_C_Ui(struct L_C_Ui);
int send_L_C_Ui(){
    return zig_assert_L_C_Ui(ret_L_C_Ui());
}
struct L_C_Ui zig_ret_L_C_Ui();
int assert_ret_L_C_Ui(){
    return assert_L_C_Ui(zig_ret_L_C_Ui());
}

int assert_L_C_Ul(struct L_C_Ul lv){
    int err = 0;
  if (lv.v1 != 17138) err = 1;
  if (lv.v2 != 22) err = 2;
  if (lv.v3 != 152) err = 3;
  return err;
}
struct L_C_Ul ret_L_C_Ul(){
    struct L_C_Ul lv = { .v1 = 17138, .v2 = 22, .v3 = 152 };
    return lv;
}
int zig_assert_L_C_Ul(struct L_C_Ul);
int send_L_C_Ul(){
    return zig_assert_L_C_Ul(ret_L_C_Ul());
}
struct L_C_Ul zig_ret_L_C_Ul();
int assert_ret_L_C_Ul(){
    return assert_L_C_Ul(zig_ret_L_C_Ul());
}

int assert_L_C_Us(struct L_C_Us lv){
    int err = 0;
  if (lv.v1 != 16490) err = 1;
  if (lv.v2 != 28) err = 2;
  if (lv.v3 != 21175) err = 3;
  return err;
}
struct L_C_Us ret_L_C_Us(){
    struct L_C_Us lv = { .v1 = 16490, .v2 = 28, .v3 = 21175 };
    return lv;
}
int zig_assert_L_C_Us(struct L_C_Us);
int send_L_C_Us(){
    return zig_assert_L_C_Us(ret_L_C_Us());
}
struct L_C_Us zig_ret_L_C_Us();
int assert_ret_L_C_Us(){
    return assert_L_C_Us(zig_ret_L_C_Us());
}

int assert_L_C_Vp(struct L_C_Vp lv){
    int err = 0;
  if (lv.v1 != 21374) err = 1;
  if (lv.v2 != 100) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_C_Vp ret_L_C_Vp(){
    struct L_C_Vp lv = { .v1 = 21374, .v2 = 100, .v3 = 0 };
    return lv;
}
int zig_assert_L_C_Vp(struct L_C_Vp);
int send_L_C_Vp(){
    return zig_assert_L_C_Vp(ret_L_C_Vp());
}
struct L_C_Vp zig_ret_L_C_Vp();
int assert_ret_L_C_Vp(){
    return assert_L_C_Vp(zig_ret_L_C_Vp());
}

int assert_L_D(struct L_D lv){
    int err = 0;
  if (lv.v1 != 5730) err = 1;
  if (lv.v2 != 1.0) err = 2;
  return err;
}
struct L_D ret_L_D(){
    struct L_D lv = { .v1 = 5730, .v2 = 1.0 };
    return lv;
}
int zig_assert_L_D(struct L_D);
int send_L_D(){
    return zig_assert_L_D(ret_L_D());
}
struct L_D zig_ret_L_D();
int assert_ret_L_D(){
    return assert_L_D(zig_ret_L_D());
}

int assert_L_D_C(struct L_D_C lv){
    int err = 0;
  if (lv.v1 != 15707) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 82) err = 3;
  return err;
}
struct L_D_C ret_L_D_C(){
    struct L_D_C lv = { .v1 = 15707, .v2 = 1.0, .v3 = 82 };
    return lv;
}
int zig_assert_L_D_C(struct L_D_C);
int send_L_D_C(){
    return zig_assert_L_D_C(ret_L_D_C());
}
struct L_D_C zig_ret_L_D_C();
int assert_ret_L_D_C(){
    return assert_L_D_C(zig_ret_L_D_C());
}

int assert_L_D_D(struct L_D_D lv){
    int err = 0;
  if (lv.v1 != 24847) err = 1;
  if (lv.v2 != -0.25) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct L_D_D ret_L_D_D(){
    struct L_D_D lv = { .v1 = 24847, .v2 = -0.25, .v3 = 0.5 };
    return lv;
}
int zig_assert_L_D_D(struct L_D_D);
int send_L_D_D(){
    return zig_assert_L_D_D(ret_L_D_D());
}
struct L_D_D zig_ret_L_D_D();
int assert_ret_L_D_D(){
    return assert_L_D_D(zig_ret_L_D_D());
}

int assert_L_D_F(struct L_D_F lv){
    int err = 0;
  if (lv.v1 != 2898) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct L_D_F ret_L_D_F(){
    struct L_D_F lv = { .v1 = 2898, .v2 = 0.875, .v3 = 1.0 };
    return lv;
}
int zig_assert_L_D_F(struct L_D_F);
int send_L_D_F(){
    return zig_assert_L_D_F(ret_L_D_F());
}
struct L_D_F zig_ret_L_D_F();
int assert_ret_L_D_F(){
    return assert_L_D_F(zig_ret_L_D_F());
}

int assert_L_D_I(struct L_D_I lv){
    int err = 0;
  if (lv.v1 != 5749) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 5688) err = 3;
  return err;
}
struct L_D_I ret_L_D_I(){
    struct L_D_I lv = { .v1 = 5749, .v2 = 1.0, .v3 = 5688 };
    return lv;
}
int zig_assert_L_D_I(struct L_D_I);
int send_L_D_I(){
    return zig_assert_L_D_I(ret_L_D_I());
}
struct L_D_I zig_ret_L_D_I();
int assert_ret_L_D_I(){
    return assert_L_D_I(zig_ret_L_D_I());
}

int assert_L_D_Ip(struct L_D_Ip lv){
    int err = 0;
  if (lv.v1 != 15166) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_D_Ip ret_L_D_Ip(){
    struct L_D_Ip lv = { .v1 = 15166, .v2 = 1.0, .v3 = 0 };
    return lv;
}
int zig_assert_L_D_Ip(struct L_D_Ip);
int send_L_D_Ip(){
    return zig_assert_L_D_Ip(ret_L_D_Ip());
}
struct L_D_Ip zig_ret_L_D_Ip();
int assert_ret_L_D_Ip(){
    return assert_L_D_Ip(zig_ret_L_D_Ip());
}

int assert_L_D_L(struct L_D_L lv){
    int err = 0;
  if (lv.v1 != 7152) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 26318) err = 3;
  return err;
}
struct L_D_L ret_L_D_L(){
    struct L_D_L lv = { .v1 = 7152, .v2 = 1.0, .v3 = 26318 };
    return lv;
}
int zig_assert_L_D_L(struct L_D_L);
int send_L_D_L(){
    return zig_assert_L_D_L(ret_L_D_L());
}
struct L_D_L zig_ret_L_D_L();
int assert_ret_L_D_L(){
    return assert_L_D_L(zig_ret_L_D_L());
}

int assert_L_D_S(struct L_D_S lv){
    int err = 0;
  if (lv.v1 != 5280) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 17864) err = 3;
  return err;
}
struct L_D_S ret_L_D_S(){
    struct L_D_S lv = { .v1 = 5280, .v2 = 4.5, .v3 = 17864 };
    return lv;
}
int zig_assert_L_D_S(struct L_D_S);
int send_L_D_S(){
    return zig_assert_L_D_S(ret_L_D_S());
}
struct L_D_S zig_ret_L_D_S();
int assert_ret_L_D_S(){
    return assert_L_D_S(zig_ret_L_D_S());
}

int assert_L_D_Uc(struct L_D_Uc lv){
    int err = 0;
  if (lv.v1 != 12847) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 14) err = 3;
  return err;
}
struct L_D_Uc ret_L_D_Uc(){
    struct L_D_Uc lv = { .v1 = 12847, .v2 = 4.5, .v3 = 14 };
    return lv;
}
int zig_assert_L_D_Uc(struct L_D_Uc);
int send_L_D_Uc(){
    return zig_assert_L_D_Uc(ret_L_D_Uc());
}
struct L_D_Uc zig_ret_L_D_Uc();
int assert_ret_L_D_Uc(){
    return assert_L_D_Uc(zig_ret_L_D_Uc());
}

int assert_L_D_Ui(struct L_D_Ui lv){
    int err = 0;
  if (lv.v1 != 17941) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 3297) err = 3;
  return err;
}
struct L_D_Ui ret_L_D_Ui(){
    struct L_D_Ui lv = { .v1 = 17941, .v2 = 7.0, .v3 = 3297 };
    return lv;
}
int zig_assert_L_D_Ui(struct L_D_Ui);
int send_L_D_Ui(){
    return zig_assert_L_D_Ui(ret_L_D_Ui());
}
struct L_D_Ui zig_ret_L_D_Ui();
int assert_ret_L_D_Ui(){
    return assert_L_D_Ui(zig_ret_L_D_Ui());
}

int assert_L_D_Ul(struct L_D_Ul lv){
    int err = 0;
  if (lv.v1 != 19159) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 7671) err = 3;
  return err;
}
struct L_D_Ul ret_L_D_Ul(){
    struct L_D_Ul lv = { .v1 = 19159, .v2 = -2.125, .v3 = 7671 };
    return lv;
}
int zig_assert_L_D_Ul(struct L_D_Ul);
int send_L_D_Ul(){
    return zig_assert_L_D_Ul(ret_L_D_Ul());
}
struct L_D_Ul zig_ret_L_D_Ul();
int assert_ret_L_D_Ul(){
    return assert_L_D_Ul(zig_ret_L_D_Ul());
}

int assert_L_D_Us(struct L_D_Us lv){
    int err = 0;
  if (lv.v1 != 4820) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 14293) err = 3;
  return err;
}
struct L_D_Us ret_L_D_Us(){
    struct L_D_Us lv = { .v1 = 4820, .v2 = 0.875, .v3 = 14293 };
    return lv;
}
int zig_assert_L_D_Us(struct L_D_Us);
int send_L_D_Us(){
    return zig_assert_L_D_Us(ret_L_D_Us());
}
struct L_D_Us zig_ret_L_D_Us();
int assert_ret_L_D_Us(){
    return assert_L_D_Us(zig_ret_L_D_Us());
}

int assert_L_D_Vp(struct L_D_Vp lv){
    int err = 0;
  if (lv.v1 != 20760) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_D_Vp ret_L_D_Vp(){
    struct L_D_Vp lv = { .v1 = 20760, .v2 = 4.5, .v3 = 0 };
    return lv;
}
int zig_assert_L_D_Vp(struct L_D_Vp);
int send_L_D_Vp(){
    return zig_assert_L_D_Vp(ret_L_D_Vp());
}
struct L_D_Vp zig_ret_L_D_Vp();
int assert_ret_L_D_Vp(){
    return assert_L_D_Vp(zig_ret_L_D_Vp());
}

int assert_L_F(struct L_F lv){
    int err = 0;
  if (lv.v1 != 17549) err = 1;
  if (lv.v2 != 0.875) err = 2;
  return err;
}
struct L_F ret_L_F(){
    struct L_F lv = { .v1 = 17549, .v2 = 0.875 };
    return lv;
}
int zig_assert_L_F(struct L_F);
int send_L_F(){
    return zig_assert_L_F(ret_L_F());
}
struct L_F zig_ret_L_F();
int assert_ret_L_F(){
    return assert_L_F(zig_ret_L_F());
}

int assert_L_F_C(struct L_F_C lv){
    int err = 0;
  if (lv.v1 != 27713) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 118) err = 3;
  return err;
}
struct L_F_C ret_L_F_C(){
    struct L_F_C lv = { .v1 = 27713, .v2 = -2.125, .v3 = 118 };
    return lv;
}
int zig_assert_L_F_C(struct L_F_C);
int send_L_F_C(){
    return zig_assert_L_F_C(ret_L_F_C());
}
struct L_F_C zig_ret_L_F_C();
int assert_ret_L_F_C(){
    return assert_L_F_C(zig_ret_L_F_C());
}

int assert_L_F_D(struct L_F_D lv){
    int err = 0;
  if (lv.v1 != 10395) err = 1;
  if (lv.v2 != -2.125) err = 2;
  if (lv.v3 != 1.0) err = 3;
  return err;
}
struct L_F_D ret_L_F_D(){
    struct L_F_D lv = { .v1 = 10395, .v2 = -2.125, .v3 = 1.0 };
    return lv;
}
int zig_assert_L_F_D(struct L_F_D);
int send_L_F_D(){
    return zig_assert_L_F_D(ret_L_F_D());
}
struct L_F_D zig_ret_L_F_D();
int assert_ret_L_F_D(){
    return assert_L_F_D(zig_ret_L_F_D());
}

int assert_L_F_F(struct L_F_F lv){
    int err = 0;
  if (lv.v1 != 17552) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct L_F_F ret_L_F_F(){
    struct L_F_F lv = { .v1 = 17552, .v2 = 4.5, .v3 = 4.5 };
    return lv;
}
int zig_assert_L_F_F(struct L_F_F);
int send_L_F_F(){
    return zig_assert_L_F_F(ret_L_F_F());
}
struct L_F_F zig_ret_L_F_F();
int assert_ret_L_F_F(){
    return assert_L_F_F(zig_ret_L_F_F());
}

int assert_L_F_I(struct L_F_I lv){
    int err = 0;
  if (lv.v1 != 17060) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 4447) err = 3;
  return err;
}
struct L_F_I ret_L_F_I(){
    struct L_F_I lv = { .v1 = 17060, .v2 = 4.5, .v3 = 4447 };
    return lv;
}
int zig_assert_L_F_I(struct L_F_I);
int send_L_F_I(){
    return zig_assert_L_F_I(ret_L_F_I());
}
struct L_F_I zig_ret_L_F_I();
int assert_ret_L_F_I(){
    return assert_L_F_I(zig_ret_L_F_I());
}

int assert_L_F_Ip(struct L_F_Ip lv){
    int err = 0;
  if (lv.v1 != 26616) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_F_Ip ret_L_F_Ip(){
    struct L_F_Ip lv = { .v1 = 26616, .v2 = 0.5, .v3 = 0 };
    return lv;
}
int zig_assert_L_F_Ip(struct L_F_Ip);
int send_L_F_Ip(){
    return zig_assert_L_F_Ip(ret_L_F_Ip());
}
struct L_F_Ip zig_ret_L_F_Ip();
int assert_ret_L_F_Ip(){
    return assert_L_F_Ip(zig_ret_L_F_Ip());
}

int assert_L_F_L(struct L_F_L lv){
    int err = 0;
  if (lv.v1 != 24549) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 21763) err = 3;
  return err;
}
struct L_F_L ret_L_F_L(){
    struct L_F_L lv = { .v1 = 24549, .v2 = 0.5, .v3 = 21763 };
    return lv;
}
int zig_assert_L_F_L(struct L_F_L);
int send_L_F_L(){
    return zig_assert_L_F_L(ret_L_F_L());
}
struct L_F_L zig_ret_L_F_L();
int assert_ret_L_F_L(){
    return assert_L_F_L(zig_ret_L_F_L());
}

int assert_L_F_S(struct L_F_S lv){
    int err = 0;
  if (lv.v1 != 4641) err = 1;
  if (lv.v2 != 1.0) err = 2;
  if (lv.v3 != 17449) err = 3;
  return err;
}
struct L_F_S ret_L_F_S(){
    struct L_F_S lv = { .v1 = 4641, .v2 = 1.0, .v3 = 17449 };
    return lv;
}
int zig_assert_L_F_S(struct L_F_S);
int send_L_F_S(){
    return zig_assert_L_F_S(ret_L_F_S());
}
struct L_F_S zig_ret_L_F_S();
int assert_ret_L_F_S(){
    return assert_L_F_S(zig_ret_L_F_S());
}

int assert_L_F_Uc(struct L_F_Uc lv){
    int err = 0;
  if (lv.v1 != 28826) err = 1;
  if (lv.v2 != 0.5) err = 2;
  if (lv.v3 != 9) err = 3;
  return err;
}
struct L_F_Uc ret_L_F_Uc(){
    struct L_F_Uc lv = { .v1 = 28826, .v2 = 0.5, .v3 = 9 };
    return lv;
}
int zig_assert_L_F_Uc(struct L_F_Uc);
int send_L_F_Uc(){
    return zig_assert_L_F_Uc(ret_L_F_Uc());
}
struct L_F_Uc zig_ret_L_F_Uc();
int assert_ret_L_F_Uc(){
    return assert_L_F_Uc(zig_ret_L_F_Uc());
}

int assert_L_F_Ui(struct L_F_Ui lv){
    int err = 0;
  if (lv.v1 != 3058) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 31769) err = 3;
  return err;
}
struct L_F_Ui ret_L_F_Ui(){
    struct L_F_Ui lv = { .v1 = 3058, .v2 = 7.0, .v3 = 31769 };
    return lv;
}
int zig_assert_L_F_Ui(struct L_F_Ui);
int send_L_F_Ui(){
    return zig_assert_L_F_Ui(ret_L_F_Ui());
}
struct L_F_Ui zig_ret_L_F_Ui();
int assert_ret_L_F_Ui(){
    return assert_L_F_Ui(zig_ret_L_F_Ui());
}

int assert_L_F_Ul(struct L_F_Ul lv){
    int err = 0;
  if (lv.v1 != 22249) err = 1;
  if (lv.v2 != 0.875) err = 2;
  if (lv.v3 != 6416) err = 3;
  return err;
}
struct L_F_Ul ret_L_F_Ul(){
    struct L_F_Ul lv = { .v1 = 22249, .v2 = 0.875, .v3 = 6416 };
    return lv;
}
int zig_assert_L_F_Ul(struct L_F_Ul);
int send_L_F_Ul(){
    return zig_assert_L_F_Ul(ret_L_F_Ul());
}
struct L_F_Ul zig_ret_L_F_Ul();
int assert_ret_L_F_Ul(){
    return assert_L_F_Ul(zig_ret_L_F_Ul());
}

int assert_L_F_Us(struct L_F_Us lv){
    int err = 0;
  if (lv.v1 != 27116) err = 1;
  if (lv.v2 != 4.5) err = 2;
  if (lv.v3 != 28703) err = 3;
  return err;
}
struct L_F_Us ret_L_F_Us(){
    struct L_F_Us lv = { .v1 = 27116, .v2 = 4.5, .v3 = 28703 };
    return lv;
}
int zig_assert_L_F_Us(struct L_F_Us);
int send_L_F_Us(){
    return zig_assert_L_F_Us(ret_L_F_Us());
}
struct L_F_Us zig_ret_L_F_Us();
int assert_ret_L_F_Us(){
    return assert_L_F_Us(zig_ret_L_F_Us());
}

int assert_L_F_Vp(struct L_F_Vp lv){
    int err = 0;
  if (lv.v1 != 9926) err = 1;
  if (lv.v2 != 7.0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_F_Vp ret_L_F_Vp(){
    struct L_F_Vp lv = { .v1 = 9926, .v2 = 7.0, .v3 = 0 };
    return lv;
}
int zig_assert_L_F_Vp(struct L_F_Vp);
int send_L_F_Vp(){
    return zig_assert_L_F_Vp(ret_L_F_Vp());
}
struct L_F_Vp zig_ret_L_F_Vp();
int assert_ret_L_F_Vp(){
    return assert_L_F_Vp(zig_ret_L_F_Vp());
}

int assert_L_I(struct L_I lv){
    int err = 0;
  if (lv.v1 != 12936) err = 1;
  if (lv.v2 != 5669) err = 2;
  return err;
}
struct L_I ret_L_I(){
    struct L_I lv = { .v1 = 12936, .v2 = 5669 };
    return lv;
}
int zig_assert_L_I(struct L_I);
int send_L_I(){
    return zig_assert_L_I(ret_L_I());
}
struct L_I zig_ret_L_I();
int assert_ret_L_I(){
    return assert_L_I(zig_ret_L_I());
}

int assert_L_I_C(struct L_I_C lv){
    int err = 0;
  if (lv.v1 != 31205) err = 1;
  if (lv.v2 != 30676) err = 2;
  if (lv.v3 != 42) err = 3;
  return err;
}
struct L_I_C ret_L_I_C(){
    struct L_I_C lv = { .v1 = 31205, .v2 = 30676, .v3 = 42 };
    return lv;
}
int zig_assert_L_I_C(struct L_I_C);
int send_L_I_C(){
    return zig_assert_L_I_C(ret_L_I_C());
}
struct L_I_C zig_ret_L_I_C();
int assert_ret_L_I_C(){
    return assert_L_I_C(zig_ret_L_I_C());
}

int assert_L_I_D(struct L_I_D lv){
    int err = 0;
  if (lv.v1 != 5934) err = 1;
  if (lv.v2 != 3247) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct L_I_D ret_L_I_D(){
    struct L_I_D lv = { .v1 = 5934, .v2 = 3247, .v3 = -2.125 };
    return lv;
}
int zig_assert_L_I_D(struct L_I_D);
int send_L_I_D(){
    return zig_assert_L_I_D(ret_L_I_D());
}
struct L_I_D zig_ret_L_I_D();
int assert_ret_L_I_D(){
    return assert_L_I_D(zig_ret_L_I_D());
}

int assert_L_I_F(struct L_I_F lv){
    int err = 0;
  if (lv.v1 != 28228) err = 1;
  if (lv.v2 != 20992) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct L_I_F ret_L_I_F(){
    struct L_I_F lv = { .v1 = 28228, .v2 = 20992, .v3 = 0.5 };
    return lv;
}
int zig_assert_L_I_F(struct L_I_F);
int send_L_I_F(){
    return zig_assert_L_I_F(ret_L_I_F());
}
struct L_I_F zig_ret_L_I_F();
int assert_ret_L_I_F(){
    return assert_L_I_F(zig_ret_L_I_F());
}

int assert_L_I_I(struct L_I_I lv){
    int err = 0;
  if (lv.v1 != 17949) err = 1;
  if (lv.v2 != 9355) err = 2;
  if (lv.v3 != 17358) err = 3;
  return err;
}
struct L_I_I ret_L_I_I(){
    struct L_I_I lv = { .v1 = 17949, .v2 = 9355, .v3 = 17358 };
    return lv;
}
int zig_assert_L_I_I(struct L_I_I);
int send_L_I_I(){
    return zig_assert_L_I_I(ret_L_I_I());
}
struct L_I_I zig_ret_L_I_I();
int assert_ret_L_I_I(){
    return assert_L_I_I(zig_ret_L_I_I());
}

int assert_L_I_Ip(struct L_I_Ip lv){
    int err = 0;
  if (lv.v1 != 7563) err = 1;
  if (lv.v2 != 12012) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_I_Ip ret_L_I_Ip(){
    struct L_I_Ip lv = { .v1 = 7563, .v2 = 12012, .v3 = 0 };
    return lv;
}
int zig_assert_L_I_Ip(struct L_I_Ip);
int send_L_I_Ip(){
    return zig_assert_L_I_Ip(ret_L_I_Ip());
}
struct L_I_Ip zig_ret_L_I_Ip();
int assert_ret_L_I_Ip(){
    return assert_L_I_Ip(zig_ret_L_I_Ip());
}

int assert_L_I_L(struct L_I_L lv){
    int err = 0;
  if (lv.v1 != 6588) err = 1;
  if (lv.v2 != 4063) err = 2;
  if (lv.v3 != 20680) err = 3;
  return err;
}
struct L_I_L ret_L_I_L(){
    struct L_I_L lv = { .v1 = 6588, .v2 = 4063, .v3 = 20680 };
    return lv;
}
int zig_assert_L_I_L(struct L_I_L);
int send_L_I_L(){
    return zig_assert_L_I_L(ret_L_I_L());
}
struct L_I_L zig_ret_L_I_L();
int assert_ret_L_I_L(){
    return assert_L_I_L(zig_ret_L_I_L());
}

int assert_L_I_S(struct L_I_S lv){
    int err = 0;
  if (lv.v1 != 1798) err = 1;
  if (lv.v2 != 32046) err = 2;
  if (lv.v3 != 3082) err = 3;
  return err;
}
struct L_I_S ret_L_I_S(){
    struct L_I_S lv = { .v1 = 1798, .v2 = 32046, .v3 = 3082 };
    return lv;
}
int zig_assert_L_I_S(struct L_I_S);
int send_L_I_S(){
    return zig_assert_L_I_S(ret_L_I_S());
}
struct L_I_S zig_ret_L_I_S();
int assert_ret_L_I_S(){
    return assert_L_I_S(zig_ret_L_I_S());
}

int assert_L_I_Uc(struct L_I_Uc lv){
    int err = 0;
  if (lv.v1 != 7486) err = 1;
  if (lv.v2 != 6856) err = 2;
  if (lv.v3 != 64) err = 3;
  return err;
}
struct L_I_Uc ret_L_I_Uc(){
    struct L_I_Uc lv = { .v1 = 7486, .v2 = 6856, .v3 = 64 };
    return lv;
}
int zig_assert_L_I_Uc(struct L_I_Uc);
int send_L_I_Uc(){
    return zig_assert_L_I_Uc(ret_L_I_Uc());
}
struct L_I_Uc zig_ret_L_I_Uc();
int assert_ret_L_I_Uc(){
    return assert_L_I_Uc(zig_ret_L_I_Uc());
}

int assert_L_I_Ui(struct L_I_Ui lv){
    int err = 0;
  if (lv.v1 != 20262) err = 1;
  if (lv.v2 != 602) err = 2;
  if (lv.v3 != 32755) err = 3;
  return err;
}
struct L_I_Ui ret_L_I_Ui(){
    struct L_I_Ui lv = { .v1 = 20262, .v2 = 602, .v3 = 32755 };
    return lv;
}
int zig_assert_L_I_Ui(struct L_I_Ui);
int send_L_I_Ui(){
    return zig_assert_L_I_Ui(ret_L_I_Ui());
}
struct L_I_Ui zig_ret_L_I_Ui();
int assert_ret_L_I_Ui(){
    return assert_L_I_Ui(zig_ret_L_I_Ui());
}

int assert_L_I_Ul(struct L_I_Ul lv){
    int err = 0;
  if (lv.v1 != 25833) err = 1;
  if (lv.v2 != 12307) err = 2;
  if (lv.v3 != 8335) err = 3;
  return err;
}
struct L_I_Ul ret_L_I_Ul(){
    struct L_I_Ul lv = { .v1 = 25833, .v2 = 12307, .v3 = 8335 };
    return lv;
}
int zig_assert_L_I_Ul(struct L_I_Ul);
int send_L_I_Ul(){
    return zig_assert_L_I_Ul(ret_L_I_Ul());
}
struct L_I_Ul zig_ret_L_I_Ul();
int assert_ret_L_I_Ul(){
    return assert_L_I_Ul(zig_ret_L_I_Ul());
}

int assert_L_I_Us(struct L_I_Us lv){
    int err = 0;
  if (lv.v1 != 16887) err = 1;
  if (lv.v2 != 17516) err = 2;
  if (lv.v3 != 23467) err = 3;
  return err;
}
struct L_I_Us ret_L_I_Us(){
    struct L_I_Us lv = { .v1 = 16887, .v2 = 17516, .v3 = 23467 };
    return lv;
}
int zig_assert_L_I_Us(struct L_I_Us);
int send_L_I_Us(){
    return zig_assert_L_I_Us(ret_L_I_Us());
}
struct L_I_Us zig_ret_L_I_Us();
int assert_ret_L_I_Us(){
    return assert_L_I_Us(zig_ret_L_I_Us());
}

int assert_L_I_Vp(struct L_I_Vp lv){
    int err = 0;
  if (lv.v1 != 31263) err = 1;
  if (lv.v2 != 25490) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_I_Vp ret_L_I_Vp(){
    struct L_I_Vp lv = { .v1 = 31263, .v2 = 25490, .v3 = 0 };
    return lv;
}
int zig_assert_L_I_Vp(struct L_I_Vp);
int send_L_I_Vp(){
    return zig_assert_L_I_Vp(ret_L_I_Vp());
}
struct L_I_Vp zig_ret_L_I_Vp();
int assert_ret_L_I_Vp(){
    return assert_L_I_Vp(zig_ret_L_I_Vp());
}

int assert_L_Ip(struct L_Ip lv){
    int err = 0;
  if (lv.v1 != 20916) err = 1;
  if (lv.v2 != 0) err = 2;
  return err;
}
struct L_Ip ret_L_Ip(){
    struct L_Ip lv = { .v1 = 20916, .v2 = 0 };
    return lv;
}
int zig_assert_L_Ip(struct L_Ip);
int send_L_Ip(){
    return zig_assert_L_Ip(ret_L_Ip());
}
struct L_Ip zig_ret_L_Ip();
int assert_ret_L_Ip(){
    return assert_L_Ip(zig_ret_L_Ip());
}

int assert_L_Ip_C(struct L_Ip_C lv){
    int err = 0;
  if (lv.v1 != 29257) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_Ip_C ret_L_Ip_C(){
    struct L_Ip_C lv = { .v1 = 29257, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_L_Ip_C(struct L_Ip_C);
int send_L_Ip_C(){
    return zig_assert_L_Ip_C(ret_L_Ip_C());
}
struct L_Ip_C zig_ret_L_Ip_C();
int assert_ret_L_Ip_C(){
    return assert_L_Ip_C(zig_ret_L_Ip_C());
}

int assert_L_Ip_D(struct L_Ip_D lv){
    int err = 0;
  if (lv.v1 != 26328) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct L_Ip_D ret_L_Ip_D(){
    struct L_Ip_D lv = { .v1 = 26328, .v2 = 0, .v3 = 0.5 };
    return lv;
}
int zig_assert_L_Ip_D(struct L_Ip_D);
int send_L_Ip_D(){
    return zig_assert_L_Ip_D(ret_L_Ip_D());
}
struct L_Ip_D zig_ret_L_Ip_D();
int assert_ret_L_Ip_D(){
    return assert_L_Ip_D(zig_ret_L_Ip_D());
}

int assert_L_Ip_F(struct L_Ip_F lv){
    int err = 0;
  if (lv.v1 != 7686) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 4.5) err = 3;
  return err;
}
struct L_Ip_F ret_L_Ip_F(){
    struct L_Ip_F lv = { .v1 = 7686, .v2 = 0, .v3 = 4.5 };
    return lv;
}
int zig_assert_L_Ip_F(struct L_Ip_F);
int send_L_Ip_F(){
    return zig_assert_L_Ip_F(ret_L_Ip_F());
}
struct L_Ip_F zig_ret_L_Ip_F();
int assert_ret_L_Ip_F(){
    return assert_L_Ip_F(zig_ret_L_Ip_F());
}

int assert_L_Ip_I(struct L_Ip_I lv){
    int err = 0;
  if (lv.v1 != 10061) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 24203) err = 3;
  return err;
}
struct L_Ip_I ret_L_Ip_I(){
    struct L_Ip_I lv = { .v1 = 10061, .v2 = 0, .v3 = 24203 };
    return lv;
}
int zig_assert_L_Ip_I(struct L_Ip_I);
int send_L_Ip_I(){
    return zig_assert_L_Ip_I(ret_L_Ip_I());
}
struct L_Ip_I zig_ret_L_Ip_I();
int assert_ret_L_Ip_I(){
    return assert_L_Ip_I(zig_ret_L_Ip_I());
}

int assert_L_Ip_Ip(struct L_Ip_Ip lv){
    int err = 0;
  if (lv.v1 != 11192) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_Ip_Ip ret_L_Ip_Ip(){
    struct L_Ip_Ip lv = { .v1 = 11192, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_L_Ip_Ip(struct L_Ip_Ip);
int send_L_Ip_Ip(){
    return zig_assert_L_Ip_Ip(ret_L_Ip_Ip());
}
struct L_Ip_Ip zig_ret_L_Ip_Ip();
int assert_ret_L_Ip_Ip(){
    return assert_L_Ip_Ip(zig_ret_L_Ip_Ip());
}

int assert_L_Ip_L(struct L_Ip_L lv){
    int err = 0;
  if (lv.v1 != 6093) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 25441) err = 3;
  return err;
}
struct L_Ip_L ret_L_Ip_L(){
    struct L_Ip_L lv = { .v1 = 6093, .v2 = 0, .v3 = 25441 };
    return lv;
}
int zig_assert_L_Ip_L(struct L_Ip_L);
int send_L_Ip_L(){
    return zig_assert_L_Ip_L(ret_L_Ip_L());
}
struct L_Ip_L zig_ret_L_Ip_L();
int assert_ret_L_Ip_L(){
    return assert_L_Ip_L(zig_ret_L_Ip_L());
}

int assert_L_Ip_S(struct L_Ip_S lv){
    int err = 0;
  if (lv.v1 != 1928) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 1004) err = 3;
  return err;
}
struct L_Ip_S ret_L_Ip_S(){
    struct L_Ip_S lv = { .v1 = 1928, .v2 = 0, .v3 = 1004 };
    return lv;
}
int zig_assert_L_Ip_S(struct L_Ip_S);
int send_L_Ip_S(){
    return zig_assert_L_Ip_S(ret_L_Ip_S());
}
struct L_Ip_S zig_ret_L_Ip_S();
int assert_ret_L_Ip_S(){
    return assert_L_Ip_S(zig_ret_L_Ip_S());
}

int assert_L_Ip_Uc(struct L_Ip_Uc lv){
    int err = 0;
  if (lv.v1 != 25050) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 52) err = 3;
  return err;
}
struct L_Ip_Uc ret_L_Ip_Uc(){
    struct L_Ip_Uc lv = { .v1 = 25050, .v2 = 0, .v3 = 52 };
    return lv;
}
int zig_assert_L_Ip_Uc(struct L_Ip_Uc);
int send_L_Ip_Uc(){
    return zig_assert_L_Ip_Uc(ret_L_Ip_Uc());
}
struct L_Ip_Uc zig_ret_L_Ip_Uc();
int assert_ret_L_Ip_Uc(){
    return assert_L_Ip_Uc(zig_ret_L_Ip_Uc());
}

int assert_L_Ip_Ui(struct L_Ip_Ui lv){
    int err = 0;
  if (lv.v1 != 3954) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 30949) err = 3;
  return err;
}
struct L_Ip_Ui ret_L_Ip_Ui(){
    struct L_Ip_Ui lv = { .v1 = 3954, .v2 = 0, .v3 = 30949 };
    return lv;
}
int zig_assert_L_Ip_Ui(struct L_Ip_Ui);
int send_L_Ip_Ui(){
    return zig_assert_L_Ip_Ui(ret_L_Ip_Ui());
}
struct L_Ip_Ui zig_ret_L_Ip_Ui();
int assert_ret_L_Ip_Ui(){
    return assert_L_Ip_Ui(zig_ret_L_Ip_Ui());
}

int assert_L_Ip_Ul(struct L_Ip_Ul lv){
    int err = 0;
  if (lv.v1 != 698) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 30067) err = 3;
  return err;
}
struct L_Ip_Ul ret_L_Ip_Ul(){
    struct L_Ip_Ul lv = { .v1 = 698, .v2 = 0, .v3 = 30067 };
    return lv;
}
int zig_assert_L_Ip_Ul(struct L_Ip_Ul);
int send_L_Ip_Ul(){
    return zig_assert_L_Ip_Ul(ret_L_Ip_Ul());
}
struct L_Ip_Ul zig_ret_L_Ip_Ul();
int assert_ret_L_Ip_Ul(){
    return assert_L_Ip_Ul(zig_ret_L_Ip_Ul());
}

int assert_L_Ip_Us(struct L_Ip_Us lv){
    int err = 0;
  if (lv.v1 != 28375) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 8024) err = 3;
  return err;
}
struct L_Ip_Us ret_L_Ip_Us(){
    struct L_Ip_Us lv = { .v1 = 28375, .v2 = 0, .v3 = 8024 };
    return lv;
}
int zig_assert_L_Ip_Us(struct L_Ip_Us);
int send_L_Ip_Us(){
    return zig_assert_L_Ip_Us(ret_L_Ip_Us());
}
struct L_Ip_Us zig_ret_L_Ip_Us();
int assert_ret_L_Ip_Us(){
    return assert_L_Ip_Us(zig_ret_L_Ip_Us());
}

int assert_L_Ip_Vp(struct L_Ip_Vp lv){
    int err = 0;
  if (lv.v1 != 7723) err = 1;
  if (lv.v2 != 0) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_Ip_Vp ret_L_Ip_Vp(){
    struct L_Ip_Vp lv = { .v1 = 7723, .v2 = 0, .v3 = 0 };
    return lv;
}
int zig_assert_L_Ip_Vp(struct L_Ip_Vp);
int send_L_Ip_Vp(){
    return zig_assert_L_Ip_Vp(ret_L_Ip_Vp());
}
struct L_Ip_Vp zig_ret_L_Ip_Vp();
int assert_ret_L_Ip_Vp(){
    return assert_L_Ip_Vp(zig_ret_L_Ip_Vp());
}

int assert_L_L(struct L_L lv){
    int err = 0;
  if (lv.v1 != 30364) err = 1;
  if (lv.v2 != 10204) err = 2;
  return err;
}
struct L_L ret_L_L(){
    struct L_L lv = { .v1 = 30364, .v2 = 10204 };
    return lv;
}
int zig_assert_L_L(struct L_L);
int send_L_L(){
    return zig_assert_L_L(ret_L_L());
}
struct L_L zig_ret_L_L();
int assert_ret_L_L(){
    return assert_L_L(zig_ret_L_L());
}

int assert_L_L_C(struct L_L_C lv){
    int err = 0;
  if (lv.v1 != 7816) err = 1;
  if (lv.v2 != 30487) err = 2;
  if (lv.v3 != 16) err = 3;
  return err;
}
struct L_L_C ret_L_L_C(){
    struct L_L_C lv = { .v1 = 7816, .v2 = 30487, .v3 = 16 };
    return lv;
}
int zig_assert_L_L_C(struct L_L_C);
int send_L_L_C(){
    return zig_assert_L_L_C(ret_L_L_C());
}
struct L_L_C zig_ret_L_L_C();
int assert_ret_L_L_C(){
    return assert_L_L_C(zig_ret_L_L_C());
}

int assert_L_L_D(struct L_L_D lv){
    int err = 0;
  if (lv.v1 != 32294) err = 1;
  if (lv.v2 != 28652) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct L_L_D ret_L_L_D(){
    struct L_L_D lv = { .v1 = 32294, .v2 = 28652, .v3 = -0.25 };
    return lv;
}
int zig_assert_L_L_D(struct L_L_D);
int send_L_L_D(){
    return zig_assert_L_L_D(ret_L_L_D());
}
struct L_L_D zig_ret_L_L_D();
int assert_ret_L_L_D(){
    return assert_L_L_D(zig_ret_L_L_D());
}

int assert_L_L_F(struct L_L_F lv){
    int err = 0;
  if (lv.v1 != 20719) err = 1;
  if (lv.v2 != 23780) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct L_L_F ret_L_L_F(){
    struct L_L_F lv = { .v1 = 20719, .v2 = 23780, .v3 = -2.125 };
    return lv;
}
int zig_assert_L_L_F(struct L_L_F);
int send_L_L_F(){
    return zig_assert_L_L_F(ret_L_L_F());
}
struct L_L_F zig_ret_L_L_F();
int assert_ret_L_L_F(){
    return assert_L_L_F(zig_ret_L_L_F());
}

int assert_L_L_I(struct L_L_I lv){
    int err = 0;
  if (lv.v1 != 22923) err = 1;
  if (lv.v2 != 25843) err = 2;
  if (lv.v3 != 6349) err = 3;
  return err;
}
struct L_L_I ret_L_L_I(){
    struct L_L_I lv = { .v1 = 22923, .v2 = 25843, .v3 = 6349 };
    return lv;
}
int zig_assert_L_L_I(struct L_L_I);
int send_L_L_I(){
    return zig_assert_L_L_I(ret_L_L_I());
}
struct L_L_I zig_ret_L_L_I();
int assert_ret_L_L_I(){
    return assert_L_L_I(zig_ret_L_L_I());
}

int assert_L_L_Ip(struct L_L_Ip lv){
    int err = 0;
  if (lv.v1 != 3010) err = 1;
  if (lv.v2 != 17169) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_L_Ip ret_L_L_Ip(){
    struct L_L_Ip lv = { .v1 = 3010, .v2 = 17169, .v3 = 0 };
    return lv;
}
int zig_assert_L_L_Ip(struct L_L_Ip);
int send_L_L_Ip(){
    return zig_assert_L_L_Ip(ret_L_L_Ip());
}
struct L_L_Ip zig_ret_L_L_Ip();
int assert_ret_L_L_Ip(){
    return assert_L_L_Ip(zig_ret_L_L_Ip());
}

int assert_L_L_L(struct L_L_L lv){
    int err = 0;
  if (lv.v1 != 23148) err = 1;
  if (lv.v2 != 28037) err = 2;
  if (lv.v3 != 5458) err = 3;
  return err;
}
struct L_L_L ret_L_L_L(){
    struct L_L_L lv = { .v1 = 23148, .v2 = 28037, .v3 = 5458 };
    return lv;
}
int zig_assert_L_L_L(struct L_L_L);
int send_L_L_L(){
    return zig_assert_L_L_L(ret_L_L_L());
}
struct L_L_L zig_ret_L_L_L();
int assert_ret_L_L_L(){
    return assert_L_L_L(zig_ret_L_L_L());
}

int assert_L_L_S(struct L_L_S lv){
    int err = 0;
  if (lv.v1 != 7277) err = 1;
  if (lv.v2 != 22459) err = 2;
  if (lv.v3 != 11369) err = 3;
  return err;
}
struct L_L_S ret_L_L_S(){
    struct L_L_S lv = { .v1 = 7277, .v2 = 22459, .v3 = 11369 };
    return lv;
}
int zig_assert_L_L_S(struct L_L_S);
int send_L_L_S(){
    return zig_assert_L_L_S(ret_L_L_S());
}
struct L_L_S zig_ret_L_L_S();
int assert_ret_L_L_S(){
    return assert_L_L_S(zig_ret_L_L_S());
}

int assert_L_L_Uc(struct L_L_Uc lv){
    int err = 0;
  if (lv.v1 != 18427) err = 1;
  if (lv.v2 != 15283) err = 2;
  if (lv.v3 != 64) err = 3;
  return err;
}
struct L_L_Uc ret_L_L_Uc(){
    struct L_L_Uc lv = { .v1 = 18427, .v2 = 15283, .v3 = 64 };
    return lv;
}
int zig_assert_L_L_Uc(struct L_L_Uc);
int send_L_L_Uc(){
    return zig_assert_L_L_Uc(ret_L_L_Uc());
}
struct L_L_Uc zig_ret_L_L_Uc();
int assert_ret_L_L_Uc(){
    return assert_L_L_Uc(zig_ret_L_L_Uc());
}

int assert_L_L_Ui(struct L_L_Ui lv){
    int err = 0;
  if (lv.v1 != 12217) err = 1;
  if (lv.v2 != 13821) err = 2;
  if (lv.v3 != 29427) err = 3;
  return err;
}
struct L_L_Ui ret_L_L_Ui(){
    struct L_L_Ui lv = { .v1 = 12217, .v2 = 13821, .v3 = 29427 };
    return lv;
}
int zig_assert_L_L_Ui(struct L_L_Ui);
int send_L_L_Ui(){
    return zig_assert_L_L_Ui(ret_L_L_Ui());
}
struct L_L_Ui zig_ret_L_L_Ui();
int assert_ret_L_L_Ui(){
    return assert_L_L_Ui(zig_ret_L_L_Ui());
}

int assert_L_L_Ul(struct L_L_Ul lv){
    int err = 0;
  if (lv.v1 != 7022) err = 1;
  if (lv.v2 != 4806) err = 2;
  if (lv.v3 != 28033) err = 3;
  return err;
}
struct L_L_Ul ret_L_L_Ul(){
    struct L_L_Ul lv = { .v1 = 7022, .v2 = 4806, .v3 = 28033 };
    return lv;
}
int zig_assert_L_L_Ul(struct L_L_Ul);
int send_L_L_Ul(){
    return zig_assert_L_L_Ul(ret_L_L_Ul());
}
struct L_L_Ul zig_ret_L_L_Ul();
int assert_ret_L_L_Ul(){
    return assert_L_L_Ul(zig_ret_L_L_Ul());
}

int assert_L_L_Us(struct L_L_Us lv){
    int err = 0;
  if (lv.v1 != 27566) err = 1;
  if (lv.v2 != 17954) err = 2;
  if (lv.v3 != 16079) err = 3;
  return err;
}
struct L_L_Us ret_L_L_Us(){
    struct L_L_Us lv = { .v1 = 27566, .v2 = 17954, .v3 = 16079 };
    return lv;
}
int zig_assert_L_L_Us(struct L_L_Us);
int send_L_L_Us(){
    return zig_assert_L_L_Us(ret_L_L_Us());
}
struct L_L_Us zig_ret_L_L_Us();
int assert_ret_L_L_Us(){
    return assert_L_L_Us(zig_ret_L_L_Us());
}

int assert_L_L_Vp(struct L_L_Vp lv){
    int err = 0;
  if (lv.v1 != 3512) err = 1;
  if (lv.v2 != 19931) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_L_Vp ret_L_L_Vp(){
    struct L_L_Vp lv = { .v1 = 3512, .v2 = 19931, .v3 = 0 };
    return lv;
}
int zig_assert_L_L_Vp(struct L_L_Vp);
int send_L_L_Vp(){
    return zig_assert_L_L_Vp(ret_L_L_Vp());
}
struct L_L_Vp zig_ret_L_L_Vp();
int assert_ret_L_L_Vp(){
    return assert_L_L_Vp(zig_ret_L_L_Vp());
}

int assert_L_S(struct L_S lv){
    int err = 0;
  if (lv.v1 != 11878) err = 1;
  if (lv.v2 != 14845) err = 2;
  return err;
}
struct L_S ret_L_S(){
    struct L_S lv = { .v1 = 11878, .v2 = 14845 };
    return lv;
}
int zig_assert_L_S(struct L_S);
int send_L_S(){
    return zig_assert_L_S(ret_L_S());
}
struct L_S zig_ret_L_S();
int assert_ret_L_S(){
    return assert_L_S(zig_ret_L_S());
}

int assert_L_S_C(struct L_S_C lv){
    int err = 0;
  if (lv.v1 != 27515) err = 1;
  if (lv.v2 != 23281) err = 2;
  if (lv.v3 != 73) err = 3;
  return err;
}
struct L_S_C ret_L_S_C(){
    struct L_S_C lv = { .v1 = 27515, .v2 = 23281, .v3 = 73 };
    return lv;
}
int zig_assert_L_S_C(struct L_S_C);
int send_L_S_C(){
    return zig_assert_L_S_C(ret_L_S_C());
}
struct L_S_C zig_ret_L_S_C();
int assert_ret_L_S_C(){
    return assert_L_S_C(zig_ret_L_S_C());
}

int assert_L_S_D(struct L_S_D lv){
    int err = 0;
  if (lv.v1 != 3952) err = 1;
  if (lv.v2 != 16015) err = 2;
  if (lv.v3 != -2.125) err = 3;
  return err;
}
struct L_S_D ret_L_S_D(){
    struct L_S_D lv = { .v1 = 3952, .v2 = 16015, .v3 = -2.125 };
    return lv;
}
int zig_assert_L_S_D(struct L_S_D);
int send_L_S_D(){
    return zig_assert_L_S_D(ret_L_S_D());
}
struct L_S_D zig_ret_L_S_D();
int assert_ret_L_S_D(){
    return assert_L_S_D(zig_ret_L_S_D());
}

int assert_L_S_F(struct L_S_F lv){
    int err = 0;
  if (lv.v1 != 18577) err = 1;
  if (lv.v2 != 31234) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct L_S_F ret_L_S_F(){
    struct L_S_F lv = { .v1 = 18577, .v2 = 31234, .v3 = -0.25 };
    return lv;
}
int zig_assert_L_S_F(struct L_S_F);
int send_L_S_F(){
    return zig_assert_L_S_F(ret_L_S_F());
}
struct L_S_F zig_ret_L_S_F();
int assert_ret_L_S_F(){
    return assert_L_S_F(zig_ret_L_S_F());
}

int assert_L_S_I(struct L_S_I lv){
    int err = 0;
  if (lv.v1 != 32013) err = 1;
  if (lv.v2 != 18469) err = 2;
  if (lv.v3 != 26305) err = 3;
  return err;
}
struct L_S_I ret_L_S_I(){
    struct L_S_I lv = { .v1 = 32013, .v2 = 18469, .v3 = 26305 };
    return lv;
}
int zig_assert_L_S_I(struct L_S_I);
int send_L_S_I(){
    return zig_assert_L_S_I(ret_L_S_I());
}
struct L_S_I zig_ret_L_S_I();
int assert_ret_L_S_I(){
    return assert_L_S_I(zig_ret_L_S_I());
}

int assert_L_S_Ip(struct L_S_Ip lv){
    int err = 0;
  if (lv.v1 != 14977) err = 1;
  if (lv.v2 != 25517) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_S_Ip ret_L_S_Ip(){
    struct L_S_Ip lv = { .v1 = 14977, .v2 = 25517, .v3 = 0 };
    return lv;
}
int zig_assert_L_S_Ip(struct L_S_Ip);
int send_L_S_Ip(){
    return zig_assert_L_S_Ip(ret_L_S_Ip());
}
struct L_S_Ip zig_ret_L_S_Ip();
int assert_ret_L_S_Ip(){
    return assert_L_S_Ip(zig_ret_L_S_Ip());
}

int assert_L_S_L(struct L_S_L lv){
    int err = 0;
  if (lv.v1 != 17805) err = 1;
  if (lv.v2 != 29070) err = 2;
  if (lv.v3 != 10093) err = 3;
  return err;
}
struct L_S_L ret_L_S_L(){
    struct L_S_L lv = { .v1 = 17805, .v2 = 29070, .v3 = 10093 };
    return lv;
}
int zig_assert_L_S_L(struct L_S_L);
int send_L_S_L(){
    return zig_assert_L_S_L(ret_L_S_L());
}
struct L_S_L zig_ret_L_S_L();
int assert_ret_L_S_L(){
    return assert_L_S_L(zig_ret_L_S_L());
}

int assert_L_S_S(struct L_S_S lv){
    int err = 0;
  if (lv.v1 != 23542) err = 1;
  if (lv.v2 != 27277) err = 2;
  if (lv.v3 != 28129) err = 3;
  return err;
}
struct L_S_S ret_L_S_S(){
    struct L_S_S lv = { .v1 = 23542, .v2 = 27277, .v3 = 28129 };
    return lv;
}
int zig_assert_L_S_S(struct L_S_S);
int send_L_S_S(){
    return zig_assert_L_S_S(ret_L_S_S());
}
struct L_S_S zig_ret_L_S_S();
int assert_ret_L_S_S(){
    return assert_L_S_S(zig_ret_L_S_S());
}

int assert_L_S_Uc(struct L_S_Uc lv){
    int err = 0;
  if (lv.v1 != 2260) err = 1;
  if (lv.v2 != 1295) err = 2;
  if (lv.v3 != 101) err = 3;
  return err;
}
struct L_S_Uc ret_L_S_Uc(){
    struct L_S_Uc lv = { .v1 = 2260, .v2 = 1295, .v3 = 101 };
    return lv;
}
int zig_assert_L_S_Uc(struct L_S_Uc);
int send_L_S_Uc(){
    return zig_assert_L_S_Uc(ret_L_S_Uc());
}
struct L_S_Uc zig_ret_L_S_Uc();
int assert_ret_L_S_Uc(){
    return assert_L_S_Uc(zig_ret_L_S_Uc());
}

int assert_L_S_Ui(struct L_S_Ui lv){
    int err = 0;
  if (lv.v1 != 22253) err = 1;
  if (lv.v2 != 9849) err = 2;
  if (lv.v3 != 19663) err = 3;
  return err;
}
struct L_S_Ui ret_L_S_Ui(){
    struct L_S_Ui lv = { .v1 = 22253, .v2 = 9849, .v3 = 19663 };
    return lv;
}
int zig_assert_L_S_Ui(struct L_S_Ui);
int send_L_S_Ui(){
    return zig_assert_L_S_Ui(ret_L_S_Ui());
}
struct L_S_Ui zig_ret_L_S_Ui();
int assert_ret_L_S_Ui(){
    return assert_L_S_Ui(zig_ret_L_S_Ui());
}

int assert_L_S_Ul(struct L_S_Ul lv){
    int err = 0;
  if (lv.v1 != 27283) err = 1;
  if (lv.v2 != 13769) err = 2;
  if (lv.v3 != 6286) err = 3;
  return err;
}
struct L_S_Ul ret_L_S_Ul(){
    struct L_S_Ul lv = { .v1 = 27283, .v2 = 13769, .v3 = 6286 };
    return lv;
}
int zig_assert_L_S_Ul(struct L_S_Ul);
int send_L_S_Ul(){
    return zig_assert_L_S_Ul(ret_L_S_Ul());
}
struct L_S_Ul zig_ret_L_S_Ul();
int assert_ret_L_S_Ul(){
    return assert_L_S_Ul(zig_ret_L_S_Ul());
}

int assert_L_S_Us(struct L_S_Us lv){
    int err = 0;
  if (lv.v1 != 16604) err = 1;
  if (lv.v2 != 3573) err = 2;
  if (lv.v3 != 7355) err = 3;
  return err;
}
struct L_S_Us ret_L_S_Us(){
    struct L_S_Us lv = { .v1 = 16604, .v2 = 3573, .v3 = 7355 };
    return lv;
}
int zig_assert_L_S_Us(struct L_S_Us);
int send_L_S_Us(){
    return zig_assert_L_S_Us(ret_L_S_Us());
}
struct L_S_Us zig_ret_L_S_Us();
int assert_ret_L_S_Us(){
    return assert_L_S_Us(zig_ret_L_S_Us());
}

int assert_L_S_Vp(struct L_S_Vp lv){
    int err = 0;
  if (lv.v1 != 31769) err = 1;
  if (lv.v2 != 2171) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_S_Vp ret_L_S_Vp(){
    struct L_S_Vp lv = { .v1 = 31769, .v2 = 2171, .v3 = 0 };
    return lv;
}
int zig_assert_L_S_Vp(struct L_S_Vp);
int send_L_S_Vp(){
    return zig_assert_L_S_Vp(ret_L_S_Vp());
}
struct L_S_Vp zig_ret_L_S_Vp();
int assert_ret_L_S_Vp(){
    return assert_L_S_Vp(zig_ret_L_S_Vp());
}

int assert_L_Uc(struct L_Uc lv){
    int err = 0;
  if (lv.v1 != 583) err = 1;
  if (lv.v2 != 59) err = 2;
  return err;
}
struct L_Uc ret_L_Uc(){
    struct L_Uc lv = { .v1 = 583, .v2 = 59 };
    return lv;
}
int zig_assert_L_Uc(struct L_Uc);
int send_L_Uc(){
    return zig_assert_L_Uc(ret_L_Uc());
}
struct L_Uc zig_ret_L_Uc();
int assert_ret_L_Uc(){
    return assert_L_Uc(zig_ret_L_Uc());
}

int assert_L_Uc_C(struct L_Uc_C lv){
    int err = 0;
  if (lv.v1 != 8467) err = 1;
  if (lv.v2 != 64) err = 2;
  if (lv.v3 != 98) err = 3;
  return err;
}
struct L_Uc_C ret_L_Uc_C(){
    struct L_Uc_C lv = { .v1 = 8467, .v2 = 64, .v3 = 98 };
    return lv;
}
int zig_assert_L_Uc_C(struct L_Uc_C);
int send_L_Uc_C(){
    return zig_assert_L_Uc_C(ret_L_Uc_C());
}
struct L_Uc_C zig_ret_L_Uc_C();
int assert_ret_L_Uc_C(){
    return assert_L_Uc_C(zig_ret_L_Uc_C());
}

int assert_L_Uc_D(struct L_Uc_D lv){
    int err = 0;
  if (lv.v1 != 1283) err = 1;
  if (lv.v2 != 30) err = 2;
  if (lv.v3 != -0.25) err = 3;
  return err;
}
struct L_Uc_D ret_L_Uc_D(){
    struct L_Uc_D lv = { .v1 = 1283, .v2 = 30, .v3 = -0.25 };
    return lv;
}
int zig_assert_L_Uc_D(struct L_Uc_D);
int send_L_Uc_D(){
    return zig_assert_L_Uc_D(ret_L_Uc_D());
}
struct L_Uc_D zig_ret_L_Uc_D();
int assert_ret_L_Uc_D(){
    return assert_L_Uc_D(zig_ret_L_Uc_D());
}

int assert_L_Uc_F(struct L_Uc_F lv){
    int err = 0;
  if (lv.v1 != 12781) err = 1;
  if (lv.v2 != 76) err = 2;
  if (lv.v3 != 0.5) err = 3;
  return err;
}
struct L_Uc_F ret_L_Uc_F(){
    struct L_Uc_F lv = { .v1 = 12781, .v2 = 76, .v3 = 0.5 };
    return lv;
}
int zig_assert_L_Uc_F(struct L_Uc_F);
int send_L_Uc_F(){
    return zig_assert_L_Uc_F(ret_L_Uc_F());
}
struct L_Uc_F zig_ret_L_Uc_F();
int assert_ret_L_Uc_F(){
    return assert_L_Uc_F(zig_ret_L_Uc_F());
}

int assert_L_Uc_I(struct L_Uc_I lv){
    int err = 0;
  if (lv.v1 != 16577) err = 1;
  if (lv.v2 != 110) err = 2;
  if (lv.v3 != 6154) err = 3;
  return err;
}
struct L_Uc_I ret_L_Uc_I(){
    struct L_Uc_I lv = { .v1 = 16577, .v2 = 110, .v3 = 6154 };
    return lv;
}
int zig_assert_L_Uc_I(struct L_Uc_I);
int send_L_Uc_I(){
    return zig_assert_L_Uc_I(ret_L_Uc_I());
}
struct L_Uc_I zig_ret_L_Uc_I();
int assert_ret_L_Uc_I(){
    return assert_L_Uc_I(zig_ret_L_Uc_I());
}

int assert_L_Uc_Ip(struct L_Uc_Ip lv){
    int err = 0;
  if (lv.v1 != 2778) err = 1;
  if (lv.v2 != 106) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_Uc_Ip ret_L_Uc_Ip(){
    struct L_Uc_Ip lv = { .v1 = 2778, .v2 = 106, .v3 = 0 };
    return lv;
}
int zig_assert_L_Uc_Ip(struct L_Uc_Ip);
int send_L_Uc_Ip(){
    return zig_assert_L_Uc_Ip(ret_L_Uc_Ip());
}
struct L_Uc_Ip zig_ret_L_Uc_Ip();
int assert_ret_L_Uc_Ip(){
    return assert_L_Uc_Ip(zig_ret_L_Uc_Ip());
}

int assert_L_Uc_L(struct L_Uc_L lv){
    int err = 0;
  if (lv.v1 != 3301) err = 1;
  if (lv.v2 != 26) err = 2;
  if (lv.v3 != 18390) err = 3;
  return err;
}
struct L_Uc_L ret_L_Uc_L(){
    struct L_Uc_L lv = { .v1 = 3301, .v2 = 26, .v3 = 18390 };
    return lv;
}
int zig_assert_L_Uc_L(struct L_Uc_L);
int send_L_Uc_L(){
    return zig_assert_L_Uc_L(ret_L_Uc_L());
}
struct L_Uc_L zig_ret_L_Uc_L();
int assert_ret_L_Uc_L(){
    return assert_L_Uc_L(zig_ret_L_Uc_L());
}

int assert_L_Uc_S(struct L_Uc_S lv){
    int err = 0;
  if (lv.v1 != 24712) err = 1;
  if (lv.v2 != 43) err = 2;
  if (lv.v3 != 12475) err = 3;
  return err;
}
struct L_Uc_S ret_L_Uc_S(){
    struct L_Uc_S lv = { .v1 = 24712, .v2 = 43, .v3 = 12475 };
    return lv;
}
int zig_assert_L_Uc_S(struct L_Uc_S);
int send_L_Uc_S(){
    return zig_assert_L_Uc_S(ret_L_Uc_S());
}
struct L_Uc_S zig_ret_L_Uc_S();
int assert_ret_L_Uc_S(){
    return assert_L_Uc_S(zig_ret_L_Uc_S());
}

int assert_L_Uc_Uc(struct L_Uc_Uc lv){
    int err = 0;
  if (lv.v1 != 10867) err = 1;
  if (lv.v2 != 53) err = 2;
  if (lv.v3 != 125) err = 3;
  return err;
}
struct L_Uc_Uc ret_L_Uc_Uc(){
    struct L_Uc_Uc lv = { .v1 = 10867, .v2 = 53, .v3 = 125 };
    return lv;
}
int zig_assert_L_Uc_Uc(struct L_Uc_Uc);
int send_L_Uc_Uc(){
    return zig_assert_L_Uc_Uc(ret_L_Uc_Uc());
}
struct L_Uc_Uc zig_ret_L_Uc_Uc();
int assert_ret_L_Uc_Uc(){
    return assert_L_Uc_Uc(zig_ret_L_Uc_Uc());
}

int assert_L_Uc_Ui(struct L_Uc_Ui lv){
    int err = 0;
  if (lv.v1 != 26714) err = 1;
  if (lv.v2 != 76) err = 2;
  if (lv.v3 != 11312) err = 3;
  return err;
}
struct L_Uc_Ui ret_L_Uc_Ui(){
    struct L_Uc_Ui lv = { .v1 = 26714, .v2 = 76, .v3 = 11312 };
    return lv;
}
int zig_assert_L_Uc_Ui(struct L_Uc_Ui);
int send_L_Uc_Ui(){
    return zig_assert_L_Uc_Ui(ret_L_Uc_Ui());
}
struct L_Uc_Ui zig_ret_L_Uc_Ui();
int assert_ret_L_Uc_Ui(){
    return assert_L_Uc_Ui(zig_ret_L_Uc_Ui());
}

int assert_L_Uc_Ul(struct L_Uc_Ul lv){
    int err = 0;
  if (lv.v1 != 17680) err = 1;
  if (lv.v2 != 4) err = 2;
  if (lv.v3 != 2225) err = 3;
  return err;
}
struct L_Uc_Ul ret_L_Uc_Ul(){
    struct L_Uc_Ul lv = { .v1 = 17680, .v2 = 4, .v3 = 2225 };
    return lv;
}
int zig_assert_L_Uc_Ul(struct L_Uc_Ul);
int send_L_Uc_Ul(){
    return zig_assert_L_Uc_Ul(ret_L_Uc_Ul());
}
struct L_Uc_Ul zig_ret_L_Uc_Ul();
int assert_ret_L_Uc_Ul(){
    return assert_L_Uc_Ul(zig_ret_L_Uc_Ul());
}

int assert_L_Uc_Us(struct L_Uc_Us lv){
    int err = 0;
  if (lv.v1 != 3769) err = 1;
  if (lv.v2 != 19) err = 2;
  if (lv.v3 != 4927) err = 3;
  return err;
}
struct L_Uc_Us ret_L_Uc_Us(){
    struct L_Uc_Us lv = { .v1 = 3769, .v2 = 19, .v3 = 4927 };
    return lv;
}
int zig_assert_L_Uc_Us(struct L_Uc_Us);
int send_L_Uc_Us(){
    return zig_assert_L_Uc_Us(ret_L_Uc_Us());
}
struct L_Uc_Us zig_ret_L_Uc_Us();
int assert_ret_L_Uc_Us(){
    return assert_L_Uc_Us(zig_ret_L_Uc_Us());
}

int assert_L_Uc_Vp(struct L_Uc_Vp lv){
    int err = 0;
  if (lv.v1 != 8827) err = 1;
  if (lv.v2 != 48) err = 2;
  if (lv.v3 != 0) err = 3;
  return err;
}
struct L_Uc_Vp ret_L_Uc_Vp(){
    struct L_Uc_Vp lv = { .v1 = 8827, .v2 = 48, .v3 = 0 };
    return lv;
}
int zig_assert_L_Uc_Vp(struct L_Uc_Vp);
int send_L_Uc_Vp(){
    return zig_assert_L_Uc_Vp(ret_L_Uc_Vp());
}
struct L_Uc_Vp zig_ret_L_Uc_Vp();
int assert_ret_L_Uc_Vp(){
    return assert_L_Uc_Vp(zig_ret_L_Uc_Vp());
}

int assert_L_Ui(struct L_Ui lv){
    int err = 0;
  if (lv.v1 != 13685) err = 1;
  if (lv.v2 != 29146) err = 2;
  return err;
}
struct L_Ui ret_L_Ui(){
    struct L_Ui lv = { .v1 = 13685, .v2 = 29146 };
    return lv;
}
int zig_assert_L_Ui(struct L_Ui);
int send_L_Ui(){
    return zig_assert_L_Ui(ret_L_Ui());
}
struct L_Ui zig_ret_L_Ui();
int assert_ret_L_Ui(){
    return assert_L_Ui(zig_ret_L_Ui());
}

