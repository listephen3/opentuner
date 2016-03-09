	.file	"raytracer.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              # imm = 0x1A0
	movl	$13, %edi
	callq	srand48
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$52, %edi
	callq	_Znwm
	movl	$0, -56(%rbp)
	movl	$-971223040, -52(%rbp)  # imm = 0xFFFFFFFFC61C5000
	movl	$-1046478848, -48(%rbp) # imm = 0xFFFFFFFFC1A00000
	movl	$1176256512, -60(%rbp)  # imm = 0x461C4000
	movl	$1045220557, -72(%rbp)  # imm = 0x3E4CCCCD
	movl	$1045220557, -68(%rbp)  # imm = 0x3E4CCCCD
	movl	$1045220557, -64(%rbp)  # imm = 0x3E4CCCCD
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
	movl	-48(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, (%rax)
	vmovss	-60(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	vmovss	-60(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movl	-64(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-72(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movl	-88(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-96(%rbp), %rcx
	movq	%rcx, 32(%rax)
	vmovss	-80(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	vmovss	-76(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB0_4
# BB#1:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_3
# BB#2:
	movq	-40(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_3:                                # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i
	addq	$8, -24(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.LBB0_5:                                # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit
	movl	$52, %edi
	callq	_Znwm
	movl	$0, -120(%rbp)
	movl	$0, -116(%rbp)
	movl	$-1046478848, -112(%rbp) # imm = 0xFFFFFFFFC1A00000
	movl	$1082130432, -124(%rbp) # imm = 0x40800000
	movl	$1065353216, -136(%rbp) # imm = 0x3F800000
	movl	$1050924810, -132(%rbp) # imm = 0x3EA3D70A
	movl	$1052266988, -128(%rbp) # imm = 0x3EB851EC
	movl	$1065353216, -140(%rbp) # imm = 0x3F800000
	movl	$1056964608, -144(%rbp) # imm = 0x3F000000
	movl	$0, -160(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -152(%rbp)
	movl	-112(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-120(%rbp), %rcx
	movq	%rcx, (%rax)
	vmovss	-124(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	vmovss	-124(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movl	-128(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-136(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movl	-152(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-160(%rbp), %rcx
	movq	%rcx, 32(%rax)
	vmovss	-144(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	vmovss	-140(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB0_9
# BB#6:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_8
# BB#7:
	movq	-104(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_8:                                # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i11
	addq	$8, -24(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	leaq	-104(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.LBB0_10:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit12
	movl	$52, %edi
	callq	_Znwm
	movl	$1084227584, -184(%rbp) # imm = 0x40A00000
	movl	$-1082130432, -180(%rbp) # imm = 0xFFFFFFFFBF800000
	movl	$-1049624576, -176(%rbp) # imm = 0xFFFFFFFFC1700000
	movl	$1073741824, -188(%rbp) # imm = 0x40000000
	movl	$1063675494, -200(%rbp) # imm = 0x3F666666
	movl	$1061326684, -196(%rbp) # imm = 0x3F428F5C
	movl	$1055622431, -192(%rbp) # imm = 0x3EEB851F
	movl	$1065353216, -204(%rbp) # imm = 0x3F800000
	movl	$0, -208(%rbp)
	movl	$0, -224(%rbp)
	movl	$0, -220(%rbp)
	movl	$0, -216(%rbp)
	movl	-176(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-184(%rbp), %rcx
	movq	%rcx, (%rax)
	vmovss	-188(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	vmovss	-188(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movl	-192(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-200(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movl	-216(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-224(%rbp), %rcx
	movq	%rcx, 32(%rax)
	vmovss	-208(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	vmovss	-204(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	%rax, -168(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB0_14
# BB#11:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_13
# BB#12:
	movq	-168(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_13:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i9
	addq	$8, -24(%rbp)
	jmp	.LBB0_15
.LBB0_14:
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	leaq	-168(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.LBB0_15:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit10
	movl	$52, %edi
	callq	_Znwm
	movl	$1084227584, -248(%rbp) # imm = 0x40A00000
	movl	$0, -244(%rbp)
	movl	$-1043857408, -240(%rbp) # imm = 0xFFFFFFFFC1C80000
	movl	$1077936128, -252(%rbp) # imm = 0x40400000
	movl	$1059481190, -264(%rbp) # imm = 0x3F266666
	movl	$1061494456, -260(%rbp) # imm = 0x3F451EB8
	movl	$1064849900, -256(%rbp) # imm = 0x3F7851EC
	movl	$1065353216, -268(%rbp) # imm = 0x3F800000
	movl	$0, -272(%rbp)
	movl	$0, -288(%rbp)
	movl	$0, -284(%rbp)
	movl	$0, -280(%rbp)
	movl	-240(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-248(%rbp), %rcx
	movq	%rcx, (%rax)
	vmovss	-252(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	vmovss	-252(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movl	-256(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-264(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movl	-280(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-288(%rbp), %rcx
	movq	%rcx, 32(%rax)
	vmovss	-272(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	vmovss	-268(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	%rax, -232(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB0_19
# BB#16:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_18
# BB#17:
	movq	-232(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_18:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i7
	addq	$8, -24(%rbp)
	jmp	.LBB0_20
.LBB0_19:
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	leaq	-232(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.LBB0_20:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit8
	movl	$52, %edi
	callq	_Znwm
	movl	$-1062207488, -312(%rbp) # imm = 0xFFFFFFFFC0B00000
	movl	$0, -308(%rbp)
	movl	$-1049624576, -304(%rbp) # imm = 0xFFFFFFFFC1700000
	movl	$1077936128, -316(%rbp) # imm = 0x40400000
	movl	$1063675494, -328(%rbp) # imm = 0x3F666666
	movl	$1063675494, -324(%rbp) # imm = 0x3F666666
	movl	$1063675494, -320(%rbp) # imm = 0x3F666666
	movl	$1065353216, -332(%rbp) # imm = 0x3F800000
	movl	$0, -336(%rbp)
	movl	$0, -352(%rbp)
	movl	$0, -348(%rbp)
	movl	$0, -344(%rbp)
	movl	-304(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-312(%rbp), %rcx
	movq	%rcx, (%rax)
	vmovss	-316(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	vmovss	-316(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movl	-320(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-328(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movl	-344(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-352(%rbp), %rcx
	movq	%rcx, 32(%rax)
	vmovss	-336(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	vmovss	-332(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	%rax, -296(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB0_24
# BB#21:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_23
# BB#22:
	movq	-296(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_23:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i5
	addq	$8, -24(%rbp)
	jmp	.LBB0_25
.LBB0_24:
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	leaq	-296(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.LBB0_25:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit6
	movl	$52, %edi
	callq	_Znwm
	movl	$0, -376(%rbp)
	movl	$1101004800, -372(%rbp) # imm = 0x41A00000
	movl	$-1041235968, -368(%rbp) # imm = 0xFFFFFFFFC1F00000
	movl	$1077936128, -380(%rbp) # imm = 0x40400000
	movl	$0, -392(%rbp)
	movl	$0, -388(%rbp)
	movl	$0, -384(%rbp)
	movl	$0, -396(%rbp)
	movl	$0, -400(%rbp)
	movl	$1077936128, -416(%rbp) # imm = 0x40400000
	movl	$1077936128, -412(%rbp) # imm = 0x40400000
	movl	$1077936128, -408(%rbp) # imm = 0x40400000
	movl	-368(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-376(%rbp), %rcx
	movq	%rcx, (%rax)
	vmovss	-380(%rbp), %xmm0
	vmovss	%xmm0, 12(%rax)
	vmovss	-380(%rbp), %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, 16(%rax)
	movl	-384(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movq	-392(%rbp), %rcx
	movq	%rcx, 20(%rax)
	movl	-408(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movq	-416(%rbp), %rcx
	movq	%rcx, 32(%rax)
	vmovss	-400(%rbp), %xmm0
	vmovss	%xmm0, 44(%rax)
	vmovss	-396(%rbp), %xmm0
	vmovss	%xmm0, 48(%rax)
	movq	%rax, -360(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB0_29
# BB#26:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_28
# BB#27:
	movq	-360(%rbp), %rcx
	movq	%rcx, (%rax)
.LBB0_28:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i3
	addq	$8, -24(%rbp)
	jmp	.LBB0_30
.LBB0_29:
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	leaq	-360(%rbp), %rdx
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.LBB0_30:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit4
	leaq	-32(%rbp), %rdi
	callq	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	movl	%eax, dont_optimize_me(%rip)
	#APP
	#NO_APP
	movl	dont_optimize_me(%rip), %eax
	cmpl	$1272430816, %eax       # imm = 0x4BD7C0E0
	je	.LBB0_32
# BB#31:
	movl	$.Lstr, %edi
	callq	puts
	jmp	.LBB0_32
	.align	16, 0x90
.LBB0_34:                               #   in Loop: Header=BB0_32 Depth=1
	callq	_ZdlPv
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB0_35
# BB#33:                                #   in Loop: Header=BB0_32 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rax), %rdi
	addq	$-8, %rax
	movq	%rax, -24(%rbp)
	testq	%rdi, %rdi
	je	.LBB0_32
	jmp	.LBB0_34
.LBB0_35:
	movq	-32(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_37
# BB#36:
	callq	_ZdlPv
.LBB0_37:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev.exit2
	xorl	%eax, %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1065353216              # float 1
.LCPI1_1:
	.long	1132396544              # float 255
.LCPI1_9:
	.long	0                       # float 0
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_2:
	.quad	4607182418800017408     # double 1
.LCPI1_6:
	.quad	-4616189618054758400    # double -1
.LCPI1_7:
	.quad	4598498563473801216     # double 0.26794919371604919
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_3:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI1_4:
	.quad	4564848582410108928     # double 1.562500e-03
	.quad	4566950262379380736     # double 2.083333e-03
.LCPI1_5:
	.quad	4611686018427387904     # double 2.000000e+00
	.quad	4611686018427387904     # double 2.000000e+00
.LCPI1_8:
	.quad	4608683618854764544     # double 1.333333e+00
	.quad	4598498563473801216     # double 2.679492e-01
	.section	.text._Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,"axG",@progbits,_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,comdat
	.weak	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.align	16, 0x90
	.type	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,@function
_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE: # @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$3686400, %edi          # imm = 0x384000
	callq	_Znam
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	addq	$3686400, %rdx          # imm = 0x384000
	movq	%rax, %rcx
	.align	16, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	$0, (%rcx)
	movl	$0, 8(%rcx)
	addq	$12, %rcx
	cmpq	%rdx, %rcx
	jne	.LBB1_1
# BB#2:
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm0, -128(%rbp)       # 16-byte Spill
	vmovsd	.LCPI1_2(%rip), %xmm2
	leaq	-56(%rbp), %r12
	leaq	-76(%rbp), %r13
	movq	-144(%rbp), %r14        # 8-byte Reload
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=1
	vmovaps	-128(%rbp), %xmm0       # 16-byte Reload
	vaddsd	%xmm2, %xmm0, %xmm0
	vmovapd	%xmm0, -128(%rbp)       # 16-byte Spill
	movl	-132(%rbp), %eax        # 4-byte Reload
	incl	%eax
.LBB1_3:                                # %.loopexit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	cmpl	$480, %eax              # imm = 0x1E0
	jae	.LBB1_12
# BB#4:                                 #   in Loop: Header=BB1_3 Depth=1
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	$-1, %r15d
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_10:                               # %_ZN4Vec3IfE9normalizeEv.exit
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -76(%rbp)
	leaq	-72(%rbp), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovsd	.LCPI1_2(%rip), %xmm2
	vmovq	%xmm0, (%r14)
	vmovss	%xmm1, 8(%r14)
	vmovaps	-112(%rbp), %xmm0       # 16-byte Reload
	vaddsd	%xmm2, %xmm0, %xmm0
	addq	$12, %r14
.LBB1_5:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	%r15d
	cmpl	$639, %r15d             # imm = 0x27F
	ja	.LBB1_11
# BB#6:                                 #   in Loop: Header=BB1_5 Depth=2
	vmovapd	%xmm0, -112(%rbp)       # 16-byte Spill
	vunpcklpd	-128(%rbp), %xmm0, %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0]
	vaddpd	.LCPI1_3(%rip), %xmm0, %xmm0
	vmulpd	.LCPI1_4(%rip), %xmm0, %xmm0
	vmulpd	.LCPI1_5(%rip), %xmm0, %xmm0
	vunpckhpd	%xmm0, %xmm0, %xmm1 # xmm1 = xmm0[1,1]
	vaddsd	.LCPI1_6(%rip), %xmm0, %xmm0
	vmulsd	.LCPI1_7(%rip), %xmm0, %xmm0
	vsubsd	%xmm1, %xmm2, %xmm1
	vunpcklpd	%xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm1[0]
	vmulpd	.LCPI1_8(%rip), %xmm0, %xmm0
	vcvtpd2ps	%xmm0, %xmm0
	vmovq	%xmm0, -56(%rbp)
	movl	$-1082130432, -48(%rbp) # imm = 0xFFFFFFFFBF800000
	vmovq	-56(%rbp), %xmm0
	vmulps	%xmm0, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	.LCPI1_0(%rip), %xmm0, %xmm0
	vucomiss	.LCPI1_9, %xmm0
	jbe	.LBB1_10
# BB#7:                                 #   in Loop: Header=BB1_5 Depth=2
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB1_9
# BB#8:                                 # %call.sqrt.i
                                        #   in Loop: Header=BB1_5 Depth=2
	vmovaps	%xmm1, %xmm0
	callq	sqrt
	vmovsd	.LCPI1_2(%rip), %xmm2
.LBB1_9:                                # %.split.i
                                        #   in Loop: Header=BB1_5 Depth=2
	vdivsd	%xmm0, %xmm2, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-56(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -56(%rbp)
	vmulss	-52(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -52(%rbp)
	vmulss	-48(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
	jmp	.LBB1_10
.LBB1_12:                               # %.preheader
	movq	-144(%rbp), %rax        # 8-byte Reload
	leaq	8(%rax), %rdi
	xorl	%ebx, %ebx
	movl	$-1, %eax
	vmovss	.LCPI1_1(%rip), %xmm0
	leaq	-88(%rbp), %r8
	leaq	-84(%rbp), %r9
	leaq	-80(%rbp), %rsi
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_22:                               # %select.end26
                                        #   in Loop: Header=BB1_13 Depth=1
	vmulss	(%rdi), %xmm0, %xmm1
	vcvttss2si	%xmm1, %rdx
	addl	%edx, %ebx
	movq	%rcx, %rdi
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	incl	%eax
	cmpl	$307199, %eax           # imm = 0x4AFFF
	ja	.LBB1_23
# BB#14:                                # %_ZSt3minIfERKT_S2_S2_.exit7
                                        #   in Loop: Header=BB1_13 Depth=1
	leaq	12(%rdi), %rcx
	imull	$31, %ebx, %ebx
	movl	$1065353216, -80(%rbp)  # imm = 0x3F800000
	vmovss	.LCPI1_0(%rip), %xmm1
	vucomiss	-8(%rdi), %xmm1
	jbe	.LBB1_16
# BB#15:                                #   in Loop: Header=BB1_13 Depth=1
	leaq	-8(%rdi), %rdx
	jmp	.LBB1_17
	.align	16, 0x90
.LBB1_16:                               # %select.mid
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	%rsi, %rdx
.LBB1_17:                               # %select.end
                                        #   in Loop: Header=BB1_13 Depth=1
	vmulss	(%rdx), %xmm0, %xmm1
	vcvttss2si	%xmm1, %rdx
	addl	%edx, %ebx
	imull	$31, %ebx, %ebx
	movl	$1065353216, -84(%rbp)  # imm = 0x3F800000
	vmovss	.LCPI1_0(%rip), %xmm1
	vucomiss	-4(%rdi), %xmm1
	jbe	.LBB1_19
# BB#18:                                #   in Loop: Header=BB1_13 Depth=1
	leaq	-4(%rdi), %rdx
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_19:                               # %select.mid25
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	%r9, %rdx
.LBB1_20:                               # %select.end24
                                        #   in Loop: Header=BB1_13 Depth=1
	vmulss	(%rdx), %xmm0, %xmm1
	vcvttss2si	%xmm1, %rdx
	addl	%edx, %ebx
	imull	$31, %ebx, %ebx
	movl	$1065353216, -88(%rbp)  # imm = 0x3F800000
	vmovss	.LCPI1_0(%rip), %xmm1
	vucomiss	(%rdi), %xmm1
	ja	.LBB1_22
# BB#21:                                # %select.mid27
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	%r8, %rdi
	jmp	.LBB1_22
.LBB1_23:
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	_ZdaPv
	movl	%ebx, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp17:
	.size	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE, .Ltmp17-_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_4:
	.quad	4613937818241073152     # double 3
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_1:
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
.LCPI2_2:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.zero	4
	.zero	4
.LCPI2_9:
	.long	1065353216              # float 1
	.long	2147483648              # float -0
	.zero	4
	.zero	4
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_3:
	.long	1065353216              # float 1
.LCPI2_5:
	.long	1063675494              # float 0.899999976
.LCPI2_6:
	.long	1036831949              # float 0.100000001
.LCPI2_7:
	.long	1066192077              # float 1.10000002
.LCPI2_8:
	.long	1063828014              # float 0.909090876
.LCPI2_10:
	.long	1073741824              # float 2
.LCPI2_11:
	.long	0                       # float 0
	.section	.text._Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,"axG",@progbits,_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,comdat
	.weak	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.align	16, 0x90
	.type	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,@function
_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi: # @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$2139095040, -92(%rbp)  # imm = 0x7F800000
	xorl	%ebx, %ebx
	leaq	-100(%rbp), %r13
	xorl	%eax, %eax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	incl	%ebx
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	8(%r15), %rax
	subq	(%r15), %rax
	sarq	$3, %rax
	cmpq	%rax, %rbx
	jae	.LBB2_9
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	$2139095040, -96(%rbp)  # imm = 0x7F800000
	movl	$2139095040, -100(%rbp) # imm = 0x7F800000
	movq	(%r15), %rax
	movq	(%rax,%rbx,8), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	leaq	-96(%rbp), %rcx
	movq	%r13, %r8
	callq	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	testb	%al, %al
	je	.LBB2_8
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	-96(%rbp), %xmm0
	jbe	.LBB2_4
# BB#5:                                 #   in Loop: Header=BB2_1 Depth=1
	vmovss	-100(%rbp), %xmm0
	vmovss	%xmm0, -96(%rbp)
	jmp	.LBB2_6
	.align	16, 0x90
.LBB2_4:                                # %._crit_edge
                                        #   in Loop: Header=BB2_1 Depth=1
	vmovss	-96(%rbp), %xmm0
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	vmovss	-92(%rbp), %xmm1
	vucomiss	%xmm0, %xmm1
	jbe	.LBB2_8
# BB#7:                                 #   in Loop: Header=BB2_1 Depth=1
	vmovss	-96(%rbp), %xmm0
	vmovss	%xmm0, -92(%rbp)
	movq	(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_9:
	movq	-568(%rbp), %r13        # 8-byte Reload
	testq	%r13, %r13
	je	.LBB2_10
# BB#11:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovq	%xmm0, -112(%rbp)
	movl	$0, -104(%rbp)
	vmovss	-92(%rbp), %xmm0
	vmovq	(%r14), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	8(%r14), %xmm0, %xmm0
	movq	%r14, %rbx
	vmovq	%xmm1, -56(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	vmovss	%xmm0, -136(%rbp)
	vmovq	(%r12), %xmm0
	vmovq	-144(%rbp), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	vmovss	8(%r12), %xmm1
	vaddss	-136(%rbp), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	vmovss	%xmm1, -120(%rbp)
	vmovq	-128(%rbp), %xmm0
	vmovq	(%r13), %xmm1
	vsubps	%xmm1, %xmm0, %xmm0
	vmovss	-120(%rbp), %xmm1
	vsubss	8(%r13), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)
	vmovss	%xmm1, -152(%rbp)
	vmovq	-160(%rbp), %xmm0
	vmulps	%xmm0, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm2        # xmm2 = xmm0[1,0,0,0]
	vaddss	%xmm2, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vpxor	%xmm2, %xmm2, %xmm2
	vucomiss	%xmm2, %xmm0
	jbe	.LBB2_15
# BB#12:
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_14
# BB#13:                                # %call.sqrt.i74
	vmovaps	%xmm1, %xmm0
	callq	sqrt
.LBB2_14:                               # %.split.i75
	vmovsd	.LCPI2_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-160(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -160(%rbp)
	vmulss	-156(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -156(%rbp)
	vmulss	-152(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -152(%rbp)
	vpxor	%xmm2, %xmm2, %xmm2
.LBB2_15:                               # %_ZN4Vec3IfE9normalizeEv.exit76
	movl	$953267991, -164(%rbp)  # imm = 0x38D1B717
	vmovq	(%rbx), %xmm0
	vmovq	-160(%rbp), %xmm1
	vmulps	%xmm1, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	8(%rbx), %xmm1
	movq	%rbx, %rcx
	vmulss	-152(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm2, %xmm0
	jbe	.LBB2_16
# BB#17:
	vmovq	-160(%rbp), %xmm0
	vxorps	.LCPI2_1(%rip), %xmm0, %xmm0
	vmovss	-152(%rbp), %xmm1
	vxorps	.LCPI2_1(%rip), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)
	vmovss	%xmm1, -152(%rbp)
	movb	$1, %r14b
	jmp	.LBB2_18
.LBB2_10:
	movl	$1073741824, -88(%rbp)  # imm = 0x40000000
	movl	$1073741824, -84(%rbp)  # imm = 0x40000000
	movl	$1073741824, -80(%rbp)  # imm = 0x40000000
	vmovss	.LCPI2_10(%rip), %xmm1
	jmp	.LBB2_56
.LBB2_16:
	xorl	%r14d, %r14d
.LBB2_18:
	movq	-576(%rbp), %r12        # 8-byte Reload
	vmovss	44(%r13), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm1
	ja	.LBB2_38
# BB#19:
	vmovss	48(%r13), %xmm1
	vucomiss	%xmm0, %xmm1
	jbe	.LBB2_20
.LBB2_38:
	cmpl	$4, (%r12)
	jg	.LBB2_20
# BB#39:
	movq	%rcx, %rbx
	vmovq	(%rbx), %xmm0
	vmovq	-160(%rbp), %xmm1
	vmulps	%xmm1, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	8(%rbx), %xmm1
	vmulss	-152(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	.LCPI2_3(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	.LCPI2_4(%rip), %xmm1
	callq	pow
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	.LCPI2_5(%rip), %xmm0, %xmm0
	vaddss	.LCPI2_6(%rip), %xmm0, %xmm0
	vmovss	%xmm0, -168(%rbp)
	movl	$1073741824, -204(%rbp) # imm = 0x40000000
	vmovss	-204(%rbp), %xmm0
	vmovq	-160(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	-152(%rbp), %xmm0, %xmm0
	vmovq	%xmm1, -56(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)
	vmovss	%xmm0, -208(%rbp)
	vmovq	(%rbx), %xmm0
	vmovq	-160(%rbp), %xmm1
	vmulps	%xmm1, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	8(%rbx), %xmm1
	vmulss	-152(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, -220(%rbp)
	vmovss	-220(%rbp), %xmm0
	vmovq	-216(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	-208(%rbp), %xmm0, %xmm0
	vmovq	%xmm1, -56(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)
	vmovss	%xmm0, -192(%rbp)
	vmovq	(%rbx), %xmm0
	vmovq	-200(%rbp), %xmm1
	vsubps	%xmm1, %xmm0, %xmm0
	vmovss	8(%rbx), %xmm1
	vsubss	-192(%rbp), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)
	vmovss	%xmm1, -176(%rbp)
	vmovq	-184(%rbp), %xmm0
	vmulps	%xmm0, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm2        # xmm2 = xmm0[1,0,0,0]
	vaddss	%xmm2, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	.LBB2_43
# BB#40:
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_42
# BB#41:                                # %call.sqrt.i77
	vmovaps	%xmm1, %xmm0
	callq	sqrt
.LBB2_42:                               # %.split.i78
	vmovsd	.LCPI2_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-184(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -184(%rbp)
	vmulss	-180(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -180(%rbp)
	vmulss	-176(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -176(%rbp)
.LBB2_43:                               # %_ZN4Vec3IfE9normalizeEv.exit79
	vmovss	-164(%rbp), %xmm0
	vmovq	-160(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	-152(%rbp), %xmm0, %xmm0
	vmovq	%xmm1, -56(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)
	vmovss	%xmm0, -256(%rbp)
	vmovq	-128(%rbp), %xmm0
	vmovq	-264(%rbp), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	vmovss	-120(%rbp), %xmm1
	vaddss	-256(%rbp), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)
	vmovss	%xmm1, -240(%rbp)
	movl	(%r12), %eax
	incl	%eax
	movl	%eax, -268(%rbp)
	leaq	-248(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	leaq	-268(%rbp), %rcx
	movq	%r15, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovq	%xmm0, -232(%rbp)
	vmovss	%xmm1, -224(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovq	%xmm0, -280(%rbp)
	movl	$0, -272(%rbp)
	vmovss	44(%r13), %xmm0
	vucomiss	.LCPI2_11, %xmm0
	jne	.LBB2_44
	jnp	.LBB2_54
.LBB2_44:
	testb	%r14b, %r14b
	jne	.LBB2_45
# BB#46:
	vmovss	.LCPI2_8(%rip), %xmm0
	jmp	.LBB2_47
.LBB2_20:                               # %.preheader
	xorl	%ebx, %ebx
	vxorps	%xmm3, %xmm3, %xmm3
	leaq	-544(%rbp), %r12
	jmp	.LBB2_21
	.align	16, 0x90
.LBB2_37:                               #   in Loop: Header=BB2_21 Depth=1
	incl	%ebx
.LBB2_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_27 Depth 2
	movl	%ebx, %ebx
	movq	8(%r15), %rax
	subq	(%r15), %rax
	sarq	$3, %rax
	cmpq	%rax, %rbx
	jae	.LBB2_55
# BB#22:                                #   in Loop: Header=BB2_21 Depth=1
	movq	(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	vmovss	32(%rax), %xmm0
	vucomiss	%xmm3, %xmm0
	jbe	.LBB2_37
# BB#23:                                #   in Loop: Header=BB2_21 Depth=1
	movq	%r13, %r14
	movq	.LCPI2_2(%rip), %rax
	movq	%rax, -440(%rbp)
	movl	$1065353216, -432(%rbp) # imm = 0x3F800000
	movq	(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	vmovq	(%rax), %xmm0
	vmovq	-128(%rbp), %xmm1
	vsubps	%xmm1, %xmm0, %xmm0
	vmovss	8(%rax), %xmm1
	vsubss	-120(%rbp), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -456(%rbp)
	vmovss	%xmm1, -448(%rbp)
	vmovq	-456(%rbp), %xmm0
	vmulps	%xmm0, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm2        # xmm2 = xmm0[1,0,0,0]
	vaddss	%xmm2, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	xorl	%r13d, %r13d
	vucomiss	%xmm3, %xmm0
	jbe	.LBB2_27
# BB#24:                                #   in Loop: Header=BB2_21 Depth=1
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_26
# BB#25:                                # %call.sqrt.i69
                                        #   in Loop: Header=BB2_21 Depth=1
	vmovaps	%xmm1, %xmm0
	callq	sqrt
	vxorps	%xmm3, %xmm3, %xmm3
.LBB2_26:                               # %.split.i70
                                        #   in Loop: Header=BB2_21 Depth=1
	vmovsd	.LCPI2_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-456(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -456(%rbp)
	vmulss	-452(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -452(%rbp)
	vmulss	-448(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -448(%rbp)
	jmp	.LBB2_27
	.align	16, 0x90
.LBB2_57:                               #   in Loop: Header=BB2_27 Depth=2
	incl	%r13d
.LBB2_27:                               # %_ZN4Vec3IfE9normalizeEv.exit
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %r13d
	movq	8(%r15), %rax
	subq	(%r15), %rax
	sarq	$3, %rax
	cmpq	%rax, %r13
	jae	.LBB2_34
# BB#28:                                #   in Loop: Header=BB2_27 Depth=2
	cmpl	%r13d, %ebx
	je	.LBB2_57
# BB#29:                                #   in Loop: Header=BB2_27 Depth=2
	movq	(%r15), %rax
	movq	(%rax,%r13,8), %rax
	vmovss	-164(%rbp), %xmm0
	vmovq	-160(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	-152(%rbp), %xmm0, %xmm0
	vmovq	%xmm1, -56(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -488(%rbp)
	vmovss	%xmm0, -480(%rbp)
	vmovq	-128(%rbp), %xmm0
	vmovq	-488(%rbp), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	vmovss	-120(%rbp), %xmm1
	vaddss	-480(%rbp), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -472(%rbp)
	vmovss	%xmm1, -464(%rbp)
	vmovq	(%rax), %xmm0
	vmovq	-472(%rbp), %xmm1
	vsubps	%xmm1, %xmm0, %xmm0
	vmovss	8(%rax), %xmm1
	vsubss	-464(%rbp), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	vmovss	%xmm1, -64(%rbp)
	vmovq	-72(%rbp), %xmm0
	vmovq	-456(%rbp), %xmm2
	vmulps	%xmm2, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm2        # xmm2 = xmm0[1,0,0,0]
	vaddss	%xmm2, %xmm0, %xmm0
	vmulss	-448(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm3
	ja	.LBB2_57
# BB#30:                                #   in Loop: Header=BB2_27 Depth=2
	vmovq	-72(%rbp), %xmm1
	vmulps	%xmm1, %xmm1, %xmm1
	vpshufd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0,0,0]
	vaddss	%xmm2, %xmm1, %xmm1
	vmovss	-64(%rbp), %xmm2
	vmulss	%xmm2, %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vsubss	%xmm0, %xmm1, %xmm0
	vucomiss	16(%rax), %xmm0
	ja	.LBB2_57
# BB#31:                                #   in Loop: Header=BB2_21 Depth=1
	vmovss	16(%rax), %xmm1
	vsubss	%xmm0, %xmm1, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vsqrtsd	%xmm0, %xmm0, %xmm1
	vucomisd	%xmm1, %xmm1
	jnp	.LBB2_33
# BB#32:                                # %call.sqrt.i
                                        #   in Loop: Header=BB2_21 Depth=1
	callq	sqrt
.LBB2_33:                               #   in Loop: Header=BB2_21 Depth=1
	movl	$0, -504(%rbp)
	movl	$0, -500(%rbp)
	movl	$0, -496(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -440(%rbp)
	movl	$0, -432(%rbp)
	vxorps	%xmm3, %xmm3, %xmm3
	.align	16, 0x90
.LBB2_34:                               # %.loopexit
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	%r14, %r13
	vmovq	20(%r13), %xmm0
	vmovq	-440(%rbp), %xmm1
	vmulps	%xmm1, %xmm0, %xmm0
	vmovss	28(%r13), %xmm1
	vmulss	-432(%rbp), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -536(%rbp)
	vmovss	%xmm1, -528(%rbp)
	movl	$0, -540(%rbp)
	vmovq	-160(%rbp), %xmm0
	vmovq	-456(%rbp), %xmm1
	vmulps	%xmm1, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	-152(%rbp), %xmm1
	vmulss	-448(%rbp), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, -544(%rbp)
	vucomiss	-540(%rbp), %xmm0
	movq	%r12, %rax
	ja	.LBB2_36
# BB#35:                                # %select.mid
                                        #   in Loop: Header=BB2_21 Depth=1
	leaq	-540(%rbp), %rax
.LBB2_36:                               # %select.end
                                        #   in Loop: Header=BB2_21 Depth=1
	vmovss	(%rax), %xmm0
	vmovq	-536(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	-528(%rbp), %xmm0, %xmm0
	vmovq	%xmm1, -56(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -560(%rbp)
	vmovss	%xmm0, -552(%rbp)
	movq	(%r15), %rax
	movq	(%rax,%rbx,8), %rax
	vmovq	-560(%rbp), %xmm0
	vmovq	32(%rax), %xmm1
	vmulps	%xmm1, %xmm0, %xmm0
	vmovss	-552(%rbp), %xmm1
	vmulss	40(%rax), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -520(%rbp)
	vmovss	%xmm1, -512(%rbp)
	vmovss	-112(%rbp), %xmm0
	vaddss	-520(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -112(%rbp)
	vmovss	-108(%rbp), %xmm0
	vaddss	-516(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -108(%rbp)
	vmovss	-104(%rbp), %xmm0
	vaddss	-512(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -104(%rbp)
	jmp	.LBB2_37
.LBB2_45:
	vmovss	.LCPI2_7(%rip), %xmm0
.LBB2_47:
	vmovss	%xmm0, -284(%rbp)
	vmovq	-160(%rbp), %xmm1
	vmovq	(%rbx), %xmm2
	vmulps	%xmm2, %xmm1, %xmm1
	vpshufd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0,0,0]
	vaddss	%xmm2, %xmm1, %xmm1
	vmovss	-152(%rbp), %xmm2
	vmulss	8(%rbx), %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	-284(%rbp), %xmm2
	vmovq	(%rbx), %xmm3
	vpshufd	$0, %xmm2, %xmm4        # xmm4 = xmm2[0,0,0,0]
	vmulps	%xmm4, %xmm3, %xmm3
	vmulss	8(%rbx), %xmm2, %xmm2
	vmovq	%xmm3, -56(%rbp)
	vmovss	%xmm2, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)
	vmovss	%xmm2, -304(%rbp)
	vinsertps	$16, -284(%rbp), %xmm1, %xmm2
	vinsertps	$16, %xmm1, %xmm1, %xmm1 # xmm1 = xmm1[0,0,2,3]
	vmulps	%xmm2, %xmm1, %xmm1
	vmovaps	.LCPI2_9(%rip), %xmm2
	vsubps	%xmm1, %xmm2, %xmm1
	vpshufd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0,0,0]
	vmulss	%xmm1, %xmm0, %xmm0
	vmovss	.LCPI2_3(%rip), %xmm1
	vsubss	%xmm0, %xmm1, %xmm0
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_49
# BB#48:                                # %call.sqrt
	vmovaps	%xmm1, %xmm0
	vmovsd	%xmm2, -568(%rbp)       # 8-byte Spill
	callq	sqrt
	vmovsd	-568(%rbp), %xmm2       # 8-byte Reload
.LBB2_49:                               # %.split
	vsubsd	%xmm0, %xmm2, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -332(%rbp)
	vmovss	-332(%rbp), %xmm0
	vmovq	-160(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	-152(%rbp), %xmm0, %xmm0
	vmovq	%xmm1, -56(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)
	vmovss	%xmm0, -320(%rbp)
	vmovq	-312(%rbp), %xmm0
	vmovq	-328(%rbp), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	vmovss	-304(%rbp), %xmm1
	vaddss	-320(%rbp), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)
	vmovss	%xmm1, -288(%rbp)
	vmovq	-296(%rbp), %xmm0
	vmulps	%xmm0, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm2        # xmm2 = xmm0[1,0,0,0]
	vaddss	%xmm2, %xmm0, %xmm0
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	.LBB2_53
# BB#50:
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_52
# BB#51:                                # %call.sqrt.i71
	vmovaps	%xmm1, %xmm0
	callq	sqrt
.LBB2_52:                               # %.split.i72
	vmovsd	.LCPI2_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-296(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -296(%rbp)
	vmulss	-292(%rbp), %xmm0, %xmm1
	vmovss	%xmm1, -292(%rbp)
	vmulss	-288(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -288(%rbp)
.LBB2_53:                               # %_ZN4Vec3IfE9normalizeEv.exit73
	vmovss	-164(%rbp), %xmm0
	vmovq	-160(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	-152(%rbp), %xmm0, %xmm0
	vmovq	%xmm1, -56(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)
	vmovss	%xmm0, -352(%rbp)
	vmovq	-128(%rbp), %xmm0
	vmovq	-360(%rbp), %xmm1
	vsubps	%xmm1, %xmm0, %xmm0
	vmovss	-120(%rbp), %xmm1
	vsubss	-352(%rbp), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -344(%rbp)
	vmovss	%xmm1, -336(%rbp)
	movl	(%r12), %eax
	incl	%eax
	movl	%eax, -364(%rbp)
	leaq	-344(%rbp), %rdi
	leaq	-296(%rbp), %rsi
	leaq	-364(%rbp), %rcx
	movq	%r15, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovq	%xmm0, -280(%rbp)
	vmovss	%xmm1, -272(%rbp)
.LBB2_54:
	vmovss	-168(%rbp), %xmm0
	vmovq	-232(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	-224(%rbp), %xmm0, %xmm0
	vmovq	%xmm1, -56(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -376(%rbp)
	vmovss	%xmm0, -368(%rbp)
	vmovss	.LCPI2_3(%rip), %xmm0
	vsubss	-168(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -396(%rbp)
	vmovss	-396(%rbp), %xmm0
	vmovq	-280(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	-272(%rbp), %xmm0, %xmm0
	vmovq	%xmm1, -56(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)
	vmovss	%xmm0, -400(%rbp)
	vmovss	44(%r13), %xmm0
	vmovq	-408(%rbp), %xmm1
	vpshufd	$0, %xmm0, %xmm2        # xmm2 = xmm0[0,0,0,0]
	vmulps	%xmm2, %xmm1, %xmm1
	vmulss	-400(%rbp), %xmm0, %xmm0
	vmovq	%xmm1, -56(%rbp)
	vmovss	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -392(%rbp)
	vmovss	%xmm0, -384(%rbp)
	vmovq	-376(%rbp), %xmm0
	vmovq	-392(%rbp), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	vmovss	-368(%rbp), %xmm1
	vaddss	-384(%rbp), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)
	vmovss	%xmm1, -416(%rbp)
	vmovq	-424(%rbp), %xmm0
	vmovq	20(%r13), %xmm1
	vmulps	%xmm1, %xmm0, %xmm0
	vmovss	-416(%rbp), %xmm1
	vmulss	28(%r13), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)
	vmovss	%xmm1, -104(%rbp)
.LBB2_55:
	vmovq	-112(%rbp), %xmm0
	vmovq	32(%r13), %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	vmovss	-104(%rbp), %xmm1
	vaddss	40(%r13), %xmm1, %xmm1
	vmovq	%xmm0, -56(%rbp)
	vmovss	%xmm1, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	vmovss	%xmm1, -80(%rbp)
.LBB2_56:
	vmovq	-88(%rbp), %xmm0
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp29:
	.size	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi, .Ltmp29-_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_endproc

	.section	.text._ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,"axG",@progbits,_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,comdat
	.weak	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.align	16, 0x90
	.type	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_,@function
_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_: # @_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp36:
	.cfi_offset %rbx, -32
.Ltmp37:
	.cfi_offset %r14, -24
	movq	%r8, %r14
	movq	%rcx, %rbx
	vmovq	(%rdi), %xmm0
	vmovq	(%rsi), %xmm1
	vsubps	%xmm1, %xmm0, %xmm0
	vmovss	8(%rdi), %xmm1
	vsubss	8(%rsi), %xmm1, %xmm1
	vmovq	%xmm0, -32(%rbp)
	vmovss	%xmm1, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	vmovss	%xmm1, -40(%rbp)
	vmovq	-48(%rbp), %xmm0
	vmovq	(%rdx), %xmm2
	vmulps	%xmm2, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm2        # xmm2 = xmm0[1,0,0,0]
	vaddss	%xmm2, %xmm0, %xmm0
	vmulss	8(%rdx), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm2
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	%xmm2, %xmm0
	jbe	.LBB3_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB3_9
.LBB3_2:
	vmovq	-48(%rbp), %xmm0
	vmulps	%xmm0, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	-40(%rbp), %xmm1
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm2, %xmm2, %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vucomiss	16(%rdi), %xmm0
	jbe	.LBB3_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB3_9
.LBB3_4:
	vmovss	16(%rdi), %xmm1
	vsubss	%xmm0, %xmm1, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB3_6
# BB#5:                                 # %call.sqrt
	vmovaps	%xmm1, %xmm0
	vmovss	%xmm2, -52(%rbp)        # 4-byte Spill
	callq	sqrt
	vmovss	-52(%rbp), %xmm2        # 4-byte Reload
.LBB3_6:                                # %.split
	movb	$1, %al
	testq	%rbx, %rbx
	je	.LBB3_9
# BB#7:                                 # %.split
	testq	%r14, %r14
	je	.LBB3_9
# BB#8:
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vsubss	%xmm0, %xmm2, %xmm1
	vmovss	%xmm1, (%rbx)
	vaddss	%xmm0, %xmm2, %xmm0
	vmovss	%xmm0, (%r14)
.LBB3_9:
                                        # kill: AL<def> AL<kill> EAX<kill>
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp38:
	.size	_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_, .Ltmp38-_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_: # @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rdi, %r13
	movq	%rsi, -64(%rbp)
	movq	8(%r13), %rax
	cmpq	16(%r13), %rax
	je	.LBB4_6
# BB#1:
	movq	8(%r13), %rax
	testq	%rax, %rax
	je	.LBB4_3
# BB#2:
	movq	-8(%rax), %rcx
	movq	%rcx, (%rax)
.LBB4_3:                                # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit
	movq	8(%r13), %rdi
	leaq	8(%rdi), %rax
	movq	%rax, 8(%r13)
	movq	(%r14), %rbx
	movq	-64(%rbp), %rsi
	leaq	-8(%rdi), %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB4_5
# BB#4:
	shlq	$3, %rax
	subq	%rax, %rdi
	callq	memmove
.LBB4_5:                                # %_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_.exit
	movq	-64(%rbp), %rax
	movq	%rbx, (%rax)
	jmp	.LBB4_21
.LBB4_6:                                # %_ZSt3maxImERKT_S2_S2_.exit.i
	movq	$1, -48(%rbp)
	movq	8(%r13), %rax
	subq	(%r13), %rax
	sarq	$3, %rax
	movq	%rax, -56(%rbp)
	cmpq	-48(%rbp), %rax
	jae	.LBB4_8
# BB#7:
	leaq	-48(%rbp), %rcx
	jmp	.LBB4_9
.LBB4_8:                                # %select.mid
	leaq	-56(%rbp), %rcx
.LBB4_9:                                # %select.end
	addq	(%rcx), %rax
	movq	8(%r13), %rcx
	subq	(%r13), %rcx
	sarq	$3, %rcx
	cmpq	%rcx, %rax
	setb	%cl
	movq	%rax, %rdx
	shrq	$61, %rdx
	setne	%dl
	orb	%cl, %dl
	movabsq	$2305843009213693951, %r12 # imm = 0x1FFFFFFFFFFFFFFF
	cmoveq	%rax, %r12
	movq	-64(%rbp), %rbx
	subq	(%r13), %rbx
	xorl	%r15d, %r15d
	testq	%r12, %r12
	je	.LBB4_12
# BB#10:
	movq	%r12, %rax
	shrq	$61, %rax
	jne	.LBB4_22
# BB#11:                                # %_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv.exit.i
	leaq	(,%r12,8), %rdi
	callq	_Znwm
	movq	%rax, %r15
.LBB4_12:                               # %_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm.exit
	sarq	$3, %rbx
	shlq	$3, %rbx
	addq	%r15, %rbx
	je	.LBB4_14
# BB#13:
	movq	(%r14), %rax
	movq	%rax, (%rbx)
.LBB4_14:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit3
	movq	(%r13), %rsi
	movq	-64(%rbp), %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rbx
	sarq	$3, %rbx
	je	.LBB4_16
# BB#15:
	movq	%r15, %rdi
	callq	memmove
.LBB4_16:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_.exit2
	incq	%rbx
	movq	-64(%rbp), %rsi
	movq	8(%r13), %rdx
	subq	%rsi, %rdx
	movq	%rdx, %r14
	sarq	$3, %r14
	je	.LBB4_18
# BB#17:
	leaq	(%r15,%rbx,8), %rdi
	callq	memmove
.LBB4_18:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_.exit
	addq	%r14, %rbx
	leaq	(%r15,%rbx,8), %rbx
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB4_20
# BB#19:
	callq	_ZdlPv
.LBB4_20:                               # %_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m.exit1
	movq	%r15, (%r13)
	movq	%rbx, 8(%r13)
	leaq	(%r15,%r12,8), %rax
	movq	%rax, 16(%r13)
.LBB4_21:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB4_22:
	callq	_ZSt17__throw_bad_allocv
.Ltmp50:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_, .Ltmp50-_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__I_a,@function
_GLOBAL__I_a:                           # @_GLOBAL__I_a
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	ret
.Ltmp56:
	.size	_GLOBAL__I_a, .Ltmp56-_GLOBAL__I_a
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	dont_optimize_me,@object # @dont_optimize_me
	.bss
	.globl	dont_optimize_me
	.align	4
dont_optimize_me:
	.long	0                       # 0x0
	.size	dont_optimize_me, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ERROR: WRONG ANSWER\n"
	.size	.L.str, 21

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"vector::_M_insert_aux"
	.size	.L.str1, 22

	.section	.ctors,"aw",@progbits
	.align	8
	.quad	_GLOBAL__I_a
	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lstr:
	.asciz	"ERROR: WRONG ANSWER"
	.size	.Lstr, 20


	.ident	"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"
	.section	".note.GNU-stack","",@progbits
