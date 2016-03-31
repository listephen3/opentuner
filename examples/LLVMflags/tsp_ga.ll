; ModuleID = 'tsp_ga.cpp'
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
%class.TSP = type { double, double, [20 x double], [20 x double], i32*, [20 x i32]*, [20 x i32]* }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"class.std::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::basic_string" }
%"struct.std::random_access_iterator_tag" = type { i8 }

$_ZStorSt13_Ios_OpenmodeS_ = comdat any

$__clang_call_terminate = comdat any

$_ZSt11max_elementIPdET_S1_S1_ = comdat any

$_ZSt4findIPiiET_S1_S1_RKT0_ = comdat any

$_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"index < chromosones && \22Index out of bounds\22\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"tsp_ga.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN3TSP19copyToNewPopulationEPKim = private unnamed_addr constant [56 x i8] c"void TSP::copyToNewPopulation(const int *const, size_t)\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"false && \22A chromosone should have been picked by now\22\00", align 1
@__PRETTY_FUNCTION__._ZNK3TSP17rouletteSelectionEPKd = private unnamed_addr constant [55 x i8] c"int *TSP::rouletteSelection(const double *const) const\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Number of generations: \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Best chromosone info: \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\09-Path: \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"\09-Goal function: \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"\09-Distance: \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Average distance: \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Initial average: \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_tsp_ga.cpp, i8* null }]

@_ZN3TSPC1Edd = alias void (%class.TSP*, double, double), void (%class.TSP*, double, double)* @_ZN3TSPC2Edd

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

; Function Attrs: uwtable
define void @_ZN3TSPC2Edd(%class.TSP* %this, double %crossoverProbability, double %mutationProbability) unnamed_addr #0 align 2 {
  %1 = alloca %class.TSP*, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %coordinateIndex = alloca i64, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  store double %crossoverProbability, double* %2, align 8
  store double %mutationProbability, double* %3, align 8
  %4 = load %class.TSP*, %class.TSP** %1, align 8
  %5 = getelementptr inbounds %class.TSP, %class.TSP* %4, i32 0, i32 0
  %6 = load double, double* %2, align 8
  store double %6, double* %5, align 8
  %7 = getelementptr inbounds %class.TSP, %class.TSP* %4, i32 0, i32 1
  %8 = load double, double* %3, align 8
  store double %8, double* %7, align 8
  %9 = getelementptr inbounds %class.TSP, %class.TSP* %4, i32 0, i32 5
  %10 = call noalias i8* @_Znam(i64 2400) #13
  %11 = bitcast i8* %10 to i32*
  %12 = bitcast i32* %11 to [20 x i32]*
  store [20 x i32]* %12, [20 x i32]** %9, align 8
  %13 = getelementptr inbounds %class.TSP, %class.TSP* %4, i32 0, i32 6
  %14 = call noalias i8* @_Znam(i64 2400) #13
  %15 = bitcast i8* %14 to i32*
  %16 = bitcast i32* %15 to [20 x i32]*
  store [20 x i32]* %16, [20 x i32]** %13, align 8
  call void @srand(i32 17) #2
  store i64 0, i64* %coordinateIndex, align 8
  br label %17

; <label>:17:                                     ; preds = %29, %0
  %18 = load i64, i64* %coordinateIndex, align 8
  %19 = icmp ult i64 %18, 20
  br i1 %19, label %20, label %32

; <label>:20:                                     ; preds = %17
  %21 = call double @_ZN3TSP15randomInclusiveEd(double 1.000000e+03)
  %22 = load i64, i64* %coordinateIndex, align 8
  %23 = getelementptr inbounds %class.TSP, %class.TSP* %4, i32 0, i32 2
  %24 = getelementptr inbounds [20 x double], [20 x double]* %23, i64 0, i64 %22
  store double %21, double* %24, align 8
  %25 = call double @_ZN3TSP15randomInclusiveEd(double 5.000000e+02)
  %26 = load i64, i64* %coordinateIndex, align 8
  %27 = getelementptr inbounds %class.TSP, %class.TSP* %4, i32 0, i32 3
  %28 = getelementptr inbounds [20 x double], [20 x double]* %27, i64 0, i64 %26
  store double %25, double* %28, align 8
  br label %29

; <label>:29:                                     ; preds = %20
  %30 = load i64, i64* %coordinateIndex, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %coordinateIndex, align 8
  br label %17

; <label>:32:                                     ; preds = %17
  call void @_ZN3TSP16randomPopulationEv(%class.TSP* %4)
  ret void
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #3

; Function Attrs: nounwind
declare void @srand(i32) #4

; Function Attrs: nounwind uwtable
define double @_ZN3TSP15randomInclusiveEd(double %max) #5 align 2 {
  %1 = alloca double, align 8
  store double %max, double* %1, align 8
  %2 = call i32 @rand() #2
  %3 = sitofp i32 %2 to double
  %4 = load double, double* %1, align 8
  %5 = fmul double %3, %4
  %6 = fdiv double %5, 0x41DFFFFFFFC00000
  ret double %6
}

; Function Attrs: uwtable
define void @_ZN3TSP16randomPopulationEv(%class.TSP* %this) #0 align 2 {
  %1 = alloca %class.TSP*, align 8
  %chromosoneIndex = alloca i64, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  %2 = load %class.TSP*, %class.TSP** %1, align 8
  store i64 0, i64* %chromosoneIndex, align 8
  br label %3

; <label>:3:                                      ; preds = %12, %0
  %4 = load i64, i64* %chromosoneIndex, align 8
  %5 = icmp ult i64 %4, 30
  br i1 %5, label %6, label %15

; <label>:6:                                      ; preds = %3
  %7 = load i64, i64* %chromosoneIndex, align 8
  %8 = getelementptr inbounds %class.TSP, %class.TSP* %2, i32 0, i32 5
  %9 = load [20 x i32]*, [20 x i32]** %8, align 8
  %10 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 %7
  %11 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i32 0, i32 0
  call void @_ZN3TSP13setRandomPathEPi(i32* %11)
  br label %12

; <label>:12:                                     ; preds = %6
  %13 = load i64, i64* %chromosoneIndex, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %chromosoneIndex, align 8
  br label %3

; <label>:15:                                     ; preds = %3
  ret void
}

; Function Attrs: uwtable
define void @_ZN3TSP13setRandomPathEPi(i32* %chromosone) #0 align 2 {
  %1 = alloca i32*, align 8
  %i = alloca i64, align 8
  %i1 = alloca i64, align 8
  %random = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %chromosone, i32** %1, align 8
  store i64 0, i64* %i, align 8
  br label %2

; <label>:2:                                      ; preds = %11, %0
  %3 = load i64, i64* %i, align 8
  %4 = icmp ult i64 %3, 20
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = load i64, i64* %i, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i64, i64* %i, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 %8
  store i32 %7, i32* %10, align 4
  br label %11

; <label>:11:                                     ; preds = %5
  %12 = load i64, i64* %i, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %i, align 8
  br label %2

; <label>:14:                                     ; preds = %2
  store i64 19, i64* %i1, align 8
  br label %15

; <label>:15:                                     ; preds = %40, %14
  %16 = load i64, i64* %i1, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %43

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %i1, align 8
  %20 = uitofp i64 %19 to double
  %21 = call double @_ZN3TSP15randomInclusiveEd(double %20)
  %22 = fptosi double %21 to i32
  store i32 %22, i32* %random, align 4
  %23 = load i64, i64* %i1, align 8
  %24 = load i32*, i32** %1, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 %23
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %temp, align 4
  %27 = load i32, i32* %random, align 4
  %28 = sext i32 %27 to i64
  %29 = load i32*, i32** %1, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 %28
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %i1, align 8
  %33 = load i32*, i32** %1, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 %32
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %temp, align 4
  %36 = load i32, i32* %random, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32*, i32** %1, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 %37
  store i32 %35, i32* %39, align 4
  br label %40

