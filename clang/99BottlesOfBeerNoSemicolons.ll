; ModuleID = '../c/99BottlesOfBeerNoSemicolons.c'
source_filename = "../c/99BottlesOfBeerNoSemicolons.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [121 x i8] c"%d bottles of beer on the wall, %d bottles of beer.\0ATake one down and pass it around, %d bottle%s of beer on the wall.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [249 x i8] c"1 bottle of beer on the wall, 1 bottle of beer.\0ATake one down and pass it around, no more bottles of beer on the wall.\0A\0ANo more bottles of beer on the wall, no more bottles of beer.\0AGo to the store and buy some more, 99 bottles of beer on the wall.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %4, %0
  call void @song(i32 99)
  call void @exit(i32 0) #3
  unreachable
                                                  ; No predecessors!
  br i1 false, label %4, label %5

; <label>:4:                                      ; preds = %3
  br label %2

; <label>:5:                                      ; preds = %3
  %6 = load i32, i32* %1, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @song(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %20, %1
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 %6, 1
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %8, 2
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i32 0, i32 0), i32 %4, i32 %5, i32 %7, i8* %11)
  %13 = load i32, i32* %2, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %3
  br label %16

; <label>:16:                                     ; preds = %19, %15
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %2, align 4
  br i1 false, label %19, label %20

; <label>:19:                                     ; preds = %16
  br label %16

; <label>:20:                                     ; preds = %16
  br label %3

; <label>:21:                                     ; preds = %3
  br label %22

; <label>:22:                                     ; preds = %24, %21
  %23 = call i32 @puts(i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.3, i32 0, i32 0))
  br i1 false, label %24, label %25

; <label>:24:                                     ; preds = %22
  br label %22

; <label>:25:                                     ; preds = %22
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

declare i32 @printf(i8*, ...) #2

declare i32 @puts(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
