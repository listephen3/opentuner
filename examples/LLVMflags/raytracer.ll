; ModuleID = 'raytracer.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

$_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev = comdat any

$_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_ = comdat any

$_ZN4Vec3IfEC2Efff = comdat any

$_ZN4Vec3IfEC2Ef = comdat any

$_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_ = comdat any

$_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE = comdat any

$_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv = comdat any

$_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv = comdat any

$_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv = comdat any

$_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIP6SphereIfEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev = comdat any

$_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPP6SphereIfEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m = comdat any

$_ZNSaIP6SphereIfEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_ = comdat any

$_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_ = comdat any

$_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_ = comdat any

$_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv = comdat any

$_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_ = comdat any

$_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv = comdat any

$_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_ = comdat any

$_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_ = comdat any

$_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_ = comdat any

$_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_ = comdat any

$_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_ = comdat any

$_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_ = comdat any

$_ZN4Vec3IfEC2Ev = comdat any

$_ZN4Vec3IfE9normalizeEv = comdat any

$_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi = comdat any

$_ZSt3minIfERKT_S2_S2_ = comdat any

$_ZNK4Vec3IfE7length2Ev = comdat any

$_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm = comdat any

$_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_ = comdat any

$_ZNK4Vec3IfEplERKS0_ = comdat any

$_ZNK4Vec3IfEmlERKf = comdat any

$_ZNK4Vec3IfEmiERKS0_ = comdat any

$_ZNK4Vec3IfE3dotERKS0_ = comdat any

$_ZNK4Vec3IfEngEv = comdat any

$_Z3mixIfET_RKS0_S2_S2_ = comdat any

$_ZNK4Vec3IfEmlERKS0_ = comdat any

$_ZN4Vec3IfEpLERKS0_ = comdat any

$_ZSt3maxIfERKT_S2_S2_ = comdat any

$_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_ = comdat any

$_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv = comdat any

$_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@dont_optimize_me = global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ERROR: WRONG ANSWER\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"vector::_M_insert_aux\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_raytracer.cpp, i8* null }]

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %spheres = alloca %"class.std::vector", align 8
  %ref.tmp = alloca %class.Sphere*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp1 = alloca %class.Vec3, align 4
  %ref.tmp4 = alloca float, align 4
  %ref.tmp5 = alloca %class.Vec3, align 4
  %ref.tmp7 = alloca float, align 4
  %ref.tmp8 = alloca float, align 4
  %ref.tmp9 = alloca %class.Vec3, align 4
  %ref.tmp13 = alloca %class.Sphere*, align 8
  %ref.tmp16 = alloca %class.Vec3, align 4
  %ref.tmp19 = alloca float, align 4
  %ref.tmp20 = alloca %class.Vec3, align 4
  %ref.tmp22 = alloca float, align 4
  %ref.tmp23 = alloca float, align 4
  %ref.tmp24 = alloca %class.Vec3, align 4
  %ref.tmp28 = alloca %class.Sphere*, align 8
  %ref.tmp31 = alloca %class.Vec3, align 4
  %ref.tmp34 = alloca float, align 4
  %ref.tmp35 = alloca %class.Vec3, align 4
  %ref.tmp37 = alloca float, align 4
  %ref.tmp38 = alloca float, align 4
  %ref.tmp39 = alloca %class.Vec3, align 4
  %ref.tmp43 = alloca %class.Sphere*, align 8
  %ref.tmp46 = alloca %class.Vec3, align 4
  %ref.tmp49 = alloca float, align 4
  %ref.tmp50 = alloca %class.Vec3, align 4
  %ref.tmp52 = alloca float, align 4
  %ref.tmp53 = alloca float, align 4
  %ref.tmp54 = alloca %class.Vec3, align 4
  %ref.tmp58 = alloca %class.Sphere*, align 8
  %ref.tmp61 = alloca %class.Vec3, align 4
  %ref.tmp64 = alloca float, align 4
  %ref.tmp65 = alloca %class.Vec3, align 4
  %ref.tmp67 = alloca float, align 4
  %ref.tmp68 = alloca float, align 4
  %ref.tmp69 = alloca %class.Vec3, align 4
  %ref.tmp73 = alloca %class.Sphere*, align 8
  %ref.tmp76 = alloca %class.Vec3, align 4
  %ref.tmp79 = alloca float, align 4
  %ref.tmp80 = alloca %class.Vec3, align 4
  %ref.tmp82 = alloca float, align 4
  %ref.tmp83 = alloca float, align 4
  %ref.tmp84 = alloca %class.Vec3, align 4
  %sph = alloca %class.Sphere*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @srand48(i64 13) #2
  call void @_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev(%"class.std::vector"* %spheres)
  %call = invoke noalias i8* @_Znwm(i64 52) #14
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast i8* %call to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %ref.tmp1, float 0.000000e+00, float -1.000400e+04, float -2.000000e+01)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  store float 1.000000e+04, float* %ref.tmp4, align 4
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %ref.tmp5, float 0x3FC99999A0000000)
          to label %invoke.cont6 unwind label %lpad2

invoke.cont6:                                     ; preds = %invoke.cont3
  store float 0.000000e+00, float* %ref.tmp7, align 4
  store float 0.000000e+00, float* %ref.tmp8, align 4
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %ref.tmp9, float 0.000000e+00)
          to label %invoke.cont10 unwind label %lpad2

invoke.cont10:                                    ; preds = %invoke.cont6
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %0, %class.Vec3* dereferenceable(12) %ref.tmp1, float* dereferenceable(4) %ref.tmp4, %class.Vec3* dereferenceable(12) %ref.tmp5, float* dereferenceable(4) %ref.tmp7, float* dereferenceable(4) %ref.tmp8, %class.Vec3* dereferenceable(12) %ref.tmp9)
          to label %invoke.cont11 unwind label %lpad2

invoke.cont11:                                    ; preds = %invoke.cont10
  store %class.Sphere* %0, %class.Sphere** %ref.tmp, align 8
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** dereferenceable(8) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %invoke.cont11
  %call15 = invoke noalias i8* @_Znwm(i64 52) #14
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %invoke.cont12
  %1 = bitcast i8* %call15 to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %ref.tmp16, float 0.000000e+00, float 0.000000e+00, float -2.000000e+01)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont14
  store float 4.000000e+00, float* %ref.tmp19, align 4
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %ref.tmp20, float 1.000000e+00, float 0x3FD47AE140000000, float 0x3FD70A3D80000000)
          to label %invoke.cont21 unwind label %lpad17

invoke.cont21:                                    ; preds = %invoke.cont18
  store float 1.000000e+00, float* %ref.tmp22, align 4
  store float 5.000000e-01, float* %ref.tmp23, align 4
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %ref.tmp24, float 0.000000e+00)
          to label %invoke.cont25 unwind label %lpad17

invoke.cont25:                                    ; preds = %invoke.cont21
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %1, %class.Vec3* dereferenceable(12) %ref.tmp16, float* dereferenceable(4) %ref.tmp19, %class.Vec3* dereferenceable(12) %ref.tmp20, float* dereferenceable(4) %ref.tmp22, float* dereferenceable(4) %ref.tmp23, %class.Vec3* dereferenceable(12) %ref.tmp24)
          to label %invoke.cont26 unwind label %lpad17

invoke.cont26:                                    ; preds = %invoke.cont25
  store %class.Sphere* %1, %class.Sphere** %ref.tmp13, align 8
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** dereferenceable(8) %ref.tmp13)
          to label %invoke.cont27 unwind label %lpad

invoke.cont27:                                    ; preds = %invoke.cont26
  %call30 = invoke noalias i8* @_Znwm(i64 52) #14
          to label %invoke.cont29 unwind label %lpad

invoke.cont29:                                    ; preds = %invoke.cont27
  %2 = bitcast i8* %call30 to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %ref.tmp31, float 5.000000e+00, float -1.000000e+00, float -1.500000e+01)
          to label %invoke.cont33 unwind label %lpad32

invoke.cont33:                                    ; preds = %invoke.cont29
  store float 2.000000e+00, float* %ref.tmp34, align 4
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %ref.tmp35, float 0x3FECCCCCC0000000, float 0x3FE851EB80000000, float 0x3FDD70A3E0000000)
          to label %invoke.cont36 unwind label %lpad32

invoke.cont36:                                    ; preds = %invoke.cont33
  store float 1.000000e+00, float* %ref.tmp37, align 4
  store float 0.000000e+00, float* %ref.tmp38, align 4
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %ref.tmp39, float 0.000000e+00)
          to label %invoke.cont40 unwind label %lpad32

invoke.cont40:                                    ; preds = %invoke.cont36
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %2, %class.Vec3* dereferenceable(12) %ref.tmp31, float* dereferenceable(4) %ref.tmp34, %class.Vec3* dereferenceable(12) %ref.tmp35, float* dereferenceable(4) %ref.tmp37, float* dereferenceable(4) %ref.tmp38, %class.Vec3* dereferenceable(12) %ref.tmp39)
          to label %invoke.cont41 unwind label %lpad32

invoke.cont41:                                    ; preds = %invoke.cont40
  store %class.Sphere* %2, %class.Sphere** %ref.tmp28, align 8
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** dereferenceable(8) %ref.tmp28)
          to label %invoke.cont42 unwind label %lpad

invoke.cont42:                                    ; preds = %invoke.cont41
  %call45 = invoke noalias i8* @_Znwm(i64 52) #14
          to label %invoke.cont44 unwind label %lpad

invoke.cont44:                                    ; preds = %invoke.cont42
  %3 = bitcast i8* %call45 to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %ref.tmp46, float 5.000000e+00, float 0.000000e+00, float -2.500000e+01)
          to label %invoke.cont48 unwind label %lpad47

invoke.cont48:                                    ; preds = %invoke.cont44
  store float 3.000000e+00, float* %ref.tmp49, align 4
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %ref.tmp50, float 0x3FE4CCCCC0000000, float 0x3FE8A3D700000000, float 0x3FEF0A3D80000000)
          to label %invoke.cont51 unwind label %lpad47

invoke.cont51:                                    ; preds = %invoke.cont48
  store float 1.000000e+00, float* %ref.tmp52, align 4
  store float 0.000000e+00, float* %ref.tmp53, align 4
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %ref.tmp54, float 0.000000e+00)
          to label %invoke.cont55 unwind label %lpad47

invoke.cont55:                                    ; preds = %invoke.cont51
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %3, %class.Vec3* dereferenceable(12) %ref.tmp46, float* dereferenceable(4) %ref.tmp49, %class.Vec3* dereferenceable(12) %ref.tmp50, float* dereferenceable(4) %ref.tmp52, float* dereferenceable(4) %ref.tmp53, %class.Vec3* dereferenceable(12) %ref.tmp54)
          to label %invoke.cont56 unwind label %lpad47

invoke.cont56:                                    ; preds = %invoke.cont55
  store %class.Sphere* %3, %class.Sphere** %ref.tmp43, align 8
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** dereferenceable(8) %ref.tmp43)
          to label %invoke.cont57 unwind label %lpad

invoke.cont57:                                    ; preds = %invoke.cont56
  %call60 = invoke noalias i8* @_Znwm(i64 52) #14
          to label %invoke.cont59 unwind label %lpad

invoke.cont59:                                    ; preds = %invoke.cont57
  %4 = bitcast i8* %call60 to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %ref.tmp61, float -5.500000e+00, float 0.000000e+00, float -1.500000e+01)
          to label %invoke.cont63 unwind label %lpad62

invoke.cont63:                                    ; preds = %invoke.cont59
  store float 3.000000e+00, float* %ref.tmp64, align 4
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %ref.tmp65, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000)
          to label %invoke.cont66 unwind label %lpad62

invoke.cont66:                                    ; preds = %invoke.cont63
  store float 1.000000e+00, float* %ref.tmp67, align 4
  store float 0.000000e+00, float* %ref.tmp68, align 4
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %ref.tmp69, float 0.000000e+00)
          to label %invoke.cont70 unwind label %lpad62

invoke.cont70:                                    ; preds = %invoke.cont66
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %4, %class.Vec3* dereferenceable(12) %ref.tmp61, float* dereferenceable(4) %ref.tmp64, %class.Vec3* dereferenceable(12) %ref.tmp65, float* dereferenceable(4) %ref.tmp67, float* dereferenceable(4) %ref.tmp68, %class.Vec3* dereferenceable(12) %ref.tmp69)
          to label %invoke.cont71 unwind label %lpad62

invoke.cont71:                                    ; preds = %invoke.cont70
  store %class.Sphere* %4, %class.Sphere** %ref.tmp58, align 8
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** dereferenceable(8) %ref.tmp58)
          to label %invoke.cont72 unwind label %lpad

invoke.cont72:                                    ; preds = %invoke.cont71
  %call75 = invoke noalias i8* @_Znwm(i64 52) #14
          to label %invoke.cont74 unwind label %lpad

invoke.cont74:                                    ; preds = %invoke.cont72
  %5 = bitcast i8* %call75 to %class.Sphere*
  invoke void @_ZN4Vec3IfEC2Efff(%class.Vec3* %ref.tmp76, float 0.000000e+00, float 2.000000e+01, float -3.000000e+01)
          to label %invoke.cont78 unwind label %lpad77

invoke.cont78:                                    ; preds = %invoke.cont74
  store float 3.000000e+00, float* %ref.tmp79, align 4
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %ref.tmp80, float 0.000000e+00)
          to label %invoke.cont81 unwind label %lpad77

invoke.cont81:                                    ; preds = %invoke.cont78
  store float 0.000000e+00, float* %ref.tmp82, align 4
  store float 0.000000e+00, float* %ref.tmp83, align 4
  invoke void @_ZN4Vec3IfEC2Ef(%class.Vec3* %ref.tmp84, float 3.000000e+00)
          to label %invoke.cont85 unwind label %lpad77

invoke.cont85:                                    ; preds = %invoke.cont81
  invoke void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %5, %class.Vec3* dereferenceable(12) %ref.tmp76, float* dereferenceable(4) %ref.tmp79, %class.Vec3* dereferenceable(12) %ref.tmp80, float* dereferenceable(4) %ref.tmp82, float* dereferenceable(4) %ref.tmp83, %class.Vec3* dereferenceable(12) %ref.tmp84)
          to label %invoke.cont86 unwind label %lpad77

