; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, double } @ret_C_C_D() #0 {
  %1 = alloca %struct.C_C_D, align 8
  %2 = bitcast %struct.C_C_D* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 getelementptr inbounds (%struct.C_C_D, %struct.C_C_D* @__const.ret_C_C_D.lv, i32 0, i32 0), i64 16, i1 false)
  %3 = bitcast %struct.C_C_D* %1 to { i64, double }*
  %4 = load { i64, double }, { i64, double }* %3, align 8
  ret { i64, double } %4
}