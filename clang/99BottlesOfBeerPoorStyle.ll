; ModuleID = '../c/99BottlesOfBeerPoorStyle.c'
source_filename = "../c/99BottlesOfBeerPoorStyle.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"%d bottle%c of beer on the wall!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"no more bottles of beer on the wall!\0A\00", align 1
@.str.2 = private unnamed_addr constant [130 x i8] c"No more bottles of beer on the wall, no more bottles of beer.\0AGo to the store and buy some more, 99 bottles of beer on the wall!\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"%d bottle%c of beer on the wall, %d bottle%c of beer\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Take one down and pass it around, \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i32 99, i32* %2, align 4
  store i8 115, i8* %3, align 1
  br label %23

; <label>:4:                                      ; preds = %20
  ret i32 0

; <label>:5:                                      ; preds = %23
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 31, i32 115
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %3, align 1
  %16 = load i32, i32* %2, align 4
  %17 = load i8, i8* %3, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 %16, i32 %18)
  br label %23

; <label>:20:                                     ; preds = %5
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.2, i32 0, i32 0))
  br label %4

; <label>:23:                                     ; preds = %10, %0
  %24 = load i32, i32* %2, align 4
  %25 = load i8, i8* %3, align 1
  %26 = sext i8 %25 to i32
  %27 = load i32, i32* %2, align 4
  %28 = load i8, i8* %3, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0), i32 %24, i32 %26, i32 %27, i32 %29)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  br label %5
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