invoke.cont86:                                    ; preds = %invoke.cont85
  store %class.Sphere* %5, %class.Sphere** %ref.tmp73, align 8
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %spheres, %class.Sphere** dereferenceable(8) %ref.tmp73)
          to label %invoke.cont87 unwind label %lpad

invoke.cont87:                                    ; preds = %invoke.cont86
  %call89 = invoke i32 @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE(%"class.std::vector"* dereferenceable(24) %spheres)
          to label %invoke.cont88 unwind label %lpad

invoke.cont88:                                    ; preds = %invoke.cont87
  store volatile i32 %call89, i32* @dont_optimize_me, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !1
  %6 = load volatile i32, i32* @dont_optimize_me, align 4
  %cmp = icmp eq i32 %6, 1272430816
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont88
  br label %if.end

lpad:                                             ; preds = %invoke.cont94, %while.body, %while.cond, %if.else, %invoke.cont87, %invoke.cont86, %invoke.cont72, %invoke.cont71, %invoke.cont57, %invoke.cont56, %invoke.cont42, %invoke.cont41, %invoke.cont27, %invoke.cont26, %invoke.cont12, %invoke.cont11, %entry
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad2:                                            ; preds = %invoke.cont10, %invoke.cont6, %invoke.cont3, %invoke.cont
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #15
  br label %ehcleanup

lpad17:                                           ; preds = %invoke.cont25, %invoke.cont21, %invoke.cont18, %invoke.cont14
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call15) #15
  br label %ehcleanup

lpad32:                                           ; preds = %invoke.cont40, %invoke.cont36, %invoke.cont33, %invoke.cont29
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %exn.slot, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call30) #15
  br label %ehcleanup

lpad47:                                           ; preds = %invoke.cont55, %invoke.cont51, %invoke.cont48, %invoke.cont44
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %exn.slot, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call45) #15
  br label %ehcleanup

lpad62:                                           ; preds = %invoke.cont70, %invoke.cont66, %invoke.cont63, %invoke.cont59
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %exn.slot, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call60) #15
  br label %ehcleanup

lpad77:                                           ; preds = %invoke.cont85, %invoke.cont81, %invoke.cont78, %invoke.cont74
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %exn.slot, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call75) #15
  br label %ehcleanup

if.else:                                          ; preds = %invoke.cont88
  %call91 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
          to label %invoke.cont90 unwind label %lpad

invoke.cont90:                                    ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %invoke.cont90, %if.then
  br label %while.cond

while.cond:                                       ; preds = %delete.end, %if.end
  %call93 = invoke zeroext i1 @_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv(%"class.std::vector"* %spheres)
          to label %invoke.cont92 unwind label %lpad

invoke.cont92:                                    ; preds = %while.cond
  %lnot = xor i1 %call93, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont92
  %call95 = invoke dereferenceable(8) %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv(%"class.std::vector"* %spheres)
          to label %invoke.cont94 unwind label %lpad

invoke.cont94:                                    ; preds = %while.body
  %28 = load %class.Sphere*, %class.Sphere** %call95, align 8
  store %class.Sphere* %28, %class.Sphere** %sph, align 8
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv(%"class.std::vector"* %spheres)
          to label %invoke.cont96 unwind label %lpad

invoke.cont96:                                    ; preds = %invoke.cont94
  %29 = load %class.Sphere*, %class.Sphere** %sph, align 8
  %isnull = icmp eq %class.Sphere* %29, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %invoke.cont96
  %30 = bitcast %class.Sphere* %29 to i8*
  call void @_ZdlPv(i8* %30) #15
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %invoke.cont96
  br label %while.cond

while.end:                                        ; preds = %invoke.cont92
  store i32 0, i32* %retval, align 4
  call void @_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev(%"class.std::vector"* %spheres)
  %31 = load i32, i32* %retval, align 4
  ret i32 %31

ehcleanup:                                        ; preds = %lpad77, %lpad62, %lpad47, %lpad32, %lpad17, %lpad2, %lpad
  invoke void @_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev(%"class.std::vector"* %spheres)
          to label %invoke.cont97 unwind label %terminate.lpad

invoke.cont97:                                    ; preds = %ehcleanup
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont97
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val98 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val98

terminate.lpad:                                   ; preds = %ehcleanup
  %32 = landingpad { i8*, i32 }
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  call void @__clang_call_terminate(i8* %33) #16
  unreachable
}

; Function Attrs: nounwind
declare void @srand48(i64) #4

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP6SphereIfESaIS2_EEC2Ev(%"class.std::vector"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev(%"struct.std::_Vector_base"* %0)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_(%"class.std::vector"* %this, %class.Sphere** dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %class.Sphere**, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %class.Sphere** %__x, %class.Sphere*** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %class.Sphere**, %class.Sphere*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %class.Sphere**, %class.Sphere*** %_M_end_of_storage, align 8
  %cmp = icmp ne %class.Sphere** %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator"*
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %class.Sphere**, %class.Sphere*** %_M_finish5, align 8
  %8 = load %class.Sphere**, %class.Sphere*** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* dereferenceable(1) %5, %class.Sphere** %7, %class.Sphere** dereferenceable(8) %8)
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load %class.Sphere**, %class.Sphere*** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %class.Sphere*, %class.Sphere** %10, i32 1
  store %class.Sphere** %incdec.ptr, %class.Sphere*** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv(%"class.std::vector"* %this1)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  store %class.Sphere** %call, %class.Sphere*** %coerce.dive, align 8
  %11 = load %class.Sphere**, %class.Sphere*** %__x.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp, i32 0, i32 0
  %12 = load %class.Sphere**, %class.Sphere*** %coerce.dive8, align 8
  call void @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(%"class.std::vector"* %this1, %class.Sphere** %12, %class.Sphere** dereferenceable(8) %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4Vec3IfEC2Efff(%class.Vec3* %this, float %xx, float %yy, float %zz) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Vec3*, align 8
  %xx.addr = alloca float, align 4
  %yy.addr = alloca float, align 4
  %zz.addr = alloca float, align 4
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  store float %xx, float* %xx.addr, align 4
  store float %yy, float* %yy.addr, align 4
  store float %zz, float* %zz.addr, align 4
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %0 = load float, float* %xx.addr, align 4
  store float %0, float* %x, align 4
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %1 = load float, float* %yy.addr, align 4
  store float %1, float* %y, align 4
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %2 = load float, float* %zz.addr, align 4
  store float %2, float* %z, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4Vec3IfEC2Ef(%class.Vec3* %this, float %xx) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Vec3*, align 8
  %xx.addr = alloca float, align 4
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  store float %xx, float* %xx.addr, align 4
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %0 = load float, float* %xx.addr, align 4
  store float %0, float* %x, align 4
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %1 = load float, float* %xx.addr, align 4
  store float %1, float* %y, align 4
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %2 = load float, float* %xx.addr, align 4
  store float %2, float* %z, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN6SphereIfEC2ERK4Vec3IfERKfS4_S6_S6_S4_(%class.Sphere* %this, %class.Vec3* dereferenceable(12) %c, float* dereferenceable(4) %r, %class.Vec3* dereferenceable(12) %sc, float* dereferenceable(4) %refl, float* dereferenceable(4) %transp, %class.Vec3* dereferenceable(12) %ec) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Sphere*, align 8
  %c.addr = alloca %class.Vec3*, align 8
  %r.addr = alloca float*, align 8
  %sc.addr = alloca %class.Vec3*, align 8
  %refl.addr = alloca float*, align 8
  %transp.addr = alloca float*, align 8
  %ec.addr = alloca %class.Vec3*, align 8
  store %class.Sphere* %this, %class.Sphere** %this.addr, align 8
  store %class.Vec3* %c, %class.Vec3** %c.addr, align 8
  store float* %r, float** %r.addr, align 8
  store %class.Vec3* %sc, %class.Vec3** %sc.addr, align 8
  store float* %refl, float** %refl.addr, align 8
  store float* %transp, float** %transp.addr, align 8
  store %class.Vec3* %ec, %class.Vec3** %ec.addr, align 8
  %this1 = load %class.Sphere*, %class.Sphere** %this.addr, align 8
  %center = getelementptr inbounds %class.Sphere, %class.Sphere* %this1, i32 0, i32 0
  %0 = load %class.Vec3*, %class.Vec3** %c.addr, align 8
  %1 = bitcast %class.Vec3* %center to i8*
  %2 = bitcast %class.Vec3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 12, i32 4, i1 false)
  %radius = getelementptr inbounds %class.Sphere, %class.Sphere* %this1, i32 0, i32 1
  %3 = load float*, float** %r.addr, align 8
  %4 = load float, float* %3, align 4
  store float %4, float* %radius, align 4
  %radius2 = getelementptr inbounds %class.Sphere, %class.Sphere* %this1, i32 0, i32 2
  %5 = load float*, float** %r.addr, align 8
  %6 = load float, float* %5, align 4
  %7 = load float*, float** %r.addr, align 8
  %8 = load float, float* %7, align 4
  %mul = fmul float %6, %8
  store float %mul, float* %radius2, align 4
  %surfaceColor = getelementptr inbounds %class.Sphere, %class.Sphere* %this1, i32 0, i32 3
  %9 = load %class.Vec3*, %class.Vec3** %sc.addr, align 8
  %10 = bitcast %class.Vec3* %surfaceColor to i8*
  %11 = bitcast %class.Vec3* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 12, i32 4, i1 false)
  %emissionColor = getelementptr inbounds %class.Sphere, %class.Sphere* %this1, i32 0, i32 4
  %12 = load %class.Vec3*, %class.Vec3** %ec.addr, align 8
  %13 = bitcast %class.Vec3* %emissionColor to i8*
  %14 = bitcast %class.Vec3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 12, i32 4, i1 false)
  %transparency = getelementptr inbounds %class.Sphere, %class.Sphere* %this1, i32 0, i32 5
  %15 = load float*, float** %transp.addr, align 8
  %16 = load float, float* %15, align 4
  store float %16, float* %transparency, align 4
  %reflection = getelementptr inbounds %class.Sphere, %class.Sphere* %this1, i32 0, i32 6
  %17 = load float*, float** %refl.addr, align 8
  %18 = load float, float* %17, align 4
  store float %18, float* %reflection, align 4
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

; Function Attrs: uwtable
define linkonce_odr i32 @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE(%"class.std::vector"* dereferenceable(24) %spheres) #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %spheres.addr = alloca %"class.std::vector"*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %image = alloca %class.Vec3*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
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
  %ref.tmp = alloca %class.Vec3, align 4
  %ref.tmp33 = alloca %class.Vec3, align 4
  %ref.tmp34 = alloca i32, align 4
  %tmp = alloca { <2 x float>, float }, align 8
  %bad_hash = alloca i32, align 4
  %i = alloca i32, align 4
  %ref.tmp46 = alloca float, align 4
  %ref.tmp53 = alloca float, align 4
  %ref.tmp62 = alloca float, align 4
  store %"class.std::vector"* %spheres, %"class.std::vector"** %spheres.addr, align 8
  store i32 640, i32* %width, align 4
  store i32 480, i32* %height, align 4
  %0 = load i32, i32* %width, align 4
  %1 = load i32, i32* %height, align 4
  %mul = mul i32 %0, %1
  %2 = zext i32 %mul to i64
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 12)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  %6 = select i1 %4, i64 -1, i64 %5
  %call = call noalias i8* @_Znam(i64 %6) #14
  %7 = bitcast i8* %call to %class.Vec3*
  %isempty = icmp eq i64 %2, 0
  br i1 %isempty, label %arrayctor.cont, label %new.ctorloop

new.ctorloop:                                     ; preds = %entry
  %arrayctor.end = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i64 %2
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %invoke.cont, %new.ctorloop
  %arrayctor.cur = phi %class.Vec3* [ %7, %new.ctorloop ], [ %arrayctor.next, %invoke.cont ]
  invoke void @_ZN4Vec3IfEC2Ev(%class.Vec3* %arrayctor.cur)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %arrayctor.loop
  %arrayctor.next = getelementptr inbounds %class.Vec3, %class.Vec3* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %class.Vec3* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %entry, %invoke.cont
  store %class.Vec3* %7, %class.Vec3** %image, align 8
  %8 = load %class.Vec3*, %class.Vec3** %image, align 8
  store %class.Vec3* %8, %class.Vec3** %pixel, align 8
  %9 = load i32, i32* %width, align 4
  %conv = uitofp i32 %9 to float
  %div = fdiv float 1.000000e+00, %conv
  store float %div, float* %invWidth, align 4
  %10 = load i32, i32* %height, align 4
  %conv1 = uitofp i32 %10 to float
  %div2 = fdiv float 1.000000e+00, %conv1
  store float %div2, float* %invHeight, align 4
  store float 3.000000e+01, float* %fov, align 4
  %11 = load i32, i32* %width, align 4
  %conv3 = uitofp i32 %11 to float
  %12 = load i32, i32* %height, align 4
  %conv4 = uitofp i32 %12 to float
  %div5 = fdiv float %conv3, %conv4
  store float %div5, float* %aspectratio, align 4
  %13 = load float, float* %fov, align 4
  %conv6 = fpext float %13 to double
  %mul7 = fmul double 0x3FF921FB54442D18, %conv6
  %div8 = fdiv double %mul7, 1.800000e+02
  %call9 = call double @tan(double %div8) #2
  %conv10 = fptrunc double %call9 to float
  store float %conv10, float* %angle, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %arrayctor.cont
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %height, align 4
  %cmp = icmp ult i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %width, align 4
  %cmp12 = icmp ult i32 %16, %17
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %18 = load i32, i32* %x, align 4
  %conv14 = uitofp i32 %18 to double
  %add = fadd double %conv14, 5.000000e-01
  %19 = load float, float* %invWidth, align 4
  %conv15 = fpext float %19 to double
  %mul16 = fmul double %add, %conv15
  %mul17 = fmul double 2.000000e+00, %mul16
  %sub = fsub double %mul17, 1.000000e+00
  %20 = load float, float* %angle, align 4
  %conv18 = fpext float %20 to double
  %mul19 = fmul double %sub, %conv18
  %21 = load float, float* %aspectratio, align 4
  %conv20 = fpext float %21 to double
  %mul21 = fmul double %mul19, %conv20
  %conv22 = fptrunc double %mul21 to float
  store float %conv22, float* %xx, align 4
  %22 = load i32, i32* %y, align 4
  %conv23 = uitofp i32 %22 to double
  %add24 = fadd double %conv23, 5.000000e-01
  %23 = load float, float* %invHeight, align 4
  %conv25 = fpext float %23 to double
  %mul26 = fmul double %add24, %conv25
  %mul27 = fmul double 2.000000e+00, %mul26
  %sub28 = fsub double 1.000000e+00, %mul27
  %24 = load float, float* %angle, align 4
  %conv29 = fpext float %24 to double
  %mul30 = fmul double %sub28, %conv29
  %conv31 = fptrunc double %mul30 to float
  store float %conv31, float* %yy, align 4
  %25 = load float, float* %xx, align 4
  %26 = load float, float* %yy, align 4
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %raydir, float %25, float %26, float -1.000000e+00)
  %call32 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %raydir)
  %27 = load %class.Vec3*, %class.Vec3** %pixel, align 8
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %ref.tmp33, float 0.000000e+00)
  %28 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  store i32 0, i32* %ref.tmp34, align 4
  %call35 = call { <2 x float>, float } @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi(%class.Vec3* dereferenceable(12) %ref.tmp33, %class.Vec3* dereferenceable(12) %raydir, %"class.std::vector"* dereferenceable(24) %28, i32* dereferenceable(4) %ref.tmp34)
  store { <2 x float>, float } %call35, { <2 x float>, float }* %tmp, align 8
  %29 = bitcast { <2 x float>, float }* %tmp to i8*
  %30 = bitcast %class.Vec3* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %29, i64 12, i32 4, i1 false)
  %31 = bitcast %class.Vec3* %27 to i8*
  %32 = bitcast %class.Vec3* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 12, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %33 = load i32, i32* %x, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %x, align 4
  %34 = load %class.Vec3*, %class.Vec3** %pixel, align 8
  %incdec.ptr = getelementptr inbounds %class.Vec3, %class.Vec3* %34, i32 1
  store %class.Vec3* %incdec.ptr, %class.Vec3** %pixel, align 8
  br label %for.cond11

