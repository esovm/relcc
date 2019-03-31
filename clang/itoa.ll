; ModuleID = '../c/itoa.c'
source_filename = "../c/itoa.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define void @itoa(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %9, %2
  store i32 0, i32* %5, align 4
  br label %13

; <label>:13:                                     ; preds = %23, %12
  %14 = load i32, i32* %3, align 4
  %15 = srem i32 %14, 10
  %16 = add nsw i32 %15, 48
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8 %17, i8* %22, align 1
  br label %23

; <label>:23:                                     ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = sdiv i32 %24, 10
  store i32 %25, i32* %3, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %13, label %27

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 45, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %30, %27
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 (i8*, ...) bitcast (i32 (...)* @reverse to i32 (i8*, ...)*)(i8* %41)
  ret void
}

declare i32 @reverse(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
