; ModuleID = 'raytracer.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl" }
%"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl" = type { %class.Sphere**, %class.Sphere**, %class.Sphere** }
%class.Sphere = type { %class.Vec3, float, float, %class.Vec3, %class.Vec3, float, float }
%class.Vec3 = type { float, float, float }
%"class.__gnu_cxx::__normal_iterator" = type { %class.Sphere** }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.0" = type { %class.Sphere** }
%"class.__gnu_cxx::new_allocator" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@dont_optimize_me = global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ERROR: WRONG ANSWER\0A\00", align 1
@.str1 = private unnamed_addr constant [22 x i8] c"vector::_M_insert_aux\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %spheres = alloca %"class.std::vector", align 8
  %4 = alloca %class.Sphere*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  %7 = alloca %class.Vec3, align 4
  %8 = alloca float, align 4
  %9 = alloca %class.Vec3, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %class.Vec3, align 4
  %13 = alloca %class.Sphere*, align 8
  %14 = alloca %class.Vec3, align 4
  %15 = alloca float, align 4
  %16 = alloca %class.Vec3, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %class.Vec3, align 4
  %20 = alloca %class.Sphere*, align 8
  %21 = alloca %class.Vec3, align 4
  %22 = alloca float, align 4
  %23 = alloca %class.Vec3, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca %class.Vec3, align 4
  %27 = alloca %class.Sphere*, align 8
  %28 = alloca %class.Vec3, align 4
  %29 = alloca float, align 4
  %30 = alloca %class.Vec3, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca %class.Vec3, align 4
  %34 = alloca %class.Sphere*, align 8
  %35 = alloca %class.Vec3, align 4
  %36 = alloca float, align 4
  %37 = alloca %class.Vec3, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca %class.Vec3, align 4
  %41 = alloca %class.Sphere*, align 8
  %42 = alloca %class.Vec3, align 4
  %43 = alloca float, align 4
  %44 = alloca %class.Vec3, align 4
  %45 = alloca float, align 4
  %46 = alloca float, align 4
  %47 = alloca %class.Vec3, align 4
  %sph = alloca %class.Sphere*, align 8
  %48 = alloca i32
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  call void @srand48(i64 13) #1
  call void @_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev(%"class.std::vector"* %spheres)
  %49 = invoke noalias i8* @_Znwm(i64 52) #12
          to label %50 unwind label %102

; <label>:50                                      ; preds = %0
  %51 = bitcast i8* %49 to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %7, float 0.000000e+00, float -1.000400e+04, float -2.000000e+01)
          to label %52 unwind label %106

; <label>:52                                      ; preds = %50
  store float 1.000000e+04, float* %8
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %9, float 0x3FC99999A0000000)
          to label %53 unwind label %106

; <label>:53                                      ; preds = %52
  store float 0.000000e+00, float* %10
  store float 0.000000e+00, float* %11
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %12, float 0.000000e+00)
          to label %54 unwind label %106

; <label>:54                                      ; preds = %53
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %51, %class.Vec3* %7, float* %8, %class.Vec3* %9, float* %10, float* %11, %class.Vec3* %12)
          to label %55 unwind label %106

; <label>:55                                      ; preds = %54
  store %class.Sphere* %51, %class.Sphere** %4
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** %4)
          to label %56 unwind label %102

; <label>:56                                      ; preds = %55
  %57 = invoke noalias i8* @_Znwm(i64 52) #12
          to label %58 unwind label %102

; <label>:58                                      ; preds = %56
  %59 = bitcast i8* %57 to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %14, float 0.000000e+00, float 0.000000e+00, float -2.000000e+01)
          to label %60 unwind label %110

; <label>:60                                      ; preds = %58
  store float 4.000000e+00, float* %15
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %16, float 1.000000e+00, float 0x3FD47AE140000000, float 0x3FD70A3D80000000)
          to label %61 unwind label %110

; <label>:61                                      ; preds = %60
  store float 1.000000e+00, float* %17
  store float 5.000000e-01, float* %18
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %19, float 0.000000e+00)
          to label %62 unwind label %110

; <label>:62                                      ; preds = %61
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %59, %class.Vec3* %14, float* %15, %class.Vec3* %16, float* %17, float* %18, %class.Vec3* %19)
          to label %63 unwind label %110

; <label>:63                                      ; preds = %62
  store %class.Sphere* %59, %class.Sphere** %13
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** %13)
          to label %64 unwind label %102

; <label>:64                                      ; preds = %63
  %65 = invoke noalias i8* @_Znwm(i64 52) #12
          to label %66 unwind label %102

; <label>:66                                      ; preds = %64
  %67 = bitcast i8* %65 to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %21, float 5.000000e+00, float -1.000000e+00, float -1.500000e+01)
          to label %68 unwind label %114

; <label>:68                                      ; preds = %66
  store float 2.000000e+00, float* %22
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %23, float 0x3FECCCCCC0000000, float 0x3FE851EB80000000, float 0x3FDD70A3E0000000)
          to label %69 unwind label %114

; <label>:69                                      ; preds = %68
  store float 1.000000e+00, float* %24
  store float 0.000000e+00, float* %25
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %26, float 0.000000e+00)
          to label %70 unwind label %114

; <label>:70                                      ; preds = %69
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %67, %class.Vec3* %21, float* %22, %class.Vec3* %23, float* %24, float* %25, %class.Vec3* %26)
          to label %71 unwind label %114

; <label>:71                                      ; preds = %70
  store %class.Sphere* %67, %class.Sphere** %20
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** %20)
          to label %72 unwind label %102

; <label>:72                                      ; preds = %71
  %73 = invoke noalias i8* @_Znwm(i64 52) #12
          to label %74 unwind label %102

; <label>:74                                      ; preds = %72
  %75 = bitcast i8* %73 to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %28, float 5.000000e+00, float 0.000000e+00, float -2.500000e+01)
          to label %76 unwind label %118

; <label>:76                                      ; preds = %74
  store float 3.000000e+00, float* %29
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %30, float 0x3FE4CCCCC0000000, float 0x3FE8A3D700000000, float 0x3FEF0A3D80000000)
          to label %77 unwind label %118

; <label>:77                                      ; preds = %76
  store float 1.000000e+00, float* %31
  store float 0.000000e+00, float* %32
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %33, float 0.000000e+00)
          to label %78 unwind label %118

; <label>:78                                      ; preds = %77
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %75, %class.Vec3* %28, float* %29, %class.Vec3* %30, float* %31, float* %32, %class.Vec3* %33)
          to label %79 unwind label %118

; <label>:79                                      ; preds = %78
  store %class.Sphere* %75, %class.Sphere** %27
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** %27)
          to label %80 unwind label %102

; <label>:80                                      ; preds = %79
  %81 = invoke noalias i8* @_Znwm(i64 52) #12
          to label %82 unwind label %102

; <label>:82                                      ; preds = %80
  %83 = bitcast i8* %81 to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %35, float -5.500000e+00, float 0.000000e+00, float -1.500000e+01)
          to label %84 unwind label %122

; <label>:84                                      ; preds = %82
  store float 3.000000e+00, float* %36
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %37, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000)
          to label %85 unwind label %122

; <label>:85                                      ; preds = %84
  store float 1.000000e+00, float* %38
  store float 0.000000e+00, float* %39
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %40, float 0.000000e+00)
          to label %86 unwind label %122

; <label>:86                                      ; preds = %85
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %83, %class.Vec3* %35, float* %36, %class.Vec3* %37, float* %38, float* %39, %class.Vec3* %40)
          to label %87 unwind label %122

; <label>:87                                      ; preds = %86
  store %class.Sphere* %83, %class.Sphere** %34
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** %34)
          to label %88 unwind label %102

; <label>:88                                      ; preds = %87
  %89 = invoke noalias i8* @_Znwm(i64 52) #12
          to label %90 unwind label %102

; <label>:90                                      ; preds = %88
  %91 = bitcast i8* %89 to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %42, float 0.000000e+00, float 2.000000e+01, float -3.000000e+01)
          to label %92 unwind label %126

; <label>:92                                      ; preds = %90
  store float 3.000000e+00, float* %43
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %44, float 0.000000e+00)
          to label %93 unwind label %126

; <label>:93                                      ; preds = %92
  store float 0.000000e+00, float* %45
  store float 0.000000e+00, float* %46
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %47, float 3.000000e+00)
          to label %94 unwind label %126

; <label>:94                                      ; preds = %93
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %91, %class.Vec3* %42, float* %43, %class.Vec3* %44, float* %45, float* %46, %class.Vec3* %47)
          to label %95 unwind label %126

; <label>:95                                      ; preds = %94
  store %class.Sphere* %91, %class.Sphere** %41
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** %41)
          to label %96 unwind label %102

; <label>:96                                      ; preds = %95
  %97 = invoke i32 @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE(%"class.std::vector"* %spheres)
          to label %98 unwind label %102

; <label>:98                                      ; preds = %96
  store volatile i32 %97, i32* @dont_optimize_me, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !1
  %99 = load volatile i32* @dont_optimize_me, align 4
  %100 = icmp eq i32 %99, 1272430816
  br i1 %100, label %101, label %130

; <label>:101                                     ; preds = %98
  br label %133

; <label>:102                                     ; preds = %140, %138, %134, %130, %96, %95, %88, %87, %80, %79, %72, %71, %64, %63, %56, %55, %0
  %103 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %104 = extractvalue { i8*, i32 } %103, 0
  store i8* %104, i8** %5
  %105 = extractvalue { i8*, i32 } %103, 1
  store i32 %105, i32* %6
  br label %150

; <label>:106                                     ; preds = %54, %53, %52, %50
  %107 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %108 = extractvalue { i8*, i32 } %107, 0
  store i8* %108, i8** %5
  %109 = extractvalue { i8*, i32 } %107, 1
  store i32 %109, i32* %6
  call void @_ZdlPv(i8* %49) #13
  br label %150

; <label>:110                                     ; preds = %62, %61, %60, %58
  %111 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %112 = extractvalue { i8*, i32 } %111, 0
  store i8* %112, i8** %5
  %113 = extractvalue { i8*, i32 } %111, 1
  store i32 %113, i32* %6
  call void @_ZdlPv(i8* %57) #13
  br label %150

; <label>:114                                     ; preds = %70, %69, %68, %66
  %115 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %116 = extractvalue { i8*, i32 } %115, 0
  store i8* %116, i8** %5
  %117 = extractvalue { i8*, i32 } %115, 1
  store i32 %117, i32* %6
  call void @_ZdlPv(i8* %65) #13
  br label %150

; <label>:118                                     ; preds = %78, %77, %76, %74
  %119 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %120 = extractvalue { i8*, i32 } %119, 0
  store i8* %120, i8** %5
  %121 = extractvalue { i8*, i32 } %119, 1
  store i32 %121, i32* %6
  call void @_ZdlPv(i8* %73) #13
  br label %150

; <label>:122                                     ; preds = %86, %85, %84, %82
  %123 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %124 = extractvalue { i8*, i32 } %123, 0
  store i8* %124, i8** %5
  %125 = extractvalue { i8*, i32 } %123, 1
  store i32 %125, i32* %6
  call void @_ZdlPv(i8* %81) #13
  br label %150

; <label>:126                                     ; preds = %94, %93, %92, %90
  %127 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %128 = extractvalue { i8*, i32 } %127, 0
  store i8* %128, i8** %5
  %129 = extractvalue { i8*, i32 } %127, 1
  store i32 %129, i32* %6
  call void @_ZdlPv(i8* %89) #13
  br label %150

; <label>:130                                     ; preds = %98
  %131 = invoke i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str, i32 0, i32 0))
          to label %132 unwind label %102

; <label>:132                                     ; preds = %130
  br label %133

; <label>:133                                     ; preds = %132, %101
  br label %134

; <label>:134                                     ; preds = %147, %133
  %135 = invoke zeroext i1 @_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv(%"class.std::vector"* %spheres)
          to label %136 unwind label %102

; <label>:136                                     ; preds = %134
  %137 = xor i1 %135, true
  br i1 %137, label %138, label %148

; <label>:138                                     ; preds = %136
  %139 = invoke %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv(%"class.std::vector"* %spheres)
          to label %140 unwind label %102

; <label>:140                                     ; preds = %138
  %141 = load %class.Sphere** %139
  store %class.Sphere* %141, %class.Sphere** %sph, align 8
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv(%"class.std::vector"* %spheres)
          to label %142 unwind label %102

; <label>:142                                     ; preds = %140
  %143 = load %class.Sphere** %sph, align 8
  %144 = icmp eq %class.Sphere* %143, null
  br i1 %144, label %147, label %145

; <label>:145                                     ; preds = %142
  %146 = bitcast %class.Sphere* %143 to i8*
  call void @_ZdlPv(i8* %146) #13
  br label %147

; <label>:147                                     ; preds = %145, %142
  br label %134

; <label>:148                                     ; preds = %136
  store i32 0, i32* %1
  store i32 1, i32* %48
  call void @_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev(%"class.std::vector"* %spheres)
  %149 = load i32* %1
  ret i32 %149

; <label>:150                                     ; preds = %126, %122, %118, %114, %110, %106, %102
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev(%"class.std::vector"* %spheres)
          to label %151 unwind label %157

; <label>:151                                     ; preds = %150
  br label %152

