#include "T_Snnn_xav.h"

int recv_C(struct C lv){
  if (lv.v1 != 19) return 1;
  return 0;
}
struct C ret_C(){
  struct C lv;
  lv.v1 = 19;
  return lv;
}
int zig_recv_C(struct C);
int send_C(){
  struct C lv;
  lv.v1 = 19;
  return zig_recv_C(lv);
}

