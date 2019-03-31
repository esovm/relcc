; ModuleID = '../c/Trabb_Pardo–Knuth_algorithm.c'
source_filename = "../c/Trabb_Pardo\E2\80\93Knuth_algorithm.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"TOO LARGE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define double @f(double) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = call double @llvm.fabs.f64(double %3)
  %5 = call double @sqrt(double %4) #4
  %6 = load double, double* %2, align 8
  %7 = call double @pow(double %6, double 3.000000e+00) #4
  %8 = fmul double 5.000000e+00, %7
  %9 = fadd double %5, %8
  ret double %9
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [11 x double], align 16
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %13, %0
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 11
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [11 x double], [11 x double]* %2, i64 0, i64 %10
  %12 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %11)
  br label %13

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %5

; <label>:16:                                     ; preds = %5
  store i32 10, i32* %4, align 4
  br label %17

; <label>:17:                                     ; preds = %35, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %38

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [11 x double], [11 x double]* %2, i64 0, i64 %22
  %24 = load double, double* %23, align 8
  %25 = call double @f(double %24)
  store double %25, double* %3, align 8
  %26 = load double, double* %3, align 8
  %27 = fcmp ogt double %26, 4.000000e+02
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %20
  %29 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  br label %33

; <label>:30:                                     ; preds = %20
  %31 = load double, double* %3, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), double %31)
  br label %33

; <label>:33:                                     ; preds = %30, %28
  %34 = phi i32 [ %29, %28 ], [ %32, %30 ]
  br label %35

; <label>:35:                                     ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %4, align 4
  br label %17

; <label>:38:                                     ; preds = %17
  ret i32 0
}

declare i32 @__isoc99_scanf(i8*, ...) #3

declare i32 @puts(i8*) #3

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
