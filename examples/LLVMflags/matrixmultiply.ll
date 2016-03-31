; ModuleID = 'matrixmultiply.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

$_Z4testIfEvv = comdat any

$_Z16make_test_matrixIfEPPT_v = comdat any

$_Z14SeqMatrixMult3IfEviPPT_S2_S2_ = comdat any

$_Z9TransposeIfEviPPT_ = comdat any

$_ZSt4swapIfEvRT_S1_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_matrixmultiply.cpp, i8* null }]

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  call void @_Z4testIfEvv()
  ret i32 0
}

; Function Attrs: uwtable
define linkonce_odr void @_Z4testIfEvv() #0 comdat {
  %a = alloca float**, align 8
  %b = alloca float**, align 8
  %c = alloca float**, align 8
  %avg = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = call float** @_Z16make_test_matrixIfEPPT_v()
  store float** %1, float*** %a, align 8
  %2 = call float** @_Z16make_test_matrixIfEPPT_v()
  store float** %2, float*** %b, align 8
  %3 = call float** @_Z16make_test_matrixIfEPPT_v()
  store float** %3, float*** %c, align 8
  %4 = load float**, float*** %a, align 8
  %5 = load float**, float*** %b, align 8
  %6 = load float**, float*** %c, align 8
  call void @_Z14SeqMatrixMult3IfEviPPT_S2_S2_(i32 512, float** %4, float** %5, float** %6)
  store float 0.000000e+00, float* %avg, align 4
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7:                                      ; preds = %31, %0
  %8 = load i32, i32* %i, align 4
  %9 = icmp slt i32 %8, 512
  br i1 %9, label %10, label %34

; <label>:10:                                     ; preds = %7
  store i32 0, i32* %j, align 4
  br label %11

; <label>:11:                                     ; preds = %27, %10
  %12 = load i32, i32* %j, align 4
  %13 = icmp slt i32 %12, 512
  br i1 %13, label %14, label %30

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %j, align 4
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = load float**, float*** %c, align 8
  %20 = getelementptr inbounds float*, float** %19, i64 %18
  %21 = load float*, float** %20, align 8
  %22 = getelementptr inbounds float, float* %21, i64 %16
  %23 = load float, float* %22, align 4
  %24 = fdiv float %23, 2.621440e+05
  %25 = load float, float* %avg, align 4
  %26 = fadd float %25, %24
  store float %26, float* %avg, align 4
  br label %27

; <label>:27:                                     ; preds = %14
  %28 = load i32, i32* %j, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %j, align 4
  br label %11

; <label>:30:                                     ; preds = %11
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %i, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %i, align 4
  br label %7

; <label>:34:                                     ; preds = %7
  %35 = load float, float* %avg, align 4
  %36 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* @_ZSt4cout, float %35)
  %37 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %36, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr float** @_Z16make_test_matrixIfEPPT_v() #0 comdat {
  %data = alloca float**, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = call noalias i8* @_Znam(i64 4096) #6
  %2 = bitcast i8* %1 to float**
  store float** %2, float*** %data, align 8
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3:                                      ; preds = %13, %0
  %4 = load i32, i32* %i, align 4
  %5 = icmp slt i32 %4, 512
  br i1 %5, label %6, label %16

; <label>:6:                                      ; preds = %3
  %7 = call noalias i8* @_Znam(i64 2048) #6
  %8 = bitcast i8* %7 to float*
  %9 = load i32, i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load float**, float*** %data, align 8
  %12 = getelementptr inbounds float*, float** %11, i64 %10
  store float* %8, float** %12, align 8
  br label %13

; <label>:13:                                     ; preds = %6
  %14 = load i32, i32* %i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %i, align 4
  br label %3

; <label>:16:                                     ; preds = %3
  store i32 0, i32* %i1, align 4
  br label %17

; <label>:17:                                     ; preds = %41, %16
  %18 = load i32, i32* %i1, align 4
  %19 = icmp slt i32 %18, 512
  br i1 %19, label %20, label %44

; <label>:20:                                     ; preds = %17
  store i32 0, i32* %j, align 4
  br label %21

; <label>:21:                                     ; preds = %37, %20
  %22 = load i32, i32* %j, align 4
  %23 = icmp slt i32 %22, 512
  br i1 %23, label %24, label %40

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %i1, align 4
  %26 = load i32, i32* %j, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sitofp i32 %27 to float
  %29 = load i32, i32* %j, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* %i1, align 4
  %32 = sext i32 %31 to i64
  %33 = load float**, float*** %data, align 8
  %34 = getelementptr inbounds float*, float** %33, i64 %32
  %35 = load float*, float** %34, align 8
  %36 = getelementptr inbounds float, float* %35, i64 %30
  store float %28, float* %36, align 4
  br label %37

; <label>:37:                                     ; preds = %24
  %38 = load i32, i32* %j, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %j, align 4
  br label %21

; <label>:40:                                     ; preds = %21
  br label %41

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %i1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %i1, align 4
  br label %17

; <label>:44:                                     ; preds = %17
  %45 = load float**, float*** %data, align 8
  ret float** %45
}