lpad:                                             ; preds = %arrayctor.loop
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %exn.slot, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %ehselector.slot, align 4
  call void @_ZdaPv(i8* %call) #15
  br label %eh.resume

for.end:                                          ; preds = %for.cond11
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %38 = load i32, i32* %y, align 4
  %inc37 = add i32 %38, 1
  store i32 %inc37, i32* %y, align 4
  br label %for.cond

for.end38:                                        ; preds = %for.cond
  store i32 0, i32* %bad_hash, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc69, %for.end38
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %width, align 4
  %41 = load i32, i32* %height, align 4
  %mul42 = mul i32 %40, %41
  %cmp43 = icmp ult i32 %39, %mul42
  br i1 %cmp43, label %for.body44, label %for.end71

for.body44:                                       ; preds = %for.cond41
  %42 = load i32, i32* %bad_hash, align 4
  %mul45 = mul i32 %42, 31
  store float 1.000000e+00, float* %ref.tmp46, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom = zext i32 %43 to i64
  %44 = load %class.Vec3*, %class.Vec3** %image, align 8
  %arrayidx = getelementptr inbounds %class.Vec3, %class.Vec3* %44, i64 %idxprom
  %x47 = getelementptr inbounds %class.Vec3, %class.Vec3* %arrayidx, i32 0, i32 0
  %call48 = call dereferenceable(4) float* @_ZSt3minIfERKT_S2_S2_(float* dereferenceable(4) %ref.tmp46, float* dereferenceable(4) %x47)
  %45 = load float, float* %call48, align 4
  %mul49 = fmul float %45, 2.550000e+02
  %conv50 = fptoui float %mul49 to i32
  %add51 = add i32 %mul45, %conv50
  store i32 %add51, i32* %bad_hash, align 4
  %46 = load i32, i32* %bad_hash, align 4
  %mul52 = mul i32 %46, 31
  store float 1.000000e+00, float* %ref.tmp53, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom54 = zext i32 %47 to i64
  %48 = load %class.Vec3*, %class.Vec3** %image, align 8
  %arrayidx55 = getelementptr inbounds %class.Vec3, %class.Vec3* %48, i64 %idxprom54
  %y56 = getelementptr inbounds %class.Vec3, %class.Vec3* %arrayidx55, i32 0, i32 1
  %call57 = call dereferenceable(4) float* @_ZSt3minIfERKT_S2_S2_(float* dereferenceable(4) %ref.tmp53, float* dereferenceable(4) %y56)
  %49 = load float, float* %call57, align 4
  %mul58 = fmul float %49, 2.550000e+02
  %conv59 = fptoui float %mul58 to i32
  %add60 = add i32 %mul52, %conv59
  store i32 %add60, i32* %bad_hash, align 4
  %50 = load i32, i32* %bad_hash, align 4
  %mul61 = mul i32 %50, 31
  store float 1.000000e+00, float* %ref.tmp62, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom63 = zext i32 %51 to i64
  %52 = load %class.Vec3*, %class.Vec3** %image, align 8
  %arrayidx64 = getelementptr inbounds %class.Vec3, %class.Vec3* %52, i64 %idxprom63
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %arrayidx64, i32 0, i32 2
  %call65 = call dereferenceable(4) float* @_ZSt3minIfERKT_S2_S2_(float* dereferenceable(4) %ref.tmp62, float* dereferenceable(4) %z)
  %53 = load float, float* %call65, align 4
  %mul66 = fmul float %53, 2.550000e+02
  %conv67 = fptoui float %mul66 to i32
  %add68 = add i32 %mul61, %conv67
  store i32 %add68, i32* %bad_hash, align 4
  br label %for.inc69

for.inc69:                                        ; preds = %for.body44
  %54 = load i32, i32* %i, align 4
  %inc70 = add i32 %54, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond41

for.end71:                                        ; preds = %for.cond41
  %55 = load %class.Vec3*, %class.Vec3** %image, align 8
  %isnull = icmp eq %class.Vec3* %55, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %for.end71
  %56 = bitcast %class.Vec3* %55 to i8*
  call void @_ZdaPv(i8* %56) #15
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %for.end71
  %57 = load i32, i32* %bad_hash, align 4
  ret i32 %57

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val72 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val72
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNKSt6vectorIP6SphereIfESaIS2_EE5emptyEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv(%"class.std::vector"* %this1)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %ref.tmp, i32 0, i32 0
  store %class.Sphere** %call, %class.Sphere*** %coerce.dive, align 8
  %call3 = call %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv(%"class.std::vector"* %this1)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %ref.tmp2, i32 0, i32 0
  store %class.Sphere** %call3, %class.Sphere*** %coerce.dive4, align 8
  %call5 = call zeroext i1 @_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator.0"* dereferenceable(8) %ref.tmp, %"class.__gnu_cxx::__normal_iterator.0"* dereferenceable(8) %ref.tmp2)
  ret i1 %call5
}

; Function Attrs: uwtable
define linkonce_odr dereferenceable(8) %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE4backEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp = alloca i64, align 8
  %coerce3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv(%"class.std::vector"* %this1)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce, i32 0, i32 0
  store %class.Sphere** %call, %class.Sphere*** %coerce.dive, align 8
  store i64 1, i64* %ref.tmp, align 8
  %call2 = call %class.Sphere** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl(%"class.__gnu_cxx::__normal_iterator"* %coerce, i64* dereferenceable(8) %ref.tmp)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %coerce3, i32 0, i32 0
  store %class.Sphere** %call2, %class.Sphere*** %coerce.dive4, align 8
  %call5 = call dereferenceable(8) %class.Sphere** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %coerce3)
  ret %class.Sphere** %call5
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP6SphereIfESaIS2_EE8pop_backEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %class.Sphere**, %class.Sphere*** %_M_finish, align 8
  %incdec.ptr = getelementptr inbounds %class.Sphere*, %class.Sphere** %1, i32 -1
  store %class.Sphere** %incdec.ptr, %class.Sphere*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %3 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl2 to %"class.std::allocator"*
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %_M_finish4 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl3, i32 0, i32 1
  %5 = load %class.Sphere**, %class.Sphere*** %_M_finish4, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_(%"class.std::allocator"* dereferenceable(1) %3, %class.Sphere** %5)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev(%"class.std::vector"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %class.Sphere**, %class.Sphere*** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %class.Sphere**, %class.Sphere*** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E(%class.Sphere** %1, %class.Sphere** %3, %"class.std::allocator"* dereferenceable(1) %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev(%"struct.std::_Vector_base"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev(%"struct.std::_Vector_base"* %9)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #16
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #8 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #16
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"*, %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIP6SphereIfEEC2Ev(%"class.std::allocator"* %0) #2
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this1, i32 0, i32 0
  store %class.Sphere** null, %class.Sphere*** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this1, i32 0, i32 1
  store %class.Sphere** null, %class.Sphere*** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this1, i32 0, i32 2
  store %class.Sphere** null, %class.Sphere*** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP6SphereIfEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E(%class.Sphere** %__first, %class.Sphere** %__last, %"class.std::allocator"* dereferenceable(1)) #9 comdat {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %2 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  call void @_ZSt8_DestroyIPP6SphereIfEEvT_S4_(%class.Sphere** %1, %class.Sphere** %2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %class.Sphere**, %class.Sphere*** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %class.Sphere**, %class.Sphere*** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %class.Sphere**, %class.Sphere*** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.Sphere** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.Sphere** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %this1, %class.Sphere** %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl5) #2
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl6) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr void @_ZSt8_DestroyIPP6SphereIfEEvT_S4_(%class.Sphere** %__first, %class.Sphere** %__last) #9 comdat {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_(%class.Sphere** %0, %class.Sphere** %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP6SphereIfEEEvT_S6_(%class.Sphere**, %class.Sphere**) #6 comdat align 2 {
entry:
  %.addr = alloca %class.Sphere**, align 8
  %.addr1 = alloca %class.Sphere**, align 8
  store %class.Sphere** %0, %class.Sphere*** %.addr, align 8
  store %class.Sphere** %1, %class.Sphere*** %.addr1, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %this, %class.Sphere** %__p, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca %class.Sphere**, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %class.Sphere** %__p, %class.Sphere*** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__p.addr, align 8
  %tobool = icmp ne %class.Sphere** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl to %"class.__gnu_cxx::new_allocator"*
  %2 = load %class.Sphere**, %class.Sphere*** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator"* %1, %class.Sphere** %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this) unnamed_addr #10 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"*, %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIP6SphereIfEED2Ev(%"class.std::allocator"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator"* %this, %class.Sphere** %__p, i64) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %class.Sphere**, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %class.Sphere** %__p, %class.Sphere*** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %__p.addr, align 8
  %2 = bitcast %class.Sphere** %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP6SphereIfEED2Ev(%"class.std::allocator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* dereferenceable(1) %__a, %class.Sphere** %__p, %class.Sphere** dereferenceable(8) %__arg) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %class.Sphere**, align 8
  %__arg.addr = alloca %class.Sphere**, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %class.Sphere** %__p, %class.Sphere*** %__p.addr, align 8
  store %class.Sphere** %__arg, %class.Sphere*** %__arg.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %class.Sphere**, %class.Sphere*** %__p.addr, align 8
  %3 = load %class.Sphere**, %class.Sphere*** %__arg.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator"* %1, %class.Sphere** %2, %class.Sphere** dereferenceable(8) %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(%"class.std::vector"* %this, %class.Sphere** %__position.coerce, %class.Sphere** dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %class.Sphere**, align 8
  %__x_copy = alloca %class.Sphere*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__new_start = alloca %class.Sphere**, align 8
  %__new_finish = alloca %class.Sphere**, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__position, i32 0, i32 0
  store %class.Sphere** %__position.coerce, %class.Sphere*** %coerce.dive, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %class.Sphere** %__x, %class.Sphere*** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %class.Sphere**, %class.Sphere*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %class.Sphere**, %class.Sphere*** %_M_end_of_storage, align 8
  %cmp = icmp ne %class.Sphere** %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator"*
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %class.Sphere**, %class.Sphere*** %_M_finish5, align 8
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %9 = load %class.Sphere**, %class.Sphere*** %_M_finish7, align 8
  %add.ptr = getelementptr inbounds %class.Sphere*, %class.Sphere** %9, i64 -1
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* dereferenceable(1) %5, %class.Sphere** %7, %class.Sphere** dereferenceable(8) %add.ptr)
  %10 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %10, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl8, i32 0, i32 1
  %11 = load %class.Sphere**, %class.Sphere*** %_M_finish9, align 8
  %incdec.ptr = getelementptr inbounds %class.Sphere*, %class.Sphere** %11, i32 1
  store %class.Sphere** %incdec.ptr, %class.Sphere*** %_M_finish9, align 8
  %12 = load %class.Sphere**, %class.Sphere*** %__x.addr, align 8
  %13 = load %class.Sphere*, %class.Sphere** %12, align 8
  store %class.Sphere* %13, %class.Sphere** %__x_copy, align 8
  %call = call dereferenceable(8) %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  %14 = load %class.Sphere**, %class.Sphere*** %call, align 8
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %_M_finish11 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl10, i32 0, i32 1
  %16 = load %class.Sphere**, %class.Sphere*** %_M_finish11, align 8
  %add.ptr12 = getelementptr inbounds %class.Sphere*, %class.Sphere** %16, i64 -2
  %17 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %_M_finish14 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %18 = load %class.Sphere**, %class.Sphere*** %_M_finish14, align 8
  %add.ptr15 = getelementptr inbounds %class.Sphere*, %class.Sphere** %18, i64 -1
  %call16 = call %class.Sphere** @_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %14, %class.Sphere** %add.ptr12, %class.Sphere** %add.ptr15)
  %19 = load %class.Sphere*, %class.Sphere** %__x_copy, align 8
  %call17 = call dereferenceable(8) %class.Sphere** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
  store %class.Sphere* %19, %class.Sphere** %call17, align 8
  br label %if.end70

if.else:                                          ; preds = %entry
  %call18 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc(%"class.std::vector"* %this1, i64 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i64 %call18, i64* %__len, align 8
  %call19 = call %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv(%"class.std::vector"* %this1)
  %coerce.dive20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %ref.tmp, i32 0, i32 0
  store %class.Sphere** %call19, %class.Sphere*** %coerce.dive20, align 8
  %call21 = call i64 @_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %ref.tmp)
  store i64 %call21, i64* %__elems_before, align 8
  %20 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %21 = load i64, i64* %__len, align 8
  %call22 = call %class.Sphere** @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base"* %20, i64 %21)
  store %class.Sphere** %call22, %class.Sphere*** %__new_start, align 8
  %22 = load %class.Sphere**, %class.Sphere*** %__new_start, align 8
  store %class.Sphere** %22, %class.Sphere*** %__new_finish, align 8
  %23 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl23 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %23, i32 0, i32 0
  %24 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl23 to %"class.std::allocator"*
  %25 = load %class.Sphere**, %class.Sphere*** %__new_start, align 8
  %26 = load i64, i64* %__elems_before, align 8
  %add.ptr24 = getelementptr inbounds %class.Sphere*, %class.Sphere** %25, i64 %26
  %27 = load %class.Sphere**, %class.Sphere*** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_(%"class.std::allocator"* dereferenceable(1) %24, %class.Sphere** %add.ptr24, %class.Sphere** dereferenceable(8) %27)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  store %class.Sphere** null, %class.Sphere*** %__new_finish, align 8
  %28 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %28, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl25, i32 0, i32 0
  %29 = load %class.Sphere**, %class.Sphere*** %_M_start, align 8
  %call27 = invoke dereferenceable(8) %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %invoke.cont26 unwind label %lpad

invoke.cont26:                                    ; preds = %invoke.cont
  %30 = load %class.Sphere**, %class.Sphere*** %call27, align 8
  %31 = load %class.Sphere**, %class.Sphere*** %__new_start, align 8
  %32 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call29 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %32)
          to label %invoke.cont28 unwind label %lpad

invoke.cont28:                                    ; preds = %invoke.cont26
  %call31 = invoke %class.Sphere** @_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_(%class.Sphere** %29, %class.Sphere** %30, %class.Sphere** %31, %"class.std::allocator"* dereferenceable(1) %call29)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %invoke.cont28
  store %class.Sphere** %call31, %class.Sphere*** %__new_finish, align 8
  %33 = load %class.Sphere**, %class.Sphere*** %__new_finish, align 8
  %incdec.ptr32 = getelementptr inbounds %class.Sphere*, %class.Sphere** %33, i32 1
  store %class.Sphere** %incdec.ptr32, %class.Sphere*** %__new_finish, align 8
  %call34 = invoke dereferenceable(8) %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__position)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %invoke.cont30
  %34 = load %class.Sphere**, %class.Sphere*** %call34, align 8
  %35 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl35 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %35, i32 0, i32 0
  %_M_finish36 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl35, i32 0, i32 1
  %36 = load %class.Sphere**, %class.Sphere*** %_M_finish36, align 8
  %37 = load %class.Sphere**, %class.Sphere*** %__new_finish, align 8
  %38 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call38 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %38)
          to label %invoke.cont37 unwind label %lpad