; <label>:40:                                     ; preds = %18
  %41 = load i64, i64* %i1, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %i1, align 8
  br label %15

; <label>:43:                                     ; preds = %15
  ret void
}

; Function Attrs: uwtable
define double @_ZNK3TSP14getBestFitnessEv(%class.TSP* %this) #0 align 2 {
  %1 = alloca %class.TSP*, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  %2 = load %class.TSP*, %class.TSP** %1, align 8
  %3 = getelementptr inbounds %class.TSP, %class.TSP* %2, i32 0, i32 4
  %4 = load i32*, i32** %3, align 8
  %5 = call double @_ZNK3TSP15evaluateFitnessEPKi(%class.TSP* %2, i32* %4)
  ret double %5
}

; Function Attrs: uwtable
define double @_ZNK3TSP15evaluateFitnessEPKi(%class.TSP* %this, i32* %chromosone) #0 align 2 {
  %1 = alloca %class.TSP*, align 8
  %2 = alloca i32*, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  store i32* %chromosone, i32** %2, align 8
  %3 = load %class.TSP*, %class.TSP** %1, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call double @_ZNK3TSP13totalDistanceEPKi(%class.TSP* %3, i32* %4)
  %6 = fdiv double 1.000000e+00, %5
  ret double %6
}

; Function Attrs: uwtable
define double @_ZNK3TSP18getAverageDistanceEv(%class.TSP* %this) #0 align 2 {
  %1 = alloca %class.TSP*, align 8
  %distance = alloca double, align 8
  %chromosoneIndex = alloca i64, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  %2 = load %class.TSP*, %class.TSP** %1, align 8
  store double 0.000000e+00, double* %distance, align 8
  store i64 0, i64* %chromosoneIndex, align 8
  br label %3

; <label>:3:                                      ; preds = %15, %0
  %4 = load i64, i64* %chromosoneIndex, align 8
  %5 = icmp ult i64 %4, 30
  br i1 %5, label %6, label %18

; <label>:6:                                      ; preds = %3
  %7 = load i64, i64* %chromosoneIndex, align 8
  %8 = getelementptr inbounds %class.TSP, %class.TSP* %2, i32 0, i32 5
  %9 = load [20 x i32]*, [20 x i32]** %8, align 8
  %10 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 %7
  %11 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i32 0, i32 0
  %12 = call double @_ZNK3TSP13totalDistanceEPKi(%class.TSP* %2, i32* %11)
  %13 = load double, double* %distance, align 8
  %14 = fadd double %13, %12
  store double %14, double* %distance, align 8
  br label %15

; <label>:15:                                     ; preds = %6
  %16 = load i64, i64* %chromosoneIndex, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %chromosoneIndex, align 8
  br label %3

; <label>:18:                                     ; preds = %3
  %19 = load double, double* %distance, align 8
  %20 = fdiv double %19, 3.000000e+01
  ret double %20
}

; Function Attrs: nounwind uwtable
define double @_ZNK3TSP13totalDistanceEPKi(%class.TSP* %this, i32* %chromosone) #5 align 2 {
  %1 = alloca %class.TSP*, align 8
  %2 = alloca i32*, align 8
  %distance = alloca double, align 8
  %i = alloca i64, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %dx1 = alloca double, align 8
  %dy2 = alloca double, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  store i32* %chromosone, i32** %2, align 8
  %3 = load %class.TSP*, %class.TSP** %1, align 8
  store double 0.000000e+00, double* %distance, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4:                                      ; preds = %52, %0
  %5 = load i64, i64* %i, align 8
  %6 = icmp ult i64 %5, 19
  br i1 %6, label %7, label %55

; <label>:7:                                      ; preds = %4
  %8 = load i64, i64* %i, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 %8
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %class.TSP, %class.TSP* %3, i32 0, i32 2
  %14 = getelementptr inbounds [20 x double], [20 x double]* %13, i64 0, i64 %12
  %15 = load double, double* %14, align 8
  %16 = load i64, i64* %i, align 8
  %17 = add i64 %16, 1
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 %17
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %class.TSP, %class.TSP* %3, i32 0, i32 2
  %23 = getelementptr inbounds [20 x double], [20 x double]* %22, i64 0, i64 %21
  %24 = load double, double* %23, align 8
  %25 = fsub double %15, %24
  store double %25, double* %dx, align 8
  %26 = load i64, i64* %i, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 %26
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %class.TSP, %class.TSP* %3, i32 0, i32 3
  %32 = getelementptr inbounds [20 x double], [20 x double]* %31, i64 0, i64 %30
  %33 = load double, double* %32, align 8
  %34 = load i64, i64* %i, align 8
  %35 = add i64 %34, 1
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 %35
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %class.TSP, %class.TSP* %3, i32 0, i32 3
  %41 = getelementptr inbounds [20 x double], [20 x double]* %40, i64 0, i64 %39
  %42 = load double, double* %41, align 8
  %43 = fsub double %33, %42
  store double %43, double* %dy, align 8
  %44 = load double, double* %dx, align 8
  %45 = call double @pow(double %44, double 2.000000e+00) #2
  %46 = load double, double* %dy, align 8
  %47 = call double @pow(double %46, double 2.000000e+00) #2
  %48 = fadd double %45, %47
  %49 = call double @sqrt(double %48) #2
  %50 = load double, double* %distance, align 8
  %51 = fadd double %50, %49
  store double %51, double* %distance, align 8
  br label %52

; <label>:52:                                     ; preds = %7
  %53 = load i64, i64* %i, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %i, align 8
  br label %4

; <label>:55:                                     ; preds = %4
  %56 = load i32*, i32** %2, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 19
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %class.TSP, %class.TSP* %3, i32 0, i32 2
  %61 = getelementptr inbounds [20 x double], [20 x double]* %60, i64 0, i64 %59
  %62 = load double, double* %61, align 8
  %63 = load i32*, i32** %2, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %class.TSP, %class.TSP* %3, i32 0, i32 2
  %68 = getelementptr inbounds [20 x double], [20 x double]* %67, i64 0, i64 %66
  %69 = load double, double* %68, align 8
  %70 = fsub double %62, %69
  store double %70, double* %dx1, align 8
  %71 = load i32*, i32** %2, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 19
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %class.TSP, %class.TSP* %3, i32 0, i32 3
  %76 = getelementptr inbounds [20 x double], [20 x double]* %75, i64 0, i64 %74
  %77 = load double, double* %76, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %class.TSP, %class.TSP* %3, i32 0, i32 3
  %83 = getelementptr inbounds [20 x double], [20 x double]* %82, i64 0, i64 %81
  %84 = load double, double* %83, align 8
  %85 = fsub double %77, %84
  store double %85, double* %dy2, align 8
  %86 = load double, double* %dx1, align 8
  %87 = call double @pow(double %86, double 2.000000e+00) #2
  %88 = load double, double* %dy2, align 8
  %89 = call double @pow(double %88, double 2.000000e+00) #2
  %90 = fadd double %87, %89
  %91 = call double @sqrt(double %90) #2
  %92 = load double, double* %distance, align 8
  %93 = fadd double %92, %91
  store double %93, double* %distance, align 8
  %94 = load double, double* %distance, align 8
  ret double %94
}