; <label>:152                                     ; preds = %151
  %153 = load i8** %5
  %154 = load i32* %6
  %155 = insertvalue { i8*, i32 } undef, i8* %153, 0
  %156 = insertvalue { i8*, i32 } %155, i32 %154, 1
  resume { i8*, i32 } %156

; <label>:157                                     ; preds = %150
  %158 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %159 = extractvalue { i8*, i32 } %158, 0
  call void @__clang_call_terminate(i8* %159) #14
  unreachable
}

; Function Attrs: nounwind
declare void @srand48(i64) #3

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev(%"class.std::vector"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev(%"struct.std::_Vector_base"* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %this, %class.Sphere** %__x) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store %class.Sphere** %__x, %class.Sphere*** %2, align 8
  %4 = load %"class.std::vector"** %1
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %class.Sphere*** %7, align 8
  %9 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %10, i32 0, i32 2
  %12 = load %class.Sphere*** %11, align 8
  %13 = icmp ne %class.Sphere** %8, %12
  br i1 %13, label %14, label %28

; <label>:14                                      ; preds = %0
  %15 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %17 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %16 to %"class.std::allocator"*
  %18 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %20 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %19, i32 0, i32 1
  %21 = load %class.Sphere*** %20, align 8
  %22 = load %class.Sphere*** %2, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* %17, %class.Sphere** %21, %class.Sphere** %22)
  %23 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base"* %23, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %24, i32 0, i32 1
  %26 = load %class.Sphere*** %25, align 8
  %27 = getelementptr inbounds %class.Sphere** %26, i32 1
  store %class.Sphere** %27, %class.Sphere*** %25, align 8
  br label %34

; <label>:28                                      ; preds = %0
  %29 = call %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv(%"class.std::vector"* %4)
  %30 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %class.Sphere** %29, %class.Sphere*** %30
  %31 = load %class.Sphere*** %2, align 8
  %32 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %33 = load %class.Sphere*** %32
  call void @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(%"class.std::vector"* %4, %class.Sphere** %33, %class.Sphere** %31)
  br label %34

; <label>:34                                      ; preds = %28, %14
  ret void
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %this, %class.Vec3* %c, float* %r, %class.Vec3* %sc, float* %refl, float* %transp, %class.Vec3* %ec) unnamed_addr #5 align 2 {
  %1 = alloca %class.Sphere*, align 8
  %2 = alloca %class.Vec3*, align 8
  %3 = alloca float*, align 8
  %4 = alloca %class.Vec3*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %class.Vec3*, align 8
  store %class.Sphere* %this, %class.Sphere** %1, align 8
  store %class.Vec3* %c, %class.Vec3** %2, align 8
  store float* %r, float** %3, align 8
  store %class.Vec3* %sc, %class.Vec3** %4, align 8
  store float* %refl, float** %5, align 8
  store float* %transp, float** %6, align 8
  store %class.Vec3* %ec, %class.Vec3** %7, align 8
  %8 = load %class.Sphere** %1
  %9 = getelementptr inbounds %class.Sphere* %8, i32 0, i32 0
  %10 = load %class.Vec3** %2, align 8
  %11 = bitcast %class.Vec3* %9 to i8*
  %12 = bitcast %class.Vec3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 12, i32 4, i1 false)
  %13 = getelementptr inbounds %class.Sphere* %8, i32 0, i32 1
  %14 = load float** %3, align 8
  %15 = load float* %14, align 4
  store float %15, float* %13, align 4
  %16 = getelementptr inbounds %class.Sphere* %8, i32 0, i32 2
  %17 = load float** %3, align 8
  %18 = load float* %17, align 4
  %19 = load float** %3, align 8
  %20 = load float* %19, align 4
  %21 = fmul float %18, %20
  store float %21, float* %16, align 4
  %22 = getelementptr inbounds %class.Sphere* %8, i32 0, i32 3
  %23 = load %class.Vec3** %4, align 8
  %24 = bitcast %class.Vec3* %22 to i8*
  %25 = bitcast %class.Vec3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 12, i32 4, i1 false)
  %26 = getelementptr inbounds %class.Sphere* %8, i32 0, i32 4
  %27 = load %class.Vec3** %7, align 8
  %28 = bitcast %class.Vec3* %26 to i8*
  %29 = bitcast %class.Vec3* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 12, i32 4, i1 false)
  %30 = getelementptr inbounds %class.Sphere* %8, i32 0, i32 5
  %31 = load float** %6, align 8
  %32 = load float* %31, align 4
  store float %32, float* %30, align 4
  %33 = getelementptr inbounds %class.Sphere* %8, i32 0, i32 6
  %34 = load float** %5, align 8
  %35 = load float* %34, align 4
  store float %35, float* %33, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4Vec3IfEC2Efff(%class.Vec3* %this, float %xx, float %yy, float %zz) unnamed_addr #5 align 2 {
  %1 = alloca %class.Vec3*, align 8
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %class.Vec3* %this, %class.Vec3** %1, align 8
  store float %xx, float* %2, align 4
  store float %yy, float* %3, align 4
  store float %zz, float* %4, align 4
  %5 = load %class.Vec3** %1
  %6 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 0
  %7 = load float* %2, align 4
  store float %7, float* %6, align 4
  %8 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 1
  %9 = load float* %3, align 4
  store float %9, float* %8, align 4
  %10 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 2
  %11 = load float* %4, align 4
  store float %11, float* %10, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4Vec3IfEC2Ef(%class.Vec3* %this, float %xx) unnamed_addr #5 align 2 {
  %1 = alloca %class.Vec3*, align 8
  %2 = alloca float, align 4
  store %class.Vec3* %this, %class.Vec3** %1, align 8
  store float %xx, float* %2, align 4
  %3 = load %class.Vec3** %1
  %4 = getelementptr inbounds %class.Vec3* %3, i32 0, i32 0
  %5 = load float* %2, align 4
  store float %5, float* %4, align 4
  %6 = getelementptr inbounds %class.Vec3* %3, i32 0, i32 1
  %7 = load float* %2, align 4
  store float %7, float* %6, align 4
  %8 = getelementptr inbounds %class.Vec3* %3, i32 0, i32 2
  %9 = load float* %2, align 4
  store float %9, float* %8, align 4
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

; Function Attrs: uwtable
define linkonce_odr i32 @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE(%"class.std::vector"* %spheres) #2 {
  %1 = alloca %"class.std::vector"*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %image = alloca %class.Vec3*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  %pixel = alloca %class.Vec3*, align 8
  %invWidth = alloca float, align 4
  %invHeight = alloca float, align 4
  %fov = alloca float, align 4
  %aspectratio = alloca float, align 4
  %angle = alloca float, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca float, align 4
  %yy = alloca float, align 4
  %raydir = alloca %class.Vec3, align 4
  %4 = alloca %class.Vec3, align 4
  %5 = alloca %class.Vec3, align 4
  %6 = alloca i32, align 4
  %7 = alloca { <2 x float>, float }
  %bad_hash = alloca i32, align 4
  %i = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %"class.std::vector"* %spheres, %"class.std::vector"** %1, align 8
  store i32 640, i32* %width, align 4
  store i32 480, i32* %height, align 4
  %11 = load i32* %width, align 4
  %12 = load i32* %height, align 4
  %13 = mul i32 %11, %12
  %14 = zext i32 %13 to i64
  %15 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %14, i64 12)
  %16 = extractvalue { i64, i1 } %15, 1
  %17 = extractvalue { i64, i1 } %15, 0
  %18 = select i1 %16, i64 -1, i64 %17
  %19 = call noalias i8* @_Znam(i64 %18) #12
  %20 = bitcast i8* %19 to %class.Vec3*
  %21 = icmp eq i64 %14, 0
  br i1 %21, label %29, label %22

; <label>:22                                      ; preds = %0
  %23 = getelementptr inbounds %class.Vec3* %20, i64 %14
  br label %24

; <label>:24                                      ; preds = %26, %22
  %25 = phi %class.Vec3* [ %20, %22 ], [ %27, %26 ]
  invoke void @_ZN4Vec3IfEC2Ev(%class.Vec3* %25)
          to label %26 unwind label %100

; <label>:26                                      ; preds = %24
  %27 = getelementptr inbounds %class.Vec3* %25, i64 1
  %28 = icmp eq %class.Vec3* %27, %23
  br i1 %28, label %29, label %24

; <label>:29                                      ; preds = %0, %26
  store %class.Vec3* %20, %class.Vec3** %image, align 8
  %30 = load %class.Vec3** %image, align 8
  store %class.Vec3* %30, %class.Vec3** %pixel, align 8
  %31 = load i32* %width, align 4
  %32 = uitofp i32 %31 to float
  %33 = fdiv float 1.000000e+00, %32
  store float %33, float* %invWidth, align 4
  %34 = load i32* %height, align 4
  %35 = uitofp i32 %34 to float
  %36 = fdiv float 1.000000e+00, %35
  store float %36, float* %invHeight, align 4
  store float 3.000000e+01, float* %fov, align 4
  %37 = load i32* %width, align 4
  %38 = uitofp i32 %37 to float
  %39 = load i32* %height, align 4
  %40 = uitofp i32 %39 to float
  %41 = fdiv float %38, %40
  store float %41, float* %aspectratio, align 4
  %42 = load float* %fov, align 4
  %43 = fpext float %42 to double
  %44 = fmul double 0x3FF921FB54442D18, %43
  %45 = fdiv double %44, 1.800000e+02
  %46 = call double @tan(double %45) #1
  %47 = fptrunc double %46 to float
  store float %47, float* %angle, align 4
  store i32 0, i32* %y, align 4
  br label %48

; <label>:48                                      ; preds = %105, %29
  %49 = load i32* %y, align 4
  %50 = load i32* %height, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %108

; <label>:52                                      ; preds = %48
  store i32 0, i32* %x, align 4
  br label %53

; <label>:53                                      ; preds = %95, %52
  %54 = load i32* %x, align 4
  %55 = load i32* %width, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %104

; <label>:57                                      ; preds = %53
  %58 = load i32* %x, align 4
  %59 = uitofp i32 %58 to double
  %60 = fadd double %59, 5.000000e-01
  %61 = load float* %invWidth, align 4
  %62 = fpext float %61 to double
  %63 = fmul double %60, %62
  %64 = fmul double 2.000000e+00, %63
  %65 = fsub double %64, 1.000000e+00
  %66 = load float* %angle, align 4
  %67 = fpext float %66 to double
  %68 = fmul double %65, %67
  %69 = load float* %aspectratio, align 4
  %70 = fpext float %69 to double
  %71 = fmul double %68, %70
  %72 = fptrunc double %71 to float
  store float %72, float* %xx, align 4
  %73 = load i32* %y, align 4
  %74 = uitofp i32 %73 to double
  %75 = fadd double %74, 5.000000e-01
  %76 = load float* %invHeight, align 4
  %77 = fpext float %76 to double
  %78 = fmul double %75, %77
  %79 = fmul double 2.000000e+00, %78
  %80 = fsub double 1.000000e+00, %79
  %81 = load float* %angle, align 4
  %82 = fpext float %81 to double
  %83 = fmul double %80, %82
  %84 = fptrunc double %83 to float
  store float %84, float* %yy, align 4
  %85 = load float* %xx, align 4
  %86 = load float* %yy, align 4
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %raydir, float %85, float %86, float -1.000000e+00)
  %87 = call %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %raydir)
  %88 = load %class.Vec3** %pixel, align 8
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %5, float 0.000000e+00)
  %89 = load %"class.std::vector"** %1, align 8
  store i32 0, i32* %6
  %90 = call { <2 x float>, float } @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi(%class.Vec3* %5, %class.Vec3* %raydir, %"class.std::vector"* %89, i32* %6)
  store { <2 x float>, float } %90, { <2 x float>, float }* %7
  %91 = bitcast { <2 x float>, float }* %7 to i8*
  %92 = bitcast %class.Vec3* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %91, i64 12, i32 1, i1 false)
  %93 = bitcast %class.Vec3* %88 to i8*
  %94 = bitcast %class.Vec3* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 12, i32 4, i1 false)
  br label %95

; <label>:95                                      ; preds = %57
  %96 = load i32* %x, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %x, align 4
  %98 = load %class.Vec3** %pixel, align 8
  %99 = getelementptr inbounds %class.Vec3* %98, i32 1
  store %class.Vec3* %99, %class.Vec3** %pixel, align 8
  br label %53

; <label>:100                                     ; preds = %24
  %101 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %102 = extractvalue { i8*, i32 } %101, 0
  store i8* %102, i8** %2
  %103 = extractvalue { i8*, i32 } %101, 1
  store i32 %103, i32* %3
  call void @_ZdaPv(i8* %19) #13
  br label %162

; <label>:104                                     ; preds = %53
  br label %105

; <label>:105                                     ; preds = %104
  %106 = load i32* %y, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %y, align 4
  br label %48

; <label>:108                                     ; preds = %48
  store i32 0, i32* %bad_hash, align 4
  store i32 0, i32* %i, align 4
  br label %109

; <label>:109                                     ; preds = %152, %108
  %110 = load i32* %i, align 4
  %111 = load i32* %width, align 4
  %112 = load i32* %height, align 4
  %113 = mul i32 %111, %112
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %115, label %155