invoke.cont37:                                    ; preds = %invoke.cont33
  %call40 = invoke %class.Sphere** @_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_(%class.Sphere** %34, %class.Sphere** %36, %class.Sphere** %37, %"class.std::allocator"* dereferenceable(1) %call38)
          to label %invoke.cont39 unwind label %lpad

invoke.cont39:                                    ; preds = %invoke.cont37
  store %class.Sphere** %call40, %class.Sphere*** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont37, %invoke.cont33, %invoke.cont30, %invoke.cont28, %invoke.cont26, %invoke.cont, %if.else
  %39 = landingpad { i8*, i32 }
          catch i8* null
  %40 = extractvalue { i8*, i32 } %39, 0
  store i8* %40, i8** %exn.slot, align 8
  %41 = extractvalue { i8*, i32 } %39, 1
  store i32 %41, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %42 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %43 = load %class.Sphere**, %class.Sphere*** %__new_finish, align 8
  %tobool = icmp ne %class.Sphere** %43, null
  br i1 %tobool, label %if.else46, label %if.then41

if.then41:                                        ; preds = %catch
  %44 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl42 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %44, i32 0, i32 0
  %45 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl42 to %"class.std::allocator"*
  %46 = load %class.Sphere**, %class.Sphere*** %__new_start, align 8
  %47 = load i64, i64* %__elems_before, align 8
  %add.ptr43 = getelementptr inbounds %class.Sphere*, %class.Sphere** %46, i64 %47
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_(%"class.std::allocator"* dereferenceable(1) %45, %class.Sphere** %add.ptr43)
          to label %invoke.cont45 unwind label %lpad44

invoke.cont45:                                    ; preds = %if.then41
  br label %if.end

lpad44:                                           ; preds = %invoke.cont50, %if.end, %invoke.cont47, %if.else46, %if.then41
  %48 = landingpad { i8*, i32 }
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  store i8* %49, i8** %exn.slot, align 8
  %50 = extractvalue { i8*, i32 } %48, 1
  store i32 %50, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont51 unwind label %terminate.lpad

if.else46:                                        ; preds = %catch
  %51 = load %class.Sphere**, %class.Sphere*** %__new_start, align 8
  %52 = load %class.Sphere**, %class.Sphere*** %__new_finish, align 8
  %53 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call48 = invoke dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %53)
          to label %invoke.cont47 unwind label %lpad44

invoke.cont47:                                    ; preds = %if.else46
  invoke void @_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E(%class.Sphere** %51, %class.Sphere** %52, %"class.std::allocator"* dereferenceable(1) %call48)
          to label %invoke.cont49 unwind label %lpad44

invoke.cont49:                                    ; preds = %invoke.cont47
  br label %if.end

if.end:                                           ; preds = %invoke.cont49, %invoke.cont45
  %54 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %55 = load %class.Sphere**, %class.Sphere*** %__new_start, align 8
  %56 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %54, %class.Sphere** %55, i64 %56)
          to label %invoke.cont50 unwind label %lpad44

invoke.cont50:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #17
          to label %unreachable unwind label %lpad44

invoke.cont51:                                    ; preds = %lpad44
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont39
  %57 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl52 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %57, i32 0, i32 0
  %_M_start53 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl52, i32 0, i32 0
  %58 = load %class.Sphere**, %class.Sphere*** %_M_start53, align 8
  %59 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl54 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %59, i32 0, i32 0
  %_M_finish55 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl54, i32 0, i32 1
  %60 = load %class.Sphere**, %class.Sphere*** %_M_finish55, align 8
  %61 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call56 = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %61)
  call void @_ZSt8_DestroyIPP6SphereIfES2_EvT_S4_RSaIT0_E(%class.Sphere** %58, %class.Sphere** %60, %"class.std::allocator"* dereferenceable(1) %call56)
  %62 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %63 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl57 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %63, i32 0, i32 0
  %_M_start58 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl57, i32 0, i32 0
  %64 = load %class.Sphere**, %class.Sphere*** %_M_start58, align 8
  %65 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl59 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %65, i32 0, i32 0
  %_M_end_of_storage60 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl59, i32 0, i32 2
  %66 = load %class.Sphere**, %class.Sphere*** %_M_end_of_storage60, align 8
  %67 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl61 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %67, i32 0, i32 0
  %_M_start62 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl61, i32 0, i32 0
  %68 = load %class.Sphere**, %class.Sphere*** %_M_start62, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.Sphere** %66 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.Sphere** %68 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  call void @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m(%"struct.std::_Vector_base"* %62, %class.Sphere** %64, i64 %sub.ptr.div)
  %69 = load %class.Sphere**, %class.Sphere*** %__new_start, align 8
  %70 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl63 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %70, i32 0, i32 0
  %_M_start64 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl63, i32 0, i32 0
  store %class.Sphere** %69, %class.Sphere*** %_M_start64, align 8
  %71 = load %class.Sphere**, %class.Sphere*** %__new_finish, align 8
  %72 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl65 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %72, i32 0, i32 0
  %_M_finish66 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl65, i32 0, i32 1
  store %class.Sphere** %71, %class.Sphere*** %_M_finish66, align 8
  %73 = load %class.Sphere**, %class.Sphere*** %__new_start, align 8
  %74 = load i64, i64* %__len, align 8
  %add.ptr67 = getelementptr inbounds %class.Sphere*, %class.Sphere** %73, i64 %74
  %75 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl68 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %75, i32 0, i32 0
  %_M_end_of_storage69 = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl68, i32 0, i32 2
  store %class.Sphere** %add.ptr67, %class.Sphere*** %_M_end_of_storage69, align 8
  br label %if.end70

if.end70:                                         ; preds = %try.cont, %if.then
  ret void

eh.resume:                                        ; preds = %invoke.cont51
  %exn71 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn71, 0
  %lpad.val72 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val72

terminate.lpad:                                   ; preds = %lpad44
  %76 = landingpad { i8*, i32 }
          catch i8* null
  %77 = extractvalue { i8*, i32 } %76, 0
  call void @__clang_call_terminate(i8* %77) #16
  unreachable

unreachable:                                      ; preds = %invoke.cont50
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE3endEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator"* %retval, %class.Sphere*** dereferenceable(8) %_M_finish)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %class.Sphere**, %class.Sphere*** %coerce.dive, align 8
  ret %class.Sphere** %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE9constructEPS3_RKS3_(%"class.__gnu_cxx::new_allocator"* %this, %class.Sphere** %__p, %class.Sphere** dereferenceable(8) %__val) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %class.Sphere**, align 8
  %__val.addr = alloca %class.Sphere**, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %class.Sphere** %__p, %class.Sphere*** %__p.addr, align 8
  store %class.Sphere** %__val, %class.Sphere*** %__val.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__p.addr, align 8
  %1 = bitcast %class.Sphere** %0 to i8*
  %2 = bitcast i8* %1 to %class.Sphere**
  %3 = load %class.Sphere**, %class.Sphere*** %__val.addr, align 8
  %4 = load %class.Sphere*, %class.Sphere** %3, align 8
  store %class.Sphere* %4, %class.Sphere** %2, align 8
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #9 comdat {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %call = call %class.Sphere** @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_(%class.Sphere** %0)
  %1 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %call1 = call %class.Sphere** @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_(%class.Sphere** %1)
  %2 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %call2 = call %class.Sphere** @_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %call, %class.Sphere** %call1, %class.Sphere** %2)
  ret %class.Sphere** %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret %class.Sphere*** %_M_current
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %class.Sphere** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %class.Sphere**, %class.Sphere*** %_M_current, align 8
  ret %class.Sphere** %0
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv(%"class.std::vector"* %this1)
  %call2 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %this1)
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #17
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %this1)
  %call4 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %this1)
  store i64 %call4, i64* %ref.tmp, align 8
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64, i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %this1)
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv(%"class.std::vector"* %this1)
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv(%"class.std::vector"* %this1)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPP6SphereIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #10 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0)
  %1 = load %class.Sphere**, %class.Sphere*** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2)
  %3 = load %class.Sphere**, %class.Sphere*** %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.Sphere** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.Sphere** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNSt6vectorIP6SphereIfESaIS2_EE5beginEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator"* %retval, %class.Sphere*** dereferenceable(8) %_M_start)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %class.Sphere**, %class.Sphere*** %coerce.dive, align 8
  ret %class.Sphere** %1
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl to %"class.__gnu_cxx::new_allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %class.Sphere** @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %2, i8* null)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %class.Sphere** [ %call, %cond.true ], [ null, %cond.false ]
  ret %class.Sphere** %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result, %"class.std::allocator"* dereferenceable(1) %__alloc) #9 comdat {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  %__alloc.addr = alloca %"class.std::allocator"*, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %__alloc.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %2 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %__alloc.addr, align 8
  %call = call %class.Sphere** @_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E(%class.Sphere** %0, %class.Sphere** %1, %class.Sphere** %2, %"class.std::allocator"* dereferenceable(1) %3)
  ret %class.Sphere** %call
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE7destroyERS4_PS3_(%"class.std::allocator"* dereferenceable(1) %__a, %class.Sphere** %__p) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %class.Sphere**, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %class.Sphere** %__p, %class.Sphere*** %__p.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %class.Sphere**, %class.Sphere*** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator"* %1, %class.Sphere** %2)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt23__copy_move_backward_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #9 comdat {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %call = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %0)
  %1 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %call1 = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %1)
  %2 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %call2 = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %2)
  %call3 = call %class.Sphere** @_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %call, %class.Sphere** %call1, %class.Sphere** %call2)
  ret %class.Sphere** %call3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %class.Sphere** @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_(%class.Sphere** %__it) #10 comdat {
entry:
  %__it.addr = alloca %class.Sphere**, align 8
  store %class.Sphere** %__it, %class.Sphere*** %__it.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__it.addr, align 8
  %call = call %class.Sphere** @_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_(%class.Sphere** %0)
  ret %class.Sphere** %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt22__copy_move_backward_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #9 comdat {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  %__simple = alloca i8, align 1
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %2 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %call = call %class.Sphere** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_(%class.Sphere** %0, %class.Sphere** %1, %class.Sphere** %2)
  ret %class.Sphere** %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %__it) #9 comdat {
entry:
  %__it.addr = alloca %class.Sphere**, align 8
  store %class.Sphere** %__it, %class.Sphere*** %__it.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__it.addr, align 8
  %call = call %class.Sphere** @_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_(%class.Sphere** %0)
  ret %class.Sphere** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Sphere** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIP6SphereIfEEEPT_PKS6_S9_S7_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #6 comdat align 2 {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  %_Num = alloca i64, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.Sphere** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.Sphere** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %4 = load i64, i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds %class.Sphere*, %class.Sphere** %3, i64 %idx.neg
  %5 = bitcast %class.Sphere** %add.ptr to i8*
  %6 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %7 = bitcast %class.Sphere** %6 to i8*
  %8 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %10 = load i64, i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds %class.Sphere*, %class.Sphere** %9, i64 %idx.neg1
  ret %class.Sphere** %add.ptr2
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #11

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Sphere** @_ZNSt10_Iter_baseIPP6SphereIfELb0EE7_S_baseES3_(%class.Sphere** %__it) #6 comdat align 2 {
entry:
  %__it.addr = alloca %class.Sphere**, align 8
  store %class.Sphere** %__it, %class.Sphere*** %__it.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__it.addr, align 8
  ret %class.Sphere** %0
}

