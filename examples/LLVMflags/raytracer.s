	.file	"raytracer.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.zero	16
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movl	$13, %edi
	callq	srand48
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -48(%rbp)
	movq	$0, -32(%rbp)
	movl	$52, %edi
	callq	_Znwm
	movabsq	$-4171371193921699840, %rcx # imm = 0xC61C500000000000
	movq	%rcx, (%rax)
	movabsq	$5051983253995520000, %rcx # imm = 0x461C4000C1A00000
	movq	%rcx, 8(%rax)
	movabsq	$4489188110709472288, %rcx # imm = 0x3E4CCCCD4CBEBC20
	movq	%rcx, 16(%rax)
	movabsq	$4489188110467124429, %rcx # imm = 0x3E4CCCCD3E4CCCCD
	movq	%rcx, 24(%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 32(%rax)
	movl	$0, 48(%rax)
	movq	%rax, -56(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rdx
	xorl	%esi, %esi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	movq	-32(%rbp), %rbx
	movq	-40(%rbp), %r14
	movl	$52, %edi
	callq	_Znwm
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	movl	$-1046478848, 8(%rax)   # imm = 0xFFFFFFFFC1A00000
	movl	$1082130432, 12(%rax)   # imm = 0x40800000
	movl	$1098907648, 16(%rax)   # imm = 0x41800000
	movl	$1065353216, 20(%rax)   # imm = 0x3F800000
	movl	$1050924810, 24(%rax)   # imm = 0x3EA3D70A
	movl	$1052266988, 28(%rax)   # imm = 0x3EB851EC
	movl	$0, 32(%rax)
	movl	$0, 36(%rax)
	movl	$0, 40(%rax)
	movl	$1056964608, 44(%rax)   # imm = 0x3F000000
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -64(%rbp)
	cmpq	%rbx, %r14
	je	.LBB0_4
# BB#1:
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB0_3
# BB#2:
	movq	%rax, (%r14)
	movq	-40(%rbp), %rbx
.LBB0_3:                                # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i14
	addq	$8, %rbx
	movq	%rbx, -40(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	leaq	-48(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	movq	%r14, %rsi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	movq	-40(%rbp), %rbx
.LBB0_5:                                # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit16
	movl	$52, %edi
	callq	_Znwm
	movl	$1084227584, (%rax)     # imm = 0x40A00000
	movl	$-1082130432, 4(%rax)   # imm = 0xFFFFFFFFBF800000
	movl	$-1049624576, 8(%rax)   # imm = 0xFFFFFFFFC1700000
	movl	$1073741824, 12(%rax)   # imm = 0x40000000
	movl	$1082130432, 16(%rax)   # imm = 0x40800000
	movl	$1063675494, 20(%rax)   # imm = 0x3F666666
	movl	$1061326684, 24(%rax)   # imm = 0x3F428F5C
	movl	$1055622431, 28(%rax)   # imm = 0x3EEB851F
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -72(%rbp)
	cmpq	-32(%rbp), %rbx
	je	.LBB0_9
# BB#6:
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	je	.LBB0_8
# BB#7:
	movq	%rax, (%rbx)
	movq	-40(%rbp), %r14
.LBB0_8:                                # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i11
	addq	$8, %r14
	movq	%r14, -40(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	leaq	-48(%rbp), %rdi
	leaq	-72(%rbp), %rdx
	movq	%rbx, %rsi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	movq	-40(%rbp), %r14
.LBB0_10:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit13
	movl	$52, %edi
	callq	_Znwm
	movl	$1084227584, (%rax)     # imm = 0x40A00000
	movl	$0, 4(%rax)
	movl	$-1043857408, 8(%rax)   # imm = 0xFFFFFFFFC1C80000
	movl	$1077936128, 12(%rax)   # imm = 0x40400000
	movl	$1091567616, 16(%rax)   # imm = 0x41100000
	movl	$1059481190, 20(%rax)   # imm = 0x3F266666
	movl	$1061494456, 24(%rax)   # imm = 0x3F451EB8
	movl	$1064849900, 28(%rax)   # imm = 0x3F7851EC
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -80(%rbp)
	cmpq	-32(%rbp), %r14
	je	.LBB0_14
# BB#11:
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB0_13
# BB#12:
	movq	%rax, (%r14)
	movq	-40(%rbp), %rbx
.LBB0_13:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i8
	addq	$8, %rbx
	movq	%rbx, -40(%rbp)
	jmp	.LBB0_15
.LBB0_14:
	leaq	-48(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	%r14, %rsi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	movq	-40(%rbp), %rbx
.LBB0_15:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit10
	movl	$52, %edi
	callq	_Znwm
	movl	$-1062207488, (%rax)    # imm = 0xFFFFFFFFC0B00000
	movl	$0, 4(%rax)
	movl	$-1049624576, 8(%rax)   # imm = 0xFFFFFFFFC1700000
	movl	$1077936128, 12(%rax)   # imm = 0x40400000
	movl	$1091567616, 16(%rax)   # imm = 0x41100000
	movl	$1063675494, 20(%rax)   # imm = 0x3F666666
	movl	$1063675494, 24(%rax)   # imm = 0x3F666666
	movl	$1063675494, 28(%rax)   # imm = 0x3F666666
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 32(%rax)
	movl	$1065353216, 48(%rax)   # imm = 0x3F800000
	movq	%rax, -88(%rbp)
	cmpq	-32(%rbp), %rbx
	je	.LBB0_19
# BB#16:
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	je	.LBB0_18
# BB#17:
	movq	%rax, (%rbx)
	movq	-40(%rbp), %r14
.LBB0_18:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i5
	addq	$8, %r14
	movq	%r14, -40(%rbp)
	jmp	.LBB0_20
.LBB0_19:
	leaq	-48(%rbp), %rdi
	leaq	-88(%rbp), %rdx
	movq	%rbx, %rsi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	movq	-40(%rbp), %r14
.LBB0_20:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit7
	movl	$52, %edi
	callq	_Znwm
	movl	$0, (%rax)
	movl	$1101004800, 4(%rax)    # imm = 0x41A00000
	movl	$-1041235968, 8(%rax)   # imm = 0xFFFFFFFFC1F00000
	movl	$1077936128, 12(%rax)   # imm = 0x40400000
	movl	$1091567616, 16(%rax)   # imm = 0x41100000
	movl	$0, 20(%rax)
	movl	$0, 24(%rax)
	movl	$0, 28(%rax)
	movl	$1077936128, 32(%rax)   # imm = 0x40400000
	movl	$1077936128, 36(%rax)   # imm = 0x40400000
	movl	$1077936128, 40(%rax)   # imm = 0x40400000
	movl	$0, 44(%rax)
	movl	$0, 48(%rax)
	movq	%rax, -96(%rbp)
	cmpq	-32(%rbp), %r14
	je	.LBB0_24
# BB#21:
	xorl	%ecx, %ecx
	testq	%r14, %r14
	je	.LBB0_23
# BB#22:
	movq	%rax, (%r14)
	movq	-40(%rbp), %rcx
.LBB0_23:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit.i2
	addq	$8, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB0_25
.LBB0_24:
	leaq	-48(%rbp), %rdi
	leaq	-96(%rbp), %rdx
	movq	%r14, %rsi
	callq	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
.LBB0_25:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EE9push_backERKS2_.exit4
	leaq	-48(%rbp), %rdi
	callq	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	movl	%eax, dont_optimize_me(%rip)
	#APP
	#NO_APP
	movl	dont_optimize_me(%rip), %eax
	cmpl	$1272430816, %eax       # imm = 0x4BD7C0E0
	je	.LBB0_27
# BB#26:
	movl	$.Lstr, %edi
	callq	puts
.LBB0_27:                               # %.preheader.preheader
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdi
	cmpq	%rdi, %rcx
	je	.LBB0_28
	.align	16, 0x90
.LBB0_29:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdi), %rax
	addq	$-8, %rdi
	movq	%rdi, -40(%rbp)
	testq	%rax, %rax
	je	.LBB0_31
# BB#30:                                #   in Loop: Header=BB0_29 Depth=1
	movq	%rax, %rdi
	callq	_ZdlPv
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdi
.LBB0_31:                               # %.preheader.backedge
                                        #   in Loop: Header=BB0_29 Depth=1
	cmpq	%rdi, %rcx
	jne	.LBB0_29
	jmp	.LBB0_32
.LBB0_28:
	movq	%rcx, %rdi
.LBB0_32:                               # %.preheader._crit_edge
	testq	%rdi, %rdi
	je	.LBB0_34
# BB#33:
	callq	_ZdlPv
.LBB0_34:                               # %_ZNSt6vectorIP6SphereIfESaIS2_EED2Ev.exit
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp8:
	.size	main, .Ltmp8-main
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI1_1:
	.quad	4564848582410108928     # double 1.562500e-03
	.quad	4566950262379380736     # double 2.083333e-03
.LCPI1_2:
	.quad	4611686018427387904     # double 2.000000e+00
	.quad	4611686018427387904     # double 2.000000e+00
.LCPI1_6:
	.quad	4608683618854764544     # double 1.333333e+00
	.quad	4598498563473801216     # double 2.679492e-01
.LCPI1_8:
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_3:
	.quad	-4616189618054758400    # double -1
.LCPI1_4:
	.quad	4598498563473801216     # double 0.26794919371604919
.LCPI1_5:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_7:
	.long	1065353216              # float 1
.LCPI1_9:
	.long	1132396544              # float 255
.LCPI1_10:
	.long	0                       # float 0
	.section	.text._Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,"axG",@progbits,_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,comdat
	.weak	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.align	16, 0x90
	.type	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE,@function
_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE: # @_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$3686400, %edi          # imm = 0x384000
	callq	_Znam
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
	xorl	%ecx, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%xmm0, -112(%rbp)       # 16-byte Spill
	vmovsd	.LCPI1_5(%rip), %xmm2
	vmovss	.LCPI1_7(%rip), %xmm4
	leaq	-56(%rbp), %r12
	leaq	-76(%rbp), %r13
	movq	%rax, %r14
	movq	%rax, -144(%rbp)        # 8-byte Spill
	.align	16, 0x90
.LBB1_3:                                # %.preheader10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	xorl	%r15d, %r15d
	vxorpd	%xmm0, %xmm0, %xmm0
	.align	16, 0x90
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovapd	%xmm0, -96(%rbp)        # 16-byte Spill
	vunpcklpd	-112(%rbp), %xmm0, %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0]
	vaddpd	.LCPI1_0(%rip), %xmm0, %xmm0
	vmulpd	.LCPI1_1(%rip), %xmm0, %xmm0
	vmulpd	.LCPI1_2(%rip), %xmm0, %xmm0
	vunpckhpd	%xmm0, %xmm0, %xmm1 # xmm1 = xmm0[1,1]
	vaddsd	.LCPI1_3(%rip), %xmm0, %xmm0
	vmulsd	.LCPI1_4(%rip), %xmm0, %xmm0
	vsubsd	%xmm1, %xmm2, %xmm1
	vunpcklpd	%xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm1[0]
	vmulpd	.LCPI1_6(%rip), %xmm0, %xmm0
	vcvtpd2ps	%xmm0, %xmm3
	vmovq	%xmm3, -56(%rbp)
	movl	$-1082130432, -48(%rbp) # imm = 0xFFFFFFFFBF800000
	vmulps	%xmm3, %xmm3, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	%xmm4, %xmm0, %xmm0
	vucomiss	.LCPI1_10, %xmm0
	jbe	.LBB1_8
# BB#5:                                 #   in Loop: Header=BB1_4 Depth=2
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB1_7
# BB#6:                                 # %call.sqrt24
                                        #   in Loop: Header=BB1_4 Depth=2
	vmovaps	%xmm1, %xmm0
	vmovaps	%xmm3, -128(%rbp)       # 16-byte Spill
	callq	sqrt
	vmovaps	-128(%rbp), %xmm3       # 16-byte Reload
	vmovsd	.LCPI1_5(%rip), %xmm2
.LBB1_7:                                # %.split
                                        #   in Loop: Header=BB1_4 Depth=2
	vdivsd	%xmm0, %xmm2, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vpshufd	$0, %xmm0, %xmm1        # xmm1 = xmm0[0,0,0,0]
	vmulps	%xmm1, %xmm3, %xmm1
	vmovq	%xmm1, -56(%rbp)
	vxorps	.LCPI1_8(%rip), %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
.LBB1_8:                                # %_ZN4Vec3IfE9normalizeEv.exit
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -76(%rbp)
	leaq	-72(%rbp), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovsd	.LCPI1_5(%rip), %xmm2
	vmovq	%xmm0, (%r14)
	vmovss	%xmm1, 8(%r14)
	vmovaps	-96(%rbp), %xmm0        # 16-byte Reload
	vaddsd	%xmm2, %xmm0, %xmm0
	incl	%r15d
	addq	$12, %r14
	cmpl	$640, %r15d             # imm = 0x280
	vmovss	.LCPI1_7(%rip), %xmm4
	jb	.LBB1_4
# BB#9:                                 #   in Loop: Header=BB1_3 Depth=1
	vmovaps	-112(%rbp), %xmm0       # 16-byte Reload
	vaddsd	%xmm2, %xmm0, %xmm0
	vmovapd	%xmm0, -112(%rbp)       # 16-byte Spill
	movl	-132(%rbp), %ecx        # 4-byte Reload
	incl	%ecx
	cmpl	$480, %ecx              # imm = 0x1E0
	jb	.LBB1_3
# BB#10:
	xorl	%eax, %eax
	vmovss	.LCPI1_9(%rip), %xmm0
	movl	$255, %r8d
	xorl	%ebx, %ebx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	$8, %ecx
	.align	16, 0x90
.LBB1_11:                               # %_ZSt3minIfERKT_S2_S2_.exit4
                                        # =>This Inner Loop Header: Depth=1
	imull	$31, %ebx, %edx
	vmovss	-8(%rdi,%rcx), %xmm1
	vmovss	-4(%rdi,%rcx), %xmm2
	vmulss	%xmm0, %xmm1, %xmm3
	vcvttss2si	%xmm3, %rsi
	vucomiss	%xmm1, %xmm4
	cmovbel	%r8d, %esi
	addl	%edx, %esi
	imull	$31, %esi, %edx
	vmulss	%xmm0, %xmm2, %xmm1
	vcvttss2si	%xmm1, %rsi
	vucomiss	%xmm2, %xmm4
	cmovbel	%r8d, %esi
	addl	%edx, %esi
	imull	$31, %esi, %edx
	vmovss	(%rdi,%rcx), %xmm1
	vmulss	%xmm0, %xmm1, %xmm2
	vcvttss2si	%xmm2, %rbx
	vucomiss	%xmm1, %xmm4
	cmovbel	%r8d, %ebx
	addl	%edx, %ebx
	incl	%eax
	addq	$12, %rcx
	cmpl	$307200, %eax           # imm = 0x4B000
	jb	.LBB1_11
# BB#12:
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
.Ltmp20:
	.size	_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE, .Ltmp20-_Z6renderIfEjRKSt6vectorIP6SphereIT_ESaIS4_EE
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	2139095040              # float +Inf
.LCPI2_1:
	.long	1073741824              # float 2
.LCPI2_4:
	.long	1063828014              # float 0.909090876
.LCPI2_6:
	.long	1066192077              # float 1.10000002
.LCPI2_8:
	.long	953267991               # float 9.99999974E-5
.LCPI2_9:
	.long	1065353216              # float 1
.LCPI2_11:
	.long	1063675494              # float 0.899999976
.LCPI2_12:
	.long	1036831949              # float 0.100000001
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_2:
	.long	1073741824              # float 2
	.long	1073741824              # float 2
	.zero	4
	.zero	4
.LCPI2_5:
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
.LCPI2_7:
	.long	953267991               # float 9.99999974E-5
	.long	953267991               # float 9.99999974E-5
	.zero	4
	.zero	4
.LCPI2_13:
	.long	1065353216              # float 1
	.long	2147483648              # float -0
	.zero	4
	.zero	4
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_3:
	.quad	4607182418800017408     # double 1
.LCPI2_10:
	.quad	4613937818241073152     # double 3
	.section	.text._Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,"axG",@progbits,_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,comdat
	.weak	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.align	16, 0x90
	.type	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi,@function
_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi: # @_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	(%r15), %rax
	cmpq	%rax, 8(%r15)
	vmovss	.LCPI2_1(%rip), %xmm1
	vmovaps	.LCPI2_2(%rip), %xmm0
	je	.LBB2_56
# BB#1:
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	vmovss	.LCPI2_0(%rip), %xmm0
	vmovaps	%xmm0, -128(%rbp)       # 16-byte Spill
	movl	$1, %r14d
	vxorps	%xmm4, %xmm4, %xmm4
	.align	16, 0x90
.LBB2_2:                                # %.lr.ph118
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%r14), %r13d
	movq	(%rax,%r13,8), %rcx
	vmovq	(%rcx), %xmm0
	vmovq	(%rbx), %xmm1
	vsubps	%xmm1, %xmm0, %xmm1
	vmovss	8(%rcx), %xmm0
	vsubss	8(%rbx), %xmm0, %xmm0
	vmovq	(%r12), %xmm2
	vmulps	%xmm2, %xmm1, %xmm2
	vpshufd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0,0,0]
	vaddss	%xmm3, %xmm2, %xmm2
	vmulss	8(%r12), %xmm0, %xmm3
	vaddss	%xmm3, %xmm2, %xmm3
	vucomiss	%xmm3, %xmm4
	ja	.LBB2_11
# BB#3:                                 #   in Loop: Header=BB2_2 Depth=1
	vpshufd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0,0,0]
	vmulss	%xmm1, %xmm1, %xmm1
	vmulss	%xmm2, %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm0
	vmulss	%xmm3, %xmm3, %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vmovss	16(%rcx), %xmm1
	vucomiss	%xmm1, %xmm0
	ja	.LBB2_11
# BB#4:                                 # %.critedge
                                        #   in Loop: Header=BB2_2 Depth=1
	vsubss	%xmm0, %xmm1, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_6
# BB#5:                                 # %call.sqrt204
                                        #   in Loop: Header=BB2_2 Depth=1
	vmovaps	%xmm1, %xmm0
	vmovss	%xmm3, -144(%rbp)       # 4-byte Spill
	callq	sqrt
	vmovss	-144(%rbp), %xmm3       # 4-byte Reload
	vxorps	%xmm4, %xmm4, %xmm4
.LBB2_6:                                # %.critedge.split
                                        #   in Loop: Header=BB2_2 Depth=1
	vcvtsd2ss	%xmm0, %xmm0, %xmm1
	vsubss	%xmm1, %xmm3, %xmm0
	vucomiss	%xmm0, %xmm4
	jbe	.LBB2_8
# BB#7:                                 #   in Loop: Header=BB2_2 Depth=1
	vaddss	%xmm1, %xmm3, %xmm0
.LBB2_8:                                #   in Loop: Header=BB2_2 Depth=1
	vmovaps	-128(%rbp), %xmm1       # 16-byte Reload
	vucomiss	%xmm0, %xmm1
	movq	(%r15), %rax
	jbe	.LBB2_10
# BB#9:                                 #   in Loop: Header=BB2_2 Depth=1
	movq	(%rax,%r13,8), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	vmovaps	%xmm0, -128(%rbp)       # 16-byte Spill
.LBB2_10:                               # %_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	vxorps	%xmm4, %xmm4, %xmm4
.LBB2_11:                               # %_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%r14d, %ecx
	movq	8(%r15), %rdx
	subq	%rax, %rdx
	sarq	$3, %rdx
	incl	%r14d
	cmpq	%rdx, %rcx
	jb	.LBB2_2
# BB#12:                                # %._crit_edge
	movq	-160(%rbp), %r14        # 8-byte Reload
	testq	%r14, %r14
	vmovss	.LCPI2_1(%rip), %xmm1
	vmovaps	.LCPI2_2(%rip), %xmm0
	je	.LBB2_56
# BB#13:
	vmovq	(%r12), %xmm2
	vpshufd	$1, %xmm2, %xmm8        # xmm8 = xmm2[1,0,0,0]
	vmovdqa	-128(%rbp), %xmm1       # 16-byte Reload
	vpshufd	$0, %xmm1, %xmm0        # xmm0 = xmm1[0,0,0,0]
	vmulps	%xmm0, %xmm2, %xmm0
	vmovss	8(%r12), %xmm4
	vmulss	%xmm1, %xmm4, %xmm1
	vmovq	(%rbx), %xmm5
	vaddps	%xmm0, %xmm5, %xmm5
	vmovaps	%xmm5, -192(%rbp)       # 16-byte Spill
	vaddss	8(%rbx), %xmm1, %xmm3
	vmovq	(%r14), %xmm0
	vsubps	%xmm0, %xmm5, %xmm6
	vsubss	8(%r14), %xmm3, %xmm10
	vmulps	%xmm6, %xmm6, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm10, %xmm10, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm7, %xmm7, %xmm7
	vucomiss	%xmm7, %xmm0
	jbe	.LBB2_17
# BB#14:
	vpshufd	$1, %xmm6, %xmm5        # xmm5 = xmm6[1,0,0,0]
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_16
# BB#15:                                # %call.sqrt121.split
	vmovaps	%xmm1, %xmm0
	vmovss	%xmm3, -168(%rbp)       # 4-byte Spill
	vmovss	%xmm10, -164(%rbp)      # 4-byte Spill
	vmovaps	%xmm6, -128(%rbp)       # 16-byte Spill
	vmovdqa	%xmm5, -144(%rbp)       # 16-byte Spill
	callq	sqrt
	vmovdqa	-144(%rbp), %xmm5       # 16-byte Reload
	vxorps	%xmm7, %xmm7, %xmm7
	vmovaps	-128(%rbp), %xmm6       # 16-byte Reload
	vmovss	-164(%rbp), %xmm10      # 4-byte Reload
	vmovss	-168(%rbp), %xmm3       # 4-byte Reload
	vmovss	(%r12), %xmm2
	vmovss	4(%r12), %xmm8
	vmovss	8(%r12), %xmm4
.LBB2_16:                               # %.split
	vmovsd	.LCPI2_3(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm0, %xmm6, %xmm1
	vmulss	%xmm0, %xmm5, %xmm5
	vinsertps	$16, %xmm5, %xmm1, %xmm6 # xmm6 = xmm1[0],xmm5[0],xmm1[2,3]
	vmulss	%xmm0, %xmm10, %xmm10
.LBB2_17:                               # %_ZN4Vec3IfE9normalizeEv.exit6
	vmovss	%xmm3, -168(%rbp)       # 4-byte Spill
	vmulss	%xmm6, %xmm2, %xmm1
	vpshufd	$1, %xmm6, %xmm0        # xmm0 = xmm6[1,0,0,0]
	vmulss	%xmm0, %xmm8, %xmm5
	vaddss	%xmm5, %xmm1, %xmm1
	vmulss	%xmm10, %xmm4, %xmm5
	vaddss	%xmm5, %xmm1, %xmm1
	vucomiss	%xmm7, %xmm1
	movq	-200(%rbp), %rbx        # 8-byte Reload
	jbe	.LBB2_18
# BB#19:
	vmovss	.LCPI2_5(%rip), %xmm1
	vxorps	%xmm1, %xmm6, %xmm5
	vxorps	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm10, %xmm10
	vinsertps	$16, %xmm0, %xmm5, %xmm6 # xmm6 = xmm5[0],xmm0[0],xmm5[2,3]
	vmovss	.LCPI2_6(%rip), %xmm0
	jmp	.LBB2_20
.LBB2_18:
	vmovss	.LCPI2_4(%rip), %xmm0
.LBB2_20:
	vmovaps	%xmm0, -144(%rbp)       # 16-byte Spill
	vmovaps	%xmm6, -128(%rbp)       # 16-byte Spill
	vmovss	%xmm10, -164(%rbp)      # 4-byte Spill
	vmovss	44(%r14), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm1
	ja	.LBB2_22
# BB#21:
	vmovss	48(%r14), %xmm1
	vucomiss	%xmm0, %xmm1
	jbe	.LBB2_36
.LBB2_22:
	cmpl	$4, (%rbx)
	jg	.LBB2_36
# BB#23:
	vinsertps	$16, %xmm8, %xmm2, %xmm0 # xmm0 = xmm2[0],xmm8[0],xmm2[2,3]
	vmulps	%xmm6, %xmm0, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm10, %xmm4, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	.LCPI2_9(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	.LCPI2_10(%rip), %xmm1
	vmovss	%xmm10, -164(%rbp)      # 4-byte Spill
	vmovaps	%xmm6, -128(%rbp)       # 16-byte Spill
	callq	pow
	vmovaps	-128(%rbp), %xmm7       # 16-byte Reload
	vmovss	-164(%rbp), %xmm6       # 4-byte Reload
	vmovsd	%xmm0, -224(%rbp)       # 8-byte Spill
	vmulps	.LCPI2_2(%rip), %xmm7, %xmm0
	vaddss	%xmm6, %xmm6, %xmm1
	vmovq	(%r12), %xmm2
	vmulps	%xmm7, %xmm2, %xmm3
	vpshufd	$1, %xmm3, %xmm4        # xmm4 = xmm3[1,0,0,0]
	vaddss	%xmm4, %xmm3, %xmm3
	vmovss	8(%r12), %xmm4
	vmulss	%xmm6, %xmm4, %xmm5
	vaddss	%xmm5, %xmm3, %xmm3
	vpshufd	$0, %xmm3, %xmm5        # xmm5 = xmm3[0,0,0,0]
	vmulps	%xmm5, %xmm0, %xmm0
	vmulss	%xmm3, %xmm1, %xmm1
	vsubps	%xmm0, %xmm2, %xmm3
	vsubss	%xmm1, %xmm4, %xmm2
	vmovq	%xmm3, -56(%rbp)
	vmovss	%xmm2, -48(%rbp)
	vmulps	%xmm3, %xmm3, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm2, %xmm2, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	.LBB2_27
# BB#24:
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_26
# BB#25:                                # %call.sqrt206
	vmovaps	%xmm1, %xmm0
	vmovss	%xmm2, -240(%rbp)       # 4-byte Spill
	vmovaps	%xmm3, -256(%rbp)       # 16-byte Spill
	callq	sqrt
	vmovaps	-256(%rbp), %xmm3       # 16-byte Reload
	vmovss	-240(%rbp), %xmm2       # 4-byte Reload
	vmovaps	-128(%rbp), %xmm7       # 16-byte Reload
	vmovss	-164(%rbp), %xmm6       # 4-byte Reload
.LBB2_26:                               # %.split122
	vmovsd	.LCPI2_3(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vpshufd	$0, %xmm0, %xmm1        # xmm1 = xmm0[0,0,0,0]
	vmulps	%xmm1, %xmm3, %xmm1
	vmovq	%xmm1, -56(%rbp)
	vmulss	%xmm0, %xmm2, %xmm0
	vmovss	%xmm0, -48(%rbp)
.LBB2_27:                               # %_ZN4Vec3IfE9normalizeEv.exit5
	vmulps	.LCPI2_7(%rip), %xmm7, %xmm1
	vmovaps	%xmm1, -240(%rbp)       # 16-byte Spill
	vmulss	.LCPI2_8(%rip), %xmm6, %xmm2
	vmovss	%xmm2, -256(%rbp)       # 4-byte Spill
	vmovaps	-192(%rbp), %xmm0       # 16-byte Reload
	vaddps	%xmm1, %xmm0, %xmm0
	vmovss	-168(%rbp), %xmm1       # 4-byte Reload
	vaddss	%xmm2, %xmm1, %xmm1
	vmovq	%xmm0, -72(%rbp)
	vmovss	%xmm1, -64(%rbp)
	movl	(%rbx), %eax
	incl	%eax
	movl	%eax, -76(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-76(%rbp), %rcx
	movq	%r15, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovaps	%xmm0, %xmm4
	vmovss	44(%r14), %xmm6
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm7, %xmm7, %xmm7
	vucomiss	%xmm7, %xmm6
	jne	.LBB2_28
	jnp	.LBB2_35
.LBB2_28:
	vmovss	%xmm1, -276(%rbp)       # 4-byte Spill
	vmovaps	%xmm4, -272(%rbp)       # 16-byte Spill
	vmovq	(%r12), %xmm0
	vmovaps	-128(%rbp), %xmm7       # 16-byte Reload
	vmulps	%xmm0, %xmm7, %xmm1
	vpshufd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0,0,0]
	vaddss	%xmm2, %xmm1, %xmm1
	vmovss	8(%r12), %xmm2
	vmovss	-164(%rbp), %xmm6       # 4-byte Reload
	vmulss	%xmm2, %xmm6, %xmm3
	vaddss	%xmm3, %xmm1, %xmm1
	vmovdqa	-144(%rbp), %xmm5       # 16-byte Reload
	vmulss	%xmm5, %xmm5, %xmm3
	vpshufd	$0, %xmm5, %xmm4        # xmm4 = xmm5[0,0,0,0]
	vmulps	%xmm4, %xmm0, %xmm4
	vmulss	%xmm5, %xmm2, %xmm8
	vinsertps	$16, %xmm5, %xmm1, %xmm0 # xmm0 = xmm1[0],xmm5[0],xmm1[2,3]
	vinsertps	$16, %xmm1, %xmm1, %xmm1 # xmm1 = xmm1[0,0,2,3]
	vmulps	%xmm0, %xmm1, %xmm0
	vmovaps	.LCPI2_13(%rip), %xmm1
	vsubps	%xmm0, %xmm1, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vmulss	%xmm0, %xmm3, %xmm0
	vmovss	.LCPI2_9(%rip), %xmm2
	vsubss	%xmm0, %xmm2, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm5
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	vmovaps	%xmm6, %xmm2
	vmovaps	%xmm7, %xmm3
	jnp	.LBB2_30
# BB#29:                                # %call.sqrt207
	vmovaps	%xmm1, %xmm0
	vmovaps	%xmm4, -144(%rbp)       # 16-byte Spill
	vmovss	%xmm8, -280(%rbp)       # 4-byte Spill
	vmovsd	%xmm5, -288(%rbp)       # 8-byte Spill
	callq	sqrt
	vmovsd	-288(%rbp), %xmm5       # 8-byte Reload
	vmovss	-280(%rbp), %xmm8       # 4-byte Reload
	vmovaps	-144(%rbp), %xmm4       # 16-byte Reload
	vmovaps	-128(%rbp), %xmm3       # 16-byte Reload
	vmovss	-164(%rbp), %xmm2       # 4-byte Reload
.LBB2_30:                               # %.split124
	vsubsd	%xmm0, %xmm5, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vpshufd	$0, %xmm0, %xmm1        # xmm1 = xmm0[0,0,0,0]
	vmulps	%xmm1, %xmm3, %xmm1
	vmulss	%xmm0, %xmm2, %xmm0
	vaddps	%xmm1, %xmm4, %xmm5
	vaddss	%xmm0, %xmm8, %xmm4
	vmovq	%xmm5, -88(%rbp)
	vmovss	%xmm4, -80(%rbp)
	vmulps	%xmm5, %xmm5, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm4, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	vmovaps	-192(%rbp), %xmm2       # 16-byte Reload
	vmovss	-168(%rbp), %xmm3       # 4-byte Reload
	jbe	.LBB2_34
# BB#31:
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_33
# BB#32:                                # %call.sqrt208
	vmovaps	%xmm1, %xmm0
	vmovss	%xmm4, -128(%rbp)       # 4-byte Spill
	vmovaps	%xmm5, -144(%rbp)       # 16-byte Spill
	callq	sqrt
	vmovaps	-144(%rbp), %xmm5       # 16-byte Reload
	vmovss	-128(%rbp), %xmm4       # 4-byte Reload
	vmovss	-168(%rbp), %xmm3       # 4-byte Reload
	vmovaps	-192(%rbp), %xmm2       # 16-byte Reload
.LBB2_33:                               # %.split126
	vmovsd	.LCPI2_3(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vpshufd	$0, %xmm0, %xmm1        # xmm1 = xmm0[0,0,0,0]
	vmulps	%xmm1, %xmm5, %xmm1
	vmovq	%xmm1, -88(%rbp)
	vmulss	%xmm0, %xmm4, %xmm0
	vmovss	%xmm0, -80(%rbp)
.LBB2_34:                               # %_ZN4Vec3IfE9normalizeEv.exit4
	vsubps	-240(%rbp), %xmm2, %xmm0 # 16-byte Folded Reload
	vsubss	-256(%rbp), %xmm3, %xmm1 # 4-byte Folded Reload
	vmovq	%xmm0, -104(%rbp)
	vmovss	%xmm1, -96(%rbp)
	movl	(%rbx), %eax
	incl	%eax
	movl	%eax, -108(%rbp)
	leaq	-104(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-108(%rbp), %rcx
	movq	%r15, %rdx
	callq	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	vmovaps	%xmm1, %xmm7
	vmovss	44(%r14), %xmm6
	vmovaps	-272(%rbp), %xmm4       # 16-byte Reload
	vmovss	-276(%rbp), %xmm1       # 4-byte Reload
.LBB2_35:
	vmovsd	-224(%rbp), %xmm2       # 8-byte Reload
	vcvtsd2ss	%xmm2, %xmm2, %xmm2
	vmulss	.LCPI2_11(%rip), %xmm2, %xmm2
	vaddss	.LCPI2_12(%rip), %xmm2, %xmm2
	vpshufd	$0, %xmm2, %xmm3        # xmm3 = xmm2[0,0,0,0]
	vmulps	%xmm4, %xmm3, %xmm3
	vmulss	%xmm2, %xmm1, %xmm4
	vmovss	.LCPI2_9(%rip), %xmm5
	vsubss	%xmm2, %xmm5, %xmm2
	vpshufd	$0, %xmm2, %xmm5        # xmm5 = xmm2[0,0,0,0]
	vmulps	%xmm0, %xmm5, %xmm0
	vmulss	%xmm2, %xmm7, %xmm2
	vpshufd	$0, %xmm6, %xmm5        # xmm5 = xmm6[0,0,0,0]
	vmulps	%xmm5, %xmm0, %xmm0
	vmulss	%xmm6, %xmm2, %xmm1
	vaddps	%xmm0, %xmm3, %xmm0
	vaddss	%xmm1, %xmm4, %xmm1
	vmovq	20(%r14), %xmm2
	vmulps	%xmm2, %xmm0, %xmm9
	vmulss	28(%r14), %xmm1, %xmm8
	jmp	.LBB2_55
.LBB2_36:
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	vpxor	%xmm8, %xmm8, %xmm8
	vxorps	%xmm9, %xmm9, %xmm9
	cmpq	%rax, %rcx
	vmovss	-168(%rbp), %xmm11      # 4-byte Reload
	je	.LBB2_55
# BB#37:
	xorl	%ebx, %ebx
	vxorps	%xmm13, %xmm13, %xmm13
	vmovaps	.LCPI2_7(%rip), %xmm5
	vmovss	.LCPI2_8(%rip), %xmm4
	vmovaps	-192(%rbp), %xmm12      # 16-byte Reload
	jmp	.LBB2_38
.LBB2_48:                               # %.critedge7
                                        #   in Loop: Header=BB2_38 Depth=1
	vmovaps	%xmm9, -160(%rbp)       # 16-byte Spill
	vmovss	%xmm8, -144(%rbp)       # 4-byte Spill
	vpshufd	$1, %xmm7, %xmm15       # xmm15 = xmm7[1,0,0,0]
	vpshufd	$1, %xmm6, %xmm3        # xmm3 = xmm6[1,0,0,0]
	vsubss	%xmm0, %xmm1, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vsqrtsd	%xmm0, %xmm0, %xmm1
	vucomisd	%xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	jnp	.LBB2_49
# BB#50:                                # %call.sqrt130.split
                                        #   in Loop: Header=BB2_38 Depth=1
	vmovss	%xmm14, -200(%rbp)      # 4-byte Spill
	vmovaps	%xmm7, -224(%rbp)       # 16-byte Spill
	vmovdqa	%xmm15, -240(%rbp)      # 16-byte Spill
	vmovdqa	%xmm3, -256(%rbp)       # 16-byte Spill
	callq	sqrt
	vpxor	%xmm2, %xmm2, %xmm2
	vmovdqa	-256(%rbp), %xmm3       # 16-byte Reload
	vmovdqa	-240(%rbp), %xmm15      # 16-byte Reload
	vmovaps	-224(%rbp), %xmm7       # 16-byte Reload
	vmovss	-200(%rbp), %xmm14      # 4-byte Reload
	vmovss	.LCPI2_8(%rip), %xmm4
	vmovaps	.LCPI2_7(%rip), %xmm5
	vxorps	%xmm13, %xmm13, %xmm13
	vmovaps	-128(%rbp), %xmm6       # 16-byte Reload
	vmovss	-164(%rbp), %xmm10      # 4-byte Reload
	vmovss	-168(%rbp), %xmm11      # 4-byte Reload
	vmovaps	-192(%rbp), %xmm12      # 16-byte Reload
	movq	(%r15), %rax
	movq	8(%r15), %rcx
.LBB2_49:                               #   in Loop: Header=BB2_38 Depth=1
	vmovss	-144(%rbp), %xmm8       # 4-byte Reload
	vmovaps	-160(%rbp), %xmm9       # 16-byte Reload
	jmp	.LBB2_53
	.align	16, 0x90
.LBB2_38:                               # %.lr.ph112
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_45 Depth 2
	movl	%ebx, %ebx
	movq	(%rax,%rbx,8), %rdx
	vmovss	32(%rdx), %xmm0
	vucomiss	%xmm13, %xmm0
	jbe	.LBB2_54
# BB#39:                                #   in Loop: Header=BB2_38 Depth=1
	vmovq	(%rdx), %xmm0
	vsubps	%xmm12, %xmm0, %xmm7
	vmovss	8(%rdx), %xmm0
	vsubss	%xmm11, %xmm0, %xmm14
	vmulps	%xmm7, %xmm7, %xmm0
	vpshufd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0,0,0]
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm14, %xmm14, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vucomiss	%xmm13, %xmm0
	jbe	.LBB2_40
# BB#41:                                #   in Loop: Header=BB2_38 Depth=1
	vmovaps	%xmm9, -160(%rbp)       # 16-byte Spill
	vmovss	%xmm8, -144(%rbp)       # 4-byte Spill
	vpshufd	$1, %xmm7, %xmm2        # xmm2 = xmm7[1,0,0,0]
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.LBB2_43
# BB#42:                                # %call.sqrt129.split
                                        #   in Loop: Header=BB2_38 Depth=1
	vmovaps	%xmm1, %xmm0
	vmovss	%xmm14, -200(%rbp)      # 4-byte Spill
	vmovaps	%xmm7, -224(%rbp)       # 16-byte Spill
	vmovdqa	%xmm2, -240(%rbp)       # 16-byte Spill
	callq	sqrt
	vmovdqa	-240(%rbp), %xmm2       # 16-byte Reload
	vmovaps	-224(%rbp), %xmm7       # 16-byte Reload
	vmovss	-200(%rbp), %xmm14      # 4-byte Reload
	vxorps	%xmm13, %xmm13, %xmm13
	vmovss	-168(%rbp), %xmm11      # 4-byte Reload
	vmovaps	-192(%rbp), %xmm12      # 16-byte Reload
	movq	(%r15), %rax
	movq	8(%r15), %rcx
.LBB2_43:                               # %.split128
                                        #   in Loop: Header=BB2_38 Depth=1
	vmovsd	.LCPI2_3(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm0, %xmm7, %xmm1
	vmulss	%xmm0, %xmm2, %xmm2
	vinsertps	$16, %xmm2, %xmm1, %xmm7 # xmm7 = xmm1[0],xmm2[0],xmm1[2,3]
	vmulss	%xmm0, %xmm14, %xmm14
	vmovss	-164(%rbp), %xmm10      # 4-byte Reload
	vmovaps	-128(%rbp), %xmm6       # 16-byte Reload
	vmovss	-144(%rbp), %xmm8       # 4-byte Reload
	vmovaps	-160(%rbp), %xmm9       # 16-byte Reload
	vmovaps	.LCPI2_7(%rip), %xmm5
	vmovss	.LCPI2_8(%rip), %xmm4
	jmp	.LBB2_44
	.align	16, 0x90
.LBB2_40:                               #   in Loop: Header=BB2_38 Depth=1
	vmovaps	-128(%rbp), %xmm6       # 16-byte Reload
.LBB2_44:                               # %_ZN4Vec3IfE9normalizeEv.exit
                                        #   in Loop: Header=BB2_38 Depth=1
	movq	%rcx, %rdx
	xorl	%esi, %esi
	subq	%rax, %rdx
	sarq	$3, %rdx
	je	.LBB2_52
	.align	16, 0x90
.LBB2_45:                               # %.lr.ph
                                        #   Parent Loop BB2_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %ebx
	je	.LBB2_51
# BB#46:                                #   in Loop: Header=BB2_45 Depth=2
	movl	%esi, %edi
	movq	(%rax,%rdi,8), %rdi
	vmulps	%xmm5, %xmm6, %xmm0
	vmulss	%xmm4, %xmm10, %xmm1
	vaddps	%xmm0, %xmm12, %xmm0
	vaddss	%xmm1, %xmm11, %xmm2
	vmovq	(%rdi), %xmm1
	vsubps	%xmm0, %xmm1, %xmm1
	vmovss	8(%rdi), %xmm0
	vsubss	%xmm2, %xmm0, %xmm0
	vmulps	%xmm7, %xmm1, %xmm2
	vpshufd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0,0,0]
	vaddss	%xmm3, %xmm2, %xmm2
	vmulss	%xmm14, %xmm0, %xmm3
	vaddss	%xmm3, %xmm2, %xmm2
	vucomiss	%xmm2, %xmm13
	ja	.LBB2_51
# BB#47:                                #   in Loop: Header=BB2_45 Depth=2
	vpshufd	$1, %xmm1, %xmm3        # xmm3 = xmm1[1,0,0,0]
	vmulss	%xmm1, %xmm1, %xmm1
	vmulss	%xmm3, %xmm3, %xmm3
	vaddss	%xmm3, %xmm1, %xmm1
	vmulss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm0
	vmulss	%xmm2, %xmm2, %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vmovss	16(%rdi), %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	.LBB2_48
.LBB2_51:                               # %_ZNK6SphereIfE9intersectERK4Vec3IfES4_PfS5_.exit3
                                        #   in Loop: Header=BB2_45 Depth=2
	incl	%esi
	cmpq	%rdx, %rsi
	jb	.LBB2_45
.LBB2_52:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB2_38 Depth=1
	vpshufd	$1, %xmm6, %xmm3        # xmm3 = xmm6[1,0,0,0]
	vpshufd	$1, %xmm7, %xmm15       # xmm15 = xmm7[1,0,0,0]
	vmovss	.LCPI2_9(%rip), %xmm0
	vmovdqa	%xmm0, %xmm2
.LBB2_53:                               # %.loopexit
                                        #   in Loop: Header=BB2_38 Depth=1
	vmovq	20(%r14), %xmm0
	vpshufd	$0, %xmm2, %xmm1        # xmm1 = xmm2[0,0,0,0]
	vmulps	%xmm1, %xmm0, %xmm0
	vmulss	28(%r14), %xmm2, %xmm1
	vmulss	%xmm7, %xmm6, %xmm2
	vmulss	%xmm15, %xmm3, %xmm3
	vaddss	%xmm3, %xmm2, %xmm2
	vmulss	%xmm14, %xmm10, %xmm3
	vaddss	%xmm3, %xmm2, %xmm2
	vmaxss	%xmm13, %xmm2, %xmm2
	vpshufd	$0, %xmm2, %xmm3        # xmm3 = xmm2[0,0,0,0]
	vmulps	%xmm3, %xmm0, %xmm0
	vmulss	%xmm2, %xmm1, %xmm1
	movq	(%rax,%rbx,8), %rdx
	vmovq	32(%rdx), %xmm2
	vmulps	%xmm2, %xmm0, %xmm0
	vmulss	40(%rdx), %xmm1, %xmm1
	vaddps	%xmm0, %xmm9, %xmm9
	vaddss	%xmm1, %xmm8, %xmm8
.LBB2_54:                               #   in Loop: Header=BB2_38 Depth=1
	incl	%ebx
	movq	%rcx, %rdx
	subq	%rax, %rdx
	sarq	$3, %rdx
	cmpq	%rdx, %rbx
	jb	.LBB2_38
.LBB2_55:                               # %.loopexit106
	vmovq	32(%r14), %xmm0
	vaddps	%xmm0, %xmm9, %xmm0
	vaddss	40(%r14), %xmm8, %xmm1
.LBB2_56:                               # %._crit_edge.thread
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp32:
	.size	_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi, .Ltmp32-_Z5traceIfE4Vec3IT_ERKS2_S4_RKSt6vectorIP6SphereIS1_ESaIS8_EERKi
	.cfi_endproc

	.section	.text._ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,"axG",@progbits,_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,comdat
	.weak	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.align	16, 0x90
	.type	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_,@function
_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_: # @_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rdi, %r14
	movq	8(%r14), %rax
	cmpq	16(%r14), %rax
	je	.LBB3_6
# BB#1:
	xorl	%edi, %edi
	testq	%rax, %rax
	je	.LBB3_3
# BB#2:
	movq	-8(%rax), %rcx
	movq	%rcx, (%rax)
	movq	8(%r14), %rdi
.LBB3_3:                                # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit
	leaq	8(%rdi), %rax
	movq	%rax, 8(%r14)
	movq	(%r15), %r14
	leaq	-8(%rdi), %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	je	.LBB3_5
# BB#4:
	shlq	$3, %rax
	subq	%rax, %rdi
	movq	%rsi, %rbx
	callq	memmove
	movq	%rbx, %rsi
.LBB3_5:                                # %_ZSt13copy_backwardIPP6SphereIfES3_ET0_T_S5_S4_.exit
	movq	%r14, (%rsi)
	jmp	.LBB3_18
.LBB3_6:                                # %_ZNKSt6vectorIP6SphereIfESaIS2_EE12_M_check_lenEmPKc.exit
	movq	(%r14), %rdi
	subq	%rdi, %rax
	sarq	$3, %rax
	movl	$1, %ecx
	cmovneq	%rax, %rcx
	addq	%rax, %rcx
	setb	%al
	movq	%rcx, %rdx
	shrq	$61, %rdx
	setne	%dl
	orb	%al, %dl
	movabsq	$2305843009213693951, %rbx # imm = 0x1FFFFFFFFFFFFFFF
	cmoveq	%rcx, %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB3_9
# BB#7:
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%rbx, %rax
	shrq	$61, %rax
	jne	.LBB3_19
# BB#8:                                 # %_ZN9__gnu_cxx13new_allocatorIP6SphereIfEE8allocateEmPKv.exit.i
	leaq	(,%rbx,8), %rdi
	callq	_Znwm
	movq	%rax, %r12
	movq	%r13, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB3_9:                                # %_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE11_M_allocateEm.exit
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	shlq	$3, %rax
	addq	%r12, %rax
	je	.LBB3_11
# BB#10:
	movq	(%r15), %rcx
	movq	%rcx, (%rax)
.LBB3_11:                               # %_ZN9__gnu_cxx14__alloc_traitsISaIP6SphereIfEEE9constructIS3_EEvRS4_PS3_RKT_.exit3
	movq	(%r14), %rbx
	movq	%rsi, %rdx
	subq	%rbx, %rdx
	movq	%rdx, %r13
	sarq	$3, %r13
	je	.LBB3_13
# BB#12:
	movq	%r12, %rdi
	movq	%rsi, %r15
	movq	%rbx, %rsi
	callq	memmove
	movq	%r15, %rsi
.LBB3_13:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_.exit2
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	incq	%r13
	movq	8(%r14), %rdx
	subq	%rsi, %rdx
	movq	%rdx, %r15
	sarq	$3, %r15
	je	.LBB3_15
# BB#14:
	leaq	(%r12,%r13,8), %rdi
	callq	memcpy
.LBB3_15:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPP6SphereIfES3_SaIS2_EET0_T_S6_S5_RT1_.exit
	addq	%r15, %r13
	leaq	(%r12,%r13,8), %rbx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB3_17
# BB#16:
	callq	_ZdlPv
.LBB3_17:                               # %_ZNSt12_Vector_baseIP6SphereIfESaIS2_EE13_M_deallocateEPS2_m.exit1
	movq	%r12, (%r14)
	movq	%rbx, 8(%r14)
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%r12,%rax,8), %rax
	movq	%rax, 16(%r14)
.LBB3_18:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB3_19:
	callq	_ZSt17__throw_bad_allocv
.Ltmp44:
	.size	_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_, .Ltmp44-_ZNSt6vectorIP6SphereIfESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__I_a,@function
_GLOBAL__I_a:                           # @_GLOBAL__I_a
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rbp
	ret
.Ltmp50:
	.size	_GLOBAL__I_a, .Ltmp50-_GLOBAL__I_a
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