; <label>:115                                     ; preds = %109
  %116 = load i32* %bad_hash, align 4
  %117 = mul i32 %116, 31
  store float 1.000000e+00, float* %8
  %118 = load i32* %i, align 4
  %119 = zext i32 %118 to i64
  %120 = load %class.Vec3** %image, align 8
  %121 = getelementptr inbounds %class.Vec3* %120, i64 %119
  %122 = getelementptr inbounds %class.Vec3* %121, i32 0, i32 0
  %123 = call float* @_ZSt3minIfERKT_S2_S2_(float* %8, float* %122)
  %124 = load float* %123
  %125 = fmul float %124, 2.550000e+02
  %126 = fptoui float %125 to i32
  %127 = add i32 %117, %126
  store i32 %127, i32* %bad_hash, align 4
  %128 = load i32* %bad_hash, align 4
  %129 = mul i32 %128, 31
  store float 1.000000e+00, float* %9
  %130 = load i32* %i, align 4
  %131 = zext i32 %130 to i64
  %132 = load %class.Vec3** %image, align 8
  %133 = getelementptr inbounds %class.Vec3* %132, i64 %131
  %134 = getelementptr inbounds %class.Vec3* %133, i32 0, i32 1
  %135 = call float* @_ZSt3minIfERKT_S2_S2_(float* %9, float* %134)
  %136 = load float* %135
  %137 = fmul float %136, 2.550000e+02
  %138 = fptoui float %137 to i32
  %139 = add i32 %129, %138
  store i32 %139, i32* %bad_hash, align 4
  %140 = load i32* %bad_hash, align 4
  %141 = mul i32 %140, 31
  store float 1.000000e+00, float* %10
  %142 = load i32* %i, align 4
  %143 = zext i32 %142 to i64
  %144 = load %class.Vec3** %image, align 8
  %145 = getelementptr inbounds %class.Vec3* %144, i64 %143
  %146 = getelementptr inbounds %class.Vec3* %145, i32 0, i32 2
  %147 = call float* @_ZSt3minIfERKT_S2_S2_(float* %10, float* %146)
  %148 = load float* %147
  %149 = fmul float %148, 2.550000e+02
  %150 = fptoui float %149 to i32
  %151 = add i32 %141, %150
  store i32 %151, i32* %bad_hash, align 4
  br label %152

; <label>:152                                     ; preds = %115
  %153 = load i32* %i, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %i, align 4
  br label %109

; <label>:155                                     ; preds = %109
  %156 = load %class.Vec3** %image, align 8
  %157 = icmp eq %class.Vec3* %156, null
  br i1 %157, label %160, label %158

; <label>:158                                     ; preds = %155
  %159 = bitcast %class.Vec3* %156 to i8*
  call void @_ZdaPv(i8* %159) #13
  br label %160

; <label>:160                                     ; preds = %158, %155
  %161 = load i32* %bad_hash, align 4
  ret i32 %161

; <label>:162                                     ; preds = %100
  %163 = load i8** %2
  %164 = load i32* %3
  %165 = insertvalue { i8*, i32 } undef, i8* %163, 0
  %166 = insertvalue { i8*, i32 } %165, i32 %164, 1
  resume { i8*, i32 } %166
}

declare i32 @printf(i8*, ...) #0

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %4 = load %"class.std::vector"** %1
  %5 = call %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv(%"class.std::vector"* %4)
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  store %class.Sphere** %5, %class.Sphere*** %6
  %7 = call %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv(%"class.std::vector"* %4)
  %8 = getelementptr %"class.__gnu_cxx::__normal_iterator.0"* %3, i32 0, i32 0
  store %class.Sphere** %7, %class.Sphere*** %8
  %9 = call zeroext i1 @_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator.0"* %2, %"class.__gnu_cxx::__normal_iterator.0"* %3)
  ret i1 %9
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %5 = load %"class.std::vector"** %1
  %6 = call %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv(%"class.std::vector"* %5)
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  store %class.Sphere** %6, %class.Sphere*** %7
  store i64 1, i64* %3
  %8 = call %class.Sphere** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl(%"class.__gnu_cxx::__normal_iterator"* %2, i64* %3)
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %class.Sphere** %8, %class.Sphere*** %9
  %10 = call %class.Sphere** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %4)
  ret %class.Sphere** %10
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load %class.Sphere*** %5, align 8
  %7 = getelementptr inbounds %class.Sphere** %6, i32 -1
  store %class.Sphere** %7, %class.Sphere*** %5, align 8
  %8 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %10 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %9 to %"class.std::allocator"*
  %11 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %12, i32 0, i32 1
  %14 = load %class.Sphere*** %13, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_(%"class.std::allocator"* %10, %class.Sphere** %14)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev(%"class.std::vector"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %4 = load %"class.std::vector"** %1
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load %class.Sphere*** %7, align 8
  %9 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %10, i32 0, i32 1
  %12 = load %class.Sphere*** %11, align 8
  %13 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %14 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %13)
          to label %15 unwind label %18

; <label>:15                                      ; preds = %0
  invoke void @_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E(%class.Sphere** %8, %class.Sphere** %12, %"class.std::allocator"* %14)
          to label %16 unwind label %18

; <label>:16                                      ; preds = %15
  %17 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev(%"struct.std::_Vector_base"* %17)
  ret void

; <label>:18                                      ; preds = %15, %0
  %19 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %2
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %3
  %22 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev(%"struct.std::_Vector_base"* %22)
          to label %23 unwind label %29

; <label>:23                                      ; preds = %18
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load i8** %2
  %26 = load i32* %3
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

; <label>:29                                      ; preds = %18
  %30 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %31 = extractvalue { i8*, i32 } %30, 0
  call void @__clang_call_terminate(i8* %31) #14
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #7 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #1
  call void @_ZSt9terminatev() #14
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_(%"class.std::allocator"* %__a, %class.Sphere** %__p) #2 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca %class.Sphere**, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store %class.Sphere** %__p, %class.Sphere*** %2, align 8
  %3 = load %"class.std::allocator"** %1, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  %5 = load %class.Sphere*** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator"* %4, %class.Sphere** %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator"* %this, %class.Sphere** %__p) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %2 = alloca %class.Sphere**, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  store %class.Sphere** %__p, %class.Sphere*** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"** %1
  %4 = load %class.Sphere*** %2, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"** %2
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator"* %1, %class.Sphere*** %6)
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load %class.Sphere*** %7
  ret %class.Sphere** %8
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl(%"class.__gnu_cxx::__normal_iterator"* %this, i64* %__n) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %class.Sphere**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  store i64* %__n, i64** %3, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"** %2
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %7 = load %class.Sphere*** %6, align 8
  %8 = load i64** %3, align 8
  %9 = load i64* %8, align 8
  %10 = sub i64 0, %9
  %11 = getelementptr inbounds %class.Sphere** %7, i64 %10
  store %class.Sphere** %11, %class.Sphere*** %4
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator"* %1, %class.Sphere*** %4)
  %12 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %13 = load %class.Sphere*** %12
  ret %class.Sphere** %13
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Sphere** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %4 = load %class.Sphere*** %3, align 8
  ret %class.Sphere** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator"* %this, %class.Sphere*** %__i) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %class.Sphere***, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %class.Sphere*** %__i, %class.Sphere**** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load %class.Sphere**** %2, align 8
  %6 = load %class.Sphere*** %5, align 8
  store %class.Sphere** %6, %class.Sphere*** %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator.0"* %__lhs, %"class.__gnu_cxx::__normal_iterator.0"* %__rhs) #8 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %__lhs, %"class.__gnu_cxx::__normal_iterator.0"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %__rhs, %"class.__gnu_cxx::__normal_iterator.0"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.0"** %1, align 8
  %4 = call %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %3)
  %5 = load %class.Sphere*** %4
  %6 = load %"class.__gnu_cxx::__normal_iterator.0"** %2, align 8
  %7 = call %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %6)
  %8 = load %class.Sphere*** %7
  %9 = icmp eq %class.Sphere** %5, %8
  ret i1 %9
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %2 = alloca %"class.std::vector"*, align 8
  %3 = alloca %class.Sphere**, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %4 = load %"class.std::vector"** %2
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load %class.Sphere*** %7, align 8
  store %class.Sphere** %8, %class.Sphere*** %3
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.0"* %1, %class.Sphere*** %3)
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator.0"* %1, i32 0, i32 0
  %10 = load %class.Sphere*** %9
  ret %class.Sphere** %10
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %2 = alloca %"class.std::vector"*, align 8
  %3 = alloca %class.Sphere**, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %4 = load %"class.std::vector"** %2
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %class.Sphere*** %7, align 8
  store %class.Sphere** %8, %class.Sphere*** %3
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.0"* %1, %class.Sphere*** %3)
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator.0"* %1, i32 0, i32 0
  %10 = load %class.Sphere*** %9
  ret %class.Sphere** %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.0"* %this, %class.Sphere*** %__i) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  %2 = alloca %class.Sphere***, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %this, %"class.__gnu_cxx::__normal_iterator.0"** %1, align 8
  store %class.Sphere*** %__i, %class.Sphere**** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.0"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0"* %3, i32 0, i32 0
  %5 = load %class.Sphere**** %2, align 8
  %6 = load %class.Sphere*** %5, align 8
  store %class.Sphere** %6, %class.Sphere*** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %this, %"class.__gnu_cxx::__normal_iterator.0"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.0"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0"* %2, i32 0, i32 0
  ret %class.Sphere*** %3
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #4

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4Vec3IfEC2Ev(%class.Vec3* %this) unnamed_addr #5 align 2 {
  %1 = alloca %class.Vec3*, align 8
  store %class.Vec3* %this, %class.Vec3** %1, align 8
  %2 = load %class.Vec3** %1
  %3 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 0
  store float 0.000000e+00, float* %3, align 4
  %4 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 1
  store float 0.000000e+00, float* %4, align 4
  %5 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 2
  store float 0.000000e+00, float* %5, align 4
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #6

; Function Attrs: nounwind
declare double @tan(double) #3

; Function Attrs: uwtable
define linkonce_odr %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %this) #2 align 2 {
  %1 = alloca %class.Vec3*, align 8
  %nor2 = alloca float, align 4
  %invNor = alloca float, align 4
  store %class.Vec3* %this, %class.Vec3** %1, align 8
  %2 = load %class.Vec3** %1
  %3 = call float @_ZNK4Vec3IfE7length2Ev(%class.Vec3* %2)
  store float %3, float* %nor2, align 4
  %4 = load float* %nor2, align 4
  %5 = fcmp ogt float %4, 0.000000e+00
  br i1 %5, label %6, label %24

; <label>:6                                       ; preds = %0
  %7 = load float* %nor2, align 4
  %8 = fpext float %7 to double
  %9 = call double @sqrt(double %8) #1
  %10 = fdiv double 1.000000e+00, %9
  %11 = fptrunc double %10 to float
  store float %11, float* %invNor, align 4
  %12 = load float* %invNor, align 4
  %13 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 0
  %14 = load float* %13, align 4
  %15 = fmul float %14, %12
  store float %15, float* %13, align 4
  %16 = load float* %invNor, align 4
  %17 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 1
  %18 = load float* %17, align 4
  %19 = fmul float %18, %16
  store float %19, float* %17, align 4
  %20 = load float* %invNor, align 4
  %21 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 2
  %22 = load float* %21, align 4
  %23 = fmul float %22, %20
  store float %23, float* %21, align 4
  br label %24