; Function Attrs: uwtable
define void @_ZNK3TSP17getBestPathStringEv(%"class.std::basic_string"* noalias sret %agg.result, %class.TSP* %this) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.TSP*, align 8
  %path = alloca %"class.std::basic_stringstream", align 8
  %gene = alloca i64, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %class.TSP* %this, %class.TSP** %1, align 8
  %4 = load %class.TSP*, %class.TSP** %1, align 8
  %5 = call i32 @_ZStorSt13_Ios_OpenmodeS_(i32 16, i32 8)
  call void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_stringstream"* %path, i32 %5)
  store i64 0, i64* %gene, align 8
  br label %6

; <label>:6:                                      ; preds = %33, %0
  %7 = load i64, i64* %gene, align 8
  %8 = icmp ult i64 %7, 20
  br i1 %8, label %9, label %36

; <label>:9:                                      ; preds = %6
  %10 = load i64, i64* %gene, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %9
  %13 = bitcast %"class.std::basic_stringstream"* %path to i8*
  %14 = getelementptr inbounds i8, i8* %13, i64 16
  %15 = bitcast i8* %14 to %"class.std::basic_ostream"*
  %16 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
          to label %17 unwind label %18

; <label>:17:                                     ; preds = %12
  br label %22

; <label>:18:                                     ; preds = %36, %22, %12
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %2, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %3, align 4
  invoke void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_stringstream"* %path)
          to label %38 unwind label %44

; <label>:22:                                     ; preds = %17, %9
  %23 = bitcast %"class.std::basic_stringstream"* %path to i8*
  %24 = getelementptr inbounds i8, i8* %23, i64 16
  %25 = bitcast i8* %24 to %"class.std::basic_ostream"*
  %26 = load i64, i64* %gene, align 8
  %27 = getelementptr inbounds %class.TSP, %class.TSP* %4, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 %26
  %30 = load i32, i32* %29, align 4
  %31 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %25, i32 %30)
          to label %32 unwind label %18

; <label>:32:                                     ; preds = %22
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i64, i64* %gene, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %gene, align 8
  br label %6

; <label>:36:                                     ; preds = %6
  invoke void @_ZNKSt18basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* sret %agg.result, %"class.std::basic_stringstream"* %path)
          to label %37 unwind label %18

; <label>:37:                                     ; preds = %36
  call void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_stringstream"* %path)
  ret void

; <label>:38:                                     ; preds = %18
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = insertvalue { i8*, i32 } undef, i8* %40, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43

; <label>:44:                                     ; preds = %18
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #14
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32 @_ZStorSt13_Ios_OpenmodeS_(i32 %__a, i32 %__b) #6 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %__a, i32* %1, align 4
  store i32 %__b, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %2, align 4
  %5 = or i32 %3, %4
  ret i32 %5
}

declare void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_stringstream"*, i32) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare i32 @__gxx_personality_v0(...)

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare void @_ZNKSt18basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* sret, %"class.std::basic_stringstream"*) #1

declare void @_ZNSt18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_stringstream"*) #1

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #7 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #14
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: uwtable
define double @_ZNK3TSP22getLowestTotalDistanceEv(%class.TSP* %this) #0 align 2 {
  %1 = alloca %class.TSP*, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  %2 = load %class.TSP*, %class.TSP** %1, align 8
  %3 = getelementptr inbounds %class.TSP, %class.TSP* %2, i32 0, i32 4
  %4 = load i32*, i32** %3, align 8
  %5 = call double @_ZNK3TSP13totalDistanceEPKi(%class.TSP* %2, i32* %4)
  ret double %5
}

; Function Attrs: uwtable
define void @_ZN3TSP14nextPopulationEv(%class.TSP* %this) #0 align 2 {
  %1 = alloca %class.TSP*, align 8
  %fitness = alloca [30 x double], align 16
  %chromosoneIndex = alloca i64, align 8
  %eliteIndex1 = alloca i32, align 4
  %eliteIndex2 = alloca i32, align 4
  %highestFitness = alloca double, align 8
  %chromosoneIndex1 = alloca i64, align 8
  %offspringCount = alloca i64, align 8
  %parentA = alloca i32*, align 8
  %parentB = alloca i32*, align 8
  %offspringA = alloca [20 x i32], align 16
  %offspringB = alloca [20 x i32], align 16
  %chromosoneIndex2 = alloca i64, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  %2 = load %class.TSP*, %class.TSP** %1, align 8
  store i64 0, i64* %chromosoneIndex, align 8
  br label %3

; <label>:3:                                      ; preds = %15, %0
  %4 = load i64, i64* %chromosoneIndex, align 8
  %5 = icmp ult i64 %4, 30
  br i1 %5, label %6, label %18

; <label>:6:                                      ; preds = %3
  %7 = load i64, i64* %chromosoneIndex, align 8
  %8 = getelementptr inbounds %class.TSP, %class.TSP* %2, i32 0, i32 5
  %9 = load [20 x i32]*, [20 x i32]** %8, align 8
  %10 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 %7
  %11 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i32 0, i32 0
  %12 = call double @_ZNK3TSP15evaluateFitnessEPKi(%class.TSP* %2, i32* %11)
  %13 = load i64, i64* %chromosoneIndex, align 8
  %14 = getelementptr inbounds [30 x double], [30 x double]* %fitness, i64 0, i64 %13
  store double %12, double* %14, align 8
  br label %15

; <label>:15:                                     ; preds = %6
  %16 = load i64, i64* %chromosoneIndex, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %chromosoneIndex, align 8
  br label %3

; <label>:18:                                     ; preds = %3
  store i32 0, i32* %eliteIndex1, align 4
  store i32 0, i32* %eliteIndex2, align 4
  %19 = getelementptr inbounds [30 x double], [30 x double]* %fitness, i32 0, i32 0
  %20 = getelementptr inbounds [30 x double], [30 x double]* %fitness, i32 0, i32 0
  %21 = getelementptr inbounds double, double* %20, i64 30
  %22 = call double* @_ZSt11max_elementIPdET_S1_S1_(double* %19, double* %21)
  %23 = getelementptr inbounds [30 x double], [30 x double]* %fitness, i32 0, i32 0
  %24 = ptrtoint double* %22 to i64
  %25 = ptrtoint double* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %eliteIndex1, align 4
  %29 = load i32, i32* %eliteIndex1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %class.TSP, %class.TSP* %2, i32 0, i32 5
  %32 = load [20 x i32]*, [20 x i32]** %31, align 8
  %33 = getelementptr inbounds [20 x i32], [20 x i32]* %32, i64 %30
  %34 = getelementptr inbounds [20 x i32], [20 x i32]* %33, i32 0, i32 0
  %35 = getelementptr inbounds %class.TSP, %class.TSP* %2, i32 0, i32 4
  store i32* %34, i32** %35, align 8
  store double 0.000000e+00, double* %highestFitness, align 8
  store i64 0, i64* %chromosoneIndex1, align 8
  br label %36

; <label>:36:                                     ; preds = %57, %18
  %37 = load i64, i64* %chromosoneIndex1, align 8
  %38 = icmp ult i64 %37, 30
  br i1 %38, label %39, label %60

; <label>:39:                                     ; preds = %36
  %40 = load i64, i64* %chromosoneIndex1, align 8
  %41 = load i32, i32* %eliteIndex1, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %56

; <label>:44:                                     ; preds = %39
  %45 = load i64, i64* %chromosoneIndex1, align 8
  %46 = getelementptr inbounds [30 x double], [30 x double]* %fitness, i64 0, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load double, double* %highestFitness, align 8
  %49 = fcmp ogt double %47, %48
  br i1 %49, label %50, label %56