; Function Attrs: uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE8max_sizeEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0)
  %call2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_(%"class.std::allocator"* dereferenceable(1) %call)
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %class.Sphere**, %class.Sphere*** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %class.Sphere**, %class.Sphere*** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.Sphere** %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.Sphere** %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #12

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #10 comdat {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %0 = load i64*, i64** %__a.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %__b.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8
  store i64* %4, i64** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8
  store i64* %5, i64** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8
  ret i64* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE8max_sizeERKS4_(%"class.std::allocator"* dereferenceable(1) %__a) #6 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %1) #2
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIP6SphereIfESaIS2_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator"* %this, %class.Sphere*** dereferenceable(8) %__i) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca %class.Sphere***, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store %class.Sphere*** %__i, %class.Sphere**** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %class.Sphere***, %class.Sphere**** %__i.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %0, align 8
  store %class.Sphere** %1, %class.Sphere*** %_M_current, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIP6SphereIfEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #2
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call noalias i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %class.Sphere**
  ret %class.Sphere** %3
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #12

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt22__uninitialized_copy_aIPP6SphereIfES3_S2_ET0_T_S5_S4_RSaIT1_E(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result, %"class.std::allocator"* dereferenceable(1)) #9 comdat {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %2 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %3 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %call = call %class.Sphere** @_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %1, %class.Sphere** %2, %class.Sphere** %3)
  ret %class.Sphere** %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt18uninitialized_copyIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #9 comdat {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %2 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %call = call %class.Sphere** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_(%class.Sphere** %0, %class.Sphere** %1, %class.Sphere** %2)
  ret %class.Sphere** %call
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPP6SphereIfES5_EET0_T_S7_S6_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #0 comdat align 2 {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %2 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %call = call %class.Sphere** @_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %0, %class.Sphere** %1, %class.Sphere** %2)
  ret %class.Sphere** %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt4copyIPP6SphereIfES3_ET0_T_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #9 comdat {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %call = call %class.Sphere** @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_(%class.Sphere** %0)
  %1 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %call1 = call %class.Sphere** @_ZSt12__miter_baseIPP6SphereIfEENSt11_Miter_baseIT_E13iterator_typeES5_(%class.Sphere** %1)
  %2 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %call2 = call %class.Sphere** @_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %call, %class.Sphere** %call1, %class.Sphere** %2)
  ret %class.Sphere** %call2
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt14__copy_move_a2ILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #9 comdat {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %call = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %0)
  %1 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %call1 = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %1)
  %2 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %call2 = call %class.Sphere** @_ZSt12__niter_baseIPP6SphereIfEENSt11_Niter_baseIT_E13iterator_typeES5_(%class.Sphere** %2)
  %call3 = call %class.Sphere** @_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %call, %class.Sphere** %call1, %class.Sphere** %call2)
  ret %class.Sphere** %call3
}

; Function Attrs: inlinehint uwtable
define linkonce_odr %class.Sphere** @_ZSt13__copy_move_aILb0EPP6SphereIfES3_ET1_T0_S5_S4_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #9 comdat {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  %__simple = alloca i8, align 1
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %2 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %call = call %class.Sphere** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_(%class.Sphere** %0, %class.Sphere** %1, %class.Sphere** %2)
  ret %class.Sphere** %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr %class.Sphere** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP6SphereIfEEEPT_PKS6_S9_S7_(%class.Sphere** %__first, %class.Sphere** %__last, %class.Sphere** %__result) #6 comdat align 2 {
entry:
  %__first.addr = alloca %class.Sphere**, align 8
  %__last.addr = alloca %class.Sphere**, align 8
  %__result.addr = alloca %class.Sphere**, align 8
  %_Num = alloca i64, align 8
  store %class.Sphere** %__first, %class.Sphere*** %__first.addr, align 8
  store %class.Sphere** %__last, %class.Sphere*** %__last.addr, align 8
  store %class.Sphere** %__result, %class.Sphere*** %__result.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__last.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.Sphere** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.Sphere** %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %4 = bitcast %class.Sphere** %3 to i8*
  %5 = load %class.Sphere**, %class.Sphere*** %__first.addr, align 8
  %6 = bitcast %class.Sphere** %5 to i8*
  %7 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %class.Sphere**, %class.Sphere*** %__result.addr, align 8
  %9 = load i64, i64* %_Num, align 8
  %add.ptr = getelementptr inbounds %class.Sphere*, %class.Sphere** %8, i64 %9
  ret %class.Sphere** %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE7destroyEPS3_(%"class.__gnu_cxx::new_allocator"* %this, %class.Sphere** %__p) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %class.Sphere**, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %class.Sphere** %__p, %class.Sphere*** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load %class.Sphere**, %class.Sphere*** %__p.addr, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #11

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #5

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4Vec3IfEC2Ev(%class.Vec3* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Vec3*, align 8
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  store float 0.000000e+00, float* %x, align 4
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  store float 0.000000e+00, float* %y, align 4
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  store float 0.000000e+00, float* %z, align 4
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #7

; Function Attrs: nounwind
declare double @tan(double) #4

; Function Attrs: uwtable
define linkonce_odr dereferenceable(12) %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Vec3*, align 8
  %nor2 = alloca float, align 4
  %invNor = alloca float, align 4
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %call = call float @_ZNK4Vec3IfE7length2Ev(%class.Vec3* %this1)
  store float %call, float* %nor2, align 4
  %0 = load float, float* %nor2, align 4
  %cmp = fcmp ogt float %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load float, float* %nor2, align 4
  %conv = fpext float %1 to double
  %call2 = call double @sqrt(double %conv) #2
  %div = fdiv double 1.000000e+00, %call2
  %conv3 = fptrunc double %div to float
  store float %conv3, float* %invNor, align 4
  %2 = load float, float* %invNor, align 4
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %3 = load float, float* %x, align 4
  %mul = fmul float %3, %2
  store float %mul, float* %x, align 4
  %4 = load float, float* %invNor, align 4
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %5 = load float, float* %y, align 4
  %mul4 = fmul float %5, %4
  store float %mul4, float* %y, align 4
  %6 = load float, float* %invNor, align 4
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %7 = load float, float* %z, align 4
  %mul5 = fmul float %7, %6
  store float %mul5, float* %z, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %class.Vec3* %this1
}

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi(%class.Vec3* dereferenceable(12) %rayorig, %class.Vec3* dereferenceable(12) %raydir, %"class.std::vector"* dereferenceable(24) %spheres, i32* dereferenceable(4) %depth) #0 comdat {
entry:
  %retval = alloca %class.Vec3, align 4
  %rayorig.addr = alloca %class.Vec3*, align 8
  %raydir.addr = alloca %class.Vec3*, align 8
  %spheres.addr = alloca %"class.std::vector"*, align 8
  %depth.addr = alloca i32*, align 8
  %tnear = alloca float, align 4
  %sphere = alloca %class.Sphere*, align 8
  %i = alloca i32, align 4
  %t0 = alloca float, align 4
  %t1 = alloca float, align 4
  %surfaceColor = alloca %class.Vec3, align 4
  %phit = alloca %class.Vec3, align 4
  %ref.tmp = alloca %class.Vec3, align 4
  %tmp = alloca { <2 x float>, float }, align 8
  %tmp16 = alloca { <2 x float>, float }, align 8
  %nhit = alloca %class.Vec3, align 4
  %tmp19 = alloca { <2 x float>, float }, align 8
  %bias = alloca float, align 4
  %inside = alloca i8, align 1
  %ref.tmp26 = alloca %class.Vec3, align 4
  %tmp28 = alloca { <2 x float>, float }, align 8
  %facingratio = alloca float, align 4
  %fresneleffect = alloca float, align 4
  %ref.tmp37 = alloca float, align 4
  %ref.tmp42 = alloca float, align 4
  %ref.tmp43 = alloca float, align 4
  %refldir = alloca %class.Vec3, align 4
  %ref.tmp46 = alloca %class.Vec3, align 4
  %ref.tmp47 = alloca float, align 4
  %coerce = alloca %class.Vec3, align 4
  %tmp49 = alloca { <2 x float>, float }, align 8
  %ref.tmp50 = alloca float, align 4
  %tmp53 = alloca { <2 x float>, float }, align 8
  %tmp55 = alloca { <2 x float>, float }, align 8
  %reflection58 = alloca %class.Vec3, align 4
  %ref.tmp59 = alloca %class.Vec3, align 4
  %ref.tmp60 = alloca %class.Vec3, align 4
  %tmp62 = alloca { <2 x float>, float }, align 8
  %tmp64 = alloca { <2 x float>, float }, align 8
  %ref.tmp65 = alloca i32, align 4
  %tmp67 = alloca { <2 x float>, float }, align 8
  %refraction = alloca %class.Vec3, align 4
  %ior = alloca float, align 4
  %eta = alloca float, align 4
  %cosi = alloca float, align 4
  %k = alloca float, align 4
  %refrdir = alloca %class.Vec3, align 4
  %coerce85 = alloca %class.Vec3, align 4
  %tmp86 = alloca { <2 x float>, float }, align 8
  %ref.tmp87 = alloca %class.Vec3, align 4
  %ref.tmp88 = alloca float, align 4
  %tmp96 = alloca { <2 x float>, float }, align 8
  %tmp98 = alloca { <2 x float>, float }, align 8
  %ref.tmp100 = alloca %class.Vec3, align 4
  %ref.tmp101 = alloca %class.Vec3, align 4
  %ref.tmp102 = alloca %class.Vec3, align 4
  %tmp104 = alloca { <2 x float>, float }, align 8
  %tmp106 = alloca { <2 x float>, float }, align 8
  %ref.tmp107 = alloca i32, align 4
  %tmp110 = alloca { <2 x float>, float }, align 8
  %ref.tmp112 = alloca %class.Vec3, align 4
  %coerce114 = alloca %class.Vec3, align 4
  %tmp115 = alloca { <2 x float>, float }, align 8
  %ref.tmp116 = alloca %class.Vec3, align 4
  %ref.tmp117 = alloca float, align 4
  %coerce120 = alloca %class.Vec3, align 4
  %tmp121 = alloca { <2 x float>, float }, align 8
  %tmp124 = alloca { <2 x float>, float }, align 8
  %coerce126 = alloca %class.Vec3, align 4
  %tmp127 = alloca { <2 x float>, float }, align 8
  %tmp130 = alloca { <2 x float>, float }, align 8
  %i132 = alloca i32, align 4
  %transmission = alloca %class.Vec3, align 4
  %lightDirection = alloca %class.Vec3, align 4
  %tmp148 = alloca { <2 x float>, float }, align 8
  %j = alloca i32, align 4
  %t0159 = alloca float, align 4
  %t1161 = alloca float, align 4
  %ref.tmp164 = alloca %class.Vec3, align 4
  %ref.tmp165 = alloca %class.Vec3, align 4
  %tmp167 = alloca { <2 x float>, float }, align 8
  %tmp169 = alloca { <2 x float>, float }, align 8
  %ref.tmp172 = alloca %class.Vec3, align 4
  %ref.tmp178 = alloca %class.Vec3, align 4
  %coerce181 = alloca %class.Vec3, align 4
  %tmp182 = alloca { <2 x float>, float }, align 8
  %ref.tmp183 = alloca float, align 4
  %ref.tmp184 = alloca float, align 4
  %coerce188 = alloca %class.Vec3, align 4
  %tmp189 = alloca { <2 x float>, float }, align 8
  %tmp194 = alloca { <2 x float>, float }, align 8
  %tmp203 = alloca { <2 x float>, float }, align 8
  %tmp204 = alloca { <2 x float>, float }, align 8
  store %class.Vec3* %rayorig, %class.Vec3** %rayorig.addr, align 8
  store %class.Vec3* %raydir, %class.Vec3** %raydir.addr, align 8
  store %"class.std::vector"* %spheres, %"class.std::vector"** %spheres.addr, align 8
  store i32* %depth, i32** %depth.addr, align 8
  store float 0x7FF0000000000000, float* %tnear, align 4
  store %class.Sphere* null, %class.Sphere** %sphere, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = zext i32 %0 to i64
  %1 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  %call = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %1)
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store float 0x7FF0000000000000, float* %t0, align 4
  store float 0x7FF0000000000000, float* %t1, align 4
  %2 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  %3 = load i32, i32* %i, align 4
  %conv1 = zext i32 %3 to i64
  %call2 = call dereferenceable(8) %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %2, i64 %conv1)
  %4 = load %class.Sphere*, %class.Sphere** %call2, align 8
  %5 = load %class.Vec3*, %class.Vec3** %rayorig.addr, align 8
  %6 = load %class.Vec3*, %class.Vec3** %raydir.addr, align 8
  %call3 = call zeroext i1 @_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_(%class.Sphere* %4, %class.Vec3* dereferenceable(12) %5, %class.Vec3* dereferenceable(12) %6, float* %t0, float* %t1)
  br i1 %call3, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body
  %7 = load float, float* %t0, align 4
  %cmp4 = fcmp olt float %7, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %8 = load float, float* %t1, align 4
  store float %8, float* %t0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %9 = load float, float* %t0, align 4
  %10 = load float, float* %tnear, align 4
  %cmp6 = fcmp olt float %9, %10
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %11 = load float, float* %t0, align 4
  store float %11, float* %tnear, align 4
  %12 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  %13 = load i32, i32* %i, align 4
  %conv8 = zext i32 %13 to i64
  %call9 = call dereferenceable(8) %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %12, i64 %conv8)
  %14 = load %class.Sphere*, %class.Sphere** %call9, align 8
  store %class.Sphere* %14, %class.Sphere** %sphere, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %class.Sphere*, %class.Sphere** %sphere, align 8
  %tobool = icmp ne %class.Sphere* %16, null
  br i1 %tobool, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.end
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %retval, float 2.000000e+00)
  br label %return