; <label>:24                                      ; preds = %6, %0
  ret %class.Vec3* %2
}

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi(%class.Vec3* %rayorig, %class.Vec3* %raydir, %"class.std::vector"* %spheres, i32* %depth) #2 {
  %1 = alloca %class.Vec3, align 4
  %2 = alloca %class.Vec3*, align 8
  %3 = alloca %class.Vec3*, align 8
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca i32*, align 8
  %tnear = alloca float, align 4
  %sphere = alloca %class.Sphere*, align 8
  %i = alloca i32, align 4
  %t0 = alloca float, align 4
  %t1 = alloca float, align 4
  %surfaceColor = alloca %class.Vec3, align 4
  %phit = alloca %class.Vec3, align 4
  %6 = alloca %class.Vec3, align 4
  %7 = alloca { <2 x float>, float }
  %8 = alloca { <2 x float>, float }
  %nhit = alloca %class.Vec3, align 4
  %9 = alloca { <2 x float>, float }
  %bias = alloca float, align 4
  %inside = alloca i8, align 1
  %10 = alloca %class.Vec3, align 4
  %11 = alloca { <2 x float>, float }
  %facingratio = alloca float, align 4
  %fresneleffect = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %refldir = alloca %class.Vec3, align 4
  %15 = alloca %class.Vec3, align 4
  %16 = alloca float, align 4
  %17 = alloca %class.Vec3, align 4
  %18 = alloca { <2 x float>, float }
  %19 = alloca float, align 4
  %20 = alloca { <2 x float>, float }
  %21 = alloca { <2 x float>, float }
  %reflection = alloca %class.Vec3, align 4
  %22 = alloca %class.Vec3, align 4
  %23 = alloca %class.Vec3, align 4
  %24 = alloca { <2 x float>, float }
  %25 = alloca { <2 x float>, float }
  %26 = alloca i32, align 4
  %27 = alloca { <2 x float>, float }
  %refraction = alloca %class.Vec3, align 4
  %ior = alloca float, align 4
  %eta = alloca float, align 4
  %cosi = alloca float, align 4
  %k = alloca float, align 4
  %refrdir = alloca %class.Vec3, align 4
  %28 = alloca %class.Vec3, align 4
  %29 = alloca { <2 x float>, float }
  %30 = alloca %class.Vec3, align 4
  %31 = alloca float, align 4
  %32 = alloca { <2 x float>, float }
  %33 = alloca { <2 x float>, float }
  %34 = alloca %class.Vec3, align 4
  %35 = alloca %class.Vec3, align 4
  %36 = alloca %class.Vec3, align 4
  %37 = alloca { <2 x float>, float }
  %38 = alloca { <2 x float>, float }
  %39 = alloca i32, align 4
  %40 = alloca { <2 x float>, float }
  %41 = alloca %class.Vec3, align 4
  %42 = alloca %class.Vec3, align 4
  %43 = alloca { <2 x float>, float }
  %44 = alloca %class.Vec3, align 4
  %45 = alloca float, align 4
  %46 = alloca %class.Vec3, align 4
  %47 = alloca { <2 x float>, float }
  %48 = alloca { <2 x float>, float }
  %49 = alloca %class.Vec3, align 4
  %50 = alloca { <2 x float>, float }
  %51 = alloca { <2 x float>, float }
  %i1 = alloca i32, align 4
  %transmission = alloca %class.Vec3, align 4
  %lightDirection = alloca %class.Vec3, align 4
  %52 = alloca { <2 x float>, float }
  %j = alloca i32, align 4
  %t02 = alloca float, align 4
  %t13 = alloca float, align 4
  %53 = alloca %class.Vec3, align 4
  %54 = alloca %class.Vec3, align 4
  %55 = alloca { <2 x float>, float }
  %56 = alloca { <2 x float>, float }
  %57 = alloca %class.Vec3, align 4
  %58 = alloca %class.Vec3, align 4
  %59 = alloca %class.Vec3, align 4
  %60 = alloca { <2 x float>, float }
  %61 = alloca float, align 4
  %62 = alloca float, align 4
  %63 = alloca %class.Vec3, align 4
  %64 = alloca { <2 x float>, float }
  %65 = alloca { <2 x float>, float }
  %66 = alloca { <2 x float>, float }
  %67 = alloca { <2 x float>, float }
  store %class.Vec3* %rayorig, %class.Vec3** %2, align 8
  store %class.Vec3* %raydir, %class.Vec3** %3, align 8
  store %"class.std::vector"* %spheres, %"class.std::vector"** %4, align 8
  store i32* %depth, i32** %5, align 8
  store float 0x7FF0000000000000, float* %tnear, align 4
  store %class.Sphere* null, %class.Sphere** %sphere, align 8
  store i32 0, i32* %i, align 4
  br label %68

; <label>:68                                      ; preds = %101, %0
  %69 = load i32* %i, align 4
  %70 = zext i32 %69 to i64
  %71 = load %"class.std::vector"** %4, align 8
  %72 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %71)
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %104

; <label>:74                                      ; preds = %68
  store float 0x7FF0000000000000, float* %t0, align 4
  store float 0x7FF0000000000000, float* %t1, align 4
  %75 = load %"class.std::vector"** %4, align 8
  %76 = load i32* %i, align 4
  %77 = zext i32 %76 to i64
  %78 = call %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %75, i64 %77)
  %79 = load %class.Sphere** %78
  %80 = load %class.Vec3** %2, align 8
  %81 = load %class.Vec3** %3, align 8
  %82 = call zeroext i1 @_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_(%class.Sphere* %79, %class.Vec3* %80, %class.Vec3* %81, float* %t0, float* %t1)
  br i1 %82, label %83, label %100

; <label>:83                                      ; preds = %74
  %84 = load float* %t0, align 4
  %85 = fcmp olt float %84, 0.000000e+00
  br i1 %85, label %86, label %88

; <label>:86                                      ; preds = %83
  %87 = load float* %t1, align 4
  store float %87, float* %t0, align 4
  br label %88

; <label>:88                                      ; preds = %86, %83
  %89 = load float* %t0, align 4
  %90 = load float* %tnear, align 4
  %91 = fcmp olt float %89, %90
  br i1 %91, label %92, label %99

; <label>:92                                      ; preds = %88
  %93 = load float* %t0, align 4
  store float %93, float* %tnear, align 4
  %94 = load %"class.std::vector"** %4, align 8
  %95 = load i32* %i, align 4
  %96 = zext i32 %95 to i64
  %97 = call %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %94, i64 %96)
  %98 = load %class.Sphere** %97
  store %class.Sphere* %98, %class.Sphere** %sphere, align 8
  br label %99

; <label>:99                                      ; preds = %92, %88
  br label %100

; <label>:100                                     ; preds = %99, %74
  br label %101

; <label>:101                                     ; preds = %100
  %102 = load i32* %i, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %i, align 4
  br label %68

; <label>:104                                     ; preds = %68
  %105 = load %class.Sphere** %sphere, align 8
  %106 = icmp ne %class.Sphere* %105, null
  br i1 %106, label %108, label %107

; <label>:107                                     ; preds = %104
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %1, float 2.000000e+00)
  br label %358

; <label>:108                                     ; preds = %104
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %surfaceColor, float 0.000000e+00)
  %109 = load %class.Vec3** %2, align 8
  %110 = load %class.Vec3** %3, align 8
  %111 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %110, float* %tnear)
  store { <2 x float>, float } %111, { <2 x float>, float }* %7
  %112 = bitcast { <2 x float>, float }* %7 to i8*
  %113 = bitcast %class.Vec3* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %112, i64 12, i32 1, i1 false)
  %114 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %109, %class.Vec3* %6)
  store { <2 x float>, float } %114, { <2 x float>, float }* %8
  %115 = bitcast { <2 x float>, float }* %8 to i8*
  %116 = bitcast %class.Vec3* %phit to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %115, i64 12, i32 1, i1 false)
  %117 = load %class.Sphere** %sphere, align 8
  %118 = getelementptr inbounds %class.Sphere* %117, i32 0, i32 0
  %119 = call { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %phit, %class.Vec3* %118)
  store { <2 x float>, float } %119, { <2 x float>, float }* %9
  %120 = bitcast { <2 x float>, float }* %9 to i8*
  %121 = bitcast %class.Vec3* %nhit to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %120, i64 12, i32 1, i1 false)
  %122 = call %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %nhit)
  store float 0x3F1A36E2E0000000, float* %bias, align 4
  store i8 0, i8* %inside, align 1
  %123 = load %class.Vec3** %3, align 8
  %124 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %123, %class.Vec3* %nhit)
  %125 = fcmp ogt float %124, 0.000000e+00
  br i1 %125, label %126, label %132

; <label>:126                                     ; preds = %108
  %127 = call { <2 x float>, float } @_ZNK4Vec3IfEngEv(%class.Vec3* %nhit)
  store { <2 x float>, float } %127, { <2 x float>, float }* %11
  %128 = bitcast { <2 x float>, float }* %11 to i8*
  %129 = bitcast %class.Vec3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %128, i64 12, i32 1, i1 false)
  %130 = bitcast %class.Vec3* %nhit to i8*
  %131 = bitcast %class.Vec3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 12, i32 4, i1 false)
  store i8 1, i8* %inside, align 1
  br label %132

; <label>:132                                     ; preds = %126, %108
  %133 = load %class.Sphere** %sphere, align 8
  %134 = getelementptr inbounds %class.Sphere* %133, i32 0, i32 5
  %135 = load float* %134, align 4
  %136 = fcmp ogt float %135, 0.000000e+00
  br i1 %136, label %142, label %137

; <label>:137                                     ; preds = %132
  %138 = load %class.Sphere** %sphere, align 8
  %139 = getelementptr inbounds %class.Sphere* %138, i32 0, i32 6
  %140 = load float* %139, align 4
  %141 = fcmp ogt float %140, 0.000000e+00
  br i1 %141, label %142, label %267

; <label>:142                                     ; preds = %137, %132
  %143 = load i32** %5, align 8
  %144 = load i32* %143, align 4
  %145 = icmp slt i32 %144, 5
  br i1 %145, label %146, label %267

; <label>:146                                     ; preds = %142
  %147 = load %class.Vec3** %3, align 8
  %148 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %147, %class.Vec3* %nhit)
  %149 = fsub float -0.000000e+00, %148
  store float %149, float* %facingratio, align 4
  %150 = load float* %facingratio, align 4
  %151 = fsub float 1.000000e+00, %150
  %152 = fpext float %151 to double
  %153 = call double @pow(double %152, double 3.000000e+00) #1
  %154 = fptrunc double %153 to float
  store float %154, float* %12
  store float 1.000000e+00, float* %13
  store float 0x3FB99999A0000000, float* %14
  %155 = call float @_Z3mixIfET_RKS0_S2_S2_(float* %12, float* %13, float* %14)
  store float %155, float* %fresneleffect, align 4
  %156 = load %class.Vec3** %3, align 8
  store float 2.000000e+00, float* %16
  %157 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %nhit, float* %16)
  store { <2 x float>, float } %157, { <2 x float>, float }* %18
  %158 = bitcast { <2 x float>, float }* %18 to i8*
  %159 = bitcast %class.Vec3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %159, i8* %158, i64 12, i32 1, i1 false)
  %160 = load %class.Vec3** %3, align 8
  %161 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %160, %class.Vec3* %nhit)
  store float %161, float* %19
  %162 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %17, float* %19)
  store { <2 x float>, float } %162, { <2 x float>, float }* %20
  %163 = bitcast { <2 x float>, float }* %20 to i8*
  %164 = bitcast %class.Vec3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* %163, i64 12, i32 1, i1 false)
  %165 = call { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %156, %class.Vec3* %15)
  store { <2 x float>, float } %165, { <2 x float>, float }* %21
  %166 = bitcast { <2 x float>, float }* %21 to i8*
  %167 = bitcast %class.Vec3* %refldir to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %167, i8* %166, i64 12, i32 1, i1 false)
  %168 = call %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %refldir)
  %169 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %nhit, float* %bias)
  store { <2 x float>, float } %169, { <2 x float>, float }* %24
  %170 = bitcast { <2 x float>, float }* %24 to i8*
  %171 = bitcast %class.Vec3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* %170, i64 12, i32 1, i1 false)
  %172 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %phit, %class.Vec3* %23)
  store { <2 x float>, float } %172, { <2 x float>, float }* %25
  %173 = bitcast { <2 x float>, float }* %25 to i8*
  %174 = bitcast %class.Vec3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %174, i8* %173, i64 12, i32 1, i1 false)
  %175 = load %"class.std::vector"** %4, align 8
  %176 = load i32** %5, align 8
  %177 = load i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %26
  %179 = call { <2 x float>, float } @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi(%class.Vec3* %22, %class.Vec3* %refldir, %"class.std::vector"* %175, i32* %26)
  store { <2 x float>, float } %179, { <2 x float>, float }* %27
  %180 = bitcast { <2 x float>, float }* %27 to i8*
  %181 = bitcast %class.Vec3* %reflection to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %181, i8* %180, i64 12, i32 1, i1 false)
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %refraction, float 0.000000e+00)
  %182 = load %class.Sphere** %sphere, align 8
  %183 = getelementptr inbounds %class.Sphere* %182, i32 0, i32 5
  %184 = load float* %183, align 4
  %185 = fcmp une float %184, 0.000000e+00
  br i1 %185, label %186, label %243

; <label>:186                                     ; preds = %146
  store float 0x3FF19999A0000000, float* %ior, align 4
  %187 = load i8* %inside, align 1
  %188 = trunc i8 %187 to i1
  br i1 %188, label %189, label %191

; <label>:189                                     ; preds = %186
  %190 = load float* %ior, align 4
  br label %194

; <label>:191                                     ; preds = %186
  %192 = load float* %ior, align 4
  %193 = fdiv float 1.000000e+00, %192
  br label %194