; <label>:50:                                     ; preds = %44
  %51 = load i64, i64* %chromosoneIndex1, align 8
  %52 = getelementptr inbounds [30 x double], [30 x double]* %fitness, i64 0, i64 %51
  %53 = load double, double* %52, align 8
  store double %53, double* %highestFitness, align 8
  %54 = load i64, i64* %chromosoneIndex1, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %eliteIndex2, align 4
  br label %56

; <label>:56:                                     ; preds = %50, %44, %39
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i64, i64* %chromosoneIndex1, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %chromosoneIndex1, align 8
  br label %36

; <label>:60:                                     ; preds = %36
  store i64 0, i64* %offspringCount, align 8
  %61 = load i32, i32* %eliteIndex1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %class.TSP, %class.TSP* %2, i32 0, i32 5
  %64 = load [20 x i32]*, [20 x i32]** %63, align 8
  %65 = getelementptr inbounds [20 x i32], [20 x i32]* %64, i64 %62
  %66 = getelementptr inbounds [20 x i32], [20 x i32]* %65, i32 0, i32 0
  %67 = load i64, i64* %offspringCount, align 8
  call void @_ZN3TSP19copyToNewPopulationEPKim(%class.TSP* %2, i32* %66, i64 %67)
  %68 = load i64, i64* %offspringCount, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %offspringCount, align 8
  %70 = load i32, i32* %eliteIndex2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %class.TSP, %class.TSP* %2, i32 0, i32 5
  %73 = load [20 x i32]*, [20 x i32]** %72, align 8
  %74 = getelementptr inbounds [20 x i32], [20 x i32]* %73, i64 %71
  %75 = getelementptr inbounds [20 x i32], [20 x i32]* %74, i32 0, i32 0
  %76 = load i64, i64* %offspringCount, align 8
  call void @_ZN3TSP19copyToNewPopulationEPKim(%class.TSP* %2, i32* %75, i64 %76)
  %77 = load i64, i64* %offspringCount, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %offspringCount, align 8
  br label %79

; <label>:79:                                     ; preds = %60, %123
  %80 = getelementptr inbounds [30 x double], [30 x double]* %fitness, i32 0, i32 0
  %81 = call i32* @_ZNK3TSP17rouletteSelectionEPKd(%class.TSP* %2, double* %80)
  store i32* %81, i32** %parentA, align 8
  %82 = getelementptr inbounds [30 x double], [30 x double]* %fitness, i32 0, i32 0
  %83 = call i32* @_ZNK3TSP17rouletteSelectionEPKd(%class.TSP* %2, double* %82)
  store i32* %83, i32** %parentB, align 8
  br label %84

; <label>:84:                                     ; preds = %88, %79
  %85 = load i32*, i32** %parentB, align 8
  %86 = load i32*, i32** %parentA, align 8
  %87 = icmp eq i32* %85, %86
  br i1 %87, label %88, label %91

; <label>:88:                                     ; preds = %84
  %89 = getelementptr inbounds [30 x double], [30 x double]* %fitness, i32 0, i32 0
  %90 = call i32* @_ZNK3TSP17rouletteSelectionEPKd(%class.TSP* %2, double* %89)
  store i32* %90, i32** %parentB, align 8
  br label %84

; <label>:91:                                     ; preds = %84
  %92 = load i32*, i32** %parentA, align 8
  %93 = load i32*, i32** %parentB, align 8
  %94 = getelementptr inbounds [20 x i32], [20 x i32]* %offspringA, i32 0, i32 0
  %95 = getelementptr inbounds [20 x i32], [20 x i32]* %offspringB, i32 0, i32 0
  call void @_ZN3TSP9crossoverEPKiS1_PiS2_(%class.TSP* %2, i32* %92, i32* %93, i32* %94, i32* %95)
  %96 = getelementptr inbounds [20 x i32], [20 x i32]* %offspringA, i32 0, i32 0
  call void @_ZN3TSP6mutateEPi(%class.TSP* %2, i32* %96)
  %97 = getelementptr inbounds [20 x i32], [20 x i32]* %offspringB, i32 0, i32 0
  call void @_ZN3TSP6mutateEPi(%class.TSP* %2, i32* %97)
  %98 = getelementptr inbounds [20 x i32], [20 x i32]* %offspringA, i32 0, i32 0
  %99 = load i64, i64* %offspringCount, align 8
  %100 = call zeroext i1 @_ZN3TSP12hasDuplicateEPKim(%class.TSP* %2, i32* %98, i64 %99)
  br i1 %100, label %106, label %101

; <label>:101:                                    ; preds = %91
  %102 = getelementptr inbounds [20 x i32], [20 x i32]* %offspringA, i32 0, i32 0
  %103 = load i64, i64* %offspringCount, align 8
  call void @_ZN3TSP19copyToNewPopulationEPKim(%class.TSP* %2, i32* %102, i64 %103)
  %104 = load i64, i64* %offspringCount, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %offspringCount, align 8
  br label %106

; <label>:106:                                    ; preds = %101, %91
  %107 = load i64, i64* %offspringCount, align 8
  %108 = icmp eq i64 %107, 30
  br i1 %108, label %109, label %110

; <label>:109:                                    ; preds = %106
  br label %124

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds [20 x i32], [20 x i32]* %offspringB, i32 0, i32 0
  %112 = load i64, i64* %offspringCount, align 8
  %113 = call zeroext i1 @_ZN3TSP12hasDuplicateEPKim(%class.TSP* %2, i32* %111, i64 %112)
  br i1 %113, label %119, label %114

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds [20 x i32], [20 x i32]* %offspringB, i32 0, i32 0
  %116 = load i64, i64* %offspringCount, align 8
  call void @_ZN3TSP19copyToNewPopulationEPKim(%class.TSP* %2, i32* %115, i64 %116)
  %117 = load i64, i64* %offspringCount, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %offspringCount, align 8
  br label %119

; <label>:119:                                    ; preds = %114, %110
  %120 = load i64, i64* %offspringCount, align 8
  %121 = icmp eq i64 %120, 30
  br i1 %121, label %122, label %123

; <label>:122:                                    ; preds = %119
  br label %124

; <label>:123:                                    ; preds = %119
  br label %79

; <label>:124:                                    ; preds = %122, %109
  store i64 0, i64* %chromosoneIndex2, align 8
  br label %125

; <label>:125:                                    ; preds = %141, %124
  %126 = load i64, i64* %chromosoneIndex2, align 8
  %127 = icmp ult i64 %126, 30
  br i1 %127, label %128, label %144

; <label>:128:                                    ; preds = %125
  %129 = load i64, i64* %chromosoneIndex2, align 8
  %130 = getelementptr inbounds %class.TSP, %class.TSP* %2, i32 0, i32 5
  %131 = load [20 x i32]*, [20 x i32]** %130, align 8
  %132 = getelementptr inbounds [20 x i32], [20 x i32]* %131, i64 %129
  %133 = getelementptr inbounds [20 x i32], [20 x i32]* %132, i32 0, i32 0
  %134 = bitcast i32* %133 to i8*
  %135 = load i64, i64* %chromosoneIndex2, align 8
  %136 = getelementptr inbounds %class.TSP, %class.TSP* %2, i32 0, i32 6
  %137 = load [20 x i32]*, [20 x i32]** %136, align 8
  %138 = getelementptr inbounds [20 x i32], [20 x i32]* %137, i64 %135
  %139 = getelementptr inbounds [20 x i32], [20 x i32]* %138, i32 0, i32 0
  %140 = bitcast i32* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %140, i64 80, i32 4, i1 false)
  br label %141

; <label>:141:                                    ; preds = %128
  %142 = load i64, i64* %chromosoneIndex2, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %chromosoneIndex2, align 8
  br label %125