if.end13:                                         ; preds = %for.end
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %surfaceColor, float 0.000000e+00)
  %17 = load %class.Vec3*, %class.Vec3** %rayorig.addr, align 8
  %18 = load %class.Vec3*, %class.Vec3** %raydir.addr, align 8
  %call14 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %18, float* dereferenceable(4) %tnear)
  store { <2 x float>, float } %call14, { <2 x float>, float }* %tmp, align 8
  %19 = bitcast { <2 x float>, float }* %tmp to i8*
  %20 = bitcast %class.Vec3* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %19, i64 12, i32 4, i1 false)
  %call15 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %17, %class.Vec3* dereferenceable(12) %ref.tmp)
  store { <2 x float>, float } %call15, { <2 x float>, float }* %tmp16, align 8
  %21 = bitcast { <2 x float>, float }* %tmp16 to i8*
  %22 = bitcast %class.Vec3* %phit to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %21, i64 12, i32 4, i1 false)
  %23 = load %class.Sphere*, %class.Sphere** %sphere, align 8
  %center = getelementptr inbounds %class.Sphere, %class.Sphere* %23, i32 0, i32 0
  %call18 = call { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %phit, %class.Vec3* dereferenceable(12) %center)
  store { <2 x float>, float } %call18, { <2 x float>, float }* %tmp19, align 8
  %24 = bitcast { <2 x float>, float }* %tmp19 to i8*
  %25 = bitcast %class.Vec3* %nhit to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %24, i64 12, i32 4, i1 false)
  %call20 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %nhit)
  store float 0x3F1A36E2E0000000, float* %bias, align 4
  store i8 0, i8* %inside, align 1
  %26 = load %class.Vec3*, %class.Vec3** %raydir.addr, align 8
  %call23 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %26, %class.Vec3* dereferenceable(12) %nhit)
  %cmp24 = fcmp ogt float %call23, 0.000000e+00
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end13
  %call27 = call { <2 x float>, float } @_ZNK4Vec3IfEngEv(%class.Vec3* %nhit)
  store { <2 x float>, float } %call27, { <2 x float>, float }* %tmp28, align 8
  %27 = bitcast { <2 x float>, float }* %tmp28 to i8*
  %28 = bitcast %class.Vec3* %ref.tmp26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %27, i64 12, i32 4, i1 false)
  %29 = bitcast %class.Vec3* %nhit to i8*
  %30 = bitcast %class.Vec3* %ref.tmp26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 12, i32 4, i1 false)
  store i8 1, i8* %inside, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end13
  %31 = load %class.Sphere*, %class.Sphere** %sphere, align 8
  %transparency = getelementptr inbounds %class.Sphere, %class.Sphere* %31, i32 0, i32 5
  %32 = load float, float* %transparency, align 4
  %cmp30 = fcmp ogt float %32, 0.000000e+00
  br i1 %cmp30, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end29
  %33 = load %class.Sphere*, %class.Sphere** %sphere, align 8
  %reflection = getelementptr inbounds %class.Sphere, %class.Sphere* %33, i32 0, i32 6
  %34 = load float, float* %reflection, align 4
  %cmp31 = fcmp ogt float %34, 0.000000e+00
  br i1 %cmp31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end29
  %35 = load i32*, i32** %depth.addr, align 8
  %36 = load i32, i32* %35, align 4
  %cmp32 = icmp slt i32 %36, 5
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %land.lhs.true
  %37 = load %class.Vec3*, %class.Vec3** %raydir.addr, align 8
  %call35 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %37, %class.Vec3* dereferenceable(12) %nhit)
  %sub = fsub float -0.000000e+00, %call35
  store float %sub, float* %facingratio, align 4
  %38 = load float, float* %facingratio, align 4
  %sub38 = fsub float 1.000000e+00, %38
  %conv39 = fpext float %sub38 to double
  %call40 = call double @pow(double %conv39, double 3.000000e+00) #2
  %conv41 = fptrunc double %call40 to float
  store float %conv41, float* %ref.tmp37, align 4
  store float 1.000000e+00, float* %ref.tmp42, align 4
  store float 0x3FB99999A0000000, float* %ref.tmp43, align 4
  %call44 = call float @_Z3mixIfET_RKS0_S2_S2_(float* dereferenceable(4) %ref.tmp37, float* dereferenceable(4) %ref.tmp42, float* dereferenceable(4) %ref.tmp43)
  store float %call44, float* %fresneleffect, align 4
  %39 = load %class.Vec3*, %class.Vec3** %raydir.addr, align 8
  store float 2.000000e+00, float* %ref.tmp47, align 4
  %call48 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %nhit, float* dereferenceable(4) %ref.tmp47)
  store { <2 x float>, float } %call48, { <2 x float>, float }* %tmp49, align 8
  %40 = bitcast { <2 x float>, float }* %tmp49 to i8*
  %41 = bitcast %class.Vec3* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %40, i64 12, i32 4, i1 false)
  %42 = load %class.Vec3*, %class.Vec3** %raydir.addr, align 8
  %call51 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %42, %class.Vec3* dereferenceable(12) %nhit)
  store float %call51, float* %ref.tmp50, align 4
  %call52 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %coerce, float* dereferenceable(4) %ref.tmp50)
  store { <2 x float>, float } %call52, { <2 x float>, float }* %tmp53, align 8
  %43 = bitcast { <2 x float>, float }* %tmp53 to i8*
  %44 = bitcast %class.Vec3* %ref.tmp46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %43, i64 12, i32 4, i1 false)
  %call54 = call { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %39, %class.Vec3* dereferenceable(12) %ref.tmp46)
  store { <2 x float>, float } %call54, { <2 x float>, float }* %tmp55, align 8
  %45 = bitcast { <2 x float>, float }* %tmp55 to i8*
  %46 = bitcast %class.Vec3* %refldir to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %45, i64 12, i32 4, i1 false)
  %call56 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %refldir)
  %call61 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %nhit, float* dereferenceable(4) %bias)
  store { <2 x float>, float } %call61, { <2 x float>, float }* %tmp62, align 8
  %47 = bitcast { <2 x float>, float }* %tmp62 to i8*
  %48 = bitcast %class.Vec3* %ref.tmp60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %47, i64 12, i32 4, i1 false)
  %call63 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %phit, %class.Vec3* dereferenceable(12) %ref.tmp60)
  store { <2 x float>, float } %call63, { <2 x float>, float }* %tmp64, align 8
  %49 = bitcast { <2 x float>, float }* %tmp64 to i8*
  %50 = bitcast %class.Vec3* %ref.tmp59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %49, i64 12, i32 4, i1 false)
  %51 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  %52 = load i32*, i32** %depth.addr, align 8
  %53 = load i32, i32* %52, align 4
  %add = add nsw i32 %53, 1
  store i32 %add, i32* %ref.tmp65, align 4
  %call66 = call { <2 x float>, float } @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi(%class.Vec3* dereferenceable(12) %ref.tmp59, %class.Vec3* dereferenceable(12) %refldir, %"class.std::vector"* dereferenceable(24) %51, i32* dereferenceable(4) %ref.tmp65)
  store { <2 x float>, float } %call66, { <2 x float>, float }* %tmp67, align 8
  %54 = bitcast { <2 x float>, float }* %tmp67 to i8*
  %55 = bitcast %class.Vec3* %reflection58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %54, i64 12, i32 4, i1 false)
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %refraction, float 0.000000e+00)
  %56 = load %class.Sphere*, %class.Sphere** %sphere, align 8
  %transparency69 = getelementptr inbounds %class.Sphere, %class.Sphere* %56, i32 0, i32 5
  %57 = load float, float* %transparency69, align 4
  %tobool70 = fcmp une float %57, 0.000000e+00
  br i1 %tobool70, label %if.then71, label %if.end111

if.then71:                                        ; preds = %if.then33
  store float 0x3FF19999A0000000, float* %ior, align 4
  %58 = load i8, i8* %inside, align 1
  %tobool74 = trunc i8 %58 to i1
  br i1 %tobool74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then71
  %59 = load float, float* %ior, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then71
  %60 = load float, float* %ior, align 4
  %div = fdiv float 1.000000e+00, %60
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %59, %cond.true ], [ %div, %cond.false ]
  store float %cond, float* %eta, align 4
  %61 = load %class.Vec3*, %class.Vec3** %raydir.addr, align 8
  %call76 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %nhit, %class.Vec3* dereferenceable(12) %61)
  %sub77 = fsub float -0.000000e+00, %call76
  store float %sub77, float* %cosi, align 4
  %62 = load float, float* %eta, align 4
  %63 = load float, float* %eta, align 4
  %mul = fmul float %62, %63
  %64 = load float, float* %cosi, align 4
  %65 = load float, float* %cosi, align 4
  %mul79 = fmul float %64, %65
  %sub80 = fsub float 1.000000e+00, %mul79
  %mul81 = fmul float %mul, %sub80
  %sub82 = fsub float 1.000000e+00, %mul81
  store float %sub82, float* %k, align 4
  %66 = load %class.Vec3*, %class.Vec3** %raydir.addr, align 8
  %call84 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %66, float* dereferenceable(4) %eta)
  store { <2 x float>, float } %call84, { <2 x float>, float }* %tmp86, align 8
  %67 = bitcast { <2 x float>, float }* %tmp86 to i8*
  %68 = bitcast %class.Vec3* %coerce85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %67, i64 12, i32 4, i1 false)
  %69 = load float, float* %eta, align 4
  %70 = load float, float* %cosi, align 4
  %mul89 = fmul float %69, %70
  %conv90 = fpext float %mul89 to double
  %71 = load float, float* %k, align 4
  %conv91 = fpext float %71 to double
  %call92 = call double @sqrt(double %conv91) #2
  %sub93 = fsub double %conv90, %call92
  %conv94 = fptrunc double %sub93 to float
  store float %conv94, float* %ref.tmp88, align 4
  %call95 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %nhit, float* dereferenceable(4) %ref.tmp88)
  store { <2 x float>, float } %call95, { <2 x float>, float }* %tmp96, align 8
  %72 = bitcast { <2 x float>, float }* %tmp96 to i8*
  %73 = bitcast %class.Vec3* %ref.tmp87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %72, i64 12, i32 4, i1 false)
  %call97 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %coerce85, %class.Vec3* dereferenceable(12) %ref.tmp87)
  store { <2 x float>, float } %call97, { <2 x float>, float }* %tmp98, align 8
  %74 = bitcast { <2 x float>, float }* %tmp98 to i8*
  %75 = bitcast %class.Vec3* %refrdir to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %74, i64 12, i32 4, i1 false)
  %call99 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %refrdir)
  %call103 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %nhit, float* dereferenceable(4) %bias)
  store { <2 x float>, float } %call103, { <2 x float>, float }* %tmp104, align 8
  %76 = bitcast { <2 x float>, float }* %tmp104 to i8*
  %77 = bitcast %class.Vec3* %ref.tmp102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %76, i64 12, i32 4, i1 false)
  %call105 = call { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %phit, %class.Vec3* dereferenceable(12) %ref.tmp102)
  store { <2 x float>, float } %call105, { <2 x float>, float }* %tmp106, align 8
  %78 = bitcast { <2 x float>, float }* %tmp106 to i8*
  %79 = bitcast %class.Vec3* %ref.tmp101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %78, i64 12, i32 4, i1 false)
  %80 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  %81 = load i32*, i32** %depth.addr, align 8
  %82 = load i32, i32* %81, align 4
  %add108 = add nsw i32 %82, 1
  store i32 %add108, i32* %ref.tmp107, align 4
  %call109 = call { <2 x float>, float } @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi(%class.Vec3* dereferenceable(12) %ref.tmp101, %class.Vec3* dereferenceable(12) %refrdir, %"class.std::vector"* dereferenceable(24) %80, i32* dereferenceable(4) %ref.tmp107)
  store { <2 x float>, float } %call109, { <2 x float>, float }* %tmp110, align 8
  %83 = bitcast { <2 x float>, float }* %tmp110 to i8*
  %84 = bitcast %class.Vec3* %ref.tmp100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %83, i64 12, i32 4, i1 false)
  %85 = bitcast %class.Vec3* %refraction to i8*
  %86 = bitcast %class.Vec3* %ref.tmp100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 12, i32 4, i1 false)
  br label %if.end111

if.end111:                                        ; preds = %cond.end, %if.then33
  %call113 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %reflection58, float* dereferenceable(4) %fresneleffect)
  store { <2 x float>, float } %call113, { <2 x float>, float }* %tmp115, align 8
  %87 = bitcast { <2 x float>, float }* %tmp115 to i8*
  %88 = bitcast %class.Vec3* %coerce114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %87, i64 12, i32 4, i1 false)
  %89 = load float, float* %fresneleffect, align 4
  %sub118 = fsub float 1.000000e+00, %89
  store float %sub118, float* %ref.tmp117, align 4
  %call119 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %refraction, float* dereferenceable(4) %ref.tmp117)
  store { <2 x float>, float } %call119, { <2 x float>, float }* %tmp121, align 8
  %90 = bitcast { <2 x float>, float }* %tmp121 to i8*
  %91 = bitcast %class.Vec3* %coerce120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %90, i64 12, i32 4, i1 false)
  %92 = load %class.Sphere*, %class.Sphere** %sphere, align 8
  %transparency122 = getelementptr inbounds %class.Sphere, %class.Sphere* %92, i32 0, i32 5
  %call123 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %coerce120, float* dereferenceable(4) %transparency122)
  store { <2 x float>, float } %call123, { <2 x float>, float }* %tmp124, align 8
  %93 = bitcast { <2 x float>, float }* %tmp124 to i8*
  %94 = bitcast %class.Vec3* %ref.tmp116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %93, i64 12, i32 4, i1 false)
  %call125 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %coerce114, %class.Vec3* dereferenceable(12) %ref.tmp116)
  store { <2 x float>, float } %call125, { <2 x float>, float }* %tmp127, align 8
  %95 = bitcast { <2 x float>, float }* %tmp127 to i8*
  %96 = bitcast %class.Vec3* %coerce126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %95, i64 12, i32 4, i1 false)
  %97 = load %class.Sphere*, %class.Sphere** %sphere, align 8
  %surfaceColor128 = getelementptr inbounds %class.Sphere, %class.Sphere* %97, i32 0, i32 3
  %call129 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKS0_(%class.Vec3* %coerce126, %class.Vec3* dereferenceable(12) %surfaceColor128)
  store { <2 x float>, float } %call129, { <2 x float>, float }* %tmp130, align 8
  %98 = bitcast { <2 x float>, float }* %tmp130 to i8*
  %99 = bitcast %class.Vec3* %ref.tmp112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* %98, i64 12, i32 4, i1 false)
  %100 = bitcast %class.Vec3* %surfaceColor to i8*
  %101 = bitcast %class.Vec3* %ref.tmp112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 12, i32 4, i1 false)
  br label %if.end200

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %i132, align 4
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc197, %if.else
  %102 = load i32, i32* %i132, align 4
  %conv134 = zext i32 %102 to i64
  %103 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  %call135 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %103)
  %cmp136 = icmp ult i64 %conv134, %call135
  br i1 %cmp136, label %for.body137, label %for.end199