; <label>:194                                     ; preds = %191, %189
  %195 = phi float [ %190, %189 ], [ %193, %191 ]
  store float %195, float* %eta, align 4
  %196 = load %class.Vec3** %3, align 8
  %197 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %nhit, %class.Vec3* %196)
  %198 = fsub float -0.000000e+00, %197
  store float %198, float* %cosi, align 4
  %199 = load float* %eta, align 4
  %200 = load float* %eta, align 4
  %201 = fmul float %199, %200
  %202 = load float* %cosi, align 4
  %203 = load float* %cosi, align 4
  %204 = fmul float %202, %203
  %205 = fsub float 1.000000e+00, %204
  %206 = fmul float %201, %205
  %207 = fsub float 1.000000e+00, %206
  store float %207, float* %k, align 4
  %208 = load %class.Vec3** %3, align 8
  %209 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %208, float* %eta)
  store { <2 x float>, float } %209, { <2 x float>, float }* %29
  %210 = bitcast { <2 x float>, float }* %29 to i8*
  %211 = bitcast %class.Vec3* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %211, i8* %210, i64 12, i32 1, i1 false)
  %212 = load float* %eta, align 4
  %213 = load float* %cosi, align 4
  %214 = fmul float %212, %213
  %215 = fpext float %214 to double
  %216 = load float* %k, align 4
  %217 = fpext float %216 to double
  %218 = call double @sqrt(double %217) #1
  %219 = fsub double %215, %218
  %220 = fptrunc double %219 to float
  store float %220, float* %31
  %221 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %nhit, float* %31)
  store { <2 x float>, float } %221, { <2 x float>, float }* %32
  %222 = bitcast { <2 x float>, float }* %32 to i8*
  %223 = bitcast %class.Vec3* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %223, i8* %222, i64 12, i32 1, i1 false)
  %224 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %28, %class.Vec3* %30)
  store { <2 x float>, float } %224, { <2 x float>, float }* %33
  %225 = bitcast { <2 x float>, float }* %33 to i8*
  %226 = bitcast %class.Vec3* %refrdir to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %226, i8* %225, i64 12, i32 1, i1 false)
  %227 = call %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %refrdir)
  %228 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %nhit, float* %bias)
  store { <2 x float>, float } %228, { <2 x float>, float }* %37
  %229 = bitcast { <2 x float>, float }* %37 to i8*
  %230 = bitcast %class.Vec3* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %230, i8* %229, i64 12, i32 1, i1 false)
  %231 = call { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %phit, %class.Vec3* %36)
  store { <2 x float>, float } %231, { <2 x float>, float }* %38
  %232 = bitcast { <2 x float>, float }* %38 to i8*
  %233 = bitcast %class.Vec3* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %233, i8* %232, i64 12, i32 1, i1 false)
  %234 = load %"class.std::vector"** %4, align 8
  %235 = load i32** %5, align 8
  %236 = load i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %39
  %238 = call { <2 x float>, float } @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi(%class.Vec3* %35, %class.Vec3* %refrdir, %"class.std::vector"* %234, i32* %39)
  store { <2 x float>, float } %238, { <2 x float>, float }* %40
  %239 = bitcast { <2 x float>, float }* %40 to i8*
  %240 = bitcast %class.Vec3* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %240, i8* %239, i64 12, i32 1, i1 false)
  %241 = bitcast %class.Vec3* %refraction to i8*
  %242 = bitcast %class.Vec3* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %241, i8* %242, i64 12, i32 4, i1 false)
  br label %243

; <label>:243                                     ; preds = %194, %146
  %244 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %reflection, float* %fresneleffect)
  store { <2 x float>, float } %244, { <2 x float>, float }* %43
  %245 = bitcast { <2 x float>, float }* %43 to i8*
  %246 = bitcast %class.Vec3* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %246, i8* %245, i64 12, i32 1, i1 false)
  %247 = load float* %fresneleffect, align 4
  %248 = fsub float 1.000000e+00, %247
  store float %248, float* %45
  %249 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %refraction, float* %45)
  store { <2 x float>, float } %249, { <2 x float>, float }* %47
  %250 = bitcast { <2 x float>, float }* %47 to i8*
  %251 = bitcast %class.Vec3* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %251, i8* %250, i64 12, i32 1, i1 false)
  %252 = load %class.Sphere** %sphere, align 8
  %253 = getelementptr inbounds %class.Sphere* %252, i32 0, i32 5
  %254 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %46, float* %253)
  store { <2 x float>, float } %254, { <2 x float>, float }* %48
  %255 = bitcast { <2 x float>, float }* %48 to i8*
  %256 = bitcast %class.Vec3* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %256, i8* %255, i64 12, i32 1, i1 false)
  %257 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %42, %class.Vec3* %44)
  store { <2 x float>, float } %257, { <2 x float>, float }* %50
  %258 = bitcast { <2 x float>, float }* %50 to i8*
  %259 = bitcast %class.Vec3* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %259, i8* %258, i64 12, i32 1, i1 false)
  %260 = load %class.Sphere** %sphere, align 8
  %261 = getelementptr inbounds %class.Sphere* %260, i32 0, i32 3
  %262 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKS0_(%class.Vec3* %49, %class.Vec3* %261)
  store { <2 x float>, float } %262, { <2 x float>, float }* %51
  %263 = bitcast { <2 x float>, float }* %51 to i8*
  %264 = bitcast %class.Vec3* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %264, i8* %263, i64 12, i32 1, i1 false)
  %265 = bitcast %class.Vec3* %surfaceColor to i8*
  %266 = bitcast %class.Vec3* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %265, i8* %266, i64 12, i32 4, i1 false)
  br label %352

; <label>:267                                     ; preds = %142, %137
  store i32 0, i32* %i1, align 4
  br label %268

; <label>:268                                     ; preds = %348, %267
  %269 = load i32* %i1, align 4
  %270 = zext i32 %269 to i64
  %271 = load %"class.std::vector"** %4, align 8
  %272 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %271)
  %273 = icmp ult i64 %270, %272
  br i1 %273, label %274, label %351

; <label>:274                                     ; preds = %268
  %275 = load %"class.std::vector"** %4, align 8
  %276 = load i32* %i1, align 4
  %277 = zext i32 %276 to i64
  %278 = call %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %275, i64 %277)
  %279 = load %class.Sphere** %278
  %280 = getelementptr inbounds %class.Sphere* %279, i32 0, i32 4
  %281 = getelementptr inbounds %class.Vec3* %280, i32 0, i32 0
  %282 = load float* %281, align 4
  %283 = fcmp ogt float %282, 0.000000e+00
  br i1 %283, label %284, label %347

; <label>:284                                     ; preds = %274
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %transmission, float 1.000000e+00)
  %285 = load %"class.std::vector"** %4, align 8
  %286 = load i32* %i1, align 4
  %287 = zext i32 %286 to i64
  %288 = call %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %285, i64 %287)
  %289 = load %class.Sphere** %288
  %290 = getelementptr inbounds %class.Sphere* %289, i32 0, i32 0
  %291 = call { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %290, %class.Vec3* %phit)
  store { <2 x float>, float } %291, { <2 x float>, float }* %52
  %292 = bitcast { <2 x float>, float }* %52 to i8*
  %293 = bitcast %class.Vec3* %lightDirection to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %293, i8* %292, i64 12, i32 1, i1 false)
  %294 = call %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %lightDirection)
  store i32 0, i32* %j, align 4
  br label %295

; <label>:295                                     ; preds = %323, %284
  %296 = load i32* %j, align 4
  %297 = zext i32 %296 to i64
  %298 = load %"class.std::vector"** %4, align 8
  %299 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %298)
  %300 = icmp ult i64 %297, %299
  br i1 %300, label %301, label %326

; <label>:301                                     ; preds = %295
  %302 = load i32* %i1, align 4
  %303 = load i32* %j, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %322

; <label>:305                                     ; preds = %301
  %306 = load %"class.std::vector"** %4, align 8
  %307 = load i32* %j, align 4
  %308 = zext i32 %307 to i64
  %309 = call %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %306, i64 %308)
  %310 = load %class.Sphere** %309
  %311 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %nhit, float* %bias)
  store { <2 x float>, float } %311, { <2 x float>, float }* %55
  %312 = bitcast { <2 x float>, float }* %55 to i8*
  %313 = bitcast %class.Vec3* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %313, i8* %312, i64 12, i32 1, i1 false)
  %314 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %phit, %class.Vec3* %54)
  store { <2 x float>, float } %314, { <2 x float>, float }* %56
  %315 = bitcast { <2 x float>, float }* %56 to i8*
  %316 = bitcast %class.Vec3* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %316, i8* %315, i64 12, i32 1, i1 false)
  %317 = call zeroext i1 @_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_(%class.Sphere* %310, %class.Vec3* %53, %class.Vec3* %lightDirection, float* %t02, float* %t13)
  br i1 %317, label %318, label %321

; <label>:318                                     ; preds = %305
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %57, float 0.000000e+00)
  %319 = bitcast %class.Vec3* %transmission to i8*
  %320 = bitcast %class.Vec3* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %319, i8* %320, i64 12, i32 4, i1 false)
  br label %326

; <label>:321                                     ; preds = %305
  br label %322

; <label>:322                                     ; preds = %321, %301
  br label %323

; <label>:323                                     ; preds = %322
  %324 = load i32* %j, align 4
  %325 = add i32 %324, 1
  store i32 %325, i32* %j, align 4
  br label %295

; <label>:326                                     ; preds = %318, %295
  %327 = load %class.Sphere** %sphere, align 8
  %328 = getelementptr inbounds %class.Sphere* %327, i32 0, i32 3
  %329 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKS0_(%class.Vec3* %328, %class.Vec3* %transmission)
  store { <2 x float>, float } %329, { <2 x float>, float }* %60
  %330 = bitcast { <2 x float>, float }* %60 to i8*
  %331 = bitcast %class.Vec3* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %331, i8* %330, i64 12, i32 1, i1 false)
  store float 0.000000e+00, float* %61
  %332 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %nhit, %class.Vec3* %lightDirection)
  store float %332, float* %62
  %333 = call float* @_ZSt3maxIfERKT_S2_S2_(float* %61, float* %62)
  %334 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %59, float* %333)
  store { <2 x float>, float } %334, { <2 x float>, float }* %64
  %335 = bitcast { <2 x float>, float }* %64 to i8*
  %336 = bitcast %class.Vec3* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %336, i8* %335, i64 12, i32 1, i1 false)
  %337 = load %"class.std::vector"** %4, align 8
  %338 = load i32* %i1, align 4
  %339 = zext i32 %338 to i64
  %340 = call %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %337, i64 %339)
  %341 = load %class.Sphere** %340
  %342 = getelementptr inbounds %class.Sphere* %341, i32 0, i32 4
  %343 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKS0_(%class.Vec3* %63, %class.Vec3* %342)
  store { <2 x float>, float } %343, { <2 x float>, float }* %65
  %344 = bitcast { <2 x float>, float }* %65 to i8*
  %345 = bitcast %class.Vec3* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %345, i8* %344, i64 12, i32 1, i1 false)
  %346 = call %class.Vec3* @_ZN4Vec3IfEpLERKS0_(%class.Vec3* %surfaceColor, %class.Vec3* %58)
  br label %347

; <label>:347                                     ; preds = %326, %274
  br label %348

; <label>:348                                     ; preds = %347
  %349 = load i32* %i1, align 4
  %350 = add i32 %349, 1
  store i32 %350, i32* %i1, align 4
  br label %268

; <label>:351                                     ; preds = %268
  br label %352

; <label>:352                                     ; preds = %351, %243
  %353 = load %class.Sphere** %sphere, align 8
  %354 = getelementptr inbounds %class.Sphere* %353, i32 0, i32 4
  %355 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %surfaceColor, %class.Vec3* %354)
  store { <2 x float>, float } %355, { <2 x float>, float }* %66
  %356 = bitcast { <2 x float>, float }* %66 to i8*
  %357 = bitcast %class.Vec3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %357, i8* %356, i64 12, i32 1, i1 false)
  br label %358

; <label>:358                                     ; preds = %352, %107
  %359 = bitcast { <2 x float>, float }* %67 to i8*
  %360 = bitcast %class.Vec3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %359, i8* %360, i64 12, i32 1, i1 false)
  %361 = load { <2 x float>, float }* %67
  ret { <2 x float>, float } %361
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr float* @_ZSt3minIfERKT_S2_S2_(float* %__a, float* %__b) #10 {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  store float* %__a, float** %2, align 8
  store float* %__b, float** %3, align 8
  %4 = load float** %3, align 8
  %5 = load float* %4, align 4
  %6 = load float** %2, align 8
  %7 = load float* %6, align 4
  %8 = fcmp olt float %5, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = load float** %3, align 8
  store float* %10, float** %1
  br label %13

; <label>:11                                      ; preds = %0
  %12 = load float** %2, align 8
  store float* %12, float** %1
  br label %13

; <label>:13                                      ; preds = %11, %9
  %14 = load float** %1
  ret float* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %this) #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load %class.Sphere*** %5, align 8
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %class.Sphere*** %9, align 8
  %11 = ptrtoint %class.Sphere** %6 to i64
  %12 = ptrtoint %class.Sphere** %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %this, i64 %__n) #5 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %class.Sphere*** %6, align 8
  %8 = load i64* %2, align 8
  %9 = getelementptr inbounds %class.Sphere** %7, i64 %8
  ret %class.Sphere** %9
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_(%class.Sphere* %this, %class.Vec3* %rayorig, %class.Vec3* %raydir, float* %t0, float* %t1) #2 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.Sphere*, align 8
  %3 = alloca %class.Vec3*, align 8
  %4 = alloca %class.Vec3*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %l = alloca %class.Vec3, align 4
  %7 = alloca { <2 x float>, float }
  %tca = alloca float, align 4
  %d2 = alloca float, align 4
  %thc = alloca float, align 4
  store %class.Sphere* %this, %class.Sphere** %2, align 8
  store %class.Vec3* %rayorig, %class.Vec3** %3, align 8
  store %class.Vec3* %raydir, %class.Vec3** %4, align 8
  store float* %t0, float** %5, align 8
  store float* %t1, float** %6, align 8
  %8 = load %class.Sphere** %2
  %9 = getelementptr inbounds %class.Sphere* %8, i32 0, i32 0
  %10 = load %class.Vec3** %3, align 8
  %11 = call { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %9, %class.Vec3* %10)
  store { <2 x float>, float } %11, { <2 x float>, float }* %7
  %12 = bitcast { <2 x float>, float }* %7 to i8*
  %13 = bitcast %class.Vec3* %l to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %12, i64 12, i32 1, i1 false)
  %14 = load %class.Vec3** %4, align 8
  %15 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %l, %class.Vec3* %14)
  store float %15, float* %tca, align 4
  %16 = load float* %tca, align 4
  %17 = fcmp olt float %16, 0.000000e+00
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %0
  store i1 false, i1* %1
  br label %53