; <label>:144:                                    ; preds = %125
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr double* @_ZSt11max_elementIPdET_S1_S1_(double* %__first, double* %__last) #5 comdat {
  %1 = alloca double*, align 8
  %2 = alloca double*, align 8
  %3 = alloca double*, align 8
  %__result = alloca double*, align 8
  store double* %__first, double** %2, align 8
  store double* %__last, double** %3, align 8
  %4 = load double*, double** %2, align 8
  %5 = load double*, double** %3, align 8
  %6 = icmp eq double* %4, %5
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %0
  %8 = load double*, double** %2, align 8
  store double* %8, double** %1, align 8
  br label %27

; <label>:9:                                      ; preds = %0
  %10 = load double*, double** %2, align 8
  store double* %10, double** %__result, align 8
  br label %11

; <label>:11:                                     ; preds = %24, %9
  %12 = load double*, double** %2, align 8
  %13 = getelementptr inbounds double, double* %12, i32 1
  store double* %13, double** %2, align 8
  %14 = load double*, double** %3, align 8
  %15 = icmp ne double* %13, %14
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %11
  %17 = load double*, double** %__result, align 8
  %18 = load double, double* %17, align 8
  %19 = load double*, double** %2, align 8
  %20 = load double, double* %19, align 8
  %21 = fcmp olt double %18, %20
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %16
  %23 = load double*, double** %2, align 8
  store double* %23, double** %__result, align 8
  br label %24

; <label>:24:                                     ; preds = %22, %16
  br label %11

; <label>:25:                                     ; preds = %11
  %26 = load double*, double** %__result, align 8
  store double* %26, double** %1, align 8
  br label %27

; <label>:27:                                     ; preds = %25, %7
  %28 = load double*, double** %1, align 8
  ret double* %28
}

; Function Attrs: nounwind uwtable
define void @_ZN3TSP19copyToNewPopulationEPKim(%class.TSP* %this, i32* %chromosone, i64 %index) #5 align 2 {
  %1 = alloca %class.TSP*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %i = alloca i64, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  store i32* %chromosone, i32** %2, align 8
  store i64 %index, i64* %3, align 8
  %4 = load %class.TSP*, %class.TSP** %1, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ult i64 %5, 30
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %0
  br label %10

; <label>:8:                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 419, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__._ZN3TSP19copyToNewPopulationEPKim, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %10

; <label>:10:                                     ; preds = %9, %7
  store i64 0, i64* %i, align 8
  br label %11

; <label>:11:                                     ; preds = %25, %10
  %12 = load i64, i64* %i, align 8
  %13 = icmp ult i64 %12, 20
  br i1 %13, label %14, label %28

; <label>:14:                                     ; preds = %11
  %15 = load i64, i64* %i, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 %15
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %class.TSP, %class.TSP* %4, i32 0, i32 6
  %22 = load [20 x i32]*, [20 x i32]** %21, align 8
  %23 = getelementptr inbounds [20 x i32], [20 x i32]* %22, i64 %20
  %24 = getelementptr inbounds [20 x i32], [20 x i32]* %23, i64 0, i64 %19
  store i32 %18, i32* %24, align 4
  br label %25

; <label>:25:                                     ; preds = %14
  %26 = load i64, i64* %i, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %i, align 8
  br label %11

; <label>:28:                                     ; preds = %11
  ret void
}

; Function Attrs: uwtable
define i32* @_ZNK3TSP17rouletteSelectionEPKd(%class.TSP* %this, double* %fitness) #0 align 2 {
  %1 = alloca %class.TSP*, align 8
  %2 = alloca double*, align 8
  %sum = alloca double, align 8
  %i = alloca i64, align 8
  %random = alloca double, align 8
  %i1 = alloca i64, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  store double* %fitness, double** %2, align 8
  %3 = load %class.TSP*, %class.TSP** %1, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4:                                      ; preds = %14, %0
  %5 = load i64, i64* %i, align 8
  %6 = icmp ult i64 %5, 30
  br i1 %6, label %7, label %17

; <label>:7:                                      ; preds = %4
  %8 = load i64, i64* %i, align 8
  %9 = load double*, double** %2, align 8
  %10 = getelementptr inbounds double, double* %9, i64 %8
  %11 = load double, double* %10, align 8
  %12 = load double, double* %sum, align 8
  %13 = fadd double %12, %11
  store double %13, double* %sum, align 8
  br label %14

; <label>:14:                                     ; preds = %7
  %15 = load i64, i64* %i, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %i, align 8
  br label %4

; <label>:17:                                     ; preds = %4
  %18 = load double, double* %sum, align 8
  %19 = call double @_ZN3TSP15randomInclusiveEd(double %18)
  store double %19, double* %random, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i64 0, i64* %i1, align 8
  br label %20

; <label>:20:                                     ; preds = %40, %17
  %21 = load i64, i64* %i1, align 8
  %22 = icmp ult i64 %21, 30
  br i1 %22, label %23, label %43

; <label>:23:                                     ; preds = %20
  %24 = load i64, i64* %i1, align 8
  %25 = load double*, double** %2, align 8
  %26 = getelementptr inbounds double, double* %25, i64 %24
  %27 = load double, double* %26, align 8
  %28 = load double, double* %sum, align 8
  %29 = fadd double %28, %27
  store double %29, double* %sum, align 8
  %30 = load double, double* %sum, align 8
  %31 = load double, double* %random, align 8
  %32 = fcmp oge double %30, %31
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %23
  %34 = load i64, i64* %i1, align 8
  %35 = getelementptr inbounds %class.TSP, %class.TSP* %3, i32 0, i32 5
  %36 = load [20 x i32]*, [20 x i32]** %35, align 8
  %37 = getelementptr inbounds [20 x i32], [20 x i32]* %36, i64 %34
  %38 = getelementptr inbounds [20 x i32], [20 x i32]* %37, i32 0, i32 0
  ret i32* %38

; <label>:39:                                     ; preds = %23
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i64, i64* %i1, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %i1, align 8
  br label %20

; <label>:43:                                     ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 449, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__._ZNK3TSP17rouletteSelectionEPKd, i32 0, i32 0)) #14
  unreachable
}

; Function Attrs: uwtable
define void @_ZN3TSP9crossoverEPKiS1_PiS2_(%class.TSP* %this, i32* %parentA, i32* %parentB, i32* %offspringA, i32* %offspringB) #0 align 2 {
  %1 = alloca %class.TSP*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %random = alloca double, align 8
  %cuttOffIndex1 = alloca i32, align 4
  %cuttOffIndex2 = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %cityIndex = alloca i64, align 8
  %substringIndex = alloca i64, align 8
  %offspringIndex = alloca i64, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  store i32* %parentA, i32** %2, align 8
  store i32* %parentB, i32** %3, align 8
  store i32* %offspringA, i32** %4, align 8
  store i32* %offspringB, i32** %5, align 8
  %6 = load %class.TSP*, %class.TSP** %1, align 8
  %7 = call double @_ZN3TSP15randomInclusiveEd(double 1.000000e+00)
  store double %7, double* %random, align 8
  %8 = load double, double* %random, align 8
  %9 = getelementptr inbounds %class.TSP, %class.TSP* %6, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = fcmp ogt double %8, %10
  br i1 %11, label %12, label %21

; <label>:12:                                     ; preds = %0
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32*, i32** %2, align 8
  %16 = bitcast i32* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %16, i64 80, i32 4, i1 false)
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i32*, i32** %3, align 8
  %20 = bitcast i32* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %20, i64 80, i32 4, i1 false)
  br label %171