for.body137:                                      ; preds = %for.cond133
  %104 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  %105 = load i32, i32* %i132, align 4
  %conv138 = zext i32 %105 to i64
  %call139 = call dereferenceable(8) %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %104, i64 %conv138)
  %106 = load %class.Sphere*, %class.Sphere** %call139, align 8
  %emissionColor = getelementptr inbounds %class.Sphere, %class.Sphere* %106, i32 0, i32 4
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %emissionColor, i32 0, i32 0
  %107 = load float, float* %x, align 4
  %cmp140 = fcmp ogt float %107, 0.000000e+00
  br i1 %cmp140, label %if.then141, label %if.end196

if.then141:                                       ; preds = %for.body137
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %transmission, float 1.000000e+00)
  %108 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  %109 = load i32, i32* %i132, align 4
  %conv144 = zext i32 %109 to i64
  %call145 = call dereferenceable(8) %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %108, i64 %conv144)
  %110 = load %class.Sphere*, %class.Sphere** %call145, align 8
  %center146 = getelementptr inbounds %class.Sphere, %class.Sphere* %110, i32 0, i32 0
  %call147 = call { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %center146, %class.Vec3* dereferenceable(12) %phit)
  store { <2 x float>, float } %call147, { <2 x float>, float }* %tmp148, align 8
  %111 = bitcast { <2 x float>, float }* %tmp148 to i8*
  %112 = bitcast %class.Vec3* %lightDirection to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %111, i64 12, i32 4, i1 false)
  %call149 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3IfE9normalizeEv(%class.Vec3* %lightDirection)
  store i32 0, i32* %j, align 4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc175, %if.then141
  %113 = load i32, i32* %j, align 4
  %conv152 = zext i32 %113 to i64
  %114 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  %call153 = call i64 @_ZNKSt6vectorIP6SphereIfESaIS2_EE4sizeEv(%"class.std::vector"* %114)
  %cmp154 = icmp ult i64 %conv152, %call153
  br i1 %cmp154, label %for.body155, label %for.end177

for.body155:                                      ; preds = %for.cond151
  %115 = load i32, i32* %i132, align 4
  %116 = load i32, i32* %j, align 4
  %cmp156 = icmp ne i32 %115, %116
  br i1 %cmp156, label %if.then157, label %if.end174

if.then157:                                       ; preds = %for.body155
  %117 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  %118 = load i32, i32* %j, align 4
  %conv162 = zext i32 %118 to i64
  %call163 = call dereferenceable(8) %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %117, i64 %conv162)
  %119 = load %class.Sphere*, %class.Sphere** %call163, align 8
  %call166 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %nhit, float* dereferenceable(4) %bias)
  store { <2 x float>, float } %call166, { <2 x float>, float }* %tmp167, align 8
  %120 = bitcast { <2 x float>, float }* %tmp167 to i8*
  %121 = bitcast %class.Vec3* %ref.tmp165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %120, i64 12, i32 4, i1 false)
  %call168 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %phit, %class.Vec3* dereferenceable(12) %ref.tmp165)
  store { <2 x float>, float } %call168, { <2 x float>, float }* %tmp169, align 8
  %122 = bitcast { <2 x float>, float }* %tmp169 to i8*
  %123 = bitcast %class.Vec3* %ref.tmp164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %122, i64 12, i32 4, i1 false)
  %call170 = call zeroext i1 @_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_(%class.Sphere* %119, %class.Vec3* dereferenceable(12) %ref.tmp164, %class.Vec3* dereferenceable(12) %lightDirection, float* %t0159, float* %t1161)
  br i1 %call170, label %if.then171, label %if.end173

if.then171:                                       ; preds = %if.then157
  call void @_ZN4Vec3IfEC2Ef(%class.Vec3* %ref.tmp172, float 0.000000e+00)
  %124 = bitcast %class.Vec3* %transmission to i8*
  %125 = bitcast %class.Vec3* %ref.tmp172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %125, i64 12, i32 4, i1 false)
  br label %for.end177

if.end173:                                        ; preds = %if.then157
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %for.body155
  br label %for.inc175

for.inc175:                                       ; preds = %if.end174
  %126 = load i32, i32* %j, align 4
  %inc176 = add i32 %126, 1
  store i32 %inc176, i32* %j, align 4
  br label %for.cond151

for.end177:                                       ; preds = %if.then171, %for.cond151
  %127 = load %class.Sphere*, %class.Sphere** %sphere, align 8
  %surfaceColor179 = getelementptr inbounds %class.Sphere, %class.Sphere* %127, i32 0, i32 3
  %call180 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKS0_(%class.Vec3* %surfaceColor179, %class.Vec3* dereferenceable(12) %transmission)
  store { <2 x float>, float } %call180, { <2 x float>, float }* %tmp182, align 8
  %128 = bitcast { <2 x float>, float }* %tmp182 to i8*
  %129 = bitcast %class.Vec3* %coerce181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %128, i64 12, i32 4, i1 false)
  store float 0.000000e+00, float* %ref.tmp183, align 4
  %call185 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %nhit, %class.Vec3* dereferenceable(12) %lightDirection)
  store float %call185, float* %ref.tmp184, align 4
  %call186 = call dereferenceable(4) float* @_ZSt3maxIfERKT_S2_S2_(float* dereferenceable(4) %ref.tmp183, float* dereferenceable(4) %ref.tmp184)
  %call187 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %coerce181, float* dereferenceable(4) %call186)
  store { <2 x float>, float } %call187, { <2 x float>, float }* %tmp189, align 8
  %130 = bitcast { <2 x float>, float }* %tmp189 to i8*
  %131 = bitcast %class.Vec3* %coerce188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %131, i8* %130, i64 12, i32 4, i1 false)
  %132 = load %"class.std::vector"*, %"class.std::vector"** %spheres.addr, align 8
  %133 = load i32, i32* %i132, align 4
  %conv190 = zext i32 %133 to i64
  %call191 = call dereferenceable(8) %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %132, i64 %conv190)
  %134 = load %class.Sphere*, %class.Sphere** %call191, align 8
  %emissionColor192 = getelementptr inbounds %class.Sphere, %class.Sphere* %134, i32 0, i32 4
  %call193 = call { <2 x float>, float } @_ZNK4Vec3IfEmlERKS0_(%class.Vec3* %coerce188, %class.Vec3* dereferenceable(12) %emissionColor192)
  store { <2 x float>, float } %call193, { <2 x float>, float }* %tmp194, align 8
  %135 = bitcast { <2 x float>, float }* %tmp194 to i8*
  %136 = bitcast %class.Vec3* %ref.tmp178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %135, i64 12, i32 4, i1 false)
  %call195 = call dereferenceable(12) %class.Vec3* @_ZN4Vec3IfEpLERKS0_(%class.Vec3* %surfaceColor, %class.Vec3* dereferenceable(12) %ref.tmp178)
  br label %if.end196

if.end196:                                        ; preds = %for.end177, %for.body137
  br label %for.inc197

for.inc197:                                       ; preds = %if.end196
  %137 = load i32, i32* %i132, align 4
  %inc198 = add i32 %137, 1
  store i32 %inc198, i32* %i132, align 4
  br label %for.cond133

for.end199:                                       ; preds = %for.cond133
  br label %if.end200

if.end200:                                        ; preds = %for.end199, %if.end111
  %138 = load %class.Sphere*, %class.Sphere** %sphere, align 8
  %emissionColor201 = getelementptr inbounds %class.Sphere, %class.Sphere* %138, i32 0, i32 4
  %call202 = call { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %surfaceColor, %class.Vec3* dereferenceable(12) %emissionColor201)
  store { <2 x float>, float } %call202, { <2 x float>, float }* %tmp203, align 8
  %139 = bitcast { <2 x float>, float }* %tmp203 to i8*
  %140 = bitcast %class.Vec3* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %139, i64 12, i32 4, i1 false)
  br label %return

return:                                           ; preds = %if.end200, %if.then12
  %141 = bitcast { <2 x float>, float }* %tmp204 to i8*
  %142 = bitcast %class.Vec3* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 12, i32 4, i1 false)
  %143 = load { <2 x float>, float }, { <2 x float>, float }* %tmp204, align 8
  ret { <2 x float>, float } %143
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dereferenceable(4) float* @_ZSt3minIfERKT_S2_S2_(float* dereferenceable(4) %__a, float* dereferenceable(4) %__b) #10 comdat {
entry:
  %retval = alloca float*, align 8
  %__a.addr = alloca float*, align 8
  %__b.addr = alloca float*, align 8
  store float* %__a, float** %__a.addr, align 8
  store float* %__b, float** %__b.addr, align 8
  %0 = load float*, float** %__b.addr, align 8
  %1 = load float, float* %0, align 4
  %2 = load float*, float** %__a.addr, align 8
  %3 = load float, float* %2, align 4
  %cmp = fcmp olt float %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load float*, float** %__b.addr, align 8
  store float* %4, float** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load float*, float** %__a.addr, align 8
  store float* %5, float** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load float*, float** %retval, align 8
  ret float* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr float @_ZNK4Vec3IfE7length2Ev(%class.Vec3* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Vec3*, align 8
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %0 = load float, float* %x, align 4
  %x2 = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %1 = load float, float* %x2, align 4
  %mul = fmul float %0, %1
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %2 = load float, float* %y, align 4
  %y3 = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %3 = load float, float* %y3, align 4
  %mul4 = fmul float %2, %3
  %add = fadd float %mul, %mul4
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %4 = load float, float* %z, align 4
  %z5 = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %5 = load float, float* %z5, align 4
  %mul6 = fmul float %4, %5
  %add7 = fadd float %add, %mul6
  ret float %add7
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EEixEm(%"class.std::vector"* %this, i64 %__n) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %class.Sphere**, %class.Sphere*** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %class.Sphere*, %class.Sphere** %1, i64 %2
  ret %class.Sphere** %add.ptr
}