; <label>:19                                      ; preds = %0
  %20 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %l, %class.Vec3* %l)
  %21 = load float* %tca, align 4
  %22 = load float* %tca, align 4
  %23 = fmul float %21, %22
  %24 = fsub float %20, %23
  store float %24, float* %d2, align 4
  %25 = load float* %d2, align 4
  %26 = getelementptr inbounds %class.Sphere* %8, i32 0, i32 2
  %27 = load float* %26, align 4
  %28 = fcmp ogt float %25, %27
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %19
  store i1 false, i1* %1
  br label %53

; <label>:30                                      ; preds = %19
  %31 = getelementptr inbounds %class.Sphere* %8, i32 0, i32 2
  %32 = load float* %31, align 4
  %33 = load float* %d2, align 4
  %34 = fsub float %32, %33
  %35 = fpext float %34 to double
  %36 = call double @sqrt(double %35) #1
  %37 = fptrunc double %36 to float
  store float %37, float* %thc, align 4
  %38 = load float** %5, align 8
  %39 = icmp ne float* %38, null
  br i1 %39, label %40, label %52

; <label>:40                                      ; preds = %30
  %41 = load float** %6, align 8
  %42 = icmp ne float* %41, null
  br i1 %42, label %43, label %52

; <label>:43                                      ; preds = %40
  %44 = load float* %tca, align 4
  %45 = load float* %thc, align 4
  %46 = fsub float %44, %45
  %47 = load float** %5, align 8
  store float %46, float* %47, align 4
  %48 = load float* %tca, align 4
  %49 = load float* %thc, align 4
  %50 = fadd float %48, %49
  %51 = load float** %6, align 8
  store float %50, float* %51, align 4
  br label %52

; <label>:52                                      ; preds = %43, %40, %30
  store i1 true, i1* %1
  br label %53

; <label>:53                                      ; preds = %52, %29, %18
  %54 = load i1* %1
  ret i1 %54
}

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %this, %class.Vec3* %v) #2 align 2 {
  %1 = alloca %class.Vec3, align 4
  %2 = alloca %class.Vec3*, align 8
  %3 = alloca %class.Vec3*, align 8
  %4 = alloca { <2 x float>, float }
  store %class.Vec3* %this, %class.Vec3** %2, align 8
  store %class.Vec3* %v, %class.Vec3** %3, align 8
  %5 = load %class.Vec3** %2
  %6 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 0
  %7 = load float* %6, align 4
  %8 = load %class.Vec3** %3, align 8
  %9 = getelementptr inbounds %class.Vec3* %8, i32 0, i32 0
  %10 = load float* %9, align 4
  %11 = fadd float %7, %10
  %12 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 1
  %13 = load float* %12, align 4
  %14 = load %class.Vec3** %3, align 8
  %15 = getelementptr inbounds %class.Vec3* %14, i32 0, i32 1
  %16 = load float* %15, align 4
  %17 = fadd float %13, %16
  %18 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 2
  %19 = load float* %18, align 4
  %20 = load %class.Vec3** %3, align 8
  %21 = getelementptr inbounds %class.Vec3* %20, i32 0, i32 2
  %22 = load float* %21, align 4
  %23 = fadd float %19, %22
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %1, float %11, float %17, float %23)
  %24 = bitcast { <2 x float>, float }* %4 to i8*
  %25 = bitcast %class.Vec3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 12, i32 1, i1 false)
  %26 = load { <2 x float>, float }* %4
  ret { <2 x float>, float } %26
}

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %this, float* %f) #2 align 2 {
  %1 = alloca %class.Vec3, align 4
  %2 = alloca %class.Vec3*, align 8
  %3 = alloca float*, align 8
  %4 = alloca { <2 x float>, float }
  store %class.Vec3* %this, %class.Vec3** %2, align 8
  store float* %f, float** %3, align 8
  %5 = load %class.Vec3** %2
  %6 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 0
  %7 = load float* %6, align 4
  %8 = load float** %3, align 8
  %9 = load float* %8, align 4
  %10 = fmul float %7, %9
  %11 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = load float** %3, align 8
  %14 = load float* %13, align 4
  %15 = fmul float %12, %14
  %16 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 2
  %17 = load float* %16, align 4
  %18 = load float** %3, align 8
  %19 = load float* %18, align 4
  %20 = fmul float %17, %19
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %1, float %10, float %15, float %20)
  %21 = bitcast { <2 x float>, float }* %4 to i8*
  %22 = bitcast %class.Vec3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 12, i32 1, i1 false)
  %23 = load { <2 x float>, float }* %4
  ret { <2 x float>, float } %23
}

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %this, %class.Vec3* %v) #2 align 2 {
  %1 = alloca %class.Vec3, align 4
  %2 = alloca %class.Vec3*, align 8
  %3 = alloca %class.Vec3*, align 8
  %4 = alloca { <2 x float>, float }
  store %class.Vec3* %this, %class.Vec3** %2, align 8
  store %class.Vec3* %v, %class.Vec3** %3, align 8
  %5 = load %class.Vec3** %2
  %6 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 0
  %7 = load float* %6, align 4
  %8 = load %class.Vec3** %3, align 8
  %9 = getelementptr inbounds %class.Vec3* %8, i32 0, i32 0
  %10 = load float* %9, align 4
  %11 = fsub float %7, %10
  %12 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 1
  %13 = load float* %12, align 4
  %14 = load %class.Vec3** %3, align 8
  %15 = getelementptr inbounds %class.Vec3* %14, i32 0, i32 1
  %16 = load float* %15, align 4
  %17 = fsub float %13, %16
  %18 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 2
  %19 = load float* %18, align 4
  %20 = load %class.Vec3** %3, align 8
  %21 = getelementptr inbounds %class.Vec3* %20, i32 0, i32 2
  %22 = load float* %21, align 4
  %23 = fsub float %19, %22
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %1, float %11, float %17, float %23)
  %24 = bitcast { <2 x float>, float }* %4 to i8*
  %25 = bitcast %class.Vec3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 12, i32 1, i1 false)
  %26 = load { <2 x float>, float }* %4
  ret { <2 x float>, float } %26
}

; Function Attrs: nounwind uwtable
define linkonce_odr float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %this, %class.Vec3* %v) #5 align 2 {
  %1 = alloca %class.Vec3*, align 8
  %2 = alloca %class.Vec3*, align 8
  store %class.Vec3* %this, %class.Vec3** %1, align 8
  store %class.Vec3* %v, %class.Vec3** %2, align 8
  %3 = load %class.Vec3** %1
  %4 = getelementptr inbounds %class.Vec3* %3, i32 0, i32 0
  %5 = load float* %4, align 4
  %6 = load %class.Vec3** %2, align 8
  %7 = getelementptr inbounds %class.Vec3* %6, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = fmul float %5, %8
  %10 = getelementptr inbounds %class.Vec3* %3, i32 0, i32 1
  %11 = load float* %10, align 4
  %12 = load %class.Vec3** %2, align 8
  %13 = getelementptr inbounds %class.Vec3* %12, i32 0, i32 1
  %14 = load float* %13, align 4
  %15 = fmul float %11, %14
  %16 = fadd float %9, %15
  %17 = getelementptr inbounds %class.Vec3* %3, i32 0, i32 2
  %18 = load float* %17, align 4
  %19 = load %class.Vec3** %2, align 8
  %20 = getelementptr inbounds %class.Vec3* %19, i32 0, i32 2
  %21 = load float* %20, align 4
  %22 = fmul float %18, %21
  %23 = fadd float %16, %22
  ret float %23
}

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3IfEngEv(%class.Vec3* %this) #2 align 2 {
  %1 = alloca %class.Vec3, align 4
  %2 = alloca %class.Vec3*, align 8
  %3 = alloca { <2 x float>, float }
  store %class.Vec3* %this, %class.Vec3** %2, align 8
  %4 = load %class.Vec3** %2
  %5 = getelementptr inbounds %class.Vec3* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = fsub float -0.000000e+00, %6
  %8 = getelementptr inbounds %class.Vec3* %4, i32 0, i32 1
  %9 = load float* %8, align 4
  %10 = fsub float -0.000000e+00, %9
  %11 = getelementptr inbounds %class.Vec3* %4, i32 0, i32 2
  %12 = load float* %11, align 4
  %13 = fsub float -0.000000e+00, %12
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %1, float %7, float %10, float %13)
  %14 = bitcast { <2 x float>, float }* %3 to i8*
  %15 = bitcast %class.Vec3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 12, i32 1, i1 false)
  %16 = load { <2 x float>, float }* %3
  ret { <2 x float>, float } %16
}

; Function Attrs: nounwind uwtable
define linkonce_odr float @_Z3mixIfET_RKS0_S2_S2_(float* %a, float* %b, float* %mix) #5 {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  store float* %a, float** %1, align 8
  store float* %b, float** %2, align 8
  store float* %mix, float** %3, align 8
  %4 = load float** %2, align 8
  %5 = load float* %4, align 4
  %6 = load float** %3, align 8
  %7 = load float* %6, align 4
  %8 = fmul float %5, %7
  %9 = load float** %1, align 8
  %10 = load float* %9, align 4
  %11 = load float** %3, align 8
  %12 = load float* %11, align 4
  %13 = fsub float 1.000000e+00, %12
  %14 = fmul float %10, %13
  %15 = fadd float %8, %14
  ret float %15
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3IfEmlERKS0_(%class.Vec3* %this, %class.Vec3* %v) #2 align 2 {
  %1 = alloca %class.Vec3, align 4
  %2 = alloca %class.Vec3*, align 8
  %3 = alloca %class.Vec3*, align 8
  %4 = alloca { <2 x float>, float }
  store %class.Vec3* %this, %class.Vec3** %2, align 8
  store %class.Vec3* %v, %class.Vec3** %3, align 8
  %5 = load %class.Vec3** %2
  %6 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 0
  %7 = load float* %6, align 4
  %8 = load %class.Vec3** %3, align 8
  %9 = getelementptr inbounds %class.Vec3* %8, i32 0, i32 0
  %10 = load float* %9, align 4
  %11 = fmul float %7, %10
  %12 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 1
  %13 = load float* %12, align 4
  %14 = load %class.Vec3** %3, align 8
  %15 = getelementptr inbounds %class.Vec3* %14, i32 0, i32 1
  %16 = load float* %15, align 4
  %17 = fmul float %13, %16
  %18 = getelementptr inbounds %class.Vec3* %5, i32 0, i32 2
  %19 = load float* %18, align 4
  %20 = load %class.Vec3** %3, align 8
  %21 = getelementptr inbounds %class.Vec3* %20, i32 0, i32 2
  %22 = load float* %21, align 4
  %23 = fmul float %19, %22
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %1, float %11, float %17, float %23)
  %24 = bitcast { <2 x float>, float }* %4 to i8*
  %25 = bitcast %class.Vec3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 12, i32 1, i1 false)
  %26 = load { <2 x float>, float }* %4
  ret { <2 x float>, float } %26
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Vec3* @_ZN4Vec3IfEpLERKS0_(%class.Vec3* %this, %class.Vec3* %v) #5 align 2 {
  %1 = alloca %class.Vec3*, align 8
  %2 = alloca %class.Vec3*, align 8
  store %class.Vec3* %this, %class.Vec3** %1, align 8
  store %class.Vec3* %v, %class.Vec3** %2, align 8
  %3 = load %class.Vec3** %1
  %4 = load %class.Vec3** %2, align 8
  %5 = getelementptr inbounds %class.Vec3* %4, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = getelementptr inbounds %class.Vec3* %3, i32 0, i32 0
  %8 = load float* %7, align 4
  %9 = fadd float %8, %6
  store float %9, float* %7, align 4
  %10 = load %class.Vec3** %2, align 8
  %11 = getelementptr inbounds %class.Vec3* %10, i32 0, i32 1
  %12 = load float* %11, align 4
  %13 = getelementptr inbounds %class.Vec3* %3, i32 0, i32 1
  %14 = load float* %13, align 4
  %15 = fadd float %14, %12
  store float %15, float* %13, align 4
  %16 = load %class.Vec3** %2, align 8
  %17 = getelementptr inbounds %class.Vec3* %16, i32 0, i32 2
  %18 = load float* %17, align 4
  %19 = getelementptr inbounds %class.Vec3* %3, i32 0, i32 2
  %20 = load float* %19, align 4
  %21 = fadd float %20, %18
  store float %21, float* %19, align 4
  ret %class.Vec3* %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr float* @_ZSt3maxIfERKT_S2_S2_(float* %__a, float* %__b) #10 {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  store float* %__a, float** %2, align 8
  store float* %__b, float** %3, align 8
  %4 = load float** %2, align 8
  %5 = load float* %4, align 4
  %6 = load float** %3, align 8
  %7 = load float* %6, align 4
  %8 = fcmp olt float %5, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = load float** %3, align 8
  store float* %10, float** %1
  br label %13