; <label>:21:                                     ; preds = %0
  %22 = call double @_ZN3TSP15randomInclusiveEd(double 2.000000e+01)
  %23 = fptosi double %22 to i32
  store i32 %23, i32* %cuttOffIndex1, align 4
  %24 = call double @_ZN3TSP15randomInclusiveEd(double 2.000000e+01)
  %25 = fptosi double %24 to i32
  store i32 %25, i32* %cuttOffIndex2, align 4
  br label %26

; <label>:26:                                     ; preds = %30, %21
  %27 = load i32, i32* %cuttOffIndex2, align 4
  %28 = load i32, i32* %cuttOffIndex1, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %26
  %31 = call double @_ZN3TSP15randomExclusiveEd(double 2.000000e+01)
  %32 = fptosi double %31 to i32
  store i32 %32, i32* %cuttOffIndex2, align 4
  br label %26

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %cuttOffIndex1, align 4
  %35 = load i32, i32* %cuttOffIndex2, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %cuttOffIndex1, align 4
  store i32 %38, i32* %start, align 4
  %39 = load i32, i32* %cuttOffIndex2, align 4
  store i32 %39, i32* %end, align 4
  br label %43

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %cuttOffIndex2, align 4
  store i32 %41, i32* %start, align 4
  %42 = load i32, i32* %cuttOffIndex1, align 4
  store i32 %42, i32* %end, align 4
  br label %43

; <label>:43:                                     ; preds = %40, %37
  %44 = load i32*, i32** %4, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load i32*, i32** %2, align 8
  %47 = bitcast i32* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %47, i64 80, i32 4, i1 false)
  %48 = load i32*, i32** %5, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load i32*, i32** %3, align 8
  %51 = bitcast i32* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %51, i64 80, i32 4, i1 false)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %start, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = bitcast i32* %55 to i8*
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %start, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = bitcast i32* %60 to i8*
  %62 = load i32, i32* %end, align 4
  %63 = load i32, i32* %start, align 4
  %64 = sub i32 %62, %63
  %65 = zext i32 %64 to i64
  %66 = mul i64 4, %65
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %61, i64 %66, i32 4, i1 false)
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %start, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = bitcast i32* %70 to i8*
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* %start, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = bitcast i32* %75 to i8*
  %77 = load i32, i32* %end, align 4
  %78 = load i32, i32* %start, align 4
  %79 = sub i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = mul i64 4, %80
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %76, i64 %81, i32 4, i1 false)
  store i64 0, i64* %cityIndex, align 8
  br label %82

; <label>:82:                                     ; preds = %138, %43
  %83 = load i64, i64* %cityIndex, align 8
  %84 = icmp ult i64 %83, 20
  br i1 %84, label %85, label %141

; <label>:85:                                     ; preds = %82
  %86 = load i64, i64* %cityIndex, align 8
  %87 = load i32, i32* %start, align 4
  %88 = zext i32 %87 to i64
  %89 = icmp uge i64 %86, %88
  br i1 %89, label %90, label %96

; <label>:90:                                     ; preds = %85
  %91 = load i64, i64* %cityIndex, align 8
  %92 = load i32, i32* %end, align 4
  %93 = zext i32 %92 to i64
  %94 = icmp ult i64 %91, %93
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %90
  br label %137

; <label>:96:                                     ; preds = %90, %85
  %97 = load i32, i32* %start, align 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %substringIndex, align 8
  br label %99

; <label>:99:                                     ; preds = %133, %96
  %100 = load i64, i64* %substringIndex, align 8
  %101 = load i32, i32* %end, align 4
  %102 = zext i32 %101 to i64
  %103 = icmp ult i64 %100, %102
  br i1 %103, label %104, label %136

; <label>:104:                                    ; preds = %99
  %105 = load i64, i64* %cityIndex, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %substringIndex, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 %109
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %108, %112
  br i1 %113, label %114, label %118

; <label>:114:                                    ; preds = %104
  %115 = load i64, i64* %cityIndex, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 %115
  store i32 -1, i32* %117, align 4
  br label %118

; <label>:118:                                    ; preds = %114, %104
  %119 = load i64, i64* %cityIndex, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 %119
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %substringIndex, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 %123
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %122, %126
  br i1 %127, label %128, label %132

; <label>:128:                                    ; preds = %118
  %129 = load i64, i64* %cityIndex, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 %129
  store i32 -1, i32* %131, align 4
  br label %132

; <label>:132:                                    ; preds = %128, %118
  br label %133

; <label>:133:                                    ; preds = %132
  %134 = load i64, i64* %substringIndex, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %substringIndex, align 8
  br label %99

; <label>:136:                                    ; preds = %99
  br label %137

; <label>:137:                                    ; preds = %136, %95
  br label %138

; <label>:138:                                    ; preds = %137
  %139 = load i64, i64* %cityIndex, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %cityIndex, align 8
  br label %82

; <label>:141:                                    ; preds = %82
  store i64 0, i64* %offspringIndex, align 8
  br label %142

; <label>:142:                                    ; preds = %168, %141
  %143 = load i64, i64* %offspringIndex, align 8
  %144 = icmp ult i64 %143, 20
  br i1 %144, label %145, label %171

; <label>:145:                                    ; preds = %142
  %146 = load i64, i64* %offspringIndex, align 8
  %147 = load i32*, i32** %4, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 %146
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %156

; <label>:151:                                    ; preds = %145
  %152 = load i32*, i32** %4, align 8
  %153 = load i64, i64* %offspringIndex, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i32*, i32** %5, align 8
  call void @_ZN3TSP15repairOffspringEPiiPKi(%class.TSP* %6, i32* %152, i32 %154, i32* %155)
  br label %156

; <label>:156:                                    ; preds = %151, %145
  %157 = load i64, i64* %offspringIndex, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 %157
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %167

; <label>:162:                                    ; preds = %156
  %163 = load i32*, i32** %5, align 8
  %164 = load i64, i64* %offspringIndex, align 8
  %165 = trunc i64 %164 to i32
  %166 = load i32*, i32** %4, align 8
  call void @_ZN3TSP15repairOffspringEPiiPKi(%class.TSP* %6, i32* %163, i32 %165, i32* %166)
  br label %167

; <label>:167:                                    ; preds = %162, %156
  br label %168

; <label>:168:                                    ; preds = %167
  %169 = load i64, i64* %offspringIndex, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %offspringIndex, align 8
  br label %142

; <label>:171:                                    ; preds = %12, %142
  ret void
}

; Function Attrs: uwtable
define void @_ZN3TSP6mutateEPi(%class.TSP* %this, i32* %chromosone) #0 align 2 {
  %1 = alloca %class.TSP*, align 8
  %2 = alloca i32*, align 8
  %random = alloca double, align 8
  %tmp = alloca i32, align 4
  %random1 = alloca i32, align 4
  %random2 = alloca i32, align 4
  store %class.TSP* %this, %class.TSP** %1, align 8
  store i32* %chromosone, i32** %2, align 8
  %3 = load %class.TSP*, %class.TSP** %1, align 8
  %4 = call double @_ZN3TSP15randomInclusiveEd(double 1.000000e+00)
  store double %4, double* %random, align 8
  %5 = load double, double* %random, align 8
  %6 = getelementptr inbounds %class.TSP, %class.TSP* %3, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = fcmp ogt double %5, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %0
  br label %42

; <label>:10:                                     ; preds = %0
  %11 = call double @_ZN3TSP15randomExclusiveEd(double 2.000000e+01)
  %12 = fptosi double %11 to i32
  store i32 %12, i32* %random1, align 4
  %13 = call double @_ZN3TSP15randomExclusiveEd(double 2.000000e+01)
  %14 = fptosi double %13 to i32
  store i32 %14, i32* %random2, align 4
  br label %15

