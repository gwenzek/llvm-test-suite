; Function Attrs: nounwind
define dso_local { i64, double } @ret_C_C_D() #0 {
Entry:
  %0 = alloca %struct.C_C_D, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 @2, i64 16, i1 false)
  %1 = load { i64, double }, ptr %0, align 8
  ret { i64, double } %1
}