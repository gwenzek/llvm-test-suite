#include "T_Snnn_xav.h"

int assert_C(struct C lv){
    int err = 0;
  if (lv.v1 != 19) err = 1;
  return err;
}
struct C ret_C(){
    struct C lv = { .v1 = 19 };
    return lv;
}
int zig_assert_C(struct C);
int send_C(){
    return zig_assert_C(ret_C());
}
struct C zig_ret_C();
int assert_ret_C(){
    return assert_C(zig_ret_C());
}