; <label>:15:                                     ; preds = %19, %10
  %16 = load i32, i32* %random1, align 4
  %17 = load i32, i32* %random2, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %15
  %20 = call double @_ZN3TSP15randomExclusiveEd(double 2.000000e+01)
  %21 = fptosi double %20 to i32
  store i32 %21, i32* %random2, align 4
  br label %15

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* %random1, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 %24
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %tmp, align 4
  %28 = load i32, i32* %random2, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 %29
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %random1, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 %34
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %tmp, align 4
  %38 = load i32, i32* %random2, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 %39
  store i32 %37, i32* %41, align 4
  br label %42

; <label>:42:                                     ; preds = %22, %9
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @_ZN3TSP12hasDuplicateEPKim(%class.TSP* %this, i32* %chromosone, i64 %populationCount) #5 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.TSP*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %chromosoneIndex = alloca i64, align 8
  %genesCompared = alloca i32, align 4
  %gene = alloca i64, align 8
  store %class.TSP* %this, %class.TSP** %2, align 8
  store i32* %chromosone, i32** %3, align 8
  store i64 %populationCount, i64* %4, align 8
  %5 = load %class.TSP*, %class.TSP** %2, align 8
  store i64 0, i64* %chromosoneIndex, align 8
  br label %6

; <label>:6:                                      ; preds = %39, %0
  %7 = load i64, i64* %chromosoneIndex, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %42

; <label>:10:                                     ; preds = %6
  store i32 0, i32* %genesCompared, align 4
  store i64 0, i64* %gene, align 8
  br label %11

; <label>:11:                                     ; preds = %31, %10
  %12 = load i64, i64* %gene, align 8
  %13 = icmp ult i64 %12, 20
  br i1 %13, label %14, label %34

; <label>:14:                                     ; preds = %11
  %15 = load i64, i64* %gene, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 %15
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %gene, align 8
  %20 = load i64, i64* %chromosoneIndex, align 8
  %21 = getelementptr inbounds %class.TSP, %class.TSP* %5, i32 0, i32 6
  %22 = load [20 x i32]*, [20 x i32]** %21, align 8
  %23 = getelementptr inbounds [20 x i32], [20 x i32]* %22, i64 %20
  %24 = getelementptr inbounds [20 x i32], [20 x i32]* %23, i64 0, i64 %19
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %18, %25
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %14
  br label %34

; <label>:28:                                     ; preds = %14
  %29 = load i32, i32* %genesCompared, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %genesCompared, align 4
  br label %31

; <label>:31:                                     ; preds = %28
  %32 = load i64, i64* %gene, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %gene, align 8
  br label %11

; <label>:34:                                     ; preds = %27, %11
  %35 = load i32, i32* %genesCompared, align 4
  %36 = icmp eq i32 %35, 20
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  store i1 true, i1* %1, align 1
  br label %43

; <label>:38:                                     ; preds = %34
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i64, i64* %chromosoneIndex, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %chromosoneIndex, align 8
  br label %6

; <label>:42:                                     ; preds = %6
  store i1 false, i1* %1, align 1
  br label %43

; <label>:43:                                     ; preds = %42, %37
  %44 = load i1, i1* %1, align 1
  ret i1 %44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind uwtable
define double @_ZN3TSP15randomExclusiveEd(double %max) #5 align 2 {
  %1 = alloca double, align 8
  store double %max, double* %1, align 8
  %2 = call i32 @rand() #2
  %3 = sitofp i32 %2 to double
  %4 = load double, double* %1, align 8
  %5 = fmul double %3, %4
  %6 = fdiv double %5, 0x41E0000000000000
  ret double %6
}

; Function Attrs: uwtable
define void @_ZN3TSP15repairOffspringEPiiPKi(%class.TSP* %this, i32* %offspringToRepair, i32 %missingIndex, i32* %other) #0 align 2 {
  %1 = alloca %class.TSP*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %patchIndex = alloca i64, align 8
  %missing = alloca i32*, align 8
  store %class.TSP* %this, %class.TSP** %1, align 8
  store i32* %offspringToRepair, i32** %2, align 8
  store i32 %missingIndex, i32* %3, align 4
  store i32* %other, i32** %4, align 8
  %5 = load %class.TSP*, %class.TSP** %1, align 8
  store i64 0, i64* %patchIndex, align 8
  br label %6

; <label>:6:                                      ; preds = %31, %0
  %7 = load i64, i64* %patchIndex, align 8
  %8 = icmp ult i64 %7, 20
  br i1 %8, label %9, label %34

; <label>:9:                                      ; preds = %6
  %10 = load i32*, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 20
  %13 = load i64, i64* %patchIndex, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 %13
  %16 = call i32* @_ZSt4findIPiiET_S1_S1_RKT0_(i32* %10, i32* %12, i32* dereferenceable(4) %15)
  store i32* %16, i32** %missing, align 8
  %17 = load i32*, i32** %missing, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 20
  %20 = icmp eq i32* %17, %19
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %9
  %22 = load i64, i64* %patchIndex, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 %22
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 %27
  store i32 %25, i32* %29, align 4
  br label %34

; <label>:30:                                     ; preds = %9
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i64, i64* %patchIndex, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %patchIndex, align 8
  br label %6

; <label>:34:                                     ; preds = %21, %6
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i32* @_ZSt4findIPiiET_S1_S1_RKT0_(i32* %__first, i32* %__last, i32* dereferenceable(4) %__val) #9 comdat {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"struct.std::random_access_iterator_tag", align 1
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__val, i32** %3, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32*, i32** %3, align 8
  call void @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i32** dereferenceable(8) %1)
  %9 = call i32* @_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag(i32* %6, i32* %7, i32* dereferenceable(4) %8)
  ret i32* %9
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #10

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind
declare i32 @rand() #4

; Function Attrs: norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %tsp = alloca %class.TSP*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  %generations = alloca i64, align 8
  %generationsWithoutImprovement = alloca i64, align 8
  %bestFitness = alloca double, align 8
  %initialAverage = alloca double, align 8
  %newFitness = alloca double, align 8
  %6 = alloca %"class.std::basic_string", align 8
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %7 = call noalias i8* @_Znwm(i64 360) #13
  %8 = bitcast i8* %7 to %class.TSP*
  invoke void @_ZN3TSPC1Edd(%class.TSP* %8, double 9.000000e-01, double 2.000000e-02)
          to label %9 unwind label %26

; <label>:9:                                      ; preds = %0
  store %class.TSP* %8, %class.TSP** %tsp, align 8
  store i64 0, i64* %generations, align 8
  store i64 0, i64* %generationsWithoutImprovement, align 8
  store double -1.000000e+00, double* %bestFitness, align 8
  %10 = load %class.TSP*, %class.TSP** %tsp, align 8
  %11 = call double @_ZNK3TSP18getAverageDistanceEv(%class.TSP* %10)
  store double %11, double* %initialAverage, align 8
  br label %12

; <label>:12:                                     ; preds = %33, %9
  %13 = load i64, i64* %generations, align 8
  %14 = icmp ult i64 %13, 10000
  br i1 %14, label %15, label %34