; <label>:11                                      ; preds = %0
  %12 = load float** %2, align 8
  store float* %12, float** %1
  br label %13

; <label>:13                                      ; preds = %11, %9
  %14 = load float** %1
  ret float* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr float @_ZNK4Vec3IfE7length2Ev(%class.Vec3* %this) #5 align 2 {
  %1 = alloca %class.Vec3*, align 8
  store %class.Vec3* %this, %class.Vec3** %1, align 8
  %2 = load %class.Vec3** %1
  %3 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 0
  %4 = load float* %3, align 4
  %5 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 0
  %6 = load float* %5, align 4
  %7 = fmul float %4, %6
  %8 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 1
  %9 = load float* %8, align 4
  %10 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 1
  %11 = load float* %10, align 4
  %12 = fmul float %9, %11
  %13 = fadd float %7, %12
  %14 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 2
  %15 = load float* %14, align 4
  %16 = getelementptr inbounds %class.Vec3* %2, i32 0, i32 2
  %17 = load float* %16, align 4
  %18 = fmul float %15, %17
  %19 = fadd float %13, %18
  ret float %19
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* %__a, %class.Sphere** %__p, %class.Sphere** %__arg) #2 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store %class.Sphere** %__p, %class.Sphere*** %2, align 8
  store %class.Sphere** %__arg, %class.Sphere*** %3, align 8
  %4 = load %"class.std::allocator"** %1, align 8
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*
  %6 = load %class.Sphere*** %2, align 8
  %7 = load %class.Sphere*** %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator"* %5, %class.Sphere** %6, %class.Sphere** %7)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(%"class.std::vector"* %this, %class.Sphere** %__position.coerce, %class.Sphere** %__x) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %class.Sphere**, align 8
  %__x_copy = alloca %class.Sphere*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca %class.Sphere**, align 8
  %__new_finish = alloca %class.Sphere**, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store %class.Sphere** %__position.coerce, %class.Sphere*** %6
  store %class.Sphere** %__x, %class.Sphere*** %2, align 8
  %7 = load %"class.std::vector"** %1
  %8 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %9, i32 0, i32 1
  %11 = load %class.Sphere*** %10, align 8
  %12 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %13, i32 0, i32 2
  %15 = load %class.Sphere*** %14, align 8
  %16 = icmp ne %class.Sphere** %11, %15
  br i1 %16, label %17, label %52

; <label>:17                                      ; preds = %0
  %18 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %19 to %"class.std::allocator"*
  %21 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load %class.Sphere*** %23, align 8
  %25 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %26, i32 0, i32 1
  %28 = load %class.Sphere*** %27, align 8
  %29 = getelementptr inbounds %class.Sphere** %28, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* %20, %class.Sphere** %24, %class.Sphere** %29)
  %30 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %31, i32 0, i32 1
  %33 = load %class.Sphere*** %32, align 8
  %34 = getelementptr inbounds %class.Sphere** %33, i32 1
  store %class.Sphere** %34, %class.Sphere*** %32, align 8
  %35 = load %class.Sphere*** %2, align 8
  %36 = load %class.Sphere** %35, align 8
  store %class.Sphere* %36, %class.Sphere** %__x_copy, align 8
  %37 = call %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %38 = load %class.Sphere*** %37
  %39 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %40 = getelementptr inbounds %"struct.std::_Vector_base"* %39, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %40, i32 0, i32 1
  %42 = load %class.Sphere*** %41, align 8
  %43 = getelementptr inbounds %class.Sphere** %42, i64 -2
  %44 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %45 = getelementptr inbounds %"struct.std::_Vector_base"* %44, i32 0, i32 0
  %46 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %45, i32 0, i32 1
  %47 = load %class.Sphere*** %46, align 8
  %48 = getelementptr inbounds %class.Sphere** %47, i64 -1
  %49 = call %class.Sphere** @_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %38, %class.Sphere** %43, %class.Sphere** %48)
  %50 = load %class.Sphere** %__x_copy, align 8
  %51 = call %class.Sphere** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  store %class.Sphere* %50, %class.Sphere** %51
  br label %173

; <label>:52                                      ; preds = %0
  %53 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc(%"class.std::vector"* %7, i64 1, i8* getelementptr inbounds ([22 x i8]* @.str1, i32 0, i32 0))
  store i64 %53, i64* %__len, align 8
  %54 = call %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv(%"class.std::vector"* %7)
  %55 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %class.Sphere** %54, %class.Sphere*** %55
  %56 = call i64 @_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator"* %__position, %"class.__gnu_cxx::__normal_iterator"* %3)
  store i64 %56, i64* %__elems_before, align 8
  %57 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %58 = load i64* %__len, align 8
  %59 = call %class.Sphere** @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base"* %57, i64 %58)
  store %class.Sphere** %59, %class.Sphere*** %__new_start, align 8
  %60 = load %class.Sphere*** %__new_start, align 8
  store %class.Sphere** %60, %class.Sphere*** %__new_finish, align 8
  %61 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %62 = getelementptr inbounds %"struct.std::_Vector_base"* %61, i32 0, i32 0
  %63 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %62 to %"class.std::allocator"*
  %64 = load %class.Sphere*** %__new_start, align 8
  %65 = load i64* %__elems_before, align 8
  %66 = getelementptr inbounds %class.Sphere** %64, i64 %65
  %67 = load %class.Sphere*** %2, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* %63, %class.Sphere** %66, %class.Sphere** %67)
          to label %68 unwind label %97

; <label>:68                                      ; preds = %52
  store %class.Sphere** null, %class.Sphere*** %__new_finish, align 8
  %69 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %70, i32 0, i32 0
  %72 = load %class.Sphere*** %71, align 8
  %73 = invoke %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %74 unwind label %97

; <label>:74                                      ; preds = %68
  %75 = load %class.Sphere*** %73
  %76 = load %class.Sphere*** %__new_start, align 8
  %77 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %78 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %77)
          to label %79 unwind label %97

; <label>:79                                      ; preds = %74
  %80 = invoke %class.Sphere** @_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_(%class.Sphere** %72, %class.Sphere** %75, %class.Sphere** %76, %"class.std::allocator"* %78)
          to label %81 unwind label %97

; <label>:81                                      ; preds = %79
  store %class.Sphere** %80, %class.Sphere*** %__new_finish, align 8
  %82 = load %class.Sphere*** %__new_finish, align 8
  %83 = getelementptr inbounds %class.Sphere** %82, i32 1
  store %class.Sphere** %83, %class.Sphere*** %__new_finish, align 8
  %84 = invoke %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %85 unwind label %97

; <label>:85                                      ; preds = %81
  %86 = load %class.Sphere*** %84
  %87 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %88 = getelementptr inbounds %"struct.std::_Vector_base"* %87, i32 0, i32 0
  %89 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %88, i32 0, i32 1
  %90 = load %class.Sphere*** %89, align 8
  %91 = load %class.Sphere*** %__new_finish, align 8
  %92 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %93 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %92)
          to label %94 unwind label %97

; <label>:94                                      ; preds = %85
  %95 = invoke %class.Sphere** @_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_(%class.Sphere** %86, %class.Sphere** %90, %class.Sphere** %91, %"class.std::allocator"* %93)
          to label %96 unwind label %97

; <label>:96                                      ; preds = %94
  store %class.Sphere** %95, %class.Sphere*** %__new_finish, align 8
  br label %131

; <label>:97                                      ; preds = %94, %85, %81, %79, %74, %68, %52
  %98 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %99 = extractvalue { i8*, i32 } %98, 0
  store i8* %99, i8** %4
  %100 = extractvalue { i8*, i32 } %98, 1
  store i32 %100, i32* %5
  br label %101

; <label>:101                                     ; preds = %97
  %102 = load i8** %4
  %103 = call i8* @__cxa_begin_catch(i8* %102) #1
  %104 = load %class.Sphere*** %__new_finish, align 8
  %105 = icmp ne %class.Sphere** %104, null
  br i1 %105, label %118, label %106

; <label>:106                                     ; preds = %101
  %107 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %108 = getelementptr inbounds %"struct.std::_Vector_base"* %107, i32 0, i32 0
  %109 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %108 to %"class.std::allocator"*
  %110 = load %class.Sphere*** %__new_start, align 8
  %111 = load i64* %__elems_before, align 8
  %112 = getelementptr inbounds %class.Sphere** %110, i64 %111
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_(%"class.std::allocator"* %109, %class.Sphere** %112)
          to label %113 unwind label %114

; <label>:113                                     ; preds = %106
  br label %125

; <label>:114                                     ; preds = %129, %125, %123, %118, %106
  %115 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %116 = extractvalue { i8*, i32 } %115, 0
  store i8* %116, i8** %4
  %117 = extractvalue { i8*, i32 } %115, 1
  store i32 %117, i32* %5
  invoke void @__cxa_end_catch()
          to label %130 unwind label %179

; <label>:118                                     ; preds = %101
  %119 = load %class.Sphere*** %__new_start, align 8
  %120 = load %class.Sphere*** %__new_finish, align 8
  %121 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %122 = invoke %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %121)
          to label %123 unwind label %114

; <label>:123                                     ; preds = %118
  invoke void @_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E(%class.Sphere** %119, %class.Sphere** %120, %"class.std::allocator"* %122)
          to label %124 unwind label %114

; <label>:124                                     ; preds = %123
  br label %125

; <label>:125                                     ; preds = %124, %113
  %126 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %127 = load %class.Sphere*** %__new_start, align 8
  %128 = load i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %126, %class.Sphere** %127, i64 %128)
          to label %129 unwind label %114

; <label>:129                                     ; preds = %125
  invoke void @__cxa_rethrow() #15
          to label %182 unwind label %114

; <label>:130                                     ; preds = %114
  br label %174

; <label>:131                                     ; preds = %96
  %132 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %133 = getelementptr inbounds %"struct.std::_Vector_base"* %132, i32 0, i32 0
  %134 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %133, i32 0, i32 0
  %135 = load %class.Sphere*** %134, align 8
  %136 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %137 = getelementptr inbounds %"struct.std::_Vector_base"* %136, i32 0, i32 0
  %138 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %137, i32 0, i32 1
  %139 = load %class.Sphere*** %138, align 8
  %140 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %141 = call %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %140)
  call void @_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E(%class.Sphere** %135, %class.Sphere** %139, %"class.std::allocator"* %141)
  %142 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %143 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %144 = getelementptr inbounds %"struct.std::_Vector_base"* %143, i32 0, i32 0
  %145 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %144, i32 0, i32 0
  %146 = load %class.Sphere*** %145, align 8
  %147 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %148 = getelementptr inbounds %"struct.std::_Vector_base"* %147, i32 0, i32 0
  %149 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %148, i32 0, i32 2
  %150 = load %class.Sphere*** %149, align 8
  %151 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %152 = getelementptr inbounds %"struct.std::_Vector_base"* %151, i32 0, i32 0
  %153 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %152, i32 0, i32 0
  %154 = load %class.Sphere*** %153, align 8
  %155 = ptrtoint %class.Sphere** %150 to i64
  %156 = ptrtoint %class.Sphere** %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 8
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %142, %class.Sphere** %146, i64 %158)
  %159 = load %class.Sphere*** %__new_start, align 8
  %160 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %161 = getelementptr inbounds %"struct.std::_Vector_base"* %160, i32 0, i32 0
  %162 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %161, i32 0, i32 0
  store %class.Sphere** %159, %class.Sphere*** %162, align 8
  %163 = load %class.Sphere*** %__new_finish, align 8
  %164 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %165 = getelementptr inbounds %"struct.std::_Vector_base"* %164, i32 0, i32 0
  %166 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %165, i32 0, i32 1
  store %class.Sphere** %163, %class.Sphere*** %166, align 8
  %167 = load %class.Sphere*** %__new_start, align 8
  %168 = load i64* %__len, align 8
  %169 = getelementptr inbounds %class.Sphere** %167, i64 %168
  %170 = bitcast %"class.std::vector"* %7 to %"struct.std::_Vector_base"*
  %171 = getelementptr inbounds %"struct.std::_Vector_base"* %170, i32 0, i32 0
  %172 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %171, i32 0, i32 2
  store %class.Sphere** %169, %class.Sphere*** %172, align 8
  br label %173

; <label>:173                                     ; preds = %131, %17
  ret void

; <label>:174                                     ; preds = %130
  %175 = load i8** %4
  %176 = load i32* %5
  %177 = insertvalue { i8*, i32 } undef, i8* %175, 0
  %178 = insertvalue { i8*, i32 } %177, i32 %176, 1
  resume { i8*, i32 } %178

; <label>:179                                     ; preds = %114
  %180 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %181 = extractvalue { i8*, i32 } %180, 0
  call void @__clang_call_terminate(i8* %181) #14
  unreachable

