; Function Attrs: nounwind
define dso_local i32 @zig_assert_C_C_D(i64 %0, i64 %1) #0 {
Entry:
  %2 = alloca %0, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.C_C_D, align 8
  %5 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, ptr %4, i32 0, i32 1
  store i64 %1, ptr %6, align 8
  store i32 0, ptr %3, align 4
  %7 = getelementptr inbounds %struct.C_C_D, ptr %4, i32 0, i32 0
  %8 = load i8, ptr %7, align 1
  %9 = icmp ne i8 %8, 88
  br i1 %9, label %Then, label %Else

Then:                                             ; preds = %Entry
  store i32 1, ptr %3, align 4
  br label %Block

Else:                                             ; preds = %Entry
  br label %Block

Block:                                            ; preds = %Else, %Then
  %10 = getelementptr inbounds %struct.C_C_D, ptr %4, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp ne i8 %11, 39
  br i1 %12, label %Then1, label %Else2

Then1:                                            ; preds = %Block
  store i32 2, ptr %3, align 4
  br label %Block3

Else2:                                            ; preds = %Block
  br label %Block3

Block3:                                           ; preds = %Else2, %Then1
  %13 = getelementptr inbounds %struct.C_C_D, ptr %4, i32 0, i32 3
  %14 = load double, ptr %13, align 8
  %15 = fcmp une double %14, -2.125000e+00
  br i1 %15, label %Then4, label %Else5

Then4:                                            ; preds = %Block3
  store i32 3, ptr %3, align 4
  br label %Block6

Else5:                                            ; preds = %Block3
  br label %Block6

Block6:                                           ; preds = %Else5, %Then4
  %16 = load i32, ptr %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %Then7, label %Else8

Then7:                                            ; preds = %Block6
  %18 = getelementptr inbounds %0, ptr %2, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %4, i64 16, i1 false)
  call fastcc void @debug.print__anon_797(ptr %2)
  br label %Block9

Else8:                                            ; preds = %Block6
  br label %Block9

Block9:                                           ; preds = %Else8, %Then7
  %19 = load i32, ptr %3, align 4
  ret i32 %19
}