; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assert_C_C_D(i64 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.C_C_D, align 8
  %5 = bitcast %struct.C_C_D* %4 to { i64, double }*
  %6 = getelementptr inbounds { i64, double }, { i64, double }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, double }, { i64, double }* %5, i32 0, i32 1
  store double %1, double* %7, align 8
  %8 = getelementptr inbounds %struct.C_C_D, %struct.C_C_D* %4, i32 0, i32 0
  %9 = load i8, i8* %8, align 8
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 88
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.C_C_D, %struct.C_C_D* %4, i32 0, i32 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 39
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 2, i32* %3, align 4
  br label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.C_C_D, %struct.C_C_D* %4, i32 0, i32 2
  %21 = load double, double* %20, align 8
  %22 = fcmp une double %21, -2.125000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 3, i32* %3, align 4
  br label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %23, %18, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}