; <label>:182                                     ; preds = %129
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #8 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  store %class.Sphere** %__result, %class.Sphere*** %3, align 8
  %4 = load %class.Sphere*** %1, align 8
  %5 = call %class.Sphere** @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_(%class.Sphere** %4)
  %6 = load %class.Sphere*** %2, align 8
  %7 = call %class.Sphere** @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_(%class.Sphere** %6)
  %8 = load %class.Sphere*** %3, align 8
  %9 = call %class.Sphere** @_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %5, %class.Sphere** %7, %class.Sphere** %8)
  ret %class.Sphere** %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  ret %class.Sphere*** %3
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector"** %1
  %6 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv(%"class.std::vector"* %5)
  %7 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %5)
  %8 = sub i64 %6, %7
  %9 = load i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #15
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %5)
  %15 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %5)
  store i64 %15, i64* %4
  %16 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %4, i64* %2)
  %17 = load i64* %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %5)
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv(%"class.std::vector"* %5)
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv(%"class.std::vector"* %5)
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: inlinehint uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"* %__rhs) #8 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %4 = call %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %3)
  %5 = load %class.Sphere*** %4
  %6 = load %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %7 = call %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %6)
  %8 = load %class.Sphere*** %7
  %9 = ptrtoint %class.Sphere** %5 to i64
  %10 = ptrtoint %class.Sphere** %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  ret i64 %12
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"** %2
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator"* %1, %class.Sphere*** %6)
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load %class.Sphere*** %7
  ret %class.Sphere** %8
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base"** %1
  %4 = load i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %7 to %"class.__gnu_cxx::new_allocator"*
  %9 = load i64* %2, align 8
  %10 = call %class.Sphere** @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %8, i64 %9, i8* null)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi %class.Sphere** [ %10, %6 ], [ null, %11 ]
  ret %class.Sphere** %13
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result, %"class.std::allocator"* %__alloc) #8 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  store %class.Sphere** %__result, %class.Sphere*** %3, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %4, align 8
  %5 = load %class.Sphere*** %1, align 8
  %6 = load %class.Sphere*** %2, align 8
  %7 = load %class.Sphere*** %3, align 8
  %8 = load %"class.std::allocator"** %4, align 8
  %9 = call %class.Sphere** @_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E(%class.Sphere** %5, %class.Sphere** %6, %class.Sphere** %7, %"class.std::allocator"* %8)
  ret %class.Sphere** %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E(%class.Sphere** %__first, %class.Sphere** %__last, %"class.std::allocator"*) #8 {
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %class.Sphere** %__first, %class.Sphere*** %2, align 8
  store %class.Sphere** %__last, %class.Sphere*** %3, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  %5 = load %class.Sphere*** %2, align 8
  %6 = load %class.Sphere*** %3, align 8
  call void @_ZSt8_DestroyIPP6SphereIfEEvT_S4_(%class.Sphere** %5, %class.Sphere** %6)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %this, %class.Sphere** %__p, i64 %__n) #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store %class.Sphere** %__p, %class.Sphere*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base"** %1
  %5 = load %class.Sphere*** %2, align 8
  %6 = icmp ne %class.Sphere** %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %8 to %"class.__gnu_cxx::new_allocator"*
  %10 = load %class.Sphere*** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator"* %9, %class.Sphere** %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator"* %this, %class.Sphere** %__p, i64) #5 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca %class.Sphere**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store %class.Sphere** %__p, %class.Sphere*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load %class.Sphere*** %3, align 8
  %7 = bitcast %class.Sphere** %6 to i8*
  call void @_ZdlPv(i8* %7) #1
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPP6SphereIfEEvT_S4_(%class.Sphere** %__first, %class.Sphere** %__last) #8 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  %3 = load %class.Sphere*** %1, align 8
  %4 = load %class.Sphere*** %2, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_(%class.Sphere** %3, %class.Sphere** %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_(%class.Sphere**, %class.Sphere**) #5 align 2 {
  %3 = alloca %class.Sphere**, align 8
  %4 = alloca %class.Sphere**, align 8
  store %class.Sphere** %0, %class.Sphere*** %3, align 8
  store %class.Sphere** %1, %class.Sphere*** %4, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result, %"class.std::allocator"*) #8 {
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  %4 = alloca %class.Sphere**, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  store %class.Sphere** %__first, %class.Sphere*** %2, align 8
  store %class.Sphere** %__last, %class.Sphere*** %3, align 8
  store %class.Sphere** %__result, %class.Sphere*** %4, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %5, align 8
  %6 = load %class.Sphere*** %2, align 8
  %7 = load %class.Sphere*** %3, align 8
  %8 = load %class.Sphere*** %4, align 8
  %9 = call %class.Sphere** @_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %6, %class.Sphere** %7, %class.Sphere** %8)
  ret %class.Sphere** %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #8 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  store %class.Sphere** %__result, %class.Sphere*** %3, align 8
  %4 = load %class.Sphere*** %1, align 8
  %5 = load %class.Sphere*** %2, align 8
  %6 = load %class.Sphere*** %3, align 8
  %7 = call %class.Sphere** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_(%class.Sphere** %4, %class.Sphere** %5, %class.Sphere** %6)
  ret %class.Sphere** %7
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #2 align 2 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  store %class.Sphere** %__result, %class.Sphere*** %3, align 8
  %4 = load %class.Sphere*** %1, align 8
  %5 = load %class.Sphere*** %2, align 8
  %6 = load %class.Sphere*** %3, align 8
  %7 = call %class.Sphere** @_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %4, %class.Sphere** %5, %class.Sphere** %6)
  ret %class.Sphere** %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #8 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  store %class.Sphere** %__result, %class.Sphere*** %3, align 8
  %4 = load %class.Sphere*** %1, align 8
  %5 = call %class.Sphere** @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_(%class.Sphere** %4)
  %6 = load %class.Sphere*** %2, align 8
  %7 = call %class.Sphere** @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_(%class.Sphere** %6)
  %8 = load %class.Sphere*** %3, align 8
  %9 = call %class.Sphere** @_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %5, %class.Sphere** %7, %class.Sphere** %8)
  ret %class.Sphere** %9
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #8 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  store %class.Sphere** %__result, %class.Sphere*** %3, align 8
  %4 = load %class.Sphere*** %1, align 8
  %5 = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %4)
  %6 = load %class.Sphere*** %2, align 8
  %7 = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %6)
  %8 = load %class.Sphere*** %3, align 8
  %9 = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %8)
  %10 = call %class.Sphere** @_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %5, %class.Sphere** %7, %class.Sphere** %9)
  ret %class.Sphere** %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_(%class.Sphere** %__it) #8 {
  %1 = alloca %class.Sphere**, align 8
  store %class.Sphere** %__it, %class.Sphere*** %1, align 8
  %2 = load %class.Sphere*** %1, align 8
  %3 = call %class.Sphere** @_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_(%class.Sphere** %2)
  ret %class.Sphere** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Sphere** @_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_(%class.Sphere** %__it) #5 align 2 {
  %1 = alloca %class.Sphere**, align 8
  store %class.Sphere** %__it, %class.Sphere*** %1, align 8
  %2 = load %class.Sphere*** %1, align 8
  ret %class.Sphere** %2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #8 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  %__simple = alloca i8, align 1
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  store %class.Sphere** %__result, %class.Sphere*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %class.Sphere*** %1, align 8
  %5 = load %class.Sphere*** %2, align 8
  %6 = load %class.Sphere*** %3, align 8
  %7 = call %class.Sphere** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_(%class.Sphere** %4, %class.Sphere** %5, %class.Sphere** %6)
  ret %class.Sphere** %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %__it) #10 {
  %1 = alloca %class.Sphere**, align 8
  store %class.Sphere** %__it, %class.Sphere*** %1, align 8
  %2 = load %class.Sphere*** %1, align 8
  %3 = call %class.Sphere** @_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_(%class.Sphere** %2)
  ret %class.Sphere** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Sphere** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #5 align 2 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  %_Num = alloca i64, align 8
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  store %class.Sphere** %__result, %class.Sphere*** %3, align 8
  %4 = load %class.Sphere*** %2, align 8
  %5 = load %class.Sphere*** %1, align 8
  %6 = ptrtoint %class.Sphere** %4 to i64
  %7 = ptrtoint %class.Sphere** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load %class.Sphere*** %3, align 8
  %14 = bitcast %class.Sphere** %13 to i8*
  %15 = load %class.Sphere*** %1, align 8
  %16 = bitcast %class.Sphere** %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 8, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 8, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load %class.Sphere*** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds %class.Sphere** %20, i64 %21
  ret %class.Sphere** %22
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #2 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %5) #1
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %class.Sphere**
  ret %class.Sphere** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv(%"class.std::vector"* %this) #2 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = call %"class.std::allocator"* @_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3)
  %5 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_(%"class.std::allocator"* %4)
  ret i64 %5
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #11

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt3maxImERKT_S2_S2_(i64* %__a, i64* %__b) #10 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %__a, i64** %2, align 8
  store i64* %__b, i64** %3, align 8
  %4 = load i64** %2, align 8
  %5 = load i64* %4, align 8
  %6 = load i64** %3, align 8
  %7 = load i64* %6, align 8
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = load i64** %3, align 8
  store i64* %10, i64** %1
  br label %13

; <label>:11                                      ; preds = %0
  %12 = load i64** %2, align 8
  store i64* %12, i64** %1
  br label %13

; <label>:13                                      ; preds = %11, %9
  %14 = load i64** %1
  ret i64* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_(%"class.std::allocator"* %__a) #5 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1, align 8
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %3) #1
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #8 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  store %class.Sphere** %__result, %class.Sphere*** %3, align 8
  %4 = load %class.Sphere*** %1, align 8
  %5 = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %4)
  %6 = load %class.Sphere*** %2, align 8
  %7 = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %6)
  %8 = load %class.Sphere*** %3, align 8
  %9 = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %8)
  %10 = call %class.Sphere** @_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %5, %class.Sphere** %7, %class.Sphere** %9)
  ret %class.Sphere** %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #8 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  %__simple = alloca i8, align 1
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  store %class.Sphere** %__result, %class.Sphere*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %class.Sphere*** %1, align 8
  %5 = load %class.Sphere*** %2, align 8
  %6 = load %class.Sphere*** %3, align 8
  %7 = call %class.Sphere** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_(%class.Sphere** %4, %class.Sphere** %5, %class.Sphere** %6)
  ret %class.Sphere** %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Sphere** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #5 align 2 {
  %1 = alloca %class.Sphere**, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  %_Num = alloca i64, align 8
  store %class.Sphere** %__first, %class.Sphere*** %1, align 8
  store %class.Sphere** %__last, %class.Sphere*** %2, align 8
  store %class.Sphere** %__result, %class.Sphere*** %3, align 8
  %4 = load %class.Sphere*** %2, align 8
  %5 = load %class.Sphere*** %1, align 8
  %6 = ptrtoint %class.Sphere** %4 to i64
  %7 = ptrtoint %class.Sphere** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %0
  %13 = load %class.Sphere*** %3, align 8
  %14 = load i64* %_Num, align 8
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %class.Sphere** %13, i64 %15
  %17 = bitcast %class.Sphere** %16 to i8*
  %18 = load %class.Sphere*** %1, align 8
  %19 = bitcast %class.Sphere** %18 to i8*
  %20 = load i64* %_Num, align 8
  %21 = mul i64 8, %20
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %21, i32 8, i1 false)
  br label %22

; <label>:22                                      ; preds = %12, %0
  %23 = load %class.Sphere*** %3, align 8
  %24 = load i64* %_Num, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds %class.Sphere** %23, i64 %25
  ret %class.Sphere** %26
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator"* %this, %class.Sphere** %__p, %class.Sphere** %__val) #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %2 = alloca %class.Sphere**, align 8
  %3 = alloca %class.Sphere**, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  store %class.Sphere** %__p, %class.Sphere*** %2, align 8
  store %class.Sphere** %__val, %class.Sphere*** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator"** %1
  %5 = load %class.Sphere*** %2, align 8
  %6 = bitcast %class.Sphere** %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %class.Sphere**
  %10 = load %class.Sphere*** %3, align 8
  %11 = load %class.Sphere** %10, align 8
  store %class.Sphere* %11, %class.Sphere** %9, align 8
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = phi %class.Sphere** [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %4 = load %"struct.std::_Vector_base"** %1
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %class.Sphere*** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %8, i32 0, i32 2
  %10 = load %class.Sphere*** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %11, i32 0, i32 0
  %13 = load %class.Sphere*** %12, align 8
  %14 = ptrtoint %class.Sphere** %10 to i64
  %15 = ptrtoint %class.Sphere** %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  invoke void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %4, %class.Sphere** %7, i64 %17)
          to label %18 unwind label %20

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %19) #1
  ret void

; <label>:20                                      ; preds = %0
  %21 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %2
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %3
  %24 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %24) #1
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i8** %2
  %27 = load i32* %3
  %28 = insertvalue { i8*, i32 } undef, i8* %26, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this) unnamed_addr #10 align 2 {
  %1 = alloca %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaIP6SphereIfEED2Ev(%"class.std::allocator"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP6SphereIfEED2Ev(%"class.std::allocator"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev(%"class.__gnu_cxx::new_allocator"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaIP6SphereIfEEC2Ev(%"class.std::allocator"* %3) #1
  %4 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %2, i32 0, i32 0
  store %class.Sphere** null, %class.Sphere*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %2, i32 0, i32 1
  store %class.Sphere** null, %class.Sphere*** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %2, i32 0, i32 2
  store %class.Sphere** null, %class.Sphere*** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP6SphereIfEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev(%"class.__gnu_cxx::new_allocator"* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

define internal void @_GLOBAL__I_a() section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { builtin }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
!1 = metadata !{i32 10312}