; <label>:15:                                     ; preds = %12
  %16 = load %class.TSP*, %class.TSP** %tsp, align 8
  call void @_ZN3TSP14nextPopulationEv(%class.TSP* %16)
  %17 = load i64, i64* %generations, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %generations, align 8
  %19 = load %class.TSP*, %class.TSP** %tsp, align 8
  %20 = call double @_ZNK3TSP14getBestFitnessEv(%class.TSP* %19)
  store double %20, double* %newFitness, align 8
  %21 = load double, double* %newFitness, align 8
  %22 = load double, double* %bestFitness, align 8
  %23 = fcmp ogt double %21, %22
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %15
  %25 = load double, double* %newFitness, align 8
  store double %25, double* %bestFitness, align 8
  store i64 0, i64* %generationsWithoutImprovement, align 8
  br label %33

; <label>:26:                                     ; preds = %0
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  store i8* %28, i8** %4, align 8
  %29 = extractvalue { i8*, i32 } %27, 1
  store i32 %29, i32* %5, align 4
  call void @_ZdlPv(i8* %7) #15
  br label %76

; <label>:30:                                     ; preds = %15
  %31 = load i64, i64* %generationsWithoutImprovement, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %generationsWithoutImprovement, align 8
  br label %33

; <label>:33:                                     ; preds = %30, %24
  br label %12

; <label>:34:                                     ; preds = %12
  %35 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  %36 = load i64, i64* %generations, align 8
  %37 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* %35, i64 %36)
  %38 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %37, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %39 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  %40 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %39, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %41 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %42 = load %class.TSP*, %class.TSP** %tsp, align 8
  call void @_ZNK3TSP17getBestPathStringEv(%"class.std::basic_string"* sret %6, %class.TSP* %42)
  %43 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E(%"class.std::basic_ostream"* dereferenceable(272) %41, %"class.std::basic_string"* dereferenceable(8) %6)
          to label %44 unwind label %71

; <label>:44:                                     ; preds = %34
  %45 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %43, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %46 unwind label %71

; <label>:46:                                     ; preds = %44
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %6)
  %47 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0))
  %48 = load %class.TSP*, %class.TSP** %tsp, align 8
  %49 = call double @_ZNK3TSP14getBestFitnessEv(%class.TSP* %48)
  %50 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %47, double %49)
  %51 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %50, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %52 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %53 = load %class.TSP*, %class.TSP** %tsp, align 8
  %54 = call double @_ZNK3TSP22getLowestTotalDistanceEv(%class.TSP* %53)
  %55 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %52, double %54)
  %56 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %55, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %57 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0))
  %58 = load %class.TSP*, %class.TSP** %tsp, align 8
  %59 = call double @_ZNK3TSP18getAverageDistanceEv(%class.TSP* %58)
  %60 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %57, double %59)
  %61 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %60, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %62 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  %63 = load double, double* %initialAverage, align 8
  %64 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %62, double %63)
  %65 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %64, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %66 = load %class.TSP*, %class.TSP** %tsp, align 8
  %67 = icmp eq %class.TSP* %66, null
  br i1 %67, label %70, label %68

; <label>:68:                                     ; preds = %46
  %69 = bitcast %class.TSP* %66 to i8*
  call void @_ZdlPv(i8* %69) #15
  br label %70

; <label>:70:                                     ; preds = %68, %46
  ret i32 0

; <label>:71:                                     ; preds = %44, %34
  %72 = landingpad { i8*, i32 }
          cleanup
  %73 = extractvalue { i8*, i32 } %72, 0
  store i8* %73, i8** %4, align 8
  %74 = extractvalue { i8*, i32 } %72, 1
  store i32 %74, i32* %5, align 4
  invoke void @_ZNSsD1Ev(%"class.std::basic_string"* %6)
          to label %75 unwind label %81

; <label>:75:                                     ; preds = %71
  br label %76

; <label>:76:                                     ; preds = %75, %26
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = insertvalue { i8*, i32 } undef, i8* %77, 0
  %80 = insertvalue { i8*, i32 } %79, i32 %78, 1
  resume { i8*, i32 } %80

; <label>:81:                                     ; preds = %71
  %82 = landingpad { i8*, i32 }
          catch i8* null
  %83 = extractvalue { i8*, i32 } %82, 0
  call void @__clang_call_terminate(i8* %83) #14
  unreachable
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #12

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"*, i64) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E(%"class.std::basic_ostream"* dereferenceable(272), %"class.std::basic_string"* dereferenceable(8)) #1

declare void @_ZNSsD1Ev(%"class.std::basic_string"*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #1

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZSt6__findIPiiET_S1_S1_RKT0_St26random_access_iterator_tag(i32* %__first, i32* %__last, i32* dereferenceable(4) %__val) #5 comdat {
  %1 = alloca i32*, align 8
  %2 = alloca %"struct.std::random_access_iterator_tag", align 1
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %__trip_count = alloca i64, align 8
  store i32* %__first, i32** %3, align 8
  store i32* %__last, i32** %4, align 8
  store i32* %__val, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = ptrtoint i32* %6 to i64
  %9 = ptrtoint i32* %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 4
  %12 = ashr i64 %11, 2
  store i64 %12, i64* %__trip_count, align 8
  br label %13

; <label>:13:                                     ; preds = %57, %0
  %14 = load i64, i64* %__trip_count, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %60

; <label>:16:                                     ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %16
  %23 = load i32*, i32** %3, align 8
  store i32* %23, i32** %1, align 8
  br label %103

; <label>:24:                                     ; preds = %16
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %24
  %33 = load i32*, i32** %3, align 8
  store i32* %33, i32** %1, align 8
  br label %103

; <label>:34:                                     ; preds = %24
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %34
  %43 = load i32*, i32** %3, align 8
  store i32* %43, i32** %1, align 8
  br label %103

; <label>:44:                                     ; preds = %34
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %3, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %44
  %53 = load i32*, i32** %3, align 8
  store i32* %53, i32** %1, align 8
  br label %103

; <label>:54:                                     ; preds = %44
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %3, align 8
  br label %57

; <label>:57:                                     ; preds = %54
  %58 = load i64, i64* %__trip_count, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %__trip_count, align 8
  br label %13

; <label>:60:                                     ; preds = %13
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = ptrtoint i32* %61 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  switch i64 %66, label %101 [
    i64 3, label %67
    i64 2, label %78
    i64 1, label %89
    i64 0, label %100
  ]

; <label>:67:                                     ; preds = %60
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %67
  %74 = load i32*, i32** %3, align 8
  store i32* %74, i32** %1, align 8
  br label %103

; <label>:75:                                     ; preds = %67
  %76 = load i32*, i32** %3, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %3, align 8
  br label %78

; <label>:78:                                     ; preds = %60, %75
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %86

; <label>:84:                                     ; preds = %78
  %85 = load i32*, i32** %3, align 8
  store i32* %85, i32** %1, align 8
  br label %103

; <label>:86:                                     ; preds = %78
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %3, align 8
  br label %89

; <label>:89:                                     ; preds = %60, %86
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %97

; <label>:95:                                     ; preds = %89
  %96 = load i32*, i32** %3, align 8
  store i32* %96, i32** %1, align 8
  br label %103

; <label>:97:                                     ; preds = %89
  %98 = load i32*, i32** %3, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %3, align 8
  br label %100

; <label>:100:                                    ; preds = %60, %97
  br label %101

; <label>:101:                                    ; preds = %60, %100
  %102 = load i32*, i32** %4, align 8
  store i32* %102, i32** %1, align 8
  br label %103

; <label>:103:                                    ; preds = %101, %95, %84, %73, %52, %42, %32, %22
  %104 = load i32*, i32** %1, align 8
  ret i32* %104
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(i32** dereferenceable(8)) #6 comdat {
  %2 = alloca %"struct.std::random_access_iterator_tag", align 1
  %3 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_tsp_ga.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { argmemonly nounwind }
attributes #9 = { inlinehint uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { builtin }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (trunk 263061)"}