; Function Attrs: uwtable
define linkonce_odr void @_Z14SeqMatrixMult3IfEviPPT_S2_S2_(i32 %size, float** noalias %m1, float** noalias %m2, float** noalias %result) #0 comdat {
  %1 = alloca i32, align 4
  %2 = alloca float**, align 8
  %3 = alloca float**, align 8
  %4 = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca float, align 4
  %k = alloca i32, align 4
  store i32 %size, i32* %1, align 4
  store float** %m1, float*** %2, align 8
  store float** %m2, float*** %3, align 8
  store float** %result, float*** %4, align 8
  %5 = load i32, i32* %1, align 4
  %6 = load float**, float*** %3, align 8
  call void @_Z9TransposeIfEviPPT_(i32 %5, float** %6)
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7:                                      ; preds = %60, %0
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %63

; <label>:11:                                     ; preds = %7
  store i32 0, i32* %j, align 4
  br label %12

; <label>:12:                                     ; preds = %56, %11
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %59

; <label>:16:                                     ; preds = %12
  store float 0.000000e+00, float* %c, align 4
  store i32 0, i32* %k, align 4
  br label %17

; <label>:17:                                     ; preds = %43, %16
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %46

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %k, align 4
  %23 = sext i32 %22 to i64
  %24 = load i32, i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = load float**, float*** %2, align 8
  %27 = getelementptr inbounds float*, float** %26, i64 %25
  %28 = load float*, float** %27, align 8
  %29 = getelementptr inbounds float, float* %28, i64 %23
  %30 = load float, float* %29, align 4
  %31 = load i32, i32* %k, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %j, align 4
  %34 = sext i32 %33 to i64
  %35 = load float**, float*** %3, align 8
  %36 = getelementptr inbounds float*, float** %35, i64 %34
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 %32
  %39 = load float, float* %38, align 4
  %40 = fmul float %30, %39
  %41 = load float, float* %c, align 4
  %42 = fadd float %41, %40
  store float %42, float* %c, align 4
  br label %43

; <label>:43:                                     ; preds = %21
  %44 = load i32, i32* %k, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %k, align 4
  br label %17

; <label>:46:                                     ; preds = %17
  %47 = load float, float* %c, align 4
  %48 = load i32, i32* %j, align 4
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %i, align 4
  %51 = sext i32 %50 to i64
  %52 = load float**, float*** %4, align 8
  %53 = getelementptr inbounds float*, float** %52, i64 %51
  %54 = load float*, float** %53, align 8
  %55 = getelementptr inbounds float, float* %54, i64 %49
  store float %47, float* %55, align 4
  br label %56

; <label>:56:                                     ; preds = %46
  %57 = load i32, i32* %j, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %j, align 4
  br label %12

; <label>:59:                                     ; preds = %12
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %i, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %i, align 4
  br label %7

; <label>:63:                                     ; preds = %7
  %64 = load i32, i32* %1, align 4
  %65 = load float**, float*** %3, align 8
  call void @_Z9TransposeIfEviPPT_(i32 %64, float** %65)
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #4

; Function Attrs: uwtable
define linkonce_odr void @_Z9TransposeIfEviPPT_(i32 %size, float** noalias %m) #0 comdat {
  %1 = alloca i32, align 4
  %2 = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %size, i32* %1, align 4
  store float** %m, float*** %2, align 8
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3:                                      ; preds = %35, %0
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %38

; <label>:7:                                      ; preds = %3
  %8 = load i32, i32* %i, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %j, align 4
  br label %10

; <label>:10:                                     ; preds = %31, %7
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %j, align 4
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = load float**, float*** %2, align 8
  %20 = getelementptr inbounds float*, float** %19, i64 %18
  %21 = load float*, float** %20, align 8
  %22 = getelementptr inbounds float, float* %21, i64 %16
  %23 = load i32, i32* %i, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* %j, align 4
  %26 = sext i32 %25 to i64
  %27 = load float**, float*** %2, align 8
  %28 = getelementptr inbounds float*, float** %27, i64 %26
  %29 = load float*, float** %28, align 8
  %30 = getelementptr inbounds float, float* %29, i64 %24
  call void @_ZSt4swapIfEvRT_S1_(float* dereferenceable(4) %22, float* dereferenceable(4) %30)
  br label %31

; <label>:31:                                     ; preds = %14
  %32 = load i32, i32* %j, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %j, align 4
  br label %10

; <label>:34:                                     ; preds = %10
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* %i, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %i, align 4
  br label %3

; <label>:38:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZSt4swapIfEvRT_S1_(float* dereferenceable(4) %__a, float* dereferenceable(4) %__b) #5 comdat {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  %__tmp = alloca float, align 4
  store float* %__a, float** %1, align 8
  store float* %__b, float** %2, align 8
  %3 = load float*, float** %1, align 8
  %4 = load float, float* %3, align 4
  store float %4, float* %__tmp, align 4
  %5 = load float*, float** %2, align 8
  %6 = load float, float* %5, align 4
  %7 = load float*, float** %1, align 8
  store float %6, float* %7, align 4
  %8 = load float, float* %__tmp, align 4
  %9 = load float*, float** %2, align 8
  store float %8, float* %9, align 4
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_matrixmultiply.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { builtin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (trunk 263061)"}