; Function Attrs: uwtable
define linkonce_odr zeroext i1 @_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_(%class.Sphere* %this, %class.Vec3* dereferenceable(12) %rayorig, %class.Vec3* dereferenceable(12) %raydir, float* %t0, float* %t1) #0 comdat align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.Sphere*, align 8
  %rayorig.addr = alloca %class.Vec3*, align 8
  %raydir.addr = alloca %class.Vec3*, align 8
  %t0.addr = alloca float*, align 8
  %t1.addr = alloca float*, align 8
  %l = alloca %class.Vec3, align 4
  %tmp = alloca { <2 x float>, float }, align 8
  %tca = alloca float, align 4
  %d2 = alloca float, align 4
  %thc = alloca float, align 4
  store %class.Sphere* %this, %class.Sphere** %this.addr, align 8
  store %class.Vec3* %rayorig, %class.Vec3** %rayorig.addr, align 8
  store %class.Vec3* %raydir, %class.Vec3** %raydir.addr, align 8
  store float* %t0, float** %t0.addr, align 8
  store float* %t1, float** %t1.addr, align 8
  %this1 = load %class.Sphere*, %class.Sphere** %this.addr, align 8
  %center = getelementptr inbounds %class.Sphere, %class.Sphere* %this1, i32 0, i32 0
  %0 = load %class.Vec3*, %class.Vec3** %rayorig.addr, align 8
  %call = call { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %center, %class.Vec3* dereferenceable(12) %0)
  store { <2 x float>, float } %call, { <2 x float>, float }* %tmp, align 8
  %1 = bitcast { <2 x float>, float }* %tmp to i8*
  %2 = bitcast %class.Vec3* %l to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 12, i32 4, i1 false)
  %3 = load %class.Vec3*, %class.Vec3** %raydir.addr, align 8
  %call3 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %l, %class.Vec3* dereferenceable(12) %3)
  store float %call3, float* %tca, align 4
  %4 = load float, float* %tca, align 4
  %cmp = fcmp olt float %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %call5 = call float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %l, %class.Vec3* dereferenceable(12) %l)
  %5 = load float, float* %tca, align 4
  %6 = load float, float* %tca, align 4
  %mul = fmul float %5, %6
  %sub = fsub float %call5, %mul
  store float %sub, float* %d2, align 4
  %7 = load float, float* %d2, align 4
  %radius2 = getelementptr inbounds %class.Sphere, %class.Sphere* %this1, i32 0, i32 2
  %8 = load float, float* %radius2, align 4
  %cmp6 = fcmp ogt float %7, %8
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end8:                                          ; preds = %if.end
  %radius210 = getelementptr inbounds %class.Sphere, %class.Sphere* %this1, i32 0, i32 2
  %9 = load float, float* %radius210, align 4
  %10 = load float, float* %d2, align 4
  %sub11 = fsub float %9, %10
  %conv = fpext float %sub11 to double
  %call12 = call double @sqrt(double %conv) #2
  %conv13 = fptrunc double %call12 to float
  store float %conv13, float* %thc, align 4
  %11 = load float*, float** %t0.addr, align 8
  %cmp14 = icmp ne float* %11, null
  br i1 %cmp14, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end8
  %12 = load float*, float** %t1.addr, align 8
  %cmp15 = icmp ne float* %12, null
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  %13 = load float, float* %tca, align 4
  %14 = load float, float* %thc, align 4
  %sub17 = fsub float %13, %14
  %15 = load float*, float** %t0.addr, align 8
  store float %sub17, float* %15, align 4
  %16 = load float, float* %tca, align 4
  %17 = load float, float* %thc, align 4
  %add = fadd float %16, %17
  %18 = load float*, float** %t1.addr, align 8
  store float %add, float* %18, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true, %if.end8
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end18, %if.then7, %if.then
  %19 = load i1, i1* %retval, align 1
  ret i1 %19
}

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3IfEplERKS0_(%class.Vec3* %this, %class.Vec3* dereferenceable(12) %v) #0 comdat align 2 {
entry:
  %retval = alloca %class.Vec3, align 4
  %this.addr = alloca %class.Vec3*, align 8
  %v.addr = alloca %class.Vec3*, align 8
  %tmp = alloca { <2 x float>, float }, align 8
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  store %class.Vec3* %v, %class.Vec3** %v.addr, align 8
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %0 = load float, float* %x, align 4
  %1 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %x2 = getelementptr inbounds %class.Vec3, %class.Vec3* %1, i32 0, i32 0
  %2 = load float, float* %x2, align 4
  %add = fadd float %0, %2
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %3 = load float, float* %y, align 4
  %4 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %y3 = getelementptr inbounds %class.Vec3, %class.Vec3* %4, i32 0, i32 1
  %5 = load float, float* %y3, align 4
  %add4 = fadd float %3, %5
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %6 = load float, float* %z, align 4
  %7 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %z5 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 2
  %8 = load float, float* %z5, align 4
  %add6 = fadd float %6, %8
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %retval, float %add, float %add4, float %add6)
  %9 = bitcast { <2 x float>, float }* %tmp to i8*
  %10 = bitcast %class.Vec3* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 12, i32 4, i1 false)
  %11 = load { <2 x float>, float }, { <2 x float>, float }* %tmp, align 8
  ret { <2 x float>, float } %11
}

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3IfEmlERKf(%class.Vec3* %this, float* dereferenceable(4) %f) #0 comdat align 2 {
entry:
  %retval = alloca %class.Vec3, align 4
  %this.addr = alloca %class.Vec3*, align 8
  %f.addr = alloca float*, align 8
  %tmp = alloca { <2 x float>, float }, align 8
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  store float* %f, float** %f.addr, align 8
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %0 = load float, float* %x, align 4
  %1 = load float*, float** %f.addr, align 8
  %2 = load float, float* %1, align 4
  %mul = fmul float %0, %2
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %3 = load float, float* %y, align 4
  %4 = load float*, float** %f.addr, align 8
  %5 = load float, float* %4, align 4
  %mul2 = fmul float %3, %5
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %6 = load float, float* %z, align 4
  %7 = load float*, float** %f.addr, align 8
  %8 = load float, float* %7, align 4
  %mul3 = fmul float %6, %8
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %retval, float %mul, float %mul2, float %mul3)
  %9 = bitcast { <2 x float>, float }* %tmp to i8*
  %10 = bitcast %class.Vec3* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 12, i32 4, i1 false)
  %11 = load { <2 x float>, float }, { <2 x float>, float }* %tmp, align 8
  ret { <2 x float>, float } %11
}

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3IfEmiERKS0_(%class.Vec3* %this, %class.Vec3* dereferenceable(12) %v) #0 comdat align 2 {
entry:
  %retval = alloca %class.Vec3, align 4
  %this.addr = alloca %class.Vec3*, align 8
  %v.addr = alloca %class.Vec3*, align 8
  %tmp = alloca { <2 x float>, float }, align 8
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  store %class.Vec3* %v, %class.Vec3** %v.addr, align 8
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %0 = load float, float* %x, align 4
  %1 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %x2 = getelementptr inbounds %class.Vec3, %class.Vec3* %1, i32 0, i32 0
  %2 = load float, float* %x2, align 4
  %sub = fsub float %0, %2
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %3 = load float, float* %y, align 4
  %4 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %y3 = getelementptr inbounds %class.Vec3, %class.Vec3* %4, i32 0, i32 1
  %5 = load float, float* %y3, align 4
  %sub4 = fsub float %3, %5
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %6 = load float, float* %z, align 4
  %7 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %z5 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 2
  %8 = load float, float* %z5, align 4
  %sub6 = fsub float %6, %8
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %retval, float %sub, float %sub4, float %sub6)
  %9 = bitcast { <2 x float>, float }* %tmp to i8*
  %10 = bitcast %class.Vec3* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 12, i32 4, i1 false)
  %11 = load { <2 x float>, float }, { <2 x float>, float }* %tmp, align 8
  ret { <2 x float>, float } %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr float @_ZNK4Vec3IfE3dotERKS0_(%class.Vec3* %this, %class.Vec3* dereferenceable(12) %v) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Vec3*, align 8
  %v.addr = alloca %class.Vec3*, align 8
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  store %class.Vec3* %v, %class.Vec3** %v.addr, align 8
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %0 = load float, float* %x, align 4
  %1 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %x2 = getelementptr inbounds %class.Vec3, %class.Vec3* %1, i32 0, i32 0
  %2 = load float, float* %x2, align 4
  %mul = fmul float %0, %2
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %3 = load float, float* %y, align 4
  %4 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %y3 = getelementptr inbounds %class.Vec3, %class.Vec3* %4, i32 0, i32 1
  %5 = load float, float* %y3, align 4
  %mul4 = fmul float %3, %5
  %add = fadd float %mul, %mul4
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %6 = load float, float* %z, align 4
  %7 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %z5 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 2
  %8 = load float, float* %z5, align 4
  %mul6 = fmul float %6, %8
  %add7 = fadd float %add, %mul6
  ret float %add7
}

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3IfEngEv(%class.Vec3* %this) #0 comdat align 2 {
entry:
  %retval = alloca %class.Vec3, align 4
  %this.addr = alloca %class.Vec3*, align 8
  %tmp = alloca { <2 x float>, float }, align 8
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %0 = load float, float* %x, align 4
  %sub = fsub float -0.000000e+00, %0
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %1 = load float, float* %y, align 4
  %sub2 = fsub float -0.000000e+00, %1
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %2 = load float, float* %z, align 4
  %sub3 = fsub float -0.000000e+00, %2
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %retval, float %sub, float %sub2, float %sub3)
  %3 = bitcast { <2 x float>, float }* %tmp to i8*
  %4 = bitcast %class.Vec3* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 12, i32 4, i1 false)
  %5 = load { <2 x float>, float }, { <2 x float>, float }* %tmp, align 8
  ret { <2 x float>, float } %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr float @_Z3mixIfET_RKS0_S2_S2_(float* dereferenceable(4) %a, float* dereferenceable(4) %b, float* dereferenceable(4) %mix) #6 comdat {
entry:
  %a.addr = alloca float*, align 8
  %b.addr = alloca float*, align 8
  %mix.addr = alloca float*, align 8
  store float* %a, float** %a.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %mix, float** %mix.addr, align 8
  %0 = load float*, float** %b.addr, align 8
  %1 = load float, float* %0, align 4
  %2 = load float*, float** %mix.addr, align 8
  %3 = load float, float* %2, align 4
  %mul = fmul float %1, %3
  %4 = load float*, float** %a.addr, align 8
  %5 = load float, float* %4, align 4
  %6 = load float*, float** %mix.addr, align 8
  %7 = load float, float* %6, align 4
  %sub = fsub float 1.000000e+00, %7
  %mul1 = fmul float %5, %sub
  %add = fadd float %mul, %mul1
  ret float %add
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: uwtable
define linkonce_odr { <2 x float>, float } @_ZNK4Vec3IfEmlERKS0_(%class.Vec3* %this, %class.Vec3* dereferenceable(12) %v) #0 comdat align 2 {
entry:
  %retval = alloca %class.Vec3, align 4
  %this.addr = alloca %class.Vec3*, align 8
  %v.addr = alloca %class.Vec3*, align 8
  %tmp = alloca { <2 x float>, float }, align 8
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  store %class.Vec3* %v, %class.Vec3** %v.addr, align 8
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %0 = load float, float* %x, align 4
  %1 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %x2 = getelementptr inbounds %class.Vec3, %class.Vec3* %1, i32 0, i32 0
  %2 = load float, float* %x2, align 4
  %mul = fmul float %0, %2
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %3 = load float, float* %y, align 4
  %4 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %y3 = getelementptr inbounds %class.Vec3, %class.Vec3* %4, i32 0, i32 1
  %5 = load float, float* %y3, align 4
  %mul4 = fmul float %3, %5
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %6 = load float, float* %z, align 4
  %7 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %z5 = getelementptr inbounds %class.Vec3, %class.Vec3* %7, i32 0, i32 2
  %8 = load float, float* %z5, align 4
  %mul6 = fmul float %6, %8
  call void @_ZN4Vec3IfEC2Efff(%class.Vec3* %retval, float %mul, float %mul4, float %mul6)
  %9 = bitcast { <2 x float>, float }* %tmp to i8*
  %10 = bitcast %class.Vec3* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 12, i32 4, i1 false)
  %11 = load { <2 x float>, float }, { <2 x float>, float }* %tmp, align 8
  ret { <2 x float>, float } %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(12) %class.Vec3* @_ZN4Vec3IfEpLERKS0_(%class.Vec3* %this, %class.Vec3* dereferenceable(12) %v) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Vec3*, align 8
  %v.addr = alloca %class.Vec3*, align 8
  store %class.Vec3* %this, %class.Vec3** %this.addr, align 8
  store %class.Vec3* %v, %class.Vec3** %v.addr, align 8
  %this1 = load %class.Vec3*, %class.Vec3** %this.addr, align 8
  %0 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %x = getelementptr inbounds %class.Vec3, %class.Vec3* %0, i32 0, i32 0
  %1 = load float, float* %x, align 4
  %x2 = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 0
  %2 = load float, float* %x2, align 4
  %add = fadd float %2, %1
  store float %add, float* %x2, align 4
  %3 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %y = getelementptr inbounds %class.Vec3, %class.Vec3* %3, i32 0, i32 1
  %4 = load float, float* %y, align 4
  %y3 = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 1
  %5 = load float, float* %y3, align 4
  %add4 = fadd float %5, %4
  store float %add4, float* %y3, align 4
  %6 = load %class.Vec3*, %class.Vec3** %v.addr, align 8
  %z = getelementptr inbounds %class.Vec3, %class.Vec3* %6, i32 0, i32 2
  %7 = load float, float* %z, align 4
  %z5 = getelementptr inbounds %class.Vec3, %class.Vec3* %this1, i32 0, i32 2
  %8 = load float, float* %z5, align 4
  %add6 = fadd float %8, %7
  store float %add6, float* %z5, align 4
  ret %class.Vec3* %this1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dereferenceable(4) float* @_ZSt3maxIfERKT_S2_S2_(float* dereferenceable(4) %__a, float* dereferenceable(4) %__b) #10 comdat {
entry:
  %retval = alloca float*, align 8
  %__a.addr = alloca float*, align 8
  %__b.addr = alloca float*, align 8
  store float* %__a, float** %__a.addr, align 8
  store float* %__b, float** %__b.addr, align 8
  %0 = load float*, float** %__a.addr, align 8
  %1 = load float, float* %0, align 4
  %2 = load float*, float** %__b.addr, align 8
  %3 = load float, float* %2, align 4
  %cmp = fcmp olt float %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load float*, float** %__b.addr, align 8
  store float* %4, float** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load float*, float** %__a.addr, align 8
  store float* %5, float** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load float*, float** %retval, align 8
  ret float* %6
}

; Function Attrs: inlinehint uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPKP6SphereIfESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator.0"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.0"* dereferenceable(8) %__rhs) #9 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %__lhs, %"class.__gnu_cxx::__normal_iterator.0"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %__rhs, %"class.__gnu_cxx::__normal_iterator.0"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %0)
  %1 = load %class.Sphere**, %class.Sphere*** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %2)
  %3 = load %class.Sphere**, %class.Sphere*** %call1, align 8
  %cmp = icmp eq %class.Sphere** %1, %3
  ret i1 %cmp
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EE5beginEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %class.Sphere**, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %class.Sphere**, %class.Sphere*** %_M_start, align 8
  store %class.Sphere** %1, %class.Sphere*** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.0"* %retval, %class.Sphere*** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %retval, i32 0, i32 0
  %2 = load %class.Sphere**, %class.Sphere*** %coerce.dive, align 8
  ret %class.Sphere** %2
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNKSt6vectorIP6SphereIfESaIS2_EE3endEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.0", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %class.Sphere**, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl", %"struct.std::_Vector_base<Sphere<float> *, std::allocator<Sphere<float> *> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %class.Sphere**, %class.Sphere*** %_M_finish, align 8
  store %class.Sphere** %1, %class.Sphere*** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.0"* %retval, %class.Sphere*** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %retval, i32 0, i32 0
  %2 = load %class.Sphere**, %class.Sphere*** %coerce.dive, align 8
  ret %class.Sphere** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr dereferenceable(8) %class.Sphere*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.0"* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %this, %"class.__gnu_cxx::__normal_iterator.0"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %this1, i32 0, i32 0
  ret %class.Sphere*** %_M_current
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPKP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.0"* %this, %class.Sphere*** dereferenceable(8) %__i) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.0"*, align 8
  %__i.addr = alloca %class.Sphere***, align 8
  store %"class.__gnu_cxx::__normal_iterator.0"* %this, %"class.__gnu_cxx::__normal_iterator.0"** %this.addr, align 8
  store %class.Sphere*** %__i, %class.Sphere**** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.0"*, %"class.__gnu_cxx::__normal_iterator.0"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.0", %"class.__gnu_cxx::__normal_iterator.0"* %this1, i32 0, i32 0
  %0 = load %class.Sphere***, %class.Sphere**** %__i.addr, align 8
  %1 = load %class.Sphere**, %class.Sphere*** %0, align 8
  store %class.Sphere** %1, %class.Sphere*** %_M_current, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr %class.Sphere** @_ZNK9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEmiERKl(%"class.__gnu_cxx::__normal_iterator"* %this, i64* dereferenceable(8) %__n) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__n.addr = alloca i64*, align 8
  %ref.tmp = alloca %class.Sphere**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store i64* %__n, i64** %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %class.Sphere**, %class.Sphere*** %_M_current, align 8
  %1 = load i64*, i64** %__n.addr, align 8
  %2 = load i64, i64* %1, align 8
  %idx.neg = sub i64 0, %2
  %add.ptr = getelementptr inbounds %class.Sphere*, %class.Sphere** %0, i64 %idx.neg
  store %class.Sphere** %add.ptr, %class.Sphere*** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP6SphereIfESt6vectorIS3_SaIS3_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator"* %retval, %class.Sphere*** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %3 = load %class.Sphere**, %class.Sphere*** %coerce.dive, align 8
  ret %class.Sphere** %3
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_raytracer.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { inlinehint uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nounwind }
attributes #12 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone }
attributes #14 = { builtin }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (trunk 263061)"}
!1 = !{i32 10312}
