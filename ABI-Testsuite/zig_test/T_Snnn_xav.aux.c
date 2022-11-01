#include "T_Snnn_xav.h"

int recv_C(struct C lv){
  int err = 0;
  if (lv.v1 != 19) err = 1;
  return err;
}

struct C ret_C(){
  struct C lv;
  lv.v1 = 19;
  return lv;
}

