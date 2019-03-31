; ModuleID = '../c/99BottlesOfBeerInAnsi.c'
source_filename = "../c/99BottlesOfBeerInAnsi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\0ATime to buy more beer!\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%d bottle%s of beer on the wall,\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%d bottle%s of beeeeer . . . ,\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Take one down, pass it around,\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"No more\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%s bottle%s of beer on the wall.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 99, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %8, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %3
  %7 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  br label %8

; <label>:8:                                      ; preds = %6
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %2, align 4
  call void @chug(i32 %9)
  br label %3

; <label>:11:                                     ; preds = %3
  %12 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 0) #3
  unreachable
                                                  ; No predecessors!
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare i32 @puts(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @chug(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i8], align 1
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 1
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)
  store i8* %8, i8** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32 %9, i8* %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i32 %12, i8* %13)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %1
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %21)
  br label %26

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  %25 = call i8* @strcpy(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  br label %26

; <label>:26:                                     ; preds = %23, %19
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 1
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)
  store i8* %30, i8** %4, align 8
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i32 0, i32 0
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0), i8* %31, i8* %32)
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32) #2

declare i32 @printf(i8*, ...) #1

declare i32 @sprintf(i8*, i8*, ...) #1

declare i8* @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
